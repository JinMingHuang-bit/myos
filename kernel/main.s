	.file	"main.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=114976
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -fno-builtin -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	Start_kernel
	.type	Start_kernel, @function
Start_kernel:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L11:
	leaq	.L11(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L11, %r11	#,
	addq	%r11, %rax	#, tmp82
# main.c:12:     int *addr=(int *)0xffff800000a00000;
	movabsq	$-140737477869568, %rax	#, tmp112
	movq	%rax, -8(%rbp)	# tmp112, addr
# main.c:14:     for(i=0;i<1440*20;i++){
	movl	$0, -12(%rbp)	#, i
# main.c:14:     for(i=0;i<1440*20;i++){
	jmp	.L2	#
.L3:
# main.c:15:         *((char*)addr+0)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp95
	movb	$0, (%rax)	#, MEM[(char *)addr_13]
# main.c:16:         *((char*)addr+1)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp96
	addq	$1, %rax	#, _1
# main.c:16:         *((char*)addr+1)=(char)0x00;
	movb	$0, (%rax)	#, *_1
# main.c:17:         *((char*)addr+2)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp97
	addq	$2, %rax	#, _2
# main.c:17:         *((char*)addr+2)=(char)0xff;
	movb	$-1, (%rax)	#, *_2
# main.c:18:         *((char*)addr+3)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp98
	addq	$3, %rax	#, _3
# main.c:18:         *((char*)addr+3)=(char)0x00;
	movb	$0, (%rax)	#, *_3
# main.c:19:         addr=addr+1;
	addq	$4, -8(%rbp)	#, addr
# main.c:14:     for(i=0;i<1440*20;i++){
	addl	$1, -12(%rbp)	#, i
.L2:
# main.c:14:     for(i=0;i<1440*20;i++){
	cmpl	$28799, -12(%rbp)	#, i
	jle	.L3	#,
# main.c:22:     for(i=0;i<1440*20;i++){
	movl	$0, -12(%rbp)	#, i
# main.c:22:     for(i=0;i<1440*20;i++){
	jmp	.L4	#
.L5:
# main.c:23:         *((char*)addr+0)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp99
	movb	$0, (%rax)	#, MEM[(char *)addr_14]
# main.c:24:         *((char*)addr+1)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp100
	addq	$1, %rax	#, _4
# main.c:24:         *((char*)addr+1)=(char)0xff;
	movb	$-1, (%rax)	#, *_4
# main.c:25:         *((char*)addr+2)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp101
	addq	$2, %rax	#, _5
# main.c:25:         *((char*)addr+2)=(char)0x00;
	movb	$0, (%rax)	#, *_5
# main.c:26:         *((char*)addr+3)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp102
	addq	$3, %rax	#, _6
# main.c:26:         *((char*)addr+3)=(char)0x00;
	movb	$0, (%rax)	#, *_6
# main.c:27:         addr=addr+1;
	addq	$4, -8(%rbp)	#, addr
# main.c:22:     for(i=0;i<1440*20;i++){
	addl	$1, -12(%rbp)	#, i
.L4:
# main.c:22:     for(i=0;i<1440*20;i++){
	cmpl	$28799, -12(%rbp)	#, i
	jle	.L5	#,
# main.c:30:     for(i=0;i<1440*20;i++){
	movl	$0, -12(%rbp)	#, i
# main.c:30:     for(i=0;i<1440*20;i++){
	jmp	.L6	#
.L7:
# main.c:31:         *((char*)addr+0)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp103
	movb	$-1, (%rax)	#, MEM[(char *)addr_15]
# main.c:32:         *((char*)addr+1)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp104
	addq	$1, %rax	#, _7
# main.c:32:         *((char*)addr+1)=(char)0x00;
	movb	$0, (%rax)	#, *_7
# main.c:33:         *((char*)addr+2)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp105
	addq	$2, %rax	#, _8
# main.c:33:         *((char*)addr+2)=(char)0x00;
	movb	$0, (%rax)	#, *_8
# main.c:34:         *((char*)addr+3)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp106
	addq	$3, %rax	#, _9
# main.c:34:         *((char*)addr+3)=(char)0x00;
	movb	$0, (%rax)	#, *_9
# main.c:35:         addr=addr+1;
	addq	$4, -8(%rbp)	#, addr
# main.c:30:     for(i=0;i<1440*20;i++){
	addl	$1, -12(%rbp)	#, i
.L6:
# main.c:30:     for(i=0;i<1440*20;i++){
	cmpl	$28799, -12(%rbp)	#, i
	jle	.L7	#,
# main.c:37:         for(i=0;i<1440*20;i++){
	movl	$0, -12(%rbp)	#, i
# main.c:37:         for(i=0;i<1440*20;i++){
	jmp	.L8	#
.L9:
# main.c:38:         *((char*)addr+0)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp107
	movb	$-1, (%rax)	#, MEM[(char *)addr_16]
# main.c:39:         *((char*)addr+1)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp108
	addq	$1, %rax	#, _10
# main.c:39:         *((char*)addr+1)=(char)0xff;
	movb	$-1, (%rax)	#, *_10
# main.c:40:         *((char*)addr+2)=(char)0xff;
	movq	-8(%rbp), %rax	# addr, tmp109
	addq	$2, %rax	#, _11
# main.c:40:         *((char*)addr+2)=(char)0xff;
	movb	$-1, (%rax)	#, *_11
# main.c:41:         *((char*)addr+3)=(char)0x00;
	movq	-8(%rbp), %rax	# addr, tmp110
	addq	$3, %rax	#, _12
# main.c:41:         *((char*)addr+3)=(char)0x00;
	movb	$0, (%rax)	#, *_12
# main.c:42:         addr=addr+1;
	addq	$4, -8(%rbp)	#, addr
# main.c:37:         for(i=0;i<1440*20;i++){
	addl	$1, -12(%rbp)	#, i
.L8:
# main.c:37:         for(i=0;i<1440*20;i++){
	cmpl	$28799, -12(%rbp)	#, i
	jle	.L9	#,
.L10:
# main.c:45:     while (1)
	nop	
	jmp	.L10	#
	.cfi_endproc
.LFE0:
	.size	Start_kernel, .-Start_kernel
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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
