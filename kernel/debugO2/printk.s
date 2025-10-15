	.file	"printk.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=114975
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -O2 -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align 8
.LC1:
	.string	"0123456789abcdefghijklmnopqrstuvwxyz"
	.text
	.p2align 4
	.type	number, @function
number:
.LFB39:
	.cfi_startproc
	endbr64	
.L84:
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %rax	# tmp199, num
	movl	%ecx, %r10d	# tmp201, size
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L84, %r11	#,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp	# tmp200, base
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	movabsq	$.LC1@GOTOFF, %rdx	#, tmp143
# printk.c:155: static char *number(char *str,long num,int base,int size,int precision,int type){
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L84(%rip), %rbx	#, tmp82
	addq	%r11, %rbx	#, tmp82
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	leaq	(%rbx,%rdx), %r12	#, digits
# printk.c:159: 	if(type & SMALL){
	testb	$64, %r9b	#, type
	jne	.L2	#,
# printk.c:157: 	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	movabsq	$.LC0@GOTOFF, %rdx	#, tmp142
	leaq	(%rbx,%rdx), %r12	#, digits
.L2:
# printk.c:162: 	if(type & LEFT){
	movl	%r9d, %esi	# type, _2
	andl	$16, %esi	#, _2
	movl	%esi, -80(%rsp)	# _2, %sfp
	je	.L93	#,
# printk.c:163: 		type &=~ZEROPAD;
	andl	$-2, %r9d	#, type
	movl	$16, %r14d	#, _40
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	$32, %ebx	#, iftmp.38_44
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %r15d	# type, _18
	andl	$32, %r15d	#, _18
# printk.c:170: 	if(type & SIGN  && num <0){
	testb	$2, %r9b	#, type
	je	.L5	#,
.L100:
	testq	%rax, %rax	# num
	js	.L94	#,
.L5:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	testb	$4, %r9b	#, type
	je	.L95	#,
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	movl	$43, %edx	#, sign
.L8:
# printk.c:178: 		size--;
	subl	$1, %r10d	#, size
.L9:
# printk.c:180: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	je	.L10	#,
.L6:
# printk.c:181: 		if(base==16){
	cmpl	$16, %ebp	#, base
	je	.L96	#,
# printk.c:184: 			size=size-1;
	xorl	%ecx, %ecx	# tmp208
	cmpl	$8, %ebp	#, base
	movl	$32, %r15d	#, _18
	sete	%cl	#, tmp208
	subl	%ecx, %r10d	# tmp208, size
.L10:
# printk.c:187: 	if(num==0){
	testq	%rax, %rax	# num
	jne	.L7	#,
	leaq	-72(%rsp), %rax	#, tmp170
# printk.c:188: 		tmp[i++]='0';
	movb	$48, -72(%rsp)	#, tmp[0]
	xorl	%ecx, %ecx	# prephitmp_47
# printk.c:188: 		tmp[i++]='0';
	movl	$1, %esi	#, i
	movq	%rax, -88(%rsp)	# tmp170, %sfp
.L12:
# printk.c:193: 	if(i>precision){
	cmpl	%r8d, %esi	# precision, i
	cmovge	%esi, %r8d	# i,, _80
# printk.c:196: 	size-=precision;
	subl	%r8d, %r10d	# _80, size
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	testl	%r14d, %r14d	# _40
	jne	.L14	#,
	movl	%r10d, %eax	# size, size
	addq	%rdi, %rax	# str, _196
# printk.c:198: 		while(size-- >0){
	testl	%r10d, %r10d	# size
	jle	.L76	#,
	movq	%rax, %r9	# _196, tmp195
	subq	%rdi, %r9	# str, tmp195
	andl	$1, %r9d	#, tmp195
	je	.L16	#,
# printk.c:199: 			*str++=' ';
	addq	$1, %rdi	#, str
# printk.c:199: 			*str++=' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_76 + -1B]
# printk.c:198: 		while(size-- >0){
	cmpq	%rax, %rdi	# _196, str
	je	.L83	#,
	.p2align 4,,10
	.p2align 3
.L16:
# printk.c:199: 			*str++=' ';
	movb	$32, (%rdi)	#, MEM[(char *)str_76 + -1B]
# printk.c:199: 			*str++=' ';
	addq	$2, %rdi	#, str
# printk.c:199: 			*str++=' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_76 + -1B]
# printk.c:198: 		while(size-- >0){
	cmpq	%rax, %rdi	# _196, str
	jne	.L16	#,
.L83:
# printk.c:198: 		while(size-- >0){
	movl	$-1, %r10d	#, size
.L14:
# printk.c:202: 	if(sign){
	testb	%dl, %dl	# sign
	je	.L17	#,
# printk.c:203: 		*str++=sign;
	movb	%dl, (%rdi)	# sign, *str_23
# printk.c:203: 		*str++=sign;
	addq	$1, %rdi	#, str
.L17:
# printk.c:205: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	je	.L18	#,
# printk.c:206: 		if(base==8){
	cmpl	$8, %ebp	#, base
	je	.L97	#,
# printk.c:208: 		}else if(base==16){
	cmpl	$16, %ebp	#, base
	je	.L98	#,
