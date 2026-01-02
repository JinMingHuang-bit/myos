	.file	"memory.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/workspace/myos/kernel" "memory.c"
	.globl	memory_management_struct
	.bss
	.align 32
	.type	memory_management_struct, @object
	.size	memory_management_struct, 760
memory_management_struct:
	.zero	760
	.text
	.type	Cmemset, @function
Cmemset:
.LFB12:
	.file 1 "lib.h"
	.loc 1 293 1
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
# lib.h:294:     unsigned char *ptr = (unsigned char *)Address;
	.loc 1 294 20
	movq	-40(%rbp), %rax	# Address, tmp95
	movq	%rax, -8(%rbp)	# tmp95, ptr
# lib.h:295:     unsigned long pattern = C;
	.loc 1 295 19
	movzbl	-44(%rbp), %eax	# C, tmp96
	movq	%rax, -24(%rbp)	# tmp96, pattern
# lib.h:306:     pattern |= (pattern << 8);
	.loc 1 306 25
	movq	-24(%rbp), %rax	# pattern, tmp97
	salq	$8, %rax	#, _1
# lib.h:306:     pattern |= (pattern << 8);
	.loc 1 306 13
	orq	%rax, -24(%rbp)	# _1, pattern
# lib.h:307:     pattern |= (pattern << 16);
	.loc 1 307 25
	movq	-24(%rbp), %rax	# pattern, tmp98
	salq	$16, %rax	#, _2
# lib.h:307:     pattern |= (pattern << 16);
	.loc 1 307 13
	orq	%rax, -24(%rbp)	# _2, pattern
# lib.h:308:     pattern |= (pattern << 32);
	.loc 1 308 25
	movq	-24(%rbp), %rax	# pattern, tmp99
	salq	$32, %rax	#, _3
# lib.h:308:     pattern |= (pattern << 32);
	.loc 1 308 13
	orq	%rax, -24(%rbp)	# _3, pattern
# lib.h:310:     long remaining = Count;
	.loc 1 310 10
	movq	-56(%rbp), %rax	# Count, tmp100
	movq	%rax, -16(%rbp)	# tmp100, remaining
# lib.h:313:     while (remaining >= 8) {
	.loc 1 313 11
	jmp	.L2	#
.L3:
# lib.h:314:         *((unsigned long *)ptr) = pattern;
	.loc 1 314 33
	movq	-8(%rbp), %rax	# ptr, tmp101
	movq	-24(%rbp), %rdx	# pattern, tmp102
	movq	%rdx, (%rax)	# tmp102, MEM[(long unsigned int *)ptr_9]
# lib.h:315:         ptr += 8;
	.loc 1 315 13
	addq	$8, -8(%rbp)	#, ptr
# lib.h:316:         remaining -= 8;
	.loc 1 316 19
	subq	$8, -16(%rbp)	#, remaining
.L2:
# lib.h:313:     while (remaining >= 8) {
	.loc 1 313 22
	cmpq	$7, -16(%rbp)	#, remaining
	jg	.L3	#,
# lib.h:320:     if (remaining & 4) {
	.loc 1 320 19
	movq	-16(%rbp), %rax	# remaining, tmp103
	andl	$4, %eax	#, _4
# lib.h:320:     if (remaining & 4) {
	.loc 1 320 8
	testq	%rax, %rax	# _4
	je	.L4	#,
# lib.h:321:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 321 34
	movq	-24(%rbp), %rax	# pattern, tmp104
	movl	%eax, %edx	# tmp104, _5
# lib.h:321:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 321 32
	movq	-8(%rbp), %rax	# ptr, tmp105
	movl	%edx, (%rax)	# _5, MEM[(unsigned int *)ptr_9]
# lib.h:322:         ptr += 4;
	.loc 1 322 13
	addq	$4, -8(%rbp)	#, ptr
.L4:
# lib.h:326:     if (remaining & 2) {
	.loc 1 326 19
	movq	-16(%rbp), %rax	# remaining, tmp106
	andl	$2, %eax	#, _6
# lib.h:326:     if (remaining & 2) {
	.loc 1 326 8
	testq	%rax, %rax	# _6
	je	.L5	#,
# lib.h:327:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 327 36
	movq	-24(%rbp), %rax	# pattern, tmp107
	movl	%eax, %edx	# tmp107, _7
# lib.h:327:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 327 34
	movq	-8(%rbp), %rax	# ptr, tmp108
	movw	%dx, (%rax)	# _7, MEM[(short unsigned int *)ptr_10]
# lib.h:328:         ptr += 2;
	.loc 1 328 13
	addq	$2, -8(%rbp)	#, ptr
.L5:
# lib.h:332:     if (remaining & 1) {
	.loc 1 332 19
	movq	-16(%rbp), %rax	# remaining, tmp109
	andl	$1, %eax	#, _8
# lib.h:332:     if (remaining & 1) {
	.loc 1 332 8
	testq	%rax, %rax	# _8
	je	.L6	#,
# lib.h:333:         *ptr = C;
	.loc 1 333 14
	movq	-8(%rbp), %rax	# ptr, tmp110
	movzbl	-44(%rbp), %edx	# C, tmp111
	movb	%dl, (%rax)	# tmp111, *ptr_11
.L6:
# lib.h:336:     return Address;
	.loc 1 336 12
	movq	-40(%rbp), %rax	# Address, _32
