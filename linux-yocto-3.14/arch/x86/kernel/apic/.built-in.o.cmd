cmd_arch/x86/kernel/apic/built-in.o :=  i586-poky-linux-ld -m elf_i386   -r -o arch/x86/kernel/apic/built-in.o arch/x86/kernel/apic/apic.o arch/x86/kernel/apic/apic_noop.o arch/x86/kernel/apic/ipi.o arch/x86/kernel/apic/hw_nmi.o arch/x86/kernel/apic/io_apic.o arch/x86/kernel/apic/probe_32.o 