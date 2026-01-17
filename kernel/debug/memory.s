	.file	"memory.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/workspace/myos/kernel" "memory.c"
	.type	Cmemset, @function
Cmemset:
.LFB12:
	.file 1 "lib.h"
	.loc 1 289 1
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
# lib.h:290:     unsigned char *ptr = (unsigned char *)Address;
	.loc 1 290 20
	movq	-40(%rbp), %rax	# Address, tmp95
	movq	%rax, -8(%rbp)	# tmp95, ptr
# lib.h:291:     unsigned long pattern = C;
	.loc 1 291 19
	movzbl	-44(%rbp), %eax	# C, tmp96
	movq	%rax, -24(%rbp)	# tmp96, pattern
# lib.h:302:     pattern |= (pattern << 8);
	.loc 1 302 25
	movq	-24(%rbp), %rax	# pattern, tmp97
	salq	$8, %rax	#, _1
# lib.h:302:     pattern |= (pattern << 8);
	.loc 1 302 13
	orq	%rax, -24(%rbp)	# _1, pattern
# lib.h:303:     pattern |= (pattern << 16);
	.loc 1 303 25
	movq	-24(%rbp), %rax	# pattern, tmp98
	salq	$16, %rax	#, _2
# lib.h:303:     pattern |= (pattern << 16);
	.loc 1 303 13
	orq	%rax, -24(%rbp)	# _2, pattern
# lib.h:304:     pattern |= (pattern << 32);
	.loc 1 304 25
	movq	-24(%rbp), %rax	# pattern, tmp99
	salq	$32, %rax	#, _3
# lib.h:304:     pattern |= (pattern << 32);
	.loc 1 304 13
	orq	%rax, -24(%rbp)	# _3, pattern
# lib.h:306:     long remaining = Count;
	.loc 1 306 10
	movq	-56(%rbp), %rax	# Count, tmp100
	movq	%rax, -16(%rbp)	# tmp100, remaining
# lib.h:309:     while (remaining >= 8) {
	.loc 1 309 11
	jmp	.L2	#
.L3:
# lib.h:310:         *((unsigned long *)ptr) = pattern;
	.loc 1 310 33
	movq	-8(%rbp), %rax	# ptr, tmp101
	movq	-24(%rbp), %rdx	# pattern, tmp102
	movq	%rdx, (%rax)	# tmp102, MEM[(long unsigned int *)ptr_9]
# lib.h:311:         ptr += 8;
	.loc 1 311 13
	addq	$8, -8(%rbp)	#, ptr
# lib.h:312:         remaining -= 8;
	.loc 1 312 19
	subq	$8, -16(%rbp)	#, remaining
.L2:
# lib.h:309:     while (remaining >= 8) {
	.loc 1 309 22
	cmpq	$7, -16(%rbp)	#, remaining
	jg	.L3	#,
# lib.h:316:     if (remaining & 4) {
	.loc 1 316 19
	movq	-16(%rbp), %rax	# remaining, tmp103
	andl	$4, %eax	#, _4
# lib.h:316:     if (remaining & 4) {
	.loc 1 316 8
	testq	%rax, %rax	# _4
	je	.L4	#,
# lib.h:317:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 317 34
	movq	-24(%rbp), %rax	# pattern, tmp104
	movl	%eax, %edx	# tmp104, _5
# lib.h:317:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 1 317 32
	movq	-8(%rbp), %rax	# ptr, tmp105
	movl	%edx, (%rax)	# _5, MEM[(unsigned int *)ptr_9]
# lib.h:318:         ptr += 4;
	.loc 1 318 13
	addq	$4, -8(%rbp)	#, ptr
.L4:
# lib.h:322:     if (remaining & 2) {
	.loc 1 322 19
	movq	-16(%rbp), %rax	# remaining, tmp106
	andl	$2, %eax	#, _6
# lib.h:322:     if (remaining & 2) {
	.loc 1 322 8
	testq	%rax, %rax	# _6
	je	.L5	#,
# lib.h:323:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 323 36
	movq	-24(%rbp), %rax	# pattern, tmp107
	movl	%eax, %edx	# tmp107, _7
# lib.h:323:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 1 323 34
	movq	-8(%rbp), %rax	# ptr, tmp108
	movw	%dx, (%rax)	# _7, MEM[(short unsigned int *)ptr_10]
# lib.h:324:         ptr += 2;
	.loc 1 324 13
	addq	$2, -8(%rbp)	#, ptr
.L5:
# lib.h:328:     if (remaining & 1) {
	.loc 1 328 19
	movq	-16(%rbp), %rax	# remaining, tmp109
	andl	$1, %eax	#, _8
# lib.h:328:     if (remaining & 1) {
	.loc 1 328 8
	testq	%rax, %rax	# _8
	je	.L6	#,
# lib.h:329:         *ptr = C;
	.loc 1 329 14
	movq	-8(%rbp), %rax	# ptr, tmp110
	movzbl	-44(%rbp), %edx	# C, tmp111
	movb	%dl, (%rax)	# tmp111, *ptr_11
.L6:
# lib.h:332:     return Address;
	.loc 1 332 12
	movq	-40(%rbp), %rax	# Address, _32
# lib.h:333: }
	.loc 1 333 1
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
.LC3:
	.string	"OS Can Used Total RAM:%d\n"
.LC4:
	.string	"OS Can Used Total MB:%d\n"
	.align 8
.LC5:
	.string	"OS Can Used Total 2M PAGEs:%#010x=%010d\n"
	.align 8
.LC6:
	.string	"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n"
	.align 8
.LC7:
	.string	"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n"
	.align 8
.LC8:
	.string	"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n"
	.align 8
.LC9:
	.string	"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n"
	.align 8
.LC10:
	.string	"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n"
.LC11:
	.string	"Global_CR3\t:%#018lx\n"
.LC12:
	.string	"*Global_CR3\t:%#018lx\n"
.LC13:
	.string	"**Global_CR3\t:%#018lx\n"
.LC14:
	.string	"I am OK!\n"
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
.L47:
	leaq	.L47(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L47, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:33: 	unsigned long TotalMem =0;
	.loc 3 33 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:34: 	struct E820 *p = NULL;
	.loc 3 34 15
	movq	$0, -40(%rbp)	#, p
# memory.c:35: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 3 35 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp268
	leaq	(%rbx,%rax), %rax	#, tmp267
	movq	%rax, %rdx	# tmp267,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp269
	addq	%rbx, %rcx	# tmp82, tmp269
	call	*%rcx	# tmp269
.LVL0:
# memory.c:36: 	p=(struct E820 *)0xffff800000007e00;
	.loc 3 36 3
	movabsq	$-140737488323072, %rax	#, tmp607
	movq	%rax, -40(%rbp)	# tmp607, p
.LBB2:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 11
	movl	$0, -44(%rbp)	#, i
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 2
	jmp	.L20	#
.L23:
.LBB3:
# memory.c:40: 		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
	.loc 3 40 3
	movq	-40(%rbp), %rax	# p, tmp270
	movl	16(%rax), %ecx	# p_196->type, _1
	movq	-40(%rbp), %rax	# p, tmp271
	movq	8(%rax), %rdx	# p_196->length, _2
	movq	-40(%rbp), %rax	# p, tmp272
	movq	(%rax), %rax	# p_196->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp274
	leaq	(%rbx,%rax), %rax	#, tmp273
	movq	%rax, %rdx	# tmp273,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp275
	addq	%rbx, %r10	# tmp82, tmp275
	call	*%r10	# tmp275
.LVL1:
# memory.c:41: 		unsigned long tmp =0;
	.loc 3 41 17
	movq	$0, -64(%rbp)	#, tmp
# memory.c:42: 		if(p->type==1){
	.loc 3 42 7
	movq	-40(%rbp), %rax	# p, tmp276
	movl	16(%rax), %eax	# p_196->type, _4
# memory.c:42: 		if(p->type==1){
	.loc 3 42 5
	cmpl	$1, %eax	#, _4
	jne	.L21	#,
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 16
	movq	-40(%rbp), %rax	# p, tmp277
	movq	8(%rax), %rax	# p_196->length, _5
# memory.c:43: 			TotalMem +=p->length;
	.loc 3 43 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L21:
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp278
	movl	-44(%rbp), %eax	# i, tmp280
	movslq	%eax, %rdx	# tmp280, tmp279
	addq	%rbx, %rcx	# tmp82, tmp281
	movq	%rdx, %rax	# tmp279, tmp283
	salq	$2, %rax	#, tmp283
	addq	%rdx, %rax	# tmp279, tmp283
	salq	$2, %rax	#, tmp284
	addq	%rcx, %rax	# tmp281, tmp285
	movq	(%rax), %rdx	# memory_management_struct.e820[i_197].address, _6
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 46
	movq	-40(%rbp), %rax	# p, tmp286
	movq	(%rax), %rax	# p_196->address, _7
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 45 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp287
	movl	-44(%rbp), %eax	# i, tmp289
	movslq	%eax, %rdx	# tmp289, tmp288
	addq	%rbx, %rsi	# tmp82, tmp290
	movq	%rdx, %rax	# tmp288, tmp292
	salq	$2, %rax	#, tmp292
	addq	%rdx, %rax	# tmp288, tmp292
	salq	$2, %rax	#, tmp293
	addq	%rsi, %rax	# tmp290, tmp294
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_197].address
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp295
	movl	-44(%rbp), %eax	# i, tmp297
	movslq	%eax, %rdx	# tmp297, tmp296
	movq	%rdx, %rax	# tmp296, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# tmp296, tmp298
	salq	$2, %rax	#, tmp299
	addq	%rbx, %rax	# tmp82, tmp300
	addq	%rcx, %rax	# tmp295, tmp301
	addq	$8, %rax	#, tmp302
	movq	(%rax), %rdx	# memory_management_struct.e820[i_197].length, _9
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 45
	movq	-40(%rbp), %rax	# p, tmp303
	movq	8(%rax), %rax	# p_196->length, _10
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 46 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp304
	movl	-44(%rbp), %eax	# i, tmp306
	movslq	%eax, %rdx	# tmp306, tmp305
	movq	%rdx, %rax	# tmp305, tmp307
	salq	$2, %rax	#, tmp307
	addq	%rdx, %rax	# tmp305, tmp307
	salq	$2, %rax	#, tmp308
	addq	%rbx, %rax	# tmp82, tmp309
	addq	%rsi, %rax	# tmp304, tmp310
	addq	$8, %rax	#, tmp311
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_197].length
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 42
	movq	-40(%rbp), %rax	# p, tmp312
	movl	16(%rax), %ecx	# p_196->type, _12
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 47 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp313
	movl	-44(%rbp), %eax	# i, tmp315
	movslq	%eax, %rdx	# tmp315, tmp314
	addq	%rbx, %rsi	# tmp82, tmp316
	movq	%rdx, %rax	# tmp314, tmp317
	salq	$2, %rax	#, tmp317
	addq	%rdx, %rax	# tmp314, tmp317
	salq	$2, %rax	#, tmp318
	addq	%rsi, %rax	# tmp316, tmp319
	addq	$16, %rax	#, tmp320
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_197].type
# memory.c:48: 		memory_management_struct.e820_length =i;
	.loc 3 48 40
	movl	-44(%rbp), %eax	# i, tmp321
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp322
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:49: 		p++;
	.loc 3 49 4
	addq	$20, -40(%rbp)	#, p
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 7
	movq	-40(%rbp), %rax	# p, tmp323
	movl	16(%rax), %eax	# p_221->type, _14
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 5
	cmpl	$4, %eax	#, _14
	ja	.L22	#,
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 22 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp324
	movq	8(%rax), %rax	# p_221->length, _15
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 18 discriminator 1
	testq	%rax, %rax	# _15
	je	.L22	#,
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 40 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp325
	movl	16(%rax), %eax	# p_221->type, _16
