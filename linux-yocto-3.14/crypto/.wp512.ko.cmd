cmd_crypto/wp512.ko := i586-poky-linux-ld -r -m elf_i386 -T /scratch/spring2016/cs444-013/linux-yocto-3.14/scripts/module-common.lds --build-id  -o crypto/wp512.ko crypto/wp512.o crypto/wp512.mod.o
