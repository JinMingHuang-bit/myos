	.file	"printk.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=114975
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -Os -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
.LC1:
	.string	"0123456789abcdefghijklmnopqrstuvwxyz"
	.text
	.type	number, @function
number:
.LFB39:
	.cfi_startproc
	endbr64	
.L49:
	leaq	.L49(%rip), %r10	#, tmp82
	movq	%rsi, %rax	# tmp208, num
	movl	%edx, %esi	# tmp209, base
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L49, %r11	#,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	movabsq	$.LC1@GOTOFF, %rdx	#, tmp157
	addq	%r11, %r10	#, tmp82
# printk.c:155: static char *number(char *str,long num,int base,int size,int precision,int type){
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	leaq	(%r10,%rdx), %rbp	#, digits
# printk.c:155: static char *number(char *str,long num,int base,int size,int precision,int type){
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# printk.c:159: 	if(type & SMALL){
	testl	$64, %r9d	#, type
	jne	.L2	#,
# printk.c:157: 	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	movabsq	$.LC0@GOTOFF, %rdx	#, tmp156
	leaq	(%r10,%rdx), %rbp	#, digits
.L2:
# printk.c:162: 	if(type & LEFT){
	movl	%r9d, %ebx	# type, _2
	andl	$16, %ebx	#, _2
	movl	%ebx, -68(%rsp)	# _2, %sfp
	je	.L3	#,
# printk.c:163: 		type &=~ZEROPAD;
	andl	$-2, %r9d	#, type
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movb	$32, %r10b	#, iftmp.38_44
	jmp	.L4	#
.L3:
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	%r9d, %edx	# type, tmp159
	andl	$1, %edx	#, tmp159
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	cmpl	$1, %edx	#, tmp159
	sbbl	%r10d, %r10d	# iftmp.38_44
	andl	$-16, %r10d	#, iftmp.38_44
	addl	$48, %r10d	#, iftmp.38_44
.L4:
# printk.c:170: 	if(type & SIGN  && num <0){
	testl	$2, %r9d	#, type
	je	.L5	#,
	testq	%rax, %rax	# num
	jns	.L5	#,
# printk.c:172: 		num=-num;
	negq	%rax	# num
# printk.c:171: 		sign='-';
	movb	$45, %r11b	#, sign
	jmp	.L6	#
.L5:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	testl	$4, %r9d	#, type
	jne	.L29	#,
# printk.c:177: 	if(sign){
	movl	%r9d, %r11d	# type, sign
	andl	$8, %r11d	#, sign
	je	.L7	#,
	movb	$32, %r11b	#, sign
	jmp	.L6	#
.L29:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	movb	$43, %r11b	#, sign
.L6:
# printk.c:178: 		size--;
	decl	%ecx	# size
.L7:
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %r13d	# type, _10
	andl	$32, %r13d	#, _10
	je	.L8	#,
# printk.c:181: 		if(base==16){
	cmpl	$16, %esi	#, base
	jne	.L9	#,
# printk.c:182: 			size=size-2;
	subl	$2, %ecx	#, size
	jmp	.L8	#
.L9:
# printk.c:183: 		}else if(base==8){
	cmpl	$8, %esi	#, base
	jne	.L8	#,
# printk.c:184: 			size=size-1;
	decl	%ecx	# size
.L8:
# printk.c:187: 	if(num==0){
	testq	%rax, %rax	# num
	jne	.L30	#,
# printk.c:188: 		tmp[i++]='0';
	movb	$48, -50(%rsp)	#, tmp[0]
# printk.c:188: 		tmp[i++]='0';
	movl	$1, %eax	#,
	jmp	.L11	#
.L30:
	movl	$1, %ebx	#, ivtmp.146
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	xorl	%r15d, %r15d	# tmp168
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	leaq	-51(%rsp), %r14	#, tmp171
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movslq	%esi, %r12	# base, base
.L10:
	movl	%r15d, %edx	# tmp168, __res
#APP
# 191 "printk.c" 1
	divq %r12		# base
# 0 "" 2
#NO_APP
	movslq	%edx, %rdx	# __res, __res
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movb	0(%rbp,%rdx), %dl	# *_13, *_13
	movb	%dl, (%r14,%rbx)	# *_13, MEM[(char *)&tmp + -1B + ivtmp.146_164 * 1]
	movq	%rbx, %rdx	# ivtmp.146, ivtmp.146
# printk.c:189: 	}else while (num!=0){
	incq	%rbx	# ivtmp.146
	testq	%rax, %rax	# num
	jne	.L10	#,
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movslq	%edx, %rax	# ivtmp.146,
.L11:
# printk.c:193: 	if(i>precision){
	cmpl	%r8d, %eax	# precision, i
	cmovge	%eax, %r8d	# i,, _80
# printk.c:196: 	size-=precision;
	subl	%r8d, %ecx	# _80, size
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	andl	$17, %r9d	#, type
	jne	.L13	#,
	xorl	%edx, %edx	# ivtmp.133
.L12:
	movl	%ecx, %r9d	# size, _163
	subl	%edx, %r9d	# ivtmp.133, _163
# printk.c:198: 		while(size-- >0){
	testl	%r9d, %r9d	# _163
	jle	.L52	#,
# printk.c:199: 			*str++=' ';
	movb	$32, (%rdi,%rdx)	#, MEM[(char *)str_74(D) + ivtmp.133_158 * 1]
	incq	%rdx	# ivtmp.133
	jmp	.L12	#
.L52:
	xorl	%edx, %edx	# tmp229
	testl	%ecx, %ecx	# size
	cmovns	%ecx, %edx	# size,, _131
	decl	%ecx	# _134
	movslq	%edx, %r9	# _131, _131
	subl	%edx, %ecx	# _131, size
	addq	%r9, %rdi	# _131, str
.L13:
# printk.c:202: 	if(sign){
	testb	%r11b, %r11b	# sign
	je	.L15	#,
# printk.c:203: 		*str++=sign;
	movb	%r11b, (%rdi)	# sign, *str_23
# printk.c:203: 		*str++=sign;
	incq	%rdi	# str
.L15:
# printk.c:205: 	if(type&SPECIAL){
	testl	%r13d, %r13d	# _10
	je	.L16	#,
# printk.c:206: 		if(base==8){
	cmpl	$8, %esi	#, base
	jne	.L17	#,
# printk.c:207: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:207: 			*str++='0';
	incq	%rdi	# str
	jmp	.L16	#
.L17:
# printk.c:208: 		}else if(base==16){
	cmpl	$16, %esi	#, base
	jne	.L16	#,
# printk.c:210: 			*str++=digits[33];
	movb	33(%rbp), %dl	# MEM[(const char *)digits_39 + 33B], MEM[(const char *)digits_39 + 33B]
# printk.c:209: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:210: 			*str++=digits[33];
	addq	$2, %rdi	#, str
# printk.c:210: 			*str++=digits[33];
	movb	%dl, -1(%rdi)	# MEM[(const char *)digits_39 + 33B], MEM[(char *)str_24 + 1B]