# lib.h:337: }
	.loc 1 337 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	Cmemset, .-Cmemset
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
	.globl	ZONE_DMA_INDEX
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
.LFB34:
	.file 2 "memory.c"
	.loc 2 10 19
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
.L30:
	leaq	.L30(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L30, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:13: 	unsigned long TotalMem =0;
	.loc 2 13 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:14: 	struct E820 *p =NULL;
	.loc 2 14 15
	movq	$0, -40(%rbp)	#, p
# memory.c:15: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 2 15 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp214
	leaq	(%rbx,%rax), %rax	#, tmp213
	movq	%rax, %rdx	# tmp213,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp215
	addq	%rbx, %rcx	# tmp82, tmp215
	call	*%rcx	# tmp215
.LVL0:
# memory.c:16: 	p=(struct E820 *)0xffff800000007e00;
	.loc 2 16 3
	movabsq	$-140737488323072, %rax	#, tmp483
	movq	%rax, -40(%rbp)	# tmp483, p
.LBB2:
# memory.c:17: 	for (int i = 0; i < 32; i++)
	.loc 2 17 11
	movl	$0, -44(%rbp)	#, i
# memory.c:17: 	for (int i = 0; i < 32; i++)
	.loc 2 17 2
	jmp	.L10	#
.L13:
.LBB3:
# memory.c:20: 		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
	.loc 2 20 3
	movq	-40(%rbp), %rax	# p, tmp216
	movl	16(%rax), %ecx	# p_139->type, _1
	movq	-40(%rbp), %rax	# p, tmp217
	movq	8(%rax), %rdx	# p_139->length, _2
	movq	-40(%rbp), %rax	# p, tmp218
	movq	(%rax), %rax	# p_139->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp220
	leaq	(%rbx,%rax), %rax	#, tmp219
	movq	%rax, %rdx	# tmp219,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp221
	addq	%rbx, %r10	# tmp82, tmp221
	call	*%r10	# tmp221
.LVL1:
# memory.c:21: 		unsigned long tmp =0;
	.loc 2 21 17
	movq	$0, -64(%rbp)	#, tmp
# memory.c:22: 		if(p->type==1){
	.loc 2 22 7
	movq	-40(%rbp), %rax	# p, tmp222
	movl	16(%rax), %eax	# p_139->type, _4
# memory.c:22: 		if(p->type==1){
	.loc 2 22 5
	cmpl	$1, %eax	#, _4
	jne	.L11	#,
# memory.c:23: 			TotalMem +=p->length;
	.loc 2 23 16
	movq	-40(%rbp), %rax	# p, tmp223
	movq	8(%rax), %rax	# p_139->length, _5
# memory.c:23: 			TotalMem +=p->length;
	.loc 2 23 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L11:
# memory.c:25: 		memory_management_struct.e820[i].address+=p->address;
	.loc 2 25 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp224
	movl	-44(%rbp), %eax	# i, tmp226
	movslq	%eax, %rdx	# tmp226, tmp225
	addq	%rbx, %rcx	# tmp82, tmp227
	movq	%rdx, %rax	# tmp225, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# tmp225, tmp229
	salq	$2, %rax	#, tmp230
	addq	%rcx, %rax	# tmp227, tmp231
	movq	(%rax), %rdx	# memory_management_struct.e820[i_140].address, _6
# memory.c:25: 		memory_management_struct.e820[i].address+=p->address;
	.loc 2 25 46
	movq	-40(%rbp), %rax	# p, tmp232
	movq	(%rax), %rax	# p_139->address, _7
# memory.c:25: 		memory_management_struct.e820[i].address+=p->address;
	.loc 2 25 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp233
	movl	-44(%rbp), %eax	# i, tmp235
	movslq	%eax, %rdx	# tmp235, tmp234
	addq	%rbx, %rsi	# tmp82, tmp236
	movq	%rdx, %rax	# tmp234, tmp238
	salq	$2, %rax	#, tmp238
	addq	%rdx, %rax	# tmp234, tmp238
	salq	$2, %rax	#, tmp239
	addq	%rsi, %rax	# tmp236, tmp240
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_140].address
# memory.c:26: 		memory_management_struct.e820[i].length+=p->length;
	.loc 2 26 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp241
	movl	-44(%rbp), %eax	# i, tmp243
	movslq	%eax, %rdx	# tmp243, tmp242
	movq	%rdx, %rax	# tmp242, tmp244
	salq	$2, %rax	#, tmp244
	addq	%rdx, %rax	# tmp242, tmp244
	salq	$2, %rax	#, tmp245
	addq	%rbx, %rax	# tmp82, tmp246
	addq	%rcx, %rax	# tmp241, tmp247
	addq	$8, %rax	#, tmp248
	movq	(%rax), %rdx	# memory_management_struct.e820[i_140].length, _9
# memory.c:26: 		memory_management_struct.e820[i].length+=p->length;
	.loc 2 26 45
	movq	-40(%rbp), %rax	# p, tmp249
	movq	8(%rax), %rax	# p_139->length, _10
# memory.c:26: 		memory_management_struct.e820[i].length+=p->length;
	.loc 2 26 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp250
	movl	-44(%rbp), %eax	# i, tmp252
	movslq	%eax, %rdx	# tmp252, tmp251
	movq	%rdx, %rax	# tmp251, tmp253
	salq	$2, %rax	#, tmp253
	addq	%rdx, %rax	# tmp251, tmp253
	salq	$2, %rax	#, tmp254
	addq	%rbx, %rax	# tmp82, tmp255
	addq	%rsi, %rax	# tmp250, tmp256
	addq	$8, %rax	#, tmp257
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_140].length
# memory.c:27: 		memory_management_struct.e820[i].type=p->type;
	.loc 2 27 42
	movq	-40(%rbp), %rax	# p, tmp258
	movl	16(%rax), %ecx	# p_139->type, _12
# memory.c:27: 		memory_management_struct.e820[i].type=p->type;
	.loc 2 27 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp259
	movl	-44(%rbp), %eax	# i, tmp261
	movslq	%eax, %rdx	# tmp261, tmp260
	addq	%rbx, %rsi	# tmp82, tmp262
	movq	%rdx, %rax	# tmp260, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# tmp260, tmp263
	salq	$2, %rax	#, tmp264
	addq	%rsi, %rax	# tmp262, tmp265
	addq	$16, %rax	#, tmp266
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_140].type
# memory.c:28: 		memory_management_struct.e820_length =i;
	.loc 2 28 40
	movl	-44(%rbp), %eax	# i, tmp267
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp268
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:29: 		p++;
	.loc 2 29 4
	addq	$20, -40(%rbp)	#, p
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 7
	movq	-40(%rbp), %rax	# p, tmp269
	movl	16(%rax), %eax	# p_160->type, _14
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 5
	cmpl	$4, %eax	#, _14
	ja	.L12	#,
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 20 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp270
	movq	8(%rax), %rax	# p_160->length, _15
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 17 discriminator 1
	testq	%rax, %rax	# _15
	je	.L12	#,
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 36 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp271
	movl	16(%rax), %eax	# p_160->type, _16
# memory.c:30: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 2 30 32 discriminator 2
	testl	%eax, %eax	# _16
	je	.L12	#,
.LBE3:
# memory.c:17: 	for (int i = 0; i < 32; i++)
	.loc 2 17 27 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L10:
# memory.c:17: 	for (int i = 0; i < 32; i++)
	.loc 2 17 20 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L13	#,
.L12:
.LBE2:
# memory.c:34: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 2 34 2
	movq	-32(%rbp), %rax	# TotalMem, tmp272
	movq	%rax, %rcx	# tmp272,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp274
	leaq	(%rbx,%rax), %rax	#, tmp273
	movq	%rax, %rdx	# tmp273,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp275
	addq	%rbx, %r8	# tmp82, tmp275
	call	*%r8	# tmp275
