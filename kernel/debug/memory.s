	.file	"memory.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/workspace/myos/kernel" "memory.c"
	.type	Get_gdt, @function
Get_gdt:
.LFB0:
	.file 1 "memory.h"
	.loc 1 185 32
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L3:
	leaq	.L3(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11	#,
	addq	%r11, %rax	#, tmp82
# memory.h:187: 	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			
	.loc 1 187 2
#APP
# 187 "memory.h" 1
	movq %cr3, %rax  	# tmp
	
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)	# tmp, tmp
# memory.h:192: 	return tmp;
	.loc 1 192 9
	movq	-8(%rbp), %rax	# tmp, _4
# memory.h:193: }
	.loc 1 193 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	Get_gdt, .-Get_gdt
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
.LFB13:
	.file 2 "lib.h"
	.loc 2 289 1
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
	movq	%rdi, -40(%rbp)	# Address, Address
	movl	%esi, %eax	# C, tmp93
	movq	%rdx, -56(%rbp)	# Count, Count
	movb	%al, -44(%rbp)	# tmp94, C
# lib.h:290:     unsigned char *ptr = (unsigned char *)Address;
	.loc 2 290 20
	movq	-40(%rbp), %rax	# Address, tmp95
	movq	%rax, -8(%rbp)	# tmp95, ptr
# lib.h:291:     unsigned long pattern = C;
	.loc 2 291 19
	movzbl	-44(%rbp), %eax	# C, tmp96
	movq	%rax, -24(%rbp)	# tmp96, pattern
# lib.h:302:     pattern |= (pattern << 8);
	.loc 2 302 25
	movq	-24(%rbp), %rax	# pattern, tmp97
	salq	$8, %rax	#, _1
# lib.h:302:     pattern |= (pattern << 8);
	.loc 2 302 13
	orq	%rax, -24(%rbp)	# _1, pattern
# lib.h:303:     pattern |= (pattern << 16);
	.loc 2 303 25
	movq	-24(%rbp), %rax	# pattern, tmp98
	salq	$16, %rax	#, _2
# lib.h:303:     pattern |= (pattern << 16);
	.loc 2 303 13
	orq	%rax, -24(%rbp)	# _2, pattern
# lib.h:304:     pattern |= (pattern << 32);
	.loc 2 304 25
	movq	-24(%rbp), %rax	# pattern, tmp99
	salq	$32, %rax	#, _3
# lib.h:304:     pattern |= (pattern << 32);
	.loc 2 304 13
	orq	%rax, -24(%rbp)	# _3, pattern
# lib.h:306:     long remaining = Count;
	.loc 2 306 10
	movq	-56(%rbp), %rax	# Count, tmp100
	movq	%rax, -16(%rbp)	# tmp100, remaining
# lib.h:309:     while (remaining >= 8) {
	.loc 2 309 11
	jmp	.L5	#
.L6:
# lib.h:310:         *((unsigned long *)ptr) = pattern;
	.loc 2 310 33
	movq	-8(%rbp), %rax	# ptr, tmp101
	movq	-24(%rbp), %rdx	# pattern, tmp102
	movq	%rdx, (%rax)	# tmp102, MEM[(long unsigned int *)ptr_9]
# lib.h:311:         ptr += 8;
	.loc 2 311 13
	addq	$8, -8(%rbp)	#, ptr
# lib.h:312:         remaining -= 8;
	.loc 2 312 19
	subq	$8, -16(%rbp)	#, remaining
.L5:
# lib.h:309:     while (remaining >= 8) {
	.loc 2 309 22
	cmpq	$7, -16(%rbp)	#, remaining
	jg	.L6	#,
# lib.h:316:     if (remaining & 4) {
	.loc 2 316 19
	movq	-16(%rbp), %rax	# remaining, tmp103
	andl	$4, %eax	#, _4
# lib.h:316:     if (remaining & 4) {
	.loc 2 316 8
	testq	%rax, %rax	# _4
	je	.L7	#,
# lib.h:317:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 2 317 34
	movq	-24(%rbp), %rax	# pattern, tmp104
	movl	%eax, %edx	# tmp104, _5
# lib.h:317:         *((unsigned int *)ptr) = (unsigned int)pattern;
	.loc 2 317 32
	movq	-8(%rbp), %rax	# ptr, tmp105
	movl	%edx, (%rax)	# _5, MEM[(unsigned int *)ptr_9]
# lib.h:318:         ptr += 4;
	.loc 2 318 13
	addq	$4, -8(%rbp)	#, ptr
.L7:
# lib.h:322:     if (remaining & 2) {
	.loc 2 322 19
	movq	-16(%rbp), %rax	# remaining, tmp106
	andl	$2, %eax	#, _6
# lib.h:322:     if (remaining & 2) {
	.loc 2 322 8
	testq	%rax, %rax	# _6
	je	.L8	#,
# lib.h:323:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 2 323 36
	movq	-24(%rbp), %rax	# pattern, tmp107
	movl	%eax, %edx	# tmp107, _7
# lib.h:323:         *((unsigned short *)ptr) = (unsigned short)pattern;
	.loc 2 323 34
	movq	-8(%rbp), %rax	# ptr, tmp108
	movw	%dx, (%rax)	# _7, MEM[(short unsigned int *)ptr_10]
# lib.h:324:         ptr += 2;
	.loc 2 324 13
	addq	$2, -8(%rbp)	#, ptr
.L8:
# lib.h:328:     if (remaining & 1) {
	.loc 2 328 19
	movq	-16(%rbp), %rax	# remaining, tmp109
	andl	$1, %eax	#, _8
# lib.h:328:     if (remaining & 1) {
	.loc 2 328 8
	testq	%rax, %rax	# _8
	je	.L9	#,
# lib.h:329:         *ptr = C;
	.loc 2 329 14
	movq	-8(%rbp), %rax	# ptr, tmp110
	movzbl	-44(%rbp), %edx	# C, tmp111
	movb	%dl, (%rax)	# tmp111, *ptr_11
.L9:
# lib.h:332:     return Address;
	.loc 2 332 12
	movq	-40(%rbp), %rax	# Address, _32
# lib.h:333: }
	.loc 2 333 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
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
.LFB35:
	.file 3 "memory.c"
	.loc 3 12 19
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
.L40:
	leaq	.L40(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L40, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:15: 	unsigned long TotalMem =0;
	.loc 3 15 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:16: 	struct E820 *p =NULL;
	.loc 3 16 15
	movq	$0, -40(%rbp)	#, p
# memory.c:17: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 3 17 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp260
	leaq	(%rbx,%rax), %rax	#, tmp259
	movq	%rax, %rdx	# tmp259,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp261
	addq	%rbx, %rcx	# tmp82, tmp261
	call	*%rcx	# tmp261
.LVL0:
# memory.c:18: 	p=(struct E820 *)0xffff800000007e00;
	.loc 3 18 3
	movabsq	$-140737488323072, %rax	#, tmp589
	movq	%rax, -40(%rbp)	# tmp589, p
.LBB2:
# memory.c:19: 	for (int i = 0; i < 32; i++)
	.loc 3 19 11
	movl	$0, -44(%rbp)	#, i
# memory.c:19: 	for (int i = 0; i < 32; i++)
	.loc 3 19 2
	jmp	.L13	#
.L16:
.LBB3:
# memory.c:22: 		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
	.loc 3 22 3
	movq	-40(%rbp), %rax	# p, tmp262
	movl	16(%rax), %ecx	# p_188->type, _1
	movq	-40(%rbp), %rax	# p, tmp263
	movq	8(%rax), %rdx	# p_188->length, _2
	movq	-40(%rbp), %rax	# p, tmp264
	movq	(%rax), %rax	# p_188->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp266
	leaq	(%rbx,%rax), %rax	#, tmp265
	movq	%rax, %rdx	# tmp265,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp267
	addq	%rbx, %r10	# tmp82, tmp267
	call	*%r10	# tmp267
.LVL1:
# memory.c:23: 		unsigned long tmp =0;
	.loc 3 23 17
	movq	$0, -64(%rbp)	#, tmp
# memory.c:24: 		if(p->type==1){
	.loc 3 24 7
	movq	-40(%rbp), %rax	# p, tmp268
	movl	16(%rax), %eax	# p_188->type, _4
# memory.c:24: 		if(p->type==1){
	.loc 3 24 5
	cmpl	$1, %eax	#, _4
	jne	.L14	#,
# memory.c:25: 			TotalMem +=p->length;
	.loc 3 25 16
	movq	-40(%rbp), %rax	# p, tmp269
	movq	8(%rax), %rax	# p_188->length, _5
# memory.c:25: 			TotalMem +=p->length;
	.loc 3 25 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L14:
# memory.c:27: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 27 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp270
	movl	-44(%rbp), %eax	# i, tmp272
	movslq	%eax, %rdx	# tmp272, tmp271
	addq	%rbx, %rcx	# tmp82, tmp273
	movq	%rdx, %rax	# tmp271, tmp275
	salq	$2, %rax	#, tmp275
	addq	%rdx, %rax	# tmp271, tmp275
	salq	$2, %rax	#, tmp276
	addq	%rcx, %rax	# tmp273, tmp277
	movq	(%rax), %rdx	# memory_management_struct.e820[i_189].address, _6
# memory.c:27: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 27 46
	movq	-40(%rbp), %rax	# p, tmp278
	movq	(%rax), %rax	# p_188->address, _7
# memory.c:27: 		memory_management_struct.e820[i].address+=p->address;
	.loc 3 27 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp279
	movl	-44(%rbp), %eax	# i, tmp281
	movslq	%eax, %rdx	# tmp281, tmp280
	addq	%rbx, %rsi	# tmp82, tmp282
	movq	%rdx, %rax	# tmp280, tmp284
	salq	$2, %rax	#, tmp284
	addq	%rdx, %rax	# tmp280, tmp284
	salq	$2, %rax	#, tmp285
	addq	%rsi, %rax	# tmp282, tmp286
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_189].address
# memory.c:28: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 28 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp287
	movl	-44(%rbp), %eax	# i, tmp289
	movslq	%eax, %rdx	# tmp289, tmp288
	movq	%rdx, %rax	# tmp288, tmp290
	salq	$2, %rax	#, tmp290
	addq	%rdx, %rax	# tmp288, tmp290
	salq	$2, %rax	#, tmp291
	addq	%rbx, %rax	# tmp82, tmp292
	addq	%rcx, %rax	# tmp287, tmp293
	addq	$8, %rax	#, tmp294
	movq	(%rax), %rdx	# memory_management_struct.e820[i_189].length, _9