.L16:
# printk.c:213: 	if(!(type&LEFT)){
	cmpl	$0, -68(%rsp)	#, %sfp
	jne	.L19	#,
	xorl	%edx, %edx	# ivtmp.119
.L18:
	movl	%ecx, %esi	# size, _157
	subl	%edx, %esi	# ivtmp.119, _157
# printk.c:214: 		while(size-- >0){
	testl	%esi, %esi	# _157
	jle	.L53	#,
# printk.c:215: 			*str++=c;
	movb	%r10b, (%rdi,%rdx)	# iftmp.38_44, MEM[(char *)str_25 + ivtmp.119_152 * 1]
	incq	%rdx	# ivtmp.119
	jmp	.L18	#
.L53:
	xorl	%edx, %edx	# tmp228
	testl	%ecx, %ecx	# size
	cmovns	%ecx, %edx	# size,, _126
	decl	%ecx	# _129
	movslq	%edx, %rsi	# _126, _126
	subl	%edx, %ecx	# _126, size
	addq	%rsi, %rdi	# _126, str
.L19:
	xorl	%edx, %edx	# ivtmp.105
.L21:
# printk.c:218: 	while(i<precision--){
	movl	%r8d, %esi	# _80, precision
	subl	%edx, %esi	# ivtmp.105, precision
	cmpl	%esi, %eax	# precision, i
	jge	.L54	#,
# printk.c:219: 		*str++='0';
	movb	$48, (%rdi,%rdx)	#, MEM[(char *)str_99 + ivtmp.105_146 * 1]
	incq	%rdx	# ivtmp.105
	jmp	.L21	#
.L54:
	subl	%eax, %r8d	# i, tmp181
	movq	%rax, %rsi	# ivtmp.89, i
	addq	%r8, %rdi	# tmp181, str
# printk.c:222: 		*str++=tmp[i];
	leaq	-51(%rsp), %r8	#, tmp206
# printk.c:218: 	while(i<precision--){
	movq	%rdi, %rdx	# str, str
.L23:
# printk.c:221: 	while(i-- >0){
	testl	%eax, %eax	# ivtmp.89
	je	.L55	#,
# printk.c:222: 		*str++=tmp[i];
	movb	(%r8,%rax), %r9b	# MEM[(char *)&tmp + -1B + ivtmp.89_142 * 1], MEM[(char *)&tmp + -1B + ivtmp.89_142 * 1]
# printk.c:222: 		*str++=tmp[i];
	incq	%rdx	# str
	decq	%rax	# ivtmp.89
# printk.c:222: 		*str++=tmp[i];
	movb	%r9b, -1(%rdx)	# MEM[(char *)&tmp + -1B + ivtmp.89_142 * 1], MEM[(char *)str_94 + -1B]
	jmp	.L23	#
.L55:
	addq	%rsi, %rdi	# i, str
# printk.c:221: 	while(i-- >0){
	xorl	%eax, %eax	# ivtmp.70
.L25:
	movl	%ecx, %edx	# size, _141
	subl	%eax, %edx	# ivtmp.70, _141
# printk.c:224: 	while(size-- >0){
	testl	%edx, %edx	# _141
	jle	.L56	#,
# printk.c:225: 		*str++=' ';
	movb	$32, (%rdi,%rax)	#, MEM[(char *)str_108 + ivtmp.70_119 * 1]
	incq	%rax	# ivtmp.70
	jmp	.L25	#
.L56:
# printk.c:228: }
	xorl	%eax, %eax	# tmp227
	testl	%ecx, %ecx	# size
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	cmovs	%eax, %ecx	# size,, tmp227, tmp189
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	movslq	%ecx, %rcx	# tmp189, tmp190
	leaq	(%rdi,%rcx), %rax	#, str
	ret	
	.cfi_endproc
.LFE39:
	.size	number, .-number
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB34:
	.cfi_startproc
	endbr64	
.L64:
	imull	%esi, %ecx	# Xsize, tmp116
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.L64(%rip), %rbx	#, tmp82
# printk.c:12: 	fontp=font_ascii[font];
	movzbl	16(%rsp), %eax	# font, font
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L64, %r11	#,
# printk.c:6: void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font){
	movq	%rdi, %r10	# fb, tmp123
	movslq	%edx, %rdx	# tmp125, x
# printk.c:12: 	fontp=font_ascii[font];
	movabsq	$font_ascii@GOTOFF, %rdi	#, tmp114
	addq	%r11, %rbx	#, tmp82
	salq	$4, %rax	#, tmp112
	addq	%rbx, %rdi	# tmp82, tmp113
	movslq	%ecx, %rcx	# tmp116, tmp117
	addq	%rdx, %rcx	# x, tmp119
	addq	%rdi, %rax	# tmp113, fontp
	movslq	%esi, %rdi	# Xsize, Xsize
	xorl	%edx, %edx	# ivtmp.164
	salq	$2, %rdi	#, _17
	leaq	(%r10,%rcx,4), %rsi	#, ivtmp.171
.L60:
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	xorl	%ecx, %ecx	# ivtmp.157
# printk.c:16: 		testval =0x100;
	movl	$256, %r10d	#, testval
.L59:
# printk.c:19: 			if(*fontp & testval){
	movzbl	(%rax,%rdx), %r11d	# MEM[(unsigned char *)fontp_20 + ivtmp.164_39 * 1], MEM[(unsigned char *)fontp_20 + ivtmp.164_39 * 1]
# printk.c:18: 			testval =testval >>1;
	sarl	%r10d	# testval
# printk.c:20: 				*addr =FRcolor;
	testl	%r10d, %r11d	# testval, MEM[(unsigned char *)fontp_20 + ivtmp.164_39 * 1]
	movl	%r8d, %r11d	# FRcolor, cstore_36
	cmove	%r9d, %r11d	# BKcolor,, cstore_36
	movl	%r11d, (%rsi,%rcx)	# cstore_36, MEM[(unsigned int *)addr_26 + ivtmp.157_41 * 1]
# printk.c:17: 		for(j=0;j<8;j++){
	addq	$4, %rcx	#, ivtmp.157
	cmpq	$32, %rcx	#, ivtmp.157
	jne	.L59	#,
# printk.c:13: 	for(i=0;i<16;i++){
	incq	%rdx	# ivtmp.164
	addq	%rdi, %rsi	# _17, ivtmp.171
	cmpq	$16, %rdx	#, ivtmp.164
	jne	.L60	#,
# printk.c:28: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
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
.L71:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L71, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r9d	# tmp124, BKcolor
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movabsq	$putchar@GOTOFF, %r15	#, tmp122
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# printk.c:84:     for (int y = 0; y < rows; y++) {
	xorl	%r12d, %r12d	# y
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movabsq	$Pos@GOTOFF, %rbp	#, tmp99
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	.L71(%rip), %rbx	#, tmp82
	addq	%r11, %rbx	#, tmp82
	pushq	%r8	#
	.cfi_def_cfa_offset 64
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
	movl	%edi, %r8d	# tmp123, FRcolor
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movl	(%rbx,%rbp), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%rbx,%rbp)	# Pos.XCharSize
	movl	%eax, %r13d	# Pos.XResolution, tmp101