.LVL2:
# memory.c:35: 	TotalMem=0;
	.loc 2 35 10
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 7
	movl	$0, -20(%rbp)	#, i
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 2
	jmp	.L14	#
.L18:
.LBB4:
# memory.c:39: 		if(memory_management_struct.e820[i].type!=1){
	.loc 2 39 38
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp276
	movl	-20(%rbp), %eax	# i, tmp278
	movslq	%eax, %rdx	# tmp278, tmp277
	addq	%rbx, %rcx	# tmp82, tmp279
	movq	%rdx, %rax	# tmp277, tmp280
	salq	$2, %rax	#, tmp280
	addq	%rdx, %rax	# tmp277, tmp280
	salq	$2, %rax	#, tmp281
	addq	%rcx, %rax	# tmp279, tmp282
	addq	$16, %rax	#, tmp283
	movl	(%rax), %eax	# memory_management_struct.e820[i_131].type, _17
# memory.c:39: 		if(memory_management_struct.e820[i].type!=1){
	.loc 2 39 5
	cmpl	$1, %eax	#, _17
	jne	.L26	#,
# memory.c:42: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 2 42 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp284
	movl	-20(%rbp), %eax	# i, tmp286
	movslq	%eax, %rdx	# tmp286, tmp285
	addq	%rbx, %rcx	# tmp82, tmp287
	movq	%rdx, %rax	# tmp285, tmp289
	salq	$2, %rax	#, tmp289
	addq	%rdx, %rax	# tmp285, tmp289
	salq	$2, %rax	#, tmp290
	addq	%rcx, %rax	# tmp287, tmp291
	movq	(%rax), %rax	# memory_management_struct.e820[i_131].address, _18
	addq	$2097151, %rax	#, _19
# memory.c:42: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 2 42 8
	andq	$-2097152, %rax	#, tmp292
	movq	%rax, -96(%rbp)	# tmp292, start
# memory.c:43: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 43 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp293
	movl	-20(%rbp), %eax	# i, tmp295
	movslq	%eax, %rdx	# tmp295, tmp294
	addq	%rbx, %rcx	# tmp82, tmp296
	movq	%rdx, %rax	# tmp294, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# tmp294, tmp298
	salq	$2, %rax	#, tmp299
	addq	%rcx, %rax	# tmp296, tmp300
	movq	(%rax), %rcx	# memory_management_struct.e820[i_131].address, _20
# memory.c:43: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 43 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp301
	movl	-20(%rbp), %eax	# i, tmp303
	movslq	%eax, %rdx	# tmp303, tmp302
	movq	%rdx, %rax	# tmp302, tmp304
	salq	$2, %rax	#, tmp304
	addq	%rdx, %rax	# tmp302, tmp304
	salq	$2, %rax	#, tmp305
	addq	%rbx, %rax	# tmp82, tmp306
	addq	%rsi, %rax	# tmp301, tmp307
	addq	$8, %rax	#, tmp308
	movq	(%rax), %rax	# memory_management_struct.e820[i_131].length, _21
# memory.c:43: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 43 49
	addq	%rcx, %rax	# _20, _22
# memory.c:43: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 43 6
	andq	$-2097152, %rax	#, tmp309
	movq	%rax, -104(%rbp)	# tmp309, end
# memory.c:44: 		if(end<=start){
	.loc 2 44 5
	movq	-104(%rbp), %rax	# end, tmp310
	cmpq	%rax, -96(%rbp)	# tmp310, start
	jnb	.L27	#,
# memory.c:47: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 47 17
	movq	-104(%rbp), %rax	# end, tmp311
	subq	-96(%rbp), %rax	# start, _23
# memory.c:47: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 47 24
	shrq	$21, %rax	#, _24
# memory.c:47: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 47 11
	addq	%rax, -32(%rbp)	# _24, TotalMem
	jmp	.L16	#
.L26:
# memory.c:40: 			continue;
	.loc 2 40 4
	nop	
	jmp	.L16	#
.L27:
# memory.c:45: 			continue;
	.loc 2 45 4
	nop	
.L16:
.LBE4:
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 51 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L14:
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 11 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp312
	cltq
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp313
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _26
# memory.c:37: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 37 11 discriminator 1
	cmpq	%rax, %rdx	# _25, _26
	jnb	.L18	#,
# memory.c:49: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 2 49 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp314
	movq	-32(%rbp), %rax	# TotalMem, tmp315
	movq	%rdx, %r8	# tmp314,
	movq	%rax, %rcx	# tmp315,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp317
	leaq	(%rbx,%rax), %rax	#, tmp316
	movq	%rax, %rdx	# tmp316,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp318
	addq	%rbx, %r9	# tmp82, tmp318
	call	*%r9	# tmp318
.LVL3:
# memory.c:50: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 2 50 65
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp319
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _27
# memory.c:50: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 2 50 78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp320
	leaq	(%rbx,%rax), %rcx	#, tmp321
	movq	%rdx, %rax	# _27, tmp323
	salq	$2, %rax	#, tmp323
	addq	%rdx, %rax	# _27, tmp323
	salq	$2, %rax	#, tmp324
	addq	%rcx, %rax	# tmp321, tmp325
	movq	(%rax), %rcx	# memory_management_struct.e820[_27].address, _28
# memory.c:50: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 2 50 141
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp326
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _29
# memory.c:50: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 2 50 154
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp327
	movq	%rdx, %rax	# _29, tmp328
	salq	$2, %rax	#, tmp328
	addq	%rdx, %rax	# _29, tmp328
	salq	$2, %rax	#, tmp329
	addq	%rbx, %rax	# tmp82, tmp330
	addq	%rsi, %rax	# tmp327, tmp331
	addq	$8, %rax	#, tmp332
	movq	(%rax), %rax	# memory_management_struct.e820[_29].length, _30
# memory.c:50: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 2 50 10
	addq	%rcx, %rax	# _28, tmp333
	movq	%rax, -32(%rbp)	# tmp333, TotalMem
# memory.c:51: 	color_printk(ORANGE,BLACK,"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 2 51 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp334
	movq	-32(%rbp), %rax	# TotalMem, tmp335
	movq	%rdx, %r8	# tmp334,
	movq	%rax, %rcx	# tmp335,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp337
	leaq	(%rbx,%rax), %rax	#, tmp336
	movq	%rax, %rdx	# tmp336,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp338
	addq	%rbx, %r9	# tmp82, tmp338
	call	*%r9	# tmp338
.LVL4:
# memory.c:60: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 60 79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp339
	movq	744(%rbx,%rax), %rax	# memory_management_struct.end_brk, _31
