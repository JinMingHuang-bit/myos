
printk.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <number>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	55                   	push   %rbp
   d:	53                   	push   %rbx
   e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # e <number+0xe>
  15:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  1c:	00 00 00 
  1f:	4c 01 d8             	add    %r11,%rax
  22:	49 89 f2             	mov    %rsi,%r10
  25:	89 d5                	mov    %edx,%ebp
  27:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  2e:	00 00 00 
  31:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
  35:	41 f6 c1 40          	test   $0x40,%r9b
  39:	75 0e                	jne    49 <number+0x49>
  3b:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  42:	00 00 00 
  45:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
  49:	41 f6 c1 10          	test   $0x10,%r9b
  4d:	74 36                	je     85 <number+0x85>
  4f:	41 83 e1 fe          	and    $0xfffffffe,%r9d
  53:	8d 45 fe             	lea    -0x2(%rbp),%eax
  56:	83 f8 22             	cmp    $0x22,%eax
  59:	0f 87 11 02 00 00    	ja     270 <number+0x270>
  5f:	bb 20 00 00 00       	mov    $0x20,%ebx
  64:	41 f6 c1 02          	test   $0x2,%r9b
  68:	74 05                	je     6f <number+0x6f>
  6a:	4d 85 d2             	test   %r10,%r10
  6d:	78 35                	js     a4 <number+0xa4>
  6f:	41 f6 c1 04          	test   $0x4,%r9b
  73:	75 3a                	jne    af <number+0xaf>
  75:	46 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%r15d
  7c:	00 
  7d:	41 83 e7 20          	and    $0x20,%r15d
  81:	74 35                	je     b8 <number+0xb8>
  83:	eb 30                	jmp    b5 <number+0xb5>
  85:	8d 45 fe             	lea    -0x2(%rbp),%eax
  88:	83 f8 22             	cmp    $0x22,%eax
  8b:	0f 87 ea 01 00 00    	ja     27b <number+0x27b>
  91:	44 89 c8             	mov    %r9d,%eax
  94:	83 e0 01             	and    $0x1,%eax
  97:	83 f8 01             	cmp    $0x1,%eax
  9a:	19 db                	sbb    %ebx,%ebx
  9c:	83 e3 f0             	and    $0xfffffff0,%ebx
  9f:	83 c3 30             	add    $0x30,%ebx
  a2:	eb c0                	jmp    64 <number+0x64>
  a4:	49 f7 da             	neg    %r10
  a7:	41 bf 2d 00 00 00    	mov    $0x2d,%r15d
  ad:	eb 06                	jmp    b5 <number+0xb5>
  af:	41 bf 2b 00 00 00    	mov    $0x2b,%r15d
  b5:	83 e9 01             	sub    $0x1,%ecx
  b8:	44 89 c8             	mov    %r9d,%eax
  bb:	83 e0 20             	and    $0x20,%eax
  be:	89 44 24 b4          	mov    %eax,-0x4c(%rsp)
  c2:	74 14                	je     d8 <number+0xd8>
  c4:	83 fd 10             	cmp    $0x10,%ebp
  c7:	0f 84 29 01 00 00    	je     1f6 <number+0x1f6>
  cd:	83 fd 08             	cmp    $0x8,%ebp
  d0:	0f 94 c0             	sete   %al
  d3:	0f b6 c0             	movzbl %al,%eax
  d6:	29 c1                	sub    %eax,%ecx
  d8:	4d 85 d2             	test   %r10,%r10
  db:	0f 85 1d 01 00 00    	jne    1fe <number+0x1fe>
  e1:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
  e6:	ba 01 00 00 00       	mov    $0x1,%edx
  eb:	44 39 c2             	cmp    %r8d,%edx
  ee:	44 0f 4d c2          	cmovge %edx,%r8d
  f2:	44 29 c1             	sub    %r8d,%ecx
  f5:	41 f6 c1 11          	test   $0x11,%r9b
  f9:	75 2a                	jne    125 <number+0x125>
  fb:	8d 41 ff             	lea    -0x1(%rcx),%eax
  fe:	85 c9                	test   %ecx,%ecx
 100:	0f 8e 34 01 00 00    	jle    23a <number+0x23a>
 106:	89 ce                	mov    %ecx,%esi
 108:	48 01 fe             	add    %rdi,%rsi
 10b:	48 89 f8             	mov    %rdi,%rax
 10e:	48 83 c0 01          	add    $0x1,%rax
 112:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
 116:	48 39 f0             	cmp    %rsi,%rax
 119:	75 f3                	jne    10e <number+0x10e>
 11b:	89 c9                	mov    %ecx,%ecx
 11d:	48 01 cf             	add    %rcx,%rdi
 120:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 125:	45 84 ff             	test   %r15b,%r15b
 128:	74 07                	je     131 <number+0x131>
 12a:	44 88 3f             	mov    %r15b,(%rdi)
 12d:	48 8d 7f 01          	lea    0x1(%rdi),%rdi
 131:	83 7c 24 b4 00       	cmpl   $0x0,-0x4c(%rsp)
 136:	74 12                	je     14a <number+0x14a>
 138:	83 fd 08             	cmp    $0x8,%ebp
 13b:	0f 84 00 01 00 00    	je     241 <number+0x241>
 141:	83 fd 10             	cmp    $0x10,%ebp
 144:	0f 84 03 01 00 00    	je     24d <number+0x24d>
 14a:	41 f6 c1 10          	test   $0x10,%r9b
 14e:	75 29                	jne    179 <number+0x179>
 150:	8d 41 ff             	lea    -0x1(%rcx),%eax
 153:	85 c9                	test   %ecx,%ecx
 155:	0f 8e 06 01 00 00    	jle    261 <number+0x261>
 15b:	89 ce                	mov    %ecx,%esi
 15d:	48 01 fe             	add    %rdi,%rsi
 160:	48 89 f8             	mov    %rdi,%rax
 163:	48 83 c0 01          	add    $0x1,%rax
 167:	88 58 ff             	mov    %bl,-0x1(%rax)
 16a:	48 39 f0             	cmp    %rsi,%rax
 16d:	75 f4                	jne    163 <number+0x163>
 16f:	89 c9                	mov    %ecx,%ecx
 171:	48 01 cf             	add    %rcx,%rdi
 174:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 179:	44 39 c2             	cmp    %r8d,%edx
 17c:	0f 8d e6 00 00 00    	jge    268 <number+0x268>
 182:	41 29 d0             	sub    %edx,%r8d
 185:	41 8d 40 ff          	lea    -0x1(%r8),%eax
 189:	4c 8d 44 07 01       	lea    0x1(%rdi,%rax,1),%r8
 18e:	48 83 c7 01          	add    $0x1,%rdi
 192:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
 196:	4c 39 c7             	cmp    %r8,%rdi
 199:	75 f3                	jne    18e <number+0x18e>
 19b:	85 d2                	test   %edx,%edx
 19d:	7e 2b                	jle    1ca <number+0x1ca>
 19f:	48 63 c2             	movslq %edx,%rax
 1a2:	48 8d 74 04 b8       	lea    -0x48(%rsp,%rax,1),%rsi
 1a7:	41 89 d1             	mov    %edx,%r9d
 1aa:	4d 01 c1             	add    %r8,%r9
 1ad:	4c 89 c0             	mov    %r8,%rax
 1b0:	48 83 c0 01          	add    $0x1,%rax
 1b4:	0f b6 7e ff          	movzbl -0x1(%rsi),%edi
 1b8:	40 88 78 ff          	mov    %dil,-0x1(%rax)
 1bc:	48 83 ee 01          	sub    $0x1,%rsi
 1c0:	4c 39 c8             	cmp    %r9,%rax
 1c3:	75 eb                	jne    1b0 <number+0x1b0>
 1c5:	89 d2                	mov    %edx,%edx
 1c7:	49 01 d0             	add    %rdx,%r8
 1ca:	85 c9                	test   %ecx,%ecx
 1cc:	7e 1a                	jle    1e8 <number+0x1e8>
 1ce:	89 ca                	mov    %ecx,%edx
 1d0:	4c 01 c2             	add    %r8,%rdx
 1d3:	4c 89 c0             	mov    %r8,%rax
 1d6:	48 83 c0 01          	add    $0x1,%rax
 1da:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
 1de:	48 39 d0             	cmp    %rdx,%rax
 1e1:	75 f3                	jne    1d6 <number+0x1d6>
 1e3:	89 c9                	mov    %ecx,%ecx
 1e5:	49 01 c8             	add    %rcx,%r8
 1e8:	4c 89 c0             	mov    %r8,%rax
 1eb:	5b                   	pop    %rbx
 1ec:	5d                   	pop    %rbp
 1ed:	41 5c                	pop    %r12
 1ef:	41 5d                	pop    %r13
 1f1:	41 5e                	pop    %r14
 1f3:	41 5f                	pop    %r15
 1f5:	c3                   	ret
 1f6:	83 e9 02             	sub    $0x2,%ecx
 1f9:	e9 da fe ff ff       	jmp    d8 <number+0xd8>
 1fe:	be 01 00 00 00       	mov    $0x1,%esi
 203:	41 bd 00 00 00 00    	mov    $0x0,%r13d
 209:	4c 63 dd             	movslq %ebp,%r11
 20c:	4c 8d 64 24 b7       	lea    -0x49(%rsp),%r12
 211:	4c 89 d0             	mov    %r10,%rax
 214:	44 89 ea             	mov    %r13d,%edx
 217:	49 f7 f3             	div    %r11
 21a:	49 89 c2             	mov    %rax,%r10
 21d:	48 63 d2             	movslq %edx,%rdx
 220:	41 0f b6 14 16       	movzbl (%r14,%rdx,1),%edx
 225:	41 88 14 34          	mov    %dl,(%r12,%rsi,1)
 229:	48 89 f2             	mov    %rsi,%rdx
 22c:	48 83 c6 01          	add    $0x1,%rsi
 230:	48 85 c0             	test   %rax,%rax
 233:	75 dc                	jne    211 <number+0x211>
 235:	e9 b1 fe ff ff       	jmp    eb <number+0xeb>
 23a:	89 c1                	mov    %eax,%ecx
 23c:	e9 e4 fe ff ff       	jmp    125 <number+0x125>
 241:	c6 07 30             	movb   $0x30,(%rdi)
 244:	48 8d 7f 01          	lea    0x1(%rdi),%rdi
 248:	e9 fd fe ff ff       	jmp    14a <number+0x14a>
 24d:	c6 07 30             	movb   $0x30,(%rdi)
 250:	41 0f b6 46 21       	movzbl 0x21(%r14),%eax
 255:	88 47 01             	mov    %al,0x1(%rdi)
 258:	48 8d 7f 02          	lea    0x2(%rdi),%rdi
 25c:	e9 e9 fe ff ff       	jmp    14a <number+0x14a>
 261:	89 c1                	mov    %eax,%ecx
 263:	e9 11 ff ff ff       	jmp    179 <number+0x179>
 268:	49 89 f8             	mov    %rdi,%r8
 26b:	e9 2b ff ff ff       	jmp    19b <number+0x19b>
 270:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 276:	e9 6d ff ff ff       	jmp    1e8 <number+0x1e8>
 27b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 281:	e9 62 ff ff ff       	jmp    1e8 <number+0x1e8>