.L18:
# printk.c:213: 	if(!(type&LEFT)){
	movl	-80(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jne	.L20	#,
	movl	%r10d, %eax	# size, size
	addq	%rdi, %rax	# str, _191
# printk.c:214: 		while(size-- >0){
	testl	%r10d, %r10d	# size
	jle	.L78	#,
	movq	%rax, %rdx	# _191, tmp190
	subq	%rdi, %rdx	# str, tmp190
	andl	$1, %edx	#, tmp190
	je	.L22	#,
# printk.c:215: 			*str++=c;
	addq	$1, %rdi	#, str
# printk.c:215: 			*str++=c;
	movb	%bl, -1(%rdi)	# iftmp.38_44, MEM[(char *)str_87 + -1B]
# printk.c:214: 		while(size-- >0){
	cmpq	%rax, %rdi	# _191, str
	je	.L82	#,
	.p2align 4,,10
	.p2align 3
.L22:
# printk.c:215: 			*str++=c;
	movb	%bl, (%rdi)	# iftmp.38_44, MEM[(char *)str_87 + -1B]
# printk.c:215: 			*str++=c;
	addq	$2, %rdi	#, str
# printk.c:215: 			*str++=c;
	movb	%bl, -1(%rdi)	# iftmp.38_44, MEM[(char *)str_87 + -1B]
# printk.c:214: 		while(size-- >0){
	cmpq	%rax, %rdi	# _191, str
	jne	.L22	#,
.L82:
# printk.c:214: 		while(size-- >0){
	movl	$-1, %r10d	#, size
.L20:
# printk.c:218: 	while(i<precision--){
	cmpl	%r8d, %esi	# _80, i
	jge	.L99	#,
	subl	%esi, %r8d	# i, tmp159
	leal	-1(%r8), %edx	#, tmp161
	leaq	1(%rdi,%rdx), %rax	#, str
	andl	$1, %edx	#, tmp161
	jne	.L23	#,
# printk.c:219: 		*str++='0';
	addq	$1, %rdi	#, str
# printk.c:219: 		*str++='0';
	movb	$48, -1(%rdi)	#, MEM[(char *)str_96 + -1B]
# printk.c:218: 	while(i<precision--){
	cmpq	%rax, %rdi	# str, str
	je	.L24	#,
	.p2align 4,,10
	.p2align 3
.L23:
# printk.c:219: 		*str++='0';
	movb	$48, (%rdi)	#, MEM[(char *)str_96 + -1B]
# printk.c:219: 		*str++='0';
	addq	$2, %rdi	#, str
# printk.c:219: 		*str++='0';
	movb	$48, -1(%rdi)	#, MEM[(char *)str_96 + -1B]
# printk.c:218: 	while(i<precision--){
	cmpq	%rax, %rdi	# str, str
	jne	.L23	#,
.L24:
	movq	-88(%rsp), %rbx	# %sfp, tmp170
	movslq	%ecx, %rdx	# prephitmp_47, prephitmp_47
	addl	$1, %ecx	#, tmp165
	movslq	%ecx, %rcx	# tmp165, tmp166
	addq	%rdx, %rbx	# prephitmp_47, tmp170
	addq	%rax, %rcx	# str, str
	movq	%rbx, %rdx	# tmp170, ivtmp.88
	.p2align 4,,10
	.p2align 3
.L26:
# printk.c:222: 		*str++=tmp[i];
	movzbl	(%rdx), %esi	# MEM[(char *)_175], MEM[(char *)_175]
# printk.c:222: 		*str++=tmp[i];
	addq	$1, %rax	#, str
# printk.c:221: 	while(i-- >0){
	subq	$1, %rdx	#, ivtmp.88
# printk.c:222: 		*str++=tmp[i];
	movb	%sil, -1(%rax)	# MEM[(char *)_175], MEM[(char *)str_94 + -1B]
# printk.c:221: 	while(i-- >0){
	cmpq	%rcx, %rax	# str, str
	jne	.L26	#,
# printk.c:224: 	while(size-- >0){
	testl	%r10d, %r10d	# size
	jle	.L1	#,
	movl	%r10d, %r10d	# size, size
	leaq	(%rcx,%r10), %rax	#, <retval>
	andl	$1, %r10d	#, size
	je	.L28	#,
# printk.c:225: 		*str++=' ';
	addq	$1, %rcx	#, str
# printk.c:225: 		*str++=' ';
	movb	$32, -1(%rcx)	#, MEM[(char *)str_92 + -1B]
# printk.c:224: 	while(size-- >0){
	cmpq	%rax, %rcx	# <retval>, str
	je	.L1	#,
	.p2align 4,,10
	.p2align 3
.L28:
# printk.c:225: 		*str++=' ';
	movb	$32, (%rcx)	#, MEM[(char *)str_92 + -1B]
# printk.c:225: 		*str++=' ';
	addq	$2, %rcx	#, str
# printk.c:225: 		*str++=' ';
	movb	$32, -1(%rcx)	#, MEM[(char *)str_92 + -1B]
# printk.c:224: 	while(size-- >0){
	cmpq	%rax, %rcx	# <retval>, str
	jne	.L28	#,
.L1:
# printk.c:228: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L93:
	.cfi_restore_state
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	%r9d, %edx	# type, _5
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	movl	%r9d, %r14d	# type, _40
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %r15d	# type, _18
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	andl	$1, %edx	#, _5
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	andl	$17, %r14d	#, _40
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	cmpl	$1, %edx	#, _5
	sbbl	%ebx, %ebx	# iftmp.38_44
	andl	$-16, %ebx	#, iftmp.38_44
	addl	$48, %ebx	#, iftmp.38_44
	testl	%edx, %edx	# _5
	cmove	%esi, %r14d	# _40,, _2, _40
# printk.c:180: 	if(type&SPECIAL){
	andl	$32, %r15d	#, _18
# printk.c:170: 	if(type & SIGN  && num <0){
	testb	$2, %r9b	#, type
	jne	.L100	#,
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L95:
# printk.c:177: 	if(sign){
	movl	%r9d, %edx	# type, sign
	andl	$8, %edx	#, sign
	je	.L9	#,
	movl	$32, %edx	#, sign
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L94:
# printk.c:172: 		num=-num;
	negq	%rax	# num
# printk.c:178: 		size--;
	subl	$1, %r10d	#, size
# printk.c:171: 		sign='-';
	movl	$45, %edx	#, sign
# printk.c:180: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	jne	.L6	#,
.L7:
	leaq	-72(%rsp), %rsi	#, tmp170
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movl	%r15d, -76(%rsp)	# _18, %sfp
	movslq	%ebp, %r11	# base, _26
	xorl	%r13d, %r13d	# tmp153
	movq	%rsi, -88(%rsp)	# tmp170, %sfp
	movq	%rsi, %r9	# tmp170, ivtmp.118
	movl	%edx, %r15d	# sign, sign
# printk.c:158: 	int i=0;
	xorl	%esi, %esi	# i
	.p2align 4,,10
	.p2align 3
.L13:
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movl	%r13d, %edx	# tmp153, __res
	movl	%esi, %ecx	# i, prephitmp_47
# printk.c:189: 	}else while (num!=0){
	addq	$1, %r9	#, ivtmp.118
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	addl	$1, %esi	#, i
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
#APP
# 191 "printk.c" 1
	divq %r11		# _26
# 0 "" 2
#NO_APP
	movslq	%edx, %rdx	# __res, __res
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movzbl	(%r12,%rdx), %edx	# *_13, *_13
	movb	%dl, -1(%r9)	# *_13, MEM[(char *)_200]
# printk.c:189: 	}else while (num!=0){
	testq	%rax, %rax	# num
	jne	.L13	#,
	movl	%r15d, %edx	# sign, sign
	movl	-76(%rsp), %r15d	# %sfp, _18
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L98:
# printk.c:210: 			*str++=digits[33];
	movzbl	33(%r12), %eax	# MEM[(const char *)digits_39 + 33B], MEM[(const char *)digits_39 + 33B]
# printk.c:209: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:210: 			*str++=digits[33];
	addq	$2, %rdi	#, str
# printk.c:210: 			*str++=digits[33];
	movb	%al, -1(%rdi)	# MEM[(const char *)digits_39 + 33B], MEM[(char *)str_24 + 1B]
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L97:
# printk.c:207: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:207: 			*str++='0';
	addq	$1, %rdi	#, str
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L96:
# printk.c:182: 			size=size-2;
	subl	$2, %r10d	#, size
	movl	$32, %r15d	#, _18
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L99:
# printk.c:218: 	while(i<precision--){
	movq	%rdi, %rax	# str, str
	jmp	.L24	#
.L76:
# printk.c:198: 		while(size-- >0){
	subl	$1, %r10d	#, size
	jmp	.L14	#
.L78:
# printk.c:214: 		while(size-- >0){
	subl	$1, %r10d	#, size
	jmp	.L20	#
	.cfi_endproc
.LFE39:
	.size	number, .-number
	.p2align 4
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB34:
	.cfi_startproc
	endbr64	
.L108:
# printk.c:6: void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font){
	movl	%esi, %eax	# tmp127, Xsize
	leaq	.L108(%rip), %r10	#, tmp82
# printk.c:12: 	fontp=font_ascii[font];
	movzbl	8(%rsp), %esi	# font, font
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %rdx	# tmp128, x
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L108, %r11	#,
	imull	%eax, %ecx	# Xsize, tmp118
	addq	%r11, %r10	#, tmp82
# printk.c:12: 	fontp=font_ascii[font];
	salq	$4, %rsi	#, tmp114
	movabsq	$font_ascii@GOTOFF, %r11	#, tmp116
	addq	%r11, %r10	# tmp116, tmp115
	addq	%r10, %rsi	# tmp115, fontp
	movslq	%eax, %r10	# Xsize, Xsize
	movslq	%ecx, %rax	# tmp118, tmp119
	leaq	8(%rax,%rdx), %rax	#, tmp122
	salq	$2, %r10	#, _60
	leaq	16(%rsi), %r11	#, _74
	leaq	(%rdi,%rax,4), %rdi	#, ivtmp.142
	.p2align 4,,10
	.p2align 3
.L104:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%rdi), %rax	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %edx	#, testval
	.p2align 4,,10
	.p2align 3
.L103:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rsi), %ecx	# MEM[(unsigned char *)fontp_33], MEM[(unsigned char *)fontp_33]
# printk.c:18: 			testval =testval >>1;
	sarl	%edx	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%edx, %ecx	# testval, MEM[(unsigned char *)fontp_33]
	movl	%r8d, %ecx	# FRcolor, cstore_86
	cmove	%r9d, %ecx	# BKcolor,, cstore_86
# printk.c:24: 			addr++;
	addq	$4, %rax	#, addr
	movl	%ecx, -4(%rax)	# cstore_86, MEM[(unsigned int *)addr_78]
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%rdi, %rax	# ivtmp.142, addr
	jne	.L103	#,
# printk.c:26: 		fontp++;
	addq	$1, %rsi	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rax,%r10), %rdi	#, ivtmp.142
	cmpq	%r11, %rsi	# _74, fontp
	jne	.L104	#,
# printk.c:28: }
	ret	
	.cfi_endproc
.LFE34:
	.size	putchar, .-putchar
	.p2align 4
	.globl	clear_screen
	.type	clear_screen, @function
clear_screen:
.LFB36:
	.cfi_startproc
	endbr64	
.L122:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L122, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movabsq	$Pos@GOTOFF, %rbp	#, tmp149
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L122(%rip), %rbx	#, tmp82
	addq	%r11, %rbx	#, tmp82
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movl	0(%rbp,%rbx), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%rbp,%rbx)	# Pos.XCharSize
	movl	%eax, %ecx	# Pos.XResolution, tmp121
# printk.c:82:     int rows = Pos.YResolution / Pos.YCharSize;
	movl	4(%rbp,%rbx), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%rbp,%rbx)	# Pos.YCharSize
# printk.c:84:     for (int y = 0; y < rows; y++) {
	testl	%eax, %eax	# tmp126
	jle	.L110	#,
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movq	24(%rbp,%rbx), %r13	# Pos.FB_addr, _10
# printk.c:85:         for (int x = 0; x < cols; x++) {
	testl	%ecx, %ecx	# tmp121
	jle	.L110	#,
	movabsq	$528+font_ascii@GOTOFF, %rdx	#, tmp148
	movl	%edi, %r8d	# tmp151, FRcolor
	movl	%esi, %r9d	# tmp152, BKcolor
	xorl	%r12d, %r12d	# y
	movabsq	$512+font_ascii@GOTOFF, %r15	#, tmp150
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rdx,%rbx), %r11	#, tmp144
.L116:
# printk.c:85:         for (int x = 0; x < cols; x++) {
	movq	%r13, -8(%rsp)	# _10, %sfp
	xorl	%edx, %edx	# x
	movl	%eax, %esi	# tmp126, tmp126
.L115:
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movl	20(%rbp,%rbx), %eax	# Pos.YCharSize, tmp133
	movslq	0(%rbp,%rbx), %r14	# Pos.XResolution,