# memory.c:50: 		if(p->type > 4 || p->length == 0 || p->type < 1){
	.loc 3 50 36 discriminator 2
	testl	%eax, %eax	# _16
	je	.L22	#,
.LBE3:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 27 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L20:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 3 37 20 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L23	#,
.L22:
.LBE2:
# memory.c:54: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 3 54 2
	movq	-32(%rbp), %rax	# TotalMem, tmp326
	movq	%rax, %rcx	# tmp326,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp328
	leaq	(%rbx,%rax), %rax	#, tmp327
	movq	%rax, %rdx	# tmp327,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp329
	addq	%rbx, %r8	# tmp82, tmp329
	call	*%r8	# tmp329
.LVL2:
# memory.c:55: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%d\n",TotalMem);
	.loc 3 55 2
	movq	-32(%rbp), %rax	# TotalMem, tmp330
	movq	%rax, %rcx	# tmp330,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp332
	leaq	(%rbx,%rax), %rax	#, tmp331
	movq	%rax, %rdx	# tmp331,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp333
	addq	%rbx, %r8	# tmp82, tmp333
	call	*%r8	# tmp333
.LVL3:
# memory.c:57: 	TotalMB=TotalMem>>20;
	.loc 3 57 18
	movq	-32(%rbp), %rax	# TotalMem, tmp334
	shrq	$20, %rax	#, _17
# memory.c:57: 	TotalMB=TotalMem>>20;
	.loc 3 57 9
	movl	%eax, -68(%rbp)	# _17, TotalMB
# memory.c:58: 	color_printk(ORANGE,BLACK,"OS Can Used Total MB:%d\n",TotalMB);
	.loc 3 58 2
	movl	-68(%rbp), %eax	# TotalMB, tmp335
	movl	%eax, %ecx	# tmp335,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp337
	leaq	(%rbx,%rax), %rax	#, tmp336
	movq	%rax, %rdx	# tmp336,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp338
	addq	%rbx, %r8	# tmp82, tmp338
	call	*%r8	# tmp338
.LVL4:
# memory.c:59: 	TotalMem=0;
	.loc 3 59 10
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 7
	movl	$0, -20(%rbp)	#, i
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 2
	jmp	.L24	#
.L28:
.LBB4:
# memory.c:62: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 62 38
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp339
	movl	-20(%rbp), %eax	# i, tmp341
	movslq	%eax, %rdx	# tmp341, tmp340
	addq	%rbx, %rcx	# tmp82, tmp342
	movq	%rdx, %rax	# tmp340, tmp343
	salq	$2, %rax	#, tmp343
	addq	%rdx, %rax	# tmp340, tmp343
	salq	$2, %rax	#, tmp344
	addq	%rcx, %rax	# tmp342, tmp345
	addq	$16, %rax	#, tmp346
	movl	(%rax), %eax	# memory_management_struct.e820[i_185].type, _18
# memory.c:62: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 62 5
	cmpl	$1, %eax	#, _18
	jne	.L43	#,
# memory.c:65: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 65 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp347
	movl	-20(%rbp), %eax	# i, tmp349
	movslq	%eax, %rdx	# tmp349, tmp348
	addq	%rbx, %rcx	# tmp82, tmp350
	movq	%rdx, %rax	# tmp348, tmp352
	salq	$2, %rax	#, tmp352
	addq	%rdx, %rax	# tmp348, tmp352
	salq	$2, %rax	#, tmp353
	addq	%rcx, %rax	# tmp350, tmp354
	movq	(%rax), %rax	# memory_management_struct.e820[i_185].address, _19
	addq	$2097151, %rax	#, _20
# memory.c:65: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 65 8
	andq	$-2097152, %rax	#, tmp355
	movq	%rax, -120(%rbp)	# tmp355, start
# memory.c:66: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 66 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp356
	movl	-20(%rbp), %eax	# i, tmp358
	movslq	%eax, %rdx	# tmp358, tmp357
	addq	%rbx, %rcx	# tmp82, tmp359
	movq	%rdx, %rax	# tmp357, tmp361
	salq	$2, %rax	#, tmp361
	addq	%rdx, %rax	# tmp357, tmp361
	salq	$2, %rax	#, tmp362
	addq	%rcx, %rax	# tmp359, tmp363
	movq	(%rax), %rcx	# memory_management_struct.e820[i_185].address, _21
# memory.c:66: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 66 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp364
	movl	-20(%rbp), %eax	# i, tmp366
	movslq	%eax, %rdx	# tmp366, tmp365
	movq	%rdx, %rax	# tmp365, tmp367
	salq	$2, %rax	#, tmp367
	addq	%rdx, %rax	# tmp365, tmp367
	salq	$2, %rax	#, tmp368
	addq	%rbx, %rax	# tmp82, tmp369
	addq	%rsi, %rax	# tmp364, tmp370
	addq	$8, %rax	#, tmp371
	movq	(%rax), %rax	# memory_management_struct.e820[i_185].length, _22
# memory.c:66: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 66 49
	addq	%rcx, %rax	# _21, _23
# memory.c:66: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 66 6
	andq	$-2097152, %rax	#, tmp372
	movq	%rax, -128(%rbp)	# tmp372, end
# memory.c:67: 		if(end<=start){
	.loc 3 67 5
	movq	-128(%rbp), %rax	# end, tmp373
	cmpq	%rax, -120(%rbp)	# tmp373, start
	jnb	.L44	#,
# memory.c:70: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 70 17
	movq	-128(%rbp), %rax	# end, tmp374
	subq	-120(%rbp), %rax	# start, _24
# memory.c:70: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 70 24
	shrq	$21, %rax	#, _25
# memory.c:70: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 70 11
	addq	%rax, -32(%rbp)	# _25, TotalMem
	jmp	.L26	#
.L43:
# memory.c:63: 			continue;
	.loc 3 63 4
	nop	
	jmp	.L26	#
.L44:
# memory.c:68: 			continue;
	.loc 3 68 4
	nop	
.L26:
.LBE4:
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 51 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L24:
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 11 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp375
	cltq
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp376
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _27
# memory.c:60: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 60 11 discriminator 1
	cmpq	%rax, %rdx	# _26, _27
	jnb	.L28	#,
# memory.c:72: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 72 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp377
	movq	-32(%rbp), %rax	# TotalMem, tmp378
	movq	%rdx, %r8	# tmp377,
	movq	%rax, %rcx	# tmp378,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp380
	leaq	(%rbx,%rax), %rax	#, tmp379
	movq	%rax, %rdx	# tmp379,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp381
	addq	%rbx, %r9	# tmp82, tmp381
	call	*%r9	# tmp381
.LVL5:
# memory.c:73: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 73 65
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp382
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _28
# memory.c:73: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 73 78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp383
	leaq	(%rbx,%rax), %rcx	#, tmp384
	movq	%rdx, %rax	# _28, tmp386
	salq	$2, %rax	#, tmp386
	addq	%rdx, %rax	# _28, tmp386
	salq	$2, %rax	#, tmp387
	addq	%rcx, %rax	# tmp384, tmp388
	movq	(%rax), %rcx	# memory_management_struct.e820[_28].address, _29
# memory.c:73: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 73 141
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp389
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _30
# memory.c:73: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 73 154
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp390
	movq	%rdx, %rax	# _30, tmp391
	salq	$2, %rax	#, tmp391
	addq	%rdx, %rax	# _30, tmp391
	salq	$2, %rax	#, tmp392
	addq	%rbx, %rax	# tmp82, tmp393
	addq	%rsi, %rax	# tmp390, tmp394
	addq	$8, %rax	#, tmp395
	movq	(%rax), %rax	# memory_management_struct.e820[_30].length, _31
# memory.c:73: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 73 10
	addq	%rcx, %rax	# _29, tmp396
	movq	%rax, -32(%rbp)	# tmp396, TotalMem
# memory.c:82: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 82 79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp397
	movq	744(%rbx,%rax), %rax	# memory_management_struct.end_brk, _32
# memory.c:82: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 82 100
	addq	$4095, %rax	#, _33
# memory.c:82: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 82 103
	andq	$-4096, %rax	#, _34
# memory.c:82: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 82 36
	movq	%rax, %rdx	# _34, _35
# memory.c:82: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 82 35
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp398
	movq	%rdx, 648(%rbx,%rax)	# _35, memory_management_struct.bits_map
# memory.c:89: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 89 45
	movq	-32(%rbp), %rax	# TotalMem, tmp399
	shrq	$21, %rax	#, tmp399
	movq	%rax, %rdx	# tmp399, _36
# memory.c:89: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 89 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp400
	movq	%rdx, 656(%rbx,%rax)	# _36, memory_management_struct.bits_size
# memory.c:90: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 90 41
	movq	-32(%rbp), %rax	# TotalMem, tmp401
	shrq	$21, %rax	#, _37
# memory.c:90: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 90 96
	addq	$63, %rax	#, _38
# memory.c:90: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 90 99
	shrq	$3, %rax	#, _39
# memory.c:90: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 90 102
	andq	$-8, %rax	#, _39
	movq	%rax, %rdx	# _39, _40
# memory.c:90: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 90 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp402
	movq	%rdx, 664(%rbx,%rax)	# _40, memory_management_struct.bits_length
# memory.c:91: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 91 73
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp403
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _41
# memory.c:91: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 91 2
	movq	%rax, %rdx	# _41, _42
# memory.c:91: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 91 34
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp404
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _43
# memory.c:91: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 91 2
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _43,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp406
	leaq	(%rbx,%rax), %rax	#, tmp405
	call	*%rax	# tmp405