0000000000000286 <putchar>:
 286:	f3 0f 1e fa          	endbr64
 28a:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 28a <putchar+0x4>
 291:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 298:	00 00 00 
 29b:	4d 01 da             	add    %r11,%r10
 29e:	89 f0                	mov    %esi,%eax
 2a0:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
 2a5:	48 c1 e6 04          	shl    $0x4,%rsi
 2a9:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 2b0:	00 00 00 
 2b3:	4f 8d 14 1a          	lea    (%r10,%r11,1),%r10
 2b7:	4c 01 d6             	add    %r10,%rsi
 2ba:	4c 63 d0             	movslq %eax,%r10
 2bd:	49 c1 e2 02          	shl    $0x2,%r10
 2c1:	48 63 d2             	movslq %edx,%rdx
 2c4:	0f af c8             	imul   %eax,%ecx
 2c7:	48 63 c1             	movslq %ecx,%rax
 2ca:	48 8d 44 02 08       	lea    0x8(%rdx,%rax,1),%rax
 2cf:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
 2d3:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
 2d7:	eb 0c                	jmp    2e5 <putchar+0x5f>
 2d9:	48 83 c6 01          	add    $0x1,%rsi
 2dd:	4c 01 d7             	add    %r10,%rdi
 2e0:	4c 39 de             	cmp    %r11,%rsi
 2e3:	74 24                	je     309 <putchar+0x83>
 2e5:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
 2e9:	ba 00 01 00 00       	mov    $0x100,%edx
 2ee:	d1 fa                	sar    $1,%edx
 2f0:	0f b6 0e             	movzbl (%rsi),%ecx
 2f3:	85 d1                	test   %edx,%ecx
 2f5:	44 89 c1             	mov    %r8d,%ecx
 2f8:	41 0f 44 c9          	cmove  %r9d,%ecx
 2fc:	89 08                	mov    %ecx,(%rax)
 2fe:	48 83 c0 04          	add    $0x4,%rax
 302:	48 39 f8             	cmp    %rdi,%rax
 305:	75 e7                	jne    2ee <putchar+0x68>
 307:	eb d0                	jmp    2d9 <putchar+0x53>
 309:	c3                   	ret

000000000000030a <clear_screen>:
 30a:	f3 0f 1e fa          	endbr64
 30e:	41 57                	push   %r15
 310:	41 56                	push   %r14
 312:	41 55                	push   %r13
 314:	41 54                	push   %r12
 316:	55                   	push   %rbp
 317:	53                   	push   %rbx
 318:	48 83 ec 10          	sub    $0x10,%rsp
 31c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 31c <clear_screen+0x12>
 323:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 32a:	00 00 00 
 32d:	4c 01 db             	add    %r11,%rbx
 330:	89 7c 24 04          	mov    %edi,0x4(%rsp)
 334:	89 74 24 08          	mov    %esi,0x8(%rsp)
 338:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 33f:	00 00 00 
 342:	8b 04 0b             	mov    (%rbx,%rcx,1),%eax
 345:	99                   	cltd
 346:	f7 7c 0b 10          	idivl  0x10(%rbx,%rcx,1)
 34a:	41 89 c6             	mov    %eax,%r14d
 34d:	8b 44 0b 04          	mov    0x4(%rbx,%rcx,1),%eax
 351:	99                   	cltd
 352:	f7 7c 0b 14          	idivl  0x14(%rbx,%rcx,1)
 356:	89 44 24 0c          	mov    %eax,0xc(%rsp)
 35a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
 360:	49 89 cc             	mov    %rcx,%r12
 363:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 36a:	00 00 00 
 36d:	4c 8d 3c 03          	lea    (%rbx,%rax,1),%r15
 371:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
 376:	7f 69                	jg     3e1 <clear_screen+0xd7>
 378:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 37f:	00 00 00 
 382:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 389:	00 
 38a:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 391:	00 
 392:	48 83 c4 10          	add    $0x10,%rsp
 396:	5b                   	pop    %rbx
 397:	5d                   	pop    %rbp
 398:	41 5c                	pop    %r12
 39a:	41 5d                	pop    %r13
 39c:	41 5e                	pop    %r14
 39e:	41 5f                	pop    %r15
 3a0:	c3                   	ret
 3a1:	44 89 e9             	mov    %r13d,%ecx
 3a4:	42 0f af 4c 23 14    	imul   0x14(%rbx,%r12,1),%ecx
 3aa:	89 ea                	mov    %ebp,%edx
 3ac:	42 0f af 54 23 10    	imul   0x10(%rbx,%r12,1),%edx
 3b2:	42 8b 34 23          	mov    (%rbx,%r12,1),%esi
 3b6:	4a 8b 7c 23 18       	mov    0x18(%rbx,%r12,1),%rdi
 3bb:	6a 20                	push   $0x20
 3bd:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
 3c2:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
 3c7:	41 ff d7             	call   *%r15
 3ca:	83 c5 01             	add    $0x1,%ebp
 3cd:	48 83 c4 08          	add    $0x8,%rsp
 3d1:	41 39 ee             	cmp    %ebp,%r14d
 3d4:	75 cb                	jne    3a1 <clear_screen+0x97>
 3d6:	41 83 c5 01          	add    $0x1,%r13d
 3da:	44 39 6c 24 0c       	cmp    %r13d,0xc(%rsp)
 3df:	74 97                	je     378 <clear_screen+0x6e>
 3e1:	bd 00 00 00 00       	mov    $0x0,%ebp
 3e6:	45 85 f6             	test   %r14d,%r14d
 3e9:	7f b6                	jg     3a1 <clear_screen+0x97>
 3eb:	eb e9                	jmp    3d6 <clear_screen+0xcc>