# memory.c:28: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 28 45
	movq	-40(%rbp), %rax	# p, tmp295
	movq	8(%rax), %rax	# p_188->length, _10
# memory.c:28: 		memory_management_struct.e820[i].length+=p->length;
	.loc 3 28 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp296
	movl	-44(%rbp), %eax	# i, tmp298
	movslq	%eax, %rdx	# tmp298, tmp297
	movq	%rdx, %rax	# tmp297, tmp299
	salq	$2, %rax	#, tmp299
	addq	%rdx, %rax	# tmp297, tmp299
	salq	$2, %rax	#, tmp300
	addq	%rbx, %rax	# tmp82, tmp301
	addq	%rsi, %rax	# tmp296, tmp302
	addq	$8, %rax	#, tmp303
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_189].length
# memory.c:29: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 29 42
	movq	-40(%rbp), %rax	# p, tmp304
	movl	16(%rax), %ecx	# p_188->type, _12
# memory.c:29: 		memory_management_struct.e820[i].type=p->type;
	.loc 3 29 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp305
	movl	-44(%rbp), %eax	# i, tmp307
	movslq	%eax, %rdx	# tmp307, tmp306
	addq	%rbx, %rsi	# tmp82, tmp308
	movq	%rdx, %rax	# tmp306, tmp309
	salq	$2, %rax	#, tmp309
	addq	%rdx, %rax	# tmp306, tmp309
	salq	$2, %rax	#, tmp310
	addq	%rsi, %rax	# tmp308, tmp311
	addq	$16, %rax	#, tmp312
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_189].type
# memory.c:30: 		memory_management_struct.e820_length =i;
	.loc 3 30 40
	movl	-44(%rbp), %eax	# i, tmp313
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp314
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:31: 		p++;
	.loc 3 31 4
	addq	$20, -40(%rbp)	#, p
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 7
	movq	-40(%rbp), %rax	# p, tmp315
	movl	16(%rax), %eax	# p_213->type, _14
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 5
	cmpl	$4, %eax	#, _14
	ja	.L15	#,
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 20 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp316
	movq	8(%rax), %rax	# p_213->length, _15
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 17 discriminator 1
	testq	%rax, %rax	# _15
	je	.L15	#,
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 36 discriminator 2
	movq	-40(%rbp), %rax	# p, tmp317
	movl	16(%rax), %eax	# p_213->type, _16
# memory.c:32: 		if(p->type >4 ||p->length==0 || p->type<1){
	.loc 3 32 32 discriminator 2
	testl	%eax, %eax	# _16
	je	.L15	#,
.LBE3:
# memory.c:19: 	for (int i = 0; i < 32; i++)
	.loc 3 19 27 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L13:
# memory.c:19: 	for (int i = 0; i < 32; i++)
	.loc 3 19 20 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L16	#,
.L15:
.LBE2:
# memory.c:36: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 3 36 2
	movq	-32(%rbp), %rax	# TotalMem, tmp318
	movq	%rax, %rcx	# tmp318,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp320
	leaq	(%rbx,%rax), %rax	#, tmp319
	movq	%rax, %rdx	# tmp319,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp321
	addq	%rbx, %r8	# tmp82, tmp321
	call	*%r8	# tmp321
.LVL2:
# memory.c:37: 	TotalMem=0;
	.loc 3 37 10
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 7
	movl	$0, -20(%rbp)	#, i
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 2
	jmp	.L17	#
.L21:
.LBB4:
# memory.c:41: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 41 38
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp322
	movl	-20(%rbp), %eax	# i, tmp324
	movslq	%eax, %rdx	# tmp324, tmp323
	addq	%rbx, %rcx	# tmp82, tmp325
	movq	%rdx, %rax	# tmp323, tmp326
	salq	$2, %rax	#, tmp326
	addq	%rdx, %rax	# tmp323, tmp326
	salq	$2, %rax	#, tmp327
	addq	%rcx, %rax	# tmp325, tmp328
	addq	$16, %rax	#, tmp329
	movl	(%rax), %eax	# memory_management_struct.e820[i_177].type, _17
# memory.c:41: 		if(memory_management_struct.e820[i].type!=1){
	.loc 3 41 5
	cmpl	$1, %eax	#, _17
	jne	.L36	#,
# memory.c:44: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 44 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp330
	movl	-20(%rbp), %eax	# i, tmp332
	movslq	%eax, %rdx	# tmp332, tmp331
	addq	%rbx, %rcx	# tmp82, tmp333
	movq	%rdx, %rax	# tmp331, tmp335
	salq	$2, %rax	#, tmp335
	addq	%rdx, %rax	# tmp331, tmp335
	salq	$2, %rax	#, tmp336
	addq	%rcx, %rax	# tmp333, tmp337
	movq	(%rax), %rax	# memory_management_struct.e820[i_177].address, _18
	addq	$2097151, %rax	#, _19
# memory.c:44: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 44 8
	andq	$-2097152, %rax	#, tmp338
	movq	%rax, -120(%rbp)	# tmp338, start
# memory.c:45: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 45 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp339
	movl	-20(%rbp), %eax	# i, tmp341
	movslq	%eax, %rdx	# tmp341, tmp340
	addq	%rbx, %rcx	# tmp82, tmp342
	movq	%rdx, %rax	# tmp340, tmp344
	salq	$2, %rax	#, tmp344
	addq	%rdx, %rax	# tmp340, tmp344
	salq	$2, %rax	#, tmp345
	addq	%rcx, %rax	# tmp342, tmp346
	movq	(%rax), %rcx	# memory_management_struct.e820[i_177].address, _20
# memory.c:45: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 45 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp347
	movl	-20(%rbp), %eax	# i, tmp349
	movslq	%eax, %rdx	# tmp349, tmp348
	movq	%rdx, %rax	# tmp348, tmp350
	salq	$2, %rax	#, tmp350
	addq	%rdx, %rax	# tmp348, tmp350
	salq	$2, %rax	#, tmp351
	addq	%rbx, %rax	# tmp82, tmp352
	addq	%rsi, %rax	# tmp347, tmp353
	addq	$8, %rax	#, tmp354
	movq	(%rax), %rax	# memory_management_struct.e820[i_177].length, _21
# memory.c:45: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 45 49
	addq	%rcx, %rax	# _20, _22
# memory.c:45: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 45 6
	andq	$-2097152, %rax	#, tmp355
	movq	%rax, -128(%rbp)	# tmp355, end
# memory.c:46: 		if(end<=start){
	.loc 3 46 5
	movq	-128(%rbp), %rax	# end, tmp356
	cmpq	%rax, -120(%rbp)	# tmp356, start
	jnb	.L37	#,
# memory.c:49: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 49 17
	movq	-128(%rbp), %rax	# end, tmp357
	subq	-120(%rbp), %rax	# start, _23
# memory.c:49: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 49 24
	shrq	$21, %rax	#, _24
# memory.c:49: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 49 11
	addq	%rax, -32(%rbp)	# _24, TotalMem
	jmp	.L19	#
.L36:
# memory.c:42: 			continue;
	.loc 3 42 4
	nop	
	jmp	.L19	#
.L37:
# memory.c:47: 			continue;
	.loc 3 47 4
	nop	
.L19:
.LBE4:
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 51 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L17:
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 11 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp358
	cltq
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp359
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _26
# memory.c:39: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 39 11 discriminator 1
	cmpq	%rax, %rdx	# _25, _26
	jnb	.L21	#,
# memory.c:51: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 51 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp360
	movq	-32(%rbp), %rax	# TotalMem, tmp361
	movq	%rdx, %r8	# tmp360,
	movq	%rax, %rcx	# tmp361,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp363
	leaq	(%rbx,%rax), %rax	#, tmp362
	movq	%rax, %rdx	# tmp362,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp364
	addq	%rbx, %r9	# tmp82, tmp364
	call	*%r9	# tmp364
.LVL3:
# memory.c:52: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 52 65
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp365
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _27
# memory.c:52: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 52 78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp366
	leaq	(%rbx,%rax), %rcx	#, tmp367
	movq	%rdx, %rax	# _27, tmp369
	salq	$2, %rax	#, tmp369
	addq	%rdx, %rax	# _27, tmp369
	salq	$2, %rax	#, tmp370
	addq	%rcx, %rax	# tmp367, tmp371
	movq	(%rax), %rcx	# memory_management_struct.e820[_27].address, _28
# memory.c:52: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 52 141
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp372
	movq	640(%rbx,%rax), %rdx	# memory_management_struct.e820_length, _29
