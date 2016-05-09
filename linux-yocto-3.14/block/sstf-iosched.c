/*
 * elevator noop
 */
#include <linux/blkdev.h>
#include <linux/elevator.h>
#include <linux/bio.h>
#include <linux/module.h>
#include <linux/slab.h>
#include <linux/init.h>

struct sstf_data {
	struct list_head queue;
};

static sector_t prev_sector;

static void sstf_merged_requests(struct request_queue *q, struct request *rq,
				 struct request *next)
{
	list_del_init(&next->queuelist);
}

/*One of the only functions that is changed in converting from NOOP to SSTF implementation.
 *SSTF dispatches a request differently.
 */
static int sstf_dispatch(struct request_queue *q, int force)
{
	struct sstf_data *nd = q->elevator->elevator_data;
	struct request *near_rq;
	int temp = -1;
	int near = -1;
	sector_t sec;

	if (!list_empty(&nd->queue)) {
		struct request *rq;
		//if (nd->queue_count == 1) {
                //	list_del_init(&rq->queuelist);
                //	nd->queue_count--;
                //}
		//else {
			list_for_each_entry(rq, &nd->queue, queuelist) {
				if (rq == 0) {
					printk("Add request rd failed in sstf_dispatch\n");
					return 0;
				}
				sec = blk_rq_pos(rq);
        			if (prev_sector >= sec) {
        				temp = prev_sector - sec;
        			} 
				else {
        				temp = sec - prev_sector;
       				}
		        	sec = blk_rq_pos(rq);
				if (near > temp || near == -1) {
					near = temp;
					near_rq = rq;
				}
			}
			prev_sector = blk_rq_sectors(near_rq) + blk_rq_pos(near_rq);
                	list_del_init(&near_rq->queuelist);
                	elv_dispatch_add_tail(q, near_rq); 
		//}

		/*NOOP Code*/
		//rq = list_entry(nd->queue.next, struct request, queuelist);
		//list_del_init(&rq->queuelist);
		//elv_dispatch_sort(q, rq);
		
		printk("SSTF dis %llu\n", (unsigned long long)blk_rq_pos(near_rq));
		return 1;
	}
	return 0;
}

/* Mostly untouched, added printk call*/
static void sstf_add_request(struct request_queue *q, struct request *rq)
{
	struct sstf_data *nd = q->elevator->elevator_data;
	//int req_added = 0;
	printk("SSTF add pos %llu\n", (unsigned long long)blk_rq_pos(rq));
	

	list_add_tail(&rq->queuelist, &nd->queue);
	//printk("Queue count: %d\n", nd->queue_count);
}

/* Mostly untouched*/
static struct request *
sstf_former_request(struct request_queue *q, struct request *rq)
{
	struct sstf_data *nd = q->elevator->elevator_data;

	if (rq->queuelist.prev == &nd->queue)
		return NULL;
	return list_entry(rq->queuelist.prev, struct request, queuelist);
}

/* Mostly untouched*/
static struct request *
sstf_latter_request(struct request_queue *q, struct request *rq)
{
	struct sstf_data *nd = q->elevator->elevator_data;

	if (rq->queuelist.next == &nd->queue)
		return NULL;
	return list_entry(rq->queuelist.next, struct request, queuelist);
}

/* Mostly untouched*/
static int sstf_init_queue(struct request_queue *q, struct elevator_type *e)
{
	struct sstf_data *nd;
	struct elevator_queue *eq;

	eq = elevator_alloc(q, e);
	if (!eq)
		return -ENOMEM;

	nd = kmalloc_node(sizeof(*nd), GFP_KERNEL, q->node);
	if (!nd) {
		kobject_put(&eq->kobj);
		return -ENOMEM;
	}
	eq->elevator_data = nd;

	INIT_LIST_HEAD(&nd->queue);

	spin_lock_irq(q->queue_lock);
	q->elevator = eq;
	spin_unlock_irq(q->queue_lock);
	return 0;
}

static void sstf_exit_queue(struct elevator_queue *e)
{
	struct sstf_data *nd = e->elevator_data;

	BUG_ON(!list_empty(&nd->queue));
	kfree(nd);
}

static struct elevator_type elevator_sstf = {
	.ops = {
		.elevator_merge_req_fn		= sstf_merged_requests,
		.elevator_dispatch_fn		= sstf_dispatch,
		.elevator_add_req_fn		= sstf_add_request,
		.elevator_former_req_fn		= sstf_former_request,
		.elevator_latter_req_fn		= sstf_latter_request,
		.elevator_init_fn		= sstf_init_queue,
		.elevator_exit_fn		= sstf_exit_queue,
	},
	.elevator_name = "sstf",
	.elevator_owner = THIS_MODULE,
};

static int __init sstf_init(void)
{
	return elv_register(&elevator_sstf);
}

static void __exit sstf_exit(void)
{
	elv_unregister(&elevator_sstf);
}

module_init(sstf_init);
module_exit(sstf_exit);


MODULE_AUTHOR("Austin Brown - 13");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("SSTF IO scheduler");