00000000000003ed <skip_atoi2>:
 3ed:	f3 0f 1e fa          	endbr64
 3f1:	48 8b 17             	mov    (%rdi),%rdx
 3f4:	0f b6 02             	movzbl (%rdx),%eax
 3f7:	8d 48 d0             	lea    -0x30(%rax),%ecx
 3fa:	80 f9 09             	cmp    $0x9,%cl
 3fd:	77 2b                	ja     42a <skip_atoi2+0x3d>
 3ff:	48 83 c2 01          	add    $0x1,%rdx
 403:	b9 00 00 00 00       	mov    $0x0,%ecx
 408:	48 89 17             	mov    %rdx,(%rdi)
 40b:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
 40e:	83 e8 30             	sub    $0x30,%eax
 411:	0f be c0             	movsbl %al,%eax
 414:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
 417:	0f b6 02             	movzbl (%rdx),%eax
 41a:	48 83 c2 01          	add    $0x1,%rdx
 41e:	8d 70 d0             	lea    -0x30(%rax),%esi
 421:	40 80 fe 09          	cmp    $0x9,%sil
 425:	76 e1                	jbe    408 <skip_atoi2+0x1b>
 427:	89 c8                	mov    %ecx,%eax
 429:	c3                   	ret
 42a:	b9 00 00 00 00       	mov    $0x0,%ecx
 42f:	eb f6                	jmp    427 <skip_atoi2+0x3a>

0000000000000431 <skip_atoi>:
 431:	f3 0f 1e fa          	endbr64
 435:	48 8b 17             	mov    (%rdi),%rdx
 438:	0f b6 02             	movzbl (%rdx),%eax
 43b:	8d 48 d0             	lea    -0x30(%rax),%ecx
 43e:	80 f9 09             	cmp    $0x9,%cl
 441:	77 2b                	ja     46e <skip_atoi+0x3d>
 443:	48 83 c2 01          	add    $0x1,%rdx
 447:	b9 00 00 00 00       	mov    $0x0,%ecx
 44c:	48 89 17             	mov    %rdx,(%rdi)
 44f:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
 452:	83 e8 30             	sub    $0x30,%eax
 455:	0f be c0             	movsbl %al,%eax
 458:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
 45b:	0f b6 02             	movzbl (%rdx),%eax
 45e:	48 83 c2 01          	add    $0x1,%rdx
 462:	8d 70 d0             	lea    -0x30(%rax),%esi
 465:	40 80 fe 09          	cmp    $0x9,%sil
 469:	76 e1                	jbe    44c <skip_atoi+0x1b>
 46b:	89 c8                	mov    %ecx,%eax
 46d:	c3                   	ret
 46e:	b9 00 00 00 00       	mov    $0x0,%ecx
 473:	eb f6                	jmp    46b <skip_atoi+0x3a>

