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
	subq	$96, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L42:
	leaq	.L42(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L42, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:33: 	unsigned long TotalMem =0;
	.loc 3 33 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:34: 	struct E820 *p =NULL;
	.loc 3 34 15
	movq	$0, -40(%rbp)	#, p
# memory.c:35: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 3 35 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp212
	leaq	(%rbx,%rax), %rax	#, tmp211
	movq	%rax, %rdx	# tmp211,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp213
	addq	%rbx, %rcx	# tmp82, tmp213
	call	*%rcx	# tmp213
.LVL0:
# memory.c:36: 	p=(struct E820 *)0xffff800000007e00;
	.loc 3 36 3
	movabsq	$-140737488323072, %rax	#, tmp479
	movq	%rax, -40(%rbp)	# tmp479, p
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
	movq	-40(%rbp), %rax	# p, tmp214
	movl	16(%rax), %ecx	# p_137->type, _1
	movq	-40(%rbp), %rax	# p, tmp215
	movq	8(%rax), %rdx	# p_137->length, _2
	movq	-40(%rbp), %rax	# p, tmp216
	movq	(%rax), %rax	# p_137->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp218
	leaq	(%rbx,%rax), %rax	#, tmp217
	movq	%rax, %rdx	# tmp217,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp219
	addq	%rbx, %r10	# tmp82, tmp219
	call	*%r10	# tmp219
.LVL1:
# memory.c:41: 		unsigned long tmp =0;
	.loc 3 41 17
	movq	$0, -64(%rbp)	#, tmp
# memory.c:42: 		if(p->type==1){
	.loc 3 42 7
	movq	-40(%rbp), %rax	# p, tmp220
	movl	16(%rax), %eax	# p_137->type, _4
# memory.c:42: 		if(p->type==1){
	.loc 3 42 5
	cmpl	$1, %eax	#, _4
	jne	.L21	#,
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 16
	movq	-40(%rbp), %rax	# p, tmp221
	movq	8(%rax), %rax	# p_137->length, _5
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L21:
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp222
	movl	-44(%rbp), %eax	# i, tmp224
	movslq	%eax, %rdx	# tmp224, tmp223
	addq	%rbx, %rcx	# tmp82, tmp225
	movq	%rdx, %rax	# tmp223, tmp227
	salq	$2, %rax	#, tmp227
	addq	%rdx, %rax	# tmp223, tmp227
	salq	$2, %rax	#, tmp228
	addq	%rcx, %rax	# tmp225, tmp229
	movq	(%rax), %rdx	# memory_management_struct.e820[i_138].address, _6
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 46
	movq	-40(%rbp), %rax	# p, tmp230
	movq	(%rax), %rax	# p_137->address, _7
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp231
	movl	-44(%rbp), %eax	# i, tmp233
	movslq	%eax, %rdx	# tmp233, tmp232
	addq	%rbx, %rsi	# tmp82, tmp234
	movq	%rdx, %rax	# tmp232, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# tmp232, tmp236
	salq	$2, %rax	#, tmp237
	addq	%rsi, %rax	# tmp234, tmp238
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_138].address
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp239
	movl	-44(%rbp), %eax	# i, tmp241
	movslq	%eax, %rdx	# tmp241, tmp240
	movq	%rdx, %rax	# tmp240, tmp242
	salq	$2, %rax	#, tmp242
	addq	%rdx, %rax	# tmp240, tmp242
	salq	$2, %rax	#, tmp243
	addq	%rbx, %rax	# tmp82, tmp244
	addq	%rcx, %rax	# tmp239, tmp245
	addq	$8, %rax	#, tmp246
	movq	(%rax), %rdx	# memory_management_struct.e820[i_138].length, _9
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 45
	movq	-40(%rbp), %rax	# p, tmp247
	movq	8(%rax), %rax	# p_137->length, _10
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp248
	movl	-44(%rbp), %eax	# i, tmp250
	movslq	%eax, %rdx	# tmp250, tmp249
	movq	%rdx, %rax	# tmp249, tmp251
	salq	$2, %rax	#, tmp251
	addq	%rdx, %rax	# tmp249, tmp251
	salq	$2, %rax	#, tmp252
	addq	%rbx, %rax	# tmp82, tmp253
	addq	%rsi, %rax	# tmp248, tmp254
	addq	$8, %rax	#, tmp255
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_138].length
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 42
	movq	-40(%rbp), %rax	# p, tmp256
	movl	16(%rax), %ecx	# p_137->type, _12
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp257
	movl	-44(%rbp), %eax	# i, tmp259
	movslq	%eax, %rdx	# tmp259, tmp258
	addq	%rbx, %rsi	# tmp82, tmp260
	movq	%rdx, %rax	# tmp258, tmp261
	salq	$2, %rax	#, tmp261
	addq	%rdx, %rax	# tmp258, tmp261
	salq	$2, %rax	#, tmp262
	addq	%rsi, %rax	# tmp260, tmp263
	addq	$16, %rax	#, tmp264
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_138].type
# memory.c:48: 		memory_management_struct.e820_length =i;
	.loc 3 48 40
	movl	-44(%rbp), %eax	# i, tmp265
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp266
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:49: 		p++;
	.loc 3 49 4
	addq	$20, -40(%rbp)	#, p
