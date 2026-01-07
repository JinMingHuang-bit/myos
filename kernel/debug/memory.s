	.file	"memory.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/student/myos/kernel" "memory.c"
	.type	Cmemset, @function
Cmemset:
.LFB12:
	.file 1 "lib.h"
	.loc 1 250 1
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
	movq	%rdi, -40(%rbp)	# Address, Address
	movl	%esi, %eax	# C, tmp93
	movq	%rdx, -56(%rbp)	# Count, Count
	movb	%al, -44(%rbp)	# tmp94, C
# lib.h:251:     unsigned char *ptr = (unsigned char *)Address;
	.loc 1 251 20
	movq	-40(%rbp), %rax	# Address, tmp95
	movq	%rax, -8(%rbp)	# tmp95, ptr
# lib.h:252:     unsigned long pattern = C;
	.loc 1 252 19
	movzbl	-44(%rbp), %eax	# C, tmp96
	movq	%rax, -24(%rbp)	# tmp96, pattern
# lib.h:263:     pattern |= (pattern << 8);
	.loc 1 263 25
	movq	-24(%rbp), %rax	# pattern, tmp97
	salq	$8, %rax	#, _1
# lib.h:263:     pattern |= (pattern << 8);
	.loc 1 263 13
	orq	%rax, -24(%rbp)	# _1, pattern
# lib.h:264:     pattern |= (pattern << 16);
	.loc 1 264 25
	movq	-24(%rbp), %rax	# pattern, tmp98
	salq	$16, %rax	#, _2
# lib.h:264:     pattern |= (pattern << 16);
	.loc 1 264 13
	orq	%rax, -24(%rbp)	# _2, pattern
# lib.h:265:     pattern |= (pattern << 32);
	.loc 1 265 25
	movq	-24(%rbp), %rax	# pattern, tmp99
	salq	$32, %rax	#, _3
# lib.h:265:     pattern |= (pattern << 32);
	.loc 1 265 13
	orq	%rax, -24(%rbp)	# _3, pattern
# lib.h:267:     long remaining = Count;
	.loc 1 267 10
	movq	-56(%rbp), %rax	# Count, tmp100
	movq	%rax, -16(%rbp)	# tmp100, remaining
# lib.h:270:     while (remaining >= 8) {
	.loc 1 270 11
	jmp	.L2	#
.L3:
# lib.h:271:         *((unsigned long *)ptr) = pattern;
	.loc 1 271 33
	movq	-8(%rbp), %rax	# ptr, tmp101
	movq	-24(%rbp), %rdx	# pattern, tmp102
	movq	%rdx, (%rax)	# tmp102, MEM[(long unsigned int *)ptr_9]
# lib.h:272:         ptr += 8;
	.loc 1 272 13
	addq	$8, -8(%rbp)	#, ptr
# lib.h:273:         remaining -= 8;
	.loc 1 273 19
	subq	$8, -16(%rbp)	#, remaining
.L2:
# lib.h:270:     while (remaining >= 8) {
	.loc 1 270 22
	cmpq	$7, -16(%rbp)	#, remaining
	jg	.L3	#,
# lib.h:277:     if (remaining & 4) {
	.loc 1 277 19
	movq	-16(%rbp), %rax	# remaining, tmp103
	andl	$4, %eax	#, _4
# lib.h:277:     if (remaining & 4) {
	.loc 1 277 8
	testq	%rax, %rax	# _4
	je	.L4	#,
# lib.h:278:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 278 34
	movq	-24(%rbp), %rax	# pattern, tmp104
	movl	%eax, %edx	# tmp104, _5
# lib.h:278:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 278 32
	movq	-8(%rbp), %rax	# ptr, tmp105
	movl	%edx, (%rax)	# _5, MEM[(unsigned int *)ptr_9]
# lib.h:279:         ptr += 4;
	.loc 1 279 13
	addq	$4, -8(%rbp)	#, ptr
.L4:
# lib.h:283:     if (remaining & 2) {
	.loc 1 283 19
	movq	-16(%rbp), %rax	# remaining, tmp106
	andl	$2, %eax	#, _6
# lib.h:283:     if (remaining & 2) {
	.loc 1 283 8
	testq	%rax, %rax	# _6
	je	.L5	#,
# lib.h:284:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 284 36
	movq	-24(%rbp), %rax	# pattern, tmp107
	movl	%eax, %edx	# tmp107, _7
# lib.h:284:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 284 34
	movq	-8(%rbp), %rax	# ptr, tmp108
	movw	%dx, (%rax)	# _7, MEM[(short unsigned int *)ptr_10]
# lib.h:285:         ptr += 2;
	.loc 1 285 13
	addq	$2, -8(%rbp)	#, ptr
.L5:
# lib.h:289:     if (remaining & 1) {
	.loc 1 289 19
	movq	-16(%rbp), %rax	# remaining, tmp109
	andl	$1, %eax	#, _8
# lib.h:289:     if (remaining & 1) {
	.loc 1 289 8
	testq	%rax, %rax	# _8
	je	.L6	#,
# lib.h:290:         *ptr = C;
	.loc 1 290 14
	movq	-8(%rbp), %rax	# ptr, tmp110
	movzbl	-44(%rbp), %edx	# C, tmp111
	movb	%dl, (%rax)	# tmp111, *ptr_11
.L6:
# lib.h:293:     return Address;
	.loc 1 293 12
	movq	-40(%rbp), %rax	# Address, _32
# lib.h:294: }
	.loc 1 294 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	Cmemset, .-Cmemset
	.globl	ZONE_DMA_INDEX
	.bss
	.align 4
	.type	ZONE_DMA_INDEX, @object
	.size	ZONE_DMA_INDEX, 4
ZONE_DMA_INDEX:
	.zero	4
	.globl	ZONE_NORMAL_INDEX
	.align 4
	.type	ZONE_NORMAL_INDEX, @object
	.size	ZONE_NORMAL_INDEX, 4
ZONE_NORMAL_INDEX:
	.zero	4
	.globl	ZONE_UNMAPED_INDEX
	.align 4
	.type	ZONE_UNMAPED_INDEX, @object
	.size	ZONE_UNMAPED_INDEX, 4
ZONE_UNMAPED_INDEX:
	.zero	4
	.text
	.type	Get_gdt, @function
Get_gdt:
.LFB34:
	.file 2 "memory.h"
	.loc 2 136 32
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
# memory.h:138: 	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			
	.loc 2 138 2
#APP
# 138 "memory.h" 1
	movq %cr3, %rax  	# tmp
	
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)	# tmp, tmp
# memory.h:143: 	return tmp;
	.loc 2 143 9
	movq	-8(%rbp), %rax	# tmp, _4
# memory.h:144: }
	.loc 2 144 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	Get_gdt, .-Get_gdt
	.globl	Global_CR3
	.bss
	.align 8
	.type	Global_CR3, @object
	.size	Global_CR3, 8
Global_CR3:
	.zero	8
	.globl	memory_management_struct
	.align 32
	.type	memory_management_struct, @object
	.size	memory_management_struct, 760
memory_management_struct:
	.zero	760
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
	.text
	.globl	page_init
	.type	page_init, @function