# memory.c:52: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 52 154
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp373
	movq	%rdx, %rax	# _29, tmp374
	salq	$2, %rax	#, tmp374
	addq	%rdx, %rax	# _29, tmp374
	salq	$2, %rax	#, tmp375
	addq	%rbx, %rax	# tmp82, tmp376
	addq	%rsi, %rax	# tmp373, tmp377
	addq	$8, %rax	#, tmp378
	movq	(%rax), %rax	# memory_management_struct.e820[_29].length, _30
# memory.c:52: 	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	.loc 3 52 10
	addq	%rcx, %rax	# _28, tmp379
	movq	%rax, -32(%rbp)	# tmp379, TotalMem
# memory.c:53: 	color_printk(ORANGE,BLACK,"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 3 53 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp380
	movq	-32(%rbp), %rax	# TotalMem, tmp381
	movq	%rdx, %r8	# tmp380,
	movq	%rax, %rcx	# tmp381,
	movabsq	$.LC4@GOTOFF, %rax	#, tmp383
	leaq	(%rbx,%rax), %rax	#, tmp382
	movq	%rax, %rdx	# tmp382,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp384
	addq	%rbx, %r9	# tmp82, tmp384
	call	*%r9	# tmp384
.LVL4:
# memory.c:63: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 63 79
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp385
	movq	744(%rbx,%rax), %rax	# memory_management_struct.end_brk, _31
# memory.c:63: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 63 100
	addq	$4095, %rax	#, _32
# memory.c:63: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 63 103
	andq	$-4096, %rax	#, _33
# memory.c:63: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 63 36
	movq	%rax, %rdx	# _33, _34
# memory.c:63: 	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 63 35
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp386
	movq	%rdx, 648(%rbx,%rax)	# _34, memory_management_struct.bits_map
# memory.c:70: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 70 45
	movq	-32(%rbp), %rax	# TotalMem, tmp387
	shrq	$21, %rax	#, tmp387
	movq	%rax, %rdx	# tmp387, _35
# memory.c:70: 	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	.loc 3 70 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp388
	movq	%rdx, 656(%rbx,%rax)	# _35, memory_management_struct.bits_size
# memory.c:104: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 104 41
	movq	-32(%rbp), %rax	# TotalMem, tmp389
	shrq	$21, %rax	#, _36
# memory.c:104: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 104 96
	addq	$63, %rax	#, _37
# memory.c:104: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 104 99
	shrq	$3, %rax	#, _38
# memory.c:104: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 104 102
	andq	$-8, %rax	#, _38
	movq	%rax, %rdx	# _38, _39
# memory.c:104: 	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	.loc 3 104 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp390
	movq	%rdx, 664(%rbx,%rax)	# _39, memory_management_struct.bits_length
# memory.c:105: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 105 73
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp391
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _40
# memory.c:105: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 105 2
	movq	%rax, %rdx	# _40, _41
# memory.c:105: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 105 34
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp392
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _42
# memory.c:105: 	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
	.loc 3 105 2
	movl	$255, %esi	#,
	movq	%rax, %rdi	# _42,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp394
	leaq	(%rbx,%rax), %rax	#, tmp393
	call	*%rax	# tmp393
.LVL5:
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 95
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp395
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _43
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 56
	movq	%rax, %rdx	# _43, _44
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp396
	movq	664(%rbx,%rax), %rax	# memory_management_struct.bits_length, _45
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 104
	addq	%rdx, %rax	# _44, _46
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 154
	addq	$4095, %rax	#, _47
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 157
	andq	$-4096, %rax	#, _48
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 39
	movq	%rax, %rdx	# _48, _49
# memory.c:123: memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 123 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp397
	movq	%rdx, 672(%rbx,%rax)	# _49, memory_management_struct.pages_struct
# memory.c:124: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 124 45
	movq	-32(%rbp), %rax	# TotalMem, tmp398
	shrq	$21, %rax	#, tmp398
	movq	%rax, %rdx	# tmp398, _50
# memory.c:124: memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
	.loc 3 124 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp399
	movq	%rdx, 680(%rbx,%rax)	# _50, memory_management_struct.pages_size
# memory.c:130: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 130 49
	movq	-32(%rbp), %rax	# TotalMem, tmp400
	shrq	$21, %rax	#, tmp400
	movq	%rax, %rdx	# tmp400, _51
# memory.c:130: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 130 65
	movq	%rdx, %rax	# _51, tmp401
	salq	$2, %rax	#, tmp401
	addq	%rdx, %rax	# _51, tmp401
	salq	$3, %rax	#, tmp402
# memory.c:130: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 130 98
	addq	$7, %rax	#, _53
# memory.c:130: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 130 101
	andq	$-8, %rax	#, _53
	movq	%rax, %rdx	# _53, _54
# memory.c:130: memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 130 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp403
	movq	%rdx, 688(%rbx,%rax)	# _54, memory_management_struct.pages_length
# memory.c:132: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 132 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp404
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _55
# memory.c:132: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 132 1
	movq	%rax, %rdx	# _55, _56
# memory.c:132: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 132 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp405
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _57
# memory.c:132: Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
	.loc 3 132 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _57,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp407
	leaq	(%rbx,%rax), %rax	#, tmp406
	call	*%rax	# tmp406
.LVL6:
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 94
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp408
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _58
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 55
	movq	%rax, %rdx	# _58, _59
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 132
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp409
	movq	688(%rbx,%rax), %rax	# memory_management_struct.pages_length, _60
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 107
	addq	%rdx, %rax	# _59, _61
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 158
	addq	$4095, %rax	#, _62
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 161
	andq	$-4096, %rax	#, _63
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 39
	movq	%rax, %rdx	# _63, _64
# memory.c:134: memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	.loc 3 134 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp410
	movq	%rdx, 696(%rbx,%rax)	# _64, memory_management_struct.zones_struct
# memory.c:147: memory_management_struct.zones_size=0;
	.loc 3 147 36
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp411
	movq	$0, 704(%rbx,%rax)	#, memory_management_struct.zones_size
# memory.c:148: memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 148 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp412
	movq	$400, 712(%rbx,%rax)	#, memory_management_struct.zones_length
# memory.c:149: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 149 76
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp413
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _65
# memory.c:149: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 149 1
	movq	%rax, %rdx	# _65, _66
# memory.c:149: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 149 33
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp414
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _67
# memory.c:149: Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
	.loc 3 149 1
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _67,
	movabsq	$Cmemset@GOTOFF, %rax	#, tmp416
	leaq	(%rbx,%rax), %rax	#, tmp415
	call	*%rax	# tmp415
.LVL7:
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 6
	movl	$0, -20(%rbp)	#, i
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 1
	jmp	.L22	#
.L28:
.LBB5:
# memory.c:154: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 154 37
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp417
	movl	-20(%rbp), %eax	# i, tmp419
	movslq	%eax, %rdx	# tmp419, tmp418
	addq	%rbx, %rcx	# tmp82, tmp420
	movq	%rdx, %rax	# tmp418, tmp421
	salq	$2, %rax	#, tmp421
	addq	%rdx, %rax	# tmp418, tmp421
	salq	$2, %rax	#, tmp422
	addq	%rcx, %rax	# tmp420, tmp423
	addq	$16, %rax	#, tmp424
	movl	(%rax), %eax	# memory_management_struct.e820[i_178].type, _68
# memory.c:154: 	if(memory_management_struct.e820[i].type!=1){
	.loc 3 154 4
	cmpl	$1, %eax	#, _68
	jne	.L38	#,
# memory.c:157: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 157 8
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp425
	movl	-20(%rbp), %eax	# i, tmp427
	movslq	%eax, %rdx	# tmp427, tmp426
	addq	%rbx, %rcx	# tmp82, tmp428
	movq	%rdx, %rax	# tmp426, tmp430
	salq	$2, %rax	#, tmp430
	addq	%rdx, %rax	# tmp426, tmp430
	salq	$2, %rax	#, tmp431
	addq	%rcx, %rax	# tmp428, tmp432
	movq	(%rax), %rax	# memory_management_struct.e820[i_178].address, _69
	addq	$2097151, %rax	#, _70
# memory.c:157: 	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 3 157 7
	andq	$-2097152, %rax	#, tmp433
	movq	%rax, -96(%rbp)	# tmp433, start
# memory.c:158: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 158 40
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp434
	movl	-20(%rbp), %eax	# i, tmp436
	movslq	%eax, %rdx	# tmp436, tmp435
	addq	%rbx, %rcx	# tmp82, tmp437
	movq	%rdx, %rax	# tmp435, tmp439
	salq	$2, %rax	#, tmp439
	addq	%rdx, %rax	# tmp435, tmp439
	salq	$2, %rax	#, tmp440
	addq	%rcx, %rax	# tmp437, tmp441
	movq	(%rax), %rcx	# memory_management_struct.e820[i_178].address, _71
# memory.c:158: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 158 81
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp442
	movl	-20(%rbp), %eax	# i, tmp444
	movslq	%eax, %rdx	# tmp444, tmp443
	movq	%rdx, %rax	# tmp443, tmp445
	salq	$2, %rax	#, tmp445
	addq	%rdx, %rax	# tmp443, tmp445
	salq	$2, %rax	#, tmp446
	addq	%rbx, %rax	# tmp82, tmp447
	addq	%rsi, %rax	# tmp442, tmp448
	addq	$8, %rax	#, tmp449
	movq	(%rax), %rax	# memory_management_struct.e820[i_178].length, _72
# memory.c:158: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 158 48
	addq	%rcx, %rax	# _71, _73
# memory.c:158: 	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 3 158 5
	andq	$-2097152, %rax	#, tmp450
	movq	%rax, -104(%rbp)	# tmp450, end
# memory.c:159: 	if(end<=start){
	.loc 3 159 4
	movq	-104(%rbp), %rax	# end, tmp451
	cmpq	%rax, -96(%rbp)	# tmp451, start
	jnb	.L39	#,