# memory.c:60: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 60 100
	addq	$4095, %rax	#, _32
# memory.c:60: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 60 103
	andq	$-4096, %rax	#, _33
# memory.c:60: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 60 36
	movq	%rax, %rdx	# _33, _34
# memory.c:60: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 60 35
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp340
	movq	%rdx, 648(%rbx,%rax)	# _34, memory_management_struct.bits_map
# memory.c:65: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 2 65 45
	movq	-32(%rbp), %rax	# TotalMem, tmp341
	shrq	$21, %rax	#, tmp341
	movq	%rax, %rdx	# tmp341, _35
# memory.c:65: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 2 65 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp342
	movq	%rdx, 656(%rbx,%rax)	# _35, memory_management_struct.bits_size
# memory.c:96: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 2 96 41
	movq	-32(%rbp), %rax	# TotalMem, tmp343
	shrq	$21, %rax	#, _36
# memory.c:96: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 2 96 96
	addq	$63, %rax	#, _37
# memory.c:96: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 2 96 99
	shrq	$3, %rax	#, _38
# memory.c:96: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 2 96 102
	andq	$-8, %rax	#, _38
	movq	%rax, %rdx	# _38, _39
# memory.c:96: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 2 96 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp344
	movq	%rdx, 664(%rbx,%rax)	# _39, memory_management_struct.bits_length
# memory.c:97: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 2 97 73
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp345
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _40
# memory.c:97: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 2 97 2
	movq	%rax, %rdx	# _40, _41
# memory.c:97: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 2 97 34
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp346
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _42
# memory.c:97: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 2 97 2
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _42,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp348
	leaq	(%rbx,%rax), %rax	#, tmp347
	call	*%rax	# tmp347
.LVL5:
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp349
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _43
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 56
	movq	%rax, %rdx	# _43, _44
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp350
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _45
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 104
	addq	%rdx, %rax	# _44, _46
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 154
	addq	$4095, %rax	#, _47
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 157
	andq	$-4096, %rax	#, _48
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 39
	movq	%rax, %rdx	# _48, _49
# memory.c:114: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 114 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp351
	movq	%rdx, 672(%rbx,%rax)	# _49, memory_management_struct.pages_struct
# memory.c:115: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 2 115 45
	movq	-32(%rbp), %rax	# TotalMem, tmp352
	shrq	$21, %rax	#, tmp352
	movq	%rax, %rdx	# tmp352, _50
# memory.c:115: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 2 115 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp353
	movq	%rdx, 680(%rbx,%rax)	# _50, memory_management_struct.pages_size
# memory.c:121: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 121 49
	movq	-32(%rbp), %rax	# TotalMem, tmp354
	shrq	$21, %rax	#, tmp354
	movq	%rax, %rdx	# tmp354, _51
# memory.c:121: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 121 65
	movq	%rdx, %rax	# _51, tmp355
	salq	$2, %rax	#, tmp355
	addq	%rdx, %rax	# _51, tmp355
	salq	$3, %rax	#, tmp356
# memory.c:121: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 121 98
	addq	$7, %rax	#, _53
# memory.c:121: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 121 101
	andq	$-8, %rax	#, _53
	movq	%rax, %rdx	# _53, _54
# memory.c:121: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 121 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp357
	movq	%rdx, 688(%rbx,%rax)	# _54, memory_management_struct.pages_length
# memory.c:123: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 2 123 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp358
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _55
# memory.c:123: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 2 123 1
	movq	%rax, %rdx	# _55, _56
# memory.c:123: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 2 123 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp359
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _57
# memory.c:123: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 2 123 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _57,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp361
	leaq	(%rbx,%rax), %rax	#, tmp360
	call	*%rax	# tmp360
.LVL6:
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 94
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp362
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _58
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 55
	movq	%rax, %rdx	# _58, _59
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 132
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp363
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _60
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 107
	addq	%rdx, %rax	# _59, _61
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 158
	addq	$4095, %rax	#, _62
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 161
	andq	$-4096, %rax	#, _63
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 39
	movq	%rax, %rdx	# _63, _64
# memory.c:125: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 2 125 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp364
	movq	%rdx, 696(%rbx,%rax)	# _64, memory_management_struct.zones_struct
# memory.c:138: memory_management_struct.zones_size=0;
	.loc 2 138 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp365
	movq	$0, 704(%rbx,%rax)	#, memory_management_struct.zones_size
# memory.c:139: memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 139 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp366
	movq	$400, 712(%rbx,%rax)	#, memory_management_struct.zones_length
# memory.c:140: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 2 140 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp367
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _65
# memory.c:140: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 2 140 1
	movq	%rax, %rdx	# _65, _66
# memory.c:140: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 2 140 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp368
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _67
# memory.c:140: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 2 140 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _67,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp370
	leaq	(%rbx,%rax), %rax	#, tmp369
	call	*%rax	# tmp369
.LVL7:
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 6
	movl	$0, -20(%rbp)	#, i
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 1
	jmp	.L19	#
.L25:
.LBB5:
# memory.c:145: 	if(memory_management_struct.e820[i].type!=1){
	.loc 2 145 37
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp371
	movl	-20(%rbp), %eax	# i, tmp373
	movslq	%eax, %rdx	# tmp373, tmp372
	addq	%rbx, %rcx	# tmp82, tmp374
	movq	%rdx, %rax	# tmp372, tmp375
	salq	$2, %rax	#, tmp375
	addq	%rdx, %rax	# tmp372, tmp375
	salq	$2, %rax	#, tmp376
	addq	%rcx, %rax	# tmp374, tmp377
	addq	$16, %rax	#, tmp378
	movl	(%rax), %eax	# memory_management_struct.e820[i_132].type, _68
# memory.c:145: 	if(memory_management_struct.e820[i].type!=1){
	.loc 2 145 4
	cmpl	$1, %eax	#, _68
	jne	.L28	#,
# memory.c:148: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 2 148 8
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp379
	movl	-20(%rbp), %eax	# i, tmp381
	movslq	%eax, %rdx	# tmp381, tmp380
	addq	%rbx, %rcx	# tmp82, tmp382
	movq	%rdx, %rax	# tmp380, tmp384
	salq	$2, %rax	#, tmp384
	addq	%rdx, %rax	# tmp380, tmp384
	salq	$2, %rax	#, tmp385
	addq	%rcx, %rax	# tmp382, tmp386
	movq	(%rax), %rax	# memory_management_struct.e820[i_132].address, _69
	addq	$2097151, %rax	#, _70
# memory.c:148: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 2 148 7
	andq	$-2097152, %rax	#, tmp387
	movq	%rax, -72(%rbp)	# tmp387, start