# memory.c:50: 		if(p->type >4){
	.loc 3 50 7
	movq	-40(%rbp), %rax	# p, tmp267
	movl	16(%rax), %eax	# p_158->type, _14
# memory.c:50: 		if(p->type >4){
	.loc 3 50 5
	cmpl	$4, %eax	#, _14
	ja	.L37	#,
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
.L37:
.LBB4:
# memory.c:51: 			break;
	.loc 3 51 4
	nop	
.L23:
.LBE4:
.LBE2:
# memory.c:54: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 3 54 2
	movq	-32(%rbp), %rax	# TotalMem, tmp268
	movq	%rax, %rcx	# tmp268,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp270
	leaq	(%rbx,%rax), %rax	#, tmp269
	movq	%rax, %rdx	# tmp269,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp271
	addq	%rbx, %r8	# tmp82, tmp271
	call	*%r8	# tmp271
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
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp272
	movl	-20(%rbp), %eax	# i, tmp274
	movslq	%eax, %rdx	# tmp274, tmp273
	addq	%rbx, %rcx	# tmp82, tmp275
	movq	%rdx, %rax	# tmp273, tmp276
	salq	$2, %rax	#, tmp276
	addq	%rdx, %rax	# tmp273, tmp276
	salq	$2, %rax	#, tmp277
	addq	%rcx, %rax	# tmp275, tmp278
	addq	$16, %rax	#, tmp279
	movl	(%rax), %eax	# memory_management_struct.e820[i_129].type, _15
# memory.c:58: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 58 5
	cmpl	$1, %eax	#, _15
	jne	.L38	#,
# memory.c:61: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 61 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp280
	movl	-20(%rbp), %eax	# i, tmp282
	movslq	%eax, %rdx	# tmp282, tmp281
	addq	%rbx, %rcx	# tmp82, tmp283
	movq	%rdx, %rax	# tmp281, tmp285
	salq	$2, %rax	#, tmp285
	addq	%rdx, %rax	# tmp281, tmp285
	salq	$2, %rax	#, tmp286
	addq	%rcx, %rax	# tmp283, tmp287
	movq	(%rax), %rax	# memory_management_struct.e820[i_129].address, _16
	addq	$2097151, %rax	#, _17
# memory.c:61: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 61 8
	andq	$-2097152, %rax	#, tmp288
	movq	%rax, -96(%rbp)	# tmp288, start
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp289
	movl	-20(%rbp), %eax	# i, tmp291
	movslq	%eax, %rdx	# tmp291, tmp290
	addq	%rbx, %rcx	# tmp82, tmp292
	movq	%rdx, %rax	# tmp290, tmp294
	salq	$2, %rax	#, tmp294
	addq	%rdx, %rax	# tmp290, tmp294
	salq	$2, %rax	#, tmp295
	addq	%rcx, %rax	# tmp292, tmp296
	movq	(%rax), %rcx	# memory_management_struct.e820[i_129].address, _18
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp297
	movl	-20(%rbp), %eax	# i, tmp299
	movslq	%eax, %rdx	# tmp299, tmp298
	movq	%rdx, %rax	# tmp298, tmp300
	salq	$2, %rax	#, tmp300
	addq	%rdx, %rax	# tmp298, tmp300
	salq	$2, %rax	#, tmp301
	addq	%rbx, %rax	# tmp82, tmp302
	addq	%rsi, %rax	# tmp297, tmp303
	addq	$8, %rax	#, tmp304
	movq	(%rax), %rax	# memory_management_struct.e820[i_129].length, _19
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 49
	addq	%rcx, %rax	# _18, _20
# memory.c:62: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 62 6
	andq	$-2097152, %rax	#, tmp305
	movq	%rax, -104(%rbp)	# tmp305, end