# memory.c:163: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 163 28
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp452
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _74
# memory.c:163: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 163 66
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp453
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _75
# memory.c:163: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 163 41
	movq	%rdx, %rax	# _75, tmp454
	salq	$2, %rax	#, tmp454
	addq	%rdx, %rax	# _75, tmp454
	salq	$4, %rax	#, tmp455
# memory.c:163: 	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	.loc 3 163 3
	addq	%rcx, %rax	# _74, tmp456
	movq	%rax, -112(%rbp)	# tmp456, z
# memory.c:164: 	memory_management_struct.zones_size++;
	.loc 3 164 26
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp457
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _77
# memory.c:164: 	memory_management_struct.zones_size++;
	.loc 3 164 37
	leaq	1(%rax), %rdx	#, _78
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp458
	movq	%rdx, 704(%rbx,%rax)	# _78, memory_management_struct.zones_size
# memory.c:165: 	z->zone_start_address=start;
	.loc 3 165 23
	movq	-112(%rbp), %rax	# z, tmp459
	movq	-96(%rbp), %rdx	# start, tmp460
	movq	%rdx, 16(%rax)	# tmp460, z_266->zone_start_address
# memory.c:166: 	z->zone_end_address=end;
	.loc 3 166 21
	movq	-112(%rbp), %rax	# z, tmp461
	movq	-104(%rbp), %rdx	# end, tmp462
	movq	%rdx, 24(%rax)	# tmp462, z_266->zone_end_address
# memory.c:167: 	z->zone_length=end-start;
	.loc 3 167 20
	movq	-104(%rbp), %rax	# end, tmp463
	subq	-96(%rbp), %rax	# start, tmp463
	movq	%rax, %rdx	# tmp463, _79
# memory.c:167: 	z->zone_length=end-start;
	.loc 3 167 16
	movq	-112(%rbp), %rax	# z, tmp464
	movq	%rdx, 32(%rax)	# _79, z_266->zone_length
# memory.c:168: 	z->page_using_count=0;
	.loc 3 168 21
	movq	-112(%rbp), %rax	# z, tmp465
	movq	$0, 56(%rax)	#, z_266->page_using_count
# memory.c:169: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 169 25
	movq	-104(%rbp), %rax	# end, tmp466
	subq	-96(%rbp), %rax	# start, _80
# memory.c:169: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 169 32
	shrq	$21, %rax	#, _80
	movq	%rax, %rdx	# _80, _81
# memory.c:169: 	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 169 20
	movq	-112(%rbp), %rax	# z, tmp467
	movq	%rdx, 64(%rax)	# _81, z_266->page_free_count
# memory.c:170: 	z->total_pages_link=0;
	.loc 3 170 21
	movq	-112(%rbp), %rax	# z, tmp468
	movq	$0, 72(%rax)	#, z_266->total_pages_link
# memory.c:171: 	z->attribute=0;
	.loc 3 171 14
	movq	-112(%rbp), %rax	# z, tmp469
	movq	$0, 40(%rax)	#, z_266->attribute
# memory.c:172: 	z->GMD_struct=&memory_management_struct;
	.loc 3 172 15
	movq	-112(%rbp), %rax	# z, tmp470
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp472
	leaq	(%rbx,%rdx), %rdx	#, tmp471
	movq	%rdx, 48(%rax)	# tmp471, z_266->GMD_struct
# memory.c:173: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 173 22
	movq	-104(%rbp), %rax	# end, tmp473
	subq	-96(%rbp), %rax	# start, _82
# memory.c:173: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 173 29
	shrq	$21, %rax	#, _82
	movq	%rax, %rdx	# _82, _83
# memory.c:173: 	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	.loc 3 173 17
	movq	-112(%rbp), %rax	# z, tmp474
	movq	%rdx, 8(%rax)	# _83, z_266->pages_length
# memory.c:174: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 174 56
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp475
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _84
# memory.c:174: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 174 77
	movq	-96(%rbp), %rax	# start, tmp476
	shrq	$21, %rax	#, tmp476
	movq	%rax, %rdx	# tmp476, _85
# memory.c:174: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 174 69
	movq	%rdx, %rax	# _85, tmp477
	salq	$2, %rax	#, tmp477
	addq	%rdx, %rax	# _85, tmp477
	salq	$3, %rax	#, tmp478
# memory.c:174: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 174 17
	leaq	(%rcx,%rax), %rdx	#, _87
# memory.c:174: 	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));
	.loc 3 174 16
	movq	-112(%rbp), %rax	# z, tmp479
	movq	%rdx, (%rax)	# _87, z_266->pages_group
# memory.c:177: 	p=z->pages_group;
	.loc 3 177 3
	movq	-112(%rbp), %rax	# z, tmp480
	movq	(%rax), %rax	# z_266->pages_group, tmp481
	movq	%rax, -56(%rbp)	# tmp481, p
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 7
	movl	$0, -24(%rbp)	#, j
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 2
	jmp	.L26	#
.L27:
# memory.c:179: 		p->zone_struct=z;
	.loc 3 179 17
	movq	-56(%rbp), %rax	# p, tmp482
	movq	-112(%rbp), %rdx	# z, tmp483
	movq	%rdx, (%rax)	# tmp483, p_190->zone_struct
# memory.c:180: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 180 36
	movl	-24(%rbp), %eax	# j, tmp484
	cltq
	salq	$21, %rax	#, _88
	movq	%rax, %rdx	# _88, _89
# memory.c:180: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 180 23
	movq	-96(%rbp), %rax	# start, tmp485
	addq	%rax, %rdx	# tmp485, _90
# memory.c:180: 		p->PHY_address=start+PAGE_2M_SIZE*j;
	.loc 3 180 17
	movq	-56(%rbp), %rax	# p, tmp486
	movq	%rdx, 8(%rax)	# _90, p_190->PHY_address
# memory.c:181: 		p->attribute=0;
	.loc 3 181 15
	movq	-56(%rbp), %rax	# p, tmp487
	movq	$0, 16(%rax)	#, p_190->attribute
# memory.c:182: 		p->reference_count=0;
	.loc 3 182 21
	movq	-56(%rbp), %rax	# p, tmp488
	movq	$0, 24(%rax)	#, p_190->reference_count
# memory.c:183: 		p->age=0;
	.loc 3 183 9
	movq	-56(%rbp), %rax	# p, tmp489
	movq	$0, 32(%rax)	#, p_190->age
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp490
	movq	648(%rbx,%rax), %rdx	# memory_management_struct.bits_map, _91
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 42
	movq	-56(%rbp), %rax	# p, tmp491
	movq	8(%rax), %rax	# p_190->PHY_address, _92
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 3
	shrq	$27, %rax	#, _93
	salq	$3, %rax	#, _94
	addq	%rdx, %rax	# _91, _95
	movq	(%rax), %rdx	# *_95, _96
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 86
	movq	-56(%rbp), %rax	# p, tmp492
	movq	8(%rax), %rax	# p_190->PHY_address, _97
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 99
	shrq	$21, %rax	#, _98
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 115
	andl	$63, %eax	#, _100
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 82
	movl	$1, %esi	#, tmp493
	movl	%eax, %ecx	# _100, tmp600
	salq	%cl, %rsi	# tmp600, _101
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 29
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp494
	movq	648(%rbx,%rax), %rcx	# memory_management_struct.bits_map, _102
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 42
	movq	-56(%rbp), %rax	# p, tmp495
	movq	8(%rax), %rax	# p_190->PHY_address, _103
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 3
	shrq	$27, %rax	#, _104
	salq	$3, %rax	#, _105
	addq	%rcx, %rax	# _102, _106
# memory.c:231: 		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 231 76
	xorq	%rsi, %rdx	# _101, _107
	movq	%rdx, (%rax)	# _107, *_106
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 29 discriminator 3
	addl	$1, -24(%rbp)	#, j
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 33 discriminator 3
	addq	$40, -56(%rbp)	#, p
.L26:
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp496
	movslq	%eax, %rdx	# tmp496, _108
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 13 discriminator 1
	movq	-112(%rbp), %rax	# z, tmp497
	movq	8(%rax), %rax	# z_266->pages_length, _109
# memory.c:178: 	for(j=0;j<z->pages_length;j++,p++){
	.loc 3 178 11 discriminator 1
	cmpq	%rax, %rdx	# _109, _108
	jb	.L27	#,
	jmp	.L24	#
.L38:
# memory.c:155: 		continue;
	.loc 3 155 3
	nop	
	jmp	.L24	#
.L39:
# memory.c:160: 		continue;
	.loc 3 160 3
	nop	
.L24:
.LBE5:
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 50 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L22:
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp498
	cltq
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 36 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp499
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _111
# memory.c:150: for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 3 150 10 discriminator 1
	cmpq	%rax, %rdx	# _110, _111
	jnb	.L28	#,
# memory.c:234: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 234 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp500
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _112
# memory.c:234: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 234 76
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp501
	movq	696(%rbx,%rdx), %rdx	# memory_management_struct.zones_struct, _113
# memory.c:234: memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
	.loc 3 234 51
	movq	%rdx, (%rax)	# _113, _112->zone_struct
# memory.c:235: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 235 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp502
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _114
# memory.c:235: memory_management_struct.pages_struct->PHY_address=0UL;
	.loc 3 235 51
	movq	$0, 8(%rax)	#, _114->PHY_address
# memory.c:236: memory_management_struct.pages_struct->attribute=0;
	.loc 3 236 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp503
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _115
# memory.c:236: memory_management_struct.pages_struct->attribute=0;
	.loc 3 236 49
	movq	$0, 16(%rax)	#, _115->attribute
