cmd_arch/x86/vdso/vdso32-sysenter.so.dbg := i586-poky-linux-gcc -nostdlib -o arch/x86/vdso/vdso32-sysenter.so.dbg -fPIC -shared  -Wl,--hash-style=sysv -m32 -Wl,-soname=linux-gate.so.1 -Wl,-T,arch/x86/vdso/vdso32/vdso32.lds arch/x86/vdso/vdso32/note.o arch/x86/vdso/vdso32/sysenter.o && sh /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/vdso/checkundef.sh 'i586-poky-linux-nm' 'arch/x86/vdso/vdso32-sysenter.so.dbg'
