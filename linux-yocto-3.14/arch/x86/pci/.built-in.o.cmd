cmd_arch/x86/pci/built-in.o :=  i586-poky-linux-ld -m elf_i386   -r -o arch/x86/pci/built-in.o arch/x86/pci/i386.o arch/x86/pci/init.o arch/x86/pci/pcbios.o arch/x86/pci/mmconfig_32.o arch/x86/pci/direct.o arch/x86/pci/mmconfig-shared.o arch/x86/pci/fixup.o arch/x86/pci/acpi.o arch/x86/pci/legacy.o arch/x86/pci/irq.o arch/x86/pci/common.o arch/x86/pci/early.o arch/x86/pci/bus_numa.o arch/x86/pci/amd_bus.o 