# memory.c:149: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 149 40
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp388
	movl	-20(%rbp), %eax	# i, tmp390
	movslq	%eax, %rdx	# tmp390, tmp389
	addq	%rbx, %rcx	# tmp82, tmp391
	movq	%rdx, %rax	# tmp389, tmp393
	salq	$2, %rax	#, tmp393
	addq	%rdx, %rax	# tmp389, tmp393
	salq	$2, %rax	#, tmp394
	addq	%rcx, %rax	# tmp391, tmp395
	movq	(%rax), %rcx	# memory_management_struct.e820[i_132].address, _71
# memory.c:149: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 149 81
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp396
	movl	-20(%rbp), %eax	# i, tmp398
	movslq	%eax, %rdx	# tmp398, tmp397
	movq	%rdx, %rax	# tmp397, tmp399
	salq	$2, %rax	#, tmp399
	addq	%rdx, %rax	# tmp397, tmp399
	salq	$2, %rax	#, tmp400
	addq	%rbx, %rax	# tmp82, tmp401
	addq	%rsi, %rax	# tmp396, tmp402
	addq	$8, %rax	#, tmp403
	movq	(%rax), %rax	# memory_management_struct.e820[i_132].length, _72
# memory.c:149: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 149 48
	addq	%rcx, %rax	# _71, _73
# memory.c:149: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 2 149 5
	andq	$-2097152, %rax	#, tmp404
	movq	%rax, -80(%rbp)	# tmp404, end
# memory.c:150: 	if(end<=start){
	.loc 2 150 4
	movq	-80(%rbp), %rax	# end, tmp405
	cmpq	%rax, -72(%rbp)	# tmp405, start
	jnb	.L29	#,
# memory.c:154: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 2 154 28
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp406
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _74
# memory.c:154: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 2 154 66
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp407
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _75
# memory.c:154: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 2 154 41
	movq	%rdx, %rax	# _75, tmp408
	salq	$2, %rax	#, tmp408
	addq	%rdx, %rax	# _75, tmp408
	salq	$4, %rax	#, tmp409
# memory.c:154: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 2 154 3
	addq	%rcx, %rax	# _74, tmp410
	movq	%rax, -88(%rbp)	# tmp410, z
# memory.c:155: 	memory_management_struct.zones_size++;
	.loc 2 155 26
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp411
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _77
# memory.c:155: 	memory_management_struct.zones_size++;
	.loc 2 155 37
	leaq	1(%rax), %rdx	#, _78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp412
	movq	%rdx, 704(%rbx,%rax)	# _78, memory_management_struct.zones_size
# memory.c:156: 	z->zone_start_address=start;
	.loc 2 156 23
	movq	-88(%rbp), %rax	# z, tmp413
	movq	-72(%rbp), %rdx	# start, tmp414
	movq	%rdx, 16(%rax)	# tmp414, z_192->zone_start_address
# memory.c:157: 	z->zone_end_address=end;
	.loc 2 157 21
	movq	-88(%rbp), %rax	# z, tmp415
	movq	-80(%rbp), %rdx	# end, tmp416
	movq	%rdx, 24(%rax)	# tmp416, z_192->zone_end_address
# memory.c:158: 	z->zone_length=end-start;
	.loc 2 158 20
	movq	-80(%rbp), %rax	# end, tmp417
	subq	-72(%rbp), %rax	# start, tmp417
	movq	%rax, %rdx	# tmp417, _79
# memory.c:158: 	z->zone_length=end-start;
	.loc 2 158 16
	movq	-88(%rbp), %rax	# z, tmp418
	movq	%rdx, 32(%rax)	# _79, z_192->zone_length
# memory.c:159: 	z->page_using_count=0;
	.loc 2 159 21
	movq	-88(%rbp), %rax	# z, tmp419
	movq	$0, 56(%rax)	#, z_192->page_using_count
# memory.c:160: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 160 25
	movq	-80(%rbp), %rax	# end, tmp420
	subq	-72(%rbp), %rax	# start, _80
# memory.c:160: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 160 32
	shrq	$21, %rax	#, _80
	movq	%rax, %rdx	# _80, _81
# memory.c:160: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 160 20
	movq	-88(%rbp), %rax	# z, tmp421
	movq	%rdx, 64(%rax)	# _81, z_192->page_free_count
# memory.c:161: 	z->total_pages_link=0;
	.loc 2 161 21
	movq	-88(%rbp), %rax	# z, tmp422
	movq	$0, 72(%rax)	#, z_192->total_pages_link
# memory.c:162: 	z->attribute=0;
	.loc 2 162 14
	movq	-88(%rbp), %rax	# z, tmp423
	movq	$0, 40(%rax)	#, z_192->attribute
# memory.c:163: 	z->GMD_struct=&memory_management_struct;
	.loc 2 163 15
	movq	-88(%rbp), %rax	# z, tmp424
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp426
	leaq	(%rbx,%rdx), %rdx	#, tmp425
	movq	%rdx, 48(%rax)	# tmp425, z_192->GMD_struct
# memory.c:164: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 164 22
	movq	-80(%rbp), %rax	# end, tmp427
	subq	-72(%rbp), %rax	# start, _82
# memory.c:164: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 164 29
	shrq	$21, %rax	#, _82
	movq	%rax, %rdx	# _82, _83
# memory.c:164: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 2 164 17
	movq	-88(%rbp), %rax	# z, tmp428
	movq	%rdx, 8(%rax)	# _83, z_192->pages_length
# memory.c:165: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 2 165 56
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp429
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _84
# memory.c:165: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 2 165 77
	movq	-72(%rbp), %rax	# start, tmp430
	shrq	$21, %rax	#, tmp430
	movq	%rax, %rdx	# tmp430, _85
# memory.c:165: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 2 165 69
	movq	%rdx, %rax	# _85, tmp431
	salq	$2, %rax	#, tmp431
	addq	%rdx, %rax	# _85, tmp431
	salq	$3, %rax	#, tmp432
# memory.c:165: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 2 165 17
	leaq	(%rcx,%rax), %rdx	#, _87
# memory.c:165: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 2 165 16
	movq	-88(%rbp), %rax	# z, tmp433
	movq	%rdx, (%rax)	# _87, z_192->pages_group
# memory.c:168: 	p=z->pages_group;
	.loc 2 168 3
	movq	-88(%rbp), %rax	# z, tmp434
	movq	(%rax), %rax	# z_192->pages_group, tmp435
	movq	%rax, -56(%rbp)	# tmp435, p
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 7
	movl	$0, -24(%rbp)	#, j
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 2
	jmp	.L23	#