.LVL6:
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp407
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _44
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 56
	movq	%rax, %rdx	# _44, _45
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp408
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _46
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 104
	addq	%rdx, %rax	# _45, _47
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 154
	addq	$4095, %rax	#, _48
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 157
	andq	$-4096, %rax	#, _49
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 39
	movq	%rax, %rdx	# _49, _50
# memory.c:109: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 109 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp409
	movq	%rdx, 672(%rbx,%rax)	# _50, memory_management_struct.pages_struct
# memory.c:110: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 110 45
	movq	-32(%rbp), %rax	# TotalMem, tmp410
	shrq	$21, %rax	#, tmp410
	movq	%rax, %rdx	# tmp410, _51
# memory.c:110: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 110 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp411
	movq	%rdx, 680(%rbx,%rax)	# _51, memory_management_struct.pages_size
# memory.c:116: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 116 49
	movq	-32(%rbp), %rax	# TotalMem, tmp412
	shrq	$21, %rax	#, tmp412
	movq	%rax, %rdx	# tmp412, _52
# memory.c:116: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 116 65
	movq	%rdx, %rax	# _52, tmp413
	salq	$2, %rax	#, tmp413
	addq	%rdx, %rax	# _52, tmp413
	salq	$3, %rax	#, tmp414
# memory.c:116: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 116 98
	addq	$7, %rax	#, _54
# memory.c:116: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 116 101
	andq	$-8, %rax	#, _54
	movq	%rax, %rdx	# _54, _55
# memory.c:116: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 116 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp415
	movq	%rdx, 688(%rbx,%rax)	# _55, memory_management_struct.pages_length
# memory.c:118: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 118 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp416
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _56
# memory.c:118: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 118 1
	movq	%rax, %rdx	# _56, _57
# memory.c:118: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 118 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp417
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _58
# memory.c:118: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 118 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _58,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp419
	leaq	(%rbx,%rax), %rax	#, tmp418
	call	*%rax	# tmp418
.LVL7:
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 94
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp420
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _59
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 55
	movq	%rax, %rdx	# _59, _60
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 132
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp421
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _61
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 107
	addq	%rdx, %rax	# _60, _62
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 158
	addq	$4095, %rax	#, _63
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 161
	andq	$-4096, %rax	#, _64
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 39
	movq	%rax, %rdx	# _64, _65
# memory.c:120: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 120 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp422
	movq	%rdx, 696(%rbx,%rax)	# _65, memory_management_struct.zones_struct
# memory.c:122: memory_management_struct.zones_size=0;
	.loc 3 122 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp423
	movq	$0, 704(%rbx,%rax)	#, memory_management_struct.zones_size
# memory.c:123: memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 123 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp424
	movq	$400, 712(%rbx,%rax)	#, memory_management_struct.zones_length
# memory.c:124: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 124 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp425
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _66
# memory.c:124: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 124 1
	movq	%rax, %rdx	# _66, _67
# memory.c:124: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 124 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp426
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _68
# memory.c:124: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 124 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _68,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp428
	leaq	(%rbx,%rax), %rax	#, tmp427
	call	*%rax	# tmp427
.LVL8:
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 6
	movl	$0, -20(%rbp)	#, i
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 1
	jmp	.L29	#
.L35:
.LBB5:
# memory.c:129: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 129 37
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp429
	movl	-20(%rbp), %eax	# i, tmp431
	movslq	%eax, %rdx	# tmp431, tmp430
	addq	%rbx, %rcx	# tmp82, tmp432
	movq	%rdx, %rax	# tmp430, tmp433
	salq	$2, %rax	#, tmp433
	addq	%rdx, %rax	# tmp430, tmp433
	salq	$2, %rax	#, tmp434
	addq	%rcx, %rax	# tmp432, tmp435
	addq	$16, %rax	#, tmp436
	movl	(%rax), %eax	# memory_management_struct.e820[i_186].type, _69
# memory.c:129: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 129 4
	cmpl	$1, %eax	#, _69
	jne	.L45	#,
# memory.c:132: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 132 8
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp437
	movl	-20(%rbp), %eax	# i, tmp439
	movslq	%eax, %rdx	# tmp439, tmp438
	addq	%rbx, %rcx	# tmp82, tmp440
	movq	%rdx, %rax	# tmp438, tmp442
	salq	$2, %rax	#, tmp442
	addq	%rdx, %rax	# tmp438, tmp442
	salq	$2, %rax	#, tmp443
	addq	%rcx, %rax	# tmp440, tmp444
	movq	(%rax), %rax	# memory_management_struct.e820[i_186].address, _70
	addq	$2097151, %rax	#, _71
# memory.c:132: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 132 7
	andq	$-2097152, %rax	#, tmp445
	movq	%rax, -96(%rbp)	# tmp445, start
# memory.c:133: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 133 40
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp446
	movl	-20(%rbp), %eax	# i, tmp448
	movslq	%eax, %rdx	# tmp448, tmp447
	addq	%rbx, %rcx	# tmp82, tmp449
	movq	%rdx, %rax	# tmp447, tmp451
	salq	$2, %rax	#, tmp451
	addq	%rdx, %rax	# tmp447, tmp451
	salq	$2, %rax	#, tmp452
	addq	%rcx, %rax	# tmp449, tmp453
	movq	(%rax), %rcx	# memory_management_struct.e820[i_186].address, _72
# memory.c:133: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 133 81
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp454
	movl	-20(%rbp), %eax	# i, tmp456
	movslq	%eax, %rdx	# tmp456, tmp455
	movq	%rdx, %rax	# tmp455, tmp457
	salq	$2, %rax	#, tmp457
	addq	%rdx, %rax	# tmp455, tmp457
	salq	$2, %rax	#, tmp458
	addq	%rbx, %rax	# tmp82, tmp459
	addq	%rsi, %rax	# tmp454, tmp460
	addq	$8, %rax	#, tmp461
	movq	(%rax), %rax	# memory_management_struct.e820[i_186].length, _73
# memory.c:133: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 133 48
	addq	%rcx, %rax	# _72, _74
# memory.c:133: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 133 5
	andq	$-2097152, %rax	#, tmp462
	movq	%rax, -104(%rbp)	# tmp462, end
# memory.c:134: 	if(end<=start){
	.loc 3 134 4
	movq	-104(%rbp), %rax	# end, tmp463
	cmpq	%rax, -96(%rbp)	# tmp463, start
	jnb	.L46	#,
# memory.c:138: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 138 28
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp464
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _75
# memory.c:138: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 138 66
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp465
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _76
# memory.c:138: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 138 41
	movq	%rdx, %rax	# _76, tmp466
	salq	$2, %rax	#, tmp466
	addq	%rdx, %rax	# _76, tmp466
	salq	$4, %rax	#, tmp467
# memory.c:138: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 138 3
	addq	%rcx, %rax	# _75, tmp468
	movq	%rax, -112(%rbp)	# tmp468, z
# memory.c:139: 	memory_management_struct.zones_size++;
	.loc 3 139 26
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp469
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _78
# memory.c:139: 	memory_management_struct.zones_size++;
	.loc 3 139 37
	leaq	1(%rax), %rdx	#, _79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp470
	movq	%rdx, 704(%rbx,%rax)	# _79, memory_management_struct.zones_size
# memory.c:140: 	z->zone_start_address=start;
	.loc 3 140 23
	movq	-112(%rbp), %rax	# z, tmp471
	movq	-96(%rbp), %rdx	# start, tmp472
	movq	%rdx, 16(%rax)	# tmp472, z_279->zone_start_address
# memory.c:141: 	z->zone_end_address=end;
	.loc 3 141 21
	movq	-112(%rbp), %rax	# z, tmp473
	movq	-104(%rbp), %rdx	# end, tmp474
	movq	%rdx, 24(%rax)	# tmp474, z_279->zone_end_address
# memory.c:142: 	z->zone_length=end-start;
	.loc 3 142 20
	movq	-104(%rbp), %rax	# end, tmp475
	subq	-96(%rbp), %rax	# start, tmp475
	movq	%rax, %rdx	# tmp475, _80
# memory.c:142: 	z->zone_length=end-start;
	.loc 3 142 16
	movq	-112(%rbp), %rax	# z, tmp476
	movq	%rdx, 32(%rax)	# _80, z_279->zone_length
# memory.c:144: 	z->page_using_count=0;
	.loc 3 144 21
	movq	-112(%rbp), %rax	# z, tmp477
	movq	$0, 56(%rax)	#, z_279->page_using_count
# memory.c:145: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 25
	movq	-104(%rbp), %rax	# end, tmp478
	subq	-96(%rbp), %rax	# start, _81
# memory.c:145: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 32
	shrq	$21, %rax	#, _81
	movq	%rax, %rdx	# _81, _82
# memory.c:145: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 145 20
	movq	-112(%rbp), %rax	# z, tmp479
	movq	%rdx, 64(%rax)	# _82, z_279->page_free_count
# memory.c:147: 	z->total_pages_link=0;
	.loc 3 147 21
	movq	-112(%rbp), %rax	# z, tmp480
	movq	$0, 72(%rax)	#, z_279->total_pages_link
# memory.c:148: 	z->attribute=0;
	.loc 3 148 14
	movq	-112(%rbp), %rax	# z, tmp481
	movq	$0, 40(%rax)	#, z_279->attribute
# memory.c:149: 	z->GMD_struct=&memory_management_struct;
	.loc 3 149 15
	movq	-112(%rbp), %rax	# z, tmp482
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp484
	leaq	(%rbx,%rdx), %rdx	#, tmp483
	movq	%rdx, 48(%rax)	# tmp483, z_279->GMD_struct
# memory.c:151: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 151 22
	movq	-104(%rbp), %rax	# end, tmp485
	subq	-96(%rbp), %rax	# start, _83
# memory.c:151: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 151 29
	shrq	$21, %rax	#, _83
	movq	%rax, %rdx	# _83, _84
# memory.c:151: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 151 17
	movq	-112(%rbp), %rax	# z, tmp486
	movq	%rdx, 8(%rax)	# _84, z_279->pages_length
# memory.c:152: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 152 56
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp487
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _85
# memory.c:152: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 152 77
	movq	-96(%rbp), %rax	# start, tmp488
	shrq	$21, %rax	#, tmp488
	movq	%rax, %rdx	# tmp488, _86
# memory.c:152: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 152 69
	movq	%rdx, %rax	# _86, tmp489
	salq	$2, %rax	#, tmp489
	addq	%rdx, %rax	# _86, tmp489
	salq	$3, %rax	#, tmp490
# memory.c:152: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 152 17
	leaq	(%rcx,%rax), %rdx	#, _88
# memory.c:152: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 152 16
	movq	-112(%rbp), %rax	# z, tmp491
	movq	%rdx, (%rax)	# _88, z_279->pages_group