page_init:
.LFB35:
	.file 3 "memory.c"
	.loc 3 5 64
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L18:
	leaq	.L18(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L18, %r11	#,
	addq	%r11, %rax	#, tmp82
	movq	%rdi, -8(%rbp)	# page, page
	movq	%rsi, -16(%rbp)	# flags, flags
# memory.c:6: 	if(!page->attribute){
	.loc 3 6 10
	movq	-8(%rbp), %rdx	# page, tmp146
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _1
# memory.c:6: 	if(!page->attribute){
	.loc 3 6 4
	testq	%rdx, %rdx	# _1
	jne	.L13	#,
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp147
	movq	648(%rax,%rdx), %rcx	# memory_management_struct.bits_map, _2
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 45
	movq	-8(%rbp), %rdx	# page, tmp148
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _3
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 3
	shrq	$27, %rdx	#, _4
	salq	$3, %rdx	#, _5
	addq	%rcx, %rdx	# _2, _6
	movq	(%rdx), %rsi	# *_6, _7
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 95
	movq	-8(%rbp), %rdx	# page, tmp149
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _8
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 108
	shrq	$21, %rdx	#, _9
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 124
	andl	$63, %edx	#, _11
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 87
	movl	$1, %edi	#, tmp150
	movl	%edx, %ecx	# _11, tmp180
	salq	%cl, %rdi	# tmp180, tmp150
	movq	%rdi, %rcx	# tmp150, _12
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp151
	movq	648(%rax,%rdx), %rdx	# memory_management_struct.bits_map, _13
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 45
	movq	-8(%rbp), %rax	# page, tmp152
	movq	8(%rax), %rax	# page_64(D)->PHY_address, _14
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 3
	shrq	$27, %rax	#, _15
	salq	$3, %rax	#, _16
	addq	%rdx, %rax	# _13, _17
# memory.c:7: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 7 80
	orq	%rcx, %rsi	# _12, _7
	movq	%rsi, %rdx	# _7, _18
	movq	%rdx, (%rax)	# _18, *_17
# memory.c:8: 		page->attribute = flags;
	.loc 3 8 19
	movq	-8(%rbp), %rax	# page, tmp153
	movq	-16(%rbp), %rdx	# flags, tmp154
	movq	%rdx, 16(%rax)	# tmp154, page_64(D)->attribute
# memory.c:9: 		page->reference_count++;
	.loc 3 9 7
	movq	-8(%rbp), %rax	# page, tmp155
	movq	24(%rax), %rax	# page_64(D)->reference_count, _19
# memory.c:9: 		page->reference_count++;
	.loc 3 9 24
	leaq	1(%rax), %rdx	#, _20
	movq	-8(%rbp), %rax	# page, tmp156
	movq	%rdx, 24(%rax)	# _20, page_64(D)->reference_count
# memory.c:10: 		page->zone_struct->page_using_count++;
	.loc 3 10 7
	movq	-8(%rbp), %rax	# page, tmp157
	movq	(%rax), %rax	# page_64(D)->zone_struct, _21
# memory.c:10: 		page->zone_struct->page_using_count++;
	.loc 3 10 20
	movq	56(%rax), %rdx	# _21->page_using_count, _22
# memory.c:10: 		page->zone_struct->page_using_count++;
	.loc 3 10 38
	addq	$1, %rdx	#, _23
	movq	%rdx, 56(%rax)	# _23, _21->page_using_count
# memory.c:11: 		page->zone_struct->page_free_count--;
	.loc 3 11 7
	movq	-8(%rbp), %rax	# page, tmp158
	movq	(%rax), %rax	# page_64(D)->zone_struct, _24
# memory.c:11: 		page->zone_struct->page_free_count--;
	.loc 3 11 20
	movq	64(%rax), %rdx	# _24->page_free_count, _25
# memory.c:11: 		page->zone_struct->page_free_count--;
	.loc 3 11 37
	subq	$1, %rdx	#, _26
	movq	%rdx, 64(%rax)	# _26, _24->page_free_count
# memory.c:12: 		page->zone_struct->total_pages_link++;
	.loc 3 12 7
	movq	-8(%rbp), %rax	# page, tmp159
	movq	(%rax), %rax	# page_64(D)->zone_struct, _27
# memory.c:12: 		page->zone_struct->total_pages_link++;
	.loc 3 12 20
	movq	72(%rax), %rdx	# _27->total_pages_link, _28
# memory.c:12: 		page->zone_struct->total_pages_link++;
	.loc 3 12 38
	addq	$1, %rdx	#, _29
	movq	%rdx, 72(%rax)	# _29, _27->total_pages_link
	jmp	.L14	#
.L13:
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 17
	movq	-8(%rbp), %rdx	# page, tmp160
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _30
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 29
	andl	$4, %edx	#, _31
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 10
	testq	%rdx, %rdx	# _31
	jne	.L15	#,
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 52 discriminator 1
	movq	-8(%rbp), %rdx	# page, tmp161
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _32
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 64 discriminator 1
	andl	$256, %edx	#, _33
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 45 discriminator 1
	testq	%rdx, %rdx	# _33
	jne	.L15	#,
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 91 discriminator 2
	movq	-16(%rbp), %rdx	# flags, tmp162
	andl	$4, %edx	#, _34
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 82 discriminator 2
	testq	%rdx, %rdx	# _34
	jne	.L15	#,
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 116 discriminator 3
	movq	-16(%rbp), %rdx	# flags, tmp163
	andl	$256, %edx	#, _35
# memory.c:13: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 13 107 discriminator 3
	testq	%rdx, %rdx	# _35
	je	.L16	#,
.L15:
# memory.c:19: 		page->attribute |= flags;
	.loc 3 19 7
	movq	-8(%rbp), %rax	# page, tmp164
	movq	16(%rax), %rax	# page_64(D)->attribute, _36
# memory.c:19: 		page->attribute |= flags;
	.loc 3 19 19
	orq	-16(%rbp), %rax	# flags, _36
	movq	%rax, %rdx	# _36, _37
	movq	-8(%rbp), %rax	# page, tmp165
	movq	%rdx, 16(%rax)	# _37, page_64(D)->attribute
# memory.c:20: 		page->reference_count++;
	.loc 3 20 7
	movq	-8(%rbp), %rax	# page, tmp166
	movq	24(%rax), %rax	# page_64(D)->reference_count, _38
# memory.c:20: 		page->reference_count++;
	.loc 3 20 24
	leaq	1(%rax), %rdx	#, _39
	movq	-8(%rbp), %rax	# page, tmp167
	movq	%rdx, 24(%rax)	# _39, page_64(D)->reference_count
# memory.c:21: 		page->zone_struct->total_pages_link++;
	.loc 3 21 7
	movq	-8(%rbp), %rax	# page, tmp168
	movq	(%rax), %rax	# page_64(D)->zone_struct, _40
# memory.c:21: 		page->zone_struct->total_pages_link++;
	.loc 3 21 20
	movq	72(%rax), %rdx	# _40->total_pages_link, _41
# memory.c:21: 		page->zone_struct->total_pages_link++;
	.loc 3 21 38
	addq	$1, %rdx	#, _42
	movq	%rdx, 72(%rax)	# _42, _40->total_pages_link
	jmp	.L14	#
.L16:
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp169
	movq	648(%rax,%rdx), %rcx	# memory_management_struct.bits_map, _43
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 45
	movq	-8(%rbp), %rdx	# page, tmp170
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _44
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 3
	shrq	$27, %rdx	#, _45
	salq	$3, %rdx	#, _46
	addq	%rcx, %rdx	# _43, _47
	movq	(%rdx), %rsi	# *_47, _48
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 95
	movq	-8(%rbp), %rdx	# page, tmp171
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _49
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 108
	shrq	$21, %rdx	#, _50
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 124
	andl	$63, %edx	#, _52
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 87
	movl	$1, %edi	#, tmp172
	movl	%edx, %ecx	# _52, tmp184
	salq	%cl, %rdi	# tmp184, tmp172
	movq	%rdi, %rcx	# tmp172, _53
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp173
	movq	648(%rax,%rdx), %rdx	# memory_management_struct.bits_map, _54
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 45
	movq	-8(%rbp), %rax	# page, tmp174
	movq	8(%rax), %rax	# page_64(D)->PHY_address, _55
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 3
	shrq	$27, %rax	#, _56
	salq	$3, %rax	#, _57
	addq	%rdx, %rax	# _54, _58
# memory.c:23: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 23 80
	orq	%rcx, %rsi	# _53, _48
	movq	%rsi, %rdx	# _48, _59
	movq	%rdx, (%rax)	# _59, *_58
# memory.c:24: 		page->attribute |= flags;
	.loc 3 24 7
	movq	-8(%rbp), %rax	# page, tmp175
	movq	16(%rax), %rax	# page_64(D)->attribute, _60
# memory.c:24: 		page->attribute |= flags;
	.loc 3 24 19
	orq	-16(%rbp), %rax	# flags, _60
	movq	%rax, %rdx	# _60, _61
	movq	-8(%rbp), %rax	# page, tmp176
	movq	%rdx, 16(%rax)	# _61, page_64(D)->attribute
.L14:
# memory.c:26: 	return 0;
	.loc 3 26 9
	movl	$0, %eax	#, _77
# memory.c:27: }
	.loc 3 27 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	page_init, .-page_init
	.section	.rodata
	.align 8
.LC0:
	.string	"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n"
	.align 8
.LC1:
	.string	"address:%#018lx\tLength:%#018lx\tType:%#010x\n"
	.align 8
.LC2:
	.string	"OS Can Used Total RAM:%#018lx\n"
	.align 8
.LC3:
	.string	"OS Can Used Total 2M PAGEs:%#010x=%010d\n"
	.align 8
.LC4:
	.string	"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n"
	.align 8
.LC5:
	.string	"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n"
	.align 8
.LC6:
	.string	"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n"
	.align 8
.LC7:
	.string	"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n"
	.align 8
.LC8:
	.string	"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n"
	.align 8
.LC9:
	.string	"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n"
.LC10:
	.string	"Global_CR3\t:%#018lx\n"
.LC11:
	.string	"*Global_CR3\t:%#018lx\n"
.LC12:
	.string	"**Global_CR3\t:%#018lx\n"
	.text
	.globl	init_memory
	.type	init_memory, @function
init_memory:
.LFB36:
	.loc 3 30 19
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L49:
	leaq	.L49(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L49, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:33: 	unsigned long TotalMem =0;
	.loc 3 33 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:34: 	struct E820 *p =NULL;
	.loc 3 34 15
	movq	$0, -40(%rbp)	#, p
# memory.c:35: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 3 35 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp264
	leaq	(%rbx,%rax), %rax	#, tmp263
	movq	%rax, %rdx	# tmp263,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp265
	addq	%rbx, %rcx	# tmp82, tmp265
	call	*%rcx	# tmp265
.LVL0:
# memory.c:36: 	p=(struct E820 *)0xffff800000007e00;
	.loc 3 36 3
	movabsq	$-140737488323072, %rax	#, tmp589
	movq	%rax, -40(%rbp)	# tmp589, p
.LBB2:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 11
	movl	$0, -44(%rbp)	#, i
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 2
	jmp	.L20	#
.L24:
.LBB3:
# memory.c:40: 		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
	.loc 3 40 3
	movq	-40(%rbp), %rax	# p, tmp266
	movl	16(%rax), %ecx	# p_192->type, _1
	movq	-40(%rbp), %rax	# p, tmp267
	movq	8(%rax), %rdx	# p_192->length, _2
	movq	-40(%rbp), %rax	# p, tmp268
	movq	(%rax), %rax	# p_192->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp270
	leaq	(%rbx,%rax), %rax	#, tmp269
	movq	%rax, %rdx	# tmp269,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp271
	addq	%rbx, %r10	# tmp82, tmp271
	call	*%r10	# tmp271
.LVL1:
# memory.c:41: 		unsigned long tmp =0;
	.loc 3 41 17
	movq	$0, -64(%rbp)	#, tmp
# memory.c:42: 		if(p->type==1){
	.loc 3 42 7
	movq	-40(%rbp), %rax	# p, tmp272
	movl	16(%rax), %eax	# p_192->type, _4
# memory.c:42: 		if(p->type==1){
	.loc 3 42 5
	cmpl	$1, %eax	#, _4
	jne	.L21	#,
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 16
	movq	-40(%rbp), %rax	# p, tmp273
	movq	8(%rax), %rax	# p_192->length, _5
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L21:
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp274
	movl	-44(%rbp), %eax	# i, tmp276
	movslq	%eax, %rdx	# tmp276, tmp275
	addq	%rbx, %rcx	# tmp82, tmp277
	movq	%rdx, %rax	# tmp275, tmp279
	salq	$2, %rax	#, tmp279
	addq	%rdx, %rax	# tmp275, tmp279
	salq	$2, %rax	#, tmp280
	addq	%rcx, %rax	# tmp277, tmp281
	movq	(%rax), %rdx	# memory_management_struct.e820[i_193].address, _6
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 46
	movq	-40(%rbp), %rax	# p, tmp282
	movq	(%rax), %rax	# p_192->address, _7
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp283
	movl	-44(%rbp), %eax	# i, tmp285
	movslq	%eax, %rdx	# tmp285, tmp284
	addq	%rbx, %rsi	# tmp82, tmp286
	movq	%rdx, %rax	# tmp284, tmp288
	salq	$2, %rax	#, tmp288
	addq	%rdx, %rax	# tmp284, tmp288
	salq	$2, %rax	#, tmp289
	addq	%rsi, %rax	# tmp286, tmp290
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_193].address
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp291
	movl	-44(%rbp), %eax	# i, tmp293
	movslq	%eax, %rdx	# tmp293, tmp292
	movq	%rdx, %rax	# tmp292, tmp294
	salq	$2, %rax	#, tmp294
	addq	%rdx, %rax	# tmp292, tmp294
	salq	$2, %rax	#, tmp295
	addq	%rbx, %rax	# tmp82, tmp296
	addq	%rcx, %rax	# tmp291, tmp297
	addq	$8, %rax	#, tmp298
	movq	(%rax), %rdx	# memory_management_struct.e820[i_193].length, _9
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 45
	movq	-40(%rbp), %rax	# p, tmp299
	movq	8(%rax), %rax	# p_192->length, _10
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp300
	movl	-44(%rbp), %eax	# i, tmp302
	movslq	%eax, %rdx	# tmp302, tmp301
	movq	%rdx, %rax	# tmp301, tmp303
	salq	$2, %rax	#, tmp303
	addq	%rdx, %rax	# tmp301, tmp303
	salq	$2, %rax	#, tmp304
	addq	%rbx, %rax	# tmp82, tmp305
	addq	%rsi, %rax	# tmp300, tmp306
	addq	$8, %rax	#, tmp307
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_193].length
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 42
	movq	-40(%rbp), %rax	# p, tmp308
	movl	16(%rax), %ecx	# p_192->type, _12
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp309
	movl	-44(%rbp), %eax	# i, tmp311
	movslq	%eax, %rdx	# tmp311, tmp310
	addq	%rbx, %rsi	# tmp82, tmp312
	movq	%rdx, %rax	# tmp310, tmp313
	salq	$2, %rax	#, tmp313
	addq	%rdx, %rax	# tmp310, tmp313
	salq	$2, %rax	#, tmp314
	addq	%rsi, %rax	# tmp312, tmp315
	addq	$16, %rax	#, tmp316
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_193].type
# memory.c:48: 		memory_management_struct.e820_length =i;
	.loc 3 48 40
	movl	-44(%rbp), %eax	# i, tmp317
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp318
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:49: 		p++;
	.loc 3 49 4
	addq	$20, -40(%rbp)	#, p
