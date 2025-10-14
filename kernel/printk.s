	.file	"printk.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=114976
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -O1 -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.align 8
.LC1:
	.string	"0123456789abcdefghijklmnopqrstuvwxyz"
	.text
	.type	number, @function
number:
.LFB39:
	.cfi_startproc
	endbr64	
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
.L40:
	leaq	.L40(%rip), %rax	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L40, %r11	#,
	addq	%r11, %rax	#, tmp82
	movq	%rsi, %r10	# tmp214, num
	movl	%edx, %ebp	# tmp215, base
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	movabsq	$.LC1@GOTOFF, %rdx	#, tmp162
	leaq	(%rax,%rdx), %r14	#, digits
# printk.c:159: 	if(type & SMALL){
	testb	$64, %r9b	#, type
	jne	.L2	#,
# printk.c:157: 	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	movabsq	$.LC0@GOTOFF, %rdx	#, tmp161
	leaq	(%rax,%rdx), %r14	#, digits
.L2:
# printk.c:162: 	if(type & LEFT){
	testb	$16, %r9b	#, type
	je	.L3	#,
# printk.c:163: 		type &=~ZEROPAD;
	andl	$-2, %r9d	#, type
# printk.c:165: 	if(base<2 || base>36){
	leal	-2(%rbp), %eax	#, tmp165
# printk.c:165: 	if(base<2 || base>36){
	cmpl	$34, %eax	#, tmp165
	ja	.L27	#,
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	$32, %ebx	#, iftmp.38_44
.L5:
# printk.c:170: 	if(type & SIGN  && num <0){
	testb	$2, %r9b	#, type
	je	.L6	#,
	testq	%r10, %r10	# num
	js	.L42	#,
.L6:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	testb	$4, %r9b	#, type
	jne	.L30	#,
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	leal	0(,%r9,4), %r15d	#, tmp174
# printk.c:177: 	if(sign){
	andl	$32, %r15d	#, sign
	je	.L8	#,
	jmp	.L7	#
.L3:
# printk.c:165: 	if(base<2 || base>36){
	leal	-2(%rbp), %eax	#, tmp166
# printk.c:165: 	if(base<2 || base>36){
	cmpl	$34, %eax	#, tmp166
	ja	.L28	#,
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	%r9d, %eax	# type, tmp167
	andl	$1, %eax	#, tmp167
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	cmpl	$1, %eax	#, tmp167
	sbbl	%ebx, %ebx	# iftmp.38_44
	andl	$-16, %ebx	#, iftmp.38_44
	addl	$48, %ebx	#, iftmp.38_44
	jmp	.L5	#
.L42:
# printk.c:172: 		num=-num;
	negq	%r10	# num
# printk.c:171: 		sign='-';
	movl	$45, %r15d	#, sign
	jmp	.L7	#
.L30:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	movl	$43, %r15d	#, sign
.L7:
# printk.c:178: 		size--;
	subl	$1, %ecx	#, size
.L8:
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %eax	# type, _10
	andl	$32, %eax	#, _10
	movl	%eax, -76(%rsp)	# _10, %sfp
	je	.L9	#,
# printk.c:181: 		if(base==16){
	cmpl	$16, %ebp	#, base
	je	.L43	#,
# printk.c:184: 			size=size-1;
	cmpl	$8, %ebp	#, base
	sete	%al	#, tmp207
	movzbl	%al, %eax	# tmp207, tmp207
	subl	%eax, %ecx	# tmp207, size
.L9:
# printk.c:187: 	if(num==0){
	testq	%r10, %r10	# num
	jne	.L31	#,
# printk.c:188: 		tmp[i++]='0';
	movb	$48, -72(%rsp)	#, tmp[0]
# printk.c:188: 		tmp[i++]='0';
	movl	$1, %edx	#, i
.L12:
# printk.c:193: 	if(i>precision){
	cmpl	%r8d, %edx	# precision, i
	cmovge	%edx, %r8d	# i,, _80
# printk.c:196: 	size-=precision;
	subl	%r8d, %ecx	# _80, size
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	testb	$17, %r9b	#, type
	jne	.L13	#,
# printk.c:198: 		while(size-- >0){
	leal	-1(%rcx), %eax	#, size
# printk.c:198: 		while(size-- >0){
	testl	%ecx, %ecx	# size
	jle	.L32	#,
	movl	%ecx, %esi	# size, size
	addq	%rdi, %rsi	# str, _189
	movq	%rdi, %rax	# str, str
.L14:
# printk.c:199: 			*str++=' ';
	addq	$1, %rax	#, str
# printk.c:199: 			*str++=' ';
	movb	$32, -1(%rax)	#, MEM[(char *)str_76 + -1B]
# printk.c:198: 		while(size-- >0){
	cmpq	%rsi, %rax	# _189, str
	jne	.L14	#,
	movl	%ecx, %ecx	# size, size
	addq	%rcx, %rdi	# size, str
# printk.c:198: 		while(size-- >0){
	movl	$-1, %ecx	#, size
.L13:
# printk.c:202: 	if(sign){
	testb	%r15b, %r15b	# sign
	je	.L15	#,
# printk.c:203: 		*str++=sign;
	movb	%r15b, (%rdi)	# sign, *str_23
# printk.c:203: 		*str++=sign;
	leaq	1(%rdi), %rdi	#, str
.L15:
# printk.c:205: 	if(type&SPECIAL){
	cmpl	$0, -76(%rsp)	#, %sfp
	je	.L16	#,
# printk.c:206: 		if(base==8){
	cmpl	$8, %ebp	#, base
	je	.L44	#,
# printk.c:208: 		}else if(base==16){
	cmpl	$16, %ebp	#, base
	je	.L45	#,
.L16:
# printk.c:213: 	if(!(type&LEFT)){
	testb	$16, %r9b	#, type
	jne	.L18	#,
# printk.c:214: 		while(size-- >0){
	leal	-1(%rcx), %eax	#, size
# printk.c:214: 		while(size-- >0){
	testl	%ecx, %ecx	# size
	jle	.L33	#,
	movl	%ecx, %esi	# size, size
	addq	%rdi, %rsi	# str, _184
	movq	%rdi, %rax	# str, str
.L19:
# printk.c:215: 			*str++=c;
	addq	$1, %rax	#, str
# printk.c:215: 			*str++=c;
	movb	%bl, -1(%rax)	# iftmp.38_44, MEM[(char *)str_87 + -1B]
# printk.c:214: 		while(size-- >0){
	cmpq	%rsi, %rax	# _184, str
	jne	.L19	#,
	movl	%ecx, %ecx	# size, size
	addq	%rcx, %rdi	# size, str
# printk.c:214: 		while(size-- >0){
	movl	$-1, %ecx	#, size
.L18:
# printk.c:218: 	while(i<precision--){
	cmpl	%r8d, %edx	# _80, i
	jge	.L46	#,
	subl	%edx, %r8d	# i, tmp191
	leal	-1(%r8), %eax	#, tmp193
	leaq	1(%rdi,%rax), %r8	#, <retval>
.L20:
# printk.c:219: 		*str++='0';
	addq	$1, %rdi	#, str
# printk.c:219: 		*str++='0';
	movb	$48, -1(%rdi)	#, MEM[(char *)str_96 + -1B]
# printk.c:218: 	while(i<precision--){
	cmpq	%r8, %rdi	# <retval>, str
	jne	.L20	#,
.L21:
# printk.c:221: 	while(i-- >0){
	testl	%edx, %edx	# i
	jle	.L23	#,
	movslq	%edx, %rax	# i, i
	leaq	-72(%rsp,%rax), %rsi	#, ivtmp.88
	movl	%edx, %r9d	# i, i
	addq	%r8, %r9	# <retval>, _172
	movq	%r8, %rax	# <retval>, str
