
memory.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Cmemset>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8 <Cmemset+0x8>
   f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  16:	00 00 00 
  19:	4c 01 d8             	add    %r11,%rax
  1c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  20:	89 f0                	mov    %esi,%eax
  22:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  26:	88 45 d4             	mov    %al,-0x2c(%rbp)
  29:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  2d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  31:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
  35:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  39:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3d:	48 c1 e0 08          	shl    $0x8,%rax
  41:	48 09 45 e8          	or     %rax,-0x18(%rbp)
  45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  49:	48 c1 e0 10          	shl    $0x10,%rax
  4d:	48 09 45 e8          	or     %rax,-0x18(%rbp)
  51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  55:	48 c1 e0 20          	shl    $0x20,%rax
  59:	48 09 45 e8          	or     %rax,-0x18(%rbp)
  5d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  61:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  65:	eb 15                	jmp    7c <Cmemset+0x7c>
  67:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  6f:	48 89 10             	mov    %rdx,(%rax)
  72:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
  77:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
  7c:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
  81:	7f e4                	jg     67 <Cmemset+0x67>
  83:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  87:	83 e0 04             	and    $0x4,%eax
  8a:	48 85 c0             	test   %rax,%rax
  8d:	74 11                	je     a0 <Cmemset+0xa0>
  8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  93:	89 c2                	mov    %eax,%edx
  95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  99:	89 10                	mov    %edx,(%rax)
  9b:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
  a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  a4:	83 e0 02             	and    $0x2,%eax
  a7:	48 85 c0             	test   %rax,%rax
  aa:	74 12                	je     be <Cmemset+0xbe>
  ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  b0:	89 c2                	mov    %eax,%edx
  b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  b6:	66 89 10             	mov    %dx,(%rax)
  b9:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
  be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  c2:	83 e0 01             	and    $0x1,%eax
  c5:	48 85 c0             	test   %rax,%rax
  c8:	74 0a                	je     d4 <Cmemset+0xd4>
  ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  ce:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
  d2:	88 10                	mov    %dl,(%rax)
  d4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  d8:	5d                   	pop    %rbp
  d9:	c3                   	ret