# memory.c:50: 		if(p->type >4){
	.loc 3 50 7
	movq	-40(%rbp), %rax	# p, tmp319
	movl	16(%rax), %eax	# p_217->type, _14
# memory.c:50: 		if(p->type >4){
	.loc 3 50 5
	cmpl	$4, %eax	#, _14
	ja	.L44	#,
.LBE3:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 27 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L20:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 20 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L24	#,
	jmp	.L23	#
.L44:
.LBB4:
# memory.c:51: 			break;
	.loc 3 51 4
	nop	
.L23:
.LBE4:
.LBE2:
# memory.c:54: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 3 54 2
	movq	-32(%rbp), %rax	# TotalMem, tmp320
	movq	%rax, %rcx	# tmp320,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp322
	leaq	(%rbx,%rax), %rax	#, tmp321
	movq	%rax, %rdx	# tmp321,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp323
	addq	%rbx, %r8	# tmp82, tmp323
	call	*%r8	# tmp323
.LVL2:
# memory.c:55: 	TotalMem=0;
	.loc 3 55 10
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 7
	movl	$0, -20(%rbp)	#, i
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 2
	jmp	.L25	#
.L29:
.LBB5:
# memory.c:58: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 58 38
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp324
	movl	-20(%rbp), %eax	# i, tmp326
	movslq	%eax, %rdx	# tmp326, tmp325
	addq	%rbx, %rcx	# tmp82, tmp327
	movq	%rdx, %rax	# tmp325, tmp328
	salq	$2, %rax	#, tmp328
	addq	%rdx, %rax	# tmp325, tmp328
	salq	$2, %rax	#, tmp329
	addq	%rcx, %rax	# tmp327, tmp330
	addq	$16, %rax	#, tmp331
	movl	(%rax), %eax	# memory_management_struct.e820[i_181].type, _15
# memory.c:58: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 58 5
	cmpl	$1, %eax	#, _15
	jne	.L45	#,
# memory.c:61: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 61 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp332
	movl	-20(%rbp), %eax	# i, tmp334
	movslq	%eax, %rdx	# tmp334, tmp333
	addq	%rbx, %rcx	# tmp82, tmp335
	movq	%rdx, %rax	# tmp333, tmp337
	salq	$2, %rax	#, tmp337
	addq	%rdx, %rax	# tmp333, tmp337
	salq	$2, %rax	#, tmp338
	addq	%rcx, %rax	# tmp335, tmp339
	movq	(%rax), %rax	# memory_management_struct.e820[i_181].address, _16
	addq	$2097151, %rax	#, _17
# memory.c:61: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 61 8
	andq	$-2097152, %rax	#, tmp340
	movq	%rax, -112(%rbp)	# tmp340, start
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp341
	movl	-20(%rbp), %eax	# i, tmp343
	movslq	%eax, %rdx	# tmp343, tmp342
	addq	%rbx, %rcx	# tmp82, tmp344
	movq	%rdx, %rax	# tmp342, tmp346
	salq	$2, %rax	#, tmp346
	addq	%rdx, %rax	# tmp342, tmp346
	salq	$2, %rax	#, tmp347
	addq	%rcx, %rax	# tmp344, tmp348
	movq	(%rax), %rcx	# memory_management_struct.e820[i_181].address, _18
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp349
	movl	-20(%rbp), %eax	# i, tmp351
	movslq	%eax, %rdx	# tmp351, tmp350
	movq	%rdx, %rax	# tmp350, tmp352
	salq	$2, %rax	#, tmp352
	addq	%rdx, %rax	# tmp350, tmp352
	salq	$2, %rax	#, tmp353
	addq	%rbx, %rax	# tmp82, tmp354
	addq	%rsi, %rax	# tmp349, tmp355
	addq	$8, %rax	#, tmp356
	movq	(%rax), %rax	# memory_management_struct.e820[i_181].length, _19
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 49
	addq	%rcx, %rax	# _18, _20
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 6
	andq	$-2097152, %rax	#, tmp357
	movq	%rax, -120(%rbp)	# tmp357, end
# memory.c:63: 		if(end<=start){
	.loc 3 63 5
	movq	-120(%rbp), %rax	# end, tmp358
	cmpq	%rax, -112(%rbp)	# tmp358, start
	jnb	.L46	#,
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 17
	movq	-120(%rbp), %rax	# end, tmp359
	subq	-112(%rbp), %rax	# start, _21
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 24
	shrq	$21, %rax	#, _22
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 11
	addq	%rax, -32(%rbp)	# _22, TotalMem
	jmp	.L27	#
.L45:
# memory.c:59: 			continue;
	.loc 3 59 4
	nop	
	jmp	.L27	#
.L46:
# memory.c:64: 			continue;
	.loc 3 64 4
	nop	
