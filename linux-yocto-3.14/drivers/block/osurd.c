/*
 * Austin Brown
 * CS444 Project 3
 * 5/9/2016
 *
 * Sources for sbull.c example code:
 * https://github.com/tatetian/linux-driver-examples/blob/master/sbull/sbull.c *
 * Sources for Crypto API example code:
 * https://github.com/JonathanSalwan/stuffz/blob/master/lkm_samples/crypto_aes.c
 * http://www.logix.cz/michal/devel/cryptodev/cryptoapi-demo.c
 */

#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/sched.h>
#include <linux/kernel.h>	
#include <linux/slab.h>		
#include <linux/fs.h>		
#include <linux/errno.h>
#include <linux/timer.h>
#include <linux/types.h>	
#include <linux/fcntl.h>	
#include <linux/hdreg.h>	
#include <linux/kdev_t.h>
#include <linux/vmalloc.h>
#include <linux/genhd.h>
#include <linux/blkdev.h>
#include <linux/buffer_head.h>	
#include <linux/bio.h>
#include <linux/crypto.h>

//Global Variables!
static char *key = "1231231231"; //Crypto key
//MOST SECURE KEY EVER
static int key_len = 10;
struct crypto_cipher *ccs; //Crypto Cipher Struct

static int osurd_major = 0;
static int hardsect_size = 512;
static int nsectors = 1024;
static int ndevices = 4; 
module_param(osurd_major, int, 0);
module_param(hardsect_size, int, 0);	
module_param(nsectors, int, 0);
module_param(ndevices, int, 0);

enum {
	RM_SIMPLE = 0,		// The extra-simple request function 
	RM_FULL = 1,		// The full-blown version 
	RM_NOQUEUE = 2,		// Use make_request 
};

static int request_mode = RM_SIMPLE;
module_param(request_mode, int, 0);

// Minor number and partition management.
#define OSURD_MINORS 16
#define MINOR_SHIFT 4
#define DEVNUM(kdevnum) (MINOR(kdev_t_to_nr(kdevnum)) >> MINOR_SHIFT
#define OSU_CIPHER "aes" //Cipher algorithm to use 

#define KERNEL_SECTOR_SIZE 512
#define INVALIDATE_DELAY 30*HZ

//Our device block!
struct osurd_dev {
	int size;
	u8 *data;
	short users;	//Number of users 
	short media_change;	// Flag a media change? 
	spinlock_t lock;	// For mutual exclusion 
	struct request_queue *queue;	// The device request queue 
	struct gendisk *gd;	// The gendisk structure 
	struct timer_list timer;	// For simulated media changes 
};

//A list of devices
static struct osurd_dev *Devices = NULL;

// For debugging purposes
static void data_view(unsigned char *buf, unsigned int len) {
	//int i = 20;
	while (len > 0) {
		printk("%02x", *buf++);
		len--;
	}
	printk("\n");
}

// Handle an I/O request, in sectors.
static void osurd_transfer(struct osurd_dev *dev, unsigned long sector,
	       unsigned long nsect, char *buffer, int write) {
	unsigned long offset = sector *KERNEL_SECTOR_SIZE;
	unsigned long nbytes = nsect *KERNEL_SECTOR_SIZE;
	int i;

	u8 *dst;
	u8 *src;

	crypto_cipher_setkey(ccs, key, key_len); 

	if ((offset + nbytes) > dev->size) {
		printk(KERN_NOTICE "Beyond-end write (%ld %ld)\n", offset,
		       nbytes);
		return;
	}
	
	if (write){
		dst = dev->data + offset;
		src = buffer;

		printk("- - - -WRITE- - - -\n");
		printk("Before:\n");
		data_view(src, nbytes); 
		for (i = 0; i < nbytes; i += crypto_cipher_blocksize(ccs)) {
			/* Encrypt src according to ccs cipher*/
			crypto_cipher_encrypt_one(ccs, dst + i, src + i);
		}
		printk("After:\n");
		data_view(dst, nbytes); 
		//printk("--------WRITTING FINISHED--------\n");
	} 
	
	else {
		dst = buffer;
		src = dev->data + offset;

		// Decrypt src according to ccs cipher, send to dst
		printk("- - - -READ- - - -\n");
		printk("Before:\n");
		data_view(src, nbytes);
		for (i = 0; i < nbytes; i += crypto_cipher_blocksize(ccs)) {
			crypto_cipher_decrypt_one(ccs, dst + i, src + i);
		}
		printk("After:\n");
		data_view(dst, nbytes);
		//printk("--------READING FINISHED--------\n");
	}
}