0000000000000475 <vsprintf>:
 475:	f3 0f 1e fa          	endbr64
 479:	41 57                	push   %r15
 47b:	41 56                	push   %r14
 47d:	41 55                	push   %r13
 47f:	41 54                	push   %r12
 481:	55                   	push   %rbp
 482:	53                   	push   %rbx
 483:	48 83 ec 18          	sub    $0x18,%rsp
 487:	4c 8d 3d f9 ff ff ff 	lea    -0x7(%rip),%r15        # 487 <vsprintf+0x12>
 48e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 495:	00 00 00 
 498:	4d 01 df             	add    %r11,%r15
 49b:	48 89 3c 24          	mov    %rdi,(%rsp)
 49f:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 4a4:	0f b6 06             	movzbl (%rsi),%eax
 4a7:	84 c0                	test   %al,%al
 4a9:	0f 84 9d 06 00 00    	je     b4c <vsprintf+0x6d7>
 4af:	49 89 d5             	mov    %rdx,%r13
 4b2:	48 89 fb             	mov    %rdi,%rbx
 4b5:	4c 8d 25 00 00 00 00 	lea    0x0(%rip),%r12        # 4bc <vsprintf+0x47>
 4bc:	e9 92 04 00 00       	jmp    953 <vsprintf+0x4de>
 4c1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 4c6:	bd 00 00 00 00       	mov    $0x0,%ebp
 4cb:	eb 06                	jmp    4d3 <vsprintf+0x5e>
 4cd:	83 cd 10             	or     $0x10,%ebp
 4d0:	48 89 f2             	mov    %rsi,%rdx
 4d3:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 4d7:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
 4db:	8d 41 e0             	lea    -0x20(%rcx),%eax
 4de:	3c 10                	cmp    $0x10,%al
 4e0:	77 21                	ja     503 <vsprintf+0x8e>
 4e2:	0f b6 c0             	movzbl %al,%eax
 4e5:	4c 89 e7             	mov    %r12,%rdi
 4e8:	49 03 3c c4          	add    (%r12,%rax,8),%rdi
 4ec:	3e ff e7             	notrack jmp *%rdi
 4ef:	83 cd 04             	or     $0x4,%ebp
 4f2:	eb dc                	jmp    4d0 <vsprintf+0x5b>
 4f4:	83 cd 08             	or     $0x8,%ebp
 4f7:	eb d7                	jmp    4d0 <vsprintf+0x5b>
 4f9:	83 cd 20             	or     $0x20,%ebp
 4fc:	eb d2                	jmp    4d0 <vsprintf+0x5b>
 4fe:	83 cd 01             	or     $0x1,%ebp
 501:	eb cd                	jmp    4d0 <vsprintf+0x5b>
 503:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
 508:	8d 41 d0             	lea    -0x30(%rcx),%eax
 50b:	3c 09                	cmp    $0x9,%al
 50d:	76 77                	jbe    586 <vsprintf+0x111>
 50f:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
 515:	80 f9 2a             	cmp    $0x2a,%cl
 518:	0f 84 85 00 00 00    	je     5a3 <vsprintf+0x12e>
 51e:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 523:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
 529:	80 38 2e             	cmpb   $0x2e,(%rax)
 52c:	0f 84 b5 00 00 00    	je     5e7 <vsprintf+0x172>
 532:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 537:	0f b6 08             	movzbl (%rax),%ecx
 53a:	8d 51 b4             	lea    -0x4c(%rcx),%edx
 53d:	80 fa 2e             	cmp    $0x2e,%dl
 540:	0f 87 23 06 00 00    	ja     b69 <vsprintf+0x6f4>
 546:	48 bf 01 00 00 10 01 	movabs $0x400110000001,%rdi
 54d:	40 00 00 
 550:	48 0f a3 d7          	bt     %rdx,%rdi
 554:	0f 83 2f 06 00 00    	jae    b89 <vsprintf+0x714>
 55a:	0f be c9             	movsbl %cl,%ecx
 55d:	48 8d 50 01          	lea    0x1(%rax),%rdx
 561:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 566:	0f b6 40 01          	movzbl 0x1(%rax),%eax
 56a:	83 e8 25             	sub    $0x25,%eax
 56d:	3c 53                	cmp    $0x53,%al
 56f:	0f 87 a7 05 00 00    	ja     b1c <vsprintf+0x6a7>
 575:	0f b6 c0             	movzbl %al,%eax
 578:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 57f <vsprintf+0x10a>
 57f:	48 03 34 c6          	add    (%rsi,%rax,8),%rsi
 583:	3e ff e6             	notrack jmp *%rsi
 586:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 58b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 592:	00 00 00 
 595:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 599:	ff d0                	call   *%rax
 59b:	41 89 c6             	mov    %eax,%r14d
 59e:	e9 7b ff ff ff       	jmp    51e <vsprintf+0xa9>
 5a3:	48 83 c2 02          	add    $0x2,%rdx
 5a7:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 5ac:	41 8b 45 00          	mov    0x0(%r13),%eax
 5b0:	83 f8 2f             	cmp    $0x2f,%eax
 5b3:	77 24                	ja     5d9 <vsprintf+0x164>
 5b5:	89 c2                	mov    %eax,%edx
 5b7:	49 03 55 10          	add    0x10(%r13),%rdx
 5bb:	83 c0 08             	add    $0x8,%eax
 5be:	41 89 45 00          	mov    %eax,0x0(%r13)
 5c2:	44 8b 32             	mov    (%rdx),%r14d
 5c5:	45 85 f6             	test   %r14d,%r14d
 5c8:	0f 89 50 ff ff ff    	jns    51e <vsprintf+0xa9>
 5ce:	41 f7 de             	neg    %r14d
 5d1:	83 cd 10             	or     $0x10,%ebp
 5d4:	e9 45 ff ff ff       	jmp    51e <vsprintf+0xa9>
 5d9:	49 8b 55 08          	mov    0x8(%r13),%rdx
 5dd:	48 8d 42 08          	lea    0x8(%rdx),%rax
 5e1:	49 89 45 08          	mov    %rax,0x8(%r13)
 5e5:	eb db                	jmp    5c2 <vsprintf+0x14d>
 5e7:	48 8d 50 01          	lea    0x1(%rax),%rdx
 5eb:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 5f0:	0f b6 50 01          	movzbl 0x1(%rax),%edx
 5f4:	8d 4a d0             	lea    -0x30(%rdx),%ecx
 5f7:	80 f9 09             	cmp    $0x9,%cl
 5fa:	76 32                	jbe    62e <vsprintf+0x1b9>
 5fc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
 602:	80 fa 2a             	cmp    $0x2a,%dl
 605:	0f 85 27 ff ff ff    	jne    532 <vsprintf+0xbd>
 60b:	48 83 c0 02          	add    $0x2,%rax
 60f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 614:	41 8b 45 00          	mov    0x0(%r13),%eax
 618:	83 f8 2f             	cmp    $0x2f,%eax
 61b:	77 38                	ja     655 <vsprintf+0x1e0>
 61d:	89 c2                	mov    %eax,%edx
 61f:	49 03 55 10          	add    0x10(%r13),%rdx
 623:	83 c0 08             	add    $0x8,%eax
 626:	41 89 45 00          	mov    %eax,0x0(%r13)
 62a:	8b 02                	mov    (%rdx),%eax
 62c:	eb 15                	jmp    643 <vsprintf+0x1ce>
 62e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 633:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 63a:	00 00 00 
 63d:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 641:	ff d0                	call   *%rax
 643:	85 c0                	test   %eax,%eax
 645:	ba 00 00 00 00       	mov    $0x0,%edx
 64a:	0f 49 d0             	cmovns %eax,%edx
 64d:	41 89 d0             	mov    %edx,%r8d
 650:	e9 dd fe ff ff       	jmp    532 <vsprintf+0xbd>
 655:	49 8b 55 08          	mov    0x8(%r13),%rdx
 659:	48 8d 42 08          	lea    0x8(%rdx),%rax
 65d:	49 89 45 08          	mov    %rax,0x8(%r13)
 661:	eb c7                	jmp    62a <vsprintf+0x1b5>
 663:	83 e5 10             	and    $0x10,%ebp
 666:	74 4a                	je     6b2 <vsprintf+0x23d>
 668:	41 8b 45 00          	mov    0x0(%r13),%eax
 66c:	83 f8 2f             	cmp    $0x2f,%eax
 66f:	77 71                	ja     6e2 <vsprintf+0x26d>
 671:	89 c2                	mov    %eax,%edx
 673:	49 03 55 10          	add    0x10(%r13),%rdx
 677:	83 c0 08             	add    $0x8,%eax
 67a:	41 89 45 00          	mov    %eax,0x0(%r13)
 67e:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
 682:	8b 02                	mov    (%rdx),%eax
 684:	88 03                	mov    %al,(%rbx)
 686:	41 83 fe 01          	cmp    $0x1,%r14d
 68a:	0f 8e b4 04 00 00    	jle    b44 <vsprintf+0x6cf>
 690:	44 89 f2             	mov    %r14d,%edx
 693:	48 01 da             	add    %rbx,%rdx
 696:	48 89 c8             	mov    %rcx,%rax
 699:	48 83 c0 01          	add    $0x1,%rax
 69d:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
 6a1:	48 39 d0             	cmp    %rdx,%rax
 6a4:	75 f3                	jne    699 <vsprintf+0x224>
 6a6:	41 8d 5e ff          	lea    -0x1(%r14),%ebx
 6aa:	48 01 cb             	add    %rcx,%rbx
 6ad:	e9 87 02 00 00       	jmp    939 <vsprintf+0x4c4>
 6b2:	41 8d 46 ff          	lea    -0x1(%r14),%eax
 6b6:	85 c0                	test   %eax,%eax
 6b8:	7e 23                	jle    6dd <vsprintf+0x268>
 6ba:	41 8d 56 ff          	lea    -0x1(%r14),%edx
 6be:	48 01 da             	add    %rbx,%rdx
 6c1:	48 89 d8             	mov    %rbx,%rax
 6c4:	48 83 c0 01          	add    $0x1,%rax
 6c8:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
 6cc:	48 39 d0             	cmp    %rdx,%rax
 6cf:	75 f3                	jne    6c4 <vsprintf+0x24f>
 6d1:	41 8d 46 ff          	lea    -0x1(%r14),%eax
 6d5:	48 01 c3             	add    %rax,%rbx
 6d8:	41 89 ee             	mov    %ebp,%r14d
 6db:	eb 8b                	jmp    668 <vsprintf+0x1f3>
 6dd:	41 89 c6             	mov    %eax,%r14d
 6e0:	eb 86                	jmp    668 <vsprintf+0x1f3>
 6e2:	49 8b 55 08          	mov    0x8(%r13),%rdx
 6e6:	48 8d 42 08          	lea    0x8(%rdx),%rax
 6ea:	49 89 45 08          	mov    %rax,0x8(%r13)
 6ee:	eb 8e                	jmp    67e <vsprintf+0x209>
 6f0:	41 8b 45 00          	mov    0x0(%r13),%eax
 6f4:	83 f8 2f             	cmp    $0x2f,%eax
 6f7:	0f 87 97 00 00 00    	ja     794 <vsprintf+0x31f>
 6fd:	89 c2                	mov    %eax,%edx
 6ff:	49 03 55 10          	add    0x10(%r13),%rdx
 703:	83 c0 08             	add    $0x8,%eax
 706:	41 89 45 00          	mov    %eax,0x0(%r13)
 70a:	48 8b 32             	mov    (%rdx),%rsi
 70d:	80 3e 00             	cmpb   $0x0,(%rsi)
 710:	0f 84 8f 00 00 00    	je     7a5 <vsprintf+0x330>
 716:	48 89 f0             	mov    %rsi,%rax
 719:	48 83 c0 01          	add    $0x1,%rax
 71d:	80 38 00             	cmpb   $0x0,(%rax)
 720:	75 f7                	jne    719 <vsprintf+0x2a4>
 722:	48 29 f0             	sub    %rsi,%rax
 725:	89 c2                	mov    %eax,%edx
 727:	41 39 c0             	cmp    %eax,%r8d
 72a:	41 0f 4e d0          	cmovle %r8d,%edx
 72e:	45 85 c0             	test   %r8d,%r8d
 731:	0f 48 d0             	cmovs  %eax,%edx
 734:	40 f6 c5 10          	test   $0x10,%bpl
 738:	74 73                	je     7ad <vsprintf+0x338>
 73a:	85 d2                	test   %edx,%edx
 73c:	7e 1d                	jle    75b <vsprintf+0x2e6>
 73e:	48 63 fa             	movslq %edx,%rdi
 741:	b8 00 00 00 00       	mov    $0x0,%eax
 746:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
 74a:	88 0c 03             	mov    %cl,(%rbx,%rax,1)
 74d:	48 83 c0 01          	add    $0x1,%rax
 751:	48 39 f8             	cmp    %rdi,%rax
 754:	75 f0                	jne    746 <vsprintf+0x2d1>
 756:	89 d0                	mov    %edx,%eax
 758:	48 01 c3             	add    %rax,%rbx
 75b:	41 39 d6             	cmp    %edx,%r14d
 75e:	0f 8e d5 01 00 00    	jle    939 <vsprintf+0x4c4>
 764:	44 89 f6             	mov    %r14d,%esi
 767:	41 29 d6             	sub    %edx,%r14d
 76a:	41 8d 46 ff          	lea    -0x1(%r14),%eax
 76e:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
 773:	48 89 d8             	mov    %rbx,%rax
 776:	48 83 c0 01          	add    $0x1,%rax
 77a:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
 77e:	48 39 c8             	cmp    %rcx,%rax
 781:	75 f3                	jne    776 <vsprintf+0x301>
 783:	89 f0                	mov    %esi,%eax
 785:	29 d0                	sub    %edx,%eax
 787:	8d 40 ff             	lea    -0x1(%rax),%eax
 78a:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
 78f:	e9 a5 01 00 00       	jmp    939 <vsprintf+0x4c4>
 794:	49 8b 55 08          	mov    0x8(%r13),%rdx
 798:	48 8d 42 08          	lea    0x8(%rdx),%rax
 79c:	49 89 45 08          	mov    %rax,0x8(%r13)
 7a0:	e9 65 ff ff ff       	jmp    70a <vsprintf+0x295>
 7a5:	48 89 f0             	mov    %rsi,%rax
 7a8:	e9 75 ff ff ff       	jmp    722 <vsprintf+0x2ad>
 7ad:	41 8d 4e ff          	lea    -0x1(%r14),%ecx
 7b1:	41 39 d6             	cmp    %edx,%r14d
 7b4:	7e 2c                	jle    7e2 <vsprintf+0x36d>
 7b6:	44 89 f7             	mov    %r14d,%edi
 7b9:	41 89 ce             	mov    %ecx,%r14d
 7bc:	41 29 d6             	sub    %edx,%r14d
 7bf:	4a 8d 44 33 01       	lea    0x1(%rbx,%r14,1),%rax
 7c4:	48 83 c3 01          	add    $0x1,%rbx
 7c8:	c6 43 ff 20          	movb   $0x20,-0x1(%rbx)
 7cc:	48 39 c3             	cmp    %rax,%rbx
 7cf:	75 f3                	jne    7c4 <vsprintf+0x34f>
 7d1:	41 89 d6             	mov    %edx,%r14d
 7d4:	41 29 fe             	sub    %edi,%r14d
 7d7:	41 01 ce             	add    %ecx,%r14d
 7da:	48 89 c3             	mov    %rax,%rbx
 7dd:	e9 58 ff ff ff       	jmp    73a <vsprintf+0x2c5>
 7e2:	41 89 ce             	mov    %ecx,%r14d
 7e5:	e9 50 ff ff ff       	jmp    73a <vsprintf+0x2c5>
 7ea:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 7ef:	83 f9 6c             	cmp    $0x6c,%ecx
 7f2:	74 42                	je     836 <vsprintf+0x3c1>
 7f4:	41 8b 45 00          	mov    0x0(%r13),%eax
 7f8:	83 f8 2f             	cmp    $0x2f,%eax
 7fb:	0f 87 82 00 00 00    	ja     883 <vsprintf+0x40e>
 801:	89 c2                	mov    %eax,%edx
 803:	49 03 55 10          	add    0x10(%r13),%rdx
 807:	83 c0 08             	add    $0x8,%eax
 80a:	41 89 45 00          	mov    %eax,0x0(%r13)
 80e:	8b 32                	mov    (%rdx),%esi
 810:	41 89 e9             	mov    %ebp,%r9d
 813:	44 89 f1             	mov    %r14d,%ecx
 816:	ba 08 00 00 00       	mov    $0x8,%edx
 81b:	48 89 df             	mov    %rbx,%rdi
 81e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 825:	00 00 00 
 828:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 82c:	ff d0                	call   *%rax
 82e:	48 89 c3             	mov    %rax,%rbx
 831:	e9 03 01 00 00       	jmp    939 <vsprintf+0x4c4>
 836:	41 8b 45 00          	mov    0x0(%r13),%eax
 83a:	83 f8 2f             	cmp    $0x2f,%eax
 83d:	77 36                	ja     875 <vsprintf+0x400>
 83f:	89 c2                	mov    %eax,%edx
 841:	49 03 55 10          	add    0x10(%r13),%rdx
 845:	83 c0 08             	add    $0x8,%eax
 848:	41 89 45 00          	mov    %eax,0x0(%r13)
 84c:	48 8b 32             	mov    (%rdx),%rsi
 84f:	41 89 e9             	mov    %ebp,%r9d
 852:	44 89 f1             	mov    %r14d,%ecx
 855:	ba 08 00 00 00       	mov    $0x8,%edx
 85a:	48 89 df             	mov    %rbx,%rdi
 85d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 864:	00 00 00 
 867:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 86b:	ff d0                	call   *%rax
 86d:	48 89 c3             	mov    %rax,%rbx
 870:	e9 c4 00 00 00       	jmp    939 <vsprintf+0x4c4>
 875:	49 8b 55 08          	mov    0x8(%r13),%rdx
 879:	48 8d 42 08          	lea    0x8(%rdx),%rax
 87d:	49 89 45 08          	mov    %rax,0x8(%r13)
 881:	eb c9                	jmp    84c <vsprintf+0x3d7>
 883:	49 8b 55 08          	mov    0x8(%r13),%rdx
 887:	48 8d 42 08          	lea    0x8(%rdx),%rax
 88b:	49 89 45 08          	mov    %rax,0x8(%r13)
 88f:	e9 7a ff ff ff       	jmp    80e <vsprintf+0x399>
 894:	41 83 fe ff          	cmp    $0xffffffff,%r14d
 898:	74 3c                	je     8d6 <vsprintf+0x461>
 89a:	41 8b 45 00          	mov    0x0(%r13),%eax
 89e:	83 f8 2f             	cmp    $0x2f,%eax
 8a1:	77 3e                	ja     8e1 <vsprintf+0x46c>
 8a3:	89 c2                	mov    %eax,%edx
 8a5:	49 03 55 10          	add    0x10(%r13),%rdx
 8a9:	83 c0 08             	add    $0x8,%eax
 8ac:	41 89 45 00          	mov    %eax,0x0(%r13)
 8b0:	48 8b 32             	mov    (%rdx),%rsi
 8b3:	41 89 e9             	mov    %ebp,%r9d
 8b6:	44 89 f1             	mov    %r14d,%ecx
 8b9:	ba 10 00 00 00       	mov    $0x10,%edx
 8be:	48 89 df             	mov    %rbx,%rdi
 8c1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 8c8:	00 00 00 
 8cb:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 8cf:	ff d0                	call   *%rax
 8d1:	48 89 c3             	mov    %rax,%rbx
 8d4:	eb 63                	jmp    939 <vsprintf+0x4c4>
 8d6:	83 cd 01             	or     $0x1,%ebp
 8d9:	41 be 10 00 00 00    	mov    $0x10,%r14d
 8df:	eb b9                	jmp    89a <vsprintf+0x425>
 8e1:	49 8b 55 08          	mov    0x8(%r13),%rdx
 8e5:	48 8d 42 08          	lea    0x8(%rdx),%rax
 8e9:	49 89 45 08          	mov    %rax,0x8(%r13)
 8ed:	eb c1                	jmp    8b0 <vsprintf+0x43b>
 8ef:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8f4:	83 cd 40             	or     $0x40,%ebp
 8f7:	83 f9 6c             	cmp    $0x6c,%ecx
 8fa:	74 75                	je     971 <vsprintf+0x4fc>
 8fc:	41 8b 45 00          	mov    0x0(%r13),%eax
 900:	83 f8 2f             	cmp    $0x2f,%eax
 903:	0f 87 b2 00 00 00    	ja     9bb <vsprintf+0x546>
 909:	89 c2                	mov    %eax,%edx
 90b:	49 03 55 10          	add    0x10(%r13),%rdx
 90f:	83 c0 08             	add    $0x8,%eax
 912:	41 89 45 00          	mov    %eax,0x0(%r13)
 916:	8b 32                	mov    (%rdx),%esi
 918:	41 89 e9             	mov    %ebp,%r9d
 91b:	44 89 f1             	mov    %r14d,%ecx
 91e:	ba 10 00 00 00       	mov    $0x10,%edx
 923:	48 89 df             	mov    %rbx,%rdi
 926:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 92d:	00 00 00 
 930:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 934:	ff d0                	call   *%rax
 936:	48 89 c3             	mov    %rax,%rbx
 939:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 93e:	48 8d 50 01          	lea    0x1(%rax),%rdx
 942:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 947:	0f b6 40 01          	movzbl 0x1(%rax),%eax
 94b:	84 c0                	test   %al,%al
 94d:	0f 84 fd 01 00 00    	je     b50 <vsprintf+0x6db>
 953:	3c 25                	cmp    $0x25,%al
 955:	0f 84 66 fb ff ff    	je     4c1 <vsprintf+0x4c>
 95b:	88 03                	mov    %al,(%rbx)
 95d:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
 961:	eb d6                	jmp    939 <vsprintf+0x4c4>
 963:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 968:	eb 8a                	jmp    8f4 <vsprintf+0x47f>
 96a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 96f:	eb 86                	jmp    8f7 <vsprintf+0x482>
 971:	41 8b 45 00          	mov    0x0(%r13),%eax
 975:	83 f8 2f             	cmp    $0x2f,%eax
 978:	77 33                	ja     9ad <vsprintf+0x538>
 97a:	89 c2                	mov    %eax,%edx
 97c:	49 03 55 10          	add    0x10(%r13),%rdx
 980:	83 c0 08             	add    $0x8,%eax
 983:	41 89 45 00          	mov    %eax,0x0(%r13)
 987:	48 8b 32             	mov    (%rdx),%rsi
 98a:	41 89 e9             	mov    %ebp,%r9d
 98d:	44 89 f1             	mov    %r14d,%ecx
 990:	ba 10 00 00 00       	mov    $0x10,%edx
 995:	48 89 df             	mov    %rbx,%rdi
 998:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 99f:	00 00 00 
 9a2:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 9a6:	ff d0                	call   *%rax
 9a8:	48 89 c3             	mov    %rax,%rbx
 9ab:	eb 8c                	jmp    939 <vsprintf+0x4c4>
 9ad:	49 8b 55 08          	mov    0x8(%r13),%rdx
 9b1:	48 8d 42 08          	lea    0x8(%rdx),%rax
 9b5:	49 89 45 08          	mov    %rax,0x8(%r13)
 9b9:	eb cc                	jmp    987 <vsprintf+0x512>
 9bb:	49 8b 55 08          	mov    0x8(%r13),%rdx
 9bf:	48 8d 42 08          	lea    0x8(%rdx),%rax
 9c3:	49 89 45 08          	mov    %rax,0x8(%r13)
 9c7:	e9 4a ff ff ff       	jmp    916 <vsprintf+0x4a1>
 9cc:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 9d1:	83 cd 02             	or     $0x2,%ebp
 9d4:	83 f9 6c             	cmp    $0x6c,%ecx
 9d7:	74 57                	je     a30 <vsprintf+0x5bb>
 9d9:	41 8b 45 00          	mov    0x0(%r13),%eax
 9dd:	83 f8 2f             	cmp    $0x2f,%eax
 9e0:	0f 87 97 00 00 00    	ja     a7d <vsprintf+0x608>
 9e6:	89 c2                	mov    %eax,%edx
 9e8:	49 03 55 10          	add    0x10(%r13),%rdx
 9ec:	83 c0 08             	add    $0x8,%eax
 9ef:	41 89 45 00          	mov    %eax,0x0(%r13)
 9f3:	8b 32                	mov    (%rdx),%esi
 9f5:	41 89 e9             	mov    %ebp,%r9d
 9f8:	44 89 f1             	mov    %r14d,%ecx
 9fb:	ba 0a 00 00 00       	mov    $0xa,%edx
 a00:	48 89 df             	mov    %rbx,%rdi
 a03:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 a0a:	00 00 00 
 a0d:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 a11:	ff d0                	call   *%rax
 a13:	48 89 c3             	mov    %rax,%rbx
 a16:	e9 1e ff ff ff       	jmp    939 <vsprintf+0x4c4>
 a1b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 a20:	eb af                	jmp    9d1 <vsprintf+0x55c>
 a22:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 a27:	eb ab                	jmp    9d4 <vsprintf+0x55f>
 a29:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 a2e:	eb a4                	jmp    9d4 <vsprintf+0x55f>
 a30:	41 8b 45 00          	mov    0x0(%r13),%eax
 a34:	83 f8 2f             	cmp    $0x2f,%eax
 a37:	77 36                	ja     a6f <vsprintf+0x5fa>
 a39:	89 c2                	mov    %eax,%edx
 a3b:	49 03 55 10          	add    0x10(%r13),%rdx
 a3f:	83 c0 08             	add    $0x8,%eax
 a42:	41 89 45 00          	mov    %eax,0x0(%r13)
 a46:	48 8b 32             	mov    (%rdx),%rsi
 a49:	41 89 e9             	mov    %ebp,%r9d
 a4c:	44 89 f1             	mov    %r14d,%ecx
 a4f:	ba 0a 00 00 00       	mov    $0xa,%edx
 a54:	48 89 df             	mov    %rbx,%rdi
 a57:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 a5e:	00 00 00 
 a61:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
 a65:	ff d0                	call   *%rax
 a67:	48 89 c3             	mov    %rax,%rbx
 a6a:	e9 ca fe ff ff       	jmp    939 <vsprintf+0x4c4>
 a6f:	49 8b 55 08          	mov    0x8(%r13),%rdx
 a73:	48 8d 42 08          	lea    0x8(%rdx),%rax
 a77:	49 89 45 08          	mov    %rax,0x8(%r13)
 a7b:	eb c9                	jmp    a46 <vsprintf+0x5d1>
 a7d:	49 8b 55 08          	mov    0x8(%r13),%rdx
 a81:	48 8d 42 08          	lea    0x8(%rdx),%rax
 a85:	49 89 45 08          	mov    %rax,0x8(%r13)
 a89:	e9 65 ff ff ff       	jmp    9f3 <vsprintf+0x57e>
 a8e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 a93:	83 f9 6c             	cmp    $0x6c,%ecx
 a96:	74 31                	je     ac9 <vsprintf+0x654>
 a98:	41 8b 45 00          	mov    0x0(%r13),%eax
 a9c:	83 f8 2f             	cmp    $0x2f,%eax
 a9f:	77 61                	ja     b02 <vsprintf+0x68d>
 aa1:	89 c2                	mov    %eax,%edx
 aa3:	49 03 55 10          	add    0x10(%r13),%rdx
 aa7:	83 c0 08             	add    $0x8,%eax
 aaa:	41 89 45 00          	mov    %eax,0x0(%r13)
 aae:	48 8b 02             	mov    (%rdx),%rax
 ab1:	48 89 da             	mov    %rbx,%rdx
 ab4:	48 8b 34 24          	mov    (%rsp),%rsi
 ab8:	48 29 f2             	sub    %rsi,%rdx
 abb:	89 10                	mov    %edx,(%rax)
 abd:	e9 77 fe ff ff       	jmp    939 <vsprintf+0x4c4>
 ac2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 ac7:	eb ca                	jmp    a93 <vsprintf+0x61e>
 ac9:	41 8b 45 00          	mov    0x0(%r13),%eax
 acd:	83 f8 2f             	cmp    $0x2f,%eax
 ad0:	77 22                	ja     af4 <vsprintf+0x67f>
 ad2:	89 c2                	mov    %eax,%edx
 ad4:	49 03 55 10          	add    0x10(%r13),%rdx
 ad8:	83 c0 08             	add    $0x8,%eax
 adb:	41 89 45 00          	mov    %eax,0x0(%r13)
 adf:	48 8b 02             	mov    (%rdx),%rax
 ae2:	48 89 da             	mov    %rbx,%rdx
 ae5:	48 8b 34 24          	mov    (%rsp),%rsi
 ae9:	48 29 f2             	sub    %rsi,%rdx
 aec:	48 89 10             	mov    %rdx,(%rax)
 aef:	e9 45 fe ff ff       	jmp    939 <vsprintf+0x4c4>
 af4:	49 8b 55 08          	mov    0x8(%r13),%rdx
 af8:	48 8d 42 08          	lea    0x8(%rdx),%rax
 afc:	49 89 45 08          	mov    %rax,0x8(%r13)
 b00:	eb dd                	jmp    adf <vsprintf+0x66a>
 b02:	49 8b 55 08          	mov    0x8(%r13),%rdx
 b06:	48 8d 42 08          	lea    0x8(%rdx),%rax
 b0a:	49 89 45 08          	mov    %rax,0x8(%r13)
 b0e:	eb 9e                	jmp    aae <vsprintf+0x639>
 b10:	c6 03 25             	movb   $0x25,(%rbx)
 b13:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
 b17:	e9 1d fe ff ff       	jmp    939 <vsprintf+0x4c4>
 b1c:	c6 03 25             	movb   $0x25,(%rbx)
 b1f:	0f b6 02             	movzbl (%rdx),%eax
 b22:	84 c0                	test   %al,%al
 b24:	74 0c                	je     b32 <vsprintf+0x6bd>
 b26:	88 43 01             	mov    %al,0x1(%rbx)
 b29:	48 8d 5b 02          	lea    0x2(%rbx),%rbx
 b2d:	e9 07 fe ff ff       	jmp    939 <vsprintf+0x4c4>
 b32:	48 83 c3 01          	add    $0x1,%rbx
 b36:	48 83 ea 01          	sub    $0x1,%rdx
 b3a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 b3f:	e9 f5 fd ff ff       	jmp    939 <vsprintf+0x4c4>
 b44:	48 89 cb             	mov    %rcx,%rbx
 b47:	e9 ed fd ff ff       	jmp    939 <vsprintf+0x4c4>
 b4c:	48 8b 1c 24          	mov    (%rsp),%rbx
 b50:	c6 03 00             	movb   $0x0,(%rbx)
 b53:	89 d8                	mov    %ebx,%eax
 b55:	8b 1c 24             	mov    (%rsp),%ebx
 b58:	29 d8                	sub    %ebx,%eax
 b5a:	48 83 c4 18          	add    $0x18,%rsp
 b5e:	5b                   	pop    %rbx
 b5f:	5d                   	pop    %rbp
 b60:	41 5c                	pop    %r12
 b62:	41 5d                	pop    %r13
 b64:	41 5e                	pop    %r14
 b66:	41 5f                	pop    %r15
 b68:	c3                   	ret
 b69:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 b6e:	0f b6 02             	movzbl (%rdx),%eax
 b71:	83 e8 25             	sub    $0x25,%eax
 b74:	3c 53                	cmp    $0x53,%al
 b76:	77 a4                	ja     b1c <vsprintf+0x6a7>
 b78:	0f b6 c0             	movzbl %al,%eax
 b7b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # b82 <vsprintf+0x70d>
 b82:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
 b86:	3e ff e1             	notrack jmp *%rcx
 b89:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
 b8e:	0f b6 02             	movzbl (%rdx),%eax
 b91:	83 e8 25             	sub    $0x25,%eax
 b94:	3c 53                	cmp    $0x53,%al
 b96:	77 84                	ja     b1c <vsprintf+0x6a7>
 b98:	0f b6 c0             	movzbl %al,%eax
 b9b:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # ba2 <vsprintf+0x72d>
 ba2:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
 ba6:	3e ff e1             	notrack jmp *%rcx