00000000000000da <init_memory>:
  da:	f3 0f 1e fa          	endbr64
  de:	55                   	push   %rbp
  df:	48 89 e5             	mov    %rsp,%rbp
  e2:	41 57                	push   %r15
  e4:	53                   	push   %rbx
  e5:	48 83 ec 60          	sub    $0x60,%rsp
  e9:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # e9 <init_memory+0xf>
  f0:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  f7:	00 00 00 
  fa:	4c 01 db             	add    %r11,%rbx
  fd:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 104:	00 
 105:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 10c:	00 
 10d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 114:	00 00 00 
 117:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 11b:	48 89 c2             	mov    %rax,%rdx
 11e:	be 00 00 00 00       	mov    $0x0,%esi
 123:	bf ff 00 00 00       	mov    $0xff,%edi
 128:	49 89 df             	mov    %rbx,%r15
 12b:	b8 00 00 00 00       	mov    $0x0,%eax
 130:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 137:	00 00 00 
 13a:	48 01 d9             	add    %rbx,%rcx
 13d:	ff d1                	call   *%rcx
 13f:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
 146:	80 ff ff 
 149:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 14d:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
 154:	e9 a2 01 00 00       	jmp    2fb <init_memory+0x221>
 159:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 15d:	8b 48 10             	mov    0x10(%rax),%ecx
 160:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 164:	48 8b 50 08          	mov    0x8(%rax),%rdx
 168:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 16c:	48 8b 00             	mov    (%rax),%rax
 16f:	41 89 c9             	mov    %ecx,%r9d
 172:	49 89 d0             	mov    %rdx,%r8
 175:	48 89 c1             	mov    %rax,%rcx
 178:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 17f:	00 00 00 
 182:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 186:	48 89 c2             	mov    %rax,%rdx
 189:	be 00 00 00 00       	mov    $0x0,%esi
 18e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 193:	49 89 df             	mov    %rbx,%r15
 196:	b8 00 00 00 00       	mov    $0x0,%eax
 19b:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 1a2:	00 00 00 
 1a5:	49 01 da             	add    %rbx,%r10
 1a8:	41 ff d2             	call   *%r10
 1ab:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
 1b2:	00 
 1b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1b7:	8b 40 10             	mov    0x10(%rax),%eax
 1ba:	83 f8 01             	cmp    $0x1,%eax
 1bd:	75 0c                	jne    1cb <init_memory+0xf1>
 1bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1c3:	48 8b 40 08          	mov    0x8(%rax),%rax
 1c7:	48 01 45 e0          	add    %rax,-0x20(%rbp)
 1cb:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 1d2:	00 00 00 
 1d5:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1d8:	48 63 d0             	movslq %eax,%rdx
 1db:	48 01 d9             	add    %rbx,%rcx
 1de:	48 89 d0             	mov    %rdx,%rax
 1e1:	48 c1 e0 02          	shl    $0x2,%rax
 1e5:	48 01 d0             	add    %rdx,%rax
 1e8:	48 c1 e0 02          	shl    $0x2,%rax
 1ec:	48 01 c8             	add    %rcx,%rax
 1ef:	48 8b 10             	mov    (%rax),%rdx
 1f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1f6:	48 8b 00             	mov    (%rax),%rax
 1f9:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 1fd:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 204:	00 00 00 
 207:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 20a:	48 63 d0             	movslq %eax,%rdx
 20d:	48 01 de             	add    %rbx,%rsi
 210:	48 89 d0             	mov    %rdx,%rax
 213:	48 c1 e0 02          	shl    $0x2,%rax
 217:	48 01 d0             	add    %rdx,%rax
 21a:	48 c1 e0 02          	shl    $0x2,%rax
 21e:	48 01 f0             	add    %rsi,%rax
 221:	48 89 08             	mov    %rcx,(%rax)
 224:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 22b:	00 00 00 
 22e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 231:	48 63 d0             	movslq %eax,%rdx
 234:	48 89 d0             	mov    %rdx,%rax
 237:	48 c1 e0 02          	shl    $0x2,%rax
 23b:	48 01 d0             	add    %rdx,%rax
 23e:	48 c1 e0 02          	shl    $0x2,%rax
 242:	48 01 d8             	add    %rbx,%rax
 245:	48 01 c8             	add    %rcx,%rax
 248:	48 83 c0 08          	add    $0x8,%rax
 24c:	48 8b 10             	mov    (%rax),%rdx
 24f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 253:	48 8b 40 08          	mov    0x8(%rax),%rax
 257:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 25b:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 262:	00 00 00 
 265:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 268:	48 63 d0             	movslq %eax,%rdx
 26b:	48 89 d0             	mov    %rdx,%rax
 26e:	48 c1 e0 02          	shl    $0x2,%rax
 272:	48 01 d0             	add    %rdx,%rax
 275:	48 c1 e0 02          	shl    $0x2,%rax
 279:	48 01 d8             	add    %rbx,%rax
 27c:	48 01 f0             	add    %rsi,%rax
 27f:	48 83 c0 08          	add    $0x8,%rax
 283:	48 89 08             	mov    %rcx,(%rax)
 286:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 28a:	8b 48 10             	mov    0x10(%rax),%ecx
 28d:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 294:	00 00 00 
 297:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 29a:	48 63 d0             	movslq %eax,%rdx
 29d:	48 01 de             	add    %rbx,%rsi
 2a0:	48 89 d0             	mov    %rdx,%rax
 2a3:	48 c1 e0 02          	shl    $0x2,%rax
 2a7:	48 01 d0             	add    %rdx,%rax
 2aa:	48 c1 e0 02          	shl    $0x2,%rax
 2ae:	48 01 f0             	add    %rsi,%rax
 2b1:	48 83 c0 10          	add    $0x10,%rax
 2b5:	89 08                	mov    %ecx,(%rax)
 2b7:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 2ba:	48 98                	cltq
 2bc:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2c3:	00 00 00 
 2c6:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
 2cd:	00 
 2ce:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
 2d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2d7:	8b 40 10             	mov    0x10(%rax),%eax
 2da:	83 f8 04             	cmp    $0x4,%eax
 2dd:	77 26                	ja     305 <init_memory+0x22b>
 2df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2e3:	48 8b 40 08          	mov    0x8(%rax),%rax
 2e7:	48 85 c0             	test   %rax,%rax
 2ea:	74 19                	je     305 <init_memory+0x22b>
 2ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 2f0:	8b 40 10             	mov    0x10(%rax),%eax
 2f3:	85 c0                	test   %eax,%eax
 2f5:	74 0e                	je     305 <init_memory+0x22b>
 2f7:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
 2fb:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
 2ff:	0f 8e 54 fe ff ff    	jle    159 <init_memory+0x7f>
 305:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 309:	48 89 c1             	mov    %rax,%rcx
 30c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 313:	00 00 00 
 316:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 31a:	48 89 c2             	mov    %rax,%rdx
 31d:	be 00 00 00 00       	mov    $0x0,%esi
 322:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 327:	49 89 df             	mov    %rbx,%r15
 32a:	b8 00 00 00 00       	mov    $0x0,%eax
 32f:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 336:	00 00 00 
 339:	49 01 d8             	add    %rbx,%r8
 33c:	41 ff d0             	call   *%r8
 33f:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 346:	00 
 347:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 34e:	e9 ed 00 00 00       	jmp    440 <init_memory+0x366>
 353:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 35a:	00 00 00 
 35d:	8b 45 ec             	mov    -0x14(%rbp),%eax
 360:	48 63 d0             	movslq %eax,%rdx
 363:	48 01 d9             	add    %rbx,%rcx
 366:	48 89 d0             	mov    %rdx,%rax
 369:	48 c1 e0 02          	shl    $0x2,%rax
 36d:	48 01 d0             	add    %rdx,%rax
 370:	48 c1 e0 02          	shl    $0x2,%rax
 374:	48 01 c8             	add    %rcx,%rax
 377:	48 83 c0 10          	add    $0x10,%rax
 37b:	8b 00                	mov    (%rax),%eax
 37d:	83 f8 01             	cmp    $0x1,%eax
 380:	0f 85 b2 00 00 00    	jne    438 <init_memory+0x35e>
 386:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 38d:	00 00 00 
 390:	8b 45 ec             	mov    -0x14(%rbp),%eax
 393:	48 63 d0             	movslq %eax,%rdx
 396:	48 01 d9             	add    %rbx,%rcx
 399:	48 89 d0             	mov    %rdx,%rax
 39c:	48 c1 e0 02          	shl    $0x2,%rax
 3a0:	48 01 d0             	add    %rdx,%rax
 3a3:	48 c1 e0 02          	shl    $0x2,%rax
 3a7:	48 01 c8             	add    %rcx,%rax
 3aa:	48 8b 00             	mov    (%rax),%rax
 3ad:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
 3b3:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 3b9:	48 89 45 98          	mov    %rax,-0x68(%rbp)
 3bd:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3c4:	00 00 00 
 3c7:	8b 45 ec             	mov    -0x14(%rbp),%eax
 3ca:	48 63 d0             	movslq %eax,%rdx
 3cd:	48 01 d9             	add    %rbx,%rcx
 3d0:	48 89 d0             	mov    %rdx,%rax
 3d3:	48 c1 e0 02          	shl    $0x2,%rax
 3d7:	48 01 d0             	add    %rdx,%rax
 3da:	48 c1 e0 02          	shl    $0x2,%rax
 3de:	48 01 c8             	add    %rcx,%rax
 3e1:	48 8b 08             	mov    (%rax),%rcx
 3e4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 3eb:	00 00 00 
 3ee:	8b 45 ec             	mov    -0x14(%rbp),%eax
 3f1:	48 63 d0             	movslq %eax,%rdx
 3f4:	48 89 d0             	mov    %rdx,%rax
 3f7:	48 c1 e0 02          	shl    $0x2,%rax
 3fb:	48 01 d0             	add    %rdx,%rax
 3fe:	48 c1 e0 02          	shl    $0x2,%rax
 402:	48 01 d8             	add    %rbx,%rax
 405:	48 01 f0             	add    %rsi,%rax
 408:	48 83 c0 08          	add    $0x8,%rax
 40c:	48 8b 00             	mov    (%rax),%rax
 40f:	48 01 c8             	add    %rcx,%rax
 412:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 418:	48 89 45 90          	mov    %rax,-0x70(%rbp)
 41c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 420:	48 39 45 98          	cmp    %rax,-0x68(%rbp)
 424:	73 15                	jae    43b <init_memory+0x361>
 426:	48 8b 45 90          	mov    -0x70(%rbp),%rax
 42a:	48 2b 45 98          	sub    -0x68(%rbp),%rax
 42e:	48 c1 e8 15          	shr    $0x15,%rax
 432:	48 01 45 e0          	add    %rax,-0x20(%rbp)
 436:	eb 04                	jmp    43c <init_memory+0x362>
 438:	90                   	nop
 439:	eb 01                	jmp    43c <init_memory+0x362>
 43b:	90                   	nop
 43c:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 440:	8b 45 ec             	mov    -0x14(%rbp),%eax
 443:	48 98                	cltq
 445:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 44c:	00 00 00 
 44f:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
 456:	00 
 457:	48 39 c2             	cmp    %rax,%rdx
 45a:	0f 83 f3 fe ff ff    	jae    353 <init_memory+0x279>
 460:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 464:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 468:	49 89 d0             	mov    %rdx,%r8
 46b:	48 89 c1             	mov    %rax,%rcx
 46e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 475:	00 00 00 
 478:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 47c:	48 89 c2             	mov    %rax,%rdx
 47f:	be 00 00 00 00       	mov    $0x0,%esi
 484:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 489:	49 89 df             	mov    %rbx,%r15
 48c:	b8 00 00 00 00       	mov    $0x0,%eax
 491:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
 498:	00 00 00 
 49b:	49 01 d9             	add    %rbx,%r9
 49e:	41 ff d1             	call   *%r9
 4a1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4a8:	00 00 00 
 4ab:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
 4b2:	00 
 4b3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4ba:	00 00 00 
 4bd:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
 4c1:	48 89 d0             	mov    %rdx,%rax
 4c4:	48 c1 e0 02          	shl    $0x2,%rax
 4c8:	48 01 d0             	add    %rdx,%rax
 4cb:	48 c1 e0 02          	shl    $0x2,%rax
 4cf:	48 01 c8             	add    %rcx,%rax
 4d2:	48 8b 08             	mov    (%rax),%rcx
 4d5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4dc:	00 00 00 
 4df:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
 4e6:	00 
 4e7:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 4ee:	00 00 00 
 4f1:	48 89 d0             	mov    %rdx,%rax
 4f4:	48 c1 e0 02          	shl    $0x2,%rax
 4f8:	48 01 d0             	add    %rdx,%rax
 4fb:	48 c1 e0 02          	shl    $0x2,%rax
 4ff:	48 01 d8             	add    %rbx,%rax
 502:	48 01 f0             	add    %rsi,%rax
 505:	48 83 c0 08          	add    $0x8,%rax
 509:	48 8b 00             	mov    (%rax),%rax
 50c:	48 01 c8             	add    %rcx,%rax
 50f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 513:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 517:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 51b:	49 89 d0             	mov    %rdx,%r8
 51e:	48 89 c1             	mov    %rax,%rcx
 521:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 528:	00 00 00 
 52b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 52f:	48 89 c2             	mov    %rax,%rdx
 532:	be 00 00 00 00       	mov    $0x0,%esi
 537:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 53c:	49 89 df             	mov    %rbx,%r15
 53f:	b8 00 00 00 00       	mov    $0x0,%eax
 544:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
 54b:	00 00 00 
 54e:	49 01 d9             	add    %rbx,%r9
 551:	41 ff d1             	call   *%r9
 554:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 55b:	00 00 00 
 55e:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
 565:	00 
 566:	48 05 ff 0f 00 00    	add    $0xfff,%rax
 56c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
 572:	48 89 c2             	mov    %rax,%rdx
 575:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 57c:	00 00 00 
 57f:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
 586:	00 
 587:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 58b:	48 c1 e8 15          	shr    $0x15,%rax
 58f:	48 89 c2             	mov    %rax,%rdx
 592:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 599:	00 00 00 
 59c:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
 5a3:	00 
 5a4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 5a8:	48 c1 e8 15          	shr    $0x15,%rax
 5ac:	48 83 c0 3f          	add    $0x3f,%rax
 5b0:	48 c1 e8 03          	shr    $0x3,%rax
 5b4:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
 5b8:	48 89 c2             	mov    %rax,%rdx
 5bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 5c2:	00 00 00 
 5c5:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
 5cc:	00 
 5cd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 5d4:	00 00 00 
 5d7:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
 5de:	00 
 5df:	48 89 c2             	mov    %rax,%rdx
 5e2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 5e9:	00 00 00 
 5ec:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 5f3:	00 
 5f4:	be ff 00 00 00       	mov    $0xff,%esi
 5f9:	48 89 c7             	mov    %rax,%rdi
 5fc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 603:	00 00 00 
 606:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 60a:	ff d0                	call   *%rax
 60c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 613:	00 00 00 
 616:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 61d:	00 
 61e:	48 89 c2             	mov    %rax,%rdx
 621:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 628:	00 00 00 
 62b:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
 632:	00 
 633:	48 01 d0             	add    %rdx,%rax
 636:	48 05 ff 0f 00 00    	add    $0xfff,%rax
 63c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
 642:	48 89 c2             	mov    %rax,%rdx
 645:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 64c:	00 00 00 
 64f:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
 656:	00 
 657:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 65b:	48 c1 e8 15          	shr    $0x15,%rax
 65f:	48 89 c2             	mov    %rax,%rdx
 662:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 669:	00 00 00 
 66c:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
 673:	00 
 674:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 678:	48 c1 e8 15          	shr    $0x15,%rax
 67c:	48 89 c2             	mov    %rax,%rdx
 67f:	48 89 d0             	mov    %rdx,%rax
 682:	48 c1 e0 02          	shl    $0x2,%rax
 686:	48 01 d0             	add    %rdx,%rax
 689:	48 c1 e0 03          	shl    $0x3,%rax
 68d:	48 83 c0 07          	add    $0x7,%rax
 691:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
 695:	48 89 c2             	mov    %rax,%rdx
 698:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 69f:	00 00 00 
 6a2:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
 6a9:	00 
 6aa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6b1:	00 00 00 
 6b4:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
 6bb:	00 
 6bc:	48 89 c2             	mov    %rax,%rdx
 6bf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6c6:	00 00 00 
 6c9:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 6d0:	00 
 6d1:	be 00 00 00 00       	mov    $0x0,%esi
 6d6:	48 89 c7             	mov    %rax,%rdi
 6d9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6e0:	00 00 00 
 6e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 6e7:	ff d0                	call   *%rax
 6e9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6f0:	00 00 00 
 6f3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 6fa:	00 
 6fb:	48 89 c2             	mov    %rax,%rdx
 6fe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 705:	00 00 00 
 708:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
 70f:	00 
 710:	48 01 d0             	add    %rdx,%rax
 713:	48 05 ff 0f 00 00    	add    $0xfff,%rax
 719:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
 71f:	48 89 c2             	mov    %rax,%rdx
 722:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 729:	00 00 00 
 72c:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
 733:	00 
 734:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 73b:	00 00 00 
 73e:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
 745:	00 00 00 00 00 
 74a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 751:	00 00 00 
 754:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
 75b:	00 90 01 00 00 
 760:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 767:	00 00 00 
 76a:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
 771:	00 
 772:	48 89 c2             	mov    %rax,%rdx
 775:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 77c:	00 00 00 
 77f:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
 786:	00 
 787:	be 00 00 00 00       	mov    $0x0,%esi
 78c:	48 89 c7             	mov    %rax,%rdi
 78f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 796:	00 00 00 
 799:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 79d:	ff d0                	call   *%rax
 79f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 7a6:	e9 f8 02 00 00       	jmp    aa3 <init_memory+0x9c9>
 7ab:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 7b2:	00 00 00 
 7b5:	8b 45 ec             	mov    -0x14(%rbp),%eax
 7b8:	48 63 d0             	movslq %eax,%rdx
 7bb:	48 01 d9             	add    %rbx,%rcx
 7be:	48 89 d0             	mov    %rdx,%rax
 7c1:	48 c1 e0 02          	shl    $0x2,%rax
 7c5:	48 01 d0             	add    %rdx,%rax
 7c8:	48 c1 e0 02          	shl    $0x2,%rax
 7cc:	48 01 c8             	add    %rcx,%rax
 7cf:	48 83 c0 10          	add    $0x10,%rax
 7d3:	8b 00                	mov    (%rax),%eax
 7d5:	83 f8 01             	cmp    $0x1,%eax
 7d8:	0f 85 bd 02 00 00    	jne    a9b <init_memory+0x9c1>
 7de:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 7e5:	00 00 00 
 7e8:	8b 45 ec             	mov    -0x14(%rbp),%eax
 7eb:	48 63 d0             	movslq %eax,%rdx
 7ee:	48 01 d9             	add    %rbx,%rcx
 7f1:	48 89 d0             	mov    %rdx,%rax
 7f4:	48 c1 e0 02          	shl    $0x2,%rax
 7f8:	48 01 d0             	add    %rdx,%rax
 7fb:	48 c1 e0 02          	shl    $0x2,%rax
 7ff:	48 01 c8             	add    %rcx,%rax
 802:	48 8b 00             	mov    (%rax),%rax
 805:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
 80b:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 811:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 815:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 81c:	00 00 00 
 81f:	8b 45 ec             	mov    -0x14(%rbp),%eax
 822:	48 63 d0             	movslq %eax,%rdx
 825:	48 01 d9             	add    %rbx,%rcx
 828:	48 89 d0             	mov    %rdx,%rax
 82b:	48 c1 e0 02          	shl    $0x2,%rax
 82f:	48 01 d0             	add    %rdx,%rax
 832:	48 c1 e0 02          	shl    $0x2,%rax
 836:	48 01 c8             	add    %rcx,%rax
 839:	48 8b 08             	mov    (%rax),%rcx
 83c:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 843:	00 00 00 
 846:	8b 45 ec             	mov    -0x14(%rbp),%eax
 849:	48 63 d0             	movslq %eax,%rdx
 84c:	48 89 d0             	mov    %rdx,%rax
 84f:	48 c1 e0 02          	shl    $0x2,%rax
 853:	48 01 d0             	add    %rdx,%rax
 856:	48 c1 e0 02          	shl    $0x2,%rax
 85a:	48 01 d8             	add    %rbx,%rax
 85d:	48 01 f0             	add    %rsi,%rax
 860:	48 83 c0 08          	add    $0x8,%rax
 864:	48 8b 00             	mov    (%rax),%rax
 867:	48 01 c8             	add    %rcx,%rax
 86a:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 870:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
 874:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 878:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
 87c:	0f 83 1c 02 00 00    	jae    a9e <init_memory+0x9c4>
 882:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 889:	00 00 00 
 88c:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
 893:	00 
 894:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 89b:	00 00 00 
 89e:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
 8a5:	00 
 8a6:	48 89 d0             	mov    %rdx,%rax
 8a9:	48 c1 e0 02          	shl    $0x2,%rax
 8ad:	48 01 d0             	add    %rdx,%rax
 8b0:	48 c1 e0 04          	shl    $0x4,%rax
 8b4:	48 01 c8             	add    %rcx,%rax
 8b7:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
 8bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 8c2:	00 00 00 
 8c5:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
 8cc:	00 
 8cd:	48 8d 50 01          	lea    0x1(%rax),%rdx
 8d1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 8d8:	00 00 00 
 8db:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
 8e2:	00 
 8e3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 8e7:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
 8eb:	48 89 50 10          	mov    %rdx,0x10(%rax)
 8ef:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 8f3:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
 8f7:	48 89 50 18          	mov    %rdx,0x18(%rax)
 8fb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 8ff:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
 903:	48 89 c2             	mov    %rax,%rdx
 906:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 90a:	48 89 50 20          	mov    %rdx,0x20(%rax)
 90e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 912:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
 919:	00 
 91a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 91e:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
 922:	48 c1 e8 15          	shr    $0x15,%rax
 926:	48 89 c2             	mov    %rax,%rdx
 929:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 92d:	48 89 50 40          	mov    %rdx,0x40(%rax)
 931:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 935:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
 93c:	00 
 93d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 941:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
 948:	00 
 949:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 94d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 954:	00 00 00 
 957:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
 95b:	48 89 50 30          	mov    %rdx,0x30(%rax)
 95f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
 963:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
 967:	48 c1 e8 15          	shr    $0x15,%rax
 96b:	48 89 c2             	mov    %rax,%rdx
 96e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 972:	48 89 50 08          	mov    %rdx,0x8(%rax)
 976:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 97d:	00 00 00 
 980:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
 987:	00 
 988:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 98c:	48 c1 e8 15          	shr    $0x15,%rax
 990:	48 89 c2             	mov    %rax,%rdx
 993:	48 89 d0             	mov    %rdx,%rax
 996:	48 c1 e0 02          	shl    $0x2,%rax
 99a:	48 01 d0             	add    %rdx,%rax
 99d:	48 c1 e0 03          	shl    $0x3,%rax
 9a1:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
 9a5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 9a9:	48 89 10             	mov    %rdx,(%rax)
 9ac:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 9b0:	48 8b 00             	mov    (%rax),%rax
 9b3:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 9b7:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
 9be:	e9 bf 00 00 00       	jmp    a82 <init_memory+0x9a8>
 9c3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 9c7:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
 9cb:	48 89 10             	mov    %rdx,(%rax)
 9ce:	8b 45 e8             	mov    -0x18(%rbp),%eax
 9d1:	48 98                	cltq
 9d3:	48 c1 e0 15          	shl    $0x15,%rax
 9d7:	48 89 c2             	mov    %rax,%rdx
 9da:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
 9de:	48 01 c2             	add    %rax,%rdx
 9e1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 9e5:	48 89 50 08          	mov    %rdx,0x8(%rax)
 9e9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 9ed:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 9f4:	00 
 9f5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 9f9:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
 a00:	00 
 a01:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 a05:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
 a0c:	00 
 a0d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 a14:	00 00 00 
 a17:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
 a1e:	00 
 a1f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 a23:	48 8b 40 08          	mov    0x8(%rax),%rax
 a27:	48 c1 e8 1b          	shr    $0x1b,%rax
 a2b:	48 c1 e0 03          	shl    $0x3,%rax
 a2f:	48 01 d0             	add    %rdx,%rax
 a32:	48 8b 10             	mov    (%rax),%rdx
 a35:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 a39:	48 8b 40 08          	mov    0x8(%rax),%rax
 a3d:	48 c1 e8 15          	shr    $0x15,%rax
 a41:	83 e0 3f             	and    $0x3f,%eax
 a44:	be 01 00 00 00       	mov    $0x1,%esi
 a49:	89 c1                	mov    %eax,%ecx
 a4b:	48 d3 e6             	shl    %cl,%rsi
 a4e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 a55:	00 00 00 
 a58:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
 a5f:	00 
 a60:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 a64:	48 8b 40 08          	mov    0x8(%rax),%rax
 a68:	48 c1 e8 1b          	shr    $0x1b,%rax
 a6c:	48 c1 e0 03          	shl    $0x3,%rax
 a70:	48 01 c8             	add    %rcx,%rax
 a73:	48 31 f2             	xor    %rsi,%rdx
 a76:	48 89 10             	mov    %rdx,(%rax)
 a79:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
 a7d:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
 a82:	8b 45 e8             	mov    -0x18(%rbp),%eax
 a85:	48 63 d0             	movslq %eax,%rdx
 a88:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
 a8c:	48 8b 40 08          	mov    0x8(%rax),%rax
 a90:	48 39 c2             	cmp    %rax,%rdx
 a93:	0f 82 2a ff ff ff    	jb     9c3 <init_memory+0x8e9>
 a99:	eb 04                	jmp    a9f <init_memory+0x9c5>
 a9b:	90                   	nop
 a9c:	eb 01                	jmp    a9f <init_memory+0x9c5>
 a9e:	90                   	nop
 a9f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 aa3:	8b 45 ec             	mov    -0x14(%rbp),%eax
 aa6:	48 98                	cltq
 aa8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 aaf:	00 00 00 
 ab2:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
 ab9:	00 
 aba:	48 39 c2             	cmp    %rax,%rdx
 abd:	0f 83 e8 fc ff ff    	jae    7ab <init_memory+0x6d1>
 ac3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 aca:	00 00 00 
 acd:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 ad4:	00 
 ad5:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 adc:	00 00 00 
 adf:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
 ae6:	00 
 ae7:	48 89 10             	mov    %rdx,(%rax)
 aea:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 af1:	00 00 00 
 af4:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 afb:	00 
 afc:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
 b03:	00 
 b04:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b0b:	00 00 00 
 b0e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 b15:	00 
 b16:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
 b1d:	00 
 b1e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b25:	00 00 00 
 b28:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 b2f:	00 
 b30:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
 b37:	00 
 b38:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b3f:	00 00 00 
 b42:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 b49:	00 
 b4a:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
 b51:	00 
 b52:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b59:	00 00 00 
 b5c:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
 b63:	00 
 b64:	48 89 d0             	mov    %rdx,%rax
 b67:	48 c1 e0 02          	shl    $0x2,%rax
 b6b:	48 01 d0             	add    %rdx,%rax
 b6e:	48 c1 e0 04          	shl    $0x4,%rax
 b72:	48 83 c0 07          	add    $0x7,%rax
 b76:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
 b7a:	48 89 c2             	mov    %rax,%rdx
 b7d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b84:	00 00 00 
 b87:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
 b8e:	00 
 b8f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 b96:	00 00 00 
 b99:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
 ba0:	00 
 ba1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 ba8:	00 00 00 
 bab:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
 bb2:	00 
 bb3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 bba:	00 00 00 
 bbd:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 bc4:	00 
 bc5:	49 89 c9             	mov    %rcx,%r9
 bc8:	49 89 d0             	mov    %rdx,%r8
 bcb:	48 89 c1             	mov    %rax,%rcx
 bce:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 bd5:	00 00 00 
 bd8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 bdc:	48 89 c2             	mov    %rax,%rdx
 bdf:	be 00 00 00 00       	mov    $0x0,%esi
 be4:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 be9:	49 89 df             	mov    %rbx,%r15
 bec:	b8 00 00 00 00       	mov    $0x0,%eax
 bf1:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 bf8:	00 00 00 
 bfb:	49 01 da             	add    %rbx,%r10
 bfe:	41 ff d2             	call   *%r10
 c01:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c08:	00 00 00 
 c0b:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
 c12:	00 
 c13:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c1a:	00 00 00 
 c1d:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
 c24:	00 
 c25:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c2c:	00 00 00 
 c2f:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
 c36:	00 
 c37:	49 89 c9             	mov    %rcx,%r9
 c3a:	49 89 d0             	mov    %rdx,%r8
 c3d:	48 89 c1             	mov    %rax,%rcx
 c40:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c47:	00 00 00 
 c4a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 c4e:	48 89 c2             	mov    %rax,%rdx
 c51:	be 00 00 00 00       	mov    $0x0,%esi
 c56:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 c5b:	49 89 df             	mov    %rbx,%r15
 c5e:	b8 00 00 00 00       	mov    $0x0,%eax
 c63:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 c6a:	00 00 00 
 c6d:	49 01 da             	add    %rbx,%r10
 c70:	41 ff d2             	call   *%r10
 c73:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c7a:	00 00 00 
 c7d:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
 c84:	00 
 c85:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c8c:	00 00 00 
 c8f:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
 c96:	00 
 c97:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 c9e:	00 00 00 
 ca1:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
 ca8:	00 
 ca9:	49 89 c9             	mov    %rcx,%r9
 cac:	49 89 d0             	mov    %rdx,%r8
 caf:	48 89 c1             	mov    %rax,%rcx
 cb2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 cb9:	00 00 00 
 cbc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 cc0:	48 89 c2             	mov    %rax,%rdx
 cc3:	be 00 00 00 00       	mov    $0x0,%esi
 cc8:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 ccd:	49 89 df             	mov    %rbx,%r15
 cd0:	b8 00 00 00 00       	mov    $0x0,%eax
 cd5:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 cdc:	00 00 00 
 cdf:	49 01 da             	add    %rbx,%r10
 ce2:	41 ff d2             	call   *%r10
 ce5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 cec:	e9 c1 00 00 00       	jmp    db2 <init_memory+0xcd8>
 cf1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 cf8:	00 00 00 
 cfb:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
 d02:	00 
 d03:	8b 45 ec             	mov    -0x14(%rbp),%eax
 d06:	48 63 d0             	movslq %eax,%rdx
 d09:	48 89 d0             	mov    %rdx,%rax
 d0c:	48 c1 e0 02          	shl    $0x2,%rax
 d10:	48 01 d0             	add    %rdx,%rax
 d13:	48 c1 e0 04          	shl    $0x4,%rax
 d17:	48 01 c8             	add    %rcx,%rax
 d1a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 d1e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d22:	48 8b 48 08          	mov    0x8(%rax),%rcx
 d26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d2a:	48 8b 10             	mov    (%rax),%rdx
 d2d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d31:	48 8b 78 20          	mov    0x20(%rax),%rdi
 d35:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d39:	48 8b 70 18          	mov    0x18(%rax),%rsi
 d3d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d41:	48 8b 40 10          	mov    0x10(%rax),%rax
 d45:	51                   	push   %rcx
 d46:	52                   	push   %rdx
 d47:	49 89 f9             	mov    %rdi,%r9
 d4a:	49 89 f0             	mov    %rsi,%r8
 d4d:	48 89 c1             	mov    %rax,%rcx
 d50:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 d57:	00 00 00 
 d5a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 d5e:	48 89 c2             	mov    %rax,%rdx
 d61:	be 00 00 00 00       	mov    $0x0,%esi
 d66:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 d6b:	49 89 df             	mov    %rbx,%r15
 d6e:	b8 00 00 00 00       	mov    $0x0,%eax
 d73:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 d7a:	00 00 00 
 d7d:	49 01 da             	add    %rbx,%r10
 d80:	41 ff d2             	call   *%r10
 d83:	48 83 c4 10          	add    $0x10,%rsp
 d87:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 d8b:	48 8b 50 10          	mov    0x10(%rax),%rdx
 d8f:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
 d96:	00 00 00 
 d99:	48 39 c2             	cmp    %rax,%rdx
 d9c:	75 10                	jne    dae <init_memory+0xcd4>
 d9e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 da5:	00 00 00 
 da8:	8b 45 ec             	mov    -0x14(%rbp),%eax
 dab:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
 dae:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 db2:	8b 45 ec             	mov    -0x14(%rbp),%eax
 db5:	48 63 d0             	movslq %eax,%rdx
 db8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 dbf:	00 00 00 
 dc2:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
 dc9:	00 
 dca:	48 39 c2             	cmp    %rax,%rdx
 dcd:	0f 82 1e ff ff ff    	jb     cf1 <init_memory+0xc17>
 dd3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 dda:	00 00 00 
 ddd:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
 de4:	00 
 de5:	48 89 c2             	mov    %rax,%rdx
 de8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 def:	00 00 00 
 df2:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
 df9:	00 
 dfa:	48 01 d0             	add    %rdx,%rax
 dfd:	48 05 00 01 00 00    	add    $0x100,%rax
 e03:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
 e07:	48 89 c2             	mov    %rax,%rdx
 e0a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e11:	00 00 00 
 e14:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
 e1b:	00 
 e1c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e23:	00 00 00 
 e26:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
 e2d:	00 
 e2e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e35:	00 00 00 
 e38:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
 e3f:	00 
 e40:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e47:	00 00 00 
 e4a:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
 e51:	00 
 e52:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e59:	00 00 00 
 e5c:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
 e63:	00 
 e64:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e6b:	00 00 00 
 e6e:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
 e75:	00 
 e76:	51                   	push   %rcx
 e77:	52                   	push   %rdx
 e78:	49 89 f9             	mov    %rdi,%r9
 e7b:	49 89 f0             	mov    %rsi,%r8
 e7e:	48 89 c1             	mov    %rax,%rcx
 e81:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 e88:	00 00 00 
 e8b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 e8f:	48 89 c2             	mov    %rax,%rdx
 e92:	be 00 00 00 00       	mov    $0x0,%esi
 e97:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 e9c:	49 89 df             	mov    %rbx,%r15
 e9f:	b8 00 00 00 00       	mov    $0x0,%eax
 ea4:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 eab:	00 00 00 
 eae:	49 01 da             	add    %rbx,%r10
 eb1:	41 ff d2             	call   *%r10
 eb4:	48 83 c4 10          	add    $0x10,%rsp
 eb8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 ebf:	00 00 00 
 ec2:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
 ec9:	00 
 eca:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
 ed1:	80 00 00 
 ed4:	48 01 d0             	add    %rdx,%rax
 ed7:	48 c1 e8 15          	shr    $0x15,%rax
 edb:	89 45 ec             	mov    %eax,-0x14(%rbp)
 ede:	90                   	nop
 edf:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
 ee3:	5b                   	pop    %rbx
 ee4:	41 5f                	pop    %r15
 ee6:	5d                   	pop    %rbp
 ee7:	c3                   	ret