static void osurd_request(struct request_queue *q) {
	struct request *req;
	req = blk_fetch_request(q);
	while (req != NULL) {
		struct osurd_dev *dev = req->rq_disk->private_data;
		if (req->cmd_type != REQ_TYPE_FS) {
			printk(KERN_NOTICE "Skip non-fs request\n");
			__blk_end_request_all(req, -EIO);
			continue;
		}
		osurd_transfer(dev, blk_rq_pos(req),
			       blk_rq_cur_sectors(req), req->buffer,
			       rq_data_dir(req));
		// end_request(req, 1); 
		if (!__blk_end_request_cur(req, 0)) {
			req = blk_fetch_request(q);
		}
	}
}

static int osurd_xfer_bio(struct osurd_dev *dev, struct bio *bio) {
	//int i;
	struct bio_vec bvec;
	struct bvec_iter iter;
	sector_t sector = bio->bi_iter.bi_sector;
	// Do each segment independently. 
	bio_for_each_segment(bvec, bio, iter) {
		//char *buffer = __bio_kmap_atomic(bio, iter, KM_USER0);
		char *buffer = __bio_kmap_atomic(bio, iter);
		osurd_transfer(dev, sector, bio_cur_bytes(bio) >> 9	// in sectors
			       , buffer, bio_data_dir(bio) == WRITE);
		sector += bio_cur_bytes(bio) >> 9;	// in sectors 
		//__bio_kunmap_atomic(bio, KM_USER0);
		__bio_kunmap_atomic(bio);
	}
	return 0;	
}

static int osurd_xfer_request(struct osurd_dev *dev, struct request *req) {
	struct bio *bio;
	int nsect = 0;
	__rq_for_each_bio(bio, req) {
		osurd_xfer_bio(dev, bio);
		nsect += bio->bi_size / KERNEL_SECTOR_SIZE;
	}
	return nsect;
}

static void osurd_full_request(struct request_queue *q) {
	struct request *req;
	int sectors_xferred;
	struct osurd_dev *dev = q->queuedata;
	req = blk_fetch_request(q);
	while (req != NULL) {
		if (req->cmd_type != REQ_TYPE_FS) {
			printk(KERN_NOTICE "Skip non-fs request\n");
			__blk_end_request_all(req, -EIO);
			continue;
		}
		sectors_xferred = osurd_xfer_request(dev, req);
		if (!__blk_end_request_cur(req, 0)) {
			blk_fetch_request(q);
		}
	}
}

static void osurd_make_request(struct request_queue *q, struct bio *bio) {
	struct osurd_dev *dev = q->queuedata;
	int status;
	status = osurd_xfer_bio(dev, bio);
	bio_endio(bio, status);
	//return 0;
}

static int osurd_open(struct block_device *device, fmode_t mode) {
	struct osurd_dev *dev = device->bd_disk->private_data;
	del_timer_sync(&dev->timer);
	spin_lock(&dev->lock);
	if (!dev->users)
		check_disk_change(device);
	dev->users++;
	spin_unlock(&dev->lock);
	return 0;
}


static int osurd_release(struct gendisk *disk, fmode_t mode) {
	struct osurd_dev *dev = disk->private_data;
	spin_lock(&dev->lock);
	dev->users--;

	if (!dev->users) {
		dev->timer.expires = jiffies + INVALIDATE_DELAY;
		add_timer(&dev->timer);
	}
	spin_unlock(&dev->lock);

	return 0;
}

int osurd_media_changed(struct gendisk *gd) {
	struct osurd_dev *dev = gd->private_data;
	return dev->media_change;
}

int osurd_revalidate(struct gendisk *gd) {
	struct osurd_dev *dev = gd->private_data;
	if (dev->media_change) {
		dev->media_change = 0;
		memset(dev->data, 0, dev->size);
	}
	return 0;
}

void osurd_invalidate(unsigned long ldev) {
	struct osurd_dev *dev = (struct osurd_dev *) ldev;
	spin_lock(&dev->lock);
	if (dev->users || !dev->data)
		printk(KERN_WARNING "osurd: timer sanity check failed, whatever that means\n");
	else
		dev->media_change = 1;
	spin_unlock(&dev->lock);
}