# printk.c:82:     int rows = Pos.YResolution / Pos.YCharSize;
	movl	4(%rbx,%rbp), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%rbx,%rbp)	# Pos.YCharSize
	movl	%eax, 4(%rsp)	# Pos.YResolution, %sfp
.L67:
# printk.c:84:     for (int y = 0; y < rows; y++) {
	movl	4(%rsp), %eax	# %sfp, tmp106
	cmpl	%eax, %r12d	# tmp106, y
	jge	.L73	#,
# printk.c:85:         for (int x = 0; x < cols; x++) {
	xorl	%r14d, %r14d	# x
.L69:
# printk.c:85:         for (int x = 0; x < cols; x++) {
	cmpl	%r13d, %r14d	# tmp101, x
	jge	.L74	#,
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movl	20(%rbp,%rbx), %ecx	# Pos.YCharSize, tmp110
	movl	16(%rbp,%rbx), %edx	# Pos.XCharSize, tmp112
	leaq	(%rbx,%r15), %rax	#, tmp117
	movl	0(%rbp,%rbx), %esi	# Pos.XResolution, Pos.XResolution
	movq	24(%rbp,%rbx), %rdi	# Pos.FB_addr, Pos.FB_addr
	pushq	$32	#
	.cfi_def_cfa_offset 72
	imull	%r12d, %ecx	# y, tmp110
	imull	%r14d, %edx	# x, tmp112
# printk.c:85:         for (int x = 0; x < cols; x++) {
	incl	%r14d	# x
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	call	*%rax	# tmp117
# printk.c:85:         for (int x = 0; x < cols; x++) {
	popq	%rcx	#
	.cfi_def_cfa_offset 64
	jmp	.L69	#
.L74:
# printk.c:84:     for (int y = 0; y < rows; y++) {
	incl	%r12d	# y
	jmp	.L67	#
.L73:
# printk.c:92:     Pos.XPosition = 0;
	xorl	%eax, %eax	#
	movq	%rax, 8(%rbp,%rbx)	#, MEM <unsigned long> [(int *)&Pos + 8B]
# printk.c:94: }	
	popq	%rdx	#
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
.LFE36:
	.size	clear_screen, .-clear_screen
	.globl	skip_atoi2
	.type	skip_atoi2, @function
skip_atoi2:
.LFB37:
	.cfi_startproc
	endbr64	
.L78:
# printk.c:99: 	int i=0;
	xorl	%eax, %eax	# <retval>
.L76:
# printk.c:100: 	while(is_digit(**s)){
	movq	(%rdi), %rcx	# *s_13(D), _6
	movsbl	(%rcx), %edx	# *_6,
	leal	-48(%rdx), %esi	#, tmp96
	cmpb	$9, %sil	#, tmp96
	ja	.L79	#,
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	imull	$10, %eax, %eax	#, <retval>, _3
# printk.c:103: 		(*s)++;                   // 指针向后移动
	incq	%rcx	# tmp93
	movq	%rcx, (%rdi)	# tmp93, *s_13(D)
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	-48(%rax,%rdx), %eax	#, <retval>
	jmp	.L76	#
.L79:
# printk.c:107: }
	ret	
	.cfi_endproc
.LFE37:
	.size	skip_atoi2, .-skip_atoi2
	.globl	skip_atoi
	.type	skip_atoi, @function
skip_atoi:
.LFB38:
	.cfi_startproc
	endbr64	
.L83:
# printk.c:110:  	int i=0;
	xorl	%eax, %eax	# <retval>
.L81:
# printk.c:112:  	while(is_digit(current_char = **s)){
	movq	(%rdi), %rcx	# *s_10(D), _5
	movsbl	(%rcx), %edx	# *_5,
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rdx), %esi	#, tmp96
	cmpb	$9, %sil	#, tmp96
	ja	.L84	#,
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	imull	$10, %eax, %eax	#, <retval>, _2
# printk.c:113:  		(*s)++;                   // 指针向后移动
	incq	%rcx	# tmp93
	movq	%rcx, (%rdi)	# tmp93, *s_10(D)
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	-48(%rax,%rdx), %eax	#, <retval>
	jmp	.L81	#
.L84:
# printk.c:117: }
	ret	
	.cfi_endproc
.LFE38:
	.size	skip_atoi, .-skip_atoi
	.globl	vsprintf
	.type	vsprintf, @function
vsprintf:
.LFB40:
	.cfi_startproc
	endbr64	
.L179:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L179, %r11	#,
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	%rdi, %r10	# buf, str
# printk.c:309: 	switch (*fmt){
	leaq	.L112(%rip), %r13	#, tmp410
# printk.c:231: int vsprintf(char *buf,const char *fmt,va_list args){
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12	# tmp411, buf
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	.L179(%rip), %rbp	#, tmp82
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	addq	%r11, %rbp	#, tmp82
	movq	%rdx, %rbx	# tmp412, args
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 56
# printk.c:231: int vsprintf(char *buf,const char *fmt,va_list args){
	movq	%rsi, 8(%rsp)	# fmt, fmt
.L86:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	8(%rsp), %rax	# fmt, fmt_lsm.205
	movb	(%rax), %dl	# *fmt.36_56, _57
	testb	%dl, %dl	# _57
	je	.L185	#,
# printk.c:242: 		if (*fmt !='%')
	cmpb	$37, %dl	#, _57
	je	.L165	#,
# printk.c:244: 			*str++ =*fmt;
	movb	%dl, (%r10)	# _57, *str_67
	jmp	.L181	#
.L165:
# printk.c:247: 		flags=0;
	xorl	%r9d, %r9d	# flags
.L87:
# printk.c:250: 			switch (*fmt)
	movb	1(%rax), %dl	# MEM[(const char *)_4], _6
# printk.c:249: 			fmt++;
	leaq	1(%rax), %rcx	#, _4
# printk.c:250: 			switch (*fmt)
	cmpb	$43, %dl	#, _6
	je	.L89	#,
	jg	.L90	#,
	cmpb	$32, %dl	#, _6
	je	.L91	#,
	cmpb	$35, %dl	#, _6
	jne	.L93	#,
# printk.c:262: 				flags |=SPECIAL;
	orl	$32, %r9d	#, flags
.L96:
# printk.c:249: 			fmt++;
	movq	%rcx, %rax	# _4, fmt_lsm.205
	jmp	.L87	#
.L90:
# printk.c:250: 			switch (*fmt)
	cmpb	$45, %dl	#, _6
	je	.L94	#,
	cmpb	$48, %dl	#, _6
	jne	.L93	#,
# printk.c:265: 				flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
# printk.c:266: 				goto repeat;				
	jmp	.L96	#
.L94:
# printk.c:253: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
# printk.c:254: 				goto repeat;
	jmp	.L96	#
.L89:
# printk.c:256: 				flags |=PLUS;
	orl	$4, %r9d	#, flags