# memory.c:155: 	p=z->pages_group;
	.loc 3 155 3
	movq	-112(%rbp), %rax	# z, tmp492
	movq	(%rax), %rax	# z_279->pages_group, tmp493
	movq	%rax, -56(%rbp)	# tmp493, p
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 7
	movl	$0, -24(%rbp)	#, j
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 2
	jmp	.L33	#
.L34:
# memory.c:157: 		p->zone_struct=z;
	.loc 3 157 17
	movq	-56(%rbp), %rax	# p, tmp494
	movq	-112(%rbp), %rdx	# z, tmp495
	movq	%rdx, (%rax)	# tmp495, p_198->zone_struct
# memory.c:158: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 158 36
	movl	-24(%rbp), %eax	# j, tmp496
	cltq
	salq	$21, %rax	#, _89
	movq	%rax, %rdx	# _89, _90
# memory.c:158: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 158 23
	movq	-96(%rbp), %rax	# start, tmp497
	addq	%rax, %rdx	# tmp497, _91
# memory.c:158: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 158 17
	movq	-56(%rbp), %rax	# p, tmp498
	movq	%rdx, 8(%rax)	# _91, p_198->PHY_address
# memory.c:159: 		p->attribute=0;
	.loc 3 159 15
	movq	-56(%rbp), %rax	# p, tmp499
	movq	$0, 16(%rax)	#, p_198->attribute
# memory.c:160: 		p->reference_count=0;
	.loc 3 160 21
	movq	-56(%rbp), %rax	# p, tmp500
	movq	$0, 24(%rax)	#, p_198->reference_count
# memory.c:161: 		p->age=0;
	.loc 3 161 9
	movq	-56(%rbp), %rax	# p, tmp501
	movq	$0, 32(%rax)	#, p_198->age
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp502
	movq	648(%rbx,%rax), %rdx	# memory_management_struct.bits_map, _92
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 42
	movq	-56(%rbp), %rax	# p, tmp503
	movq	8(%rax), %rax	# p_198->PHY_address, _93
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 3
	shrq	$27, %rax	#, _94
	salq	$3, %rax	#, _95
	addq	%rdx, %rax	# _92, _96
	movq	(%rax), %rdx	# *_96, _97
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 86
	movq	-56(%rbp), %rax	# p, tmp504
	movq	8(%rax), %rax	# p_198->PHY_address, _98
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 99
	shrq	$21, %rax	#, _99
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 115
	andl	$63, %eax	#, _101
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 82
	movl	$1, %esi	#, tmp505
	movl	%eax, %ecx	# _101, tmp618
	salq	%cl, %rsi	# tmp618, _102
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp506
	movq	648(%rbx,%rax), %rcx	# memory_management_struct.bits_map, _103
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 42
	movq	-56(%rbp), %rax	# p, tmp507
	movq	8(%rax), %rax	# p_198->PHY_address, _104
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 3
	shrq	$27, %rax	#, _105
	salq	$3, %rax	#, _106
	addq	%rcx, %rax	# _103, _107
# memory.c:163: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 163 76
	xorq	%rsi, %rdx	# _102, _108
	movq	%rdx, (%rax)	# _108, *_107
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 29 discriminator 3
	addl	$1, -24(%rbp)	#, j
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 33 discriminator 3
	addq	$40, -56(%rbp)	#, p
.L33:
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp508
	movslq	%eax, %rdx	# tmp508, _109
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 13 discriminator 1
	movq	-112(%rbp), %rax	# z, tmp509
	movq	8(%rax), %rax	# z_279->pages_length, _110
# memory.c:156: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 156 11 discriminator 1
	cmpq	%rax, %rdx	# _110, _109
	jb	.L34	#,
	jmp	.L31	#
.L45:
# memory.c:130: 		continue;
	.loc 3 130 3
	nop	
	jmp	.L31	#
.L46:
# memory.c:135: 		continue;
	.loc 3 135 3
	nop	
.L31:
.LBE5:
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 50 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L29:
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp510
	cltq
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 36 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp511
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _112
# memory.c:125: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 125 10 discriminator 1
	cmpq	%rax, %rdx	# _111, _112
	jnb	.L35	#,
# memory.c:166: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 166 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp512
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _113
# memory.c:166: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 166 76
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp513
	movq	696(%rbx,%rdx), %rdx	# memory_management_struct.zones_struct, _114
# memory.c:166: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 166 51
	movq	%rdx, (%rax)	# _114, _113->zone_struct
# memory.c:167: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 167 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp514
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _115
# memory.c:167: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 167 51
	movq	$0, 8(%rax)	#, _115->PHY_address
# memory.c:168: memory_management_struct.pages_struct->attribute=0;
	.loc 3 168 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp515
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _116
# memory.c:168: memory_management_struct.pages_struct->attribute=0;
	.loc 3 168 49
	movq	$0, 16(%rax)	#, _116->attribute
# memory.c:169: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 169 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp516
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _117
# memory.c:169: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 169 55
	movq	$0, 24(%rax)	#, _117->reference_count
# memory.c:170: memory_management_struct.pages_struct->age=0;
	.loc 3 170 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp517
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _118
# memory.c:170: memory_management_struct.pages_struct->age=0;
	.loc 3 170 43
	movq	$0, 32(%rax)	#, _118->age
# memory.c:172: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 172 64
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp518
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _119
# memory.c:172: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 172 75
	movq	%rdx, %rax	# _119, tmp519
	salq	$2, %rax	#, tmp519
	addq	%rdx, %rax	# _119, tmp519
	salq	$4, %rax	#, tmp520
# memory.c:172: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 172 108
	addq	$7, %rax	#, _121
# memory.c:172: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 172 111
	andq	$-8, %rax	#, _121
	movq	%rax, %rdx	# _121, _122
# memory.c:172: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 172 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp521
	movq	%rdx, 712(%rbx,%rax)	# _122, memory_management_struct.zones_length
# memory.c:174: color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
	.loc 3 174 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp522
	movq	664(%rbx,%rax), %rcx	# memory_management_struct.bits_length, _123
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp523
	movq	656(%rbx,%rax), %rdx	# memory_management_struct.bits_size, _124
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp524
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _125
	movq	%rcx, %r9	# _123,
	movq	%rdx, %r8	# _124,
	movq	%rax, %rcx	# _125,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp526
	leaq	(%rbx,%rax), %rax	#, tmp525
	movq	%rax, %rdx	# tmp525,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp527
	addq	%rbx, %r10	# tmp82, tmp527
	call	*%r10	# tmp527
.LVL9:
# memory.c:175: color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
	.loc 3 175 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp528
	movq	688(%rbx,%rax), %rcx	# memory_management_struct.pages_length, _126
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp529
	movq	680(%rbx,%rax), %rdx	# memory_management_struct.pages_size, _127
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp530
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _128
	movq	%rcx, %r9	# _126,
	movq	%rdx, %r8	# _127,
	movq	%rax, %rcx	# _128,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp532
	leaq	(%rbx,%rax), %rax	#, tmp531
	movq	%rax, %rdx	# tmp531,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp533
	addq	%rbx, %r10	# tmp82, tmp533
	call	*%r10	# tmp533
.LVL10:
# memory.c:176: color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);
	.loc 3 176 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp534
	movq	712(%rbx,%rax), %rcx	# memory_management_struct.zones_length, _129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp535
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _130
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp536
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _131
	movq	%rcx, %r9	# _129,
	movq	%rdx, %r8	# _130,
	movq	%rax, %rcx	# _131,
	movabsq	$.LC8@GOTOFF, %rax	#, tmp538
	leaq	(%rbx,%rax), %rax	#, tmp537
	movq	%rax, %rdx	# tmp537,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp539
	addq	%rbx, %r10	# tmp82, tmp539
	call	*%r10	# tmp539
.LVL11:
# memory.c:179: ZONE_DMA_INDEX = 0;	//need rewrite in the future
	.loc 3 179 16
	movabsq	$ZONE_DMA_INDEX@GOTOFF, %rax	#, tmp540
	movl	$0, (%rbx,%rax)	#, ZONE_DMA_INDEX
# memory.c:180: ZONE_NORMAL_INDEX = 0;	//need rewrite in the future
	.loc 3 180 19
	movabsq	$ZONE_NORMAL_INDEX@GOTOFF, %rax	#, tmp541
	movl	$0, (%rbx,%rax)	#, ZONE_NORMAL_INDEX
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 6
	movl	$0, -20(%rbp)	#, i
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 1
	jmp	.L36	#
.L38:
.LBB6:
# memory.c:183: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 183 41
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp542
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _132
# memory.c:183: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 183 54
	movl	-20(%rbp), %eax	# i, tmp543
	movslq	%eax, %rdx	# tmp543, _133
	movq	%rdx, %rax	# _133, tmp544
	salq	$2, %rax	#, tmp544
	addq	%rdx, %rax	# _133, tmp544
	salq	$4, %rax	#, tmp545
# memory.c:183: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 183 15
	addq	%rcx, %rax	# _132, tmp546
	movq	%rax, -88(%rbp)	# tmp546, z
# memory.c:184: 	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);
	.loc 3 184 2
	movq	-88(%rbp), %rax	# z, tmp547
	movq	8(%rax), %rcx	# z_273->pages_length, _135
	movq	-88(%rbp), %rax	# z, tmp548
	movq	(%rax), %rdx	# z_273->pages_group, _136
	movq	-88(%rbp), %rax	# z, tmp549
	movq	32(%rax), %rdi	# z_273->zone_length, _137
	movq	-88(%rbp), %rax	# z, tmp550
	movq	24(%rax), %rsi	# z_273->zone_end_address, _138
	movq	-88(%rbp), %rax	# z, tmp551
	movq	16(%rax), %rax	# z_273->zone_start_address, _139
	pushq	%rcx	# _135
	pushq	%rdx	# _136
	movq	%rdi, %r9	# _137,
	movq	%rsi, %r8	# _138,
	movq	%rax, %rcx	# _139,
	movabsq	$.LC9@GOTOFF, %rax	#, tmp553
	leaq	(%rbx,%rax), %rax	#, tmp552
	movq	%rax, %rdx	# tmp552,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp554
	addq	%rbx, %r10	# tmp82, tmp554
	call	*%r10	# tmp554
.LVL12:
	addq	$16, %rsp	#,
# memory.c:186: 	if(z->zone_start_address==0x100000000){
	.loc 3 186 6
	movq	-88(%rbp), %rax	# z, tmp555
	movq	16(%rax), %rdx	# z_273->zone_start_address, _140
# memory.c:186: 	if(z->zone_start_address==0x100000000){
	.loc 3 186 4
	movabsq	$4294967296, %rax	#, tmp556
	cmpq	%rax, %rdx	# tmp556, _140
	jne	.L37	#,
