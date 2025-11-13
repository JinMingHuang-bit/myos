
printk.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <number>:
       0:	f3 0f 1e fa          	endbr64
       4:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 4 <number+0x4>
       b:	41 57                	push   %r15
       d:	48 89 f0             	mov    %rsi,%rax
      10:	89 ce                	mov    %ecx,%esi
      12:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      19:	00 00 00 
      1c:	41 56                	push   %r14
      1e:	4d 01 da             	add    %r11,%r10
      21:	41 55                	push   %r13
      23:	41 54                	push   %r12
      25:	55                   	push   %rbp
      26:	53                   	push   %rbx
      27:	41 f6 c1 40          	test   $0x40,%r9b
      2b:	0f 85 1f 05 00 00    	jne    550 <number+0x550>
      31:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
      38:	00 00 00 
      3b:	c6 44 24 b3 58       	movb   $0x58,-0x4d(%rsp)
      40:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
      44:	44 89 cb             	mov    %r9d,%ebx
      47:	83 e3 10             	and    $0x10,%ebx
      4a:	89 5c 24 a4          	mov    %ebx,-0x5c(%rsp)
      4e:	0f 84 c4 04 00 00    	je     518 <number+0x518>
      54:	41 83 e1 fe          	and    $0xfffffffe,%r9d
      58:	41 be 10 00 00 00    	mov    $0x10,%r14d
      5e:	bd 20 00 00 00       	mov    $0x20,%ebp
      63:	45 89 cf             	mov    %r9d,%r15d
      66:	41 83 e7 20          	and    $0x20,%r15d
      6a:	41 f6 c1 02          	test   $0x2,%r9b
      6e:	74 09                	je     79 <number+0x79>
      70:	48 85 c0             	test   %rax,%rax
      73:	0f 88 17 05 00 00    	js     590 <number+0x590>
      79:	41 f6 c1 04          	test   $0x4,%r9b
      7d:	0f 84 ed 04 00 00    	je     570 <number+0x570>
      83:	c6 44 24 b2 2b       	movb   $0x2b,-0x4e(%rsp)
      88:	83 ee 01             	sub    $0x1,%esi
      8b:	45 85 ff             	test   %r15d,%r15d
      8e:	74 19                	je     a9 <number+0xa9>
      90:	83 fa 10             	cmp    $0x10,%edx
      93:	0f 84 8f 05 00 00    	je     628 <number+0x628>
      99:	31 c9                	xor    %ecx,%ecx
      9b:	83 fa 08             	cmp    $0x8,%edx
      9e:	41 bf 20 00 00 00    	mov    $0x20,%r15d
      a4:	0f 94 c1             	sete   %cl
      a7:	29 ce                	sub    %ecx,%esi
      a9:	48 85 c0             	test   %rax,%rax
      ac:	0f 85 f2 04 00 00    	jne    5a4 <number+0x5a4>
      b2:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
      b7:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
      bc:	31 c9                	xor    %ecx,%ecx
      be:	41 b9 01 00 00 00    	mov    $0x1,%r9d
      c4:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
      c9:	45 39 c1             	cmp    %r8d,%r9d
      cc:	45 0f 4d c1          	cmovge %r9d,%r8d
      d0:	44 29 c6             	sub    %r8d,%esi
      d3:	45 85 f6             	test   %r14d,%r14d
      d6:	0f 85 ee 00 00 00    	jne    1ca <number+0x1ca>
      dc:	44 8d 5e ff          	lea    -0x1(%rsi),%r11d
      e0:	85 f6                	test   %esi,%esi
      e2:	0f 8e 64 05 00 00    	jle    64c <number+0x64c>
      e8:	48 89 f8             	mov    %rdi,%rax
      eb:	41 83 fb 0e          	cmp    $0xe,%r11d
      ef:	0f 86 5f 05 00 00    	jbe    654 <number+0x654>
      f5:	49 bc 00 00 00 00 00 	movabs $0x0,%r12
      fc:	00 00 00 
      ff:	89 f3                	mov    %esi,%ebx
     101:	c1 eb 04             	shr    $0x4,%ebx
     104:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
     10a:	48 c1 e3 04          	shl    $0x4,%rbx
     10e:	4c 8d 2c 3b          	lea    (%rbx,%rdi,1),%r13
     112:	83 e3 10             	and    $0x10,%ebx
     115:	74 11                	je     128 <number+0x128>
     117:	48 8d 47 10          	lea    0x10(%rdi),%rax
     11b:	0f 11 07             	movups %xmm0,(%rdi)
     11e:	49 39 c5             	cmp    %rax,%r13
     121:	74 15                	je     138 <number+0x138>
     123:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     128:	0f 11 00             	movups %xmm0,(%rax)
     12b:	48 83 c0 20          	add    $0x20,%rax
     12f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
     133:	49 39 c5             	cmp    %rax,%r13
     136:	75 f0                	jne    128 <number+0x128>
     138:	89 f3                	mov    %esi,%ebx
     13a:	83 e3 f0             	and    $0xfffffff0,%ebx
     13d:	89 d8                	mov    %ebx,%eax
     13f:	41 29 db             	sub    %ebx,%r11d
     142:	48 01 f8             	add    %rdi,%rax
     145:	39 de                	cmp    %ebx,%esi
     147:	74 76                	je     1bf <number+0x1bf>
     149:	41 89 f4             	mov    %esi,%r12d
     14c:	41 29 dc             	sub    %ebx,%r12d
     14f:	45 8d 6c 24 ff       	lea    -0x1(%r12),%r13d
     154:	41 83 fd 06          	cmp    $0x6,%r13d
     158:	76 27                	jbe    181 <number+0x181>
     15a:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
     161:	00 00 00 
     164:	4f 8b 2c 2a          	mov    (%r10,%r13,1),%r13
     168:	4c 89 2c 1f          	mov    %r13,(%rdi,%rbx,1)
     16c:	44 89 e3             	mov    %r12d,%ebx
     16f:	83 e3 f8             	and    $0xfffffff8,%ebx
     172:	41 89 dd             	mov    %ebx,%r13d
     175:	41 29 db             	sub    %ebx,%r11d
     178:	4c 01 e8             	add    %r13,%rax
     17b:	41 83 e4 07          	and    $0x7,%r12d
     17f:	74 3e                	je     1bf <number+0x1bf>
     181:	c6 00 20             	movb   $0x20,(%rax)
     184:	45 85 db             	test   %r11d,%r11d
     187:	7e 36                	jle    1bf <number+0x1bf>
     189:	c6 40 01 20          	movb   $0x20,0x1(%rax)
     18d:	41 83 fb 01          	cmp    $0x1,%r11d
     191:	74 2c                	je     1bf <number+0x1bf>
     193:	c6 40 02 20          	movb   $0x20,0x2(%rax)
     197:	41 83 fb 02          	cmp    $0x2,%r11d
     19b:	74 22                	je     1bf <number+0x1bf>
     19d:	c6 40 03 20          	movb   $0x20,0x3(%rax)
     1a1:	41 83 fb 03          	cmp    $0x3,%r11d
     1a5:	74 18                	je     1bf <number+0x1bf>
     1a7:	c6 40 04 20          	movb   $0x20,0x4(%rax)
     1ab:	41 83 fb 04          	cmp    $0x4,%r11d
     1af:	74 0e                	je     1bf <number+0x1bf>
     1b1:	c6 40 05 20          	movb   $0x20,0x5(%rax)
     1b5:	41 83 fb 05          	cmp    $0x5,%r11d
     1b9:	74 04                	je     1bf <number+0x1bf>
     1bb:	c6 40 06 20          	movb   $0x20,0x6(%rax)
     1bf:	48 63 f6             	movslq %esi,%rsi
     1c2:	48 01 f7             	add    %rsi,%rdi
     1c5:	be ff ff ff ff       	mov    $0xffffffff,%esi
     1ca:	0f b6 44 24 b2       	movzbl -0x4e(%rsp),%eax
     1cf:	84 c0                	test   %al,%al
     1d1:	74 06                	je     1d9 <number+0x1d9>
     1d3:	88 07                	mov    %al,(%rdi)
     1d5:	48 83 c7 01          	add    $0x1,%rdi
     1d9:	45 85 ff             	test   %r15d,%r15d
     1dc:	74 12                	je     1f0 <number+0x1f0>
     1de:	83 fa 08             	cmp    $0x8,%edx
     1e1:	0f 84 31 04 00 00    	je     618 <number+0x618>
     1e7:	83 fa 10             	cmp    $0x10,%edx
     1ea:	0f 84 10 04 00 00    	je     600 <number+0x600>
     1f0:	8b 44 24 a4          	mov    -0x5c(%rsp),%eax
     1f4:	85 c0                	test   %eax,%eax
     1f6:	0f 85 f5 00 00 00    	jne    2f1 <number+0x2f1>
     1fc:	8d 56 ff             	lea    -0x1(%rsi),%edx
     1ff:	85 f6                	test   %esi,%esi
     201:	0f 8e 3e 04 00 00    	jle    645 <number+0x645>
     207:	83 fa 0e             	cmp    $0xe,%edx
     20a:	0f 86 4b 04 00 00    	jbe    65b <number+0x65b>
     210:	66 0f 6e c5          	movd   %ebp,%xmm0
     214:	41 89 f3             	mov    %esi,%r11d
     217:	48 89 f8             	mov    %rdi,%rax
     21a:	41 c1 eb 04          	shr    $0x4,%r11d
     21e:	66 0f 60 c0          	punpcklbw %xmm0,%xmm0
     222:	49 c1 e3 04          	shl    $0x4,%r11
     226:	66 0f 61 c0          	punpcklwd %xmm0,%xmm0
     22a:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
     22f:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
     233:	41 83 e3 10          	and    $0x10,%r11d
     237:	66 0f 6f c8          	movdqa %xmm0,%xmm1
     23b:	74 13                	je     250 <number+0x250>
     23d:	48 8d 47 10          	lea    0x10(%rdi),%rax
     241:	0f 11 07             	movups %xmm0,(%rdi)
     244:	48 39 d8             	cmp    %rbx,%rax
     247:	74 17                	je     260 <number+0x260>
     249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     250:	0f 11 08             	movups %xmm1,(%rax)
     253:	48 83 c0 20          	add    $0x20,%rax
     257:	0f 11 48 f0          	movups %xmm1,-0x10(%rax)
     25b:	48 39 d8             	cmp    %rbx,%rax
     25e:	75 f0                	jne    250 <number+0x250>
     260:	41 89 f3             	mov    %esi,%r11d
     263:	41 83 e3 f0          	and    $0xfffffff0,%r11d
     267:	44 89 db             	mov    %r11d,%ebx
     26a:	44 29 da             	sub    %r11d,%edx
     26d:	48 01 fb             	add    %rdi,%rbx
     270:	44 39 de             	cmp    %r11d,%esi
     273:	74 71                	je     2e6 <number+0x2e6>
     275:	41 89 f4             	mov    %esi,%r12d
     278:	45 29 dc             	sub    %r11d,%r12d
     27b:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
     280:	83 f8 06             	cmp    $0x6,%eax
     283:	76 29                	jbe    2ae <number+0x2ae>
     285:	40 0f b6 c5          	movzbl %bpl,%eax
     289:	88 c4                	mov    %al,%ah
     28b:	66 0f 6e d0          	movd   %eax,%xmm2
     28f:	44 89 e0             	mov    %r12d,%eax
     292:	83 e0 f8             	and    $0xfffffff8,%eax
     295:	f2 0f 70 c2 00       	pshuflw $0x0,%xmm2,%xmm0
     29a:	66 42 0f d6 04 1f    	movq   %xmm0,(%rdi,%r11,1)
     2a0:	41 89 c3             	mov    %eax,%r11d
     2a3:	29 c2                	sub    %eax,%edx
     2a5:	4c 01 db             	add    %r11,%rbx
     2a8:	41 83 e4 07          	and    $0x7,%r12d
     2ac:	74 38                	je     2e6 <number+0x2e6>
     2ae:	40 88 2b             	mov    %bpl,(%rbx)
     2b1:	85 d2                	test   %edx,%edx
     2b3:	7e 31                	jle    2e6 <number+0x2e6>
     2b5:	40 88 6b 01          	mov    %bpl,0x1(%rbx)
     2b9:	83 fa 01             	cmp    $0x1,%edx
     2bc:	74 28                	je     2e6 <number+0x2e6>
     2be:	40 88 6b 02          	mov    %bpl,0x2(%rbx)
     2c2:	83 fa 02             	cmp    $0x2,%edx
     2c5:	74 1f                	je     2e6 <number+0x2e6>
     2c7:	40 88 6b 03          	mov    %bpl,0x3(%rbx)
     2cb:	83 fa 03             	cmp    $0x3,%edx
     2ce:	74 16                	je     2e6 <number+0x2e6>
     2d0:	40 88 6b 04          	mov    %bpl,0x4(%rbx)
     2d4:	83 fa 04             	cmp    $0x4,%edx
     2d7:	74 0d                	je     2e6 <number+0x2e6>
     2d9:	40 88 6b 05          	mov    %bpl,0x5(%rbx)
     2dd:	83 fa 05             	cmp    $0x5,%edx
     2e0:	74 04                	je     2e6 <number+0x2e6>
     2e2:	40 88 6b 06          	mov    %bpl,0x6(%rbx)
     2e6:	48 63 f6             	movslq %esi,%rsi
     2e9:	48 01 f7             	add    %rsi,%rdi
     2ec:	be ff ff ff ff       	mov    $0xffffffff,%esi
     2f1:	41 8d 50 ff          	lea    -0x1(%r8),%edx
     2f5:	45 39 c1             	cmp    %r8d,%r9d
     2f8:	0f 8d fb 00 00 00    	jge    3f9 <number+0x3f9>
     2fe:	45 29 c8             	sub    %r9d,%r8d
     301:	48 89 f8             	mov    %rdi,%rax
     304:	41 8d 58 ff          	lea    -0x1(%r8),%ebx
     308:	83 fb 0e             	cmp    $0xe,%ebx
     30b:	0f 86 2c 03 00 00    	jbe    63d <number+0x63d>
     311:	49 bc 00 00 00 00 00 	movabs $0x0,%r12
     318:	00 00 00 
     31b:	45 89 c3             	mov    %r8d,%r11d
     31e:	41 c1 eb 04          	shr    $0x4,%r11d
     322:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
     328:	49 c1 e3 04          	shl    $0x4,%r11
     32c:	49 8d 2c 3b          	lea    (%r11,%rdi,1),%rbp
     330:	41 83 e3 10          	and    $0x10,%r11d
     334:	74 12                	je     348 <number+0x348>
     336:	48 8d 47 10          	lea    0x10(%rdi),%rax
     33a:	0f 11 07             	movups %xmm0,(%rdi)
     33d:	48 39 c5             	cmp    %rax,%rbp
     340:	74 16                	je     358 <number+0x358>
     342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     348:	0f 11 00             	movups %xmm0,(%rax)
     34b:	48 83 c0 20          	add    $0x20,%rax
     34f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
     353:	48 39 c5             	cmp    %rax,%rbp
     356:	75 f0                	jne    348 <number+0x348>
     358:	45 89 c3             	mov    %r8d,%r11d
     35b:	41 83 e3 f0          	and    $0xfffffff0,%r11d
     35f:	44 89 d8             	mov    %r11d,%eax
     362:	44 29 da             	sub    %r11d,%edx
     365:	48 01 f8             	add    %rdi,%rax
     368:	41 f6 c0 0f          	test   $0xf,%r8b
     36c:	0f 84 80 00 00 00    	je     3f2 <number+0x3f2>
     372:	45 29 d8             	sub    %r11d,%r8d
     375:	41 8d 68 ff          	lea    -0x1(%r8),%ebp
     379:	83 fd 06             	cmp    $0x6,%ebp
     37c:	76 28                	jbe    3a6 <number+0x3a6>
     37e:	48 bd 00 00 00 00 00 	movabs $0x0,%rbp
     385:	00 00 00 
     388:	49 8b 2c 2a          	mov    (%r10,%rbp,1),%rbp
     38c:	4a 89 2c 1f          	mov    %rbp,(%rdi,%r11,1)
     390:	45 89 c3             	mov    %r8d,%r11d
     393:	41 83 e3 f8          	and    $0xfffffff8,%r11d
     397:	44 89 dd             	mov    %r11d,%ebp
     39a:	44 29 da             	sub    %r11d,%edx
     39d:	48 01 e8             	add    %rbp,%rax
     3a0:	41 83 e0 07          	and    $0x7,%r8d
     3a4:	74 4c                	je     3f2 <number+0x3f2>
     3a6:	c6 00 30             	movb   $0x30,(%rax)
     3a9:	44 8d 42 ff          	lea    -0x1(%rdx),%r8d
     3ad:	41 39 d1             	cmp    %edx,%r9d
     3b0:	7d 40                	jge    3f2 <number+0x3f2>
     3b2:	c6 40 01 30          	movb   $0x30,0x1(%rax)
     3b6:	44 8d 5a fe          	lea    -0x2(%rdx),%r11d
     3ba:	45 39 c1             	cmp    %r8d,%r9d
     3bd:	7d 33                	jge    3f2 <number+0x3f2>
     3bf:	c6 40 02 30          	movb   $0x30,0x2(%rax)
     3c3:	44 8d 42 fd          	lea    -0x3(%rdx),%r8d
     3c7:	45 39 d9             	cmp    %r11d,%r9d
     3ca:	7d 26                	jge    3f2 <number+0x3f2>
     3cc:	c6 40 03 30          	movb   $0x30,0x3(%rax)
     3d0:	44 8d 5a fc          	lea    -0x4(%rdx),%r11d
     3d4:	45 39 c1             	cmp    %r8d,%r9d
     3d7:	7d 19                	jge    3f2 <number+0x3f2>
     3d9:	c6 40 04 30          	movb   $0x30,0x4(%rax)
     3dd:	83 ea 05             	sub    $0x5,%edx
     3e0:	45 39 d9             	cmp    %r11d,%r9d
     3e3:	7d 0d                	jge    3f2 <number+0x3f2>
     3e5:	c6 40 05 30          	movb   $0x30,0x5(%rax)
     3e9:	41 39 d1             	cmp    %edx,%r9d
     3ec:	7d 04                	jge    3f2 <number+0x3f2>
     3ee:	c6 40 06 30          	movb   $0x30,0x6(%rax)
     3f2:	89 db                	mov    %ebx,%ebx
     3f4:	48 8d 7c 1f 01       	lea    0x1(%rdi,%rbx,1),%rdi
     3f9:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
     3fe:	48 63 c1             	movslq %ecx,%rax
     401:	83 c1 01             	add    $0x1,%ecx
     404:	48 63 c9             	movslq %ecx,%rcx
     407:	48 01 c3             	add    %rax,%rbx
     40a:	48 01 f9             	add    %rdi,%rcx
     40d:	48 89 d8             	mov    %rbx,%rax
     410:	0f b6 10             	movzbl (%rax),%edx
     413:	48 83 c7 01          	add    $0x1,%rdi
     417:	48 83 e8 01          	sub    $0x1,%rax
     41b:	88 57 ff             	mov    %dl,-0x1(%rdi)
     41e:	48 39 cf             	cmp    %rcx,%rdi
     421:	75 ed                	jne    410 <number+0x410>
     423:	8d 56 ff             	lea    -0x1(%rsi),%edx
     426:	85 f6                	test   %esi,%esi
     428:	0f 8e d6 00 00 00    	jle    504 <number+0x504>
     42e:	48 89 c8             	mov    %rcx,%rax
     431:	83 fa 0e             	cmp    $0xe,%edx
     434:	0f 86 fc 01 00 00    	jbe    636 <number+0x636>
     43a:	49 bc 00 00 00 00 00 	movabs $0x0,%r12
     441:	00 00 00 
     444:	89 f7                	mov    %esi,%edi
     446:	c1 ef 04             	shr    $0x4,%edi
     449:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
     44f:	48 c1 e7 04          	shl    $0x4,%rdi
     453:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
     457:	83 e7 10             	and    $0x10,%edi
     45a:	74 14                	je     470 <number+0x470>
     45c:	48 8d 41 10          	lea    0x10(%rcx),%rax
     460:	0f 11 01             	movups %xmm0,(%rcx)
     463:	49 39 c0             	cmp    %rax,%r8
     466:	74 18                	je     480 <number+0x480>
     468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     46f:	00 
     470:	0f 11 00             	movups %xmm0,(%rax)
     473:	48 83 c0 20          	add    $0x20,%rax
     477:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
     47b:	49 39 c0             	cmp    %rax,%r8
     47e:	75 f0                	jne    470 <number+0x470>
     480:	89 f7                	mov    %esi,%edi
     482:	83 e7 f0             	and    $0xfffffff0,%edi
     485:	89 f8                	mov    %edi,%eax
     487:	29 fa                	sub    %edi,%edx
     489:	48 01 c8             	add    %rcx,%rax
     48c:	39 fe                	cmp    %edi,%esi
     48e:	74 6e                	je     4fe <number+0x4fe>
     490:	41 89 f0             	mov    %esi,%r8d
     493:	41 29 f8             	sub    %edi,%r8d
     496:	45 8d 48 ff          	lea    -0x1(%r8),%r9d
     49a:	41 83 f9 06          	cmp    $0x6,%r9d
     49e:	76 26                	jbe    4c6 <number+0x4c6>
     4a0:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     4a7:	00 00 00 
     4aa:	4f 8b 0c 0a          	mov    (%r10,%r9,1),%r9
     4ae:	4c 89 0c 39          	mov    %r9,(%rcx,%rdi,1)
     4b2:	44 89 c7             	mov    %r8d,%edi
     4b5:	83 e7 f8             	and    $0xfffffff8,%edi
     4b8:	41 89 f9             	mov    %edi,%r9d
     4bb:	29 fa                	sub    %edi,%edx
     4bd:	4c 01 c8             	add    %r9,%rax
     4c0:	41 83 e0 07          	and    $0x7,%r8d
     4c4:	74 38                	je     4fe <number+0x4fe>
     4c6:	c6 00 20             	movb   $0x20,(%rax)
     4c9:	85 d2                	test   %edx,%edx
     4cb:	7e 31                	jle    4fe <number+0x4fe>
     4cd:	c6 40 01 20          	movb   $0x20,0x1(%rax)
     4d1:	83 fa 01             	cmp    $0x1,%edx
     4d4:	74 28                	je     4fe <number+0x4fe>
     4d6:	c6 40 02 20          	movb   $0x20,0x2(%rax)
     4da:	83 fa 02             	cmp    $0x2,%edx
     4dd:	74 1f                	je     4fe <number+0x4fe>
     4df:	c6 40 03 20          	movb   $0x20,0x3(%rax)
     4e3:	83 fa 03             	cmp    $0x3,%edx
     4e6:	74 16                	je     4fe <number+0x4fe>
     4e8:	c6 40 04 20          	movb   $0x20,0x4(%rax)
     4ec:	83 fa 04             	cmp    $0x4,%edx
     4ef:	74 0d                	je     4fe <number+0x4fe>
     4f1:	c6 40 05 20          	movb   $0x20,0x5(%rax)
     4f5:	83 fa 05             	cmp    $0x5,%edx
     4f8:	74 04                	je     4fe <number+0x4fe>
     4fa:	c6 40 06 20          	movb   $0x20,0x6(%rax)
     4fe:	48 63 f6             	movslq %esi,%rsi
     501:	48 01 f1             	add    %rsi,%rcx
     504:	5b                   	pop    %rbx
     505:	48 89 c8             	mov    %rcx,%rax
     508:	5d                   	pop    %rbp
     509:	41 5c                	pop    %r12
     50b:	41 5d                	pop    %r13
     50d:	41 5e                	pop    %r14
     50f:	41 5f                	pop    %r15
     511:	c3                   	ret
     512:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     518:	44 89 c9             	mov    %r9d,%ecx
     51b:	45 89 ce             	mov    %r9d,%r14d
     51e:	45 89 cf             	mov    %r9d,%r15d
     521:	83 e1 01             	and    $0x1,%ecx
     524:	41 83 e6 11          	and    $0x11,%r14d
     528:	83 f9 01             	cmp    $0x1,%ecx
     52b:	19 ed                	sbb    %ebp,%ebp
     52d:	83 e5 f0             	and    $0xfffffff0,%ebp
     530:	83 c5 30             	add    $0x30,%ebp
     533:	85 c9                	test   %ecx,%ecx
     535:	44 0f 44 f3          	cmove  %ebx,%r14d
     539:	41 83 e7 20          	and    $0x20,%r15d
     53d:	41 f6 c1 02          	test   $0x2,%r9b
     541:	0f 85 29 fb ff ff    	jne    70 <number+0x70>
     547:	e9 2d fb ff ff       	jmp    79 <number+0x79>
     54c:	0f 1f 40 00          	nopl   0x0(%rax)
     550:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     557:	00 00 00 
     55a:	c6 44 24 b3 78       	movb   $0x78,-0x4d(%rsp)
     55f:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
     563:	e9 dc fa ff ff       	jmp    44 <number+0x44>
     568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     56f:	00 
     570:	44 89 cb             	mov    %r9d,%ebx
     573:	83 e3 08             	and    $0x8,%ebx
     576:	88 5c 24 b2          	mov    %bl,-0x4e(%rsp)
     57a:	0f 84 0b fb ff ff    	je     8b <number+0x8b>
     580:	c6 44 24 b2 20       	movb   $0x20,-0x4e(%rsp)
     585:	e9 fe fa ff ff       	jmp    88 <number+0x88>
     58a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     590:	c6 44 24 b2 2d       	movb   $0x2d,-0x4e(%rsp)
     595:	48 f7 d8             	neg    %rax
     598:	83 ee 01             	sub    $0x1,%esi
     59b:	45 85 ff             	test   %r15d,%r15d
     59e:	0f 85 ec fa ff ff    	jne    90 <number+0x90>
     5a4:	48 8d 4c 24 b8       	lea    -0x48(%rsp),%rcx
     5a9:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
     5ae:	48 63 da             	movslq %edx,%rbx
     5b1:	45 31 c9             	xor    %r9d,%r9d
     5b4:	48 89 4c 24 a8       	mov    %rcx,-0x58(%rsp)
     5b9:	49 89 cb             	mov    %rcx,%r11
     5bc:	45 31 ed             	xor    %r13d,%r13d
     5bf:	41 89 d7             	mov    %edx,%r15d
     5c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     5c8:	44 89 ea             	mov    %r13d,%edx
     5cb:	44 89 c9             	mov    %r9d,%ecx
     5ce:	49 83 c3 01          	add    $0x1,%r11
     5d2:	41 83 c1 01          	add    $0x1,%r9d
     5d6:	48 f7 f3             	div    %rbx
     5d9:	48 63 d2             	movslq %edx,%rdx
     5dc:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
     5e1:	41 88 53 ff          	mov    %dl,-0x1(%r11)
     5e5:	48 85 c0             	test   %rax,%rax
     5e8:	75 de                	jne    5c8 <number+0x5c8>
     5ea:	44 89 fa             	mov    %r15d,%edx
     5ed:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
     5f2:	e9 d2 fa ff ff       	jmp    c9 <number+0xc9>
     5f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     5fe:	00 00 
     600:	0f b6 44 24 b3       	movzbl -0x4d(%rsp),%eax
     605:	c6 07 30             	movb   $0x30,(%rdi)
     608:	48 83 c7 02          	add    $0x2,%rdi
     60c:	88 47 ff             	mov    %al,-0x1(%rdi)
     60f:	e9 dc fb ff ff       	jmp    1f0 <number+0x1f0>
     614:	0f 1f 40 00          	nopl   0x0(%rax)
     618:	c6 07 30             	movb   $0x30,(%rdi)
     61b:	48 83 c7 01          	add    $0x1,%rdi
     61f:	e9 cc fb ff ff       	jmp    1f0 <number+0x1f0>
     624:	0f 1f 40 00          	nopl   0x0(%rax)
     628:	83 ee 02             	sub    $0x2,%esi
     62b:	41 bf 20 00 00 00    	mov    $0x20,%r15d
     631:	e9 73 fa ff ff       	jmp    a9 <number+0xa9>
     636:	31 ff                	xor    %edi,%edi
     638:	e9 53 fe ff ff       	jmp    490 <number+0x490>
     63d:	45 31 db             	xor    %r11d,%r11d
     640:	e9 2d fd ff ff       	jmp    372 <number+0x372>
     645:	89 d6                	mov    %edx,%esi
     647:	e9 a5 fc ff ff       	jmp    2f1 <number+0x2f1>
     64c:	44 89 de             	mov    %r11d,%esi
     64f:	e9 76 fb ff ff       	jmp    1ca <number+0x1ca>
     654:	31 db                	xor    %ebx,%ebx
     656:	e9 ee fa ff ff       	jmp    149 <number+0x149>
     65b:	48 89 fb             	mov    %rdi,%rbx
     65e:	45 31 db             	xor    %r11d,%r11d
     661:	e9 0f fc ff ff       	jmp    275 <number+0x275>
     666:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     66d:	00 00 00 