# printk.c:257: 				goto repeat;
	jmp	.L96	#
.L91:
# printk.c:259: 				flags |=SPACE;
	orl	$8, %r9d	#, flags
# printk.c:260: 				goto repeat;			
	jmp	.L96	#
.L93:
	movq	%rcx, 8(%rsp)	# _4, fmt
# printk.c:270: 		if (is_digit(*fmt))
	leal	-48(%rdx), %ecx	#, tmp279
# printk.c:270: 		if (is_digit(*fmt))
	cmpb	$9, %cl	#, tmp279
	ja	.L97	#,
# printk.c:272: 			field_width= skip_atoi(&fmt);
	movabsq	$skip_atoi@GOTOFF, %rax	#, tmp282
	leaq	8(%rsp), %rdi	#, tmp280
	addq	%rbp, %rax	# tmp82, tmp281
	call	*%rax	# tmp281
	movl	%eax, %ecx	# tmp413, field_width
	jmp	.L98	#
.L97:
# printk.c:269: 		field_width=-1;
	orl	$-1, %ecx	#, field_width
# printk.c:274: 		else if (*fmt == '*')
	cmpb	$42, %dl	#, _6
	jne	.L98	#,
# printk.c:277: 			field_width=va_arg(args,int);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, D.2514
# printk.c:276: 			fmt++;
	addq	$2, %rax	#, tmp283
	movq	%rax, 8(%rsp)	# tmp283, fmt
# printk.c:277: 			field_width=va_arg(args,int);
	cmpl	$47, %edx	#, D.2514
	ja	.L99	#,
	movl	%edx, %eax	# D.2514, D.2517
	addl	$8, %edx	#, tmp286
	addq	16(%rbx), %rax	# args_112(D)->reg_save_area, D.2519
	movl	%edx, (%rbx)	# tmp286, args_112(D)->gp_offset
	jmp	.L100	#
.L99:
	movq	8(%rbx), %rax	# args_112(D)->overflow_arg_area, D.2519
	leaq	8(%rax), %rdx	#, tmp287
	movq	%rdx, 8(%rbx)	# tmp287, args_112(D)->overflow_arg_area
.L100:
	movl	(%rax), %ecx	# MEM[(int * {ref-all})addr.192_203], field_width
# printk.c:278: 			if (field_width <0)
	testl	%ecx, %ecx	# field_width
	jns	.L98	#,
# printk.c:280: 				field_width=-field_width;
	negl	%ecx	# field_width
# printk.c:281: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
.L98:
# printk.c:286: 		if(*fmt =='.'){
	movq	8(%rsp), %rax	# fmt, fmt.8_15
# printk.c:285: 		precision =-1;
	orl	$-1, %r8d	#, precision
# printk.c:286: 		if(*fmt =='.'){
	cmpb	$46, (%rax)	#, *fmt.8_15
	jne	.L101	#,
# printk.c:287: 			fmt++;
	leaq	1(%rax), %rdx	#, tmp288
	movq	%rdx, 8(%rsp)	# tmp288, fmt
# printk.c:288: 			if (is_digit(*fmt))
	movb	1(%rax), %dl	# MEM[(const char *)fmt.8_15 + 1B], _18
	leal	-48(%rdx), %esi	#, tmp289
# printk.c:288: 			if (is_digit(*fmt))
	cmpb	$9, %sil	#, tmp289
	ja	.L102	#,
# printk.c:290: 				precision=skip_atoi(&fmt);
	movabsq	$skip_atoi@GOTOFF, %rax	#, tmp292
	movl	%ecx, 4(%rsp)	# field_width, %sfp
	leaq	8(%rsp), %rdi	#, tmp290
	addq	%rbp, %rax	# tmp82, tmp291
	call	*%rax	# tmp291
	movl	4(%rsp), %ecx	# %sfp, field_width
	jmp	.L103	#
.L102:
# printk.c:297: 				precision=0;
	xorl	%r8d, %r8d	# precision
# printk.c:292: 			else if(*fmt == '*'){
	cmpb	$42, %dl	#, _18
	jne	.L101	#,
# printk.c:294: 				precision =va_arg(args,int);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, D.2524
# printk.c:293: 				fmt++;
	addq	$2, %rax	#, tmp293
	movq	%rax, 8(%rsp)	# tmp293, fmt
# printk.c:294: 				precision =va_arg(args,int);
	cmpl	$47, %edx	#, D.2524
	ja	.L104	#,
	movl	%edx, %eax	# D.2524, D.2527
	addl	$8, %edx	#, tmp296
	addq	16(%rbx), %rax	# args_112(D)->reg_save_area, D.2529
	movl	%edx, (%rbx)	# tmp296, args_112(D)->gp_offset
	jmp	.L105	#
.L104:
	movq	8(%rbx), %rax	# args_112(D)->overflow_arg_area, D.2529
	leaq	8(%rax), %rdx	#, tmp297
	movq	%rdx, 8(%rbx)	# tmp297, args_112(D)->overflow_arg_area
.L105:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.193_204], precision
.L103:
# printk.c:296: 			if(precision <0){
	xorl	%edx, %edx	# tmp437
	testl	%eax, %eax	# precision
	cmovns	%eax, %edx	# precision,, tmp437
	movl	%edx, %r8d	# tmp437, precision
.L101:
# printk.c:305: 		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
	movq	8(%rsp), %rax	# fmt, fmt.13_22
	orl	$-1, %esi	#, qualifier
	movb	(%rax), %dl	# *fmt.13_22, _23
	leal	-76(%rdx), %edi	#, _389
	cmpb	$46, %dil	#, _389
	ja	.L106	#,
	movabsq	$70373307580417, %r11	#, tmp300
	btq	%rdi, %r11	# _389, tmp300
	jnc	.L106	#,
# printk.c:307: 			fmt++;
	incq	%rax	# tmp302
# printk.c:306: 			qualifier =*fmt;
	movsbl	%dl, %esi	# _23, qualifier
# printk.c:307: 			fmt++;
	movq	%rax, 8(%rsp)	# tmp302, fmt
.L106:
# printk.c:309: 	switch (*fmt){
	movq	8(%rsp), %rdx	# fmt, fmt.19_28
	movb	(%rdx), %al	# *fmt.19_28, _29
# printk.c:309: 	switch (*fmt){
	cmpb	$120, %al	#, _29
	jg	.L107	#,
	cmpb	$98, %al	#, _29
	jg	.L108	#,
	cmpb	$37, %al	#, _29
	je	.L109	#,
	cmpb	$88, %al	#, _29
	je	.L110	#,
	jmp	.L107	#
.L108:
	subl	$99, %eax	#, tmp303
	cmpb	$21, %al	#, tmp303
	ja	.L107	#,
	movzbl	%al, %eax	# tmp303, tmp304
	movq	0(%r13,%rax,8), %rdi	#, tmp307
	addq	%r13, %rdi	# tmp410, tmp307
	notrack jmp	*%rdi	# tmp307
	.section	.rodata
	.align 8
	.align 4
