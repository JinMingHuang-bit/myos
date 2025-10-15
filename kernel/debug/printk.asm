
printk.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <number>:
   0:	f3 0f 1e fa          	endbr64
   4:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 4 <number+0x4>
   b:	48 89 f0             	mov    %rsi,%rax
   e:	89 d6                	mov    %edx,%esi
  10:	41 57                	push   %r15
  12:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  19:	00 00 00 
  1c:	41 56                	push   %r14
  1e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  25:	00 00 00 
  28:	4d 01 da             	add    %r11,%r10
  2b:	41 55                	push   %r13
  2d:	41 54                	push   %r12
  2f:	55                   	push   %rbp
  30:	49 8d 2c 12          	lea    (%r10,%rdx,1),%rbp
  34:	53                   	push   %rbx
  35:	41 f7 c1 40 00 00 00 	test   $0x40,%r9d
  3c:	75 0e                	jne    4c <number+0x4c>
  3e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  45:	00 00 00 
  48:	49 8d 2c 12          	lea    (%r10,%rdx,1),%rbp
  4c:	44 89 cb             	mov    %r9d,%ebx
  4f:	83 e3 10             	and    $0x10,%ebx
  52:	89 5c 24 bc          	mov    %ebx,-0x44(%rsp)
  56:	74 09                	je     61 <number+0x61>
  58:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  5c:	41 b2 20             	mov    $0x20,%r10b
  5f:	eb 14                	jmp    75 <number+0x75>
  61:	44 89 ca             	mov    %r9d,%edx
  64:	83 e2 01             	and    $0x1,%edx
  67:	83 fa 01             	cmp    $0x1,%edx
  6a:	45 19 d2             	sbb    %r10d,%r10d
  6d:	41 83 e2 f0          	and    $0xfffffff0,%r10d
  71:	41 83 c2 30          	add    $0x30,%r10d
  75:	41 f7 c1 02 00 00 00 	test   $0x2,%r9d
  7c:	74 0d                	je     8b <number+0x8b>
  7e:	48 85 c0             	test   %rax,%rax
  81:	79 08                	jns    8b <number+0x8b>
  83:	48 f7 d8             	neg    %rax
  86:	41 b3 2d             	mov    $0x2d,%r11b
  89:	eb 1a                	jmp    a5 <number+0xa5>
  8b:	41 f7 c1 04 00 00 00 	test   $0x4,%r9d
  92:	75 0e                	jne    a2 <number+0xa2>
  94:	45 89 cb             	mov    %r9d,%r11d
  97:	41 83 e3 08          	and    $0x8,%r11d
  9b:	74 0a                	je     a7 <number+0xa7>
  9d:	41 b3 20             	mov    $0x20,%r11b
  a0:	eb 03                	jmp    a5 <number+0xa5>
  a2:	41 b3 2b             	mov    $0x2b,%r11b
  a5:	ff c9                	dec    %ecx
  a7:	45 89 cd             	mov    %r9d,%r13d
  aa:	41 83 e5 20          	and    $0x20,%r13d
  ae:	74 11                	je     c1 <number+0xc1>
  b0:	83 fe 10             	cmp    $0x10,%esi
  b3:	75 05                	jne    ba <number+0xba>
  b5:	83 e9 02             	sub    $0x2,%ecx
  b8:	eb 07                	jmp    c1 <number+0xc1>
  ba:	83 fe 08             	cmp    $0x8,%esi
  bd:	75 02                	jne    c1 <number+0xc1>
  bf:	ff c9                	dec    %ecx
  c1:	48 85 c0             	test   %rax,%rax
  c4:	75 0c                	jne    d2 <number+0xd2>
  c6:	c6 44 24 ce 30       	movb   $0x30,-0x32(%rsp)
  cb:	b8 01 00 00 00       	mov    $0x1,%eax
  d0:	eb 2f                	jmp    101 <number+0x101>
  d2:	bb 01 00 00 00       	mov    $0x1,%ebx
  d7:	45 31 ff             	xor    %r15d,%r15d
  da:	4c 8d 74 24 cd       	lea    -0x33(%rsp),%r14
  df:	4c 63 e6             	movslq %esi,%r12
  e2:	44 89 fa             	mov    %r15d,%edx
  e5:	49 f7 f4             	div    %r12
  e8:	48 63 d2             	movslq %edx,%rdx
  eb:	8a 54 15 00          	mov    0x0(%rbp,%rdx,1),%dl
  ef:	41 88 14 1e          	mov    %dl,(%r14,%rbx,1)
  f3:	48 89 da             	mov    %rbx,%rdx
  f6:	48 ff c3             	inc    %rbx
  f9:	48 85 c0             	test   %rax,%rax
  fc:	75 e4                	jne    e2 <number+0xe2>
  fe:	48 63 c2             	movslq %edx,%rax
 101:	44 39 c0             	cmp    %r8d,%eax
 104:	44 0f 4d c0          	cmovge %eax,%r8d
 108:	44 29 c1             	sub    %r8d,%ecx
 10b:	41 83 e1 11          	and    $0x11,%r9d
 10f:	75 27                	jne    138 <number+0x138>
 111:	31 d2                	xor    %edx,%edx
 113:	41 89 c9             	mov    %ecx,%r9d
 116:	41 29 d1             	sub    %edx,%r9d
 119:	45 85 c9             	test   %r9d,%r9d
 11c:	7e 09                	jle    127 <number+0x127>
 11e:	c6 04 17 20          	movb   $0x20,(%rdi,%rdx,1)
 122:	48 ff c2             	inc    %rdx
 125:	eb ec                	jmp    113 <number+0x113>
 127:	31 d2                	xor    %edx,%edx
 129:	85 c9                	test   %ecx,%ecx
 12b:	0f 49 d1             	cmovns %ecx,%edx
 12e:	ff c9                	dec    %ecx
 130:	4c 63 ca             	movslq %edx,%r9
 133:	29 d1                	sub    %edx,%ecx
 135:	4c 01 cf             	add    %r9,%rdi
 138:	45 84 db             	test   %r11b,%r11b
 13b:	74 06                	je     143 <number+0x143>
 13d:	44 88 1f             	mov    %r11b,(%rdi)
 140:	48 ff c7             	inc    %rdi
 143:	45 85 ed             	test   %r13d,%r13d
 146:	74 1f                	je     167 <number+0x167>
 148:	83 fe 08             	cmp    $0x8,%esi
 14b:	75 08                	jne    155 <number+0x155>
 14d:	c6 07 30             	movb   $0x30,(%rdi)
 150:	48 ff c7             	inc    %rdi
 153:	eb 12                	jmp    167 <number+0x167>
 155:	83 fe 10             	cmp    $0x10,%esi
 158:	75 0d                	jne    167 <number+0x167>
 15a:	8a 55 21             	mov    0x21(%rbp),%dl
 15d:	c6 07 30             	movb   $0x30,(%rdi)
 160:	48 83 c7 02          	add    $0x2,%rdi
 164:	88 57 ff             	mov    %dl,-0x1(%rdi)
 167:	83 7c 24 bc 00       	cmpl   $0x0,-0x44(%rsp)
 16c:	75 24                	jne    192 <number+0x192>
 16e:	31 d2                	xor    %edx,%edx
 170:	89 ce                	mov    %ecx,%esi
 172:	29 d6                	sub    %edx,%esi
 174:	85 f6                	test   %esi,%esi
 176:	7e 09                	jle    181 <number+0x181>
 178:	44 88 14 17          	mov    %r10b,(%rdi,%rdx,1)
 17c:	48 ff c2             	inc    %rdx
 17f:	eb ef                	jmp    170 <number+0x170>
 181:	31 d2                	xor    %edx,%edx
 183:	85 c9                	test   %ecx,%ecx
 185:	0f 49 d1             	cmovns %ecx,%edx
 188:	ff c9                	dec    %ecx
 18a:	48 63 f2             	movslq %edx,%rsi
 18d:	29 d1                	sub    %edx,%ecx
 18f:	48 01 f7             	add    %rsi,%rdi
 192:	31 d2                	xor    %edx,%edx
 194:	44 89 c6             	mov    %r8d,%esi
 197:	29 d6                	sub    %edx,%esi
 199:	39 f0                	cmp    %esi,%eax
 19b:	7d 09                	jge    1a6 <number+0x1a6>
 19d:	c6 04 17 30          	movb   $0x30,(%rdi,%rdx,1)
 1a1:	48 ff c2             	inc    %rdx
 1a4:	eb ee                	jmp    194 <number+0x194>
 1a6:	41 29 c0             	sub    %eax,%r8d
 1a9:	48 89 c6             	mov    %rax,%rsi
 1ac:	4c 01 c7             	add    %r8,%rdi
 1af:	4c 8d 44 24 cd       	lea    -0x33(%rsp),%r8
 1b4:	48 89 fa             	mov    %rdi,%rdx
 1b7:	85 c0                	test   %eax,%eax
 1b9:	74 10                	je     1cb <number+0x1cb>
 1bb:	45 8a 0c 00          	mov    (%r8,%rax,1),%r9b
 1bf:	48 ff c2             	inc    %rdx
 1c2:	48 ff c8             	dec    %rax
 1c5:	44 88 4a ff          	mov    %r9b,-0x1(%rdx)
 1c9:	eb ec                	jmp    1b7 <number+0x1b7>
 1cb:	48 01 f7             	add    %rsi,%rdi
 1ce:	31 c0                	xor    %eax,%eax
 1d0:	89 ca                	mov    %ecx,%edx
 1d2:	29 c2                	sub    %eax,%edx
 1d4:	85 d2                	test   %edx,%edx
 1d6:	7e 09                	jle    1e1 <number+0x1e1>
 1d8:	c6 04 07 20          	movb   $0x20,(%rdi,%rax,1)
 1dc:	48 ff c0             	inc    %rax
 1df:	eb ef                	jmp    1d0 <number+0x1d0>
 1e1:	31 c0                	xor    %eax,%eax
 1e3:	85 c9                	test   %ecx,%ecx
 1e5:	5b                   	pop    %rbx
 1e6:	5d                   	pop    %rbp
 1e7:	0f 48 c8             	cmovs  %eax,%ecx
 1ea:	41 5c                	pop    %r12
 1ec:	41 5d                	pop    %r13
 1ee:	41 5e                	pop    %r14
 1f0:	41 5f                	pop    %r15
 1f2:	48 63 c9             	movslq %ecx,%rcx
 1f5:	48 8d 04 0f          	lea    (%rdi,%rcx,1),%rax
 1f9:	c3                   	ret