0000000000000670 <putchar>:
     670:	f3 0f 1e fa          	endbr64
     674:	41 57                	push   %r15
     676:	4c 63 d2             	movslq %edx,%r10
     679:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     680:	00 00 00 
     683:	48 8d 05 ea ff ff ff 	lea    -0x16(%rip),%rax        # 674 <putchar+0x4>
     68a:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     691:	00 00 00 
     694:	41 56                	push   %r14
     696:	4c 01 d8             	add    %r11,%rax
     699:	41 bb 1f 00 00 00    	mov    $0x1f,%r11d
     69f:	41 55                	push   %r13
     6a1:	41 54                	push   %r12
     6a3:	4c 8d 24 10          	lea    (%rax,%rdx,1),%r12
     6a7:	55                   	push   %rbp
     6a8:	53                   	push   %rbx
     6a9:	48 63 de             	movslq %esi,%rbx
     6ac:	89 ce                	mov    %ecx,%esi
     6ae:	0f af f3             	imul   %ebx,%esi
     6b1:	48 8d 0c 9d 00 00 00 	lea    0x0(,%rbx,4),%rcx
     6b8:	00 
     6b9:	48 83 ec 58          	sub    $0x58,%rsp
     6bd:	48 63 f6             	movslq %esi,%rsi
     6c0:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
     6c7:	00 
     6c8:	4c 01 d6             	add    %r10,%rsi
     6cb:	4c 8d 14 b5 00 00 00 	lea    0x0(,%rsi,4),%r10
     6d2:	00 
     6d3:	48 89 de             	mov    %rbx,%rsi
     6d6:	48 c1 e5 04          	shl    $0x4,%rbp
     6da:	48 c1 e6 04          	shl    $0x4,%rsi
     6de:	4a 8d 54 25 00       	lea    0x0(%rbp,%r12,1),%rdx
     6e3:	4d 8d 64 2c 0f       	lea    0xf(%r12,%rbp,1),%r12
     6e8:	31 ed                	xor    %ebp,%ebp
     6ea:	48 29 de             	sub    %rbx,%rsi
     6ed:	48 c1 e6 02          	shl    $0x2,%rsi
     6f1:	85 db                	test   %ebx,%ebx
     6f3:	48 0f 48 ee          	cmovs  %rsi,%rbp
     6f7:	4c 01 d5             	add    %r10,%rbp
     6fa:	48 01 fd             	add    %rdi,%rbp
     6fd:	49 39 ec             	cmp    %rbp,%r12
     700:	40 0f 92 c5          	setb   %bpl
     704:	48 83 c6 1f          	add    $0x1f,%rsi
     708:	85 db                	test   %ebx,%ebx
     70a:	49 0f 48 f3          	cmovs  %r11,%rsi
     70e:	4c 01 d6             	add    %r10,%rsi
     711:	48 01 fe             	add    %rdi,%rsi
     714:	48 39 d6             	cmp    %rdx,%rsi
     717:	40 0f 92 c6          	setb   %sil
     71b:	40 08 ee             	or     %bpl,%sil
     71e:	0f 84 69 0a 00 00    	je     118d <putchar+0xb1d>
     724:	48 8d 71 1f          	lea    0x1f(%rcx),%rsi
     728:	48 83 fe 3e          	cmp    $0x3e,%rsi
     72c:	0f 86 5b 0a 00 00    	jbe    118d <putchar+0xb1d>
     732:	66 41 0f 6e c0       	movd   %r8d,%xmm0
     737:	48 c1 e3 05          	shl    $0x5,%rbx
     73b:	48 89 d6             	mov    %rdx,%rsi
     73e:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
     743:	66 44 0f 70 e0 e0    	pshufd $0xe0,%xmm0,%xmm12
     749:	66 41 0f 6e c1       	movd   %r9d,%xmm0
     74e:	49 89 d9             	mov    %rbx,%r9
     751:	4a 8d 1c 17          	lea    (%rdi,%r10,1),%rbx
     755:	66 44 0f 70 d8 e0    	pshufd $0xe0,%xmm0,%xmm11
     75b:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
     760:	48 8d 2c 0b          	lea    (%rbx,%rcx,1),%rbp
     764:	4c 8d 64 0d 00       	lea    0x0(%rbp,%rcx,1),%r12
     769:	4d 8d 2c 0c          	lea    (%r12,%rcx,1),%r13
     76d:	4d 8d 74 0d 00       	lea    0x0(%r13,%rcx,1),%r14
     772:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
     776:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
     77a:	49 8d 3c 08          	lea    (%r8,%rcx,1),%rdi
     77e:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
     782:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     789:	00 00 00 
     78c:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     790:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
     795:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     79c:	00 00 00 
     79f:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     7a3:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
     7a8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     7af:	00 00 00 
     7b2:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     7b6:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
     7bb:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     7c2:	00 00 00 
     7c5:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     7c9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
     7ce:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     7d5:	00 00 00 
     7d8:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     7dc:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
     7e1:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     7e8:	00 00 00 
     7eb:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
     7ef:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
     7f4:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     7fb:	00 00 00 
     7fe:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     802:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
     807:	f3 0f 7e 06          	movq   (%rsi),%xmm0
     80b:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
     810:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
     815:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
     81a:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     81f:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
     825:	48 83 c6 08          	add    $0x8,%rsi
     829:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
     82e:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
     832:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
     837:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     83c:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
     843:	66 0f db e8          	pand   %xmm0,%xmm5
     847:	66 45 0f 6f fa       	movdqa %xmm10,%xmm15
     84c:	66 44 0f db f0       	pand   %xmm0,%xmm14
     851:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
     855:	66 0f 6f f1          	movdqa %xmm1,%xmm6
     859:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
     85d:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
     861:	66 0f 65 de          	pcmpgtw %xmm6,%xmm3
     865:	66 0f 6f d6          	movdqa %xmm6,%xmm2
     869:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     86e:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
     872:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
     876:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
     87b:	66 0f db e2          	pand   %xmm2,%xmm4
     87f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     884:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
     889:	66 0f eb d4          	por    %xmm4,%xmm2
     88d:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
     891:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     896:	66 48 0f 7e d2       	movq   %xmm2,%rdx
     89b:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
     8a0:	66 0f db d6          	pand   %xmm6,%xmm2
     8a4:	66 41 0f df f3       	pandn  %xmm11,%xmm6
     8a9:	89 13                	mov    %edx,(%rbx)
     8ab:	66 0f eb f2          	por    %xmm2,%xmm6
     8af:	66 0f 6f d1          	movdqa %xmm1,%xmm2
     8b3:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     8b7:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
     8bb:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     8c0:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
     8c5:	66 0f db e2          	pand   %xmm2,%xmm4
     8c9:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     8ce:	66 0f eb d4          	por    %xmm4,%xmm2
     8d2:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
     8d7:	66 48 0f 7e d0       	movq   %xmm2,%rax
     8dc:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
     8e1:	66 0f db d1          	pand   %xmm1,%xmm2
     8e5:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     8ea:	66 0f eb ca          	por    %xmm2,%xmm1
     8ee:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
     8f4:	66 0f 6f cd          	movdqa %xmm5,%xmm1
     8f8:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
     8fd:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     902:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     907:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
     90b:	66 0f 6f d1          	movdqa %xmm1,%xmm2
     90f:	66 0f 60 d3          	punpcklbw %xmm3,%xmm2
     913:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
     917:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
     91b:	66 0f 6f da          	movdqa %xmm2,%xmm3
     91f:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     924:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     928:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
     92c:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     931:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     936:	66 0f db eb          	pand   %xmm3,%xmm5
     93a:	66 41 0f df db       	pandn  %xmm11,%xmm3
     93f:	66 0f db fa          	pand   %xmm2,%xmm7
     943:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     948:	66 0f eb dd          	por    %xmm5,%xmm3
     94c:	66 0f eb d7          	por    %xmm7,%xmm2
     950:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
     955:	66 0f d6 5c 24 90    	movq   %xmm3,-0x70(%rsp)
     95b:	66 0f 6f e9          	movdqa %xmm1,%xmm5
     95f:	66 0f 65 f9          	pcmpgtw %xmm1,%xmm7
     963:	66 0f d6 54 24 98    	movq   %xmm2,-0x68(%rsp)
     969:	66 0f 6f df          	movdqa %xmm7,%xmm3
     96d:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
     972:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
     976:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     97a:	66 0f 6f d5          	movdqa %xmm5,%xmm2
     97e:	66 0f db e5          	pand   %xmm5,%xmm4
     982:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     987:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     98c:	66 0f db f9          	pand   %xmm1,%xmm7
     990:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     995:	66 0f 6f ea          	movdqa %xmm2,%xmm5
     999:	66 0f 6f d7          	movdqa %xmm7,%xmm2
     99d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
     9a1:	66 0f eb ec          	por    %xmm4,%xmm5
     9a5:	f3 0f 7e 64 24 28    	movq   0x28(%rsp),%xmm4
     9ab:	66 0f eb fa          	por    %xmm2,%xmm7
     9af:	66 0f d6 6c 24 a0    	movq   %xmm5,-0x60(%rsp)
     9b5:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
     9ba:	66 0f db e0          	pand   %xmm0,%xmm4
     9be:	66 0f d6 7c 24 a8    	movq   %xmm7,-0x58(%rsp)
     9c4:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
     9ca:	66 0f 6f cc          	movdqa %xmm4,%xmm1
     9ce:	66 41 0f 6f e2       	movdqa %xmm10,%xmm4
     9d3:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     9d8:	66 0f db f8          	pand   %xmm0,%xmm7
     9dc:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     9e1:	66 0f 64 e1          	pcmpgtb %xmm1,%xmm4
     9e5:	66 0f 6f dc          	movdqa %xmm4,%xmm3
     9e9:	66 0f 6f e1          	movdqa %xmm1,%xmm4
     9ed:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
     9f1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
     9f5:	66 0f 6f d4          	movdqa %xmm4,%xmm2
     9f9:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
     9fe:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     a03:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
     a07:	66 44 0f 65 c1       	pcmpgtw %xmm1,%xmm8
     a0c:	66 0f 6f da          	movdqa %xmm2,%xmm3
     a10:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
     a14:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     a18:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     a1d:	66 0f db eb          	pand   %xmm3,%xmm5
     a21:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     a26:	66 41 0f df db       	pandn  %xmm11,%xmm3
     a2b:	66 0f eb dd          	por    %xmm5,%xmm3
     a2f:	66 0f db e2          	pand   %xmm2,%xmm4
     a33:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     a38:	66 0f d6 5c 24 b0    	movq   %xmm3,-0x50(%rsp)
     a3e:	66 0f 6f dc          	movdqa %xmm4,%xmm3
     a42:	66 0f 6f e2          	movdqa %xmm2,%xmm4
     a46:	66 0f 6f d1          	movdqa %xmm1,%xmm2
     a4a:	66 0f eb e3          	por    %xmm3,%xmm4
     a4e:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
     a53:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
     a58:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     a5c:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
     a60:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
     a66:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     a6b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     a70:	66 0f db e2          	pand   %xmm2,%xmm4
     a74:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     a79:	66 44 0f db e9       	pand   %xmm1,%xmm13
     a7e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     a83:	66 0f eb d4          	por    %xmm4,%xmm2
     a87:	66 41 0f eb cd       	por    %xmm13,%xmm1
     a8c:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
     a91:	66 0f d6 54 24 c0    	movq   %xmm2,-0x40(%rsp)
     a97:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
     a9d:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
     aa2:	66 45 0f 6f f4       	movdqa %xmm12,%xmm14
     aa7:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     aac:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     ab1:	66 44 0f 64 f9       	pcmpgtb %xmm1,%xmm15
     ab6:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
     abb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
     ac0:	66 45 0f 6f f9       	movdqa %xmm9,%xmm15
     ac5:	66 44 0f 60 c3       	punpcklbw %xmm3,%xmm8
     aca:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
     ace:	66 41 0f 65 e0       	pcmpgtw %xmm8,%xmm4
     ad3:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
     ad8:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     add:	66 45 0f 6f e8       	movdqa %xmm8,%xmm13
     ae2:	66 44 0f 65 f9       	pcmpgtw %xmm1,%xmm15
     ae7:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     aeb:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
     af0:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     af5:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     afa:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
     aff:	66 41 0f db ed       	pand   %xmm13,%xmm5
     b04:	66 44 0f db f2       	pand   %xmm2,%xmm14
     b09:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     b0e:	66 41 0f df db       	pandn  %xmm11,%xmm3
     b13:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
     b18:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
     b1d:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
     b22:	66 45 0f eb ee       	por    %xmm14,%xmm13
     b27:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
     b2c:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     b30:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
     b35:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     b3a:	66 45 0f 6f fc       	movdqa %xmm12,%xmm15
     b3f:	66 44 0f d6 6c 24 d8 	movq   %xmm13,-0x28(%rsp)
     b46:	66 41 0f 6f d6       	movdqa %xmm14,%xmm2
     b4b:	66 44 0f db f9       	pand   %xmm1,%xmm15
     b50:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     b55:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     b5a:	66 41 0f db e6       	pand   %xmm14,%xmm4
     b5f:	66 44 0f eb c5       	por    %xmm5,%xmm8
     b64:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
     b69:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
     b6e:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
     b73:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
     b7a:	66 0f 6f cf          	movdqa %xmm7,%xmm1
     b7e:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
     b83:	66 44 0f eb f4       	por    %xmm4,%xmm14
     b88:	f3 44 0f 7e 44 24 40 	movq   0x40(%rsp),%xmm8
     b8f:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     b94:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
     b99:	66 44 0f eb fa       	por    %xmm2,%xmm15
     b9e:	66 44 0f d6 74 24 e0 	movq   %xmm14,-0x20(%rsp)
     ba5:	66 44 0f db c0       	pand   %xmm0,%xmm8
     baa:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
     bb1:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     bb6:	66 44 0f d6 7c 24 e8 	movq   %xmm15,-0x18(%rsp)
     bbd:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     bc2:	66 44 0f db f0       	pand   %xmm0,%xmm14
     bc7:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
     bcb:	66 0f 6f e9          	movdqa %xmm1,%xmm5
     bcf:	66 0f 6f df          	movdqa %xmm7,%xmm3
     bd3:	66 0f 60 eb          	punpcklbw %xmm3,%xmm5
     bd7:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
     bdb:	66 0f 65 e5          	pcmpgtw %xmm5,%xmm4
     bdf:	66 0f 6f fd          	movdqa %xmm5,%xmm7
     be3:	66 0f 6f d5          	movdqa %xmm5,%xmm2
     be7:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
     bec:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     bf1:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
     bf5:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
     bf9:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
     bfe:	66 0f 6f df          	movdqa %xmm7,%xmm3
     c02:	66 0f db ef          	pand   %xmm7,%xmm5
     c06:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     c0b:	66 41 0f df db       	pandn  %xmm11,%xmm3
     c10:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
     c14:	66 0f 6f fb          	movdqa %xmm3,%xmm7
     c18:	66 0f eb fd          	por    %xmm5,%xmm7
     c1c:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
     c21:	66 0f db ea          	pand   %xmm2,%xmm5
     c25:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     c2a:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
     c30:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
     c35:	66 0f 6f dd          	movdqa %xmm5,%xmm3
     c39:	66 0f 6f ea          	movdqa %xmm2,%xmm5
     c3d:	66 0f eb eb          	por    %xmm3,%xmm5
     c41:	66 0f 6f dc          	movdqa %xmm4,%xmm3
     c45:	66 0f 6f e1          	movdqa %xmm1,%xmm4
     c49:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
     c4d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     c51:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
     c57:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
     c5c:	66 0f 6f d4          	movdqa %xmm4,%xmm2
     c60:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     c65:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     c6a:	66 0f db e2          	pand   %xmm2,%xmm4
     c6e:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     c73:	66 0f eb d4          	por    %xmm4,%xmm2
     c77:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     c7c:	66 0f db e1          	pand   %xmm1,%xmm4
     c80:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     c85:	66 0f d6 14 24       	movq   %xmm2,(%rsp)
     c8a:	66 0f 6f d4          	movdqa %xmm4,%xmm2
     c8e:	66 0f 6f e1          	movdqa %xmm1,%xmm4
     c92:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
     c97:	66 0f eb e2          	por    %xmm2,%xmm4
     c9b:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
     ca0:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
     ca5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
     caa:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
     cb0:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
     cb5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
     cba:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
     cbe:	66 0f 6f ea          	movdqa %xmm2,%xmm5
     cc2:	66 0f 60 e9          	punpcklbw %xmm1,%xmm5
     cc6:	66 0f 60 d1          	punpcklbw %xmm1,%xmm2
     cca:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
     cce:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     cd3:	66 0f 6f cd          	movdqa %xmm5,%xmm1
     cd7:	66 44 0f 65 c2       	pcmpgtw %xmm2,%xmm8
     cdc:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
     ce1:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     ce5:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
     ce9:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
     cee:	66 0f db e1          	pand   %xmm1,%xmm4
     cf2:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     cf7:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
     cfc:	66 0f eb cc          	por    %xmm4,%xmm1
     d00:	66 44 0f db ed       	pand   %xmm5,%xmm13
     d05:	66 41 0f df eb       	pandn  %xmm11,%xmm5
     d0a:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
     d10:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
     d15:	f3 44 0f 7e 44 24 50 	movq   0x50(%rsp),%xmm8
     d1c:	66 41 0f eb ed       	por    %xmm13,%xmm5
     d21:	66 44 0f 61 f9       	punpcklwd %xmm1,%xmm15
     d26:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
     d2a:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
     d2f:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     d34:	66 41 0f db df       	pand   %xmm15,%xmm3
     d39:	66 45 0f df fb       	pandn  %xmm11,%xmm15
     d3e:	66 44 0f eb fb       	por    %xmm3,%xmm15
     d43:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
     d48:	66 41 0f db c0       	pand   %xmm8,%xmm0
     d4d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
     d52:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
     d57:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     d5c:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
     d61:	66 44 0f db ea       	pand   %xmm2,%xmm13
     d66:	66 41 0f df d3       	pandn  %xmm11,%xmm2
     d6b:	66 41 0f eb d5       	por    %xmm13,%xmm2
     d70:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
     d75:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
     d79:	66 0f 6f e1          	movdqa %xmm1,%xmm4
     d7d:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
     d81:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
     d85:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
     d8a:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
     d8e:	66 44 0f 6f f4       	movdqa %xmm4,%xmm14
     d93:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     d98:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
     d9d:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
     da1:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
     da6:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
     dab:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
     db0:	66 41 0f db fe       	pand   %xmm14,%xmm7
     db5:	66 45 0f df f3       	pandn  %xmm11,%xmm14
     dba:	66 0f db dc          	pand   %xmm4,%xmm3
     dbe:	66 41 0f df e3       	pandn  %xmm11,%xmm4
     dc3:	66 44 0f eb f7       	por    %xmm7,%xmm14
     dc8:	66 0f eb e3          	por    %xmm3,%xmm4
     dcc:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
     dd1:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
     dd6:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
     dda:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
     ddf:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
     de3:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
     de8:	66 41 0f db fd       	pand   %xmm13,%xmm7
     ded:	66 45 0f df eb       	pandn  %xmm11,%xmm13
     df2:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
     df7:	66 44 0f eb ef       	por    %xmm7,%xmm13
     dfc:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
     e01:	66 0f db d9          	pand   %xmm1,%xmm3
     e05:	66 0f 64 f8          	pcmpgtb %xmm0,%xmm7
     e09:	66 41 0f df cb       	pandn  %xmm11,%xmm1
     e0e:	66 44 0f d6 6c 24 18 	movq   %xmm13,0x18(%rsp)
     e15:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     e1a:	66 0f eb cb          	por    %xmm3,%xmm1
     e1e:	66 0f 6f d8          	movdqa %xmm0,%xmm3
     e22:	66 0f 60 df          	punpcklbw %xmm7,%xmm3
     e26:	66 0f 60 c7          	punpcklbw %xmm7,%xmm0
     e2a:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
     e2f:	66 0f 65 fb          	pcmpgtw %xmm3,%xmm7
     e33:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
     e38:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
     e3d:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
     e42:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
     e46:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
     e4b:	66 45 0f db e8       	pand   %xmm8,%xmm13
     e50:	66 45 0f df c3       	pandn  %xmm11,%xmm8
     e55:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
     e5a:	66 45 0f eb c5       	por    %xmm13,%xmm8
     e5f:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
     e64:	66 0f db fb          	pand   %xmm3,%xmm7
     e68:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
     e6d:	66 41 0f df db       	pandn  %xmm11,%xmm3
     e72:	66 0f eb df          	por    %xmm7,%xmm3
     e76:	66 0f 6f f8          	movdqa %xmm0,%xmm7
     e7a:	66 41 0f 61 fd       	punpcklwd %xmm13,%xmm7
     e7f:	66 4d 0f 7e ea       	movq   %xmm13,%r10
     e84:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     e89:	66 44 0f db ef       	pand   %xmm7,%xmm13
     e8e:	66 41 0f df fb       	pandn  %xmm11,%xmm7
     e93:	66 41 0f eb fd       	por    %xmm13,%xmm7
     e98:	66 4d 0f 6e ea       	movq   %r10,%xmm13
     e9d:	66 41 0f 61 c5       	punpcklwd %xmm13,%xmm0
     ea2:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
     ea7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
     eac:	66 44 0f db e8       	pand   %xmm0,%xmm13
     eb1:	66 41 0f df c3       	pandn  %xmm11,%xmm0
     eb6:	66 41 0f eb c5       	por    %xmm13,%xmm0
     ebb:	66 4c 0f 6e ea       	movq   %rdx,%xmm13
     ec0:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
     ec6:	66 44 0f 7e 6d 00    	movd   %xmm13,0x0(%rbp)
     ecc:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     ed2:	66 41 0f 7e 34 24    	movd   %xmm6,(%r12)
     ed8:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
     ede:	66 4c 0f 6e e8       	movq   %rax,%xmm13
     ee3:	41 89 06             	mov    %eax,(%r14)
     ee6:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
     eec:	66 45 0f 7e 2f       	movd   %xmm13,(%r15)
     ef1:	f3 0f 7e 74 24 88    	movq   -0x78(%rsp),%xmm6
     ef7:	66 41 0f 7e 30       	movd   %xmm6,(%r8)
     efc:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f02:	f3 0f 7e 74 24 90    	movq   -0x70(%rsp),%xmm6
     f08:	66 44 0f 7e 2f       	movd   %xmm13,(%rdi)
     f0d:	66 0f 7e 73 04       	movd   %xmm6,0x4(%rbx)
     f12:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f18:	f3 0f 7e 74 24 98    	movq   -0x68(%rsp),%xmm6
     f1e:	66 44 0f 7e 6d 04    	movd   %xmm13,0x4(%rbp)
     f24:	66 41 0f 7e 74 24 04 	movd   %xmm6,0x4(%r12)
     f2b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f31:	f3 0f 7e 74 24 a0    	movq   -0x60(%rsp),%xmm6
     f37:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
     f3d:	66 41 0f 7e 76 04    	movd   %xmm6,0x4(%r14)
     f43:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f49:	f3 0f 7e 74 24 a8    	movq   -0x58(%rsp),%xmm6
     f4f:	66 45 0f 7e 6f 04    	movd   %xmm13,0x4(%r15)
     f55:	66 41 0f 7e 70 04    	movd   %xmm6,0x4(%r8)
     f5b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f61:	f3 0f 7e 74 24 b0    	movq   -0x50(%rsp),%xmm6
     f67:	66 44 0f 7e 6f 04    	movd   %xmm13,0x4(%rdi)
     f6d:	66 0f 7e 73 08       	movd   %xmm6,0x8(%rbx)
     f72:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f78:	f3 0f 7e 74 24 b8    	movq   -0x48(%rsp),%xmm6
     f7e:	66 44 0f 7e 6d 08    	movd   %xmm13,0x8(%rbp)
     f84:	66 41 0f 7e 74 24 08 	movd   %xmm6,0x8(%r12)
     f8b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     f91:	f3 0f 7e 74 24 c0    	movq   -0x40(%rsp),%xmm6
     f97:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
     f9d:	66 41 0f 7e 76 08    	movd   %xmm6,0x8(%r14)
     fa3:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     fa9:	f3 0f 7e 74 24 c8    	movq   -0x38(%rsp),%xmm6
     faf:	66 45 0f 7e 6f 08    	movd   %xmm13,0x8(%r15)
     fb5:	66 41 0f 7e 70 08    	movd   %xmm6,0x8(%r8)
     fbb:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     fc1:	f3 0f 7e 74 24 d0    	movq   -0x30(%rsp),%xmm6
     fc7:	66 44 0f 7e 6f 08    	movd   %xmm13,0x8(%rdi)
     fcd:	66 0f 7e 73 0c       	movd   %xmm6,0xc(%rbx)
     fd2:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     fd8:	f3 0f 7e 74 24 d8    	movq   -0x28(%rsp),%xmm6
     fde:	66 44 0f 7e 6d 0c    	movd   %xmm13,0xc(%rbp)
     fe4:	66 41 0f 7e 74 24 0c 	movd   %xmm6,0xc(%r12)
     feb:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
     ff1:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
     ff7:	f3 0f 7e 74 24 e0    	movq   -0x20(%rsp),%xmm6
     ffd:	66 41 0f 7e 76 0c    	movd   %xmm6,0xc(%r14)
    1003:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1009:	f3 0f 7e 74 24 e8    	movq   -0x18(%rsp),%xmm6
    100f:	66 45 0f 7e 6f 0c    	movd   %xmm13,0xc(%r15)
    1015:	66 41 0f 7e 70 0c    	movd   %xmm6,0xc(%r8)
    101b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1021:	f3 0f 7e 74 24 f0    	movq   -0x10(%rsp),%xmm6
    1027:	66 44 0f 7e 6f 0c    	movd   %xmm13,0xc(%rdi)
    102d:	66 0f 7e 73 10       	movd   %xmm6,0x10(%rbx)
    1032:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1038:	f3 0f 7e 74 24 f8    	movq   -0x8(%rsp),%xmm6
    103e:	66 44 0f 7e 6d 10    	movd   %xmm13,0x10(%rbp)
    1044:	66 41 0f 7e 74 24 10 	movd   %xmm6,0x10(%r12)
    104b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1051:	f3 0f 7e 34 24       	movq   (%rsp),%xmm6
    1056:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
    105c:	66 41 0f 7e 76 10    	movd   %xmm6,0x10(%r14)
    1062:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1068:	f3 0f 7e 74 24 08    	movq   0x8(%rsp),%xmm6
    106e:	66 45 0f 7e 6f 10    	movd   %xmm13,0x10(%r15)
    1074:	66 41 0f 7e 70 10    	movd   %xmm6,0x10(%r8)
    107a:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
    1080:	f3 0f 7e 74 24 10    	movq   0x10(%rsp),%xmm6
    1086:	66 44 0f 7e 6f 10    	movd   %xmm13,0x10(%rdi)
    108c:	66 0f 7e 73 14       	movd   %xmm6,0x14(%rbx)
    1091:	66 0f 70 f6 e5       	pshufd $0xe5,%xmm6,%xmm6
    1096:	66 0f 7e 75 14       	movd   %xmm6,0x14(%rbp)
    109b:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
    10a2:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    10a7:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
    10ad:	66 41 0f 70 ef e5    	pshufd $0xe5,%xmm15,%xmm5
    10b3:	66 45 0f 7e 7e 14    	movd   %xmm15,0x14(%r14)
    10b9:	66 41 0f 7e 6f 14    	movd   %xmm5,0x14(%r15)
    10bf:	66 0f 70 ea e5       	pshufd $0xe5,%xmm2,%xmm5
    10c4:	66 41 0f 7e 50 14    	movd   %xmm2,0x14(%r8)
    10ca:	66 0f 7e 6f 14       	movd   %xmm5,0x14(%rdi)
    10cf:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
    10d5:	66 44 0f 7e 73 18    	movd   %xmm14,0x18(%rbx)
    10db:	66 0f 7e 6d 18       	movd   %xmm5,0x18(%rbp)
    10e0:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    10e5:	66 41 0f 7e 64 24 18 	movd   %xmm4,0x18(%r12)
    10ec:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
    10f2:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
    10f8:	66 41 0f 7e 6e 18    	movd   %xmm5,0x18(%r14)
    10fe:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    1103:	66 41 0f 7e 6f 18    	movd   %xmm5,0x18(%r15)
    1109:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
    110e:	66 41 0f 7e 48 18    	movd   %xmm1,0x18(%r8)
    1114:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
    1119:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
    111f:	66 44 0f 7e 43 1c    	movd   %xmm8,0x1c(%rbx)
    1125:	4c 01 cb             	add    %r9,%rbx
    1128:	66 0f 7e 6d 1c       	movd   %xmm5,0x1c(%rbp)
    112d:	66 0f 70 eb e5       	pshufd $0xe5,%xmm3,%xmm5
    1132:	4c 01 cd             	add    %r9,%rbp
    1135:	66 41 0f 7e 5c 24 1c 	movd   %xmm3,0x1c(%r12)
    113c:	4d 01 cc             	add    %r9,%r12
    113f:	66 41 0f 7e 6d 1c    	movd   %xmm5,0x1c(%r13)
    1145:	4d 01 cd             	add    %r9,%r13
    1148:	66 41 0f 7e 7e 1c    	movd   %xmm7,0x1c(%r14)
    114e:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
    1153:	4d 01 ce             	add    %r9,%r14
    1156:	66 41 0f 7e 7f 1c    	movd   %xmm7,0x1c(%r15)
    115c:	4d 01 cf             	add    %r9,%r15
    115f:	66 41 0f 7e 40 1c    	movd   %xmm0,0x1c(%r8)
    1165:	66 0f 70 c0 e5       	pshufd $0xe5,%xmm0,%xmm0
    116a:	4d 01 c8             	add    %r9,%r8
    116d:	66 0f 7e 47 1c       	movd   %xmm0,0x1c(%rdi)
    1172:	4c 01 cf             	add    %r9,%rdi
    1175:	48 39 ce             	cmp    %rcx,%rsi
    1178:	0f 85 89 f6 ff ff    	jne    807 <putchar+0x197>
    117e:	48 83 c4 58          	add    $0x58,%rsp
    1182:	5b                   	pop    %rbx
    1183:	5d                   	pop    %rbp
    1184:	41 5c                	pop    %r12
    1186:	41 5d                	pop    %r13
    1188:	41 5e                	pop    %r14
    118a:	41 5f                	pop    %r15
    118c:	c3                   	ret
    118d:	4a 8d 04 17          	lea    (%rdi,%r10,1),%rax
    1191:	48 8d 7a 10          	lea    0x10(%rdx),%rdi
    1195:	80 3a 00             	cmpb   $0x0,(%rdx)
    1198:	44 89 c6             	mov    %r8d,%esi
    119b:	41 0f 49 f1          	cmovns %r9d,%esi
    119f:	89 30                	mov    %esi,(%rax)
    11a1:	44 89 c6             	mov    %r8d,%esi
    11a4:	f6 02 40             	testb  $0x40,(%rdx)
    11a7:	41 0f 44 f1          	cmove  %r9d,%esi
    11ab:	89 70 04             	mov    %esi,0x4(%rax)
    11ae:	44 89 c6             	mov    %r8d,%esi
    11b1:	f6 02 20             	testb  $0x20,(%rdx)
    11b4:	41 0f 44 f1          	cmove  %r9d,%esi
    11b8:	89 70 08             	mov    %esi,0x8(%rax)
    11bb:	44 89 c6             	mov    %r8d,%esi
    11be:	f6 02 10             	testb  $0x10,(%rdx)
    11c1:	41 0f 44 f1          	cmove  %r9d,%esi
    11c5:	89 70 0c             	mov    %esi,0xc(%rax)
    11c8:	44 89 c6             	mov    %r8d,%esi
    11cb:	f6 02 08             	testb  $0x8,(%rdx)
    11ce:	41 0f 44 f1          	cmove  %r9d,%esi
    11d2:	89 70 10             	mov    %esi,0x10(%rax)
    11d5:	44 89 c6             	mov    %r8d,%esi
    11d8:	f6 02 04             	testb  $0x4,(%rdx)
    11db:	41 0f 44 f1          	cmove  %r9d,%esi
    11df:	89 70 14             	mov    %esi,0x14(%rax)
    11e2:	44 89 c6             	mov    %r8d,%esi
    11e5:	f6 02 02             	testb  $0x2,(%rdx)
    11e8:	41 0f 44 f1          	cmove  %r9d,%esi
    11ec:	89 70 18             	mov    %esi,0x18(%rax)
    11ef:	f6 02 01             	testb  $0x1,(%rdx)
    11f2:	74 1c                	je     1210 <putchar+0xba0>
    11f4:	48 83 c2 01          	add    $0x1,%rdx
    11f8:	44 89 40 1c          	mov    %r8d,0x1c(%rax)
    11fc:	48 01 c8             	add    %rcx,%rax
    11ff:	48 39 d7             	cmp    %rdx,%rdi
    1202:	75 91                	jne    1195 <putchar+0xb25>
    1204:	e9 75 ff ff ff       	jmp    117e <putchar+0xb0e>
    1209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1210:	48 83 c2 01          	add    $0x1,%rdx
    1214:	44 89 48 1c          	mov    %r9d,0x1c(%rax)
    1218:	48 01 c8             	add    %rcx,%rax
    121b:	48 39 d7             	cmp    %rdx,%rdi
    121e:	0f 85 71 ff ff ff    	jne    1195 <putchar+0xb25>
    1224:	e9 55 ff ff ff       	jmp    117e <putchar+0xb0e>
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <clear_screen>:
    1230:	f3 0f 1e fa          	endbr64
    1234:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    123b:	00 00 00 
    123e:	41 57                	push   %r15
    1240:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # 1234 <clear_screen+0x4>
    1247:	41 56                	push   %r14
    1249:	4d 01 df             	add    %r11,%r15
    124c:	49 be 00 00 00 00 00 	movabs $0x0,%r14
    1253:	00 00 00 
    1256:	41 55                	push   %r13
    1258:	41 54                	push   %r12
    125a:	55                   	push   %rbp
    125b:	53                   	push   %rbx
    125c:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
    1263:	43 8b 04 3e          	mov    (%r14,%r15,1),%eax
    1267:	99                   	cltd
    1268:	43 f7 7c 3e 10       	idivl  0x10(%r14,%r15,1)
    126d:	89 84 24 c8 00 00 00 	mov    %eax,0xc8(%rsp)
    1274:	43 8b 44 3e 04       	mov    0x4(%r14,%r15,1),%eax
    1279:	99                   	cltd
    127a:	43 f7 7c 3e 14       	idivl  0x14(%r14,%r15,1)
    127f:	85 c0                	test   %eax,%eax
    1281:	0f 8e 5b 0c 00 00    	jle    1ee2 <clear_screen+0xcb2>
    1287:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
    128e:	00 00 00 
    1291:	41 89 fd             	mov    %edi,%r13d
    1294:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    129b:	00 00 00 
    129e:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
    12a5:	00 00 00 
    12a8:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
    12af:	00 
    12b0:	4a 8d 1c 3a          	lea    (%rdx,%r15,1),%rbx
    12b4:	8b 94 24 c8 00 00 00 	mov    0xc8(%rsp),%edx
    12bb:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
    12c0:	4f 8b 64 3e 18       	mov    0x18(%r14,%r15,1),%r12
    12c5:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
    12cc:	00 00 00 
    12cf:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
    12d6:	00 
    12d7:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
    12de:	00 00 00 
    12e1:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
    12e8:	00 00 00 00 
    12ec:	48 89 bc 24 a8 00 00 	mov    %rdi,0xa8(%rsp)
    12f3:	00 
    12f4:	48 89 9c 24 b0 00 00 	mov    %rbx,0xb0(%rsp)
    12fb:	00 
    12fc:	85 d2                	test   %edx,%edx
    12fe:	0f 8e de 0b 00 00    	jle    1ee2 <clear_screen+0xcb2>
    1304:	4c 89 a4 24 80 00 00 	mov    %r12,0x80(%rsp)
    130b:	00 
    130c:	45 89 ec             	mov    %r13d,%r12d
    130f:	41 89 f5             	mov    %esi,%r13d
    1312:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
    1319:	00 
    131a:	89 84 24 cc 00 00 00 	mov    %eax,0xcc(%rsp)
    1321:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
    1328:	00 00 00 
    132b:	44 89 e8             	mov    %r13d,%eax
    132e:	c7 84 24 88 00 00 00 	movl   $0x0,0x88(%rsp)
    1335:	00 00 00 00 
    1339:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
    133d:	48 89 b4 24 c0 00 00 	mov    %rsi,0xc0(%rsp)
    1344:	00 
    1345:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
    134c:	00 00 00 
    134f:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
    1354:	48 83 c7 0f          	add    $0xf,%rdi
    1358:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
    135f:	00 
    1360:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    1367:	00 
    1368:	4b 63 1c 3e          	movslq (%r14,%r15,1),%rbx
    136c:	44 8b 8c 24 8c 00 00 	mov    0x8c(%rsp),%r9d
    1373:	00 
    1374:	41 bd 1f 00 00 00    	mov    $0x1f,%r13d
    137a:	bd 00 00 00 00       	mov    $0x0,%ebp
    137f:	47 0f af 4c 3e 14    	imul   0x14(%r14,%r15,1),%r9d
    1385:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
    138c:	00 
    138d:	47 0f af 54 3e 10    	imul   0x10(%r14,%r15,1),%r10d
    1393:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
    139a:	00 
    139b:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
    13a2:	00 
    13a3:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
    13a8:	44 0f af cb          	imul   %ebx,%r9d
    13ac:	4d 63 d2             	movslq %r10d,%r10
    13af:	4d 63 c9             	movslq %r9d,%r9
    13b2:	4d 01 d1             	add    %r10,%r9
    13b5:	49 89 da             	mov    %rbx,%r10
    13b8:	49 c1 e2 04          	shl    $0x4,%r10
    13bc:	49 c1 e1 02          	shl    $0x2,%r9
    13c0:	49 29 da             	sub    %rbx,%r10
    13c3:	49 c1 e2 02          	shl    $0x2,%r10
    13c7:	85 db                	test   %ebx,%ebx
    13c9:	4d 8d 5a 1f          	lea    0x1f(%r10),%r11
    13cd:	4d 0f 48 dd          	cmovs  %r13,%r11
    13d1:	4d 01 cb             	add    %r9,%r11
    13d4:	49 01 fb             	add    %rdi,%r11
    13d7:	4d 39 c3             	cmp    %r8,%r11
    13da:	41 0f 92 c3          	setb   %r11b
    13de:	85 db                	test   %ebx,%ebx
    13e0:	4c 0f 49 d5          	cmovns %rbp,%r10
    13e4:	4d 01 ca             	add    %r9,%r10
    13e7:	49 01 fa             	add    %rdi,%r10
    13ea:	4c 39 94 24 98 00 00 	cmp    %r10,0x98(%rsp)
    13f1:	00 
    13f2:	41 0f 92 c2          	setb   %r10b
    13f6:	45 08 da             	or     %r11b,%r10b
    13f9:	0f 84 fe 0a 00 00    	je     1efd <clear_screen+0xccd>
    13ff:	4c 8d 52 1f          	lea    0x1f(%rdx),%r10
    1403:	49 83 fa 3e          	cmp    $0x3e,%r10
    1407:	0f 86 f0 0a 00 00    	jbe    1efd <clear_screen+0xccd>
    140d:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
    1411:	49 8d b8 00 fe ff ff 	lea    -0x200(%r8),%rdi
    1418:	48 c1 e3 05          	shl    $0x5,%rbx
    141c:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
    1420:	48 89 d9             	mov    %rbx,%rcx
    1423:	66 41 0f 6e d4       	movd   %r12d,%xmm2
    1428:	4d 8d 04 11          	lea    (%r9,%rdx,1),%r8
    142c:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
    1432:	66 0f 6e d0          	movd   %eax,%xmm2
    1436:	4d 8d 2c 10          	lea    (%r8,%rdx,1),%r13
    143a:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
    1440:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    1445:	49 8d 6c 15 00       	lea    0x0(%r13,%rdx,1),%rbp
    144a:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    144f:	48 8d 5c 15 00       	lea    0x0(%rbp,%rdx,1),%rbx
    1454:	4c 8d 1c 13          	lea    (%rbx,%rdx,1),%r11
    1458:	4d 8d 14 13          	lea    (%r11,%rdx,1),%r10
    145c:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1461:	48 81 ea f0 01 00 00 	sub    $0x1f0,%rdx
    1468:	48 89 54 24 88       	mov    %rdx,-0x78(%rsp)
    146d:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
    1474:	00 
    1475:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    1479:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
    147e:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    1485:	00 
    1486:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    148a:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
    148f:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
    1496:	00 
    1497:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    149b:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
    14a0:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    14a7:	00 
    14a8:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    14ac:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
    14b1:	48 8b 94 24 c0 00 00 	mov    0xc0(%rsp),%rdx
    14b8:	00 
    14b9:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    14bd:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
    14c2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    14c9:	00 00 00 
    14cc:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    14d0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
    14d5:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    14dc:	00 00 00 
    14df:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
    14e3:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
    14e8:	44 89 e2             	mov    %r12d,%edx
    14eb:	41 89 c4             	mov    %eax,%r12d
    14ee:	48 8b 44 24 88       	mov    -0x78(%rsp),%rax
    14f3:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    14f8:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    14fd:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    1502:	f3 0f 7e 97 00 02 00 	movq   0x200(%rdi),%xmm2
    1509:	00 
    150a:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    150f:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
    1514:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    1519:	48 83 c7 08          	add    $0x8,%rdi
    151d:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
    1521:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    1525:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    1529:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    152d:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    1531:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    1536:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
    153a:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
    153f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    1544:	66 0f 6f f8          	movdqa %xmm0,%xmm7
    1548:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    154c:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
    1551:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    1556:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    155b:	66 41 0f db e6       	pand   %xmm14,%xmm4
    1560:	66 45 0f df f2       	pandn  %xmm10,%xmm14
    1565:	66 0f db d9          	pand   %xmm1,%xmm3
    1569:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    156e:	66 44 0f eb f4       	por    %xmm4,%xmm14
    1573:	66 0f eb cb          	por    %xmm3,%xmm1
    1577:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    157c:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    1581:	66 44 0f 7e 36       	movd   %xmm14,(%rsi)
    1586:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    158a:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
    1590:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    1594:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
    1598:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    159d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    15a2:	66 0f 6f cf          	movdqa %xmm7,%xmm1
    15a6:	66 0f db e7          	pand   %xmm7,%xmm4
    15aa:	66 0f db e8          	pand   %xmm0,%xmm5
    15ae:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    15b3:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    15b8:	66 0f eb c5          	por    %xmm5,%xmm0
    15bc:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
    15c2:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    15c6:	66 0f d6 44 24 98    	movq   %xmm0,-0x68(%rsp)
    15cc:	66 0f eb fc          	por    %xmm4,%xmm7
    15d0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    15d5:	66 0f db ea          	pand   %xmm2,%xmm5
    15d9:	66 0f d6 7c 24 90    	movq   %xmm7,-0x70(%rsp)
    15df:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
    15e4:	66 0f 6f c5          	movdqa %xmm5,%xmm0
    15e8:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    15ed:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    15f2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    15f7:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    15fb:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    15ff:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    1603:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    1607:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
    160b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    160f:	66 0f 6f de          	movdqa %xmm6,%xmm3
    1613:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    1618:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    161d:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    1621:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    1625:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    162a:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    162f:	66 0f db eb          	pand   %xmm3,%xmm5
    1633:	66 41 0f df da       	pandn  %xmm10,%xmm3
    1638:	66 0f db f1          	pand   %xmm1,%xmm6
    163c:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    1641:	66 0f eb dd          	por    %xmm5,%xmm3
    1645:	66 0f 6f e9          	movdqa %xmm1,%xmm5
    1649:	66 0f d6 5c 24 a0    	movq   %xmm3,-0x60(%rsp)
    164f:	66 0f eb ee          	por    %xmm6,%xmm5
    1653:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    1658:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
    165c:	66 0f d6 6c 24 a8    	movq   %xmm5,-0x58(%rsp)
    1662:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    1667:	66 0f 6f de          	movdqa %xmm6,%xmm3
    166b:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    166f:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    1673:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    1677:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    167c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    1680:	66 0f db e6          	pand   %xmm6,%xmm4
    1684:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    1689:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    168e:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    1692:	66 0f eb f4          	por    %xmm4,%xmm6
    1696:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    169b:	66 0f db e0          	pand   %xmm0,%xmm4
    169f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    16a4:	66 0f d6 74 24 b0    	movq   %xmm6,-0x50(%rsp)
    16aa:	f3 0f 7e 74 24 60    	movq   0x60(%rsp),%xmm6
    16b0:	66 0f 6f cc          	movdqa %xmm4,%xmm1
    16b4:	66 0f 6f e0          	movdqa %xmm0,%xmm4
    16b8:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
    16be:	66 0f eb e1          	por    %xmm1,%xmm4
    16c2:	66 0f db f2          	pand   %xmm2,%xmm6
    16c6:	66 0f db c2          	pand   %xmm2,%xmm0
    16ca:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
    16d0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    16d5:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    16da:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    16df:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    16e3:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    16e7:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    16eb:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    16ef:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
    16f3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    16f8:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    16fc:	66 44 0f 65 e0       	pcmpgtw %xmm0,%xmm12
    1701:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    1706:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    170a:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    170e:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    1713:	66 0f db eb          	pand   %xmm3,%xmm5
    1717:	66 41 0f df da       	pandn  %xmm10,%xmm3
    171c:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    1721:	66 0f eb dd          	por    %xmm5,%xmm3
    1725:	66 44 0f db e9       	pand   %xmm1,%xmm13
    172a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    172f:	66 0f d6 5c 24 c0    	movq   %xmm3,-0x40(%rsp)
    1735:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    173a:	66 41 0f eb cd       	por    %xmm13,%xmm1
    173f:	f3 44 0f 7e 64 24 58 	movq   0x58(%rsp),%xmm12
    1746:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    174a:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    174f:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
    1754:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
    175a:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    175f:	66 44 0f db e2       	pand   %xmm2,%xmm12
    1764:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
    1769:	66 44 0f db e8       	pand   %xmm0,%xmm13
    176e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    1773:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    1778:	66 41 0f eb c5       	por    %xmm13,%xmm0
    177d:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
    1782:	66 41 0f db e0       	pand   %xmm8,%xmm4
    1787:	66 0f d6 44 24 d8    	movq   %xmm0,-0x28(%rsp)
    178d:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    1792:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    1797:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    179c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    17a1:	66 44 0f eb c4       	por    %xmm4,%xmm8
    17a6:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    17ab:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
    17b2:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
    17b7:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    17bc:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
    17c1:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
    17c6:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    17cb:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
    17d0:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    17d4:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
    17d9:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    17de:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
    17e3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    17e8:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
    17ec:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
    17f1:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    17f5:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    17fa:	66 41 0f db ed       	pand   %xmm13,%xmm5
    17ff:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    1804:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    1809:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    180e:	66 41 0f df da       	pandn  %xmm10,%xmm3
    1813:	66 44 0f db e9       	pand   %xmm1,%xmm13
    1818:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    181d:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
    1822:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    1827:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
    182c:	66 44 0f eb e5       	por    %xmm5,%xmm12
    1831:	66 44 0f eb eb       	por    %xmm3,%xmm13
    1836:	66 0f 6f df          	movdqa %xmm7,%xmm3
    183a:	66 0f 6f f8          	movdqa %xmm0,%xmm7
    183e:	66 44 0f d6 64 24 e0 	movq   %xmm12,-0x20(%rsp)
    1845:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
    1849:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    184d:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    1852:	66 44 0f d6 6c 24 e8 	movq   %xmm13,-0x18(%rsp)
    1859:	66 0f 6f cf          	movdqa %xmm7,%xmm1
    185d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    1862:	66 0f db e7          	pand   %xmm7,%xmm4
    1866:	66 0f db e8          	pand   %xmm0,%xmm5
    186a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    186f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    1874:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    1878:	66 0f 6f cd          	movdqa %xmm5,%xmm1
    187c:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    1880:	66 0f 6f c6          	movdqa %xmm6,%xmm0
    1884:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    1889:	66 0f eb fc          	por    %xmm4,%xmm7
    188d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    1892:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    1897:	66 0f eb e9          	por    %xmm1,%xmm5
    189b:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
    18a1:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
    18a7:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    18ac:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
    18b1:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
    18b6:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    18bb:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
    18bf:	66 0f 6f de          	movdqa %xmm6,%xmm3
    18c3:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    18c7:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    18cb:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    18cf:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
    18d3:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    18d7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    18dc:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
    18e0:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    18e4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    18e9:	66 0f 6f de          	movdqa %xmm6,%xmm3
    18ed:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    18f2:	66 0f db ee          	pand   %xmm6,%xmm5
    18f6:	66 0f db e1          	pand   %xmm1,%xmm4
    18fa:	66 41 0f df da       	pandn  %xmm10,%xmm3
    18ff:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    1904:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    1908:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    190c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    1910:	66 0f eb e3          	por    %xmm3,%xmm4
    1914:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    1919:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    191d:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    1921:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
    1927:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    192c:	66 0f eb f5          	por    %xmm5,%xmm6
    1930:	66 0f d6 34 24       	movq   %xmm6,(%rsp)
    1935:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    193a:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    193e:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    1942:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    1947:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    194c:	66 0f db e1          	pand   %xmm1,%xmm4
    1950:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    1955:	66 44 0f db c0       	pand   %xmm0,%xmm8
    195a:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    195f:	66 0f eb cc          	por    %xmm4,%xmm1
    1963:	66 41 0f eb c0       	por    %xmm8,%xmm0
    1968:	f3 44 0f 7e 44 24 68 	movq   0x68(%rsp),%xmm8
    196f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    1974:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
    197a:	66 0f d6 44 24 18    	movq   %xmm0,0x18(%rsp)
    1980:	66 44 0f db c2       	pand   %xmm2,%xmm8
    1985:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
    198a:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
    198f:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
    1994:	66 44 0f 64 e1       	pcmpgtb %xmm1,%xmm12
    1999:	66 0f 6f e9          	movdqa %xmm1,%xmm5
    199d:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    19a2:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    19a7:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
    19ab:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
    19af:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
    19b3:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    19b8:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    19bd:	66 44 0f 65 e9       	pcmpgtw %xmm1,%xmm13
    19c2:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
    19c7:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
    19cb:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    19d0:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
    19d5:	66 41 0f db e0       	pand   %xmm8,%xmm4
    19da:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
    19df:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    19e4:	66 44 0f db e5       	pand   %xmm5,%xmm12
    19e9:	66 41 0f df ea       	pandn  %xmm10,%xmm5
    19ee:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    19f3:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
    19f8:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
    19fd:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    1a01:	66 41 0f eb ec       	por    %xmm12,%xmm5
    1a06:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    1a0b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    1a10:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
    1a15:	66 44 0f eb c4       	por    %xmm4,%xmm8
    1a1a:	66 44 0f db e1       	pand   %xmm1,%xmm12
    1a1f:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    1a24:	66 41 0f db dd       	pand   %xmm13,%xmm3
    1a29:	66 44 0f d6 44 24 20 	movq   %xmm8,0x20(%rsp)
    1a30:	66 41 0f eb cc       	por    %xmm12,%xmm1
    1a35:	f3 44 0f 7e 64 24 70 	movq   0x70(%rsp),%xmm12
    1a3c:	66 45 0f df ea       	pandn  %xmm10,%xmm13
    1a41:	66 44 0f eb eb       	por    %xmm3,%xmm13
    1a46:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    1a4b:	66 44 0f db e2       	pand   %xmm2,%xmm12
    1a50:	66 44 0f d6 6c 24 28 	movq   %xmm13,0x28(%rsp)
    1a57:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    1a5c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    1a61:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    1a66:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    1a6a:	66 0f 6f e0          	movdqa %xmm0,%xmm4
    1a6e:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
    1a72:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    1a76:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    1a7b:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
    1a7f:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
    1a84:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    1a89:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    1a8e:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
    1a93:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
    1a97:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    1a9c:	66 41 0f db f4       	pand   %xmm12,%xmm6
    1aa1:	66 45 0f df e2       	pandn  %xmm10,%xmm12
    1aa6:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
    1aab:	66 44 0f eb e6       	por    %xmm6,%xmm12
    1ab0:	66 0f db dc          	pand   %xmm4,%xmm3
    1ab4:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    1ab9:	66 44 0f d6 64 24 30 	movq   %xmm12,0x30(%rsp)
    1ac0:	66 0f eb e3          	por    %xmm3,%xmm4
    1ac4:	f3 44 0f 7e 64 24 78 	movq   0x78(%rsp),%xmm12
    1acb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    1ad0:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    1ad4:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    1ad9:	66 41 0f db d4       	pand   %xmm12,%xmm2
    1ade:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    1ae3:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    1ae8:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
    1aed:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    1af1:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    1af6:	66 41 0f db f0       	pand   %xmm8,%xmm6
    1afb:	66 45 0f df c2       	pandn  %xmm10,%xmm8
    1b00:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    1b05:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    1b0a:	66 44 0f eb c6       	por    %xmm6,%xmm8
    1b0f:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    1b14:	66 0f db d8          	pand   %xmm0,%xmm3
    1b18:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    1b1d:	66 0f eb c3          	por    %xmm3,%xmm0
    1b21:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
    1b25:	66 0f 6f da          	movdqa %xmm2,%xmm3
    1b29:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
    1b2d:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
    1b31:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    1b36:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
    1b3a:	66 0f 6f fb          	movdqa %xmm3,%xmm7
    1b3e:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    1b43:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
    1b48:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    1b4c:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
    1b50:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    1b55:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    1b5a:	66 44 0f db e7       	pand   %xmm7,%xmm12
    1b5f:	66 41 0f df fa       	pandn  %xmm10,%xmm7
    1b64:	66 0f db f3          	pand   %xmm3,%xmm6
    1b68:	66 41 0f df da       	pandn  %xmm10,%xmm3
    1b6d:	66 41 0f eb fc       	por    %xmm12,%xmm7
    1b72:	66 0f eb de          	por    %xmm6,%xmm3
    1b76:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    1b7b:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
    1b7f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
    1b84:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
    1b89:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
    1b8e:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    1b93:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
    1b98:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1b9e:	66 44 0f db ee       	pand   %xmm6,%xmm13
    1ba3:	66 41 0f df f2       	pandn  %xmm10,%xmm6
    1ba8:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
    1bad:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    1bb2:	f3 44 0f 7e 74 24 88 	movq   -0x78(%rsp),%xmm14
    1bb9:	66 41 0f eb f5       	por    %xmm13,%xmm6
    1bbe:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    1bc3:	66 44 0f db ea       	pand   %xmm2,%xmm13
    1bc8:	66 41 0f df d2       	pandn  %xmm10,%xmm2
    1bcd:	66 45 0f 7e 30       	movd   %xmm14,(%r8)
    1bd2:	66 41 0f eb d5       	por    %xmm13,%xmm2
    1bd7:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1bdd:	f3 44 0f 7e 74 24 90 	movq   -0x70(%rsp),%xmm14
    1be4:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
    1bea:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1bf0:	66 44 0f 7e 75 00    	movd   %xmm14,0x0(%rbp)
    1bf6:	f3 44 0f 7e 74 24 98 	movq   -0x68(%rsp),%xmm14
    1bfd:	66 44 0f 7e 23       	movd   %xmm12,(%rbx)
    1c02:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1c08:	66 45 0f 7e 33       	movd   %xmm14,(%r11)
    1c0d:	f3 44 0f 7e 74 24 a0 	movq   -0x60(%rsp),%xmm14
    1c14:	66 45 0f 7e 2a       	movd   %xmm13,(%r10)
    1c19:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1c1f:	66 44 0f 7e 76 04    	movd   %xmm14,0x4(%rsi)
    1c25:	f3 44 0f 7e 74 24 a8 	movq   -0x58(%rsp),%xmm14
    1c2c:	66 45 0f 7e 61 04    	movd   %xmm12,0x4(%r9)
    1c32:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1c38:	66 45 0f 7e 70 04    	movd   %xmm14,0x4(%r8)
    1c3e:	f3 44 0f 7e 74 24 b0 	movq   -0x50(%rsp),%xmm14
    1c45:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
    1c4b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1c51:	66 44 0f 7e 75 04    	movd   %xmm14,0x4(%rbp)
    1c57:	f3 44 0f 7e 74 24 b8 	movq   -0x48(%rsp),%xmm14
    1c5e:	66 44 0f 7e 63 04    	movd   %xmm12,0x4(%rbx)
    1c64:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1c6a:	66 45 0f 7e 73 04    	movd   %xmm14,0x4(%r11)
    1c70:	f3 44 0f 7e 74 24 c0 	movq   -0x40(%rsp),%xmm14
    1c77:	66 45 0f 7e 6a 04    	movd   %xmm13,0x4(%r10)
    1c7d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1c83:	66 44 0f 7e 76 08    	movd   %xmm14,0x8(%rsi)
    1c89:	f3 44 0f 7e 74 24 c8 	movq   -0x38(%rsp),%xmm14
    1c90:	66 45 0f 7e 61 08    	movd   %xmm12,0x8(%r9)
    1c96:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1c9c:	66 45 0f 7e 70 08    	movd   %xmm14,0x8(%r8)
    1ca2:	f3 44 0f 7e 74 24 d0 	movq   -0x30(%rsp),%xmm14
    1ca9:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
    1caf:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1cb5:	66 44 0f 7e 75 08    	movd   %xmm14,0x8(%rbp)
    1cbb:	f3 44 0f 7e 74 24 d8 	movq   -0x28(%rsp),%xmm14
    1cc2:	66 44 0f 7e 63 08    	movd   %xmm12,0x8(%rbx)
    1cc8:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1cce:	66 45 0f 7e 73 08    	movd   %xmm14,0x8(%r11)
    1cd4:	66 45 0f 7e 6a 08    	movd   %xmm13,0x8(%r10)
    1cda:	f3 44 0f 7e 74 24 e0 	movq   -0x20(%rsp),%xmm14
    1ce1:	66 44 0f 7e 76 0c    	movd   %xmm14,0xc(%rsi)
    1ce7:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1ced:	f3 44 0f 7e 74 24 e8 	movq   -0x18(%rsp),%xmm14
    1cf4:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
    1cfa:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1d00:	66 45 0f 7e 70 0c    	movd   %xmm14,0xc(%r8)
    1d06:	f3 44 0f 7e 74 24 f0 	movq   -0x10(%rsp),%xmm14
    1d0d:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
    1d13:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1d19:	66 44 0f 7e 75 0c    	movd   %xmm14,0xc(%rbp)
    1d1f:	f3 44 0f 7e 74 24 f8 	movq   -0x8(%rsp),%xmm14
    1d26:	66 44 0f 7e 63 0c    	movd   %xmm12,0xc(%rbx)
    1d2c:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1d32:	66 45 0f 7e 73 0c    	movd   %xmm14,0xc(%r11)
    1d38:	f3 44 0f 7e 34 24    	movq   (%rsp),%xmm14
    1d3e:	66 45 0f 7e 6a 0c    	movd   %xmm13,0xc(%r10)
    1d44:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1d4a:	66 44 0f 7e 76 10    	movd   %xmm14,0x10(%rsi)
    1d50:	f3 44 0f 7e 74 24 08 	movq   0x8(%rsp),%xmm14
    1d57:	66 45 0f 7e 61 10    	movd   %xmm12,0x10(%r9)
    1d5d:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1d63:	66 45 0f 7e 70 10    	movd   %xmm14,0x10(%r8)
    1d69:	f3 44 0f 7e 74 24 10 	movq   0x10(%rsp),%xmm14
    1d70:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
    1d76:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1d7c:	66 44 0f 7e 75 10    	movd   %xmm14,0x10(%rbp)
    1d82:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
    1d89:	66 44 0f 7e 63 10    	movd   %xmm12,0x10(%rbx)
    1d8f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    1d95:	66 45 0f 7e 73 10    	movd   %xmm14,0x10(%r11)
    1d9b:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
    1da2:	66 45 0f 7e 6a 10    	movd   %xmm13,0x10(%r10)
    1da8:	f3 44 0f 7e 6c 24 28 	movq   0x28(%rsp),%xmm13
    1daf:	66 44 0f 7e 76 14    	movd   %xmm14,0x14(%rsi)
    1db5:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    1dbb:	66 45 0f 7e 61 14    	movd   %xmm12,0x14(%r9)
    1dc1:	66 41 0f 7e 68 14    	movd   %xmm5,0x14(%r8)
    1dc7:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    1dcc:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
    1dd2:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
    1dd8:	66 44 0f 7e 6d 14    	movd   %xmm13,0x14(%rbp)
    1dde:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
    1de3:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
    1de8:	66 41 0f 7e 4b 14    	movd   %xmm1,0x14(%r11)
    1dee:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
    1df4:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
    1dfa:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
    1dff:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    1e04:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
    1e0a:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    1e0f:	66 41 0f 7e 60 18    	movd   %xmm4,0x18(%r8)
    1e15:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
    1e1b:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
    1e21:	66 44 0f 7e 45 18    	movd   %xmm8,0x18(%rbp)
    1e27:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
    1e2c:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
    1e31:	66 41 0f 7e 43 18    	movd   %xmm0,0x18(%r11)
    1e37:	66 41 0f 7e 6a 18    	movd   %xmm5,0x18(%r10)
    1e3d:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
    1e42:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
    1e47:	48 01 ce             	add    %rcx,%rsi
    1e4a:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
    1e50:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
    1e55:	49 01 c9             	add    %rcx,%r9
    1e58:	66 41 0f 7e 58 1c    	movd   %xmm3,0x1c(%r8)
    1e5e:	49 01 c8             	add    %rcx,%r8
    1e61:	66 41 0f 7e 7d 1c    	movd   %xmm7,0x1c(%r13)
    1e67:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
    1e6c:	49 01 cd             	add    %rcx,%r13
    1e6f:	66 0f 7e 75 1c       	movd   %xmm6,0x1c(%rbp)
    1e74:	48 01 cd             	add    %rcx,%rbp
    1e77:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
    1e7c:	48 01 cb             	add    %rcx,%rbx
    1e7f:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
    1e85:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
    1e8a:	49 01 cb             	add    %rcx,%r11
    1e8d:	66 41 0f 7e 52 1c    	movd   %xmm2,0x1c(%r10)
    1e93:	49 01 ca             	add    %rcx,%r10
    1e96:	48 39 c7             	cmp    %rax,%rdi
    1e99:	0f 85 54 f6 ff ff    	jne    14f3 <clear_screen+0x2c3>
    1e9f:	44 89 e0             	mov    %r12d,%eax
    1ea2:	41 89 d4             	mov    %edx,%r12d
    1ea5:	83 84 24 88 00 00 00 	addl   $0x1,0x88(%rsp)
    1eac:	01 
    1ead:	8b bc 24 88 00 00 00 	mov    0x88(%rsp),%edi
    1eb4:	39 bc 24 c8 00 00 00 	cmp    %edi,0xc8(%rsp)
    1ebb:	0f 85 a7 f4 ff ff    	jne    1368 <clear_screen+0x138>
    1ec1:	83 84 24 8c 00 00 00 	addl   $0x1,0x8c(%rsp)
    1ec8:	01 
    1ec9:	41 89 c5             	mov    %eax,%r13d
    1ecc:	8b bc 24 8c 00 00 00 	mov    0x8c(%rsp),%edi
    1ed3:	8b 84 24 cc 00 00 00 	mov    0xcc(%rsp),%eax
    1eda:	39 f8                	cmp    %edi,%eax
    1edc:	0f 85 30 f4 ff ff    	jne    1312 <clear_screen+0xe2>
    1ee2:	4b c7 44 3e 08 00 00 	movq   $0x0,0x8(%r14,%r15,1)
    1ee9:	00 00 
    1eeb:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
    1ef2:	5b                   	pop    %rbx
    1ef3:	5d                   	pop    %rbp
    1ef4:	41 5c                	pop    %r12
    1ef6:	41 5d                	pop    %r13
    1ef8:	41 5e                	pop    %r14
    1efa:	41 5f                	pop    %r15
    1efc:	c3                   	ret
    1efd:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
    1f04:	00 
    1f05:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
    1f0c:	00 
    1f0d:	49 01 f9             	add    %rdi,%r9
    1f10:	4e 8d 14 3b          	lea    (%rbx,%r15,1),%r10
    1f14:	eb 23                	jmp    1f39 <clear_screen+0xd09>
    1f16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1f1d:	00 00 00 
    1f20:	41 89 41 1c          	mov    %eax,0x1c(%r9)
    1f24:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    1f29:	49 83 c2 01          	add    $0x1,%r10
    1f2d:	49 01 d1             	add    %rdx,%r9
    1f30:	49 39 f2             	cmp    %rsi,%r10
    1f33:	0f 84 6c ff ff ff    	je     1ea5 <clear_screen+0xc75>
    1f39:	41 80 3a 00          	cmpb   $0x0,(%r10)
    1f3d:	89 c1                	mov    %eax,%ecx
    1f3f:	41 0f 48 cc          	cmovs  %r12d,%ecx
    1f43:	41 89 09             	mov    %ecx,(%r9)
    1f46:	89 c1                	mov    %eax,%ecx
    1f48:	41 f6 02 40          	testb  $0x40,(%r10)
    1f4c:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f50:	41 89 49 04          	mov    %ecx,0x4(%r9)
    1f54:	89 c1                	mov    %eax,%ecx
    1f56:	41 f6 02 20          	testb  $0x20,(%r10)
    1f5a:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f5e:	41 89 49 08          	mov    %ecx,0x8(%r9)
    1f62:	89 c1                	mov    %eax,%ecx
    1f64:	41 f6 02 10          	testb  $0x10,(%r10)
    1f68:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f6c:	41 89 49 0c          	mov    %ecx,0xc(%r9)
    1f70:	89 c1                	mov    %eax,%ecx
    1f72:	41 f6 02 08          	testb  $0x8,(%r10)
    1f76:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f7a:	41 89 49 10          	mov    %ecx,0x10(%r9)
    1f7e:	89 c1                	mov    %eax,%ecx
    1f80:	41 f6 02 04          	testb  $0x4,(%r10)
    1f84:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f88:	41 89 49 14          	mov    %ecx,0x14(%r9)
    1f8c:	89 c1                	mov    %eax,%ecx
    1f8e:	41 f6 02 02          	testb  $0x2,(%r10)
    1f92:	41 0f 45 cc          	cmovne %r12d,%ecx
    1f96:	41 89 49 18          	mov    %ecx,0x18(%r9)
    1f9a:	41 f6 02 01          	testb  $0x1,(%r10)
    1f9e:	74 80                	je     1f20 <clear_screen+0xcf0>
    1fa0:	45 89 61 1c          	mov    %r12d,0x1c(%r9)
    1fa4:	e9 7b ff ff ff       	jmp    1f24 <clear_screen+0xcf4>
    1fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001fb0 <skip_atoi2>:
    1fb0:	f3 0f 1e fa          	endbr64
    1fb4:	48 8b 17             	mov    (%rdi),%rdx
    1fb7:	0f b6 02             	movzbl (%rdx),%eax
    1fba:	8d 48 d0             	lea    -0x30(%rax),%ecx
    1fbd:	80 f9 09             	cmp    $0x9,%cl
    1fc0:	77 36                	ja     1ff8 <skip_atoi2+0x48>
    1fc2:	48 83 c2 01          	add    $0x1,%rdx
    1fc6:	31 c9                	xor    %ecx,%ecx
    1fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1fcf:	00 
    1fd0:	83 e8 30             	sub    $0x30,%eax
    1fd3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
    1fd6:	48 89 17             	mov    %rdx,(%rdi)
    1fd9:	48 83 c2 01          	add    $0x1,%rdx
    1fdd:	0f be c0             	movsbl %al,%eax
    1fe0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
    1fe3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
    1fe7:	8d 70 d0             	lea    -0x30(%rax),%esi
    1fea:	40 80 fe 09          	cmp    $0x9,%sil
    1fee:	76 e0                	jbe    1fd0 <skip_atoi2+0x20>
    1ff0:	89 c8                	mov    %ecx,%eax
    1ff2:	c3                   	ret
    1ff3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1ff8:	31 c9                	xor    %ecx,%ecx
    1ffa:	89 c8                	mov    %ecx,%eax
    1ffc:	c3                   	ret
    1ffd:	0f 1f 00             	nopl   (%rax)