.L24:
# printk.c:222: 		*str++=tmp[i];
	addq	$1, %rax	#, str
# printk.c:222: 		*str++=tmp[i];
	movzbl	-1(%rsi), %edi	# MEM[(char *)_167 + -1B], MEM[(char *)_167 + -1B]
	movb	%dil, -1(%rax)	# MEM[(char *)_167 + -1B], MEM[(char *)str_94 + -1B]
# printk.c:221: 	while(i-- >0){
	subq	$1, %rsi	#, ivtmp.88
	cmpq	%r9, %rax	# _172, str
	jne	.L24	#,
	movl	%edx, %edx	# i, i
	addq	%rdx, %r8	# i, <retval>
.L23:
# printk.c:224: 	while(size-- >0){
	testl	%ecx, %ecx	# size
	jle	.L1	#,
	movl	%ecx, %edx	# size, size
	addq	%r8, %rdx	# <retval>, _161
	movq	%r8, %rax	# <retval>, str
.L25:
# printk.c:225: 		*str++=' ';
	addq	$1, %rax	#, str
# printk.c:225: 		*str++=' ';
	movb	$32, -1(%rax)	#, MEM[(char *)str_92 + -1B]
# printk.c:224: 	while(size-- >0){
	cmpq	%rdx, %rax	# _161, str
	jne	.L25	#,
	movl	%ecx, %ecx	# size, size
	addq	%rcx, %r8	# size, <retval>
.L1:
# printk.c:228: }
	movq	%r8, %rax	# <retval>,
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
.L43:
	.cfi_restore_state
# printk.c:182: 			size=size-2;
	subl	$2, %ecx	#, size
	jmp	.L9	#
.L31:
	movl	$1, %esi	#, ivtmp.117
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movl	$0, %r13d	#, tmp177
	movslq	%ebp, %r11	# base, base
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	leaq	-73(%rsp), %r12	#, tmp180
.L11:
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movq	%r10, %rax	# num, num
	movl	%r13d, %edx	# tmp177, __res
#APP
# 191 "printk.c" 1
	divq %r11		# base
# 0 "" 2
#NO_APP
	movq	%rax, %r10	# num, num
	movslq	%edx, %rdx	# __res, __res
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movzbl	(%r14,%rdx), %edx	# *_13, *_13
	movb	%dl, (%r12,%rsi)	# *_13, MEM[(char *)&tmp + -1B + ivtmp.117_190 * 1]
	movq	%rsi, %rdx	# ivtmp.117, ivtmp.117
# printk.c:189: 	}else while (num!=0){
	addq	$1, %rsi	#, ivtmp.117
	testq	%rax, %rax	# num
	jne	.L11	#,
	jmp	.L12	#
.L32:
# printk.c:198: 		while(size-- >0){
	movl	%eax, %ecx	# size, size
	jmp	.L13	#
.L44:
# printk.c:207: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:207: 			*str++='0';
	leaq	1(%rdi), %rdi	#, str
	jmp	.L16	#
.L45:
# printk.c:209: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:210: 			*str++=digits[33];
	movzbl	33(%r14), %eax	# MEM[(const char *)digits_39 + 33B], MEM[(const char *)digits_39 + 33B]
	movb	%al, 1(%rdi)	# MEM[(const char *)digits_39 + 33B], MEM[(char *)str_24 + 1B]
# printk.c:210: 			*str++=digits[33];
	leaq	2(%rdi), %rdi	#, str
	jmp	.L16	#
.L33:
# printk.c:214: 		while(size-- >0){
	movl	%eax, %ecx	# size, size
	jmp	.L18	#
.L46:
# printk.c:218: 	while(i<precision--){
	movq	%rdi, %r8	# str, <retval>
	jmp	.L21	#
.L27:
# printk.c:166: 		return 0;	
	movl	$0, %r8d	#, <retval>
	jmp	.L1	#
.L28:
	movl	$0, %r8d	#, <retval>
	jmp	.L1	#
	.cfi_endproc
.LFE39:
	.size	number, .-number
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB34:
	.cfi_startproc
	endbr64	
.L54:
	leaq	.L54(%rip), %r10	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L54, %r11	#,
	addq	%r11, %r10	#, tmp82
	movl	%esi, %eax	# tmp127, Xsize
# printk.c:12: 	fontp=font_ascii[font];
	movzbl	8(%rsp), %esi	# font, font
	salq	$4, %rsi	#, tmp114
	movabsq	$font_ascii@GOTOFF, %r11	#, tmp116
	leaq	(%r10,%r11), %r10	#, tmp115
	addq	%r10, %rsi	# tmp115, fontp
	movslq	%eax, %r10	# Xsize, Xsize
	salq	$2, %r10	#, _38
	movslq	%edx, %rdx	# tmp128, x
	imull	%eax, %ecx	# Xsize, tmp120
	movslq	%ecx, %rax	# tmp120, tmp121
	leaq	8(%rdx,%rax), %rax	#, tmp122
	leaq	(%rdi,%rax,4), %rdi	#, ivtmp.140
	leaq	16(%rsi), %r11	#, _56
	jmp	.L50	#
.L56:
# printk.c:26: 		fontp++;
	addq	$1, %rsi	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%r10, %rdi	# _38, ivtmp.140
	cmpq	%r11, %rsi	# _56, fontp
	je	.L55	#,
.L50:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	leaq	-32(%rdi), %rax	#, addr
# printk.c:16: 		testval =0x100;
	movl	$256, %edx	#, testval
.L49:
# printk.c:18: 			testval =testval >>1;
	sarl	%edx	# testval
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rsi), %ecx	# MEM[(unsigned char *)fontp_46], MEM[(unsigned char *)fontp_46]
# printk.c:20: 				*addr =FRcolor;
	testl	%edx, %ecx	# testval, MEM[(unsigned char *)fontp_46]
	movl	%r8d, %ecx	# FRcolor, cstore_36
	cmove	%r9d, %ecx	# BKcolor,, cstore_36
	movl	%ecx, (%rax)	# cstore_36, MEM[(unsigned int *)addr_45]
# printk.c:24: 			addr++;
	addq	$4, %rax	#, addr
# printk.c:17: 		for(j=0;j<8;j++){
	cmpq	%rdi, %rax	# ivtmp.140, addr
	jne	.L49	#,
	jmp	.L56	#
.L55:
# printk.c:28: }
	ret	
	.cfi_endproc
.LFE34:
	.size	putchar, .-putchar
	.globl	clear_screen
	.type	clear_screen, @function
clear_screen:
.LFB36:
	.cfi_startproc
	endbr64	
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 72
.L67:
	leaq	.L67(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L67, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movl	%edi, 4(%rsp)	# tmp124, %sfp
	movl	%esi, 8(%rsp)	# tmp125, %sfp
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movabsq	$Pos@GOTOFF, %rcx	#, tmp99
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movl	(%rbx,%rcx), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%rbx,%rcx)	# Pos.XCharSize
	movl	%eax, %r14d	# Pos.XResolution, tmp101
# printk.c:82:     int rows = Pos.YResolution / Pos.YCharSize;
	movl	4(%rbx,%rcx), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%rbx,%rcx)	# Pos.YCharSize
	movl	%eax, 12(%rsp)	# Pos.YResolution, %sfp
# printk.c:84:     for (int y = 0; y < rows; y++) {
	movl	$0, %r13d	#, y