# memory.c:187: 		ZONE_UNMAPED_INDEX=i;
	.loc 3 187 21
	movabsq	$ZONE_UNMAPED_INDEX@GOTOFF, %rdx	#, tmp557
	movl	-20(%rbp), %eax	# i, tmp558
	movl	%eax, (%rbx,%rdx)	# tmp558, ZONE_UNMAPED_INDEX
.L37:
.LBE6:
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 48 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L36:
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp559
	movslq	%eax, %rdx	# tmp559, _141
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 35 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp560
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _142
# memory.c:182: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 182 10 discriminator 1
	cmpq	%rax, %rdx	# _142, _141
	jb	.L38	#,
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp561
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _143
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 56
	movq	%rax, %rdx	# _143, _144
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 133
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp562
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _145
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 108
	addq	%rdx, %rax	# _144, _146
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 40
	addq	$256, %rax	#, _147
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 163
	andq	$-8, %rax	#, _147
	movq	%rax, %rdx	# _147, _148
# memory.c:195: memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 195 39
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp563
	movq	%rdx, 752(%rbx,%rax)	# _148, memory_management_struct.end_of_struct
# memory.c:196: color_printk(ORANGE,BLACK,"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n",memory_management_struct.start_code,memory_management_struct.end_code,memory_management_struct.end_data,memory_management_struct.end_brk,memory_management_struct.end_of_struct);
	.loc 3 196 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp564
	movq	752(%rbx,%rax), %rcx	# memory_management_struct.end_of_struct, _149
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp565
	movq	744(%rbx,%rax), %rdx	# memory_management_struct.end_brk, _150
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp566
	movq	736(%rbx,%rax), %rdi	# memory_management_struct.end_data, _151
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp567
	movq	728(%rbx,%rax), %rsi	# memory_management_struct.end_code, _152
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp568
	movq	720(%rbx,%rax), %rax	# memory_management_struct.start_code, _153
	pushq	%rcx	# _149
	pushq	%rdx	# _150
	movq	%rdi, %r9	# _151,
	movq	%rsi, %r8	# _152,
	movq	%rax, %rcx	# _153,
	movabsq	$.LC10@GOTOFF, %rax	#, tmp570
	leaq	(%rbx,%rax), %rax	#, tmp569
	movq	%rax, %rdx	# tmp569,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp571
	addq	%rbx, %r10	# tmp82, tmp571
	call	*%r10	# tmp571
.LVL13:
	addq	$16, %rsp	#,
# memory.c:197: i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 197 3
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp572
	movq	752(%rbx,%rax), %rax	# memory_management_struct.end_of_struct, _154
	movabsq	$140737488355328, %rdx	#, tmp573
	addq	%rdx, %rax	# tmp573, _155
# memory.c:197: i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 197 54
	shrq	$21, %rax	#, _156
# memory.c:197: i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 197 2
	movl	%eax, -20(%rbp)	# _156, i
# memory.c:198: for(j=0;j<=i;j++){
	.loc 3 198 6
	movl	$0, -24(%rbp)	#, j
# memory.c:198: for(j=0;j<=i;j++){
	.loc 3 198 1
	jmp	.L39	#
.L40:
# memory.c:199: 	page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 199 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp574
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _157
# memory.c:199: 	page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 199 49
	movl	-24(%rbp), %eax	# j, tmp575
	movslq	%eax, %rdx	# tmp575, _158
	movq	%rdx, %rax	# _158, tmp576
	salq	$2, %rax	#, tmp576
	addq	%rdx, %rax	# _158, tmp576
	salq	$3, %rax	#, tmp577
# memory.c:199: 	page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 199 2
	addq	%rcx, %rax	# _157, _160
	movl	$147, %esi	#,
	movq	%rax, %rdi	# _160,
	movabsq	$page_init@GOTOFF, %rax	#, tmp579
	leaq	(%rbx,%rax), %rax	#, tmp578
	call	*%rax	# tmp578
.LVL14:
# memory.c:198: for(j=0;j<=i;j++){
	.loc 3 198 15 discriminator 3
	addl	$1, -24(%rbp)	#, j
.L39:
# memory.c:198: for(j=0;j<=i;j++){
	.loc 3 198 10 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp580
	cmpl	-20(%rbp), %eax	# i, tmp580
	jle	.L40	#,
# memory.c:201: 	Global_CR3 = Get_gdt();
	.loc 3 201 15
	movl	$0, %eax	#,
	movabsq	$Get_gdt@GOTOFF, %rdx	#, tmp582
	leaq	(%rbx,%rdx), %rdx	#, tmp581
	call	*%rdx	# tmp581
.LVL15:
# memory.c:201: 	Global_CR3 = Get_gdt();
	.loc 3 201 13 discriminator 1
	movabsq	$Global_CR3@GOTOFF, %rdx	#, tmp583
	movq	%rax, (%rbx,%rdx)	# _161, Global_CR3
# memory.c:202: 	color_printk(INDIGO,BLACK,"Global_CR3\t:%#018lx\n",Global_CR3);
	.loc 3 202 2
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp584
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.0_162
	movq	%rax, %rcx	# Global_CR3.0_162,
	movabsq	$.LC11@GOTOFF, %rax	#, tmp586
	leaq	(%rbx,%rax), %rax	#, tmp585
	movq	%rax, %rdx	# tmp585,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp587
	addq	%rbx, %r8	# tmp82, tmp587
	call	*%r8	# tmp587
.LVL16:
# memory.c:203: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 203 55
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp588
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.1_163
	movq	%rax, %rdx	# Global_CR3.1_163, Global_CR3.2_164
	movabsq	$-140737488355328, %rax	#, tmp589
	addq	%rdx, %rax	# Global_CR3.2_164, _165
# memory.c:203: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 203 2
	movq	(%rax), %rax	# *_166, _167
	movq	%rax, %rcx	# _167,
	movabsq	$.LC12@GOTOFF, %rax	#, tmp591
	leaq	(%rbx,%rax), %rax	#, tmp590
	movq	%rax, %rdx	# tmp590,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp592
	addq	%rbx, %r8	# tmp82, tmp592
	call	*%r8	# tmp592
.LVL17:
# memory.c:204: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 204 56
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp593
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.3_168
	movq	%rax, %rdx	# Global_CR3.3_168, Global_CR3.4_169
	movabsq	$-140737488355328, %rax	#, tmp594
	addq	%rdx, %rax	# Global_CR3.4_169, _170
	movq	(%rax), %rax	# *_171, _172
	movb	$0, %al	#, _172
	movq	%rax, %rdx	# _172, _173
	movabsq	$-140737488355328, %rax	#, tmp595
	addq	%rdx, %rax	# _173, _174
# memory.c:204: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 204 55
	movq	(%rax), %rax	# *_175, _176
# memory.c:204: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 204 2
	movb	$0, %al	#, _177
	movq	%rax, %rcx	# _177,
	movabsq	$.LC13@GOTOFF, %rax	#, tmp597
	leaq	(%rbx,%rax), %rax	#, tmp596
	movq	%rax, %rdx	# tmp596,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp598
	addq	%rbx, %r8	# tmp82, tmp598
	call	*%r8	# tmp598
.LVL18:
# memory.c:205: 	for(i=0;i<10;i++){
	.loc 3 205 7
	movl	$0, -20(%rbp)	#, i
# memory.c:205: 	for(i=0;i<10;i++){
	.loc 3 205 2
	jmp	.L41	#
.L42:
# memory.c:206: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 206 28
	movl	-20(%rbp), %eax	# i, tmp599
	cltq
	leaq	0(,%rax,8), %rdx	#, _179
	movabsq	$Global_CR3@GOTOFF, %rax	#, tmp600
	movq	(%rbx,%rax), %rax	# Global_CR3, Global_CR3.5_180
	addq	%rax, %rdx	# Global_CR3.6_181, _182
	movabsq	$-140737488355328, %rax	#, tmp601
	addq	%rdx, %rax	# _182, _183
# memory.c:206: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 206 31
	movq	$0, (%rax)	#, *_184
# memory.c:205: 	for(i=0;i<10;i++){
	.loc 3 205 16 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L41:
# memory.c:205: 	for(i=0;i<10;i++){
	.loc 3 205 11 discriminator 1
	cmpl	$9, -20(%rbp)	#, i
	jle	.L42	#,
# memory.c:208: 	color_printk(INDIGO,BLACK,"I am OK!\n");
	.loc 3 208 2
	movabsq	$.LC14@GOTOFF, %rax	#, tmp603
	leaq	(%rbx,%rax), %rax	#, tmp602
	movq	%rax, %rdx	# tmp602,
	movl	$0, %esi	#,
	movl	$65535, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp604
	addq	%rbx, %rcx	# tmp82, tmp604
	call	*%rcx	# tmp604
.LVL19:
.LBB7:
# memory.c:209: 	flush_tlb();
	.loc 3 209 2
#APP
# 209 "memory.c" 1
	movq %cr3, %rax	# tmpreq
	movq %rax, %cr3	# tmpreq
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)	# tmpreq, tmpreq
.LBE7:
# memory.c:211: }
	.loc 3 211 1
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
	.section	.rodata
.LC15:
	.string	"Error:zone_select error!\n"
	.text
	.globl	alloc_page
	.type	alloc_page, @function