# printk.c:12: 	fontp=font_ascii[font];
	movl	%edx, -12(%rsp)	# x, %sfp
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	imull	%r12d, %eax	# y, tmp133
	movq	%r14, %rdi	#,
	salq	$2, %r14	#, _104
	imull	%edi, %eax	# _9, tmp134
	movl	16(%rbp,%rbx), %edi	# Pos.XCharSize, tmp138
	imull	%edx, %edi	# x, tmp138
	cltq
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edi, %rdi	# tmp138, tmp139
	leaq	8(%rax,%rdi), %rax	#, tmp140
	movq	-8(%rsp), %rdi	# %sfp, _10
	leaq	(%rdi,%rax,4), %r10	#, ivtmp.173
# printk.c:12: 	fontp=font_ascii[font];
	leaq	(%r15,%rbx), %rdi	#, fontp
	.p2align 4,,10
	.p2align 3
.L114:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%r10), %rax	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %edx	#, testval
	.p2align 4,,10
	.p2align 3
.L113:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rdi), %r13d	# MEM[(unsigned char *)fontp_82], MEM[(unsigned char *)fontp_82]
# printk.c:18: 			testval =testval >>1;
	sarl	%edx	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%edx, %r13d	# testval, MEM[(unsigned char *)fontp_82]
	movl	%r8d, %r13d	# FRcolor, cstore_101
	cmove	%r9d, %r13d	# BKcolor,, cstore_101
# printk.c:24: 			addr++;
	addq	$4, %rax	#, addr
	movl	%r13d, -4(%rax)	# cstore_101, MEM[(unsigned int *)addr_12]
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%r10, %rax	# ivtmp.173, addr
	jne	.L113	#,
# printk.c:26: 		fontp++;
	addq	$1, %rdi	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rax,%r14), %r10	#, ivtmp.173
	cmpq	%r11, %rdi	# tmp144, fontp
	jne	.L114	#,
# printk.c:85:         for (int x = 0; x < cols; x++) {
	movl	-12(%rsp), %edx	# %sfp, x
	addl	$1, %edx	#, x
# printk.c:85:         for (int x = 0; x < cols; x++) {
	cmpl	%edx, %ecx	# x, tmp121
	jne	.L115	#,
# printk.c:84:     for (int y = 0; y < rows; y++) {
	addl	$1, %r12d	#, y
	movq	-8(%rsp), %r13	# %sfp, _10
	movl	%esi, %eax	# tmp126, tmp126
# printk.c:84:     for (int y = 0; y < rows; y++) {
	cmpl	%r12d, %esi	# y, tmp126
	jne	.L116	#,
.L110:
# printk.c:92:     Pos.XPosition = 0;
	movq	$0, 8(%rbp,%rbx)	#, MEM <vector(2) int> [(int *)&Pos + 8B]
# printk.c:94: }	
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE36:
	.size	clear_screen, .-clear_screen
	.p2align 4
	.globl	skip_atoi2
	.type	skip_atoi2, @function
skip_atoi2:
.LFB37:
	.cfi_startproc
	endbr64	
.L129:
# printk.c:100: 	while(is_digit(**s)){
	movq	(%rdi), %rdx	# *s_13(D), _17
	movzbl	(%rdx), %eax	# *_17, _7
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L127	#,
	addq	$1, %rdx	#, ivtmp.190
# printk.c:99: 	int i=0;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4,,10
	.p2align 3
.L126:
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:103: 		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.190, *s_13(D)
# printk.c:100: 	while(is_digit(**s)){
	addq	$1, %rdx	#, ivtmp.190
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:100: 	while(is_digit(**s)){
	movzbl	-1(%rdx), %eax	# MEM[(const char *)_2], _7
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L126	#,
# printk.c:107: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L127:
# printk.c:99: 	int i=0;
	xorl	%ecx, %ecx	# <retval>
# printk.c:107: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE37:
	.size	skip_atoi2, .-skip_atoi2
	.p2align 4
	.globl	skip_atoi
	.type	skip_atoi, @function
skip_atoi:
.LFB38:
	.cfi_startproc
	endbr64	
.L135:
# printk.c:112:  	while(is_digit(current_char = **s)){
	movq	(%rdi), %rdx	# *s_10(D), _18
	movzbl	(%rdx), %eax	# *_18, current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L133	#,
	addq	$1, %rdx	#, ivtmp.199
# printk.c:110:  	int i=0;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4,,10
	.p2align 3
.L132:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:113:  		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.199, *s_10(D)
# printk.c:112:  	while(is_digit(current_char = **s)){
	addq	$1, %rdx	#, ivtmp.199
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:112:  	while(is_digit(current_char = **s)){
	movzbl	-1(%rdx), %eax	# MEM[(const char *)_1], current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L132	#,
# printk.c:117: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L133:
# printk.c:110:  	int i=0;
	xorl	%ecx, %ecx	# <retval>
# printk.c:117: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE38:
	.size	skip_atoi, .-skip_atoi
	.p2align 4
	.globl	vsprintf
	.type	vsprintf, @function
vsprintf:
.LFB40:
	.cfi_startproc
	endbr64	
.L282:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L282, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	.L282(%rip), %r14	#, tmp82
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	addq	%r11, %r14	#, tmp82
	movq	%rdi, %r13	# tmp415, buf
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	(%rsi), %eax	# *fmt_228(D), _397
	testb	%al, %al	# _397
	je	.L225	#,
	movq	%rsi, %rcx	# tmp416, fmt
	movq	%rdx, %r12	# tmp417, args
# printk.c:250: 			switch (*fmt)
	leaq	.L142(%rip), %rbp	#, tmp391
	movabsq	$70373307580417, %r15	#, tmp393
	jmp	.L221	#
	.p2align 4,,10
	.p2align 3
.L288:
# printk.c:244: 			*str++ =*fmt;
	movb	%al, (%rdi)	# _397, *str_404
# printk.c:245: 			continue;
	addq	$1, %rcx	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	(%rcx), %eax	# MEM[(const char *)fmt_430 + 1B], _397
# printk.c:244: 			*str++ =*fmt;
	addq	$1, %rdi	#, str
.L139:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	testb	%al, %al	# _397
	je	.L220	#,
.L221:
# printk.c:242: 		if (*fmt !='%')
	cmpb	$37, %al	#, _397
	jne	.L288	#,
# printk.c:247: 		flags=0;
	xorl	%r9d, %r9d	# flags
	.p2align 4,,10
	.p2align 3
.L138:
# printk.c:250: 			switch (*fmt)
	movsbl	1(%rcx), %eax	# MEM[(const char *)_4],
# printk.c:249: 			fmt++;
	leaq	1(%rcx), %rbx	#, fmt
# printk.c:250: 			switch (*fmt)
	leal	-32(%rax), %edx	#, tmp256
	cmpb	$16, %dl	#, tmp256
	ja	.L140	#,
	movzbl	%dl, %edx	# tmp256, tmp257
	movq	0(%rbp,%rdx,8), %rsi	#, tmp260
	addq	%rbp, %rsi	# tmp391, tmp260
	notrack jmp	*%rsi	# tmp260
	.section	.rodata
	.align 8
	.align 4
.L142:
	.quad	.L146-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L145-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L144-.L142
	.quad	.L140-.L142
	.quad	.L143-.L142
	.quad	.L140-.L142
	.quad	.L140-.L142
	.quad	.L141-.L142
	.text
	.p2align 4,,10
	.p2align 3
.L140:
# printk.c:270: 		if (is_digit(*fmt))
	leal	-48(%rax), %edx	#, tmp262
# printk.c:270: 		if (is_digit(*fmt))
	cmpb	$9, %dl	#, tmp262
	jbe	.L289	#,
# printk.c:269: 		field_width=-1;
	movl	$-1, %edx	#, field_width
# printk.c:274: 		else if (*fmt == '*')
	cmpb	$42, %al	#, current_char
	je	.L290	#,
.L150:
# printk.c:285: 		precision =-1;
	movl	$-1, %r8d	#, precision
# printk.c:286: 		if(*fmt =='.'){
	cmpb	$46, %al	#, current_char
	je	.L291	#,
.L154:
	leal	-76(%rax), %ecx	#, _208
	cmpb	$46, %cl	#, _208
	ja	.L160	#,
	btq	%rcx, %r15	# _208, tmp393
	jnc	.L160	#,
# printk.c:309: 	switch (*fmt){
	movzbl	1(%rbx), %esi	# MEM[(const char *)fmt_224 + 1B], tmp429
# printk.c:307: 			fmt++;
	leaq	1(%rbx), %r10	#, _28
# printk.c:309: 	switch (*fmt){
	leal	-37(%rsi), %ecx	#, tmp291
	cmpb	$83, %cl	#, tmp291
	ja	.L161	#,
	movzbl	%cl, %ecx	# tmp291, tmp293
	leaq	.L163(%rip), %rsi	#, tmp294
	addq	(%rsi,%rcx,8), %rsi	#, tmp296
	notrack jmp	*%rsi	# tmp296
	.section	.rodata
	.align 8
	.align 4
.L163:
	.quad	.L172-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L171-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L170-.L163
	.quad	.L169-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L169-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L168-.L163
	.quad	.L167-.L163
	.quad	.L166-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L165-.L163
	.quad	.L161-.L163
	.quad	.L164-.L163
	.quad	.L161-.L163
	.quad	.L161-.L163
	.quad	.L162-.L163
	.text
	.p2align 4,,10
	.p2align 3
.L141:
# printk.c:265: 				flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
.L147:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	%rbx, %rcx	# fmt, fmt
	jmp	.L138	#
	.p2align 4,,10
	.p2align 3
.L143:
# printk.c:253: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
# printk.c:254: 				goto repeat;
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L144:
# printk.c:256: 				flags |=PLUS;
	orl	$4, %r9d	#, flags
# printk.c:257: 				goto repeat;
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L145:
# printk.c:262: 				flags |=SPECIAL;
	orl	$32, %r9d	#, flags
# printk.c:263: 				goto repeat;			
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L146:
# printk.c:259: 				flags |=SPACE;
	orl	$8, %r9d	#, flags
# printk.c:260: 				goto repeat;			
	jmp	.L147	#
	.p2align 4,,10
	.p2align 3
.L160:
# printk.c:309: 	switch (*fmt){
	subl	$37, %eax	#, tmp382
	cmpb	$83, %al	#, tmp382
	ja	.L232	#,
	movzbl	%al, %eax	# tmp382, tmp383
	leaq	.L223(%rip), %rcx	#, tmp384
	addq	(%rcx,%rax,8), %rcx	#, tmp386
	notrack jmp	*%rcx	# tmp386
	.section	.rodata
	.align 8
	.align 4
.L223:
	.quad	.L233-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L222-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L234-.L223
	.quad	.L207-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L207-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L213-.L223
	.quad	.L192-.L223
	.quad	.L235-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L236-.L223
	.quad	.L232-.L223
	.quad	.L224-.L223
	.quad	.L232-.L223
	.quad	.L232-.L223
	.quad	.L201-.L223
	.text
	.p2align 4,,10
	.p2align 3
.L232:
	movq	%rbx, %r10	# fmt, _28
.L161:
# printk.c:399: 				*str++ ='%';
	movb	$37, (%rdi)	#, *str_404
# printk.c:400: 				if(*fmt)
	movzbl	(%r10), %eax	# *fmt_81, _53
# printk.c:400: 				if(*fmt)
	testb	%al, %al	# _53
	je	.L219	#,
# printk.c:401: 					*str++ =*fmt;
	movb	%al, 1(%rdi)	# _53, MEM[(char *)str_404 + 1B]
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r10), %eax	# MEM[(const char *)fmt_81 + 1B], _397
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
# printk.c:401: 					*str++ =*fmt;
	addq	$2, %rdi	#, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	testb	%al, %al	# _397
	jne	.L221	#,
	.p2align 4,,10
	.p2align 3
.L220:
# printk.c:408: 	return str - buf;
	movl	%edi, %eax	# str, <retval>
	subl	%r13d, %eax	# buf, <retval>
.L137:
# printk.c:407: 	*str = '\0';
	movb	$0, (%rdi)	#, *str_405
# printk.c:409: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L291:
	.cfi_restore_state
# printk.c:288: 			if (is_digit(*fmt))
	movsbl	1(%rbx), %eax	# MEM[(const char *)fmt_220 + 1B],
# printk.c:287: 			fmt++;
	leaq	1(%rbx), %rcx	#, _204
# printk.c:288: 			if (is_digit(*fmt))
	leal	-48(%rax), %esi	#, tmp274
# printk.c:288: 			if (is_digit(*fmt))
	cmpb	$9, %sil	#, tmp274
	jbe	.L292	#,
# printk.c:292: 			else if(*fmt == '*'){
	cmpb	$42, %al	#, current_char
	je	.L293	#,
# printk.c:287: 			fmt++;
	movq	%rcx, %rbx	# _204, fmt
# printk.c:297: 				precision=0;
	xorl	%r8d, %r8d	# precision
	jmp	.L154	#
	.p2align 4,,10
	.p2align 3
.L289:
# printk.c:110:  	int i=0;
	xorl	%edx, %edx	# field_width
	.p2align 4,,10
	.p2align 3
.L149:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp267
# printk.c:113:  		(*s)++;                   // 指针向后移动
	addq	$1, %rbx	#, fmt
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rdx,%rdx,4), %edx	#, tmp265
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp267, tmp268
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rdx,2), %edx	#, field_width
# printk.c:112:  	while(is_digit(current_char = **s)){
	movsbl	(%rbx), %eax	# MEM[(const char *)_195],
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %ecx	#, tmp269
	cmpb	$9, %cl	#, tmp269
	jbe	.L149	#,
	jmp	.L150	#
	.p2align 4,,10
	.p2align 3