# printk.c:87:                    x * Pos.XCharSize, y * Pos.YCharSize,
	movq	%rcx, %r12	#, tmp121
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movabsq	$putchar@GOTOFF, %rax	#, tmp122
	leaq	(%rbx,%rax), %r15	#, tmp123
# printk.c:84:     for (int y = 0; y < rows; y++) {
	cmpl	$0, 12(%rsp)	#, %sfp
	jg	.L58	#,
.L59:
# printk.c:92:     Pos.XPosition = 0;
	movabsq	$Pos@GOTOFF, %rax	#, tmp119
	movl	$0, 8(%rbx,%rax)	#, Pos.XPosition
# printk.c:93:     Pos.YPosition = 0;
	movl	$0, 12(%rbx,%rax)	#, Pos.YPosition
# printk.c:94: }	
	addq	$16, %rsp	#,
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
.L60:
	.cfi_restore_state
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movl	%r13d, %ecx	# y, tmp110
	imull	20(%rbx,%r12), %ecx	# Pos.YCharSize, tmp110
	movl	%ebp, %edx	# x, tmp112
	imull	16(%rbx,%r12), %edx	# Pos.XCharSize, tmp112
	movl	(%rbx,%r12), %esi	# Pos.XResolution, Pos.XResolution
	movq	24(%rbx,%r12), %rdi	# Pos.FB_addr, Pos.FB_addr
	pushq	$32	#
	.cfi_def_cfa_offset 80
	movl	16(%rsp), %r9d	# %sfp,
	movl	12(%rsp), %r8d	# %sfp,
	call	*%r15	# tmp123
# printk.c:85:         for (int x = 0; x < cols; x++) {
	addl	$1, %ebp	#, x
# printk.c:85:         for (int x = 0; x < cols; x++) {
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 72
	cmpl	%ebp, %r14d	# x, tmp101
	jne	.L60	#,
.L61:
# printk.c:84:     for (int y = 0; y < rows; y++) {
	addl	$1, %r13d	#, y
# printk.c:84:     for (int y = 0; y < rows; y++) {
	cmpl	%r13d, 12(%rsp)	# y, %sfp
	je	.L59	#,
.L58:
# printk.c:85:         for (int x = 0; x < cols; x++) {
	movl	$0, %ebp	#, x
# printk.c:85:         for (int x = 0; x < cols; x++) {
	testl	%r14d, %r14d	# tmp101
	jg	.L60	#,
	jmp	.L61	#
	.cfi_endproc
.LFE36:
	.size	clear_screen, .-clear_screen
	.globl	skip_atoi2
	.type	skip_atoi2, @function
skip_atoi2:
.LFB37:
	.cfi_startproc
	endbr64	
.L74:
# printk.c:100: 	while(is_digit(**s)){
	movq	(%rdi), %rdx	# *s_12(D), _17
	movzbl	(%rdx), %eax	# *_17, _6
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L72	#,
	addq	$1, %rdx	#, ivtmp.157
# printk.c:99: 	int i=0;
	movl	$0, %ecx	#, <retval>