00000000000001fa <putchar>:
 1fa:	f3 0f 1e fa          	endbr64
 1fe:	0f af ce             	imul   %esi,%ecx
 201:	53                   	push   %rbx
 202:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # 1fe <putchar+0x4>
 209:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
 20e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 215:	00 00 00 
 218:	49 89 fa             	mov    %rdi,%r10
 21b:	48 63 d2             	movslq %edx,%rdx
 21e:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
 225:	00 00 00 
 228:	4c 01 db             	add    %r11,%rbx
 22b:	48 c1 e0 04          	shl    $0x4,%rax
 22f:	48 01 df             	add    %rbx,%rdi
 232:	48 63 c9             	movslq %ecx,%rcx
 235:	48 01 d1             	add    %rdx,%rcx
 238:	48 01 f8             	add    %rdi,%rax
 23b:	48 63 fe             	movslq %esi,%rdi
 23e:	31 d2                	xor    %edx,%edx
 240:	48 c1 e7 02          	shl    $0x2,%rdi
 244:	49 8d 34 8a          	lea    (%r10,%rcx,4),%rsi
 248:	31 c9                	xor    %ecx,%ecx
 24a:	41 ba 00 01 00 00    	mov    $0x100,%r10d
 250:	44 0f b6 1c 10       	movzbl (%rax,%rdx,1),%r11d
 255:	41 d1 fa             	sar    $1,%r10d
 258:	45 85 d3             	test   %r10d,%r11d
 25b:	45 89 c3             	mov    %r8d,%r11d
 25e:	45 0f 44 d9          	cmove  %r9d,%r11d
 262:	44 89 1c 0e          	mov    %r11d,(%rsi,%rcx,1)
 266:	48 83 c1 04          	add    $0x4,%rcx
 26a:	48 83 f9 20          	cmp    $0x20,%rcx
 26e:	75 e0                	jne    250 <putchar+0x56>
 270:	48 ff c2             	inc    %rdx
 273:	48 01 fe             	add    %rdi,%rsi
 276:	48 83 fa 10          	cmp    $0x10,%rdx
 27a:	75 cc                	jne    248 <putchar+0x4e>
 27c:	5b                   	pop    %rbx
 27d:	c3                   	ret