.L290:
# printk.c:277: 			field_width=va_arg(args,int);
	movl	(%r12), %eax	# args_113(D)->gp_offset, D.2567
# printk.c:276: 			fmt++;
	leaq	2(%rcx), %rbx	#, fmt
# printk.c:277: 			field_width=va_arg(args,int);
	cmpl	$47, %eax	#, D.2567
	ja	.L151	#,
	movl	%eax, %edx	# D.2567, D.2570
	addl	$8, %eax	#, tmp272
	addq	16(%r12), %rdx	# args_113(D)->reg_save_area, D.2572
	movl	%eax, (%r12)	# tmp272, args_113(D)->gp_offset
.L152:
	movl	(%rdx), %edx	# MEM[(int * {ref-all})addr.204_119], field_width
# printk.c:278: 			if (field_width <0)
	testl	%edx, %edx	# field_width
	jns	.L284	#,
# printk.c:280: 				field_width=-field_width;
	negl	%edx	# field_width
# printk.c:281: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
.L284:
# printk.c:286: 		if(*fmt =='.'){
	movsbl	2(%rcx), %eax	# MEM[(const char *)fmt_218 + 2B],
	jmp	.L150	#
	.p2align 4,,10
	.p2align 3
.L151:
# printk.c:277: 			field_width=va_arg(args,int);
	movq	8(%r12), %rdx	# args_113(D)->overflow_arg_area, D.2572
	leaq	8(%rdx), %rax	#, tmp273
	movq	%rax, 8(%r12)	# tmp273, args_113(D)->overflow_arg_area
	jmp	.L152	#
.L162:
# printk.c:368: 				flags |=SMALL;
	orl	$64, %r9d	#, flags
.L171:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_267
# printk.c:370: 				if(qualifier =='l'){
	cmpl	$108, %eax	#, qualifier
	je	.L294	#,
.L202:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	cmpl	$47, %ecx	#, pretmp_267
	ja	.L205	#,
	movl	%ecx, %eax	# pretmp_267, D.2650
	addl	$8, %ecx	#, tmp351
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2652
	movl	%ecx, (%r12)	# tmp351, args_113(D)->gp_offset
.L206:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movl	%edx, %ecx	# field_width,
	movq	%r10, 8(%rsp)	# _28, %sfp
	movl	(%rax), %esi	# MEM[(unsigned int * {ref-all})addr.212_23], MEM[(unsigned int * {ref-all})addr.212_23]
	movl	$16, %edx	#,
	jmp	.L286	#
.L169:
# printk.c:378: 				flags |=SIGN;
	orl	$2, %r9d	#, flags
.L164:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_30
# printk.c:380: 				if(qualifier =='l'){
	cmpl	$108, %eax	#, qualifier
	je	.L295	#,
.L208:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	cmpl	$47, %ecx	#, pretmp_30
	ja	.L211	#,
	movl	%ecx, %eax	# pretmp_30, D.2670
	addl	$8, %ecx	#, tmp365
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2672
	movl	%ecx, (%r12)	# tmp365, args_113(D)->gp_offset
.L212:
	movq	%r10, 8(%rsp)	# _28, %sfp
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movl	(%rax), %esi	# MEM[(unsigned int * {ref-all})addr.214_29], MEM[(unsigned int * {ref-all})addr.214_29]
	movl	%edx, %ecx	# field_width,
	movl	$10, %edx	#,
.L286:
	movabsq	$number@GOTOFF, %rax	#, tmp369
	addq	%r14, %rax	# tmp82, tmp368
	call	*%rax	# tmp368
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	8(%rsp), %r10	# %sfp, _28
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movq	%rax, %rdi	# tmp424, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
.L287:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r10), %eax	#, _397
	jmp	.L139	#
.L233:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r10	# fmt, _28
.L172:
# printk.c:396: 				*str++ ='%';
	movb	$37, (%rdi)	#, *str_404
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r10), %eax	# MEM[(const char *)fmt_168 + 1B], _397
# printk.c:396: 				*str++ ='%';
	addq	$1, %rdi	#, str
# printk.c:397: 				break;
	jmp	.L139	#
.L234:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r10	# fmt, _28
.L170:
# printk.c:311: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	je	.L296	#,
.L173:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%r12), %eax	# args_113(D)->gp_offset, D.2587
	cmpl	$47, %eax	#, D.2587
	jbe	.L297	#,
	movq	8(%r12), %rcx	# args_113(D)->overflow_arg_area, D.2592
	leaq	8(%rcx), %rax	#, tmp303
	movq	%rax, 8(%r12)	# tmp303, args_113(D)->overflow_arg_area
.L177:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%rcx), %eax	# MEM[(int * {ref-all})addr.206_232], MEM[(int * {ref-all})addr.206_232]
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	leaq	1(%rdi), %rsi	#, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movb	%al, (%rdi)	# MEM[(int * {ref-all})addr.206_232], *str_61
	movl	%edx, %eax	# field_width, field_width
	addq	%rax, %rdi	# field_width, str
