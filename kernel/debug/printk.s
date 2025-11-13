	.file	"printk.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -Ofast -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
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
.L163:
	leaq	.L163(%rip), %r10	#, tmp82
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %rax	# tmp342, num
	movl	%ecx, %esi	# tmp344, size
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L163, %r11	#,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addq	%r11, %r10	#, tmp82
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
# printk.c:159: 	if(type & SMALL){
	testb	$64, %r9b	#, type
	jne	.L47	#,
# printk.c:157: 	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	movabsq	$.LC0@GOTOFF, %rcx	#, tmp225
# printk.c:159: 	if(type & SMALL){
	movb	$88, -77(%rsp)	#, %sfp
# printk.c:157: 	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	leaq	(%r10,%rcx), %r12	#, digits
.L2:
# printk.c:162: 	if(type & LEFT){
	movl	%r9d, %ebx	# type, _2
	andl	$16, %ebx	#, _2
	movl	%ebx, -92(%rsp)	# _2, %sfp
	je	.L170	#,
# printk.c:163: 		type &=~ZEROPAD;
	andl	$-2, %r9d	#, type
	movl	$16, %r14d	#, prephitmp_35
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	$32, %ebp	#, iftmp.38_44
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %r15d	# type, _18
	andl	$32, %r15d	#, _18
# printk.c:170: 	if(type & SIGN  && num <0){
	testb	$2, %r9b	#, type
	je	.L5	#,
.L176:
	testq	%rax, %rax	# num
	js	.L171	#,
.L5:
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	testb	$4, %r9b	#, type
	je	.L172	#,
# printk.c:174: 		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	movb	$43, -78(%rsp)	#, %sfp
.L8:
# printk.c:178: 		size--;
	subl	$1, %esi	#, size
.L9:
# printk.c:180: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	je	.L10	#,
.L6:
# printk.c:181: 		if(base==16){
	cmpl	$16, %edx	#, base
	je	.L173	#,
# printk.c:184: 			size=size-1;
	xorl	%ecx, %ecx	# tmp347
	cmpl	$8, %edx	#, base
	movl	$32, %r15d	#, _18
	sete	%cl	#, tmp347
	subl	%ecx, %esi	# tmp347, size
.L10:
# printk.c:187: 	if(num==0){
	testq	%rax, %rax	# num
	jne	.L7	#,
	leaq	-72(%rsp), %rax	#, tmp305
# printk.c:188: 		tmp[i++]='0';
	movb	$48, -72(%rsp)	#, tmp[0]
	xorl	%ecx, %ecx	# prephitmp_3
# printk.c:188: 		tmp[i++]='0';
	movl	$1, %r9d	#, i
	movq	%rax, -88(%rsp)	# tmp305, %sfp
.L12:
# printk.c:193: 	if(i>precision){
	cmpl	%r8d, %r9d	# precision, i
	cmovge	%r9d, %r8d	# i,, _80
# printk.c:196: 	size-=precision;
	subl	%r8d, %esi	# _80, size
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	testl	%r14d, %r14d	# prephitmp_35
	jne	.L14	#,
# printk.c:198: 		while(size-- >0){
	leal	-1(%rsi), %r11d	#, tmp.125
# printk.c:198: 		while(size-- >0){
	testl	%esi, %esi	# size
	jle	.L52	#,
	movq	%rdi, %rax	# str, ivtmp.167
	cmpl	$14, %r11d	#, tmp.125
	jbe	.L53	#,
	movabsq	$.LC2@GOTOFF, %r12	#, tmp306
	movl	%esi, %ebx	# size, bnd.115
	shrl	$4, %ebx	#,
# printk.c:199: 			*str++=' ';
	movdqa	(%r12,%r10), %xmm0	#, tmp242
	salq	$4, %rbx	#, tmp241
	leaq	(%rbx,%rdi), %r13	#, _383
	andl	$16, %ebx	#, tmp241
	je	.L16	#,
	leaq	16(%rdi), %rax	#, ivtmp.167
	movups	%xmm0, (%rdi)	# tmp242, MEM <vector(16) char> [(char *)_489]
	cmpq	%rax, %r13	# ivtmp.167, _383
	je	.L156	#,
	.p2align 4,,10
	.p2align 3
.L16:
	movups	%xmm0, (%rax)	# tmp242, MEM <vector(16) char> [(char *)_489]
	addq	$32, %rax	#, ivtmp.167
	movups	%xmm0, -16(%rax)	# tmp242, MEM <vector(16) char> [(char *)_489]
	cmpq	%rax, %r13	# ivtmp.167, _383
	jne	.L16	#,
.L156:
	movl	%esi, %ebx	# size, niters_vector_mult_vf.116
	andl	$-16, %ebx	#,
	movl	%ebx, %eax	# niters_vector_mult_vf.116, niters_vector_mult_vf.116
	subl	%ebx, %r11d	# niters_vector_mult_vf.116, tmp.125
	addq	%rdi, %rax	# str, tmp.124
	cmpl	%ebx, %esi	# niters_vector_mult_vf.116, size
	je	.L18	#,
.L15:
	movl	%esi, %r12d	# size, niters.121
	subl	%ebx, %r12d	# niters_vector_mult_vf.116, niters.121
	leal	-1(%r12), %r13d	#, tmp246
	cmpl	$6, %r13d	#, tmp246
	jbe	.L19	#,
	movabsq	$.LC3@GOTOFF, %r13	#, tmp249
	movq	(%r10,%r13), %r13	#, tmp248
	movq	%r13, (%rdi,%rbx)	# tmp248, MEM <vector(8) char> [(char *)vectp_str.127_402]
	movl	%r12d, %ebx	# niters.121, niters_vector_mult_vf.123
	andl	$-8, %ebx	#, niters_vector_mult_vf.123
	movl	%ebx, %r13d	# niters_vector_mult_vf.123, niters_vector_mult_vf.123
	subl	%ebx, %r11d	# niters_vector_mult_vf.123, tmp.125
	addq	%r13, %rax	# niters_vector_mult_vf.123, tmp.124
	andl	$7, %r12d	#, niters.121
	je	.L18	#,
.L19:
	movb	$32, (%rax)	#, *str_391
# printk.c:198: 		while(size-- >0){
	testl	%r11d, %r11d	# tmp.125
	jle	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 1(%rax)	#, MEM[(char *)str_391 + 1B]
# printk.c:198: 		while(size-- >0){
	cmpl	$1, %r11d	#, tmp.125
	je	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 2(%rax)	#, MEM[(char *)str_391 + 2B]
# printk.c:198: 		while(size-- >0){
	cmpl	$2, %r11d	#, tmp.125
	je	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 3(%rax)	#, MEM[(char *)str_391 + 3B]
# printk.c:198: 		while(size-- >0){
	cmpl	$3, %r11d	#, tmp.125
	je	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 4(%rax)	#, MEM[(char *)str_391 + 4B]
# printk.c:198: 		while(size-- >0){
	cmpl	$4, %r11d	#, tmp.125
	je	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 5(%rax)	#, MEM[(char *)str_391 + 5B]
# printk.c:198: 		while(size-- >0){
	cmpl	$5, %r11d	#, tmp.125
	je	.L18	#,
# printk.c:199: 			*str++=' ';
	movb	$32, 6(%rax)	#, MEM[(char *)str_391 + 6B]
.L18:
	movslq	%esi, %rsi	# size, size
	addq	%rsi, %rdi	# size, str
# printk.c:198: 		while(size-- >0){
	movl	$-1, %esi	#, size
.L14:
# printk.c:202: 	if(sign){
	movzbl	-78(%rsp), %eax	# %sfp, sign
	testb	%al, %al	# sign
	je	.L21	#,
# printk.c:203: 		*str++=sign;
	movb	%al, (%rdi)	# sign, *str_23
# printk.c:203: 		*str++=sign;
	addq	$1, %rdi	#, str
.L21:
# printk.c:205: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	je	.L22	#,
# printk.c:206: 		if(base==8){
	cmpl	$8, %edx	#, base
	je	.L174	#,
# printk.c:208: 		}else if(base==16){
	cmpl	$16, %edx	#, base
	je	.L175	#,
.L22:
# printk.c:213: 	if(!(type&LEFT)){
	movl	-92(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jne	.L24	#,
# printk.c:214: 		while(size-- >0){
	leal	-1(%rsi), %edx	#, tmp.111
# printk.c:214: 		while(size-- >0){
	testl	%esi, %esi	# size
	jle	.L54	#,
	cmpl	$14, %edx	#, tmp.111
	jbe	.L55	#,
	movd	%ebp, %xmm0	# iftmp.38_44, tmp255
	movl	%esi, %r11d	# size, bnd.101
	movq	%rdi, %rax	# str, ivtmp.161
	shrl	$4, %r11d	#,
	punpcklbw	%xmm0, %xmm0	# tmp255, tmp256
	salq	$4, %r11	#, tmp261
	punpcklwd	%xmm0, %xmm0	# tmp256, tmp257
	pshufd	$0, %xmm0, %xmm0	#, tmp257, tmp258
	leaq	(%r11,%rdi), %rbx	#, _477
	andl	$16, %r11d	#, tmp261
	movdqa	%xmm0, %xmm1	# tmp258, vect_cst__313
	je	.L26	#,
	leaq	16(%rdi), %rax	#, ivtmp.161
# printk.c:215: 			*str++=c;
	movups	%xmm0, (%rdi)	# tmp258, MEM <vector(16) char> [(char *)_408]
	cmpq	%rbx, %rax	# _477, ivtmp.161
	je	.L158	#,
	.p2align 4,,10
	.p2align 3
.L26:
	movups	%xmm1, (%rax)	# vect_cst__313, MEM <vector(16) char> [(char *)_408]
	addq	$32, %rax	#, ivtmp.161
	movups	%xmm1, -16(%rax)	# vect_cst__313, MEM <vector(16) char> [(char *)_408]
	cmpq	%rbx, %rax	# _477, ivtmp.161
	jne	.L26	#,
.L158:
	movl	%esi, %r11d	# size, niters_vector_mult_vf.102
	andl	$-16, %r11d	#,
	movl	%r11d, %ebx	# niters_vector_mult_vf.102, niters_vector_mult_vf.102
	subl	%r11d, %edx	# niters_vector_mult_vf.102, tmp.111
	addq	%rdi, %rbx	# str, tmp.110
	cmpl	%r11d, %esi	# niters_vector_mult_vf.102, size
	je	.L28	#,
.L25:
	movl	%esi, %r12d	# size, niters.107
	subl	%r11d, %r12d	# niters_vector_mult_vf.102, niters.107
	leal	-1(%r12), %eax	#, tmp264
	cmpl	$6, %eax	#, tmp264
	jbe	.L29	#,
	movzbl	%bpl, %eax	# iftmp.38_44, iftmp.38_44
	movb	%al, %ah	# iftmp.38_44, iftmp.38_44
	movd	%eax, %xmm2	# iftmp.38_44, tmp428
	movl	%r12d, %eax	# niters.107, niters_vector_mult_vf.109
	andl	$-8, %eax	#, niters_vector_mult_vf.109
	pshuflw	$0, %xmm2, %xmm0	# tmp428, tmp267
	movq	%xmm0, (%rdi,%r11)	# tmp267, MEM <vector(8) char> [(char *)vectp_str.113_343]
	movl	%eax, %r11d	# niters_vector_mult_vf.109, niters_vector_mult_vf.109
	subl	%eax, %edx	# niters_vector_mult_vf.109, tmp.111
	addq	%r11, %rbx	# niters_vector_mult_vf.109, tmp.110
	andl	$7, %r12d	#, niters.107
	je	.L28	#,
.L29:
	movb	%bpl, (%rbx)	# iftmp.38_44, *str_332
# printk.c:214: 		while(size-- >0){
	testl	%edx, %edx	# tmp.111
	jle	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 1(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 1B]
# printk.c:214: 		while(size-- >0){
	cmpl	$1, %edx	#, tmp.111
	je	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 2(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 2B]
# printk.c:214: 		while(size-- >0){
	cmpl	$2, %edx	#, tmp.111
	je	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 3(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 3B]
# printk.c:214: 		while(size-- >0){
	cmpl	$3, %edx	#, tmp.111
	je	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 4(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 4B]
# printk.c:214: 		while(size-- >0){
	cmpl	$4, %edx	#, tmp.111
	je	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 5(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 5B]
# printk.c:214: 		while(size-- >0){
	cmpl	$5, %edx	#, tmp.111
	je	.L28	#,
# printk.c:215: 			*str++=c;
	movb	%bpl, 6(%rbx)	# iftmp.38_44, MEM[(char *)str_332 + 6B]
.L28:
	movslq	%esi, %rsi	# size, size
	addq	%rsi, %rdi	# size, str
# printk.c:214: 		while(size-- >0){
	movl	$-1, %esi	#, size
.L24:
# printk.c:218: 	while(i<precision--){
	leal	-1(%r8), %edx	#, tmp.97
# printk.c:218: 	while(i<precision--){
	cmpl	%r8d, %r9d	# _80, i
	jge	.L34	#,
	subl	%r9d, %r8d	# i, niters.86
	movq	%rdi, %rax	# str, ivtmp.155
	leal	-1(%r8), %ebx	#, _237
	cmpl	$14, %ebx	#, _237
	jbe	.L56	#,
	movabsq	$.LC4@GOTOFF, %r12	#, tmp307
	movl	%r8d, %r11d	# niters.86, bnd.87
	shrl	$4, %r11d	#,
# printk.c:219: 		*str++='0';
	movdqa	(%r12,%r10), %xmm0	#, tmp274
	salq	$4, %r11	#, tmp273
	leaq	(%r11,%rdi), %rbp	#, _371
	andl	$16, %r11d	#, tmp273
	je	.L32	#,
	leaq	16(%rdi), %rax	#, ivtmp.155
	movups	%xmm0, (%rdi)	# tmp274, MEM <vector(16) char> [(char *)_328]
	cmpq	%rax, %rbp	# ivtmp.155, _371
	je	.L160	#,
	.p2align 4,,10
	.p2align 3
.L32:
	movups	%xmm0, (%rax)	# tmp274, MEM <vector(16) char> [(char *)_328]
	addq	$32, %rax	#, ivtmp.155
	movups	%xmm0, -16(%rax)	# tmp274, MEM <vector(16) char> [(char *)_328]
	cmpq	%rax, %rbp	# ivtmp.155, _371
	jne	.L32	#,
.L160:
	movl	%r8d, %r11d	# niters.86, niters_vector_mult_vf.88
	andl	$-16, %r11d	#,
	movl	%r11d, %eax	# niters_vector_mult_vf.88, niters_vector_mult_vf.88
	subl	%r11d, %edx	# niters_vector_mult_vf.88, tmp.97
	addq	%rdi, %rax	# str, tmp.96
	testb	$15, %r8b	#, niters.86
	je	.L35	#,
.L31:
	subl	%r11d, %r8d	# niters_vector_mult_vf.88, niters.93
	leal	-1(%r8), %ebp	#, tmp280
	cmpl	$6, %ebp	#, tmp280
	jbe	.L36	#,
	movabsq	$.LC5@GOTOFF, %rbp	#, tmp283
	movq	(%r10,%rbp), %rbp	#, tmp282
	movq	%rbp, (%rdi,%r11)	# tmp282, MEM <vector(8) char> [(char *)vectp_str.99_284]
	movl	%r8d, %r11d	# niters.93, niters_vector_mult_vf.95
	andl	$-8, %r11d	#, niters_vector_mult_vf.95
	movl	%r11d, %ebp	# niters_vector_mult_vf.95, niters_vector_mult_vf.95
	subl	%r11d, %edx	# niters_vector_mult_vf.95, tmp.97
	addq	%rbp, %rax	# niters_vector_mult_vf.95, tmp.96
	andl	$7, %r8d	#, niters.93
	je	.L35	#,
.L36:
	movb	$48, (%rax)	#, *str_273
# printk.c:218: 	while(i<precision--){
	leal	-1(%rdx), %r8d	#, precision
# printk.c:218: 	while(i<precision--){
	cmpl	%edx, %r9d	# tmp.97, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 1(%rax)	#, MEM[(char *)str_273 + 1B]
# printk.c:218: 	while(i<precision--){
	leal	-2(%rdx), %r11d	#, precision
# printk.c:218: 	while(i<precision--){
	cmpl	%r8d, %r9d	# precision, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 2(%rax)	#, MEM[(char *)str_273 + 2B]
# printk.c:218: 	while(i<precision--){
	leal	-3(%rdx), %r8d	#, precision
# printk.c:218: 	while(i<precision--){
	cmpl	%r11d, %r9d	# precision, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 3(%rax)	#, MEM[(char *)str_273 + 3B]
# printk.c:218: 	while(i<precision--){
	leal	-4(%rdx), %r11d	#, precision
# printk.c:218: 	while(i<precision--){
	cmpl	%r8d, %r9d	# precision, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 4(%rax)	#, MEM[(char *)str_273 + 4B]
# printk.c:218: 	while(i<precision--){
	subl	$5, %edx	#, precision
# printk.c:218: 	while(i<precision--){
	cmpl	%r11d, %r9d	# precision, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 5(%rax)	#, MEM[(char *)str_273 + 5B]
# printk.c:218: 	while(i<precision--){
	cmpl	%edx, %r9d	# precision, i
	jge	.L35	#,
# printk.c:219: 		*str++='0';
	movb	$48, 6(%rax)	#, MEM[(char *)str_273 + 6B]
.L35:
	movl	%ebx, %ebx	# _237, _237
	leaq	1(%rdi,%rbx), %rdi	#, str
.L34:
	movq	-88(%rsp), %rbx	# %sfp, tmp305
	movslq	%ecx, %rax	# prephitmp_3, prephitmp_3
	addl	$1, %ecx	#, tmp288
	movslq	%ecx, %rcx	# tmp288, tmp289
	addq	%rax, %rbx	# prephitmp_3, tmp305
	addq	%rdi, %rcx	# str, <retval>
	movq	%rbx, %rax	# tmp305, ivtmp.151
	.p2align 4,,10
	.p2align 3
.L39:
# printk.c:222: 		*str++=tmp[i];
	movzbl	(%rax), %edx	# MEM[(char *)_162], MEM[(char *)_162]
# printk.c:222: 		*str++=tmp[i];
	addq	$1, %rdi	#, str
# printk.c:221: 	while(i-- >0){
	subq	$1, %rax	#, ivtmp.151
# printk.c:222: 		*str++=tmp[i];
	movb	%dl, -1(%rdi)	# MEM[(char *)_162], MEM[(char *)str_94 + -1B]
# printk.c:221: 	while(i-- >0){
	cmpq	%rcx, %rdi	# <retval>, str
	jne	.L39	#,
# printk.c:224: 	while(size-- >0){
	leal	-1(%rsi), %edx	#, tmp.83
# printk.c:224: 	while(size-- >0){
	testl	%esi, %esi	# size
	jle	.L1	#,
	movq	%rcx, %rax	# <retval>, ivtmp.139
	cmpl	$14, %edx	#, tmp.83
	jbe	.L57	#,
	movabsq	$.LC2@GOTOFF, %r12	#, tmp306
	movl	%esi, %edi	# size, bnd.73
	shrl	$4, %edi	#,
# printk.c:225: 		*str++=' ';
	movdqa	(%r12,%r10), %xmm0	#, tmp294
	salq	$4, %rdi	#, tmp293
	leaq	(%rdi,%rcx), %r8	#, _327
	andl	$16, %edi	#, tmp293
	je	.L42	#,
	leaq	16(%rcx), %rax	#, ivtmp.139
	movups	%xmm0, (%rcx)	# tmp294, MEM <vector(16) char> [(char *)_386]
	cmpq	%rax, %r8	# ivtmp.139, _327
	je	.L162	#,
	.p2align 4,,10
	.p2align 3
.L42:
	movups	%xmm0, (%rax)	# tmp294, MEM <vector(16) char> [(char *)_386]
	addq	$32, %rax	#, ivtmp.139
	movups	%xmm0, -16(%rax)	# tmp294, MEM <vector(16) char> [(char *)_386]
	cmpq	%rax, %r8	# ivtmp.139, _327
	jne	.L42	#,
.L162:
	movl	%esi, %edi	# size, niters_vector_mult_vf.74
	andl	$-16, %edi	#,
	movl	%edi, %eax	# niters_vector_mult_vf.74, niters_vector_mult_vf.74
	subl	%edi, %edx	# niters_vector_mult_vf.74, tmp.83
	addq	%rcx, %rax	# <retval>, tmp.82
	cmpl	%edi, %esi	# niters_vector_mult_vf.74, size
	je	.L44	#,
.L41:
	movl	%esi, %r8d	# size, niters.79
	subl	%edi, %r8d	# niters_vector_mult_vf.74, niters.79
	leal	-1(%r8), %r9d	#, tmp298
	cmpl	$6, %r9d	#, tmp298
	jbe	.L45	#,
	movabsq	$.LC3@GOTOFF, %r9	#, tmp301
	movq	(%r10,%r9), %r9	#, tmp300
	movq	%r9, (%rcx,%rdi)	# tmp300, MEM <vector(8) char> [(char *)vectp_str.85_217]
	movl	%r8d, %edi	# niters.79, niters_vector_mult_vf.81
	andl	$-8, %edi	#, niters_vector_mult_vf.81
	movl	%edi, %r9d	# niters_vector_mult_vf.81, niters_vector_mult_vf.81
	subl	%edi, %edx	# niters_vector_mult_vf.81, tmp.83
	addq	%r9, %rax	# niters_vector_mult_vf.81, tmp.82
	andl	$7, %r8d	#, niters.79
	je	.L44	#,
.L45:
	movb	$32, (%rax)	#, *str_206
# printk.c:224: 	while(size-- >0){
	testl	%edx, %edx	# tmp.83
	jle	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 1(%rax)	#, MEM[(char *)str_206 + 1B]
# printk.c:224: 	while(size-- >0){
	cmpl	$1, %edx	#, tmp.83
	je	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 2(%rax)	#, MEM[(char *)str_206 + 2B]
# printk.c:224: 	while(size-- >0){
	cmpl	$2, %edx	#, tmp.83
	je	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 3(%rax)	#, MEM[(char *)str_206 + 3B]
# printk.c:224: 	while(size-- >0){
	cmpl	$3, %edx	#, tmp.83
	je	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 4(%rax)	#, MEM[(char *)str_206 + 4B]
# printk.c:224: 	while(size-- >0){
	cmpl	$4, %edx	#, tmp.83
	je	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 5(%rax)	#, MEM[(char *)str_206 + 5B]
# printk.c:224: 	while(size-- >0){
	cmpl	$5, %edx	#, tmp.83
	je	.L44	#,
# printk.c:225: 		*str++=' ';
	movb	$32, 6(%rax)	#, MEM[(char *)str_206 + 6B]
.L44:
	movslq	%esi, %rsi	# size, size
	addq	%rsi, %rcx	# size, <retval>
.L1:
# printk.c:228: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rcx, %rax	# <retval>,
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
.L170:
	.cfi_restore_state
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	movl	%r9d, %ecx	# type, _5
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	movl	%r9d, %r14d	# type, prephitmp_35
# printk.c:180: 	if(type&SPECIAL){
	movl	%r9d, %r15d	# type, _18
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	andl	$1, %ecx	#, _5
# printk.c:197: 	if(!(type&(ZEROPAD+LEFT))){
	andl	$17, %r14d	#, prephitmp_35
# printk.c:168: 	c=(type & ZEROPAD) ? '0' : ' ';
	cmpl	$1, %ecx	#, _5
	sbbl	%ebp, %ebp	# iftmp.38_44
	andl	$-16, %ebp	#, iftmp.38_44
	addl	$48, %ebp	#, iftmp.38_44
	testl	%ecx, %ecx	# _5
	cmove	%ebx, %r14d	# prephitmp_35,, _2, prephitmp_35
# printk.c:180: 	if(type&SPECIAL){
	andl	$32, %r15d	#, _18
# printk.c:170: 	if(type & SIGN  && num <0){
	testb	$2, %r9b	#, type
	jne	.L176	#,
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L47:
# printk.c:160: 		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	movabsq	$.LC1@GOTOFF, %rcx	#, tmp226
	movb	$120, -77(%rsp)	#, %sfp
	leaq	(%r10,%rcx), %r12	#, digits
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L172:
# printk.c:177: 	if(sign){
	movl	%r9d, %ebx	# type, sign
	andl	$8, %ebx	#, sign
	movb	%bl, -78(%rsp)	# sign, %sfp
	je	.L9	#,
	movb	$32, -78(%rsp)	#, %sfp
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L171:
# printk.c:171: 		sign='-';
	movb	$45, -78(%rsp)	#, %sfp
# printk.c:172: 		num=-num;
	negq	%rax	# num
# printk.c:178: 		size--;
	subl	$1, %esi	#, size
# printk.c:180: 	if(type&SPECIAL){
	testl	%r15d, %r15d	# _18
	jne	.L6	#,
.L7:
	leaq	-72(%rsp), %rcx	#, tmp305
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movl	%r15d, -76(%rsp)	# _18, %sfp
	movslq	%edx, %rbx	# base, _136
# printk.c:158: 	int i=0;
	xorl	%r9d, %r9d	# i
	movq	%rcx, -88(%rsp)	# tmp305, %sfp
	movq	%rcx, %r11	# tmp305, ivtmp.175
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	xorl	%r13d, %r13d	# tmp236
	movl	%edx, %r15d	# base, base
	.p2align 4,,10
	.p2align 3
.L13:
	movl	%r13d, %edx	# tmp236, __res
	movl	%r9d, %ecx	# i, prephitmp_3
# printk.c:189: 	}else while (num!=0){
	addq	$1, %r11	#, ivtmp.175
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	addl	$1, %r9d	#, i
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
#APP
# 191 "printk.c" 1
	divq %rbx		# _136
# 0 "" 2
#NO_APP
	movslq	%edx, %rdx	# __res, __res
# printk.c:191: 		tmp[i++]=digits[do_div2(num,base)];
	movzbl	(%r12,%rdx), %edx	# *_13, *_13
	movb	%dl, -1(%r11)	# *_13, MEM[(char *)_312]
# printk.c:189: 	}else while (num!=0){
	testq	%rax, %rax	# num
	jne	.L13	#,
	movl	%r15d, %edx	# base, base
	movl	-76(%rsp), %r15d	# %sfp, _18
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L175:
# printk.c:210: 			*str++=digits[33];
	movzbl	-77(%rsp), %eax	# %sfp, prephitmp_37
# printk.c:209: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:210: 			*str++=digits[33];
	addq	$2, %rdi	#, str
# printk.c:210: 			*str++=digits[33];
	movb	%al, -1(%rdi)	# prephitmp_37, MEM[(char *)str_24 + 1B]
	jmp	.L22	#
	.p2align 4,,10
	.p2align 3
.L174:
# printk.c:207: 			*str++='0';
	movb	$48, (%rdi)	#, *str_24
# printk.c:207: 			*str++='0';
	addq	$1, %rdi	#, str
	jmp	.L22	#
	.p2align 4,,10
	.p2align 3
.L173:
# printk.c:182: 			size=size-2;
	subl	$2, %esi	#, size
	movl	$32, %r15d	#, _18
	jmp	.L10	#
.L57:
# printk.c:224: 	while(size-- >0){
	xorl	%edi, %edi	#
	jmp	.L41	#
.L56:
# printk.c:218: 	while(i<precision--){
	xorl	%r11d, %r11d	#
	jmp	.L31	#
.L54:
# printk.c:214: 		while(size-- >0){
	movl	%edx, %esi	# tmp.111, size
	jmp	.L24	#
.L52:
# printk.c:198: 		while(size-- >0){
	movl	%r11d, %esi	# tmp.125, size
	jmp	.L14	#
.L53:
# printk.c:198: 		while(size-- >0){
	xorl	%ebx, %ebx	#
	jmp	.L15	#
.L55:
# printk.c:214: 		while(size-- >0){
	movq	%rdi, %rbx	# str, tmp.110
	xorl	%r11d, %r11d	#
	jmp	.L25	#
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
.L205:
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%edx, %r10	# x,
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L205, %r11	#,
	leaq	.L205(%rip), %rax	#, tmp82
# printk.c:12: 	fontp=font_ascii[font];
	movabsq	$font_ascii@GOTOFF, %rdx	#, tmp343
# printk.c:6: void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font){
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addq	%r11, %rax	#, tmp82
	movl	$31, %r11d	#, tmp366
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# printk.c:12: 	fontp=font_ascii[font];
	leaq	(%rax,%rdx), %r12	#, tmp342
# printk.c:6: void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font){
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%esi, %rbx	# tmp802,
	movl	%ecx, %esi	# y, tmp804
	imull	%ebx, %esi	# Xsize, tmp344
	leaq	0(,%rbx,4), %rcx	#, _148
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
	movslq	%esi, %rsi	# tmp344, tmp345
# printk.c:12: 	fontp=font_ascii[font];
	movzbl	144(%rsp), %ebp	# font, font
	addq	%r10, %rsi	# x, tmp347
	leaq	0(,%rsi,4), %r10	#, _155
	movq	%rbx, %rsi	# _139, tmp349
	salq	$4, %rbp	#, tmp341
	salq	$4, %rsi	#, tmp349
	leaq	0(%rbp,%r12), %rdx	#, fontp
	leaq	15(%r12,%rbp), %r12	#, tmp356
	xorl	%ebp, %ebp	# tmp360
	subq	%rbx, %rsi	# _139, tmp350
	salq	$2, %rsi	#, tmp351
	testl	%ebx, %ebx	# Xsize
	cmovs	%rsi, %rbp	# tmp351,, tmp359
	addq	%r10, %rbp	# _155, tmp361
	addq	%rdi, %rbp	# fb, tmp362
	cmpq	%rbp, %r12	# tmp362, tmp356
	setb	%bpl	#, tmp364
	addq	$31, %rsi	#, tmp365
	testl	%ebx, %ebx	# Xsize
	cmovs	%r11, %rsi	# tmp365,, tmp366, tmp365
	addq	%r10, %rsi	# _155, tmp367
	addq	%rdi, %rsi	# fb, tmp368
	cmpq	%rdx, %rsi	# fontp, tmp368
	setb	%sil	#, tmp370
	orb	%bpl, %sil	# tmp364, tmp807
	je	.L178	#,
	leaq	31(%rcx), %rsi	#, tmp372
	cmpq	$62, %rsi	#, tmp372
	jbe	.L178	#,
	movd	%r8d, %xmm0	# FRcolor, FRcolor
	salq	$5, %rbx	#, _139
	movq	%rdx, %rsi	# fontp, ivtmp.258
# printk.c:19: 			if(*fontp & testval){
	pxor	%xmm10, %xmm10	# tmp377
	pshufd	$0xe0, %xmm0, %xmm12	# FRcolor, vect_cst__201
	movd	%r9d, %xmm0	# BKcolor, BKcolor
	movq	%rbx, %r9	# _139, _368
	leaq	(%rdi,%r10), %rbx	#, ivtmp.261
	pshufd	$0xe0, %xmm0, %xmm11	# BKcolor, vect_cst__202
	pxor	%xmm9, %xmm9	# tmp389
	leaq	(%rbx,%rcx), %rbp	#, ivtmp.265
	leaq	0(%rbp,%rcx), %r12	#, ivtmp.266
	leaq	(%r12,%rcx), %r13	#, ivtmp.267
	leaq	0(%r13,%rcx), %r14	#, ivtmp.268
	leaq	(%r14,%rcx), %r15	#, ivtmp.269
	leaq	(%r15,%rcx), %r8	#, ivtmp.270
	leaq	(%r8,%rcx), %rdi	#, ivtmp.271
	leaq	16(%rdx), %rcx	#, _18
	movabsq	$.LC8@GOTOFF, %rdx	#, tmp799
	movq	(%rdx,%rax), %rdx	#, tmp416
	movq	%rdx, 32(%rsp)	# tmp416, %sfp
	movabsq	$.LC3@GOTOFF, %rdx	#, tmp798
	movq	(%rdx,%rax), %rdx	#, tmp459
	movq	%rdx, 40(%rsp)	# tmp459, %sfp
	movabsq	$.LC9@GOTOFF, %rdx	#, tmp800
	movq	(%rdx,%rax), %rdx	#, tmp502
	movq	%rdx, 48(%rsp)	# tmp502, %sfp
	movabsq	$.LC10@GOTOFF, %rdx	#, tmp794
	movq	(%rdx,%rax), %rdx	#, tmp545
	movq	%rdx, 56(%rsp)	# tmp545, %sfp
	movabsq	$.LC11@GOTOFF, %rdx	#, tmp795
	movq	(%rdx,%rax), %rdx	#, tmp588
	movq	%rdx, 64(%rsp)	# tmp588, %sfp
	movabsq	$.LC12@GOTOFF, %rdx	#, tmp796
	movq	(%rdx,%rax), %rdx	#, tmp631
	movq	%rdx, 72(%rsp)	# tmp631, %sfp
	movabsq	$.LC13@GOTOFF, %rdx	#, tmp797
	movq	(%rdx,%rax), %rax	#, tmp674
	movq	%rax, 80(%rsp)	# tmp674, %sfp
.L179:
# printk.c:19: 			if(*fontp & testval){
	movq	(%rsi), %xmm0	# MEM <vector(8) unsigned char> [(unsigned char *)_274], vect__41.184
# printk.c:19: 			if(*fontp & testval){
	movdqa	%xmm10, %xmm1	# tmp377, tmp378
	movdqa	%xmm10, %xmm2	# tmp377, tmp381
	movdqa	%xmm9, %xmm3	# tmp389, tmp390
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp392
	movq	32(%rsp), %xmm5	# %sfp, vect__141.193
	addq	$8, %rsi	#, ivtmp.258
	movdqa	%xmm12, %xmm7	# vect_cst__201, tmp442
	pcmpgtb	%xmm0, %xmm1	# vect__41.184, tmp378
	movdqa	%xmm9, %xmm8	# tmp389, tmp490
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp499
	movq	48(%rsp), %xmm14	# %sfp, vect__143.209
	pand	%xmm0, %xmm5	# vect__41.184, vect__141.193
	movdqa	%xmm10, %xmm15	# tmp377, tmp510
	pand	%xmm0, %xmm14	# vect__41.184, vect__143.209
	pcmpgtb	%xmm1, %xmm2	# tmp378, tmp381
	movdqa	%xmm1, %xmm6	# tmp378, tmp382
	punpcklbw	%xmm2, %xmm6	# tmp381, tmp382
	punpcklbw	%xmm2, %xmm1	# tmp381, tmp386
	pcmpgtw	%xmm6, %xmm3	# tmp382, tmp390
	movdqa	%xmm6, %xmm2	# tmp382, tmp391
	pshufd	$78, %xmm1, %xmm1	#, tmp386, tmp386
	punpcklwd	%xmm3, %xmm2	# tmp390, tmp391
	punpcklwd	%xmm3, %xmm6	# tmp390, tmp398
	movdqa	%xmm9, %xmm3	# tmp389, tmp404
	pand	%xmm2, %xmm4	# tmp391, tmp392
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp393
	pshufd	$78, %xmm6, %xmm6	#, tmp398, tmp398
	por	%xmm4, %xmm2	# tmp392, tmp393
	pcmpgtw	%xmm1, %xmm3	# tmp386, tmp404
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp406
	movq	%xmm2, %rdx	# tmp393, vect_patt_92.189
	movdqa	%xmm12, %xmm2	# vect_cst__201, tmp399
	pand	%xmm6, %xmm2	# tmp398, tmp399
	pandn	%xmm11, %xmm6	# vect_cst__202, tmp400
	movl	%edx, (%rbx)	# vect_patt_92.189, MEM[(unsigned int *)_297]
	por	%xmm2, %xmm6	# tmp399, vect_patt_92.189
	movdqa	%xmm1, %xmm2	# tmp386, tmp405
	punpcklwd	%xmm3, %xmm1	# tmp404, tmp412
	punpcklwd	%xmm3, %xmm2	# tmp404, tmp405
	pshufd	$78, %xmm1, %xmm1	#, tmp412, tmp412
	movdqa	%xmm10, %xmm3	# tmp377, tmp424
	pand	%xmm2, %xmm4	# tmp405, tmp406
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp407
	por	%xmm4, %xmm2	# tmp406, tmp407
	movdqa	%xmm9, %xmm4	# tmp389, tmp433
	movq	%xmm2, %rax	# tmp407, vect_patt_92.189
	movdqa	%xmm12, %xmm2	# vect_cst__201, tmp413
	pand	%xmm1, %xmm2	# tmp412, tmp413
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp414
	por	%xmm2, %xmm1	# tmp413, tmp414
	movq	%xmm1, -120(%rsp)	# tmp414, %sfp
	movdqa	%xmm5, %xmm1	# vect__141.193, vect__141.193
	movdqa	%xmm12, %xmm5	# vect_cst__201, tmp435
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp419
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp421
	pcmpgtb	%xmm1, %xmm3	# tmp421, tmp424
	movdqa	%xmm1, %xmm2	# tmp421, tmp425
	punpcklbw	%xmm3, %xmm2	# tmp424, tmp425
	punpcklbw	%xmm3, %xmm1	# tmp424, tmp429
	pcmpgtw	%xmm2, %xmm4	# tmp425, tmp433
	movdqa	%xmm2, %xmm3	# tmp425, tmp434
	pshufd	$78, %xmm1, %xmm1	#, tmp429, tmp429
	punpcklwd	%xmm4, %xmm2	# tmp433, tmp441
	punpcklwd	%xmm4, %xmm3	# tmp433, tmp434
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp449
	pshufd	$78, %xmm2, %xmm2	#, tmp441, tmp441
	pand	%xmm3, %xmm5	# tmp434, tmp435
	pandn	%xmm11, %xmm3	# vect_cst__202, tmp436
	pand	%xmm2, %xmm7	# tmp441, tmp442
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp443
	por	%xmm5, %xmm3	# tmp435, tmp436
	por	%xmm7, %xmm2	# tmp442, tmp443
	movdqa	%xmm9, %xmm7	# tmp389, tmp447
	movq	%xmm3, -112(%rsp)	# tmp436, %sfp
	movdqa	%xmm1, %xmm5	# tmp429, tmp448
	pcmpgtw	%xmm1, %xmm7	# tmp429, tmp447
	movq	%xmm2, -104(%rsp)	# tmp443, %sfp
	movdqa	%xmm7, %xmm3	# tmp447, tmp447
	movdqa	%xmm12, %xmm7	# vect_cst__201, tmp456
	punpcklwd	%xmm3, %xmm5	# tmp447, tmp448
	punpcklwd	%xmm3, %xmm1	# tmp447, tmp455
	movdqa	%xmm5, %xmm2	# tmp448, tmp448
	pand	%xmm5, %xmm4	# tmp448, tmp449
	pshufd	$78, %xmm1, %xmm1	#, tmp455, tmp455
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp450
	pand	%xmm1, %xmm7	# tmp455, tmp456
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp457
	movdqa	%xmm2, %xmm5	# tmp450, tmp450
	movdqa	%xmm7, %xmm2	# tmp456, tmp456
	movdqa	%xmm1, %xmm7	# tmp457, tmp457
	por	%xmm4, %xmm5	# tmp449, tmp450
	movq	40(%rsp), %xmm4	# %sfp, vect__142.201
	por	%xmm2, %xmm7	# tmp456, tmp457
	movq	%xmm5, -96(%rsp)	# tmp450, %sfp
	movdqa	%xmm12, %xmm5	# vect_cst__201, tmp478
	pand	%xmm0, %xmm4	# vect__41.184, vect__142.201
	movq	%xmm7, -88(%rsp)	# tmp457, %sfp
	movq	56(%rsp), %xmm7	# %sfp, vect__144.217
	movdqa	%xmm4, %xmm1	# vect__142.201, vect__142.201
	movdqa	%xmm10, %xmm4	# tmp377, tmp467
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp462
	pand	%xmm0, %xmm7	# vect__41.184, vect__144.217
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp464
	pcmpgtb	%xmm1, %xmm4	# tmp464, tmp467
	movdqa	%xmm4, %xmm3	# tmp467, tmp467
	movdqa	%xmm1, %xmm4	# tmp464, tmp468
	punpcklbw	%xmm3, %xmm4	# tmp467, tmp468
	punpcklbw	%xmm3, %xmm1	# tmp467, tmp472
	movdqa	%xmm4, %xmm2	# tmp468, tmp468
	movdqa	%xmm9, %xmm4	# tmp389, tmp476
	pshufd	$78, %xmm1, %xmm1	#, tmp472, tmp472
	pcmpgtw	%xmm2, %xmm4	# tmp468, tmp476
	pcmpgtw	%xmm1, %xmm8	# tmp472, tmp490
	movdqa	%xmm2, %xmm3	# tmp468, tmp477
	punpcklwd	%xmm4, %xmm3	# tmp476, tmp477
	punpcklwd	%xmm4, %xmm2	# tmp476, tmp484
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp485
	pand	%xmm3, %xmm5	# tmp477, tmp478
	pshufd	$78, %xmm2, %xmm2	#, tmp484, tmp484
	pandn	%xmm11, %xmm3	# vect_cst__202, tmp479
	por	%xmm5, %xmm3	# tmp478, tmp479
	pand	%xmm2, %xmm4	# tmp484, tmp485
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp486
	movq	%xmm3, -80(%rsp)	# tmp479, %sfp
	movdqa	%xmm4, %xmm3	# tmp485, tmp485
	movdqa	%xmm2, %xmm4	# tmp486, tmp486
	movdqa	%xmm1, %xmm2	# tmp472, tmp491
	por	%xmm3, %xmm4	# tmp485, tmp486
	movdqa	%xmm8, %xmm3	# tmp490, tmp490
	movdqa	%xmm12, %xmm5	# vect_cst__201, tmp521
	punpcklwd	%xmm3, %xmm1	# tmp490, tmp498
	punpcklwd	%xmm3, %xmm2	# tmp490, tmp491
	movq	%xmm4, -72(%rsp)	# tmp486, %sfp
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp492
	pshufd	$78, %xmm1, %xmm1	#, tmp498, tmp498
	pand	%xmm2, %xmm4	# tmp491, tmp492
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp493
	pand	%xmm1, %xmm13	# tmp498, tmp499
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp500
	por	%xmm4, %xmm2	# tmp492, tmp493
	por	%xmm13, %xmm1	# tmp499, tmp500
	movdqa	%xmm9, %xmm4	# tmp389, tmp519
	movq	%xmm2, -64(%rsp)	# tmp493, %sfp
	movq	%xmm1, -56(%rsp)	# tmp500, %sfp
	movdqa	%xmm14, %xmm1	# vect__143.209, vect__143.209
	movdqa	%xmm12, %xmm14	# vect_cst__201, tmp528
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp505
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp507
	pcmpgtb	%xmm1, %xmm15	# tmp507, tmp510
	movdqa	%xmm1, %xmm8	# tmp507, tmp511
	movdqa	%xmm15, %xmm3	# tmp510, tmp510
	movdqa	%xmm9, %xmm15	# tmp389, tmp533
	punpcklbw	%xmm3, %xmm8	# tmp510, tmp511
	punpcklbw	%xmm3, %xmm1	# tmp510, tmp515
	pcmpgtw	%xmm8, %xmm4	# tmp511, tmp519
	movdqa	%xmm8, %xmm2	# tmp511, tmp511
	pshufd	$78, %xmm1, %xmm1	#, tmp515, tmp515
	movdqa	%xmm8, %xmm13	# tmp511, tmp520
	pcmpgtw	%xmm1, %xmm15	# tmp515, tmp533
	punpcklwd	%xmm4, %xmm2	# tmp519, tmp527
	punpcklwd	%xmm4, %xmm13	# tmp519, tmp520
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp535
	pshufd	$78, %xmm2, %xmm2	#, tmp527, tmp527
	movdqa	%xmm13, %xmm3	# tmp520, tmp520
	pand	%xmm13, %xmm5	# tmp520, tmp521
	pand	%xmm2, %xmm14	# tmp527, tmp528
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp529
	pandn	%xmm11, %xmm3	# vect_cst__202, tmp522
	movdqa	%xmm2, %xmm13	# tmp529, tmp529
	movdqa	%xmm3, %xmm8	# tmp522, tmp522
	movdqa	%xmm15, %xmm3	# tmp533, tmp533
	por	%xmm14, %xmm13	# tmp528, tmp529
	movdqa	%xmm1, %xmm14	# tmp515, tmp534
	punpcklwd	%xmm3, %xmm1	# tmp533, tmp541
	punpcklwd	%xmm3, %xmm14	# tmp533, tmp534
	pshufd	$78, %xmm1, %xmm1	#, tmp541, tmp541
	movdqa	%xmm12, %xmm15	# vect_cst__201, tmp542
	movq	%xmm13, -40(%rsp)	# tmp529, %sfp
	movdqa	%xmm14, %xmm2	# tmp534, tmp534
	pand	%xmm1, %xmm15	# tmp541, tmp542
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp543
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp536
	pand	%xmm14, %xmm4	# tmp534, tmp535
	por	%xmm5, %xmm8	# tmp521, tmp522
	movdqa	%xmm2, %xmm14	# tmp536, tmp536
	movdqa	%xmm15, %xmm2	# tmp542, tmp542
	movdqa	%xmm1, %xmm15	# tmp543, tmp543
	movq	%xmm8, -48(%rsp)	# tmp522, %sfp
	movdqa	%xmm7, %xmm1	# vect__144.217, vect__144.217
	movdqa	%xmm10, %xmm7	# tmp377, tmp553
	por	%xmm4, %xmm14	# tmp535, tmp536
	movq	64(%rsp), %xmm8	# %sfp, vect__145.225
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp548
	movdqa	%xmm9, %xmm4	# tmp389, tmp562
	por	%xmm2, %xmm15	# tmp542, tmp543
	movq	%xmm14, -32(%rsp)	# tmp536, %sfp
	pand	%xmm0, %xmm8	# vect__41.184, vect__145.225
	movq	72(%rsp), %xmm14	# %sfp, vect__146.233
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp614
	movq	%xmm15, -24(%rsp)	# tmp543, %sfp
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp550
	pand	%xmm0, %xmm14	# vect__41.184, vect__146.233
	pcmpgtb	%xmm1, %xmm7	# tmp550, tmp553
	movdqa	%xmm1, %xmm5	# tmp550, tmp554
	movdqa	%xmm7, %xmm3	# tmp553, tmp553
	punpcklbw	%xmm3, %xmm5	# tmp553, tmp554
	punpcklbw	%xmm3, %xmm1	# tmp553, tmp558
	pcmpgtw	%xmm5, %xmm4	# tmp554, tmp562
	movdqa	%xmm5, %xmm7	# tmp554, tmp563
	movdqa	%xmm5, %xmm2	# tmp554, tmp554
	movdqa	%xmm12, %xmm5	# vect_cst__201, tmp564
	pshufd	$78, %xmm1, %xmm1	#, tmp558, tmp558
	punpcklwd	%xmm4, %xmm7	# tmp562, tmp563
	punpcklwd	%xmm4, %xmm2	# tmp562, tmp570
	movdqa	%xmm9, %xmm4	# tmp389, tmp576
	movdqa	%xmm7, %xmm3	# tmp563, tmp563
	pand	%xmm7, %xmm5	# tmp563, tmp564
	pshufd	$78, %xmm2, %xmm2	#, tmp570, tmp570
	pandn	%xmm11, %xmm3	# vect_cst__202, tmp565
	pcmpgtw	%xmm1, %xmm4	# tmp558, tmp576
	movdqa	%xmm3, %xmm7	# tmp565, tmp565
	por	%xmm5, %xmm7	# tmp564, tmp565
	movdqa	%xmm12, %xmm5	# vect_cst__201, tmp571
	pand	%xmm2, %xmm5	# tmp570, tmp571
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp572
	movq	%xmm7, -16(%rsp)	# tmp565, %sfp
	movdqa	%xmm12, %xmm7	# vect_cst__201, tmp650
	movdqa	%xmm5, %xmm3	# tmp571, tmp571
	movdqa	%xmm2, %xmm5	# tmp572, tmp572
	por	%xmm3, %xmm5	# tmp571, tmp572
	movdqa	%xmm4, %xmm3	# tmp576, tmp576
	movdqa	%xmm1, %xmm4	# tmp558, tmp577
	punpcklwd	%xmm3, %xmm4	# tmp576, tmp577
	punpcklwd	%xmm3, %xmm1	# tmp576, tmp584
	movq	%xmm5, -8(%rsp)	# tmp572, %sfp
	movdqa	%xmm9, %xmm3	# tmp389, tmp605
	movdqa	%xmm4, %xmm2	# tmp577, tmp577
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp578
	pshufd	$78, %xmm1, %xmm1	#, tmp584, tmp584
	pand	%xmm2, %xmm4	# tmp577, tmp578
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp579
	por	%xmm4, %xmm2	# tmp578, tmp579
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp585
	pand	%xmm1, %xmm4	# tmp584, tmp585
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp586
	movq	%xmm2, (%rsp)	# tmp579, %sfp
	movdqa	%xmm4, %xmm2	# tmp585, tmp585
	movdqa	%xmm1, %xmm4	# tmp586, tmp586
	movdqa	%xmm10, %xmm1	# tmp377, tmp596
	por	%xmm2, %xmm4	# tmp585, tmp586
	movdqa	%xmm8, %xmm2	# vect__145.225, vect__145.225
	movdqa	%xmm9, %xmm8	# tmp389, tmp619
	pcmpeqb	%xmm10, %xmm2	# tmp377, tmp591
	movq	%xmm4, 8(%rsp)	# tmp586, %sfp
	movdqa	%xmm12, %xmm4	# vect_cst__201, tmp607
	pcmpeqb	%xmm10, %xmm2	# tmp377, tmp593
	pcmpgtb	%xmm2, %xmm1	# tmp593, tmp596
	movdqa	%xmm2, %xmm5	# tmp593, tmp597
	punpcklbw	%xmm1, %xmm5	# tmp596, tmp597
	punpcklbw	%xmm1, %xmm2	# tmp596, tmp601
	pcmpgtw	%xmm5, %xmm3	# tmp597, tmp605
	pshufd	$78, %xmm2, %xmm2	#, tmp601, tmp601
	movdqa	%xmm5, %xmm1	# tmp597, tmp606
	pcmpgtw	%xmm2, %xmm8	# tmp601, tmp619
	movdqa	%xmm2, %xmm15	# tmp601, tmp620
	punpcklwd	%xmm3, %xmm1	# tmp605, tmp606
	punpcklwd	%xmm3, %xmm5	# tmp605, tmp613
	movdqa	%xmm12, %xmm3	# vect_cst__201, tmp621
	pand	%xmm1, %xmm4	# tmp606, tmp607
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp608
	pshufd	$78, %xmm5, %xmm5	#, tmp613, tmp613
	por	%xmm4, %xmm1	# tmp607, tmp608
	pand	%xmm5, %xmm13	# tmp613, tmp614
	pandn	%xmm11, %xmm5	# vect_cst__202, tmp615
	movq	%xmm1, 16(%rsp)	# tmp608, %sfp
	movdqa	%xmm8, %xmm1	# tmp619, tmp619
	movq	80(%rsp), %xmm8	# %sfp, tmp674
	por	%xmm13, %xmm5	# tmp614, vect_patt_118.229
	punpcklwd	%xmm1, %xmm15	# tmp619, tmp620
	punpcklwd	%xmm1, %xmm2	# tmp619, tmp627
	movdqa	%xmm14, %xmm1	# vect__146.233, vect__146.233
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp634
	pand	%xmm15, %xmm3	# tmp620, tmp621
	pandn	%xmm11, %xmm15	# vect_cst__202, tmp622
	por	%xmm3, %xmm15	# tmp621, vect_patt_118.229
	movdqa	%xmm10, %xmm3	# tmp377, tmp639
	pand	%xmm8, %xmm0	# tmp674, vect__147.241
	pshufd	$78, %xmm2, %xmm2	#, tmp627, tmp627
	pcmpeqb	%xmm10, %xmm0	# tmp377, tmp677
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp628
	pcmpeqb	%xmm10, %xmm1	# tmp377, tmp636
	pand	%xmm2, %xmm13	# tmp627, tmp628
	pandn	%xmm11, %xmm2	# vect_cst__202, tmp629
	por	%xmm13, %xmm2	# tmp628, vect_patt_118.229
	pcmpeqb	%xmm10, %xmm0	# tmp377, tmp679
	pcmpgtb	%xmm1, %xmm3	# tmp636, tmp639
	movdqa	%xmm1, %xmm4	# tmp636, tmp640
	punpcklbw	%xmm3, %xmm4	# tmp639, tmp640
	punpcklbw	%xmm3, %xmm1	# tmp639, tmp644
	movdqa	%xmm9, %xmm3	# tmp389, tmp648
	pcmpgtw	%xmm4, %xmm3	# tmp640, tmp648
	movdqa	%xmm4, %xmm14	# tmp640, tmp649
	pshufd	$78, %xmm1, %xmm1	#, tmp644, tmp644
	movdqa	%xmm1, %xmm13	# tmp644, tmp663
	punpcklwd	%xmm3, %xmm4	# tmp648, tmp656
	punpcklwd	%xmm3, %xmm14	# tmp648, tmp649
	movdqa	%xmm12, %xmm3	# vect_cst__201, tmp657
	pshufd	$78, %xmm4, %xmm4	#, tmp656, tmp656
	pand	%xmm14, %xmm7	# tmp649, tmp650
	pandn	%xmm11, %xmm14	# vect_cst__202, tmp651
	pand	%xmm4, %xmm3	# tmp656, tmp657
	pandn	%xmm11, %xmm4	# vect_cst__202, tmp658
	por	%xmm7, %xmm14	# tmp650, vect_patt_127.237
	por	%xmm3, %xmm4	# tmp657, vect_patt_127.237
	movdqa	%xmm9, %xmm3	# tmp389, tmp662
	movdqa	%xmm12, %xmm7	# vect_cst__201, tmp664
	pcmpgtw	%xmm1, %xmm3	# tmp644, tmp662
	punpcklwd	%xmm3, %xmm13	# tmp662, tmp663
	punpcklwd	%xmm3, %xmm1	# tmp662, tmp670
	movdqa	%xmm12, %xmm3	# vect_cst__201, tmp671
	pand	%xmm13, %xmm7	# tmp663, tmp664
	pandn	%xmm11, %xmm13	# vect_cst__202, tmp665
	pshufd	$78, %xmm1, %xmm1	#, tmp670, tmp670
	por	%xmm7, %xmm13	# tmp664, tmp665
	movdqa	%xmm10, %xmm7	# tmp377, tmp682
	pand	%xmm1, %xmm3	# tmp670, tmp671
	pcmpgtb	%xmm0, %xmm7	# tmp679, tmp682
	pandn	%xmm11, %xmm1	# vect_cst__202, tmp672
	movq	%xmm13, 24(%rsp)	# tmp665, %sfp
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp693
	por	%xmm3, %xmm1	# tmp671, vect_patt_127.237
	movdqa	%xmm0, %xmm3	# tmp679, tmp683
	punpcklbw	%xmm7, %xmm3	# tmp682, tmp683
	punpcklbw	%xmm7, %xmm0	# tmp682, tmp687
	movdqa	%xmm9, %xmm7	# tmp389, tmp691
	pcmpgtw	%xmm3, %xmm7	# tmp683, tmp691
	movdqa	%xmm3, %xmm8	# tmp683, tmp692
	pshufd	$78, %xmm0, %xmm0	#, tmp687, tmp687
	punpcklwd	%xmm7, %xmm8	# tmp691, tmp692
	punpcklwd	%xmm7, %xmm3	# tmp691, tmp699
	movdqa	%xmm12, %xmm7	# vect_cst__201, tmp700
	pand	%xmm8, %xmm13	# tmp692, tmp693
	pandn	%xmm11, %xmm8	# vect_cst__202, tmp694
	pshufd	$78, %xmm3, %xmm3	#, tmp699, tmp699
	por	%xmm13, %xmm8	# tmp693, vect_patt_129.245
	movdqa	%xmm9, %xmm13	# tmp389, tmp705
	pand	%xmm3, %xmm7	# tmp699, tmp700
	pcmpgtw	%xmm0, %xmm13	# tmp687, tmp705
	pandn	%xmm11, %xmm3	# vect_cst__202, tmp701
	por	%xmm7, %xmm3	# tmp700, vect_patt_129.245
	movdqa	%xmm0, %xmm7	# tmp687, tmp706
	punpcklwd	%xmm13, %xmm7	# tmp705, tmp706
	movq	%xmm13, %r10	# tmp705, tmp705
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp707
	pand	%xmm7, %xmm13	# tmp706, tmp707
	pandn	%xmm11, %xmm7	# vect_cst__202, tmp708
	por	%xmm13, %xmm7	# tmp707, vect_patt_129.245
	movq	%r10, %xmm13	# tmp705, tmp705
	punpcklwd	%xmm13, %xmm0	# tmp705, tmp713
	movdqa	%xmm12, %xmm13	# vect_cst__201, tmp714
	pshufd	$78, %xmm0, %xmm0	#, tmp713, tmp713
	pand	%xmm0, %xmm13	# tmp713, tmp714
	pandn	%xmm11, %xmm0	# vect_cst__202, tmp715
	por	%xmm13, %xmm0	# tmp714, vect_patt_129.245
	movq	%rdx, %xmm13	# vect_patt_92.189, vect_patt_92.189
	pshufd	$0xe5, %xmm13, %xmm13	# vect_patt_92.189, tmp953
	movd	%xmm13, 0(%rbp)	# tmp953, MEM[(unsigned int *)_317]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_92.189, tmp955
	movd	%xmm6, (%r12)	# vect_patt_92.189, MEM[(unsigned int *)_345]
	movd	%xmm13, 0(%r13)	# tmp955, MEM[(unsigned int *)_93]
	movq	%rax, %xmm13	# vect_patt_92.189, vect_patt_92.189
	movl	%eax, (%r14)	# vect_patt_92.189, MEM[(unsigned int *)_118]
	pshufd	$0xe5, %xmm13, %xmm13	# vect_patt_92.189, tmp957
	movd	%xmm13, (%r15)	# tmp957, MEM[(unsigned int *)_101]
	movq	-120(%rsp), %xmm6	# %sfp, vect_patt_92.189
	movd	%xmm6, (%r8)	# vect_patt_92.189, MEM[(unsigned int *)_81]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_92.189, tmp960
	movq	-112(%rsp), %xmm6	# %sfp, vect_patt_101.197
	movd	%xmm13, (%rdi)	# tmp960, MEM[(unsigned int *)_77]
	movd	%xmm6, 4(%rbx)	# vect_patt_101.197, MEM[(unsigned int *)_297 + 4B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_101.197, tmp962
	movq	-104(%rsp), %xmm6	# %sfp, vect_patt_101.197
	movd	%xmm13, 4(%rbp)	# tmp962, MEM[(unsigned int *)_317 + 4B]
	movd	%xmm6, 4(%r12)	# vect_patt_101.197, MEM[(unsigned int *)_345 + 4B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_101.197, tmp964
	movq	-96(%rsp), %xmm6	# %sfp, vect_patt_101.197
	movd	%xmm13, 4(%r13)	# tmp964, MEM[(unsigned int *)_93 + 4B]
	movd	%xmm6, 4(%r14)	# vect_patt_101.197, MEM[(unsigned int *)_118 + 4B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_101.197, tmp966
	movq	-88(%rsp), %xmm6	# %sfp, vect_patt_101.197
	movd	%xmm13, 4(%r15)	# tmp966, MEM[(unsigned int *)_101 + 4B]
	movd	%xmm6, 4(%r8)	# vect_patt_101.197, MEM[(unsigned int *)_81 + 4B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_101.197, tmp968
	movq	-80(%rsp), %xmm6	# %sfp, vect_patt_103.205
	movd	%xmm13, 4(%rdi)	# tmp968, MEM[(unsigned int *)_77 + 4B]
	movd	%xmm6, 8(%rbx)	# vect_patt_103.205, MEM[(unsigned int *)_297 + 8B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_103.205, tmp970
	movq	-72(%rsp), %xmm6	# %sfp, vect_patt_103.205
	movd	%xmm13, 8(%rbp)	# tmp970, MEM[(unsigned int *)_317 + 8B]
	movd	%xmm6, 8(%r12)	# vect_patt_103.205, MEM[(unsigned int *)_345 + 8B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_103.205, tmp972
	movq	-64(%rsp), %xmm6	# %sfp, vect_patt_103.205
	movd	%xmm13, 8(%r13)	# tmp972, MEM[(unsigned int *)_93 + 8B]
	movd	%xmm6, 8(%r14)	# vect_patt_103.205, MEM[(unsigned int *)_118 + 8B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_103.205, tmp974
	movq	-56(%rsp), %xmm6	# %sfp, vect_patt_103.205
	movd	%xmm13, 8(%r15)	# tmp974, MEM[(unsigned int *)_101 + 8B]
	movd	%xmm6, 8(%r8)	# vect_patt_103.205, MEM[(unsigned int *)_81 + 8B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_103.205, tmp976
	movq	-48(%rsp), %xmm6	# %sfp, vect_patt_113.213
	movd	%xmm13, 8(%rdi)	# tmp976, MEM[(unsigned int *)_77 + 8B]
	movd	%xmm6, 12(%rbx)	# vect_patt_113.213, MEM[(unsigned int *)_297 + 12B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_113.213, tmp978
	movq	-40(%rsp), %xmm6	# %sfp, vect_patt_113.213
	movd	%xmm13, 12(%rbp)	# tmp978, MEM[(unsigned int *)_317 + 12B]
	movd	%xmm6, 12(%r12)	# vect_patt_113.213, MEM[(unsigned int *)_345 + 12B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_113.213, tmp980
	movd	%xmm13, 12(%r13)	# tmp980, MEM[(unsigned int *)_93 + 12B]
	movq	-32(%rsp), %xmm6	# %sfp, vect_patt_113.213
	movd	%xmm6, 12(%r14)	# vect_patt_113.213, MEM[(unsigned int *)_118 + 12B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_113.213, tmp982
	movq	-24(%rsp), %xmm6	# %sfp, vect_patt_113.213
	movd	%xmm13, 12(%r15)	# tmp982, MEM[(unsigned int *)_101 + 12B]
	movd	%xmm6, 12(%r8)	# vect_patt_113.213, MEM[(unsigned int *)_81 + 12B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_113.213, tmp984
	movq	-16(%rsp), %xmm6	# %sfp, vect_patt_115.221
	movd	%xmm13, 12(%rdi)	# tmp984, MEM[(unsigned int *)_77 + 12B]
	movd	%xmm6, 16(%rbx)	# vect_patt_115.221, MEM[(unsigned int *)_297 + 16B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_115.221, tmp986
	movq	-8(%rsp), %xmm6	# %sfp, vect_patt_115.221
	movd	%xmm13, 16(%rbp)	# tmp986, MEM[(unsigned int *)_317 + 16B]
	movd	%xmm6, 16(%r12)	# vect_patt_115.221, MEM[(unsigned int *)_345 + 16B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_115.221, tmp988
	movq	(%rsp), %xmm6	# %sfp, vect_patt_115.221
	movd	%xmm13, 16(%r13)	# tmp988, MEM[(unsigned int *)_93 + 16B]
	movd	%xmm6, 16(%r14)	# vect_patt_115.221, MEM[(unsigned int *)_118 + 16B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_115.221, tmp990
	movq	8(%rsp), %xmm6	# %sfp, vect_patt_115.221
	movd	%xmm13, 16(%r15)	# tmp990, MEM[(unsigned int *)_101 + 16B]
	movd	%xmm6, 16(%r8)	# vect_patt_115.221, MEM[(unsigned int *)_81 + 16B]
	pshufd	$0xe5, %xmm6, %xmm13	# vect_patt_115.221, tmp992
	movq	16(%rsp), %xmm6	# %sfp, vect_patt_118.229
	movd	%xmm13, 16(%rdi)	# tmp992, MEM[(unsigned int *)_77 + 16B]
	movd	%xmm6, 20(%rbx)	# vect_patt_118.229, MEM[(unsigned int *)_297 + 20B]
	pshufd	$0xe5, %xmm6, %xmm6	# vect_patt_118.229, tmp994
	movd	%xmm6, 20(%rbp)	# tmp994, MEM[(unsigned int *)_317 + 20B]
	movd	%xmm5, 20(%r12)	# vect_patt_118.229, MEM[(unsigned int *)_345 + 20B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_118.229, tmp995
	movd	%xmm5, 20(%r13)	# tmp995, MEM[(unsigned int *)_93 + 20B]
	pshufd	$0xe5, %xmm15, %xmm5	# vect_patt_118.229, tmp996
	movd	%xmm15, 20(%r14)	# vect_patt_118.229, MEM[(unsigned int *)_118 + 20B]
	movd	%xmm5, 20(%r15)	# tmp996, MEM[(unsigned int *)_101 + 20B]
	pshufd	$0xe5, %xmm2, %xmm5	# vect_patt_118.229, tmp997
	movd	%xmm2, 20(%r8)	# vect_patt_118.229, MEM[(unsigned int *)_81 + 20B]
	movd	%xmm5, 20(%rdi)	# tmp997, MEM[(unsigned int *)_77 + 20B]
	pshufd	$0xe5, %xmm14, %xmm5	# vect_patt_127.237, tmp998
	movd	%xmm14, 24(%rbx)	# vect_patt_127.237, MEM[(unsigned int *)_297 + 24B]
	movd	%xmm5, 24(%rbp)	# tmp998, MEM[(unsigned int *)_317 + 24B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_127.237, tmp999
	movd	%xmm4, 24(%r12)	# vect_patt_127.237, MEM[(unsigned int *)_345 + 24B]
	movd	%xmm5, 24(%r13)	# tmp999, MEM[(unsigned int *)_93 + 24B]
	movq	24(%rsp), %xmm5	# %sfp, vect_patt_127.237
	movd	%xmm5, 24(%r14)	# vect_patt_127.237, MEM[(unsigned int *)_118 + 24B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_127.237, tmp1000
	movd	%xmm5, 24(%r15)	# tmp1000, MEM[(unsigned int *)_101 + 24B]
	pshufd	$0xe5, %xmm1, %xmm5	# vect_patt_127.237, tmp1001
	movd	%xmm1, 24(%r8)	# vect_patt_127.237, MEM[(unsigned int *)_81 + 24B]
	movd	%xmm5, 24(%rdi)	# tmp1001, MEM[(unsigned int *)_77 + 24B]
	pshufd	$0xe5, %xmm8, %xmm5	# vect_patt_129.245, tmp1002
	movd	%xmm8, 28(%rbx)	# vect_patt_129.245, MEM[(unsigned int *)_297 + 28B]
	addq	%r9, %rbx	# _368, ivtmp.261
	movd	%xmm5, 28(%rbp)	# tmp1002, MEM[(unsigned int *)_317 + 28B]
	pshufd	$0xe5, %xmm3, %xmm5	# vect_patt_129.245, tmp1003
	addq	%r9, %rbp	# _368, ivtmp.265
	movd	%xmm3, 28(%r12)	# vect_patt_129.245, MEM[(unsigned int *)_345 + 28B]
	addq	%r9, %r12	# _368, ivtmp.266
	movd	%xmm5, 28(%r13)	# tmp1003, MEM[(unsigned int *)_93 + 28B]
	addq	%r9, %r13	# _368, ivtmp.267
	movd	%xmm7, 28(%r14)	# vect_patt_129.245, MEM[(unsigned int *)_118 + 28B]
	pshufd	$0xe5, %xmm7, %xmm7	# vect_patt_129.245, tmp1004
	addq	%r9, %r14	# _368, ivtmp.268
	movd	%xmm7, 28(%r15)	# tmp1004, MEM[(unsigned int *)_101 + 28B]
	addq	%r9, %r15	# _368, ivtmp.269
	movd	%xmm0, 28(%r8)	# vect_patt_129.245, MEM[(unsigned int *)_81 + 28B]
	pshufd	$0xe5, %xmm0, %xmm0	# vect_patt_129.245, tmp1005
	addq	%r9, %r8	# _368, ivtmp.270
	movd	%xmm0, 28(%rdi)	# tmp1005, MEM[(unsigned int *)_77 + 28B]
	addq	%r9, %rdi	# _368, ivtmp.271
	cmpq	%rcx, %rsi	# _18, ivtmp.258
	jne	.L179	#,
.L177:
# printk.c:28: }
	addq	$88, %rsp	#,
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
.L178:
	.cfi_restore_state
	leaq	(%rdi,%r10), %rax	#, ivtmp.255
	leaq	16(%rdx), %rdi	#, _4
.L190:
# printk.c:20: 				*addr =FRcolor;
	cmpb	$0, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	movl	%r8d, %esi	# FRcolor, cstore_138
	cmovns	%r9d, %esi	# BKcolor,, cstore_138
	movl	%esi, (%rax)	# cstore_138, MEM[(unsigned int *)_141]
	movl	%r8d, %esi	# FRcolor, cstore_104
	testb	$64, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_104
	movl	%esi, 4(%rax)	# cstore_104, MEM[(unsigned int *)_141 + 4B]
	movl	%r8d, %esi	# FRcolor, cstore_52
	testb	$32, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_52
	movl	%esi, 8(%rax)	# cstore_52, MEM[(unsigned int *)_141 + 8B]
	movl	%r8d, %esi	# FRcolor, cstore_35
	testb	$16, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_35
	movl	%esi, 12(%rax)	# cstore_35, MEM[(unsigned int *)_141 + 12B]
	movl	%r8d, %esi	# FRcolor, cstore_8
	testb	$8, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_8
	movl	%esi, 16(%rax)	# cstore_8, MEM[(unsigned int *)_141 + 16B]
	movl	%r8d, %esi	# FRcolor, cstore_37
	testb	$4, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_37
	movl	%esi, 20(%rax)	# cstore_37, MEM[(unsigned int *)_141 + 20B]
	movl	%r8d, %esi	# FRcolor, cstore_49
	testb	$2, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	cmove	%r9d, %esi	# BKcolor,, cstore_49
	movl	%esi, 24(%rax)	# cstore_49, MEM[(unsigned int *)_141 + 24B]
# printk.c:19: 			if(*fontp & testval){
	testb	$1, (%rdx)	#, MEM[(unsigned char *)fontp_136]
	je	.L188	#,
# printk.c:26: 		fontp++;
	addq	$1, %rdx	#, fontp
	movl	%r8d, 28(%rax)	# FRcolor, MEM[(unsigned int *)_141 + 28B]
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rcx, %rax	# _148, ivtmp.255
	cmpq	%rdx, %rdi	# fontp, _4
	jne	.L190	#,
	jmp	.L177	#
	.p2align 4,,10
	.p2align 3
.L188:
# printk.c:26: 		fontp++;
	addq	$1, %rdx	#, fontp
	movl	%r9d, 28(%rax)	# BKcolor, MEM[(unsigned int *)_141 + 28B]
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rcx, %rax	# _148, ivtmp.255
	cmpq	%rdx, %rdi	# fontp, _4
	jne	.L190	#,
	jmp	.L177	#
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
.L243:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L243, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.L243(%rip), %r15	#, tmp82
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	addq	%r11, %r15	#, tmp82
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movabsq	$Pos@GOTOFF, %r14	#, tmp817
# printk.c:80: void clear_screen(unsigned int FRcolor,unsigned int BKcolor) {
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
	subq	$208, %rsp	#,
	.cfi_def_cfa_offset 264
# printk.c:81:     int cols = Pos.XResolution / Pos.XCharSize;
	movl	(%r14,%r15), %eax	# Pos.XResolution, Pos.XResolution
	cltd
	idivl	16(%r14,%r15)	# Pos.XCharSize
	movl	%eax, 200(%rsp)	# Pos.XResolution, %sfp
# printk.c:82:     int rows = Pos.YResolution / Pos.YCharSize;
	movl	4(%r14,%r15), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	20(%r14,%r15)	# Pos.YCharSize
# printk.c:84:     for (int y = 0; y < rows; y++) {
	testl	%eax, %eax	# tmp348
	jle	.L208	#,
	movabsq	$512+font_ascii@GOTOFF, %rbx	#, tmp815
	movl	%edi, %r13d	# tmp834, FRcolor
	movabsq	$528+font_ascii@GOTOFF, %rdx	#, tmp822
	movabsq	$.LC3@GOTOFF, %rdi	#, tmp826
	movq	%rbx, 144(%rsp)	# tmp815, %sfp
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rdx,%r15), %rbx	#, tmp823
	movl	200(%rsp), %edx	# %sfp,
	movq	%rbx, 56(%rsp)	# tmp823, %sfp
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movq	24(%r14,%r15), %r12	# Pos.FB_addr, _10
	movabsq	$.LC8@GOTOFF, %rbx	#, tmp825
	movq	%rbx, 160(%rsp)	# tmp825, %sfp
	movabsq	$.LC9@GOTOFF, %rbx	#, tmp827
# printk.c:84:     for (int y = 0; y < rows; y++) {
	movl	$0, 140(%rsp)	#, %sfp
	movq	%rdi, 168(%rsp)	# tmp826, %sfp
	movq	%rbx, 176(%rsp)	# tmp827, %sfp
	testl	%edx, %edx	#
	jle	.L208	#,
	movq	%r12, 128(%rsp)	# _10, %sfp
	movl	%r13d, %r12d	# FRcolor, FRcolor
	movl	%esi, %r13d	# BKcolor, BKcolor
.L209:
	movq	144(%rsp), %rbx	# %sfp, tmp815
	movl	%eax, 204(%rsp)	# tmp348, %sfp
	movabsq	$.LC11@GOTOFF, %rsi	#, tmp829
	movl	%r13d, %eax	# BKcolor, BKcolor
# printk.c:85:         for (int x = 0; x < cols; x++) {
	movl	$0, 136(%rsp)	#, %sfp
	leaq	(%rbx,%r15), %rdi	#, tmp370
	movq	%rsi, 192(%rsp)	# tmp829, %sfp
	movabsq	$.LC10@GOTOFF, %rbx	#, tmp828
	movq	%rdi, 64(%rsp)	# tmp370, %sfp
	addq	$15, %rdi	#, tmp378
	movq	%rdi, 152(%rsp)	# tmp378, %sfp
	movq	%rbx, 184(%rsp)	# tmp828, %sfp
.L224:
# printk.c:86:             putchar(Pos.FB_addr, Pos.XResolution, 
	movslq	(%r14,%r15), %rbx	# Pos.XResolution,
	movl	140(%rsp), %r9d	# %sfp, tmp354
	movl	$31, %r13d	#, tmp366
	movl	$0, %ebp	#, tmp374
	imull	20(%r14,%r15), %r9d	# Pos.YCharSize, tmp354
	movl	136(%rsp), %r10d	# %sfp, tmp358
	imull	16(%r14,%r15), %r10d	# Pos.XCharSize, tmp358
	movq	128(%rsp), %rdi	# %sfp, _10
	leaq	0(,%rbx,4), %rdx	#, _227
	movq	64(%rsp), %r8	# %sfp, tmp370
	imull	%ebx, %r9d	# _104, tmp355
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%r10d, %r10	# tmp358, tmp359
	movslq	%r9d, %r9	# tmp355, tmp356
	addq	%r10, %r9	# tmp359, tmp360
	movq	%rbx, %r10	# _226, tmp362
	salq	$4, %r10	#, tmp362
	salq	$2, %r9	#, _234
	subq	%rbx, %r10	# _226, tmp363
	salq	$2, %r10	#, tmp364
	testl	%ebx, %ebx	# _104
	leaq	31(%r10), %r11	#, tmp365
	cmovs	%r13, %r11	# tmp365,, tmp366, tmp365
	addq	%r9, %r11	# _234, tmp367
	addq	%rdi, %r11	# _10, tmp368
	cmpq	%r8, %r11	# tmp370, tmp368
	setb	%r11b	#, tmp372
	testl	%ebx, %ebx	# _104
	cmovns	%rbp, %r10	# tmp364,, tmp374, tmp373
	addq	%r9, %r10	# _234, tmp375
	addq	%rdi, %r10	# _10, tmp376
	cmpq	%r10, 152(%rsp)	# tmp376, %sfp
	setb	%r10b	#, tmp380
	orb	%r11b, %r10b	# tmp372, tmp836
	je	.L211	#,
	leaq	31(%rdx), %r10	#, tmp382
	cmpq	$62, %r10	#, tmp382
	jbe	.L211	#,
	leaq	(%rdi,%r9), %rsi	#, ivtmp.363
	leaq	-512(%r8), %rdi	#, ivtmp.367
	salq	$5, %rbx	#, _226
	leaq	(%rsi,%rdx), %r9	#, ivtmp.368
	movq	%rbx, %rcx	# _226, _426
	movd	%r12d, %xmm2	# FRcolor, FRcolor
	leaq	(%r9,%rdx), %r8	#, ivtmp.369
	pshufd	$0xe0, %xmm2, %xmm11	# FRcolor, vect_cst__273
	movd	%eax, %xmm2	# BKcolor, BKcolor
	leaq	(%r8,%rdx), %r13	#, ivtmp.370
	pshufd	$0xe0, %xmm2, %xmm10	# BKcolor, vect_cst__274
# printk.c:19: 			if(*fontp & testval){
	pxor	%xmm9, %xmm9	# tmp388
	leaq	0(%r13,%rdx), %rbp	#, ivtmp.371
	pxor	%xmm15, %xmm15	# tmp400
	leaq	0(%rbp,%rdx), %rbx	#, ivtmp.372
	leaq	(%rbx,%rdx), %r11	#, ivtmp.373
	leaq	(%r11,%rdx), %r10	#, ivtmp.374
	movq	64(%rsp), %rdx	# %sfp, tmp370
	subq	$496, %rdx	#, _393
	movq	%rdx, -120(%rsp)	# _393, %sfp
	movq	160(%rsp), %rdx	# %sfp, tmp825
	movq	(%rdx,%r15), %rdx	#, tmp427
	movq	%rdx, 72(%rsp)	# tmp427, %sfp
	movq	168(%rsp), %rdx	# %sfp, tmp826
	movq	(%rdx,%r15), %rdx	#, tmp470
	movq	%rdx, 80(%rsp)	# tmp470, %sfp
	movq	176(%rsp), %rdx	# %sfp, tmp827
	movq	(%rdx,%r15), %rdx	#, tmp513
	movq	%rdx, 88(%rsp)	# tmp513, %sfp
	movq	184(%rsp), %rdx	# %sfp, tmp828
	movq	(%rdx,%r15), %rdx	#, tmp556
	movq	%rdx, 96(%rsp)	# tmp556, %sfp
	movq	192(%rsp), %rdx	# %sfp, tmp829
	movq	(%rdx,%r15), %rdx	#, tmp599
	movq	%rdx, 104(%rsp)	# tmp599, %sfp
	movabsq	$.LC12@GOTOFF, %rdx	#, tmp813
	movq	(%rdx,%r15), %rdx	#, tmp642
	movq	%rdx, 112(%rsp)	# tmp642, %sfp
	movabsq	$.LC13@GOTOFF, %rdx	#, tmp814
	movq	(%rdx,%r15), %rdx	#, tmp685
	movq	%rdx, 120(%rsp)	# tmp685, %sfp
	movl	%r12d, %edx	# FRcolor, FRcolor
	movl	%eax, %r12d	# BKcolor, BKcolor
	movq	-120(%rsp), %rax	# %sfp, _393
.L212:
	movdqa	%xmm9, %xmm0	# tmp388, tmp389
	movdqa	%xmm9, %xmm3	# tmp388, tmp392
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp424
# printk.c:19: 			if(*fontp & testval){
	movq	512(%rdi), %xmm2	# MEM <vector(8) unsigned char> [(unsigned char *)_60 + 512B], vect__46.283
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp403
	movdqa	%xmm15, %xmm12	# tmp400, tmp501
	movdqa	%xmm11, %xmm13	# vect_cst__273, tmp496
	addq	$8, %rdi	#, ivtmp.367
# printk.c:19: 			if(*fontp & testval){
	pcmpgtb	%xmm2, %xmm0	# vect__46.283, tmp389
	pcmpgtb	%xmm0, %xmm3	# tmp389, tmp392
	movdqa	%xmm0, %xmm1	# tmp389, tmp393
	punpcklbw	%xmm3, %xmm1	# tmp392, tmp393
	punpcklbw	%xmm3, %xmm0	# tmp392, tmp397
	movdqa	%xmm15, %xmm3	# tmp400, tmp401
	pcmpgtw	%xmm1, %xmm3	# tmp393, tmp401
	movdqa	%xmm1, %xmm14	# tmp393, tmp402
	pshufd	$78, %xmm0, %xmm0	#, tmp397, tmp397
	movdqa	%xmm0, %xmm7	# tmp397, tmp416
	punpcklwd	%xmm3, %xmm1	# tmp401, tmp409
	punpcklwd	%xmm3, %xmm14	# tmp401, tmp402
	movdqa	%xmm11, %xmm3	# vect_cst__273, tmp410
	pshufd	$78, %xmm1, %xmm1	#, tmp409, tmp409
	pand	%xmm14, %xmm4	# tmp402, tmp403
	pandn	%xmm10, %xmm14	# vect_cst__274, tmp404
	pand	%xmm1, %xmm3	# tmp409, tmp410
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp411
	por	%xmm4, %xmm14	# tmp403, vect_patt_210.288
	por	%xmm3, %xmm1	# tmp410, tmp411
	movdqa	%xmm15, %xmm3	# tmp400, tmp415
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp417
	movd	%xmm14, (%rsi)	# vect_patt_210.288, MEM[(unsigned int *)_156]
	pcmpgtw	%xmm0, %xmm3	# tmp397, tmp415
	movq	%xmm1, -120(%rsp)	# tmp411, %sfp
	punpcklwd	%xmm3, %xmm0	# tmp415, tmp423
	punpcklwd	%xmm3, %xmm7	# tmp415, tmp416
	movdqa	%xmm9, %xmm3	# tmp388, tmp435
	pshufd	$78, %xmm0, %xmm0	#, tmp423, tmp423
	movdqa	%xmm7, %xmm1	# tmp416, tmp416
	pand	%xmm7, %xmm4	# tmp416, tmp417
	pand	%xmm0, %xmm5	# tmp423, tmp424
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp425
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp418
	por	%xmm5, %xmm0	# tmp424, tmp425
	movq	72(%rsp), %xmm5	# %sfp, vect__13.292
	movdqa	%xmm1, %xmm7	# tmp418, tmp418
	movq	%xmm0, -104(%rsp)	# tmp425, %sfp
	por	%xmm4, %xmm7	# tmp417, tmp418
	movdqa	%xmm15, %xmm4	# tmp400, tmp444
	pand	%xmm2, %xmm5	# vect__46.283, vect__13.292
	movq	%xmm7, -112(%rsp)	# tmp418, %sfp
	movdqa	%xmm15, %xmm7	# tmp400, tmp544
	movdqa	%xmm5, %xmm0	# vect__13.292, vect__13.292
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp446
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp430
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp432
	pcmpgtb	%xmm0, %xmm3	# tmp432, tmp435
	movdqa	%xmm0, %xmm6	# tmp432, tmp436
	punpcklbw	%xmm3, %xmm6	# tmp435, tmp436
	punpcklbw	%xmm3, %xmm0	# tmp435, tmp440
	pcmpgtw	%xmm6, %xmm4	# tmp436, tmp444
	movdqa	%xmm6, %xmm1	# tmp436, tmp436
	movdqa	%xmm6, %xmm3	# tmp436, tmp445
	movdqa	%xmm11, %xmm6	# vect_cst__273, tmp453
	pshufd	$78, %xmm0, %xmm0	#, tmp440, tmp440
	punpcklwd	%xmm4, %xmm1	# tmp444, tmp452
	punpcklwd	%xmm4, %xmm3	# tmp444, tmp445
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp460
	pshufd	$78, %xmm1, %xmm1	#, tmp452, tmp452
	pand	%xmm3, %xmm5	# tmp445, tmp446
	pandn	%xmm10, %xmm3	# vect_cst__274, tmp447
	pand	%xmm1, %xmm6	# tmp452, tmp453
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp454
	por	%xmm5, %xmm3	# tmp446, tmp447
	movdqa	%xmm1, %xmm5	# tmp454, tmp454
	movq	%xmm3, -96(%rsp)	# tmp447, %sfp
	por	%xmm6, %xmm5	# tmp453, tmp454
	movdqa	%xmm15, %xmm6	# tmp400, tmp458
	pcmpgtw	%xmm0, %xmm6	# tmp440, tmp458
	movq	%xmm5, -88(%rsp)	# tmp454, %sfp
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp489
	movdqa	%xmm6, %xmm3	# tmp458, tmp458
	movdqa	%xmm0, %xmm6	# tmp440, tmp459
	punpcklwd	%xmm3, %xmm6	# tmp458, tmp459
	punpcklwd	%xmm3, %xmm0	# tmp458, tmp466
	movdqa	%xmm9, %xmm3	# tmp388, tmp478
	movdqa	%xmm6, %xmm1	# tmp459, tmp459
	pand	%xmm6, %xmm4	# tmp459, tmp460
	pshufd	$78, %xmm0, %xmm0	#, tmp466, tmp466
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp461
	movdqa	%xmm1, %xmm6	# tmp461, tmp461
	por	%xmm4, %xmm6	# tmp460, tmp461
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp467
	pand	%xmm0, %xmm4	# tmp466, tmp467
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp468
	movq	%xmm6, -80(%rsp)	# tmp461, %sfp
	movq	96(%rsp), %xmm6	# %sfp, vect__36.316
	movdqa	%xmm4, %xmm1	# tmp467, tmp467
	movdqa	%xmm0, %xmm4	# tmp468, tmp468
	movq	80(%rsp), %xmm0	# %sfp, vect__52.300
	por	%xmm1, %xmm4	# tmp467, tmp468
	pand	%xmm2, %xmm6	# vect__46.283, vect__36.316
	pand	%xmm2, %xmm0	# vect__46.283, vect__52.300
	movq	%xmm4, -72(%rsp)	# tmp468, %sfp
	movdqa	%xmm15, %xmm4	# tmp400, tmp487
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp473
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp475
	pcmpgtb	%xmm0, %xmm3	# tmp475, tmp478
	movdqa	%xmm0, %xmm1	# tmp475, tmp479
	punpcklbw	%xmm3, %xmm1	# tmp478, tmp479
	punpcklbw	%xmm3, %xmm0	# tmp478, tmp483
	pcmpgtw	%xmm1, %xmm4	# tmp479, tmp487
	pshufd	$78, %xmm0, %xmm0	#, tmp483, tmp483
	movdqa	%xmm1, %xmm3	# tmp479, tmp488
	pcmpgtw	%xmm0, %xmm12	# tmp483, tmp501
	movdqa	%xmm0, %xmm8	# tmp483, tmp502
	punpcklwd	%xmm4, %xmm3	# tmp487, tmp488
	punpcklwd	%xmm4, %xmm1	# tmp487, tmp495
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp503
	pand	%xmm3, %xmm5	# tmp488, tmp489
	pandn	%xmm10, %xmm3	# vect_cst__274, tmp490
	pshufd	$78, %xmm1, %xmm1	#, tmp495, tmp495
	por	%xmm5, %xmm3	# tmp489, tmp490
	pand	%xmm1, %xmm13	# tmp495, tmp496
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp497
	movq	%xmm3, -64(%rsp)	# tmp490, %sfp
	movdqa	%xmm12, %xmm3	# tmp501, tmp501
	por	%xmm13, %xmm1	# tmp496, tmp497
	movq	88(%rsp), %xmm12	# %sfp, vect__48.308
	punpcklwd	%xmm3, %xmm0	# tmp501, tmp509
	movdqa	%xmm11, %xmm13	# vect_cst__273, tmp510
	punpcklwd	%xmm3, %xmm8	# tmp501, tmp502
	movq	%xmm1, -56(%rsp)	# tmp497, %sfp
	pshufd	$78, %xmm0, %xmm0	#, tmp509, tmp509
	pand	%xmm2, %xmm12	# vect__46.283, vect__48.308
	movdqa	%xmm8, %xmm1	# tmp502, tmp502
	pand	%xmm0, %xmm13	# tmp509, tmp510
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp511
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp504
	por	%xmm13, %xmm0	# tmp510, tmp511
	movdqa	%xmm9, %xmm13	# tmp388, tmp521
	pand	%xmm8, %xmm4	# tmp502, tmp503
	movq	%xmm0, -40(%rsp)	# tmp511, %sfp
	movdqa	%xmm12, %xmm0	# vect__48.308, vect__48.308
	movdqa	%xmm1, %xmm8	# tmp504, tmp504
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp532
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp516
	por	%xmm4, %xmm8	# tmp503, tmp504
	movdqa	%xmm15, %xmm4	# tmp400, tmp530
	movq	%xmm8, -48(%rsp)	# tmp504, %sfp
	movdqa	%xmm11, %xmm8	# vect_cst__273, tmp596
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp518
	pcmpgtb	%xmm0, %xmm13	# tmp518, tmp521
	movdqa	%xmm0, %xmm12	# tmp518, tmp522
	movdqa	%xmm13, %xmm3	# tmp521, tmp521
	punpcklbw	%xmm3, %xmm12	# tmp521, tmp522
	punpcklbw	%xmm3, %xmm0	# tmp521, tmp526
	pcmpgtw	%xmm12, %xmm4	# tmp522, tmp530
	movdqa	%xmm12, %xmm1	# tmp522, tmp522
	movdqa	%xmm12, %xmm13	# tmp522, tmp531
	pshufd	$78, %xmm0, %xmm0	#, tmp526, tmp526
	pcmpgtw	%xmm0, %xmm7	# tmp526, tmp544
	punpcklwd	%xmm4, %xmm13	# tmp530, tmp531
	punpcklwd	%xmm4, %xmm1	# tmp530, tmp538
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp546
	pand	%xmm13, %xmm5	# tmp531, tmp532
	movdqa	%xmm13, %xmm3	# tmp531, tmp531
	pshufd	$78, %xmm1, %xmm1	#, tmp538, tmp538
	movdqa	%xmm11, %xmm13	# vect_cst__273, tmp539
	pandn	%xmm10, %xmm3	# vect_cst__274, tmp533
	pand	%xmm1, %xmm13	# tmp538, tmp539
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp540
	movdqa	%xmm3, %xmm12	# tmp533, tmp533
	movdqa	%xmm13, %xmm3	# tmp539, tmp539
	movdqa	%xmm1, %xmm13	# tmp540, tmp540
	por	%xmm5, %xmm12	# tmp532, tmp533
	por	%xmm3, %xmm13	# tmp539, tmp540
	movdqa	%xmm7, %xmm3	# tmp544, tmp544
	movdqa	%xmm0, %xmm7	# tmp526, tmp545
	movq	%xmm12, -32(%rsp)	# tmp533, %sfp
	punpcklwd	%xmm3, %xmm7	# tmp544, tmp545
	punpcklwd	%xmm3, %xmm0	# tmp544, tmp552
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp553
	movq	%xmm13, -24(%rsp)	# tmp540, %sfp
	movdqa	%xmm7, %xmm1	# tmp545, tmp545
	pshufd	$78, %xmm0, %xmm0	#, tmp552, tmp552
	pand	%xmm7, %xmm4	# tmp545, tmp546
	pand	%xmm0, %xmm5	# tmp552, tmp553
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp547
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp554
	movdqa	%xmm1, %xmm7	# tmp547, tmp547
	movdqa	%xmm5, %xmm1	# tmp553, tmp553
	movdqa	%xmm0, %xmm5	# tmp554, tmp554
	movdqa	%xmm6, %xmm0	# vect__36.316, vect__36.316
	movdqa	%xmm9, %xmm6	# tmp388, tmp564
	por	%xmm4, %xmm7	# tmp546, tmp547
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp559
	movdqa	%xmm15, %xmm4	# tmp400, tmp573
	por	%xmm1, %xmm5	# tmp553, tmp554
	movq	%xmm7, -16(%rsp)	# tmp547, %sfp
	movq	%xmm5, -8(%rsp)	# tmp554, %sfp
	movdqa	%xmm11, %xmm5	# vect_cst__273, tmp575
	movdqa	%xmm9, %xmm12	# tmp388, tmp607
	movdqa	%xmm15, %xmm13	# tmp400, tmp630
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp561
	pcmpgtb	%xmm0, %xmm6	# tmp561, tmp564
	movdqa	%xmm6, %xmm3	# tmp564, tmp564
	movdqa	%xmm0, %xmm6	# tmp561, tmp565
	punpcklbw	%xmm3, %xmm6	# tmp564, tmp565
	punpcklbw	%xmm3, %xmm0	# tmp564, tmp569
	pcmpgtw	%xmm6, %xmm4	# tmp565, tmp573
	movdqa	%xmm6, %xmm1	# tmp565, tmp565
	pshufd	$78, %xmm0, %xmm0	#, tmp569, tmp569
	punpcklwd	%xmm4, %xmm6	# tmp573, tmp574
	punpcklwd	%xmm4, %xmm1	# tmp573, tmp581
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp582
	movdqa	%xmm6, %xmm3	# tmp574, tmp574
	pshufd	$78, %xmm1, %xmm1	#, tmp581, tmp581
	pand	%xmm6, %xmm5	# tmp574, tmp575
	pand	%xmm1, %xmm4	# tmp581, tmp582
	pandn	%xmm10, %xmm3	# vect_cst__274, tmp576
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp583
	movdqa	%xmm3, %xmm6	# tmp576, tmp576
	movdqa	%xmm4, %xmm3	# tmp582, tmp582
	movdqa	%xmm1, %xmm4	# tmp583, tmp583
	por	%xmm3, %xmm4	# tmp582, tmp583
	movdqa	%xmm15, %xmm3	# tmp400, tmp587
	movdqa	%xmm0, %xmm1	# tmp569, tmp588
	pcmpgtw	%xmm0, %xmm3	# tmp569, tmp587
	movq	%xmm4, 8(%rsp)	# tmp583, %sfp
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp589
	por	%xmm5, %xmm6	# tmp575, tmp576
	movq	%xmm6, (%rsp)	# tmp576, %sfp
	movdqa	%xmm11, %xmm6	# vect_cst__273, tmp661
	punpcklwd	%xmm3, %xmm0	# tmp587, tmp595
	punpcklwd	%xmm3, %xmm1	# tmp587, tmp588
	movdqa	%xmm15, %xmm3	# tmp400, tmp616
	pshufd	$78, %xmm0, %xmm0	#, tmp595, tmp595
	pand	%xmm1, %xmm4	# tmp588, tmp589
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp590
	pand	%xmm0, %xmm8	# tmp595, tmp596
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp597
	por	%xmm4, %xmm1	# tmp589, tmp590
	por	%xmm8, %xmm0	# tmp596, tmp597
	movq	104(%rsp), %xmm8	# %sfp, vect__51.324
	movdqa	%xmm11, %xmm4	# vect_cst__273, tmp618
	movq	%xmm1, 16(%rsp)	# tmp590, %sfp
	movq	%xmm0, 24(%rsp)	# tmp597, %sfp
	pand	%xmm2, %xmm8	# vect__46.283, vect__51.324
	movdqa	%xmm8, %xmm1	# vect__51.324, vect__51.324
	pcmpeqb	%xmm9, %xmm1	# tmp388, tmp602
	pcmpeqb	%xmm9, %xmm1	# tmp388, tmp604
	pcmpgtb	%xmm1, %xmm12	# tmp604, tmp607
	movdqa	%xmm1, %xmm5	# tmp604, tmp608
	movdqa	%xmm12, %xmm0	# tmp607, tmp607
	movdqa	%xmm11, %xmm12	# vect_cst__273, tmp625
	punpcklbw	%xmm0, %xmm5	# tmp607, tmp608
	punpcklbw	%xmm0, %xmm1	# tmp607, tmp612
	pcmpgtw	%xmm5, %xmm3	# tmp608, tmp616
	pshufd	$78, %xmm1, %xmm1	#, tmp612, tmp612
	movdqa	%xmm5, %xmm8	# tmp608, tmp617
	pcmpgtw	%xmm1, %xmm13	# tmp612, tmp630
	punpcklwd	%xmm3, %xmm8	# tmp616, tmp617
	punpcklwd	%xmm3, %xmm5	# tmp616, tmp624
	movdqa	%xmm11, %xmm3	# vect_cst__273, tmp632
	movdqa	%xmm8, %xmm0	# tmp617, tmp617
	pand	%xmm8, %xmm4	# tmp617, tmp618
	pshufd	$78, %xmm5, %xmm5	#, tmp624, tmp624
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp619
	pand	%xmm5, %xmm12	# tmp624, tmp625
	pandn	%xmm10, %xmm5	# vect_cst__274, tmp626
	movdqa	%xmm0, %xmm8	# tmp619, tmp619
	movdqa	%xmm13, %xmm0	# tmp630, tmp630
	movdqa	%xmm1, %xmm13	# tmp612, tmp631
	punpcklwd	%xmm0, %xmm1	# tmp630, tmp638
	por	%xmm12, %xmm5	# tmp625, vect_patt_220.328
	movdqa	%xmm11, %xmm12	# vect_cst__273, tmp639
	pshufd	$78, %xmm1, %xmm1	#, tmp638, tmp638
	punpcklwd	%xmm0, %xmm13	# tmp630, tmp631
	por	%xmm4, %xmm8	# tmp618, tmp619
	pand	%xmm1, %xmm12	# tmp638, tmp639
	pandn	%xmm10, %xmm1	# vect_cst__274, tmp640
	pand	%xmm13, %xmm3	# tmp631, tmp632
	movq	%xmm8, 32(%rsp)	# tmp619, %sfp
	por	%xmm12, %xmm1	# tmp639, vect_patt_220.328
	movq	112(%rsp), %xmm12	# %sfp, vect__63.332
	pandn	%xmm10, %xmm13	# vect_cst__274, tmp633
	por	%xmm3, %xmm13	# tmp632, tmp633
	movdqa	%xmm9, %xmm3	# tmp388, tmp650
	pand	%xmm2, %xmm12	# vect__46.283, vect__63.332
	movq	%xmm13, 40(%rsp)	# tmp633, %sfp
	movdqa	%xmm12, %xmm0	# vect__63.332, vect__63.332
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp645
	pcmpeqb	%xmm9, %xmm0	# tmp388, tmp647
	pcmpgtb	%xmm0, %xmm3	# tmp647, tmp650
	movdqa	%xmm0, %xmm4	# tmp647, tmp651
	punpcklbw	%xmm3, %xmm4	# tmp650, tmp651
	punpcklbw	%xmm3, %xmm0	# tmp650, tmp655
	movdqa	%xmm15, %xmm3	# tmp400, tmp659
	pcmpgtw	%xmm4, %xmm3	# tmp651, tmp659
	movdqa	%xmm4, %xmm12	# tmp651, tmp660
	pshufd	$78, %xmm0, %xmm0	#, tmp655, tmp655
	movdqa	%xmm0, %xmm8	# tmp655, tmp674
	punpcklwd	%xmm3, %xmm12	# tmp659, tmp660
	punpcklwd	%xmm3, %xmm4	# tmp659, tmp667
	movdqa	%xmm11, %xmm3	# vect_cst__273, tmp668
	pand	%xmm12, %xmm6	# tmp660, tmp661
	pandn	%xmm10, %xmm12	# vect_cst__274, tmp662
	pshufd	$78, %xmm4, %xmm4	#, tmp667, tmp667
	por	%xmm6, %xmm12	# tmp661, tmp662
	pand	%xmm4, %xmm3	# tmp667, tmp668
	pandn	%xmm10, %xmm4	# vect_cst__274, tmp669
	movq	%xmm12, 48(%rsp)	# tmp662, %sfp
	por	%xmm3, %xmm4	# tmp668, vect_patt_222.336
	movq	120(%rsp), %xmm12	# %sfp, tmp685
	movdqa	%xmm15, %xmm3	# tmp400, tmp673
	pcmpgtw	%xmm0, %xmm3	# tmp655, tmp673
	movdqa	%xmm11, %xmm6	# vect_cst__273, tmp675
	pand	%xmm12, %xmm2	# tmp685, vect__75.340
	movdqa	%xmm11, %xmm12	# vect_cst__273, tmp704
	pcmpeqb	%xmm9, %xmm2	# tmp388, tmp688
	punpcklwd	%xmm3, %xmm8	# tmp673, tmp674
	punpcklwd	%xmm3, %xmm0	# tmp673, tmp681
	movdqa	%xmm11, %xmm3	# vect_cst__273, tmp682
	pand	%xmm8, %xmm6	# tmp674, tmp675
	pandn	%xmm10, %xmm8	# vect_cst__274, tmp676
	pshufd	$78, %xmm0, %xmm0	#, tmp681, tmp681
	pcmpeqb	%xmm9, %xmm2	# tmp388, tmp690
	por	%xmm6, %xmm8	# tmp675, vect_patt_222.336
	movdqa	%xmm9, %xmm6	# tmp388, tmp693
	pand	%xmm0, %xmm3	# tmp681, tmp682
	pandn	%xmm10, %xmm0	# vect_cst__274, tmp683
	por	%xmm3, %xmm0	# tmp682, vect_patt_222.336
	pcmpgtb	%xmm2, %xmm6	# tmp690, tmp693
	movdqa	%xmm2, %xmm3	# tmp690, tmp694
	punpcklbw	%xmm6, %xmm3	# tmp693, tmp694
	punpcklbw	%xmm6, %xmm2	# tmp693, tmp698
	movdqa	%xmm15, %xmm6	# tmp400, tmp702
	pcmpgtw	%xmm3, %xmm6	# tmp694, tmp702
	movdqa	%xmm3, %xmm7	# tmp694, tmp703
	pshufd	$78, %xmm2, %xmm2	#, tmp698, tmp698
	movdqa	%xmm2, %xmm13	# tmp698, tmp717
	punpcklwd	%xmm6, %xmm3	# tmp702, tmp710
	punpcklwd	%xmm6, %xmm7	# tmp702, tmp703
	movdqa	%xmm11, %xmm6	# vect_cst__273, tmp711
	pshufd	$78, %xmm3, %xmm3	#, tmp710, tmp710
	pand	%xmm7, %xmm12	# tmp703, tmp704
	pandn	%xmm10, %xmm7	# vect_cst__274, tmp705
	pand	%xmm3, %xmm6	# tmp710, tmp711
	pandn	%xmm10, %xmm3	# vect_cst__274, tmp712
	por	%xmm12, %xmm7	# tmp704, vect_patt_224.344
	por	%xmm6, %xmm3	# tmp711, vect_patt_224.344
	movdqa	%xmm15, %xmm6	# tmp400, tmp716
	pcmpgtw	%xmm2, %xmm6	# tmp698, tmp716
	punpcklwd	%xmm6, %xmm13	# tmp716, tmp717
	movdqa	%xmm6, %xmm12	# tmp716, tmp716
	movdqa	%xmm13, %xmm6	# tmp717, tmp717
	movdqa	%xmm11, %xmm13	# vect_cst__273, tmp718
	punpcklwd	%xmm12, %xmm2	# tmp716, tmp724
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_210.288, tmp1011
	pand	%xmm6, %xmm13	# tmp717, tmp718
	pandn	%xmm10, %xmm6	# vect_cst__274, tmp719
	movd	%xmm12, (%r9)	# tmp1011, MEM[(unsigned int *)_86]
	pshufd	$78, %xmm2, %xmm2	#, tmp724, tmp724
	movq	-120(%rsp), %xmm14	# %sfp, vect_patt_210.288
	por	%xmm13, %xmm6	# tmp718, vect_patt_224.344
	movdqa	%xmm11, %xmm13	# vect_cst__273, tmp725
	pand	%xmm2, %xmm13	# tmp724, tmp725
	pandn	%xmm10, %xmm2	# vect_cst__274, tmp726
	movd	%xmm14, (%r8)	# vect_patt_210.288, MEM[(unsigned int *)_125]
	por	%xmm13, %xmm2	# tmp725, vect_patt_224.344
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_210.288, tmp1013
	movq	-112(%rsp), %xmm14	# %sfp, vect_patt_210.288
	movd	%xmm13, 0(%r13)	# tmp1013, MEM[(unsigned int *)_42]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_210.288, tmp1015
	movd	%xmm14, 0(%rbp)	# vect_patt_210.288, MEM[(unsigned int *)_8]
	movq	-104(%rsp), %xmm14	# %sfp, vect_patt_210.288
	movd	%xmm12, (%rbx)	# tmp1015, MEM[(unsigned int *)_293]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_210.288, tmp1017
	movd	%xmm14, (%r11)	# vect_patt_210.288, MEM[(unsigned int *)_323]
	movq	-96(%rsp), %xmm14	# %sfp, vect_patt_212.296
	movd	%xmm13, (%r10)	# tmp1017, MEM[(unsigned int *)_354]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_212.296, tmp1019
	movd	%xmm14, 4(%rsi)	# vect_patt_212.296, MEM[(unsigned int *)_156 + 4B]
	movq	-88(%rsp), %xmm14	# %sfp, vect_patt_212.296
	movd	%xmm12, 4(%r9)	# tmp1019, MEM[(unsigned int *)_86 + 4B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_212.296, tmp1021
	movd	%xmm14, 4(%r8)	# vect_patt_212.296, MEM[(unsigned int *)_125 + 4B]
	movq	-80(%rsp), %xmm14	# %sfp, vect_patt_212.296
	movd	%xmm13, 4(%r13)	# tmp1021, MEM[(unsigned int *)_42 + 4B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_212.296, tmp1023
	movd	%xmm14, 4(%rbp)	# vect_patt_212.296, MEM[(unsigned int *)_8 + 4B]
	movq	-72(%rsp), %xmm14	# %sfp, vect_patt_212.296
	movd	%xmm12, 4(%rbx)	# tmp1023, MEM[(unsigned int *)_293 + 4B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_212.296, tmp1025
	movd	%xmm14, 4(%r11)	# vect_patt_212.296, MEM[(unsigned int *)_323 + 4B]
	movq	-64(%rsp), %xmm14	# %sfp, vect_patt_214.304
	movd	%xmm13, 4(%r10)	# tmp1025, MEM[(unsigned int *)_354 + 4B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_214.304, tmp1027
	movd	%xmm14, 8(%rsi)	# vect_patt_214.304, MEM[(unsigned int *)_156 + 8B]
	movq	-56(%rsp), %xmm14	# %sfp, vect_patt_214.304
	movd	%xmm12, 8(%r9)	# tmp1027, MEM[(unsigned int *)_86 + 8B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_214.304, tmp1029
	movd	%xmm14, 8(%r8)	# vect_patt_214.304, MEM[(unsigned int *)_125 + 8B]
	movq	-48(%rsp), %xmm14	# %sfp, vect_patt_214.304
	movd	%xmm13, 8(%r13)	# tmp1029, MEM[(unsigned int *)_42 + 8B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_214.304, tmp1031
	movd	%xmm14, 8(%rbp)	# vect_patt_214.304, MEM[(unsigned int *)_8 + 8B]
	movq	-40(%rsp), %xmm14	# %sfp, vect_patt_214.304
	movd	%xmm12, 8(%rbx)	# tmp1031, MEM[(unsigned int *)_293 + 8B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_214.304, tmp1033
	movd	%xmm14, 8(%r11)	# vect_patt_214.304, MEM[(unsigned int *)_323 + 8B]
	movd	%xmm13, 8(%r10)	# tmp1033, MEM[(unsigned int *)_354 + 8B]
	movq	-32(%rsp), %xmm14	# %sfp, vect_patt_216.312
	movd	%xmm14, 12(%rsi)	# vect_patt_216.312, MEM[(unsigned int *)_156 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_216.312, tmp1035
	movq	-24(%rsp), %xmm14	# %sfp, vect_patt_216.312
	movd	%xmm12, 12(%r9)	# tmp1035, MEM[(unsigned int *)_86 + 12B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_216.312, tmp1037
	movd	%xmm14, 12(%r8)	# vect_patt_216.312, MEM[(unsigned int *)_125 + 12B]
	movq	-16(%rsp), %xmm14	# %sfp, vect_patt_216.312
	movd	%xmm13, 12(%r13)	# tmp1037, MEM[(unsigned int *)_42 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_216.312, tmp1039
	movd	%xmm14, 12(%rbp)	# vect_patt_216.312, MEM[(unsigned int *)_8 + 12B]
	movq	-8(%rsp), %xmm14	# %sfp, vect_patt_216.312
	movd	%xmm12, 12(%rbx)	# tmp1039, MEM[(unsigned int *)_293 + 12B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_216.312, tmp1041
	movd	%xmm14, 12(%r11)	# vect_patt_216.312, MEM[(unsigned int *)_323 + 12B]
	movq	(%rsp), %xmm14	# %sfp, vect_patt_218.320
	movd	%xmm13, 12(%r10)	# tmp1041, MEM[(unsigned int *)_354 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_218.320, tmp1043
	movd	%xmm14, 16(%rsi)	# vect_patt_218.320, MEM[(unsigned int *)_156 + 16B]
	movq	8(%rsp), %xmm14	# %sfp, vect_patt_218.320
	movd	%xmm12, 16(%r9)	# tmp1043, MEM[(unsigned int *)_86 + 16B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_218.320, tmp1045
	movd	%xmm14, 16(%r8)	# vect_patt_218.320, MEM[(unsigned int *)_125 + 16B]
	movq	16(%rsp), %xmm14	# %sfp, vect_patt_218.320
	movd	%xmm13, 16(%r13)	# tmp1045, MEM[(unsigned int *)_42 + 16B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_218.320, tmp1047
	movd	%xmm14, 16(%rbp)	# vect_patt_218.320, MEM[(unsigned int *)_8 + 16B]
	movq	24(%rsp), %xmm14	# %sfp, vect_patt_218.320
	movd	%xmm12, 16(%rbx)	# tmp1047, MEM[(unsigned int *)_293 + 16B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_218.320, tmp1049
	movd	%xmm14, 16(%r11)	# vect_patt_218.320, MEM[(unsigned int *)_323 + 16B]
	movq	32(%rsp), %xmm14	# %sfp, vect_patt_220.328
	movd	%xmm13, 16(%r10)	# tmp1049, MEM[(unsigned int *)_354 + 16B]
	movq	40(%rsp), %xmm13	# %sfp, vect_patt_220.328
	movd	%xmm14, 20(%rsi)	# vect_patt_220.328, MEM[(unsigned int *)_156 + 20B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_220.328, tmp1051
	movd	%xmm12, 20(%r9)	# tmp1051, MEM[(unsigned int *)_86 + 20B]
	movd	%xmm5, 20(%r8)	# vect_patt_220.328, MEM[(unsigned int *)_125 + 20B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_220.328, tmp1052
	movd	%xmm5, 20(%r13)	# tmp1052, MEM[(unsigned int *)_42 + 20B]
	pshufd	$0xe5, %xmm13, %xmm5	# vect_patt_220.328, tmp1053
	movd	%xmm13, 20(%rbp)	# vect_patt_220.328, MEM[(unsigned int *)_8 + 20B]
	movd	%xmm5, 20(%rbx)	# tmp1053, MEM[(unsigned int *)_293 + 20B]
	pshufd	$0xe5, %xmm1, %xmm5	# vect_patt_220.328, tmp1054
	movd	%xmm1, 20(%r11)	# vect_patt_220.328, MEM[(unsigned int *)_323 + 20B]
	movd	%xmm5, 20(%r10)	# tmp1054, MEM[(unsigned int *)_354 + 20B]
	movq	48(%rsp), %xmm5	# %sfp, vect_patt_222.336
	movd	%xmm5, 24(%rsi)	# vect_patt_222.336, MEM[(unsigned int *)_156 + 24B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_222.336, tmp1055
	movd	%xmm5, 24(%r9)	# tmp1055, MEM[(unsigned int *)_86 + 24B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_222.336, tmp1056
	movd	%xmm4, 24(%r8)	# vect_patt_222.336, MEM[(unsigned int *)_125 + 24B]
	movd	%xmm5, 24(%r13)	# tmp1056, MEM[(unsigned int *)_42 + 24B]
	pshufd	$0xe5, %xmm8, %xmm5	# vect_patt_222.336, tmp1057
	movd	%xmm8, 24(%rbp)	# vect_patt_222.336, MEM[(unsigned int *)_8 + 24B]
	movd	%xmm5, 24(%rbx)	# tmp1057, MEM[(unsigned int *)_293 + 24B]
	pshufd	$0xe5, %xmm0, %xmm5	# vect_patt_222.336, tmp1058
	movd	%xmm0, 24(%r11)	# vect_patt_222.336, MEM[(unsigned int *)_323 + 24B]
	movd	%xmm5, 24(%r10)	# tmp1058, MEM[(unsigned int *)_354 + 24B]
	movd	%xmm7, 28(%rsi)	# vect_patt_224.344, MEM[(unsigned int *)_156 + 28B]
	pshufd	$0xe5, %xmm7, %xmm7	# vect_patt_224.344, tmp1059
	addq	%rcx, %rsi	# _426, ivtmp.363
	movd	%xmm7, 28(%r9)	# tmp1059, MEM[(unsigned int *)_86 + 28B]
	pshufd	$0xe5, %xmm3, %xmm7	# vect_patt_224.344, tmp1060
	addq	%rcx, %r9	# _426, ivtmp.368
	movd	%xmm3, 28(%r8)	# vect_patt_224.344, MEM[(unsigned int *)_125 + 28B]
	addq	%rcx, %r8	# _426, ivtmp.369
	movd	%xmm7, 28(%r13)	# tmp1060, MEM[(unsigned int *)_42 + 28B]
	pshufd	$0xe5, %xmm6, %xmm7	# vect_patt_224.344, tmp1061
	addq	%rcx, %r13	# _426, ivtmp.370
	movd	%xmm6, 28(%rbp)	# vect_patt_224.344, MEM[(unsigned int *)_8 + 28B]
	addq	%rcx, %rbp	# _426, ivtmp.371
	movd	%xmm7, 28(%rbx)	# tmp1061, MEM[(unsigned int *)_293 + 28B]
	addq	%rcx, %rbx	# _426, ivtmp.372
	movd	%xmm2, 28(%r11)	# vect_patt_224.344, MEM[(unsigned int *)_323 + 28B]
	pshufd	$0xe5, %xmm2, %xmm2	# vect_patt_224.344, tmp1062
	addq	%rcx, %r11	# _426, ivtmp.373
	movd	%xmm2, 28(%r10)	# tmp1062, MEM[(unsigned int *)_354 + 28B]
	addq	%rcx, %r10	# _426, ivtmp.374
	cmpq	%rax, %rdi	# _393, ivtmp.367
	jne	.L212	#,
	movl	%r12d, %eax	# BKcolor, BKcolor
	movl	%edx, %r12d	# FRcolor, FRcolor
.L213:
# printk.c:85:         for (int x = 0; x < cols; x++) {
	addl	$1, 136(%rsp)	#, %sfp
	movl	136(%rsp), %edi	# %sfp, x
# printk.c:85:         for (int x = 0; x < cols; x++) {
	cmpl	%edi, 200(%rsp)	# x, %sfp
	jne	.L224	#,
# printk.c:84:     for (int y = 0; y < rows; y++) {
	addl	$1, 140(%rsp)	#, %sfp
	movl	%eax, %r13d	# BKcolor, BKcolor
	movl	140(%rsp), %edi	# %sfp, y
	movl	204(%rsp), %eax	# %sfp, tmp348
# printk.c:84:     for (int y = 0; y < rows; y++) {
	cmpl	%edi, %eax	# y, tmp348
	jne	.L209	#,
.L208:
# printk.c:92:     Pos.XPosition = 0;
	movq	$0, 8(%r14,%r15)	#, MEM <vector(2) int> [(int *)&Pos + 8B]
# printk.c:94: }	
	addq	$208, %rsp	#,
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
.L211:
	.cfi_restore_state
	movq	128(%rsp), %rdi	# %sfp, _10
# printk.c:12: 	fontp=font_ascii[font];
	movq	144(%rsp), %rbx	# %sfp, tmp815
	addq	%rdi, %r9	# _10, ivtmp.357
	leaq	(%rbx,%r15), %r10	#, fontp
	jmp	.L223	#
	.p2align 4,,10
	.p2align 3
.L247:
	movl	%eax, 28(%r9)	# BKcolor, MEM[(unsigned int *)_83 + 28B]
.L246:
# printk.c:13: 	for(i=0;i<16;i++){
	movq	56(%rsp), %rsi	# %sfp, tmp823
# printk.c:26: 		fontp++;
	addq	$1, %r10	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rdx, %r9	# _227, ivtmp.357
	cmpq	%rsi, %r10	# tmp823, fontp
	je	.L213	#,
.L223:
# printk.c:22: 				*addr =BKcolor;
	cmpb	$0, (%r10)	#, MEM[(unsigned char *)fontp_118]
	movl	%eax, %ecx	# BKcolor, cstore_152
	cmovs	%r12d, %ecx	# FRcolor,, cstore_152
	movl	%ecx, (%r9)	# cstore_152, MEM[(unsigned int *)_83]
	movl	%eax, %ecx	# BKcolor, cstore_164
	testb	$64, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_164
	movl	%ecx, 4(%r9)	# cstore_164, MEM[(unsigned int *)_83 + 4B]
	movl	%eax, %ecx	# BKcolor, cstore_168
	testb	$32, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_168
	movl	%ecx, 8(%r9)	# cstore_168, MEM[(unsigned int *)_83 + 8B]
	movl	%eax, %ecx	# BKcolor, cstore_172
	testb	$16, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_172
	movl	%ecx, 12(%r9)	# cstore_172, MEM[(unsigned int *)_83 + 12B]
	movl	%eax, %ecx	# BKcolor, cstore_176
	testb	$8, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_176
	movl	%ecx, 16(%r9)	# cstore_176, MEM[(unsigned int *)_83 + 16B]
	movl	%eax, %ecx	# BKcolor, cstore_180
	testb	$4, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_180
	movl	%ecx, 20(%r9)	# cstore_180, MEM[(unsigned int *)_83 + 20B]
	movl	%eax, %ecx	# BKcolor, cstore_184
	testb	$2, (%r10)	#, MEM[(unsigned char *)fontp_118]
	cmovne	%r12d, %ecx	# FRcolor,, cstore_184
	movl	%ecx, 24(%r9)	# cstore_184, MEM[(unsigned int *)_83 + 24B]
# printk.c:19: 			if(*fontp & testval){
	testb	$1, (%r10)	#, MEM[(unsigned char *)fontp_118]
	je	.L247	#,
	movl	%r12d, 28(%r9)	# FRcolor, MEM[(unsigned int *)_83 + 28B]
	jmp	.L246	#
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
.L253:
# printk.c:100: 	while(is_digit(**s)){
	movq	(%rdi), %rdx	# *s_13(D), _17
	movzbl	(%rdx), %eax	# *_17, _7
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L251	#,
	addq	$1, %rdx	#, ivtmp.387
# printk.c:99: 	int i=0;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4,,10
	.p2align 3
.L250:
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:103: 		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.387, *s_13(D)
# printk.c:100: 	while(is_digit(**s)){
	addq	$1, %rdx	#, ivtmp.387
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:104: 		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:100: 	while(is_digit(**s)){
	movzbl	-1(%rdx), %eax	# MEM[(const char *)_2], _7
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L250	#,
# printk.c:107: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L251:
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
.L259:
# printk.c:112:  	while(is_digit(current_char = **s)){
	movq	(%rdi), %rdx	# *s_10(D), _18
	movzbl	(%rdx), %eax	# *_18, current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %ecx	#, tmp97
	cmpb	$9, %cl	#, tmp97
	ja	.L257	#,
	addq	$1, %rdx	#, ivtmp.396
# printk.c:110:  	int i=0;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4,,10
	.p2align 3
.L256:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %eax	#, tmp102
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %ecx	#, tmp100
# printk.c:113:  		(*s)++;                   // 指针向后移动
	movq	%rdx, (%rdi)	# ivtmp.396, *s_10(D)
# printk.c:112:  	while(is_digit(current_char = **s)){
	addq	$1, %rdx	#, ivtmp.396
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%al, %eax	# tmp102, tmp103
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rax,%rcx,2), %ecx	#, <retval>
# printk.c:112:  	while(is_digit(current_char = **s)){
	movzbl	-1(%rdx), %eax	# MEM[(const char *)_1], current_char
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rax), %esi	#, tmp104
	cmpb	$9, %sil	#, tmp104
	jbe	.L256	#,
# printk.c:117: }
	movl	%ecx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L257:
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
.L489:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L489, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15	# tmp627, buf
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	.L489(%rip), %r13	#, tmp82
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12	# tmp629, args
	addq	%r11, %r13	#, tmp82
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	(%rsi), %edx	# *fmt_203(D), _397
	testb	%dl, %dl	# _397
	je	.L373	#,
	movq	%rsi, %rax	# tmp628, fmt
# printk.c:250: 			switch (*fmt)
	leaq	.L266(%rip), %rbp	#, tmp599
	jmp	.L369	#
	.p2align 4,,10
	.p2align 3
.L499:
# printk.c:244: 			*str++ =*fmt;
	movb	%dl, (%rdi)	# _397, *str_404
# printk.c:245: 			continue;
	addq	$1, %rax	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	(%rax), %edx	# MEM[(const char *)fmt_430 + 1B], _397
# printk.c:244: 			*str++ =*fmt;
	addq	$1, %rdi	#, str
.L263:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	testb	%dl, %dl	# _397
	je	.L368	#,
.L369:
# printk.c:242: 		if (*fmt !='%')
	cmpb	$37, %dl	#, _397
	jne	.L499	#,
# printk.c:247: 		flags=0;
	xorl	%r9d, %r9d	# flags
	.p2align 4,,10
	.p2align 3
.L262:
# printk.c:250: 			switch (*fmt)
	movsbl	1(%rax), %edx	# MEM[(const char *)_4],
# printk.c:249: 			fmt++;
	leaq	1(%rax), %rbx	#, fmt
# printk.c:250: 			switch (*fmt)
	leal	-32(%rdx), %ecx	#, tmp388
	cmpb	$16, %cl	#, tmp388
	ja	.L264	#,
	movzbl	%cl, %ecx	# tmp388, tmp389
	movq	0(%rbp,%rcx,8), %rsi	#, tmp392
	addq	%rbp, %rsi	# tmp599, tmp392
	notrack jmp	*%rsi	# tmp392
	.section	.rodata
	.align 8
	.align 4
.L266:
	.quad	.L270-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L269-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L268-.L266
	.quad	.L264-.L266
	.quad	.L267-.L266
	.quad	.L264-.L266
	.quad	.L264-.L266
	.quad	.L265-.L266
	.text
	.p2align 4,,10
	.p2align 3
.L264:
# printk.c:270: 		if (is_digit(*fmt))
	leal	-48(%rdx), %ecx	#, tmp394
# printk.c:270: 		if (is_digit(*fmt))
	cmpb	$9, %cl	#, tmp394
	jbe	.L500	#,
# printk.c:269: 		field_width=-1;
	movl	$-1, %ecx	#, i
# printk.c:274: 		else if (*fmt == '*')
	cmpb	$42, %dl	#, current_char
	je	.L501	#,
.L274:
# printk.c:285: 		precision =-1;
	movl	$-1, %r8d	#, precision
# printk.c:286: 		if(*fmt =='.'){
	cmpb	$46, %dl	#, current_char
	je	.L502	#,
.L278:
	leal	-76(%rdx), %eax	#, _184
	cmpb	$46, %al	#, _184
	ja	.L284	#,
	movabsq	$70373307580417, %rsi	#, tmp739
	btq	%rax, %rsi	# _184, tmp739
	jnc	.L284	#,
# printk.c:309: 	switch (*fmt){
	movzbl	1(%rbx), %eax	# MEM[(const char *)fmt_199 + 1B], tmp740
# printk.c:307: 			fmt++;
	leaq	1(%rbx), %r14	#, _26
# printk.c:309: 	switch (*fmt){
	subl	$37, %eax	#, tmp423
	cmpb	$83, %al	#, tmp423
	ja	.L285	#,
	movzbl	%al, %eax	# tmp423, tmp425
	leaq	.L287(%rip), %rsi	#, tmp426
	addq	(%rsi,%rax,8), %rsi	#, tmp428
	notrack jmp	*%rsi	# tmp428
	.section	.rodata
	.align 8
	.align 4
.L287:
	.quad	.L296-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L295-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L294-.L287
	.quad	.L293-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L293-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L292-.L287
	.quad	.L291-.L287
	.quad	.L290-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L289-.L287
	.quad	.L285-.L287
	.quad	.L288-.L287
	.quad	.L285-.L287
	.quad	.L285-.L287
	.quad	.L286-.L287
	.text
	.p2align 4,,10
	.p2align 3
.L265:
# printk.c:265: 				flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
.L271:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movq	%rbx, %rax	# fmt, fmt
	jmp	.L262	#
	.p2align 4,,10
	.p2align 3
.L267:
# printk.c:253: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
# printk.c:254: 				goto repeat;
	jmp	.L271	#
	.p2align 4,,10
	.p2align 3
.L268:
# printk.c:256: 				flags |=PLUS;
	orl	$4, %r9d	#, flags
# printk.c:257: 				goto repeat;
	jmp	.L271	#
	.p2align 4,,10
	.p2align 3
.L269:
# printk.c:262: 				flags |=SPECIAL;
	orl	$32, %r9d	#, flags
# printk.c:263: 				goto repeat;			
	jmp	.L271	#
	.p2align 4,,10
	.p2align 3
.L270:
# printk.c:259: 				flags |=SPACE;
	orl	$8, %r9d	#, flags
# printk.c:260: 				goto repeat;			
	jmp	.L271	#
	.p2align 4,,10
	.p2align 3
.L284:
# printk.c:309: 	switch (*fmt){
	subl	$37, %edx	#, tmp580
	cmpb	$83, %dl	#, tmp580
	ja	.L386	#,
	movzbl	%dl, %edx	# tmp580, tmp581
	leaq	.L371(%rip), %rax	#, tmp582
	addq	(%rax,%rdx,8), %rax	#, tmp584
	notrack jmp	*%rax	# tmp584
	.section	.rodata
	.align 8
	.align 4
.L371:
	.quad	.L387-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L370-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L388-.L371
	.quad	.L355-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L355-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L361-.L371
	.quad	.L340-.L371
	.quad	.L389-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L390-.L371
	.quad	.L386-.L371
	.quad	.L372-.L371
	.quad	.L386-.L371
	.quad	.L386-.L371
	.quad	.L349-.L371
	.text
	.p2align 4,,10
	.p2align 3
.L386:
	movq	%rbx, %r14	# fmt, _26
.L285:
# printk.c:399: 				*str++ ='%';
	movb	$37, (%rdi)	#, *str_404
# printk.c:400: 				if(*fmt)
	movzbl	(%r14), %eax	# *fmt_631, _50
# printk.c:400: 				if(*fmt)
	testb	%al, %al	# _50
	je	.L367	#,
# printk.c:401: 					*str++ =*fmt;
	movb	%al, 1(%rdi)	# _50, MEM[(char *)str_404 + 1B]
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	# MEM[(const char *)fmt_631 + 1B], _397
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
# printk.c:401: 					*str++ =*fmt;
	addq	$2, %rdi	#, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	testb	%dl, %dl	# _397
	jne	.L369	#,
	.p2align 4,,10
	.p2align 3
.L368:
# printk.c:408: 	return str - buf;
	movl	%edi, %eax	# str, <retval>
	subl	%r15d, %eax	# buf, <retval>
.L261:
# printk.c:407: 	*str = '\0';
	movb	$0, (%rdi)	#, *str_405
# printk.c:409: }
	addq	$8, %rsp	#,
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
.L502:
	.cfi_restore_state
# printk.c:288: 			if (is_digit(*fmt))
	movsbl	1(%rbx), %edx	# MEM[(const char *)fmt_196 + 1B],
# printk.c:287: 			fmt++;
	leaq	1(%rbx), %rax	#, _180
# printk.c:288: 			if (is_digit(*fmt))
	leal	-48(%rdx), %esi	#, tmp406
# printk.c:288: 			if (is_digit(*fmt))
	cmpb	$9, %sil	#, tmp406
	jbe	.L503	#,
# printk.c:292: 			else if(*fmt == '*'){
	cmpb	$42, %dl	#, current_char
	je	.L504	#,
# printk.c:287: 			fmt++;
	movq	%rax, %rbx	# _180, fmt
# printk.c:297: 				precision=0;
	xorl	%r8d, %r8d	# precision
	jmp	.L278	#
	.p2align 4,,10
	.p2align 3
.L500:
# printk.c:110:  	int i=0;
	xorl	%ecx, %ecx	# i
	.p2align 4,,10
	.p2align 3
.L273:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %edx	#, tmp399
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rcx,%rcx,4), %eax	#, tmp397
# printk.c:113:  		(*s)++;                   // 指针向后移动
	addq	$1, %rbx	#, fmt
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%dl, %edx	# tmp399, tmp400
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rdx,%rax,2), %ecx	#, i
# printk.c:112:  	while(is_digit(current_char = **s)){
	movsbl	(%rbx), %edx	# MEM[(const char *)_173],
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rdx), %eax	#, tmp401
	cmpb	$9, %al	#, tmp401
	jbe	.L273	#,
	jmp	.L274	#
	.p2align 4,,10
	.p2align 3
.L501:
# printk.c:277: 			field_width=va_arg(args,int);
	movl	(%r12), %edx	# args_106(D)->gp_offset, D.2779
# printk.c:276: 			fmt++;
	leaq	2(%rax), %rbx	#, fmt
# printk.c:277: 			field_width=va_arg(args,int);
	cmpl	$47, %edx	#, D.2779
	ja	.L275	#,
	movl	%edx, %ecx	# D.2779, D.2782
	addl	$8, %edx	#, tmp404
	addq	16(%r12), %rcx	# args_106(D)->reg_save_area, D.2784
	movl	%edx, (%r12)	# tmp404, args_106(D)->gp_offset
.L276:
	movl	(%rcx), %ecx	# MEM[(int * {ref-all})addr.401_214], i
# printk.c:278: 			if (field_width <0)
	testl	%ecx, %ecx	# i
	jns	.L495	#,
# printk.c:280: 				field_width=-field_width;
	negl	%ecx	# i
# printk.c:281: 				flags |=LEFT;
	orl	$16, %r9d	#, flags
.L495:
# printk.c:286: 		if(*fmt =='.'){
	movsbl	2(%rax), %edx	# MEM[(const char *)fmt_194 + 2B],
	jmp	.L274	#
	.p2align 4,,10
	.p2align 3
.L275:
# printk.c:277: 			field_width=va_arg(args,int);
	movq	8(%r12), %rcx	# args_106(D)->overflow_arg_area, D.2784
	leaq	8(%rcx), %rdx	#, tmp405
	movq	%rdx, 8(%r12)	# tmp405, args_106(D)->overflow_arg_area
	jmp	.L276	#
.L286:
# printk.c:368: 				flags |=SMALL;
	orl	$64, %r9d	#, flags
.L295:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_569
# printk.c:370: 				if(qualifier =='l'){
	cmpl	$108, %edx	#, qualifier
	je	.L505	#,
.L350:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	cmpl	$47, %eax	#, pretmp_569
	ja	.L353	#,
	movl	%eax, %edx	# pretmp_569, D.2862
	addl	$8, %eax	#, tmp549
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2864
	movl	%eax, (%r12)	# tmp549, args_106(D)->gp_offset
.L354:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.409_222], MEM[(unsigned int * {ref-all})addr.409_222]
	movl	$16, %edx	#,
	jmp	.L498	#
.L293:
# printk.c:378: 				flags |=SIGN;
	orl	$2, %r9d	#, flags
.L288:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_572
# printk.c:380: 				if(qualifier =='l'){
	cmpl	$108, %edx	#, qualifier
	je	.L506	#,
.L356:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	cmpl	$47, %eax	#, pretmp_572
	ja	.L359	#,
	movl	%eax, %edx	# pretmp_572, D.2882
	addl	$8, %eax	#, tmp563
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2884
	movl	%eax, (%r12)	# tmp563, args_106(D)->gp_offset
.L360:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.411_224], MEM[(unsigned int * {ref-all})addr.411_224]
	movl	$10, %edx	#,
.L498:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movabsq	$number@GOTOFF, %rax	#, tmp532
	addq	%r13, %rax	# tmp82, tmp531
	call	*%rax	# tmp531
	movq	%rax, %rdi	# tmp631, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
.L496:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	#, _397
	jmp	.L263	#
.L387:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r14	# fmt, _26
.L296:
# printk.c:396: 				*str++ ='%';
	movb	$37, (%rdi)	#, *str_404
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	# MEM[(const char *)fmt_630 + 1B], _397
# printk.c:396: 				*str++ ='%';
	addq	$1, %rdi	#, str
# printk.c:397: 				break;
	jmp	.L263	#
.L388:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r14	# fmt, _26
.L294:
# printk.c:311: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	je	.L507	#,
.L297:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%r12), %eax	# args_106(D)->gp_offset, D.2799
	cmpl	$47, %eax	#, D.2799
	ja	.L304	#,
	movl	%eax, %edx	# D.2799, D.2802
	addl	$8, %eax	#, tmp448
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2804
	movl	%eax, (%r12)	# tmp448, args_106(D)->gp_offset
.L305:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movl	(%rdx), %eax	# MEM[(int * {ref-all})addr.403_216], MEM[(int * {ref-all})addr.403_216]
# printk.c:317: 				while(--field_width>0){
	leal	-1(%rcx), %esi	#, tmp586
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	leaq	1(%rdi), %r10	#, str
# printk.c:317: 				while(--field_width>0){
	movl	%esi, %r8d	# tmp586, tmp.435
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movb	%al, (%rdi)	# MEM[(int * {ref-all})addr.403_216], *str_57
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
# printk.c:317: 				while(--field_width>0){
	testl	%esi, %esi	# tmp586
	jle	.L508	#,
	leal	-2(%rcx), %edx	#, tmp451
	cmpl	$14, %edx	#, tmp451
	jle	.L380	#,
	shrl	$4, %r8d	#,
	movq	%rdi, %rdx	# str, ivtmp.519
	movabsq	$.LC2@GOTOFF, %r9	#, tmp587
	salq	$4, %r8	#, tmp454
# printk.c:318: 					*str++ =' ';
	movdqa	(%r9,%r13), %xmm0	#, tmp455
	leaq	(%r8,%rdi), %r11	#, _815
	andl	$16, %r8d	#, tmp454
	je	.L308	#,
	leaq	16(%rdi), %rdx	#, ivtmp.519
	movups	%xmm0, 1(%rdi)	# tmp455, MEM <vector(16) char> [(char *)_93 + 1B]
	cmpq	%r11, %rdx	# _815, ivtmp.519
	je	.L487	#,
	.p2align 4,,10
	.p2align 3
.L308:
	movups	%xmm0, 1(%rdx)	# tmp455, MEM <vector(16) char> [(char *)_93 + 1B]
	addq	$32, %rdx	#, ivtmp.519
	movups	%xmm0, -15(%rdx)	# tmp455, MEM <vector(16) char> [(char *)_93 + 1B]
	cmpq	%r11, %rdx	# _815, ivtmp.519
	jne	.L308	#,
.L487:
	movl	%esi, %r9d	# tmp586, niters_vector_mult_vf.426
	movl	%esi, %r8d	# tmp586, tmp.435
	andl	$-16, %r9d	#, niters_vector_mult_vf.426
	movl	%r9d, %edx	# niters_vector_mult_vf.426, niters_vector_mult_vf.426
	subl	%r9d, %r8d	# niters_vector_mult_vf.426, tmp.435
	addq	%r10, %rdx	# str, tmp.427
	testb	$15, %sil	#, tmp586
	je	.L309	#,
.L307:
	subl	%r9d, %ecx	# niters_vector_mult_vf.426, _427
	leal	-1(%rcx), %r11d	#, niters.431
	subl	$2, %ecx	#, tmp459
	cmpl	$6, %ecx	#, tmp459
	jbe	.L310	#,
	leal	1(%r9), %ecx	#, tmp461
	movabsq	$.LC3@GOTOFF, %r9	#, tmp463
	movq	0(%r13,%r9), %r9	#, tmp462
	movq	%r9, (%rdi,%rcx)	# tmp462, MEM <vector(8) char> [(char *)vectp_str.437_340]
	movl	%r11d, %ecx	# niters.431, niters_vector_mult_vf.433
	andl	$-8, %ecx	#, niters_vector_mult_vf.433
	movl	%ecx, %edi	# niters_vector_mult_vf.433, niters_vector_mult_vf.433
	subl	%ecx, %r8d	# niters_vector_mult_vf.433, tmp.435
	addq	%rdi, %rdx	# niters_vector_mult_vf.433, tmp.427
	andl	$7, %r11d	#, niters.431
	je	.L309	#,
.L310:
	movb	$32, (%rdx)	#, *str_384
# printk.c:317: 				while(--field_width>0){
	cmpl	$1, %r8d	#, tmp.435
	jle	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 1(%rdx)	#, MEM[(char *)str_384 + 1B]
# printk.c:317: 				while(--field_width>0){
	cmpl	$2, %r8d	#, tmp.435
	je	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 2(%rdx)	#, MEM[(char *)str_384 + 2B]
# printk.c:317: 				while(--field_width>0){
	cmpl	$3, %r8d	#, tmp.435
	je	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 3(%rdx)	#, MEM[(char *)str_384 + 3B]
# printk.c:317: 				while(--field_width>0){
	cmpl	$4, %r8d	#, tmp.435
	je	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 4(%rdx)	#, MEM[(char *)str_384 + 4B]
# printk.c:317: 				while(--field_width>0){
	cmpl	$5, %r8d	#, tmp.435
	je	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 5(%rdx)	#, MEM[(char *)str_384 + 5B]
# printk.c:317: 				while(--field_width>0){
	cmpl	$6, %r8d	#, tmp.435
	je	.L309	#,
# printk.c:318: 					*str++ =' ';
	movb	$32, 6(%rdx)	#, MEM[(char *)str_384 + 6B]
.L309:
	movslq	%esi, %rsi	# tmp586, tmp467
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	#, _397
	leaq	(%r10,%rsi), %rdi	#, str
	jmp	.L263	#
.L390:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r14	# fmt, _26
.L289:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, D.2809
	cmpl	$47, %eax	#, D.2809
	ja	.L312	#,
	movl	%eax, %edx	# D.2809, D.2812
	addl	$8, %eax	#, tmp470
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2814
	movl	%eax, (%r12)	# tmp470, args_106(D)->gp_offset
.L313:
	movq	(%rdx), %rsi	# MEM[(char * * {ref-all})addr.404_217], s
# lib.h:531:     while (*ptr != '\0') {
	cmpb	$0, (%rsi)	#, *s_116
	je	.L381	#,
# lib.h:528:     char *ptr = String;
	movq	%rsi, %rax	# s, ptr
	.p2align 4,,10
	.p2align 3
.L315:
# lib.h:532:         ptr++;
	addq	$1, %rax	#, ptr
# lib.h:531:     while (*ptr != '\0') {
	cmpb	$0, (%rax)	#, MEM[(char *)ptr_188]
	jne	.L315	#,
# lib.h:536:     return ptr - String;
	movl	%eax, %edx	# ptr, len
	subl	%esi, %edx	# s, len
.L314:
# printk.c:331: 				else if(len >precision){
	cmpl	%r8d, %edx	# precision, len
	movl	%r8d, %eax	# precision, tmp590
	cmovle	%edx, %eax	# len,, tmp590
	cmpl	$-1, %r8d	#, precision
	cmovne	%eax, %edx	# tmp590,, len
# printk.c:334: 				if(!(flags &LEFT)){
	andl	$16, %r9d	#, flags
	je	.L509	#,
.L317:
# printk.c:339: 				for(i=0;i<len;i++){
	testl	%edx, %edx	# len
	jle	.L324	#,
	leal	-1(%rdx), %eax	#, _619
	cmpl	$6, %eax	#, _619
	jbe	.L325	#,
	leaq	1(%rsi), %r9	#, tmp489
	movq	%rdi, %r8	# str, tmp490
	subq	%r9, %r8	# tmp489, tmp490
	cmpq	$14, %r8	#, tmp490
	ja	.L510	#,
.L325:
	movslq	%edx, %r9	# len, _723
# printk.c:339: 				for(i=0;i<len;i++){
	xorl	%eax, %eax	# ivtmp.533
	.p2align 4,,10
	.p2align 3
.L332:
# printk.c:340: 						*str++ =*s++;
	movzbl	(%rsi,%rax), %r8d	# MEM[(char *)s_116 + ivtmp.533_902 * 1], _632
# printk.c:340: 						*str++ =*s++;
	movb	%r8b, (%rdi,%rax)	# _632, MEM[(char *)str_60 + ivtmp.533_902 * 1]
# printk.c:339: 				for(i=0;i<len;i++){
	addq	$1, %rax	#, ivtmp.533
	cmpq	%r9, %rax	# _723, ivtmp.533
	jne	.L332	#,
.L333:
	movl	%edx, %eax	# len, _618
	addq	%rax, %rdi	# _618, str
.L324:
# printk.c:342: 				while(len <field_width--){
	leal	-1(%rcx), %r8d	#, tmp.463
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
# printk.c:342: 				while(len <field_width--){
	cmpl	%edx, %ecx	# len, i
	jle	.L496	#,
	subl	%edx, %ecx	# len, niters.452
	movq	%rdi, %rsi	# str, ivtmp.528
	leal	-1(%rcx), %r10d	#, _371
	cmpl	$14, %r10d	#, _371
	jbe	.L385	#,
	movabsq	$.LC2@GOTOFF, %r9	#, tmp587
	movl	%ecx, %r11d	# niters.452, bnd.453
	shrl	$4, %r11d	#,
# printk.c:343: 						*str++ =' ';
	movdqa	(%r9,%r13), %xmm0	#, tmp507
	salq	$4, %r11	#, tmp506
	leaq	(%r11,%rdi), %rbx	#, _903
	andl	$16, %r11d	#, tmp506
	je	.L336	#,
	leaq	16(%rdi), %rsi	#, ivtmp.528
	movups	%xmm0, (%rdi)	# tmp507, MEM <vector(16) char> [(char *)_908]
	cmpq	%rsi, %rbx	# ivtmp.528, _903
	je	.L488	#,
	.p2align 4,,10
	.p2align 3
.L336:
	movups	%xmm0, (%rsi)	# tmp507, MEM <vector(16) char> [(char *)_908]
	addq	$32, %rsi	#, ivtmp.528
	movups	%xmm0, -16(%rsi)	# tmp507, MEM <vector(16) char> [(char *)_908]
	cmpq	%rsi, %rbx	# ivtmp.528, _903
	jne	.L336	#,
.L488:
	movl	%ecx, %r9d	# niters.452, niters_vector_mult_vf.454
	andl	$-16, %r9d	#,
	movl	%r9d, %esi	# niters_vector_mult_vf.454, niters_vector_mult_vf.454
	subl	%r9d, %r8d	# niters_vector_mult_vf.454, tmp.463
	addq	%rdi, %rsi	# str, tmp.462
	testb	$15, %cl	#, niters.452
	je	.L337	#,
.L335:
	subl	%r9d, %ecx	# niters_vector_mult_vf.454, niters.459
	leal	-1(%rcx), %r11d	#, tmp511
	cmpl	$6, %r11d	#, tmp511
	jbe	.L338	#,
	movabsq	$.LC3@GOTOFF, %r11	#, tmp514
	movq	0(%r13,%r11), %r11	#, tmp513
	movq	%r11, (%rdi,%r9)	# tmp513, MEM <vector(8) char> [(char *)vectp_str.465_611]
	movl	%ecx, %r9d	# niters.459, niters_vector_mult_vf.461
	andl	$-8, %r9d	#, niters_vector_mult_vf.461
	movl	%r9d, %r11d	# niters_vector_mult_vf.461, niters_vector_mult_vf.461
	subl	%r9d, %r8d	# niters_vector_mult_vf.461, tmp.463
	addq	%r11, %rsi	# niters_vector_mult_vf.461, tmp.462
	andl	$7, %ecx	#, niters.459
	je	.L337	#,
.L338:
	movb	$32, (%rsi)	#, *str_600
# printk.c:342: 				while(len <field_width--){
	leal	-1(%r8), %ecx	#, field_width
# printk.c:342: 				while(len <field_width--){
	cmpl	%r8d, %edx	# tmp.463, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 1(%rsi)	#, MEM[(char *)str_600 + 1B]
# printk.c:342: 				while(len <field_width--){
	leal	-2(%r8), %r9d	#, field_width
# printk.c:342: 				while(len <field_width--){
	cmpl	%ecx, %edx	# field_width, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 2(%rsi)	#, MEM[(char *)str_600 + 2B]
# printk.c:342: 				while(len <field_width--){
	leal	-3(%r8), %ecx	#, field_width
# printk.c:342: 				while(len <field_width--){
	cmpl	%r9d, %edx	# field_width, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 3(%rsi)	#, MEM[(char *)str_600 + 3B]
# printk.c:342: 				while(len <field_width--){
	leal	-4(%r8), %r9d	#, field_width
# printk.c:342: 				while(len <field_width--){
	cmpl	%ecx, %edx	# field_width, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 4(%rsi)	#, MEM[(char *)str_600 + 4B]
# printk.c:342: 				while(len <field_width--){
	subl	$5, %r8d	#, field_width
# printk.c:342: 				while(len <field_width--){
	cmpl	%r9d, %edx	# field_width, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 5(%rsi)	#, MEM[(char *)str_600 + 5B]
# printk.c:342: 				while(len <field_width--){
	cmpl	%r8d, %edx	# field_width, len
	jge	.L337	#,
# printk.c:343: 						*str++ =' ';
	movb	$32, 6(%rsi)	#, MEM[(char *)str_600 + 6B]
.L337:
	movl	%r10d, %r10d	# _371, _371
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	#, _397
	leaq	1(%rdi,%r10), %rdi	#, str
	jmp	.L263	#
.L389:
# printk.c:309: 	switch (*fmt){
	movq	%rbx, %r14	# fmt, _26
.L290:
# printk.c:360: 				if(field_width ==-1){
	cmpl	$-1, %ecx	#, i
	je	.L511	#,
.L346:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movl	(%r12), %eax	# args_106(D)->gp_offset, D.2839
	cmpl	$47, %eax	#, D.2839
	ja	.L347	#,
	movl	%eax, %edx	# D.2839, D.2842
	addl	$8, %eax	#, tmp535
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2844
	movl	%eax, (%r12)	# tmp535, args_106(D)->gp_offset
.L348:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(void * * {ref-all})addr.407_220], MEM[(void * * {ref-all})addr.407_220]
	movl	$16, %edx	#,
	jmp	.L498	#
	.p2align 4,,10
	.p2align 3
.L503:
# printk.c:110:  	int i=0;
	xorl	%r8d, %r8d	# i
	.p2align 4,,10
	.p2align 3
.L280:
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	subl	$48, %edx	#, tmp411
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%r8,%r8,4), %esi	#, tmp409
# printk.c:113:  		(*s)++;                   // 指针向后移动
	addq	$1, %rax	#, _180
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	movsbl	%dl, %edx	# tmp411, tmp412
# printk.c:114:  		i = i * 10 + (current_char - '0');  // 更新数值
	leal	(%rdx,%rsi,2), %r8d	#, i
# printk.c:112:  	while(is_digit(current_char = **s)){
	movsbl	(%rax), %edx	# MEM[(const char *)_180],
# printk.c:112:  	while(is_digit(current_char = **s)){
	leal	-48(%rdx), %esi	#, tmp413
	cmpb	$9, %sil	#, tmp413
	jbe	.L280	#,
# printk.c:296: 			if(precision <0){
	xorl	%esi, %esi	# tmp642
	testl	%r8d, %r8d	# i
	movq	%rax, %rbx	# _180, fmt
	cmovs	%esi, %r8d	# i,, tmp642, precision
	jmp	.L278	#
	.p2align 4,,10
	.p2align 3
.L504:
# printk.c:294: 				precision =va_arg(args,int);
	movl	(%r12), %eax	# args_106(D)->gp_offset, D.2789
# printk.c:293: 				fmt++;
	leaq	2(%rbx), %rsi	#, _17
# printk.c:294: 				precision =va_arg(args,int);
	cmpl	$47, %eax	#, D.2789
	ja	.L282	#,
	movl	%eax, %edx	# D.2789, D.2792
	addl	$8, %eax	#, tmp416
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2794
	movl	%eax, (%r12)	# tmp416, args_106(D)->gp_offset
.L283:
# printk.c:296: 			if(precision <0){
	movl	(%rdx), %r8d	# MEM[(int * {ref-all})addr.402_215], MEM[(int * {ref-all})addr.402_215]
	xorl	%eax, %eax	# tmp641
# printk.c:305: 		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
	movsbl	2(%rbx), %edx	# MEM[(const char *)fmt_196 + 2B],
# printk.c:293: 				fmt++;
	movq	%rsi, %rbx	# _17, fmt
# printk.c:296: 			if(precision <0){
	testl	%r8d, %r8d	# MEM[(int * {ref-all})addr.402_215]
	cmovs	%eax, %r8d	# MEM[(int * {ref-all})addr.402_215],, tmp641, precision
	jmp	.L278	#
	.p2align 4,,10
	.p2align 3
.L359:
# printk.c:383: 					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2884
	leaq	8(%rdx), %rax	#, tmp564
	movq	%rax, 8(%r12)	# tmp564, args_106(D)->overflow_arg_area
	jmp	.L360	#
	.p2align 4,,10
	.p2align 3
.L353:
# printk.c:373: 					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2864
	leaq	8(%rdx), %rax	#, tmp550
	movq	%rax, 8(%r12)	# tmp550, args_106(D)->overflow_arg_area
	jmp	.L354	#
.L312:
# printk.c:322: 				s=va_arg(args,char *);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2814
	leaq	8(%rdx), %rax	#, tmp471
	movq	%rax, 8(%r12)	# tmp471, args_106(D)->overflow_arg_area
	jmp	.L313	#
.L304:
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2804
	leaq	8(%rdx), %rax	#, tmp449
	movq	%rax, 8(%r12)	# tmp449, args_106(D)->overflow_arg_area
	jmp	.L305	#
.L367:
# printk.c:399: 				*str++ ='%';
	addq	$1, %rdi	#, str
	jmp	.L368	#
.L347:
# printk.c:365: 				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2844
	leaq	8(%rdx), %rax	#, tmp536
	movq	%rax, 8(%r12)	# tmp536, args_106(D)->overflow_arg_area
	jmp	.L348	#
.L511:
# printk.c:363: 					flags |=ZEROPAD;
	orl	$1, %r9d	#, flags
# printk.c:362: 					field_width=sizeof(void *)*2;
	movl	$16, %ecx	#, i
	jmp	.L346	#
.L507:
# printk.c:312: 					while(--field_width>0){
	leal	-1(%rcx), %esi	#, tmp586
	movl	%esi, %r8d	# tmp586, tmp.449
	cmpl	$1, %ecx	#, i
	jle	.L378	#,
	leal	-2(%rcx), %eax	#, tmp430
	cmpl	$14, %eax	#, tmp430
	movq	%rdi, %rax	# str, ivtmp.525
	jle	.L379	#,
	movabsq	$.LC2@GOTOFF, %r9	#, tmp587
	movl	%esi, %edx	# tmp586, bnd.439
	shrl	$4, %edx	#,
# printk.c:313: 						*str++ =' ';
	movdqa	(%r9,%r13), %xmm0	#, tmp434
	salq	$4, %rdx	#, tmp433
	leaq	(%rdx,%rdi), %r8	#, _912
	andl	$16, %edx	#, tmp433
	je	.L299	#,
	leaq	16(%rdi), %rax	#, ivtmp.525
	movups	%xmm0, (%rdi)	# tmp434, MEM <vector(16) char> [(char *)_190]
	cmpq	%r8, %rax	# _912, ivtmp.525
	je	.L480	#,
.L299:
	movups	%xmm0, (%rax)	# tmp434, MEM <vector(16) char> [(char *)_190]
	addq	$32, %rax	#, ivtmp.525
	movups	%xmm0, -16(%rax)	# tmp434, MEM <vector(16) char> [(char *)_190]
	cmpq	%r8, %rax	# _912, ivtmp.525
	jne	.L299	#,
.L480:
	movl	%esi, %edx	# tmp586, niters_vector_mult_vf.440
	movl	%esi, %r8d	# tmp586, tmp.449
	andl	$-16, %edx	#,
	movl	%edx, %eax	# niters_vector_mult_vf.440, niters_vector_mult_vf.440
	subl	%edx, %r8d	# niters_vector_mult_vf.440, tmp.449
	addq	%rdi, %rax	# str, tmp.441
	testb	$15, %sil	#, tmp586
	je	.L301	#,
.L298:
	subl	%edx, %ecx	# niters_vector_mult_vf.440, _134
	leal	-1(%rcx), %r9d	#, niters.445
	subl	$2, %ecx	#, tmp440
	cmpl	$6, %ecx	#, tmp440
	jbe	.L302	#,
	movabsq	$.LC3@GOTOFF, %rcx	#, tmp443
	movq	0(%r13,%rcx), %rcx	#, tmp442
	movq	%rcx, (%rdi,%rdx)	# tmp442, MEM <vector(8) char> [(char *)vectp_str.451_56]
	movl	%r9d, %edx	# niters.445, niters_vector_mult_vf.447
	andl	$-8, %edx	#, niters_vector_mult_vf.447
	movl	%edx, %ecx	# niters_vector_mult_vf.447, niters_vector_mult_vf.447
	subl	%edx, %r8d	# niters_vector_mult_vf.447, tmp.449
	addq	%rcx, %rax	# niters_vector_mult_vf.447, tmp.441
	andl	$7, %r9d	#, niters.445
	je	.L301	#,
.L302:
	movb	$32, (%rax)	#, *str_82
# printk.c:312: 					while(--field_width>0){
	cmpl	$1, %r8d	#, tmp.449
	jle	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 1(%rax)	#, MEM[(char *)str_82 + 1B]
# printk.c:312: 					while(--field_width>0){
	cmpl	$2, %r8d	#, tmp.449
	je	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 2(%rax)	#, MEM[(char *)str_82 + 2B]
# printk.c:312: 					while(--field_width>0){
	cmpl	$3, %r8d	#, tmp.449
	je	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 3(%rax)	#, MEM[(char *)str_82 + 3B]
# printk.c:312: 					while(--field_width>0){
	cmpl	$4, %r8d	#, tmp.449
	je	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 4(%rax)	#, MEM[(char *)str_82 + 4B]
# printk.c:312: 					while(--field_width>0){
	cmpl	$5, %r8d	#, tmp.449
	je	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 5(%rax)	#, MEM[(char *)str_82 + 5B]
# printk.c:312: 					while(--field_width>0){
	cmpl	$6, %r8d	#, tmp.449
	je	.L301	#,
# printk.c:313: 						*str++ =' ';
	movb	$32, 6(%rax)	#, MEM[(char *)str_82 + 6B]
.L301:
	movslq	%esi, %rsi	# tmp586, tmp437
# printk.c:312: 					while(--field_width>0){
	xorl	%ecx, %ecx	# i
	addq	%rsi, %rdi	# tmp437, str
	jmp	.L297	#
.L292:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_573
# printk.c:387: 				if(qualifier =='l'){
	cmpl	$108, %edx	#, qualifier
	je	.L512	#,
.L362:
# printk.c:391: 					int *ip=va_arg(args,int *);
	cmpl	$47, %eax	#, pretmp_573
	ja	.L365	#,
	movl	%eax, %edx	# pretmp_573, D.2902
	addl	$8, %eax	#, tmp575
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2904
	movl	%eax, (%r12)	# tmp575, args_106(D)->gp_offset
.L366:
	movq	(%rdx), %rax	# MEM[(int * * {ref-all})addr.413_226], ip
# printk.c:392: 					*ip=(str-buf);
	movq	%rdi, %rdx	# str, tmp577
	subq	%r15, %rdx	# buf, tmp577
# printk.c:392: 					*ip=(str-buf);
	movl	%edx, (%rax)	# tmp577, *ip_138
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	1(%r14), %rax	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	#, _397
	jmp	.L263	#
.L291:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_574
# printk.c:352: 				if(qualifier =='l'){
	cmpl	$108, %edx	#, qualifier
	je	.L513	#,
.L341:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	cmpl	$47, %eax	#, pretmp_574
	ja	.L344	#,
	movl	%eax, %edx	# pretmp_574, D.2832
	addl	$8, %eax	#, tmp528
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2834
	movl	%eax, (%r12)	# tmp528, args_106(D)->gp_offset
.L345:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movl	(%rdx), %esi	# MEM[(unsigned int * {ref-all})addr.406_219], MEM[(unsigned int * {ref-all})addr.406_219]
	movl	$8, %edx	#,
	jmp	.L498	#
	.p2align 4,,10
	.p2align 3
.L506:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	cmpl	$47, %eax	#, pretmp_572
	ja	.L357	#,
	movl	%eax, %edx	# pretmp_572, D.2872
	addl	$8, %eax	#, tmp556
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2874
	movl	%eax, (%r12)	# tmp556, args_106(D)->gp_offset
.L358:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.410_223], MEM[(long unsigned int * {ref-all})addr.410_223]
	movl	$10, %edx	#,
.L497:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movabsq	$number@GOTOFF, %rax	#, tmp546
	addq	%r13, %rax	# tmp82, tmp545
	call	*%rax	# tmp545
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	2(%rbx), %edx	# MEM[(const char *)fmt_199 + 2B], _397
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	%rax, %rdi	# tmp633, str
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	2(%rbx), %rax	#, fmt
	jmp	.L263	#
	.p2align 4,,10
	.p2align 3
.L505:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	cmpl	$47, %eax	#, pretmp_569
	ja	.L351	#,
	movl	%eax, %edx	# pretmp_569, D.2852
	addl	$8, %eax	#, tmp542
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2854
	movl	%eax, (%r12)	# tmp542, args_106(D)->gp_offset
.L352:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.408_221], MEM[(long unsigned int * {ref-all})addr.408_221]
	movl	$16, %edx	#,
	jmp	.L497	#
.L373:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	xorl	%eax, %eax	# <retval>
	jmp	.L261	#
.L282:
# printk.c:294: 				precision =va_arg(args,int);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2794
	leaq	8(%rdx), %rax	#, tmp417
	movq	%rax, 8(%r12)	# tmp417, args_106(D)->overflow_arg_area
	jmp	.L283	#
.L510:
	cmpl	$14, %eax	#, _619
	jbe	.L384	#,
	movl	%edx, %r8d	# len, bnd.467
# printk.c:339: 				for(i=0;i<len;i++){
	xorl	%eax, %eax	# ivtmp.542
	shrl	$4, %r8d	#,
	salq	$4, %r8	#, _747
	.p2align 4,,10
	.p2align 3
.L327:
# printk.c:340: 						*str++ =*s++;
	movdqu	(%rsi,%rax), %xmm1	# MEM <vector(16) char> [(char *)s_116 + ivtmp.542_724 * 1], tmp756
	movups	%xmm1, (%rdi,%rax)	# tmp756, MEM <vector(16) char> [(char *)str_60 + ivtmp.542_724 * 1]
	addq	$16, %rax	#, ivtmp.542
	cmpq	%r8, %rax	# _747, ivtmp.542
	jne	.L327	#,
	movl	%edx, %eax	# len, tmp.482
	andl	$-16, %eax	#, tmp.482
	movl	%eax, %r8d	# tmp.482, _656
	movl	%eax, %r10d	# tmp.482,
	leaq	(%rdi,%r8), %r9	#, tmp.480
	addq	%rsi, %r8	# s, tmp.481
	cmpl	%eax, %edx	# tmp.482, len
	je	.L333	#,
	movl	%edx, %r11d	# len, niters.477
	subl	%eax, %r11d	# tmp.482, niters.477
	leal	-1(%r11), %ebx	#, tmp495
	cmpl	$6, %ebx	#, tmp495
	jbe	.L330	#,
.L326:
# printk.c:340: 						*str++ =*s++;
	movq	(%rsi,%r10), %rsi	# MEM <vector(8) char> [(char *)vectp_s.484_700], MEM <vector(8) char> [(char *)vectp_s.484_700]
# printk.c:340: 						*str++ =*s++;
	movq	%rsi, (%rdi,%r10)	# MEM <vector(8) char> [(char *)vectp_s.484_700], MEM <vector(8) char> [(char *)vectp_str.487_705]
	movl	%r11d, %esi	# niters.477, niters_vector_mult_vf.479
	andl	$-8, %esi	#, niters_vector_mult_vf.479
	movl	%esi, %r10d	# niters_vector_mult_vf.479, _694
	addl	%esi, %eax	# niters_vector_mult_vf.479, tmp.482
	addq	%r10, %r9	# _694, tmp.480
	addq	%r10, %r8	# _694, tmp.481
	andl	$7, %r11d	#, niters.477
	je	.L333	#,
.L330:
# printk.c:340: 						*str++ =*s++;
	movzbl	(%r8), %esi	# *s_688, _818
# printk.c:340: 						*str++ =*s++;
	movb	%sil, (%r9)	# _818, *str_687
# printk.c:339: 				for(i=0;i<len;i++){
	leal	1(%rax), %esi	#, i
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%esi, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	1(%r8), %esi	# MEM[(char *)s_688 + 1B], _827
# printk.c:340: 						*str++ =*s++;
	movb	%sil, 1(%r9)	# _827, MEM[(char *)str_687 + 1B]
# printk.c:339: 				for(i=0;i<len;i++){
	leal	2(%rax), %esi	#, i
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%esi, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	2(%r8), %esi	# MEM[(char *)s_688 + 2B], _836
# printk.c:340: 						*str++ =*s++;
	movb	%sil, 2(%r9)	# _836, MEM[(char *)str_687 + 2B]
# printk.c:339: 				for(i=0;i<len;i++){
	leal	3(%rax), %esi	#, i
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%esi, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	3(%r8), %esi	# MEM[(char *)s_688 + 3B], _845
# printk.c:340: 						*str++ =*s++;
	movb	%sil, 3(%r9)	# _845, MEM[(char *)str_687 + 3B]
# printk.c:339: 				for(i=0;i<len;i++){
	leal	4(%rax), %esi	#, i
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%esi, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	4(%r8), %esi	# MEM[(char *)s_688 + 4B], _854
# printk.c:340: 						*str++ =*s++;
	movb	%sil, 4(%r9)	# _854, MEM[(char *)str_687 + 4B]
# printk.c:339: 				for(i=0;i<len;i++){
	leal	5(%rax), %esi	#, i
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%esi, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	5(%r8), %esi	# MEM[(char *)s_688 + 5B], _863
# printk.c:339: 				for(i=0;i<len;i++){
	addl	$6, %eax	#, i
# printk.c:340: 						*str++ =*s++;
	movb	%sil, 5(%r9)	# _863, MEM[(char *)str_687 + 5B]
# printk.c:339: 				for(i=0;i<len;i++){
	cmpl	%eax, %edx	# i, len
	jle	.L333	#,
# printk.c:340: 						*str++ =*s++;
	movzbl	6(%r8), %eax	# MEM[(char *)s_688 + 6B], _680
# printk.c:340: 						*str++ =*s++;
	movb	%al, 6(%r9)	# _680, MEM[(char *)str_687 + 6B]
	jmp	.L333	#
.L357:
# printk.c:381: 					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2874
	leaq	8(%rdx), %rax	#, tmp557
	movq	%rax, 8(%r12)	# tmp557, args_106(D)->overflow_arg_area
	jmp	.L358	#
.L351:
# printk.c:371: 					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2854
	leaq	8(%rdx), %rax	#, tmp543
	movq	%rax, 8(%r12)	# tmp543, args_106(D)->overflow_arg_area
	jmp	.L352	#
.L513:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	cmpl	$47, %eax	#, pretmp_574
	jbe	.L514	#,
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2824
	leaq	8(%rdx), %rax	#, tmp522
	movq	%rax, 8(%r12)	# tmp522, args_106(D)->overflow_arg_area
.L343:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movq	(%rdx), %rsi	# MEM[(long unsigned int * {ref-all})addr.405_218], MEM[(long unsigned int * {ref-all})addr.405_218]
	movl	$8, %edx	#,
	jmp	.L497	#
.L512:
# printk.c:388: 					long *ip=va_arg(args,long *);
	cmpl	$47, %eax	#, pretmp_573
	jbe	.L515	#,
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2894
	leaq	8(%rdx), %rax	#, tmp571
	movq	%rax, 8(%r12)	# tmp571, args_106(D)->overflow_arg_area
.L364:
	movq	(%rdx), %rax	# MEM[(long int * * {ref-all})addr.412_225], ip
# printk.c:389: 					*ip=(str-buf);
	movq	%rdi, %rdx	# str, tmp572
	subq	%r15, %rdx	# buf, tmp572
	movq	%rdx, (%rax)	# tmp572, *ip_141
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	leaq	2(%rbx), %rax	#, fmt
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	2(%rbx), %edx	# MEM[(const char *)fmt_199 + 2B], _397
	jmp	.L263	#
.L365:
# printk.c:391: 					int *ip=va_arg(args,int *);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2904
	leaq	8(%rdx), %rax	#, tmp576
	movq	%rax, 8(%r12)	# tmp576, args_106(D)->overflow_arg_area
	jmp	.L366	#
.L344:
# printk.c:356: 					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
	movq	8(%r12), %rdx	# args_106(D)->overflow_arg_area, D.2834
	leaq	8(%rdx), %rax	#, tmp529
	movq	%rax, 8(%r12)	# tmp529, args_106(D)->overflow_arg_area
	jmp	.L345	#
.L509:
# printk.c:312: 					while(--field_width>0){
	leal	-1(%rcx), %r8d	#, tmp.499
# printk.c:335: 					while(len <field_width--){
	cmpl	%edx, %ecx	# len, i
	jle	.L382	#,
	subl	%edx, %ecx	# len, niters.488
	movq	%rdi, %rax	# str, ivtmp.549
	leal	-1(%rcx), %r10d	#, _725
	cmpl	$14, %r10d	#, _725
	jbe	.L383	#,
	movabsq	$.LC2@GOTOFF, %r9	#, tmp587
	movl	%ecx, %r11d	# niters.488, bnd.489
	shrl	$4, %r11d	#,
# printk.c:336: 						*str++ =' ';
	movdqa	(%r9,%r13), %xmm0	#, tmp477
	salq	$4, %r11	#, tmp476
	leaq	(%r11,%rdi), %rbx	#, _778
	andl	$16, %r11d	#, tmp476
	je	.L319	#,
	leaq	16(%rdi), %rax	#, ivtmp.549
	movups	%xmm0, (%rdi)	# tmp477, MEM <vector(16) char> [(char *)_758]
	cmpq	%rbx, %rax	# _778, ivtmp.549
	je	.L483	#,
.L319:
	movups	%xmm0, (%rax)	# tmp477, MEM <vector(16) char> [(char *)_758]
	addq	$32, %rax	#, ivtmp.549
	movups	%xmm0, -16(%rax)	# tmp477, MEM <vector(16) char> [(char *)_758]
	cmpq	%rbx, %rax	# _778, ivtmp.549
	jne	.L319	#,
.L483:
	movl	%ecx, %r9d	# niters.488, niters_vector_mult_vf.490
	andl	$-16, %r9d	#,
	movl	%r9d, %eax	# niters_vector_mult_vf.490, niters_vector_mult_vf.490
	subl	%r9d, %r8d	# niters_vector_mult_vf.490, tmp.499
	addq	%rdi, %rax	# str, tmp.498
	testb	$15, %cl	#, niters.488
	je	.L321	#,
.L318:
	subl	%r9d, %ecx	# niters_vector_mult_vf.490, niters.495
	leal	-1(%rcx), %r11d	#, tmp483
	cmpl	$6, %r11d	#, tmp483
	jbe	.L322	#,
	movabsq	$.LC3@GOTOFF, %r11	#, tmp486
	movq	0(%r13,%r11), %r11	#, tmp485
	movq	%r11, (%rdi,%r9)	# tmp485, MEM <vector(8) char> [(char *)vectp_str.501_772]
	movl	%ecx, %r9d	# niters.495, niters_vector_mult_vf.497
	andl	$-8, %r9d	#, niters_vector_mult_vf.497
	movl	%r9d, %r11d	# niters_vector_mult_vf.497, niters_vector_mult_vf.497
	subl	%r9d, %r8d	# niters_vector_mult_vf.497, tmp.499
	addq	%r11, %rax	# niters_vector_mult_vf.497, tmp.498
	andl	$7, %ecx	#, niters.495
	je	.L321	#,
.L322:
	movb	$32, (%rax)	#, *str_761
# printk.c:335: 					while(len <field_width--){
	leal	-1(%r8), %ecx	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%r8d, %edx	# tmp.499, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 1(%rax)	#, MEM[(char *)str_761 + 1B]
# printk.c:335: 					while(len <field_width--){
	leal	-2(%r8), %r9d	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%ecx, %edx	# field_width, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 2(%rax)	#, MEM[(char *)str_761 + 2B]
# printk.c:335: 					while(len <field_width--){
	leal	-3(%r8), %ecx	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%r9d, %edx	# field_width, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 3(%rax)	#, MEM[(char *)str_761 + 3B]
# printk.c:335: 					while(len <field_width--){
	leal	-4(%r8), %r9d	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%ecx, %edx	# field_width, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 4(%rax)	#, MEM[(char *)str_761 + 4B]
# printk.c:335: 					while(len <field_width--){
	subl	$5, %r8d	#, field_width
# printk.c:335: 					while(len <field_width--){
	cmpl	%r9d, %edx	# field_width, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 5(%rax)	#, MEM[(char *)str_761 + 5B]
# printk.c:335: 					while(len <field_width--){
	cmpl	%r8d, %edx	# field_width, len
	jge	.L321	#,
# printk.c:336: 						*str++ =' ';
	movb	$32, 6(%rax)	#, MEM[(char *)str_761 + 6B]
.L321:
	movl	%r10d, %r10d	# _725, _725
	leal	-1(%rdx), %ecx	#, i
	leaq	1(%rdi,%r10), %rdi	#, str
	jmp	.L317	#
.L514:
# printk.c:353: 					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
	movl	%eax, %edx	# pretmp_574, D.2822
	addl	$8, %eax	#, tmp521
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2824
	movl	%eax, (%r12)	# tmp521, args_106(D)->gp_offset
	jmp	.L343	#
.L515:
# printk.c:388: 					long *ip=va_arg(args,long *);
	movl	%eax, %edx	# pretmp_573, D.2892
	addl	$8, %eax	#, tmp570
	addq	16(%r12), %rdx	# args_106(D)->reg_save_area, D.2894
	movl	%eax, (%r12)	# tmp570, args_106(D)->gp_offset
	jmp	.L364	#
.L355:
# printk.c:322: 				s=va_arg(args,char *);
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_572
# printk.c:378: 				flags |=SIGN;
	orl	$2, %r9d	#, flags
# printk.c:322: 				s=va_arg(args,char *);
	movq	%rbx, %r14	# fmt, _26
	jmp	.L356	#
.L349:
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_569
# printk.c:368: 				flags |=SMALL;
	orl	$64, %r9d	#, flags
# printk.c:322: 				s=va_arg(args,char *);
	movq	%rbx, %r14	# fmt, _26
	jmp	.L350	#
.L372:
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_572
	movq	%rbx, %r14	# fmt, _26
	jmp	.L356	#
.L340:
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_574
	movq	%rbx, %r14	# fmt, _26
	jmp	.L341	#
.L361:
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_573
	movq	%rbx, %r14	# fmt, _26
	jmp	.L362	#
.L370:
	movl	(%r12), %eax	# args_106(D)->gp_offset, pretmp_569
	movq	%rbx, %r14	# fmt, _26
	jmp	.L350	#
.L378:
# printk.c:312: 					while(--field_width>0){
	movl	%esi, %ecx	# tmp586, i
	jmp	.L297	#
.L382:
# printk.c:335: 					while(len <field_width--){
	movl	%r8d, %ecx	# tmp.499, i
	jmp	.L317	#
.L381:
# lib.h:531:     while (*ptr != '\0') {
	xorl	%edx, %edx	# len
	jmp	.L314	#
.L508:
# printk.c:240: 	for (str=buf;*fmt;fmt++)
	movzbl	1(%r14), %edx	# MEM[(const char *)fmt_181 + 1B], _397
# printk.c:316: 				*str++ =(unsigned char)va_arg(args,int);
	movq	%r10, %rdi	# str, str
	jmp	.L263	#
.L380:
	movq	%r10, %rdx	# str, tmp.427
# printk.c:317: 				while(--field_width>0){
	xorl	%r9d, %r9d	# niters_vector_mult_vf.426
	jmp	.L307	#
.L385:
# printk.c:342: 				while(len <field_width--){
	xorl	%r9d, %r9d	#
	jmp	.L335	#
.L384:
# printk.c:339: 				for(i=0;i<len;i++){
	movl	%edx, %r11d	# len, niters.477
	movq	%rsi, %r8	# s, tmp.481
	movq	%rdi, %r9	# str, tmp.480
	xorl	%r10d, %r10d	#
# printk.c:339: 				for(i=0;i<len;i++){
	xorl	%eax, %eax	# tmp.482
	jmp	.L326	#
.L383:
# printk.c:335: 					while(len <field_width--){
	xorl	%r9d, %r9d	#
	jmp	.L318	#
.L379:
# printk.c:312: 					while(--field_width>0){
	xorl	%edx, %edx	#
	jmp	.L298	#
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
.L614:
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L614, %r11	#,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r15d	# tmp2312, BKcolor
	movq	%rdx, %rsi	# tmp2313, fmt
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d	# tmp2311, FRcolor
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	.L614(%rip), %rbp	#, tmp82
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	addq	%r11, %rbp	#, tmp82
	subq	$552, %rsp	#,
	.cfi_def_cfa_offset 608
	movq	%rcx, 392(%rsp)	#,
	movq	%r8, 400(%rsp)	#,
	movq	%r9, 408(%rsp)	#,
	testb	%al, %al	#
	je	.L591	#,
	movaps	%xmm0, 416(%rsp)	#,
	movaps	%xmm1, 432(%rsp)	#,
	movaps	%xmm2, 448(%rsp)	#,
	movaps	%xmm3, 464(%rsp)	#,
	movaps	%xmm4, 480(%rsp)	#,
	movaps	%xmm5, 496(%rsp)	#,
	movaps	%xmm6, 512(%rsp)	#,
	movaps	%xmm7, 528(%rsp)	#,
.L591:
# printk.c:35: 	va_start(args,fmt);	
	leaq	608(%rsp), %rax	#, tmp2394
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	leaq	344(%rsp), %rdx	#, tmp856
# printk.c:35: 	va_start(args,fmt);	
	movl	$24, 344(%rsp)	#, MEM[(struct [1] *)&args].gp_offset
	movq	%rax, 352(%rsp)	# tmp2394, MEM[(struct [1] *)&args].overflow_arg_area
	leaq	368(%rsp), %rax	#, tmp2395
	movq	%rax, 360(%rsp)	# tmp2395, MEM[(struct [1] *)&args].reg_save_area
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	movabsq	$buf@GOTOFF, %rax	#, tmp2295
	movq	%rax, 272(%rsp)	# tmp2295, %sfp
	leaq	(%rax,%rbp), %rdi	#, tmp857
	movabsq	$vsprintf@GOTOFF, %rax	#, tmp860
# printk.c:35: 	va_start(args,fmt);	
	movl	$48, 348(%rsp)	#, MEM[(struct [1] *)&args].fp_offset
# printk.c:36: 	i=vsprintf(buf,fmt,args);
	addq	%rbp, %rax	# tmp82, tmp859
	call	*%rax	# tmp859
	movl	%eax, 212(%rsp)	# <retval>, %sfp
# printk.c:38: 	for(count=0;count<i || line;count++){
	testl	%eax, %eax	# <retval>
	jle	.L516	#,
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movabsq	$Pos@GOTOFF, %r14	#, tmp2294
# printk.c:38: 	for(count=0;count<i || line;count++){
	xorl	%r12d, %r12d	# count
# printk.c:33: 	int line=0;
	movl	$0, 208(%rsp)	#, %sfp
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movq	24(%r14,%rbp), %rax	# Pos.FB_addr, _50
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	20(%r14,%rbp), %r8d	# Pos.YCharSize, prephitmp_267
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	16(%r14,%rbp), %edi	# Pos.XCharSize, prephitmp_276
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	(%r14,%rbp), %esi	# Pos.XResolution, prephitmp_109
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	movq	%rax, 16(%rsp)	# _50, %sfp
# printk.c:44: 			Pos.YPosition++;
	movl	12(%r14,%rbp), %ecx	# Pos.YPosition, prephitmp_424
# printk.c:13: 	for(i=0;i<16;i++){
	movl	%r8d, %r9d	# prephitmp_267, prephitmp_267
	movl	%r12d, %r8d	# count, count
# printk.c:12: 	fontp=font_ascii[font];
	movabsq	$font_ascii@GOTOFF, %rax	#, tmp2301
	addq	%rbp, %rax	# tmp82, tmp2302
	movq	%rax, 320(%rsp)	# tmp2302, %sfp
	movabsq	$.LC8@GOTOFF, %rax	#, tmp2303
	movq	%rax, 280(%rsp)	# tmp2303, %sfp
	movabsq	$.LC3@GOTOFF, %rax	#, tmp2304
	movq	%rax, 288(%rsp)	# tmp2304, %sfp
	movabsq	$512+font_ascii@GOTOFF, %rax	#, tmp2305
	movq	%rax, 296(%rsp)	# tmp2305, %sfp
	addq	%rbp, %rax	# tmp82, tmp2306
	movq	%rax, 304(%rsp)	# tmp2306, %sfp
	addq	$15, %rax	#, tmp2307
	movq	%rax, 312(%rsp)	# tmp2307, %sfp
	movabsq	$528+font_ascii@GOTOFF, %rax	#, tmp2308
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rbp, %rax	# tmp82, tmp2309
	movq	%rax, 200(%rsp)	# tmp2309, %sfp
	movl	%r15d, %eax	# BKcolor, BKcolor
	movl	%r13d, %r15d	# FRcolor, FRcolor
	movl	%eax, 8(%rsp)	# BKcolor, %sfp
	.p2align 4,,10
	.p2align 3
.L607:
# printk.c:39: 		if(line >0){
	movl	208(%rsp), %edx	# %sfp,
	testl	%edx, %edx	#
	jg	.L623	#,
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movq	272(%rsp), %rax	# %sfp, tmp2295
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	movslq	%r8d, %rdx	# count, count
# printk.c:38: 	for(count=0;count<i || line;count++){
	addl	$1, %r8d	#, count
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	addq	%rbp, %rax	# tmp82, tmp870
	movzbl	(%rdx,%rax), %eax	# *_2, _3
# printk.c:43: 		if((unsigned char)*(buf+count)=='\n'){
	cmpb	$10, %al	#, _3
	je	.L624	#,
# printk.c:47: 			Pos.XPosition--;
	movl	8(%r14,%rbp), %edx	# Pos.XPosition, pretmp_110
# printk.c:46: 		}else if((unsigned char)*(buf+count)=='\b'){
	cmpb	$8, %al	#, _3
	je	.L625	#,
# printk.c:56: 		}else if((unsigned char)*(buf+count)=='\t'){
	cmpb	$9, %al	#, _3
	je	.L626	#,
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	imull	%ecx, %r9d	# prephitmp_424, tmp1814
	movslq	%esi, %r11	# prephitmp_109, _1322
# printk.c:12: 	fontp=font_ascii[font];
	movzbl	%al, %ebx	# _3, _41
	movq	320(%rsp), %r12	# %sfp, tmp2302
# printk.c:65: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
	imull	%edi, %edx	# prephitmp_276, tmp1817
# printk.c:12: 	fontp=font_ascii[font];
	salq	$4, %rbx	#, tmp1811
	xorl	%edi, %edi	# tmp1832
	leaq	(%rbx,%r12), %r10	#, fontp
	leaq	0(,%r11,4), %rax	#, _1323
	imull	%esi, %r9d	# prephitmp_109, tmp1815
	movq	%rax, 24(%rsp)	# _1323, %sfp
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %rdx	# tmp1817, tmp1818
	movslq	%r9d, %rcx	# tmp1815, tmp1816
	leaq	15(%r12,%rbx), %r9	#, tmp1828
	movq	16(%rsp), %rbx	# %sfp, _50
	addq	%rcx, %rdx	# tmp1816, tmp1819
	movq	%r11, %rcx	# _1322, tmp1821
	salq	$4, %rcx	#, tmp1821
	salq	$2, %rdx	#, _1330
	subq	%r11, %rcx	# _1322, tmp1822
	salq	$2, %rcx	#, tmp1823
	testl	%esi, %esi	# prephitmp_109
	cmovs	%rcx, %rdi	# tmp1823,, tmp1831
	addq	%rdx, %rdi	# _1330, tmp1833
	addq	%rbx, %rdi	# _50, tmp1834
	cmpq	%rdi, %r9	# tmp1834, tmp1828
	setb	%dil	#, tmp1836
	addq	$31, %rcx	#, tmp1837
	testl	%esi, %esi	# prephitmp_109
	movl	$31, %esi	#, tmp1838
	cmovs	%rsi, %rcx	# tmp1837,, tmp1838, tmp1837
	movq	%rbx, %rsi	# _50, _50
	addq	%rdx, %rcx	# _1330, tmp1839
	addq	%rbx, %rcx	# _50, tmp1840
	cmpq	%r10, %rcx	# fontp, tmp1840
	setb	%cl	#, tmp1842
	orb	%dil, %cl	# tmp1836, tmp2317
	je	.L553	#,
	leaq	31(%rax), %rcx	#, tmp1844
	movq	%rax, %rbx	# _1323, _1323
	cmpq	$62, %rcx	#, tmp1844
	jbe	.L553	#,
	leaq	16(%r10), %r13	#, _1768
	leaq	(%rsi,%rdx), %r12	#, ivtmp.850
	movd	%r15d, %xmm2	# FRcolor, FRcolor
	movq	%r11, %rax	# _1322, _1322
	leaq	(%r12,%rbx), %rdi	#, ivtmp.854
	movq	%rbx, %r11	# _1323, _1323
	salq	$5, %rax	#, _1322
# printk.c:19: 			if(*fontp & testval){
	pxor	%xmm9, %xmm9	# tmp1849
	leaq	(%rdi,%rbx), %rsi	#, ivtmp.855
	movq	%r13, 184(%rsp)	# _1768, %sfp
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	pshufd	$0xe0, %xmm2, %xmm11	# FRcolor, vect_cst__1376
	movq	%r13, 56(%rsp)	# tmp2298, %sfp
	leaq	(%rsi,%rbx), %rcx	#, ivtmp.856
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movd	8(%rsp), %xmm2	# %sfp, BKcolor
	movq	%r13, 24(%rsp)	# tmp2290, %sfp
	leaq	(%rcx,%rbx), %rdx	#, ivtmp.857
	pxor	%xmm15, %xmm15	# tmp1861
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	%r13, 32(%rsp)	# tmp2291, %sfp
	leaq	(%rdx,%rbx), %r9	#, ivtmp.858
	pshufd	$0xe0, %xmm2, %xmm10	# BKcolor, vect_cst__1377
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	%r13, 40(%rsp)	# tmp2292, %sfp
	leaq	(%r9,%rbx), %rbx	#, ivtmp.859
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	%r13, 48(%rsp)	# tmp2293, %sfp
	movq	280(%rsp), %r13	# %sfp, tmp2303
	addq	%rbx, %r11	# ivtmp.859, ivtmp.860
	movl	%r8d, 264(%rsp)	# count, %sfp
	movq	0(%r13,%rbp), %r13	#, tmp1888
	movq	%r13, 192(%rsp)	# tmp1888, %sfp
	movq	288(%rsp), %r13	# %sfp, tmp2304
	movq	0(%r13,%rbp), %r13	#, tmp1931
	movq	%r13, 216(%rsp)	# tmp1931, %sfp
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	movq	0(%r13,%rbp), %r13	#, tmp1974
	movq	%r13, 224(%rsp)	# tmp1974, %sfp
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movq	0(%r13,%rbp), %r13	#, tmp2017
	movq	%r13, 232(%rsp)	# tmp2017, %sfp
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	0(%r13,%rbp), %r13	#, tmp2060
	movq	%r13, 240(%rsp)	# tmp2060, %sfp
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	0(%r13,%rbp), %r13	#, tmp2103
	movq	%r13, 248(%rsp)	# tmp2103, %sfp
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	0(%r13,%rbp), %r13	#, tmp2146
	movq	%r13, 256(%rsp)	# tmp2146, %sfp
	movd	%xmm2, %r13d	# BKcolor, BKcolor
	movl	%r13d, %r8d	# BKcolor, BKcolor
.L554:
# printk.c:19: 			if(*fontp & testval){
	movq	(%r10), %xmm2	# MEM <vector(8) unsigned char> [(unsigned char *)_1294], vect__391.717
# printk.c:19: 			if(*fontp & testval){
	movdqa	%xmm9, %xmm1	# tmp1849, tmp1850
	movdqa	%xmm9, %xmm0	# tmp1849, tmp1853
	movdqa	%xmm11, %xmm3	# vect_cst__1376, tmp1864
	movdqa	%xmm9, %xmm4	# tmp1849, tmp1896
	movdqa	%xmm15, %xmm6	# tmp1861, tmp1905
	movdqa	%xmm11, %xmm7	# vect_cst__1376, tmp1907
	addq	$8, %r10	#, ivtmp.847
	pcmpgtb	%xmm2, %xmm1	# vect__391.717, tmp1850
	pcmpgtb	%xmm1, %xmm0	# tmp1850, tmp1853
	movdqa	%xmm1, %xmm5	# tmp1850, tmp1854
	punpcklbw	%xmm0, %xmm5	# tmp1853, tmp1854
	punpcklbw	%xmm0, %xmm1	# tmp1853, tmp1858
	movdqa	%xmm15, %xmm0	# tmp1861, tmp1862
	pcmpgtw	%xmm5, %xmm0	# tmp1854, tmp1862
	movdqa	%xmm5, %xmm14	# tmp1854, tmp1863
	pshufd	$78, %xmm1, %xmm1	#, tmp1858, tmp1858
	movdqa	%xmm1, %xmm13	# tmp1858, tmp1877
	punpcklwd	%xmm0, %xmm5	# tmp1862, tmp1870
	punpcklwd	%xmm0, %xmm14	# tmp1862, tmp1863
	movdqa	%xmm11, %xmm0	# vect_cst__1376, tmp1871
	pshufd	$78, %xmm5, %xmm5	#, tmp1870, tmp1870
	pand	%xmm14, %xmm3	# tmp1863, tmp1864
	pandn	%xmm10, %xmm14	# vect_cst__1377, tmp1865
	pand	%xmm5, %xmm0	# tmp1870, tmp1871
	pandn	%xmm10, %xmm5	# vect_cst__1377, tmp1872
	por	%xmm3, %xmm14	# tmp1864, vect_patt_1306.722
	por	%xmm0, %xmm5	# tmp1871, vect_patt_1306.722
	movdqa	%xmm15, %xmm0	# tmp1861, tmp1876
	movdqa	%xmm11, %xmm3	# vect_cst__1376, tmp1878
	movd	%xmm14, (%r12)	# vect_patt_1306.722, MEM[(unsigned int *)_289]
	pcmpgtw	%xmm1, %xmm0	# tmp1858, tmp1876
	punpcklwd	%xmm0, %xmm1	# tmp1876, tmp1884
	punpcklwd	%xmm0, %xmm13	# tmp1876, tmp1877
	movdqa	%xmm11, %xmm0	# vect_cst__1376, tmp1885
	pshufd	$78, %xmm1, %xmm1	#, tmp1884, tmp1884
	pand	%xmm13, %xmm3	# tmp1877, tmp1878
	pandn	%xmm10, %xmm13	# vect_cst__1377, tmp1879
	pand	%xmm1, %xmm0	# tmp1884, tmp1885
	pandn	%xmm10, %xmm1	# vect_cst__1377, tmp1886
	por	%xmm3, %xmm13	# tmp1878, tmp1879
	por	%xmm0, %xmm1	# tmp1885, tmp1886
	movq	%xmm13, %r13	# tmp1879, vect_patt_1306.722
	movq	192(%rsp), %xmm0	# %sfp, vect__507.726
	movq	%xmm1, 8(%rsp)	# tmp1886, %sfp
	pand	%xmm2, %xmm0	# vect__391.717, vect__507.726
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1891
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1893
	pcmpgtb	%xmm0, %xmm4	# tmp1893, tmp1896
	movdqa	%xmm0, %xmm3	# tmp1893, tmp1897
	punpcklbw	%xmm4, %xmm3	# tmp1896, tmp1897
	punpcklbw	%xmm4, %xmm0	# tmp1896, tmp1901
	pcmpgtw	%xmm3, %xmm6	# tmp1897, tmp1905
	movdqa	%xmm3, %xmm4	# tmp1897, tmp1906
	pshufd	$78, %xmm0, %xmm0	#, tmp1901, tmp1901
	punpcklwd	%xmm6, %xmm4	# tmp1905, tmp1906
	punpcklwd	%xmm6, %xmm3	# tmp1905, tmp1913
	movdqa	%xmm11, %xmm6	# vect_cst__1376, tmp1921
	pand	%xmm4, %xmm7	# tmp1906, tmp1907
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp1908
	pshufd	$78, %xmm3, %xmm3	#, tmp1913, tmp1913
	por	%xmm7, %xmm4	# tmp1907, tmp1908
	movdqa	%xmm11, %xmm7	# vect_cst__1376, tmp1914
	pand	%xmm3, %xmm7	# tmp1913, tmp1914
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp1915
	movq	%xmm4, 24(%rsp)	# tmp1908, %sfp
	por	%xmm7, %xmm3	# tmp1914, tmp1915
	movdqa	%xmm15, %xmm7	# tmp1861, tmp1919
	pcmpgtw	%xmm0, %xmm7	# tmp1901, tmp1919
	movq	%xmm3, 32(%rsp)	# tmp1915, %sfp
	movdqa	%xmm7, %xmm4	# tmp1919, tmp1919
	movdqa	%xmm0, %xmm7	# tmp1901, tmp1920
	punpcklwd	%xmm4, %xmm7	# tmp1919, tmp1920
	punpcklwd	%xmm4, %xmm0	# tmp1919, tmp1927
	movdqa	%xmm7, %xmm3	# tmp1920, tmp1920
	pand	%xmm7, %xmm6	# tmp1920, tmp1921
	pshufd	$78, %xmm0, %xmm0	#, tmp1927, tmp1927
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp1922
	movdqa	%xmm3, %xmm7	# tmp1922, tmp1922
	por	%xmm6, %xmm7	# tmp1921, tmp1922
	movdqa	%xmm11, %xmm6	# vect_cst__1376, tmp1928
	pand	%xmm0, %xmm6	# tmp1927, tmp1928
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp1929
	movq	%xmm7, 40(%rsp)	# tmp1922, %sfp
	movdqa	%xmm11, %xmm7	# vect_cst__1376, tmp1950
	por	%xmm6, %xmm0	# tmp1928, tmp1929
	movq	216(%rsp), %xmm6	# %sfp, vect__508.734
	movq	%xmm0, 48(%rsp)	# tmp1929, %sfp
	pand	%xmm2, %xmm6	# vect__391.717, vect__508.734
	movdqa	%xmm6, %xmm0	# vect__508.734, vect__508.734
	movdqa	%xmm9, %xmm6	# tmp1849, tmp1939
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1934
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1936
	pcmpgtb	%xmm0, %xmm6	# tmp1936, tmp1939
	movdqa	%xmm0, %xmm1	# tmp1936, tmp1940
	movdqa	%xmm6, %xmm4	# tmp1939, tmp1939
	movdqa	%xmm15, %xmm6	# tmp1861, tmp1948
	punpcklbw	%xmm4, %xmm1	# tmp1939, tmp1940
	punpcklbw	%xmm4, %xmm0	# tmp1939, tmp1944
	pcmpgtw	%xmm1, %xmm6	# tmp1940, tmp1948
	movdqa	%xmm1, %xmm3	# tmp1940, tmp1940
	pshufd	$78, %xmm0, %xmm0	#, tmp1944, tmp1944
	punpcklwd	%xmm6, %xmm1	# tmp1948, tmp1949
	punpcklwd	%xmm6, %xmm3	# tmp1948, tmp1956
	movdqa	%xmm11, %xmm6	# vect_cst__1376, tmp1957
	pand	%xmm1, %xmm7	# tmp1949, tmp1950
	movdqa	%xmm1, %xmm4	# tmp1949, tmp1949
	movdqa	%xmm15, %xmm1	# tmp1861, tmp1962
	pcmpgtw	%xmm0, %xmm1	# tmp1944, tmp1962
	pshufd	$78, %xmm3, %xmm3	#, tmp1956, tmp1956
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp1951
	por	%xmm7, %xmm4	# tmp1950, tmp1951
	pand	%xmm3, %xmm6	# tmp1956, tmp1957
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp1958
	movq	%xmm4, 56(%rsp)	# tmp1951, %sfp
	movdqa	%xmm6, %xmm4	# tmp1957, tmp1957
	movdqa	%xmm3, %xmm6	# tmp1958, tmp1958
	movdqa	%xmm11, %xmm7	# vect_cst__1376, tmp1993
	por	%xmm4, %xmm6	# tmp1957, tmp1958
	movdqa	%xmm1, %xmm4	# tmp1962, tmp1962
	movdqa	%xmm0, %xmm1	# tmp1944, tmp1963
	punpcklwd	%xmm4, %xmm1	# tmp1962, tmp1963
	movq	%xmm6, 64(%rsp)	# tmp1958, %sfp
	punpcklwd	%xmm4, %xmm0	# tmp1962, tmp1970
	movdqa	%xmm11, %xmm6	# vect_cst__1376, tmp1964
	pand	%xmm1, %xmm6	# tmp1963, tmp1964
	movdqa	%xmm1, %xmm3	# tmp1963, tmp1963
	pshufd	$78, %xmm0, %xmm0	#, tmp1970, tmp1970
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp1971
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp1965
	pand	%xmm0, %xmm1	# tmp1970, tmp1971
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp1972
	por	%xmm6, %xmm3	# tmp1964, tmp1965
	por	%xmm1, %xmm0	# tmp1971, tmp1972
	movdqa	%xmm15, %xmm6	# tmp1861, tmp1991
	movq	%xmm3, 72(%rsp)	# tmp1965, %sfp
	movq	224(%rsp), %xmm1	# %sfp, vect__509.742
	movq	%xmm0, 80(%rsp)	# tmp1972, %sfp
	pand	%xmm2, %xmm1	# vect__391.717, vect__509.742
	movdqa	%xmm1, %xmm0	# vect__509.742, vect__509.742
	movdqa	%xmm9, %xmm1	# tmp1849, tmp1982
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1977
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp1979
	pcmpgtb	%xmm0, %xmm1	# tmp1979, tmp1982
	movdqa	%xmm1, %xmm4	# tmp1982, tmp1982
	movdqa	%xmm0, %xmm1	# tmp1979, tmp1983
	punpcklbw	%xmm4, %xmm1	# tmp1982, tmp1983
	punpcklbw	%xmm4, %xmm0	# tmp1982, tmp1987
	pcmpgtw	%xmm1, %xmm6	# tmp1983, tmp1991
	movdqa	%xmm1, %xmm3	# tmp1983, tmp1983
	pshufd	$78, %xmm0, %xmm0	#, tmp1987, tmp1987
	punpcklwd	%xmm6, %xmm1	# tmp1991, tmp1992
	punpcklwd	%xmm6, %xmm3	# tmp1991, tmp1999
	movdqa	%xmm11, %xmm6	# vect_cst__1376, tmp2007
	pand	%xmm1, %xmm7	# tmp1992, tmp1993
	movdqa	%xmm1, %xmm4	# tmp1992, tmp1992
	pshufd	$78, %xmm3, %xmm3	#, tmp1999, tmp1999
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2000
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp1994
	pand	%xmm3, %xmm1	# tmp1999, tmp2000
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2001
	movdqa	%xmm4, %xmm8	# tmp1994, tmp1994
	movdqa	%xmm3, %xmm12	# tmp2001, tmp2001
	por	%xmm7, %xmm8	# tmp1993, tmp1994
	por	%xmm1, %xmm12	# tmp2000, tmp2001
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2005
	movq	%xmm8, 88(%rsp)	# tmp1994, %sfp
	pcmpgtw	%xmm0, %xmm1	# tmp1987, tmp2005
	movq	%xmm12, 96(%rsp)	# tmp2001, %sfp
	movdqa	%xmm1, %xmm4	# tmp2005, tmp2005
	movdqa	%xmm0, %xmm1	# tmp1987, tmp2006
	punpcklwd	%xmm4, %xmm1	# tmp2005, tmp2006
	punpcklwd	%xmm4, %xmm0	# tmp2005, tmp2013
	movdqa	%xmm1, %xmm3	# tmp2006, tmp2006
	pand	%xmm1, %xmm6	# tmp2006, tmp2007
	pshufd	$78, %xmm0, %xmm0	#, tmp2013, tmp2013
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2008
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2014
	pand	%xmm0, %xmm1	# tmp2013, tmp2014
	movdqa	%xmm3, %xmm7	# tmp2008, tmp2008
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp2015
	por	%xmm6, %xmm7	# tmp2007, tmp2008
	movdqa	%xmm0, %xmm6	# tmp2015, tmp2015
	por	%xmm1, %xmm6	# tmp2014, tmp2015
	movq	%xmm7, 104(%rsp)	# tmp2008, %sfp
	movq	232(%rsp), %xmm1	# %sfp, vect__510.750
	movq	%xmm6, 112(%rsp)	# tmp2015, %sfp
	pand	%xmm2, %xmm1	# vect__391.717, vect__510.750
	movdqa	%xmm1, %xmm0	# vect__510.750, vect__510.750
	movdqa	%xmm9, %xmm1	# tmp1849, tmp2025
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2020
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2022
	pcmpgtb	%xmm0, %xmm1	# tmp2022, tmp2025
	movdqa	%xmm1, %xmm4	# tmp2025, tmp2025
	movdqa	%xmm0, %xmm1	# tmp2022, tmp2026
	punpcklbw	%xmm4, %xmm1	# tmp2025, tmp2026
	punpcklbw	%xmm4, %xmm0	# tmp2025, tmp2030
	movdqa	%xmm1, %xmm3	# tmp2026, tmp2026
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2034
	pshufd	$78, %xmm0, %xmm0	#, tmp2030, tmp2030
	pcmpgtw	%xmm3, %xmm1	# tmp2026, tmp2034
	movdqa	%xmm1, %xmm6	# tmp2034, tmp2034
	movdqa	%xmm3, %xmm1	# tmp2026, tmp2035
	punpcklwd	%xmm6, %xmm1	# tmp2034, tmp2035
	punpcklwd	%xmm6, %xmm3	# tmp2034, tmp2042
	movdqa	%xmm1, %xmm4	# tmp2035, tmp2035
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2036
	pshufd	$78, %xmm3, %xmm3	#, tmp2042, tmp2042
	pand	%xmm4, %xmm1	# tmp2035, tmp2036
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp2037
	por	%xmm1, %xmm4	# tmp2036, tmp2037
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2043
	pand	%xmm3, %xmm1	# tmp2042, tmp2043
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2044
	movq	%xmm4, 120(%rsp)	# tmp2037, %sfp
	por	%xmm1, %xmm3	# tmp2043, tmp2044
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2048
	movq	%xmm3, 128(%rsp)	# tmp2044, %sfp
	pcmpgtw	%xmm0, %xmm1	# tmp2030, tmp2048
	movdqa	%xmm1, %xmm4	# tmp2048, tmp2048
	movdqa	%xmm0, %xmm1	# tmp2030, tmp2049
	punpcklwd	%xmm4, %xmm1	# tmp2048, tmp2049
	punpcklwd	%xmm4, %xmm0	# tmp2048, tmp2056
	movdqa	%xmm1, %xmm3	# tmp2049, tmp2049
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2050
	pshufd	$78, %xmm0, %xmm0	#, tmp2056, tmp2056
	pand	%xmm3, %xmm1	# tmp2049, tmp2050
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2051
	movdqa	%xmm3, %xmm8	# tmp2051, tmp2051
	por	%xmm1, %xmm8	# tmp2050, tmp2051
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2057
	movq	%xmm8, 136(%rsp)	# tmp2051, %sfp
	pand	%xmm0, %xmm1	# tmp2056, tmp2057
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp2058
	por	%xmm1, %xmm0	# tmp2057, tmp2058
	movq	240(%rsp), %xmm1	# %sfp, vect__511.758
	movq	%xmm0, 144(%rsp)	# tmp2058, %sfp
	pand	%xmm2, %xmm1	# vect__391.717, vect__511.758
	movdqa	%xmm1, %xmm0	# vect__511.758, vect__511.758
	movdqa	%xmm9, %xmm1	# tmp1849, tmp2068
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2063
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2065
	pcmpgtb	%xmm0, %xmm1	# tmp2065, tmp2068
	movdqa	%xmm1, %xmm4	# tmp2068, tmp2068
	movdqa	%xmm0, %xmm1	# tmp2065, tmp2069
	punpcklbw	%xmm4, %xmm1	# tmp2068, tmp2069
	punpcklbw	%xmm4, %xmm0	# tmp2068, tmp2073
	movdqa	%xmm1, %xmm3	# tmp2069, tmp2069
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2077
	pshufd	$78, %xmm0, %xmm0	#, tmp2073, tmp2073
	pcmpgtw	%xmm3, %xmm1	# tmp2069, tmp2077
	movdqa	%xmm1, %xmm6	# tmp2077, tmp2077
	movdqa	%xmm3, %xmm1	# tmp2069, tmp2078
	punpcklwd	%xmm6, %xmm1	# tmp2077, tmp2078
	punpcklwd	%xmm6, %xmm3	# tmp2077, tmp2085
	movdqa	%xmm1, %xmm4	# tmp2078, tmp2078
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2079
	pshufd	$78, %xmm3, %xmm3	#, tmp2085, tmp2085
	pand	%xmm4, %xmm1	# tmp2078, tmp2079
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp2080
	movdqa	%xmm4, %xmm12	# tmp2080, tmp2080
	por	%xmm1, %xmm12	# tmp2079, tmp2080
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2086
	movq	%xmm12, 152(%rsp)	# tmp2080, %sfp
	pand	%xmm3, %xmm1	# tmp2085, tmp2086
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2087
	movdqa	%xmm3, %xmm7	# tmp2087, tmp2087
	por	%xmm1, %xmm7	# tmp2086, tmp2087
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2091
	movq	%xmm7, 160(%rsp)	# tmp2087, %sfp
	pcmpgtw	%xmm0, %xmm1	# tmp2073, tmp2091
	movdqa	%xmm1, %xmm4	# tmp2091, tmp2091
	movdqa	%xmm0, %xmm1	# tmp2073, tmp2092
	punpcklwd	%xmm4, %xmm1	# tmp2091, tmp2092
	punpcklwd	%xmm4, %xmm0	# tmp2091, tmp2099
	movdqa	%xmm1, %xmm3	# tmp2092, tmp2092
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2093
	pshufd	$78, %xmm0, %xmm0	#, tmp2099, tmp2099
	pand	%xmm3, %xmm1	# tmp2092, tmp2093
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2094
	por	%xmm1, %xmm3	# tmp2093, tmp2094
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2100
	movq	%xmm3, 168(%rsp)	# tmp2094, %sfp
	pand	%xmm0, %xmm1	# tmp2099, tmp2100
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp2101
	movdqa	%xmm0, %xmm6	# tmp2101, tmp2101
	por	%xmm1, %xmm6	# tmp2100, tmp2101
	movq	248(%rsp), %xmm1	# %sfp, vect__512.766
	movq	%xmm6, 176(%rsp)	# tmp2101, %sfp
	pand	%xmm2, %xmm1	# vect__391.717, vect__512.766
	movdqa	%xmm1, %xmm0	# vect__512.766, vect__512.766
	movdqa	%xmm9, %xmm1	# tmp1849, tmp2111
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2106
	pcmpeqb	%xmm9, %xmm0	# tmp1849, tmp2108
	pcmpgtb	%xmm0, %xmm1	# tmp2108, tmp2111
	movdqa	%xmm1, %xmm3	# tmp2111, tmp2111
	movdqa	%xmm0, %xmm1	# tmp2108, tmp2112
	punpcklbw	%xmm3, %xmm1	# tmp2111, tmp2112
	punpcklbw	%xmm3, %xmm0	# tmp2111, tmp2116
	movdqa	%xmm1, %xmm4	# tmp2112, tmp2112
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2120
	pshufd	$78, %xmm0, %xmm0	#, tmp2116, tmp2116
	pcmpgtw	%xmm4, %xmm1	# tmp2112, tmp2120
	movdqa	%xmm1, %xmm3	# tmp2120, tmp2120
	movdqa	%xmm4, %xmm1	# tmp2112, tmp2121
	punpcklwd	%xmm3, %xmm1	# tmp2120, tmp2121
	punpcklwd	%xmm3, %xmm4	# tmp2120, tmp2128
	movdqa	%xmm1, %xmm12	# tmp2121, tmp2121
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2122
	pshufd	$78, %xmm4, %xmm4	#, tmp2128, tmp2128
	pand	%xmm12, %xmm1	# tmp2121, tmp2122
	pandn	%xmm10, %xmm12	# vect_cst__1377, tmp2123
	por	%xmm1, %xmm12	# tmp2122, vect_patt_1318.770
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2129
	pand	%xmm4, %xmm1	# tmp2128, tmp2129
	pandn	%xmm10, %xmm4	# vect_cst__1377, tmp2130
	por	%xmm1, %xmm4	# tmp2129, vect_patt_1318.770
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2134
	pcmpgtw	%xmm0, %xmm1	# tmp2116, tmp2134
	movdqa	%xmm1, %xmm3	# tmp2134, tmp2134
	movdqa	%xmm0, %xmm1	# tmp2116, tmp2135
	punpcklwd	%xmm3, %xmm1	# tmp2134, tmp2135
	punpcklwd	%xmm3, %xmm0	# tmp2134, tmp2142
	movdqa	%xmm1, %xmm8	# tmp2135, tmp2135
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2136
	pshufd	$78, %xmm0, %xmm0	#, tmp2142, tmp2142
	pand	%xmm8, %xmm1	# tmp2135, tmp2136
	pandn	%xmm10, %xmm8	# vect_cst__1377, tmp2137
	por	%xmm1, %xmm8	# tmp2136, vect_patt_1318.770
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2143
	pand	%xmm0, %xmm1	# tmp2142, tmp2143
	pandn	%xmm10, %xmm0	# vect_cst__1377, tmp2144
	por	%xmm1, %xmm0	# tmp2143, vect_patt_1318.770
	movq	256(%rsp), %xmm1	# %sfp, tmp2146
	pand	%xmm1, %xmm2	# tmp2146, vect__513.774
	movdqa	%xmm9, %xmm1	# tmp1849, tmp2154
	pcmpeqb	%xmm9, %xmm2	# tmp1849, tmp2149
	pcmpeqb	%xmm9, %xmm2	# tmp1849, tmp2151
	pcmpgtb	%xmm2, %xmm1	# tmp2151, tmp2154
	movdqa	%xmm1, %xmm6	# tmp2154, tmp2154
	movdqa	%xmm2, %xmm1	# tmp2151, tmp2155
	punpcklbw	%xmm6, %xmm1	# tmp2154, tmp2155
	punpcklbw	%xmm6, %xmm2	# tmp2154, tmp2159
	movdqa	%xmm1, %xmm3	# tmp2155, tmp2155
	movdqa	%xmm15, %xmm1	# tmp1861, tmp2163
	pshufd	$78, %xmm2, %xmm2	#, tmp2159, tmp2159
	pcmpgtw	%xmm3, %xmm1	# tmp2155, tmp2163
	movdqa	%xmm2, %xmm13	# tmp2159, tmp2178
	movdqa	%xmm1, %xmm6	# tmp2163, tmp2163
	movdqa	%xmm3, %xmm1	# tmp2155, tmp2164
	punpcklwd	%xmm6, %xmm1	# tmp2163, tmp2164
	punpcklwd	%xmm6, %xmm3	# tmp2163, tmp2171
	movdqa	%xmm15, %xmm6	# tmp1861, tmp2177
	movdqa	%xmm1, %xmm7	# tmp2164, tmp2164
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2165
	pshufd	$78, %xmm3, %xmm3	#, tmp2171, tmp2171
	pcmpgtw	%xmm2, %xmm6	# tmp2159, tmp2177
	pand	%xmm7, %xmm1	# tmp2164, tmp2165
	pandn	%xmm10, %xmm7	# vect_cst__1377, tmp2166
	por	%xmm1, %xmm7	# tmp2165, vect_patt_1320.778
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2172
	pand	%xmm3, %xmm1	# tmp2171, tmp2172
	pandn	%xmm10, %xmm3	# vect_cst__1377, tmp2173
	por	%xmm1, %xmm3	# tmp2172, vect_patt_1320.778
	movdqa	%xmm6, %xmm1	# tmp2177, tmp2177
	punpcklwd	%xmm6, %xmm13	# tmp2177, tmp2178
	punpcklwd	%xmm1, %xmm2	# tmp2177, tmp2185
	movdqa	%xmm11, %xmm1	# vect_cst__1376, tmp2186
	movdqa	%xmm13, %xmm6	# tmp2178, tmp2178
	pshufd	$78, %xmm2, %xmm2	#, tmp2185, tmp2185
	movdqa	%xmm11, %xmm13	# vect_cst__1376, tmp2179
	pand	%xmm2, %xmm1	# tmp2185, tmp2186
	pandn	%xmm10, %xmm2	# vect_cst__1377, tmp2187
	pand	%xmm6, %xmm13	# tmp2178, tmp2179
	por	%xmm1, %xmm2	# tmp2186, vect_patt_1320.778
	pandn	%xmm10, %xmm6	# vect_cst__1377, tmp2180
	pshufd	$0xe5, %xmm14, %xmm1	# vect_patt_1306.722, tmp3024
	movd	%xmm1, (%rdi)	# tmp3024, MEM[(unsigned int *)_863]
	movd	%xmm5, (%rsi)	# vect_patt_1306.722, MEM[(unsigned int *)_855]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1306.722, tmp3025
	por	%xmm13, %xmm6	# tmp2179, vect_patt_1320.778
	movq	%r13, %xmm13	# vect_patt_1306.722, vect_patt_1306.722
	movd	%xmm1, (%rcx)	# tmp3025, MEM[(unsigned int *)_358]
	movq	8(%rsp), %xmm5	# %sfp, vect_patt_1306.722
	pshufd	$0xe5, %xmm13, %xmm1	# vect_patt_1306.722, tmp3026
	movl	%r13d, (%rdx)	# vect_patt_1306.722, MEM[(unsigned int *)_246]
	movd	%xmm1, (%r9)	# tmp3026, MEM[(unsigned int *)_68]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1306.722, tmp3027
	movd	%xmm5, (%rbx)	# vect_patt_1306.722, MEM[(unsigned int *)_1751]
	movq	24(%rsp), %xmm5	# %sfp, vect_patt_1308.730
	movd	%xmm1, (%r11)	# tmp3027, MEM[(unsigned int *)_1759]
	movd	%xmm5, 4(%r12)	# vect_patt_1308.730, MEM[(unsigned int *)_289 + 4B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1308.730, tmp3029
	movq	32(%rsp), %xmm5	# %sfp, vect_patt_1308.730
	movd	%xmm1, 4(%rdi)	# tmp3029, MEM[(unsigned int *)_863 + 4B]
	movd	%xmm5, 4(%rsi)	# vect_patt_1308.730, MEM[(unsigned int *)_855 + 4B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1308.730, tmp3031
	movq	40(%rsp), %xmm5	# %sfp, vect_patt_1308.730
	movd	%xmm1, 4(%rcx)	# tmp3031, MEM[(unsigned int *)_358 + 4B]
	movd	%xmm5, 4(%rdx)	# vect_patt_1308.730, MEM[(unsigned int *)_246 + 4B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1308.730, tmp3033
	movq	48(%rsp), %xmm5	# %sfp, vect_patt_1308.730
	movd	%xmm1, 4(%r9)	# tmp3033, MEM[(unsigned int *)_68 + 4B]
	movd	%xmm5, 4(%rbx)	# vect_patt_1308.730, MEM[(unsigned int *)_1751 + 4B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1308.730, tmp3035
	movq	56(%rsp), %xmm5	# %sfp, vect_patt_1310.738
	movd	%xmm1, 4(%r11)	# tmp3035, MEM[(unsigned int *)_1759 + 4B]
	movd	%xmm5, 8(%r12)	# vect_patt_1310.738, MEM[(unsigned int *)_289 + 8B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1310.738, tmp3037
	movq	64(%rsp), %xmm5	# %sfp, vect_patt_1310.738
	movd	%xmm1, 8(%rdi)	# tmp3037, MEM[(unsigned int *)_863 + 8B]
	movd	%xmm5, 8(%rsi)	# vect_patt_1310.738, MEM[(unsigned int *)_855 + 8B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1310.738, tmp3039
	movq	72(%rsp), %xmm5	# %sfp, vect_patt_1310.738
	movd	%xmm1, 8(%rcx)	# tmp3039, MEM[(unsigned int *)_358 + 8B]
	movd	%xmm5, 8(%rdx)	# vect_patt_1310.738, MEM[(unsigned int *)_246 + 8B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1310.738, tmp3041
	movq	80(%rsp), %xmm5	# %sfp, vect_patt_1310.738
	movd	%xmm1, 8(%r9)	# tmp3041, MEM[(unsigned int *)_68 + 8B]
	movd	%xmm5, 8(%rbx)	# vect_patt_1310.738, MEM[(unsigned int *)_1751 + 8B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1310.738, tmp3043
	movq	88(%rsp), %xmm5	# %sfp, vect_patt_1312.746
	movd	%xmm1, 8(%r11)	# tmp3043, MEM[(unsigned int *)_1759 + 8B]
	movd	%xmm5, 12(%r12)	# vect_patt_1312.746, MEM[(unsigned int *)_289 + 12B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1312.746, tmp3045
	movd	%xmm1, 12(%rdi)	# tmp3045, MEM[(unsigned int *)_863 + 12B]
	movq	96(%rsp), %xmm5	# %sfp, vect_patt_1312.746
	movd	%xmm5, 12(%rsi)	# vect_patt_1312.746, MEM[(unsigned int *)_855 + 12B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1312.746, tmp3047
	movq	104(%rsp), %xmm5	# %sfp, vect_patt_1312.746
	movd	%xmm1, 12(%rcx)	# tmp3047, MEM[(unsigned int *)_358 + 12B]
	movd	%xmm5, 12(%rdx)	# vect_patt_1312.746, MEM[(unsigned int *)_246 + 12B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1312.746, tmp3049
	movq	112(%rsp), %xmm5	# %sfp, vect_patt_1312.746
	movd	%xmm1, 12(%r9)	# tmp3049, MEM[(unsigned int *)_68 + 12B]
	movd	%xmm5, 12(%rbx)	# vect_patt_1312.746, MEM[(unsigned int *)_1751 + 12B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1312.746, tmp3051
	movq	120(%rsp), %xmm5	# %sfp, vect_patt_1314.754
	movd	%xmm1, 12(%r11)	# tmp3051, MEM[(unsigned int *)_1759 + 12B]
	movd	%xmm5, 16(%r12)	# vect_patt_1314.754, MEM[(unsigned int *)_289 + 16B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1314.754, tmp3053
	movq	128(%rsp), %xmm5	# %sfp, vect_patt_1314.754
	movd	%xmm1, 16(%rdi)	# tmp3053, MEM[(unsigned int *)_863 + 16B]
	movd	%xmm5, 16(%rsi)	# vect_patt_1314.754, MEM[(unsigned int *)_855 + 16B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1314.754, tmp3055
	movq	136(%rsp), %xmm5	# %sfp, vect_patt_1314.754
	movd	%xmm1, 16(%rcx)	# tmp3055, MEM[(unsigned int *)_358 + 16B]
	movd	%xmm5, 16(%rdx)	# vect_patt_1314.754, MEM[(unsigned int *)_246 + 16B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1314.754, tmp3057
	movq	144(%rsp), %xmm5	# %sfp, vect_patt_1314.754
	movd	%xmm1, 16(%r9)	# tmp3057, MEM[(unsigned int *)_68 + 16B]
	movd	%xmm5, 16(%rbx)	# vect_patt_1314.754, MEM[(unsigned int *)_1751 + 16B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1314.754, tmp3059
	movq	152(%rsp), %xmm5	# %sfp, vect_patt_1316.762
	movd	%xmm1, 16(%r11)	# tmp3059, MEM[(unsigned int *)_1759 + 16B]
	movd	%xmm5, 20(%r12)	# vect_patt_1316.762, MEM[(unsigned int *)_289 + 20B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1316.762, tmp3061
	movq	160(%rsp), %xmm5	# %sfp, vect_patt_1316.762
	movd	%xmm1, 20(%rdi)	# tmp3061, MEM[(unsigned int *)_863 + 20B]
	movd	%xmm5, 20(%rsi)	# vect_patt_1316.762, MEM[(unsigned int *)_855 + 20B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1316.762, tmp3063
	movq	168(%rsp), %xmm5	# %sfp, vect_patt_1316.762
	movd	%xmm1, 20(%rcx)	# tmp3063, MEM[(unsigned int *)_358 + 20B]
	movd	%xmm5, 20(%rdx)	# vect_patt_1316.762, MEM[(unsigned int *)_246 + 20B]
	pshufd	$0xe5, %xmm5, %xmm1	# vect_patt_1316.762, tmp3065
	movq	176(%rsp), %xmm5	# %sfp, vect_patt_1316.762
	movd	%xmm1, 20(%r9)	# tmp3065, MEM[(unsigned int *)_68 + 20B]
	movd	%xmm5, 20(%rbx)	# vect_patt_1316.762, MEM[(unsigned int *)_1751 + 20B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_1316.762, tmp3067
	movd	%xmm5, 20(%r11)	# tmp3067, MEM[(unsigned int *)_1759 + 20B]
	movq	184(%rsp), %r13	# %sfp, _1768
	pshufd	$0xe5, %xmm12, %xmm5	# vect_patt_1318.770, tmp3068
	movd	%xmm12, 24(%r12)	# vect_patt_1318.770, MEM[(unsigned int *)_289 + 24B]
	movd	%xmm5, 24(%rdi)	# tmp3068, MEM[(unsigned int *)_863 + 24B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_1318.770, tmp3069
	movd	%xmm4, 24(%rsi)	# vect_patt_1318.770, MEM[(unsigned int *)_855 + 24B]
	movd	%xmm5, 24(%rcx)	# tmp3069, MEM[(unsigned int *)_358 + 24B]
	pshufd	$0xe5, %xmm8, %xmm5	# vect_patt_1318.770, tmp3070
	movd	%xmm8, 24(%rdx)	# vect_patt_1318.770, MEM[(unsigned int *)_246 + 24B]
	movd	%xmm5, 24(%r9)	# tmp3070, MEM[(unsigned int *)_68 + 24B]
	pshufd	$0xe5, %xmm0, %xmm5	# vect_patt_1318.770, tmp3071
	movd	%xmm0, 24(%rbx)	# vect_patt_1318.770, MEM[(unsigned int *)_1751 + 24B]
	movd	%xmm5, 24(%r11)	# tmp3071, MEM[(unsigned int *)_1759 + 24B]
	movd	%xmm7, 28(%r12)	# vect_patt_1320.778, MEM[(unsigned int *)_289 + 28B]
	pshufd	$0xe5, %xmm7, %xmm7	# vect_patt_1320.778, tmp3072
	addq	%rax, %r12	# _1543, ivtmp.850
	movd	%xmm7, 28(%rdi)	# tmp3072, MEM[(unsigned int *)_863 + 28B]
	pshufd	$0xe5, %xmm3, %xmm7	# vect_patt_1320.778, tmp3073
	addq	%rax, %rdi	# _1543, ivtmp.854
	movd	%xmm3, 28(%rsi)	# vect_patt_1320.778, MEM[(unsigned int *)_855 + 28B]
	addq	%rax, %rsi	# _1543, ivtmp.855
	movd	%xmm7, 28(%rcx)	# tmp3073, MEM[(unsigned int *)_358 + 28B]
	pshufd	$0xe5, %xmm6, %xmm7	# vect_patt_1320.778, tmp3074
	addq	%rax, %rcx	# _1543, ivtmp.856
	movd	%xmm6, 28(%rdx)	# vect_patt_1320.778, MEM[(unsigned int *)_246 + 28B]
	addq	%rax, %rdx	# _1543, ivtmp.857
	movd	%xmm7, 28(%r9)	# tmp3074, MEM[(unsigned int *)_68 + 28B]
	addq	%rax, %r9	# _1543, ivtmp.858
	movd	%xmm2, 28(%rbx)	# vect_patt_1320.778, MEM[(unsigned int *)_1751 + 28B]
	pshufd	$0xe5, %xmm2, %xmm2	# vect_patt_1320.778, tmp3075
	addq	%rax, %rbx	# _1543, ivtmp.859
	movd	%xmm2, 28(%r11)	# tmp3075, MEM[(unsigned int *)_1759 + 28B]
	addq	%rax, %r11	# _1543, ivtmp.860
	cmpq	%r13, %r10	# _1768, ivtmp.847
	jne	.L554	#,
	movl	%r8d, %r13d	# BKcolor, BKcolor
	movl	264(%rsp), %r8d	# %sfp, count
	movl	%r13d, 8(%rsp)	# BKcolor, %sfp
.L555:
# printk.c:66: 			Pos.XPosition++;
	movl	8(%r14,%rbp), %eax	# Pos.XPosition, tmp3087
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%r14,%rbp), %esi	# Pos.XResolution, prephitmp_109
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	16(%r14,%rbp), %edi	# Pos.XCharSize, prephitmp_276
# printk.c:69: 			Pos.YPosition++;
	movl	12(%r14,%rbp), %ecx	# Pos.YPosition, prephitmp_424
# printk.c:66: 			Pos.XPosition++;
	leal	1(%rax), %r10d	#, _40
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	20(%r14,%rbp), %r9d	# Pos.YCharSize, prephitmp_267
# printk.c:66: 			Pos.XPosition++;
	movl	%r10d, 8(%r14,%rbp)	# _40, Pos.XPosition
.L522:
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	%esi, %eax	# prephitmp_109, tmp2274
	cltd
	idivl	%edi	# prephitmp_276
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	cmpl	%r10d, %eax	# _40, tmp2274
	jg	.L566	#,
# printk.c:70: 			Pos.XPosition=0;
	movl	$0, 8(%r14,%rbp)	#, Pos.XPosition
# printk.c:69: 			Pos.YPosition++;
	addl	$1, %ecx	#, prephitmp_424
	movl	%ecx, 12(%r14,%rbp)	# prephitmp_424, Pos.YPosition
.L566:
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	4(%r14,%rbp), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%r9d	# prephitmp_267
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	cmpl	%ecx, %eax	# prephitmp_424, tmp2280
	jg	.L567	#,
# printk.c:73: 			Pos.YPosition=0;
	movl	$0, 12(%r14,%rbp)	#, Pos.YPosition
	xorl	%ecx, %ecx	# prephitmp_424
.L567:
# printk.c:38: 	for(count=0;count<i || line;count++){
	cmpl	%r8d, 212(%rsp)	# count, %sfp
	jg	.L607	#,
	movl	208(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jne	.L607	#,
.L516:
# printk.c:77: }
	movl	212(%rsp), %eax	# %sfp,
	addq	$552, %rsp	#,
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
.L553:
	.cfi_restore_state
	movq	16(%rsp), %rax	# %sfp, _50
	movl	8(%rsp), %r13d	# %sfp, BKcolor
	leaq	16(%r10), %rsi	#, _1050
	addq	%rax, %rdx	# _50, ivtmp.844
	jmp	.L565	#
.L627:
	movl	%r15d, 28(%rdx)	# FRcolor, MEM[(unsigned int *)_1016 + 28B]
.L622:
# printk.c:13: 	for(i=0;i<16;i++){
	movq	24(%rsp), %rax	# %sfp, _1323
# printk.c:26: 		fontp++;
	addq	$1, %r10	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rax, %rdx	# _1323, ivtmp.844
	cmpq	%rsi, %r10	# _1050, fontp
	je	.L618	#,
.L565:
# printk.c:20: 				*addr =FRcolor;
	cmpb	$0, (%r10)	#, MEM[(unsigned char *)fontp_45]
	movl	%r15d, %eax	# FRcolor, cstore_116
	cmovns	%r13d, %eax	# BKcolor,, cstore_116
	movl	%eax, (%rdx)	# cstore_116, MEM[(unsigned int *)_1016]
	movl	%r15d, %eax	# FRcolor, cstore_16
	testb	$64, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_16
	movl	%eax, 4(%rdx)	# cstore_16, MEM[(unsigned int *)_1016 + 4B]
	movl	%r15d, %eax	# FRcolor, cstore_24
	testb	$32, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_24
	movl	%eax, 8(%rdx)	# cstore_24, MEM[(unsigned int *)_1016 + 8B]
	movl	%r15d, %eax	# FRcolor, cstore_437
	testb	$16, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_437
	movl	%eax, 12(%rdx)	# cstore_437, MEM[(unsigned int *)_1016 + 12B]
	movl	%r15d, %eax	# FRcolor, cstore_32
	testb	$8, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_32
	movl	%eax, 16(%rdx)	# cstore_32, MEM[(unsigned int *)_1016 + 16B]
	movl	%r15d, %eax	# FRcolor, cstore_125
	testb	$4, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_125
	movl	%eax, 20(%rdx)	# cstore_125, MEM[(unsigned int *)_1016 + 20B]
	movl	%r15d, %eax	# FRcolor, cstore_57
	testb	$2, (%r10)	#, MEM[(unsigned char *)fontp_45]
	cmove	%r13d, %eax	# BKcolor,, cstore_57
	movl	%eax, 24(%rdx)	# cstore_57, MEM[(unsigned int *)_1016 + 24B]
# printk.c:19: 			if(*fontp & testval){
	testb	$1, (%r10)	#, MEM[(unsigned char *)fontp_45]
	jne	.L627	#,
	movl	%r13d, 28(%rdx)	# BKcolor, MEM[(unsigned int *)_1016 + 28B]
	jmp	.L622	#
.L624:
# printk.c:45: 			Pos.XPosition=0;
	movl	$0, 8(%r14,%rbp)	#, Pos.XPosition
# printk.c:44: 			Pos.YPosition++;
	addl	$1, %ecx	#, prephitmp_424
	xorl	%r10d, %r10d	# _40
	movl	%ecx, 12(%r14,%rbp)	# prephitmp_424, Pos.YPosition
	jmp	.L522	#
.L623:
# printk.c:47: 			Pos.XPosition--;
	movl	8(%r14,%rbp), %edx	# Pos.XPosition, pretmp_110
.L520:
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	imull	%r9d, %ecx	# prephitmp_267, tmp1349
	movslq	%esi, %r10	# prephitmp_109, _204
# printk.c:61: 				line--;
	subl	$1, 208(%rsp)	#, %sfp
	movl	$31, %r9d	#, tmp1360
# printk.c:62: 				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
	imull	%edi, %edx	# prephitmp_276, tmp1352
	movq	16(%rsp), %rbx	# %sfp, _50
	movq	304(%rsp), %r13	# %sfp, tmp2306
	leaq	0(,%r10,4), %rax	#, _205
	imull	%esi, %ecx	# prephitmp_109, tmp1350
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %rdx	# tmp1352, tmp1353
	movslq	%ecx, %rcx	# tmp1350, tmp1351
	addq	%rdx, %rcx	# tmp1353, tmp1354
	movq	%r10, %rdx	# _204, tmp1356
	salq	$4, %rdx	#, tmp1356
	salq	$2, %rcx	#, _221
	subq	%r10, %rdx	# _204, tmp1357
	salq	$2, %rdx	#, tmp1358
	testl	%esi, %esi	# prephitmp_109
	leaq	31(%rdx), %rdi	#, tmp1359
	cmovs	%r9, %rdi	# tmp1359,, tmp1360, tmp1359
	addq	%rcx, %rdi	# _221, tmp1361
	addq	%rbx, %rdi	# _50, tmp1362
	cmpq	%r13, %rdi	# tmp2306, tmp1362
	setb	%dil	#, tmp1366
	testl	%esi, %esi	# prephitmp_109
	movl	$0, %esi	#, tmp1368
	cmovns	%rsi, %rdx	# tmp1358,, tmp1368, tmp1367
	addq	%rcx, %rdx	# _221, tmp1369
	addq	%rbx, %rdx	# _50, tmp1370
	cmpq	%rdx, 312(%rsp)	# tmp1370, %sfp
	setb	%dl	#, tmp1374
	orb	%dil, %dl	# tmp1366, tmp2316
	je	.L540	#,
	leaq	31(%rax), %rdx	#, tmp1376
	cmpq	$62, %rdx	#, tmp1376
	jbe	.L540	#,
	addq	%rcx, %rbx	# _221, ivtmp.797
	salq	$5, %r10	#, _204
	movd	%r15d, %xmm2	# FRcolor, FRcolor
	leaq	-512(%r13), %rdi	#, ivtmp.801
	leaq	(%rbx,%rax), %r11	#, ivtmp.802
	movq	%r10, %r12	# _204, _644
	movq	%rdi, 64(%rsp)	# ivtmp.801, %sfp
	pshufd	$0xe0, %xmm2, %xmm11	# FRcolor, vect_cst__323
	leaq	(%r11,%rax), %r10	#, ivtmp.803
	movd	8(%rsp), %xmm2	# %sfp, BKcolor
# printk.c:19: 			if(*fontp & testval){
	pxor	%xmm9, %xmm9	# tmp1382
	pxor	%xmm15, %xmm15	# tmp1394
	leaq	(%r10,%rax), %r9	#, ivtmp.804
	leaq	(%r9,%rax), %rdi	#, ivtmp.805
	pshufd	$0xe0, %xmm2, %xmm10	# BKcolor, vect_cst__325
	leaq	(%rdi,%rax), %rsi	#, ivtmp.806
	leaq	(%rsi,%rax), %rcx	#, ivtmp.807
	leaq	(%rcx,%rax), %rdx	#, ivtmp.808
	movq	%r13, %rax	# tmp2306, tmp2306
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	movq	%r13, 56(%rsp)	# tmp2298, %sfp
	subq	$496, %rax	#, _1382
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movq	%r13, 24(%rsp)	# tmp2290, %sfp
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	%r13, 32(%rsp)	# tmp2291, %sfp
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	%r13, 40(%rsp)	# tmp2292, %sfp
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	%r13, 48(%rsp)	# tmp2293, %sfp
	movq	280(%rsp), %r13	# %sfp, tmp2303
	movq	0(%r13,%rbp), %r13	#, tmp1421
	movq	%r13, 216(%rsp)	# tmp1421, %sfp
	movq	288(%rsp), %r13	# %sfp, tmp2304
	movq	0(%r13,%rbp), %r13	#, tmp1464
	movq	%r13, 224(%rsp)	# tmp1464, %sfp
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	movq	0(%r13,%rbp), %r13	#, tmp1507
	movq	%r13, 232(%rsp)	# tmp1507, %sfp
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movq	0(%r13,%rbp), %r13	#, tmp1550
	movq	%r13, 240(%rsp)	# tmp1550, %sfp
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	0(%r13,%rbp), %r13	#, tmp1593
	movq	%r13, 248(%rsp)	# tmp1593, %sfp
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	0(%r13,%rbp), %r13	#, tmp1636
	movq	%r13, 256(%rsp)	# tmp1636, %sfp
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	0(%r13,%rbp), %r13	#, tmp1679
	movq	%r13, 264(%rsp)	# tmp1679, %sfp
	movl	%r8d, %r13d	# count, count
	movq	64(%rsp), %r8	# %sfp, ivtmp.801
.L541:
	movdqa	%xmm9, %xmm0	# tmp1382, tmp1383
	movdqa	%xmm9, %xmm3	# tmp1382, tmp1386
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1418
# printk.c:19: 			if(*fontp & testval){
	movq	512(%r8), %xmm2	# MEM <vector(8) unsigned char> [(unsigned char *)_115 + 512B], vect__183.589
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1397
	movdqa	%xmm11, %xmm5	# vect_cst__323, tmp1440
	movdqa	%xmm11, %xmm13	# vect_cst__323, tmp1490
# printk.c:19: 			if(*fontp & testval){
	movq	232(%rsp), %xmm12	# %sfp, vect__501.614
	pcmpgtb	%xmm2, %xmm0	# vect__183.589, tmp1383
	addq	$8, %r8	#, ivtmp.801
	pand	%xmm2, %xmm12	# vect__183.589, vect__501.614
	pcmpgtb	%xmm0, %xmm3	# tmp1383, tmp1386
	movdqa	%xmm0, %xmm1	# tmp1383, tmp1387
	punpcklbw	%xmm3, %xmm1	# tmp1386, tmp1387
	punpcklbw	%xmm3, %xmm0	# tmp1386, tmp1391
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1395
	pcmpgtw	%xmm1, %xmm3	# tmp1387, tmp1395
	movdqa	%xmm1, %xmm14	# tmp1387, tmp1396
	pshufd	$78, %xmm0, %xmm0	#, tmp1391, tmp1391
	movdqa	%xmm0, %xmm7	# tmp1391, tmp1410
	punpcklwd	%xmm3, %xmm1	# tmp1395, tmp1403
	punpcklwd	%xmm3, %xmm14	# tmp1395, tmp1396
	movdqa	%xmm11, %xmm3	# vect_cst__323, tmp1404
	pshufd	$78, %xmm1, %xmm1	#, tmp1403, tmp1403
	pand	%xmm14, %xmm4	# tmp1396, tmp1397
	pandn	%xmm10, %xmm14	# vect_cst__325, tmp1398
	pand	%xmm1, %xmm3	# tmp1403, tmp1404
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1405
	por	%xmm4, %xmm14	# tmp1397, vect_patt_461.594
	por	%xmm3, %xmm1	# tmp1404, tmp1405
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1409
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1411
	movd	%xmm14, (%rbx)	# vect_patt_461.594, MEM[(unsigned int *)_512]
	pcmpgtw	%xmm0, %xmm3	# tmp1391, tmp1409
	movq	%xmm1, 24(%rsp)	# tmp1405, %sfp
	punpcklwd	%xmm3, %xmm0	# tmp1409, tmp1417
	punpcklwd	%xmm3, %xmm7	# tmp1409, tmp1410
	movdqa	%xmm9, %xmm3	# tmp1382, tmp1429
	pshufd	$78, %xmm0, %xmm0	#, tmp1417, tmp1417
	movdqa	%xmm7, %xmm1	# tmp1410, tmp1410
	pand	%xmm7, %xmm4	# tmp1410, tmp1411
	pand	%xmm0, %xmm6	# tmp1417, tmp1418
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1419
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1412
	por	%xmm6, %xmm0	# tmp1418, tmp1419
	movdqa	%xmm1, %xmm7	# tmp1412, tmp1412
	movq	216(%rsp), %xmm6	# %sfp, vect__499.598
	movq	%xmm0, 40(%rsp)	# tmp1419, %sfp
	por	%xmm4, %xmm7	# tmp1411, tmp1412
	movdqa	%xmm15, %xmm4	# tmp1394, tmp1438
	pand	%xmm2, %xmm6	# vect__183.589, vect__499.598
	movq	%xmm7, 32(%rsp)	# tmp1412, %sfp
	movdqa	%xmm15, %xmm7	# tmp1394, tmp1538
	movdqa	%xmm6, %xmm0	# vect__499.598, vect__499.598
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1424
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1426
	pcmpgtb	%xmm0, %xmm3	# tmp1426, tmp1429
	movdqa	%xmm0, %xmm6	# tmp1426, tmp1430
	punpcklbw	%xmm3, %xmm6	# tmp1429, tmp1430
	punpcklbw	%xmm3, %xmm0	# tmp1429, tmp1434
	pcmpgtw	%xmm6, %xmm4	# tmp1430, tmp1438
	movdqa	%xmm6, %xmm1	# tmp1430, tmp1430
	movdqa	%xmm6, %xmm3	# tmp1430, tmp1439
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1447
	pshufd	$78, %xmm0, %xmm0	#, tmp1434, tmp1434
	punpcklwd	%xmm4, %xmm1	# tmp1438, tmp1446
	punpcklwd	%xmm4, %xmm3	# tmp1438, tmp1439
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1454
	pshufd	$78, %xmm1, %xmm1	#, tmp1446, tmp1446
	pand	%xmm3, %xmm5	# tmp1439, tmp1440
	pandn	%xmm10, %xmm3	# vect_cst__325, tmp1441
	pand	%xmm1, %xmm6	# tmp1446, tmp1447
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1448
	por	%xmm5, %xmm3	# tmp1440, tmp1441
	movdqa	%xmm1, %xmm5	# tmp1448, tmp1448
	movq	%xmm3, 48(%rsp)	# tmp1441, %sfp
	por	%xmm6, %xmm5	# tmp1447, tmp1448
	movdqa	%xmm15, %xmm6	# tmp1394, tmp1452
	pcmpgtw	%xmm0, %xmm6	# tmp1434, tmp1452
	movq	%xmm5, 56(%rsp)	# tmp1448, %sfp
	movdqa	%xmm11, %xmm5	# vect_cst__323, tmp1483
	movdqa	%xmm6, %xmm3	# tmp1452, tmp1452
	movdqa	%xmm0, %xmm6	# tmp1434, tmp1453
	punpcklwd	%xmm3, %xmm6	# tmp1452, tmp1453
	punpcklwd	%xmm3, %xmm0	# tmp1452, tmp1460
	movdqa	%xmm9, %xmm3	# tmp1382, tmp1472
	movdqa	%xmm6, %xmm1	# tmp1453, tmp1453
	pand	%xmm6, %xmm4	# tmp1453, tmp1454
	pshufd	$78, %xmm0, %xmm0	#, tmp1460, tmp1460
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1455
	movdqa	%xmm1, %xmm6	# tmp1455, tmp1455
	por	%xmm4, %xmm6	# tmp1454, tmp1455
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1461
	pand	%xmm0, %xmm4	# tmp1460, tmp1461
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1462
	movq	%xmm6, 64(%rsp)	# tmp1455, %sfp
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1547
	movdqa	%xmm4, %xmm1	# tmp1461, tmp1461
	movdqa	%xmm0, %xmm4	# tmp1462, tmp1462
	movq	224(%rsp), %xmm0	# %sfp, vect__500.606
	por	%xmm1, %xmm4	# tmp1461, tmp1462
	pand	%xmm2, %xmm0	# vect__183.589, vect__500.606
	movq	%xmm4, 72(%rsp)	# tmp1462, %sfp
	movdqa	%xmm15, %xmm4	# tmp1394, tmp1481
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1467
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1469
	pcmpgtb	%xmm0, %xmm3	# tmp1469, tmp1472
	movdqa	%xmm0, %xmm1	# tmp1469, tmp1473
	punpcklbw	%xmm3, %xmm1	# tmp1472, tmp1473
	punpcklbw	%xmm3, %xmm0	# tmp1472, tmp1477
	pcmpgtw	%xmm1, %xmm4	# tmp1473, tmp1481
	movdqa	%xmm1, %xmm3	# tmp1473, tmp1482
	pshufd	$78, %xmm0, %xmm0	#, tmp1477, tmp1477
	punpcklwd	%xmm4, %xmm1	# tmp1481, tmp1489
	punpcklwd	%xmm4, %xmm3	# tmp1481, tmp1482
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1497
	pshufd	$78, %xmm1, %xmm1	#, tmp1489, tmp1489
	pand	%xmm3, %xmm5	# tmp1482, tmp1483
	pandn	%xmm10, %xmm3	# vect_cst__325, tmp1484
	pand	%xmm1, %xmm13	# tmp1489, tmp1490
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1491
	por	%xmm5, %xmm3	# tmp1483, tmp1484
	por	%xmm13, %xmm1	# tmp1490, tmp1491
	movdqa	%xmm15, %xmm13	# tmp1394, tmp1495
	movdqa	%xmm11, %xmm5	# vect_cst__323, tmp1526
	movq	%xmm3, 80(%rsp)	# tmp1484, %sfp
	pcmpgtw	%xmm0, %xmm13	# tmp1477, tmp1495
	movq	%xmm1, 88(%rsp)	# tmp1491, %sfp
	movdqa	%xmm13, %xmm3	# tmp1495, tmp1495
	movdqa	%xmm0, %xmm13	# tmp1477, tmp1496
	punpcklwd	%xmm3, %xmm13	# tmp1495, tmp1496
	punpcklwd	%xmm3, %xmm0	# tmp1495, tmp1503
	pand	%xmm13, %xmm4	# tmp1496, tmp1497
	movdqa	%xmm13, %xmm1	# tmp1496, tmp1496
	pshufd	$78, %xmm0, %xmm0	#, tmp1503, tmp1503
	movdqa	%xmm11, %xmm13	# vect_cst__323, tmp1504
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1498
	pand	%xmm0, %xmm13	# tmp1503, tmp1504
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1505
	movdqa	%xmm1, %xmm8	# tmp1498, tmp1498
	por	%xmm13, %xmm0	# tmp1504, tmp1505
	movdqa	%xmm9, %xmm13	# tmp1382, tmp1515
	por	%xmm4, %xmm8	# tmp1497, tmp1498
	movq	%xmm0, 104(%rsp)	# tmp1505, %sfp
	movdqa	%xmm12, %xmm0	# vect__501.614, vect__501.614
	movdqa	%xmm15, %xmm4	# tmp1394, tmp1524
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1510
	movq	%xmm8, 96(%rsp)	# tmp1498, %sfp
	movdqa	%xmm11, %xmm8	# vect_cst__323, tmp1590
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1512
	pcmpgtb	%xmm0, %xmm13	# tmp1512, tmp1515
	movdqa	%xmm0, %xmm12	# tmp1512, tmp1516
	movdqa	%xmm13, %xmm3	# tmp1515, tmp1515
	punpcklbw	%xmm3, %xmm12	# tmp1515, tmp1516
	punpcklbw	%xmm3, %xmm0	# tmp1515, tmp1520
	pcmpgtw	%xmm12, %xmm4	# tmp1516, tmp1524
	movdqa	%xmm12, %xmm1	# tmp1516, tmp1516
	movdqa	%xmm12, %xmm13	# tmp1516, tmp1525
	pshufd	$78, %xmm0, %xmm0	#, tmp1520, tmp1520
	movdqa	%xmm11, %xmm12	# vect_cst__323, tmp1533
	pcmpgtw	%xmm0, %xmm7	# tmp1520, tmp1538
	punpcklwd	%xmm4, %xmm13	# tmp1524, tmp1525
	punpcklwd	%xmm4, %xmm1	# tmp1524, tmp1532
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1540
	movdqa	%xmm13, %xmm3	# tmp1525, tmp1525
	pshufd	$78, %xmm1, %xmm1	#, tmp1532, tmp1532
	pand	%xmm13, %xmm5	# tmp1525, tmp1526
	pand	%xmm1, %xmm12	# tmp1532, tmp1533
	pandn	%xmm10, %xmm3	# vect_cst__325, tmp1527
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1534
	movdqa	%xmm3, %xmm13	# tmp1527, tmp1527
	movdqa	%xmm12, %xmm3	# tmp1533, tmp1533
	movdqa	%xmm1, %xmm12	# tmp1534, tmp1534
	por	%xmm3, %xmm12	# tmp1533, tmp1534
	movdqa	%xmm7, %xmm3	# tmp1538, tmp1538
	movdqa	%xmm0, %xmm7	# tmp1520, tmp1539
	punpcklwd	%xmm3, %xmm0	# tmp1538, tmp1546
	por	%xmm5, %xmm13	# tmp1526, tmp1527
	punpcklwd	%xmm3, %xmm7	# tmp1538, tmp1539
	movq	%xmm12, 120(%rsp)	# tmp1534, %sfp
	pshufd	$78, %xmm0, %xmm0	#, tmp1546, tmp1546
	movdqa	%xmm7, %xmm1	# tmp1539, tmp1539
	pand	%xmm7, %xmm4	# tmp1539, tmp1540
	movq	%xmm13, 112(%rsp)	# tmp1527, %sfp
	pand	%xmm0, %xmm6	# tmp1546, tmp1547
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1548
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1541
	movdqa	%xmm0, %xmm5	# tmp1548, tmp1548
	movdqa	%xmm1, %xmm7	# tmp1541, tmp1541
	movdqa	%xmm15, %xmm12	# tmp1394, tmp1624
	por	%xmm6, %xmm5	# tmp1547, tmp1548
	por	%xmm4, %xmm7	# tmp1540, tmp1541
	movdqa	%xmm15, %xmm4	# tmp1394, tmp1567
	movq	240(%rsp), %xmm6	# %sfp, vect__502.622
	movq	%xmm5, 136(%rsp)	# tmp1548, %sfp
	movdqa	%xmm11, %xmm5	# vect_cst__323, tmp1569
	movdqa	%xmm11, %xmm13	# vect_cst__323, tmp1619
	movq	%xmm7, 128(%rsp)	# tmp1541, %sfp
	pand	%xmm2, %xmm6	# vect__183.589, vect__502.622
	movdqa	%xmm6, %xmm0	# vect__502.622, vect__502.622
	movdqa	%xmm9, %xmm6	# tmp1382, tmp1558
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1553
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1555
	pcmpgtb	%xmm0, %xmm6	# tmp1555, tmp1558
	movdqa	%xmm6, %xmm3	# tmp1558, tmp1558
	movdqa	%xmm0, %xmm6	# tmp1555, tmp1559
	punpcklbw	%xmm3, %xmm6	# tmp1558, tmp1559
	punpcklbw	%xmm3, %xmm0	# tmp1558, tmp1563
	pcmpgtw	%xmm6, %xmm4	# tmp1559, tmp1567
	movdqa	%xmm6, %xmm1	# tmp1559, tmp1559
	pshufd	$78, %xmm0, %xmm0	#, tmp1563, tmp1563
	punpcklwd	%xmm4, %xmm6	# tmp1567, tmp1568
	punpcklwd	%xmm4, %xmm1	# tmp1567, tmp1575
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1576
	movdqa	%xmm6, %xmm3	# tmp1568, tmp1568
	pshufd	$78, %xmm1, %xmm1	#, tmp1575, tmp1575
	pand	%xmm6, %xmm5	# tmp1568, tmp1569
	pand	%xmm1, %xmm4	# tmp1575, tmp1576
	pandn	%xmm10, %xmm3	# vect_cst__325, tmp1570
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1577
	movdqa	%xmm3, %xmm6	# tmp1570, tmp1570
	movdqa	%xmm4, %xmm3	# tmp1576, tmp1576
	movdqa	%xmm1, %xmm4	# tmp1577, tmp1577
	por	%xmm3, %xmm4	# tmp1576, tmp1577
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1581
	movdqa	%xmm0, %xmm1	# tmp1563, tmp1582
	pcmpgtw	%xmm0, %xmm3	# tmp1563, tmp1581
	por	%xmm5, %xmm6	# tmp1569, tmp1570
	movq	%xmm4, 152(%rsp)	# tmp1577, %sfp
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1583
	movq	%xmm6, 144(%rsp)	# tmp1570, %sfp
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1655
	punpcklwd	%xmm3, %xmm0	# tmp1581, tmp1589
	punpcklwd	%xmm3, %xmm1	# tmp1581, tmp1582
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1610
	pshufd	$78, %xmm0, %xmm0	#, tmp1589, tmp1589
	pand	%xmm1, %xmm4	# tmp1582, tmp1583
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1584
	pand	%xmm0, %xmm8	# tmp1589, tmp1590
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1591
	por	%xmm4, %xmm1	# tmp1583, tmp1584
	por	%xmm8, %xmm0	# tmp1590, tmp1591
	movdqa	%xmm11, %xmm4	# vect_cst__323, tmp1612
	movq	248(%rsp), %xmm8	# %sfp, vect__503.630
	movq	%xmm1, 160(%rsp)	# tmp1584, %sfp
	movq	%xmm0, 168(%rsp)	# tmp1591, %sfp
	pand	%xmm2, %xmm8	# vect__183.589, vect__503.630
	movdqa	%xmm8, %xmm1	# vect__503.630, vect__503.630
	movdqa	%xmm9, %xmm8	# tmp1382, tmp1601
	pcmpeqb	%xmm9, %xmm1	# tmp1382, tmp1596
	pcmpeqb	%xmm9, %xmm1	# tmp1382, tmp1598
	pcmpgtb	%xmm1, %xmm8	# tmp1598, tmp1601
	movdqa	%xmm1, %xmm5	# tmp1598, tmp1602
	movdqa	%xmm8, %xmm0	# tmp1601, tmp1601
	punpcklbw	%xmm0, %xmm5	# tmp1601, tmp1602
	punpcklbw	%xmm0, %xmm1	# tmp1601, tmp1606
	pcmpgtw	%xmm5, %xmm3	# tmp1602, tmp1610
	pshufd	$78, %xmm1, %xmm1	#, tmp1606, tmp1606
	movdqa	%xmm5, %xmm8	# tmp1602, tmp1611
	pcmpgtw	%xmm1, %xmm12	# tmp1606, tmp1624
	punpcklwd	%xmm3, %xmm8	# tmp1610, tmp1611
	punpcklwd	%xmm3, %xmm5	# tmp1610, tmp1618
	movdqa	%xmm11, %xmm3	# vect_cst__323, tmp1626
	movdqa	%xmm8, %xmm0	# tmp1611, tmp1611
	pshufd	$78, %xmm5, %xmm5	#, tmp1618, tmp1618
	pand	%xmm8, %xmm4	# tmp1611, tmp1612
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1613
	pand	%xmm5, %xmm13	# tmp1618, tmp1619
	pandn	%xmm10, %xmm5	# vect_cst__325, tmp1620
	movdqa	%xmm0, %xmm8	# tmp1613, tmp1613
	movdqa	%xmm12, %xmm0	# tmp1624, tmp1624
	por	%xmm13, %xmm5	# tmp1619, vect_patt_190.634
	movdqa	%xmm1, %xmm13	# tmp1606, tmp1625
	punpcklwd	%xmm0, %xmm1	# tmp1624, tmp1632
	movdqa	%xmm11, %xmm12	# vect_cst__323, tmp1633
	pshufd	$78, %xmm1, %xmm1	#, tmp1632, tmp1632
	punpcklwd	%xmm0, %xmm13	# tmp1624, tmp1625
	por	%xmm4, %xmm8	# tmp1612, tmp1613
	pand	%xmm1, %xmm12	# tmp1632, tmp1633
	pandn	%xmm10, %xmm1	# vect_cst__325, tmp1634
	pand	%xmm13, %xmm3	# tmp1625, tmp1626
	movq	%xmm8, 176(%rsp)	# tmp1613, %sfp
	por	%xmm12, %xmm1	# tmp1633, vect_patt_190.634
	pandn	%xmm10, %xmm13	# vect_cst__325, tmp1627
	movq	256(%rsp), %xmm12	# %sfp, vect__504.638
	por	%xmm3, %xmm13	# tmp1626, tmp1627
	movdqa	%xmm9, %xmm3	# tmp1382, tmp1644
	movq	%xmm13, 184(%rsp)	# tmp1627, %sfp
	pand	%xmm2, %xmm12	# vect__183.589, vect__504.638
	movdqa	%xmm12, %xmm0	# vect__504.638, vect__504.638
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1639
	pcmpeqb	%xmm9, %xmm0	# tmp1382, tmp1641
	pcmpgtb	%xmm0, %xmm3	# tmp1641, tmp1644
	movdqa	%xmm0, %xmm4	# tmp1641, tmp1645
	punpcklbw	%xmm3, %xmm4	# tmp1644, tmp1645
	punpcklbw	%xmm3, %xmm0	# tmp1644, tmp1649
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1653
	pcmpgtw	%xmm4, %xmm3	# tmp1645, tmp1653
	movdqa	%xmm4, %xmm12	# tmp1645, tmp1654
	pshufd	$78, %xmm0, %xmm0	#, tmp1649, tmp1649
	movdqa	%xmm0, %xmm8	# tmp1649, tmp1668
	punpcklwd	%xmm3, %xmm12	# tmp1653, tmp1654
	punpcklwd	%xmm3, %xmm4	# tmp1653, tmp1661
	movdqa	%xmm11, %xmm3	# vect_cst__323, tmp1662
	pand	%xmm12, %xmm6	# tmp1654, tmp1655
	pandn	%xmm10, %xmm12	# vect_cst__325, tmp1656
	pshufd	$78, %xmm4, %xmm4	#, tmp1661, tmp1661
	por	%xmm6, %xmm12	# tmp1655, tmp1656
	pand	%xmm4, %xmm3	# tmp1661, tmp1662
	pandn	%xmm10, %xmm4	# vect_cst__325, tmp1663
	movq	%xmm12, 192(%rsp)	# tmp1656, %sfp
	por	%xmm3, %xmm4	# tmp1662, vect_patt_192.642
	movdqa	%xmm15, %xmm3	# tmp1394, tmp1667
	movq	264(%rsp), %xmm12	# %sfp, tmp1679
	pcmpgtw	%xmm0, %xmm3	# tmp1649, tmp1667
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1669
	pand	%xmm12, %xmm2	# tmp1679, vect__505.646
	movdqa	%xmm11, %xmm12	# vect_cst__323, tmp1698
	pcmpeqb	%xmm9, %xmm2	# tmp1382, tmp1682
	punpcklwd	%xmm3, %xmm8	# tmp1667, tmp1668
	punpcklwd	%xmm3, %xmm0	# tmp1667, tmp1675
	movdqa	%xmm11, %xmm3	# vect_cst__323, tmp1676
	pand	%xmm8, %xmm6	# tmp1668, tmp1669
	pandn	%xmm10, %xmm8	# vect_cst__325, tmp1670
	pshufd	$78, %xmm0, %xmm0	#, tmp1675, tmp1675
	pcmpeqb	%xmm9, %xmm2	# tmp1382, tmp1684
	por	%xmm6, %xmm8	# tmp1669, vect_patt_192.642
	movdqa	%xmm9, %xmm6	# tmp1382, tmp1687
	pand	%xmm0, %xmm3	# tmp1675, tmp1676
	pandn	%xmm10, %xmm0	# vect_cst__325, tmp1677
	por	%xmm3, %xmm0	# tmp1676, vect_patt_192.642
	pcmpgtb	%xmm2, %xmm6	# tmp1684, tmp1687
	movdqa	%xmm2, %xmm3	# tmp1684, tmp1688
	punpcklbw	%xmm6, %xmm3	# tmp1687, tmp1688
	punpcklbw	%xmm6, %xmm2	# tmp1687, tmp1692
	movdqa	%xmm15, %xmm6	# tmp1394, tmp1696
	pcmpgtw	%xmm3, %xmm6	# tmp1688, tmp1696
	movdqa	%xmm3, %xmm7	# tmp1688, tmp1697
	pshufd	$78, %xmm2, %xmm2	#, tmp1692, tmp1692
	movdqa	%xmm2, %xmm13	# tmp1692, tmp1711
	punpcklwd	%xmm6, %xmm3	# tmp1696, tmp1704
	punpcklwd	%xmm6, %xmm7	# tmp1696, tmp1697
	movdqa	%xmm11, %xmm6	# vect_cst__323, tmp1705
	pshufd	$78, %xmm3, %xmm3	#, tmp1704, tmp1704
	pand	%xmm7, %xmm12	# tmp1697, tmp1698
	pandn	%xmm10, %xmm7	# vect_cst__325, tmp1699
	pand	%xmm3, %xmm6	# tmp1704, tmp1705
	pandn	%xmm10, %xmm3	# vect_cst__325, tmp1706
	por	%xmm12, %xmm7	# tmp1698, vect_patt_195.650
	por	%xmm6, %xmm3	# tmp1705, vect_patt_195.650
	movdqa	%xmm15, %xmm6	# tmp1394, tmp1710
	pcmpgtw	%xmm2, %xmm6	# tmp1692, tmp1710
	movdqa	%xmm6, %xmm12	# tmp1710, tmp1710
	punpcklwd	%xmm6, %xmm13	# tmp1710, tmp1711
	punpcklwd	%xmm12, %xmm2	# tmp1710, tmp1718
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_461.594, tmp2809
	movd	%xmm12, (%r11)	# tmp2809, MEM[(unsigned int *)_1621]
	movq	24(%rsp), %xmm14	# %sfp, vect_patt_461.594
	movdqa	%xmm13, %xmm6	# tmp1711, tmp1711
	movdqa	%xmm11, %xmm13	# vect_cst__323, tmp1712
	pshufd	$78, %xmm2, %xmm2	#, tmp1718, tmp1718
	movd	%xmm14, (%r10)	# vect_patt_461.594, MEM[(unsigned int *)_485]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_461.594, tmp2811
	pand	%xmm6, %xmm13	# tmp1711, tmp1712
	movq	32(%rsp), %xmm14	# %sfp, vect_patt_461.594
	pandn	%xmm10, %xmm6	# vect_cst__325, tmp1713
	movd	%xmm12, (%r9)	# tmp2811, MEM[(unsigned int *)_107]
	por	%xmm13, %xmm6	# tmp1712, vect_patt_195.650
	movd	%xmm14, (%rdi)	# vect_patt_461.594, MEM[(unsigned int *)_470]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_461.594, tmp2813
	movdqa	%xmm11, %xmm13	# vect_cst__323, tmp1719
	movq	40(%rsp), %xmm14	# %sfp, vect_patt_461.594
	pand	%xmm2, %xmm13	# tmp1718, tmp1719
	pandn	%xmm10, %xmm2	# vect_cst__325, tmp1720
	movd	%xmm12, (%rsi)	# tmp2813, MEM[(unsigned int *)_253]
	por	%xmm13, %xmm2	# tmp1719, vect_patt_195.650
	movd	%xmm14, (%rcx)	# vect_patt_461.594, MEM[(unsigned int *)_497]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_461.594, tmp2815
	movq	48(%rsp), %xmm14	# %sfp, vect_patt_448.602
	movd	%xmm13, (%rdx)	# tmp2815, MEM[(unsigned int *)_1236]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_448.602, tmp2817
	movd	%xmm14, 4(%rbx)	# vect_patt_448.602, MEM[(unsigned int *)_512 + 4B]
	movq	56(%rsp), %xmm14	# %sfp, vect_patt_448.602
	movd	%xmm12, 4(%r11)	# tmp2817, MEM[(unsigned int *)_1621 + 4B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_448.602, tmp2819
	movd	%xmm14, 4(%r10)	# vect_patt_448.602, MEM[(unsigned int *)_485 + 4B]
	movq	64(%rsp), %xmm14	# %sfp, vect_patt_448.602
	movd	%xmm13, 4(%r9)	# tmp2819, MEM[(unsigned int *)_107 + 4B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_448.602, tmp2821
	movd	%xmm14, 4(%rdi)	# vect_patt_448.602, MEM[(unsigned int *)_470 + 4B]
	movq	72(%rsp), %xmm14	# %sfp, vect_patt_448.602
	movd	%xmm12, 4(%rsi)	# tmp2821, MEM[(unsigned int *)_253 + 4B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_448.602, tmp2823
	movd	%xmm14, 4(%rcx)	# vect_patt_448.602, MEM[(unsigned int *)_497 + 4B]
	movq	80(%rsp), %xmm14	# %sfp, vect_patt_435.610
	movd	%xmm13, 4(%rdx)	# tmp2823, MEM[(unsigned int *)_1236 + 4B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_435.610, tmp2825
	movd	%xmm14, 8(%rbx)	# vect_patt_435.610, MEM[(unsigned int *)_512 + 8B]
	movq	88(%rsp), %xmm14	# %sfp, vect_patt_435.610
	movd	%xmm12, 8(%r11)	# tmp2825, MEM[(unsigned int *)_1621 + 8B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_435.610, tmp2827
	movd	%xmm14, 8(%r10)	# vect_patt_435.610, MEM[(unsigned int *)_485 + 8B]
	movq	96(%rsp), %xmm14	# %sfp, vect_patt_435.610
	movd	%xmm13, 8(%r9)	# tmp2827, MEM[(unsigned int *)_107 + 8B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_435.610, tmp2829
	movd	%xmm14, 8(%rdi)	# vect_patt_435.610, MEM[(unsigned int *)_470 + 8B]
	movq	104(%rsp), %xmm14	# %sfp, vect_patt_435.610
	movd	%xmm12, 8(%rsi)	# tmp2829, MEM[(unsigned int *)_253 + 8B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_435.610, tmp2831
	movd	%xmm14, 8(%rcx)	# vect_patt_435.610, MEM[(unsigned int *)_497 + 8B]
	movd	%xmm13, 8(%rdx)	# tmp2831, MEM[(unsigned int *)_1236 + 8B]
	movq	112(%rsp), %xmm14	# %sfp, vect_patt_422.618
	movd	%xmm14, 12(%rbx)	# vect_patt_422.618, MEM[(unsigned int *)_512 + 12B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_422.618, tmp2833
	movq	120(%rsp), %xmm14	# %sfp, vect_patt_422.618
	movd	%xmm13, 12(%r11)	# tmp2833, MEM[(unsigned int *)_1621 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_422.618, tmp2835
	movd	%xmm14, 12(%r10)	# vect_patt_422.618, MEM[(unsigned int *)_485 + 12B]
	movq	128(%rsp), %xmm14	# %sfp, vect_patt_422.618
	movd	%xmm12, 12(%r9)	# tmp2835, MEM[(unsigned int *)_107 + 12B]
	movd	%xmm14, 12(%rdi)	# vect_patt_422.618, MEM[(unsigned int *)_470 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_422.618, tmp2837
	movq	136(%rsp), %xmm14	# %sfp, vect_patt_422.618
	movd	%xmm12, 12(%rsi)	# tmp2837, MEM[(unsigned int *)_253 + 12B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_422.618, tmp2839
	movd	%xmm14, 12(%rcx)	# vect_patt_422.618, MEM[(unsigned int *)_497 + 12B]
	movq	144(%rsp), %xmm14	# %sfp, vect_patt_180.626
	movd	%xmm13, 12(%rdx)	# tmp2839, MEM[(unsigned int *)_1236 + 12B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_180.626, tmp2841
	movd	%xmm14, 16(%rbx)	# vect_patt_180.626, MEM[(unsigned int *)_512 + 16B]
	movq	152(%rsp), %xmm14	# %sfp, vect_patt_180.626
	movd	%xmm12, 16(%r11)	# tmp2841, MEM[(unsigned int *)_1621 + 16B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_180.626, tmp2843
	movd	%xmm14, 16(%r10)	# vect_patt_180.626, MEM[(unsigned int *)_485 + 16B]
	movq	160(%rsp), %xmm14	# %sfp, vect_patt_180.626
	movd	%xmm13, 16(%r9)	# tmp2843, MEM[(unsigned int *)_107 + 16B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_180.626, tmp2845
	movd	%xmm14, 16(%rdi)	# vect_patt_180.626, MEM[(unsigned int *)_470 + 16B]
	movq	168(%rsp), %xmm14	# %sfp, vect_patt_180.626
	movd	%xmm12, 16(%rsi)	# tmp2845, MEM[(unsigned int *)_253 + 16B]
	pshufd	$0xe5, %xmm14, %xmm13	# vect_patt_180.626, tmp2847
	movd	%xmm14, 16(%rcx)	# vect_patt_180.626, MEM[(unsigned int *)_497 + 16B]
	movq	176(%rsp), %xmm14	# %sfp, vect_patt_190.634
	movd	%xmm13, 16(%rdx)	# tmp2847, MEM[(unsigned int *)_1236 + 16B]
	movq	184(%rsp), %xmm13	# %sfp, vect_patt_190.634
	movd	%xmm14, 20(%rbx)	# vect_patt_190.634, MEM[(unsigned int *)_512 + 20B]
	pshufd	$0xe5, %xmm14, %xmm12	# vect_patt_190.634, tmp2849
	movd	%xmm12, 20(%r11)	# tmp2849, MEM[(unsigned int *)_1621 + 20B]
	movd	%xmm5, 20(%r10)	# vect_patt_190.634, MEM[(unsigned int *)_485 + 20B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_190.634, tmp2850
	movd	%xmm5, 20(%r9)	# tmp2850, MEM[(unsigned int *)_107 + 20B]
	pshufd	$0xe5, %xmm13, %xmm5	# vect_patt_190.634, tmp2851
	movd	%xmm13, 20(%rdi)	# vect_patt_190.634, MEM[(unsigned int *)_470 + 20B]
	movd	%xmm5, 20(%rsi)	# tmp2851, MEM[(unsigned int *)_253 + 20B]
	pshufd	$0xe5, %xmm1, %xmm5	# vect_patt_190.634, tmp2852
	movd	%xmm1, 20(%rcx)	# vect_patt_190.634, MEM[(unsigned int *)_497 + 20B]
	movd	%xmm5, 20(%rdx)	# tmp2852, MEM[(unsigned int *)_1236 + 20B]
	movq	192(%rsp), %xmm5	# %sfp, vect_patt_192.642
	movd	%xmm5, 24(%rbx)	# vect_patt_192.642, MEM[(unsigned int *)_512 + 24B]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_192.642, tmp2853
	movd	%xmm5, 24(%r11)	# tmp2853, MEM[(unsigned int *)_1621 + 24B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_192.642, tmp2854
	movd	%xmm4, 24(%r10)	# vect_patt_192.642, MEM[(unsigned int *)_485 + 24B]
	movd	%xmm5, 24(%r9)	# tmp2854, MEM[(unsigned int *)_107 + 24B]
	pshufd	$0xe5, %xmm8, %xmm5	# vect_patt_192.642, tmp2855
	movd	%xmm8, 24(%rdi)	# vect_patt_192.642, MEM[(unsigned int *)_470 + 24B]
	movd	%xmm5, 24(%rsi)	# tmp2855, MEM[(unsigned int *)_253 + 24B]
	pshufd	$0xe5, %xmm0, %xmm5	# vect_patt_192.642, tmp2856
	movd	%xmm0, 24(%rcx)	# vect_patt_192.642, MEM[(unsigned int *)_497 + 24B]
	movd	%xmm5, 24(%rdx)	# tmp2856, MEM[(unsigned int *)_1236 + 24B]
	movd	%xmm7, 28(%rbx)	# vect_patt_195.650, MEM[(unsigned int *)_512 + 28B]
	pshufd	$0xe5, %xmm7, %xmm7	# vect_patt_195.650, tmp2857
	addq	%r12, %rbx	# _644, ivtmp.797
	movd	%xmm7, 28(%r11)	# tmp2857, MEM[(unsigned int *)_1621 + 28B]
	pshufd	$0xe5, %xmm3, %xmm7	# vect_patt_195.650, tmp2858
	addq	%r12, %r11	# _644, ivtmp.802
	movd	%xmm3, 28(%r10)	# vect_patt_195.650, MEM[(unsigned int *)_485 + 28B]
	addq	%r12, %r10	# _644, ivtmp.803
	movd	%xmm7, 28(%r9)	# tmp2858, MEM[(unsigned int *)_107 + 28B]
	pshufd	$0xe5, %xmm6, %xmm7	# vect_patt_195.650, tmp2859
	addq	%r12, %r9	# _644, ivtmp.804
	movd	%xmm6, 28(%rdi)	# vect_patt_195.650, MEM[(unsigned int *)_470 + 28B]
	addq	%r12, %rdi	# _644, ivtmp.805
	movd	%xmm7, 28(%rsi)	# tmp2859, MEM[(unsigned int *)_253 + 28B]
	addq	%r12, %rsi	# _644, ivtmp.806
	movd	%xmm2, 28(%rcx)	# vect_patt_195.650, MEM[(unsigned int *)_497 + 28B]
	pshufd	$0xe5, %xmm2, %xmm2	# vect_patt_195.650, tmp2860
	addq	%r12, %rcx	# _644, ivtmp.807
	movd	%xmm2, 28(%rdx)	# tmp2860, MEM[(unsigned int *)_1236 + 28B]
	addq	%r12, %rdx	# _644, ivtmp.808
	cmpq	%rax, %r8	# _1382, ivtmp.801
	jne	.L541	#,
	movl	%r13d, %r8d	# count, count
	jmp	.L555	#
.L540:
	movq	16(%rsp), %rdi	# %sfp, _50
# printk.c:12: 	fontp=font_ascii[font];
	movl	8(%rsp), %r13d	# %sfp, BKcolor
	addq	%rdi, %rcx	# _50, ivtmp.791
	movq	296(%rsp), %rdi	# %sfp, tmp2305
	leaq	(%rdi,%rbp), %rdx	#, fontp
	jmp	.L552	#
	.p2align 4,,10
	.p2align 3
.L628:
	movl	%r15d, 28(%rcx)	# FRcolor, MEM[(unsigned int *)_226 + 28B]
.L620:
# printk.c:13: 	for(i=0;i<16;i++){
	movq	200(%rsp), %rbx	# %sfp, tmp2309
# printk.c:26: 		fontp++;
	addq	$1, %rdx	#, fontp
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rax, %rcx	# _205, ivtmp.791
	cmpq	%rbx, %rdx	# tmp2309, fontp
	je	.L618	#,
.L552:
# printk.c:20: 				*addr =FRcolor;
	cmpb	$0, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	movl	%r15d, %esi	# FRcolor, cstore_381
	cmovns	%r13d, %esi	# BKcolor,, cstore_381
	movl	%esi, (%rcx)	# cstore_381, MEM[(unsigned int *)_226]
	movl	%r15d, %esi	# FRcolor, cstore_371
	testb	$64, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_371
	movl	%esi, 4(%rcx)	# cstore_371, MEM[(unsigned int *)_226 + 4B]
	movl	%r15d, %esi	# FRcolor, cstore_363
	testb	$32, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_363
	movl	%esi, 8(%rcx)	# cstore_363, MEM[(unsigned int *)_226 + 8B]
	movl	%r15d, %esi	# FRcolor, cstore_350
	testb	$16, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_350
	movl	%esi, 12(%rcx)	# cstore_350, MEM[(unsigned int *)_226 + 12B]
	movl	%r15d, %esi	# FRcolor, cstore_337
	testb	$8, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_337
	movl	%esi, 16(%rcx)	# cstore_337, MEM[(unsigned int *)_226 + 16B]
	movl	%r15d, %esi	# FRcolor, cstore_324
	testb	$4, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_324
	movl	%esi, 20(%rcx)	# cstore_324, MEM[(unsigned int *)_226 + 20B]
	movl	%r15d, %esi	# FRcolor, cstore_311
	testb	$2, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	cmove	%r13d, %esi	# BKcolor,, cstore_311
	movl	%esi, 24(%rcx)	# cstore_311, MEM[(unsigned int *)_226 + 24B]
# printk.c:19: 			if(*fontp & testval){
	testb	$1, (%rdx)	#, MEM[(unsigned char *)fontp_415]
	jne	.L628	#,
	movl	%r13d, 28(%rcx)	# BKcolor, MEM[(unsigned int *)_226 + 28B]
	jmp	.L620	#
.L626:
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	leal	8(%rdx), %eax	#, tmp1347
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	andl	$-8, %eax	#, tmp1348
# printk.c:59: 				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
	subl	%edx, %eax	# pretmp_110, tmp1348
	movl	%eax, 208(%rsp)	# tmp1348, %sfp
	jmp	.L520	#
.L618:
	movl	%r13d, 8(%rsp)	# BKcolor, %sfp
	jmp	.L555	#
.L625:
# printk.c:48: 			if(Pos.XPosition<0){
	subl	$1, %edx	#, pretmp_110
	movl	%edx, %r11d	# pretmp_110, _12
	js	.L524	#,
# printk.c:47: 			Pos.XPosition--;
	movl	%edx, 8(%r14,%rbp)	# _12, Pos.XPosition
.L525:
# printk.c:55: 			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
	imull	%r9d, %ecx	# prephitmp_267, tmp888
	movl	%r11d, %edx	# _12, _12
	movslq	%esi, %r10	# prephitmp_109, _883
	movl	$31, %r9d	#, tmp899
	imull	%edi, %edx	# prephitmp_276, _12
	movq	%r10, %rdi	# _883, tmp895
	movq	16(%rsp), %r12	# %sfp, _50
	leaq	0(,%r10,4), %rax	#, _884
	salq	$4, %rdi	#, tmp895
	imull	%esi, %ecx	# prephitmp_109, tmp889
	subq	%r10, %rdi	# _883, tmp896
# printk.c:15: 		addr=fb+Xsize*(y+i)+x;
	movslq	%edx, %rdx	# tmp891, tmp892
	salq	$2, %rdi	#, tmp897
	movslq	%ecx, %rcx	# tmp889, tmp890
	addq	%rdx, %rcx	# tmp892, tmp893
	leaq	31(%rdi), %rdx	#, tmp898
	salq	$2, %rcx	#, _891
	testl	%esi, %esi	# prephitmp_109
	cmovs	%r9, %rdx	# tmp898,, tmp899, tmp898
	movabsq	$512+font_ascii@GOTOFF, %r9	#, tmp2288
	leaq	(%r9,%rbp), %rbx	#, tmp903
	addq	%rcx, %rdx	# _891, tmp900
	movq	%rbx, %r13	# tmp903, tmp903
	leaq	(%r12,%rdx), %r11	#, tmp901
	cmpq	%rbx, %r11	# tmp903, tmp901
	setb	%r11b	#, tmp905
	testl	%esi, %esi	# prephitmp_109
	movl	$0, %esi	#, tmp907
	cmovs	%rdi, %rsi	# tmp897,, tmp906
	leaq	15(%rbx), %rdi	#, tmp911
	addq	%rcx, %rsi	# _891, tmp908
	addq	%r12, %rsi	# _50, tmp909
	cmpq	%rsi, %rdi	# tmp909, tmp911
	setb	%sil	#, tmp913
	orb	%r11b, %sil	# tmp905, tmp2315
	je	.L526	#,
	leaq	31(%rax), %rsi	#, tmp915
	cmpq	$62, %rsi	#, tmp915
	jbe	.L526	#,
	addq	%rcx, %r12	# _891, ivtmp.824
	movd	%r15d, %xmm2	# FRcolor, FRcolor
# printk.c:19: 			if(*fontp & testval){
	pxor	%xmm10, %xmm10	# tmp921
	movq	%r10, %rdx	# _883, _883
	subq	$496, %r13	#, _970
	leaq	-512(%rbx), %r9	#, ivtmp.828
	leaq	(%r12,%rax), %rbx	#, ivtmp.829
	salq	$5, %rdx	#, _883
	leaq	(%rbx,%rax), %r11	#, ivtmp.830
	pshufd	$0xe0, %xmm2, %xmm12	# FRcolor, vect_cst__930
	movd	8(%rsp), %xmm2	# %sfp, BKcolor
	movq	%r13, 216(%rsp)	# _970, %sfp
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	leaq	(%r11,%rax), %r10	#, ivtmp.831
	pxor	%xmm9, %xmm9	# tmp933
	movq	%r13, 56(%rsp)	# tmp2298, %sfp
	leaq	(%r10,%rax), %rdi	#, ivtmp.832
	pshufd	$0xe0, %xmm2, %xmm11	# BKcolor, vect_cst__931
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movq	%r13, 24(%rsp)	# tmp2290, %sfp
	leaq	(%rdi,%rax), %rsi	#, ivtmp.833
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	%r13, 32(%rsp)	# tmp2291, %sfp
	leaq	(%rsi,%rax), %rcx	#, ivtmp.834
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	%r13, 40(%rsp)	# tmp2292, %sfp
	addq	%rcx, %rax	# ivtmp.834, ivtmp.835
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	%r13, 48(%rsp)	# tmp2293, %sfp
	movabsq	$.LC8@GOTOFF, %r13	#, tmp2297
	movq	0(%r13,%rbp), %r13	#, tmp960
	movq	%r13, 224(%rsp)	# tmp960, %sfp
	movabsq	$.LC3@GOTOFF, %r13	#, tmp2296
	movq	0(%r13,%rbp), %r13	#, tmp1003
	movq	%r13, 232(%rsp)	# tmp1003, %sfp
	movabsq	$.LC9@GOTOFF, %r13	#, tmp2298
	movq	0(%r13,%rbp), %r13	#, tmp1046
	movq	%r13, 240(%rsp)	# tmp1046, %sfp
	movabsq	$.LC10@GOTOFF, %r13	#, tmp2290
	movq	0(%r13,%rbp), %r13	#, tmp1089
	movq	%r13, 248(%rsp)	# tmp1089, %sfp
	movabsq	$.LC11@GOTOFF, %r13	#, tmp2291
	movq	0(%r13,%rbp), %r13	#, tmp1132
	movq	%r13, 256(%rsp)	# tmp1132, %sfp
	movabsq	$.LC12@GOTOFF, %r13	#, tmp2292
	movq	0(%r13,%rbp), %r13	#, tmp1175
	movq	%r13, 264(%rsp)	# tmp1175, %sfp
	movabsq	$.LC13@GOTOFF, %r13	#, tmp2293
	movq	0(%r13,%rbp), %r13	#, tmp1218
	movq	%r13, 328(%rsp)	# tmp1218, %sfp
	movl	%r8d, %r13d	# count, count
.L527:
	movdqa	%xmm10, %xmm3	# tmp921, tmp922
	movdqa	%xmm10, %xmm0	# tmp921, tmp925
	movdqa	%xmm12, %xmm1	# vect_cst__930, tmp936
# printk.c:19: 			if(*fontp & testval){
	movq	512(%r9), %xmm2	# MEM <vector(8) unsigned char> [(unsigned char *)_1306 + 512B], vect__287.653
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp979
	movdqa	%xmm10, %xmm7	# tmp921, tmp1011
	addq	$8, %r9	#, ivtmp.828
# printk.c:19: 			if(*fontp & testval){
	pcmpgtb	%xmm2, %xmm3	# vect__287.653, tmp922
	pcmpgtb	%xmm3, %xmm0	# tmp922, tmp925
	movdqa	%xmm3, %xmm5	# tmp922, tmp926
	punpcklbw	%xmm0, %xmm5	# tmp925, tmp926
	punpcklbw	%xmm0, %xmm3	# tmp925, tmp930
	movdqa	%xmm9, %xmm0	# tmp933, tmp934
	pcmpgtw	%xmm5, %xmm0	# tmp926, tmp934
	movdqa	%xmm5, %xmm15	# tmp926, tmp935
	pshufd	$78, %xmm3, %xmm3	#, tmp930, tmp930
	movdqa	%xmm3, %xmm14	# tmp930, tmp949
	punpcklwd	%xmm0, %xmm5	# tmp934, tmp942
	punpcklwd	%xmm0, %xmm15	# tmp934, tmp935
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp943
	pshufd	$78, %xmm5, %xmm5	#, tmp942, tmp942
	pand	%xmm15, %xmm1	# tmp935, tmp936
	pandn	%xmm11, %xmm15	# vect_cst__931, tmp937
	pand	%xmm5, %xmm0	# tmp942, tmp943
	pandn	%xmm11, %xmm5	# vect_cst__931, tmp944
	por	%xmm1, %xmm15	# tmp936, vect_patt_867.658
	por	%xmm0, %xmm5	# tmp943, vect_patt_867.658
	movdqa	%xmm9, %xmm0	# tmp933, tmp948
	movdqa	%xmm12, %xmm1	# vect_cst__930, tmp950
	pcmpgtw	%xmm3, %xmm0	# tmp930, tmp948
	punpcklwd	%xmm0, %xmm3	# tmp948, tmp956
	punpcklwd	%xmm0, %xmm14	# tmp948, tmp949
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp957
	pshufd	$78, %xmm3, %xmm3	#, tmp956, tmp956
	pand	%xmm14, %xmm1	# tmp949, tmp950
	pandn	%xmm11, %xmm14	# vect_cst__931, tmp951
	pand	%xmm3, %xmm0	# tmp956, tmp957
	pandn	%xmm11, %xmm3	# vect_cst__931, tmp958
	por	%xmm1, %xmm14	# tmp950, vect_patt_867.658
	por	%xmm0, %xmm3	# tmp957, tmp958
	movdqa	%xmm10, %xmm1	# tmp921, tmp968
	movq	224(%rsp), %xmm0	# %sfp, vect__491.662
	movq	%xmm3, 24(%rsp)	# tmp958, %sfp
	pand	%xmm2, %xmm0	# vect__287.653, vect__491.662
	pcmpeqb	%xmm10, %xmm0	# tmp921, tmp963
	pcmpeqb	%xmm10, %xmm0	# tmp921, tmp965
	pcmpgtb	%xmm0, %xmm1	# tmp965, tmp968
	movdqa	%xmm0, %xmm4	# tmp965, tmp969
	punpcklbw	%xmm1, %xmm4	# tmp968, tmp969
	punpcklbw	%xmm1, %xmm0	# tmp968, tmp973
	movdqa	%xmm9, %xmm1	# tmp933, tmp977
	pcmpgtw	%xmm4, %xmm1	# tmp969, tmp977
	movdqa	%xmm4, %xmm13	# tmp969, tmp978
	pshufd	$78, %xmm0, %xmm0	#, tmp973, tmp973
	movdqa	%xmm0, %xmm8	# tmp973, tmp992
	punpcklwd	%xmm1, %xmm4	# tmp977, tmp985
	punpcklwd	%xmm1, %xmm13	# tmp977, tmp978
	movdqa	%xmm12, %xmm1	# vect_cst__930, tmp986
	pshufd	$78, %xmm4, %xmm4	#, tmp985, tmp985
	pand	%xmm13, %xmm6	# tmp978, tmp979
	pandn	%xmm11, %xmm13	# vect_cst__931, tmp980
	pand	%xmm4, %xmm1	# tmp985, tmp986
	pandn	%xmm11, %xmm4	# vect_cst__931, tmp987
	por	%xmm6, %xmm13	# tmp979, vect_patt_869.666
	por	%xmm1, %xmm4	# tmp986, vect_patt_869.666
	movdqa	%xmm9, %xmm1	# tmp933, tmp991
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp993
	pcmpgtw	%xmm0, %xmm1	# tmp973, tmp991
	punpcklwd	%xmm1, %xmm0	# tmp991, tmp999
	punpcklwd	%xmm1, %xmm8	# tmp991, tmp992
	movdqa	%xmm12, %xmm1	# vect_cst__930, tmp1000
	pshufd	$78, %xmm0, %xmm0	#, tmp999, tmp999
	pand	%xmm8, %xmm6	# tmp992, tmp993
	pandn	%xmm11, %xmm8	# vect_cst__931, tmp994
	pand	%xmm0, %xmm1	# tmp999, tmp1000
	pandn	%xmm11, %xmm0	# vect_cst__931, tmp1001
	por	%xmm6, %xmm8	# tmp993, vect_patt_869.666
	por	%xmm1, %xmm0	# tmp1000, tmp1001
	movq	232(%rsp), %xmm1	# %sfp, vect__492.670
	movq	%xmm0, 32(%rsp)	# tmp1001, %sfp
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1022
	pand	%xmm2, %xmm1	# vect__287.653, vect__492.670
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1006
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1008
	pcmpgtb	%xmm1, %xmm7	# tmp1008, tmp1011
	movdqa	%xmm1, %xmm6	# tmp1008, tmp1012
	punpcklbw	%xmm7, %xmm6	# tmp1011, tmp1012
	punpcklbw	%xmm7, %xmm1	# tmp1011, tmp1016
	movdqa	%xmm9, %xmm7	# tmp933, tmp1020
	pcmpgtw	%xmm6, %xmm7	# tmp1012, tmp1020
	pshufd	$78, %xmm1, %xmm1	#, tmp1016, tmp1016
	movq	%xmm7, %r8	# tmp1020, tmp1020
	movdqa	%xmm6, %xmm7	# tmp1012, tmp1021
	movq	%r8, %xmm3	# tmp1020, tmp1020
	punpcklwd	%xmm3, %xmm7	# tmp1020, tmp1021
	punpcklwd	%xmm3, %xmm6	# tmp1020, tmp1028
	pand	%xmm7, %xmm0	# tmp1021, tmp1022
	pandn	%xmm11, %xmm7	# vect_cst__931, tmp1023
	pshufd	$78, %xmm6, %xmm6	#, tmp1028, tmp1028
	por	%xmm0, %xmm7	# tmp1022, vect_patt_871.674
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1029
	pand	%xmm6, %xmm0	# tmp1028, tmp1029
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1030
	por	%xmm6, %xmm0	# tmp1030, tmp1029
	movdqa	%xmm9, %xmm6	# tmp933, tmp1034
	pcmpgtw	%xmm1, %xmm6	# tmp1016, tmp1034
	movq	%xmm0, 40(%rsp)	# tmp1029, %sfp
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1036
	movq	%xmm6, %r8	# tmp1034, tmp1034
	movdqa	%xmm1, %xmm6	# tmp1016, tmp1035
	movq	%r8, %xmm3	# tmp1034, tmp1034
	punpcklwd	%xmm3, %xmm6	# tmp1034, tmp1035
	pand	%xmm6, %xmm0	# tmp1035, tmp1036
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1037
	por	%xmm6, %xmm0	# tmp1037, tmp1036
	movq	%r8, %xmm6	# tmp1034, tmp1034
	punpcklwd	%xmm6, %xmm1	# tmp1034, tmp1042
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp1043
	movq	%xmm0, 48(%rsp)	# tmp1036, %sfp
	movdqa	%xmm9, %xmm0	# tmp933, tmp1063
	pshufd	$78, %xmm1, %xmm1	#, tmp1042, tmp1042
	pand	%xmm1, %xmm6	# tmp1042, tmp1043
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1044
	por	%xmm6, %xmm1	# tmp1043, tmp1044
	movq	240(%rsp), %xmm6	# %sfp, vect__493.678
	movq	%xmm1, 56(%rsp)	# tmp1044, %sfp
	pand	%xmm2, %xmm6	# vect__287.653, vect__493.678
	movdqa	%xmm6, %xmm1	# vect__493.678, vect__493.678
	movdqa	%xmm10, %xmm6	# tmp921, tmp1054
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1049
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1051
	pcmpgtb	%xmm1, %xmm6	# tmp1051, tmp1054
	movq	%xmm6, %r8	# tmp1054, tmp1054
	movdqa	%xmm1, %xmm6	# tmp1051, tmp1055
	movq	%r8, %xmm3	# tmp1054, tmp1054
	punpcklbw	%xmm3, %xmm6	# tmp1054, tmp1055
	punpcklbw	%xmm3, %xmm1	# tmp1054, tmp1059
	pcmpgtw	%xmm6, %xmm0	# tmp1055, tmp1063
	movdqa	%xmm6, %xmm3	# tmp1055, tmp1064
	pshufd	$78, %xmm1, %xmm1	#, tmp1059, tmp1059
	punpcklwd	%xmm0, %xmm3	# tmp1063, tmp1064
	movq	%xmm0, 72(%rsp)	# tmp1063, %sfp
	movdqa	%xmm3, %xmm0	# tmp1064, tmp1065
	pandn	%xmm11, %xmm3	# vect_cst__931, tmp1066
	pand	%xmm12, %xmm0	# vect_cst__930, tmp1065
	por	%xmm3, %xmm0	# tmp1066, tmp1065
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1072
	movq	%xmm0, 64(%rsp)	# tmp1065, %sfp
	movq	72(%rsp), %xmm0	# %sfp, tmp1063
	punpcklwd	%xmm0, %xmm6	# tmp1063, tmp1071
	pshufd	$78, %xmm6, %xmm6	#, tmp1071, tmp1071
	pand	%xmm6, %xmm3	# tmp1071, tmp1072
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1073
	movdqa	%xmm3, %xmm0	# tmp1072, tmp1072
	por	%xmm6, %xmm0	# tmp1073, tmp1072
	movdqa	%xmm9, %xmm6	# tmp933, tmp1077
	pcmpgtw	%xmm1, %xmm6	# tmp1059, tmp1077
	movq	%xmm0, 72(%rsp)	# tmp1072, %sfp
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1079
	movq	%xmm6, %r8	# tmp1077, tmp1077
	movdqa	%xmm1, %xmm6	# tmp1059, tmp1078
	movq	%r8, %xmm3	# tmp1077, tmp1077
	punpcklwd	%xmm3, %xmm6	# tmp1077, tmp1078
	pand	%xmm6, %xmm0	# tmp1078, tmp1079
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1080
	por	%xmm6, %xmm0	# tmp1080, tmp1079
	movq	%r8, %xmm6	# tmp1077, tmp1077
	punpcklwd	%xmm6, %xmm1	# tmp1077, tmp1085
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp1086
	movq	%xmm0, 80(%rsp)	# tmp1079, %sfp
	movdqa	%xmm9, %xmm0	# tmp933, tmp1106
	pshufd	$78, %xmm1, %xmm1	#, tmp1085, tmp1085
	pand	%xmm1, %xmm6	# tmp1085, tmp1086
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1087
	por	%xmm6, %xmm1	# tmp1086, tmp1087
	movq	248(%rsp), %xmm6	# %sfp, vect__494.686
	movq	%xmm1, 88(%rsp)	# tmp1087, %sfp
	pand	%xmm2, %xmm6	# vect__287.653, vect__494.686
	movdqa	%xmm6, %xmm1	# vect__494.686, vect__494.686
	movdqa	%xmm10, %xmm6	# tmp921, tmp1097
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1092
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1094
	pcmpgtb	%xmm1, %xmm6	# tmp1094, tmp1097
	movq	%xmm6, %r8	# tmp1097, tmp1097
	movdqa	%xmm1, %xmm6	# tmp1094, tmp1098
	movq	%r8, %xmm3	# tmp1097, tmp1097
	punpcklbw	%xmm3, %xmm6	# tmp1097, tmp1098
	punpcklbw	%xmm3, %xmm1	# tmp1097, tmp1102
	pcmpgtw	%xmm6, %xmm0	# tmp1098, tmp1106
	movdqa	%xmm6, %xmm3	# tmp1098, tmp1107
	pshufd	$78, %xmm1, %xmm1	#, tmp1102, tmp1102
	punpcklwd	%xmm0, %xmm3	# tmp1106, tmp1107
	movq	%xmm0, 104(%rsp)	# tmp1106, %sfp
	movdqa	%xmm3, %xmm0	# tmp1107, tmp1108
	pandn	%xmm11, %xmm3	# vect_cst__931, tmp1109
	pand	%xmm12, %xmm0	# vect_cst__930, tmp1108
	por	%xmm3, %xmm0	# tmp1109, tmp1108
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1115
	movq	%xmm0, 96(%rsp)	# tmp1108, %sfp
	movq	104(%rsp), %xmm0	# %sfp, tmp1106
	punpcklwd	%xmm0, %xmm6	# tmp1106, tmp1114
	pshufd	$78, %xmm6, %xmm6	#, tmp1114, tmp1114
	pand	%xmm6, %xmm3	# tmp1114, tmp1115
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1116
	movdqa	%xmm3, %xmm0	# tmp1115, tmp1115
	por	%xmm6, %xmm0	# tmp1116, tmp1115
	movdqa	%xmm9, %xmm6	# tmp933, tmp1120
	pcmpgtw	%xmm1, %xmm6	# tmp1102, tmp1120
	movq	%xmm0, 104(%rsp)	# tmp1115, %sfp
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1122
	movq	%xmm6, %r8	# tmp1120, tmp1120
	movdqa	%xmm1, %xmm6	# tmp1102, tmp1121
	movq	%r8, %xmm3	# tmp1120, tmp1120
	punpcklwd	%xmm3, %xmm6	# tmp1120, tmp1121
	pand	%xmm6, %xmm0	# tmp1121, tmp1122
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1123
	por	%xmm6, %xmm0	# tmp1123, tmp1122
	movq	%r8, %xmm6	# tmp1120, tmp1120
	punpcklwd	%xmm6, %xmm1	# tmp1120, tmp1128
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp1129
	movq	%xmm0, 112(%rsp)	# tmp1122, %sfp
	movdqa	%xmm9, %xmm0	# tmp933, tmp1149
	pshufd	$78, %xmm1, %xmm1	#, tmp1128, tmp1128
	pand	%xmm1, %xmm6	# tmp1128, tmp1129
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1130
	por	%xmm6, %xmm1	# tmp1129, tmp1130
	movq	256(%rsp), %xmm6	# %sfp, vect__495.694
	movq	%xmm1, 120(%rsp)	# tmp1130, %sfp
	pand	%xmm2, %xmm6	# vect__287.653, vect__495.694
	movdqa	%xmm6, %xmm1	# vect__495.694, vect__495.694
	movdqa	%xmm10, %xmm6	# tmp921, tmp1140
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1135
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1137
	pcmpgtb	%xmm1, %xmm6	# tmp1137, tmp1140
	movq	%xmm6, %r8	# tmp1140, tmp1140
	movdqa	%xmm1, %xmm6	# tmp1137, tmp1141
	movq	%r8, %xmm3	# tmp1140, tmp1140
	punpcklbw	%xmm3, %xmm6	# tmp1140, tmp1141
	punpcklbw	%xmm3, %xmm1	# tmp1140, tmp1145
	pcmpgtw	%xmm6, %xmm0	# tmp1141, tmp1149
	movdqa	%xmm6, %xmm3	# tmp1141, tmp1150
	pshufd	$78, %xmm1, %xmm1	#, tmp1145, tmp1145
	movq	%xmm0, 136(%rsp)	# tmp1149, %sfp
	punpcklwd	%xmm0, %xmm3	# tmp1149, tmp1150
	movdqa	%xmm3, %xmm0	# tmp1150, tmp1151
	pandn	%xmm11, %xmm3	# vect_cst__931, tmp1152
	pand	%xmm12, %xmm0	# vect_cst__930, tmp1151
	por	%xmm3, %xmm0	# tmp1152, tmp1151
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1158
	movq	%xmm0, 128(%rsp)	# tmp1151, %sfp
	movq	136(%rsp), %xmm0	# %sfp, tmp1149
	punpcklwd	%xmm0, %xmm6	# tmp1149, tmp1157
	pshufd	$78, %xmm6, %xmm6	#, tmp1157, tmp1157
	pand	%xmm6, %xmm3	# tmp1157, tmp1158
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1159
	movdqa	%xmm3, %xmm0	# tmp1158, tmp1158
	por	%xmm6, %xmm0	# tmp1159, tmp1158
	movdqa	%xmm9, %xmm6	# tmp933, tmp1163
	movq	%xmm0, 136(%rsp)	# tmp1158, %sfp
	pcmpgtw	%xmm1, %xmm6	# tmp1145, tmp1163
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1165
	movq	%xmm6, %r8	# tmp1163, tmp1163
	movdqa	%xmm1, %xmm6	# tmp1145, tmp1164
	movq	%r8, %xmm3	# tmp1163, tmp1163
	punpcklwd	%xmm3, %xmm6	# tmp1163, tmp1164
	pand	%xmm6, %xmm0	# tmp1164, tmp1165
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1166
	por	%xmm6, %xmm0	# tmp1166, tmp1165
	movq	%r8, %xmm6	# tmp1163, tmp1163
	movq	%xmm0, 144(%rsp)	# tmp1165, %sfp
	punpcklwd	%xmm6, %xmm1	# tmp1163, tmp1171
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp1172
	movdqa	%xmm9, %xmm0	# tmp933, tmp1192
	pshufd	$78, %xmm1, %xmm1	#, tmp1171, tmp1171
	pand	%xmm1, %xmm6	# tmp1171, tmp1172
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1173
	por	%xmm6, %xmm1	# tmp1172, tmp1173
	movq	264(%rsp), %xmm6	# %sfp, vect__496.702
	movq	%xmm1, 152(%rsp)	# tmp1173, %sfp
	pand	%xmm2, %xmm6	# vect__287.653, vect__496.702
	movdqa	%xmm6, %xmm1	# vect__496.702, vect__496.702
	movdqa	%xmm10, %xmm6	# tmp921, tmp1183
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1178
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1180
	pcmpgtb	%xmm1, %xmm6	# tmp1180, tmp1183
	movq	%xmm6, %r8	# tmp1183, tmp1183
	movdqa	%xmm1, %xmm6	# tmp1180, tmp1184
	movq	%r8, %xmm3	# tmp1183, tmp1183
	punpcklbw	%xmm3, %xmm6	# tmp1183, tmp1184
	punpcklbw	%xmm3, %xmm1	# tmp1183, tmp1188
	pcmpgtw	%xmm6, %xmm0	# tmp1184, tmp1192
	movdqa	%xmm6, %xmm3	# tmp1184, tmp1193
	pshufd	$78, %xmm1, %xmm1	#, tmp1188, tmp1188
	movq	%xmm0, 168(%rsp)	# tmp1192, %sfp
	punpcklwd	%xmm0, %xmm3	# tmp1192, tmp1193
	movdqa	%xmm3, %xmm0	# tmp1193, tmp1194
	pandn	%xmm11, %xmm3	# vect_cst__931, tmp1195
	pand	%xmm12, %xmm0	# vect_cst__930, tmp1194
	por	%xmm3, %xmm0	# tmp1195, tmp1194
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1201
	movq	%xmm0, 160(%rsp)	# tmp1194, %sfp
	movq	168(%rsp), %xmm0	# %sfp, tmp1192
	movd	%xmm15, (%r12)	# vect_patt_867.658, MEM[(unsigned int *)_377]
	punpcklwd	%xmm0, %xmm6	# tmp1192, tmp1200
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1208
	pshufd	$78, %xmm6, %xmm6	#, tmp1200, tmp1200
	pand	%xmm6, %xmm3	# tmp1200, tmp1201
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1202
	por	%xmm6, %xmm3	# tmp1202, tmp1201
	movdqa	%xmm9, %xmm6	# tmp933, tmp1206
	pcmpgtw	%xmm1, %xmm6	# tmp1188, tmp1206
	movq	%xmm3, %r8	# tmp1201, vect_patt_879.706
	movdqa	%xmm1, %xmm3	# tmp1188, tmp1207
	movq	%xmm6, 176(%rsp)	# tmp1206, %sfp
	punpcklwd	%xmm6, %xmm3	# tmp1206, tmp1207
	movdqa	%xmm3, %xmm6	# tmp1207, tmp1207
	pand	%xmm3, %xmm0	# tmp1207, tmp1208
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1209
	por	%xmm6, %xmm0	# tmp1209, tmp1208
	movq	176(%rsp), %xmm6	# %sfp, tmp1206
	movq	%xmm0, 168(%rsp)	# tmp1208, %sfp
	movdqa	%xmm12, %xmm0	# vect_cst__930, tmp1237
	punpcklwd	%xmm6, %xmm1	# tmp1206, tmp1214
	movdqa	%xmm12, %xmm6	# vect_cst__930, tmp1215
	pshufd	$78, %xmm1, %xmm1	#, tmp1214, tmp1214
	pand	%xmm1, %xmm6	# tmp1214, tmp1215
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1216
	por	%xmm6, %xmm1	# tmp1215, tmp1216
	movq	328(%rsp), %xmm6	# %sfp, vect__497.710
	movq	%xmm1, 176(%rsp)	# tmp1216, %sfp
	pand	%xmm2, %xmm6	# vect__287.653, vect__497.710
	movdqa	%xmm10, %xmm2	# tmp921, tmp1226
	movdqa	%xmm6, %xmm1	# vect__497.710, vect__497.710
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1221
	pcmpeqb	%xmm10, %xmm1	# tmp921, tmp1223
	pcmpgtb	%xmm1, %xmm2	# tmp1223, tmp1226
	movdqa	%xmm1, %xmm6	# tmp1223, tmp1227
	punpcklbw	%xmm2, %xmm6	# tmp1226, tmp1227
	punpcklbw	%xmm2, %xmm1	# tmp1226, tmp1231
	movdqa	%xmm9, %xmm2	# tmp933, tmp1235
	pcmpgtw	%xmm6, %xmm2	# tmp1227, tmp1235
	movdqa	%xmm6, %xmm3	# tmp1227, tmp1236
	pshufd	$78, %xmm1, %xmm1	#, tmp1231, tmp1231
	movq	%xmm2, 192(%rsp)	# tmp1235, %sfp
	punpcklwd	%xmm2, %xmm3	# tmp1235, tmp1236
	movdqa	%xmm3, %xmm2	# tmp1236, tmp1236
	pand	%xmm3, %xmm0	# tmp1236, tmp1237
	movdqa	%xmm1, %xmm3	# tmp1231, tmp1250
	pandn	%xmm11, %xmm2	# vect_cst__931, tmp1238
	por	%xmm2, %xmm0	# tmp1238, tmp1237
	movq	192(%rsp), %xmm2	# %sfp, tmp1235
	movq	%xmm0, 184(%rsp)	# tmp1237, %sfp
	punpcklwd	%xmm2, %xmm6	# tmp1235, tmp1243
	movdqa	%xmm12, %xmm2	# vect_cst__930, tmp1244
	pshufd	$78, %xmm6, %xmm6	#, tmp1243, tmp1243
	pand	%xmm6, %xmm2	# tmp1243, tmp1244
	pandn	%xmm11, %xmm6	# vect_cst__931, tmp1245
	por	%xmm2, %xmm6	# tmp1244, vect_patt_881.714
	movdqa	%xmm9, %xmm2	# tmp933, tmp1249
	pcmpgtw	%xmm1, %xmm2	# tmp1231, tmp1249
	punpcklwd	%xmm2, %xmm3	# tmp1249, tmp1250
	movdqa	%xmm2, %xmm0	# tmp1249, tmp1249
	movdqa	%xmm3, %xmm2	# tmp1250, tmp1250
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1251
	punpcklwd	%xmm0, %xmm1	# tmp1249, tmp1257
	pand	%xmm2, %xmm3	# tmp1250, tmp1251
	pandn	%xmm11, %xmm2	# vect_cst__931, tmp1252
	pshufd	$78, %xmm1, %xmm1	#, tmp1257, tmp1257
	por	%xmm3, %xmm2	# tmp1251, vect_patt_881.714
	movdqa	%xmm12, %xmm3	# vect_cst__930, tmp1258
	pand	%xmm1, %xmm3	# tmp1257, tmp1258
	pandn	%xmm11, %xmm1	# vect_cst__931, tmp1259
	por	%xmm3, %xmm1	# tmp1258, vect_patt_881.714
	pshufd	$0xe5, %xmm15, %xmm3	# vect_patt_867.658, tmp2601
	movd	%xmm3, (%rbx)	# tmp2601, MEM[(unsigned int *)_543]
	movd	%xmm5, (%r11)	# vect_patt_867.658, MEM[(unsigned int *)_577]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_867.658, tmp2602
	movd	%xmm5, (%r10)	# tmp2602, MEM[(unsigned int *)_611]
	pshufd	$0xe5, %xmm14, %xmm5	# vect_patt_867.658, tmp2603
	movd	%xmm14, (%rdi)	# vect_patt_867.658, MEM[(unsigned int *)_196]
	movd	%xmm5, (%rsi)	# tmp2603, MEM[(unsigned int *)_193]
	movq	24(%rsp), %xmm5	# %sfp, vect_patt_867.658
	movd	%xmm5, (%rcx)	# vect_patt_867.658, MEM[(unsigned int *)_433]
	pshufd	$0xe5, %xmm5, %xmm5	# vect_patt_867.658, tmp2604
	movd	%xmm5, (%rax)	# tmp2604, MEM[(unsigned int *)_922]
	pshufd	$0xe5, %xmm13, %xmm5	# vect_patt_869.666, tmp2605
	movd	%xmm13, 4(%r12)	# vect_patt_869.666, MEM[(unsigned int *)_377 + 4B]
	movd	%xmm5, 4(%rbx)	# tmp2605, MEM[(unsigned int *)_543 + 4B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_869.666, tmp2606
	movd	%xmm4, 4(%r11)	# vect_patt_869.666, MEM[(unsigned int *)_577 + 4B]
	movq	32(%rsp), %xmm4	# %sfp, vect_patt_869.666
	movd	%xmm5, 4(%r10)	# tmp2606, MEM[(unsigned int *)_611 + 4B]
	pshufd	$0xe5, %xmm8, %xmm5	# vect_patt_869.666, tmp2607
	movd	%xmm8, 4(%rdi)	# vect_patt_869.666, MEM[(unsigned int *)_196 + 4B]
	movd	%xmm5, 4(%rsi)	# tmp2607, MEM[(unsigned int *)_193 + 4B]
	pshufd	$0xe5, %xmm4, %xmm5	# vect_patt_869.666, tmp2608
	movd	%xmm4, 4(%rcx)	# vect_patt_869.666, MEM[(unsigned int *)_433 + 4B]
	pshufd	$0xe5, %xmm7, %xmm4	# vect_patt_871.674, tmp2609
	movd	%xmm5, 4(%rax)	# tmp2608, MEM[(unsigned int *)_922 + 4B]
	movd	%xmm7, 8(%r12)	# vect_patt_871.674, MEM[(unsigned int *)_377 + 8B]
	movq	40(%rsp), %xmm7	# %sfp, vect_patt_871.674
	movd	%xmm4, 8(%rbx)	# tmp2609, MEM[(unsigned int *)_543 + 8B]
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_871.674, tmp2611
	movd	%xmm7, 8(%r11)	# vect_patt_871.674, MEM[(unsigned int *)_577 + 8B]
	movd	%xmm5, 8(%r10)	# tmp2611, MEM[(unsigned int *)_611 + 8B]
	movq	48(%rsp), %xmm0	# %sfp, vect_patt_871.674
	movq	56(%rsp), %xmm7	# %sfp, vect_patt_871.674
	movd	%xmm0, 8(%rdi)	# vect_patt_871.674, MEM[(unsigned int *)_196 + 8B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_871.674, tmp2613
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_871.674, tmp2615
	movq	64(%rsp), %xmm0	# %sfp, vect_patt_873.682
	movd	%xmm4, 8(%rsi)	# tmp2613, MEM[(unsigned int *)_193 + 8B]
	movd	%xmm7, 8(%rcx)	# vect_patt_871.674, MEM[(unsigned int *)_433 + 8B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_873.682, tmp2617
	movq	72(%rsp), %xmm7	# %sfp, vect_patt_873.682
	movd	%xmm5, 8(%rax)	# tmp2615, MEM[(unsigned int *)_922 + 8B]
	movd	%xmm0, 12(%r12)	# vect_patt_873.682, MEM[(unsigned int *)_377 + 12B]
	movq	80(%rsp), %xmm0	# %sfp, vect_patt_873.682
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_873.682, tmp2619
	movd	%xmm4, 12(%rbx)	# tmp2617, MEM[(unsigned int *)_543 + 12B]
	movd	%xmm7, 12(%r11)	# vect_patt_873.682, MEM[(unsigned int *)_577 + 12B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_873.682, tmp2621
	movq	88(%rsp), %xmm7	# %sfp, vect_patt_873.682
	movd	%xmm5, 12(%r10)	# tmp2619, MEM[(unsigned int *)_611 + 12B]
	movd	%xmm0, 12(%rdi)	# vect_patt_873.682, MEM[(unsigned int *)_196 + 12B]
	movq	96(%rsp), %xmm0	# %sfp, vect_patt_875.690
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_873.682, tmp2623
	movd	%xmm4, 12(%rsi)	# tmp2621, MEM[(unsigned int *)_193 + 12B]
	movd	%xmm7, 12(%rcx)	# vect_patt_873.682, MEM[(unsigned int *)_433 + 12B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_875.690, tmp2625
	movq	104(%rsp), %xmm7	# %sfp, vect_patt_875.690
	movd	%xmm5, 12(%rax)	# tmp2623, MEM[(unsigned int *)_922 + 12B]
	movd	%xmm0, 16(%r12)	# vect_patt_875.690, MEM[(unsigned int *)_377 + 16B]
	movq	112(%rsp), %xmm0	# %sfp, vect_patt_875.690
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_875.690, tmp2627
	movd	%xmm4, 16(%rbx)	# tmp2625, MEM[(unsigned int *)_543 + 16B]
	movd	%xmm7, 16(%r11)	# vect_patt_875.690, MEM[(unsigned int *)_577 + 16B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_875.690, tmp2629
	movq	120(%rsp), %xmm7	# %sfp, vect_patt_875.690
	movd	%xmm5, 16(%r10)	# tmp2627, MEM[(unsigned int *)_611 + 16B]
	movd	%xmm0, 16(%rdi)	# vect_patt_875.690, MEM[(unsigned int *)_196 + 16B]
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_875.690, tmp2631
	movq	128(%rsp), %xmm0	# %sfp, vect_patt_877.698
	movd	%xmm4, 16(%rsi)	# tmp2629, MEM[(unsigned int *)_193 + 16B]
	movd	%xmm7, 16(%rcx)	# vect_patt_875.690, MEM[(unsigned int *)_433 + 16B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_877.698, tmp2633
	movd	%xmm5, 16(%rax)	# tmp2631, MEM[(unsigned int *)_922 + 16B]
	movd	%xmm0, 20(%r12)	# vect_patt_877.698, MEM[(unsigned int *)_377 + 20B]
	movd	%xmm4, 20(%rbx)	# tmp2633, MEM[(unsigned int *)_543 + 20B]
	movq	136(%rsp), %xmm7	# %sfp, vect_patt_877.698
	movq	144(%rsp), %xmm0	# %sfp, vect_patt_877.698
	movd	%xmm7, 20(%r11)	# vect_patt_877.698, MEM[(unsigned int *)_577 + 20B]
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_877.698, tmp2635
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_877.698, tmp2637
	movq	152(%rsp), %xmm7	# %sfp, vect_patt_877.698
	movd	%xmm5, 20(%r10)	# tmp2635, MEM[(unsigned int *)_611 + 20B]
	movd	%xmm0, 20(%rdi)	# vect_patt_877.698, MEM[(unsigned int *)_196 + 20B]
	pshufd	$0xe5, %xmm7, %xmm5	# vect_patt_877.698, tmp2639
	movq	160(%rsp), %xmm0	# %sfp, vect_patt_879.706
	movd	%xmm4, 20(%rsi)	# tmp2637, MEM[(unsigned int *)_193 + 20B]
	movd	%xmm7, 20(%rcx)	# vect_patt_877.698, MEM[(unsigned int *)_433 + 20B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_879.706, tmp2641
	movq	176(%rsp), %xmm7	# %sfp, vect_patt_879.706
	movd	%xmm5, 20(%rax)	# tmp2639, MEM[(unsigned int *)_922 + 20B]
	movq	%r8, %xmm5	# vect_patt_879.706, vect_patt_879.706
	movd	%xmm0, 24(%r12)	# vect_patt_879.706, MEM[(unsigned int *)_377 + 24B]
	movq	168(%rsp), %xmm0	# %sfp, vect_patt_879.706
	movd	%xmm4, 24(%rbx)	# tmp2641, MEM[(unsigned int *)_543 + 24B]
	pshufd	$0xe5, %xmm5, %xmm4	# vect_patt_879.706, tmp2643
	movl	%r8d, 24(%r11)	# vect_patt_879.706, MEM[(unsigned int *)_577 + 24B]
	movd	%xmm4, 24(%r10)	# tmp2643, MEM[(unsigned int *)_611 + 24B]
	pshufd	$0xe5, %xmm0, %xmm4	# vect_patt_879.706, tmp2646
	movd	%xmm0, 24(%rdi)	# vect_patt_879.706, MEM[(unsigned int *)_196 + 24B]
	movq	184(%rsp), %xmm0	# %sfp, vect_patt_881.714
	movd	%xmm4, 24(%rsi)	# tmp2646, MEM[(unsigned int *)_193 + 24B]
	movd	%xmm7, 24(%rcx)	# vect_patt_879.706, MEM[(unsigned int *)_433 + 24B]
	pshufd	$0xe5, %xmm7, %xmm7	# vect_patt_879.706, tmp2648
	movd	%xmm7, 24(%rax)	# tmp2648, MEM[(unsigned int *)_922 + 24B]
	pshufd	$0xe5, %xmm0, %xmm7	# vect_patt_881.714, tmp2650
	movd	%xmm0, 28(%r12)	# vect_patt_881.714, MEM[(unsigned int *)_377 + 28B]
	addq	%rdx, %r12	# _1083, ivtmp.824
	movd	%xmm7, 28(%rbx)	# tmp2650, MEM[(unsigned int *)_543 + 28B]
	pshufd	$0xe5, %xmm6, %xmm7	# vect_patt_881.714, tmp2651
	addq	%rdx, %rbx	# _1083, ivtmp.829
	movd	%xmm6, 28(%r11)	# vect_patt_881.714, MEM[(unsigned int *)_577 + 28B]
	addq	%rdx, %r11	# _1083, ivtmp.830
	movd	%xmm7, 28(%r10)	# tmp2651, MEM[(unsigned int *)_611 + 28B]
	addq	%rdx, %r10	# _1083, ivtmp.831
	movd	%xmm2, 28(%rdi)	# vect_patt_881.714, MEM[(unsigned int *)_196 + 28B]
	pshufd	$0xe5, %xmm2, %xmm2	# vect_patt_881.714, tmp2652
	addq	%rdx, %rdi	# _1083, ivtmp.832
	movd	%xmm2, 28(%rsi)	# tmp2652, MEM[(unsigned int *)_193 + 28B]
	pshufd	$0xe5, %xmm1, %xmm2	# vect_patt_881.714, tmp2653
	addq	%rdx, %rsi	# _1083, ivtmp.833
	movd	%xmm1, 28(%rcx)	# vect_patt_881.714, MEM[(unsigned int *)_433 + 28B]
	addq	%rdx, %rcx	# _1083, ivtmp.834
	movd	%xmm2, 28(%rax)	# tmp2653, MEM[(unsigned int *)_922 + 28B]
	addq	%rdx, %rax	# _1083, ivtmp.835
	cmpq	%r9, 216(%rsp)	# ivtmp.828, %sfp
	jne	.L527	#,
	movl	%r13d, %r8d	# count, count
.L528:
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	8(%r14,%rbp), %r10d	# Pos.XPosition, _40
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	(%r14,%rbp), %esi	# Pos.XResolution, prephitmp_109
# printk.c:68: 		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
	movl	16(%r14,%rbp), %edi	# Pos.XCharSize, prephitmp_276
# printk.c:69: 			Pos.YPosition++;
	movl	12(%r14,%rbp), %ecx	# Pos.YPosition, prephitmp_424
# printk.c:72: 		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
	movl	20(%r14,%rbp), %r9d	# Pos.YCharSize, prephitmp_267
	jmp	.L522	#
.L524:
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%esi, %eax	# prephitmp_109, tmp876
	cltd
	idivl	%edi	# prephitmp_276
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	subl	$1, %eax	#, tmp878
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	imull	%edi, %eax	# prephitmp_276, tmp878
# printk.c:50: 				Pos.YPosition--;
	subl	$1, %ecx	#, prephitmp_424
	movl	%ecx, 12(%r14,%rbp)	# prephitmp_424, Pos.YPosition
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, 8(%r14,%rbp)	# _12, Pos.XPosition
# printk.c:49: 				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
	movl	%eax, %r11d	# tmp878, _12
# printk.c:51: 				if(Pos.YPosition<0){
	jns	.L525	#,
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	4(%r14,%rbp), %eax	# Pos.YResolution, Pos.YResolution
	cltd
	idivl	%r9d	# prephitmp_267
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	subl	$1, %eax	#, tmp886
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	imull	%r9d, %eax	# prephitmp_267, tmp886
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, 12(%r14,%rbp)	# prephitmp_424, Pos.YPosition
# printk.c:52: 					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
	movl	%eax, %ecx	# tmp886, prephitmp_424
	jmp	.L525	#
.L526:
	movq	16(%rsp), %rdi	# %sfp, _50
# printk.c:13: 	for(i=0;i<16;i++){
	movl	8(%rsp), %r13d	# %sfp, BKcolor
# printk.c:12: 	fontp=font_ascii[font];
	leaq	(%r9,%rbp), %rdx	#, fontp
	movabsq	$528+font_ascii@GOTOFF, %rsi	#, tmp2289
	addq	%rdi, %rcx	# _50, ivtmp.818
# printk.c:13: 	for(i=0;i<16;i++){
	leaq	(%rsi,%rbp), %rdi	#, tmp2300
.L538:
# printk.c:20: 				*addr =FRcolor;
	cmpb	$0, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	movl	%r15d, %esi	# FRcolor, cstore_198
	cmovns	%r13d, %esi	# BKcolor,, cstore_198
	movl	%esi, (%rcx)	# cstore_198, MEM[(unsigned int *)_1427]
	movl	%r15d, %esi	# FRcolor, cstore_188
	testb	$64, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_188
	movl	%esi, 4(%rcx)	# cstore_188, MEM[(unsigned int *)_1427 + 4B]
	movl	%r15d, %esi	# FRcolor, cstore_177
	testb	$32, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_177
	movl	%esi, 8(%rcx)	# cstore_177, MEM[(unsigned int *)_1427 + 8B]
	movl	%r15d, %esi	# FRcolor, cstore_171
	testb	$16, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_171
	movl	%esi, 12(%rcx)	# cstore_171, MEM[(unsigned int *)_1427 + 12B]
	movl	%r15d, %esi	# FRcolor, cstore_166
	testb	$8, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_166
	movl	%esi, 16(%rcx)	# cstore_166, MEM[(unsigned int *)_1427 + 16B]
	movl	%r15d, %esi	# FRcolor, cstore_158
	testb	$4, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_158
	movl	%esi, 20(%rcx)	# cstore_158, MEM[(unsigned int *)_1427 + 20B]
	movl	%r15d, %esi	# FRcolor, cstore_154
	testb	$2, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	cmove	%r13d, %esi	# BKcolor,, cstore_154
	movl	%esi, 24(%rcx)	# cstore_154, MEM[(unsigned int *)_1427 + 24B]
# printk.c:19: 			if(*fontp & testval){
	testb	$1, (%rdx)	#, MEM[(unsigned char *)fontp_227]
	je	.L536	#,
# printk.c:26: 		fontp++;
	addq	$1, %rdx	#, fontp
	movl	%r15d, 28(%rcx)	# FRcolor, MEM[(unsigned int *)_1427 + 28B]
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rax, %rcx	# _884, ivtmp.818
	cmpq	%rdi, %rdx	# tmp2300, fontp
	jne	.L538	#,
.L616:
	movl	%r13d, 8(%rsp)	# BKcolor, %sfp
	jmp	.L528	#
.L536:
# printk.c:26: 		fontp++;
	addq	$1, %rdx	#, fontp
	movl	%r13d, 28(%rcx)	# BKcolor, MEM[(unsigned int *)_1427 + 28B]
# printk.c:13: 	for(i=0;i<16;i++){
	addq	%rax, %rcx	# _884, ivtmp.818
	cmpq	%rdi, %rdx	# tmp2300, fontp
	jne	.L538	#,
	jmp	.L616	#
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.set	.LC3,.LC2
	.align 16
.LC4:
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.set	.LC5,.LC4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.byte	64
	.align 8
.LC9:
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.align 8
.LC10:
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.align 8
.LC11:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.align 8
.LC12:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.align 8
.LC13:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
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