# memory.c:63: 		if(end<=start){
	.loc 3 63 5
	movq	-104(%rbp), %rax	# end, tmp306
	cmpq	%rax, -96(%rbp)	# tmp306, start
	jnb	.L39	#,
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 17
	movq	-104(%rbp), %rax	# end, tmp307
	subq	-96(%rbp), %rax	# start, _21
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 24
	shrq	$21, %rax	#, _22
# memory.c:66: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 66 11
	addq	%rax, -32(%rbp)	# _22, TotalMem
	jmp	.L27	#
.L38:
# memory.c:59: 			continue;
	.loc 3 59 4
	nop	
	jmp	.L27	#
.L39:
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
	movl	-20(%rbp), %eax	# i, tmp308
	cltq
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp309
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _24
# memory.c:56: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 56 11 discriminator 1
	cmpq	%rax, %rdx	# _23, _24
	jnb	.L29	#,
# memory.c:68: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 68 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp310
	movq	-32(%rbp), %rax	# TotalMem, tmp311
	movq	%rdx, %r8	# tmp310,
	movq	%rax, %rcx	# tmp311,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp313
	leaq	(%rbx,%rax), %rax	#, tmp312
	movq	%rax, %rdx	# tmp312,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp314
	addq	%rbx, %r9	# tmp82, tmp314
	call	*%r9	# tmp314
.LVL3:
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 65
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp315
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _25
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp316
	leaq	(%rbx,%rax), %rcx	#, tmp317
	movq	%rdx, %rax	# _25, tmp319
	salq	$2, %rax	#, tmp319
	addq	%rdx, %rax	# _25, tmp319
	salq	$2, %rax	#, tmp320
	addq	%rcx, %rax	# tmp317, tmp321
	movq	(%rax), %rcx	# memory_management_struct.e820[_25].address, _26
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 141
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp322
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _27
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 154
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp323
	movq	%rdx, %rax	# _27, tmp324
	salq	$2, %rax	#, tmp324
	addq	%rdx, %rax	# _27, tmp324
	salq	$2, %rax	#, tmp325
	addq	%rbx, %rax	# tmp82, tmp326
	addq	%rsi, %rax	# tmp323, tmp327
	addq	$8, %rax	#, tmp328
	movq	(%rax), %rax	# memory_management_struct.e820[_27].length, _28
# memory.c:69: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 69 10
	addq	%rcx, %rax	# _26, tmp329
	movq	%rax, -32(%rbp)	# tmp329, TotalMem
# memory.c:70: 	color_printk(ORANGE,BLACK,"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 70 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp330
	movq	-32(%rbp), %rax	# TotalMem, tmp331
	movq	%rdx, %r8	# tmp330,
	movq	%rax, %rcx	# tmp331,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp333
	leaq	(%rbx,%rax), %rax	#, tmp332
	movq	%rax, %rdx	# tmp332,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp334
	addq	%rbx, %r9	# tmp82, tmp334
	call	*%r9	# tmp334
.LVL4:
# memory.c:79: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 79 79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp335
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
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp336
	movq	%rdx, 648(%rbx,%rax)	# _32, memory_management_struct.bits_map
# memory.c:86: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 86 45
	movq	-32(%rbp), %rax	# TotalMem, tmp337
	shrq	$21, %rax	#, tmp337
	movq	%rax, %rdx	# tmp337, _33
# memory.c:86: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 86 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp338
	movq	%rdx, 656(%rbx,%rax)	# _33, memory_management_struct.bits_size
# memory.c:87: 		memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 87 42
	movq	-32(%rbp), %rax	# TotalMem, tmp339
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
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp340
	movq	%rdx, 664(%rbx,%rax)	# _37, memory_management_struct.bits_length
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 73
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp341
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _38
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 2
	movq	%rax, %rdx	# _38, _39
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 34
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp342
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _40
# memory.c:88: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 88 2
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _40,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp344
	leaq	(%rbx,%rax), %rax	#, tmp343
	call	*%rax	# tmp343
.LVL5:
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp345
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _41
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 56
	movq	%rax, %rdx	# _41, _42
# memory.c:106: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 106 129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp346
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
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp347
	movq	%rdx, 672(%rbx,%rax)	# _47, memory_management_struct.pages_struct
# memory.c:107: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 107 45
	movq	-32(%rbp), %rax	# TotalMem, tmp348
	shrq	$21, %rax	#, tmp348
	movq	%rax, %rdx	# tmp348, _48