.L27:
.LBE5:
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 51 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L25:
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 11 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp360
	cltq
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp361
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _24
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 11 discriminator 1
	cmpq	%rax, %rdx	# _23, _24
	jnb	.L29	#,
# memory.c:68: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 68 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp362
	movq	-32(%rbp), %rax	# TotalMem, tmp363
	movq	%rdx, %r8	# tmp362,
	movq	%rax, %rcx	# tmp363,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp365
	leaq	(%rbx,%rax), %rax	#, tmp364
	movq	%rax, %rdx	# tmp364,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp366
	addq	%rbx, %r9	# tmp82, tmp366
	call	*%r9	# tmp366
.LVL3:
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 65
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp367
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _25
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp368
	leaq	(%rbx,%rax), %rcx	#, tmp369
	movq	%rdx, %rax	# _25, tmp371
	salq	$2, %rax	#, tmp371
	addq	%rdx, %rax	# _25, tmp371
	salq	$2, %rax	#, tmp372
	addq	%rcx, %rax	# tmp369, tmp373
	movq	(%rax), %rcx	# memory_management_struct.e820[_25].address, _26
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 141
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp374
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _27
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 154
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp375
	movq	%rdx, %rax	# _27, tmp376
	salq	$2, %rax	#, tmp376
	addq	%rdx, %rax	# _27, tmp376
	salq	$2, %rax	#, tmp377
	addq	%rbx, %rax	# tmp82, tmp378
	addq	%rsi, %rax	# tmp375, tmp379
	addq	$8, %rax	#, tmp380
	movq	(%rax), %rax	# memory_management_struct.e820[_27].length, _28
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 10
	addq	%rcx, %rax	# _26, tmp381
	movq	%rax, -32(%rbp)	# tmp381, TotalMem
# memory.c:70: 	color_printk(ORANGE,BLACK,"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 70 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp382
	movq	-32(%rbp), %rax	# TotalMem, tmp383
	movq	%rdx, %r8	# tmp382,
	movq	%rax, %rcx	# tmp383,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp385
	leaq	(%rbx,%rax), %rax	#, tmp384
	movq	%rax, %rdx	# tmp384,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp386
	addq	%rbx, %r9	# tmp82, tmp386
	call	*%r9	# tmp386
.LVL4:
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp387
	movq	744(%rbx,%rax), %rax	# memory_management_struct.end_brk, _29
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 100
	addq	$4095, %rax	#, _30
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 103
	andq	$-4096, %rax	#, _31
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 36
	movq	%rax, %rdx	# _31, _32
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 35
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp388
	movq	%rdx, 648(%rbx,%rax)	# _32, memory_management_struct.bits_map
# memory.c:86: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 86 45
	movq	-32(%rbp), %rax	# TotalMem, tmp389
	shrq	$21, %rax	#, tmp389
	movq	%rax, %rdx	# tmp389, _33
# memory.c:86: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 86 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp390
	movq	%rdx, 656(%rbx,%rax)	# _33, memory_management_struct.bits_size
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 42
	movq	-32(%rbp), %rax	# TotalMem, tmp391
	shrq	$21, %rax	#, _34
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 97
	addq	$63, %rax	#, _35
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 100
	shrq	$3, %rax	#, _36
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 103
	andq	$-8, %rax	#, _36
	movq	%rax, %rdx	# _36, _37
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 39
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp392
	movq	%rdx, 664(%rbx,%rax)	# _37, memory_management_struct.bits_length
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 73
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp393
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _38
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 2
	movq	%rax, %rdx	# _38, _39
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 34
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp394
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _40
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 2
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _40,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp396
	leaq	(%rbx,%rax), %rax	#, tmp395
	call	*%rax	# tmp395
.LVL5:
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp397
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _41
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 56
	movq	%rax, %rdx	# _41, _42
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp398
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _43
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 104
	addq	%rdx, %rax	# _42, _44
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 154
	addq	$4095, %rax	#, _45
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 157
	andq	$-4096, %rax	#, _46
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 39
	movq	%rax, %rdx	# _46, _47
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp399
	movq	%rdx, 672(%rbx,%rax)	# _47, memory_management_struct.pages_struct
# memory.c:107: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 107 45
	movq	-32(%rbp), %rax	# TotalMem, tmp400
	shrq	$21, %rax	#, tmp400
	movq	%rax, %rdx	# tmp400, _48
# memory.c:107: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 107 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp401
	movq	%rdx, 680(%rbx,%rax)	# _48, memory_management_struct.pages_size
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 49
	movq	-32(%rbp), %rax	# TotalMem, tmp402
	shrq	$21, %rax	#, tmp402
	movq	%rax, %rdx	# tmp402, _49
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 65
	movq	%rdx, %rax	# _49, tmp403
	salq	$2, %rax	#, tmp403
	addq	%rdx, %rax	# _49, tmp403
	salq	$3, %rax	#, tmp404
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 98
	addq	$7, %rax	#, _51
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 101
	andq	$-8, %rax	#, _51
	movq	%rax, %rdx	# _51, _52
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp405
	movq	%rdx, 688(%rbx,%rax)	# _52, memory_management_struct.pages_length
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp406
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _53
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 1
	movq	%rax, %rdx	# _53, _54
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp407
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _55
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _55,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp409
	leaq	(%rbx,%rax), %rax	#, tmp408
	call	*%rax	# tmp408
.LVL6:
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 94
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp410
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _56
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 55
	movq	%rax, %rdx	# _56, _57
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 132
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp411
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _58
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 107
	addq	%rdx, %rax	# _57, _59
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 158
	addq	$4095, %rax	#, _60
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 161
	andq	$-4096, %rax	#, _61
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 39
	movq	%rax, %rdx	# _61, _62
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp412
	movq	%rdx, 696(%rbx,%rax)	# _62, memory_management_struct.zones_struct
# memory.c:119: memory_management_struct.zones_size=0;
	.loc 3 119 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp413
	movq	$0, 704(%rbx,%rax)	#, memory_management_struct.zones_size
# memory.c:120: memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 120 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp414
	movq	$400, 712(%rbx,%rax)	#, memory_management_struct.zones_length
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp415
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _63
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 1
	movq	%rax, %rdx	# _63, _64
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp416
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _65
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _65,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp418
	leaq	(%rbx,%rax), %rax	#, tmp417
	call	*%rax	# tmp417
.LVL7:
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 6
	movl	$0, -20(%rbp)	#, i
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 1
	jmp	.L30	#
.L36:
.LBB6:
# memory.c:126: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 126 37
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp419
	movl	-20(%rbp), %eax	# i, tmp421
	movslq	%eax, %rdx	# tmp421, tmp420
	addq	%rbx, %rcx	# tmp82, tmp422
	movq	%rdx, %rax	# tmp420, tmp423
	salq	$2, %rax	#, tmp423
	addq	%rdx, %rax	# tmp420, tmp423
	salq	$2, %rax	#, tmp424
	addq	%rcx, %rax	# tmp422, tmp425
	addq	$16, %rax	#, tmp426
	movl	(%rax), %eax	# memory_management_struct.e820[i_182].type, _66
# memory.c:126: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 126 4
	cmpl	$1, %eax	#, _66
	jne	.L47	#,
# memory.c:129: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 129 8
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp427
	movl	-20(%rbp), %eax	# i, tmp429
	movslq	%eax, %rdx	# tmp429, tmp428
	addq	%rbx, %rcx	# tmp82, tmp430
	movq	%rdx, %rax	# tmp428, tmp432
	salq	$2, %rax	#, tmp432
	addq	%rdx, %rax	# tmp428, tmp432
	salq	$2, %rax	#, tmp433
	addq	%rcx, %rax	# tmp430, tmp434
	movq	(%rax), %rax	# memory_management_struct.e820[i_182].address, _67
	addq	$2097151, %rax	#, _68
# memory.c:129: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 129 7
	andq	$-2097152, %rax	#, tmp435
	movq	%rax, -88(%rbp)	# tmp435, start
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 40
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp436
	movl	-20(%rbp), %eax	# i, tmp438
	movslq	%eax, %rdx	# tmp438, tmp437
	addq	%rbx, %rcx	# tmp82, tmp439
	movq	%rdx, %rax	# tmp437, tmp441
	salq	$2, %rax	#, tmp441
	addq	%rdx, %rax	# tmp437, tmp441
	salq	$2, %rax	#, tmp442
	addq	%rcx, %rax	# tmp439, tmp443
	movq	(%rax), %rcx	# memory_management_struct.e820[i_182].address, _69
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 81
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp444
	movl	-20(%rbp), %eax	# i, tmp446
	movslq	%eax, %rdx	# tmp446, tmp445
	movq	%rdx, %rax	# tmp445, tmp447
	salq	$2, %rax	#, tmp447
	addq	%rdx, %rax	# tmp445, tmp447
	salq	$2, %rax	#, tmp448
	addq	%rbx, %rax	# tmp82, tmp449
	addq	%rsi, %rax	# tmp444, tmp450
	addq	$8, %rax	#, tmp451
	movq	(%rax), %rax	# memory_management_struct.e820[i_182].length, _70
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 48
	addq	%rcx, %rax	# _69, _71
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 5
	andq	$-2097152, %rax	#, tmp452
	movq	%rax, -96(%rbp)	# tmp452, end