# memory.c:237: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 237 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp504
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _116
# memory.c:237: memory_management_struct.pages_struct->reference_count=0;
	.loc 3 237 55
	movq	$0, 24(%rax)	#, _116->reference_count
# memory.c:238: memory_management_struct.pages_struct->age=0;
	.loc 3 238 25
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp505
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _117
# memory.c:238: memory_management_struct.pages_struct->age=0;
	.loc 3 238 43
	movq	$0, 32(%rax)	#, _117->age
# memory.c:239: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 239 64
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp506
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _118
# memory.c:239: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 239 75
	movq	%rdx, %rax	# _118, tmp507
	salq	$2, %rax	#, tmp507
	addq	%rdx, %rax	# _118, tmp507
	salq	$4, %rax	#, tmp508
# memory.c:239: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 239 108
	addq	$7, %rax	#, _120
# memory.c:239: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 239 111
	andq	$-8, %rax	#, _120
	movq	%rax, %rdx	# _120, _121
# memory.c:239: memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
	.loc 3 239 38
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp509
	movq	%rdx, 712(%rbx,%rax)	# _121, memory_management_struct.zones_length
# memory.c:241: color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
	.loc 3 241 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp510
	movq	664(%rbx,%rax), %rcx	# memory_management_struct.bits_length, _122
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp511
	movq	656(%rbx,%rax), %rdx	# memory_management_struct.bits_size, _123
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp512
	movq	648(%rbx,%rax), %rax	# memory_management_struct.bits_map, _124
	movq	%rcx, %r9	# _122,
	movq	%rdx, %r8	# _123,
	movq	%rax, %rcx	# _124,
	movabsq	$.LC5@GOTOFF, %rax	#, tmp514
	leaq	(%rbx,%rax), %rax	#, tmp513
	movq	%rax, %rdx	# tmp513,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp515
	addq	%rbx, %r10	# tmp82, tmp515
	call	*%r10	# tmp515
.LVL8:
# memory.c:242: color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
	.loc 3 242 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp516
	movq	688(%rbx,%rax), %rcx	# memory_management_struct.pages_length, _125
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp517
	movq	680(%rbx,%rax), %rdx	# memory_management_struct.pages_size, _126
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp518
	movq	672(%rbx,%rax), %rax	# memory_management_struct.pages_struct, _127
	movq	%rcx, %r9	# _125,
	movq	%rdx, %r8	# _126,
	movq	%rax, %rcx	# _127,
	movabsq	$.LC6@GOTOFF, %rax	#, tmp520
	leaq	(%rbx,%rax), %rax	#, tmp519
	movq	%rax, %rdx	# tmp519,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp521
	addq	%rbx, %r10	# tmp82, tmp521
	call	*%r10	# tmp521
.LVL9:
# memory.c:243: color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);
	.loc 3 243 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp522
	movq	712(%rbx,%rax), %rcx	# memory_management_struct.zones_length, _128
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp523
	movq	704(%rbx,%rax), %rdx	# memory_management_struct.zones_size, _129
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp524
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _130
	movq	%rcx, %r9	# _128,
	movq	%rdx, %r8	# _129,
	movq	%rax, %rcx	# _130,
	movabsq	$.LC7@GOTOFF, %rax	#, tmp526
	leaq	(%rbx,%rax), %rax	#, tmp525
	movq	%rax, %rdx	# tmp525,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp527
	addq	%rbx, %r10	# tmp82, tmp527
	call	*%r10	# tmp527
.LVL10:
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 6
	movl	$0, -20(%rbp)	#, i
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 1
	jmp	.L29	#
.L31:
.LBB6:
# memory.c:247: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 247 41
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp528
	movq	696(%rbx,%rax), %rcx	# memory_management_struct.zones_struct, _131
# memory.c:247: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 247 54
	movl	-20(%rbp), %eax	# i, tmp529
	movslq	%eax, %rdx	# tmp529, _132
	movq	%rdx, %rax	# _132, tmp530
	salq	$2, %rax	#, tmp530
	addq	%rdx, %rax	# _132, tmp530
	salq	$4, %rax	#, tmp531
# memory.c:247: 	struct Zone *z=memory_management_struct.zones_struct+i;
	.loc 3 247 15
	addq	%rcx, %rax	# _131, tmp532
	movq	%rax, -88(%rbp)	# tmp532, z
# memory.c:248: 	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);
	.loc 3 248 2
	movq	-88(%rbp), %rax	# z, tmp533
	movq	8(%rax), %rcx	# z_260->pages_length, _134
	movq	-88(%rbp), %rax	# z, tmp534
	movq	(%rax), %rdx	# z_260->pages_group, _135
	movq	-88(%rbp), %rax	# z, tmp535
	movq	32(%rax), %rdi	# z_260->zone_length, _136
	movq	-88(%rbp), %rax	# z, tmp536
	movq	24(%rax), %rsi	# z_260->zone_end_address, _137
	movq	-88(%rbp), %rax	# z, tmp537
	movq	16(%rax), %rax	# z_260->zone_start_address, _138
	pushq	%rcx	# _134
	pushq	%rdx	# _135
	movq	%rdi, %r9	# _136,
	movq	%rsi, %r8	# _137,
	movq	%rax, %rcx	# _138,
	movabsq	$.LC8@GOTOFF, %rax	#, tmp539
	leaq	(%rbx,%rax), %rax	#, tmp538
	movq	%rax, %rdx	# tmp538,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp540
	addq	%rbx, %r10	# tmp82, tmp540
	call	*%r10	# tmp540
.LVL11:
	addq	$16, %rsp	#,
# memory.c:250: 	if(z->zone_start_address==0x100000000){
	.loc 3 250 6
	movq	-88(%rbp), %rax	# z, tmp541
	movq	16(%rax), %rdx	# z_260->zone_start_address, _139
# memory.c:250: 	if(z->zone_start_address==0x100000000){
	.loc 3 250 4
	movabsq	$4294967296, %rax	#, tmp542
	cmpq	%rax, %rdx	# tmp542, _139
	jne	.L30	#,
# memory.c:251: 		ZONE_UNMAPED_INDEX=i;
	.loc 3 251 21
	movabsq	$ZONE_UNMAPED_INDEX@GOTOFF, %rdx	#, tmp543
	movl	-20(%rbp), %eax	# i, tmp544
	movl	%eax, (%rbx,%rdx)	# tmp544, ZONE_UNMAPED_INDEX
.L30:
.LBE6:
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 48 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L29:
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 10 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp545
	movslq	%eax, %rdx	# tmp545, _140
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 35 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp546
	movq	704(%rbx,%rax), %rax	# memory_management_struct.zones_size, _141
# memory.c:246: for(i=0;i<memory_management_struct.zones_size;i++){
	.loc 3 246 10 discriminator 1
	cmpq	%rax, %rdx	# _141, _140
	jb	.L31	#,
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 96
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp547
	movq	696(%rbx,%rax), %rax	# memory_management_struct.zones_struct, _142
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 57
	movq	%rax, %rdx	# _142, _143
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 134
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp548
	movq	712(%rbx,%rax), %rax	# memory_management_struct.zones_length, _144
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 109
	addq	%rdx, %rax	# _143, _145
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 41
	addq	$256, %rax	#, _146
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 164
	andq	$-8, %rax	#, _146
	movq	%rax, %rdx	# _146, _147
# memory.c:259: 	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	.loc 3 259 40
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp549
	movq	%rdx, 752(%rbx,%rax)	# _147, memory_management_struct.end_of_struct
# memory.c:278: 	color_printk(ORANGE,BLACK,"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n",memory_management_struct.start_code,memory_management_struct.end_code,memory_management_struct.end_data,memory_management_struct.end_brk,memory_management_struct.end_of_struct);
	.loc 3 278 2
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp550
	movq	752(%rbx,%rax), %rcx	# memory_management_struct.end_of_struct, _148
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp551
	movq	744(%rbx,%rax), %rdx	# memory_management_struct.end_brk, _149
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp552
	movq	736(%rbx,%rax), %rdi	# memory_management_struct.end_data, _150
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp553
	movq	728(%rbx,%rax), %rsi	# memory_management_struct.end_code, _151
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp554
	movq	720(%rbx,%rax), %rax	# memory_management_struct.start_code, _152
	pushq	%rcx	# _148
	pushq	%rdx	# _149
	movq	%rdi, %r9	# _150,
	movq	%rsi, %r8	# _151,
	movq	%rax, %rcx	# _152,
	movabsq	$.LC9@GOTOFF, %rax	#, tmp556
	leaq	(%rbx,%rax), %rax	#, tmp555
	movq	%rax, %rdx	# tmp555,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp557
	addq	%rbx, %r10	# tmp82, tmp557
	call	*%r10	# tmp557
.LVL12:
	addq	$16, %rsp	#,
# memory.c:279: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 279 4
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp558
	movq	752(%rbx,%rax), %rax	# memory_management_struct.end_of_struct, _153
	movabsq	$140737488355328, %rdx	#, tmp559
	addq	%rdx, %rax	# tmp559, _154
# memory.c:279: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 279 55
	shrq	$21, %rax	#, _155
# memory.c:279: 	i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
	.loc 3 279 3
	movl	%eax, -20(%rbp)	# _155, i
# memory.c:280: 	for(j=0;j<=i;j++){
	.loc 3 280 7
	movl	$0, -24(%rbp)	#, j
# memory.c:280: 	for(j=0;j<=i;j++){
	.loc 3 280 2
	jmp	.L32	#