# printk.c:317: 				while(--field_width>0){
	cmpl	$1, %edx	#, field_width
	jle	.L273	#,
	movq	%rdi, %rax	# str, tmp397
	subq	%rsi, %rax	# str, tmp397
	testb	$1, %al	#, tmp397
	je	.L179	#,
# printk.c:318: 					*str++ =' ';
	addq	$1, %rsi	#, str
# printk.c:318: 					*str++ =' ';
	movb	$32, -1(%rsi)	#, MEM[(char *)str_172 + -1B]
# printk.c:317: 				while(--field_width>0){
	cmpq	%rsi, %rdi	# str, str
	je	.L287	#,
	.p2align 4,,10
	.p2align 3
.L179:
# printk.c:318: 					*str++ =' ';
	movb	$32, (%rsi)	#, MEM[(char *)str_172 + -1B]
# printk.c:318: 					*str++ =' ';
	addq	$2, %rsi	#, str
# printk.c:318: 					*str++ =' ';
	movb	$32, -1(%rsi)	#, MEM[(char *)str_172 + -1B]
# printk.c:317: 				while(--field_width>0){
	cmpq	%rsi, %rdi	# str, str
	jne	.L179	#,
	jmp	.L287	#
.L236:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r10	# fmt, _28
.L165:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_113(D)->gp_offset, D.2597
	cmpl	$47, %eax	#, D.2597
	ja	.L180	#,
	movl	%eax, %ecx	# D.2597, D.2600
	addl	$8, %eax	#, tmp308
	addq	16(%r12), %rcx	# args_113(D)->reg_save_area, D.2602
	movl	%eax, (%r12)	# tmp308, args_113(D)->gp_offset
.L181:
	movq	(%rcx), %r11	# MEM[(char * * {ref-all})addr.207_233], s
# lib.h:530:     while (*ptr != '\0') {
	cmpb	$0, (%r11)	#, *s_130
	je	.L230	#,
# lib.h:527:     char *ptr = String;
	movq	%r11, %rax	# s, ptr
	.p2align 4,,10
	.p2align 3
.L183:
# lib.h:531:         ptr++;
	addq	$1, %rax	#, ptr
# lib.h:530:     while (*ptr != '\0') {
	cmpb	$0, (%rax)	#, MEM[(char *)ptr_190]
	jne	.L183	#,
# lib.h:535:     return ptr - String;
	movl	%eax, %esi	# ptr, len
	subl	%r11d, %esi	# s, len
.L182:
# printk.c:331: 				else if(len >precision){
	cmpl	%r8d, %esi	# precision, len
	movl	%r8d, %eax	# precision, tmp388
	cmovle	%esi, %eax	# len,, tmp388
	cmpl	$-1, %r8d	#, precision
	cmovne	%eax, %esi	# tmp388,, len
# printk.c:334: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	je	.L298	#,
.L185:
# printk.c:339: 				for(i=0;i<len;i++){
	testl	%esi, %esi	# len
	jle	.L231	#,
	movslq	%esi, %r8	# len, _65
	xorl	%eax, %eax	# ivtmp.253
	.p2align 4,,10
	.p2align 3
.L189:
# printk.c:340: 						*str++ =*s++;
	movzbl	(%r11,%rax), %ecx	# MEM[(char *)s_130 + ivtmp.253_68 * 1], _35
# printk.c:340: 						*str++ =*s++;
	movb	%cl, (%rdi,%rax)	# _35, MEM[(char *)str_64 + ivtmp.253_68 * 1]
# printk.c:339: 				for(i=0;i<len;i++){
	addq	$1, %rax	#, ivtmp.253
	cmpq	%rax, %r8	# ivtmp.253, _65
	jne	.L189	#,
	movl	%esi, %r8d	# len, len
	addq	%rdi, %r8	# str, str
.L188:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
# printk.c:342: 				while(len <field_width--){
	cmpl	%esi, %edx	# len, field_width
	jle	.L299	#,
	subl	%esi, %edx	# len, tmp317
	leal	-1(%rdx), %eax	#, tmp319
	leaq	1(%r8,%rax), %rdi	#, str
	testb	$1, %al	#, tmp319
	jne	.L191	#,
# printk.c:343: 						*str++ =' ';
	addq	$1, %r8	#, str
# printk.c:343: 						*str++ =' ';
	movb	$32, -1(%r8)	#, MEM[(char *)str_136 + -1B]
# printk.c:342: 				while(len <field_width--){
	cmpq	%r8, %rdi	# str, str
	je	.L287	#,
	.p2align 4,,10
	.p2align 3
.L191:
# printk.c:343: 						*str++ =' ';
	movb	$32, (%r8)	#, MEM[(char *)str_136 + -1B]
# printk.c:343: 						*str++ =' ';
	addq	$2, %r8	#, str
# printk.c:343: 						*str++ =' ';
	movb	$32, -1(%r8)	#, MEM[(char *)str_136 + -1B]
# printk.c:342: 				while(len <field_width--){
	cmpq	%r8, %rdi	# str, str
	jne	.L191	#,
	jmp	.L287	#
.L235:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r10	# fmt, _28
.L166:
# printk.c:360: 				if(field_width ==-1){
	cmpl	$-1, %edx	#, field_width
	je	.L300	#,
.L198:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movl	(%r12), %eax	# args_113(D)->gp_offset, D.2627
	cmpl	$47, %eax	#, D.2627
	ja	.L199	#,
	movl	%eax, %ecx	# D.2627, D.2630
	addl	$8, %eax	#, tmp337
	addq	16(%r12), %rcx	# args_113(D)->reg_save_area, D.2632
	movl	%eax, (%r12)	# tmp337, args_113(D)->gp_offset
.L200:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	(%rcx), %rsi	# MEM[(void * * {ref-all})addr.210_217], MEM[(void * * {ref-all})addr.210_217]
	movq	%r10, 8(%rsp)	# _28, %sfp
	movl	%edx, %ecx	# field_width,
	movl	$16, %edx	#,
	jmp	.L286	#
	.p2align 4,,10
	.p2align 3
.L292:
# printk.c:110:  	int i=0;
	xorl	%r8d, %r8d	# i
	.p2align 4,,10
	.p2align 3
.L156:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp279
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%r8,%r8,4), %esi	#, tmp277
# printk.c:113:  		(*s)++;                   // 指针向后移动
	addq	$1, %rcx	#, _204
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp279, tmp280
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rsi,2), %r8d	#, i
# printk.c:112:  	while(is_digit(current_char = **s)){
	movsbl	(%rcx), %eax	# MEM[(const char *)_204],
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %esi	#, tmp281
	cmpb	$9, %sil	#, tmp281
	jbe	.L156	#,
# printk.c:296: 			if(precision <0){
	xorl	%esi, %esi	# tmp426
	testl	%r8d, %r8d	# i
	movq	%rcx, %rbx	# _204, fmt
	cmovs	%esi, %r8d	# i,, tmp426, precision
	jmp	.L154	#
	.p2align 4,,10
	.p2align 3
.L293:
# printk.c:294: 				precision =va_arg(args,int);
	movl	(%r12), %eax	# args_113(D)->gp_offset, D.2577
# printk.c:293: 				fmt++;
	leaq	2(%rbx), %rsi	#, _22
# printk.c:294: 				precision =va_arg(args,int);
	cmpl	$47, %eax	#, D.2577
	ja	.L158	#,
	movl	%eax, %ecx	# D.2577, D.2580
	addl	$8, %eax	#, tmp284
	addq	16(%r12), %rcx	# args_113(D)->reg_save_area, D.2582
	movl	%eax, (%r12)	# tmp284, args_113(D)->gp_offset
.L159:
# printk.c:296: 			if(precision <0){
	movl	(%rcx), %r8d	# MEM[(int * {ref-all})addr.205_15], MEM[(int * {ref-all})addr.205_15]
	xorl	%eax, %eax	# tmp425
	testl	%r8d, %r8d	# MEM[(int * {ref-all})addr.205_15]
	cmovs	%eax, %r8d	# MEM[(int * {ref-all})addr.205_15],, tmp425, precision
# printk.c:305: 		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
	movsbl	2(%rbx), %eax	# MEM[(const char *)fmt_220 + 2B],
# printk.c:293: 				fmt++;
	movq	%rsi, %rbx	# _22, fmt
	jmp	.L154	#
	.p2align 4,,10
	.p2align 3
.L205:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2652
	leaq	8(%rax), %rcx	#, tmp352
	movq	%rcx, 8(%r12)	# tmp352, args_113(D)->overflow_arg_area
	jmp	.L206	#
	.p2align 4,,10
	.p2align 3
.L211:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2672
	leaq	8(%rax), %rcx	#, tmp366
	movq	%rcx, 8(%r12)	# tmp366, args_113(D)->overflow_arg_area
	jmp	.L212	#
.L199:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	8(%r12), %rcx	# args_113(D)->overflow_arg_area, D.2632
	leaq	8(%rcx), %rax	#, tmp338
	movq	%rax, 8(%r12)	# tmp338, args_113(D)->overflow_arg_area
	jmp	.L200	#
.L180:
# printk.c:322: 				s=va_arg(args,char *);
	movq	8(%r12), %rcx	# args_113(D)->overflow_arg_area, D.2602
	leaq	8(%rcx), %rax	#, tmp309
	movq	%rax, 8(%r12)	# tmp309, args_113(D)->overflow_arg_area
	jmp	.L181	#