000000000000027e <clear_screen>:
 27e:	f3 0f 1e fa          	endbr64
 282:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 289:	00 00 00 
 28c:	41 57                	push   %r15
 28e:	41 89 f1             	mov    %esi,%r9d
 291:	49 bf 00 00 00 00 00 	movabs $0x0,%r15
 298:	00 00 00 
 29b:	41 56                	push   %r14
 29d:	41 55                	push   %r13
 29f:	41 54                	push   %r12
 2a1:	45 31 e4             	xor    %r12d,%r12d
 2a4:	55                   	push   %rbp
 2a5:	48 bd 00 00 00 00 00 	movabs $0x0,%rbp
 2ac:	00 00 00 
 2af:	53                   	push   %rbx
 2b0:	48 8d 1d cb ff ff ff 	lea    -0x35(%rip),%rbx        # 282 <clear_screen+0x4>
 2b7:	4c 01 db             	add    %r11,%rbx
 2ba:	41 50                	push   %r8
 2bc:	41 89 f8             	mov    %edi,%r8d
 2bf:	8b 04 2b             	mov    (%rbx,%rbp,1),%eax
 2c2:	99                   	cltd
 2c3:	f7 7c 2b 10          	idivl  0x10(%rbx,%rbp,1)
 2c7:	41 89 c5             	mov    %eax,%r13d
 2ca:	8b 44 2b 04          	mov    0x4(%rbx,%rbp,1),%eax
 2ce:	99                   	cltd
 2cf:	f7 7c 2b 14          	idivl  0x14(%rbx,%rbp,1)
 2d3:	89 44 24 04          	mov    %eax,0x4(%rsp)
 2d7:	8b 44 24 04          	mov    0x4(%rsp),%eax
 2db:	41 39 c4             	cmp    %eax,%r12d
 2de:	7d 34                	jge    314 <clear_screen+0x96>
 2e0:	45 31 f6             	xor    %r14d,%r14d
 2e3:	45 39 ee             	cmp    %r13d,%r14d
 2e6:	7d 27                	jge    30f <clear_screen+0x91>
 2e8:	8b 4c 1d 14          	mov    0x14(%rbp,%rbx,1),%ecx
 2ec:	8b 54 1d 10          	mov    0x10(%rbp,%rbx,1),%edx
 2f0:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
 2f4:	8b 74 1d 00          	mov    0x0(%rbp,%rbx,1),%esi
 2f8:	48 8b 7c 1d 18       	mov    0x18(%rbp,%rbx,1),%rdi
 2fd:	6a 20                	push   $0x20
 2ff:	41 0f af cc          	imul   %r12d,%ecx
 303:	41 0f af d6          	imul   %r14d,%edx
 307:	41 ff c6             	inc    %r14d
 30a:	ff d0                	call   *%rax
 30c:	59                   	pop    %rcx
 30d:	eb d4                	jmp    2e3 <clear_screen+0x65>
 30f:	41 ff c4             	inc    %r12d
 312:	eb c3                	jmp    2d7 <clear_screen+0x59>
 314:	31 c0                	xor    %eax,%eax
 316:	48 89 44 1d 08       	mov    %rax,0x8(%rbp,%rbx,1)
 31b:	5a                   	pop    %rdx
 31c:	5b                   	pop    %rbx
 31d:	5d                   	pop    %rbp
 31e:	41 5c                	pop    %r12
 320:	41 5d                	pop    %r13
 322:	41 5e                	pop    %r14
 324:	41 5f                	pop    %r15
 326:	c3                   	ret

0000000000000327 <skip_atoi2>:
 327:	f3 0f 1e fa          	endbr64
 32b:	31 c0                	xor    %eax,%eax
 32d:	48 8b 0f             	mov    (%rdi),%rcx
 330:	0f be 11             	movsbl (%rcx),%edx
 333:	8d 72 d0             	lea    -0x30(%rdx),%esi
 336:	40 80 fe 09          	cmp    $0x9,%sil
 33a:	77 0f                	ja     34b <skip_atoi2+0x24>
 33c:	6b c0 0a             	imul   $0xa,%eax,%eax
 33f:	48 ff c1             	inc    %rcx
 342:	48 89 0f             	mov    %rcx,(%rdi)
 345:	8d 44 10 d0          	lea    -0x30(%rax,%rdx,1),%eax
 349:	eb e2                	jmp    32d <skip_atoi2+0x6>
 34b:	c3                   	ret

000000000000034c <skip_atoi>:
 34c:	f3 0f 1e fa          	endbr64
 350:	31 c0                	xor    %eax,%eax
 352:	48 8b 0f             	mov    (%rdi),%rcx
 355:	0f be 11             	movsbl (%rcx),%edx
 358:	8d 72 d0             	lea    -0x30(%rdx),%esi
 35b:	40 80 fe 09          	cmp    $0x9,%sil
 35f:	77 0f                	ja     370 <skip_atoi+0x24>
 361:	6b c0 0a             	imul   $0xa,%eax,%eax
 364:	48 ff c1             	inc    %rcx
 367:	48 89 0f             	mov    %rcx,(%rdi)
 36a:	8d 44 10 d0          	lea    -0x30(%rax,%rdx,1),%eax
 36e:	eb e2                	jmp    352 <skip_atoi+0x6>
 370:	c3                   	ret