0000000000000ba9 <color_printk>:
 ba9:	f3 0f 1e fa          	endbr64
 bad:	41 57                	push   %r15
 baf:	41 56                	push   %r14
 bb1:	41 55                	push   %r13
 bb3:	41 54                	push   %r12
 bb5:	55                   	push   %rbp
 bb6:	53                   	push   %rbx
 bb7:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
 bbe:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # bbe <color_printk+0x15>
 bc5:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 bcc:	00 00 00 
 bcf:	4c 01 db             	add    %r11,%rbx
 bd2:	89 3c 24             	mov    %edi,(%rsp)
 bd5:	89 74 24 04          	mov    %esi,0x4(%rsp)
 bd9:	48 89 d6             	mov    %rdx,%rsi
 bdc:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
 be1:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
 be6:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
 beb:	84 c0                	test   %al,%al
 bed:	74 3a                	je     c29 <color_printk+0x80>
 bef:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
 bf4:	0f 29 4c 24 70       	movaps %xmm1,0x70(%rsp)
 bf9:	0f 29 94 24 80 00 00 	movaps %xmm2,0x80(%rsp)
 c00:	00 
 c01:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
 c08:	00 
 c09:	0f 29 a4 24 a0 00 00 	movaps %xmm4,0xa0(%rsp)
 c10:	00 
 c11:	0f 29 ac 24 b0 00 00 	movaps %xmm5,0xb0(%rsp)
 c18:	00 
 c19:	0f 29 b4 24 c0 00 00 	movaps %xmm6,0xc0(%rsp)
 c20:	00 
 c21:	0f 29 bc 24 d0 00 00 	movaps %xmm7,0xd0(%rsp)
 c28:	00 
 c29:	c7 44 24 18 18 00 00 	movl   $0x18,0x18(%rsp)
 c30:	00 
 c31:	c7 44 24 1c 30 00 00 	movl   $0x30,0x1c(%rsp)
 c38:	00 
 c39:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
 c40:	00 
 c41:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 c46:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
 c4b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
 c50:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
 c55:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c5c:	00 00 00 
 c5f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
 c63:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c6a:	00 00 00 
 c6d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 c71:	ff d0                	call   *%rax
 c73:	41 89 c6             	mov    %eax,%r14d
 c76:	85 c0                	test   %eax,%eax
 c78:	0f 8e cf 01 00 00    	jle    e4d <color_printk+0x2a4>
 c7e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
 c84:	41 bc 00 00 00 00    	mov    $0x0,%r12d
 c8a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c91:	00 00 00 
 c94:	48 01 d8             	add    %rbx,%rax
 c97:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 c9c:	48 bd 00 00 00 00 00 	movabs $0x0,%rbp
 ca3:	00 00 00 
 ca6:	49 bf 00 00 00 00 00 	movabs $0x0,%r15
 cad:	00 00 00 
 cb0:	e9 85 00 00 00       	jmp    d3a <color_printk+0x191>
 cb5:	41 83 ec 01          	sub    $0x1,%r12d
 cb9:	41 83 ed 01          	sub    $0x1,%r13d
 cbd:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
 cc1:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
 cc6:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
 cca:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
 ccf:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
 cd2:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
 cd7:	48 83 ec 08          	sub    $0x8,%rsp
 cdb:	6a 20                	push   $0x20
 cdd:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
 ce2:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
 ce7:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
 ceb:	ff d0                	call   *%rax
 ced:	83 44 1d 08 01       	addl   $0x1,0x8(%rbp,%rbx,1)
 cf2:	48 83 c4 10          	add    $0x10,%rsp
 cf6:	8b 04 2b             	mov    (%rbx,%rbp,1),%eax
 cf9:	99                   	cltd
 cfa:	f7 7c 2b 10          	idivl  0x10(%rbx,%rbp,1)
 cfe:	39 44 2b 08          	cmp    %eax,0x8(%rbx,%rbp,1)
 d02:	7c 0d                	jl     d11 <color_printk+0x168>
 d04:	83 44 1d 0c 01       	addl   $0x1,0xc(%rbp,%rbx,1)
 d09:	c7 44 2b 08 00 00 00 	movl   $0x0,0x8(%rbx,%rbp,1)
 d10:	00 
 d11:	8b 44 2b 04          	mov    0x4(%rbx,%rbp,1),%eax
 d15:	99                   	cltd
 d16:	f7 7c 2b 14          	idivl  0x14(%rbx,%rbp,1)
 d1a:	39 44 2b 0c          	cmp    %eax,0xc(%rbx,%rbp,1)
 d1e:	7c 08                	jl     d28 <color_printk+0x17f>
 d20:	c7 44 2b 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rbp,1)
 d27:	00 
 d28:	41 83 c4 01          	add    $0x1,%r12d
 d2c:	45 39 e6             	cmp    %r12d,%r14d
 d2f:	7f 09                	jg     d3a <color_printk+0x191>
 d31:	45 85 ed             	test   %r13d,%r13d
 d34:	0f 84 13 01 00 00    	je     e4d <color_printk+0x2a4>
 d3a:	45 85 ed             	test   %r13d,%r13d
 d3d:	0f 8f 72 ff ff ff    	jg     cb5 <color_printk+0x10c>
 d43:	49 63 c4             	movslq %r12d,%rax
 d46:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
 d4b:	0f b6 04 38          	movzbl (%rax,%rdi,1),%eax
 d4f:	3c 0a                	cmp    $0xa,%al
 d51:	74 20                	je     d73 <color_printk+0x1ca>
 d53:	3c 08                	cmp    $0x8,%al
 d55:	74 2e                	je     d85 <color_printk+0x1dc>
 d57:	3c 09                	cmp    $0x9,%al
 d59:	0f 85 ae 00 00 00    	jne    e0d <color_printk+0x264>
 d5f:	8b 44 2b 08          	mov    0x8(%rbx,%rbp,1),%eax
 d63:	44 8d 68 08          	lea    0x8(%rax),%r13d
 d67:	41 83 e5 f8          	and    $0xfffffff8,%r13d
 d6b:	41 29 c5             	sub    %eax,%r13d
 d6e:	e9 46 ff ff ff       	jmp    cb9 <color_printk+0x110>
 d73:	83 44 1d 0c 01       	addl   $0x1,0xc(%rbp,%rbx,1)
 d78:	c7 44 2b 08 00 00 00 	movl   $0x0,0x8(%rbx,%rbp,1)
 d7f:	00 
 d80:	e9 71 ff ff ff       	jmp    cf6 <color_printk+0x14d>
 d85:	8b 44 2b 08          	mov    0x8(%rbx,%rbp,1),%eax
 d89:	83 e8 01             	sub    $0x1,%eax
 d8c:	89 44 2b 08          	mov    %eax,0x8(%rbx,%rbp,1)
 d90:	78 39                	js     dcb <color_printk+0x222>
 d92:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
 d96:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
 d9b:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
 d9f:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
 da4:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
 da7:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
 dac:	48 83 ec 08          	sub    $0x8,%rsp
 db0:	6a 20                	push   $0x20
 db2:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
 db7:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
 dbc:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
 dc0:	ff d0                	call   *%rax
 dc2:	48 83 c4 10          	add    $0x10,%rsp
 dc6:	e9 2b ff ff ff       	jmp    cf6 <color_printk+0x14d>
 dcb:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 dd2:	00 00 00 
 dd5:	8b 74 0b 10          	mov    0x10(%rbx,%rcx,1),%esi
 dd9:	8b 04 0b             	mov    (%rbx,%rcx,1),%eax
 ddc:	99                   	cltd
 ddd:	f7 fe                	idiv   %esi
 ddf:	83 e8 01             	sub    $0x1,%eax
 de2:	0f af c6             	imul   %esi,%eax
 de5:	89 44 0b 08          	mov    %eax,0x8(%rbx,%rcx,1)
 de9:	8b 44 0b 0c          	mov    0xc(%rbx,%rcx,1),%eax
 ded:	83 e8 01             	sub    $0x1,%eax
 df0:	89 44 0b 0c          	mov    %eax,0xc(%rbx,%rcx,1)
 df4:	79 9c                	jns    d92 <color_printk+0x1e9>
 df6:	8b 74 0b 14          	mov    0x14(%rbx,%rcx,1),%esi
 dfa:	8b 44 0b 04          	mov    0x4(%rbx,%rcx,1),%eax
 dfe:	99                   	cltd
 dff:	f7 fe                	idiv   %esi
 e01:	83 e8 01             	sub    $0x1,%eax
 e04:	0f af c6             	imul   %esi,%eax
 e07:	89 44 0b 0c          	mov    %eax,0xc(%rbx,%rcx,1)
 e0b:	eb 85                	jmp    d92 <color_printk+0x1e9>
 e0d:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
 e11:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
 e16:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
 e1a:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
 e1f:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
 e22:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
 e27:	48 83 ec 08          	sub    $0x8,%rsp
 e2b:	0f b6 c0             	movzbl %al,%eax
 e2e:	50                   	push   %rax
 e2f:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
 e34:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
 e39:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
 e3d:	ff d0                	call   *%rax
 e3f:	83 44 1d 08 01       	addl   $0x1,0x8(%rbp,%rbx,1)
 e44:	48 83 c4 10          	add    $0x10,%rsp
 e48:	e9 a9 fe ff ff       	jmp    cf6 <color_printk+0x14d>
 e4d:	44 89 f0             	mov    %r14d,%eax
 e50:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
 e57:	5b                   	pop    %rbx
 e58:	5d                   	pop    %rbp
 e59:	41 5c                	pop    %r12
 e5b:	41 5d                	pop    %r13
 e5d:	41 5e                	pop    %r14
 e5f:	41 5f                	pop    %r15
 e61:	c3                   	ret
