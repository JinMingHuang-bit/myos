	.file	"trap.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04.3) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/student/myos/kernel" "trap.c"
	.type	set_intr_gate, @function
set_intr_gate:
.LFB34:
	.file 1 "gate.h"
	.loc 1 103 80
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L2:
	leaq	.L2(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L2, %r11	#,
	addq	%r11, %rax	#, tmp82
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, %ecx	# ist, tmp91
	movq	%rdx, -32(%rbp)	# addr, addr
	movl	%ecx, %edx	# tmp91, tmp92
	movb	%dl, -24(%rbp)	# tmp92, ist
.LBB2:
# gate.h:104:     _set_gate(IDT_Table+n, 0x8E, ist, addr);
	.loc 1 104 5
	movl	-20(%rbp), %edx	# n, _1
	movq	%rdx, %rcx	# _1, _1
	salq	$4, %rcx	#, _1
	movabsq	$IDT_Table@GOT, %rdx	#, tmp94
	movq	(%rax,%rdx), %rdx	#, tmp95
	leaq	(%rcx,%rdx), %rsi	#, _3
	movl	-20(%rbp), %edx	# n, _4
	salq	$4, %rdx	#, _5
	leaq	8(%rdx), %rcx	#, _6
	movabsq	$IDT_Table@GOT, %rdx	#, tmp97
	movq	(%rax,%rdx), %rax	#, tmp98
	leaq	(%rcx,%rax), %rdi	#, _7
	movq	-32(%rbp), %rax	# addr, addr.0_8
	movl	$524288, %r8d	#, tmp101
	movzbl	-24(%rbp), %ecx	# ist, tmp102
	movq	%rax, %rdx	# addr.0_8, __d1
	movl	%r8d, %eax	# tmp101, __d0
#APP
# 104 "gate.h" 1
	movw %dx, %ax  
	andq $0x7, %rcx 
	addq $36352, %rcx   	#
	shlq $32, %rcx  
	addq %rcx, %rax 
	xorq %rcx, %rcx 
	movl %edx, %ecx 
	shrq $16, %rcx  
	shlq $48, %rcx  
	addq %rcx, %rax 
	movq %rax, (%rsi)    	# *_3
	shrq $32, %rdx  
	movq %rdx, (%rdi)    	# *_7
	
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)	# __d0, __d0
	movq	%rdx, -16(%rbp)	# __d1, __d1
.LBE2:
# gate.h:105: }
	.loc 1 105 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	set_intr_gate, .-set_intr_gate
	.type	set_trap_gate, @function
set_trap_gate:
.LFB35:
	.loc 1 133 80
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L4:
	leaq	.L4(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L4, %r11	#,
	addq	%r11, %rax	#, tmp82
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, %ecx	# ist, tmp91
	movq	%rdx, -32(%rbp)	# addr, addr
	movl	%ecx, %edx	# tmp91, tmp92
	movb	%dl, -24(%rbp)	# tmp92, ist
.LBB3:
# gate.h:135:     _set_gate(IDT_Table+n, 0x8F, ist, addr);
	.loc 1 135 5
	movl	-20(%rbp), %edx	# n, _1
	movq	%rdx, %rcx	# _1, _1
	salq	$4, %rcx	#, _1
	movabsq	$IDT_Table@GOT, %rdx	#, tmp94
	movq	(%rax,%rdx), %rdx	#, tmp95
	leaq	(%rcx,%rdx), %rsi	#, _3
	movl	-20(%rbp), %edx	# n, _4
	salq	$4, %rdx	#, _5
	leaq	8(%rdx), %rcx	#, _6
	movabsq	$IDT_Table@GOT, %rdx	#, tmp97
	movq	(%rax,%rdx), %rax	#, tmp98
	leaq	(%rcx,%rax), %rdi	#, _7
	movq	-32(%rbp), %rax	# addr, addr.2_8
	movl	$524288, %r8d	#, tmp101
	movzbl	-24(%rbp), %ecx	# ist, tmp102
	movq	%rax, %rdx	# addr.2_8, __d1
	movl	%r8d, %eax	# tmp101, __d0
#APP
# 135 "gate.h" 1
	movw %dx, %ax  
	andq $0x7, %rcx 
	addq $36608, %rcx   	#
	shlq $32, %rcx  
	addq %rcx, %rax 
	xorq %rcx, %rcx 
	movl %edx, %ecx 
	shrq $16, %rcx  
	shlq $48, %rcx  
	addq %rcx, %rax 
	movq %rax, (%rsi)    	# *_3
	shrq $32, %rdx  
	movq %rdx, (%rdi)    	# *_7
	
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)	# __d0, __d0
	movq	%rdx, -16(%rbp)	# __d1, __d1
.LBE3:
# gate.h:137: }
	.loc 1 137 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	set_trap_gate, .-set_trap_gate
	.type	set_system_gate, @function
set_system_gate:
.LFB36:
	.loc 1 139 82
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L6:
	leaq	.L6(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11	#,
	addq	%r11, %rax	#, tmp82
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, %ecx	# ist, tmp91
	movq	%rdx, -32(%rbp)	# addr, addr
	movl	%ecx, %edx	# tmp91, tmp92
	movb	%dl, -24(%rbp)	# tmp92, ist
.LBB4:
# gate.h:140:     _set_gate(IDT_Table+n, 0xEF, ist, addr);
	.loc 1 140 5
	movl	-20(%rbp), %edx	# n, _1
	movq	%rdx, %rcx	# _1, _1
	salq	$4, %rcx	#, _1
	movabsq	$IDT_Table@GOT, %rdx	#, tmp94
	movq	(%rax,%rdx), %rdx	#, tmp95
	leaq	(%rcx,%rdx), %rsi	#, _3
	movl	-20(%rbp), %edx	# n, _4
	salq	$4, %rdx	#, _5
	leaq	8(%rdx), %rcx	#, _6
	movabsq	$IDT_Table@GOT, %rdx	#, tmp97
	movq	(%rax,%rdx), %rax	#, tmp98
	leaq	(%rcx,%rax), %rdi	#, _7
	movq	-32(%rbp), %rax	# addr, addr.1_8
	movl	$524288, %r8d	#, tmp101
	movzbl	-24(%rbp), %ecx	# ist, tmp102
	movq	%rax, %rdx	# addr.1_8, __d1
	movl	%r8d, %eax	# tmp101, __d0
#APP
# 140 "gate.h" 1
	movw %dx, %ax  
	andq $0x7, %rcx 
	addq $61184, %rcx   	#
	shlq $32, %rcx  
	addq %rcx, %rax 
	xorq %rcx, %rcx 
	movl %edx, %ecx 
	shrq $16, %rcx  
	shlq $48, %rcx  
	addq %rcx, %rax 
	movq %rax, (%rsi)    	# *_3
	shrq $32, %rdx  
	movq %rdx, (%rdi)    	# *_7
	
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)	# __d0, __d0
	movq	%rdx, -16(%rbp)	# __d1, __d1
.LBE4:
# gate.h:141: }
	.loc 1 141 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	set_system_gate, .-set_system_gate
	.globl	set_tss64
	.type	set_tss64, @function