# memory.c:131: 	if(end<=start){
	.loc 3 131 4
	movq	-96(%rbp), %rax	# end, tmp453
	cmpq	%rax, -88(%rbp)	# tmp453, start
	jnb	.L48	#,
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 28
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp454
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _72
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 66
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp455
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _73
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 41
	movq	%rdx, %rax	# _73, tmp456
	salq	$2, %rax	#, tmp456
	addq	%rdx, %rax	# _73, tmp456
	salq	$4, %rax	#, tmp457
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 3
	addq	%rcx, %rax	# _72, tmp458
	movq	%rax, -104(%rbp)	# tmp458, z
# memory.c:136: 	memory_management_struct.zones_size++;
	.loc 3 136 26
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp459
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _75
# memory.c:136: 	memory_management_struct.zones_size++;
	.loc 3 136 37
	leaq	1(%rax), %rdx	#, _76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp460
	movq	%rdx, 704(%rbx,%rax)	# _76, memory_management_struct.zones_size
# memory.c:137: 	z->zone_start_address=start;
	.loc 3 137 23
	movq	-104(%rbp), %rax	# z, tmp461
	movq	-88(%rbp), %rdx	# start, tmp462
	movq	%rdx, 16(%rax)	# tmp462, z_268->zone_start_address
# memory.c:138: 	z->zone_end_address=end;
	.loc 3 138 21
	movq	-104(%rbp), %rax	# z, tmp463
	movq	-96(%rbp), %rdx	# end, tmp464
	movq	%rdx, 24(%rax)	# tmp464, z_268->zone_end_address
# memory.c:139: 	z->zone_length=end-start;
	.loc 3 139 20
	movq	-96(%rbp), %rax	# end, tmp465
	subq	-88(%rbp), %rax	# start, tmp465
	movq	%rax, %rdx	# tmp465, _77
# memory.c:139: 	z->zone_length=end-start;
	.loc 3 139 16
	movq	-104(%rbp), %rax	# z, tmp466
	movq	%rdx, 32(%rax)	# _77, z_268->zone_length
# memory.c:140: 	z->page_using_count=0;
	.loc 3 140 21
	movq	-104(%rbp), %rax	# z, tmp467
	movq	$0, 56(%rax)	#, z_268->page_using_count
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 25
	movq	-96(%rbp), %rax	# end, tmp468
	subq	-88(%rbp), %rax	# start, _78
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 32
	shrq	$21, %rax	#, _78
	movq	%rax, %rdx	# _78, _79
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 20
	movq	-104(%rbp), %rax	# z, tmp469
	movq	%rdx, 64(%rax)	# _79, z_268->page_free_count
# memory.c:142: 	z->total_pages_link=0;
	.loc 3 142 21
	movq	-104(%rbp), %rax	# z, tmp470
	movq	$0, 72(%rax)	#, z_268->total_pages_link
# memory.c:143: 	z->attribute=0;
	.loc 3 143 14
	movq	-104(%rbp), %rax	# z, tmp471
	movq	$0, 40(%rax)	#, z_268->attribute
# memory.c:144: 	z->GMD_struct=&memory_management_struct;
	.loc 3 144 15
	movq	-104(%rbp), %rax	# z, tmp472
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp474
	leaq	(%rbx,%rdx), %rdx	#, tmp473
	movq	%rdx, 48(%rax)	# tmp473, z_268->GMD_struct
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 22
	movq	-96(%rbp), %rax	# end, tmp475
	subq	-88(%rbp), %rax	# start, _80
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 29
	shrq	$21, %rax	#, _80
	movq	%rax, %rdx	# _80, _81
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 17
	movq	-104(%rbp), %rax	# z, tmp476
	movq	%rdx, 8(%rax)	# _81, z_268->pages_length
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 56
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp477
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _82
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 77
	movq	-88(%rbp), %rax	# start, tmp478
	shrq	$21, %rax	#, tmp478
	movq	%rax, %rdx	# tmp478, _83
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 69
	movq	%rdx, %rax	# _83, tmp479
	salq	$2, %rax	#, tmp479
	addq	%rdx, %rax	# _83, tmp479
	salq	$3, %rax	#, tmp480
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 17
	leaq	(%rcx,%rax), %rdx	#, _85
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 16
	movq	-104(%rbp), %rax	# z, tmp481
	movq	%rdx, (%rax)	# _85, z_268->pages_group
# memory.c:149: 	p=z->pages_group;
	.loc 3 149 3
	movq	-104(%rbp), %rax	# z, tmp482
	movq	(%rax), %rax	# z_268->pages_group, tmp483
	movq	%rax, -56(%rbp)	# tmp483, p
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 7
	movl	$0, -24(%rbp)	#, j
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 2
	jmp	.L34	#
.L35:
# memory.c:151: 		p->zone_struct=z;
	.loc 3 151 17
	movq	-56(%rbp), %rax	# p, tmp484
	movq	-104(%rbp), %rdx	# z, tmp485
	movq	%rdx, (%rax)	# tmp485, p_194->zone_struct
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 36
	movl	-24(%rbp), %eax	# j, tmp486
	cltq
	salq	$21, %rax	#, _86
	movq	%rax, %rdx	# _86, _87
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 23
	movq	-88(%rbp), %rax	# start, tmp487
	addq	%rax, %rdx	# tmp487, _88
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 17
	movq	-56(%rbp), %rax	# p, tmp488
	movq	%rdx, 8(%rax)	# _88, p_194->PHY_address
# memory.c:153: 		p->attribute=0;
	.loc 3 153 15
	movq	-56(%rbp), %rax	# p, tmp489
	movq	$0, 16(%rax)	#, p_194->attribute
# memory.c:154: 		p->reference_count=0;
	.loc 3 154 21
	movq	-56(%rbp), %rax	# p, tmp490
	movq	$0, 24(%rax)	#, p_194->reference_count
# memory.c:155: 		p->age=0;
	.loc 3 155 9
	movq	-56(%rbp), %rax	# p, tmp491
	movq	$0, 32(%rax)	#, p_194->age
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp492
	movq	648(%rbx,%rax), %rdx	# memory_management_struct.bits_map, _89
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 42
	movq	-56(%rbp), %rax	# p, tmp493
	movq	8(%rax), %rax	# p_194->PHY_address, _90
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 3
	shrq	$27, %rax	#, _91
	salq	$3, %rax	#, _92
	addq	%rdx, %rax	# _89, _93
	movq	(%rax), %rdx	# *_93, _94
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 86
	movq	-56(%rbp), %rax	# p, tmp494
	movq	8(%rax), %rax	# p_194->PHY_address, _95
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 99
	shrq	$21, %rax	#, _96
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 115
	andl	$63, %eax	#, _98
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 82
	movl	$1, %esi	#, tmp495
	movl	%eax, %ecx	# _98, tmp600
	salq	%cl, %rsi	# tmp600, _99
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp496
	movq	648(%rbx,%rax), %rcx	# memory_management_struct.bits_map, _100
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 42
	movq	-56(%rbp), %rax	# p, tmp497
	movq	8(%rax), %rax	# p_194->PHY_address, _101
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 3
	shrq	$27, %rax	#, _102
	salq	$3, %rax	#, _103
	addq	%rcx, %rax	# _100, _104
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 76
	xorq	%rsi, %rdx	# _99, _105
	movq	%rdx, (%rax)	# _105, *_104
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 29 discriminator 3
	addl	$1, -24(%rbp)	#, j
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 33 discriminator 3
	addq	$40, -56(%rbp)	#, p
.L34:
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp498
	movslq	%eax, %rdx	# tmp498, _106
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 13 discriminator 1
	movq	-104(%rbp), %rax	# z, tmp499
	movq	8(%rax), %rax	# z_268->pages_length, _107
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 11 discriminator 1
	cmpq	%rax, %rdx	# _107, _106
	jb	.L35	#,
	jmp	.L32	#
.L47:
# memory.c:127: 		continue;
	.loc 3 127 3
	nop	
	jmp	.L32	#
.L48:
# memory.c:132: 		continue;
	.loc 3 132 3
	nop	
.L32:
.LBE6:
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 50 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L30:
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp500
	cltq
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 36 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp501
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _109
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 10 discriminator 1
	cmpq	%rax, %rdx	# _108, _109
	jnb	.L36	#,
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp502
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _110
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 76
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp503
	movq	696(%rbx,%rdx), %rdx	# memory_management_struct.zones_struct, _111
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 51
	movq	%rdx, (%rax)	# _111, _110->zone_struct
# memory.c:161: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 161 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp504
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _112
# memory.c:161: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 161 51
	movq	$0, 8(%rax)	#, _112->PHY_address
# memory.c:162: memory_management_struct.pages_struct->attribute=0;
	.loc 3 162 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp505
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _113
# memory.c:162: memory_management_struct.pages_struct->attribute=0;
	.loc 3 162 49
	movq	$0, 16(%rax)	#, _113->attribute
# memory.c:163: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 163 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp506
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _114
# memory.c:163: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 163 55
	movq	$0, 24(%rax)	#, _114->reference_count