.L24:
# memory.c:170: 		p->zone_struct=z;
	.loc 2 170 17
	movq	-56(%rbp), %rax	# p, tmp436
	movq	-88(%rbp), %rdx	# z, tmp437
	movq	%rdx, (%rax)	# tmp437, p_141->zone_struct
# memory.c:171: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 2 171 36
	movl	-24(%rbp), %eax	# j, tmp438
	cltq
	salq	$21, %rax	#, _88
	movq	%rax, %rdx	# _88, _89
# memory.c:171: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 2 171 23
	movq	-72(%rbp), %rax	# start, tmp439
	addq	%rax, %rdx	# tmp439, _90
# memory.c:171: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 2 171 17
	movq	-56(%rbp), %rax	# p, tmp440
	movq	%rdx, 8(%rax)	# _90, p_141->PHY_address
# memory.c:172: 		p->attribute=0;
	.loc 2 172 15
	movq	-56(%rbp), %rax	# p, tmp441
	movq	$0, 16(%rax)	#, p_141->attribute
# memory.c:173: 		p->reference_count=0;
	.loc 2 173 21
	movq	-56(%rbp), %rax	# p, tmp442
	movq	$0, 24(%rax)	#, p_141->reference_count
# memory.c:174: 		p->age=0;
	.loc 2 174 9
	movq	-56(%rbp), %rax	# p, tmp443
	movq	$0, 32(%rax)	#, p_141->age
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp444
	movq	648(%rbx,%rax), %rdx	# memory_management_struct.bits_map, _91
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 42
	movq	-56(%rbp), %rax	# p, tmp445
	movq	8(%rax), %rax	# p_141->PHY_address, _92
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 3
	shrq	$27, %rax	#, _93
	salq	$3, %rax	#, _94
	addq	%rdx, %rax	# _91, _95
	movq	(%rax), %rdx	# *_95, _96
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 86
	movq	-56(%rbp), %rax	# p, tmp446
	movq	8(%rax), %rax	# p_141->PHY_address, _97
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 99
	shrq	$21, %rax	#, _98
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 115
	andl	$63, %eax	#, _100
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 82
	movl	$1, %esi	#, tmp447
	movl	%eax, %ecx	# _100, tmp494
	salq	%cl, %rsi	# tmp494, _101
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp448
	movq	648(%rbx,%rax), %rcx	# memory_management_struct.bits_map, _102
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 42
	movq	-56(%rbp), %rax	# p, tmp449
	movq	8(%rax), %rax	# p_141->PHY_address, _103
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 3
	shrq	$27, %rax	#, _104
	salq	$3, %rax	#, _105
	addq	%rcx, %rax	# _102, _106
# memory.c:225: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 2 225 76
	xorq	%rsi, %rdx	# _101, _107
	movq	%rdx, (%rax)	# _107, *_106
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 29 discriminator 3
	addl	$1, -24(%rbp)	#, j
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 33 discriminator 3
	addq	$40, -56(%rbp)	#, p
.L23:
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp450
	movslq	%eax, %rdx	# tmp450, _108
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 13 discriminator 1
	movq	-88(%rbp), %rax	# z, tmp451
	movq	8(%rax), %rax	# z_192->pages_length, _109
# memory.c:169: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 2 169 11 discriminator 1
	cmpq	%rax, %rdx	# _109, _108
	jb	.L24	#,
	jmp	.L21	#
.L28:
# memory.c:146: 		continue;
	.loc 2 146 3
	nop	
	jmp	.L21	#
.L29:
# memory.c:151: 		continue;
	.loc 2 151 3
	nop	
.L21:
.LBE5:
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 50 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L19:
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp452
	cltq
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 36 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp453
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _111
# memory.c:141: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 2 141 10 discriminator 1
	cmpq	%rax, %rdx	# _110, _111
	jnb	.L25	#,
# memory.c:228: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 2 228 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp454
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _112
# memory.c:228: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 2 228 76
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp455
	movq	696(%rbx,%rdx), %rdx	# memory_management_struct.zones_struct, _113
# memory.c:228: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 2 228 51
	movq	%rdx, (%rax)	# _113, _112->zone_struct
# memory.c:229: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 2 229 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp456
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _114
# memory.c:229: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 2 229 51
	movq	$0, 8(%rax)	#, _114->PHY_address
# memory.c:230: memory_management_struct.pages_struct->attribute=0;
	.loc 2 230 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp457
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _115
# memory.c:230: memory_management_struct.pages_struct->attribute=0;
	.loc 2 230 49
	movq	$0, 16(%rax)	#, _115->attribute
# memory.c:231: memory_management_struct.pages_struct->reference_count=0;
	.loc 2 231 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp458
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _116
# memory.c:231: memory_management_struct.pages_struct->reference_count=0;
	.loc 2 231 55
	movq	$0, 24(%rax)	#, _116->reference_count
# memory.c:232: memory_management_struct.pages_struct->age=0;
	.loc 2 232 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp459
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _117
# memory.c:232: memory_management_struct.pages_struct->age=0;
	.loc 2 232 43
	movq	$0, 32(%rax)	#, _117->age
# memory.c:233: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 233 64
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp460
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _118
# memory.c:233: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 233 75
	movq	%rdx, %rax	# _118, tmp461
	salq	$2, %rax	#, tmp461
	addq	%rdx, %rax	# _118, tmp461
	salq	$4, %rax	#, tmp462
# memory.c:233: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 233 108
	addq	$7, %rax	#, _120
# memory.c:233: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 233 111
	andq	$-8, %rax	#, _120
	movq	%rax, %rdx	# _120, _121
# memory.c:233: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 2 233 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp463
	movq	%rdx, 712(%rbx,%rax)	# _121, memory_management_struct.zones_length
# memory.c:235: color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
	.loc 2 235 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp464
	movq	664(%rbx,%rax), %rcx	# memory_management_struct.bits_length, _122
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp465
	movq	656(%rbx,%rax), %rdx	# memory_management_struct.bits_size, _123
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp466
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _124
	movq	%rcx, %r9	# _122,
	movq	%rdx, %r8	# _123,
	movq	%rax, %rcx	# _124,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp468
	leaq	(%rbx,%rax), %rax	#, tmp467
	movq	%rax, %rdx	# tmp467,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp469
	addq	%rbx, %r10	# tmp82, tmp469
	call	*%r10	# tmp469