.L112:
	.quad	.L119-.L112
	.quad	.L118-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L118-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L117-.L112
	.quad	.L116-.L112
	.quad	.L115-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L114-.L112
	.quad	.L107-.L112
	.quad	.L113-.L112
	.quad	.L107-.L112
	.quad	.L107-.L112
	.quad	.L111-.L112
	.text
.L119:
# printk.c:311: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	jne	.L121	#,
	xorl	%eax, %eax	# ivtmp.225
.L120:
# printk.c:312: 					while(--field_width>0){
	incq	%rax	# ivtmp.225
	movl	%ecx, %edx	# field_width, _221
	subl	%eax, %edx	# ivtmp.225, _221
	testl	%edx, %edx	# _221
	jle	.L186	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, -1(%r10,%rax)	#, MEM[(char *)str_67 + -1B + ivtmp.225_105 * 1]
	jmp	.L120	#
.L186:
	leal	-1(%rcx), %edx	#,
	xorl	%esi, %esi	# tmp311
	testl	%ecx, %ecx	# field_width
	movq	%rdx, %rax	#,
	cmovle	%rsi, %rdx	# _373,, tmp311, _373
	addq	%rdx, %r10	# _373, str
	testl	%ecx, %ecx	# field_width
	movl	$1, %edx	#, tmp436
	cmovg	%ecx, %edx	# field_width,, tmp312
	subl	%edx, %eax	# tmp312, _345
# printk.c:312: 					while(--field_width>0){
	leal	1(%rax), %ecx	#, field_width
.L121:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, D.2534
	cmpl	$47, %edx	#, D.2534
	ja	.L123	#,
	movl	%edx, %eax	# D.2534, D.2537
	addl	$8, %edx	#, tmp316
	addq	16(%rbx), %rax	# args_112(D)->reg_save_area, D.2539
	movl	%edx, (%rbx)	# tmp316, args_112(D)->gp_offset
	jmp	.L124	#
.L123:
	movq	8(%rbx), %rax	# args_112(D)->overflow_arg_area, D.2539
	leaq	8(%rax), %rdx	#, tmp317
	movq	%rdx, 8(%rbx)	# tmp317, args_112(D)->overflow_arg_area
.L124:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.194_205], MEM[(int * {ref-all})addr.194_205]
	movb	%al, (%r10)	# MEM[(int * {ref-all})addr.194_205], *str_60
# printk.c:317: 				while(--field_width>0){
	xorl	%eax, %eax	# ivtmp.209
.L125:
# printk.c:317: 				while(--field_width>0){
	incq	%rax	# ivtmp.209
	movl	%ecx, %edx	# field_width, _121
	subl	%eax, %edx	# ivtmp.209, _121
	testl	%edx, %edx	# _121
	jle	.L187	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, (%r10,%rax)	#, MEM[(char *)str_60 + ivtmp.209_148 * 1]
	jmp	.L125	#
.L187:
	xorl	%edx, %edx	# tmp321
	leal	-1(%rcx), %eax	#, tmp319
	testl	%ecx, %ecx	# field_width
	cmovle	%rdx, %rax	# tmp319,, tmp321, tmp319
	leaq	1(%r10,%rax), %r10	#, str
	jmp	.L88	#
.L114:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, D.2544
	cmpl	$47, %edx	#, D.2544
	ja	.L127	#,
	movl	%edx, %eax	# D.2544, D.2547
	addl	$8, %edx	#, tmp325
	addq	16(%rbx), %rax	# args_112(D)->reg_save_area, D.2549
	movl	%edx, (%rbx)	# tmp325, args_112(D)->gp_offset
	jmp	.L128	#
.L127:
	movq	8(%rbx), %rax	# args_112(D)->overflow_arg_area, D.2549
	leaq	8(%rax), %rdx	#, tmp326
	movq	%rdx, 8(%rbx)	# tmp326, args_112(D)->overflow_arg_area
.L128:
	movq	(%rax), %rsi	# MEM[(char * * {ref-all})addr.195_206], s
# lib.h:527:     char *ptr = String;
	movq	%rsi, %rax	# s, ptr
.L129:
# lib.h:530:     while (*ptr != '\0') {
	cmpb	$0, (%rax)	#, MEM[(char *)ptr_189]
	je	.L188	#,
# lib.h:531:         ptr++;
	incq	%rax	# ptr
	jmp	.L129	#
.L188:
# lib.h:535:     return ptr - String;
	subq	%rsi, %rax	# s, tmp327
	movslq	%eax, %rdx	# tmp327,
# printk.c:328: 				if(precision <0){
	cmpl	$-1, %r8d	#, precision
	je	.L131	#,
# printk.c:331: 				else if(len >precision){
	cmpl	%eax, %r8d	# tmp435, precision
	cmovle	%r8d, %eax	# precision,, tmp435
	movslq	%eax, %rdx	# tmp435,
.L131:
# printk.c:334: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	jne	.L133	#,
	xorl	%eax, %eax	# ivtmp.268
.L132:
# printk.c:335: 					while(len <field_width--){
	movl	%ecx, %edi	# field_width, field_width
	subl	%eax, %edi	# ivtmp.268, field_width
	cmpl	%edi, %edx	# field_width, len
	jge	.L189	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, (%r10,%rax)	#, MEM[(char *)str_67 + ivtmp.268_264 * 1]
	incq	%rax	# ivtmp.268
	jmp	.L132	#
.L189:
	cmpl	%edx, %ecx	# len, field_width
	movl	%ecx, %eax	# field_width, _242
	setge	%r8b	#, tmp330
	subl	%edx, %eax	# len, _242
	xorl	%r9d, %r9d	# tmp332
	movl	%eax, %edi	# _242, _242
	testb	%r8b, %r8b	# tmp330
	cmove	%r9, %rdi	# _242,, tmp332, _242
# printk.c:335: 					while(len <field_width--){
	negl	%eax	# tmp333
	addq	%rdi, %r10	# _242, str
	xorl	%edi, %edi	# tmp334
	testb	%r8b, %r8b	# tmp330
	cmove	%edi, %eax	# tmp333,, tmp334, tmp333
	leal	-1(%rcx,%rax), %ecx	#, field_width
.L133:
# printk.c:339: 				for(i=0;i<len;i++){
	xorl	%eax, %eax	# ivtmp.254
.L135:
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%eax, %edx	# ivtmp.254, len
	jle	.L190	#,
# printk.c:340: 						*str++ =*s++;
	movb	(%rsi,%rax), %dil	# MEM[(char *)s_129 + ivtmp.254_365 * 1], _34
# printk.c:340: 						*str++ =*s++;
	movb	%dil, (%r10,%rax)	# _34, MEM[(char *)str_63 + ivtmp.254_365 * 1]
	incq	%rax	# ivtmp.254
	jmp	.L135	#
.L190:
	xorl	%esi, %esi	#
	testl	%edx, %edx	# len
	cmovns	%rdx, %rsi	#,,
# printk.c:339: 				for(i=0;i<len;i++){
	xorl	%eax, %eax	# ivtmp.240
	addq	%r10, %rsi	# str, str