alloc_page:
.LFB37:
	.loc 3 222 77
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L71:
	leaq	.L71(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L71, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movl	%edi, -132(%rbp)	# zone_select, zone_select
	movl	%esi, -136(%rbp)	# number, number
	movq	%rdx, -144(%rbp)	# page_flags, page_flags
# memory.c:224: 	unsigned long page=0;
	.loc 3 224 16
	movq	$0, -64(%rbp)	#, page
# memory.c:225: 	int zone_start=0;
	.loc 3 225 6
	movl	$0, -24(%rbp)	#, zone_start
# memory.c:226: 	int zone_end=0;
	.loc 3 226 6
	movl	$0, -28(%rbp)	#, zone_end
# memory.c:227: 	switch(zone_select){
	.loc 3 227 2
	cmpl	$4, -132(%rbp)	#, zone_select
	je	.L49	#,
	cmpl	$4, -132(%rbp)	#, zone_select
	jg	.L50	#,
	cmpl	$1, -132(%rbp)	#, zone_select
	je	.L51	#,
	cmpl	$2, -132(%rbp)	#, zone_select
	je	.L52	#,
	jmp	.L50	#
.L51:
# memory.c:229: 			zone_start=0;
	.loc 3 229 14
	movl	$0, -24(%rbp)	#, zone_start
# memory.c:230: 			zone_end=ZONE_DMA_INDEX;
	.loc 3 230 12
	movabsq	$ZONE_DMA_INDEX@GOTOFF, %rax	#, tmp126
	movl	(%rbx,%rax), %eax	# ZONE_DMA_INDEX, tmp127
	movl	%eax, -28(%rbp)	# tmp127, zone_end
# memory.c:231: 			break;
	.loc 3 231 4
	jmp	.L53	#
.L52:
# memory.c:233: 			zone_start=ZONE_DMA_INDEX;
	.loc 3 233 14
	movabsq	$ZONE_DMA_INDEX@GOTOFF, %rax	#, tmp128
	movl	(%rbx,%rax), %eax	# ZONE_DMA_INDEX, tmp129
	movl	%eax, -24(%rbp)	# tmp129, zone_start
# memory.c:234: 			zone_end=ZONE_NORMAL_INDEX;
	.loc 3 234 12
	movabsq	$ZONE_NORMAL_INDEX@GOTOFF, %rax	#, tmp130
	movl	(%rbx,%rax), %eax	# ZONE_NORMAL_INDEX, tmp131
	movl	%eax, -28(%rbp)	# tmp131, zone_end
# memory.c:235: 			break;
	.loc 3 235 4
	jmp	.L53	#
.L49:
# memory.c:237: 			zone_start=ZONE_UNMAPED_INDEX;
	.loc 3 237 14
	movabsq	$ZONE_UNMAPED_INDEX@GOTOFF, %rax	#, tmp132
	movl	(%rbx,%rax), %eax	# ZONE_UNMAPED_INDEX, tmp133
	movl	%eax, -24(%rbp)	# tmp133, zone_start
# memory.c:238: 			zone_end=memory_management_struct.zones_size-1;
	.loc 3 238 37
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp134
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _1
# memory.c:238: 			zone_end=memory_management_struct.zones_size-1;
	.loc 3 238 48
	subl	$1, %eax	#, _3
# memory.c:238: 			zone_end=memory_management_struct.zones_size-1;
	.loc 3 238 12
	movl	%eax, -28(%rbp)	# _3, zone_end
# memory.c:239: 			break;
	.loc 3 239 4
	jmp	.L53	#
.L50:
# memory.c:241: 			color_printk(RED,BLACK,"Error:zone_select error!\n");
	.loc 3 241 4
	movabsq	$.LC15@GOTOFF, %rax	#, tmp136
	leaq	(%rbx,%rax), %rax	#, tmp135
	movq	%rax, %rdx	# tmp135,
	movl	$0, %esi	#,
	movl	$16711680, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp137
	addq	%rbx, %rcx	# tmp82, tmp137
	call	*%rcx	# tmp137
.LVL20:
# memory.c:242: 			return NULL;
	.loc 3 242 11
	movl	$0, %eax	#, _46
	jmp	.L54	#
.L53:
# memory.c:245: for(i=zone_start;i<=zone_end;i++){
	.loc 3 245 6
	movl	-24(%rbp), %eax	# zone_start, tmp138
	movl	%eax, -20(%rbp)	# tmp138, i
# memory.c:245: for(i=zone_start;i<=zone_end;i++){
	.loc 3 245 1
	jmp	.L55	#
.L69:
.LBB8:
# memory.c:250: 	if((memory_management_struct.zones_struct+i)->page_free_count<number){
	.loc 3 250 30
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp139
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _4
# memory.c:250: 	if((memory_management_struct.zones_struct+i)->page_free_count<number){
	.loc 3 250 43
	movl	-20(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, _5
	movq	%rdx, %rax	# _5, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# _5, tmp141
	salq	$4, %rax	#, tmp142
	addq	%rcx, %rax	# _4, _7
# memory.c:250: 	if((memory_management_struct.zones_struct+i)->page_free_count<number){
	.loc 3 250 46
	movq	64(%rax), %rdx	# _7->page_free_count, _8
# memory.c:250: 	if((memory_management_struct.zones_struct+i)->page_free_count<number){
	.loc 3 250 63
	movl	-136(%rbp), %eax	# number, tmp143
	cltq
# memory.c:250: 	if((memory_management_struct.zones_struct+i)->page_free_count<number){
	.loc 3 250 4
	cmpq	%rax, %rdx	# _9, _8
	jb	.L70	#,
# memory.c:253: 	z = memory_management_struct.zones_struct + i;
	.loc 3 253 30
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp144
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _10
# memory.c:253: 	z = memory_management_struct.zones_struct + i;
	.loc 3 253 44
	movl	-20(%rbp), %eax	# i, tmp145
	movslq	%eax, %rdx	# tmp145, _11
	movq	%rdx, %rax	# _11, tmp146
	salq	$2, %rax	#, tmp146
	addq	%rdx, %rax	# _11, tmp146
	salq	$4, %rax	#, tmp147
# memory.c:253: 	z = memory_management_struct.zones_struct + i;
	.loc 3 253 4
	addq	%rcx, %rax	# _10, tmp148
	movq	%rax, -72(%rbp)	# tmp148, z
# memory.c:254: 	start = z->zone_start_address >>PAGE_2M_SHIFT;
	.loc 3 254 11
	movq	-72(%rbp), %rax	# z, tmp149
	movq	16(%rax), %rax	# z_65->zone_start_address, _13
# memory.c:254: 	start = z->zone_start_address >>PAGE_2M_SHIFT;
	.loc 3 254 8
	shrq	$21, %rax	#, tmp150
	movq	%rax, -80(%rbp)	# tmp150, start
# memory.c:255: 	end = z->zone_end_address >> PAGE_2M_SHIFT;
	.loc 3 255 9
	movq	-72(%rbp), %rax	# z, tmp151
	movq	24(%rax), %rax	# z_65->zone_end_address, _14
# memory.c:255: 	end = z->zone_end_address >> PAGE_2M_SHIFT;
	.loc 3 255 6
	shrq	$21, %rax	#, tmp152
	movq	%rax, -88(%rbp)	# tmp152, end
# memory.c:256: 	length = z->zone_length>>PAGE_2M_SHIFT;
	.loc 3 256 12
	movq	-72(%rbp), %rax	# z, tmp153
	movq	32(%rax), %rax	# z_65->zone_length, _15
# memory.c:256: 	length = z->zone_length>>PAGE_2M_SHIFT;
	.loc 3 256 9
	shrq	$21, %rax	#, tmp154
	movq	%rax, -96(%rbp)	# tmp154, length
# memory.c:257: 	tmp=64-start%64;
	.loc 3 257 14
	movq	-80(%rbp), %rax	# start, tmp155
	andl	$63, %eax	#, tmp155
	movq	%rax, %rdx	# tmp155, _16
# memory.c:257: 	tmp=64-start%64;
	.loc 3 257 5
	movl	$64, %eax	#, tmp156
	subq	%rdx, %rax	# _16, tmp157
	movq	%rax, -104(%rbp)	# tmp157, tmp
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 7
	movq	-80(%rbp), %rax	# start, tmp158
	movq	%rax, -40(%rbp)	# tmp158, j
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 2
	jmp	.L58	#
.L68:
.LBB9:
# memory.c:260: 		unsigned long *p=memory_management_struct.bits_map+(j>>6);
	.loc 3 260 44
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp159
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _17
# memory.c:260: 		unsigned long *p=memory_management_struct.bits_map+(j>>6);
	.loc 3 260 56
	movq	-40(%rbp), %rdx	# j, tmp160
	shrq	$6, %rdx	#, _18
# memory.c:260: 		unsigned long *p=memory_management_struct.bits_map+(j>>6);
	.loc 3 260 53
	salq	$3, %rdx	#, _19
# memory.c:260: 		unsigned long *p=memory_management_struct.bits_map+(j>>6);
	.loc 3 260 18
	addq	%rdx, %rax	# _19, tmp161
	movq	%rax, -112(%rbp)	# tmp161, p
# memory.c:261: 		unsigned long shift=j%64;
	.loc 3 261 17
	movq	-40(%rbp), %rax	# j, tmp165
	andl	$63, %eax	#, tmp164
	movq	%rax, -120(%rbp)	# tmp164, shift
# memory.c:263: 		for(k=shift;k<64-shift;k++){
	.loc 3 263 8
	movq	-120(%rbp), %rax	# shift, tmp166
	movq	%rax, -48(%rbp)	# tmp166, k
# memory.c:263: 		for(k=shift;k<64-shift;k++){
	.loc 3 263 3
	jmp	.L59	#
.L65:
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 13
	movq	-112(%rbp), %rax	# p, tmp167
	movq	(%rax), %rax	# *p_71, _20
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 15
	movq	-48(%rbp), %rdx	# k, tmp168
	movl	%edx, %ecx	# _21, tmp200
	shrq	%cl, %rax	# tmp200, _20
	movq	%rax, %rsi	# _20, _22
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 24
	movq	-112(%rbp), %rax	# p, tmp169
	addq	$8, %rax	#, _23
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 21
	movq	(%rax), %rdx	# *_23, _24
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 32
	movq	-48(%rbp), %rax	# k, tmp170
	movl	%eax, %ecx	# tmp170, _25
	movl	$64, %eax	#, tmp171
	subl	%ecx, %eax	# _25, _26
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 27
	movl	%eax, %ecx	# _26, tmp202
	salq	%cl, %rdx	# tmp202, _24
	movq	%rdx, %rax	# _24, _27
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 19
	orq	%rax, %rsi	# _27, _22
	movq	%rsi, %rdx	# _22, _28
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 75
	cmpl	$64, -136(%rbp)	#, number
	je	.L60	#,
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 83 discriminator 1
	movl	-136(%rbp), %eax	# number, tmp172
	movl	$1, %esi	#, tmp173
	movl	%eax, %ecx	# tmp172, tmp205
	salq	%cl, %rsi	# tmp205, tmp173
	movq	%rsi, %rax	# tmp173, _29
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 75 discriminator 1
	subq	$1, %rax	#, iftmp.7_47
	jmp	.L61	#
.L60:
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 75 is_stmt 0 discriminator 2
	movq	$-1, %rax	#, iftmp.7_47
.L61:
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 37 is_stmt 1 discriminator 4
	andq	%rdx, %rax	# _28, _30
# memory.c:275: 			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
	.loc 3 275 8 discriminator 4
	testq	%rax, %rax	# _30
	jne	.L62	#,
.LBB10:
# memory.c:277: 				page=j+k-1;
	.loc 3 277 11
	movq	-40(%rbp), %rdx	# j, tmp174
	movq	-48(%rbp), %rax	# k, tmp175
	addq	%rdx, %rax	# tmp174, _31
# memory.c:277: 				page=j+k-1;
	.loc 3 277 9
	subq	$1, %rax	#, tmp176
	movq	%rax, -64(%rbp)	# tmp176, page
# memory.c:278: 				for(l=0;l<number;l++){
	.loc 3 278 10
	movq	$0, -56(%rbp)	#, l
# memory.c:278: 				for(l=0;l<number;l++){
	.loc 3 278 5
	jmp	.L63	#
.L64:
.LBB11:
# memory.c:279: 					struct Page *x=memory_management_struct.pages_struct+page+l;
	.loc 3 279 45
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp177
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _32
# memory.c:279: 					struct Page *x=memory_management_struct.pages_struct+page+l;
	.loc 3 279 63
	movq	-64(%rbp), %rdx	# page, tmp178
	movq	-56(%rbp), %rax	# l, tmp179
	addq	%rax, %rdx	# tmp179, _33
	movq	%rdx, %rax	# _33, tmp180
	salq	$2, %rax	#, tmp180
	addq	%rdx, %rax	# _33, tmp180
	salq	$3, %rax	#, tmp181
# memory.c:279: 					struct Page *x=memory_management_struct.pages_struct+page+l;
	.loc 3 279 19
	addq	%rcx, %rax	# _32, tmp182
	movq	%rax, -128(%rbp)	# tmp182, x
# memory.c:280: 					page_init(x,page_flags);
	.loc 3 280 6
	movq	-144(%rbp), %rdx	# page_flags, tmp183
	movq	-128(%rbp), %rax	# x, tmp184
	movq	%rdx, %rsi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	movabsq	$page_init@GOTOFF, %rax	#, tmp186
	leaq	(%rbx,%rax), %rax	#, tmp185
	call	*%rax	# tmp185
.LVL21:
.LBE11:
# memory.c:278: 				for(l=0;l<number;l++){
	.loc 3 278 23 discriminator 3
	addq	$1, -56(%rbp)	#, l
.L63:
# memory.c:278: 				for(l=0;l<number;l++){
	.loc 3 278 14 discriminator 1
	movl	-136(%rbp), %eax	# number, tmp187
	cltq
	cmpq	%rax, -56(%rbp)	# _35, l
	jb	.L64	#,
# memory.c:282: 				return (struct Page*)(memory_management_struct.pages_struct+page);
	.loc 3 282 51
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp188
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _36
# memory.c:282: 				return (struct Page*)(memory_management_struct.pages_struct+page);
	.loc 3 282 64
	movq	-64(%rbp), %rdx	# page, tmp189
	movq	%rdx, %rax	# tmp189, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# tmp189, tmp190
	salq	$3, %rax	#, tmp191
# memory.c:282: 				return (struct Page*)(memory_management_struct.pages_struct+page);
	.loc 3 282 12
	addq	%rcx, %rax	# _36, _46
	jmp	.L54	#
.L62:
.LBE10:
# memory.c:263: 		for(k=shift;k<64-shift;k++){
	.loc 3 263 27 discriminator 2
	addq	$1, -48(%rbp)	#, k
.L59:
# memory.c:263: 		for(k=shift;k<64-shift;k++){
	.loc 3 263 19 discriminator 1
	movl	$64, %eax	#, tmp192
	subq	-120(%rbp), %rax	# shift, _38
# memory.c:263: 		for(k=shift;k<64-shift;k++){
	.loc 3 263 16 discriminator 1
	cmpq	%rax, -48(%rbp)	# _38, k
	jb	.L65	#,
.LBE9:
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 26
	movq	-40(%rbp), %rax	# j, tmp193
	andl	$63, %eax	#, _39
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 36
	testq	%rax, %rax	# _39
	je	.L66	#,
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 36 is_stmt 0 discriminator 2
	movq	-104(%rbp), %rax	# tmp, iftmp.8_48
	jmp	.L67	#
.L66:
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 36 discriminator 3
	movl	$64, %eax	#, iftmp.8_48
.L67:
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 22 is_stmt 1 discriminator 5
	addq	%rax, -40(%rbp)	# iftmp.8_48, j
.L58:
# memory.c:259: 	for(j=start;j<=end;j+= j%64 ? tmp : 64){
	.loc 3 259 15 discriminator 6
	movq	-40(%rbp), %rax	# j, tmp194
	cmpq	%rax, -88(%rbp)	# tmp194, end
	jnb	.L68	#,
	jmp	.L57	#
.L70:
# memory.c:251: 		continue;
	.loc 3 251 3
	nop	
.L57:
.LBE8:
# memory.c:245: for(i=zone_start;i<=zone_end;i++){
	.loc 3 245 31 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L55:
# memory.c:245: for(i=zone_start;i<=zone_end;i++){
	.loc 3 245 19 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp195
	cmpl	-28(%rbp), %eax	# zone_end, tmp195
	jle	.L69	#,
# memory.c:287: return NULL;
	.loc 3 287 8
	movl	$0, %eax	#, _46
.L54:
# memory.c:288: }
	.loc 3 288 1
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	alloc_page, .-alloc_page
.Letext0:
	.file 4 "font.h"
	.file 5 "printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8e9
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x15
	.long	.LASF75
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x7
	.long	.LASF4
	.byte	0x2
	.byte	0x78
	.byte	0x5
	.long	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_DMA_INDEX
	.uleb128 0x16
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x7
	.long	.LASF5
	.byte	0x2
	.byte	0x79
	.byte	0x5
	.long	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_NORMAL_INDEX
	.uleb128 0x7
	.long	.LASF6
	.byte	0x2
	.byte	0x7a
	.byte	0x5
	.long	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_UNMAPED_INDEX
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0xc
	.long	.LASF11
	.byte	0x14
	.byte	0x2
	.byte	0x9d
	.long	0xc0
	.uleb128 0x1
	.long	.LASF8
	.byte	0x2
	.byte	0x9f
	.byte	0x13
	.long	0x35
	.byte	0
	.uleb128 0x1
	.long	.LASF9
	.byte	0x2
	.byte	0xa0
	.byte	0x13
	.long	0x35
	.byte	0x8
	.uleb128 0x1
	.long	.LASF10
	.byte	0x2
	.byte	0xa1
	.byte	0x12
	.long	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.long	.LASF12
	.value	0x2f8
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.long	0x19f
	.uleb128 0x1
	.long	.LASF13
	.byte	0x2
	.byte	0xa6
	.byte	0xe
	.long	0x19f
	.byte	0
	.uleb128 0x4
	.long	.LASF14
	.byte	0xa7
	.byte	0x10
	.long	0x35
	.value	0x280
	.uleb128 0x4
	.long	.LASF15
	.byte	0xb3
	.byte	0x12
	.long	0x1af
	.value	0x288
	.uleb128 0x4
	.long	.LASF16
	.byte	0xb4
	.byte	0x10
	.long	0x35
	.value	0x290
	.uleb128 0x4
	.long	.LASF17
	.byte	0xb5
	.byte	0x10
	.long	0x35
	.value	0x298
	.uleb128 0x4
	.long	.LASF18
	.byte	0xbe
	.byte	0x10
	.long	0x202
	.value	0x2a0
	.uleb128 0x4
	.long	.LASF19
	.byte	0xbf
	.byte	0x10
	.long	0x35
	.value	0x2a8
	.uleb128 0x4
	.long	.LASF20
	.byte	0xc0
	.byte	0x10
	.long	0x35
	.value	0x2b0
	.uleb128 0x4
	.long	.LASF21
	.byte	0xc8
	.byte	0x10
	.long	0x296
	.value	0x2b8
	.uleb128 0x4
	.long	.LASF22
	.byte	0xc9
	.byte	0x10
	.long	0x35
	.value	0x2c0
	.uleb128 0x4
	.long	.LASF23
	.byte	0xca
	.byte	0x10
	.long	0x35
	.value	0x2c8
	.uleb128 0x4
	.long	.LASF24
	.byte	0xd7
	.byte	0x10
	.long	0x35
	.value	0x2d0
	.uleb128 0x4
	.long	.LASF25
	.byte	0xd8
	.byte	0x10
	.long	0x35
	.value	0x2d8
	.uleb128 0x4
	.long	.LASF26
	.byte	0xd9
	.byte	0x10
	.long	0x35
	.value	0x2e0
	.uleb128 0x4
	.long	.LASF27
	.byte	0xda
	.byte	0x10
	.long	0x35
	.value	0x2e8
	.uleb128 0x4
	.long	.LASF28
	.byte	0xdc
	.byte	0x10
	.long	0x35
	.value	0x2f0
	.byte	0
	.uleb128 0xe
	.long	0x8c
	.long	0x1af
	.uleb128 0xf
	.long	0x35
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	0x35
	.uleb128 0xc
	.long	.LASF29
	.byte	0x28
	.byte	0x2
	.byte	0xe0
	.long	0x202
	.uleb128 0x1
	.long	.LASF30
	.byte	0x2
	.byte	0xe1
	.byte	0x12
	.long	0x296
	.byte	0
	.uleb128 0x1
	.long	.LASF31
	.byte	0x2
	.byte	0xe2
	.byte	0x13
	.long	0x35
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x2
	.byte	0xe3
	.byte	0x13
	.long	0x35
	.byte	0x10
	.uleb128 0x1
	.long	.LASF33
	.byte	0x2
	.byte	0xe4
	.byte	0x13
	.long	0x35
	.byte	0x18
	.uleb128 0x18
	.string	"age"
	.byte	0x2
	.byte	0xe5
	.byte	0x13
	.long	0x35
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0x1b4
	.uleb128 0xc
	.long	.LASF34
	.byte	0x50
	.byte	0x2
	.byte	0xe8
	.long	0x296
	.uleb128 0x1
	.long	.LASF35
	.byte	0x2
	.byte	0xe9
	.byte	0x10
	.long	0x202
	.byte	0
	.uleb128 0x1
	.long	.LASF20
	.byte	0x2
	.byte	0xea
	.byte	0x10
	.long	0x35
	.byte	0x8
	.uleb128 0x1
	.long	.LASF36
	.byte	0x2
	.byte	0xeb
	.byte	0x10
	.long	0x35
	.byte	0x10
	.uleb128 0x1
	.long	.LASF37
	.byte	0x2
	.byte	0xec
	.byte	0x10
	.long	0x35
	.byte	0x18
	.uleb128 0x1
	.long	.LASF38
	.byte	0x2
	.byte	0xed
	.byte	0x10
	.long	0x35
	.byte	0x20
	.uleb128 0x1
	.long	.LASF32
	.byte	0x2
	.byte	0xee
	.byte	0x10
	.long	0x35
	.byte	0x28
	.uleb128 0x1
	.long	.LASF39
	.byte	0x2
	.byte	0xf0
	.byte	0x24
	.long	0x29b
	.byte	0x30
	.uleb128 0x1
	.long	.LASF40
	.byte	0x2
	.byte	0xf1
	.byte	0x10
	.long	0x35
	.byte	0x38
	.uleb128 0x1
	.long	.LASF41
	.byte	0x2
	.byte	0xf2
	.byte	0x10
	.long	0x35
	.byte	0x40
	.uleb128 0x1
	.long	.LASF42
	.byte	0x2
	.byte	0xf4
	.byte	0x10
	.long	0x35
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	0x207
	.uleb128 0x6
	.long	0xc0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x2
	.byte	0xf7
	.byte	0x11
	.long	0x1af
	.uleb128 0x9
	.byte	0x3
	.quad	Global_CR3
	.uleb128 0x7
	.long	.LASF44
	.byte	0x2
	.byte	0xfa
	.byte	0x21
	.long	0xc0
	.uleb128 0x9
	.byte	0x3
	.quad	memory_management_struct
	.uleb128 0x19
	.byte	0x8
	.uleb128 0xe
	.long	0x2e4
	.long	0x2e4
	.uleb128 0xf
	.long	0x35
	.byte	0xff
	.uleb128 0xf
	.long	0x35
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.long	.LASF45
	.uleb128 0x7
	.long	.LASF46
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.long	0x2ce
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0xc
	.long	.LASF47
	.byte	0x28
	.byte	0x5
	.byte	0x20
	.long	0x376
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.long	0x52
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.long	0x52
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.long	0x52
	.byte	0x8
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.long	0x52
	.byte	0xc
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.byte	0x26
	.byte	0x9
	.long	0x52
	.byte	0x10
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.byte	0x27
	.byte	0x9
	.long	0x52
	.byte	0x14
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0x376
	.byte	0x18
	.uleb128 0x1
	.long	.LASF55
	.byte	0x5
	.byte	0x29
	.byte	0x13
	.long	0x35
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0x85
	.uleb128 0x12
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0x301
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0xe
	.long	0x3a1
	.long	0x3a1
	.uleb128 0x1a
	.long	0x35
	.value	0xfff
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.long	.LASF56
	.uleb128 0x1b
	.long	0x3a1
	.uleb128 0x12
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x390
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x5
	.byte	0x3b
	.byte	0x5
	.long	0x52
	.long	0x3e3
	.uleb128 0x10
	.long	0x85
	.uleb128 0x10
	.long	0x85
	.uleb128 0x10
	.long	0x3e3
	.uleb128 0x1d
	.byte	0
	.uleb128 0x6
	.long	0x3a8
	.uleb128 0x13
	.long	.LASF68
	.byte	0xde
	.byte	0xe
	.long	0x202
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x57a
	.uleb128 0xa
	.long	.LASF57
	.byte	0xde
	.byte	0x1d
	.long	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xa
	.long	.LASF58
	.byte	0xde
	.byte	0x2d
	.long	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xa
	.long	.LASF59
	.byte	0xde
	.byte	0x42
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3
	.string	"i"
	.byte	0x3
	.byte	0xdf
	.byte	0x6
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF60
	.byte	0xe0
	.byte	0x10
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF61
	.byte	0xe1
	.byte	0x6
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF62
	.byte	0xe2
	.byte	0x6
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x56c
	.uleb128 0x3
	.string	"z"
	.byte	0x3
	.byte	0xf6
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3
	.string	"j"
	.byte	0x3
	.byte	0xf7
	.byte	0x10
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF63
	.byte	0xf8
	.byte	0x10
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.string	"end"
	.byte	0x3
	.byte	0xf8
	.byte	0x16
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x5
	.long	.LASF9
	.byte	0xf8
	.byte	0x1a
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.string	"tmp"
	.byte	0x3
	.byte	0xf9
	.byte	0x10
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xd
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0xb
	.string	"p"
	.byte	0x3
	.value	0x104
	.byte	0x12
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x11
	.long	.LASF64
	.byte	0x3
	.value	0x105
	.byte	0x11
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xb
	.string	"k"
	.byte	0x3
	.value	0x106
	.byte	0x11
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0xb
	.string	"l"
	.byte	0x3
	.value	0x114
	.byte	0x18
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xd
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xb
	.string	"x"
	.byte	0x3
	.value	0x117
	.byte	0x13
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2
	.quad	.LVL21
	.long	0x7fa
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL20
	.long	0x3c2
	.byte	0
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x3
	.byte	0x1e
	.byte	0x6
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f5
	.uleb128 0x3
	.string	"i"
	.byte	0x3
	.byte	0x1f
	.byte	0x6
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"j"
	.byte	0x3
	.byte	0x1f
	.byte	0x8
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF65
	.byte	0x21
	.byte	0x10
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.byte	0x22
	.byte	0xf
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF66
	.byte	0x38
	.byte	0x6
	.long	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x8
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x62e
	.uleb128 0x3
	.string	"i"
	.byte	0x3
	.byte	0x25
	.byte	0xb
	.long	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x3
	.string	"tmp"
	.byte	0x3
	.byte	0x29
	.byte	0x11
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.quad	.LVL1
	.long	0x3c2
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x663
	.uleb128 0x5
	.long	.LASF63
	.byte	0x3d
	.byte	0x11
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.string	"end"
	.byte	0x3
	.byte	0x3d
	.byte	0x17
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x8
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x6b4
	.uleb128 0x5
	.long	.LASF63
	.byte	0x7e
	.byte	0x10
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3
	.string	"end"
	.byte	0x3
	.byte	0x7e
	.byte	0x17
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.string	"z"
	.byte	0x3
	.byte	0x7f
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3
	.string	"p"
	.byte	0x3
	.byte	0x80
	.byte	0xf
	.long	0x202
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x8
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x6e5
	.uleb128 0x3
	.string	"z"
	.byte	0x3
	.byte	0xb7
	.byte	0xf
	.long	0x296
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2
	.quad	.LVL12
	.long	0x3c2
	.byte	0
	.uleb128 0x8
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x70a
	.uleb128 0x5
	.long	.LASF67
	.byte	0xd1
	.byte	0x2
	.long	0x35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2
	.quad	.LVL0
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL2
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL3
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL4
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL5
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL6
	.long	0x86a
	.uleb128 0x2
	.quad	.LVL7
	.long	0x86a
	.uleb128 0x2
	.quad	.LVL8
	.long	0x86a
	.uleb128 0x2
	.quad	.LVL9
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL10
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL11
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL13
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL14
	.long	0x7fa
	.uleb128 0x2
	.quad	.LVL15
	.long	0x838
	.uleb128 0x2
	.quad	.LVL16
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL17
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL18
	.long	0x3c2
	.uleb128 0x2
	.quad	.LVL19
	.long	0x3c2
	.byte	0
	.uleb128 0x6
	.long	0x8c
	.uleb128 0x13
	.long	.LASF69
	.byte	0x5
	.byte	0xf
	.long	0x35
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x838
	.uleb128 0xa
	.long	.LASF60
	.byte	0x5
	.byte	0x27
	.long	0x202
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF70
	.byte	0x5
	.byte	0x3a
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x2
	.byte	0x88
	.byte	0x17
	.long	0x1af
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x86a
	.uleb128 0x3
	.string	"tmp"
	.byte	0x2
	.byte	0x89
	.byte	0x12
	.long	0x1af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF79
	.byte	0x1
	.value	0x120
	.byte	0x16
	.long	0x2cc
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e7
	.uleb128 0x14
	.long	.LASF71
	.byte	0x24
	.long	0x2cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"C"
	.byte	0x1
	.value	0x120
	.byte	0x3b
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF72
	.byte	0x43
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"ptr"
	.byte	0x1
	.value	0x122
	.byte	0x14
	.long	0x8e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.value	0x123
	.byte	0x13
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.value	0x132
	.byte	0xa
	.long	0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	0x2e4
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
	.uleb128 0x5
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 288
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
.LASF50:
	.string	"XPosition"
.LASF71:
	.string	"Address"
.LASF51:
	.string	"YPosition"
.LASF22:
	.string	"zones_size"
.LASF12:
	.string	"Global_Memory_Descriptor"
.LASF54:
	.string	"FB_addr"
.LASF29:
	.string	"Page"
.LASF40:
	.string	"page_using_count"
.LASF76:
	.string	"color_printk"
.LASF43:
	.string	"Global_CR3"
.LASF59:
	.string	"page_flags"
.LASF32:
	.string	"attribute"
.LASF24:
	.string	"start_code"
.LASF15:
	.string	"bits_map"
.LASF73:
	.string	"pattern"
.LASF39:
	.string	"GMD_struct"
.LASF28:
	.string	"end_of_struct"
.LASF17:
	.string	"bits_length"
.LASF52:
	.string	"XCharSize"
.LASF37:
	.string	"zone_end_address"
.LASF36:
	.string	"zone_start_address"
.LASF16:
	.string	"bits_size"
.LASF77:
	.string	"init_memory"
.LASF14:
	.string	"e820_length"
.LASF2:
	.string	"long int"
.LASF64:
	.string	"shift"
.LASF21:
	.string	"zones_struct"
.LASF53:
	.string	"YCharSize"
.LASF57:
	.string	"zone_select"
.LASF35:
	.string	"pages_group"
.LASF49:
	.string	"YResolution"
.LASF69:
	.string	"page_init"
.LASF9:
	.string	"length"
.LASF46:
	.string	"font_ascii"
.LASF4:
	.string	"ZONE_DMA_INDEX"
.LASF63:
	.string	"start"
.LASF45:
	.string	"unsigned char"
.LASF67:
	.string	"tmpreq"
.LASF55:
	.string	"FB_length"
.LASF70:
	.string	"flags"
.LASF8:
	.string	"address"
.LASF10:
	.string	"type"
.LASF19:
	.string	"pages_size"
.LASF44:
	.string	"memory_management_struct"
.LASF7:
	.string	"unsigned int"
.LASF18:
	.string	"pages_struct"
.LASF72:
	.string	"Count"
.LASF11:
	.string	"E820"
.LASF25:
	.string	"end_code"
.LASF6:
	.string	"ZONE_UNMAPED_INDEX"
.LASF56:
	.string	"char"
.LASF75:
	.string	"GNU C17 13.3.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF41:
	.string	"page_free_count"
.LASF42:
	.string	"total_pages_link"
.LASF62:
	.string	"zone_end"
.LASF31:
	.string	"PHY_address"
.LASF48:
	.string	"XResolution"
.LASF26:
	.string	"end_data"
.LASF3:
	.string	"long unsigned int"
.LASF33:
	.string	"reference_count"
.LASF5:
	.string	"ZONE_NORMAL_INDEX"
.LASF27:
	.string	"end_brk"
.LASF38:
	.string	"zone_length"
.LASF66:
	.string	"TotalMB"
.LASF74:
	.string	"remaining"
.LASF68:
	.string	"alloc_page"
.LASF78:
	.string	"Get_gdt"
.LASF23:
	.string	"zones_length"
.LASF13:
	.string	"e820"
.LASF79:
	.string	"Cmemset"
.LASF47:
	.string	"position"
.LASF34:
	.string	"Zone"
.LASF58:
	.string	"number"
.LASF60:
	.string	"page"
.LASF30:
	.string	"zone_struct"
.LASF20:
	.string	"pages_length"
.LASF65:
	.string	"TotalMem"
.LASF61:
	.string	"zone_start"
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