.L71:
# printk.c:103: 		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.157, *s_12(D)
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:100: 	while(is_digit(**s)){
	movzbl	(%rdx), %eax	# MEM[(const char *)_1], _6
	addq	$1, %rdx	#, ivtmp.157
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L71	#,
.L69:
# printk.c:107: }
	movl	%ecx, %eax	# <retval>,
	ret	
.L72:
# printk.c:99: 	int i=0;
	movl	$0, %ecx	#, <retval>
# printk.c:106: 	return i;
	jmp	.L69	#
	.cfi_endproc
.LFE37:
	.size	skip_atoi2, .-skip_atoi2
	.globl	skip_atoi
	.type	skip_atoi, @function
skip_atoi:
.LFB38:
	.cfi_startproc
	endbr64	
.L80:
# printk.c:112:  	while(is_digit(current_char = **s)){
	movq	(%rdi), %rdx	# *s_9(D), _18
	movzbl	(%rdx), %eax	# *_18, current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L78	#,
	addq	$1, %rdx	#, ivtmp.164
# printk.c:110:  	int i=0;
	movl	$0, %ecx	#, <retval>
.L77:
# printk.c:113:  		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.164, *s_9(D)
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:112:  	while(is_digit(current_char = **s)){
	movzbl	(%rdx), %eax	# MEM[(const char *)_1], current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	addq	$1, %rdx	#, ivtmp.164
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L77	#,
.L75:
# printk.c:117: }
	movl	%ecx, %eax	# <retval>,
	ret	
.L78:
# printk.c:110:  	int i=0;
	movl	$0, %ecx	#, <retval>
# printk.c:116:  	return i;
	jmp	.L75	#
	.cfi_endproc
.LFE38:
	.size	skip_atoi, .-skip_atoi
	.globl	vsprintf
	.type	vsprintf, @function
vsprintf:
.LFB40:
	.cfi_startproc
	endbr64	
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
.L185:
	leaq	.L185(%rip), %r15	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L185, %r11	#,
	addq	%r11, %r15	#, tmp82
	movq	%rdi, (%rsp)	# buf, %sfp
	movq	%rsi, 8(%rsp)	# fmt, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	(%rsi), %eax	# *fmt.36_255, _53
	testb	%al, %al	# _53
	je	.L159	#,
	movq	%rdx, %r13	# tmp436, args
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	%rdi, %rbx	# buf, str
# printk.c:250: 			switch (*fmt)
	leaq	.L88(%rip), %r12	#, tmp429
	jmp	.L156	#
.L196:
	movq	8(%rsp), %rdx	# fmt, fmt_lsm.188
# printk.c:247: 		flags=0;
	movl	$0, %ebp	#, flags
	jmp	.L84	#
.L89:
# printk.c:253: 				flags |=LEFT;
	orl	$16, %ebp	#, flags
.L93:
# printk.c:249: 			fmt++;
	movq	%rsi, %rdx	# _2, fmt_lsm.188
.L84:
	leaq	1(%rdx), %rsi	#, _2
# printk.c:250: 			switch (*fmt)
	movzbl	1(%rdx), %ecx	# MEM[(const char *)_2], _3
# printk.c:250: 			switch (*fmt)
	leal	-32(%rcx), %eax	#, tmp280
	cmpb	$16, %al	#, tmp280
	ja	.L86	#,
	movzbl	%al, %eax	# tmp280, tmp281
	movq	%r12, %rdi	# tmp429, tmp284
	addq	(%r12,%rax,8), %rdi	#, tmp284
	notrack jmp	*%rdi	# tmp284
	.section	.rodata
	.align 8
	.align 4
.L88:
	.quad	.L92-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L91-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L90-.L88
	.quad	.L86-.L88
	.quad	.L89-.L88
	.quad	.L86-.L88
	.quad	.L86-.L88
	.quad	.L87-.L88
	.text
.L90:
# printk.c:256: 				flags |=PLUS;
	orl	$4, %ebp	#, flags
# printk.c:257: 				goto repeat;
	jmp	.L93	#
.L92:
# printk.c:259: 				flags |=SPACE;
	orl	$8, %ebp	#, flags
# printk.c:260: 				goto repeat;			
	jmp	.L93	#
.L91:
# printk.c:262: 				flags |=SPECIAL;
	orl	$32, %ebp	#, flags
# printk.c:263: 				goto repeat;			
	jmp	.L93	#
.L87:
# printk.c:265: 				flags |=ZEROPAD;
	orl	$1, %ebp	#, flags
# printk.c:266: 				goto repeat;				
	jmp	.L93	#
.L86:
	movq	%rsi, 8(%rsp)	# _2, fmt
# printk.c:270: 		if (is_digit(*fmt))
	leal	-48(%rcx), %eax	#, tmp286
# printk.c:270: 		if (is_digit(*fmt))
	cmpb	$9, %al	#, tmp286
	jbe	.L187	#,
# printk.c:269: 		field_width=-1;
	movl	$-1, %r14d	#, field_width
# printk.c:274: 		else if (*fmt == '*')
	cmpb	$42, %cl	#, _3
	je	.L188	#,
.L95:
# printk.c:286: 		if(*fmt =='.'){
	movq	8(%rsp), %rax	# fmt, fmt.8_8
# printk.c:285: 		precision =-1;
	movl	$-1, %r8d	#, _23
# printk.c:286: 		if(*fmt =='.'){
	cmpb	$46, (%rax)	#, *fmt.8_8
	je	.L189	#,
.L98:
# printk.c:305: 		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
	movq	8(%rsp), %rax	# fmt, fmt.13_15
	movzbl	(%rax), %ecx	# *fmt.13_15, _16
	leal	-76(%rcx), %edx	#, _284
	cmpb	$46, %dl	#, _284
	ja	.L103	#,
	movabsq	$70373307580417, %rdi	#, tmp451
	btq	%rdx, %rdi	# _284, tmp451
	jnc	.L104	#,
# printk.c:306: 			qualifier =*fmt;
	movsbl	%cl, %ecx	# _16, qualifier
# printk.c:307: 			fmt++;
	leaq	1(%rax), %rdx	#, tmp309
	movq	%rdx, 8(%rsp)	# tmp309, fmt
# printk.c:309: 	switch (*fmt){
	movzbl	1(%rax), %eax	# *fmt.19_21, *fmt.19_21
	subl	$37, %eax	#, tmp310
	cmpb	$83, %al	#, tmp310
	ja	.L105	#,
	movzbl	%al, %eax	# tmp310, tmp312
	leaq	.L107(%rip), %rsi	#, tmp313
	addq	(%rsi,%rax,8), %rsi	#, tmp315
	notrack jmp	*%rsi	# tmp315
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L116-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L115-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L114-.L107
	.quad	.L113-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L113-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L112-.L107
	.quad	.L111-.L107
	.quad	.L110-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L109-.L107
	.quad	.L105-.L107
	.quad	.L108-.L107
	.quad	.L105-.L107
	.quad	.L105-.L107
	.quad	.L106-.L107
	.text
.L187:
# printk.c:272: 			field_width= skip_atoi(&fmt);
	leaq	8(%rsp), %rdi	#, tmp287
	movabsq	$skip_atoi@GOTOFF, %rax	#, tmp289
	leaq	(%r15,%rax), %rax	#, tmp288
	call	*%rax	# tmp288
	movl	%eax, %r14d	# tmp437, field_width
	jmp	.L95	#
.L188:
# printk.c:276: 			fmt++;
	addq	$2, %rdx	#, tmp290
	movq	%rdx, 8(%rsp)	# tmp290, fmt
# printk.c:277: 			field_width=va_arg(args,int);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2490
	cmpl	$47, %eax	#, D.2490
	ja	.L96	#,
	movl	%eax, %edx	# D.2490, D.2493
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2495
	addl	$8, %eax	#, tmp293
	movl	%eax, 0(%r13)	# tmp293, args_108(D)->gp_offset
.L97:
	movl	(%rdx), %r14d	# MEM[(int * {ref-all})addr.168_197], field_width
# printk.c:278: 			if (field_width <0)
	testl	%r14d, %r14d	# field_width
	jns	.L95	#,
# printk.c:280: 				field_width=-field_width;
	negl	%r14d	# field_width
# printk.c:281: 				flags |=LEFT;
	orl	$16, %ebp	#, flags
	jmp	.L95	#
.L96:
# printk.c:277: 			field_width=va_arg(args,int);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2495
	leaq	8(%rdx), %rax	#, tmp294
	movq	%rax, 8(%r13)	# tmp294, args_108(D)->overflow_arg_area
	jmp	.L97	#
.L189:
# printk.c:287: 			fmt++;
	leaq	1(%rax), %rdx	#, tmp295
	movq	%rdx, 8(%rsp)	# tmp295, fmt
# printk.c:288: 			if (is_digit(*fmt))
	movzbl	1(%rax), %edx	# MEM[(const char *)fmt.8_8 + 1B], _11
	leal	-48(%rdx), %ecx	#, tmp296
# printk.c:288: 			if (is_digit(*fmt))
	cmpb	$9, %cl	#, tmp296
	jbe	.L190	#,
# printk.c:297: 				precision=0;
	movl	$0, %r8d	#, _23
# printk.c:292: 			else if(*fmt == '*'){
	cmpb	$42, %dl	#, _11
	jne	.L98	#,
# printk.c:293: 				fmt++;
	addq	$2, %rax	#, tmp300
	movq	%rax, 8(%rsp)	# tmp300, fmt
# printk.c:294: 				precision =va_arg(args,int);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2500
	cmpl	$47, %eax	#, D.2500
	ja	.L101	#,
	movl	%eax, %edx	# D.2500, D.2503
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2505
	addl	$8, %eax	#, tmp303
	movl	%eax, 0(%r13)	# tmp303, args_108(D)->gp_offset
.L102:
	movl	(%rdx), %eax	# MEM[(int * {ref-all})addr.169_198], precision
	jmp	.L100	#
.L190:
# printk.c:290: 				precision=skip_atoi(&fmt);
	leaq	8(%rsp), %rdi	#, tmp297
	movabsq	$skip_atoi@GOTOFF, %rax	#, tmp299
	leaq	(%r15,%rax), %rax	#, tmp298
	call	*%rax	# tmp298
.L100:
# printk.c:296: 			if(precision <0){
	testl	%eax, %eax	# precision
	movl	$0, %edx	#, tmp447
	cmovns	%eax, %edx	# precision,, tmp447
	movl	%edx, %r8d	# tmp447, _23
	jmp	.L98	#
.L101:
# printk.c:294: 				precision =va_arg(args,int);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2505
	leaq	8(%rdx), %rax	#, tmp304
	movq	%rax, 8(%r13)	# tmp304, args_108(D)->overflow_arg_area
	jmp	.L102	#
.L114:
# printk.c:311: 				if(!(flags &LEFT)){
	andl	$16, %ebp	#, _24
	je	.L191	#,
.L117:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2510
	cmpl	$47, %eax	#, D.2510
	ja	.L119	#,
	movl	%eax, %edx	# D.2510, D.2513
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2515
	addl	$8, %eax	#, tmp323
	movl	%eax, 0(%r13)	# tmp323, args_108(D)->gp_offset
.L120:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	leaq	1(%rbx), %rcx	#, str
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%rdx), %eax	# MEM[(int * {ref-all})addr.170_199], MEM[(int * {ref-all})addr.170_199]
	movb	%al, (%rbx)	# MEM[(int * {ref-all})addr.170_199], *str_56
# printk.c:317: 				while(--field_width>0){
	cmpl	$1, %r14d	#, field_width
	jle	.L164	#,
	movl	%r14d, %edx	# field_width, field_width
	addq	%rbx, %rdx	# str, _366
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	%rcx, %rax	# str, str
.L121:
# printk.c:318: 					*str++ =' ';
	addq	$1, %rax	#, str
# printk.c:318: 					*str++ =' ';
	movb	$32, -1(%rax)	#, MEM[(char *)str_167 + -1B]
# printk.c:317: 				while(--field_width>0){
	cmpq	%rdx, %rax	# _366, str
	jne	.L121	#,
	leal	-1(%r14), %ebx	#, tmp328
	addq	%rcx, %rbx	# str, str
	jmp	.L85	#
.L191:
# printk.c:312: 					while(--field_width>0){
	leal	-1(%r14), %eax	#, field_width
	testl	%eax, %eax	# field_width
	jle	.L163	#,
	leal	-1(%r14), %edx	#, tmp318
	addq	%rbx, %rdx	# str, _267
	movq	%rbx, %rax	# str, str
.L118:
# printk.c:313: 						*str++ =' ';
	addq	$1, %rax	#, str
# printk.c:313: 						*str++ =' ';
	movb	$32, -1(%rax)	#, MEM[(char *)str_161 + -1B]
# printk.c:312: 					while(--field_width>0){
	cmpq	%rdx, %rax	# _267, str
	jne	.L118	#,
	leal	-1(%r14), %eax	#, tmp320
	addq	%rax, %rbx	# tmp320, str
	movl	%ebp, %r14d	# _24, field_width
	jmp	.L117	#
.L163:
	movl	%eax, %r14d	# field_width, field_width
	jmp	.L117	#
.L119:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2515
	leaq	8(%rdx), %rax	#, tmp324
	movq	%rax, 8(%r13)	# tmp324, args_108(D)->overflow_arg_area
	jmp	.L120	#
.L109:
# printk.c:322: 				s=va_arg(args,char *);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2520
	cmpl	$47, %eax	#, D.2520
	ja	.L122	#,
	movl	%eax, %edx	# D.2520, D.2523
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2525
	addl	$8, %eax	#, tmp331
	movl	%eax, 0(%r13)	# tmp331, args_108(D)->gp_offset
.L123:
	movq	(%rdx), %rsi	# MEM[(char * * {ref-all})addr.171_200], s
# lib.h:529:     while (*ptr != '\0') {
	cmpb	$0, (%rsi)	#, *s_125
	je	.L165	#,
# lib.h:526:     char *ptr = String;
	movq	%rsi, %rax	# s, ptr
.L125:
# lib.h:530:         ptr++;
	addq	$1, %rax	#, ptr
# lib.h:529:     while (*ptr != '\0') {
	cmpb	$0, (%rax)	#, MEM[(char *)ptr_185]
	jne	.L125	#,
.L124:
# lib.h:534:     return ptr - String;
	subq	%rsi, %rax	# s, tmp333
# printk.c:331: 				else if(len >precision){
	movl	%eax, %edx	# tmp333, tmp446
	cmpl	%eax, %r8d	# tmp446, _23
	cmovle	%r8d, %edx	# _23,, tmp426
	testl	%r8d, %r8d	# _23
	cmovs	%eax, %edx	# tmp333,, len
# printk.c:334: 				if(!(flags &LEFT)){
	testb	$16, %bpl	#, flags
	je	.L192	#,
.L127:
# printk.c:339: 				for(i=0;i<len;i++){
	testl	%edx, %edx	# len
	jle	.L129	#,
	movslq	%edx, %rdi	# len, _395
	movl	$0, %eax	#, ivtmp.215
.L130:
# printk.c:340: 						*str++ =*s++;
	movzbl	(%rsi,%rax), %ecx	# MEM[(char *)s_125 + ivtmp.215_393 * 1], _28
# printk.c:340: 						*str++ =*s++;
	movb	%cl, (%rbx,%rax)	# _28, MEM[(char *)str_59 + ivtmp.215_393 * 1]
# printk.c:339: 				for(i=0;i<len;i++){
	addq	$1, %rax	#, ivtmp.215
	cmpq	%rdi, %rax	# _395, ivtmp.215
	jne	.L130	#,
	movl	%edx, %eax	# len, len
	addq	%rax, %rbx	# len, str
.L129:
# printk.c:342: 				while(len <field_width--){
	cmpl	%edx, %r14d	# len, field_width
	jle	.L85	#,
	movl	%r14d, %esi	# field_width, _279
	subl	%edx, %r14d	# len, tmp341
	leal	-1(%r14), %eax	#, tmp343
	leaq	1(%rbx,%rax), %rcx	#, _219
	movq	%rbx, %rax	# str, str
.L131:
# printk.c:343: 						*str++ =' ';
	addq	$1, %rax	#, str
# printk.c:343: 						*str++ =' ';
	movb	$32, -1(%rax)	#, MEM[(char *)str_131 + -1B]
# printk.c:342: 				while(len <field_width--){
	cmpq	%rcx, %rax	# _219, str
	jne	.L131	#,
	movl	%esi, %eax	# _279, _279
	subl	%edx, %eax	# len, _279
	leal	-1(%rax), %eax	#, tmp347
	leaq	1(%rbx,%rax), %rbx	#, str
	jmp	.L85	#
.L122:
# printk.c:322: 				s=va_arg(args,char *);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2525
	leaq	8(%rdx), %rax	#, tmp332
	movq	%rax, 8(%r13)	# tmp332, args_108(D)->overflow_arg_area
	jmp	.L123	#
.L165:
# lib.h:526:     char *ptr = String;
	movq	%rsi, %rax	# s, ptr
	jmp	.L124	#
.L192:
# printk.c:335: 					while(len <field_width--){
	leal	-1(%r14), %ecx	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%edx, %r14d	# len, field_width
	jle	.L166	#,
	movl	%r14d, %edi	# field_width, _396
	movl	%ecx, %r14d	# field_width, tmp335
	subl	%edx, %r14d	# len, tmp337
	leaq	1(%rbx,%r14), %rax	#, _402
.L128:
# printk.c:336: 						*str++ =' ';
	addq	$1, %rbx	#, str
# printk.c:336: 						*str++ =' ';
	movb	$32, -1(%rbx)	#, MEM[(char *)str_128 + -1B]
# printk.c:335: 					while(len <field_width--){
	cmpq	%rax, %rbx	# _402, str
	jne	.L128	#,
	movl	%edx, %r14d	# len, tmp339
	subl	%edi, %r14d	# _396, tmp339
# printk.c:335: 					while(len <field_width--){
	addl	%ecx, %r14d	# field_width, field_width
	movq	%rax, %rbx	# _402, str
	jmp	.L127	#
.L166:
	movl	%ecx, %r14d	# field_width, field_width
	jmp	.L127	#
.L174:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
.L111:
# printk.c:352: 				if(qualifier =='l'){
	cmpl	$108, %ecx	#, qualifier
	je	.L193	#,
.L132:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2540
	cmpl	$47, %eax	#, D.2540
	ja	.L135	#,
	movl	%eax, %edx	# D.2540, D.2543
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2545
	addl	$8, %eax	#, tmp358
	movl	%eax, 0(%r13)	# tmp358, args_108(D)->gp_offset
.L136:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.173_202], MEM[(unsigned int * {ref-all})addr.173_202]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$8, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp362
	leaq	(%r15,%rax), %rax	#, tmp361
	call	*%rax	# tmp361
	movq	%rax, %rbx	# tmp440, str
	jmp	.L85	#