.L137:
# printk.c:342: 				while(len <field_width--){
	movl	%ecx, %edi	# field_width, field_width
	subl	%eax, %edi	# ivtmp.240, field_width
	cmpl	%edi, %edx	# field_width, len
	jge	.L191	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, (%rsi,%rax)	#, MEM[(char *)str_387 + ivtmp.240_3 * 1]
	incq	%rax	# ivtmp.240
	jmp	.L137	#
.L191:
	movl	%ecx, %r10d	# field_width, tmp338
	xorl	%eax, %eax	# tmp340
	subl	%edx, %r10d	# len, tmp338
	cmpl	%edx, %ecx	# len, field_width
	cmovl	%rax, %r10	# tmp338,, tmp340, tmp338
	addq	%rsi, %r10	# str, str
	jmp	.L88	#
.L116:
	movabsq	$number@GOTOFF, %rax	#, tmp401
# printk.c:352: 				if(qualifier =='l'){
	cmpl	$108, %esi	#, qualifier
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, pretmp_396
# printk.c:352: 				if(qualifier =='l'){
	jne	.L139	#,
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	cmpl	$47, %edx	#, pretmp_396
	ja	.L140	#,
	movl	%edx, %esi	# pretmp_396, D.2557
	addl	$8, %edx	#, tmp343
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2559
	movl	%edx, (%rbx)	# tmp343, args_112(D)->gp_offset
	jmp	.L141	#
.L140:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2559
	leaq	8(%rsi), %rdx	#, tmp344
	movq	%rdx, 8(%rbx)	# tmp344, args_112(D)->overflow_arg_area
.L141:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movl	$8, %edx	#,
	jmp	.L184	#
.L139:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	cmpl	$47, %edx	#, pretmp_396
	ja	.L142	#,
	movl	%edx, %esi	# pretmp_396, D.2567
	addl	$8, %edx	#, tmp349
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2569
	movl	%edx, (%rbx)	# tmp349, args_112(D)->gp_offset
	jmp	.L143	#
.L142:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2569
	leaq	8(%rsi), %rdx	#, tmp350
	movq	%rdx, 8(%rbx)	# tmp350, args_112(D)->overflow_arg_area
.L143:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movl	(%rsi), %esi	# MEM[(unsigned int * {ref-all})addr.197_208], MEM[(unsigned int * {ref-all})addr.197_208]
	movl	$8, %edx	#,
.L182:
	movq	%r10, %rdi	# str,
.L183:
	addq	%rbp, %rax	# tmp82, tmp352
	call	*%rax	# tmp352
	movq	%rax, %r10	# tmp416, str
	jmp	.L88	#
.L115:
# printk.c:360: 				if(field_width ==-1){
	cmpl	$-1, %ecx	#, field_width
	jne	.L144	#,
# printk.c:363: 					flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
# printk.c:362: 					field_width=sizeof(void *)*2;
	movl	$16, %ecx	#, field_width
.L144:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, D.2574
	cmpl	$47, %edx	#, D.2574
	ja	.L145	#,
	movl	%edx, %eax	# D.2574, D.2577
	addl	$8, %edx	#, tmp356
	addq	16(%rbx), %rax	# args_112(D)->reg_save_area, D.2579
	movl	%edx, (%rbx)	# tmp356, args_112(D)->gp_offset
	jmp	.L146	#
.L145:
	movq	8(%rbx), %rax	# args_112(D)->overflow_arg_area, D.2579
	leaq	8(%rax), %rdx	#, tmp357
	movq	%rdx, 8(%rbx)	# tmp357, args_112(D)->overflow_arg_area
.L146:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	(%rax), %rsi	# MEM[(void * * {ref-all})addr.198_209],
	movl	$16, %edx	#,
	movq	%r10, %rdi	# str,
	movabsq	$number@GOTOFF, %rax	#, tmp359
	jmp	.L183	#
.L111:
# printk.c:368: 				flags |=SMALL;
	orl	$64, %r9d	#, flags
.L110:
	movabsq	$number@GOTOFF, %rax	#, tmp399
# printk.c:370: 				if(qualifier =='l'){
	cmpl	$108, %esi	#, qualifier
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, pretmp_392
# printk.c:370: 				if(qualifier =='l'){
	jne	.L147	#,
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	cmpl	$47, %edx	#, pretmp_392
	ja	.L148	#,
	movl	%edx, %esi	# pretmp_392, D.2587
	addl	$8, %edx	#, tmp362
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2589
	movl	%edx, (%rbx)	# tmp362, args_112(D)->gp_offset
	jmp	.L149	#
.L148:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2589
	leaq	8(%rsi), %rdx	#, tmp363
	movq	%rdx, 8(%rbx)	# tmp363, args_112(D)->overflow_arg_area
.L149:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movl	$16, %edx	#,
.L184:
	movq	(%rsi), %rsi	#* D.2589,
	jmp	.L182	#
.L147:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	cmpl	$47, %edx	#, pretmp_392
	ja	.L150	#,
	movl	%edx, %esi	# pretmp_392, D.2597
	addl	$8, %edx	#, tmp368
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2599
	movl	%edx, (%rbx)	# tmp368, args_112(D)->gp_offset
	jmp	.L151	#
.L150:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2599
	leaq	8(%rsi), %rdx	#, tmp369
	movq	%rdx, 8(%rbx)	# tmp369, args_112(D)->overflow_arg_area
.L151:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movl	(%rsi), %esi	# MEM[(unsigned int * {ref-all})addr.200_211], MEM[(unsigned int * {ref-all})addr.200_211]
	movl	$16, %edx	#,
	jmp	.L182	#
.L118:
# printk.c:378: 				flags |=SIGN;
	orl	$2, %r9d	#, flags
.L113:
	movabsq	$number@GOTOFF, %rax	#, tmp400
# printk.c:380: 				if(qualifier =='l'){
	cmpl	$108, %esi	#, qualifier
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%rbx), %edx	# args_112(D)->gp_offset, pretmp_394
# printk.c:380: 				if(qualifier =='l'){
	jne	.L152	#,
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	cmpl	$47, %edx	#, pretmp_394
	ja	.L153	#,
	movl	%edx, %esi	# pretmp_394, D.2607
	addl	$8, %edx	#, tmp375
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2609
	movl	%edx, (%rbx)	# tmp375, args_112(D)->gp_offset
	jmp	.L154	#
.L153:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2609
	leaq	8(%rsi), %rdx	#, tmp376
	movq	%rdx, 8(%rbx)	# tmp376, args_112(D)->overflow_arg_area
.L154:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movl	$10, %edx	#,
	jmp	.L184	#
.L152:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	cmpl	$47, %edx	#, pretmp_394
	ja	.L155	#,
	movl	%edx, %esi	# pretmp_394, D.2617
	addl	$8, %edx	#, tmp381
	addq	16(%rbx), %rsi	# args_112(D)->reg_save_area, D.2619
	movl	%edx, (%rbx)	# tmp381, args_112(D)->gp_offset
	jmp	.L156	#
