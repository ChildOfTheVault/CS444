cmd_drivers/input/mouse/lifebook.o := i586-poky-linux-gcc -Wp,-MD,drivers/input/mouse/.lifebook.o.d  -nostdinc -isystem /scratch/opt/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux/../../lib/i586-poky-linux/gcc/i586-poky-linux/4.9.1/include -I/scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include -Iarch/x86/include/generated  -Iinclude -I/scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi -Iinclude/generated/uapi -include /scratch/spring2016/cs444-013/linux-yocto-3.14/include/linux/kconfig.h -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -m32 -msoft-float -mregparm=3 -freg-struct-return -mno-mmx -mno-sse -fno-pic -mpreferred-stack-boundary=2 -march=i686 -mtune=pentium3 -mtune=generic -maccumulate-outgoing-args -Wa,-mtune=generic32 -ffreestanding -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_CRC32=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -pg -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -DCC_HAVE_ASM_GOTO --sysroot=/scratch/opt/sysroots/i586-poky-linux    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(lifebook)"  -D"KBUILD_MODNAME=KBUILD_STR(psmouse)" -c -o drivers/input/mouse/lifebook.o drivers/input/mouse/lifebook.c

source_drivers/input/mouse/lifebook.o := drivers/input/mouse/lifebook.c

