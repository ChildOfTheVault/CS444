cmd_fs/romfs/romfs.ko := i586-poky-linux-ld -r -m elf_i386 -T /scratch/spring2016/cs444-013/linux-yocto-3.14/scripts/module-common.lds --build-id  -o fs/romfs/romfs.ko fs/romfs/romfs.o fs/romfs/romfs.mod.o