.L193:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2530
	cmpl	$47, %eax	#, D.2530
	ja	.L133	#,
	movl	%eax, %edx	# D.2530, D.2533
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2535
	addl	$8, %eax	#, tmp351
	movl	%eax, 0(%r13)	# tmp351, args_108(D)->gp_offset
.L134:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.172_201], MEM[(long unsigned int * {ref-all})addr.172_201]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$8, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp355
	leaq	(%r15,%rax), %rax	#, tmp354
	call	*%rax	# tmp354
	movq	%rax, %rbx	# tmp439, str
	jmp	.L85	#
.L133:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2535
	leaq	8(%rdx), %rax	#, tmp352
	movq	%rax, 8(%r13)	# tmp352, args_108(D)->overflow_arg_area
	jmp	.L134	#
.L135:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2545
	leaq	8(%rdx), %rax	#, tmp359
	movq	%rax, 8(%r13)	# tmp359, args_108(D)->overflow_arg_area
	jmp	.L136	#
.L110:
# printk.c:360: 				if(field_width ==-1){
	cmpl	$-1, %r14d	#, field_width
	je	.L194	#,
.L137:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2550
	cmpl	$47, %eax	#, D.2550
	ja	.L138	#,
	movl	%eax, %edx	# D.2550, D.2553
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2555
	addl	$8, %eax	#, tmp365
	movl	%eax, 0(%r13)	# tmp365, args_108(D)->gp_offset