.L33:
# memory.c:281: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 281 37
	movabsq	$memory_management_struct@GOTOFF, %rax	#, tmp560
	movq	672(%rbx,%rax), %rcx	# memory_management_struct.pages_struct, _156
# memory.c:281: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 281 50
	movl	-24(%rbp), %eax	# j, tmp561
	movslq	%eax, %rdx	# tmp561, _157
	movq	%rdx, %rax	# _157, tmp562
	salq	$2, %rax	#, tmp562
	addq	%rdx, %rax	# _157, tmp562
	salq	$3, %rax	#, tmp563
# memory.c:281: 		page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
	.loc 3 281 3
	addq	%rcx, %rax	# _156, _159
	movl	$147, %esi	#,
	movq	%rax, %rdi	# _159,
	movabsq	$page_init@GOTOFF, %rax	#, tmp565
	leaq	(%rbx,%rax), %rax	#, tmp564
	call	*%rax	# tmp564
.LVL13:
# memory.c:280: 	for(j=0;j<=i;j++){
	.loc 3 280 16 discriminator 3
	addl	$1, -24(%rbp)	#, j
.L32:
# memory.c:280: 	for(j=0;j<=i;j++){
	.loc 3 280 11 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp566
	cmpl	-20(%rbp), %eax	# i, tmp566
	jle	.L33	#,
# memory.c:284: 	unsigned long Global_CR3=Get_gdt();
	.loc 3 284 27
	movl	$0, %eax	#,
	movabsq	$Get_gdt@GOTOFF, %rdx	#, tmp568
	leaq	(%rbx,%rdx), %rdx	#, tmp567
	call	*%rdx	# tmp567
.LVL14:
# memory.c:284: 	unsigned long Global_CR3=Get_gdt();
	.loc 3 284 16 discriminator 1
	movq	%rax, -72(%rbp)	# _160, Global_CR3
# memory.c:285: 	color_printk(INDIGO,BLACK,"Global_CR3\t:%#018lx\n",Global_CR3);
	.loc 3 285 2
	movq	-72(%rbp), %rax	# Global_CR3, tmp569
	movq	%rax, %rcx	# tmp569,
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
.LVL15:
# memory.c:286: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 286 55
	movabsq	$-140737488355328, %rdx	#, tmp573
	movq	-72(%rbp), %rax	# Global_CR3, tmp574
	addq	%rdx, %rax	# tmp573, _161
# memory.c:286: 	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	.loc 3 286 2
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
.LVL16:
# memory.c:287: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 287 56
	movabsq	$-140737488355328, %rdx	#, tmp578
	movq	-72(%rbp), %rax	# Global_CR3, tmp579
	addq	%rdx, %rax	# tmp578, _164
	movq	(%rax), %rax	# *_165, _166
	movb	$0, %al	#, _166
	movq	%rax, %rdx	# _166, _167
	movabsq	$-140737488355328, %rax	#, tmp580
	addq	%rdx, %rax	# _167, _168
# memory.c:287: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 287 55
	movq	(%rax), %rax	# *_169, _170
# memory.c:287: 	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	.loc 3 287 2
	movb	$0, %al	#, _171
	movq	%rax, %rcx	# _171,
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
.LVL17:
# memory.c:288: 	for(i=0;i<10;i++){
	.loc 3 288 7
	movl	$0, -20(%rbp)	#, i
# memory.c:288: 	for(i=0;i<10;i++){
	.loc 3 288 2
	jmp	.L34	#
.L35:
# memory.c:289: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 289 28
	movl	-20(%rbp), %eax	# i, tmp584
	cltq
	leaq	0(,%rax,8), %rdx	#, _173
	movq	-72(%rbp), %rax	# Global_CR3, tmp585
	addq	%rax, %rdx	# tmp585, _174
	movabsq	$-140737488355328, %rax	#, tmp586
	addq	%rdx, %rax	# _174, _175
# memory.c:289: 		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	.loc 3 289 31
	movq	$0, (%rax)	#, *_176
# memory.c:288: 	for(i=0;i<10;i++){
	.loc 3 288 16 discriminator 3
	addl	$1, -20(%rbp)	#, i
.L34:
# memory.c:288: 	for(i=0;i<10;i++){
	.loc 3 288 11 discriminator 1
	cmpl	$9, -20(%rbp)	#, i
	jle	.L35	#,
.LBB7:
# memory.c:291: 	flush_tlb();
	.loc 3 291 2