# memory.c:164: memory_management_struct.pages_struct->age=0;
	.loc 3 164 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp507
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _115
# memory.c:164: memory_management_struct.pages_struct->age=0;
	.loc 3 164 43
	movq	$0, 32(%rax)	#, _115->age
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 64
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp508
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _116
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 75
	movq	%rdx, %rax	# _116, tmp509
	salq	$2, %rax	#, tmp509
	addq	%rdx, %rax	# _116, tmp509
	salq	$4, %rax	#, tmp510
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 108
	addq	$7, %rax	#, _118
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 111
	andq	$-8, %rax	#, _118
	movq	%rax, %rdx	# _118, _119
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp511
	movq	%rdx, 712(%rbx,%rax)	# _119, memory_management_struct.zones_length
# memory.c:167: color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
	.loc 3 167 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp512
	movq	664(%rbx,%rax), %rcx	# memory_management_struct.bits_length, _120
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp513
	movq	656(%rbx,%rax), %rdx	# memory_management_struct.bits_size, _121
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp514
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _122
	movq	%rcx, %r9	# _120,
	movq	%rdx, %r8	# _121,
	movq	%rax, %rcx	# _122,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp516
	leaq	(%rbx,%rax), %rax	#, tmp515
	movq	%rax, %rdx	# tmp515,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp517
	addq	%rbx, %r10	# tmp82, tmp517
	call	*%r10	# tmp517
.LVL8:
# memory.c:168: color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
	.loc 3 168 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp518
	movq	688(%rbx,%rax), %rcx	# memory_management_struct.pages_length, _123
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp519
	movq	680(%rbx,%rax), %rdx	# memory_management_struct.pages_size, _124
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp520
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _125
	movq	%rcx, %r9	# _123,
	movq	%rdx, %r8	# _124,
	movq	%rax, %rcx	# _125,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp522
	leaq	(%rbx,%rax), %rax	#, tmp521
	movq	%rax, %rdx	# tmp521,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp523
	addq	%rbx, %r10	# tmp82, tmp523
	call	*%r10	# tmp523
.LVL9:
# memory.c:169: color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);
	.loc 3 169 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp524
	movq	712(%rbx,%rax), %rcx	# memory_management_struct.zones_length, _126
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp525
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _127
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp526
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _128
	movq	%rcx, %r9	# _126,
	movq	%rdx, %r8	# _127,
	movq	%rax, %rcx	# _128,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp528
	leaq	(%rbx,%rax), %rax	#, tmp527
	movq	%rax, %rdx	# tmp527,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp529
	addq	%rbx, %r10	# tmp82, tmp529
	call	*%r10	# tmp529
.LVL10:
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 6
	movl	$0, -20(%rbp)	#, i
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 1
	jmp	.L37	#
.L39:
.LBB7:
# memory.c:172: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 172 41
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp530
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _129
# memory.c:172: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 172 54
	movl	-20(%rbp), %eax	# i, tmp531
	movslq	%eax, %rdx	# tmp531, _130
	movq	%rdx, %rax	# _130, tmp532
	salq	$2, %rax	#, tmp532
	addq	%rdx, %rax	# _130, tmp532
	salq	$4, %rax	#, tmp533
# memory.c:172: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 172 15
	addq	%rcx, %rax	# _129, tmp534
	movq	%rax, -80(%rbp)	# tmp534, z
# memory.c:173: 	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);
	.loc 3 173 2
	movq	-80(%rbp), %rax	# z, tmp535
	movq	8(%rax), %rcx	# z_262->pages_length, _132
	movq	-80(%rbp), %rax	# z, tmp536
	movq	(%rax), %rdx	# z_262->pages_group, _133
	movq	-80(%rbp), %rax	# z, tmp537
	movq	32(%rax), %rdi	# z_262->zone_length, _134
	movq	-80(%rbp), %rax	# z, tmp538
	movq	24(%rax), %rsi	# z_262->zone_end_address, _135
	movq	-80(%rbp), %rax	# z, tmp539
	movq	16(%rax), %rax	# z_262->zone_start_address, _136
	pushq	%rcx	# _132
	pushq	%rdx	# _133
	movq	%rdi, %r9	# _134,
	movq	%rsi, %r8	# _135,
	movq	%rax, %rcx	# _136,
	movabsq	$.LC8@GOTOFF, %rax	#, tmp541
	leaq	(%rbx,%rax), %rax	#, tmp540
	movq	%rax, %rdx	# tmp540,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp542
	addq	%rbx, %r10	# tmp82, tmp542
	call	*%r10	# tmp542
.LVL11:
	addq	$16, %rsp	#,
# memory.c:175: 	if(z->zone_start_address==0x100000000){
	.loc 3 175 6
	movq	-80(%rbp), %rax	# z, tmp543
	movq	16(%rax), %rdx	# z_262->zone_start_address, _137
# memory.c:175: 	if(z->zone_start_address==0x100000000){
	.loc 3 175 4
	movabsq	$4294967296, %rax	#, tmp544
	cmpq	%rax, %rdx	# tmp544, _137
	jne	.L38	#,
# memory.c:176: 		ZONE_UNMAPED_INDEX=i;
	.loc 3 176 21
	movabsq	$ZONE_UNMAPED_INDEX@GOTOFF, %rdx	#, tmp545
	movl	-20(%rbp), %eax	# i, tmp546
	movl	%eax, (%rbx,%rdx)	# tmp546, ZONE_UNMAPED_INDEX
.L38:
.LBE7:
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 48 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L37:
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp547
	movslq	%eax, %rdx	# tmp547, _138
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 35 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp548
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _139
# memory.c:171: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 171 10 discriminator 1
	cmpq	%rax, %rdx	# _139, _138
	jb	.L39	#,
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 96
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp549
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _140
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 57
	movq	%rax, %rdx	# _140, _141
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 134
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp550
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _142
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 109
	addq	%rdx, %rax	# _141, _143
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 41
	addq	$256, %rax	#, _144
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 164
	andq	$-8, %rax	#, _144
	movq	%rax, %rdx	# _144, _145
# memory.c:184: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 184 40
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp551
	movq	%rdx, 752(%rbx,%rax)	# _145, memory_management_struct.end_of_struct
# memory.c:185: 	color_printk(ORANGE,BLACK,"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n",memory_management_struct.start_code,memory_management_struct.end_code,memory_management_struct.end_data,memory_management_struct.end_brk,memory_management_struct.end_of_struct);
	.loc 3 185 2
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp552
	movq	752(%rbx,%rax), %rcx	# memory_management_struct.end_of_struct, _146
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp553
	movq	744(%rbx,%rax), %rdx	# memory_management_struct.end_brk, _147
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp554
	movq	736(%rbx,%rax), %rdi	# memory_management_struct.end_data, _148
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp555
	movq	728(%rbx,%rax), %rsi	# memory_management_struct.end_code, _149
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp556
	movq	720(%rbx,%rax), %rax	# memory_management_struct.start_code, _150
	pushq	%rcx	# _146
	pushq	%rdx	# _147
	movq	%rdi, %r9	# _148,
	movq	%rsi, %r8	# _149,
	movq	%rax, %rcx	# _150,
	movabsq	$.LC9@GOTOFF, %rax	#, tmp558
	leaq	(%rbx,%rax), %rax	#, tmp557
	movq	%rax, %rdx	# tmp557,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp559
	addq	%rbx, %r10	# tmp82, tmp559
	call	*%r10	# tmp559
.LVL12:
	addq	$16, %rsp	#,
# memory.c:186: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 186 4
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp560
	movq	752(%rbx,%rax), %rax	# memory_management_struct.end_of_struct, _151
	movabsq	$140737488355328, %rdx	#, tmp561
	addq	%rdx, %rax	# tmp561, _152
# memory.c:186: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 186 55
	shrq	$21, %rax	#, _153
# memory.c:186: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 186 3
	movl	%eax, -20(%rbp)	# _153, i
# memory.c:187: 	for(j=0;j<=i;j++){
	.loc 3 187 7
	movl	$0, -24(%rbp)	#, j
# memory.c:187: 	for(j=0;j<=i;j++){
	.loc 3 187 2
	jmp	.L40	#
.L41:
# memory.c:188: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 188 37
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp562
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _154
# memory.c:188: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 188 50
	movl	-24(%rbp), %eax	# j, tmp563
	movslq	%eax, %rdx	# tmp563, _155
	movq	%rdx, %rax	# _155, tmp564
	salq	$2, %rax	#, tmp564
	addq	%rdx, %rax	# _155, tmp564
	salq	$3, %rax	#, tmp565
# memory.c:188: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 188 3
	addq	%rcx, %rax	# _154, _157
	movl	$147, %esi	#,
	movq	%rax, %rdi	# _157,
	movabsq	$page_init@GOTOFF, %rax	#, tmp567
	leaq	(%rbx,%rax), %rax	#, tmp566
	call	*%rax	# tmp566
.LVL13:
# memory.c:187: 	for(j=0;j<=i;j++){
	.loc 3 187 16 discriminator 3
	addl	$1, -24(%rbp)	#, j
.L40:
# memory.c:187: 	for(j=0;j<=i;j++){
	.loc 3 187 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp568
	cmpl	-20(%rbp), %eax	# i, tmp568
	jle	.L41	#,
