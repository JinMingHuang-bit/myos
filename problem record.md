head.S:曾经的代码将数据段放在开头,由于地址计数器的原因,代码运行到
.org	0x1000时地址溢出,导致链接器无法链接,通过调整代码布局,将代码段放在开头即可解决此问题.

main.c O2优化后内核崩溃:
场景复现：
(0) [0x000000104008] 0008:ffff800000104008 (unk. ctxt): mov r11, 0x0000000000004c9c ; 49bb9c4c000000000000
<bochs:45> n
Next at t=49935367
(0) [0x000000104012] 0008:ffff800000104012 (unk. ctxt): lea r15, qword ptr ds:[rip-21] ; 4c8d3debffffff
<bochs:46> n
Next at t=49935368
(0) [0x000000104019] 0008:ffff800000104019 (unk. ctxt): push rbx                  ; 53
<bochs:47> n
Next at t=49935369
(0) [0x00000010401a] 0008:ffff80000010401a (unk. ctxt): add r15, r11              ; 4d01df
<bochs:48> n
Next at t=49935370
(0) [0x00000010401d] 0008:ffff80000010401d (unk. ctxt): mov rdx, 0xffffffffffffc750 ; 48ba50c7ffffffffffff
<bochs:49> n
Next at t=49935371
(0) [0x000000104027] 0008:ffff800000104027 (unk. ctxt): mov rax, 0x0000000000001020 ; 48b82010000000000000
<bochs:50> n
Next at t=49935372
(0) [0x000000104031] 0008:ffff800000104031 (unk. ctxt): mov rcx, 0xffff800000a00000 ; 48b90000a0000080ffff
<bochs:51> n
Next at t=49935373
(0) [0x00000010403b] 0008:ffff80000010403b (unk. ctxt): mov edi, 0x00ffff00       ; bf00ffff00
<bochs:52> n
Next at t=49935374
(0) [0x000000104040] 0008:ffff800000104040 (unk. ctxt): mov rbx, 0xffffffffffffc260 ; 48bb60c2ffffffffffff
<bochs:53> n
Next at t=49935375
(0) [0x00000010404a] 0008:ffff80000010404a (unk. ctxt): add rbx, r15              ; 4c01fb
<bochs:54> n
Next at t=49935376
(0) [0x00000010404d] 0008:ffff80000010404d (unk. ctxt): sub rsp, 0x0000000000000008 ; 4883ec08
<bochs:55> n
Next at t=49935377
(0) [0x000000104051] 0008:ffff800000104051 (unk. ctxt): movdqa xmm0, dqword ptr ds:[r15+rdx] ; 66410f6f0417
<bochs:56> n
00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg
00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg
00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg
00049935377i[CPU0  ] CPU is in long mode (active)
00049935377i[CPU0  ] CS.mode = 64 bit
00049935377i[CPU0  ] SS.mode = 64 bit
00049935377i[CPU0  ] EFER   = 0x00000500
00049935377i[CPU0  ] | RAX=0000000000001020  RBX=ffff800000104f00
00049935377i[CPU0  ] | RCX=ffff800000a00000  RDX=ffffffffffffc750
00049935377i[CPU0  ] | RSP=ffff800000007de8  RBP=00000000000008bf
00049935377i[CPU0  ] | RSI=0000000000000000  RDI=0000000000ffff00
00049935377i[CPU0  ] |  R8=0000000000000000   R9=0000000000000000
00049935377i[CPU0  ] | R10=0000000000000000  R11=0000000000004c9c
00049935377i[CPU0  ] | R12=0000000000000000  R13=0000000000000000
00049935377i[CPU0  ] | R14=0000000000000000  R15=ffff800000108ca0
00049935377i[CPU0  ] | IOPL=0 id vip vif ac vm RF nt of df if tf SF zf AF PF cf
00049935377i[CPU0  ] | SEG sltr(index|ti|rpl)     base    limit G D
00049935377i[CPU0  ] |  CS:0008( 0001| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  DS:0010( 0002| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  SS:0010( 0002| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  ES:0010( 0002| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  FS:0010( 0002| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  GS:0010( 0002| 0|  0) 00000000 00000000 0 0
00049935377i[CPU0  ] |  MSR_FS_BASE:0000000000000000
00049935377i[CPU0  ] |  MSR_GS_BASE:0000000000000000
00049935377i[CPU0  ] | RIP=ffff800000104051 (ffff800000104051)
00049935377i[CPU0  ] | CR0=0xe0000011 CR2=0x0000000000000000
00049935377i[CPU0  ] | CR3=0x00101000 CR4=0x00000020
(0).[49935377] [0x000000104051] 0008:ffff800000104051 (unk. ctxt): movdqa xmm0, dqword ptr ds:[r15+rdx] ; 66410f6f0417
00049935377e[CPU0  ] exception(): 3rd (13) exception with no resolution, shutdown status is 00h, resetting
00049935377i[SYS   ] bx_pc_system_c::Reset(HARDWARE) called
00049935377i[CPU0  ] cpu hardware reset
00049935377i[APIC0 ] allocate APIC id=0 (MMIO enabled) to 0x0000fee00000
00049935377i[CPU0  ] CPU[0] is the bootstrap processor
00049935377i[CPU0  ] CPUID[0x00000000]: 0000000d 756e6547 6c65746e 49656e69
00049935377i[CPU0  ] CPUID[0x00000001]: 000306c3 00010800 77faf3bf bfebfbff
00049935377i[CPU0  ] CPUID[0x00000002]: 76036301 00f0b5ff 00000000 00c10000
00049935377i[CPU0  ] CPUID[0x00000003]: 00000000 00000000 00000000 00000000
00049935377i[CPU0  ] CPUID[0x00000004]: 1c004121 01c0003f 0000003f 00000000
00049935377i[CPU0  ] CPUID[0x00000005]: 00000040 00000040 00000003 00042120
00049935377i[CPU0  ] CPUID[0x00000006]: 00000077 00000002 00000009 00000000
00049935377i[CPU0  ] CPUID[0x00000007]: 00000000 000027a9 00000000 00000000
00049935377i[CPU0  ] CPUID[0x00000008]: 00000000 00000000 00000000 00000000
00049935377i[CPU0  ] CPUID[0x00000009]: 00000000 00000000 00000000 00000000
00049935377i[CPU0  ] WARNING: Architectural Performance Monitoring is not implemented00049935377i[CPU0  ] CPUID[0x0000000a]: 07300403 00000000 00000000 00000603
00049935377i[CPU0  ] CPUID[0x0000000b]: 00000001 00000001 00000000 00000000
00049935377i[CPU0  ] CPUID[0x0000000c]: 00000000 00000000 00000000 00000000
00049935377i[CPU0  ] CPUID[0x0000000d]: 00000007 00000240 00000340 00000000
00049935377i[PLUGIN] reset of 'pci' plugin device by virtual method
00049935377i[PLUGIN] reset of 'pci2isa' plugin device by virtual method
00049935377i[PLUGIN] reset of 'cmos' plugin device by virtual method
00049935377i[PLUGIN] reset of 'dma' plugin device by virtual method
00049935377i[PLUGIN] reset of 'pic' plugin device by virtual method
00049935377i[PLUGIN] reset of 'pit' plugin device by virtual method
00049935377i[PLUGIN] reset of 'vga' plugin device by virtual method
00049935377i[PLUGIN] reset of 'floppy' plugin device by virtual method
00049935377i[PLUGIN] reset of 'acpi' plugin device by virtual method
00049935377i[PLUGIN] reset of 'ioapic' plugin device by virtual method
00049935377i[PLUGIN] reset of 'keyboard' plugin device by virtual method
00049935377i[PLUGIN] reset of 'harddrv' plugin device by virtual method
00049935377i[PLUGIN] reset of 'pci_ide' plugin device by virtual method
00049935377i[PLUGIN] reset of 'unmapped' plugin device by virtual method
00049935377i[PLUGIN] reset of 'biosdev' plugin device by virtual method
00049935377i[PLUGIN] reset of 'speaker' plugin device by virtual method
00049935377i[PLUGIN] reset of 'extfpuirq' plugin device by virtual method
00049935377i[PLUGIN] reset of 'parallel' plugin device by virtual method
00049935377i[PLUGIN] reset of 'serial' plugin device by virtual method
00049935377i[PLUGIN] reset of 'iodebug' plugin device by virtual method
Next at t=49935378
(0) [0x0000fffffff0] f000:fff0 (unk. ctxt): jmpf 0xf000:e05b          ; ea5be000f0
<bochs:57>
相关代码为：
```assembly
main.c (O2编译后反汇编):13: 
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	addq	%r11, %r15	#, tmp82
# main.c:19:     Pos.XResolution=1440;
	movabsq	$.LC0@GOTOFF, %rdx	#, tmp84
	movabsq	$Pos@GOTOFF, %rax	#, tmp83
# main.c:25:     Pos.FB_addr=(int *)0xffff800000a00000;
	movabsq	$-140737477869568, %rcx	#, tmp109
# main.c:59:     color_printk(YELLOW,BLACK,"hello\t\t kernel!\n");
	movl	$16776960, %edi	#,
	movabsq	$color_printk@PLTOFF, %rbx	#, tmp94
	addq	%r15, %rbx	# tmp82, tmp94
# main.c:13: 
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# main.c:19:     Pos.XResolution=1440;
#an error happen here
	movdqa	(%r15,%rdx), %xmm0	#, tmp108
# main.c:25:     Pos.FB_addr=(int *)0xffff800000a00000;
	movq	%rcx, 24(%rax,%r15)	# tmp109, Pos.FB_addr
# main.c:23:     Pos.XCharSize=8;
	movabsq	$.LC1@GOTOFF, %rdx	#, tmp87
# main.c:26:     Pos.FB_length=(Pos.XResolution*Pos.YResolution*4);
	movq	$5184000, 32(%r15,%rax)	#, Pos.FB_length
# main.c:23:     Pos.XCharSize=8;
	movq	(%r15,%rdx), %rdx	#, tmp88

```
可能解释：1.在内核早期启动阶段，可能还没有启用SSE（通过CR4.OSFXSR），那么使用SSE指令也会导致异常。但是，在64位模式下，SSE是必须支持的，而且通常默认启用。
不过，内核应该在初始化过程中设置CR4寄存器，但我们在设计中没有考虑到这一点，导致在内核早期阶段没有启用SSE，导致内核崩溃。

CR4=0x00000020转化为二进制为0010 0000m,位5 (OSFXSR) = 1: 启用了SSE/SSE2支持,位9 (OSXMMEXCPT) = 0: 未启用SSE异常处理

2. 内存映射问题
可能的问题是：这个内存地址还没有被正确映射。

在-O2优化中，编译器使用了预先计算好的常量段：
```assembly
.section	.rodata.cst16,"aM",@progbits,16
.align 16
.LC0:
	.long	1440
	.long	900
	.long	0
	.long	0``
但问题在于，在内核早期启动阶段，这些只读数据段可能还没有被正确映射到页表中。

往main.c开头加入以下代码：
```c
    unsigned long cr4;
    asm volatile("mov %%cr4, %0" : "=r"(cr4));
    cr4 |= (1 << 9);  // 设置OSXMMEXCPT位
    cr4 |= (1 << 10); // 设置OSXSAVE位（如果需要）
    asm volatile("mov %0, %%cr4" : : "r"(cr4));
```后问题解决了。
cr4
第9位 - OSXMMEXCPT
启用SSE浮点异常处理

允许SSE指令在发生除零、溢出等异常时产生#XF异常

如果不设置，SSE异常会导致无效操作码异常

第10位 - OSXSAVE
启用XSAVE/XRSTOR指令

这些指令用于保存/恢复扩展处理器状态（SSE、AVX、AVX-512等）

为使用AVX等高级向量指令做准备

修改后为：^C83555989756i[      ] Ctrl-C detected in signal handler.
Next at t=83555989757
(0) [0x0000001040fc] 0008:ffff8000001040fc (unk. ctxt): jmp .-2 (0xffff8000001040fc) ; ebfe
<bochs:2> q
83555989757i[      ] dbg: Quit
83555989757i[CPU0  ] CPU is in long mode (active)
83555989757i[CPU0  ] CS.mode = 64 bit
83555989757i[CPU0  ] SS.mode = 64 bit
83555989757i[CPU0  ] EFER   = 0x00000500
83555989757i[CPU0  ] | RAX=0000000000000022  RBX=ffff800000104f00
83555989757i[CPU0  ] | RCX=00000000000005a0  RDX=0000000000000004
83555989757i[CPU0  ] | RSP=ffff800000007de8  RBP=00000000000008bf
83555989757i[CPU0  ] | RSI=0000000000000004  RDI=ffff800000106eb0
83555989757i[CPU0  ] |  R8=0000000000001020   R9=0000000000000008
83555989757i[CPU0  ] | R10=0000000000000000  R11=0000000000000022
83555989757i[CPU0  ] | R12=0000000000000000  R13=0000000000000000
83555989757i[CPU0  ] | R14=0000000000000000  R15=ffff800000108ca0
83555989757i[CPU0  ] | IOPL=0 id vip vif ac vm rf nt of df if tf SF zf AF pf cf
83555989757i[CPU0  ] | SEG sltr(index|ti|rpl)     base    limit G D
83555989757i[CPU0  ] |  CS:0008( 0001| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  DS:0010( 0002| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  SS:0010( 0002| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  ES:0010( 0002| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  FS:0010( 0002| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  GS:0010( 0002| 0|  0) 00000000 00000000 0 0
83555989757i[CPU0  ] |  MSR_FS_BASE:0000000000000000
83555989757i[CPU0  ] |  MSR_GS_BASE:0000000000000000
83555989757i[CPU0  ] | RIP=ffff8000001040fc (ffff8000001040fc)
83555989757i[CPU0  ] | CR0=0xe0000011 CR2=0x0000000000000000
83555989757i[CPU0  ] | CR3=0x00101000 CR4=0x00000620
(0).[83555989757] [0x0000001040fc] 0008:ffff8000001040fc (unk. ctxt): jmp .-2 (0xffff8000001040fc) ; ebfe
83555989757i[CMOS  ] Last time is 1760987926 (Tue Oct 21 03:18:46 2025)
83555989757i[XGUI  ] Exit
83555989757i[SIM   ] quit_sim called with exit code 0