0000000000002000 <skip_atoi>:
    2000:	f3 0f 1e fa          	endbr64
    2004:	48 8b 17             	mov    (%rdi),%rdx
    2007:	0f b6 02             	movzbl (%rdx),%eax
    200a:	8d 48 d0             	lea    -0x30(%rax),%ecx
    200d:	80 f9 09             	cmp    $0x9,%cl
    2010:	77 36                	ja     2048 <skip_atoi+0x48>
    2012:	48 83 c2 01          	add    $0x1,%rdx
    2016:	31 c9                	xor    %ecx,%ecx
    2018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    201f:	00 
    2020:	83 e8 30             	sub    $0x30,%eax
    2023:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
    2026:	48 89 17             	mov    %rdx,(%rdi)
    2029:	48 83 c2 01          	add    $0x1,%rdx
    202d:	0f be c0             	movsbl %al,%eax
    2030:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
    2033:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
    2037:	8d 70 d0             	lea    -0x30(%rax),%esi
    203a:	40 80 fe 09          	cmp    $0x9,%sil
    203e:	76 e0                	jbe    2020 <skip_atoi+0x20>
    2040:	89 c8                	mov    %ecx,%eax
    2042:	c3                   	ret
    2043:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2048:	31 c9                	xor    %ecx,%ecx
    204a:	89 c8                	mov    %ecx,%eax
    204c:	c3                   	ret
    204d:	0f 1f 00             	nopl   (%rax)