deps_drivers/input/mouse/lifebook.o := \
  include/linux/input.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/sysinfo.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/types.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/posix_types_32.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/asm-generic/posix_types.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/cache.h \
    $(wildcard include/config/x86/l1/cache/shift.h) \
    $(wildcard include/config/x86/internode/cache/shift.h) \
    $(wildcard include/config/x86/vsmp.h) \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/typecheck.h \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/const.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/preempt.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/rmwcc.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/x86/64/smp.h) \
    $(wildcard include/config/x86/cmpxchg64.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /scratch/opt/sysroots/x86_64-pokysdk-linux/usr/lib/i586-poky-linux/gcc/i586-poky-linux/4.9.1/include/stdarg.h \
  include/linux/bitops.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/x86/cmov.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/paravirt.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/asm.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/x86/debugctlmsr.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/segment.h \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/x86/32/lazy/gs.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/physical/start.h) \
    $(wildcard include/config/physical/align.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/page_32_types.h \
    $(wildcard include/config/highmem4g.h) \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/x86/pae.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/ptrace.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/ptrace-abi.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/vm86.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/processor-flags.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/x86/local/apic.h) \
    $(wildcard include/config/paravirt/debug.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/desc_defs.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/kmap_types.h \
    $(wildcard include/config/debug/highmem.h) \
  include/asm-generic/kmap_types.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/compat/vdso.h) \
    $(wildcard include/config/proc/fs.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/pgtable_32_types.h \
    $(wildcard include/config/highmem.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/pgtable-2level_types.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable-nopmd.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/spinlock_types.h \
    $(wildcard include/config/paravirt/spinlocks.h) \
    $(wildcard include/config/nr/cpus.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/rwlock.h \
  include/asm-generic/ptrace.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/cpufeature.h \
    $(wildcard include/config/x86/debug/static/cpu/has.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/x86/minimum/cpu/family.h) \
    $(wildcard include/config/math/emulation.h) \
    $(wildcard include/config/x86/use/3dnow.h) \
    $(wildcard include/config/x86/p6/nop.h) \
    $(wildcard include/config/matom.h) \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/string.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/string_32.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/errno.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/asm-generic/errno.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/asm-generic/errno-base.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/div64.h \
  include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/threads.h \
    $(wildcard include/config/base/small.h) \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/ia32/emulation.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/page.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/page_32.h \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/x86/3dnow.h) \
  include/linux/range.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/getorder.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/processor.h \
    $(wildcard include/config/m486.h) \
    $(wildcard include/config/xen.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/vm86.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/vm86.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/math_emu.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/sigcontext.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/sigcontext.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/current.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/msr.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/msr.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/msr-index.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/ioctl.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/cpumask.h \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/bitmap.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/paravirt.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/nops.h \
    $(wildcard include/config/mk7.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/special_insns.h \
  include/linux/personality.h \
  include/uapi/linux/personality.h \
  include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  include/linux/err.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/irqflags.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/atomic.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/cmpxchg.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/cmpxchg_32.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/atomic64_32.h \
  include/asm-generic/atomic-long.h \
  include/linux/bottom_half.h \
  include/linux/preempt_mask.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/barrier.h \
    $(wildcard include/config/x86/ppro/fence.h) \
  include/linux/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/spinlock.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/uapi/linux/time.h \
  include/uapi/linux/input.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  include/linux/kobject.h \
    $(wildcard include/config/debug/kobject/release.h) \
  include/linux/sysfs.h \
    $(wildcard include/config/sysfs.h) \
  include/linux/kernfs.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  include/linux/idr.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  include/linux/completion.h \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcutree.h \
  include/linux/rbtree.h \
  include/linux/kobject_ns.h \
  include/linux/stat.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/kref.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/param.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/timex.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/tsc.h \
    $(wildcard include/config/x86/tsc.h) \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/rwsem.h \
  include/linux/srcu.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/smp.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/smp.h \
    $(wildcard include/config/x86/io/apic.h) \
    $(wildcard include/config/x86/32/smp.h) \
    $(wildcard include/config/debug/nmi/selftest.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/x86/numaq.h) \
    $(wildcard include/config/eisa.h) \
    $(wildcard include/config/x86/mpparse.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/mpspec_def.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/x86_init.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/bootparam.h \
  include/linux/screen_info.h \
  include/uapi/linux/screen_info.h \
  include/linux/apm_bios.h \
  include/uapi/linux/apm_bios.h \
  include/linux/edd.h \
  include/uapi/linux/edd.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/e820.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memtest.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/e820.h \
    $(wildcard include/config/intel/txt.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/ist.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/ist.h \
  include/video/edid.h \
    $(wildcard include/config/x86.h) \
  include/uapi/video/edid.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/apicdef.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/apic.h \
    $(wildcard include/config/x86/x2apic.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/paravirt/clock.h) \
    $(wildcard include/config/provide/ohci1394/dma/init.h) \
    $(wildcard include/config/x86/visws/apic.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/x86/intel/mid.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/acpi.h \
    $(wildcard include/config/acpi/numa.h) \
  include/acpi/pdc_intel.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/numa.h \
    $(wildcard include/config/numa/emu.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/topology.h \
    $(wildcard include/config/x86/ht.h) \
  include/asm-generic/topology.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/numa_32.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/mmu.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/realmode.h \
    $(wildcard include/config/acpi/sleep.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/io.h \
    $(wildcard include/config/mtrr.h) \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/linux/vmalloc.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/pvclock.h \
  include/linux/clocksource.h \
    $(wildcard include/config/arch/clocksource/data.h) \
    $(wildcard include/config/clocksource/watchdog.h) \
    $(wildcard include/config/clksrc/of.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/pvclock-abi.h \
  include/asm-generic/fixmap.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/idle.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/io_apic.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/irq_vectors.h \
    $(wildcard include/config/have/kvm.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  include/linux/pfn.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/device.h \
    $(wildcard include/config/x86/dev/dma/ops.h) \
    $(wildcard include/config/intel/iommu.h) \
    $(wildcard include/config/amd/iommu.h) \
  include/linux/pm_wakeup.h \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/bit_spinlock.h \
  include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  include/linux/path.h \
  include/linux/list_lru.h \
  include/linux/radix-tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/fiemap.h \
  include/linux/shrinker.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/uapi/linux/fs.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/limits.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/percpu_counter.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/uapi/asm/fcntl.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/include/uapi/asm-generic/fcntl.h \
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/serio.h \
  include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  include/linux/hardirq.h \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  include/linux/context_tracking_state.h \
  include/linux/static_key.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/hardirq.h \
    $(wildcard include/config/x86/thermal/vector.h) \
    $(wildcard include/config/x86/mce/threshold.h) \
  include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/irq.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/sparse/irq.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/hw_irq.h \
    $(wildcard include/config/irq/remap.h) \
  include/linux/profile.h \
    $(wildcard include/config/profiling.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/sections.h \
    $(wildcard include/config/debug/rodata.h) \
  include/asm-generic/sections.h \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/x86/intel/usercopy.h) \
    $(wildcard include/config/debug/strict/user/copy/checks.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/smap.h \
    $(wildcard include/config/x86/smap.h) \
  /scratch/spring2016/cs444-013/linux-yocto-3.14/arch/x86/include/asm/uaccess_32.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/uapi/linux/serio.h \
  include/linux/libps2.h \
  include/linux/dmi.h \
    $(wildcard include/config/dmi.h) \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
  drivers/input/mouse/psmouse.h \
  drivers/input/mouse/lifebook.h \
    $(wildcard include/config/mouse/ps2/lifebook.h) \

drivers/input/mouse/lifebook.o: $(deps_drivers/input/mouse/lifebook.o)

$(deps_drivers/input/mouse/lifebook.o):