.L139:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(void * * {ref-all})addr.174_203], MEM[(void * * {ref-all})addr.174_203]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$16, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp369
	leaq	(%r15,%rax), %rax	#, tmp368
	call	*%rax	# tmp368
	movq	%rax, %rbx	# tmp441, str
# printk.c:366: 				break;
	jmp	.L85	#
.L194:
# printk.c:363: 					flags |=ZEROPAD;
	orl	$1, %ebp	#, flags
# printk.c:362: 					field_width=sizeof(void *)*2;
	movl	$16, %r14d	#, field_width
	jmp	.L137	#
.L138:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2555
	leaq	8(%rdx), %rax	#, tmp366
	movq	%rax, 8(%r13)	# tmp366, args_108(D)->overflow_arg_area
	jmp	.L139	#
.L171:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
.L106:
# printk.c:368: 				flags |=SMALL;
	orl	$64, %ebp	#, flags
.L115:
# printk.c:370: 				if(qualifier =='l'){
	cmpl	$108, %ecx	#, qualifier
	je	.L195	#,
.L140:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2570
	cmpl	$47, %eax	#, D.2570
	ja	.L143	#,
	movl	%eax, %edx	# D.2570, D.2573
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2575
	addl	$8, %eax	#, tmp379
	movl	%eax, 0(%r13)	# tmp379, args_108(D)->gp_offset
.L144:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.176_205], MEM[(unsigned int * {ref-all})addr.176_205]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$16, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp383
	leaq	(%r15,%rax), %rax	#, tmp382
	call	*%rax	# tmp382
	movq	%rax, %rbx	# tmp443, str
.L85:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	8(%rsp), %rax	# fmt, fmt.35_50
	leaq	1(%rax), %rdx	#, tmp409
	movq	%rdx, 8(%rsp)	# tmp409, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%rax), %eax	# MEM[(const char *)fmt.35_50 + 1B], _53
	testb	%al, %al	# _53
	je	.L82	#,
.L156:
# printk.c:242: 		if (*fmt !='%')
	cmpb	$37, %al	#, _53
	je	.L196	#,
# printk.c:244: 			*str++ =*fmt;
	movb	%al, (%rbx)	# _53, *str_375
# printk.c:244: 			*str++ =*fmt;
	leaq	1(%rbx), %rbx	#, str
# printk.c:245: 			continue;
	jmp	.L85	#
.L176:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
	jmp	.L106	#
.L167:
	movl	$-1, %ecx	#, qualifier
	jmp	.L115	#
.L195:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2560
	cmpl	$47, %eax	#, D.2560
	ja	.L141	#,
	movl	%eax, %edx	# D.2560, D.2563
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2565
	addl	$8, %eax	#, tmp372
	movl	%eax, 0(%r13)	# tmp372, args_108(D)->gp_offset
.L142:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.175_204], MEM[(long unsigned int * {ref-all})addr.175_204]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$16, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp376
	leaq	(%r15,%rax), %rax	#, tmp375
	call	*%rax	# tmp375
	movq	%rax, %rbx	# tmp442, str
	jmp	.L85	#
.L141:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2565
	leaq	8(%rdx), %rax	#, tmp373
	movq	%rax, 8(%r13)	# tmp373, args_108(D)->overflow_arg_area
	jmp	.L142	#
.L143:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2575
	leaq	8(%rdx), %rax	#, tmp380
	movq	%rax, 8(%r13)	# tmp380, args_108(D)->overflow_arg_area
	jmp	.L144	#
.L168:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
.L113:
# printk.c:378: 				flags |=SIGN;
	orl	$2, %ebp	#, flags
.L108:
# printk.c:380: 				if(qualifier =='l'){
	cmpl	$108, %ecx	#, qualifier
	je	.L197	#,
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2590
	cmpl	$47, %eax	#, D.2590
	ja	.L148	#,
	movl	%eax, %edx	# D.2590, D.2593
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2595
	addl	$8, %eax	#, tmp393
	movl	%eax, 0(%r13)	# tmp393, args_108(D)->gp_offset
.L149:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.178_207], MEM[(unsigned int * {ref-all})addr.178_207]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$10, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp397
	leaq	(%r15,%rax), %rax	#, tmp396
	call	*%rax	# tmp396
	movq	%rax, %rbx	# tmp445, str
	jmp	.L85	#
.L172:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
	jmp	.L113	#
.L170:
	movl	$-1, %ecx	#, qualifier
	jmp	.L108	#
.L175:
	movl	$-1, %ecx	#, qualifier
	jmp	.L108	#
.L197:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2580
	cmpl	$47, %eax	#, D.2580
	ja	.L146	#,
	movl	%eax, %edx	# D.2580, D.2583
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2585
	addl	$8, %eax	#, tmp386
	movl	%eax, 0(%r13)	# tmp386, args_108(D)->gp_offset
.L147:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.177_206], MEM[(long unsigned int * {ref-all})addr.177_206]
	movl	%ebp, %r9d	# flags,
	movl	%r14d, %ecx	# field_width,
	movl	$10, %edx	#,
	movq	%rbx, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp390
	leaq	(%r15,%rax), %rax	#, tmp389
	call	*%rax	# tmp389
	movq	%rax, %rbx	# tmp444, str
	jmp	.L85	#
.L146:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2585
	leaq	8(%rdx), %rax	#, tmp387
	movq	%rax, 8(%r13)	# tmp387, args_108(D)->overflow_arg_area
	jmp	.L147	#
.L148:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2595
	leaq	8(%rdx), %rax	#, tmp394
	movq	%rax, 8(%r13)	# tmp394, args_108(D)->overflow_arg_area
	jmp	.L149	#
.L169:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
.L112:
# printk.c:387: 				if(qualifier =='l'){
	cmpl	$108, %ecx	#, qualifier
	je	.L198	#,
# printk.c:391: 					int *ip=va_arg(args,int *);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2610
	cmpl	$47, %eax	#, D.2610
	ja	.L153	#,
	movl	%eax, %edx	# D.2610, D.2613
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2615
	addl	$8, %eax	#, tmp405
	movl	%eax, 0(%r13)	# tmp405, args_108(D)->gp_offset
.L154:
	movq	(%rdx), %rax	# MEM[(int * * {ref-all})addr.180_209], ip
# printk.c:392: 					*ip=(str-buf);
	movq	%rbx, %rdx	# str, tmp407
	movq	(%rsp), %rsi	# %sfp, buf
	subq	%rsi, %rdx	# buf, tmp407
# printk.c:392: 					*ip=(str-buf);
	movl	%edx, (%rax)	# tmp407, *ip_148
	jmp	.L85	#
.L173:
# printk.c:309: 	switch (*fmt){
	movl	$-1, %ecx	#, qualifier
	jmp	.L112	#