# memory.c:107: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 107 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp349
	movq	%rdx, 680(%rbx,%rax)	# _48, memory_management_struct.pages_size
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 49
	movq	-32(%rbp), %rax	# TotalMem, tmp350
	shrq	$21, %rax	#, tmp350
	movq	%rax, %rdx	# tmp350, _49
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 65
	movq	%rdx, %rax	# _49, tmp351
	salq	$2, %rax	#, tmp351
	addq	%rdx, %rax	# _49, tmp351
	salq	$3, %rax	#, tmp352
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 98
	addq	$7, %rax	#, _51
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 101
	andq	$-8, %rax	#, _51
	movq	%rax, %rdx	# _51, _52
# memory.c:113: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 113 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp353
	movq	%rdx, 688(%rbx,%rax)	# _52, memory_management_struct.pages_length
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp354
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _53
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 1
	movq	%rax, %rdx	# _53, _54
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp355
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _55
# memory.c:115: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 115 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _55,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp357
	leaq	(%rbx,%rax), %rax	#, tmp356
	call	*%rax	# tmp356
.LVL6:
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 94
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp358
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _56
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 55
	movq	%rax, %rdx	# _56, _57
# memory.c:117: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 117 132
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp359
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
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp360
	movq	%rdx, 696(%rbx,%rax)	# _62, memory_management_struct.zones_struct
# memory.c:119: memory_management_struct.zones_size=0;
	.loc 3 119 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp361
	movq	$0, 704(%rbx,%rax)	#, memory_management_struct.zones_size
# memory.c:120: memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 120 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp362
	movq	$400, 712(%rbx,%rax)	#, memory_management_struct.zones_length
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp363
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _63
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 1
	movq	%rax, %rdx	# _63, _64
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp364
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _65
# memory.c:121: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 121 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _65,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp366
	leaq	(%rbx,%rax), %rax	#, tmp365
	call	*%rax	# tmp365
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
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp367
	movl	-20(%rbp), %eax	# i, tmp369
	movslq	%eax, %rdx	# tmp369, tmp368
	addq	%rbx, %rcx	# tmp82, tmp370
	movq	%rdx, %rax	# tmp368, tmp371
	salq	$2, %rax	#, tmp371
	addq	%rdx, %rax	# tmp368, tmp371
	salq	$2, %rax	#, tmp372
	addq	%rcx, %rax	# tmp370, tmp373
	addq	$16, %rax	#, tmp374
	movl	(%rax), %eax	# memory_management_struct.e820[i_130].type, _66
# memory.c:126: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 126 4
	cmpl	$1, %eax	#, _66
	jne	.L40	#,
# memory.c:129: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 129 8
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp375
	movl	-20(%rbp), %eax	# i, tmp377
	movslq	%eax, %rdx	# tmp377, tmp376
	addq	%rbx, %rcx	# tmp82, tmp378
	movq	%rdx, %rax	# tmp376, tmp380
	salq	$2, %rax	#, tmp380
	addq	%rdx, %rax	# tmp376, tmp380
	salq	$2, %rax	#, tmp381
	addq	%rcx, %rax	# tmp378, tmp382
	movq	(%rax), %rax	# memory_management_struct.e820[i_130].address, _67
	addq	$2097151, %rax	#, _68
# memory.c:129: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 129 7
	andq	$-2097152, %rax	#, tmp383
	movq	%rax, -72(%rbp)	# tmp383, start
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 40
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp384
	movl	-20(%rbp), %eax	# i, tmp386
	movslq	%eax, %rdx	# tmp386, tmp385
	addq	%rbx, %rcx	# tmp82, tmp387
	movq	%rdx, %rax	# tmp385, tmp389
	salq	$2, %rax	#, tmp389
	addq	%rdx, %rax	# tmp385, tmp389
	salq	$2, %rax	#, tmp390
	addq	%rcx, %rax	# tmp387, tmp391
	movq	(%rax), %rcx	# memory_management_struct.e820[i_130].address, _69
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 81
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp392
	movl	-20(%rbp), %eax	# i, tmp394
	movslq	%eax, %rdx	# tmp394, tmp393
	movq	%rdx, %rax	# tmp393, tmp395
	salq	$2, %rax	#, tmp395
	addq	%rdx, %rax	# tmp393, tmp395
	salq	$2, %rax	#, tmp396
	addq	%rbx, %rax	# tmp82, tmp397
	addq	%rsi, %rax	# tmp392, tmp398
	addq	$8, %rax	#, tmp399
	movq	(%rax), %rax	# memory_management_struct.e820[i_130].length, _70
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 48
	addq	%rcx, %rax	# _69, _71