.L297:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	%eax, %ecx	# D.2587, D.2590
	addl	$8, %eax	#, tmp302
	addq	16(%r12), %rcx	# args_113(D)->reg_save_area, D.2592
	movl	%eax, (%r12)	# tmp302, args_113(D)->gp_offset
	jmp	.L177	#
.L219:
# printk.c:399: 				*str++ ='%';
	addq	$1, %rdi	#, str
	jmp	.L220	#
.L300:
# printk.c:363: 					flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
# printk.c:362: 					field_width=sizeof(void *)*2;
	movl	$16, %edx	#, field_width
	jmp	.L198	#
.L296:
	leal	-1(%rdx), %eax	#,
	movq	%rax, %rcx	#,
	addq	%rdi, %rax	# str, _95
# printk.c:312: 					while(--field_width>0){
	cmpl	$1, %edx	#, field_width
	jle	.L271	#,
	movq	%rax, %rdx	# _95, tmp402
	subq	%rdi, %rdx	# str, tmp402
	andl	$1, %edx	#, tmp402
	je	.L175	#,
# printk.c:313: 						*str++ =' ';
	addq	$1, %rdi	#, str
# printk.c:313: 						*str++ =' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_166 + -1B]
# printk.c:312: 					while(--field_width>0){
	cmpq	%rdi, %rax	# str, _95
	je	.L279	#,
	.p2align 4,,10
	.p2align 3
.L175:
# printk.c:313: 						*str++ =' ';
	movb	$32, (%rdi)	#, MEM[(char *)str_166 + -1B]
# printk.c:313: 						*str++ =' ';
	addq	$2, %rdi	#, str
# printk.c:313: 						*str++ =' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_166 + -1B]
# printk.c:312: 					while(--field_width>0){
	cmpq	%rdi, %rax	# str, _95
	jne	.L175	#,
.L279:
	xorl	%edx, %edx	# field_width
	jmp	.L173	#
.L168:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %edx	# args_113(D)->gp_offset, pretmp_192
# printk.c:387: 				if(qualifier =='l'){
	cmpl	$108, %eax	#, qualifier
	je	.L301	#,
.L214:
# printk.c:391: 					int *ip=va_arg(args,int *);
	cmpl	$47, %edx	#, pretmp_192
	ja	.L217	#,
	movl	%edx, %eax	# pretmp_192, D.2690
	addl	$8, %edx	#, tmp377
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2692
	movl	%edx, (%r12)	# tmp377, args_113(D)->gp_offset
.L218:
	movq	(%rax), %rax	# MEM[(int * * {ref-all})addr.216_55], ip
# printk.c:392: 					*ip=(str-buf);
	movq	%rdi, %rdx	# str, tmp379
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r10), %rcx	#, fmt
# printk.c:392: 					*ip=(str-buf);
	subq	%r13, %rdx	# buf, tmp379
# printk.c:392: 					*ip=(str-buf);
	movl	%edx, (%rax)	# tmp379, *ip_153
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r10), %eax	#, _397
	jmp	.L139	#
.L167:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_193
# printk.c:352: 				if(qualifier =='l'){
	cmpl	$108, %eax	#, qualifier
	je	.L302	#,
.L193:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	cmpl	$47, %ecx	#, pretmp_193
	ja	.L196	#,
	movl	%ecx, %eax	# pretmp_193, D.2620
	addl	$8, %ecx	#, tmp330
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2622
	movl	%ecx, (%r12)	# tmp330, args_113(D)->gp_offset
.L197:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movl	%edx, %ecx	# field_width,
	movq	%r10, 8(%rsp)	# _28, %sfp
	movl	(%rax), %esi	# MEM[(unsigned int * {ref-all})addr.209_211], MEM[(unsigned int * {ref-all})addr.209_211]
	movl	$8, %edx	#,
	jmp	.L286	#
	.p2align 4,,10
	.p2align 3
.L295:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	cmpl	$47, %ecx	#, pretmp_30
	ja	.L209	#,
	movl	%ecx, %eax	# pretmp_30, D.2660
	addl	$8, %ecx	#, tmp358
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2662
	movl	%ecx, (%r12)	# tmp358, args_113(D)->gp_offset
.L210:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	(%rax), %rsi	# MEM[(long unsigned int * {ref-all})addr.213_235], MEM[(long unsigned int * {ref-all})addr.213_235]
	movl	%edx, %ecx	# field_width,
	movl	$10, %edx	#,
.L285:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movabsq	$number@GOTOFF, %rax	#, tmp348
	addq	%r14, %rax	# tmp82, tmp347
	call	*%rax	# tmp347
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	2(%rbx), %rcx	#, fmt
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	%rax, %rdi	# tmp421, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	2(%rbx), %eax	# MEM[(const char *)fmt_224 + 2B], _397
	jmp	.L139	#
	.p2align 4,,10
	.p2align 3
.L294:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	cmpl	$47, %ecx	#, pretmp_267
	ja	.L203	#,
	movl	%ecx, %eax	# pretmp_267, D.2640
	addl	$8, %ecx	#, tmp344
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2642
	movl	%ecx, (%r12)	# tmp344, args_113(D)->gp_offset
.L204:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movl	%edx, %ecx	# field_width,
	movq	(%rax), %rsi	# MEM[(long unsigned int * {ref-all})addr.211_125], MEM[(long unsigned int * {ref-all})addr.211_125]
	movl	$16, %edx	#,
	jmp	.L285	#
.L225:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	xorl	%eax, %eax	# <retval>
	jmp	.L137	#
.L158:
# printk.c:294: 				precision =va_arg(args,int);
	movq	8(%r12), %rcx	# args_113(D)->overflow_arg_area, D.2582
	leaq	8(%rcx), %rax	#, tmp285
	movq	%rax, 8(%r12)	# tmp285, args_113(D)->overflow_arg_area
	jmp	.L159	#
.L209:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2662
	leaq	8(%rax), %rcx	#, tmp359
	movq	%rcx, 8(%r12)	# tmp359, args_113(D)->overflow_arg_area
	jmp	.L210	#
.L301:
# printk.c:388: 					long *ip=va_arg(args,long *);
	cmpl	$47, %edx	#, pretmp_192
	ja	.L215	#,
	movl	%edx, %eax	# pretmp_192, D.2680
	addl	$8, %edx	#, tmp372
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2682
	movl	%edx, (%r12)	# tmp372, args_113(D)->gp_offset
.L216:
	movq	(%rax), %rax	# MEM[(long int * * {ref-all})addr.215_236], ip
# printk.c:389: 					*ip=(str-buf);
	movq	%rdi, %rdx	# str, tmp374
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	2(%rbx), %rcx	#, fmt
# printk.c:389: 					*ip=(str-buf);
	subq	%r13, %rdx	# buf, tmp374
	movq	%rdx, (%rax)	# tmp374, *ip_156
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	2(%rbx), %eax	# MEM[(const char *)fmt_224 + 2B], _397
	jmp	.L139	#
.L302:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	cmpl	$47, %ecx	#, pretmp_193
	jbe	.L303	#,
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2612
	leaq	8(%rax), %rcx	#, tmp324
	movq	%rcx, 8(%r12)	# tmp324, args_113(D)->overflow_arg_area
.L195:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movl	%edx, %ecx	# field_width,
	movq	(%rax), %rsi	# MEM[(long unsigned int * {ref-all})addr.208_234], MEM[(long unsigned int * {ref-all})addr.208_234]
	movl	$8, %edx	#,
	jmp	.L285	#
.L203:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2642
	leaq	8(%rax), %rcx	#, tmp345
	movq	%rcx, 8(%r12)	# tmp345, args_113(D)->overflow_arg_area
	jmp	.L204	#
.L217:
# printk.c:391: 					int *ip=va_arg(args,int *);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2692
	leaq	8(%rax), %rdx	#, tmp378
	movq	%rdx, 8(%r12)	# tmp378, args_113(D)->overflow_arg_area
	jmp	.L218	#
.L196:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2622
	leaq	8(%rax), %rcx	#, tmp331
	movq	%rcx, 8(%r12)	# tmp331, args_113(D)->overflow_arg_area
	jmp	.L197	#
.L298:
# printk.c:335: 					while(len <field_width--){
	cmpl	%esi, %edx	# len, field_width
	jle	.L304	#,
	subl	$1, %edx	#, tmp312
	subl	%esi, %edx	# len, tmp314
	leaq	1(%rdi,%rdx), %rax	#, _432
	andl	$1, %edx	#, tmp314
	jne	.L187	#,
# printk.c:336: 						*str++ =' ';
	addq	$1, %rdi	#, str
# printk.c:336: 						*str++ =' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_133 + -1B]
# printk.c:335: 					while(len <field_width--){
	cmpq	%rax, %rdi	# _432, str
	je	.L281	#,
	.p2align 4,,10
	.p2align 3
.L187:
# printk.c:336: 						*str++ =' ';
	movb	$32, (%rdi)	#, MEM[(char *)str_133 + -1B]
# printk.c:336: 						*str++ =' ';
	addq	$2, %rdi	#, str
# printk.c:336: 						*str++ =' ';
	movb	$32, -1(%rdi)	#, MEM[(char *)str_133 + -1B]
