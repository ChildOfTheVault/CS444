cmd_crypto/ecb.ko := i586-poky-linux-ld -r -m elf_i386 -T /scratch/spring2016/cs444-013/linux-yocto-3.14/scripts/module-common.lds --build-id  -o crypto/ecb.ko crypto/ecb.o crypto/ecb.mod.o