# memory.c:130: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 130 5
	andq	$-2097152, %rax	#, tmp400
	movq	%rax, -80(%rbp)	# tmp400, end
# memory.c:131: 	if(end<=start){
	.loc 3 131 4
	movq	-80(%rbp), %rax	# end, tmp401
	cmpq	%rax, -72(%rbp)	# tmp401, start
	jnb	.L41	#,
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 28
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp402
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _72
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 66
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp403
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _73
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 41
	movq	%rdx, %rax	# _73, tmp404
	salq	$2, %rax	#, tmp404
	addq	%rdx, %rax	# _73, tmp404
	salq	$4, %rax	#, tmp405
# memory.c:135: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 135 3
	addq	%rcx, %rax	# _72, tmp406
	movq	%rax, -88(%rbp)	# tmp406, z
# memory.c:136: 	memory_management_struct.zones_size++;
	.loc 3 136 26
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp407
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _75
# memory.c:136: 	memory_management_struct.zones_size++;
	.loc 3 136 37
	leaq	1(%rax), %rdx	#, _76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp408
	movq	%rdx, 704(%rbx,%rax)	# _76, memory_management_struct.zones_size
# memory.c:137: 	z->zone_start_address=start;
	.loc 3 137 23
	movq	-88(%rbp), %rax	# z, tmp409
	movq	-72(%rbp), %rdx	# start, tmp410
	movq	%rdx, 16(%rax)	# tmp410, z_190->zone_start_address
# memory.c:138: 	z->zone_end_address=end;
	.loc 3 138 21
	movq	-88(%rbp), %rax	# z, tmp411
	movq	-80(%rbp), %rdx	# end, tmp412
	movq	%rdx, 24(%rax)	# tmp412, z_190->zone_end_address
# memory.c:139: 	z->zone_length=end-start;
	.loc 3 139 20
	movq	-80(%rbp), %rax	# end, tmp413
	subq	-72(%rbp), %rax	# start, tmp413
	movq	%rax, %rdx	# tmp413, _77
# memory.c:139: 	z->zone_length=end-start;
	.loc 3 139 16
	movq	-88(%rbp), %rax	# z, tmp414
	movq	%rdx, 32(%rax)	# _77, z_190->zone_length
# memory.c:140: 	z->page_using_count=0;
	.loc 3 140 21
	movq	-88(%rbp), %rax	# z, tmp415
	movq	$0, 56(%rax)	#, z_190->page_using_count
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 25
	movq	-80(%rbp), %rax	# end, tmp416
	subq	-72(%rbp), %rax	# start, _78
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 32
	shrq	$21, %rax	#, _78
	movq	%rax, %rdx	# _78, _79
# memory.c:141: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 141 20
	movq	-88(%rbp), %rax	# z, tmp417
	movq	%rdx, 64(%rax)	# _79, z_190->page_free_count
# memory.c:142: 	z->total_pages_link=0;
	.loc 3 142 21
	movq	-88(%rbp), %rax	# z, tmp418
	movq	$0, 72(%rax)	#, z_190->total_pages_link
# memory.c:143: 	z->attribute=0;
	.loc 3 143 14
	movq	-88(%rbp), %rax	# z, tmp419
	movq	$0, 40(%rax)	#, z_190->attribute
# memory.c:144: 	z->GMD_struct=&memory_management_struct;
	.loc 3 144 15
	movq	-88(%rbp), %rax	# z, tmp420
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp422
	leaq	(%rbx,%rdx), %rdx	#, tmp421
	movq	%rdx, 48(%rax)	# tmp421, z_190->GMD_struct
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 22
	movq	-80(%rbp), %rax	# end, tmp423
	subq	-72(%rbp), %rax	# start, _80
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 29
	shrq	$21, %rax	#, _80
	movq	%rax, %rdx	# _80, _81
# memory.c:145: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 17
	movq	-88(%rbp), %rax	# z, tmp424
	movq	%rdx, 8(%rax)	# _81, z_190->pages_length
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 56
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp425
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _82
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 77
	movq	-72(%rbp), %rax	# start, tmp426
	shrq	$21, %rax	#, tmp426
	movq	%rax, %rdx	# tmp426, _83
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 69
	movq	%rdx, %rax	# _83, tmp427
	salq	$2, %rax	#, tmp427
	addq	%rdx, %rax	# _83, tmp427
	salq	$3, %rax	#, tmp428
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 17
	leaq	(%rcx,%rax), %rdx	#, _85