.L155:
	movq	8(%rbx), %rsi	# args_112(D)->overflow_arg_area, D.2619
	leaq	8(%rsi), %rdx	#, tmp382
	movq	%rdx, 8(%rbx)	# tmp382, args_112(D)->overflow_arg_area
.L156:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movl	(%rsi), %esi	# MEM[(unsigned int * {ref-all})addr.202_213], MEM[(unsigned int * {ref-all})addr.202_213]
	movl	$10, %edx	#,
	jmp	.L182	#
.L117:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%rbx), %eax	# args_112(D)->gp_offset, pretmp_395
# printk.c:387: 				if(qualifier =='l'){
	cmpl	$108, %esi	#, qualifier
	jne	.L157	#,
# printk.c:388: 					long *ip=va_arg(args,long *);
	cmpl	$47, %eax	#, pretmp_395
	ja	.L158	#,
	movl	%eax, %edx	# pretmp_395, D.2627
	addl	$8, %eax	#, tmp388
	addq	16(%rbx), %rdx	# args_112(D)->reg_save_area, D.2629
	movl	%eax, (%rbx)	# tmp388, args_112(D)->gp_offset
	jmp	.L159	#
.L158:
	movq	8(%rbx), %rdx	# args_112(D)->overflow_arg_area, D.2629
	leaq	8(%rdx), %rax	#, tmp389
	movq	%rax, 8(%rbx)	# tmp389, args_112(D)->overflow_arg_area
.L159:
	movq	(%rdx), %rax	# MEM[(long int * * {ref-all})addr.203_214], ip
# printk.c:389: 					*ip=(str-buf);
	movq	%r10, %rdx	# str, tmp390
	subq	%r12, %rdx	# buf, tmp390
	movq	%rdx, (%rax)	# tmp390, *ip_155
	jmp	.L88	#
.L157:
# printk.c:391: 					int *ip=va_arg(args,int *);
	cmpl	$47, %eax	#, pretmp_395
	ja	.L160	#,
	movl	%eax, %edx	# pretmp_395, D.2637
	addl	$8, %eax	#, tmp393
	addq	16(%rbx), %rdx	# args_112(D)->reg_save_area, D.2639
	movl	%eax, (%rbx)	# tmp393, args_112(D)->gp_offset
	jmp	.L161	#
.L160:
	movq	8(%rbx), %rdx	# args_112(D)->overflow_arg_area, D.2639
	leaq	8(%rdx), %rax	#, tmp394
	movq	%rax, 8(%rbx)	# tmp394, args_112(D)->overflow_arg_area
.L161:
	movq	(%rdx), %rax	# MEM[(int * * {ref-all})addr.204_215], ip
# printk.c:392: 					*ip=(str-buf);
	movq	%r10, %rdx	# str, tmp395
	subq	%r12, %rdx	# buf, tmp395
# printk.c:392: 					*ip=(str-buf);
	movl	%edx, (%rax)	# tmp395, *ip_152
	jmp	.L88	#
.L109:
# printk.c:396: 				*str++ ='%';
	movb	$37, (%r10)	#, *str_67
.L181:
# printk.c:396: 				*str++ ='%';
	incq	%r10	# str
# printk.c:397: 				break;
	jmp	.L88	#
.L107:
# printk.c:399: 				*str++ ='%';
	movb	$37, (%r10)	#, *str_67
# printk.c:400: 				if(*fmt)
	movb	(%rdx), %al	# *fmt.19_28, _52
# printk.c:400: 				if(*fmt)
	testb	%al, %al	# _52
	je	.L163	#,
# printk.c:401: 					*str++ =*fmt;
	movb	%al, 1(%r10)	# _52, MEM[(char *)str_67 + 1B]
# printk.c:401: 					*str++ =*fmt;
	addq	$2, %r10	#, str
	jmp	.L88	#
.L163:
# printk.c:403: 					--fmt;
	decq	%rdx	# tmp396
# printk.c:399: 				*str++ ='%';
	incq	%r10	# str
# printk.c:403: 					--fmt;
	movq	%rdx, 8(%rsp)	# tmp396, fmt
.L88:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	incq	8(%rsp)	# fmt
	jmp	.L86	#
.L185:
# printk.c:407: 	*str = '\0';
	movb	$0, (%r10)	#, *str_67
# printk.c:408: 	return str - buf;
	movl	%r10d, %eax	# str, tmp397
# printk.c:409: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
# printk.c:408: 	return str - buf;
	subl	%r12d, %eax	# buf, tmp397
# printk.c:409: }
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE40:
	.size	vsprintf, .-vsprintf
	.globl	color_printk
	.type	color_printk, @function
color_printk:
.LFB35:
	.cfi_startproc
	endbr64	
.L209:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L209, %r11	#,
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
	leaq	.L209(%rip), %rbx	#, tmp82
	addq	%r11, %rbx	#, tmp82
	subq	$232, %rsp	#,
	.cfi_def_cfa_offset 288
	movl	%esi, 12(%rsp)	# tmp238, %sfp
	movq	%rdx, %rsi	# tmp239, fmt
	movl	%edi, 8(%rsp)	# tmp237, %sfp
	movq	%rcx, 72(%rsp)	#,
	movq	%r8, 80(%rsp)	#,
	movq	%r9, 88(%rsp)	#,
	testb	%al, %al	#
	je	.L208	#,
	movaps	%xmm0, 96(%rsp)	#,
	movaps	%xmm1, 112(%rsp)	#,
	movaps	%xmm2, 128(%rsp)	#,
	movaps	%xmm3, 144(%rsp)	#,
	movaps	%xmm4, 160(%rsp)	#,
	movaps	%xmm5, 176(%rsp)	#,
	movaps	%xmm6, 192(%rsp)	#,
	movaps	%xmm7, 208(%rsp)	#,
.L208:
# printk.c:35: 	va_start(args,fmt);	
	leaq	288(%rsp), %rax	#, tmp244
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	leaq	24(%rsp), %rdx	#, tmp140
# printk.c:33: 	int line=0;
	xorl	%ebp, %ebp	# line
# printk.c:38: 	for(count=0;count<i || line;count++){
	xorl	%r12d, %r12d	# count
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	movabsq	$buf@GOTOFF, %r15	#, tmp142
# printk.c:35: 	va_start(args,fmt);	
	movq	%rax, 32(%rsp)	# tmp244, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	48(%rsp), %rax	#, tmp245
# printk.c:44: 			Pos.YPosition++;
	movabsq	$Pos@GOTOFF, %r13	#, tmp236
# printk.c:35: 	va_start(args,fmt);	
	movq	%rax, 40(%rsp)	# tmp245, MEM[(struct [1] *)&args].reg_save_area
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	leaq	(%rbx,%r15), %rdi	#, tmp141
	movabsq	$vsprintf@GOTOFF, %rax	#, tmp144