set_tss64:
.LFB38:
	.loc 1 150 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L8:
	leaq	.L8(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L8, %r11	#,
	addq	%r11, %rax	#, tmp82
	movq	%rdi, -8(%rbp)	# rsp0, rsp0
	movq	%rsi, -16(%rbp)	# rsp1, rsp1
	movq	%rdx, -24(%rbp)	# rsp2, rsp2
	movq	%rcx, -32(%rbp)	# ist1, ist1
	movq	%r8, -40(%rbp)	# ist2, ist2
	movq	%r9, -48(%rbp)	# ist3, ist3
# gate.h:152: 	*(unsigned long *)(TSS64_Table+1) = rsp0;
	.loc 1 152 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp93
	movq	(%rax,%rdx), %rdx	#, tmp94
	leaq	4(%rdx), %rdx	#, _1
# gate.h:152: 	*(unsigned long *)(TSS64_Table+1) = rsp0;
	.loc 1 152 36
	movq	-8(%rbp), %rcx	# rsp0, tmp95
	movq	%rcx, (%rdx)	# tmp95, *_1
# gate.h:153: 	*(unsigned long *)(TSS64_Table+3) = rsp1;
	.loc 1 153 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp96
	movq	(%rax,%rdx), %rdx	#, tmp97
	leaq	12(%rdx), %rdx	#, _2
# gate.h:153: 	*(unsigned long *)(TSS64_Table+3) = rsp1;
	.loc 1 153 36
	movq	-16(%rbp), %rcx	# rsp1, tmp98
	movq	%rcx, (%rdx)	# tmp98, *_2
# gate.h:154: 	*(unsigned long *)(TSS64_Table+5) = rsp2;
	.loc 1 154 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp99
	movq	(%rax,%rdx), %rdx	#, tmp100
	leaq	20(%rdx), %rdx	#, _3
# gate.h:154: 	*(unsigned long *)(TSS64_Table+5) = rsp2;
	.loc 1 154 36
	movq	-24(%rbp), %rcx	# rsp2, tmp101
	movq	%rcx, (%rdx)	# tmp101, *_3
# gate.h:156: 	*(unsigned long *)(TSS64_Table+9) = ist1;
	.loc 1 156 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp102
	movq	(%rax,%rdx), %rdx	#, tmp103
	leaq	36(%rdx), %rdx	#, _4
# gate.h:156: 	*(unsigned long *)(TSS64_Table+9) = ist1;
	.loc 1 156 36
	movq	-32(%rbp), %rcx	# ist1, tmp104
	movq	%rcx, (%rdx)	# tmp104, *_4
# gate.h:157: 	*(unsigned long *)(TSS64_Table+11) = ist2;
	.loc 1 157 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp105
	movq	(%rax,%rdx), %rdx	#, tmp106
	leaq	44(%rdx), %rdx	#, _5
# gate.h:157: 	*(unsigned long *)(TSS64_Table+11) = ist2;
	.loc 1 157 37
	movq	-40(%rbp), %rcx	# ist2, tmp107
	movq	%rcx, (%rdx)	# tmp107, *_5
# gate.h:158: 	*(unsigned long *)(TSS64_Table+13) = ist3;
	.loc 1 158 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp108
	movq	(%rax,%rdx), %rdx	#, tmp109
	leaq	52(%rdx), %rdx	#, _6
# gate.h:158: 	*(unsigned long *)(TSS64_Table+13) = ist3;
	.loc 1 158 37
	movq	-48(%rbp), %rcx	# ist3, tmp110
	movq	%rcx, (%rdx)	# tmp110, *_6
# gate.h:159: 	*(unsigned long *)(TSS64_Table+15) = ist4;
	.loc 1 159 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp111
	movq	(%rax,%rdx), %rdx	#, tmp112
	leaq	60(%rdx), %rdx	#, _7
# gate.h:159: 	*(unsigned long *)(TSS64_Table+15) = ist4;
	.loc 1 159 37
	movq	16(%rbp), %rcx	# ist4, tmp113
	movq	%rcx, (%rdx)	# tmp113, *_7
# gate.h:160: 	*(unsigned long *)(TSS64_Table+17) = ist5;
	.loc 1 160 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp114
	movq	(%rax,%rdx), %rdx	#, tmp115
	leaq	68(%rdx), %rdx	#, _8
# gate.h:160: 	*(unsigned long *)(TSS64_Table+17) = ist5;
	.loc 1 160 37
	movq	24(%rbp), %rcx	# ist5, tmp116
	movq	%rcx, (%rdx)	# tmp116, *_8
# gate.h:161: 	*(unsigned long *)(TSS64_Table+19) = ist6;
	.loc 1 161 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp117
	movq	(%rax,%rdx), %rdx	#, tmp118
	leaq	76(%rdx), %rdx	#, _9
# gate.h:161: 	*(unsigned long *)(TSS64_Table+19) = ist6;
	.loc 1 161 37
	movq	32(%rbp), %rcx	# ist6, tmp119
	movq	%rcx, (%rdx)	# tmp119, *_9
# gate.h:162: 	*(unsigned long *)(TSS64_Table+21) = ist7;	
	.loc 1 162 3
	movabsq	$TSS64_Table@GOT, %rdx	#, tmp120
	movq	(%rax,%rdx), %rax	#, tmp121
	leaq	84(%rax), %rax	#, _10
# gate.h:162: 	*(unsigned long *)(TSS64_Table+21) = ist7;	
	.loc 1 162 37
	movq	40(%rbp), %rdx	# ist7, tmp122
	movq	%rdx, (%rax)	# tmp122, *_10
# gate.h:163: }
	.loc 1 163 1
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	set_tss64, .-set_tss64
	.globl	font_ascii
	.data
	.align 32
	.type	font_ascii, @object
	.size	font_ascii, 4096
font_ascii:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020\020\020\020\020\020\020"
	.string	""
	.string	"\020\020"
	.string	""
	.string	"((("
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"DDD\376DDDDD\376DDD"
	.string	""
	.ascii	"\020:V\222\222\220P8\024\022\222\222\324\270\020\020"
	.string	"b\222\224\224h\b\020\020 ,RR\222\214"
	.string	""
	.string	""
	.string	"p\210\210\210\220`G\242\222\212\204F9"
	.string	""
	.string	"\004\b\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002\004\b\b\020\020\020\020\020\020\020\b\b\004\002"
	.string	"\200@  \020\020\020\020\020\020\020  @\200"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\222T8T\222\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020\376\020\020\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\030\030\b\b\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.ascii	"\002\002\004\004\b\b\b\020\020  @@@\200\200"
	.string	""
	.string	"\030$$BBBBBBB$$\030"
	.string	""
	.string	""
	.string	"\b\030(\b\b\b\b\b\b\b\b\b>"
	.string	""
	.string	""
	.string	"\030$BB\002\004\b\020  @@~"
	.string	""
	.string	""
	.string	"\030$B\002\002\004\030\004\002\002B$\030"
	.string	""
	.string	""
	.string	"\f\f\f\024\024\024$$D~\004\004\036"
	.string	""
	.string	""
	.string	"|@@@Xd\002\002\002\002B$\030"
	.string	""
	.string	""
	.string	"\030$B@XdBBBBB$\030"
	.string	""
	.string	""
	.string	"~BB\004\004\b\b\b\020\020\020\0208"
	.string	""
	.string	""
	.string	"\030$BBB$\030$BBB$\030"
	.string	""
	.string	""
	.string	"\030$BBBBB&\032\002B$\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.ascii	"\030\030\b\b\020"
	.string	""
	.string	"\002\004\b\020 @\200\200@ \020\b\004\002"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	""
	.string	"\376"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\200@ \020\b\004\002\002\004\b\020 @\200"
	.string	""
	.string	"8D\202\202\202\004\b\020\020"
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	"8D\202\232\252\252\252\252\252\234\200F8"
	.string	""
	.string	""
	.string	"\030\030\030\030$$$$~BBB\347"
	.string	""
	.string	""
	.string	"\360HDDDHxDBBBD\370"
	.string	""
	.string	""
	.string	":FB\202\200\200\200\200\200\202BD8"
	.string	""
	.string	""
	.string	"\370DDBBBBBBBDD\370"
	.string	""
	.string	""
	.string	"\376BB@@D|D@@BB\376"
	.string	""
	.string	""
	.string	"\376BB@@D|DD@@@\360"
	.string	""
	.string	""
	.string	":FB\202\200\200\236\202\202\202BF8"
	.string	""
	.string	""
	.string	"\347BBBBB~BBBBB\347"
	.string	""
	.string	""
	.string	"|\020\020\020\020\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\037\004\004\004\004\004\004\004\004\004\004\204H0"
	.string	""
	.string	"\347BDHPP`PPHDB\347"
	.string	""
	.string	""
	.string	"\360@@@@@@@@@BB\376"
	.string	""
	.string	""
	.string	"\303BfffZZZBBBB\347"
	.string	""
	.string	""
	.string	"\307BbbRRRJJJFF\342"
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202\202\202\202\202D8"
	.string	""
	.string	""
	.string	"\370DBBBDx@@@@@\360"
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202\202\202\222\212D:"
	.string	""
	.string	""
	.string	"\374BBBB|DBBBBB\347"
	.string	""
	.string	""
	.string	":F\202\202\200@8\004\002\202\202\304\270"
	.string	""
	.string	""
	.string	"\376\222\222\020\020\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\347BBBBBBBBBB$<"
	.string	""
	.string	""
	.string	"\347BBBB$$$$\030\030\030\030"
	.string	""
	.string	""
	.string	"\347BBBZZZZ$$$$$"
	.string	""
	.string	""
	.string	"\347BB$$$\030$$$BB\347"
	.string	""
	.string	""
	.string	"\356DDD(((\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\376\204\204\b\b\020\020  @B\202\376"
	.string	""
	.string	""
	.string	">            >"
	.ascii	"\200\200@@   \020\020\b\b\004\004\004\002\002"
	.string	""
	.string	"|\004\004\004\004\004\004\004\004\004\004\004\004|"
	.string	""
	.string	"\020(D\202"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	"\020\b\004"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"p\b\004<D\204\204\214v"
	.string	""
	.string	"\300@@@@XdBBBBBdX"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"0L\204\204\200\200\202D8"
	.string	""
	.string	"\f\004\004\004\0044L\204\204\204\204\204L6"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"8D\202\202\374\200\202B<"
	.string	""
	.string	"\016\020\020\020\020|\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"6L\204\204\204\204L4\004\0048"
	.string	"\300@@@@XdBBBBBB\343"
	.string	""
	.string	""
	.string	"\020\020"
	.string	""
	.string	"0\020\020\020\020\020\020\0208"
	.string	""
	.string	""
	.string	"\004\004"
	.string	""
	.ascii	"\f\004\004\004\004\004\004\004\b\b0"
	.string	"\300@@@@NDHP`PHD\346"
	.string	""
	.string	"0\020\020\020\020\020\020\020\020\020\020\020\0208"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\366IIIIIII\333"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\330dBBBBBB\343"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202D8"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\330dBBBBBdX@@\340"
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"4L\204\204\204\204\204L4\004\004\016"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\334bB@@@@@\340"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"z\206\202\3008\006\202\302\274"
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020|\020\020\020\020\020\020\020\016"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\306BBBBBBF;"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\347BBB$$$\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\347BBZZZ$$$"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\306D((\020((D\306"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\347BB$$$\030\030\020\020`"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376\202\204\b\020 B\202\376"
	.string	""
	.string	""
	.string	"\006\b\020\020\020\020`\020\020\020\020\b\006"
	.string	""
	.ascii	"\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020"
	.ascii	"\020"
	.string	""
	.string	"`\020\b\b\b\b\006\b\b\b\b\020`"
	.string	""
	.string	""
	.string	"r\214"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.globl	Pos
	.bss
	.align 32
	.type	Pos, @object
	.size	Pos, 40
Pos:
	.zero	40
	.globl	buf
	.align 32
	.type	buf, @object
	.size	buf, 4096
buf:
	.zero	4096
	.section	.rodata
	.align 8
.LC0:
	.string	"do_divide_error(0):ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_divide_error
	.type	do_divide_error, @function
do_divide_error:
.LFB39:
	.file 2 "trap.c"
	.loc 2 5 66
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L11:
	leaq	.L11(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L11, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:6:     unsigned long *p=NULL;
	.loc 2 6 20
	movq	$0, -24(%rbp)	#, p
# trap.c:9:     p=(unsigned long *)(rsp+0x98);
	.loc 2 9 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:9:     p=(unsigned long *)(rsp+0x98);
	.loc 2 9 6
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:10:     color_printk(RED,BLACK,"do_divide_error(0):ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code,rsp,*p);
	.loc 2 10 5
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC0@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL0:
.L10:
# trap.c:11:     while (1);
	.loc 2 11 11 discriminator 1
	jmp	.L10	#
	.cfi_endproc
.LFE39:
	.size	do_divide_error, .-do_divide_error
	.section	.rodata
	.align 8
.LC1:
	.string	"do_debug(1),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_debug
	.type	do_debug, @function
do_debug:
.LFB40:
	.loc 2 15 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L14:
	leaq	.L14(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L14, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:16: 	unsigned long * p = NULL;
	.loc 2 16 18
	movq	$0, -24(%rbp)	#, p
# trap.c:17: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 17 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:17: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 17 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:18: 	color_printk(RED,BLACK,"do_debug(1),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 18 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL1:
.L13:
# trap.c:19: 	while(1);
	.loc 2 19 7 discriminator 1
	jmp	.L13	#
	.cfi_endproc
.LFE40:
	.size	do_debug, .-do_debug
	.section	.rodata
	.align 8
.LC2:
	.string	"do_nmi(2),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_nmi
	.type	do_nmi, @function
do_nmi:
.LFB41:
	.loc 2 27 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L17:
	leaq	.L17(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L17, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:28: 	unsigned long * p = NULL;
	.loc 2 28 18
	movq	$0, -24(%rbp)	#, p
# trap.c:29: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 29 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:29: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 29 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:30: 	color_printk(RED,BLACK,"do_nmi(2),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 30 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL2:
.L16:
# trap.c:31: 	while(1);
	.loc 2 31 7 discriminator 1
	jmp	.L16	#
	.cfi_endproc
.LFE41:
	.size	do_nmi, .-do_nmi
	.section	.rodata
	.align 8
.LC3:
	.string	"do_int3(3),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_int3
	.type	do_int3, @function
do_int3:
.LFB42:
	.loc 2 39 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L20:
	leaq	.L20(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L20, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:40: 	unsigned long * p = NULL;
	.loc 2 40 18
	movq	$0, -24(%rbp)	#, p
# trap.c:41: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 41 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:41: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 41 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:42: 	color_printk(RED,BLACK,"do_int3(3),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 42 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL3:
.L19:
# trap.c:43: 	while(1);
	.loc 2 43 7 discriminator 1
	jmp	.L19	#
	.cfi_endproc
.LFE42:
	.size	do_int3, .-do_int3
	.section	.rodata
	.align 8
.LC4:
	.string	"do_overflow(4),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_overflow
	.type	do_overflow, @function
do_overflow:
.LFB43:
	.loc 2 51 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L23:
	leaq	.L23(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L23, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:52: 	unsigned long * p = NULL;
	.loc 2 52 18
	movq	$0, -24(%rbp)	#, p
# trap.c:53: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 53 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:53: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 53 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:54: 	color_printk(RED,BLACK,"do_overflow(4),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 54 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL4:
.L22:
# trap.c:55: 	while(1);
	.loc 2 55 7 discriminator 1
	jmp	.L22	#
	.cfi_endproc
.LFE43:
	.size	do_overflow, .-do_overflow
	.section	.rodata
	.align 8
.LC5:
	.string	"do_bounds(5),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_bounds
	.type	do_bounds, @function
do_bounds:
.LFB44:
	.loc 2 63 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L26:
	leaq	.L26(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L26, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:64: 	unsigned long * p = NULL;
	.loc 2 64 18
	movq	$0, -24(%rbp)	#, p
# trap.c:65: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 65 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:65: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 65 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:66: 	color_printk(RED,BLACK,"do_bounds(5),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 66 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL5:
.L25:
# trap.c:67: 	while(1);
	.loc 2 67 7 discriminator 1
	jmp	.L25	#
	.cfi_endproc
.LFE44:
	.size	do_bounds, .-do_bounds
	.section	.rodata
	.align 8
.LC6:
	.string	"do_undefined_opcode(6),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_undefined_opcode
	.type	do_undefined_opcode, @function
do_undefined_opcode:
.LFB45:
	.loc 2 75 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L29:
	leaq	.L29(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L29, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:76: 	unsigned long * p = NULL;
	.loc 2 76 18
	movq	$0, -24(%rbp)	#, p
# trap.c:77: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 77 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:77: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 77 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:78: 	color_printk(RED,BLACK,"do_undefined_opcode(6),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 78 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL6:
.L28:
# trap.c:79: 	while(1);
	.loc 2 79 7 discriminator 1
	jmp	.L28	#
	.cfi_endproc
.LFE45:
	.size	do_undefined_opcode, .-do_undefined_opcode
	.section	.rodata
	.align 8
.LC7:
	.string	"do_dev_not_available(7),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_dev_not_available
	.type	do_dev_not_available, @function
do_dev_not_available:
.LFB46:
	.loc 2 87 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L32:
	leaq	.L32(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L32, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:88: 	unsigned long * p = NULL;
	.loc 2 88 18
	movq	$0, -24(%rbp)	#, p
# trap.c:89: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 89 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:89: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 89 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:90: 	color_printk(RED,BLACK,"do_dev_not_available(7),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 90 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL7:
.L31:
# trap.c:91: 	while(1);
	.loc 2 91 7 discriminator 1
	jmp	.L31	#
	.cfi_endproc
.LFE46:
	.size	do_dev_not_available, .-do_dev_not_available
	.section	.rodata
	.align 8
.LC8:
	.string	"do_double_fault(8),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_double_fault
	.type	do_double_fault, @function
do_double_fault:
.LFB47:
	.loc 2 99 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L35:
	leaq	.L35(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L35, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:100: 	unsigned long * p = NULL;
	.loc 2 100 18
	movq	$0, -24(%rbp)	#, p
# trap.c:101: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 101 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:101: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 101 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:102: 	color_printk(RED,BLACK,"do_double_fault(8),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 102 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC8@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL8:
.L34:
# trap.c:103: 	while(1);
	.loc 2 103 7 discriminator 1
	jmp	.L34	#
	.cfi_endproc
.LFE47:
	.size	do_double_fault, .-do_double_fault
	.section	.rodata
	.align 8
.LC9:
	.string	"do_coprocessor_segment_overrun(9),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_coprocessor_segment_overrun
	.type	do_coprocessor_segment_overrun, @function
do_coprocessor_segment_overrun:
.LFB48:
	.loc 2 111 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L38:
	leaq	.L38(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L38, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:112: 	unsigned long * p = NULL;
	.loc 2 112 18
	movq	$0, -24(%rbp)	#, p
# trap.c:113: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 113 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:113: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 113 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:114: 	color_printk(RED,BLACK,"do_coprocessor_segment_overrun(9),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 114 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC9@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL9:
.L37:
# trap.c:115: 	while(1);
	.loc 2 115 7 discriminator 1
	jmp	.L37	#
	.cfi_endproc
.LFE48:
	.size	do_coprocessor_segment_overrun, .-do_coprocessor_segment_overrun
	.section	.rodata
	.align 8
.LC10:
	.string	"do_invalid_TSS(10),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.align 8
.LC11:
	.string	"The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n"
	.align 8
.LC12:
	.string	"Refers to a gate descriptor in the IDT;\n"
	.align 8
.LC13:
	.string	"Refers to a descriptor in the GDT or the current LDT;\n"
	.align 8
.LC14:
	.string	"Refers to a segment or gate descriptor in the LDT;\n"
	.align 8
.LC15:
	.string	"Refers to a descriptor in the current GDT;\n"
	.align 8
.LC16:
	.string	"Segment Selector Index:%#010x\n"
	.text
	.globl	do_invalid_TSS
	.type	do_invalid_TSS, @function
do_invalid_TSS:
.LFB49:
	.loc 2 119 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L46:
	leaq	.L46(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L46, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:120: 	unsigned long * p = NULL;
	.loc 2 120 18
	movq	$0, -24(%rbp)	#, p
# trap.c:121: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 121 28
	movq	-40(%rbp), %rax	# rsp, tmp90
	addq	$152, %rax	#, _1
# trap.c:121: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 121 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:122: 	color_printk(RED,BLACK,"do_invalid_TSS(10),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 122 2
	movq	-24(%rbp), %rax	# p, tmp91
	movq	(%rax), %rcx	# *p_13, _2
	movq	-40(%rbp), %rdx	# rsp, tmp92
	movq	-48(%rbp), %rax	# error_code, tmp93
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp92,
	movq	%rax, %rcx	# tmp93,
	movabsq	$.LC10@GOTOFF, %rax	#, tmp95
	leaq	(%rbx,%rax), %rax	#, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp96
	addq	%rbx, %r10	# tmp82, tmp96
	call	*%r10	# tmp96
.LVL10:
# trap.c:124: 	if(error_code & 0x01)
	.loc 2 124 16
	movq	-48(%rbp), %rax	# error_code, tmp97
	andl	$1, %eax	#, _3
# trap.c:124: 	if(error_code & 0x01)
	.loc 2 124 4
	testq	%rax, %rax	# _3
	je	.L40	#,
# trap.c:125: 		color_printk(RED,BLACK,"The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");
	.loc 2 125 3
	movabsq	$.LC11@GOTOFF, %rax	#, tmp99
	leaq	(%rbx,%rax), %rax	#, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp100
	addq	%rbx, %rcx	# tmp82, tmp100
	call	*%rcx	# tmp100
.LVL11:
.L40:
# trap.c:127: 	if(error_code & 0x02)
	.loc 2 127 16
	movq	-48(%rbp), %rax	# error_code, tmp101
	andl	$2, %eax	#, _4
# trap.c:127: 	if(error_code & 0x02)
	.loc 2 127 4
	testq	%rax, %rax	# _4
	je	.L41	#,
# trap.c:128: 		color_printk(RED,BLACK,"Refers to a gate descriptor in the IDT;\n");
	.loc 2 128 3
	movabsq	$.LC12@GOTOFF, %rax	#, tmp103
	leaq	(%rbx,%rax), %rax	#, tmp102
	movq	%rax, %rdx	# tmp102,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp104
	addq	%rbx, %rcx	# tmp82, tmp104
	call	*%rcx	# tmp104
.LVL12:
	jmp	.L42	#
.L41:
# trap.c:130: 		color_printk(RED,BLACK,"Refers to a descriptor in the GDT or the current LDT;\n");
	.loc 2 130 3
	movabsq	$.LC13@GOTOFF, %rax	#, tmp106
	leaq	(%rbx,%rax), %rax	#, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp107
	addq	%rbx, %rcx	# tmp82, tmp107
	call	*%rcx	# tmp107
.LVL13:
.L42:
# trap.c:132: 	if((error_code & 0x02) == 0)
	.loc 2 132 17
	movq	-48(%rbp), %rax	# error_code, tmp108
	andl	$2, %eax	#, _5
# trap.c:132: 	if((error_code & 0x02) == 0)
	.loc 2 132 4
	testq	%rax, %rax	# _5
	jne	.L43	#,
# trap.c:133: 		if(error_code & 0x04)
	.loc 2 133 17
	movq	-48(%rbp), %rax	# error_code, tmp109
	andl	$4, %eax	#, _6
# trap.c:133: 		if(error_code & 0x04)
	.loc 2 133 5
	testq	%rax, %rax	# _6
	je	.L44	#,
# trap.c:134: 			color_printk(RED,BLACK,"Refers to a segment or gate descriptor in the LDT;\n");
	.loc 2 134 4
	movabsq	$.LC14@GOTOFF, %rax	#, tmp111
	leaq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp112
	addq	%rbx, %rcx	# tmp82, tmp112
	call	*%rcx	# tmp112
.LVL14:
	jmp	.L43	#
.L44:
# trap.c:136: 			color_printk(RED,BLACK,"Refers to a descriptor in the current GDT;\n");
	.loc 2 136 4
	movabsq	$.LC15@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp115
	addq	%rbx, %rcx	# tmp82, tmp115
	call	*%rcx	# tmp115
.LVL15:
.L43:
# trap.c:138: 	color_printk(RED,BLACK,"Segment Selector Index:%#010x\n",error_code & 0xfff8);
	.loc 2 138 2
	movq	-48(%rbp), %rax	# error_code, tmp116
	andl	$65528, %eax	#, _7
	movq	%rax, %rcx	# _7,
	movabsq	$.LC16@GOTOFF, %rax	#, tmp118
	leaq	(%rbx,%rax), %rax	#, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp119
	addq	%rbx, %r8	# tmp82, tmp119
	call	*%r8	# tmp119
.LVL16:
.L45:
# trap.c:140: 	while(1);
	.loc 2 140 7 discriminator 1
	jmp	.L45	#
	.cfi_endproc
.LFE49:
	.size	do_invalid_TSS, .-do_invalid_TSS
	.section	.rodata
	.align 8
.LC17:
	.string	"do_segment_not_present(11),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_segment_not_present
	.type	do_segment_not_present, @function
do_segment_not_present:
.LFB50:
	.loc 2 148 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L54:
	leaq	.L54(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L54, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:149: 	unsigned long * p = NULL;
	.loc 2 149 18
	movq	$0, -24(%rbp)	#, p
# trap.c:150: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 150 28
	movq	-40(%rbp), %rax	# rsp, tmp90
	addq	$152, %rax	#, _1
# trap.c:150: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 150 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:151: 	color_printk(RED,BLACK,"do_segment_not_present(11),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 151 2
	movq	-24(%rbp), %rax	# p, tmp91
	movq	(%rax), %rcx	# *p_13, _2
	movq	-40(%rbp), %rdx	# rsp, tmp92
	movq	-48(%rbp), %rax	# error_code, tmp93
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp92,
	movq	%rax, %rcx	# tmp93,
	movabsq	$.LC17@GOTOFF, %rax	#, tmp95
	leaq	(%rbx,%rax), %rax	#, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp96
	addq	%rbx, %r10	# tmp82, tmp96
	call	*%r10	# tmp96
.LVL17:
# trap.c:153: 	if(error_code & 0x01)
	.loc 2 153 16
	movq	-48(%rbp), %rax	# error_code, tmp97
	andl	$1, %eax	#, _3
# trap.c:153: 	if(error_code & 0x01)
	.loc 2 153 4
	testq	%rax, %rax	# _3
	je	.L48	#,
# trap.c:154: 		color_printk(RED,BLACK,"The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");
	.loc 2 154 3
	movabsq	$.LC11@GOTOFF, %rax	#, tmp99
	leaq	(%rbx,%rax), %rax	#, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp100
	addq	%rbx, %rcx	# tmp82, tmp100
	call	*%rcx	# tmp100
.LVL18:
.L48:
# trap.c:156: 	if(error_code & 0x02)
	.loc 2 156 16
	movq	-48(%rbp), %rax	# error_code, tmp101
	andl	$2, %eax	#, _4
# trap.c:156: 	if(error_code & 0x02)
	.loc 2 156 4
	testq	%rax, %rax	# _4
	je	.L49	#,
# trap.c:157: 		color_printk(RED,BLACK,"Refers to a gate descriptor in the IDT;\n");
	.loc 2 157 3
	movabsq	$.LC12@GOTOFF, %rax	#, tmp103
	leaq	(%rbx,%rax), %rax	#, tmp102
	movq	%rax, %rdx	# tmp102,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp104
	addq	%rbx, %rcx	# tmp82, tmp104
	call	*%rcx	# tmp104
.LVL19:
	jmp	.L50	#
.L49:
# trap.c:159: 		color_printk(RED,BLACK,"Refers to a descriptor in the GDT or the current LDT;\n");
	.loc 2 159 3
	movabsq	$.LC13@GOTOFF, %rax	#, tmp106
	leaq	(%rbx,%rax), %rax	#, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp107
	addq	%rbx, %rcx	# tmp82, tmp107
	call	*%rcx	# tmp107
.LVL20:
.L50:
# trap.c:161: 	if((error_code & 0x02) == 0)
	.loc 2 161 17
	movq	-48(%rbp), %rax	# error_code, tmp108
	andl	$2, %eax	#, _5
# trap.c:161: 	if((error_code & 0x02) == 0)
	.loc 2 161 4
	testq	%rax, %rax	# _5
	jne	.L51	#,
# trap.c:162: 		if(error_code & 0x04)
	.loc 2 162 17
	movq	-48(%rbp), %rax	# error_code, tmp109
	andl	$4, %eax	#, _6
# trap.c:162: 		if(error_code & 0x04)
	.loc 2 162 5
	testq	%rax, %rax	# _6
	je	.L52	#,
# trap.c:163: 			color_printk(RED,BLACK,"Refers to a segment or gate descriptor in the LDT;\n");
	.loc 2 163 4
	movabsq	$.LC14@GOTOFF, %rax	#, tmp111
	leaq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp112
	addq	%rbx, %rcx	# tmp82, tmp112
	call	*%rcx	# tmp112
.LVL21:
	jmp	.L51	#
.L52:
# trap.c:165: 			color_printk(RED,BLACK,"Refers to a descriptor in the current GDT;\n");
	.loc 2 165 4
	movabsq	$.LC15@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp115
	addq	%rbx, %rcx	# tmp82, tmp115
	call	*%rcx	# tmp115
.LVL22:
.L51:
# trap.c:167: 	color_printk(RED,BLACK,"Segment Selector Index:%#010x\n",error_code & 0xfff8);
	.loc 2 167 2
	movq	-48(%rbp), %rax	# error_code, tmp116
	andl	$65528, %eax	#, _7
	movq	%rax, %rcx	# _7,
	movabsq	$.LC16@GOTOFF, %rax	#, tmp118
	leaq	(%rbx,%rax), %rax	#, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp119
	addq	%rbx, %r8	# tmp82, tmp119
	call	*%r8	# tmp119
.LVL23:
.L53:
# trap.c:169: 	while(1);
	.loc 2 169 7 discriminator 1
	jmp	.L53	#
	.cfi_endproc
.LFE50:
	.size	do_segment_not_present, .-do_segment_not_present
	.section	.rodata
	.align 8
.LC18:
	.string	"do_stack_segment_fault(12),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_stack_segment_fault
	.type	do_stack_segment_fault, @function
do_stack_segment_fault:
.LFB51:
	.loc 2 177 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L62:
	leaq	.L62(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L62, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:178: 	unsigned long * p = NULL;
	.loc 2 178 18
	movq	$0, -24(%rbp)	#, p
# trap.c:179: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 179 28
	movq	-40(%rbp), %rax	# rsp, tmp90
	addq	$152, %rax	#, _1
# trap.c:179: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 179 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:180: 	color_printk(RED,BLACK,"do_stack_segment_fault(12),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 180 2
	movq	-24(%rbp), %rax	# p, tmp91
	movq	(%rax), %rcx	# *p_13, _2
	movq	-40(%rbp), %rdx	# rsp, tmp92
	movq	-48(%rbp), %rax	# error_code, tmp93
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp92,
	movq	%rax, %rcx	# tmp93,
	movabsq	$.LC18@GOTOFF, %rax	#, tmp95
	leaq	(%rbx,%rax), %rax	#, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp96
	addq	%rbx, %r10	# tmp82, tmp96
	call	*%r10	# tmp96
.LVL24:
# trap.c:182: 	if(error_code & 0x01)
	.loc 2 182 16
	movq	-48(%rbp), %rax	# error_code, tmp97
	andl	$1, %eax	#, _3
# trap.c:182: 	if(error_code & 0x01)
	.loc 2 182 4
	testq	%rax, %rax	# _3
	je	.L56	#,
# trap.c:183: 		color_printk(RED,BLACK,"The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");
	.loc 2 183 3
	movabsq	$.LC11@GOTOFF, %rax	#, tmp99
	leaq	(%rbx,%rax), %rax	#, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp100
	addq	%rbx, %rcx	# tmp82, tmp100
	call	*%rcx	# tmp100
.LVL25:
.L56:
# trap.c:185: 	if(error_code & 0x02)
	.loc 2 185 16
	movq	-48(%rbp), %rax	# error_code, tmp101
	andl	$2, %eax	#, _4
# trap.c:185: 	if(error_code & 0x02)
	.loc 2 185 4
	testq	%rax, %rax	# _4
	je	.L57	#,
# trap.c:186: 		color_printk(RED,BLACK,"Refers to a gate descriptor in the IDT;\n");
	.loc 2 186 3
	movabsq	$.LC12@GOTOFF, %rax	#, tmp103
	leaq	(%rbx,%rax), %rax	#, tmp102
	movq	%rax, %rdx	# tmp102,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp104
	addq	%rbx, %rcx	# tmp82, tmp104
	call	*%rcx	# tmp104
.LVL26:
	jmp	.L58	#
.L57:
# trap.c:188: 		color_printk(RED,BLACK,"Refers to a descriptor in the GDT or the current LDT;\n");
	.loc 2 188 3
	movabsq	$.LC13@GOTOFF, %rax	#, tmp106
	leaq	(%rbx,%rax), %rax	#, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp107
	addq	%rbx, %rcx	# tmp82, tmp107
	call	*%rcx	# tmp107
.LVL27:
.L58:
# trap.c:190: 	if((error_code & 0x02) == 0)
	.loc 2 190 17
	movq	-48(%rbp), %rax	# error_code, tmp108
	andl	$2, %eax	#, _5
# trap.c:190: 	if((error_code & 0x02) == 0)
	.loc 2 190 4
	testq	%rax, %rax	# _5
	jne	.L59	#,
# trap.c:191: 		if(error_code & 0x04)
	.loc 2 191 17
	movq	-48(%rbp), %rax	# error_code, tmp109
	andl	$4, %eax	#, _6
# trap.c:191: 		if(error_code & 0x04)
	.loc 2 191 5
	testq	%rax, %rax	# _6
	je	.L60	#,
# trap.c:192: 			color_printk(RED,BLACK,"Refers to a segment or gate descriptor in the LDT;\n");
	.loc 2 192 4
	movabsq	$.LC14@GOTOFF, %rax	#, tmp111
	leaq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp112
	addq	%rbx, %rcx	# tmp82, tmp112
	call	*%rcx	# tmp112
.LVL28:
	jmp	.L59	#
.L60:
# trap.c:194: 			color_printk(RED,BLACK,"Refers to a descriptor in the current GDT;\n");
	.loc 2 194 4
	movabsq	$.LC15@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp115
	addq	%rbx, %rcx	# tmp82, tmp115
	call	*%rcx	# tmp115
.LVL29:
.L59:
# trap.c:196: 	color_printk(RED,BLACK,"Segment Selector Index:%#010x\n",error_code & 0xfff8);
	.loc 2 196 2
	movq	-48(%rbp), %rax	# error_code, tmp116
	andl	$65528, %eax	#, _7
	movq	%rax, %rcx	# _7,
	movabsq	$.LC16@GOTOFF, %rax	#, tmp118
	leaq	(%rbx,%rax), %rax	#, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp119
	addq	%rbx, %r8	# tmp82, tmp119
	call	*%r8	# tmp119
.LVL30:
.L61:
# trap.c:198: 	while(1);
	.loc 2 198 7 discriminator 1
	jmp	.L61	#
	.cfi_endproc
.LFE51:
	.size	do_stack_segment_fault, .-do_stack_segment_fault
	.section	.rodata
	.align 8
.LC19:
	.string	"do_general_protection(13),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_general_protection
	.type	do_general_protection, @function
do_general_protection:
.LFB52:
	.loc 2 206 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L70:
	leaq	.L70(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L70, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:207: 	unsigned long * p = NULL;
	.loc 2 207 18
	movq	$0, -24(%rbp)	#, p
# trap.c:208: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 208 28
	movq	-40(%rbp), %rax	# rsp, tmp90
	addq	$152, %rax	#, _1
# trap.c:208: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 208 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:209: 	color_printk(RED,BLACK,"do_general_protection(13),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 209 2
	movq	-24(%rbp), %rax	# p, tmp91
	movq	(%rax), %rcx	# *p_13, _2
	movq	-40(%rbp), %rdx	# rsp, tmp92
	movq	-48(%rbp), %rax	# error_code, tmp93
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp92,
	movq	%rax, %rcx	# tmp93,
	movabsq	$.LC19@GOTOFF, %rax	#, tmp95
	leaq	(%rbx,%rax), %rax	#, tmp94
	movq	%rax, %rdx	# tmp94,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp96
	addq	%rbx, %r10	# tmp82, tmp96
	call	*%r10	# tmp96
.LVL31:
# trap.c:211: 	if(error_code & 0x01)
	.loc 2 211 16
	movq	-48(%rbp), %rax	# error_code, tmp97
	andl	$1, %eax	#, _3
# trap.c:211: 	if(error_code & 0x01)
	.loc 2 211 4
	testq	%rax, %rax	# _3
	je	.L64	#,
# trap.c:212: 		color_printk(RED,BLACK,"The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");
	.loc 2 212 3
	movabsq	$.LC11@GOTOFF, %rax	#, tmp99
	leaq	(%rbx,%rax), %rax	#, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp100
	addq	%rbx, %rcx	# tmp82, tmp100
	call	*%rcx	# tmp100
.LVL32:
.L64:
# trap.c:214: 	if(error_code & 0x02)
	.loc 2 214 16
	movq	-48(%rbp), %rax	# error_code, tmp101
	andl	$2, %eax	#, _4
# trap.c:214: 	if(error_code & 0x02)
	.loc 2 214 4
	testq	%rax, %rax	# _4
	je	.L65	#,
# trap.c:215: 		color_printk(RED,BLACK,"Refers to a gate descriptor in the IDT;\n");
	.loc 2 215 3
	movabsq	$.LC12@GOTOFF, %rax	#, tmp103
	leaq	(%rbx,%rax), %rax	#, tmp102
	movq	%rax, %rdx	# tmp102,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp104
	addq	%rbx, %rcx	# tmp82, tmp104
	call	*%rcx	# tmp104
.LVL33:
	jmp	.L66	#
.L65:
# trap.c:217: 		color_printk(RED,BLACK,"Refers to a descriptor in the GDT or the current LDT;\n");
	.loc 2 217 3
	movabsq	$.LC13@GOTOFF, %rax	#, tmp106
	leaq	(%rbx,%rax), %rax	#, tmp105
	movq	%rax, %rdx	# tmp105,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp107
	addq	%rbx, %rcx	# tmp82, tmp107
	call	*%rcx	# tmp107
.LVL34:
.L66:
# trap.c:219: 	if((error_code & 0x02) == 0)
	.loc 2 219 17
	movq	-48(%rbp), %rax	# error_code, tmp108
	andl	$2, %eax	#, _5
# trap.c:219: 	if((error_code & 0x02) == 0)
	.loc 2 219 4
	testq	%rax, %rax	# _5
	jne	.L67	#,
# trap.c:220: 		if(error_code & 0x04)
	.loc 2 220 17
	movq	-48(%rbp), %rax	# error_code, tmp109
	andl	$4, %eax	#, _6
# trap.c:220: 		if(error_code & 0x04)
	.loc 2 220 5
	testq	%rax, %rax	# _6
	je	.L68	#,
# trap.c:221: 			color_printk(RED,BLACK,"Refers to a segment or gate descriptor in the LDT;\n");
	.loc 2 221 4
	movabsq	$.LC14@GOTOFF, %rax	#, tmp111
	leaq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp112
	addq	%rbx, %rcx	# tmp82, tmp112
	call	*%rcx	# tmp112
.LVL35:
	jmp	.L67	#
.L68:
# trap.c:223: 			color_printk(RED,BLACK,"Refers to a descriptor in the current GDT;\n");
	.loc 2 223 4
	movabsq	$.LC15@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp115
	addq	%rbx, %rcx	# tmp82, tmp115
	call	*%rcx	# tmp115
.LVL36:
.L67:
# trap.c:225: 	color_printk(RED,BLACK,"Segment Selector Index:%#010x\n",error_code & 0xfff8);
	.loc 2 225 2
	movq	-48(%rbp), %rax	# error_code, tmp116
	andl	$65528, %eax	#, _7
	movq	%rax, %rcx	# _7,
	movabsq	$.LC16@GOTOFF, %rax	#, tmp118
	leaq	(%rbx,%rax), %rax	#, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp119
	addq	%rbx, %r8	# tmp82, tmp119
	call	*%r8	# tmp119
.LVL37:
.L69:
# trap.c:227: 	while(1);
	.loc 2 227 7 discriminator 1
	jmp	.L69	#
	.cfi_endproc
.LFE52:
	.size	do_general_protection, .-do_general_protection
	.section	.rodata
	.align 8
.LC20:
	.string	"do_page_fault(14),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
.LC21:
	.string	"Page Not-Present,\t"
.LC22:
	.string	"Write Cause Fault,\t"
.LC23:
	.string	"Read Cause Fault,\t"
.LC24:
	.string	"Fault in user(3)\t"
.LC25:
	.string	"Fault in supervisor(0,1,2)\t"
.LC26:
	.string	",Reserved Bit Cause Fault\t"
	.align 8
.LC27:
	.string	",Instruction fetch Cause Fault"
.LC28:
	.string	"\n"
.LC29:
	.string	"CR2:%#018lx\n"
	.text
	.globl	do_page_fault
	.type	do_page_fault, @function
do_page_fault:
.LFB53:
	.loc 2 235 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L80:
	leaq	.L80(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L80, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:236: 	unsigned long * p = NULL;
	.loc 2 236 18
	movq	$0, -24(%rbp)	#, p
# trap.c:237: 	unsigned long cr2 = 0;
	.loc 2 237 16
	movq	$0, -32(%rbp)	#, cr2
# trap.c:240: 	__asm__	__volatile__("movq	%%cr2,	%0":"=r"(cr2)::"memory");
	.loc 2 240 2
#APP
# 240 "trap.c" 1
	movq	%cr2,	%rax	# cr2
# 0 "" 2
#NO_APP
	movq	%rax, -32(%rbp)	# cr2, cr2
# trap.c:242: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 242 28
	movq	-40(%rbp), %rax	# rsp, tmp91
	addq	$152, %rax	#, _1
# trap.c:242: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 242 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:243: 	color_printk(RED,BLACK,"do_page_fault(14),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 243 2
	movq	-24(%rbp), %rax	# p, tmp92
	movq	(%rax), %rcx	# *p_19, _2
	movq	-40(%rbp), %rdx	# rsp, tmp93
	movq	-48(%rbp), %rax	# error_code, tmp94
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp93,
	movq	%rax, %rcx	# tmp94,
	movabsq	$.LC20@GOTOFF, %rax	#, tmp96
	leaq	(%rbx,%rax), %rax	#, tmp95
	movq	%rax, %rdx	# tmp95,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp97
	addq	%rbx, %r10	# tmp82, tmp97
	call	*%r10	# tmp97
.LVL38:
# trap.c:245: 	if(!(error_code & 0x01))
	.loc 2 245 18
	movq	-48(%rbp), %rax	# error_code, tmp98
	andl	$1, %eax	#, _3
# trap.c:245: 	if(!(error_code & 0x01))
	.loc 2 245 4
	testq	%rax, %rax	# _3
	jne	.L72	#,
# trap.c:246: 		color_printk(RED,BLACK,"Page Not-Present,\t");
	.loc 2 246 3
	movabsq	$.LC21@GOTOFF, %rax	#, tmp100
	leaq	(%rbx,%rax), %rax	#, tmp99
	movq	%rax, %rdx	# tmp99,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp101
	addq	%rbx, %rcx	# tmp82, tmp101
	call	*%rcx	# tmp101
.LVL39:
.L72:
# trap.c:248: 	if(error_code & 0x02)
	.loc 2 248 16
	movq	-48(%rbp), %rax	# error_code, tmp102
	andl	$2, %eax	#, _4
# trap.c:248: 	if(error_code & 0x02)
	.loc 2 248 4
	testq	%rax, %rax	# _4
	je	.L73	#,
# trap.c:249: 		color_printk(RED,BLACK,"Write Cause Fault,\t");
	.loc 2 249 3
	movabsq	$.LC22@GOTOFF, %rax	#, tmp104
	leaq	(%rbx,%rax), %rax	#, tmp103
	movq	%rax, %rdx	# tmp103,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp105
	addq	%rbx, %rcx	# tmp82, tmp105
	call	*%rcx	# tmp105
.LVL40:
	jmp	.L74	#
.L73:
# trap.c:251: 		color_printk(RED,BLACK,"Read Cause Fault,\t");
	.loc 2 251 3
	movabsq	$.LC23@GOTOFF, %rax	#, tmp107
	leaq	(%rbx,%rax), %rax	#, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp108
	addq	%rbx, %rcx	# tmp82, tmp108
	call	*%rcx	# tmp108
.LVL41:
.L74:
# trap.c:253: 	if(error_code & 0x04)
	.loc 2 253 16
	movq	-48(%rbp), %rax	# error_code, tmp109
	andl	$4, %eax	#, _5
# trap.c:253: 	if(error_code & 0x04)
	.loc 2 253 4
	testq	%rax, %rax	# _5
	je	.L75	#,
# trap.c:254: 		color_printk(RED,BLACK,"Fault in user(3)\t");
	.loc 2 254 3
	movabsq	$.LC24@GOTOFF, %rax	#, tmp111
	leaq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp112
	addq	%rbx, %rcx	# tmp82, tmp112
	call	*%rcx	# tmp112
.LVL42:
	jmp	.L76	#
.L75:
# trap.c:256: 		color_printk(RED,BLACK,"Fault in supervisor(0,1,2)\t");
	.loc 2 256 3
	movabsq	$.LC25@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp115
	addq	%rbx, %rcx	# tmp82, tmp115
	call	*%rcx	# tmp115
.LVL43:
.L76:
# trap.c:258: 	if(error_code & 0x08)
	.loc 2 258 16
	movq	-48(%rbp), %rax	# error_code, tmp116
	andl	$8, %eax	#, _6
# trap.c:258: 	if(error_code & 0x08)
	.loc 2 258 4
	testq	%rax, %rax	# _6
	je	.L77	#,
# trap.c:259: 		color_printk(RED,BLACK,",Reserved Bit Cause Fault\t");
	.loc 2 259 3
	movabsq	$.LC26@GOTOFF, %rax	#, tmp118
	leaq	(%rbx,%rax), %rax	#, tmp117
	movq	%rax, %rdx	# tmp117,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp119
	addq	%rbx, %rcx	# tmp82, tmp119
	call	*%rcx	# tmp119
.LVL44:
.L77:
# trap.c:261: 	if(error_code & 0x10)
	.loc 2 261 16
	movq	-48(%rbp), %rax	# error_code, tmp120
	andl	$16, %eax	#, _7
# trap.c:261: 	if(error_code & 0x10)
	.loc 2 261 4
	testq	%rax, %rax	# _7
	je	.L78	#,
# trap.c:262: 		color_printk(RED,BLACK,",Instruction fetch Cause Fault");
	.loc 2 262 3
	movabsq	$.LC27@GOTOFF, %rax	#, tmp122
	leaq	(%rbx,%rax), %rax	#, tmp121
	movq	%rax, %rdx	# tmp121,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp123
	addq	%rbx, %rcx	# tmp82, tmp123
	call	*%rcx	# tmp123
.LVL45:
.L78:
# trap.c:264: 	color_printk(RED,BLACK,"\n");
	.loc 2 264 2
	movabsq	$.LC28@GOTOFF, %rax	#, tmp125
	leaq	(%rbx,%rax), %rax	#, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp126
	addq	%rbx, %rcx	# tmp82, tmp126
	call	*%rcx	# tmp126
.LVL46:
# trap.c:266: 	color_printk(RED,BLACK,"CR2:%#018lx\n",cr2);
	.loc 2 266 2
	movq	-32(%rbp), %rax	# cr2, tmp127
	movq	%rax, %rcx	# tmp127,
	movabsq	$.LC29@GOTOFF, %rax	#, tmp129
	leaq	(%rbx,%rax), %rax	#, tmp128
	movq	%rax, %rdx	# tmp128,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp130
	addq	%rbx, %r8	# tmp82, tmp130
	call	*%r8	# tmp130
.LVL47:
.L79:
# trap.c:268: 	while(1);
	.loc 2 268 7 discriminator 1
	jmp	.L79	#
	.cfi_endproc
.LFE53:
	.size	do_page_fault, .-do_page_fault
	.section	.rodata
	.align 8
.LC30:
	.string	"do_x87_FPU_error(16),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_x87_FPU_error
	.type	do_x87_FPU_error, @function
do_x87_FPU_error:
.LFB54:
	.loc 2 273 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L83:
	leaq	.L83(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L83, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:274: 	unsigned long * p = NULL;
	.loc 2 274 18
	movq	$0, -24(%rbp)	#, p
# trap.c:275: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 275 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:275: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 275 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:276: 	color_printk(RED,BLACK,"do_x87_FPU_error(16),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 276 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC30@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL48:
.L82:
# trap.c:277: 	while(1);
	.loc 2 277 7 discriminator 1
	jmp	.L82	#
	.cfi_endproc
.LFE54:
	.size	do_x87_FPU_error, .-do_x87_FPU_error
	.section	.rodata
	.align 8
.LC31:
	.string	"do_alignment_check(17),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_alignment_check
	.type	do_alignment_check, @function
do_alignment_check:
.LFB55:
	.loc 2 285 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L86:
	leaq	.L86(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L86, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:286: 	unsigned long * p = NULL;
	.loc 2 286 18
	movq	$0, -24(%rbp)	#, p
# trap.c:287: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 287 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:287: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 287 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:288: 	color_printk(RED,BLACK,"do_alignment_check(17),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 288 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC31@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL49:
.L85:
# trap.c:289: 	while(1);
	.loc 2 289 7 discriminator 1
	jmp	.L85	#
	.cfi_endproc
.LFE55:
	.size	do_alignment_check, .-do_alignment_check
	.section	.rodata
	.align 8
.LC32:
	.string	"do_machine_check(18),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_machine_check
	.type	do_machine_check, @function
do_machine_check:
.LFB56:
	.loc 2 297 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L89:
	leaq	.L89(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L89, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:298: 	unsigned long * p = NULL;
	.loc 2 298 18
	movq	$0, -24(%rbp)	#, p
# trap.c:299: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 299 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:299: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 299 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:300: 	color_printk(RED,BLACK,"do_machine_check(18),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 300 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC32@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL50:
.L88:
# trap.c:301: 	while(1);
	.loc 2 301 7 discriminator 1
	jmp	.L88	#
	.cfi_endproc
.LFE56:
	.size	do_machine_check, .-do_machine_check
	.section	.rodata
	.align 8
.LC33:
	.string	"do_SIMD_exception(19),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_SIMD_exception
	.type	do_SIMD_exception, @function
do_SIMD_exception:
.LFB57:
	.loc 2 309 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L92:
	leaq	.L92(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L92, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:310: 	unsigned long * p = NULL;
	.loc 2 310 18
	movq	$0, -24(%rbp)	#, p
# trap.c:311: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 311 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:311: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 311 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:312: 	color_printk(RED,BLACK,"do_SIMD_exception(19),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 312 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC33@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL51:
.L91:
# trap.c:313: 	while(1);
	.loc 2 313 7 discriminator 1
	jmp	.L91	#
	.cfi_endproc
.LFE57:
	.size	do_SIMD_exception, .-do_SIMD_exception
	.section	.rodata
	.align 8
.LC34:
	.string	"do_virtualization_exception(20),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n"
	.text
	.globl	do_virtualization_exception
	.type	do_virtualization_exception, @function
do_virtualization_exception:
.LFB58:
	.loc 2 321 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
.L95:
	leaq	.L95(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L95, %r11	#,
	addq	%r11, %r10	#, tmp82
	movq	%rdi, -40(%rbp)	# rsp, rsp
	movq	%rsi, -48(%rbp)	# error_code, error_code
# trap.c:322: 	unsigned long * p = NULL;
	.loc 2 322 18
	movq	$0, -24(%rbp)	#, p
# trap.c:323: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 323 28
	movq	-40(%rbp), %rax	# rsp, tmp85
	addq	$152, %rax	#, _1
# trap.c:323: 	p = (unsigned long *)(rsp + 0x98);
	.loc 2 323 4
	movq	%rax, -24(%rbp)	# _1, p
# trap.c:324: 	color_printk(RED,BLACK,"do_virtualization_exception(20),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	.loc 2 324 2
	movq	-24(%rbp), %rax	# p, tmp86
	movq	(%rax), %rcx	# *p_5, _2
	movq	-40(%rbp), %rdx	# rsp, tmp87
	movq	-48(%rbp), %rax	# error_code, tmp88
	movq	%rcx, %r9	# _2,
	movq	%rdx, %r8	# tmp87,
	movq	%rax, %rcx	# tmp88,
	movabsq	$.LC34@GOTOFF, %rax	#, tmp90
	leaq	(%r10,%rax), %rax	#, tmp89
	movq	%rax, %rdx	# tmp89,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%r10, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r11	#, tmp91
	addq	%r10, %r11	# tmp82, tmp91
	call	*%r11	# tmp91
.LVL52:
.L94:
# trap.c:325: 	while(1);
	.loc 2 325 7 discriminator 1
	jmp	.L94	#
	.cfi_endproc
.LFE58:
	.size	do_virtualization_exception, .-do_virtualization_exception
	.globl	sys_vector_init
	.type	sys_vector_init, @function
sys_vector_init:
.LFB59:
	.loc 2 328 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
.L97:
	leaq	.L97(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L97, %r11	#,
	addq	%r11, %rbx	#, tmp82
# trap.c:329:     set_trap_gate(0,1,divide_error);
	.loc 2 329 5
	movabsq	$divide_error@GOT, %rax	#, tmp84
	movq	(%rbx,%rax), %rax	#, tmp85
	movq	%rax, %rdx	# tmp83,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp87
	leaq	(%rbx,%rax), %rax	#, tmp86
	call	*%rax	# tmp86
.LVL53:
# trap.c:330: 	set_trap_gate(1,1,debug);
	.loc 2 330 2
	movabsq	$debug@GOT, %rax	#, tmp89
	movq	(%rbx,%rax), %rax	#, tmp90
	movq	%rax, %rdx	# tmp88,
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp92
	leaq	(%rbx,%rax), %rax	#, tmp91
	call	*%rax	# tmp91
.LVL54:
# trap.c:331: 	set_intr_gate(2,1,nmi);
	.loc 2 331 2
	movabsq	$nmi@GOT, %rax	#, tmp94
	movq	(%rbx,%rax), %rax	#, tmp95
	movq	%rax, %rdx	# tmp93,
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	movabsq	$set_intr_gate@GOTOFF, %rax	#, tmp97
	leaq	(%rbx,%rax), %rax	#, tmp96
	call	*%rax	# tmp96
.LVL55:
# trap.c:332: 	set_system_gate(3,1,int3);
	.loc 2 332 2
	movabsq	$int3@GOT, %rax	#, tmp99
	movq	(%rbx,%rax), %rax	#, tmp100
	movq	%rax, %rdx	# tmp98,
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	movabsq	$set_system_gate@GOTOFF, %rax	#, tmp102
	leaq	(%rbx,%rax), %rax	#, tmp101
	call	*%rax	# tmp101
.LVL56:
# trap.c:333: 	set_system_gate(4,1,overflow);
	.loc 2 333 2
	movabsq	$overflow@GOT, %rax	#, tmp104
	movq	(%rbx,%rax), %rax	#, tmp105
	movq	%rax, %rdx	# tmp103,
	movl	$1, %esi	#,
	movl	$4, %edi	#,
	movabsq	$set_system_gate@GOTOFF, %rax	#, tmp107
	leaq	(%rbx,%rax), %rax	#, tmp106
	call	*%rax	# tmp106
.LVL57:
# trap.c:334: 	set_system_gate(5,1,bounds);
	.loc 2 334 2
	movabsq	$bounds@GOT, %rax	#, tmp109
	movq	(%rbx,%rax), %rax	#, tmp110
	movq	%rax, %rdx	# tmp108,
	movl	$1, %esi	#,
	movl	$5, %edi	#,
	movabsq	$set_system_gate@GOTOFF, %rax	#, tmp112
	leaq	(%rbx,%rax), %rax	#, tmp111
	call	*%rax	# tmp111
.LVL58:
# trap.c:335: 	set_trap_gate(6,1,undefined_opcode);
	.loc 2 335 2
	movabsq	$undefined_opcode@GOT, %rax	#, tmp114
	movq	(%rbx,%rax), %rax	#, tmp115
	movq	%rax, %rdx	# tmp113,
	movl	$1, %esi	#,
	movl	$6, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp117
	leaq	(%rbx,%rax), %rax	#, tmp116
	call	*%rax	# tmp116
.LVL59:
# trap.c:336: 	set_trap_gate(7,1,dev_not_available);
	.loc 2 336 2
	movabsq	$dev_not_available@GOT, %rax	#, tmp119
	movq	(%rbx,%rax), %rax	#, tmp120
	movq	%rax, %rdx	# tmp118,
	movl	$1, %esi	#,
	movl	$7, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp122
	leaq	(%rbx,%rax), %rax	#, tmp121
	call	*%rax	# tmp121
.LVL60:
# trap.c:337: 	set_trap_gate(8,1,double_fault);
	.loc 2 337 2
	movabsq	$double_fault@GOT, %rax	#, tmp124
	movq	(%rbx,%rax), %rax	#, tmp125
	movq	%rax, %rdx	# tmp123,
	movl	$1, %esi	#,
	movl	$8, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp127
	leaq	(%rbx,%rax), %rax	#, tmp126
	call	*%rax	# tmp126
.LVL61:
# trap.c:338: 	set_trap_gate(9,1,coprocessor_segment_overrun);
	.loc 2 338 2
	movabsq	$coprocessor_segment_overrun@GOT, %rax	#, tmp129
	movq	(%rbx,%rax), %rax	#, tmp130
	movq	%rax, %rdx	# tmp128,
	movl	$1, %esi	#,
	movl	$9, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp132
	leaq	(%rbx,%rax), %rax	#, tmp131
	call	*%rax	# tmp131
.LVL62:
# trap.c:339: 	set_trap_gate(10,1,invalid_TSS);
	.loc 2 339 2
	movabsq	$invalid_TSS@GOT, %rax	#, tmp134
	movq	(%rbx,%rax), %rax	#, tmp135
	movq	%rax, %rdx	# tmp133,
	movl	$1, %esi	#,
	movl	$10, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp137
	leaq	(%rbx,%rax), %rax	#, tmp136
	call	*%rax	# tmp136
.LVL63:
# trap.c:340: 	set_trap_gate(11,1,segment_not_present);
	.loc 2 340 2
	movabsq	$segment_not_present@GOT, %rax	#, tmp139
	movq	(%rbx,%rax), %rax	#, tmp140
	movq	%rax, %rdx	# tmp138,
	movl	$1, %esi	#,
	movl	$11, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp142
	leaq	(%rbx,%rax), %rax	#, tmp141
	call	*%rax	# tmp141
.LVL64:
# trap.c:341: 	set_trap_gate(12,1,stack_segment_fault);
	.loc 2 341 2
	movabsq	$stack_segment_fault@GOT, %rax	#, tmp144
	movq	(%rbx,%rax), %rax	#, tmp145
	movq	%rax, %rdx	# tmp143,
	movl	$1, %esi	#,
	movl	$12, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp147
	leaq	(%rbx,%rax), %rax	#, tmp146
	call	*%rax	# tmp146
.LVL65:
# trap.c:342: 	set_trap_gate(13,1,general_protection);
	.loc 2 342 2
	movabsq	$general_protection@GOT, %rax	#, tmp149
	movq	(%rbx,%rax), %rax	#, tmp150
	movq	%rax, %rdx	# tmp148,
	movl	$1, %esi	#,
	movl	$13, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp152
	leaq	(%rbx,%rax), %rax	#, tmp151
	call	*%rax	# tmp151
.LVL66:
# trap.c:343: 	set_trap_gate(14,1,page_fault);
	.loc 2 343 2
	movabsq	$page_fault@GOT, %rax	#, tmp154
	movq	(%rbx,%rax), %rax	#, tmp155
	movq	%rax, %rdx	# tmp153,
	movl	$1, %esi	#,
	movl	$14, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp157
	leaq	(%rbx,%rax), %rax	#, tmp156
	call	*%rax	# tmp156
.LVL67:
# trap.c:345: 	set_trap_gate(16,1,x87_FPU_error);
	.loc 2 345 2
	movabsq	$x87_FPU_error@GOT, %rax	#, tmp159
	movq	(%rbx,%rax), %rax	#, tmp160
	movq	%rax, %rdx	# tmp158,
	movl	$1, %esi	#,
	movl	$16, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp162
	leaq	(%rbx,%rax), %rax	#, tmp161
	call	*%rax	# tmp161
.LVL68:
# trap.c:346: 	set_trap_gate(17,1,alignment_check);
	.loc 2 346 2
	movabsq	$alignment_check@GOT, %rax	#, tmp164
	movq	(%rbx,%rax), %rax	#, tmp165
	movq	%rax, %rdx	# tmp163,
	movl	$1, %esi	#,
	movl	$17, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp167
	leaq	(%rbx,%rax), %rax	#, tmp166
	call	*%rax	# tmp166
.LVL69:
# trap.c:347: 	set_trap_gate(18,1,machine_check);
	.loc 2 347 2
	movabsq	$machine_check@GOT, %rax	#, tmp169
	movq	(%rbx,%rax), %rax	#, tmp170
	movq	%rax, %rdx	# tmp168,
	movl	$1, %esi	#,
	movl	$18, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp172
	leaq	(%rbx,%rax), %rax	#, tmp171
	call	*%rax	# tmp171
.LVL70:
# trap.c:348: 	set_trap_gate(19,1,SIMD_exception);
	.loc 2 348 2
	movabsq	$SIMD_exception@GOT, %rax	#, tmp174
	movq	(%rbx,%rax), %rax	#, tmp175
	movq	%rax, %rdx	# tmp173,
	movl	$1, %esi	#,
	movl	$19, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp177
	leaq	(%rbx,%rax), %rax	#, tmp176
	call	*%rax	# tmp176
.LVL71:
# trap.c:349: 	set_trap_gate(20,1,virtualization_exception);
	.loc 2 349 2
	movabsq	$virtualization_exception@GOT, %rax	#, tmp179
	movq	(%rbx,%rax), %rax	#, tmp180
	movq	%rax, %rdx	# tmp178,
	movl	$1, %esi	#,
	movl	$20, %edi	#,
	movabsq	$set_trap_gate@GOTOFF, %rax	#, tmp182
	leaq	(%rbx,%rax), %rax	#, tmp181
	call	*%rax	# tmp181
.LVL72:
# trap.c:352: }
	.loc 2 352 1
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	sys_vector_init, .-sys_vector_init
.Letext0:
	.file 3 "font.h"
	.file 4 "printk.h"
	.file 5 "trap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe3c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x14
	.long	.LASF9
	.byte	0x10
	.byte	0x1
	.byte	0x9
	.long	0x5b
	.uleb128 0x19
	.string	"x"
	.byte	0x1
	.byte	0xb
	.byte	0x12
	.long	0x5b
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x3c
	.long	0x6b
	.uleb128 0x10
	.long	0x35
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x43
	.long	0x76
	.uleb128 0x1a
	.byte	0
	.uleb128 0x15
	.long	.LASF6
	.byte	0xe
	.byte	0x1b
	.long	0x6b
	.uleb128 0xb
	.long	0x91
	.long	0x91
	.uleb128 0x10
	.long	0x35
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x15
	.long	.LASF7
	.byte	0xf
	.byte	0x15
	.long	0x81
	.uleb128 0x1b
	.byte	0x8
	.uleb128 0xb
	.long	0x3c
	.long	0xbb
	.uleb128 0x10
	.long	0x35
	.byte	0xff
	.uleb128 0x10
	.long	0x35
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.long	.LASF8
	.byte	0x3
	.byte	0x6
	.byte	0xf
	.long	0xa5
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0x14
	.long	.LASF10
	.byte	0x28
	.byte	0x4
	.byte	0x20
	.long	0x13e
	.uleb128 0x8
	.long	.LASF11
	.byte	0x22
	.byte	0x9
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x23
	.byte	0x9
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF13
	.byte	0x24
	.byte	0x9
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x25
	.byte	0x9
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF15
	.byte	0x26
	.byte	0x9
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x27
	.byte	0x9
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF17
	.byte	0x28
	.byte	0x14
	.long	0x145
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x29
	.byte	0x13
	.long	0x35
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.long	0x91
	.uleb128 0x16
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0xd1
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0xb
	.long	0x170
	.long	0x170
	.uleb128 0x1e
	.long	0x35
	.value	0xfff
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x1f
	.long	0x170
	.uleb128 0x16
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x15f
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x5
	.long	.LASF20
	.byte	0x20
	.long	0x19d
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x1f
	.long	0x1a9
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1e
	.long	0x1b5
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x1d
	.long	0x1c1
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1c
	.long	0x1cd
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x1b
	.long	0x1d9
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x1a
	.long	0x1e5
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x19
	.long	0x1f1
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x18
	.long	0x1fd
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF29
	.byte	0x17
	.long	0x209
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF30
	.byte	0x16
	.long	0x215
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF31
	.byte	0x15
	.long	0x221
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF32
	.byte	0x14
	.long	0x22d
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF33
	.byte	0x13
	.long	0x239
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x12
	.long	0x245
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF35
	.byte	0x11
	.long	0x251
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF36
	.byte	0x10
	.long	0x25d
	.uleb128 0x3
	.byte	0
	.uleb128 0x20
	.string	"nmi"
	.byte	0x5
	.byte	0xf
	.byte	0x7
	.long	0x26b
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF37
	.byte	0xe
	.long	0x277
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF38
	.byte	0xd
	.long	0x283
	.uleb128 0x3
	.byte	0
	.uleb128 0x21
	.long	.LASF77
	.byte	0x4
	.byte	0x3b
	.byte	0x5
	.long	0x13e
	.long	0x2a4
	.uleb128 0x12
	.long	0x91
	.uleb128 0x12
	.long	0x91
	.uleb128 0x12
	.long	0x2a4
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.long	0x177
	.uleb128 0x22
	.long	.LASF78
	.byte	0x2
	.value	0x147
	.byte	0x6
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd
	.uleb128 0x1
	.quad	.LVL53
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL54
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL55
	.long	0xdcd
	.uleb128 0x1
	.quad	.LVL56
	.long	0xce5
	.uleb128 0x1
	.quad	.LVL57
	.long	0xce5
	.uleb128 0x1
	.quad	.LVL58
	.long	0xce5
	.uleb128 0x1
	.quad	.LVL59
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL60
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL61
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL62
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL63
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL64
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL65
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL66
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL67
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL68
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL69
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL70
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL71
	.long	0xd59
	.uleb128 0x1
	.quad	.LVL72
	.long	0xd59
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.value	0x140
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x422
	.uleb128 0xd
	.string	"rsp"
	.value	0x140
	.byte	0x30
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF39
	.value	0x140
	.byte	0x42
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"p"
	.value	0x142
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL52
	.long	0x283
	.byte	0
	.uleb128 0x11
	.long	0x35
	.uleb128 0xc
	.long	.LASF41
	.value	0x134
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x47c
	.uleb128 0xd
	.string	"rsp"
	.value	0x134
	.byte	0x26
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF39
	.value	0x134
	.byte	0x38
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"p"
	.value	0x136
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL51
	.long	0x283
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.value	0x128
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d1
	.uleb128 0xd
	.string	"rsp"
	.value	0x128
	.byte	0x25
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF39
	.value	0x128
	.byte	0x37
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"p"
	.value	0x12a
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL50
	.long	0x283
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.value	0x11c
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x526
	.uleb128 0xd
	.string	"rsp"
	.value	0x11c
	.byte	0x27
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF39
	.value	0x11c
	.byte	0x39
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"p"
	.value	0x11e
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL49
	.long	0x283
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.value	0x110
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x57b
	.uleb128 0xd
	.string	"rsp"
	.value	0x110
	.byte	0x25
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF39
	.value	0x110
	.byte	0x37
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"p"
	.value	0x112
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL48
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x2
	.byte	0xea
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x653
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0xea
	.byte	0x22
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0xea
	.byte	0x34
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0xec
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.string	"cr2"
	.byte	0xed
	.byte	0x10
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.quad	.LVL38
	.long	0x283
	.uleb128 0x1
	.quad	.LVL39
	.long	0x283
	.uleb128 0x1
	.quad	.LVL40
	.long	0x283
	.uleb128 0x1
	.quad	.LVL41
	.long	0x283
	.uleb128 0x1
	.quad	.LVL42
	.long	0x283
	.uleb128 0x1
	.quad	.LVL43
	.long	0x283
	.uleb128 0x1
	.quad	.LVL44
	.long	0x283
	.uleb128 0x1
	.quad	.LVL45
	.long	0x283
	.uleb128 0x1
	.quad	.LVL46
	.long	0x283
	.uleb128 0x1
	.quad	.LVL47
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF46
	.byte	0x2
	.byte	0xcd
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f6
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0xcd
	.byte	0x2a
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0xcd
	.byte	0x3c
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0xcf
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL31
	.long	0x283
	.uleb128 0x1
	.quad	.LVL32
	.long	0x283
	.uleb128 0x1
	.quad	.LVL33
	.long	0x283
	.uleb128 0x1
	.quad	.LVL34
	.long	0x283
	.uleb128 0x1
	.quad	.LVL35
	.long	0x283
	.uleb128 0x1
	.quad	.LVL36
	.long	0x283
	.uleb128 0x1
	.quad	.LVL37
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF47
	.byte	0x2
	.byte	0xb0
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x799
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0xb0
	.byte	0x2b
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0xb0
	.byte	0x3d
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0xb2
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL24
	.long	0x283
	.uleb128 0x1
	.quad	.LVL25
	.long	0x283
	.uleb128 0x1
	.quad	.LVL26
	.long	0x283
	.uleb128 0x1
	.quad	.LVL27
	.long	0x283
	.uleb128 0x1
	.quad	.LVL28
	.long	0x283
	.uleb128 0x1
	.quad	.LVL29
	.long	0x283
	.uleb128 0x1
	.quad	.LVL30
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF48
	.byte	0x2
	.byte	0x93
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x83c
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x93
	.byte	0x2b
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x93
	.byte	0x3d
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x95
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL17
	.long	0x283
	.uleb128 0x1
	.quad	.LVL18
	.long	0x283
	.uleb128 0x1
	.quad	.LVL19
	.long	0x283
	.uleb128 0x1
	.quad	.LVL20
	.long	0x283
	.uleb128 0x1
	.quad	.LVL21
	.long	0x283
	.uleb128 0x1
	.quad	.LVL22
	.long	0x283
	.uleb128 0x1
	.quad	.LVL23
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x2
	.byte	0x76
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x8df
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x76
	.byte	0x23
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x76
	.byte	0x35
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x78
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL10
	.long	0x283
	.uleb128 0x1
	.quad	.LVL11
	.long	0x283
	.uleb128 0x1
	.quad	.LVL12
	.long	0x283
	.uleb128 0x1
	.quad	.LVL13
	.long	0x283
	.uleb128 0x1
	.quad	.LVL14
	.long	0x283
	.uleb128 0x1
	.quad	.LVL15
	.long	0x283
	.uleb128 0x1
	.quad	.LVL16
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x2
	.byte	0x6e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x934
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x6e
	.byte	0x33
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x6e
	.byte	0x45
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x70
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL9
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF51
	.byte	0x2
	.byte	0x62
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x989
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x62
	.byte	0x24
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x62
	.byte	0x36
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x64
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL8
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF52
	.byte	0x2
	.byte	0x56
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x9de
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x56
	.byte	0x29
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x56
	.byte	0x3b
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x58
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL7
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF53
	.byte	0x2
	.byte	0x4a
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0xa33
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x4a
	.byte	0x28
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x4a
	.byte	0x3a
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x4c
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL6
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF54
	.byte	0x2
	.byte	0x3e
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x3e
	.byte	0x1e
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x3e
	.byte	0x30
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x40
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL5
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF55
	.byte	0x2
	.byte	0x32
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xadd
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x32
	.byte	0x20
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x32
	.byte	0x32
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x34
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL4
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x2
	.byte	0x26
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xb32
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x26
	.byte	0x1c
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x26
	.byte	0x2e
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x28
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL3
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x2
	.byte	0x1a
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xb87
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x1a
	.byte	0x1b
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x1a
	.byte	0x2d
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x1c
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL2
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x2
	.byte	0xe
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdc
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0xe
	.byte	0x1d
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0xe
	.byte	0x2f
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x10
	.byte	0x12
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL1
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF59
	.byte	0x2
	.byte	0x5
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0xc31
	.uleb128 0x4
	.string	"rsp"
	.byte	0x2
	.byte	0x5
	.byte	0x24
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF39
	.byte	0x2
	.byte	0x5
	.byte	0x36
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.string	"p"
	.byte	0x6
	.byte	0x14
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.quad	.LVL0
	.long	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF60
	.byte	0x1
	.byte	0x94
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xce5
	.uleb128 0x2
	.long	.LASF61
	.byte	0x1
	.byte	0x94
	.byte	0x1e
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.long	.LASF62
	.byte	0x1
	.byte	0x94
	.byte	0x31
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.long	.LASF63
	.byte	0x1
	.byte	0x94
	.byte	0x44
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF64
	.byte	0x1
	.byte	0x94
	.byte	0x57
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF65
	.byte	0x1
	.byte	0x94
	.byte	0x6a
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.long	.LASF66
	.byte	0x1
	.byte	0x94
	.byte	0x7d
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.long	.LASF67
	.byte	0x1
	.byte	0x95
	.byte	0xf
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x1
	.byte	0x95
	.byte	0x22
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2
	.long	.LASF69
	.byte	0x1
	.byte	0x95
	.byte	0x35
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2
	.long	.LASF70
	.byte	0x1
	.byte	0x95
	.byte	0x48
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x17
	.long	.LASF74
	.byte	0x8b
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xd59
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x8b
	.byte	0x31
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"ist"
	.byte	0x1
	.byte	0x8b
	.byte	0x42
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF71
	.byte	0x1
	.byte	0x8b
	.byte	0x4d
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x9
	.long	.LASF72
	.byte	0x8c
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF73
	.byte	0x8c
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF75
	.byte	0x85
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xdcd
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x85
	.byte	0x2f
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"ist"
	.byte	0x1
	.byte	0x85
	.byte	0x40
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF71
	.byte	0x1
	.byte	0x85
	.byte	0x4b
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x9
	.long	.LASF72
	.byte	0x87
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF73
	.byte	0x87
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF79
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"n"
	.byte	0x1
	.byte	0x67
	.byte	0x2f
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"ist"
	.byte	0x1
	.byte	0x67
	.byte	0x40
	.long	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.long	.LASF71
	.byte	0x1
	.byte	0x67
	.byte	0x4b
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x9
	.long	.LASF72
	.byte	0x68
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF73
	.byte	0x68
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"XPosition"
.LASF41:
	.string	"do_SIMD_exception"
.LASF6:
	.string	"IDT_Table"
.LASF23:
	.string	"alignment_check"
.LASF14:
	.string	"YPosition"
.LASF33:
	.string	"undefined_opcode"
.LASF17:
	.string	"FB_addr"
.LASF8:
	.string	"font_ascii"
.LASF38:
	.string	"divide_error"
.LASF77:
	.string	"color_printk"
.LASF76:
	.string	"GNU C17 11.4.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF42:
	.string	"do_machine_check"
.LASF27:
	.string	"stack_segment_fault"
.LASF59:
	.string	"do_divide_error"
.LASF73:
	.string	"__d1"
.LASF26:
	.string	"general_protection"
.LASF47:
	.string	"do_stack_segment_fault"
.LASF39:
	.string	"error_code"
.LASF57:
	.string	"do_nmi"
.LASF65:
	.string	"ist2"
.LASF15:
	.string	"XCharSize"
.LASF22:
	.string	"machine_check"
.LASF34:
	.string	"bounds"
.LASF61:
	.string	"rsp0"
.LASF49:
	.string	"do_invalid_TSS"
.LASF28:
	.string	"segment_not_present"
.LASF2:
	.string	"long int"
.LASF36:
	.string	"int3"
.LASF70:
	.string	"ist7"
.LASF71:
	.string	"addr"
.LASF54:
	.string	"do_bounds"
.LASF16:
	.string	"YCharSize"
.LASF25:
	.string	"page_fault"
.LASF53:
	.string	"do_undefined_opcode"
.LASF7:
	.string	"TSS64_Table"
.LASF43:
	.string	"do_alignment_check"
.LASF56:
	.string	"do_int3"
.LASF55:
	.string	"do_overflow"
.LASF4:
	.string	"unsigned char"
.LASF52:
	.string	"do_dev_not_available"
.LASF18:
	.string	"FB_length"
.LASF62:
	.string	"rsp1"
.LASF63:
	.string	"rsp2"
.LASF60:
	.string	"set_tss64"
.LASF5:
	.string	"unsigned int"
.LASF29:
	.string	"invalid_TSS"
.LASF37:
	.string	"debug"
.LASF51:
	.string	"do_double_fault"
.LASF30:
	.string	"coprocessor_segment_overrun"
.LASF12:
	.string	"YResolution"
.LASF19:
	.string	"char"
.LASF45:
	.string	"do_page_fault"
.LASF72:
	.string	"__d0"
.LASF58:
	.string	"do_debug"
.LASF35:
	.string	"overflow"
.LASF44:
	.string	"do_x87_FPU_error"
.LASF11:
	.string	"XResolution"
.LASF64:
	.string	"ist1"
.LASF78:
	.string	"sys_vector_init"
.LASF67:
	.string	"ist4"
.LASF68:
	.string	"ist5"
.LASF3:
	.string	"long unsigned int"
.LASF24:
	.string	"x87_FPU_error"
.LASF74:
	.string	"set_system_gate"
.LASF79:
	.string	"set_intr_gate"
.LASF20:
	.string	"virtualization_exception"
.LASF32:
	.string	"dev_not_available"
.LASF21:
	.string	"SIMD_exception"
.LASF9:
	.string	"gate_struct"
.LASF10:
	.string	"position"
.LASF48:
	.string	"do_segment_not_present"
.LASF46:
	.string	"do_general_protection"
.LASF31:
	.string	"double_fault"
.LASF66:
	.string	"ist3"
.LASF75:
	.string	"set_trap_gate"
.LASF69:
	.string	"ist6"
.LASF50:
	.string	"do_coprocessor_segment_overrun"
.LASF40:
	.string	"do_virtualization_exception"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"trap.c"
.LASF1:
	.string	"/home/student/myos/kernel"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