# memory.c:146: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 146 16
	movq	-88(%rbp), %rax	# z, tmp429
	movq	%rdx, (%rax)	# _85, z_190->pages_group
# memory.c:149: 	p=z->pages_group;
	.loc 3 149 3
	movq	-88(%rbp), %rax	# z, tmp430
	movq	(%rax), %rax	# z_190->pages_group, tmp431
	movq	%rax, -56(%rbp)	# tmp431, p
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 7
	movl	$0, -24(%rbp)	#, j
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 2
	jmp	.L34	#
.L35:
# memory.c:151: 		p->zone_struct=z;
	.loc 3 151 17
	movq	-56(%rbp), %rax	# p, tmp432
	movq	-88(%rbp), %rdx	# z, tmp433
	movq	%rdx, (%rax)	# tmp433, p_139->zone_struct
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 36
	movl	-24(%rbp), %eax	# j, tmp434
	cltq
	salq	$21, %rax	#, _86
	movq	%rax, %rdx	# _86, _87
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 23
	movq	-72(%rbp), %rax	# start, tmp435
	addq	%rax, %rdx	# tmp435, _88
# memory.c:152: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 152 17
	movq	-56(%rbp), %rax	# p, tmp436
	movq	%rdx, 8(%rax)	# _88, p_139->PHY_address
# memory.c:153: 		p->attribute=0;
	.loc 3 153 15
	movq	-56(%rbp), %rax	# p, tmp437
	movq	$0, 16(%rax)	#, p_139->attribute
# memory.c:154: 		p->reference_count=0;
	.loc 3 154 21
	movq	-56(%rbp), %rax	# p, tmp438
	movq	$0, 24(%rax)	#, p_139->reference_count
# memory.c:155: 		p->age=0;
	.loc 3 155 9
	movq	-56(%rbp), %rax	# p, tmp439
	movq	$0, 32(%rax)	#, p_139->age
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp440
	movq	648(%rbx,%rax), %rdx	# memory_management_struct.bits_map, _89
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 42
	movq	-56(%rbp), %rax	# p, tmp441
	movq	8(%rax), %rax	# p_139->PHY_address, _90
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 3
	shrq	$27, %rax	#, _91
	salq	$3, %rax	#, _92
	addq	%rdx, %rax	# _89, _93
	movq	(%rax), %rdx	# *_93, _94
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 86
	movq	-56(%rbp), %rax	# p, tmp442
	movq	8(%rax), %rax	# p_139->PHY_address, _95
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 99
	shrq	$21, %rax	#, _96
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 115
	andl	$63, %eax	#, _98
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 82
	movl	$1, %esi	#, tmp443
	movl	%eax, %ecx	# _98, tmp490
	salq	%cl, %rsi	# tmp490, _99
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp444
	movq	648(%rbx,%rax), %rcx	# memory_management_struct.bits_map, _100
# memory.c:157: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 157 42
	movq	-56(%rbp), %rax	# p, tmp445
	movq	8(%rax), %rax	# p_139->PHY_address, _101
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
	movl	-24(%rbp), %eax	# j, tmp446
	movslq	%eax, %rdx	# tmp446, _106
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 13 discriminator 1
	movq	-88(%rbp), %rax	# z, tmp447
	movq	8(%rax), %rax	# z_190->pages_length, _107
# memory.c:150: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 150 11 discriminator 1
	cmpq	%rax, %rdx	# _107, _106
	jb	.L35	#,
	jmp	.L32	#
.L40:
# memory.c:127: 		continue;
	.loc 3 127 3
	nop	
	jmp	.L32	#
.L41:
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
	movl	-20(%rbp), %eax	# i, tmp448
	cltq
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 36 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp449
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _109
# memory.c:122: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 122 10 discriminator 1
	cmpq	%rax, %rdx	# _108, _109
	jnb	.L36	#,
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp450
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _110
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 76
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp451
	movq	696(%rbx,%rdx), %rdx	# memory_management_struct.zones_struct, _111
# memory.c:160: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 160 51
	movq	%rdx, (%rax)	# _111, _110->zone_struct
# memory.c:161: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 161 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp452
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _112
# memory.c:161: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 161 51
	movq	$0, 8(%rax)	#, _112->PHY_address
