cmd_lib/ts_bm.ko := i586-poky-linux-ld -r -m elf_i386 -T /scratch/spring2016/cs444-013/linux-yocto-3.14/scripts/module-common.lds --build-id  -o lib/ts_bm.ko lib/ts_bm.o lib/ts_bm.mod.o