# memory.c:191: 	color_printk(INDIGO,BLACK,"Global_CR3\t:%#018lx\n",Global_CR3);
	.loc 3 191 2
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp569
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.0_158
	movq	%rax, %rcx	# Global_CR3.0_158,
	movabsq	$.LC10@GOTOFF, %rax	#, tmp571
	leaq	(%rbx,%rax), %rax	#, tmp570
	movq	%rax, %rdx	# tmp570,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp572
	addq	%rbx, %r8	# tmp82, tmp572
	call	*%r8	# tmp572
.LVL14:
# memory.c:192: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 192 55
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp573
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.1_159
	movq	%rax, %rdx	# Global_CR3.1_159, Global_CR3.2_160
	movabsq	$-140737488355328, %rax	#, tmp574
	addq	%rdx, %rax	# Global_CR3.2_160, _161
# memory.c:192: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 192 2
	movq	(%rax), %rax	# *_162, _163
	movq	%rax, %rcx	# _163,
	movabsq	$.LC11@GOTOFF, %rax	#, tmp576
	leaq	(%rbx,%rax), %rax	#, tmp575
	movq	%rax, %rdx	# tmp575,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp577
	addq	%rbx, %r8	# tmp82, tmp577
	call	*%r8	# tmp577
.LVL15:
# memory.c:193: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 193 56
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp578
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.3_164
	movq	%rax, %rdx	# Global_CR3.3_164, Global_CR3.4_165
	movabsq	$-140737488355328, %rax	#, tmp579
	addq	%rdx, %rax	# Global_CR3.4_165, _166
	movq	(%rax), %rax	# *_167, _168
	movb	$0, %al	#, _168
	movq	%rax, %rdx	# _168, _169
	movabsq	$-140737488355328, %rax	#, tmp580
	addq	%rdx, %rax	# _169, _170
# memory.c:193: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 193 55
	movq	(%rax), %rax	# *_171, _172
# memory.c:193: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 193 2
	movb	$0, %al	#, _173
	movq	%rax, %rcx	# _173,
	movabsq	$.LC12@GOTOFF, %rax	#, tmp582
	leaq	(%rbx,%rax), %rax	#, tmp581
	movq	%rax, %rdx	# tmp581,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp583
	addq	%rbx, %r8	# tmp82, tmp583
	call	*%r8	# tmp583
.LVL16:
# memory.c:194: 	for(i=0;i<10;i++){
	.loc 3 194 7
	movl	$0, -20(%rbp)	#, i
# memory.c:194: 	for(i=0;i<10;i++){
	.loc 3 194 2
	jmp	.L42	#
.L43:
# memory.c:195: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 195 28
	movl	-20(%rbp), %eax	# i, tmp584
	cltq
	leaq	0(,%rax,8), %rdx	#, _175
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp585
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.5_176
	addq	%rax, %rdx	# Global_CR3.6_177, _178
	movabsq	$-140737488355328, %rax	#, tmp586
	addq	%rdx, %rax	# _178, _179
# memory.c:195: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 195 31
	movq	$0, (%rax)	#, *_180
# memory.c:194: 	for(i=0;i<10;i++){
	.loc 3 194 16 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L42:
# memory.c:194: 	for(i=0;i<10;i++){
	.loc 3 194 11 discriminator 1
	cmpl	$9, -20(%rbp)	#, i
	jle	.L43	#,
.LBB8:
# memory.c:197: 	flush_tlb();
	.loc 3 197 2
#APP
# 197 "memory.c" 1
	movq %cr3, %rax	# tmpreq
	movq %rax, %cr3	# tmpreq
# 0 "" 2
#NO_APP
	movq	%rax, -72(%rbp)	# tmpreq, tmpreq