# memory.c:162: memory_management_struct.pages_struct->attribute=0;
	.loc 3 162 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp453
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _113
# memory.c:162: memory_management_struct.pages_struct->attribute=0;
	.loc 3 162 49
	movq	$0, 16(%rax)	#, _113->attribute
# memory.c:163: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 163 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp454
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _114
# memory.c:163: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 163 55
	movq	$0, 24(%rax)	#, _114->reference_count
# memory.c:164: memory_management_struct.pages_struct->age=0;
	.loc 3 164 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp455
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _115
# memory.c:164: memory_management_struct.pages_struct->age=0;
	.loc 3 164 43
	movq	$0, 32(%rax)	#, _115->age
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 64
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp456
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _116
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 75
	movq	%rdx, %rax	# _116, tmp457
	salq	$2, %rax	#, tmp457
	addq	%rdx, %rax	# _116, tmp457
	salq	$4, %rax	#, tmp458
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 108
	addq	$7, %rax	#, _118
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 111
	andq	$-8, %rax	#, _118
	movq	%rax, %rdx	# _118, _119
# memory.c:165: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 165 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp459
	movq	%rdx, 712(%rbx,%rax)	# _119, memory_management_struct.zones_length
# memory.c:167: color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
	.loc 3 167 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp460
	movq	664(%rbx,%rax), %rcx	# memory_management_struct.bits_length, _120
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp461
	movq	656(%rbx,%rax), %rdx	# memory_management_struct.bits_size, _121
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp462
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _122
	movq	%rcx, %r9	# _120,
	movq	%rdx, %r8	# _121,
	movq	%rax, %rcx	# _122,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp464
	leaq	(%rbx,%rax), %rax	#, tmp463
	movq	%rax, %rdx	# tmp463,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp465
	addq	%rbx, %r10	# tmp82, tmp465
	call	*%r10	# tmp465
.LVL8:
# memory.c:168: color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
	.loc 3 168 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp466
	movq	688(%rbx,%rax), %rcx	# memory_management_struct.pages_length, _123
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp467
	movq	680(%rbx,%rax), %rdx	# memory_management_struct.pages_size, _124
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp468
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _125
	movq	%rcx, %r9	# _123,
	movq	%rdx, %r8	# _124,
	movq	%rax, %rcx	# _125,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp470
	leaq	(%rbx,%rax), %rax	#, tmp469
	movq	%rax, %rdx	# tmp469,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp471
	addq	%rbx, %r10	# tmp82, tmp471
	call	*%r10	# tmp471
.LVL9:
# memory.c:169: color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);
	.loc 3 169 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp472
	movq	712(%rbx,%rax), %rcx	# memory_management_struct.zones_length, _126
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp473
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _127
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp474
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _128
	movq	%rcx, %r9	# _126,
	movq	%rdx, %r8	# _127,
	movq	%rax, %rcx	# _128,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp476
	leaq	(%rbx,%rax), %rax	#, tmp475
	movq	%rax, %rdx	# tmp475,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp477
	addq	%rbx, %r10	# tmp82, tmp477
	call	*%r10	# tmp477