.L198:
# printk.c:388: 					long *ip=va_arg(args,long *);
	movl	0(%r13), %eax	# args_108(D)->gp_offset, D.2600
	cmpl	$47, %eax	#, D.2600
	ja	.L151	#,
	movl	%eax, %edx	# D.2600, D.2603
	addq	16(%r13), %rdx	# args_108(D)->reg_save_area, D.2605
	addl	$8, %eax	#, tmp400
	movl	%eax, 0(%r13)	# tmp400, args_108(D)->gp_offset
.L152:
	movq	(%rdx), %rax	# MEM[(long int * * {ref-all})addr.179_208], ip
# printk.c:389: 					*ip=(str-buf);
	movq	%rbx, %rdx	# str, tmp402
	movq	(%rsp), %rsi	# %sfp, buf
	subq	%rsi, %rdx	# buf, tmp402
	movq	%rdx, (%rax)	# tmp402, *ip_151
	jmp	.L85	#
.L151:
# printk.c:388: 					long *ip=va_arg(args,long *);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2605
	leaq	8(%rdx), %rax	#, tmp401
	movq	%rax, 8(%r13)	# tmp401, args_108(D)->overflow_arg_area
	jmp	.L152	#
.L153:
# printk.c:391: 					int *ip=va_arg(args,int *);
	movq	8(%r13), %rdx	# args_108(D)->overflow_arg_area, D.2615
	leaq	8(%rdx), %rax	#, tmp406
	movq	%rax, 8(%r13)	# tmp406, args_108(D)->overflow_arg_area
	jmp	.L154	#
.L116:
# printk.c:396: 				*str++ ='%';
	movb	$37, (%rbx)	#, *str_375
# printk.c:396: 				*str++ ='%';
	leaq	1(%rbx), %rbx	#, str
# printk.c:397: 				break;
	jmp	.L85	#
.L105:
# printk.c:399: 				*str++ ='%';
	movb	$37, (%rbx)	#, *str_375
# printk.c:400: 				if(*fmt)
	movzbl	(%rdx), %eax	# *fmt.19_134, _48
# printk.c:400: 				if(*fmt)
	testb	%al, %al	# _48
	je	.L155	#,
# printk.c:401: 					*str++ =*fmt;
	movb	%al, 1(%rbx)	# _48, MEM[(char *)str_375 + 1B]
# printk.c:401: 					*str++ =*fmt;
	leaq	2(%rbx), %rbx	#, str
	jmp	.L85	#
.L155:
# printk.c:399: 				*str++ ='%';
	addq	$1, %rbx	#, str
# printk.c:403: 					--fmt;
	subq	$1, %rdx	#, tmp408
	movq	%rdx, 8(%rsp)	# tmp408, fmt
	jmp	.L85	#
.L164:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	%rcx, %rbx	# str, str
	jmp	.L85	#
.L159:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	(%rsp), %rbx	# %sfp, str
.L82:
# printk.c:407: 	*str = '\0';
	movb	$0, (%rbx)	#, *str_376
# printk.c:408: 	return str - buf;
	movl	%ebx, %eax	# str, <retval>
	movl	(%rsp), %ebx	# %sfp, tmp459
	subl	%ebx, %eax	# tmp459, <retval>
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
.L103:
	.cfi_restore_state
# printk.c:309: 	switch (*fmt){
	movq	8(%rsp), %rdx	# fmt, fmt.19_21
# printk.c:309: 	switch (*fmt){
	movzbl	(%rdx), %eax	# *fmt.19_71, tmp460
	subl	$37, %eax	#, tmp412
	cmpb	$83, %al	#, tmp412
	ja	.L105	#,
	movzbl	%al, %eax	# tmp412, tmp414
	leaq	.L157(%rip), %rcx	#, tmp415
	addq	(%rcx,%rax,8), %rcx	#, tmp417
	notrack jmp	*%rcx	# tmp417
	.section	.rodata
	.align 8
	.align 4
.L157:
	.quad	.L116-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L167-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L114-.L157
	.quad	.L168-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L168-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L169-.L157
	.quad	.L132-.L157
	.quad	.L110-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L109-.L157
	.quad	.L105-.L157
	.quad	.L170-.L157
	.quad	.L105-.L157
	.quad	.L105-.L157
	.quad	.L171-.L157
	.text
.L104:
# printk.c:309: 	switch (*fmt){
	movq	8(%rsp), %rdx	# fmt, fmt.19_21
# printk.c:309: 	switch (*fmt){
	movzbl	(%rdx), %eax	# *fmt.19_130, tmp461
	subl	$37, %eax	#, tmp419
	cmpb	$83, %al	#, tmp419
	ja	.L105	#,
	movzbl	%al, %eax	# tmp419, tmp421
	leaq	.L158(%rip), %rcx	#, tmp422
	addq	(%rcx,%rax,8), %rcx	#, tmp424
	notrack jmp	*%rcx	# tmp424
	.section	.rodata
	.align 8
	.align 4
.L158:
	.quad	.L116-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L140-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L114-.L158
	.quad	.L172-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L172-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L173-.L158
	.quad	.L174-.L158
	.quad	.L110-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L109-.L158
	.quad	.L105-.L158
	.quad	.L175-.L158
	.quad	.L105-.L158
	.quad	.L105-.L158
	.quad	.L176-.L158
	.text
	.cfi_endproc
.LFE40:
	.size	vsprintf, .-vsprintf
	.globl	color_printk
	.type	color_printk, @function
color_printk:
.LFB35:
	.cfi_startproc
	endbr64	
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp	#,
	.cfi_def_cfa_offset 288
.L214:
	leaq	.L214(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L214, %r11	#,
	addq	%r11, %rbx	#, tmp82
	movl	%edi, (%rsp)	# tmp284, %sfp
	movl	%esi, 4(%rsp)	# tmp285, %sfp
	movq	%rdx, %rsi	# tmp286, fmt
	movq	%rcx, 72(%rsp)	#,
	movq	%r8, 80(%rsp)	#,
	movq	%r9, 88(%rsp)	#,
	testb	%al, %al	#
	je	.L212	#,
	movaps	%xmm0, 96(%rsp)	#,
	movaps	%xmm1, 112(%rsp)	#,
	movaps	%xmm2, 128(%rsp)	#,
	movaps	%xmm3, 144(%rsp)	#,
	movaps	%xmm4, 160(%rsp)	#,
	movaps	%xmm5, 176(%rsp)	#,
	movaps	%xmm6, 192(%rsp)	#,
	movaps	%xmm7, 208(%rsp)	#,
.L212:
# printk.c:35: 	va_start(args,fmt);	
	movl	$24, 24(%rsp)	#, MEM[(struct [1] *)&args].gp_offset
	movl	$48, 28(%rsp)	#, MEM[(struct [1] *)&args].fp_offset
	leaq	288(%rsp), %rax	#, tmp293
	movq	%rax, 32(%rsp)	# tmp293, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	48(%rsp), %rax	#, tmp294
	movq	%rax, 40(%rsp)	# tmp294, MEM[(struct [1] *)&args].reg_save_area
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	leaq	24(%rsp), %rdx	#, tmp155
	movabsq	$buf@GOTOFF, %rax	#, tmp157
	leaq	(%rbx,%rax), %rdi	#, tmp156
	movabsq	$vsprintf@GOTOFF, %rax	#, tmp159
	leaq	(%rbx,%rax), %rax	#, tmp158
	call	*%rax	# tmp158
	movl	%eax, %r14d	# tmp287, <retval>
# printk.c:38: 	for(count=0;count<i || line;count++){
	testl	%eax, %eax	# <retval>
	jle	.L199	#,
# printk.c:33: 	int line=0;
	movl	$0, %r13d	#, line
# printk.c:38: 	for(count=0;count<i || line;count++){
	movl	$0, %r12d	#, count
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movabsq	$buf@GOTOFF, %rax	#, tmp280
	addq	%rbx, %rax	# tmp82, tmp281
	movq	%rax, 8(%rsp)	# tmp281, %sfp
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movabsq	$Pos@GOTOFF, %rbp	#, tmp282
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movabsq	$putchar@GOTOFF, %r15	#, tmp283
	jmp	.L213	#
.L216:
# printk.c:40: 			count--;
	subl	$1, %r12d	#, count
.L203:
# printk.c:61: 				line--;
	subl	$1, %r13d	#, line
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	movl	12(%rbx,%rbp), %ecx	# Pos.YPosition, Pos.YPosition
	imull	20(%rbx,%rbp), %ecx	# Pos.YCharSize, tmp213
	movl	8(%rbx,%rbp), %edx	# Pos.XPosition, Pos.XPosition
	imull	16(%rbx,%rbp), %edx	# Pos.XCharSize, tmp217
	movl	(%rbx,%rbp), %esi	# Pos.XResolution, Pos.XResolution
	movq	24(%rbx,%rbp), %rdi	# Pos.FB_addr, Pos.FB_addr
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 296
	pushq	$32	#
	.cfi_def_cfa_offset 304
	movl	20(%rsp), %r9d	# %sfp,
	movl	16(%rsp), %r8d	# %sfp,
	leaq	(%rbx,%r15), %rax	#, tmp223
	call	*%rax	# tmp223
# printk.c:63: 				Pos.XPosition++;
	addl	$1, 8(%rbp,%rbx)	#, Pos.XPosition
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 288
.L205:
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%rbx,%rbp), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%rbx,%rbp)	# Pos.XCharSize
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	cmpl	%eax, 8(%rbx,%rbp)	# tmp256, Pos.XPosition
	jl	.L209	#,
