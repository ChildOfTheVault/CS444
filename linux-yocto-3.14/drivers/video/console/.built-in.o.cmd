cmd_drivers/video/console/built-in.o :=  i586-poky-linux-ld -m elf_i386   -r -o drivers/video/console/built-in.o drivers/video/console/dummycon.o drivers/video/console/vgacon.o drivers/video/console/fbcon.o drivers/video/console/bitblit.o drivers/video/console/softcursor.o 