0000000000000371 <vsprintf>:
 371:	f3 0f 1e fa          	endbr64
 375:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 37c:	00 00 00 
 37f:	41 55                	push   %r13
 381:	49 89 fa             	mov    %rdi,%r10
 384:	4c 8d 2d 00 00 00 00 	lea    0x0(%rip),%r13        # 38b <vsprintf+0x1a>
 38b:	41 54                	push   %r12
 38d:	49 89 fc             	mov    %rdi,%r12
 390:	55                   	push   %rbp
 391:	48 8d 2d dd ff ff ff 	lea    -0x23(%rip),%rbp        # 375 <vsprintf+0x4>
 398:	53                   	push   %rbx
 399:	4c 01 dd             	add    %r11,%rbp
 39c:	48 89 d3             	mov    %rdx,%rbx
 39f:	48 83 ec 10          	sub    $0x10,%rsp
 3a3:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 3a8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 3ad:	8a 10                	mov    (%rax),%dl
 3af:	84 d2                	test   %dl,%dl
 3b1:	0f 84 0a 05 00 00    	je     8c1 <vsprintf+0x550>
 3b7:	80 fa 25             	cmp    $0x25,%dl
 3ba:	74 08                	je     3c4 <vsprintf+0x53>
 3bc:	41 88 12             	mov    %dl,(%r10)
 3bf:	e9 cf 04 00 00       	jmp    893 <vsprintf+0x522>
 3c4:	45 31 c9             	xor    %r9d,%r9d
 3c7:	8a 50 01             	mov    0x1(%rax),%dl
 3ca:	48 8d 48 01          	lea    0x1(%rax),%rcx
 3ce:	80 fa 2b             	cmp    $0x2b,%dl
 3d1:	74 2b                	je     3fe <vsprintf+0x8d>
 3d3:	7f 13                	jg     3e8 <vsprintf+0x77>
 3d5:	80 fa 20             	cmp    $0x20,%dl
 3d8:	74 2a                	je     404 <vsprintf+0x93>
 3da:	80 fa 23             	cmp    $0x23,%dl
 3dd:	75 2b                	jne    40a <vsprintf+0x99>
 3df:	41 83 c9 20          	or     $0x20,%r9d
 3e3:	48 89 c8             	mov    %rcx,%rax
 3e6:	eb df                	jmp    3c7 <vsprintf+0x56>
 3e8:	80 fa 2d             	cmp    $0x2d,%dl
 3eb:	74 0b                	je     3f8 <vsprintf+0x87>
 3ed:	80 fa 30             	cmp    $0x30,%dl
 3f0:	75 18                	jne    40a <vsprintf+0x99>
 3f2:	41 83 c9 01          	or     $0x1,%r9d
 3f6:	eb eb                	jmp    3e3 <vsprintf+0x72>
 3f8:	41 83 c9 10          	or     $0x10,%r9d
 3fc:	eb e5                	jmp    3e3 <vsprintf+0x72>
 3fe:	41 83 c9 04          	or     $0x4,%r9d
 402:	eb df                	jmp    3e3 <vsprintf+0x72>
 404:	41 83 c9 08          	or     $0x8,%r9d
 408:	eb d9                	jmp    3e3 <vsprintf+0x72>
 40a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 40f:	8d 4a d0             	lea    -0x30(%rdx),%ecx
 412:	80 f9 09             	cmp    $0x9,%cl
 415:	77 18                	ja     42f <vsprintf+0xbe>
 417:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 41e:	00 00 00 
 421:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 426:	48 01 e8             	add    %rbp,%rax
 429:	ff d0                	call   *%rax
 42b:	89 c1                	mov    %eax,%ecx
 42d:	eb 3d                	jmp    46c <vsprintf+0xfb>
 42f:	83 c9 ff             	or     $0xffffffff,%ecx
 432:	80 fa 2a             	cmp    $0x2a,%dl
 435:	75 35                	jne    46c <vsprintf+0xfb>
 437:	8b 13                	mov    (%rbx),%edx
 439:	48 83 c0 02          	add    $0x2,%rax
 43d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 442:	83 fa 2f             	cmp    $0x2f,%edx
 445:	77 0d                	ja     454 <vsprintf+0xe3>
 447:	89 d0                	mov    %edx,%eax
 449:	83 c2 08             	add    $0x8,%edx
 44c:	48 03 43 10          	add    0x10(%rbx),%rax
 450:	89 13                	mov    %edx,(%rbx)
 452:	eb 0c                	jmp    460 <vsprintf+0xef>
 454:	48 8b 43 08          	mov    0x8(%rbx),%rax
 458:	48 8d 50 08          	lea    0x8(%rax),%rdx
 45c:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 460:	8b 08                	mov    (%rax),%ecx
 462:	85 c9                	test   %ecx,%ecx
 464:	79 06                	jns    46c <vsprintf+0xfb>
 466:	f7 d9                	neg    %ecx
 468:	41 83 c9 10          	or     $0x10,%r9d
 46c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 471:	41 83 c8 ff          	or     $0xffffffff,%r8d
 475:	80 38 2e             	cmpb   $0x2e,(%rax)
 478:	75 70                	jne    4ea <vsprintf+0x179>
 47a:	48 8d 50 01          	lea    0x1(%rax),%rdx
 47e:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 483:	8a 50 01             	mov    0x1(%rax),%dl
 486:	8d 72 d0             	lea    -0x30(%rdx),%esi
 489:	40 80 fe 09          	cmp    $0x9,%sil
 48d:	77 1e                	ja     4ad <vsprintf+0x13c>
 48f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 496:	00 00 00 
 499:	89 4c 24 04          	mov    %ecx,0x4(%rsp)
 49d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 4a2:	48 01 e8             	add    %rbp,%rax
 4a5:	ff d0                	call   *%rax
 4a7:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
 4ab:	eb 33                	jmp    4e0 <vsprintf+0x16f>
 4ad:	45 31 c0             	xor    %r8d,%r8d
 4b0:	80 fa 2a             	cmp    $0x2a,%dl
 4b3:	75 35                	jne    4ea <vsprintf+0x179>
 4b5:	8b 13                	mov    (%rbx),%edx
 4b7:	48 83 c0 02          	add    $0x2,%rax
 4bb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 4c0:	83 fa 2f             	cmp    $0x2f,%edx
 4c3:	77 0d                	ja     4d2 <vsprintf+0x161>
 4c5:	89 d0                	mov    %edx,%eax
 4c7:	83 c2 08             	add    $0x8,%edx
 4ca:	48 03 43 10          	add    0x10(%rbx),%rax
 4ce:	89 13                	mov    %edx,(%rbx)
 4d0:	eb 0c                	jmp    4de <vsprintf+0x16d>
 4d2:	48 8b 43 08          	mov    0x8(%rbx),%rax
 4d6:	48 8d 50 08          	lea    0x8(%rax),%rdx
 4da:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 4de:	8b 00                	mov    (%rax),%eax
 4e0:	31 d2                	xor    %edx,%edx
 4e2:	85 c0                	test   %eax,%eax
 4e4:	0f 49 d0             	cmovns %eax,%edx
 4e7:	41 89 d0             	mov    %edx,%r8d
 4ea:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 4ef:	83 ce ff             	or     $0xffffffff,%esi
 4f2:	8a 10                	mov    (%rax),%dl
 4f4:	8d 7a b4             	lea    -0x4c(%rdx),%edi
 4f7:	40 80 ff 2e          	cmp    $0x2e,%dil
 4fb:	77 1b                	ja     518 <vsprintf+0x1a7>
 4fd:	49 bb 01 00 00 10 01 	movabs $0x400110000001,%r11
 504:	40 00 00 
 507:	49 0f a3 fb          	bt     %rdi,%r11
 50b:	73 0b                	jae    518 <vsprintf+0x1a7>
 50d:	48 ff c0             	inc    %rax
 510:	0f be f2             	movsbl %dl,%esi
 513:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 518:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 51d:	8a 02                	mov    (%rdx),%al
 51f:	3c 78                	cmp    $0x78,%al
 521:	0f 8f 71 03 00 00    	jg     898 <vsprintf+0x527>
 527:	3c 62                	cmp    $0x62,%al
 529:	7f 15                	jg     540 <vsprintf+0x1cf>
 52b:	3c 25                	cmp    $0x25,%al
 52d:	0f 84 5c 03 00 00    	je     88f <vsprintf+0x51e>
 533:	3c 58                	cmp    $0x58,%al
 535:	0f 84 2c 02 00 00    	je     767 <vsprintf+0x3f6>
 53b:	e9 58 03 00 00       	jmp    898 <vsprintf+0x527>
 540:	83 e8 63             	sub    $0x63,%eax
 543:	3c 15                	cmp    $0x15,%al
 545:	0f 87 4d 03 00 00    	ja     898 <vsprintf+0x527>
 54b:	0f b6 c0             	movzbl %al,%eax
 54e:	49 8b 7c c5 00       	mov    0x0(%r13,%rax,8),%rdi
 553:	4c 01 ef             	add    %r13,%rdi
 556:	3e ff e7             	notrack jmp *%rdi
 559:	41 83 e1 10          	and    $0x10,%r9d
 55d:	75 35                	jne    594 <vsprintf+0x223>
 55f:	31 c0                	xor    %eax,%eax
 561:	48 ff c0             	inc    %rax
 564:	89 ca                	mov    %ecx,%edx
 566:	29 c2                	sub    %eax,%edx
 568:	85 d2                	test   %edx,%edx
 56a:	7e 08                	jle    574 <vsprintf+0x203>
 56c:	41 c6 44 02 ff 20    	movb   $0x20,-0x1(%r10,%rax,1)
 572:	eb ed                	jmp    561 <vsprintf+0x1f0>
 574:	8d 51 ff             	lea    -0x1(%rcx),%edx
 577:	31 f6                	xor    %esi,%esi
 579:	85 c9                	test   %ecx,%ecx
 57b:	48 89 d0             	mov    %rdx,%rax
 57e:	48 0f 4e d6          	cmovle %rsi,%rdx
 582:	49 01 d2             	add    %rdx,%r10
 585:	85 c9                	test   %ecx,%ecx
 587:	ba 01 00 00 00       	mov    $0x1,%edx
 58c:	0f 4f d1             	cmovg  %ecx,%edx
 58f:	29 d0                	sub    %edx,%eax
 591:	8d 48 01             	lea    0x1(%rax),%ecx
 594:	8b 13                	mov    (%rbx),%edx
 596:	83 fa 2f             	cmp    $0x2f,%edx
 599:	77 0d                	ja     5a8 <vsprintf+0x237>
 59b:	89 d0                	mov    %edx,%eax
 59d:	83 c2 08             	add    $0x8,%edx
 5a0:	48 03 43 10          	add    0x10(%rbx),%rax
 5a4:	89 13                	mov    %edx,(%rbx)
 5a6:	eb 0c                	jmp    5b4 <vsprintf+0x243>
 5a8:	48 8b 43 08          	mov    0x8(%rbx),%rax
 5ac:	48 8d 50 08          	lea    0x8(%rax),%rdx
 5b0:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 5b4:	8b 00                	mov    (%rax),%eax
 5b6:	41 88 02             	mov    %al,(%r10)
 5b9:	31 c0                	xor    %eax,%eax
 5bb:	48 ff c0             	inc    %rax
 5be:	89 ca                	mov    %ecx,%edx
 5c0:	29 c2                	sub    %eax,%edx
 5c2:	85 d2                	test   %edx,%edx
 5c4:	7e 07                	jle    5cd <vsprintf+0x25c>
 5c6:	41 c6 04 02 20       	movb   $0x20,(%r10,%rax,1)
 5cb:	eb ee                	jmp    5bb <vsprintf+0x24a>
 5cd:	31 d2                	xor    %edx,%edx
 5cf:	8d 41 ff             	lea    -0x1(%rcx),%eax
 5d2:	85 c9                	test   %ecx,%ecx
 5d4:	48 0f 4e c2          	cmovle %rdx,%rax
 5d8:	4d 8d 54 02 01       	lea    0x1(%r10,%rax,1),%r10
 5dd:	e9 d5 02 00 00       	jmp    8b7 <vsprintf+0x546>
 5e2:	8b 13                	mov    (%rbx),%edx
 5e4:	83 fa 2f             	cmp    $0x2f,%edx
 5e7:	77 0d                	ja     5f6 <vsprintf+0x285>
 5e9:	89 d0                	mov    %edx,%eax
 5eb:	83 c2 08             	add    $0x8,%edx
 5ee:	48 03 43 10          	add    0x10(%rbx),%rax
 5f2:	89 13                	mov    %edx,(%rbx)
 5f4:	eb 0c                	jmp    602 <vsprintf+0x291>
 5f6:	48 8b 43 08          	mov    0x8(%rbx),%rax
 5fa:	48 8d 50 08          	lea    0x8(%rax),%rdx
 5fe:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 602:	48 8b 30             	mov    (%rax),%rsi
 605:	48 89 f0             	mov    %rsi,%rax
 608:	80 38 00             	cmpb   $0x0,(%rax)
 60b:	74 05                	je     612 <vsprintf+0x2a1>
 60d:	48 ff c0             	inc    %rax
 610:	eb f6                	jmp    608 <vsprintf+0x297>
 612:	48 29 f0             	sub    %rsi,%rax
 615:	48 63 d0             	movslq %eax,%rdx
 618:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
 61c:	74 0a                	je     628 <vsprintf+0x2b7>
 61e:	41 39 c0             	cmp    %eax,%r8d
 621:	41 0f 4e c0          	cmovle %r8d,%eax
 625:	48 63 d0             	movslq %eax,%rdx
 628:	41 83 e1 10          	and    $0x10,%r9d
 62c:	75 3b                	jne    669 <vsprintf+0x2f8>
 62e:	31 c0                	xor    %eax,%eax
 630:	89 cf                	mov    %ecx,%edi
 632:	29 c7                	sub    %eax,%edi
 634:	39 fa                	cmp    %edi,%edx
 636:	7d 0a                	jge    642 <vsprintf+0x2d1>
 638:	41 c6 04 02 20       	movb   $0x20,(%r10,%rax,1)
 63d:	48 ff c0             	inc    %rax
 640:	eb ee                	jmp    630 <vsprintf+0x2bf>
 642:	39 d1                	cmp    %edx,%ecx
 644:	89 c8                	mov    %ecx,%eax
 646:	41 0f 9d c0          	setge  %r8b
 64a:	29 d0                	sub    %edx,%eax
 64c:	45 31 c9             	xor    %r9d,%r9d
 64f:	89 c7                	mov    %eax,%edi
 651:	45 84 c0             	test   %r8b,%r8b
 654:	49 0f 44 f9          	cmove  %r9,%rdi
 658:	f7 d8                	neg    %eax
 65a:	49 01 fa             	add    %rdi,%r10
 65d:	31 ff                	xor    %edi,%edi
 65f:	45 84 c0             	test   %r8b,%r8b
 662:	0f 44 c7             	cmove  %edi,%eax
 665:	8d 4c 01 ff          	lea    -0x1(%rcx,%rax,1),%ecx
 669:	31 c0                	xor    %eax,%eax
 66b:	39 c2                	cmp    %eax,%edx
 66d:	7e 0d                	jle    67c <vsprintf+0x30b>
 66f:	40 8a 3c 06          	mov    (%rsi,%rax,1),%dil
 673:	41 88 3c 02          	mov    %dil,(%r10,%rax,1)
 677:	48 ff c0             	inc    %rax
 67a:	eb ef                	jmp    66b <vsprintf+0x2fa>
 67c:	31 f6                	xor    %esi,%esi
 67e:	85 d2                	test   %edx,%edx
 680:	48 0f 49 f2          	cmovns %rdx,%rsi
 684:	31 c0                	xor    %eax,%eax
 686:	4c 01 d6             	add    %r10,%rsi
 689:	89 cf                	mov    %ecx,%edi
 68b:	29 c7                	sub    %eax,%edi
 68d:	39 fa                	cmp    %edi,%edx
 68f:	7d 09                	jge    69a <vsprintf+0x329>
 691:	c6 04 06 20          	movb   $0x20,(%rsi,%rax,1)
 695:	48 ff c0             	inc    %rax
 698:	eb ef                	jmp    689 <vsprintf+0x318>
 69a:	41 89 ca             	mov    %ecx,%r10d
 69d:	31 c0                	xor    %eax,%eax
 69f:	41 29 d2             	sub    %edx,%r10d
 6a2:	39 d1                	cmp    %edx,%ecx
 6a4:	4c 0f 4c d0          	cmovl  %rax,%r10
 6a8:	49 01 f2             	add    %rsi,%r10
 6ab:	e9 07 02 00 00       	jmp    8b7 <vsprintf+0x546>
 6b0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6b7:	00 00 00 
 6ba:	83 fe 6c             	cmp    $0x6c,%esi
 6bd:	8b 13                	mov    (%rbx),%edx
 6bf:	75 28                	jne    6e9 <vsprintf+0x378>
 6c1:	83 fa 2f             	cmp    $0x2f,%edx
 6c4:	77 0d                	ja     6d3 <vsprintf+0x362>
 6c6:	89 d6                	mov    %edx,%esi
 6c8:	83 c2 08             	add    $0x8,%edx
 6cb:	48 03 73 10          	add    0x10(%rbx),%rsi
 6cf:	89 13                	mov    %edx,(%rbx)
 6d1:	eb 0c                	jmp    6df <vsprintf+0x36e>
 6d3:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 6d7:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 6db:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 6df:	ba 08 00 00 00       	mov    $0x8,%edx
 6e4:	e9 b2 00 00 00       	jmp    79b <vsprintf+0x42a>
 6e9:	83 fa 2f             	cmp    $0x2f,%edx
 6ec:	77 0d                	ja     6fb <vsprintf+0x38a>
 6ee:	89 d6                	mov    %edx,%esi
 6f0:	83 c2 08             	add    $0x8,%edx
 6f3:	48 03 73 10          	add    0x10(%rbx),%rsi
 6f7:	89 13                	mov    %edx,(%rbx)
 6f9:	eb 0c                	jmp    707 <vsprintf+0x396>
 6fb:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 6ff:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 703:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 707:	8b 36                	mov    (%rsi),%esi
 709:	ba 08 00 00 00       	mov    $0x8,%edx
 70e:	4c 89 d7             	mov    %r10,%rdi
 711:	48 01 e8             	add    %rbp,%rax
 714:	ff d0                	call   *%rax
 716:	49 89 c2             	mov    %rax,%r10
 719:	e9 99 01 00 00       	jmp    8b7 <vsprintf+0x546>
 71e:	83 f9 ff             	cmp    $0xffffffff,%ecx
 721:	75 09                	jne    72c <vsprintf+0x3bb>
 723:	41 83 c9 01          	or     $0x1,%r9d
 727:	b9 10 00 00 00       	mov    $0x10,%ecx
 72c:	8b 13                	mov    (%rbx),%edx
 72e:	83 fa 2f             	cmp    $0x2f,%edx
 731:	77 0d                	ja     740 <vsprintf+0x3cf>
 733:	89 d0                	mov    %edx,%eax
 735:	83 c2 08             	add    $0x8,%edx
 738:	48 03 43 10          	add    0x10(%rbx),%rax
 73c:	89 13                	mov    %edx,(%rbx)
 73e:	eb 0c                	jmp    74c <vsprintf+0x3db>
 740:	48 8b 43 08          	mov    0x8(%rbx),%rax
 744:	48 8d 50 08          	lea    0x8(%rax),%rdx
 748:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 74c:	48 8b 30             	mov    (%rax),%rsi
 74f:	ba 10 00 00 00       	mov    $0x10,%edx
 754:	4c 89 d7             	mov    %r10,%rdi
 757:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 75e:	00 00 00 
 761:	eb ae                	jmp    711 <vsprintf+0x3a0>
 763:	41 83 c9 40          	or     $0x40,%r9d
 767:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 76e:	00 00 00 
 771:	83 fe 6c             	cmp    $0x6c,%esi
 774:	8b 13                	mov    (%rbx),%edx
 776:	75 2b                	jne    7a3 <vsprintf+0x432>
 778:	83 fa 2f             	cmp    $0x2f,%edx
 77b:	77 0d                	ja     78a <vsprintf+0x419>
 77d:	89 d6                	mov    %edx,%esi
 77f:	83 c2 08             	add    $0x8,%edx
 782:	48 03 73 10          	add    0x10(%rbx),%rsi
 786:	89 13                	mov    %edx,(%rbx)
 788:	eb 0c                	jmp    796 <vsprintf+0x425>
 78a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 78e:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 792:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 796:	ba 10 00 00 00       	mov    $0x10,%edx
 79b:	48 8b 36             	mov    (%rsi),%rsi
 79e:	e9 6b ff ff ff       	jmp    70e <vsprintf+0x39d>
 7a3:	83 fa 2f             	cmp    $0x2f,%edx
 7a6:	77 0d                	ja     7b5 <vsprintf+0x444>
 7a8:	89 d6                	mov    %edx,%esi
 7aa:	83 c2 08             	add    $0x8,%edx
 7ad:	48 03 73 10          	add    0x10(%rbx),%rsi
 7b1:	89 13                	mov    %edx,(%rbx)
 7b3:	eb 0c                	jmp    7c1 <vsprintf+0x450>
 7b5:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 7b9:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 7bd:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 7c1:	8b 36                	mov    (%rsi),%esi
 7c3:	ba 10 00 00 00       	mov    $0x10,%edx
 7c8:	e9 41 ff ff ff       	jmp    70e <vsprintf+0x39d>
 7cd:	41 83 c9 02          	or     $0x2,%r9d
 7d1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 7d8:	00 00 00 
 7db:	83 fe 6c             	cmp    $0x6c,%esi
 7de:	8b 13                	mov    (%rbx),%edx
 7e0:	75 25                	jne    807 <vsprintf+0x496>
 7e2:	83 fa 2f             	cmp    $0x2f,%edx
 7e5:	77 0d                	ja     7f4 <vsprintf+0x483>
 7e7:	89 d6                	mov    %edx,%esi
 7e9:	83 c2 08             	add    $0x8,%edx
 7ec:	48 03 73 10          	add    0x10(%rbx),%rsi
 7f0:	89 13                	mov    %edx,(%rbx)
 7f2:	eb 0c                	jmp    800 <vsprintf+0x48f>
 7f4:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 7f8:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 7fc:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 800:	ba 0a 00 00 00       	mov    $0xa,%edx
 805:	eb 94                	jmp    79b <vsprintf+0x42a>
 807:	83 fa 2f             	cmp    $0x2f,%edx
 80a:	77 0d                	ja     819 <vsprintf+0x4a8>
 80c:	89 d6                	mov    %edx,%esi
 80e:	83 c2 08             	add    $0x8,%edx
 811:	48 03 73 10          	add    0x10(%rbx),%rsi
 815:	89 13                	mov    %edx,(%rbx)
 817:	eb 0c                	jmp    825 <vsprintf+0x4b4>
 819:	48 8b 73 08          	mov    0x8(%rbx),%rsi
 81d:	48 8d 56 08          	lea    0x8(%rsi),%rdx
 821:	48 89 53 08          	mov    %rdx,0x8(%rbx)
 825:	8b 36                	mov    (%rsi),%esi
 827:	ba 0a 00 00 00       	mov    $0xa,%edx
 82c:	e9 dd fe ff ff       	jmp    70e <vsprintf+0x39d>
 831:	8b 03                	mov    (%rbx),%eax
 833:	83 fe 6c             	cmp    $0x6c,%esi
 836:	75 2c                	jne    864 <vsprintf+0x4f3>
 838:	83 f8 2f             	cmp    $0x2f,%eax
 83b:	77 0d                	ja     84a <vsprintf+0x4d9>
 83d:	89 c2                	mov    %eax,%edx
 83f:	83 c0 08             	add    $0x8,%eax
 842:	48 03 53 10          	add    0x10(%rbx),%rdx
 846:	89 03                	mov    %eax,(%rbx)
 848:	eb 0c                	jmp    856 <vsprintf+0x4e5>
 84a:	48 8b 53 08          	mov    0x8(%rbx),%rdx
 84e:	48 8d 42 08          	lea    0x8(%rdx),%rax
 852:	48 89 43 08          	mov    %rax,0x8(%rbx)
 856:	48 8b 02             	mov    (%rdx),%rax
 859:	4c 89 d2             	mov    %r10,%rdx
 85c:	4c 29 e2             	sub    %r12,%rdx
 85f:	48 89 10             	mov    %rdx,(%rax)
 862:	eb 53                	jmp    8b7 <vsprintf+0x546>
 864:	83 f8 2f             	cmp    $0x2f,%eax
 867:	77 0d                	ja     876 <vsprintf+0x505>
 869:	89 c2                	mov    %eax,%edx
 86b:	83 c0 08             	add    $0x8,%eax
 86e:	48 03 53 10          	add    0x10(%rbx),%rdx
 872:	89 03                	mov    %eax,(%rbx)
 874:	eb 0c                	jmp    882 <vsprintf+0x511>
 876:	48 8b 53 08          	mov    0x8(%rbx),%rdx
 87a:	48 8d 42 08          	lea    0x8(%rdx),%rax
 87e:	48 89 43 08          	mov    %rax,0x8(%rbx)
 882:	48 8b 02             	mov    (%rdx),%rax
 885:	4c 89 d2             	mov    %r10,%rdx
 888:	4c 29 e2             	sub    %r12,%rdx
 88b:	89 10                	mov    %edx,(%rax)
 88d:	eb 28                	jmp    8b7 <vsprintf+0x546>
 88f:	41 c6 02 25          	movb   $0x25,(%r10)
 893:	49 ff c2             	inc    %r10
 896:	eb 1f                	jmp    8b7 <vsprintf+0x546>
 898:	41 c6 02 25          	movb   $0x25,(%r10)
 89c:	8a 02                	mov    (%rdx),%al
 89e:	84 c0                	test   %al,%al
 8a0:	74 0a                	je     8ac <vsprintf+0x53b>
 8a2:	41 88 42 01          	mov    %al,0x1(%r10)
 8a6:	49 83 c2 02          	add    $0x2,%r10
 8aa:	eb 0b                	jmp    8b7 <vsprintf+0x546>
 8ac:	48 ff ca             	dec    %rdx
 8af:	49 ff c2             	inc    %r10
 8b2:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 8b7:	48 ff 44 24 08       	incq   0x8(%rsp)
 8bc:	e9 e7 fa ff ff       	jmp    3a8 <vsprintf+0x37>
 8c1:	41 c6 02 00          	movb   $0x0,(%r10)
 8c5:	44 89 d0             	mov    %r10d,%eax
 8c8:	48 83 c4 10          	add    $0x10,%rsp
 8cc:	5b                   	pop    %rbx
 8cd:	44 29 e0             	sub    %r12d,%eax
 8d0:	5d                   	pop    %rbp
 8d1:	41 5c                	pop    %r12
 8d3:	41 5d                	pop    %r13
 8d5:	c3                   	ret