0000000000002050 <vsprintf>:
    2050:	f3 0f 1e fa          	endbr64
    2054:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    205b:	00 00 00 
    205e:	41 57                	push   %r15
    2060:	49 89 ff             	mov    %rdi,%r15
    2063:	41 56                	push   %r14
    2065:	41 55                	push   %r13
    2067:	4c 8d 2d e6 ff ff ff 	lea    -0x1a(%rip),%r13        # 2054 <vsprintf+0x4>
    206e:	41 54                	push   %r12
    2070:	49 89 d4             	mov    %rdx,%r12
    2073:	4d 01 dd             	add    %r11,%r13
    2076:	55                   	push   %rbp
    2077:	53                   	push   %rbx
    2078:	48 83 ec 08          	sub    $0x8,%rsp
    207c:	0f b6 16             	movzbl (%rsi),%edx
    207f:	84 d2                	test   %dl,%dl
    2081:	0f 84 aa 08 00 00    	je     2931 <vsprintf+0x8e1>
    2087:	48 89 f0             	mov    %rsi,%rax
    208a:	48 8d 2d 00 00 00 00 	lea    0x0(%rip),%rbp        # 2091 <vsprintf+0x41>
    2091:	eb 1a                	jmp    20ad <vsprintf+0x5d>
    2093:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2098:	88 17                	mov    %dl,(%rdi)
    209a:	48 83 c0 01          	add    $0x1,%rax
    209e:	0f b6 10             	movzbl (%rax),%edx
    20a1:	48 83 c7 01          	add    $0x1,%rdi
    20a5:	84 d2                	test   %dl,%dl
    20a7:	0f 84 43 01 00 00    	je     21f0 <vsprintf+0x1a0>
    20ad:	80 fa 25             	cmp    $0x25,%dl
    20b0:	75 e6                	jne    2098 <vsprintf+0x48>
    20b2:	45 31 c9             	xor    %r9d,%r9d
    20b5:	0f 1f 00             	nopl   (%rax)
    20b8:	0f be 50 01          	movsbl 0x1(%rax),%edx
    20bc:	48 8d 58 01          	lea    0x1(%rax),%rbx
    20c0:	8d 4a e0             	lea    -0x20(%rdx),%ecx
    20c3:	80 f9 10             	cmp    $0x10,%cl
    20c6:	77 18                	ja     20e0 <vsprintf+0x90>
    20c8:	0f b6 c9             	movzbl %cl,%ecx
    20cb:	48 8b 74 cd 00       	mov    0x0(%rbp,%rcx,8),%rsi
    20d0:	48 01 ee             	add    %rbp,%rsi
    20d3:	3e ff e6             	notrack jmp *%rsi
    20d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    20dd:	00 00 00 
    20e0:	8d 4a d0             	lea    -0x30(%rdx),%ecx
    20e3:	80 f9 09             	cmp    $0x9,%cl
    20e6:	0f 86 54 01 00 00    	jbe    2240 <vsprintf+0x1f0>
    20ec:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    20f1:	80 fa 2a             	cmp    $0x2a,%dl
    20f4:	0f 84 76 01 00 00    	je     2270 <vsprintf+0x220>
    20fa:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
    2100:	80 fa 2e             	cmp    $0x2e,%dl
    2103:	0f 84 07 01 00 00    	je     2210 <vsprintf+0x1c0>
    2109:	8d 42 b4             	lea    -0x4c(%rdx),%eax
    210c:	3c 2e                	cmp    $0x2e,%al
    210e:	0f 87 8c 00 00 00    	ja     21a0 <vsprintf+0x150>
    2114:	48 be 01 00 00 10 01 	movabs $0x400110000001,%rsi
    211b:	40 00 00 
    211e:	48 0f a3 c6          	bt     %rax,%rsi
    2122:	73 7c                	jae    21a0 <vsprintf+0x150>
    2124:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
    2128:	4c 8d 73 01          	lea    0x1(%rbx),%r14
    212c:	83 e8 25             	sub    $0x25,%eax
    212f:	3c 53                	cmp    $0x53,%al
    2131:	0f 87 8c 00 00 00    	ja     21c3 <vsprintf+0x173>
    2137:	0f b6 c0             	movzbl %al,%eax
    213a:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2141 <vsprintf+0xf1>
    2141:	48 03 34 c6          	add    (%rsi,%rax,8),%rsi
    2145:	3e ff e6             	notrack jmp *%rsi
    2148:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    214f:	00 
    2150:	41 83 c9 01          	or     $0x1,%r9d
    2154:	48 89 d8             	mov    %rbx,%rax
    2157:	e9 5c ff ff ff       	jmp    20b8 <vsprintf+0x68>
    215c:	0f 1f 40 00          	nopl   0x0(%rax)
    2160:	41 83 c9 10          	or     $0x10,%r9d
    2164:	eb ee                	jmp    2154 <vsprintf+0x104>
    2166:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    216d:	00 00 00 
    2170:	41 83 c9 04          	or     $0x4,%r9d
    2174:	eb de                	jmp    2154 <vsprintf+0x104>
    2176:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    217d:	00 00 00 
    2180:	41 83 c9 20          	or     $0x20,%r9d
    2184:	eb ce                	jmp    2154 <vsprintf+0x104>
    2186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    218d:	00 00 00 
    2190:	41 83 c9 08          	or     $0x8,%r9d
    2194:	eb be                	jmp    2154 <vsprintf+0x104>
    2196:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    219d:	00 00 00 
    21a0:	83 ea 25             	sub    $0x25,%edx
    21a3:	80 fa 53             	cmp    $0x53,%dl
    21a6:	77 18                	ja     21c0 <vsprintf+0x170>
    21a8:	0f b6 d2             	movzbl %dl,%edx
    21ab:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 21b2 <vsprintf+0x162>
    21b2:	48 03 04 d0          	add    (%rax,%rdx,8),%rax
    21b6:	3e ff e0             	notrack jmp *%rax
    21b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    21c0:	49 89 de             	mov    %rbx,%r14
    21c3:	c6 07 25             	movb   $0x25,(%rdi)
    21c6:	41 0f b6 06          	movzbl (%r14),%eax
    21ca:	84 c0                	test   %al,%al
    21cc:	0f 84 6f 05 00 00    	je     2741 <vsprintf+0x6f1>
    21d2:	88 47 01             	mov    %al,0x1(%rdi)
    21d5:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    21da:	49 8d 46 01          	lea    0x1(%r14),%rax
    21de:	48 83 c7 02          	add    $0x2,%rdi
    21e2:	84 d2                	test   %dl,%dl
    21e4:	0f 85 c3 fe ff ff    	jne    20ad <vsprintf+0x5d>
    21ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    21f0:	89 f8                	mov    %edi,%eax
    21f2:	44 29 f8             	sub    %r15d,%eax
    21f5:	c6 07 00             	movb   $0x0,(%rdi)
    21f8:	48 83 c4 08          	add    $0x8,%rsp
    21fc:	5b                   	pop    %rbx
    21fd:	5d                   	pop    %rbp
    21fe:	41 5c                	pop    %r12
    2200:	41 5d                	pop    %r13
    2202:	41 5e                	pop    %r14
    2204:	41 5f                	pop    %r15
    2206:	c3                   	ret
    2207:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    220e:	00 00 
    2210:	0f be 53 01          	movsbl 0x1(%rbx),%edx
    2214:	48 8d 43 01          	lea    0x1(%rbx),%rax
    2218:	8d 72 d0             	lea    -0x30(%rdx),%esi
    221b:	40 80 fe 09          	cmp    $0x9,%sil
    221f:	0f 86 4b 04 00 00    	jbe    2670 <vsprintf+0x620>
    2225:	80 fa 2a             	cmp    $0x2a,%dl
    2228:	0f 84 82 04 00 00    	je     26b0 <vsprintf+0x660>
    222e:	48 89 c3             	mov    %rax,%rbx
    2231:	45 31 c0             	xor    %r8d,%r8d
    2234:	e9 d0 fe ff ff       	jmp    2109 <vsprintf+0xb9>
    2239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2240:	31 c9                	xor    %ecx,%ecx
    2242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2248:	83 ea 30             	sub    $0x30,%edx
    224b:	8d 04 89             	lea    (%rcx,%rcx,4),%eax
    224e:	48 83 c3 01          	add    $0x1,%rbx
    2252:	0f be d2             	movsbl %dl,%edx
    2255:	8d 0c 42             	lea    (%rdx,%rax,2),%ecx
    2258:	0f be 13             	movsbl (%rbx),%edx
    225b:	8d 42 d0             	lea    -0x30(%rdx),%eax
    225e:	3c 09                	cmp    $0x9,%al
    2260:	76 e6                	jbe    2248 <vsprintf+0x1f8>
    2262:	e9 93 fe ff ff       	jmp    20fa <vsprintf+0xaa>
    2267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    226e:	00 00 
    2270:	41 8b 14 24          	mov    (%r12),%edx
    2274:	48 8d 58 02          	lea    0x2(%rax),%rbx
    2278:	83 fa 2f             	cmp    $0x2f,%edx
    227b:	77 23                	ja     22a0 <vsprintf+0x250>
    227d:	89 d1                	mov    %edx,%ecx
    227f:	83 c2 08             	add    $0x8,%edx
    2282:	49 03 4c 24 10       	add    0x10(%r12),%rcx
    2287:	41 89 14 24          	mov    %edx,(%r12)
    228b:	8b 09                	mov    (%rcx),%ecx
    228d:	85 c9                	test   %ecx,%ecx
    228f:	79 06                	jns    2297 <vsprintf+0x247>
    2291:	f7 d9                	neg    %ecx
    2293:	41 83 c9 10          	or     $0x10,%r9d
    2297:	0f be 50 02          	movsbl 0x2(%rax),%edx
    229b:	e9 5a fe ff ff       	jmp    20fa <vsprintf+0xaa>
    22a0:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
    22a5:	48 8d 51 08          	lea    0x8(%rcx),%rdx
    22a9:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
    22ae:	eb db                	jmp    228b <vsprintf+0x23b>
    22b0:	41 83 c9 40          	or     $0x40,%r9d
    22b4:	41 8b 04 24          	mov    (%r12),%eax
    22b8:	83 fa 6c             	cmp    $0x6c,%edx
    22bb:	0f 84 4f 06 00 00    	je     2910 <vsprintf+0x8c0>
    22c1:	83 f8 2f             	cmp    $0x2f,%eax
    22c4:	0f 87 3e 04 00 00    	ja     2708 <vsprintf+0x6b8>
    22ca:	89 c2                	mov    %eax,%edx
    22cc:	83 c0 08             	add    $0x8,%eax
    22cf:	49 03 54 24 10       	add    0x10(%r12),%rdx
    22d4:	41 89 04 24          	mov    %eax,(%r12)
    22d8:	8b 32                	mov    (%rdx),%esi
    22da:	ba 10 00 00 00       	mov    $0x10,%edx
    22df:	eb 2f                	jmp    2310 <vsprintf+0x2c0>
    22e1:	41 83 c9 02          	or     $0x2,%r9d
    22e5:	41 8b 04 24          	mov    (%r12),%eax
    22e9:	83 fa 6c             	cmp    $0x6c,%edx
    22ec:	0f 84 de 05 00 00    	je     28d0 <vsprintf+0x880>
    22f2:	83 f8 2f             	cmp    $0x2f,%eax
    22f5:	0f 87 f5 03 00 00    	ja     26f0 <vsprintf+0x6a0>
    22fb:	89 c2                	mov    %eax,%edx
    22fd:	83 c0 08             	add    $0x8,%eax
    2300:	49 03 54 24 10       	add    0x10(%r12),%rdx
    2305:	41 89 04 24          	mov    %eax,(%r12)
    2309:	8b 32                	mov    (%rdx),%esi
    230b:	ba 0a 00 00 00       	mov    $0xa,%edx
    2310:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2317:	00 00 00 
    231a:	4c 01 e8             	add    %r13,%rax
    231d:	ff d0                	call   *%rax
    231f:	48 89 c7             	mov    %rax,%rdi
    2322:	49 8d 46 01          	lea    0x1(%r14),%rax
    2326:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    232b:	e9 75 fd ff ff       	jmp    20a5 <vsprintf+0x55>
    2330:	49 89 de             	mov    %rbx,%r14
    2333:	c6 07 25             	movb   $0x25,(%rdi)
    2336:	49 8d 46 01          	lea    0x1(%r14),%rax
    233a:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    233f:	48 83 c7 01          	add    $0x1,%rdi
    2343:	e9 5d fd ff ff       	jmp    20a5 <vsprintf+0x55>
    2348:	49 89 de             	mov    %rbx,%r14
    234b:	41 83 e1 10          	and    $0x10,%r9d
    234f:	0f 84 16 04 00 00    	je     276b <vsprintf+0x71b>
    2355:	41 8b 04 24          	mov    (%r12),%eax
    2359:	83 f8 2f             	cmp    $0x2f,%eax
    235c:	0f 87 cc 03 00 00    	ja     272e <vsprintf+0x6de>
    2362:	89 c2                	mov    %eax,%edx
    2364:	83 c0 08             	add    $0x8,%eax
    2367:	49 03 54 24 10       	add    0x10(%r12),%rdx
    236c:	41 89 04 24          	mov    %eax,(%r12)
    2370:	8b 02                	mov    (%rdx),%eax
    2372:	8d 71 ff             	lea    -0x1(%rcx),%esi
    2375:	4c 8d 57 01          	lea    0x1(%rdi),%r10
    2379:	41 89 f0             	mov    %esi,%r8d
    237c:	88 07                	mov    %al,(%rdi)
    237e:	49 8d 46 01          	lea    0x1(%r14),%rax
    2382:	85 f6                	test   %esi,%esi
    2384:	0f 8e f5 08 00 00    	jle    2c7f <vsprintf+0xc2f>
    238a:	8d 51 fe             	lea    -0x2(%rcx),%edx
    238d:	83 fa 0e             	cmp    $0xe,%edx
    2390:	0f 8e f6 08 00 00    	jle    2c8c <vsprintf+0xc3c>
    2396:	41 c1 e8 04          	shr    $0x4,%r8d
    239a:	48 89 fa             	mov    %rdi,%rdx
    239d:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    23a4:	00 00 00 
    23a7:	49 c1 e0 04          	shl    $0x4,%r8
    23ab:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
    23b1:	4d 8d 1c 38          	lea    (%r8,%rdi,1),%r11
    23b5:	41 83 e0 10          	and    $0x10,%r8d
    23b9:	74 15                	je     23d0 <vsprintf+0x380>
    23bb:	48 8d 57 10          	lea    0x10(%rdi),%rdx
    23bf:	0f 11 47 01          	movups %xmm0,0x1(%rdi)
    23c3:	4c 39 da             	cmp    %r11,%rdx
    23c6:	74 19                	je     23e1 <vsprintf+0x391>
    23c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    23cf:	00 
    23d0:	0f 11 42 01          	movups %xmm0,0x1(%rdx)
    23d4:	48 83 c2 20          	add    $0x20,%rdx
    23d8:	0f 11 42 f1          	movups %xmm0,-0xf(%rdx)
    23dc:	4c 39 da             	cmp    %r11,%rdx
    23df:	75 ef                	jne    23d0 <vsprintf+0x380>
    23e1:	41 89 f1             	mov    %esi,%r9d
    23e4:	41 89 f0             	mov    %esi,%r8d
    23e7:	41 83 e1 f0          	and    $0xfffffff0,%r9d
    23eb:	44 89 ca             	mov    %r9d,%edx
    23ee:	45 29 c8             	sub    %r9d,%r8d
    23f1:	4c 01 d2             	add    %r10,%rdx
    23f4:	40 f6 c6 0f          	test   $0xf,%sil
    23f8:	74 79                	je     2473 <vsprintf+0x423>
    23fa:	44 29 c9             	sub    %r9d,%ecx
    23fd:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    2401:	83 e9 02             	sub    $0x2,%ecx
    2404:	83 f9 06             	cmp    $0x6,%ecx
    2407:	76 2b                	jbe    2434 <vsprintf+0x3e4>
    2409:	41 8d 49 01          	lea    0x1(%r9),%ecx
    240d:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    2414:	00 00 00 
    2417:	4f 8b 4c 0d 00       	mov    0x0(%r13,%r9,1),%r9
    241c:	4c 89 0c 0f          	mov    %r9,(%rdi,%rcx,1)
    2420:	44 89 d9             	mov    %r11d,%ecx
    2423:	83 e1 f8             	and    $0xfffffff8,%ecx
    2426:	89 cf                	mov    %ecx,%edi
    2428:	41 29 c8             	sub    %ecx,%r8d
    242b:	48 01 fa             	add    %rdi,%rdx
    242e:	41 83 e3 07          	and    $0x7,%r11d
    2432:	74 3f                	je     2473 <vsprintf+0x423>
    2434:	c6 02 20             	movb   $0x20,(%rdx)
    2437:	41 83 f8 01          	cmp    $0x1,%r8d
    243b:	7e 36                	jle    2473 <vsprintf+0x423>
    243d:	c6 42 01 20          	movb   $0x20,0x1(%rdx)
    2441:	41 83 f8 02          	cmp    $0x2,%r8d
    2445:	74 2c                	je     2473 <vsprintf+0x423>
    2447:	c6 42 02 20          	movb   $0x20,0x2(%rdx)
    244b:	41 83 f8 03          	cmp    $0x3,%r8d
    244f:	74 22                	je     2473 <vsprintf+0x423>
    2451:	c6 42 03 20          	movb   $0x20,0x3(%rdx)
    2455:	41 83 f8 04          	cmp    $0x4,%r8d
    2459:	74 18                	je     2473 <vsprintf+0x423>
    245b:	c6 42 04 20          	movb   $0x20,0x4(%rdx)
    245f:	41 83 f8 05          	cmp    $0x5,%r8d
    2463:	74 0e                	je     2473 <vsprintf+0x423>
    2465:	c6 42 05 20          	movb   $0x20,0x5(%rdx)
    2469:	41 83 f8 06          	cmp    $0x6,%r8d
    246d:	74 04                	je     2473 <vsprintf+0x423>
    246f:	c6 42 06 20          	movb   $0x20,0x6(%rdx)
    2473:	48 63 f6             	movslq %esi,%rsi
    2476:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    247b:	49 8d 3c 32          	lea    (%r10,%rsi,1),%rdi
    247f:	e9 21 fc ff ff       	jmp    20a5 <vsprintf+0x55>
    2484:	49 89 de             	mov    %rbx,%r14
    2487:	41 8b 04 24          	mov    (%r12),%eax
    248b:	83 f8 2f             	cmp    $0x2f,%eax
    248e:	0f 87 87 02 00 00    	ja     271b <vsprintf+0x6cb>
    2494:	89 c2                	mov    %eax,%edx
    2496:	83 c0 08             	add    $0x8,%eax
    2499:	49 03 54 24 10       	add    0x10(%r12),%rdx
    249e:	41 89 04 24          	mov    %eax,(%r12)
    24a2:	48 8b 32             	mov    (%rdx),%rsi
    24a5:	80 3e 00             	cmpb   $0x0,(%rsi)
    24a8:	0f 84 ca 07 00 00    	je     2c78 <vsprintf+0xc28>
    24ae:	48 89 f0             	mov    %rsi,%rax
    24b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    24b8:	48 83 c0 01          	add    $0x1,%rax
    24bc:	80 38 00             	cmpb   $0x0,(%rax)
    24bf:	75 f7                	jne    24b8 <vsprintf+0x468>
    24c1:	89 c2                	mov    %eax,%edx
    24c3:	29 f2                	sub    %esi,%edx
    24c5:	44 39 c2             	cmp    %r8d,%edx
    24c8:	44 89 c0             	mov    %r8d,%eax
    24cb:	0f 4e c2             	cmovle %edx,%eax
    24ce:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
    24d2:	0f 45 d0             	cmovne %eax,%edx
    24d5:	41 83 e1 10          	and    $0x10,%r9d
    24d9:	0f 84 0b 06 00 00    	je     2aea <vsprintf+0xa9a>
    24df:	85 d2                	test   %edx,%edx
    24e1:	7e 3c                	jle    251f <vsprintf+0x4cf>
    24e3:	8d 42 ff             	lea    -0x1(%rdx),%eax
    24e6:	83 f8 06             	cmp    $0x6,%eax
    24e9:	76 14                	jbe    24ff <vsprintf+0x4af>
    24eb:	4c 8d 4e 01          	lea    0x1(%rsi),%r9
    24ef:	49 89 f8             	mov    %rdi,%r8
    24f2:	4d 29 c8             	sub    %r9,%r8
    24f5:	49 83 f8 0e          	cmp    $0xe,%r8
    24f9:	0f 87 4c 04 00 00    	ja     294b <vsprintf+0x8fb>
    24ff:	4c 63 ca             	movslq %edx,%r9
    2502:	31 c0                	xor    %eax,%eax
    2504:	0f 1f 40 00          	nopl   0x0(%rax)
    2508:	44 0f b6 04 06       	movzbl (%rsi,%rax,1),%r8d
    250d:	44 88 04 07          	mov    %r8b,(%rdi,%rax,1)
    2511:	48 83 c0 01          	add    $0x1,%rax
    2515:	4c 39 c8             	cmp    %r9,%rax
    2518:	75 ee                	jne    2508 <vsprintf+0x4b8>
    251a:	89 d0                	mov    %edx,%eax
    251c:	48 01 c7             	add    %rax,%rdi
    251f:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
    2523:	49 8d 46 01          	lea    0x1(%r14),%rax
    2527:	39 d1                	cmp    %edx,%ecx
    2529:	0f 8e f7 fd ff ff    	jle    2326 <vsprintf+0x2d6>
    252f:	29 d1                	sub    %edx,%ecx
    2531:	48 89 fe             	mov    %rdi,%rsi
    2534:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
    2538:	41 83 fa 0e          	cmp    $0xe,%r10d
    253c:	0f 86 55 07 00 00    	jbe    2c97 <vsprintf+0xc47>
    2542:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    2549:	00 00 00 
    254c:	41 89 cb             	mov    %ecx,%r11d
    254f:	41 c1 eb 04          	shr    $0x4,%r11d
    2553:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
    2559:	49 c1 e3 04          	shl    $0x4,%r11
    255d:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
    2561:	41 83 e3 10          	and    $0x10,%r11d
    2565:	74 11                	je     2578 <vsprintf+0x528>
    2567:	48 8d 77 10          	lea    0x10(%rdi),%rsi
    256b:	0f 11 07             	movups %xmm0,(%rdi)
    256e:	48 39 f3             	cmp    %rsi,%rbx
    2571:	74 15                	je     2588 <vsprintf+0x538>
    2573:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2578:	0f 11 06             	movups %xmm0,(%rsi)
    257b:	48 83 c6 20          	add    $0x20,%rsi
    257f:	0f 11 46 f0          	movups %xmm0,-0x10(%rsi)
    2583:	48 39 f3             	cmp    %rsi,%rbx
    2586:	75 f0                	jne    2578 <vsprintf+0x528>
    2588:	41 89 c9             	mov    %ecx,%r9d
    258b:	41 83 e1 f0          	and    $0xfffffff0,%r9d
    258f:	44 89 ce             	mov    %r9d,%esi
    2592:	45 29 c8             	sub    %r9d,%r8d
    2595:	48 01 fe             	add    %rdi,%rsi
    2598:	f6 c1 0f             	test   $0xf,%cl
    259b:	0f 84 80 00 00 00    	je     2621 <vsprintf+0x5d1>
    25a1:	44 29 c9             	sub    %r9d,%ecx
    25a4:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    25a8:	41 83 fb 06          	cmp    $0x6,%r11d
    25ac:	76 28                	jbe    25d6 <vsprintf+0x586>
    25ae:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    25b5:	00 00 00 
    25b8:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
    25bd:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
    25c1:	41 89 c9             	mov    %ecx,%r9d
    25c4:	41 83 e1 f8          	and    $0xfffffff8,%r9d
    25c8:	45 89 cb             	mov    %r9d,%r11d
    25cb:	45 29 c8             	sub    %r9d,%r8d
    25ce:	4c 01 de             	add    %r11,%rsi
    25d1:	83 e1 07             	and    $0x7,%ecx
    25d4:	74 4b                	je     2621 <vsprintf+0x5d1>
    25d6:	c6 06 20             	movb   $0x20,(%rsi)
    25d9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
    25dd:	44 39 c2             	cmp    %r8d,%edx
    25e0:	7d 3f                	jge    2621 <vsprintf+0x5d1>
    25e2:	c6 46 01 20          	movb   $0x20,0x1(%rsi)
    25e6:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
    25ea:	39 ca                	cmp    %ecx,%edx
    25ec:	7d 33                	jge    2621 <vsprintf+0x5d1>
    25ee:	c6 46 02 20          	movb   $0x20,0x2(%rsi)
    25f2:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
    25f6:	44 39 ca             	cmp    %r9d,%edx
    25f9:	7d 26                	jge    2621 <vsprintf+0x5d1>
    25fb:	c6 46 03 20          	movb   $0x20,0x3(%rsi)
    25ff:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
    2603:	39 ca                	cmp    %ecx,%edx
    2605:	7d 1a                	jge    2621 <vsprintf+0x5d1>
    2607:	c6 46 04 20          	movb   $0x20,0x4(%rsi)
    260b:	41 83 e8 05          	sub    $0x5,%r8d
    260f:	44 39 ca             	cmp    %r9d,%edx
    2612:	7d 0d                	jge    2621 <vsprintf+0x5d1>
    2614:	c6 46 05 20          	movb   $0x20,0x5(%rsi)
    2618:	44 39 c2             	cmp    %r8d,%edx
    261b:	7d 04                	jge    2621 <vsprintf+0x5d1>
    261d:	c6 46 06 20          	movb   $0x20,0x6(%rsi)
    2621:	45 89 d2             	mov    %r10d,%r10d
    2624:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    2629:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
    262e:	e9 72 fa ff ff       	jmp    20a5 <vsprintf+0x55>
    2633:	49 89 de             	mov    %rbx,%r14
    2636:	83 f9 ff             	cmp    $0xffffffff,%ecx
    2639:	0f 84 1e 01 00 00    	je     275d <vsprintf+0x70d>
    263f:	41 8b 04 24          	mov    (%r12),%eax
    2643:	83 f8 2f             	cmp    $0x2f,%eax
    2646:	0f 87 fe 00 00 00    	ja     274a <vsprintf+0x6fa>
    264c:	89 c2                	mov    %eax,%edx
    264e:	83 c0 08             	add    $0x8,%eax
    2651:	49 03 54 24 10       	add    0x10(%r12),%rdx
    2656:	41 89 04 24          	mov    %eax,(%r12)
    265a:	48 8b 32             	mov    (%rdx),%rsi
    265d:	ba 10 00 00 00       	mov    $0x10,%edx
    2662:	e9 a9 fc ff ff       	jmp    2310 <vsprintf+0x2c0>
    2667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    266e:	00 00 
    2670:	45 31 c0             	xor    %r8d,%r8d
    2673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2678:	83 ea 30             	sub    $0x30,%edx
    267b:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
    267f:	48 83 c0 01          	add    $0x1,%rax
    2683:	0f be d2             	movsbl %dl,%edx
    2686:	44 8d 04 72          	lea    (%rdx,%rsi,2),%r8d
    268a:	0f be 10             	movsbl (%rax),%edx
    268d:	8d 72 d0             	lea    -0x30(%rdx),%esi
    2690:	40 80 fe 09          	cmp    $0x9,%sil
    2694:	76 e2                	jbe    2678 <vsprintf+0x628>
    2696:	31 f6                	xor    %esi,%esi
    2698:	45 85 c0             	test   %r8d,%r8d
    269b:	48 89 c3             	mov    %rax,%rbx
    269e:	44 0f 48 c6          	cmovs  %esi,%r8d
    26a2:	e9 62 fa ff ff       	jmp    2109 <vsprintf+0xb9>
    26a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    26ae:	00 00 
    26b0:	41 8b 04 24          	mov    (%r12),%eax
    26b4:	48 8d 73 02          	lea    0x2(%rbx),%rsi
    26b8:	83 f8 2f             	cmp    $0x2f,%eax
    26bb:	0f 87 77 02 00 00    	ja     2938 <vsprintf+0x8e8>
    26c1:	89 c2                	mov    %eax,%edx
    26c3:	83 c0 08             	add    $0x8,%eax
    26c6:	49 03 54 24 10       	add    0x10(%r12),%rdx
    26cb:	41 89 04 24          	mov    %eax,(%r12)
    26cf:	44 8b 02             	mov    (%rdx),%r8d
    26d2:	31 c0                	xor    %eax,%eax
    26d4:	0f be 53 02          	movsbl 0x2(%rbx),%edx
    26d8:	48 89 f3             	mov    %rsi,%rbx
    26db:	45 85 c0             	test   %r8d,%r8d
    26de:	44 0f 48 c0          	cmovs  %eax,%r8d
    26e2:	e9 22 fa ff ff       	jmp    2109 <vsprintf+0xb9>
    26e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    26ee:	00 00 
    26f0:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    26f5:	48 8d 42 08          	lea    0x8(%rdx),%rax
    26f9:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    26fe:	e9 06 fc ff ff       	jmp    2309 <vsprintf+0x2b9>
    2703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2708:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    270d:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2711:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2716:	e9 bd fb ff ff       	jmp    22d8 <vsprintf+0x288>
    271b:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2720:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2724:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2729:	e9 74 fd ff ff       	jmp    24a2 <vsprintf+0x452>
    272e:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2733:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2737:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    273c:	e9 2f fc ff ff       	jmp    2370 <vsprintf+0x320>
    2741:	48 83 c7 01          	add    $0x1,%rdi
    2745:	e9 a6 fa ff ff       	jmp    21f0 <vsprintf+0x1a0>
    274a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    274f:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2753:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2758:	e9 fd fe ff ff       	jmp    265a <vsprintf+0x60a>
    275d:	41 83 c9 01          	or     $0x1,%r9d
    2761:	b9 10 00 00 00       	mov    $0x10,%ecx
    2766:	e9 d4 fe ff ff       	jmp    263f <vsprintf+0x5ef>
    276b:	8d 71 ff             	lea    -0x1(%rcx),%esi
    276e:	41 89 f0             	mov    %esi,%r8d
    2771:	83 f9 01             	cmp    $0x1,%ecx
    2774:	0f 8e ef 04 00 00    	jle    2c69 <vsprintf+0xc19>
    277a:	8d 41 fe             	lea    -0x2(%rcx),%eax
    277d:	83 f8 0e             	cmp    $0xe,%eax
    2780:	48 89 f8             	mov    %rdi,%rax
    2783:	0f 8e 31 05 00 00    	jle    2cba <vsprintf+0xc6a>
    2789:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    2790:	00 00 00 
    2793:	89 f2                	mov    %esi,%edx
    2795:	c1 ea 04             	shr    $0x4,%edx
    2798:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
    279e:	48 c1 e2 04          	shl    $0x4,%rdx
    27a2:	4c 8d 04 3a          	lea    (%rdx,%rdi,1),%r8
    27a6:	83 e2 10             	and    $0x10,%edx
    27a9:	74 0c                	je     27b7 <vsprintf+0x767>
    27ab:	48 8d 47 10          	lea    0x10(%rdi),%rax
    27af:	0f 11 07             	movups %xmm0,(%rdi)
    27b2:	4c 39 c0             	cmp    %r8,%rax
    27b5:	74 10                	je     27c7 <vsprintf+0x777>
    27b7:	0f 11 00             	movups %xmm0,(%rax)
    27ba:	48 83 c0 20          	add    $0x20,%rax
    27be:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
    27c2:	4c 39 c0             	cmp    %r8,%rax
    27c5:	75 f0                	jne    27b7 <vsprintf+0x767>
    27c7:	89 f2                	mov    %esi,%edx
    27c9:	41 89 f0             	mov    %esi,%r8d
    27cc:	83 e2 f0             	and    $0xfffffff0,%edx
    27cf:	89 d0                	mov    %edx,%eax
    27d1:	41 29 d0             	sub    %edx,%r8d
    27d4:	48 01 f8             	add    %rdi,%rax
    27d7:	40 f6 c6 0f          	test   $0xf,%sil
    27db:	74 74                	je     2851 <vsprintf+0x801>
    27dd:	29 d1                	sub    %edx,%ecx
    27df:	44 8d 49 ff          	lea    -0x1(%rcx),%r9d
    27e3:	83 e9 02             	sub    $0x2,%ecx
    27e6:	83 f9 06             	cmp    $0x6,%ecx
    27e9:	76 27                	jbe    2812 <vsprintf+0x7c2>
    27eb:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    27f2:	00 00 00 
    27f5:	49 8b 4c 0d 00       	mov    0x0(%r13,%rcx,1),%rcx
    27fa:	48 89 0c 17          	mov    %rcx,(%rdi,%rdx,1)
    27fe:	44 89 ca             	mov    %r9d,%edx
    2801:	83 e2 f8             	and    $0xfffffff8,%edx
    2804:	89 d1                	mov    %edx,%ecx
    2806:	41 29 d0             	sub    %edx,%r8d
    2809:	48 01 c8             	add    %rcx,%rax
    280c:	41 83 e1 07          	and    $0x7,%r9d
    2810:	74 3f                	je     2851 <vsprintf+0x801>
    2812:	c6 00 20             	movb   $0x20,(%rax)
    2815:	41 83 f8 01          	cmp    $0x1,%r8d
    2819:	7e 36                	jle    2851 <vsprintf+0x801>
    281b:	c6 40 01 20          	movb   $0x20,0x1(%rax)
    281f:	41 83 f8 02          	cmp    $0x2,%r8d
    2823:	74 2c                	je     2851 <vsprintf+0x801>
    2825:	c6 40 02 20          	movb   $0x20,0x2(%rax)
    2829:	41 83 f8 03          	cmp    $0x3,%r8d
    282d:	74 22                	je     2851 <vsprintf+0x801>
    282f:	c6 40 03 20          	movb   $0x20,0x3(%rax)
    2833:	41 83 f8 04          	cmp    $0x4,%r8d
    2837:	74 18                	je     2851 <vsprintf+0x801>
    2839:	c6 40 04 20          	movb   $0x20,0x4(%rax)
    283d:	41 83 f8 05          	cmp    $0x5,%r8d
    2841:	74 0e                	je     2851 <vsprintf+0x801>
    2843:	c6 40 05 20          	movb   $0x20,0x5(%rax)
    2847:	41 83 f8 06          	cmp    $0x6,%r8d
    284b:	74 04                	je     2851 <vsprintf+0x801>
    284d:	c6 40 06 20          	movb   $0x20,0x6(%rax)
    2851:	48 63 f6             	movslq %esi,%rsi
    2854:	31 c9                	xor    %ecx,%ecx
    2856:	48 01 f7             	add    %rsi,%rdi
    2859:	e9 f7 fa ff ff       	jmp    2355 <vsprintf+0x305>
    285e:	41 8b 04 24          	mov    (%r12),%eax
    2862:	83 fa 6c             	cmp    $0x6c,%edx
    2865:	0f 84 29 02 00 00    	je     2a94 <vsprintf+0xa44>
    286b:	83 f8 2f             	cmp    $0x2f,%eax
    286e:	0f 87 50 02 00 00    	ja     2ac4 <vsprintf+0xa74>
    2874:	89 c2                	mov    %eax,%edx
    2876:	83 c0 08             	add    $0x8,%eax
    2879:	49 03 54 24 10       	add    0x10(%r12),%rdx
    287e:	41 89 04 24          	mov    %eax,(%r12)
    2882:	48 8b 02             	mov    (%rdx),%rax
    2885:	48 89 fa             	mov    %rdi,%rdx
    2888:	4c 29 fa             	sub    %r15,%rdx
    288b:	89 10                	mov    %edx,(%rax)
    288d:	49 8d 46 01          	lea    0x1(%r14),%rax
    2891:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    2896:	e9 0a f8 ff ff       	jmp    20a5 <vsprintf+0x55>
    289b:	41 8b 04 24          	mov    (%r12),%eax
    289f:	83 fa 6c             	cmp    $0x6c,%edx
    28a2:	0f 84 c8 01 00 00    	je     2a70 <vsprintf+0xa20>
    28a8:	83 f8 2f             	cmp    $0x2f,%eax
    28ab:	0f 87 26 02 00 00    	ja     2ad7 <vsprintf+0xa87>
    28b1:	89 c2                	mov    %eax,%edx
    28b3:	83 c0 08             	add    $0x8,%eax
    28b6:	49 03 54 24 10       	add    0x10(%r12),%rdx
    28bb:	41 89 04 24          	mov    %eax,(%r12)
    28bf:	8b 32                	mov    (%rdx),%esi
    28c1:	ba 08 00 00 00       	mov    $0x8,%edx
    28c6:	e9 45 fa ff ff       	jmp    2310 <vsprintf+0x2c0>
    28cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    28d0:	83 f8 2f             	cmp    $0x2f,%eax
    28d3:	0f 87 71 01 00 00    	ja     2a4a <vsprintf+0x9fa>
    28d9:	89 c2                	mov    %eax,%edx
    28db:	83 c0 08             	add    $0x8,%eax
    28de:	49 03 54 24 10       	add    0x10(%r12),%rdx
    28e3:	41 89 04 24          	mov    %eax,(%r12)
    28e7:	48 8b 32             	mov    (%rdx),%rsi
    28ea:	ba 0a 00 00 00       	mov    $0xa,%edx
    28ef:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    28f6:	00 00 00 
    28f9:	4c 01 e8             	add    %r13,%rax
    28fc:	ff d0                	call   *%rax
    28fe:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
    2902:	48 89 c7             	mov    %rax,%rdi
    2905:	48 8d 43 02          	lea    0x2(%rbx),%rax
    2909:	e9 97 f7 ff ff       	jmp    20a5 <vsprintf+0x55>
    290e:	66 90                	xchg   %ax,%ax
    2910:	83 f8 2f             	cmp    $0x2f,%eax
    2913:	0f 87 44 01 00 00    	ja     2a5d <vsprintf+0xa0d>
    2919:	89 c2                	mov    %eax,%edx
    291b:	83 c0 08             	add    $0x8,%eax
    291e:	49 03 54 24 10       	add    0x10(%r12),%rdx
    2923:	41 89 04 24          	mov    %eax,(%r12)
    2927:	48 8b 32             	mov    (%rdx),%rsi
    292a:	ba 10 00 00 00       	mov    $0x10,%edx
    292f:	eb be                	jmp    28ef <vsprintf+0x89f>
    2931:	31 c0                	xor    %eax,%eax
    2933:	e9 bd f8 ff ff       	jmp    21f5 <vsprintf+0x1a5>
    2938:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    293d:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2941:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2946:	e9 84 fd ff ff       	jmp    26cf <vsprintf+0x67f>
    294b:	83 f8 0e             	cmp    $0xe,%eax
    294e:	0f 86 4b 03 00 00    	jbe    2c9f <vsprintf+0xc4f>
    2954:	41 89 d0             	mov    %edx,%r8d
    2957:	31 c0                	xor    %eax,%eax
    2959:	41 c1 e8 04          	shr    $0x4,%r8d
    295d:	49 c1 e0 04          	shl    $0x4,%r8
    2961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2968:	f3 0f 6f 0c 06       	movdqu (%rsi,%rax,1),%xmm1
    296d:	0f 11 0c 07          	movups %xmm1,(%rdi,%rax,1)
    2971:	48 83 c0 10          	add    $0x10,%rax
    2975:	4c 39 c0             	cmp    %r8,%rax
    2978:	75 ee                	jne    2968 <vsprintf+0x918>
    297a:	89 d0                	mov    %edx,%eax
    297c:	83 e0 f0             	and    $0xfffffff0,%eax
    297f:	41 89 c0             	mov    %eax,%r8d
    2982:	41 89 c2             	mov    %eax,%r10d
    2985:	4e 8d 0c 07          	lea    (%rdi,%r8,1),%r9
    2989:	49 01 f0             	add    %rsi,%r8
    298c:	39 c2                	cmp    %eax,%edx
    298e:	0f 84 86 fb ff ff    	je     251a <vsprintf+0x4ca>
    2994:	41 89 d3             	mov    %edx,%r11d
    2997:	41 29 c3             	sub    %eax,%r11d
    299a:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
    299e:	83 fb 06             	cmp    $0x6,%ebx
    29a1:	76 23                	jbe    29c6 <vsprintf+0x976>
    29a3:	4a 8b 34 16          	mov    (%rsi,%r10,1),%rsi
    29a7:	4a 89 34 17          	mov    %rsi,(%rdi,%r10,1)
    29ab:	44 89 de             	mov    %r11d,%esi
    29ae:	83 e6 f8             	and    $0xfffffff8,%esi
    29b1:	41 89 f2             	mov    %esi,%r10d
    29b4:	01 f0                	add    %esi,%eax
    29b6:	4d 01 d1             	add    %r10,%r9
    29b9:	4d 01 d0             	add    %r10,%r8
    29bc:	41 83 e3 07          	and    $0x7,%r11d
    29c0:	0f 84 54 fb ff ff    	je     251a <vsprintf+0x4ca>
    29c6:	41 0f b6 30          	movzbl (%r8),%esi
    29ca:	41 88 31             	mov    %sil,(%r9)
    29cd:	8d 70 01             	lea    0x1(%rax),%esi
    29d0:	39 f2                	cmp    %esi,%edx
    29d2:	0f 8e 42 fb ff ff    	jle    251a <vsprintf+0x4ca>
    29d8:	41 0f b6 70 01       	movzbl 0x1(%r8),%esi
    29dd:	41 88 71 01          	mov    %sil,0x1(%r9)
    29e1:	8d 70 02             	lea    0x2(%rax),%esi
    29e4:	39 f2                	cmp    %esi,%edx
    29e6:	0f 8e 2e fb ff ff    	jle    251a <vsprintf+0x4ca>
    29ec:	41 0f b6 70 02       	movzbl 0x2(%r8),%esi
    29f1:	41 88 71 02          	mov    %sil,0x2(%r9)
    29f5:	8d 70 03             	lea    0x3(%rax),%esi
    29f8:	39 f2                	cmp    %esi,%edx
    29fa:	0f 8e 1a fb ff ff    	jle    251a <vsprintf+0x4ca>
    2a00:	41 0f b6 70 03       	movzbl 0x3(%r8),%esi
    2a05:	41 88 71 03          	mov    %sil,0x3(%r9)
    2a09:	8d 70 04             	lea    0x4(%rax),%esi
    2a0c:	39 f2                	cmp    %esi,%edx
    2a0e:	0f 8e 06 fb ff ff    	jle    251a <vsprintf+0x4ca>
    2a14:	41 0f b6 70 04       	movzbl 0x4(%r8),%esi
    2a19:	41 88 71 04          	mov    %sil,0x4(%r9)
    2a1d:	8d 70 05             	lea    0x5(%rax),%esi
    2a20:	39 f2                	cmp    %esi,%edx
    2a22:	0f 8e f2 fa ff ff    	jle    251a <vsprintf+0x4ca>
    2a28:	41 0f b6 70 05       	movzbl 0x5(%r8),%esi
    2a2d:	83 c0 06             	add    $0x6,%eax
    2a30:	41 88 71 05          	mov    %sil,0x5(%r9)
    2a34:	39 c2                	cmp    %eax,%edx
    2a36:	0f 8e de fa ff ff    	jle    251a <vsprintf+0x4ca>
    2a3c:	41 0f b6 40 06       	movzbl 0x6(%r8),%eax
    2a41:	41 88 41 06          	mov    %al,0x6(%r9)
    2a45:	e9 d0 fa ff ff       	jmp    251a <vsprintf+0x4ca>
    2a4a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2a4f:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2a53:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2a58:	e9 8a fe ff ff       	jmp    28e7 <vsprintf+0x897>
    2a5d:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2a62:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2a66:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2a6b:	e9 b7 fe ff ff       	jmp    2927 <vsprintf+0x8d7>
    2a70:	83 f8 2f             	cmp    $0x2f,%eax
    2a73:	0f 86 7a 01 00 00    	jbe    2bf3 <vsprintf+0xba3>
    2a79:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2a7e:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2a82:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2a87:	48 8b 32             	mov    (%rdx),%rsi
    2a8a:	ba 08 00 00 00       	mov    $0x8,%edx
    2a8f:	e9 5b fe ff ff       	jmp    28ef <vsprintf+0x89f>
    2a94:	83 f8 2f             	cmp    $0x2f,%eax
    2a97:	0f 86 69 01 00 00    	jbe    2c06 <vsprintf+0xbb6>
    2a9d:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2aa2:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2aa6:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2aab:	48 8b 02             	mov    (%rdx),%rax
    2aae:	48 89 fa             	mov    %rdi,%rdx
    2ab1:	4c 29 fa             	sub    %r15,%rdx
    2ab4:	48 89 10             	mov    %rdx,(%rax)
    2ab7:	48 8d 43 02          	lea    0x2(%rbx),%rax
    2abb:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
    2abf:	e9 e1 f5 ff ff       	jmp    20a5 <vsprintf+0x55>
    2ac4:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2ac9:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2acd:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2ad2:	e9 ab fd ff ff       	jmp    2882 <vsprintf+0x832>
    2ad7:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
    2adc:	48 8d 42 08          	lea    0x8(%rdx),%rax
    2ae0:	49 89 44 24 08       	mov    %rax,0x8(%r12)
    2ae5:	e9 d5 fd ff ff       	jmp    28bf <vsprintf+0x86f>
    2aea:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
    2aee:	39 d1                	cmp    %edx,%ecx
    2af0:	0f 8e 7a 01 00 00    	jle    2c70 <vsprintf+0xc20>
    2af6:	29 d1                	sub    %edx,%ecx
    2af8:	48 89 f8             	mov    %rdi,%rax
    2afb:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
    2aff:	41 83 fa 0e          	cmp    $0xe,%r10d
    2b03:	0f 86 a9 01 00 00    	jbe    2cb2 <vsprintf+0xc62>
    2b09:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    2b10:	00 00 00 
    2b13:	41 89 cb             	mov    %ecx,%r11d
    2b16:	41 c1 eb 04          	shr    $0x4,%r11d
    2b1a:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
    2b20:	49 c1 e3 04          	shl    $0x4,%r11
    2b24:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
    2b28:	41 83 e3 10          	and    $0x10,%r11d
    2b2c:	74 0c                	je     2b3a <vsprintf+0xaea>
    2b2e:	48 8d 47 10          	lea    0x10(%rdi),%rax
    2b32:	0f 11 07             	movups %xmm0,(%rdi)
    2b35:	48 39 d8             	cmp    %rbx,%rax
    2b38:	74 10                	je     2b4a <vsprintf+0xafa>
    2b3a:	0f 11 00             	movups %xmm0,(%rax)
    2b3d:	48 83 c0 20          	add    $0x20,%rax
    2b41:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
    2b45:	48 39 d8             	cmp    %rbx,%rax
    2b48:	75 f0                	jne    2b3a <vsprintf+0xaea>
    2b4a:	41 89 c9             	mov    %ecx,%r9d
    2b4d:	41 83 e1 f0          	and    $0xfffffff0,%r9d
    2b51:	44 89 c8             	mov    %r9d,%eax
    2b54:	45 29 c8             	sub    %r9d,%r8d
    2b57:	48 01 f8             	add    %rdi,%rax
    2b5a:	f6 c1 0f             	test   $0xf,%cl
    2b5d:	0f 84 80 00 00 00    	je     2be3 <vsprintf+0xb93>
    2b63:	44 29 c9             	sub    %r9d,%ecx
    2b66:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
    2b6a:	41 83 fb 06          	cmp    $0x6,%r11d
    2b6e:	76 28                	jbe    2b98 <vsprintf+0xb48>
    2b70:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    2b77:	00 00 00 
    2b7a:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
    2b7f:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
    2b83:	41 89 c9             	mov    %ecx,%r9d
    2b86:	41 83 e1 f8          	and    $0xfffffff8,%r9d
    2b8a:	45 89 cb             	mov    %r9d,%r11d
    2b8d:	45 29 c8             	sub    %r9d,%r8d
    2b90:	4c 01 d8             	add    %r11,%rax
    2b93:	83 e1 07             	and    $0x7,%ecx
    2b96:	74 4b                	je     2be3 <vsprintf+0xb93>
    2b98:	c6 00 20             	movb   $0x20,(%rax)
    2b9b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
    2b9f:	44 39 c2             	cmp    %r8d,%edx
    2ba2:	7d 3f                	jge    2be3 <vsprintf+0xb93>
    2ba4:	c6 40 01 20          	movb   $0x20,0x1(%rax)
    2ba8:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
    2bac:	39 ca                	cmp    %ecx,%edx
    2bae:	7d 33                	jge    2be3 <vsprintf+0xb93>
    2bb0:	c6 40 02 20          	movb   $0x20,0x2(%rax)
    2bb4:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
    2bb8:	44 39 ca             	cmp    %r9d,%edx
    2bbb:	7d 26                	jge    2be3 <vsprintf+0xb93>
    2bbd:	c6 40 03 20          	movb   $0x20,0x3(%rax)
    2bc1:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
    2bc5:	39 ca                	cmp    %ecx,%edx
    2bc7:	7d 1a                	jge    2be3 <vsprintf+0xb93>
    2bc9:	c6 40 04 20          	movb   $0x20,0x4(%rax)
    2bcd:	41 83 e8 05          	sub    $0x5,%r8d
    2bd1:	44 39 ca             	cmp    %r9d,%edx
    2bd4:	7d 0d                	jge    2be3 <vsprintf+0xb93>
    2bd6:	c6 40 05 20          	movb   $0x20,0x5(%rax)
    2bda:	44 39 c2             	cmp    %r8d,%edx
    2bdd:	7d 04                	jge    2be3 <vsprintf+0xb93>
    2bdf:	c6 40 06 20          	movb   $0x20,0x6(%rax)
    2be3:	45 89 d2             	mov    %r10d,%r10d
    2be6:	8d 4a ff             	lea    -0x1(%rdx),%ecx
    2be9:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
    2bee:	e9 ec f8 ff ff       	jmp    24df <vsprintf+0x48f>
    2bf3:	89 c2                	mov    %eax,%edx
    2bf5:	83 c0 08             	add    $0x8,%eax
    2bf8:	49 03 54 24 10       	add    0x10(%r12),%rdx
    2bfd:	41 89 04 24          	mov    %eax,(%r12)
    2c01:	e9 81 fe ff ff       	jmp    2a87 <vsprintf+0xa37>
    2c06:	89 c2                	mov    %eax,%edx
    2c08:	83 c0 08             	add    $0x8,%eax
    2c0b:	49 03 54 24 10       	add    0x10(%r12),%rdx
    2c10:	41 89 04 24          	mov    %eax,(%r12)
    2c14:	e9 92 fe ff ff       	jmp    2aab <vsprintf+0xa5b>
    2c19:	41 8b 04 24          	mov    (%r12),%eax
    2c1d:	41 83 c9 02          	or     $0x2,%r9d
    2c21:	49 89 de             	mov    %rbx,%r14
    2c24:	e9 c9 f6 ff ff       	jmp    22f2 <vsprintf+0x2a2>
    2c29:	41 8b 04 24          	mov    (%r12),%eax
    2c2d:	41 83 c9 40          	or     $0x40,%r9d
    2c31:	49 89 de             	mov    %rbx,%r14
    2c34:	e9 88 f6 ff ff       	jmp    22c1 <vsprintf+0x271>
    2c39:	41 8b 04 24          	mov    (%r12),%eax
    2c3d:	49 89 de             	mov    %rbx,%r14
    2c40:	e9 ad f6 ff ff       	jmp    22f2 <vsprintf+0x2a2>
    2c45:	41 8b 04 24          	mov    (%r12),%eax
    2c49:	49 89 de             	mov    %rbx,%r14
    2c4c:	e9 57 fc ff ff       	jmp    28a8 <vsprintf+0x858>
    2c51:	41 8b 04 24          	mov    (%r12),%eax
    2c55:	49 89 de             	mov    %rbx,%r14
    2c58:	e9 0e fc ff ff       	jmp    286b <vsprintf+0x81b>
    2c5d:	41 8b 04 24          	mov    (%r12),%eax
    2c61:	49 89 de             	mov    %rbx,%r14
    2c64:	e9 58 f6 ff ff       	jmp    22c1 <vsprintf+0x271>
    2c69:	89 f1                	mov    %esi,%ecx
    2c6b:	e9 e5 f6 ff ff       	jmp    2355 <vsprintf+0x305>
    2c70:	44 89 c1             	mov    %r8d,%ecx
    2c73:	e9 67 f8 ff ff       	jmp    24df <vsprintf+0x48f>
    2c78:	31 d2                	xor    %edx,%edx
    2c7a:	e9 46 f8 ff ff       	jmp    24c5 <vsprintf+0x475>
    2c7f:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
    2c84:	4c 89 d7             	mov    %r10,%rdi
    2c87:	e9 19 f4 ff ff       	jmp    20a5 <vsprintf+0x55>
    2c8c:	4c 89 d2             	mov    %r10,%rdx
    2c8f:	45 31 c9             	xor    %r9d,%r9d
    2c92:	e9 63 f7 ff ff       	jmp    23fa <vsprintf+0x3aa>
    2c97:	45 31 c9             	xor    %r9d,%r9d
    2c9a:	e9 02 f9 ff ff       	jmp    25a1 <vsprintf+0x551>
    2c9f:	41 89 d3             	mov    %edx,%r11d
    2ca2:	49 89 f0             	mov    %rsi,%r8
    2ca5:	49 89 f9             	mov    %rdi,%r9
    2ca8:	45 31 d2             	xor    %r10d,%r10d
    2cab:	31 c0                	xor    %eax,%eax
    2cad:	e9 f1 fc ff ff       	jmp    29a3 <vsprintf+0x953>
    2cb2:	45 31 c9             	xor    %r9d,%r9d
    2cb5:	e9 a9 fe ff ff       	jmp    2b63 <vsprintf+0xb13>
    2cba:	31 d2                	xor    %edx,%edx
    2cbc:	e9 1c fb ff ff       	jmp    27dd <vsprintf+0x78d>
    2cc1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    2cc8:	00 00 00 00 
    2ccc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002cd0 <color_printk>:
    2cd0:	f3 0f 1e fa          	endbr64
    2cd4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    2cdb:	00 00 00 
    2cde:	41 57                	push   %r15
    2ce0:	41 89 f7             	mov    %esi,%r15d
    2ce3:	48 89 d6             	mov    %rdx,%rsi
    2ce6:	41 56                	push   %r14
    2ce8:	41 55                	push   %r13
    2cea:	41 89 fd             	mov    %edi,%r13d
    2ced:	41 54                	push   %r12
    2cef:	55                   	push   %rbp
    2cf0:	48 8d 2d dd ff ff ff 	lea    -0x23(%rip),%rbp        # 2cd4 <color_printk+0x4>
    2cf7:	53                   	push   %rbx
    2cf8:	4c 01 dd             	add    %r11,%rbp
    2cfb:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
    2d02:	48 89 8c 24 88 01 00 	mov    %rcx,0x188(%rsp)
    2d09:	00 
    2d0a:	4c 89 84 24 90 01 00 	mov    %r8,0x190(%rsp)
    2d11:	00 
    2d12:	4c 89 8c 24 98 01 00 	mov    %r9,0x198(%rsp)
    2d19:	00 
    2d1a:	84 c0                	test   %al,%al
    2d1c:	74 40                	je     2d5e <color_printk+0x8e>
    2d1e:	0f 29 84 24 a0 01 00 	movaps %xmm0,0x1a0(%rsp)
    2d25:	00 
    2d26:	0f 29 8c 24 b0 01 00 	movaps %xmm1,0x1b0(%rsp)
    2d2d:	00 
    2d2e:	0f 29 94 24 c0 01 00 	movaps %xmm2,0x1c0(%rsp)
    2d35:	00 
    2d36:	0f 29 9c 24 d0 01 00 	movaps %xmm3,0x1d0(%rsp)
    2d3d:	00 
    2d3e:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
    2d45:	00 
    2d46:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
    2d4d:	00 
    2d4e:	0f 29 b4 24 00 02 00 	movaps %xmm6,0x200(%rsp)
    2d55:	00 
    2d56:	0f 29 bc 24 10 02 00 	movaps %xmm7,0x210(%rsp)
    2d5d:	00 
    2d5e:	48 8d 84 24 60 02 00 	lea    0x260(%rsp),%rax
    2d65:	00 
    2d66:	48 8d 94 24 58 01 00 	lea    0x158(%rsp),%rdx
    2d6d:	00 
    2d6e:	c7 84 24 58 01 00 00 	movl   $0x18,0x158(%rsp)
    2d75:	18 00 00 00 
    2d79:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
    2d80:	00 
    2d81:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
    2d88:	00 
    2d89:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
    2d90:	00 
    2d91:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2d98:	00 00 00 
    2d9b:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
    2da2:	00 
    2da3:	48 8d 3c 28          	lea    (%rax,%rbp,1),%rdi
    2da7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2dae:	00 00 00 
    2db1:	c7 84 24 5c 01 00 00 	movl   $0x30,0x15c(%rsp)
    2db8:	30 00 00 00 
    2dbc:	48 01 e8             	add    %rbp,%rax
    2dbf:	ff d0                	call   *%rax
    2dc1:	89 84 24 d4 00 00 00 	mov    %eax,0xd4(%rsp)
    2dc8:	85 c0                	test   %eax,%eax
    2dca:	0f 8e 10 0d 00 00    	jle    3ae0 <color_printk+0xe10>
    2dd0:	49 be 00 00 00 00 00 	movabs $0x0,%r14
    2dd7:	00 00 00 
    2dda:	45 31 e4             	xor    %r12d,%r12d
    2ddd:	c7 84 24 d0 00 00 00 	movl   $0x0,0xd0(%rsp)
    2de4:	00 00 00 00 
    2de8:	49 8b 44 2e 18       	mov    0x18(%r14,%rbp,1),%rax
    2ded:	45 8b 44 2e 14       	mov    0x14(%r14,%rbp,1),%r8d
    2df2:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
    2df7:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
    2dfb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    2e00:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
    2e05:	45 89 c1             	mov    %r8d,%r9d
    2e08:	45 89 e0             	mov    %r12d,%r8d
    2e0b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2e12:	00 00 00 
    2e15:	48 01 e8             	add    %rbp,%rax
    2e18:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
    2e1f:	00 
    2e20:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2e27:	00 00 00 
    2e2a:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
    2e31:	00 
    2e32:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2e39:	00 00 00 
    2e3c:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
    2e43:	00 
    2e44:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2e4b:	00 00 00 
    2e4e:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
    2e55:	00 
    2e56:	48 01 e8             	add    %rbp,%rax
    2e59:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
    2e60:	00 
    2e61:	48 83 c0 0f          	add    $0xf,%rax
    2e65:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
    2e6c:	00 
    2e6d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    2e74:	00 00 00 
    2e77:	48 01 e8             	add    %rbp,%rax
    2e7a:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
    2e81:	00 
    2e82:	44 89 f8             	mov    %r15d,%eax
    2e85:	45 89 ef             	mov    %r13d,%r15d
    2e88:	89 44 24 08          	mov    %eax,0x8(%rsp)
    2e8c:	0f 1f 40 00          	nopl   0x0(%rax)
    2e90:	8b 94 24 d0 00 00 00 	mov    0xd0(%rsp),%edx
    2e97:	85 d2                	test   %edx,%edx
    2e99:	0f 8f 0f 0d 00 00    	jg     3bae <color_printk+0xede>
    2e9f:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
    2ea6:	00 
    2ea7:	49 63 d0             	movslq %r8d,%rdx
    2eaa:	41 83 c0 01          	add    $0x1,%r8d
    2eae:	48 01 e8             	add    %rbp,%rax
    2eb1:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
    2eb5:	3c 0a                	cmp    $0xa,%al
    2eb7:	0f 84 d8 0c 00 00    	je     3b95 <color_printk+0xec5>
    2ebd:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
    2ec2:	3c 08                	cmp    $0x8,%al
    2ec4:	0f 84 79 19 00 00    	je     4843 <color_printk+0x1b73>
    2eca:	3c 09                	cmp    $0x9,%al
    2ecc:	0f 84 53 19 00 00    	je     4825 <color_printk+0x1b55>
    2ed2:	44 0f af c9          	imul   %ecx,%r9d
    2ed6:	4c 63 de             	movslq %esi,%r11
    2ed9:	0f b6 d8             	movzbl %al,%ebx
    2edc:	4c 8b a4 24 40 01 00 	mov    0x140(%rsp),%r12
    2ee3:	00 
    2ee4:	0f af d7             	imul   %edi,%edx
    2ee7:	48 c1 e3 04          	shl    $0x4,%rbx
    2eeb:	31 ff                	xor    %edi,%edi
    2eed:	4e 8d 14 23          	lea    (%rbx,%r12,1),%r10
    2ef1:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
    2ef8:	00 
    2ef9:	44 0f af ce          	imul   %esi,%r9d
    2efd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2f02:	48 63 d2             	movslq %edx,%rdx
    2f05:	49 63 c9             	movslq %r9d,%rcx
    2f08:	4d 8d 4c 1c 0f       	lea    0xf(%r12,%rbx,1),%r9
    2f0d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    2f12:	48 01 ca             	add    %rcx,%rdx
    2f15:	4c 89 d9             	mov    %r11,%rcx
    2f18:	48 c1 e1 04          	shl    $0x4,%rcx
    2f1c:	48 c1 e2 02          	shl    $0x2,%rdx
    2f20:	4c 29 d9             	sub    %r11,%rcx
    2f23:	48 c1 e1 02          	shl    $0x2,%rcx
    2f27:	85 f6                	test   %esi,%esi
    2f29:	48 0f 48 f9          	cmovs  %rcx,%rdi
    2f2d:	48 01 d7             	add    %rdx,%rdi
    2f30:	48 01 df             	add    %rbx,%rdi
    2f33:	49 39 f9             	cmp    %rdi,%r9
    2f36:	40 0f 92 c7          	setb   %dil
    2f3a:	48 83 c1 1f          	add    $0x1f,%rcx
    2f3e:	85 f6                	test   %esi,%esi
    2f40:	be 1f 00 00 00       	mov    $0x1f,%esi
    2f45:	48 0f 48 ce          	cmovs  %rsi,%rcx
    2f49:	48 89 de             	mov    %rbx,%rsi
    2f4c:	48 01 d1             	add    %rdx,%rcx
    2f4f:	48 01 d9             	add    %rbx,%rcx
    2f52:	4c 39 d1             	cmp    %r10,%rcx
    2f55:	0f 92 c1             	setb   %cl
    2f58:	40 08 f9             	or     %dil,%cl
    2f5b:	0f 84 98 0b 00 00    	je     3af9 <color_printk+0xe29>
    2f61:	48 8d 48 1f          	lea    0x1f(%rax),%rcx
    2f65:	48 89 c3             	mov    %rax,%rbx
    2f68:	48 83 f9 3e          	cmp    $0x3e,%rcx
    2f6c:	0f 86 87 0b 00 00    	jbe    3af9 <color_printk+0xe29>
    2f72:	4d 8d 6a 10          	lea    0x10(%r10),%r13
    2f76:	4c 8d 24 16          	lea    (%rsi,%rdx,1),%r12
    2f7a:	66 41 0f 6e d7       	movd   %r15d,%xmm2
    2f7f:	4c 89 d8             	mov    %r11,%rax
    2f82:	49 8d 3c 1c          	lea    (%r12,%rbx,1),%rdi
    2f86:	49 89 db             	mov    %rbx,%r11
    2f89:	48 c1 e0 05          	shl    $0x5,%rax
    2f8d:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    2f92:	48 8d 34 1f          	lea    (%rdi,%rbx,1),%rsi
    2f96:	4c 89 ac 24 b8 00 00 	mov    %r13,0xb8(%rsp)
    2f9d:	00 
    2f9e:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    2fa5:	00 00 00 
    2fa8:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
    2fae:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    2fb3:	48 8d 0c 1e          	lea    (%rsi,%rbx,1),%rcx
    2fb7:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    2fbe:	00 00 00 
    2fc1:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
    2fc7:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
    2fcc:	48 8d 14 19          	lea    (%rcx,%rbx,1),%rdx
    2fd0:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    2fd5:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    2fdc:	00 00 00 
    2fdf:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
    2fe4:	4c 8d 0c 1a          	lea    (%rdx,%rbx,1),%r9
    2fe8:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
    2fee:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    2ff5:	00 00 00 
    2ff8:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    2ffd:	49 8d 1c 19          	lea    (%r9,%rbx,1),%rbx
    3001:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3008:	00 00 00 
    300b:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
    3010:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
    3017:	00 
    3018:	49 01 db             	add    %rbx,%r11
    301b:	44 89 84 24 08 01 00 	mov    %r8d,0x108(%rsp)
    3022:	00 
    3023:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3028:	4c 89 ac 24 c0 00 00 	mov    %r13,0xc0(%rsp)
    302f:	00 
    3030:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
    3037:	00 
    3038:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    303d:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
    3044:	00 
    3045:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    304c:	00 00 00 
    304f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3054:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
    305b:	00 
    305c:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3063:	00 00 00 
    3066:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    306b:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
    3072:	00 
    3073:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    307a:	00 00 00 
    307d:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3082:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
    3089:	00 
    308a:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3091:	00 00 00 
    3094:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3099:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
    30a0:	00 
    30a1:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    30a8:	00 00 00 
    30ab:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    30b0:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
    30b7:	00 
    30b8:	66 41 0f 7e d5       	movd   %xmm2,%r13d
    30bd:	45 89 e8             	mov    %r13d,%r8d
    30c0:	f3 41 0f 7e 12       	movq   (%r10),%xmm2
    30c5:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    30ca:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    30cf:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    30d4:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
    30d9:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    30de:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
    30e3:	49 83 c2 08          	add    $0x8,%r10
    30e7:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
    30eb:	66 0f 64 c1          	pcmpgtb %xmm1,%xmm0
    30ef:	66 0f 6f e9          	movdqa %xmm1,%xmm5
    30f3:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
    30f7:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
    30fb:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
    3100:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
    3104:	66 44 0f 6f f5       	movdqa %xmm5,%xmm14
    3109:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    310e:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
    3113:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
    3117:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
    311c:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
    3121:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
    3126:	66 41 0f db de       	pand   %xmm14,%xmm3
    312b:	66 45 0f df f2       	pandn  %xmm10,%xmm14
    3130:	66 0f db c5          	pand   %xmm5,%xmm0
    3134:	66 41 0f df ea       	pandn  %xmm10,%xmm5
    3139:	66 44 0f eb f3       	por    %xmm3,%xmm14
    313e:	66 0f eb e8          	por    %xmm0,%xmm5
    3142:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
    3147:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    314c:	66 45 0f 7e 34 24    	movd   %xmm14,(%r12)
    3152:	66 0f 65 c1          	pcmpgtw %xmm1,%xmm0
    3156:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    315a:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
    315f:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
    3164:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    3169:	66 41 0f db dd       	pand   %xmm13,%xmm3
    316e:	66 45 0f df ea       	pandn  %xmm10,%xmm13
    3173:	66 0f db c1          	pand   %xmm1,%xmm0
    3177:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    317c:	66 44 0f eb eb       	por    %xmm3,%xmm13
    3181:	66 0f eb c8          	por    %xmm0,%xmm1
    3185:	66 4d 0f 7e ed       	movq   %xmm13,%r13
    318a:	f3 0f 7e 84 24 c0 00 	movq   0xc0(%rsp),%xmm0
    3191:	00 00 
    3193:	66 0f d6 4c 24 08    	movq   %xmm1,0x8(%rsp)
    3199:	66 0f db c2          	pand   %xmm2,%xmm0
    319d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    31a2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    31a7:	66 0f 64 e0          	pcmpgtb %xmm0,%xmm4
    31ab:	66 0f 6f d8          	movdqa %xmm0,%xmm3
    31af:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
    31b3:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
    31b7:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
    31bb:	66 0f 6f e3          	movdqa %xmm3,%xmm4
    31bf:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    31c4:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
    31c8:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    31cc:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    31d1:	66 0f db fc          	pand   %xmm4,%xmm7
    31d5:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    31da:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    31df:	66 0f eb e7          	por    %xmm7,%xmm4
    31e3:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
    31e8:	66 0f db fb          	pand   %xmm3,%xmm7
    31ec:	66 41 0f df da       	pandn  %xmm10,%xmm3
    31f1:	66 0f d6 64 24 18    	movq   %xmm4,0x18(%rsp)
    31f7:	66 0f eb df          	por    %xmm7,%xmm3
    31fb:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
    3200:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
    3204:	66 0f d6 5c 24 20    	movq   %xmm3,0x20(%rsp)
    320a:	66 0f 6f e7          	movdqa %xmm7,%xmm4
    320e:	66 0f 6f f8          	movdqa %xmm0,%xmm7
    3212:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
    3216:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    321a:	66 0f 6f df          	movdqa %xmm7,%xmm3
    321e:	66 0f db f7          	pand   %xmm7,%xmm6
    3222:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3227:	66 41 0f df da       	pandn  %xmm10,%xmm3
    322c:	66 0f 6f fb          	movdqa %xmm3,%xmm7
    3230:	66 0f eb fe          	por    %xmm6,%xmm7
    3234:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    3239:	66 0f db f0          	pand   %xmm0,%xmm6
    323d:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    3242:	66 0f d6 7c 24 28    	movq   %xmm7,0x28(%rsp)
    3248:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
    324d:	66 0f eb c6          	por    %xmm6,%xmm0
    3251:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
    3258:	00 00 
    325a:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
    3260:	66 0f db f2          	pand   %xmm2,%xmm6
    3264:	66 0f 6f c6          	movdqa %xmm6,%xmm0
    3268:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    326d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3272:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3277:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
    327b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    327f:	66 0f 6f e6          	movdqa %xmm6,%xmm4
    3283:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    3288:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
    328c:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
    3290:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    3294:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3298:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    329d:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    32a1:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    32a5:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    32aa:	66 0f db f9          	pand   %xmm1,%xmm7
    32ae:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    32b2:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    32b7:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    32bb:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    32c0:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    32c5:	66 0f eb e7          	por    %xmm7,%xmm4
    32c9:	66 0f db f3          	pand   %xmm3,%xmm6
    32cd:	66 41 0f df da       	pandn  %xmm10,%xmm3
    32d2:	66 0f d6 64 24 38    	movq   %xmm4,0x38(%rsp)
    32d8:	66 0f 6f e6          	movdqa %xmm6,%xmm4
    32dc:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    32e0:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
    32e5:	66 0f eb f4          	por    %xmm4,%xmm6
    32e9:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    32ed:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    32f1:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    32f5:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
    32fb:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    32ff:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    3304:	66 0f db f1          	pand   %xmm1,%xmm6
    3308:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    330c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3311:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3316:	66 41 0f df da       	pandn  %xmm10,%xmm3
    331b:	66 0f db c8          	pand   %xmm0,%xmm1
    331f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    3324:	66 0f eb de          	por    %xmm6,%xmm3
    3328:	66 0f eb c1          	por    %xmm1,%xmm0
    332c:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    3331:	66 0f d6 5c 24 48    	movq   %xmm3,0x48(%rsp)
    3337:	f3 0f 7e 8c 24 e0 00 	movq   0xe0(%rsp),%xmm1
    333e:	00 00 
    3340:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
    3346:	66 0f db ca          	pand   %xmm2,%xmm1
    334a:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    334e:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    3353:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3358:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    335d:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
    3361:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    3365:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    3369:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
    336d:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
    3371:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    3375:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3379:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    337e:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    3382:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    3386:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    338b:	66 0f db f9          	pand   %xmm1,%xmm7
    338f:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    3393:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    3398:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    339d:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    33a2:	66 0f db cb          	pand   %xmm3,%xmm1
    33a6:	66 41 0f df da       	pandn  %xmm10,%xmm3
    33ab:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
    33b0:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
    33b5:	66 44 0f eb c7       	por    %xmm7,%xmm8
    33ba:	66 44 0f eb e1       	por    %xmm1,%xmm12
    33bf:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    33c4:	66 44 0f d6 44 24 58 	movq   %xmm8,0x58(%rsp)
    33cb:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    33cf:	66 44 0f d6 64 24 60 	movq   %xmm12,0x60(%rsp)
    33d6:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    33da:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    33de:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    33e2:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    33e6:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    33ea:	66 0f db f1          	pand   %xmm1,%xmm6
    33ee:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    33f3:	66 41 0f df da       	pandn  %xmm10,%xmm3
    33f8:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    33fd:	66 0f db c8          	pand   %xmm0,%xmm1
    3401:	66 0f 6f fb          	movdqa %xmm3,%xmm7
    3405:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    340a:	66 0f eb fe          	por    %xmm6,%xmm7
    340e:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    3412:	66 0f eb f1          	por    %xmm1,%xmm6
    3416:	66 0f d6 7c 24 68    	movq   %xmm7,0x68(%rsp)
    341c:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
    3423:	00 00 
    3425:	66 0f d6 74 24 70    	movq   %xmm6,0x70(%rsp)
    342b:	66 0f db ca          	pand   %xmm2,%xmm1
    342f:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    3433:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    3438:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    343d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3442:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
    3446:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    344a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    344e:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
    3452:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
    3456:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    345a:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    345f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3464:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
    3468:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    346c:	66 0f 6f cb          	movdqa %xmm3,%xmm1
    3470:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    3474:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    3478:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    347c:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3481:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    3486:	66 0f db cc          	pand   %xmm4,%xmm1
    348a:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    348f:	66 0f eb e1          	por    %xmm1,%xmm4
    3493:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3498:	66 0f db cb          	pand   %xmm3,%xmm1
    349c:	66 41 0f df da       	pandn  %xmm10,%xmm3
    34a1:	66 0f d6 64 24 78    	movq   %xmm4,0x78(%rsp)
    34a7:	66 0f eb d9          	por    %xmm1,%xmm3
    34ab:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    34b0:	66 0f d6 9c 24 80 00 	movq   %xmm3,0x80(%rsp)
    34b7:	00 00 
    34b9:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    34bd:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    34c1:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    34c5:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    34c9:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    34cd:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    34d1:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    34d6:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    34db:	66 0f db cb          	pand   %xmm3,%xmm1
    34df:	66 41 0f df da       	pandn  %xmm10,%xmm3
    34e4:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
    34e9:	66 44 0f eb c1       	por    %xmm1,%xmm8
    34ee:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    34f3:	66 44 0f d6 84 24 88 	movq   %xmm8,0x88(%rsp)
    34fa:	00 00 00 
    34fd:	66 0f db c8          	pand   %xmm0,%xmm1
    3501:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    3506:	66 0f eb c1          	por    %xmm1,%xmm0
    350a:	f3 0f 7e 8c 24 f0 00 	movq   0xf0(%rsp),%xmm1
    3511:	00 00 
    3513:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
    351a:	00 00 
    351c:	66 0f db ca          	pand   %xmm2,%xmm1
    3520:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    3524:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    3529:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    352e:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3533:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
    3537:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    353b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    353f:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
    3543:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
    3547:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    354b:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    3550:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3555:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
    3559:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    355d:	66 0f 6f cb          	movdqa %xmm3,%xmm1
    3561:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    3565:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    3569:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    356d:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3572:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    3577:	66 0f db cc          	pand   %xmm4,%xmm1
    357b:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    3580:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
    3585:	66 44 0f eb e1       	por    %xmm1,%xmm12
    358a:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    358f:	66 44 0f d6 a4 24 98 	movq   %xmm12,0x98(%rsp)
    3596:	00 00 00 
    3599:	66 0f db cb          	pand   %xmm3,%xmm1
    359d:	66 41 0f df da       	pandn  %xmm10,%xmm3
    35a2:	66 0f 6f fb          	movdqa %xmm3,%xmm7
    35a6:	66 0f eb f9          	por    %xmm1,%xmm7
    35aa:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    35af:	66 0f d6 bc 24 a0 00 	movq   %xmm7,0xa0(%rsp)
    35b6:	00 00 
    35b8:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    35bc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    35c0:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    35c4:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    35c8:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
    35cc:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    35d0:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    35d5:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    35da:	66 0f db cb          	pand   %xmm3,%xmm1
    35de:	66 41 0f df da       	pandn  %xmm10,%xmm3
    35e3:	66 0f eb d9          	por    %xmm1,%xmm3
    35e7:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    35ec:	66 0f d6 9c 24 a8 00 	movq   %xmm3,0xa8(%rsp)
    35f3:	00 00 
    35f5:	66 0f db c8          	pand   %xmm0,%xmm1
    35f9:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    35fe:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    3602:	66 0f eb f1          	por    %xmm1,%xmm6
    3606:	f3 0f 7e 8c 24 f8 00 	movq   0xf8(%rsp),%xmm1
    360d:	00 00 
    360f:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
    3616:	00 00 
    3618:	66 0f db ca          	pand   %xmm2,%xmm1
    361c:	66 0f 6f c1          	movdqa %xmm1,%xmm0
    3620:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    3625:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    362a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    362f:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
    3633:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3637:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    363b:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    363f:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    3643:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    3647:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    364c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3651:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
    3655:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3659:	66 0f 6f cc          	movdqa %xmm4,%xmm1
    365d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    3661:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
    3665:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
    366a:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    366f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
    3674:	66 41 0f db cc       	pand   %xmm12,%xmm1
    3679:	66 45 0f df e2       	pandn  %xmm10,%xmm12
    367e:	66 44 0f eb e1       	por    %xmm1,%xmm12
    3683:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3688:	66 0f db cc          	pand   %xmm4,%xmm1
    368c:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    3691:	66 0f eb e1          	por    %xmm1,%xmm4
    3695:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    369a:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    369e:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    36a2:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    36a6:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    36aa:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    36ae:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    36b3:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    36b8:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    36bd:	66 41 0f db c8       	pand   %xmm8,%xmm1
    36c2:	66 45 0f df c2       	pandn  %xmm10,%xmm8
    36c7:	66 44 0f eb c1       	por    %xmm1,%xmm8
    36cc:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    36d1:	66 0f db c8          	pand   %xmm0,%xmm1
    36d5:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    36da:	66 0f eb c1          	por    %xmm1,%xmm0
    36de:	f3 0f 7e 8c 24 00 01 	movq   0x100(%rsp),%xmm1
    36e5:	00 00 
    36e7:	66 0f db d1          	pand   %xmm1,%xmm2
    36eb:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    36f0:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    36f5:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    36fa:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
    36fe:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    3702:	66 0f 6f ca          	movdqa %xmm2,%xmm1
    3706:	66 0f 60 ce          	punpcklbw %xmm6,%xmm1
    370a:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
    370e:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3712:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
    3717:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    371c:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
    3720:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
    3725:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    3729:	66 0f 6f cb          	movdqa %xmm3,%xmm1
    372d:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    3731:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    3735:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    373a:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    373e:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    3743:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    3748:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
    374c:	66 0f db cf          	pand   %xmm7,%xmm1
    3750:	66 41 0f df fa       	pandn  %xmm10,%xmm7
    3755:	66 0f eb f9          	por    %xmm1,%xmm7
    3759:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    375e:	66 0f db cb          	pand   %xmm3,%xmm1
    3762:	66 41 0f df da       	pandn  %xmm10,%xmm3
    3767:	66 0f eb d9          	por    %xmm1,%xmm3
    376b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    376f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
    3774:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
    3778:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
    377d:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
    3782:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    3787:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    378c:	66 0f db ca          	pand   %xmm2,%xmm1
    3790:	66 41 0f df d2       	pandn  %xmm10,%xmm2
    3795:	66 44 0f db ee       	pand   %xmm6,%xmm13
    379a:	66 0f eb d1          	por    %xmm1,%xmm2
    379e:	66 41 0f df f2       	pandn  %xmm10,%xmm6
    37a3:	66 41 0f 70 ce e5    	pshufd $0xe5,%xmm14,%xmm1
    37a9:	66 0f 7e 0f          	movd   %xmm1,(%rdi)
    37ad:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
    37b1:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    37b6:	66 41 0f eb f5       	por    %xmm13,%xmm6
    37bb:	66 4d 0f 6e ed       	movq   %r13,%xmm13
    37c0:	66 0f 7e 09          	movd   %xmm1,(%rcx)
    37c4:	f3 0f 7e 6c 24 08    	movq   0x8(%rsp),%xmm5
    37ca:	66 41 0f 70 cd e5    	pshufd $0xe5,%xmm13,%xmm1
    37d0:	44 89 2a             	mov    %r13d,(%rdx)
    37d3:	66 41 0f 7e 09       	movd   %xmm1,(%r9)
    37d8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    37dd:	66 0f 7e 2b          	movd   %xmm5,(%rbx)
    37e1:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
    37e7:	66 41 0f 7e 0b       	movd   %xmm1,(%r11)
    37ec:	66 41 0f 7e 6c 24 04 	movd   %xmm5,0x4(%r12)
    37f3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    37f8:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
    37fe:	66 0f 7e 4f 04       	movd   %xmm1,0x4(%rdi)
    3803:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
    3808:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    380d:	f3 0f 7e 6c 24 28    	movq   0x28(%rsp),%xmm5
    3813:	66 0f 7e 49 04       	movd   %xmm1,0x4(%rcx)
    3818:	66 0f 7e 6a 04       	movd   %xmm5,0x4(%rdx)
    381d:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3822:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
    3828:	66 41 0f 7e 49 04    	movd   %xmm1,0x4(%r9)
    382e:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
    3833:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3838:	f3 0f 7e 6c 24 38    	movq   0x38(%rsp),%xmm5
    383e:	66 41 0f 7e 4b 04    	movd   %xmm1,0x4(%r11)
    3844:	66 41 0f 7e 6c 24 08 	movd   %xmm5,0x8(%r12)
    384b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3850:	f3 0f 7e 6c 24 40    	movq   0x40(%rsp),%xmm5
    3856:	66 0f 7e 4f 08       	movd   %xmm1,0x8(%rdi)
    385b:	66 0f 7e 6e 08       	movd   %xmm5,0x8(%rsi)
    3860:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3865:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
    386b:	66 0f 7e 49 08       	movd   %xmm1,0x8(%rcx)
    3870:	66 0f 7e 6a 08       	movd   %xmm5,0x8(%rdx)
    3875:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    387a:	f3 0f 7e 6c 24 50    	movq   0x50(%rsp),%xmm5
    3880:	66 41 0f 7e 49 08    	movd   %xmm1,0x8(%r9)
    3886:	66 0f 7e 6b 08       	movd   %xmm5,0x8(%rbx)
    388b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3890:	f3 0f 7e 6c 24 58    	movq   0x58(%rsp),%xmm5
    3896:	66 41 0f 7e 4b 08    	movd   %xmm1,0x8(%r11)
    389c:	66 41 0f 7e 6c 24 0c 	movd   %xmm5,0xc(%r12)
    38a3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    38a8:	66 0f 7e 4f 0c       	movd   %xmm1,0xc(%rdi)
    38ad:	f3 0f 7e 6c 24 60    	movq   0x60(%rsp),%xmm5
    38b3:	66 0f 7e 6e 0c       	movd   %xmm5,0xc(%rsi)
    38b8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    38bd:	f3 0f 7e 6c 24 68    	movq   0x68(%rsp),%xmm5
    38c3:	66 0f 7e 49 0c       	movd   %xmm1,0xc(%rcx)
    38c8:	66 0f 7e 6a 0c       	movd   %xmm5,0xc(%rdx)
    38cd:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    38d2:	f3 0f 7e 6c 24 70    	movq   0x70(%rsp),%xmm5
    38d8:	66 41 0f 7e 49 0c    	movd   %xmm1,0xc(%r9)
    38de:	66 0f 7e 6b 0c       	movd   %xmm5,0xc(%rbx)
    38e3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    38e8:	f3 0f 7e 6c 24 78    	movq   0x78(%rsp),%xmm5
    38ee:	66 41 0f 7e 4b 0c    	movd   %xmm1,0xc(%r11)
    38f4:	66 41 0f 7e 6c 24 10 	movd   %xmm5,0x10(%r12)
    38fb:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3900:	f3 0f 7e ac 24 80 00 	movq   0x80(%rsp),%xmm5
    3907:	00 00 
    3909:	66 0f 7e 4f 10       	movd   %xmm1,0x10(%rdi)
    390e:	66 0f 7e 6e 10       	movd   %xmm5,0x10(%rsi)
    3913:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3918:	f3 0f 7e ac 24 88 00 	movq   0x88(%rsp),%xmm5
    391f:	00 00 
    3921:	66 0f 7e 49 10       	movd   %xmm1,0x10(%rcx)
    3926:	66 0f 7e 6a 10       	movd   %xmm5,0x10(%rdx)
    392b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3930:	f3 0f 7e ac 24 90 00 	movq   0x90(%rsp),%xmm5
    3937:	00 00 
    3939:	66 41 0f 7e 49 10    	movd   %xmm1,0x10(%r9)
    393f:	66 0f 7e 6b 10       	movd   %xmm5,0x10(%rbx)
    3944:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3949:	f3 0f 7e ac 24 98 00 	movq   0x98(%rsp),%xmm5
    3950:	00 00 
    3952:	66 41 0f 7e 4b 10    	movd   %xmm1,0x10(%r11)
    3958:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
    395f:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3964:	f3 0f 7e ac 24 a0 00 	movq   0xa0(%rsp),%xmm5
    396b:	00 00 
    396d:	66 0f 7e 4f 14       	movd   %xmm1,0x14(%rdi)
    3972:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
    3977:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    397c:	f3 0f 7e ac 24 a8 00 	movq   0xa8(%rsp),%xmm5
    3983:	00 00 
    3985:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
    398a:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
    398f:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
    3994:	f3 0f 7e ac 24 b0 00 	movq   0xb0(%rsp),%xmm5
    399b:	00 00 
    399d:	66 41 0f 7e 49 14    	movd   %xmm1,0x14(%r9)
    39a3:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
    39a8:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    39ad:	66 41 0f 7e 6b 14    	movd   %xmm5,0x14(%r11)
    39b3:	4c 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%r13
    39ba:	00 
    39bb:	66 41 0f 70 ec e5    	pshufd $0xe5,%xmm12,%xmm5
    39c1:	66 45 0f 7e 64 24 18 	movd   %xmm12,0x18(%r12)
    39c8:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
    39cd:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    39d2:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
    39d7:	66 0f 7e 69 18       	movd   %xmm5,0x18(%rcx)
    39dc:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
    39e2:	66 44 0f 7e 42 18    	movd   %xmm8,0x18(%rdx)
    39e8:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
    39ee:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
    39f3:	66 0f 7e 43 18       	movd   %xmm0,0x18(%rbx)
    39f8:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
    39fe:	66 41 0f 7e 7c 24 1c 	movd   %xmm7,0x1c(%r12)
    3a05:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
    3a0a:	49 01 c4             	add    %rax,%r12
    3a0d:	66 0f 7e 7f 1c       	movd   %xmm7,0x1c(%rdi)
    3a12:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
    3a17:	48 01 c7             	add    %rax,%rdi
    3a1a:	66 0f 7e 5e 1c       	movd   %xmm3,0x1c(%rsi)
    3a1f:	48 01 c6             	add    %rax,%rsi
    3a22:	66 0f 7e 79 1c       	movd   %xmm7,0x1c(%rcx)
    3a27:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
    3a2c:	48 01 c1             	add    %rax,%rcx
    3a2f:	66 0f 7e 72 1c       	movd   %xmm6,0x1c(%rdx)
    3a34:	48 01 c2             	add    %rax,%rdx
    3a37:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
    3a3d:	49 01 c1             	add    %rax,%r9
    3a40:	66 0f 7e 53 1c       	movd   %xmm2,0x1c(%rbx)
    3a45:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
    3a4a:	48 01 c3             	add    %rax,%rbx
    3a4d:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
    3a53:	49 01 c3             	add    %rax,%r11
    3a56:	4d 39 ea             	cmp    %r13,%r10
    3a59:	0f 85 61 f6 ff ff    	jne    30c0 <color_printk+0x3f0>
    3a5f:	45 89 c5             	mov    %r8d,%r13d
    3a62:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
    3a69:	00 
    3a6a:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
    3a6f:	41 8b 44 2e 08       	mov    0x8(%r14,%rbp,1),%eax
    3a74:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
    3a78:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
    3a7d:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
    3a82:	44 8d 50 01          	lea    0x1(%rax),%r10d
    3a86:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
    3a8b:	45 89 54 2e 08       	mov    %r10d,0x8(%r14,%rbp,1)
    3a90:	89 f0                	mov    %esi,%eax
    3a92:	99                   	cltd
    3a93:	f7 ff                	idiv   %edi
    3a95:	44 39 d0             	cmp    %r10d,%eax
    3a98:	7f 11                	jg     3aab <color_printk+0xddb>
    3a9a:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
    3aa1:	00 00 
    3aa3:	83 c1 01             	add    $0x1,%ecx
    3aa6:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
    3aab:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
    3ab0:	99                   	cltd
    3ab1:	41 f7 f9             	idiv   %r9d
    3ab4:	39 c8                	cmp    %ecx,%eax
    3ab6:	7f 0b                	jg     3ac3 <color_printk+0xdf3>
    3ab8:	41 c7 44 2e 0c 00 00 	movl   $0x0,0xc(%r14,%rbp,1)
    3abf:	00 00 
    3ac1:	31 c9                	xor    %ecx,%ecx
    3ac3:	44 39 84 24 d4 00 00 	cmp    %r8d,0xd4(%rsp)
    3aca:	00 
    3acb:	0f 8f bf f3 ff ff    	jg     2e90 <color_printk+0x1c0>
    3ad1:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
    3ad8:	85 c0                	test   %eax,%eax
    3ada:	0f 85 b0 f3 ff ff    	jne    2e90 <color_printk+0x1c0>
    3ae0:	8b 84 24 d4 00 00 00 	mov    0xd4(%rsp),%eax
    3ae7:	48 81 c4 28 02 00 00 	add    $0x228,%rsp
    3aee:	5b                   	pop    %rbx
    3aef:	5d                   	pop    %rbp
    3af0:	41 5c                	pop    %r12
    3af2:	41 5d                	pop    %r13
    3af4:	41 5e                	pop    %r14
    3af6:	41 5f                	pop    %r15
    3af8:	c3                   	ret
    3af9:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3afe:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
    3b03:	49 8d 72 10          	lea    0x10(%r10),%rsi
    3b07:	48 01 c2             	add    %rax,%rdx
    3b0a:	eb 19                	jmp    3b25 <color_printk+0xe55>
    3b0c:	44 89 7a 1c          	mov    %r15d,0x1c(%rdx)
    3b10:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3b15:	49 83 c2 01          	add    $0x1,%r10
    3b19:	48 01 c2             	add    %rax,%rdx
    3b1c:	49 39 f2             	cmp    %rsi,%r10
    3b1f:	0f 84 14 0d 00 00    	je     4839 <color_printk+0x1b69>
    3b25:	41 80 3a 00          	cmpb   $0x0,(%r10)
    3b29:	44 89 f8             	mov    %r15d,%eax
    3b2c:	41 0f 49 c5          	cmovns %r13d,%eax
    3b30:	89 02                	mov    %eax,(%rdx)
    3b32:	44 89 f8             	mov    %r15d,%eax
    3b35:	41 f6 02 40          	testb  $0x40,(%r10)
    3b39:	41 0f 44 c5          	cmove  %r13d,%eax
    3b3d:	89 42 04             	mov    %eax,0x4(%rdx)
    3b40:	44 89 f8             	mov    %r15d,%eax
    3b43:	41 f6 02 20          	testb  $0x20,(%r10)
    3b47:	41 0f 44 c5          	cmove  %r13d,%eax
    3b4b:	89 42 08             	mov    %eax,0x8(%rdx)
    3b4e:	44 89 f8             	mov    %r15d,%eax
    3b51:	41 f6 02 10          	testb  $0x10,(%r10)
    3b55:	41 0f 44 c5          	cmove  %r13d,%eax
    3b59:	89 42 0c             	mov    %eax,0xc(%rdx)
    3b5c:	44 89 f8             	mov    %r15d,%eax
    3b5f:	41 f6 02 08          	testb  $0x8,(%r10)
    3b63:	41 0f 44 c5          	cmove  %r13d,%eax
    3b67:	89 42 10             	mov    %eax,0x10(%rdx)
    3b6a:	44 89 f8             	mov    %r15d,%eax
    3b6d:	41 f6 02 04          	testb  $0x4,(%r10)
    3b71:	41 0f 44 c5          	cmove  %r13d,%eax
    3b75:	89 42 14             	mov    %eax,0x14(%rdx)
    3b78:	44 89 f8             	mov    %r15d,%eax
    3b7b:	41 f6 02 02          	testb  $0x2,(%r10)
    3b7f:	41 0f 44 c5          	cmove  %r13d,%eax
    3b83:	89 42 18             	mov    %eax,0x18(%rdx)
    3b86:	41 f6 02 01          	testb  $0x1,(%r10)
    3b8a:	75 80                	jne    3b0c <color_printk+0xe3c>
    3b8c:	44 89 6a 1c          	mov    %r13d,0x1c(%rdx)
    3b90:	e9 7b ff ff ff       	jmp    3b10 <color_printk+0xe40>
    3b95:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
    3b9c:	00 00 
    3b9e:	83 c1 01             	add    $0x1,%ecx
    3ba1:	45 31 d2             	xor    %r10d,%r10d
    3ba4:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
    3ba9:	e9 e2 fe ff ff       	jmp    3a90 <color_printk+0xdc0>
    3bae:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
    3bb3:	41 0f af c9          	imul   %r9d,%ecx
    3bb7:	4c 63 d6             	movslq %esi,%r10
    3bba:	83 ac 24 d0 00 00 00 	subl   $0x1,0xd0(%rsp)
    3bc1:	01 
    3bc2:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
    3bc8:	0f af d7             	imul   %edi,%edx
    3bcb:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    3bd0:	4c 8b ac 24 30 01 00 	mov    0x130(%rsp),%r13
    3bd7:	00 
    3bd8:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
    3bdf:	00 
    3be0:	0f af ce             	imul   %esi,%ecx
    3be3:	48 63 d2             	movslq %edx,%rdx
    3be6:	48 63 c9             	movslq %ecx,%rcx
    3be9:	48 01 d1             	add    %rdx,%rcx
    3bec:	4c 89 d2             	mov    %r10,%rdx
    3bef:	48 c1 e2 04          	shl    $0x4,%rdx
    3bf3:	48 c1 e1 02          	shl    $0x2,%rcx
    3bf7:	4c 29 d2             	sub    %r10,%rdx
    3bfa:	48 c1 e2 02          	shl    $0x2,%rdx
    3bfe:	85 f6                	test   %esi,%esi
    3c00:	48 8d 7a 1f          	lea    0x1f(%rdx),%rdi
    3c04:	49 0f 48 f9          	cmovs  %r9,%rdi
    3c08:	48 01 cf             	add    %rcx,%rdi
    3c0b:	48 01 df             	add    %rbx,%rdi
    3c0e:	4c 39 ef             	cmp    %r13,%rdi
    3c11:	40 0f 92 c7          	setb   %dil
    3c15:	85 f6                	test   %esi,%esi
    3c17:	be 00 00 00 00       	mov    $0x0,%esi
    3c1c:	48 0f 49 d6          	cmovns %rsi,%rdx
    3c20:	48 01 ca             	add    %rcx,%rdx
    3c23:	48 01 da             	add    %rbx,%rdx
    3c26:	48 39 94 24 38 01 00 	cmp    %rdx,0x138(%rsp)
    3c2d:	00 
    3c2e:	0f 92 c2             	setb   %dl
    3c31:	40 08 fa             	or     %dil,%dl
    3c34:	0f 84 50 0b 00 00    	je     478a <color_printk+0x1aba>
    3c3a:	48 8d 50 1f          	lea    0x1f(%rax),%rdx
    3c3e:	48 83 fa 3e          	cmp    $0x3e,%rdx
    3c42:	0f 86 42 0b 00 00    	jbe    478a <color_printk+0x1aba>
    3c48:	48 01 cb             	add    %rcx,%rbx
    3c4b:	49 c1 e2 05          	shl    $0x5,%r10
    3c4f:	66 41 0f 6e d7       	movd   %r15d,%xmm2
    3c54:	49 8d bd 00 fe ff ff 	lea    -0x200(%r13),%rdi
    3c5b:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
    3c5f:	4d 89 d4             	mov    %r10,%r12
    3c62:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
    3c67:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
    3c6d:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
    3c71:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
    3c77:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    3c7c:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
    3c81:	4d 8d 0c 02          	lea    (%r10,%rax,1),%r9
    3c85:	49 8d 3c 01          	lea    (%r9,%rax,1),%rdi
    3c89:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
    3c8f:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
    3c93:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
    3c97:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
    3c9b:	4c 89 e8             	mov    %r13,%rax
    3c9e:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3ca5:	00 00 00 
    3ca8:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    3cad:	48 2d f0 01 00 00    	sub    $0x1f0,%rax
    3cb3:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3cba:	00 00 00 
    3cbd:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
    3cc2:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3cc9:	00 00 00 
    3ccc:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
    3cd1:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3cd8:	00 00 00 
    3cdb:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    3ce0:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3ce7:	00 00 00 
    3cea:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
    3cef:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
    3cf6:	00 
    3cf7:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3cfc:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
    3d03:	00 
    3d04:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
    3d0b:	00 
    3d0c:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d11:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
    3d18:	00 
    3d19:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3d20:	00 00 00 
    3d23:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d28:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
    3d2f:	00 
    3d30:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3d37:	00 00 00 
    3d3a:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d3f:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
    3d46:	00 
    3d47:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3d4e:	00 00 00 
    3d51:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d56:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
    3d5d:	00 
    3d5e:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3d65:	00 00 00 
    3d68:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d6d:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
    3d74:	00 
    3d75:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    3d7c:	00 00 00 
    3d7f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    3d84:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
    3d8b:	00 
    3d8c:	45 89 c5             	mov    %r8d,%r13d
    3d8f:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
    3d94:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    3d99:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    3d9e:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    3da3:	f3 41 0f 7e 90 00 02 	movq   0x200(%r8),%xmm2
    3daa:	00 00 
    3dac:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    3db1:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    3db6:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    3dbb:	f3 44 0f 7e a4 24 e8 	movq   0xe8(%rsp),%xmm12
    3dc2:	00 00 00 
    3dc5:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
    3dc9:	49 83 c0 08          	add    $0x8,%r8
    3dcd:	66 44 0f db e2       	pand   %xmm2,%xmm12
    3dd2:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    3dd6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    3dda:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    3dde:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    3de2:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    3de7:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
    3deb:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
    3df0:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3df5:	66 0f 6f f8          	movdqa %xmm0,%xmm7
    3df9:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    3dfd:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
    3e02:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    3e07:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    3e0c:	66 41 0f db e6       	pand   %xmm14,%xmm4
    3e11:	66 45 0f df f2       	pandn  %xmm10,%xmm14
    3e16:	66 0f db d9          	pand   %xmm1,%xmm3
    3e1a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    3e1f:	66 44 0f eb f4       	por    %xmm4,%xmm14
    3e24:	66 0f eb cb          	por    %xmm3,%xmm1
    3e28:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    3e2d:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    3e32:	66 44 0f 7e 33       	movd   %xmm14,(%rbx)
    3e37:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    3e3b:	66 0f d6 4c 24 18    	movq   %xmm1,0x18(%rsp)
    3e41:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    3e45:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
    3e49:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    3e4e:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3e53:	66 0f 6f cf          	movdqa %xmm7,%xmm1
    3e57:	66 0f db e7          	pand   %xmm7,%xmm4
    3e5b:	66 0f db f0          	pand   %xmm0,%xmm6
    3e5f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    3e64:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    3e69:	66 0f eb c6          	por    %xmm6,%xmm0
    3e6d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    3e71:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
    3e78:	00 00 
    3e7a:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
    3e80:	66 0f eb fc          	por    %xmm4,%xmm7
    3e84:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    3e89:	66 0f db f2          	pand   %xmm2,%xmm6
    3e8d:	66 0f d6 7c 24 20    	movq   %xmm7,0x20(%rsp)
    3e93:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
    3e98:	66 0f 6f c6          	movdqa %xmm6,%xmm0
    3e9c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3ea1:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3ea6:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    3eaa:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    3eae:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    3eb2:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    3eb6:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
    3eba:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    3ebe:	66 0f 6f de          	movdqa %xmm6,%xmm3
    3ec2:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    3ec7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3ecc:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    3ed0:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    3ed4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    3ed9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    3ede:	66 0f db eb          	pand   %xmm3,%xmm5
    3ee2:	66 41 0f df da       	pandn  %xmm10,%xmm3
    3ee7:	66 0f db f1          	pand   %xmm1,%xmm6
    3eeb:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    3ef0:	66 0f eb dd          	por    %xmm5,%xmm3
    3ef4:	66 0f 6f e9          	movdqa %xmm1,%xmm5
    3ef8:	66 0f d6 5c 24 30    	movq   %xmm3,0x30(%rsp)
    3efe:	66 0f eb ee          	por    %xmm6,%xmm5
    3f02:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    3f07:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
    3f0b:	66 0f d6 6c 24 38    	movq   %xmm5,0x38(%rsp)
    3f11:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    3f16:	66 0f 6f de          	movdqa %xmm6,%xmm3
    3f1a:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    3f1e:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    3f22:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    3f26:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    3f2b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    3f2f:	66 0f db e6          	pand   %xmm6,%xmm4
    3f33:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3f38:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    3f3d:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    3f41:	66 0f eb f4          	por    %xmm4,%xmm6
    3f45:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    3f4a:	66 0f db e0          	pand   %xmm0,%xmm4
    3f4e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    3f53:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
    3f59:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    3f5e:	66 0f 6f cc          	movdqa %xmm4,%xmm1
    3f62:	66 0f 6f e0          	movdqa %xmm0,%xmm4
    3f66:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
    3f6d:	00 00 
    3f6f:	66 0f eb e1          	por    %xmm1,%xmm4
    3f73:	66 0f db c2          	pand   %xmm2,%xmm0
    3f77:	66 0f d6 64 24 48    	movq   %xmm4,0x48(%rsp)
    3f7d:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    3f82:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3f87:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    3f8c:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    3f90:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    3f94:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    3f98:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    3f9c:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
    3fa0:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    3fa4:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    3fa9:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    3fad:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
    3fb1:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    3fb6:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    3fbb:	66 0f db eb          	pand   %xmm3,%xmm5
    3fbf:	66 41 0f df da       	pandn  %xmm10,%xmm3
    3fc4:	66 44 0f db e9       	pand   %xmm1,%xmm13
    3fc9:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    3fce:	66 0f eb dd          	por    %xmm5,%xmm3
    3fd2:	66 41 0f eb cd       	por    %xmm13,%xmm1
    3fd7:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
    3fdc:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    3fe1:	66 0f d6 5c 24 50    	movq   %xmm3,0x50(%rsp)
    3fe7:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
    3fec:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
    3ff2:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    3ff7:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
    3ffc:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
    4001:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    4005:	66 41 0f db e5       	pand   %xmm13,%xmm4
    400a:	66 41 0f 6f cd       	movdqa %xmm13,%xmm1
    400f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    4014:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    4019:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    401e:	66 44 0f db e8       	pand   %xmm0,%xmm13
    4023:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    4028:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
    402d:	66 41 0f eb c5       	por    %xmm13,%xmm0
    4032:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
    4037:	66 44 0f eb c4       	por    %xmm4,%xmm8
    403c:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
    4042:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4047:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    404c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    4051:	66 44 0f d6 44 24 60 	movq   %xmm8,0x60(%rsp)
    4058:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
    405d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    4062:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
    4067:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
    406c:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    4071:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
    4076:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    407a:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
    407f:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    4084:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
    4089:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    408e:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    4093:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
    4097:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
    409c:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    40a0:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    40a5:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
    40aa:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    40af:	66 41 0f db ed       	pand   %xmm13,%xmm5
    40b4:	66 44 0f db e1       	pand   %xmm1,%xmm12
    40b9:	66 41 0f df da       	pandn  %xmm10,%xmm3
    40be:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    40c3:	66 44 0f 6f eb       	movdqa %xmm3,%xmm13
    40c8:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    40cd:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
    40d2:	66 44 0f eb e3       	por    %xmm3,%xmm12
    40d7:	66 0f 6f df          	movdqa %xmm7,%xmm3
    40db:	66 0f 6f f8          	movdqa %xmm0,%xmm7
    40df:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    40e3:	66 44 0f eb ed       	por    %xmm5,%xmm13
    40e8:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
    40ec:	66 44 0f d6 64 24 78 	movq   %xmm12,0x78(%rsp)
    40f3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    40f8:	66 0f 6f cf          	movdqa %xmm7,%xmm1
    40fc:	66 0f db e7          	pand   %xmm7,%xmm4
    4100:	66 44 0f d6 6c 24 70 	movq   %xmm13,0x70(%rsp)
    4107:	66 0f db f0          	pand   %xmm0,%xmm6
    410b:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    4110:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    4115:	66 0f 6f e8          	movdqa %xmm0,%xmm5
    4119:	66 0f 6f f9          	movdqa %xmm1,%xmm7
    411d:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
    4122:	66 0f eb ee          	por    %xmm6,%xmm5
    4126:	66 0f eb fc          	por    %xmm4,%xmm7
    412a:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
    412f:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
    4136:	00 00 
    4138:	66 0f d6 ac 24 88 00 	movq   %xmm5,0x88(%rsp)
    413f:	00 00 
    4141:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
    4146:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    414b:	66 0f d6 bc 24 80 00 	movq   %xmm7,0x80(%rsp)
    4152:	00 00 
    4154:	66 0f db f2          	pand   %xmm2,%xmm6
    4158:	66 0f 6f c6          	movdqa %xmm6,%xmm0
    415c:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    4161:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    4166:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    416b:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
    416f:	66 0f 6f de          	movdqa %xmm6,%xmm3
    4173:	66 0f 6f f0          	movdqa %xmm0,%xmm6
    4177:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    417b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    417f:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
    4183:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    4187:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    418c:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
    4190:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
    4194:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    4199:	66 0f 6f de          	movdqa %xmm6,%xmm3
    419d:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    41a2:	66 0f db ee          	pand   %xmm6,%xmm5
    41a6:	66 0f db e1          	pand   %xmm1,%xmm4
    41aa:	66 41 0f df da       	pandn  %xmm10,%xmm3
    41af:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    41b4:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    41b8:	66 0f 6f dc          	movdqa %xmm4,%xmm3
    41bc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
    41c0:	66 0f eb e3          	por    %xmm3,%xmm4
    41c4:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    41c9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
    41cd:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    41d1:	66 0f eb f5          	por    %xmm5,%xmm6
    41d5:	66 0f d6 a4 24 98 00 	movq   %xmm4,0x98(%rsp)
    41dc:	00 00 
    41de:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    41e3:	66 0f d6 b4 24 90 00 	movq   %xmm6,0x90(%rsp)
    41ea:	00 00 
    41ec:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    41f1:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    41f5:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
    41f9:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    41fe:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    4203:	66 0f db e1          	pand   %xmm1,%xmm4
    4207:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    420c:	66 44 0f db c0       	pand   %xmm0,%xmm8
    4211:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    4216:	66 0f eb cc          	por    %xmm4,%xmm1
    421a:	66 41 0f eb c0       	por    %xmm8,%xmm0
    421f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
    4224:	f3 44 0f 7e 84 24 f8 	movq   0xf8(%rsp),%xmm8
    422b:	00 00 00 
    422e:	66 0f d6 8c 24 a0 00 	movq   %xmm1,0xa0(%rsp)
    4235:	00 00 
    4237:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
    423e:	00 00 
    4240:	66 44 0f db c2       	pand   %xmm2,%xmm8
    4245:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
    424a:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
    424f:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
    4254:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
    4259:	66 44 0f 64 c1       	pcmpgtb %xmm1,%xmm8
    425e:	66 0f 6f e9          	movdqa %xmm1,%xmm5
    4262:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
    4267:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
    426b:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
    426f:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
    4273:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4278:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
    427d:	66 44 0f 65 e1       	pcmpgtw %xmm1,%xmm12
    4282:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
    4287:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
    428b:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    4290:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
    4295:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
    429a:	66 41 0f db e0       	pand   %xmm8,%xmm4
    429f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    42a4:	66 44 0f db ed       	pand   %xmm5,%xmm13
    42a9:	66 41 0f df ea       	pandn  %xmm10,%xmm5
    42ae:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    42b3:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    42b8:	66 41 0f eb ed       	por    %xmm13,%xmm5
    42bd:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
    42c2:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    42c6:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    42cb:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    42d0:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
    42d5:	66 44 0f eb c4       	por    %xmm4,%xmm8
    42da:	66 44 0f db e1       	pand   %xmm1,%xmm12
    42df:	66 41 0f df ca       	pandn  %xmm10,%xmm1
    42e4:	66 41 0f db dd       	pand   %xmm13,%xmm3
    42e9:	66 44 0f d6 84 24 b0 	movq   %xmm8,0xb0(%rsp)
    42f0:	00 00 00 
    42f3:	66 41 0f eb cc       	por    %xmm12,%xmm1
    42f8:	66 45 0f df ea       	pandn  %xmm10,%xmm13
    42fd:	f3 44 0f 7e a4 24 00 	movq   0x100(%rsp),%xmm12
    4304:	01 00 00 
    4307:	66 44 0f eb eb       	por    %xmm3,%xmm13
    430c:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
    4311:	66 44 0f d6 ac 24 b8 	movq   %xmm13,0xb8(%rsp)
    4318:	00 00 00 
    431b:	66 44 0f db e2       	pand   %xmm2,%xmm12
    4320:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4325:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    432a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
    432f:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
    4333:	66 0f 6f e0          	movdqa %xmm0,%xmm4
    4337:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
    433b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
    433f:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    4344:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
    4348:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
    434d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    4352:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    4357:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
    435c:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
    4360:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    4365:	66 41 0f db f4       	pand   %xmm12,%xmm6
    436a:	66 45 0f df e2       	pandn  %xmm10,%xmm12
    436f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
    4374:	66 44 0f eb e6       	por    %xmm6,%xmm12
    4379:	66 0f db dc          	pand   %xmm4,%xmm3
    437d:	66 41 0f df e2       	pandn  %xmm10,%xmm4
    4382:	66 44 0f d6 a4 24 c0 	movq   %xmm12,0xc0(%rsp)
    4389:	00 00 00 
    438c:	66 0f eb e3          	por    %xmm3,%xmm4
    4390:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
    4395:	f3 44 0f 7e a4 24 08 	movq   0x108(%rsp),%xmm12
    439c:	01 00 00 
    439f:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
    43a3:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    43a8:	66 41 0f db d4       	pand   %xmm12,%xmm2
    43ad:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
    43b2:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    43b7:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
    43bc:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
    43c0:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
    43c5:	66 41 0f db f0       	pand   %xmm8,%xmm6
    43ca:	66 45 0f df c2       	pandn  %xmm10,%xmm8
    43cf:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    43d4:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
    43d9:	66 44 0f eb c6       	por    %xmm6,%xmm8
    43de:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    43e3:	66 0f db d8          	pand   %xmm0,%xmm3
    43e7:	66 41 0f df c2       	pandn  %xmm10,%xmm0
    43ec:	66 0f eb c3          	por    %xmm3,%xmm0
    43f0:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
    43f4:	66 0f 6f da          	movdqa %xmm2,%xmm3
    43f8:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
    43fc:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
    4400:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    4405:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
    4409:	66 0f 6f fb          	movdqa %xmm3,%xmm7
    440d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    4412:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
    4417:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    441b:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
    441f:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
    4424:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    4429:	66 44 0f db e7       	pand   %xmm7,%xmm12
    442e:	66 41 0f df fa       	pandn  %xmm10,%xmm7
    4433:	66 0f db f3          	pand   %xmm3,%xmm6
    4437:	66 41 0f df da       	pandn  %xmm10,%xmm3
    443c:	66 41 0f eb fc       	por    %xmm12,%xmm7
    4441:	66 0f eb de          	por    %xmm6,%xmm3
    4445:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
    444a:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
    444e:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
    4453:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
    4458:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
    445d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4463:	66 45 0f 7e 23       	movd   %xmm12,(%r11)
    4468:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
    446f:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
    4474:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    4479:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
    447e:	66 45 0f 7e 32       	movd   %xmm14,(%r10)
    4483:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4489:	66 44 0f db ee       	pand   %xmm6,%xmm13
    448e:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
    4495:	66 41 0f df f2       	pandn  %xmm10,%xmm6
    449a:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
    449f:	66 41 0f eb f5       	por    %xmm13,%xmm6
    44a4:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
    44a9:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    44af:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
    44b4:	f3 44 0f 7e 74 24 28 	movq   0x28(%rsp),%xmm14
    44bb:	66 44 0f db ea       	pand   %xmm2,%xmm13
    44c0:	66 41 0f df d2       	pandn  %xmm10,%xmm2
    44c5:	66 44 0f 7e 26       	movd   %xmm12,(%rsi)
    44ca:	66 41 0f eb d5       	por    %xmm13,%xmm2
    44cf:	66 44 0f 7e 31       	movd   %xmm14,(%rcx)
    44d4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    44da:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
    44e1:	66 44 0f 7e 2a       	movd   %xmm13,(%rdx)
    44e6:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    44ec:	66 44 0f 7e 73 04    	movd   %xmm14,0x4(%rbx)
    44f2:	f3 44 0f 7e 74 24 38 	movq   0x38(%rsp),%xmm14
    44f9:	66 45 0f 7e 63 04    	movd   %xmm12,0x4(%r11)
    44ff:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    4505:	66 45 0f 7e 72 04    	movd   %xmm14,0x4(%r10)
    450b:	f3 44 0f 7e 74 24 40 	movq   0x40(%rsp),%xmm14
    4512:	66 45 0f 7e 69 04    	movd   %xmm13,0x4(%r9)
    4518:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    451e:	66 44 0f 7e 77 04    	movd   %xmm14,0x4(%rdi)
    4524:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
    452b:	66 44 0f 7e 66 04    	movd   %xmm12,0x4(%rsi)
    4531:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    4537:	66 44 0f 7e 71 04    	movd   %xmm14,0x4(%rcx)
    453d:	f3 44 0f 7e 74 24 50 	movq   0x50(%rsp),%xmm14
    4544:	66 44 0f 7e 6a 04    	movd   %xmm13,0x4(%rdx)
    454a:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4550:	66 44 0f 7e 73 08    	movd   %xmm14,0x8(%rbx)
    4556:	f3 44 0f 7e 74 24 58 	movq   0x58(%rsp),%xmm14
    455d:	66 45 0f 7e 63 08    	movd   %xmm12,0x8(%r11)
    4563:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    4569:	66 45 0f 7e 72 08    	movd   %xmm14,0x8(%r10)
    456f:	f3 44 0f 7e 74 24 60 	movq   0x60(%rsp),%xmm14
    4576:	66 45 0f 7e 69 08    	movd   %xmm13,0x8(%r9)
    457c:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4582:	66 44 0f 7e 77 08    	movd   %xmm14,0x8(%rdi)
    4588:	f3 44 0f 7e 74 24 68 	movq   0x68(%rsp),%xmm14
    458f:	66 44 0f 7e 66 08    	movd   %xmm12,0x8(%rsi)
    4595:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    459b:	66 44 0f 7e 71 08    	movd   %xmm14,0x8(%rcx)
    45a1:	66 44 0f 7e 6a 08    	movd   %xmm13,0x8(%rdx)
    45a7:	f3 44 0f 7e 74 24 70 	movq   0x70(%rsp),%xmm14
    45ae:	66 44 0f 7e 73 0c    	movd   %xmm14,0xc(%rbx)
    45b4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    45ba:	f3 44 0f 7e 74 24 78 	movq   0x78(%rsp),%xmm14
    45c1:	66 45 0f 7e 6b 0c    	movd   %xmm13,0xc(%r11)
    45c7:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    45cd:	66 45 0f 7e 72 0c    	movd   %xmm14,0xc(%r10)
    45d3:	f3 44 0f 7e b4 24 80 	movq   0x80(%rsp),%xmm14
    45da:	00 00 00 
    45dd:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
    45e3:	66 44 0f 7e 77 0c    	movd   %xmm14,0xc(%rdi)
    45e9:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    45ef:	f3 44 0f 7e b4 24 88 	movq   0x88(%rsp),%xmm14
    45f6:	00 00 00 
    45f9:	66 44 0f 7e 66 0c    	movd   %xmm12,0xc(%rsi)
    45ff:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    4605:	66 44 0f 7e 71 0c    	movd   %xmm14,0xc(%rcx)
    460b:	f3 44 0f 7e b4 24 90 	movq   0x90(%rsp),%xmm14
    4612:	00 00 00 
    4615:	66 44 0f 7e 6a 0c    	movd   %xmm13,0xc(%rdx)
    461b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4621:	66 44 0f 7e 73 10    	movd   %xmm14,0x10(%rbx)
    4627:	f3 44 0f 7e b4 24 98 	movq   0x98(%rsp),%xmm14
    462e:	00 00 00 
    4631:	66 45 0f 7e 63 10    	movd   %xmm12,0x10(%r11)
    4637:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    463d:	66 45 0f 7e 72 10    	movd   %xmm14,0x10(%r10)
    4643:	f3 44 0f 7e b4 24 a0 	movq   0xa0(%rsp),%xmm14
    464a:	00 00 00 
    464d:	66 45 0f 7e 69 10    	movd   %xmm13,0x10(%r9)
    4653:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    4659:	66 44 0f 7e 77 10    	movd   %xmm14,0x10(%rdi)
    465f:	f3 44 0f 7e b4 24 a8 	movq   0xa8(%rsp),%xmm14
    4666:	00 00 00 
    4669:	66 44 0f 7e 66 10    	movd   %xmm12,0x10(%rsi)
    466f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
    4675:	66 44 0f 7e 71 10    	movd   %xmm14,0x10(%rcx)
    467b:	f3 44 0f 7e b4 24 b0 	movq   0xb0(%rsp),%xmm14
    4682:	00 00 00 
    4685:	66 44 0f 7e 6a 10    	movd   %xmm13,0x10(%rdx)
    468b:	f3 44 0f 7e ac 24 b8 	movq   0xb8(%rsp),%xmm13
    4692:	00 00 00 
    4695:	66 44 0f 7e 73 14    	movd   %xmm14,0x14(%rbx)
    469b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
    46a1:	66 45 0f 7e 63 14    	movd   %xmm12,0x14(%r11)
    46a7:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
    46ad:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    46b2:	66 41 0f 7e 69 14    	movd   %xmm5,0x14(%r9)
    46b8:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
    46be:	66 44 0f 7e 6f 14    	movd   %xmm13,0x14(%rdi)
    46c4:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
    46c9:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
    46ce:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
    46d3:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
    46d8:	f3 0f 7e ac 24 c0 00 	movq   0xc0(%rsp),%xmm5
    46df:	00 00 
    46e1:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
    46e6:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    46eb:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
    46f1:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    46f6:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
    46fc:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
    4702:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
    4708:	66 44 0f 7e 47 18    	movd   %xmm8,0x18(%rdi)
    470e:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
    4713:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
    4718:	66 0f 7e 41 18       	movd   %xmm0,0x18(%rcx)
    471d:	66 0f 7e 6a 18       	movd   %xmm5,0x18(%rdx)
    4722:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
    4727:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
    472c:	4c 01 e3             	add    %r12,%rbx
    472f:	66 41 0f 7e 7b 1c    	movd   %xmm7,0x1c(%r11)
    4735:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
    473a:	4d 01 e3             	add    %r12,%r11
    473d:	66 41 0f 7e 5a 1c    	movd   %xmm3,0x1c(%r10)
    4743:	4d 01 e2             	add    %r12,%r10
    4746:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
    474c:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
    4751:	4d 01 e1             	add    %r12,%r9
    4754:	66 0f 7e 77 1c       	movd   %xmm6,0x1c(%rdi)
    4759:	4c 01 e7             	add    %r12,%rdi
    475c:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
    4761:	4c 01 e6             	add    %r12,%rsi
    4764:	66 0f 7e 51 1c       	movd   %xmm2,0x1c(%rcx)
    4769:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
    476e:	4c 01 e1             	add    %r12,%rcx
    4771:	66 0f 7e 52 1c       	movd   %xmm2,0x1c(%rdx)
    4776:	4c 01 e2             	add    %r12,%rdx
    4779:	49 39 c0             	cmp    %rax,%r8
    477c:	0f 85 12 f6 ff ff    	jne    3d94 <color_printk+0x10c4>
    4782:	45 89 e8             	mov    %r13d,%r8d
    4785:	e9 e5 f2 ff ff       	jmp    3a6f <color_printk+0xd9f>
    478a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    478f:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
    4794:	48 01 f9             	add    %rdi,%rcx
    4797:	48 8b bc 24 28 01 00 	mov    0x128(%rsp),%rdi
    479e:	00 
    479f:	48 8d 14 2f          	lea    (%rdi,%rbp,1),%rdx
    47a3:	eb 1b                	jmp    47c0 <color_printk+0x1af0>
    47a5:	0f 1f 00             	nopl   (%rax)
    47a8:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
    47ac:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
    47b3:	00 
    47b4:	48 83 c2 01          	add    $0x1,%rdx
    47b8:	48 01 c1             	add    %rax,%rcx
    47bb:	48 39 da             	cmp    %rbx,%rdx
    47be:	74 79                	je     4839 <color_printk+0x1b69>
    47c0:	80 3a 00             	cmpb   $0x0,(%rdx)
    47c3:	44 89 fe             	mov    %r15d,%esi
    47c6:	41 0f 49 f5          	cmovns %r13d,%esi
    47ca:	89 31                	mov    %esi,(%rcx)
    47cc:	44 89 fe             	mov    %r15d,%esi
    47cf:	f6 02 40             	testb  $0x40,(%rdx)
    47d2:	41 0f 44 f5          	cmove  %r13d,%esi
    47d6:	89 71 04             	mov    %esi,0x4(%rcx)
    47d9:	44 89 fe             	mov    %r15d,%esi
    47dc:	f6 02 20             	testb  $0x20,(%rdx)
    47df:	41 0f 44 f5          	cmove  %r13d,%esi
    47e3:	89 71 08             	mov    %esi,0x8(%rcx)
    47e6:	44 89 fe             	mov    %r15d,%esi
    47e9:	f6 02 10             	testb  $0x10,(%rdx)
    47ec:	41 0f 44 f5          	cmove  %r13d,%esi
    47f0:	89 71 0c             	mov    %esi,0xc(%rcx)
    47f3:	44 89 fe             	mov    %r15d,%esi
    47f6:	f6 02 08             	testb  $0x8,(%rdx)
    47f9:	41 0f 44 f5          	cmove  %r13d,%esi
    47fd:	89 71 10             	mov    %esi,0x10(%rcx)
    4800:	44 89 fe             	mov    %r15d,%esi
    4803:	f6 02 04             	testb  $0x4,(%rdx)
    4806:	41 0f 44 f5          	cmove  %r13d,%esi
    480a:	89 71 14             	mov    %esi,0x14(%rcx)
    480d:	44 89 fe             	mov    %r15d,%esi
    4810:	f6 02 02             	testb  $0x2,(%rdx)
    4813:	41 0f 44 f5          	cmove  %r13d,%esi
    4817:	89 71 18             	mov    %esi,0x18(%rcx)
    481a:	f6 02 01             	testb  $0x1,(%rdx)
    481d:	75 89                	jne    47a8 <color_printk+0x1ad8>
    481f:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
    4823:	eb 87                	jmp    47ac <color_printk+0x1adc>
    4825:	8d 42 08             	lea    0x8(%rdx),%eax
    4828:	83 e0 f8             	and    $0xfffffff8,%eax
    482b:	29 d0                	sub    %edx,%eax
    482d:	89 84 24 d0 00 00 00 	mov    %eax,0xd0(%rsp)
    4834:	e9 7a f3 ff ff       	jmp    3bb3 <color_printk+0xee3>
    4839:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
    483e:	e9 2c f2 ff ff       	jmp    3a6f <color_printk+0xd9f>
    4843:	83 ea 01             	sub    $0x1,%edx
    4846:	41 89 d3             	mov    %edx,%r11d
    4849:	0f 88 d7 0b 00 00    	js     5426 <color_printk+0x2756>
    484f:	41 89 54 2e 08       	mov    %edx,0x8(%r14,%rbp,1)
    4854:	41 0f af c9          	imul   %r9d,%ecx
    4858:	44 89 da             	mov    %r11d,%edx
    485b:	4c 63 d6             	movslq %esi,%r10
    485e:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
    4864:	0f af d7             	imul   %edi,%edx
    4867:	4c 89 d7             	mov    %r10,%rdi
    486a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
    486f:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
    4876:	00 
    4877:	48 c1 e7 04          	shl    $0x4,%rdi
    487b:	0f af ce             	imul   %esi,%ecx
    487e:	4c 29 d7             	sub    %r10,%rdi
    4881:	48 63 d2             	movslq %edx,%rdx
    4884:	48 c1 e7 02          	shl    $0x2,%rdi
    4888:	48 63 c9             	movslq %ecx,%rcx
    488b:	48 01 d1             	add    %rdx,%rcx
    488e:	48 8d 57 1f          	lea    0x1f(%rdi),%rdx
    4892:	48 c1 e1 02          	shl    $0x2,%rcx
    4896:	85 f6                	test   %esi,%esi
    4898:	49 0f 48 d1          	cmovs  %r9,%rdx
    489c:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
    48a3:	00 00 00 
    48a6:	49 8d 1c 29          	lea    (%r9,%rbp,1),%rbx
    48aa:	48 01 ca             	add    %rcx,%rdx
    48ad:	49 89 dd             	mov    %rbx,%r13
    48b0:	4d 8d 1c 14          	lea    (%r12,%rdx,1),%r11
    48b4:	49 39 db             	cmp    %rbx,%r11
    48b7:	41 0f 92 c3          	setb   %r11b
    48bb:	85 f6                	test   %esi,%esi
    48bd:	be 00 00 00 00       	mov    $0x0,%esi
    48c2:	48 0f 48 f7          	cmovs  %rdi,%rsi
    48c6:	48 8d 7b 0f          	lea    0xf(%rbx),%rdi
    48ca:	48 01 ce             	add    %rcx,%rsi
    48cd:	4c 01 e6             	add    %r12,%rsi
    48d0:	48 39 f7             	cmp    %rsi,%rdi
    48d3:	40 0f 92 c6          	setb   %sil
    48d7:	44 08 de             	or     %r11b,%sil
    48da:	0f 84 83 0b 00 00    	je     5463 <color_printk+0x2793>
    48e0:	48 8d 70 1f          	lea    0x1f(%rax),%rsi
    48e4:	48 83 fe 3e          	cmp    $0x3e,%rsi
    48e8:	0f 86 75 0b 00 00    	jbe    5463 <color_printk+0x2793>
    48ee:	49 01 cc             	add    %rcx,%r12
    48f1:	66 41 0f 6e d7       	movd   %r15d,%xmm2
    48f6:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
    48fb:	4c 89 d2             	mov    %r10,%rdx
    48fe:	49 81 ed f0 01 00 00 	sub    $0x1f0,%r13
    4905:	4c 8d 8b 00 fe ff ff 	lea    -0x200(%rbx),%r9
    490c:	49 8d 1c 04          	lea    (%r12,%rax,1),%rbx
    4910:	48 c1 e2 05          	shl    $0x5,%rdx
    4914:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
    4918:	66 44 0f 70 e2 e0    	pshufd $0xe0,%xmm2,%xmm12
    491e:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
    4924:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
    492b:	00 
    492c:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    4933:	00 00 00 
    4936:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
    493a:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    493f:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    4944:	49 8d 3c 02          	lea    (%r10,%rax,1),%rdi
    4948:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
    494e:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    4955:	00 00 00 
    4958:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
    495d:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
    4961:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    4968:	00 00 00 
    496b:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
    4970:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
    4974:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    497b:	00 00 00 
    497e:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
    4983:	48 01 c8             	add    %rcx,%rax
    4986:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    498d:	00 00 00 
    4990:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
    4995:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    499c:	00 00 00 
    499f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    49a4:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
    49ab:	00 
    49ac:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    49b3:	00 00 00 
    49b6:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    49bb:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
    49c2:	00 
    49c3:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    49ca:	00 00 00 
    49cd:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    49d2:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
    49d9:	00 
    49da:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    49e1:	00 00 00 
    49e4:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    49e9:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
    49f0:	00 
    49f1:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    49f8:	00 00 00 
    49fb:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    4a00:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
    4a07:	00 
    4a08:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    4a0f:	00 00 00 
    4a12:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    4a17:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
    4a1e:	00 
    4a1f:	49 bd 00 00 00 00 00 	movabs $0x0,%r13
    4a26:	00 00 00 
    4a29:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
    4a2e:	4c 89 ac 24 48 01 00 	mov    %r13,0x148(%rsp)
    4a35:	00 
    4a36:	45 89 c5             	mov    %r8d,%r13d
    4a39:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
    4a3e:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
    4a43:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    4a48:	f3 41 0f 7e 91 00 02 	movq   0x200(%r9),%xmm2
    4a4f:	00 00 
    4a51:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4a56:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
    4a5b:	49 83 c1 08          	add    $0x8,%r9
    4a5f:	66 0f 64 da          	pcmpgtb %xmm2,%xmm3
    4a63:	66 0f 64 c3          	pcmpgtb %xmm3,%xmm0
    4a67:	66 0f 6f eb          	movdqa %xmm3,%xmm5
    4a6b:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
    4a6f:	66 0f 60 d8          	punpcklbw %xmm0,%xmm3
    4a73:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4a78:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
    4a7c:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
    4a81:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    4a86:	66 44 0f 6f f3       	movdqa %xmm3,%xmm14
    4a8b:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
    4a8f:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
    4a94:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4a99:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
    4a9e:	66 41 0f db cf       	pand   %xmm15,%xmm1
    4aa3:	66 45 0f df fb       	pandn  %xmm11,%xmm15
    4aa8:	66 0f db c5          	pand   %xmm5,%xmm0
    4aac:	66 41 0f df eb       	pandn  %xmm11,%xmm5
    4ab1:	66 44 0f eb f9       	por    %xmm1,%xmm15
    4ab6:	66 0f eb e8          	por    %xmm0,%xmm5
    4aba:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4abf:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    4ac4:	66 0f 65 c3          	pcmpgtw %xmm3,%xmm0
    4ac8:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    4acc:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
    4ad1:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4ad6:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
    4adb:	66 41 0f db ce       	pand   %xmm14,%xmm1
    4ae0:	66 45 0f df f3       	pandn  %xmm11,%xmm14
    4ae5:	66 0f db c3          	pand   %xmm3,%xmm0
    4ae9:	66 41 0f df db       	pandn  %xmm11,%xmm3
    4aee:	66 44 0f eb f1       	por    %xmm1,%xmm14
    4af3:	66 0f eb d8          	por    %xmm0,%xmm3
    4af7:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
    4afc:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
    4b03:	00 00 
    4b05:	66 0f d6 5c 24 18    	movq   %xmm3,0x18(%rsp)
    4b0b:	66 0f db c2          	pand   %xmm2,%xmm0
    4b0f:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
    4b14:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
    4b19:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
    4b1d:	66 0f 6f e0          	movdqa %xmm0,%xmm4
    4b21:	66 0f 60 e1          	punpcklbw %xmm1,%xmm4
    4b25:	66 0f 60 c1          	punpcklbw %xmm1,%xmm0
    4b29:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    4b2e:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
    4b32:	66 44 0f 6f ec       	movdqa %xmm4,%xmm13
    4b37:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    4b3c:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
    4b41:	66 0f 61 e1          	punpcklwd %xmm1,%xmm4
    4b45:	66 44 0f 61 e9       	punpcklwd %xmm1,%xmm13
    4b4a:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    4b4f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
    4b54:	66 41 0f db f5       	pand   %xmm13,%xmm6
    4b59:	66 45 0f df eb       	pandn  %xmm11,%xmm13
    4b5e:	66 0f db cc          	pand   %xmm4,%xmm1
    4b62:	66 41 0f df e3       	pandn  %xmm11,%xmm4
    4b67:	66 44 0f eb ee       	por    %xmm6,%xmm13
    4b6c:	66 0f eb e1          	por    %xmm1,%xmm4
    4b70:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
    4b75:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4b7a:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
    4b7e:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
    4b82:	66 44 0f 61 c1       	punpcklwd %xmm1,%xmm8
    4b87:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
    4b8c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
    4b91:	66 41 0f db f0       	pand   %xmm8,%xmm6
    4b96:	66 45 0f df c3       	pandn  %xmm11,%xmm8
    4b9b:	66 0f db c8          	pand   %xmm0,%xmm1
    4b9f:	66 41 0f df c3       	pandn  %xmm11,%xmm0
    4ba4:	66 44 0f eb c6       	por    %xmm6,%xmm8
    4ba9:	66 0f eb c1          	por    %xmm1,%xmm0
    4bad:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
    4bb4:	00 00 
    4bb6:	66 0f d6 44 24 20    	movq   %xmm0,0x20(%rsp)
    4bbc:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4bc1:	66 0f db ca          	pand   %xmm2,%xmm1
    4bc5:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4bca:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4bcf:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
    4bd3:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4bd7:	66 0f 60 f7          	punpcklbw %xmm7,%xmm6
    4bdb:	66 0f 60 cf          	punpcklbw %xmm7,%xmm1
    4bdf:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
    4be4:	66 0f 65 fe          	pcmpgtw %xmm6,%xmm7
    4be8:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4bed:	66 49 0f 7e f8       	movq   %xmm7,%r8
    4bf2:	66 0f 6f fe          	movdqa %xmm6,%xmm7
    4bf6:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4bfb:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
    4bff:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    4c03:	66 0f db c7          	pand   %xmm7,%xmm0
    4c07:	66 41 0f df fb       	pandn  %xmm11,%xmm7
    4c0c:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    4c11:	66 0f eb f8          	por    %xmm0,%xmm7
    4c15:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4c1a:	66 0f db c6          	pand   %xmm6,%xmm0
    4c1e:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4c23:	66 0f eb c6          	por    %xmm6,%xmm0
    4c27:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    4c2c:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    4c30:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
    4c36:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4c3b:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4c40:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4c44:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4c49:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    4c4d:	66 0f db c6          	pand   %xmm6,%xmm0
    4c51:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4c56:	66 0f eb c6          	por    %xmm6,%xmm0
    4c5a:	66 49 0f 6e f0       	movq   %r8,%xmm6
    4c5f:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    4c63:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4c68:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
    4c6e:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4c73:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4c78:	66 0f db f1          	pand   %xmm1,%xmm6
    4c7c:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    4c81:	66 0f eb ce          	por    %xmm6,%xmm1
    4c85:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
    4c8c:	00 00 
    4c8e:	66 0f d6 4c 24 38    	movq   %xmm1,0x38(%rsp)
    4c94:	66 0f db f2          	pand   %xmm2,%xmm6
    4c98:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    4c9c:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
    4ca1:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4ca6:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4cab:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
    4caf:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4cb4:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4cb8:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4cbd:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    4cc1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    4cc5:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
    4cc9:	66 0f 6f de          	movdqa %xmm6,%xmm3
    4ccd:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4cd2:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    4cd6:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
    4cdc:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4ce0:	66 41 0f df db       	pandn  %xmm11,%xmm3
    4ce5:	66 41 0f db c4       	pand   %xmm12,%xmm0
    4cea:	66 0f eb c3          	por    %xmm3,%xmm0
    4cee:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    4cf3:	66 0f d6 44 24 40    	movq   %xmm0,0x40(%rsp)
    4cf9:	f3 0f 7e 44 24 48    	movq   0x48(%rsp),%xmm0
    4cff:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
    4d03:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    4d08:	66 0f db de          	pand   %xmm6,%xmm3
    4d0c:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4d11:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4d15:	66 0f eb c6          	por    %xmm6,%xmm0
    4d19:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    4d1e:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    4d22:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
    4d28:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4d2d:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4d32:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4d36:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4d3b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    4d3f:	66 0f db c6          	pand   %xmm6,%xmm0
    4d43:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4d48:	66 0f eb c6          	por    %xmm6,%xmm0
    4d4c:	66 49 0f 6e f0       	movq   %r8,%xmm6
    4d51:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    4d55:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4d5a:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
    4d60:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4d65:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4d6a:	66 0f db f1          	pand   %xmm1,%xmm6
    4d6e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    4d73:	66 0f eb ce          	por    %xmm6,%xmm1
    4d77:	f3 0f 7e b4 24 f8 00 	movq   0xf8(%rsp),%xmm6
    4d7e:	00 00 
    4d80:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
    4d86:	66 0f db f2          	pand   %xmm2,%xmm6
    4d8a:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    4d8e:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
    4d93:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4d98:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4d9d:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
    4da1:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4da6:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4daa:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4daf:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    4db3:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    4db7:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
    4dbb:	66 0f 6f de          	movdqa %xmm6,%xmm3
    4dbf:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4dc4:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    4dc8:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
    4dce:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4dd2:	66 41 0f df db       	pandn  %xmm11,%xmm3
    4dd7:	66 41 0f db c4       	pand   %xmm12,%xmm0
    4ddc:	66 0f eb c3          	por    %xmm3,%xmm0
    4de0:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    4de5:	66 0f d6 44 24 60    	movq   %xmm0,0x60(%rsp)
    4deb:	f3 0f 7e 44 24 68    	movq   0x68(%rsp),%xmm0
    4df1:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
    4df5:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    4dfa:	66 0f db de          	pand   %xmm6,%xmm3
    4dfe:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4e03:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4e07:	66 0f eb c6          	por    %xmm6,%xmm0
    4e0b:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    4e10:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    4e14:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
    4e1a:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4e1f:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4e24:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4e28:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4e2d:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    4e31:	66 0f db c6          	pand   %xmm6,%xmm0
    4e35:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4e3a:	66 0f eb c6          	por    %xmm6,%xmm0
    4e3e:	66 49 0f 6e f0       	movq   %r8,%xmm6
    4e43:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    4e47:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4e4c:	66 0f d6 44 24 70    	movq   %xmm0,0x70(%rsp)
    4e52:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4e57:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4e5c:	66 0f db f1          	pand   %xmm1,%xmm6
    4e60:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    4e65:	66 0f eb ce          	por    %xmm6,%xmm1
    4e69:	f3 0f 7e b4 24 00 01 	movq   0x100(%rsp),%xmm6
    4e70:	00 00 
    4e72:	66 0f d6 4c 24 78    	movq   %xmm1,0x78(%rsp)
    4e78:	66 0f db f2          	pand   %xmm2,%xmm6
    4e7c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    4e80:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
    4e85:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4e8a:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4e8f:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
    4e93:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4e98:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4e9c:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4ea1:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    4ea5:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    4ea9:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
    4ead:	66 0f 6f de          	movdqa %xmm6,%xmm3
    4eb1:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4eb6:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
    4ebd:	00 00 
    4ebf:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    4ec3:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4ec7:	66 41 0f df db       	pandn  %xmm11,%xmm3
    4ecc:	66 41 0f db c4       	pand   %xmm12,%xmm0
    4ed1:	66 0f eb c3          	por    %xmm3,%xmm0
    4ed5:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    4eda:	66 0f d6 84 24 80 00 	movq   %xmm0,0x80(%rsp)
    4ee1:	00 00 
    4ee3:	f3 0f 7e 84 24 88 00 	movq   0x88(%rsp),%xmm0
    4eea:	00 00 
    4eec:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
    4ef0:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    4ef5:	66 0f db de          	pand   %xmm6,%xmm3
    4ef9:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4efe:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4f02:	66 0f eb c6          	por    %xmm6,%xmm0
    4f06:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    4f0b:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
    4f12:	00 00 
    4f14:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    4f18:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4f1d:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4f22:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4f26:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4f2b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
    4f2f:	66 0f db c6          	pand   %xmm6,%xmm0
    4f33:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    4f38:	66 0f eb c6          	por    %xmm6,%xmm0
    4f3c:	66 49 0f 6e f0       	movq   %r8,%xmm6
    4f41:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
    4f48:	00 00 
    4f4a:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    4f4e:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    4f53:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
    4f58:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4f5d:	66 0f db f1          	pand   %xmm1,%xmm6
    4f61:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    4f66:	66 0f eb ce          	por    %xmm6,%xmm1
    4f6a:	f3 0f 7e b4 24 08 01 	movq   0x108(%rsp),%xmm6
    4f71:	00 00 
    4f73:	66 0f d6 8c 24 98 00 	movq   %xmm1,0x98(%rsp)
    4f7a:	00 00 
    4f7c:	66 0f db f2          	pand   %xmm2,%xmm6
    4f80:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    4f84:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
    4f89:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4f8e:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    4f93:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
    4f97:	66 49 0f 7e f0       	movq   %xmm6,%r8
    4f9c:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    4fa0:	66 49 0f 6e d8       	movq   %r8,%xmm3
    4fa5:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
    4fa9:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
    4fad:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
    4fb1:	66 0f 6f de          	movdqa %xmm6,%xmm3
    4fb5:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    4fba:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
    4fc1:	00 00 
    4fc3:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
    4fc7:	66 0f 6f c3          	movdqa %xmm3,%xmm0
    4fcb:	66 41 0f df db       	pandn  %xmm11,%xmm3
    4fd0:	66 41 0f db c4       	pand   %xmm12,%xmm0
    4fd5:	66 0f eb c3          	por    %xmm3,%xmm0
    4fd9:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    4fde:	66 0f d6 84 24 a0 00 	movq   %xmm0,0xa0(%rsp)
    4fe5:	00 00 
    4fe7:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
    4fee:	00 00 
    4ff0:	66 45 0f 7e 3c 24    	movd   %xmm15,(%r12)
    4ff6:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
    4ffa:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    4fff:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    5004:	66 0f db de          	pand   %xmm6,%xmm3
    5008:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    500d:	66 0f eb de          	por    %xmm6,%xmm3
    5011:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
    5016:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
    501a:	66 49 0f 7e d8       	movq   %xmm3,%r8
    501f:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    5023:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
    502a:	00 00 
    502c:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
    5030:	66 0f 6f f3          	movdqa %xmm3,%xmm6
    5034:	66 0f db c3          	pand   %xmm3,%xmm0
    5038:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    503d:	66 0f eb c6          	por    %xmm6,%xmm0
    5041:	f3 0f 7e b4 24 b0 00 	movq   0xb0(%rsp),%xmm6
    5048:	00 00 
    504a:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
    5051:	00 00 
    5053:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
    5058:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
    505c:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
    5061:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    5066:	66 0f db f1          	pand   %xmm1,%xmm6
    506a:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    506f:	66 0f eb ce          	por    %xmm6,%xmm1
    5073:	f3 0f 7e b4 24 48 01 	movq   0x148(%rsp),%xmm6
    507a:	00 00 
    507c:	66 0f d6 8c 24 b0 00 	movq   %xmm1,0xb0(%rsp)
    5083:	00 00 
    5085:	66 0f db f2          	pand   %xmm2,%xmm6
    5089:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
    508e:	66 0f 6f ce          	movdqa %xmm6,%xmm1
    5092:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    5097:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
    509c:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
    50a0:	66 0f 6f f1          	movdqa %xmm1,%xmm6
    50a4:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
    50a8:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
    50ac:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
    50b1:	66 0f 65 d6          	pcmpgtw %xmm6,%xmm2
    50b5:	66 0f 6f de          	movdqa %xmm6,%xmm3
    50b9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    50be:	66 0f d6 94 24 c0 00 	movq   %xmm2,0xc0(%rsp)
    50c5:	00 00 
    50c7:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    50cb:	66 0f 6f d3          	movdqa %xmm3,%xmm2
    50cf:	66 0f db c3          	pand   %xmm3,%xmm0
    50d3:	66 0f 6f d9          	movdqa %xmm1,%xmm3
    50d7:	66 41 0f df d3       	pandn  %xmm11,%xmm2
    50dc:	66 0f eb c2          	por    %xmm2,%xmm0
    50e0:	f3 0f 7e 94 24 c0 00 	movq   0xc0(%rsp),%xmm2
    50e7:	00 00 
    50e9:	66 0f d6 84 24 b8 00 	movq   %xmm0,0xb8(%rsp)
    50f0:	00 00 
    50f2:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
    50f6:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
    50fb:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
    5100:	66 0f db d6          	pand   %xmm6,%xmm2
    5104:	66 41 0f df f3       	pandn  %xmm11,%xmm6
    5109:	66 0f eb f2          	por    %xmm2,%xmm6
    510d:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
    5112:	66 0f 65 d1          	pcmpgtw %xmm1,%xmm2
    5116:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
    511a:	66 0f 6f c2          	movdqa %xmm2,%xmm0
    511e:	66 0f 6f d3          	movdqa %xmm3,%xmm2
    5122:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    5127:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
    512b:	66 0f db da          	pand   %xmm2,%xmm3
    512f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
    5134:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
    5139:	66 0f eb d3          	por    %xmm3,%xmm2
    513d:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
    5142:	66 0f db d9          	pand   %xmm1,%xmm3
    5146:	66 41 0f df cb       	pandn  %xmm11,%xmm1
    514b:	66 0f eb cb          	por    %xmm3,%xmm1
    514f:	66 41 0f 70 df e5    	pshufd $0xe5,%xmm15,%xmm3
    5155:	66 0f 7e 1b          	movd   %xmm3,(%rbx)
    5159:	66 41 0f 7e 2b       	movd   %xmm5,(%r11)
    515e:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    5163:	66 41 0f 7e 2a       	movd   %xmm5,(%r10)
    5168:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
    516e:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
    5173:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
    5177:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
    517d:	66 0f 7e 29          	movd   %xmm5,(%rcx)
    5181:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
    5186:	66 0f 7e 28          	movd   %xmm5,(%rax)
    518a:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
    5190:	66 45 0f 7e 6c 24 04 	movd   %xmm13,0x4(%r12)
    5197:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
    519c:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    51a1:	66 41 0f 7e 63 04    	movd   %xmm4,0x4(%r11)
    51a7:	f3 0f 7e 64 24 20    	movq   0x20(%rsp),%xmm4
    51ad:	66 41 0f 7e 6a 04    	movd   %xmm5,0x4(%r10)
    51b3:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
    51b9:	66 44 0f 7e 47 04    	movd   %xmm8,0x4(%rdi)
    51bf:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
    51c4:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
    51c9:	66 0f 7e 61 04       	movd   %xmm4,0x4(%rcx)
    51ce:	66 0f 70 e7 e5       	pshufd $0xe5,%xmm7,%xmm4
    51d3:	66 0f 7e 68 04       	movd   %xmm5,0x4(%rax)
    51d8:	66 41 0f 7e 7c 24 08 	movd   %xmm7,0x8(%r12)
    51df:	f3 0f 7e 7c 24 28    	movq   0x28(%rsp),%xmm7
    51e5:	66 0f 7e 63 08       	movd   %xmm4,0x8(%rbx)
    51ea:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    51ef:	66 41 0f 7e 7b 08    	movd   %xmm7,0x8(%r11)
    51f5:	66 41 0f 7e 6a 08    	movd   %xmm5,0x8(%r10)
    51fb:	f3 0f 7e 44 24 30    	movq   0x30(%rsp),%xmm0
    5201:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
    5207:	66 0f 7e 47 08       	movd   %xmm0,0x8(%rdi)
    520c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    5211:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    5216:	f3 0f 7e 44 24 40    	movq   0x40(%rsp),%xmm0
    521c:	66 0f 7e 66 08       	movd   %xmm4,0x8(%rsi)
    5221:	66 0f 7e 79 08       	movd   %xmm7,0x8(%rcx)
    5226:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    522b:	f3 0f 7e 7c 24 48    	movq   0x48(%rsp),%xmm7
    5231:	66 0f 7e 68 08       	movd   %xmm5,0x8(%rax)
    5236:	66 41 0f 7e 44 24 0c 	movd   %xmm0,0xc(%r12)
    523d:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
    5243:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    5248:	66 0f 7e 63 0c       	movd   %xmm4,0xc(%rbx)
    524d:	66 41 0f 7e 7b 0c    	movd   %xmm7,0xc(%r11)
    5253:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    5258:	f3 0f 7e 7c 24 58    	movq   0x58(%rsp),%xmm7
    525e:	66 41 0f 7e 6a 0c    	movd   %xmm5,0xc(%r10)
    5264:	66 0f 7e 47 0c       	movd   %xmm0,0xc(%rdi)
    5269:	f3 0f 7e 44 24 60    	movq   0x60(%rsp),%xmm0
    526f:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    5274:	66 0f 7e 66 0c       	movd   %xmm4,0xc(%rsi)
    5279:	66 0f 7e 79 0c       	movd   %xmm7,0xc(%rcx)
    527e:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    5283:	f3 0f 7e 7c 24 68    	movq   0x68(%rsp),%xmm7
    5289:	66 0f 7e 68 0c       	movd   %xmm5,0xc(%rax)
    528e:	66 41 0f 7e 44 24 10 	movd   %xmm0,0x10(%r12)
    5295:	f3 0f 7e 44 24 70    	movq   0x70(%rsp),%xmm0
    529b:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    52a0:	66 0f 7e 63 10       	movd   %xmm4,0x10(%rbx)
    52a5:	66 41 0f 7e 7b 10    	movd   %xmm7,0x10(%r11)
    52ab:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    52b0:	f3 0f 7e 7c 24 78    	movq   0x78(%rsp),%xmm7
    52b6:	66 41 0f 7e 6a 10    	movd   %xmm5,0x10(%r10)
    52bc:	66 0f 7e 47 10       	movd   %xmm0,0x10(%rdi)
    52c1:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    52c6:	f3 0f 7e 84 24 80 00 	movq   0x80(%rsp),%xmm0
    52cd:	00 00 
    52cf:	66 0f 7e 66 10       	movd   %xmm4,0x10(%rsi)
    52d4:	66 0f 7e 79 10       	movd   %xmm7,0x10(%rcx)
    52d9:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    52de:	66 0f 7e 68 10       	movd   %xmm5,0x10(%rax)
    52e3:	66 41 0f 7e 44 24 14 	movd   %xmm0,0x14(%r12)
    52ea:	66 0f 7e 63 14       	movd   %xmm4,0x14(%rbx)
    52ef:	f3 0f 7e bc 24 88 00 	movq   0x88(%rsp),%xmm7
    52f6:	00 00 
    52f8:	f3 0f 7e 84 24 90 00 	movq   0x90(%rsp),%xmm0
    52ff:	00 00 
    5301:	66 41 0f 7e 7b 14    	movd   %xmm7,0x14(%r11)
    5307:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    530c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    5311:	f3 0f 7e bc 24 98 00 	movq   0x98(%rsp),%xmm7
    5318:	00 00 
    531a:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
    5320:	66 0f 7e 47 14       	movd   %xmm0,0x14(%rdi)
    5325:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
    532a:	f3 0f 7e 84 24 a0 00 	movq   0xa0(%rsp),%xmm0
    5331:	00 00 
    5333:	66 0f 7e 66 14       	movd   %xmm4,0x14(%rsi)
    5338:	66 0f 7e 79 14       	movd   %xmm7,0x14(%rcx)
    533d:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    5342:	f3 0f 7e bc 24 b0 00 	movq   0xb0(%rsp),%xmm7
    5349:	00 00 
    534b:	66 0f 7e 68 14       	movd   %xmm5,0x14(%rax)
    5350:	66 49 0f 6e e8       	movq   %r8,%xmm5
    5355:	66 41 0f 7e 44 24 18 	movd   %xmm0,0x18(%r12)
    535c:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
    5363:	00 00 
    5365:	66 0f 7e 63 18       	movd   %xmm4,0x18(%rbx)
    536a:	66 0f 70 e5 e5       	pshufd $0xe5,%xmm5,%xmm4
    536f:	45 89 43 18          	mov    %r8d,0x18(%r11)
    5373:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
    5379:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
    537e:	66 0f 7e 47 18       	movd   %xmm0,0x18(%rdi)
    5383:	f3 0f 7e 84 24 b8 00 	movq   0xb8(%rsp),%xmm0
    538a:	00 00 
    538c:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
    5391:	66 0f 7e 79 18       	movd   %xmm7,0x18(%rcx)
    5396:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
    539b:	66 0f 7e 78 18       	movd   %xmm7,0x18(%rax)
    53a0:	66 0f 70 f8 e5       	pshufd $0xe5,%xmm0,%xmm7
    53a5:	66 41 0f 7e 44 24 1c 	movd   %xmm0,0x1c(%r12)
    53ac:	49 01 d4             	add    %rdx,%r12
    53af:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
    53b4:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
    53b9:	48 01 d3             	add    %rdx,%rbx
    53bc:	66 41 0f 7e 73 1c    	movd   %xmm6,0x1c(%r11)
    53c2:	49 01 d3             	add    %rdx,%r11
    53c5:	66 41 0f 7e 7a 1c    	movd   %xmm7,0x1c(%r10)
    53cb:	49 01 d2             	add    %rdx,%r10
    53ce:	66 0f 7e 57 1c       	movd   %xmm2,0x1c(%rdi)
    53d3:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
    53d8:	48 01 d7             	add    %rdx,%rdi
    53db:	66 0f 7e 56 1c       	movd   %xmm2,0x1c(%rsi)
    53e0:	66 0f 70 d1 e5       	pshufd $0xe5,%xmm1,%xmm2
    53e5:	48 01 d6             	add    %rdx,%rsi
    53e8:	66 0f 7e 49 1c       	movd   %xmm1,0x1c(%rcx)
    53ed:	48 01 d1             	add    %rdx,%rcx
    53f0:	66 0f 7e 50 1c       	movd   %xmm2,0x1c(%rax)
    53f5:	48 01 d0             	add    %rdx,%rax
    53f8:	4c 39 8c 24 d8 00 00 	cmp    %r9,0xd8(%rsp)
    53ff:	00 
    5400:	0f 85 33 f6 ff ff    	jne    4a39 <color_printk+0x1d69>
    5406:	45 89 e8             	mov    %r13d,%r8d
    5409:	45 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%r10d
    540e:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
    5412:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
    5417:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
    541c:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
    5421:	e9 6a e6 ff ff       	jmp    3a90 <color_printk+0xdc0>
    5426:	89 f0                	mov    %esi,%eax
    5428:	99                   	cltd
    5429:	f7 ff                	idiv   %edi
    542b:	83 e8 01             	sub    $0x1,%eax
    542e:	0f af c7             	imul   %edi,%eax
    5431:	83 e9 01             	sub    $0x1,%ecx
    5434:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
    5439:	41 89 44 2e 08       	mov    %eax,0x8(%r14,%rbp,1)
    543e:	41 89 c3             	mov    %eax,%r11d
    5441:	0f 89 0d f4 ff ff    	jns    4854 <color_printk+0x1b84>
    5447:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
    544c:	99                   	cltd
    544d:	41 f7 f9             	idiv   %r9d
    5450:	83 e8 01             	sub    $0x1,%eax
    5453:	41 0f af c1          	imul   %r9d,%eax
    5457:	41 89 44 2e 0c       	mov    %eax,0xc(%r14,%rbp,1)
    545c:	89 c1                	mov    %eax,%ecx
    545e:	e9 f1 f3 ff ff       	jmp    4854 <color_printk+0x1b84>
    5463:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    5468:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
    546d:	49 8d 14 29          	lea    (%r9,%rbp,1),%rdx
    5471:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
    5478:	00 00 00 
    547b:	48 01 f9             	add    %rdi,%rcx
    547e:	48 8d 3c 2e          	lea    (%rsi,%rbp,1),%rdi
    5482:	80 3a 00             	cmpb   $0x0,(%rdx)
    5485:	44 89 fe             	mov    %r15d,%esi
    5488:	41 0f 49 f5          	cmovns %r13d,%esi
    548c:	89 31                	mov    %esi,(%rcx)
    548e:	44 89 fe             	mov    %r15d,%esi
    5491:	f6 02 40             	testb  $0x40,(%rdx)
    5494:	41 0f 44 f5          	cmove  %r13d,%esi
    5498:	89 71 04             	mov    %esi,0x4(%rcx)
    549b:	44 89 fe             	mov    %r15d,%esi
    549e:	f6 02 20             	testb  $0x20,(%rdx)
    54a1:	41 0f 44 f5          	cmove  %r13d,%esi
    54a5:	89 71 08             	mov    %esi,0x8(%rcx)
    54a8:	44 89 fe             	mov    %r15d,%esi
    54ab:	f6 02 10             	testb  $0x10,(%rdx)
    54ae:	41 0f 44 f5          	cmove  %r13d,%esi
    54b2:	89 71 0c             	mov    %esi,0xc(%rcx)
    54b5:	44 89 fe             	mov    %r15d,%esi
    54b8:	f6 02 08             	testb  $0x8,(%rdx)
    54bb:	41 0f 44 f5          	cmove  %r13d,%esi
    54bf:	89 71 10             	mov    %esi,0x10(%rcx)
    54c2:	44 89 fe             	mov    %r15d,%esi
    54c5:	f6 02 04             	testb  $0x4,(%rdx)
    54c8:	41 0f 44 f5          	cmove  %r13d,%esi
    54cc:	89 71 14             	mov    %esi,0x14(%rcx)
    54cf:	44 89 fe             	mov    %r15d,%esi
    54d2:	f6 02 02             	testb  $0x2,(%rdx)
    54d5:	41 0f 44 f5          	cmove  %r13d,%esi
    54d9:	89 71 18             	mov    %esi,0x18(%rcx)
    54dc:	f6 02 01             	testb  $0x1,(%rdx)
    54df:	74 1a                	je     54fb <color_printk+0x282b>
    54e1:	48 83 c2 01          	add    $0x1,%rdx
    54e5:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
    54e9:	48 01 c1             	add    %rax,%rcx
    54ec:	48 39 fa             	cmp    %rdi,%rdx
    54ef:	75 91                	jne    5482 <color_printk+0x27b2>
    54f1:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
    54f6:	e9 0e ff ff ff       	jmp    5409 <color_printk+0x2739>
    54fb:	48 83 c2 01          	add    $0x1,%rdx
    54ff:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
    5503:	48 01 c1             	add    %rax,%rcx
    5506:	48 39 fa             	cmp    %rdi,%rdx
    5509:	0f 85 73 ff ff ff    	jne    5482 <color_printk+0x27b2>
    550f:	eb e0                	jmp    54f1 <color_printk+0x2821>