.LVL8:
# memory.c:236: color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
	.loc 2 236 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp470
	movq	688(%rbx,%rax), %rcx	# memory_management_struct.pages_length, _125
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp471
	movq	680(%rbx,%rax), %rdx	# memory_management_struct.pages_size, _126
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp472
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _127
	movq	%rcx, %r9	# _125,
	movq	%rdx, %r8	# _126,
	movq	%rax, %rcx	# _127,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp474
	leaq	(%rbx,%rax), %rax	#, tmp473
	movq	%rax, %rdx	# tmp473,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp475
	addq	%rbx, %r10	# tmp82, tmp475
	call	*%r10	# tmp475
.LVL9:
# memory.c:237: color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);
	.loc 2 237 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp476
	movq	712(%rbx,%rax), %rcx	# memory_management_struct.zones_length, _128
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp477
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp478
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _130
	movq	%rcx, %r9	# _128,
	movq	%rdx, %r8	# _129,
	movq	%rax, %rcx	# _130,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp480
	leaq	(%rbx,%rax), %rax	#, tmp479
	movq	%rax, %rdx	# tmp479,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp481
	addq	%rbx, %r10	# tmp82, tmp481
	call	*%r10	# tmp481
.LVL10:
# memory.c:242: }
	.loc 2 242 1
	nop	
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	init_memory, .-init_memory
.Letext0:
	.file 3 "memory.h"
	.file 4 "font.h"
	.file 5 "printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5f9
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x8
	.long	.LASF7
	.byte	0x14
	.byte	0x3
	.byte	0x56
	.long	0x69
	.uleb128 0x1
	.long	.LASF2
	.byte	0x3
	.byte	0x58
	.byte	0x13
	.long	0x69
	.byte	0
	.uleb128 0x1
	.long	.LASF3
	.byte	0x3
	.byte	0x59
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF4
	.byte	0x3
	.byte	0x5a
	.byte	0x12
	.long	0x2e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x12
	.long	.LASF8
	.value	0x2f8
	.byte	0x3
	.byte	0x5f
	.byte	0x8
	.long	0x14f
	.uleb128 0x1
	.long	.LASF9
	.byte	0x3
	.byte	0x61
	.byte	0xe
	.long	0x14f
	.byte	0
	.uleb128 0x2
	.long	.LASF10
	.byte	0x62
	.byte	0x10
	.long	0x69
	.value	0x280
	.uleb128 0x2
	.long	.LASF11
	.byte	0x6e
	.byte	0x12
	.long	0x15f
	.value	0x288
	.uleb128 0x2
	.long	.LASF12
	.byte	0x6f
	.byte	0x10
	.long	0x69
	.value	0x290
	.uleb128 0x2
	.long	.LASF13
	.byte	0x70
	.byte	0x10
	.long	0x69
	.value	0x298
	.uleb128 0x2
	.long	.LASF14
	.byte	0x79
	.byte	0x10
	.long	0x1b2
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x7a
	.byte	0x10
	.long	0x69
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF16
	.byte	0x7b
	.byte	0x10
	.long	0x69
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x83
	.byte	0x10
	.long	0x246
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF18
	.byte	0x84
	.byte	0x10
	.long	0x69
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x85
	.byte	0x10
	.long	0x69
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF20
	.byte	0x92
	.byte	0x10
	.long	0x69
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x93
	.byte	0x10
	.long	0x69
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF22
	.byte	0x94
	.byte	0x10
	.long	0x69
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x95
	.byte	0x10
	.long	0x69
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF24
	.byte	0x97
	.byte	0x10
	.long	0x69
	.value	0x2f0
	.byte	0
	.uleb128 0x9
	.long	0x35
	.long	0x15f
	.uleb128 0xa
	.long	0x69
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	0x69
	.uleb128 0x8
	.long	.LASF25
	.byte	0x28
	.byte	0x3
	.byte	0xae
	.long	0x1b2
	.uleb128 0x1
	.long	.LASF26
	.byte	0x3
	.byte	0xaf
	.byte	0x12
	.long	0x246
	.byte	0
	.uleb128 0x1
	.long	.LASF27
	.byte	0x3
	.byte	0xb0
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF28
	.byte	0x3
	.byte	0xb1
	.byte	0x13
	.long	0x69
	.byte	0x10
	.uleb128 0x1
	.long	.LASF29
	.byte	0x3
	.byte	0xb2
	.byte	0x13
	.long	0x69
	.byte	0x18
	.uleb128 0x13
	.string	"age"
	.byte	0x3
	.byte	0xb3
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	0x164
	.uleb128 0x8
	.long	.LASF30
	.byte	0x50
	.byte	0x3
	.byte	0xcf
	.long	0x246
	.uleb128 0x1
	.long	.LASF31
	.byte	0x3
	.byte	0xd0
	.byte	0x10
	.long	0x1b2
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.byte	0x3
	.byte	0xd1
	.byte	0x10
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x3
	.byte	0xd2
	.byte	0x10
	.long	0x69
	.byte	0x10
	.uleb128 0x1
	.long	.LASF33
	.byte	0x3
	.byte	0xd3
	.byte	0x10
	.long	0x69
	.byte	0x18
	.uleb128 0x1
	.long	.LASF34
	.byte	0x3
	.byte	0xd4
	.byte	0x10
	.long	0x69
	.byte	0x20
	.uleb128 0x1
	.long	.LASF28
	.byte	0x3
	.byte	0xd5
	.byte	0x10
	.long	0x69
	.byte	0x28
	.uleb128 0x1
	.long	.LASF35
	.byte	0x3
	.byte	0xd7
	.byte	0x24
	.long	0x24b
	.byte	0x30
	.uleb128 0x1
	.long	.LASF36
	.byte	0x3
	.byte	0xd8
	.byte	0x10
	.long	0x69
	.byte	0x38
	.uleb128 0x1
	.long	.LASF37
	.byte	0x3
	.byte	0xd9
	.byte	0x10
	.long	0x69
	.byte	0x40
	.uleb128 0x1
	.long	.LASF38
	.byte	0x3
	.byte	0xdb
	.byte	0x10
	.long	0x69
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.long	0x1b7
	.uleb128 0x5
	.long	0x70
	.uleb128 0x7
	.long	.LASF40
	.byte	0x3
	.byte	0xde
	.byte	0x21
	.long	0x70
	.uleb128 0x9
	.byte	0x3
	.quad	memory_management_struct
	.uleb128 0x14
	.byte	0x8
	.uleb128 0x9
	.long	0x27e
	.long	0x27e
	.uleb128 0xa
	.long	0x69
	.byte	0xff
	.uleb128 0xa
	.long	0x69
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF39
	.uleb128 0x7
	.long	.LASF41
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.long	0x268
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0x8
	.long	.LASF42
	.byte	0x28
	.byte	0x5
	.byte	0x20
	.long	0x310
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.long	0x310
	.byte	0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.long	0x310
	.byte	0x4
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.long	0x310
	.byte	0x8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.long	0x310
	.byte	0xc
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.byte	0x26
	.byte	0x9
	.long	0x310
	.byte	0x10
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x27
	.byte	0x9
	.long	0x310
	.byte	0x14
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0x317
	.byte	0x18
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.byte	0x29
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	0x2e
	.uleb128 0xe
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0x29b
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0x9
	.long	0x342
	.long	0x342
	.uleb128 0x16
	.long	0x69
	.value	0xfff
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF51
	.uleb128 0x17
	.long	0x342
	.uleb128 0xe
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x331
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x7
	.long	.LASF52
	.byte	0x2
	.byte	0x6
	.byte	0x5
	.long	0x310
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_DMA_INDEX
	.uleb128 0x7
	.long	.LASF53
	.byte	0x2
	.byte	0x7
	.byte	0x5
	.long	0x310
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_NORMAL_INDEX
	.uleb128 0x7
	.long	.LASF54
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.long	0x310
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_UNMAPED_INDEX
	.uleb128 0x18
	.long	.LASF63
	.byte	0x5
	.byte	0x3b
	.byte	0x5
	.long	0x310
	.long	0x3c6
	.uleb128 0xb
	.long	0x2e
	.uleb128 0xb
	.long	0x2e
	.uleb128 0xb
	.long	0x3c6
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.long	0x349
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x2
	.byte	0xa
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x570
	.uleb128 0x4
	.string	"i"
	.byte	0xb
	.byte	0x6
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"j"
	.byte	0xb
	.byte	0x8
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF55
	.byte	0xd
	.byte	0x10
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.byte	0xe
	.byte	0xf
	.long	0x570
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x46b
	.uleb128 0x4
	.string	"i"
	.byte	0x11
	.byte	0xb
	.long	0x310
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.string	"tmp"
	.byte	0x15
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.quad	.LVL1
	.long	0x3a5
	.byte	0
	.byte	0
	.uleb128 0xd
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x49f
	.uleb128 0xc
	.long	.LASF56
	.byte	0x26
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.string	"end"
	.byte	0x26
	.byte	0x17
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0xd
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x4ed
	.uleb128 0xc
	.long	.LASF56
	.byte	0x8e
	.byte	0x10
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4
	.string	"end"
	.byte	0x8e
	.byte	0x17
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.string	"z"
	.byte	0x8f
	.byte	0xf
	.long	0x246
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4
	.string	"p"
	.byte	0x90
	.byte	0xf
	.long	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x3
	.quad	.LVL0
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL2
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL3
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL4
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL5
	.long	0x575
	.uleb128 0x3
	.quad	.LVL6
	.long	0x575
	.uleb128 0x3
	.quad	.LVL7
	.long	0x575
	.uleb128 0x3
	.quad	.LVL8
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL9
	.long	0x3a5
	.uleb128 0x3
	.quad	.LVL10
	.long	0x3a5
	.byte	0
	.uleb128 0x5
	.long	0x35
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.value	0x124
	.byte	0x16
	.long	0x266
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f0
	.uleb128 0xf
	.long	.LASF57
	.byte	0x24
	.long	0x266
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"C"
	.byte	0x1
	.value	0x124
	.byte	0x3b
	.long	0x27e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.long	.LASF58
	.byte	0x43
	.long	0x5f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.value	0x126
	.byte	0x14
	.long	0x5f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF59
	.value	0x127
	.byte	0x13
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF60
	.value	0x136
	.byte	0xa
	.long	0x5f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x5
	.long	0x27e
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
	.sleb128 3
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
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 292
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
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
	.uleb128 0x11
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"total_pages_link"
.LASF20:
	.string	"start_code"