00000000000008d6 <color_printk>:
 8d6:	f3 0f 1e fa          	endbr64
 8da:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 8e1:	00 00 00 
 8e4:	41 57                	push   %r15
 8e6:	41 56                	push   %r14
 8e8:	41 55                	push   %r13
 8ea:	41 54                	push   %r12
 8ec:	55                   	push   %rbp
 8ed:	53                   	push   %rbx
 8ee:	48 8d 1d e5 ff ff ff 	lea    -0x1b(%rip),%rbx        # 8da <color_printk+0x4>
 8f5:	4c 01 db             	add    %r11,%rbx
 8f8:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
 8ff:	89 74 24 0c          	mov    %esi,0xc(%rsp)
 903:	48 89 d6             	mov    %rdx,%rsi
 906:	89 7c 24 08          	mov    %edi,0x8(%rsp)
 90a:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
 90f:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
 914:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
 919:	84 c0                	test   %al,%al
 91b:	74 3a                	je     957 <color_printk+0x81>
 91d:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
 922:	0f 29 4c 24 70       	movaps %xmm1,0x70(%rsp)
 927:	0f 29 94 24 80 00 00 	movaps %xmm2,0x80(%rsp)
 92e:	00 
 92f:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
 936:	00 
 937:	0f 29 a4 24 a0 00 00 	movaps %xmm4,0xa0(%rsp)
 93e:	00 
 93f:	0f 29 ac 24 b0 00 00 	movaps %xmm5,0xb0(%rsp)
 946:	00 
 947:	0f 29 b4 24 c0 00 00 	movaps %xmm6,0xc0(%rsp)
 94e:	00 
 94f:	0f 29 bc 24 d0 00 00 	movaps %xmm7,0xd0(%rsp)
 956:	00 
 957:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
 95e:	00 
 95f:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
 964:	31 ed                	xor    %ebp,%ebp
 966:	45 31 e4             	xor    %r12d,%r12d
 969:	49 bf 00 00 00 00 00 	movabs $0x0,%r15
 970:	00 00 00 
 973:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 978:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
 97d:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
 984:	00 00 00 
 987:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 98c:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
 990:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 997:	00 00 00 
 99a:	c7 44 24 18 18 00 00 	movl   $0x18,0x18(%rsp)
 9a1:	00 
 9a2:	48 01 d8             	add    %rbx,%rax
 9a5:	c7 44 24 1c 30 00 00 	movl   $0x30,0x1c(%rsp)
 9ac:	00 
 9ad:	ff d0                	call   *%rax
 9af:	41 89 c6             	mov    %eax,%r14d
 9b2:	45 39 f4             	cmp    %r14d,%r12d
 9b5:	0f 8d 3e 01 00 00    	jge    af9 <color_printk+0x223>
 9bb:	46 8b 4c 2b 0c       	mov    0xc(%rbx,%r13,1),%r9d
 9c0:	42 8b 4c 2b 14       	mov    0x14(%rbx,%r13,1),%ecx
 9c5:	46 8b 44 2b 10       	mov    0x10(%rbx,%r13,1),%r8d
 9ca:	42 8b 34 2b          	mov    (%rbx,%r13,1),%esi
 9ce:	85 ed                	test   %ebp,%ebp
 9d0:	7e 08                	jle    9da <color_printk+0x104>
 9d2:	41 ff cc             	dec    %r12d
 9d5:	e9 a1 00 00 00       	jmp    a7b <color_printk+0x1a5>
 9da:	49 63 c4             	movslq %r12d,%rax
 9dd:	49 8d 14 1f          	lea    (%r15,%rbx,1),%rdx
 9e1:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 9e5:	3c 0a                	cmp    $0xa,%al
 9e7:	75 14                	jne    9fd <color_printk+0x127>
 9e9:	41 ff c1             	inc    %r9d
 9ec:	31 f6                	xor    %esi,%esi
 9ee:	46 89 4c 2b 0c       	mov    %r9d,0xc(%rbx,%r13,1)
 9f3:	42 89 74 2b 08       	mov    %esi,0x8(%rbx,%r13,1)
 9f8:	e9 be 00 00 00       	jmp    abb <color_printk+0x1e5>
 9fd:	42 8b 54 2b 08       	mov    0x8(%rbx,%r13,1),%edx
 a02:	4a 8b 7c 2b 18       	mov    0x18(%rbx,%r13,1),%rdi
 a07:	3c 08                	cmp    $0x8,%al
 a09:	75 64                	jne    a6f <color_printk+0x199>
 a0b:	ff ca                	dec    %edx
 a0d:	78 07                	js     a16 <color_printk+0x140>
 a0f:	41 89 54 1d 08       	mov    %edx,0x8(%r13,%rbx,1)
 a14:	eb 2d                	jmp    a43 <color_printk+0x16d>
 a16:	89 f0                	mov    %esi,%eax
 a18:	99                   	cltd
 a19:	41 f7 f8             	idiv   %r8d
 a1c:	ff c8                	dec    %eax
 a1e:	41 0f af c0          	imul   %r8d,%eax
 a22:	41 ff c9             	dec    %r9d
 a25:	45 89 4c 1d 0c       	mov    %r9d,0xc(%r13,%rbx,1)
 a2a:	41 89 44 1d 08       	mov    %eax,0x8(%r13,%rbx,1)
 a2f:	79 12                	jns    a43 <color_printk+0x16d>
 a31:	41 8b 44 1d 04       	mov    0x4(%r13,%rbx,1),%eax
 a36:	99                   	cltd
 a37:	f7 f9                	idiv   %ecx
 a39:	ff c8                	dec    %eax
 a3b:	0f af c1             	imul   %ecx,%eax
 a3e:	41 89 44 1d 0c       	mov    %eax,0xc(%r13,%rbx,1)
 a43:	41 8b 54 1d 08       	mov    0x8(%r13,%rbx,1),%edx
 a48:	41 0f af 4c 1d 0c    	imul   0xc(%r13,%rbx,1),%ecx
 a4e:	6a 20                	push   $0x20
 a50:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 a57:	00 00 00 
 a5a:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
 a5f:	48 01 d8             	add    %rbx,%rax
 a62:	41 0f af d0          	imul   %r8d,%edx
 a66:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
 a6b:	ff d0                	call   *%rax
 a6d:	eb 4b                	jmp    aba <color_printk+0x1e4>
 a6f:	3c 09                	cmp    $0x9,%al
 a71:	75 20                	jne    a93 <color_printk+0x1bd>
 a73:	8d 6a 08             	lea    0x8(%rdx),%ebp
 a76:	83 e5 f8             	and    $0xfffffff8,%ebp
 a79:	29 d5                	sub    %edx,%ebp
 a7b:	42 8b 54 2b 08       	mov    0x8(%rbx,%r13,1),%edx
 a80:	4a 8b 7c 2b 18       	mov    0x18(%rbx,%r13,1),%rdi
 a85:	41 0f af c9          	imul   %r9d,%ecx
 a89:	6a 20                	push   $0x20
 a8b:	ff cd                	dec    %ebp
 a8d:	41 0f af d0          	imul   %r8d,%edx
 a91:	eb 09                	jmp    a9c <color_printk+0x1c6>
 a93:	41 0f af c9          	imul   %r9d,%ecx
 a97:	50                   	push   %rax
 a98:	41 0f af d0          	imul   %r8d,%edx
 a9c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 aa3:	00 00 00 
 aa6:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
 aab:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
 ab0:	48 01 d8             	add    %rbx,%rax
 ab3:	ff d0                	call   *%rax
 ab5:	41 ff 44 1d 08       	incl   0x8(%r13,%rbx,1)
 aba:	59                   	pop    %rcx
 abb:	42 8b 04 2b          	mov    (%rbx,%r13,1),%eax
 abf:	99                   	cltd
 ac0:	42 f7 7c 2b 10       	idivl  0x10(%rbx,%r13,1)
 ac5:	42 39 44 2b 08       	cmp    %eax,0x8(%rbx,%r13,1)
 aca:	7c 0c                	jl     ad8 <color_printk+0x202>
 acc:	31 d2                	xor    %edx,%edx
 ace:	41 ff 44 1d 0c       	incl   0xc(%r13,%rbx,1)
 ad3:	42 89 54 2b 08       	mov    %edx,0x8(%rbx,%r13,1)
 ad8:	41 8b 44 1d 04       	mov    0x4(%r13,%rbx,1),%eax
 add:	99                   	cltd
 ade:	41 f7 7c 1d 14       	idivl  0x14(%r13,%rbx,1)
 ae3:	41 39 44 1d 0c       	cmp    %eax,0xc(%r13,%rbx,1)
 ae8:	7c 07                	jl     af1 <color_printk+0x21b>
 aea:	31 c0                	xor    %eax,%eax
 aec:	41 89 44 1d 0c       	mov    %eax,0xc(%r13,%rbx,1)
 af1:	41 ff c4             	inc    %r12d
 af4:	e9 b9 fe ff ff       	jmp    9b2 <color_printk+0xdc>
 af9:	85 ed                	test   %ebp,%ebp
 afb:	0f 85 ba fe ff ff    	jne    9bb <color_printk+0xe5>
 b01:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
 b08:	44 89 f0             	mov    %r14d,%eax
 b0b:	5b                   	pop    %rbx
 b0c:	5d                   	pop    %rbp
 b0d:	41 5c                	pop    %r12
 b0f:	41 5d                	pop    %r13
 b11:	41 5e                	pop    %r14
 b13:	41 5f                	pop    %r15
 b15:	c3                   	ret