#APP
# 291 "memory.c" 1
	movq %cr3, %rax	# tmpreq
	movq %rax, %cr3	# tmpreq
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)	# tmpreq, tmpreq
.LBE7:
# memory.c:292: }
	.loc 3 292 1
	nop	
	leaq	-16(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	init_memory, .-init_memory
	.globl	page_init
	.type	page_init, @function
page_init:
.LFB36:
	.loc 3 296 64
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
.L47:
	leaq	.L47(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L47, %r11	#,
	addq	%r11, %rax	#, tmp82
	movq	%rdi, -8(%rbp)	# page, page
	movq	%rsi, -16(%rbp)	# flags, flags
# memory.c:297: 	if(!page->attribute){
	.loc 3 297 10
	movq	-8(%rbp), %rdx	# page, tmp146
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _1
# memory.c:297: 	if(!page->attribute){
	.loc 3 297 4
	testq	%rdx, %rdx	# _1
	jne	.L42	#,
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp147
	movq	648(%rax,%rdx), %rcx	# memory_management_struct.bits_map, _2
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 45
	movq	-8(%rbp), %rdx	# page, tmp148
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _3
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 3
	shrq	$27, %rdx	#, _4
	salq	$3, %rdx	#, _5
	addq	%rcx, %rdx	# _2, _6
	movq	(%rdx), %rsi	# *_6, _7
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 95
	movq	-8(%rbp), %rdx	# page, tmp149
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _8
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 108
	shrq	$21, %rdx	#, _9
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 124
	andl	$63, %edx	#, _11
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 87
	movl	$1, %edi	#, tmp150
	movl	%edx, %ecx	# _11, tmp180
	salq	%cl, %rdi	# tmp180, tmp150
	movq	%rdi, %rcx	# tmp150, _12
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp151
	movq	648(%rax,%rdx), %rdx	# memory_management_struct.bits_map, _13
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 45
	movq	-8(%rbp), %rax	# page, tmp152
	movq	8(%rax), %rax	# page_64(D)->PHY_address, _14
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 3
	shrq	$27, %rax	#, _15
	salq	$3, %rax	#, _16
	addq	%rdx, %rax	# _13, _17
# memory.c:298: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 298 80
	orq	%rcx, %rsi	# _12, _7
	movq	%rsi, %rdx	# _7, _18
	movq	%rdx, (%rax)	# _18, *_17
# memory.c:299: 		page->attribute = flags;
	.loc 3 299 19
	movq	-8(%rbp), %rax	# page, tmp153
	movq	-16(%rbp), %rdx	# flags, tmp154
	movq	%rdx, 16(%rax)	# tmp154, page_64(D)->attribute
# memory.c:300: 		page->reference_count++;
	.loc 3 300 7
	movq	-8(%rbp), %rax	# page, tmp155
	movq	24(%rax), %rax	# page_64(D)->reference_count, _19
# memory.c:300: 		page->reference_count++;
	.loc 3 300 24
	leaq	1(%rax), %rdx	#, _20
	movq	-8(%rbp), %rax	# page, tmp156
	movq	%rdx, 24(%rax)	# _20, page_64(D)->reference_count
# memory.c:301: 		page->zone_struct->page_using_count++;
	.loc 3 301 7
	movq	-8(%rbp), %rax	# page, tmp157
	movq	(%rax), %rax	# page_64(D)->zone_struct, _21
# memory.c:301: 		page->zone_struct->page_using_count++;
	.loc 3 301 20
	movq	56(%rax), %rdx	# _21->page_using_count, _22
# memory.c:301: 		page->zone_struct->page_using_count++;
	.loc 3 301 38
	addq	$1, %rdx	#, _23
	movq	%rdx, 56(%rax)	# _23, _21->page_using_count
# memory.c:302: 		page->zone_struct->page_free_count--;
	.loc 3 302 7
	movq	-8(%rbp), %rax	# page, tmp158
	movq	(%rax), %rax	# page_64(D)->zone_struct, _24
# memory.c:302: 		page->zone_struct->page_free_count--;
	.loc 3 302 20
	movq	64(%rax), %rdx	# _24->page_free_count, _25
# memory.c:302: 		page->zone_struct->page_free_count--;
	.loc 3 302 37
	subq	$1, %rdx	#, _26
	movq	%rdx, 64(%rax)	# _26, _24->page_free_count
# memory.c:303: 		page->zone_struct->total_pages_link++;
	.loc 3 303 7
	movq	-8(%rbp), %rax	# page, tmp159
	movq	(%rax), %rax	# page_64(D)->zone_struct, _27
# memory.c:303: 		page->zone_struct->total_pages_link++;
	.loc 3 303 20
	movq	72(%rax), %rdx	# _27->total_pages_link, _28
# memory.c:303: 		page->zone_struct->total_pages_link++;
	.loc 3 303 38
	addq	$1, %rdx	#, _29
	movq	%rdx, 72(%rax)	# _29, _27->total_pages_link
	jmp	.L43	#
.L42:
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 17
	movq	-8(%rbp), %rdx	# page, tmp160
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _30
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 29
	andl	$4, %edx	#, _31
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 10
	testq	%rdx, %rdx	# _31
	jne	.L44	#,
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 52 discriminator 1
	movq	-8(%rbp), %rdx	# page, tmp161
	movq	16(%rdx), %rdx	# page_64(D)->attribute, _32
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 64 discriminator 1
	andl	$256, %edx	#, _33
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 45 discriminator 1
	testq	%rdx, %rdx	# _33
	jne	.L44	#,
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 91 discriminator 2
	movq	-16(%rbp), %rdx	# flags, tmp162
	andl	$4, %edx	#, _34
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 82 discriminator 2
	testq	%rdx, %rdx	# _34
	jne	.L44	#,
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 116 discriminator 3
	movq	-16(%rbp), %rdx	# flags, tmp163
	andl	$256, %edx	#, _35
# memory.c:304: 	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
	.loc 3 304 107 discriminator 3
	testq	%rdx, %rdx	# _35
	je	.L45	#,
.L44:
# memory.c:310: 		page->attribute |= flags;
	.loc 3 310 7
	movq	-8(%rbp), %rax	# page, tmp164
	movq	16(%rax), %rax	# page_64(D)->attribute, _36
# memory.c:310: 		page->attribute |= flags;
	.loc 3 310 19
	orq	-16(%rbp), %rax	# flags, _36
	movq	%rax, %rdx	# _36, _37
	movq	-8(%rbp), %rax	# page, tmp165
	movq	%rdx, 16(%rax)	# _37, page_64(D)->attribute
# memory.c:311: 		page->reference_count++;
	.loc 3 311 7
	movq	-8(%rbp), %rax	# page, tmp166
	movq	24(%rax), %rax	# page_64(D)->reference_count, _38
# memory.c:311: 		page->reference_count++;
	.loc 3 311 24
	leaq	1(%rax), %rdx	#, _39
	movq	-8(%rbp), %rax	# page, tmp167
	movq	%rdx, 24(%rax)	# _39, page_64(D)->reference_count
# memory.c:312: 		page->zone_struct->total_pages_link++;
	.loc 3 312 7
	movq	-8(%rbp), %rax	# page, tmp168
	movq	(%rax), %rax	# page_64(D)->zone_struct, _40
# memory.c:312: 		page->zone_struct->total_pages_link++;
	.loc 3 312 20
	movq	72(%rax), %rdx	# _40->total_pages_link, _41
# memory.c:312: 		page->zone_struct->total_pages_link++;
	.loc 3 312 38
	addq	$1, %rdx	#, _42
	movq	%rdx, 72(%rax)	# _42, _40->total_pages_link
	jmp	.L43	#
.L45:
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp169
	movq	648(%rax,%rdx), %rcx	# memory_management_struct.bits_map, _43
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 45
	movq	-8(%rbp), %rdx	# page, tmp170
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _44
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 3
	shrq	$27, %rdx	#, _45
	salq	$3, %rdx	#, _46
	addq	%rcx, %rdx	# _43, _47
	movq	(%rdx), %rsi	# *_47, _48
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 95
	movq	-8(%rbp), %rdx	# page, tmp171
	movq	8(%rdx), %rdx	# page_64(D)->PHY_address, _49
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 108
	shrq	$21, %rdx	#, _50
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 124
	andl	$63, %edx	#, _52
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 87
	movl	$1, %edi	#, tmp172
	movl	%edx, %ecx	# _52, tmp184
	salq	%cl, %rdi	# tmp184, tmp172
	movq	%rdi, %rcx	# tmp172, _53
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 29
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp173
	movq	648(%rax,%rdx), %rdx	# memory_management_struct.bits_map, _54
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 45
	movq	-8(%rbp), %rax	# page, tmp174
	movq	8(%rax), %rax	# page_64(D)->PHY_address, _55
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 3
	shrq	$27, %rax	#, _56
	salq	$3, %rax	#, _57
	addq	%rdx, %rax	# _54, _58
# memory.c:314: 		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
	.loc 3 314 80
	orq	%rcx, %rsi	# _53, _48
	movq	%rsi, %rdx	# _48, _59
	movq	%rdx, (%rax)	# _59, *_58
# memory.c:315: 		page->attribute |= flags;
	.loc 3 315 7
	movq	-8(%rbp), %rax	# page, tmp175
	movq	16(%rax), %rax	# page_64(D)->attribute, _60
# memory.c:315: 		page->attribute |= flags;
	.loc 3 315 19
	orq	-16(%rbp), %rax	# flags, _60
	movq	%rax, %rdx	# _60, _61
	movq	-8(%rbp), %rax	# page, tmp176
	movq	%rdx, 16(%rax)	# _61, page_64(D)->attribute
.L43:
# memory.c:317: 	return 0;
	.loc 3 317 9
	movl	$0, %eax	#, _77
# memory.c:318: }
	.loc 3 318 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	page_init, .-page_init
.Letext0:
	.file 4 "font.h"
	.file 5 "printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x735
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x11
	.long	.LASF7
	.byte	0x14
	.byte	0x1
	.byte	0xcc
	.long	0x69
	.uleb128 0x3
	.long	.LASF2
	.byte	0x1
	.byte	0xce
	.byte	0x13
	.long	0x69
	.byte	0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0xcf
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0xd0
	.byte	0x12
	.long	0x2e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x15
	.long	.LASF8
	.value	0x2f8
	.byte	0x1
	.byte	0xd5
	.byte	0x8
	.long	0x14f
	.uleb128 0x3
	.long	.LASF9
	.byte	0x1
	.byte	0xd7
	.byte	0xe
	.long	0x14f
	.byte	0
	.uleb128 0x5
	.long	.LASF10
	.byte	0xd8
	.byte	0x10
	.long	0x69
	.value	0x280
	.uleb128 0x5
	.long	.LASF11
	.byte	0xe4
	.byte	0x12
	.long	0x15f
	.value	0x288
	.uleb128 0x5
	.long	.LASF12
	.byte	0xe5
	.byte	0x10
	.long	0x69
	.value	0x290
	.uleb128 0x5
	.long	.LASF13
	.byte	0xe6
	.byte	0x10
	.long	0x69
	.value	0x298
	.uleb128 0x5
	.long	.LASF14
	.byte	0xef
	.byte	0x10
	.long	0x1b3
	.value	0x2a0
	.uleb128 0x5
	.long	.LASF15
	.byte	0xf0
	.byte	0x10
	.long	0x69
	.value	0x2a8
	.uleb128 0x5
	.long	.LASF16
	.byte	0xf1
	.byte	0x10
	.long	0x69
	.value	0x2b0
	.uleb128 0x5
	.long	.LASF17
	.byte	0xf9
	.byte	0x10
	.long	0x247
	.value	0x2b8
	.uleb128 0x5
	.long	.LASF18
	.byte	0xfa
	.byte	0x10
	.long	0x69
	.value	0x2c0
	.uleb128 0x5
	.long	.LASF19
	.byte	0xfb
	.byte	0x10
	.long	0x69
	.value	0x2c8
	.uleb128 0x8
	.long	.LASF20
	.value	0x108
	.long	0x69
	.value	0x2d0
	.uleb128 0x8
	.long	.LASF21
	.value	0x109
	.long	0x69
	.value	0x2d8
	.uleb128 0x8
	.long	.LASF22
	.value	0x10a
	.long	0x69
	.value	0x2e0
	.uleb128 0x8
	.long	.LASF23
	.value	0x10b
	.long	0x69
	.value	0x2e8
	.uleb128 0x8
	.long	.LASF24
	.value	0x10d
	.long	0x69
	.value	0x2f0
	.byte	0
	.uleb128 0xd
	.long	0x35
	.long	0x15f
	.uleb128 0xe
	.long	0x69
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	0x69
	.uleb128 0x12
	.long	.LASF25
	.byte	0x28
	.value	0x124
	.long	0x1b3
	.uleb128 0x2
	.long	.LASF26
	.value	0x125
	.byte	0x12
	.long	0x247
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.value	0x126
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x2
	.long	.LASF28
	.value	0x127
	.byte	0x13
	.long	0x69
	.byte	0x10
	.uleb128 0x2
	.long	.LASF29
	.value	0x128
	.byte	0x13
	.long	0x69
	.byte	0x18
	.uleb128 0x16
	.string	"age"
	.byte	0x1
	.value	0x129
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.long	0x164
	.uleb128 0x12
	.long	.LASF30
	.byte	0x50
	.value	0x144
	.long	0x247
	.uleb128 0x2
	.long	.LASF31
	.value	0x145
	.byte	0x10
	.long	0x1b3
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.value	0x146
	.byte	0x10
	.long	0x69
	.byte	0x8
	.uleb128 0x2
	.long	.LASF32
	.value	0x147
	.byte	0x10
	.long	0x69
	.byte	0x10
	.uleb128 0x2
	.long	.LASF33
	.value	0x148
	.byte	0x10
	.long	0x69
	.byte	0x18
	.uleb128 0x2
	.long	.LASF34
	.value	0x149
	.byte	0x10
	.long	0x69
	.byte	0x20
	.uleb128 0x2
	.long	.LASF28
	.value	0x14a
	.byte	0x10
	.long	0x69
	.byte	0x28
	.uleb128 0x2
	.long	.LASF35
	.value	0x14c
	.byte	0x24
	.long	0x24c
	.byte	0x30
	.uleb128 0x2
	.long	.LASF36
	.value	0x14d
	.byte	0x10
	.long	0x69
	.byte	0x38
	.uleb128 0x2
	.long	.LASF37
	.value	0x14e
	.byte	0x10
	.long	0x69
	.byte	0x40
	.uleb128 0x2
	.long	.LASF38
	.value	0x150
	.byte	0x10
	.long	0x69
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	0x1b8
	.uleb128 0x6
	.long	0x70
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.value	0x153
	.byte	0x21
	.long	0x70
	.uleb128 0x9
	.byte	0x3
	.quad	memory_management_struct
	.uleb128 0x18
	.byte	0x8
	.uleb128 0xd
	.long	0x280
	.long	0x280
	.uleb128 0xe
	.long	0x69
	.byte	0xff
	.uleb128 0xe
	.long	0x69
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.long	.LASF39
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.byte	0x6
	.byte	0xf
	.long	0x26a
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0x11
	.long	.LASF42
	.byte	0x28
	.byte	0x5
	.byte	0x20
	.long	0x312
	.uleb128 0x3
	.long	.LASF43
	.byte	0x5
	.byte	0x22
	.byte	0x9
	.long	0x312
	.byte	0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x5
	.byte	0x23
	.byte	0x9
	.long	0x312
	.byte	0x4
	.uleb128 0x3
	.long	.LASF45
	.byte	0x5
	.byte	0x24
	.byte	0x9
	.long	0x312
	.byte	0x8
	.uleb128 0x3
	.long	.LASF46
	.byte	0x5
	.byte	0x25
	.byte	0x9
	.long	0x312
	.byte	0xc
	.uleb128 0x3
	.long	.LASF47
	.byte	0x5
	.byte	0x26
	.byte	0x9
	.long	0x312
	.byte	0x10
	.uleb128 0x3
	.long	.LASF48
	.byte	0x5
	.byte	0x27
	.byte	0x9
	.long	0x312
	.byte	0x14
	.uleb128 0x3
	.long	.LASF49
	.byte	0x5
	.byte	0x28
	.byte	0x14
	.long	0x319
	.byte	0x18
	.uleb128 0x3
	.long	.LASF50
	.byte	0x5
	.byte	0x29
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x2e
	.uleb128 0x13
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0x29d
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0xd
	.long	0x344
	.long	0x344
	.uleb128 0x1a
	.long	0x69
	.value	0xfff
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.long	.LASF51
	.uleb128 0x1b
	.long	0x344
	.uleb128 0x13
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x333
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0xa
	.long	.LASF52
	.byte	0x3
	.byte	0x6
	.byte	0x5
	.long	0x312
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_DMA_INDEX
	.uleb128 0xa
	.long	.LASF53
	.byte	0x3
	.byte	0x7
	.byte	0x5
	.long	0x312
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_NORMAL_INDEX
	.uleb128 0xa
	.long	.LASF54
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.long	0x312
	.uleb128 0x9
	.byte	0x3
	.quad	ZONE_UNMAPED_INDEX
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x5
	.byte	0x3b
	.byte	0x5
	.long	0x312
	.long	0x3c8
	.uleb128 0xf
	.long	0x2e
	.uleb128 0xf
	.long	0x2e
	.uleb128 0xf
	.long	0x3c8
	.uleb128 0x1d
	.byte	0
	.uleb128 0x6
	.long	0x34b
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x3
	.value	0x128
	.byte	0xf
	.long	0x69
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x411
	.uleb128 0xb
	.long	.LASF55
	.byte	0x3
	.value	0x128
	.byte	0x27
	.long	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF56
	.byte	0x3
	.value	0x128
	.byte	0x3a
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF69
	.byte	0x3
	.byte	0xc
	.byte	0x6
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x676
	.uleb128 0x4
	.string	"i"
	.byte	0x3
	.byte	0xd
	.byte	0x6
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.string	"j"
	.byte	0x3
	.byte	0xd
	.byte	0x8
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF57
	.byte	0xf
	.byte	0x10
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.byte	0x3
	.byte	0x10
	.byte	0xf
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF58
	.byte	0x3
	.value	0x11c
	.byte	0x10
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x4c7
	.uleb128 0x4
	.string	"i"
	.byte	0x3
	.byte	0x13
	.byte	0xb
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x4
	.string	"tmp"
	.byte	0x3
	.byte	0x17
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.quad	.LVL1
	.long	0x3a7
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x4fc
	.uleb128 0x10
	.long	.LASF59
	.byte	0x28
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.string	"end"
	.byte	0x3
	.byte	0x28
	.byte	0x17
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x9
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x54d
	.uleb128 0x10
	.long	.LASF59
	.byte	0x97
	.byte	0x10
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.string	"end"
	.byte	0x3
	.byte	0x97
	.byte	0x17
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.string	"z"
	.byte	0x3
	.byte	0x98
	.byte	0xf
	.long	0x247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4
	.string	"p"
	.byte	0x3
	.byte	0x99
	.byte	0xf
	.long	0x1b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x57e
	.uleb128 0x4
	.string	"z"
	.byte	0x3
	.byte	0xf7
	.byte	0xf
	.long	0x247
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1
	.quad	.LVL11
	.long	0x3a7
	.byte	0
	.uleb128 0x9
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x5a5
	.uleb128 0xc
	.long	.LASF60
	.byte	0x3
	.value	0x123
	.byte	0x2
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1
	.quad	.LVL0
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL2
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL3
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL4
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL5
	.long	0x67b
	.uleb128 0x1
	.quad	.LVL6
	.long	0x67b
	.uleb128 0x1
	.quad	.LVL7
	.long	0x67b
	.uleb128 0x1
	.quad	.LVL8
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL9
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL10
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL12
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL13
	.long	0x3cd
	.uleb128 0x1
	.quad	.LVL14
	.long	0x70a
	.uleb128 0x1
	.quad	.LVL15
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL16
	.long	0x3a7
	.uleb128 0x1
	.quad	.LVL17
	.long	0x3a7
	.byte	0
	.uleb128 0x6
	.long	0x35
	.uleb128 0x21
	.long	.LASF70
	.byte	0x2
	.value	0x120
	.byte	0x16
	.long	0x268
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fe
	.uleb128 0xb
	.long	.LASF61
	.byte	0x2
	.value	0x120
	.byte	0x24
	.long	0x268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.string	"C"
	.byte	0x2
	.value	0x120
	.byte	0x3b
	.long	0x280
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF62
	.byte	0x2
	.value	0x120
	.byte	0x43
	.long	0x6fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"ptr"
	.byte	0x2
	.value	0x122
	.byte	0x14
	.long	0x705
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF63
	.byte	0x2
	.value	0x123
	.byte	0x13
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF64
	.byte	0x2
	.value	0x132
	.byte	0xa
	.long	0x6fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.long	.LASF65
	.uleb128 0x6
	.long	0x280
	.uleb128 0x24
	.long	.LASF71
	.byte	0x1
	.byte	0xb9
	.byte	0x17
	.long	0x15f
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.string	"tmp"
	.byte	0x1
	.byte	0xba
	.byte	0x12
	.long	0x15f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
.LASF45:
	.string	"XPosition"
.LASF63:
	.string	"pattern"
.LASF61:
	.string	"Address"
.LASF46:
	.string	"YPosition"
.LASF18:
	.string	"zones_size"
.LASF8:
	.string	"Global_Memory_Descriptor"
.LASF49:
	.string	"FB_addr"
.LASF25:
	.string	"Page"
.LASF36:
	.string	"page_using_count"
.LASF67:
	.string	"color_printk"
.LASF58:
	.string	"Global_CR3"
.LASF28:
	.string	"attribute"
.LASF20:
	.string	"start_code"
.LASF11:
	.string	"bits_map"
.LASF35:
	.string	"GMD_struct"
.LASF24:
	.string	"end_of_struct"
.LASF13:
	.string	"bits_length"
.LASF33:
	.string	"zone_end_address"
.LASF32:
	.string	"zone_start_address"
.LASF12:
	.string	"bits_size"
.LASF69:
	.string	"init_memory"
.LASF10:
	.string	"e820_length"
.LASF47:
	.string	"XCharSize"
.LASF17:
	.string	"zones_struct"
.LASF48:
	.string	"YCharSize"
.LASF31:
	.string	"pages_group"
.LASF68:
	.string	"page_init"
.LASF3:
	.string	"length"
.LASF41:
	.string	"font_ascii"
.LASF52:
	.string	"ZONE_DMA_INDEX"
.LASF59:
	.string	"start"
.LASF39:
	.string	"unsigned char"
.LASF60:
	.string	"tmpreq"
.LASF50:
	.string	"FB_length"
.LASF56:
	.string	"flags"
.LASF2:
	.string	"address"
.LASF4:
	.string	"type"
.LASF15:
	.string	"pages_size"
.LASF40:
	.string	"memory_management_struct"
.LASF5:
	.string	"unsigned int"
.LASF14:
	.string	"pages_struct"
.LASF62:
	.string	"Count"
.LASF7:
	.string	"E820"
.LASF21:
	.string	"end_code"
.LASF54:
	.string	"ZONE_UNMAPED_INDEX"
.LASF44:
	.string	"YResolution"
.LASF51:
	.string	"char"
.LASF65:
	.string	"long int"
.LASF66:
	.string	"GNU C17 13.3.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"page_free_count"
.LASF38:
	.string	"total_pages_link"
.LASF27:
	.string	"PHY_address"
.LASF43:
	.string	"XResolution"
.LASF22:
	.string	"end_data"
.LASF6:
	.string	"long unsigned int"
.LASF29:
	.string	"reference_count"
.LASF53:
	.string	"ZONE_NORMAL_INDEX"
.LASF23:
	.string	"end_brk"
.LASF34:
	.string	"zone_length"
.LASF64:
	.string	"remaining"
.LASF71:
	.string	"Get_gdt"
.LASF19:
	.string	"zones_length"
.LASF9:
	.string	"e820"
.LASF70:
	.string	"Cmemset"
.LASF42:
	.string	"position"
.LASF30:
	.string	"Zone"
.LASF55:
	.string	"page"
.LASF26:
	.string	"zone_struct"
.LASF16:
	.string	"pages_length"
.LASF57:
	.string	"TotalMem"
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