# printk.c:69: 			Pos.YPosition++;
	addl	$1, 12(%rbp,%rbx)	#, Pos.YPosition
# printk.c:70: 			Pos.XPosition=0;
	movl	$0, 8(%rbx,%rbp)	#, Pos.XPosition
.L209:
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	4(%rbx,%rbp), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%rbx,%rbp)	# Pos.YCharSize
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	cmpl	%eax, 12(%rbx,%rbp)	# tmp270, Pos.YPosition
	jl	.L210	#,
# printk.c:73: 			Pos.YPosition=0;
	movl	$0, 12(%rbx,%rbp)	#, Pos.YPosition
.L210:
# printk.c:38: 	for(count=0;count<i || line;count++){
	addl	$1, %r12d	#, count
# printk.c:38: 	for(count=0;count<i || line;count++){
	cmpl	%r12d, %r14d	# count, <retval>
	jg	.L213	#,
	testl	%r13d, %r13d	# line
	je	.L199	#,
.L213:
# printk.c:39: 		if(line >0){
	testl	%r13d, %r13d	# line
	jg	.L216	#,
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movslq	%r12d, %rax	# count, count
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movq	8(%rsp), %rdi	# %sfp, tmp281
	movzbl	(%rax,%rdi), %eax	# *_2, _3
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	cmpb	$10, %al	#, _3
	je	.L217	#,
# printk.c:46: 		}else if((unsigned char)*(buf+count)=='\b'){
	cmpb	$8, %al	#, _3
	je	.L218	#,
# printk.c:56: 		}else if((unsigned char)*(buf+count)=='\t'){
	cmpb	$9, %al	#, _3
	jne	.L208	#,
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	movl	8(%rbx,%rbp), %eax	# Pos.XPosition, _28
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	leal	8(%rax), %r13d	#, tmp209
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	andl	$-8, %r13d	#, tmp210
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	subl	%eax, %r13d	# _28, line
	jmp	.L203	#
.L217:
# printk.c:44: 			Pos.YPosition++;
	addl	$1, 12(%rbp,%rbx)	#, Pos.YPosition
# printk.c:45: 			Pos.XPosition=0;
	movl	$0, 8(%rbx,%rbp)	#, Pos.XPosition
	jmp	.L205	#
.L218:
# printk.c:47: 			Pos.XPosition--;
	movl	8(%rbx,%rbp), %eax	# Pos.XPosition, tmp297
	subl	$1, %eax	#, _7
	movl	%eax, 8(%rbx,%rbp)	# _7, Pos.XPosition
# printk.c:48: 			if(Pos.XPosition<0){
	js	.L219	#,
.L207:
# printk.c:55: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
	movl	12(%rbx,%rbp), %ecx	# Pos.YPosition, Pos.YPosition
	imull	20(%rbx,%rbp), %ecx	# Pos.YCharSize, tmp196
	movl	8(%rbx,%rbp), %edx	# Pos.XPosition, Pos.XPosition
	imull	16(%rbx,%rbp), %edx	# Pos.XCharSize, tmp200
	movl	(%rbx,%rbp), %esi	# Pos.XResolution, Pos.XResolution
	movq	24(%rbx,%rbp), %rdi	# Pos.FB_addr, Pos.FB_addr
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 296
	pushq	$32	#
	.cfi_def_cfa_offset 304
	movl	20(%rsp), %r9d	# %sfp,
	movl	16(%rsp), %r8d	# %sfp,
	leaq	(%rbx,%r15), %rax	#, tmp206
	call	*%rax	# tmp206
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 288
	jmp	.L205	#
.L219:
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movabsq	$Pos@GOTOFF, %rcx	#, tmp173
	movl	16(%rbx,%rcx), %esi	# Pos.XCharSize, _9
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	(%rbx,%rcx), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	%esi	# _9
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	subl	$1, %eax	#, tmp180
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	imull	%esi, %eax	# _9, tmp181
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, 8(%rbx,%rcx)	# tmp181, Pos.XPosition
# printk.c:50: 				Pos.YPosition--;
	movl	12(%rbx,%rcx), %eax	# Pos.YPosition, tmp298
	subl	$1, %eax	#, _14
	movl	%eax, 12(%rbx,%rcx)	# _14, Pos.YPosition
# printk.c:51: 				if(Pos.YPosition<0){
	jns	.L207	#,
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	20(%rbx,%rcx), %esi	# Pos.YCharSize, _16
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	4(%rbx,%rcx), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%esi	# _16
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	subl	$1, %eax	#, tmp192
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	imull	%esi, %eax	# _16, tmp193
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, 12(%rbx,%rcx)	# tmp193, Pos.YPosition
	jmp	.L207	#
.L208:
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movl	12(%rbx,%rbp), %ecx	# Pos.YPosition, Pos.YPosition
	imull	20(%rbx,%rbp), %ecx	# Pos.YCharSize, tmp233
	movl	8(%rbx,%rbp), %edx	# Pos.XPosition, Pos.XPosition
	imull	16(%rbx,%rbp), %edx	# Pos.XCharSize, tmp237
	movl	(%rbx,%rbp), %esi	# Pos.XResolution, Pos.XResolution
	movq	24(%rbx,%rbp), %rdi	# Pos.FB_addr, Pos.FB_addr
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 296
	movzbl	%al, %eax	# _3, _3
	pushq	%rax	# _3
	.cfi_def_cfa_offset 304
	movl	20(%rsp), %r9d	# %sfp,
	movl	16(%rsp), %r8d	# %sfp,
	leaq	(%rbx,%r15), %rax	#, tmp244
	call	*%rax	# tmp244
# printk.c:66: 			Pos.XPosition++;
	addl	$1, 8(%rbp,%rbx)	#, Pos.XPosition
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 288
	jmp	.L205	#
.L199:
# printk.c:77: }
	movl	%r14d, %eax	# <retval>,
	addq	$232, %rsp	#,
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