# printk.c:335: 					while(len <field_width--){
	cmpq	%rax, %rdi	# _432, str
	jne	.L187	#,
.L281:
	leal	-1(%rsi), %edx	#, field_width
	jmp	.L185	#
.L215:
# printk.c:388: 					long *ip=va_arg(args,long *);
	movq	8(%r12), %rax	# args_113(D)->overflow_arg_area, D.2682
	leaq	8(%rax), %rdx	#, tmp373
	movq	%rdx, 8(%r12)	# tmp373, args_113(D)->overflow_arg_area
	jmp	.L216	#
.L303:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movl	%ecx, %eax	# pretmp_193, D.2610
	addl	$8, %ecx	#, tmp323
	addq	16(%r12), %rax	# args_113(D)->reg_save_area, D.2612
	movl	%ecx, (%r12)	# tmp323, args_113(D)->gp_offset
	jmp	.L195	#
.L207:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_30
# printk.c:378: 				flags |=SIGN;
	orl	$2, %r9d	#, flags
# printk.c:322: 				s=va_arg(args,char *);
	movq	%rbx, %r10	# fmt, _28
	jmp	.L208	#
.L201:
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_267
# printk.c:368: 				flags |=SMALL;
	orl	$64, %r9d	#, flags
# printk.c:322: 				s=va_arg(args,char *);
	movq	%rbx, %r10	# fmt, _28
	jmp	.L202	#
.L224:
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_30
	movq	%rbx, %r10	# fmt, _28
	jmp	.L208	#
.L192:
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_193
	movq	%rbx, %r10	# fmt, _28
	jmp	.L193	#
.L213:
	movl	(%r12), %edx	# args_113(D)->gp_offset, pretmp_192
	movq	%rbx, %r10	# fmt, _28
	jmp	.L214	#
.L222:
	movl	(%r12), %ecx	# args_113(D)->gp_offset, pretmp_267
	movq	%rbx, %r10	# fmt, _28
	jmp	.L202	#
.L271:
# printk.c:312: 					while(--field_width>0){
	movl	%ecx, %edx	# tmp298, field_width
	jmp	.L173	#
.L304:
	subl	$1, %edx	#, field_width
	jmp	.L185	#
.L299:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r10), %eax	# MEM[(const char *)fmt_255 + 1B], _397
	movq	%r8, %rdi	# str, str
	jmp	.L139	#
.L273:
	movzbl	1(%r10), %eax	# MEM[(const char *)fmt_259 + 1B], _397
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	%rsi, %rdi	# str, str
	jmp	.L139	#
.L231:
# printk.c:339: 				for(i=0;i<len;i++){
	movq	%rdi, %r8	# str, str
	jmp	.L188	#
.L230:
# lib.h:530:     while (*ptr != '\0') {
	xorl	%esi, %esi	# len
	jmp	.L182	#
	.cfi_endproc
.LFE40:
	.size	vsprintf, .-vsprintf
	.p2align 4
	.globl	color_printk
	.type	color_printk, @function
color_printk:
.LFB35:
	.cfi_startproc
	endbr64	
.L340:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L340, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.L340(%rip), %r12	#, tmp82
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	addq	%r11, %r12	#, tmp82
	movl	%esi, %ebp	# tmp308, BKcolor
	movq	%rdx, %rsi	# tmp309, fmt
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# tmp307, FRcolor
	subq	$248, %rsp	#,
	.cfi_def_cfa_offset 304
	movq	%rcx, 88(%rsp)	#,
	movq	%r8, 96(%rsp)	#,
	movq	%r9, 104(%rsp)	#,
	testb	%al, %al	#
	je	.L332	#,
	movaps	%xmm0, 112(%rsp)	#,
	movaps	%xmm1, 128(%rsp)	#,
	movaps	%xmm2, 144(%rsp)	#,
	movaps	%xmm3, 160(%rsp)	#,
	movaps	%xmm4, 176(%rsp)	#,
	movaps	%xmm5, 192(%rsp)	#,
	movaps	%xmm6, 208(%rsp)	#,
	movaps	%xmm7, 224(%rsp)	#,
.L332:
# printk.c:35: 	va_start(args,fmt);	
	leaq	304(%rsp), %rax	#, tmp384
	movl	$24, 40(%rsp)	#, MEM[(struct [1] *)&args].gp_offset
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	leaq	40(%rsp), %rdx	#, tmp186
# printk.c:35: 	va_start(args,fmt);	
	movq	%rax, 48(%rsp)	# tmp384, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	64(%rsp), %rax	#, tmp385
	movq	%rax, 56(%rsp)	# tmp385, MEM[(struct [1] *)&args].reg_save_area
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	movabsq	$buf@GOTOFF, %rax	#, tmp295
	addq	%r12, %rax	# tmp82, tmp187
# printk.c:35: 	va_start(args,fmt);	
	movl	$48, 44(%rsp)	#, MEM[(struct [1] *)&args].fp_offset
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	movq	%rax, 8(%rsp)	# tmp187, %sfp
	movq	%rax, %rdi	# tmp187,
	movabsq	$vsprintf@GOTOFF, %rax	#, tmp190
	addq	%r12, %rax	# tmp82, tmp189
	call	*%rax	# tmp189
	movl	%eax, %r13d	# tmp310, <retval>
# printk.c:38: 	for(count=0;count<i || line;count++){
	testl	%eax, %eax	# <retval>
	jle	.L305	#,
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movabsq	$Pos@GOTOFF, %r8	#, tmp296
# printk.c:33: 	int line=0;
	xorl	%r10d, %r10d	# line
# printk.c:38: 	for(count=0;count<i || line;count++){
	xorl	%r11d, %r11d	# count
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movq	24(%r8,%r12), %rax	# Pos.FB_addr, _51
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	20(%r8,%r12), %r14d	# Pos.YCharSize, prephitmp_289
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	16(%r8,%r12), %r9d	# Pos.XCharSize, prephitmp_291
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	(%r8,%r12), %ecx	# Pos.XResolution, prephitmp_293
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movq	%rax, (%rsp)	# _51, %sfp
# printk.c:12: 	fontp=font_ascii[font];
	movabsq	$font_ascii@GOTOFF, %rax	#, tmp301
	addq	%r12, %rax	# tmp82, tmp302
	movq	%rax, 24(%rsp)	# tmp302, %sfp
	movabsq	$512+font_ascii@GOTOFF, %rax	#, tmp303
	movq	%rax, 16(%rsp)	# tmp303, %sfp
	movabsq	$528+font_ascii@GOTOFF, %rax	#, tmp304
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rax,%r12), %rdi	#, tmp305
	.p2align 4,,10
	.p2align 3
.L339:
# printk.c:44: 			Pos.YPosition++;
	movl	12(%r8,%r12), %esi	# Pos.YPosition, prephitmp_296
# printk.c:39: 		if(line >0){
	testl	%r10d, %r10d	# line
	jg	.L343	#,
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movq	8(%rsp), %rdx	# %sfp, tmp187
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movslq	%r11d, %rax	# count, count
# printk.c:38: 	for(count=0;count<i || line;count++){
	addl	$1, %r11d	#, count
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movzbl	(%rax,%rdx), %eax	# *_2,
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	cmpb	$10, %al	#, _3
	je	.L344	#,
# printk.c:47: 			Pos.XPosition--;
	movl	8(%r8,%r12), %edx	# Pos.XPosition, pretmp_299
# printk.c:46: 		}else if((unsigned char)*(buf+count)=='\b'){
	cmpb	$8, %al	#, _3
	je	.L345	#,
# printk.c:56: 		}else if((unsigned char)*(buf+count)=='\t'){
	cmpb	$9, %al	#, _3
	jne	.L318	#,
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	leal	8(%rdx), %r10d	#, tmp236
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	andl	$-8, %r10d	#, tmp237
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	subl	%edx, %r10d	# pretmp_299, line
.L309:
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	imull	%r14d, %esi	# prephitmp_289, tmp239
	movslq	%ecx, %r15	# prephitmp_293, prephitmp_293
# printk.c:61: 				line--;
	subl	$1, %r10d	#, line
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	imull	%r9d, %edx	# prephitmp_291, tmp243
	salq	$2, %r15	#, _337
	imull	%ecx, %esi	# prephitmp_293, tmp240
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %rdx	# tmp243, tmp244
	movslq	%esi, %rax	# tmp240, tmp241
	leaq	8(%rax,%rdx), %rax	#, tmp245
	movq	(%rsp), %rdx	# %sfp, _51
	leaq	(%rdx,%rax,4), %r9	#, ivtmp.320
# printk.c:12: 	fontp=font_ascii[font];
	movq	16(%rsp), %rax	# %sfp, tmp303
	leaq	(%r12,%rax), %rsi	#, fontp
	.p2align 4,,10
	.p2align 3
.L321:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%r9), %rax	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %edx	#, testval
	.p2align 4,,10
	.p2align 3
.L320:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rsi), %ecx	# MEM[(unsigned char *)fontp_269], MEM[(unsigned char *)fontp_269]
# printk.c:18: 			testval =testval >>1;
	sarl	%edx	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%edx, %ecx	# testval, MEM[(unsigned char *)fontp_269]
	movl	%ebx, %ecx	# FRcolor, cstore_203
	cmove	%ebp, %ecx	# BKcolor,, cstore_203