# printk.c:35: 	va_start(args,fmt);	
	movl	$24, 24(%rsp)	#, MEM[(struct [1] *)&args].gp_offset
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	addq	%rbx, %rax	# tmp82, tmp143
# printk.c:35: 	va_start(args,fmt);	
	movl	$48, 28(%rsp)	#, MEM[(struct [1] *)&args].fp_offset
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	call	*%rax	# tmp143
	movl	%eax, %r14d	# tmp240, <retval>
.L194:
# printk.c:38: 	for(count=0;count<i || line;count++){
	cmpl	%r14d, %r12d	# <retval>, count
	jge	.L213	#,
.L207:
# printk.c:44: 			Pos.YPosition++;
	movl	12(%rbx,%r13), %r9d	# Pos.YPosition, pretmp_159
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	20(%rbx,%r13), %ecx	# Pos.YCharSize, pretmp_160
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	16(%rbx,%r13), %r8d	# Pos.XCharSize, pretmp_161
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	(%rbx,%r13), %esi	# Pos.XResolution, pretmp_162
# printk.c:39: 		if(line >0){
	testl	%ebp, %ebp	# line
	jle	.L195	#,
# printk.c:40: 			count--;
	decl	%r12d	# count
# printk.c:41: 			goto Label_tab;
	jmp	.L196	#
.L195:
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movslq	%r12d, %rax	# count, count
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	leaq	(%r15,%rbx), %rdx	#, tmp151
	movzbl	(%rax,%rdx), %eax	# *_2,
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	cmpb	$10, %al	#, _3
	jne	.L197	#,
# printk.c:44: 			Pos.YPosition++;
	incl	%r9d	# tmp153
# printk.c:45: 			Pos.XPosition=0;
	xorl	%esi, %esi	#
# printk.c:44: 			Pos.YPosition++;
	movl	%r9d, 12(%rbx,%r13)	# tmp153, Pos.YPosition
# printk.c:45: 			Pos.XPosition=0;
	movl	%esi, 8(%rbx,%r13)	#, Pos.XPosition
	jmp	.L203	#
.L197:
# printk.c:47: 			Pos.XPosition--;
	movl	8(%rbx,%r13), %edx	# Pos.XPosition, pretmp_151
# printk.c:55: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
	movq	24(%rbx,%r13), %rdi	# Pos.FB_addr, pretmp_154
# printk.c:46: 		}else if((unsigned char)*(buf+count)=='\b'){
	cmpb	$8, %al	#, _3
	jne	.L199	#,
# printk.c:48: 			if(Pos.XPosition<0){
	decl	%edx	# _8
	js	.L200	#,
# printk.c:47: 			Pos.XPosition--;
	movl	%edx, 8(%r13,%rbx)	# _8, Pos.XPosition
	jmp	.L201	#
.L200:
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%esi, %eax	# pretmp_162, tmp160
	cltd
	idivl	%r8d	# pretmp_161
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	decl	%eax	# tmp162
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	imull	%r8d, %eax	# pretmp_161, tmp163
# printk.c:50: 				Pos.YPosition--;
	decl	%r9d	# _15
	movl	%r9d, 12(%r13,%rbx)	# _15, Pos.YPosition
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, 8(%r13,%rbx)	# tmp163, Pos.XPosition
# printk.c:51: 				if(Pos.YPosition<0){
	jns	.L201	#,
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	4(%r13,%rbx), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%ecx	# pretmp_160
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	decl	%eax	# tmp171
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	imull	%ecx, %eax	# pretmp_160, tmp172
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, 12(%r13,%rbx)	# tmp172, Pos.YPosition
.L201:
# printk.c:55: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
	movl	8(%r13,%rbx), %edx	# Pos.XPosition, pretmp_161
	imull	12(%r13,%rbx), %ecx	# Pos.YPosition, tmp174
	pushq	$32	#
	.cfi_remember_state
	.cfi_def_cfa_offset 296
	movabsq	$putchar@GOTOFF, %rax	#, tmp178
	movl	20(%rsp), %r9d	# %sfp,
	addq	%rbx, %rax	# tmp82, tmp177
	imull	%r8d, %edx	# pretmp_161, pretmp_161
	movl	16(%rsp), %r8d	# %sfp,
	call	*%rax	# tmp177
	jmp	.L211	#
.L199:
	.cfi_restore_state
# printk.c:56: 		}else if((unsigned char)*(buf+count)=='\t'){
	cmpb	$9, %al	#, _3
	jne	.L204	#,
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	leal	8(%rdx), %ebp	#, tmp179
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	andl	$-8, %ebp	#, tmp180
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	subl	%edx, %ebp	# pretmp_151, line
.L196:
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	movl	8(%rbx,%r13), %edx	# Pos.XPosition, pretmp_161
	movq	24(%rbx,%r13), %rdi	# Pos.FB_addr, Pos.FB_addr
	imull	%r9d, %ecx	# pretmp_159, tmp181
	pushq	$32	#
	.cfi_remember_state
	.cfi_def_cfa_offset 296
# printk.c:61: 				line--;
	decl	%ebp	# line
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	imull	%r8d, %edx	# pretmp_161, pretmp_161
	jmp	.L212	#
.L204:
	.cfi_restore_state
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	imull	%r9d, %ecx	# pretmp_159, tmp194
	pushq	%rax	# _3
	.cfi_def_cfa_offset 296
	imull	%r8d, %edx	# pretmp_161, tmp195
.L212:
	movabsq	$putchar@GOTOFF, %rax	#, tmp198
	movl	20(%rsp), %r9d	# %sfp,
	movl	16(%rsp), %r8d	# %sfp,
	addq	%rbx, %rax	# tmp82, tmp197
	call	*%rax	# tmp197
# printk.c:66: 			Pos.XPosition++;
	incl	8(%r13,%rbx)	# Pos.XPosition
.L211:
	popq	%rcx	#
	.cfi_def_cfa_offset 288
.L203:
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%rbx,%r13), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%rbx,%r13)	# Pos.XCharSize
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	cmpl	%eax, 8(%rbx,%r13)	# tmp209, Pos.XPosition
	jl	.L205	#,
# printk.c:70: 			Pos.XPosition=0;
	xorl	%edx, %edx	#
# printk.c:69: 			Pos.YPosition++;
	incl	12(%r13,%rbx)	# Pos.YPosition
# printk.c:70: 			Pos.XPosition=0;
	movl	%edx, 8(%rbx,%r13)	#, Pos.XPosition
.L205:
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	4(%r13,%rbx), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%r13,%rbx)	# Pos.YCharSize
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	cmpl	%eax, 12(%r13,%rbx)	# tmp223, Pos.YPosition
	jl	.L206	#,
# printk.c:73: 			Pos.YPosition=0;
	xorl	%eax, %eax	#
	movl	%eax, 12(%r13,%rbx)	#, Pos.YPosition
.L206:
# printk.c:38: 	for(count=0;count<i || line;count++){
	incl	%r12d	# count
	jmp	.L194	#
.L213:
# printk.c:38: 	for(count=0;count<i || line;count++){
	testl	%ebp, %ebp	# line
	jne	.L207	#,
# printk.c:77: }
	addq	$232, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%r14d, %eax	# <retval>,
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