.LVL10:
# memory.c:198: }
	.loc 3 198 1
	nop	
	addq	$96, %rsp	#,
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
	.long	0x684
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x10
	.long	.LASF65
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
	.uleb128 0x8
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
	.uleb128 0x2
	.long	.LASF13
	.byte	0xa7
	.byte	0x10
	.long	0xb2
	.value	0x280
	.uleb128 0x2
	.long	.LASF14
	.byte	0xb3
	.byte	0x12
	.long	0x1a8
	.value	0x288
	.uleb128 0x2
	.long	.LASF15
	.byte	0xb4
	.byte	0x10
	.long	0xb2
	.value	0x290
	.uleb128 0x2
	.long	.LASF16
	.byte	0xb5
	.byte	0x10
	.long	0xb2
	.value	0x298
	.uleb128 0x2
	.long	.LASF17
	.byte	0xbe
	.byte	0x10
	.long	0x1fb
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF18
	.byte	0xbf
	.byte	0x10
	.long	0xb2
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF19
	.byte	0xc0
	.byte	0x10
	.long	0xb2
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF20
	.byte	0xc8
	.byte	0x10
	.long	0x28f
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF21
	.byte	0xc9
	.byte	0x10
	.long	0xb2
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF22
	.byte	0xca
	.byte	0x10
	.long	0xb2
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF23
	.byte	0xd7
	.byte	0x10
	.long	0xb2
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF24
	.byte	0xd8
	.byte	0x10
	.long	0xb2
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF25
	.byte	0xd9
	.byte	0x10
	.long	0xb2
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF26
	.byte	0xda
	.byte	0x10
	.long	0xb2
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF27
	.byte	0xdc
	.byte	0x10
	.long	0xb2
	.value	0x2f0
	.byte	0
	.uleb128 0xb
	.long	0x7e
	.long	0x1a8
	.uleb128 0xc
	.long	0xb2
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	0xb2
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0xb
	.long	0x2dd
	.long	0x2dd
	.uleb128 0xc
	.long	0xb2
	.byte	0xff
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.long	.LASF66
	.byte	0x5
	.byte	0x3b
	.byte	0x5
	.long	0x44
	.long	0x3dc
	.uleb128 0xd
	.long	0x77
	.uleb128 0xd
	.long	0x77
	.uleb128 0xd
	.long	0x3dc
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.long	0x3a1
	.uleb128 0x19
	.long	.LASF67
	.byte	0x3
	.byte	0x1e
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x586
	.uleb128 0x3
	.string	"i"
	.byte	0x3
	.byte	0x1f
	.byte	0x6
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"j"
	.byte	0x3
	.byte	0x1f
	.byte	0x8
	.long	0x44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF56
	.byte	0x3
	.byte	0x21
	.byte	0x10
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.byte	0x22
	.byte	0xf
	.long	0x586
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x47b
	.uleb128 0x3
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
	.uleb128 0x3
	.string	"tmp"
	.byte	0x3
	.byte	0x29
	.byte	0x11
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.quad	.LVL1
	.long	0x3bb
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x4b1
	.uleb128 0x9
	.long	.LASF57
	.byte	0x3
	.byte	0x39
	.byte	0x11
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.string	"end"
	.byte	0x3
	.byte	0x39
	.byte	0x17
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0xe
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x503
	.uleb128 0x9
	.long	.LASF57
	.byte	0x3
	.byte	0x7b
	.byte	0x10
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.string	"end"
	.byte	0x3
	.byte	0x7b
	.byte	0x17
	.long	0xb2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.string	"z"
	.byte	0x3
	.byte	0x7c
	.byte	0xf
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.byte	0x7d
	.byte	0xf
	.long	0x1fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x4
	.quad	.LVL0
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL2
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL3
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL4
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL5
	.long	0x5fe
	.uleb128 0x4
	.quad	.LVL6
	.long	0x5fe
	.uleb128 0x4
	.quad	.LVL7
	.long	0x5fe
	.uleb128 0x4
	.quad	.LVL8
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL9
	.long	0x3bb
	.uleb128 0x4
	.quad	.LVL10
	.long	0x3bb
	.byte	0
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x3
	.byte	0x5
	.byte	0xf
	.long	0xb2
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cc
	.uleb128 0xa
	.long	.LASF58
	.byte	0x3
	.byte	0x5
	.byte	0x27
	.long	0x1fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF59
	.byte	0x3
	.byte	0x5
	.byte	0x3a
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x2
	.byte	0x88
	.byte	0x17
	.long	0x1a8
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fe
	.uleb128 0x3
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
	.long	.LASF70
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.long	0x2c5
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x67b
	.uleb128 0xa
	.long	.LASF60
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
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.byte	0xf9
	.byte	0x43
	.long	0x67b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"ptr"
	.byte	0x1
	.byte	0xfb
	.byte	0x14
	.long	0x682
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF62
	.byte	0x1
	.byte	0xfc
	.byte	0x13
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF63
	.byte	0x1
	.value	0x10b
	.byte	0xa
	.long	0x67b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF64
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
.LASF62:
	.string	"pattern"
.LASF60:
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
.LASF66:
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
.LASF67:
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
.LASF68:
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
.LASF54:
	.string	"FB_length"
.LASF59:
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
.LASF61:
	.string	"Count"
.LASF10:
	.string	"E820"
.LASF24:
	.string	"end_code"
.LASF4:
	.string	"ZONE_UNMAPED_INDEX"
.LASF55:
	.string	"char"
.LASF64:
	.string	"long int"
.LASF65:
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
.LASF63:
	.string	"remaining"
.LASF69:
	.string	"Get_gdt"
.LASF22:
	.string	"zones_length"
.LASF12:
	.string	"e820"
.LASF70:
	.string	"Cmemset"
.LASF46:
	.string	"position"
.LASF33:
	.string	"Zone"
.LASF58:
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