.LASF43:
	.string	"XResolution"
.LASF48:
	.string	"YCharSize"
.LASF62:
	.string	"GNU C17 13.3.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF47:
	.string	"XCharSize"
.LASF34:
	.string	"zone_length"
.LASF9:
	.string	"e820"
.LASF17:
	.string	"zones_struct"
.LASF56:
	.string	"start"
.LASF18:
	.string	"zones_size"
.LASF16:
	.string	"pages_length"
.LASF25:
	.string	"Page"
.LASF53:
	.string	"ZONE_NORMAL_INDEX"
.LASF7:
	.string	"E820"
.LASF10:
	.string	"e820_length"
.LASF37:
	.string	"page_free_count"
.LASF58:
	.string	"Count"
.LASF39:
	.string	"unsigned char"
.LASF41:
	.string	"font_ascii"
.LASF21:
	.string	"end_code"
.LASF24:
	.string	"end_of_struct"
.LASF6:
	.string	"long unsigned int"
.LASF49:
	.string	"FB_addr"
.LASF23:
	.string	"end_brk"
.LASF19:
	.string	"zones_length"
.LASF54:
	.string	"ZONE_UNMAPED_INDEX"
.LASF15:
	.string	"pages_size"
.LASF55:
	.string	"TotalMem"
.LASF52:
	.string	"ZONE_DMA_INDEX"
.LASF42:
	.string	"position"
.LASF35:
	.string	"GMD_struct"
.LASF27:
	.string	"PHY_address"
.LASF5:
	.string	"unsigned int"
.LASF63:
	.string	"color_printk"
.LASF2:
	.string	"address"
.LASF51:
	.string	"char"
.LASF33:
	.string	"zone_end_address"
.LASF64:
	.string	"init_memory"
.LASF12:
	.string	"bits_size"
.LASF26:
	.string	"zone_struct"
.LASF28:
	.string	"attribute"
.LASF50:
	.string	"FB_length"
.LASF22:
	.string	"end_data"
.LASF46:
	.string	"YPosition"
.LASF59:
	.string	"pattern"
.LASF29:
	.string	"reference_count"
.LASF36:
	.string	"page_using_count"
.LASF45:
	.string	"XPosition"
.LASF32:
	.string	"zone_start_address"
.LASF44:
	.string	"YResolution"
.LASF40:
	.string	"memory_management_struct"
.LASF4:
	.string	"type"
.LASF57:
	.string	"Address"
.LASF31:
	.string	"pages_group"
.LASF30:
	.string	"Zone"
.LASF61:
	.string	"long int"
.LASF65:
	.string	"Cmemset"
.LASF60:
	.string	"remaining"
.LASF13:
	.string	"bits_length"
.LASF8:
	.string	"Global_Memory_Descriptor"
.LASF3:
	.string	"length"
.LASF11:
	.string	"bits_map"
.LASF14:
	.string	"pages_struct"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/workspace/myos/kernel"
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