.LBE8:
# memory.c:199: }
	.loc 3 199 1
	nop	
	leaq	-16(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	init_memory, .-init_memory
.Letext0:
	.file 4 "font.h"
	.file 5 "printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x71c
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.long	.LASF2
	.byte	0x2
	.byte	0x78
	.byte	0x5
	.long	0x44
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_DMA_INDEX
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	.LASF3
	.byte	0x2
	.byte	0x79
	.byte	0x5
	.long	0x44
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_NORMAL_INDEX
	.uleb128 0x6
	.long	.LASF4
	.byte	0x2
	.byte	0x7a
	.byte	0x5
	.long	0x44
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_UNMAPED_INDEX
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0xa
	.long	.LASF10
	.byte	0x14
	.byte	0x2
	.byte	0x9d
	.long	0xb2
	.uleb128 0x1
	.long	.LASF6
	.byte	0x2
	.byte	0x9f
	.byte	0x13
	.long	0xb2
	.byte	0
	.uleb128 0x1
	.long	.LASF7
	.byte	0x2
	.byte	0xa0
	.byte	0x13
	.long	0xb2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF8
	.byte	0x2
	.byte	0xa1
	.byte	0x12
	.long	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x12
	.long	.LASF11
	.value	0x2f8
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.long	0x198
	.uleb128 0x1
	.long	.LASF12
	.byte	0x2
	.byte	0xa6
	.byte	0xe
	.long	0x198
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0xa7
	.byte	0x10
	.long	0xb2
	.value	0x280
	.uleb128 0x3
	.long	.LASF14
	.byte	0xb3
	.byte	0x12
	.long	0x1a8
	.value	0x288
	.uleb128 0x3
	.long	.LASF15
	.byte	0xb4
	.byte	0x10
	.long	0xb2
	.value	0x290
	.uleb128 0x3
	.long	.LASF16
	.byte	0xb5
	.byte	0x10
	.long	0xb2
	.value	0x298
	.uleb128 0x3
	.long	.LASF17
	.byte	0xbe
	.byte	0x10
	.long	0x1fb
	.value	0x2a0
	.uleb128 0x3
	.long	.LASF18
	.byte	0xbf
	.byte	0x10
	.long	0xb2
	.value	0x2a8
	.uleb128 0x3
	.long	.LASF19
	.byte	0xc0
	.byte	0x10
	.long	0xb2
	.value	0x2b0
	.uleb128 0x3
	.long	.LASF20
	.byte	0xc8
	.byte	0x10
	.long	0x28f
	.value	0x2b8
	.uleb128 0x3
	.long	.LASF21
	.byte	0xc9
	.byte	0x10
	.long	0xb2
	.value	0x2c0
	.uleb128 0x3
	.long	.LASF22
	.byte	0xca
	.byte	0x10
	.long	0xb2
	.value	0x2c8
	.uleb128 0x3
	.long	.LASF23
	.byte	0xd7
	.byte	0x10
	.long	0xb2
	.value	0x2d0
	.uleb128 0x3
	.long	.LASF24
	.byte	0xd8
	.byte	0x10
	.long	0xb2
	.value	0x2d8
	.uleb128 0x3
	.long	.LASF25
	.byte	0xd9
	.byte	0x10
	.long	0xb2
	.value	0x2e0
	.uleb128 0x3
	.long	.LASF26
	.byte	0xda
	.byte	0x10
	.long	0xb2
	.value	0x2e8
	.uleb128 0x3
	.long	.LASF27
	.byte	0xdc
	.byte	0x10
	.long	0xb2
	.value	0x2f0
	.byte	0
	.uleb128 0xc
	.long	0x7e
	.long	0x1a8
	.uleb128 0xd
	.long	0xb2
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	0xb2
	.uleb128 0xa
	.long	.LASF28
	.byte	0x28
	.byte	0x2
	.byte	0xe0
	.long	0x1fb
	.uleb128 0x1
	.long	.LASF29
	.byte	0x2
	.byte	0xe1
	.byte	0x12
	.long	0x28f
	.byte	0
	.uleb128 0x1
	.long	.LASF30
	.byte	0x2
	.byte	0xe2
	.byte	0x13
	.long	0xb2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF31
	.byte	0x2
	.byte	0xe3
	.byte	0x13
	.long	0xb2
	.byte	0x10
	.uleb128 0x1
	.long	.LASF32
	.byte	0x2
	.byte	0xe4
	.byte	0x13
	.long	0xb2
	.byte	0x18
	.uleb128 0x13
	.string	"age"
	.byte	0x2
	.byte	0xe5
	.byte	0x13
	.long	0xb2
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x1ad
	.uleb128 0xa
	.long	.LASF33
	.byte	0x50
	.byte	0x2
	.byte	0xe8
	.long	0x28f
	.uleb128 0x1
	.long	.LASF34
	.byte	0x2
	.byte	0xe9
	.byte	0x10
	.long	0x1fb
	.byte	0
	.uleb128 0x1
	.long	.LASF19
	.byte	0x2
	.byte	0xea
	.byte	0x10
	.long	0xb2
	.byte	0x8
	.uleb128 0x1
	.long	.LASF35
	.byte	0x2
	.byte	0xeb
	.byte	0x10
	.long	0xb2
	.byte	0x10
	.uleb128 0x1
	.long	.LASF36
	.byte	0x2
	.byte	0xec
	.byte	0x10
	.long	0xb2
	.byte	0x18
	.uleb128 0x1
	.long	.LASF37
	.byte	0x2
	.byte	0xed
	.byte	0x10
	.long	0xb2
	.byte	0x20
	.uleb128 0x1
	.long	.LASF31
	.byte	0x2
	.byte	0xee
	.byte	0x10
	.long	0xb2
	.byte	0x28
	.uleb128 0x1
	.long	.LASF38
	.byte	0x2
	.byte	0xf0
	.byte	0x24
	.long	0x294
	.byte	0x30
	.uleb128 0x1
	.long	.LASF39
	.byte	0x2
	.byte	0xf1
	.byte	0x10
	.long	0xb2
	.byte	0x38
	.uleb128 0x1
	.long	.LASF40
	.byte	0x2
	.byte	0xf2
	.byte	0x10
	.long	0xb2
	.byte	0x40
	.uleb128 0x1
	.long	.LASF41
	.byte	0x2
	.byte	0xf4
	.byte	0x10
	.long	0xb2
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.long	0x200
	.uleb128 0x5
	.long	0xb9
	.uleb128 0x6
	.long	.LASF42
	.byte	0x2
	.byte	0xf7
	.byte	0x11
	.long	0x1a8
	.uleb128 0x9
	.byte	0x3
	.quad	Global_CR3
	.uleb128 0x6
	.long	.LASF43
	.byte	0x2
	.byte	0xfa
	.byte	0x21
	.long	0xb9
	.uleb128 0x9
	.byte	0x3
	.quad	memory_management_struct
	.uleb128 0x14
	.byte	0x8
	.uleb128 0xc
	.long	0x2dd
	.long	0x2dd
	.uleb128 0xd
	.long	0xb2
	.byte	0xff
	.uleb128 0xd
	.long	0xb2
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF44
	.uleb128 0x6
	.long	.LASF45
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.long	0x2c7
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0xa
	.long	.LASF46
	.byte	0x28
	.byte	0x5
	.byte	0x20
	.long	0x36f
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.long	0x44
	.byte	0
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.long	0x44
	.byte	0x4
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.long	0x44
	.byte	0x8
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.long	0x44
	.byte	0xc
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x26
	.byte	0x9
	.long	0x44
	.byte	0x10
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.byte	0x27
	.byte	0x9
	.long	0x44
	.byte	0x14
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0x36f
	.byte	0x18
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.byte	0x29
	.byte	0x13
	.long	0xb2
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x77
	.uleb128 0xf
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0x2fa
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0xc
	.long	0x39a
	.long	0x39a
	.uleb128 0x15
	.long	0xb2
	.value	0xfff
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF55
	.uleb128 0x16
	.long	0x39a
	.uleb128 0xf
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x389
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x17
	.long	.LASF67
	.byte	0x5
	.byte	0x3b
	.byte	0x5
	.long	0x44
	.long	0x3dc
	.uleb128 0xe
	.long	0x77
	.uleb128 0xe
	.long	0x77
	.uleb128 0xe
	.long	0x3dc
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x3a1
	.uleb128 0x19
	.long	.LASF68
	.byte	0x3
	.byte	0x1e
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x61e
	.uleb128 0x4
	.string	"i"
	.byte	0x3
	.byte	0x1f
	.byte	0x6
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"j"
	.byte	0x3
	.byte	0x1f
	.byte	0x8
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF56
	.byte	0x3
	.byte	0x21
	.byte	0x10
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.byte	0x3
	.byte	0x22
	.byte	0xf
	.long	0x61e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x47b
	.uleb128 0x4
	.string	"i"
	.byte	0x3
	.byte	0x25
	.byte	0xb
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.long	.LLRL0
	.uleb128 0x4
	.string	"tmp"
	.byte	0x3
	.byte	0x29
	.byte	0x11
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.quad	.LVL1
	.long	0x3bb
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x4b1
	.uleb128 0x8
	.long	.LASF57
	.byte	0x3
	.byte	0x39
	.byte	0x11
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.string	"end"
	.byte	0x3
	.byte	0x39
	.byte	0x17
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x9
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x503
	.uleb128 0x8
	.long	.LASF57
	.byte	0x3
	.byte	0x7b
	.byte	0x10
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.string	"end"
	.byte	0x3
	.byte	0x7b
	.byte	0x17
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.string	"z"
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.string	"p"
	.byte	0x3
	.byte	0x7d
	.byte	0xf
	.long	0x1fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x534
	.uleb128 0x4
	.string	"z"
	.byte	0x3
	.byte	0xac
	.byte	0xf
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.quad	.LVL11
	.long	0x3bb
	.byte	0
	.uleb128 0x9
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x55a
	.uleb128 0x8
	.long	.LASF58
	.byte	0x3
	.byte	0xc5
	.byte	0x2
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2
	.quad	.LVL0
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL2
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL3
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL4
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL5
	.long	0x696
	.uleb128 0x2
	.quad	.LVL6
	.long	0x696
	.uleb128 0x2
	.quad	.LVL7
	.long	0x696
	.uleb128 0x2
	.quad	.LVL8
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL9
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL10
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL12
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL13
	.long	0x623
	.uleb128 0x2
	.quad	.LVL14
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL15
	.long	0x3bb
	.uleb128 0x2
	.quad	.LVL16
	.long	0x3bb
	.byte	0
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x3
	.byte	0x5
	.byte	0xf
	.long	0xb2
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x664
	.uleb128 0xb
	.long	.LASF59
	.byte	0x3
	.byte	0x5
	.byte	0x27
	.long	0x1fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x5
	.byte	0x3a
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x2
	.byte	0x88
	.byte	0x17
	.long	0x1a8
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x696
	.uleb128 0x4
	.string	"tmp"
	.byte	0x2
	.byte	0x89
	.byte	0x12
	.long	0x1a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.long	0x2c5
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x713
	.uleb128 0xb
	.long	.LASF61
	.byte	0x1
	.byte	0xf9
	.byte	0x24
	.long	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"C"
	.byte	0x1
	.byte	0xf9
	.byte	0x3b
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF62
	.byte	0x1
	.byte	0xf9
	.byte	0x43
	.long	0x713
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.string	"ptr"
	.byte	0x1
	.byte	0xfb
	.byte	0x14
	.long	0x71a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF63
	.byte	0x1
	.byte	0xfc
	.byte	0x13
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.value	0x10b
	.byte	0xa
	.long	0x713
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF65
	.uleb128 0x5
	.long	0x2dd
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"XPosition"
.LASF63:
	.string	"pattern"
.LASF61:
	.string	"Address"
.LASF50:
	.string	"YPosition"
.LASF21:
	.string	"zones_size"
.LASF11:
	.string	"Global_Memory_Descriptor"
.LASF53:
	.string	"FB_addr"
.LASF28:
	.string	"Page"
.LASF39:
	.string	"page_using_count"
.LASF67:
	.string	"color_printk"
.LASF42:
	.string	"Global_CR3"
.LASF31:
	.string	"attribute"
.LASF23:
	.string	"start_code"
.LASF14:
	.string	"bits_map"
.LASF38:
	.string	"GMD_struct"
.LASF27:
	.string	"end_of_struct"
.LASF16:
	.string	"bits_length"
.LASF36:
	.string	"zone_end_address"
.LASF35:
	.string	"zone_start_address"
.LASF15:
	.string	"bits_size"
.LASF68:
	.string	"init_memory"
.LASF13:
	.string	"e820_length"
.LASF51:
	.string	"XCharSize"
.LASF20:
	.string	"zones_struct"
.LASF52:
	.string	"YCharSize"
.LASF34:
	.string	"pages_group"
.LASF48:
	.string	"YResolution"
.LASF69:
	.string	"page_init"
.LASF7:
	.string	"length"
.LASF45:
	.string	"font_ascii"
.LASF2:
	.string	"ZONE_DMA_INDEX"
.LASF57:
	.string	"start"
.LASF44:
	.string	"unsigned char"
.LASF58:
	.string	"tmpreq"
.LASF54:
	.string	"FB_length"
.LASF60:
	.string	"flags"
.LASF6:
	.string	"address"
.LASF8:
	.string	"type"
.LASF18:
	.string	"pages_size"
.LASF43:
	.string	"memory_management_struct"
.LASF5:
	.string	"unsigned int"
.LASF17:
	.string	"pages_struct"
.LASF62:
	.string	"Count"
.LASF10:
	.string	"E820"
.LASF24:
	.string	"end_code"
.LASF4:
	.string	"ZONE_UNMAPED_INDEX"
.LASF55:
	.string	"char"
.LASF65:
	.string	"long int"
.LASF66:
	.string	"GNU C17 13.3.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF40:
	.string	"page_free_count"
.LASF41:
	.string	"total_pages_link"
.LASF30:
	.string	"PHY_address"
.LASF47:
	.string	"XResolution"
.LASF25:
	.string	"end_data"
.LASF9:
	.string	"long unsigned int"
.LASF32:
	.string	"reference_count"
.LASF3:
	.string	"ZONE_NORMAL_INDEX"
.LASF26:
	.string	"end_brk"
.LASF37:
	.string	"zone_length"
.LASF64:
	.string	"remaining"
.LASF70:
	.string	"Get_gdt"
.LASF22:
	.string	"zones_length"
.LASF12:
	.string	"e820"
.LASF71:
	.string	"Cmemset"
.LASF46:
	.string	"position"
.LASF33:
	.string	"Zone"
.LASF59:
	.string	"page"
.LASF29:
	.string	"zone_struct"
.LASF19:
	.string	"pages_length"
.LASF56:
	.string	"TotalMem"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/student/myos/kernel"
.LASF0:
	.string	"memory.c"
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