int osurd_ioctl (struct block_device *bdev, fmode_t mode,
                 unsigned int cmd, unsigned long arg) {
		return 0;
}

 static int osurd_getgeo(struct block_device *device, struct hd_geometry *geo) {
	struct osurd_dev *dev = device->bd_disk->private_data;
	unsigned long size = dev->size * (hardsect_size / KERNEL_SECTOR_SIZE);
	geo->cylinders = (size & ~0x3f) >> 6;
	geo->heads = 4;
	geo->sectors = 16;
	geo->start = 0;
	return 0;
}

static struct block_device_operations osurd_ops = {
	.owner = THIS_MODULE,
	.open = osurd_open,
	.release = osurd_release,
	.media_changed = osurd_media_changed,
	.revalidate_disk = osurd_revalidate,
	.ioctl = osurd_ioctl,
	.getgeo = osurd_getgeo
};

static void setup_device(struct osurd_dev *dev, int which) {
	// Get memory
	memset(dev, 0, sizeof (struct osurd_dev));
	dev->size = nsectors * hardsect_size; 
	dev->data = vmalloc(dev->size); 
	if (dev->data == NULL) {
		printk(KERN_NOTICE "vmalloc failure.\n");
		return;
	}
	spin_lock_init(&dev->lock);

	init_timer(&dev->timer);
	dev->timer.data = (unsigned long) dev;
	dev->timer.function = osurd_invalidate;

	switch (request_mode) {
	case RM_NOQUEUE:
		dev->queue = blk_alloc_queue(GFP_KERNEL);
		if (dev->queue == NULL)
			goto out_vfree;
		blk_queue_make_request(dev->queue, osurd_make_request);
		break;
	case RM_FULL:
		dev->queue = blk_init_queue(osurd_full_request, &dev->lock);
		if (dev->queue == NULL)
			goto out_vfree;
		break;
	default:
		printk(KERN_NOTICE
		       "Bad request mode %d, using simple\n", request_mode);
	case RM_SIMPLE:
		dev->queue = blk_init_queue(osurd_request, &dev->lock);
		if (dev->queue == NULL)
			goto out_vfree;
		break;
	}
	blk_queue_logical_block_size(dev->queue, hardsect_size);
	dev->queue->queuedata = dev;
	dev->gd = alloc_disk(OSURD_MINORS);
	if (!dev->gd) {
		printk(KERN_NOTICE "alloc_disk failure\n");
		goto out_vfree;
	}
	dev->gd->major = osurd_major;
	dev->gd->first_minor = which * OSURD_MINORS;
	dev->gd->fops = &osurd_ops;
	dev->gd->queue = dev->queue;
	dev->gd->private_data = dev;
	snprintf(dev->gd->disk_name, 32, "osurd%c", which + 'a');
	set_capacity(dev->gd, nsectors * (hardsect_size / KERNEL_SECTOR_SIZE));
	add_disk(dev->gd);
	return;
	
  out_vfree:
	  if (dev->data)
		  vfree(dev->data);
}

static int __init osurd_init(void) {
	int i;
	ccs = crypto_alloc_cipher("aes", 0, 0); 
	osurd_major = register_blkdev(osurd_major, "osurd");
	if (osurd_major <= 0) {
		printk(KERN_WARNING "osurd: unable to get major number, it's below 0\n");
		return -EBUSY;
	}
	Devices = kmalloc(ndevices * sizeof (struct osurd_dev), GFP_KERNEL);
	if (Devices == NULL)
		goto out_unregister;
	for (i = 0; i < ndevices; i++)
		setup_device(Devices + i, i);

	return 0;
	
  out_unregister:
		unregister_blkdev(osurd_major, "osurd");
		return -ENOMEM;
}

static void osurd_exit(void) {
	int i;

	crypto_free_cipher(ccs);
	for (i = 0; i < ndevices; i++) {
		struct osurd_dev *dev = Devices + i;

		del_timer_sync(&dev->timer);
		if (dev->gd) {
			del_gendisk(dev->gd);
			put_disk(dev->gd);
		}
		if (dev->queue)
			blk_cleanup_queue(dev->queue);
		if (dev->data)
			vfree(dev->data);
	}
	unregister_blkdev(osurd_major, "osurd");
	kfree(Devices);
}

module_init(osurd_init);
module_exit(osurd_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("Austin Brown CS444");
MODULE_DESCRIPTION("RAM Disk driver that allocates chunk memory and presents it as a block device");