# printk.c:24: 			addr++;
	addq	$4, %rax	#, addr
	movl	%ecx, -4(%rax)	# cstore_203, MEM[(unsigned int *)addr_238]
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%r9, %rax	# ivtmp.320, addr
	jne	.L320	#,
# printk.c:26: 		fontp++;
	addq	$1, %rsi	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rax,%r15), %r9	#, ivtmp.320
	cmpq	%rdi, %rsi	# tmp305, fontp
	jne	.L321	#,
.L342:
# printk.c:66: 			Pos.XPosition++;
	movl	8(%r8,%r12), %eax	# Pos.XPosition, tmp407
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%r8,%r12), %ecx	# Pos.XResolution, prephitmp_293
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	16(%r8,%r12), %r9d	# Pos.XCharSize, prephitmp_291
# printk.c:69: 			Pos.YPosition++;
	movl	12(%r8,%r12), %esi	# Pos.YPosition, prephitmp_317
# printk.c:66: 			Pos.XPosition++;
	leal	1(%rax), %r15d	#, _41
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	20(%r8,%r12), %r14d	# Pos.YCharSize, prephitmp_289
# printk.c:66: 			Pos.XPosition++;
	movl	%r15d, 8(%r8,%r12)	# _41, Pos.XPosition
.L311:
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	%ecx, %eax	# prephitmp_293, tmp281
	cltd
	idivl	%r9d	# prephitmp_291
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	cmpl	%r15d, %eax	# _41, tmp281
	jg	.L325	#,
# printk.c:70: 			Pos.XPosition=0;
	movl	$0, 8(%r8,%r12)	#, Pos.XPosition
# printk.c:69: 			Pos.YPosition++;
	addl	$1, %esi	#, prephitmp_317
	movl	%esi, 12(%r8,%r12)	# prephitmp_317, Pos.YPosition
.L325:
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	4(%r8,%r12), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%r14d	# prephitmp_289
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	cmpl	%esi, %eax	# prephitmp_317, tmp287
	jg	.L326	#,
# printk.c:73: 			Pos.YPosition=0;
	movl	$0, 12(%r8,%r12)	#, Pos.YPosition
.L326:
# printk.c:38: 	for(count=0;count<i || line;count++){
	cmpl	%r11d, %r13d	# count, <retval>
	jg	.L339	#,
	testl	%r10d, %r10d	# line
	jne	.L339	#,
.L305:
# printk.c:77: }
	addq	$248, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L343:
	.cfi_restore_state
# printk.c:47: 			Pos.XPosition--;
	movl	8(%r8,%r12), %edx	# Pos.XPosition, pretmp_299
# printk.c:41: 			goto Label_tab;
	jmp	.L309	#
.L344:
# printk.c:45: 			Pos.XPosition=0;
	movl	$0, 8(%r8,%r12)	#, Pos.XPosition
# printk.c:44: 			Pos.YPosition++;
	addl	$1, %esi	#, prephitmp_317
	xorl	%r15d, %r15d	# _41
	movl	%esi, 12(%r8,%r12)	# prephitmp_317, Pos.YPosition
	jmp	.L311	#
.L345:
# printk.c:48: 			if(Pos.XPosition<0){
	subl	$1, %edx	#, pretmp_299
	movl	%edx, %r15d	# pretmp_299, _13
	js	.L313	#,
# printk.c:47: 			Pos.XPosition--;
	movl	%edx, 8(%r8,%r12)	# _13, Pos.XPosition
.L314:
# printk.c:55: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
	imull	%r14d, %esi	# prephitmp_289, tmp219
	movl	%r9d, %eax	# prephitmp_291, prephitmp_291
	movslq	%ecx, %rdx	# prephitmp_293, prephitmp_293
	imull	%r15d, %eax	# _13, prephitmp_291
	salq	$2, %rdx	#, _327
	imull	%esi, %ecx	# tmp219, tmp220
	movq	(%rsp), %rsi	# %sfp, _51
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	cltq
	movslq	%ecx, %rcx	# tmp220, tmp221
	leaq	8(%rcx,%rax), %rax	#, tmp225
	leaq	(%rsi,%rax,4), %r14	#, ivtmp.341
# printk.c:12: 	fontp=font_ascii[font];
	movq	16(%rsp), %rax	# %sfp, tmp303
	leaq	(%r12,%rax), %r9	#, fontp
	.p2align 4,,10
	.p2align 3
.L317:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%r14), %rax	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %ecx	#, testval
	.p2align 4,,10
	.p2align 3
.L316:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%r9), %esi	# MEM[(unsigned char *)fontp_194], MEM[(unsigned char *)fontp_194]
# printk.c:18: 			testval =testval >>1;
	sarl	%ecx	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%ecx, %esi	# testval, MEM[(unsigned char *)fontp_194]
	movl	%ebx, %esi	# FRcolor, cstore_87
	cmove	%ebp, %esi	# BKcolor,, cstore_87
# printk.c:24: 			addr++;
	addq	$4, %rax	#, addr
	movl	%esi, -4(%rax)	# cstore_87, MEM[(unsigned int *)addr_129]
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%r14, %rax	# ivtmp.341, addr
	jne	.L316	#,
# printk.c:26: 		fontp++;
	addq	$1, %r9	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rax,%rdx), %r14	#, ivtmp.341
	cmpq	%rdi, %r9	# tmp305, fontp
	jne	.L317	#,
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	8(%r8,%r12), %r15d	# Pos.XPosition, _41
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%r8,%r12), %ecx	# Pos.XResolution, prephitmp_293
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	16(%r8,%r12), %r9d	# Pos.XCharSize, prephitmp_291
# printk.c:69: 			Pos.YPosition++;
	movl	12(%r8,%r12), %esi	# Pos.YPosition, prephitmp_317
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	20(%r8,%r12), %r14d	# Pos.YCharSize, prephitmp_289
	jmp	.L311	#
.L318:
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	imull	%r9d, %edx	# prephitmp_291, tmp263
# printk.c:12: 	fontp=font_ascii[font];
	movq	24(%rsp), %r15	# %sfp, tmp302
	salq	$4, %rax	#, tmp259
	addq	%r15, %rax	# tmp302, fontp
	movslq	%ecx, %r15	# prephitmp_293, prephitmp_293
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %r9	# tmp263, tmp264
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movl	%r14d, %edx	# prephitmp_289, prephitmp_289
	salq	$2, %r15	#, _145
	leaq	16(%rax), %r14	#, _259
	imull	%esi, %edx	# prephitmp_296, prephitmp_289
	movq	(%rsp), %rsi	# %sfp, _51
	imull	%ecx, %edx	# prephitmp_293, tmp267
	movslq	%edx, %rdx	# tmp267, tmp268
	leaq	8(%r9,%rdx), %rdx	#, tmp269
	leaq	(%rsi,%rdx,4), %r9	#, ivtmp.362
	.p2align 4,,10
	.p2align 3
.L324:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%r9), %rdx	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %ecx	#, testval
	.p2align 4,,10
	.p2align 3
.L323:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rax), %esi	# MEM[(unsigned char *)fontp_336], MEM[(unsigned char *)fontp_336]
# printk.c:18: 			testval =testval >>1;
	sarl	%ecx	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%ecx, %esi	# testval, MEM[(unsigned char *)fontp_336]
	movl	%ebx, %esi	# FRcolor, cstore_55
	cmove	%ebp, %esi	# BKcolor,, cstore_55
# printk.c:24: 			addr++;
	addq	$4, %rdx	#, addr
	movl	%esi, -4(%rdx)	# cstore_55, MEM[(unsigned int *)addr_323]
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%r9, %rdx	# ivtmp.362, addr
	jne	.L323	#,
# printk.c:26: 		fontp++;
	addq	$1, %rax	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rdx,%r15), %r9	#, ivtmp.362
	cmpq	%r14, %rax	# _259, fontp
	jne	.L324	#,
	jmp	.L342	#
.L313:
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%ecx, %eax	# prephitmp_293, tmp206
	cltd
	idivl	%r9d	# prephitmp_291
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	subl	$1, %eax	#, tmp208
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	imull	%r9d, %eax	# prephitmp_291, tmp208
# printk.c:50: 				Pos.YPosition--;
	subl	$1, %esi	#, prephitmp_296
	movl	%esi, 12(%r8,%r12)	# prephitmp_296, Pos.YPosition
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, 8(%r8,%r12)	# _13, Pos.XPosition
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, %r15d	# tmp208, _13
# printk.c:51: 				if(Pos.YPosition<0){
	jns	.L314	#,
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	4(%r8,%r12), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%r14d	# prephitmp_289
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	subl	$1, %eax	#, tmp216
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	imull	%r14d, %eax	# prephitmp_289, tmp216
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, 12(%r8,%r12)	# prephitmp_296, Pos.YPosition
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, %esi	# tmp216, prephitmp_296
	jmp	.L314	#
	.cfi_endproc
.LFE35:
	.size	color_printk, .-color_printk
	.globl	buf
	.bss
	.align 32
	.type	buf, @object
	.size	buf, 4096
buf:
	.zero	4096
	.globl	Pos
	.align 32
	.type	Pos, @object
	.size	Pos, 40
Pos:
	.zero	40
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
