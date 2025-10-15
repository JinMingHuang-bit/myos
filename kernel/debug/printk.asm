
printk.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <number>:
       0:	f3 0f 1e fa          	endbr64
       4:	41 57                	push   %r15
       6:	48 89 f0             	mov    %rsi,%rax
       9:	41 89 ca             	mov    %ecx,%r10d
       c:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      13:	00 00 00 
      16:	41 56                	push   %r14
      18:	41 55                	push   %r13
      1a:	41 54                	push   %r12
      1c:	55                   	push   %rbp
      1d:	89 d5                	mov    %edx,%ebp
      1f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      26:	00 00 00 
      29:	53                   	push   %rbx
      2a:	48 8d 1d d3 ff ff ff 	lea    -0x2d(%rip),%rbx        # 4 <number+0x4>
      31:	4c 01 db             	add    %r11,%rbx
      34:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
      38:	41 f6 c1 40          	test   $0x40,%r9b
      3c:	75 0e                	jne    4c <number+0x4c>
      3e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      45:	00 00 00 
      48:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
      4c:	44 89 ce             	mov    %r9d,%esi
      4f:	83 e6 10             	and    $0x10,%esi
      52:	89 74 24 b0          	mov    %esi,-0x50(%rsp)
      56:	0f 84 dc 01 00 00    	je     238 <number+0x238>
      5c:	41 83 e1 fe          	and    $0xfffffffe,%r9d
      60:	41 be 10 00 00 00    	mov    $0x10,%r14d
      66:	bb 20 00 00 00       	mov    $0x20,%ebx
      6b:	45 89 cf             	mov    %r9d,%r15d
      6e:	41 83 e7 20          	and    $0x20,%r15d
      72:	41 f6 c1 02          	test   $0x2,%r9b
      76:	74 09                	je     81 <number+0x81>
      78:	48 85 c0             	test   %rax,%rax
      7b:	0f 88 0f 02 00 00    	js     290 <number+0x290>
      81:	41 f6 c1 04          	test   $0x4,%r9b
      85:	0f 84 e5 01 00 00    	je     270 <number+0x270>
      8b:	ba 2b 00 00 00       	mov    $0x2b,%edx
      90:	41 83 ea 01          	sub    $0x1,%r10d
      94:	45 85 ff             	test   %r15d,%r15d
      97:	74 1a                	je     b3 <number+0xb3>
      99:	83 fd 10             	cmp    $0x10,%ebp
      9c:	0f 84 7e 02 00 00    	je     320 <number+0x320>
      a2:	31 c9                	xor    %ecx,%ecx
      a4:	83 fd 08             	cmp    $0x8,%ebp
      a7:	41 bf 20 00 00 00    	mov    $0x20,%r15d
      ad:	0f 94 c1             	sete   %cl
      b0:	41 29 ca             	sub    %ecx,%r10d
      b3:	48 85 c0             	test   %rax,%rax
      b6:	0f 85 e9 01 00 00    	jne    2a5 <number+0x2a5>
      bc:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
      c1:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
      c6:	31 c9                	xor    %ecx,%ecx
      c8:	be 01 00 00 00       	mov    $0x1,%esi
      cd:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
      d2:	44 39 c6             	cmp    %r8d,%esi
      d5:	44 0f 4d c6          	cmovge %esi,%r8d
      d9:	45 29 c2             	sub    %r8d,%r10d
      dc:	45 85 f6             	test   %r14d,%r14d
      df:	75 45                	jne    126 <number+0x126>
      e1:	44 89 d0             	mov    %r10d,%eax
      e4:	48 01 f8             	add    %rdi,%rax
      e7:	45 85 d2             	test   %r10d,%r10d
      ea:	0f 8e 48 02 00 00    	jle    338 <number+0x338>
      f0:	49 89 c1             	mov    %rax,%r9
      f3:	49 29 f9             	sub    %rdi,%r9
      f6:	41 83 e1 01          	and    $0x1,%r9d
      fa:	74 14                	je     110 <number+0x110>
      fc:	48 83 c7 01          	add    $0x1,%rdi
     100:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     104:	48 39 c7             	cmp    %rax,%rdi
     107:	74 17                	je     120 <number+0x120>
     109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     110:	c6 07 20             	movb   $0x20,(%rdi)
     113:	48 83 c7 02          	add    $0x2,%rdi
     117:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     11b:	48 39 c7             	cmp    %rax,%rdi
     11e:	75 f0                	jne    110 <number+0x110>
     120:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
     126:	84 d2                	test   %dl,%dl
     128:	74 06                	je     130 <number+0x130>
     12a:	88 17                	mov    %dl,(%rdi)
     12c:	48 83 c7 01          	add    $0x1,%rdi
     130:	45 85 ff             	test   %r15d,%r15d
     133:	74 12                	je     147 <number+0x147>
     135:	83 fd 08             	cmp    $0x8,%ebp
     138:	0f 84 d2 01 00 00    	je     310 <number+0x310>
     13e:	83 fd 10             	cmp    $0x10,%ebp
     141:	0f 84 b1 01 00 00    	je     2f8 <number+0x2f8>
     147:	8b 44 24 b0          	mov    -0x50(%rsp),%eax
     14b:	85 c0                	test   %eax,%eax
     14d:	75 3d                	jne    18c <number+0x18c>
     14f:	44 89 d0             	mov    %r10d,%eax
     152:	48 01 f8             	add    %rdi,%rax
     155:	45 85 d2             	test   %r10d,%r10d
     158:	0f 8e e3 01 00 00    	jle    341 <number+0x341>
     15e:	48 89 c2             	mov    %rax,%rdx
     161:	48 29 fa             	sub    %rdi,%rdx
     164:	83 e2 01             	and    $0x1,%edx
     167:	74 0f                	je     178 <number+0x178>
     169:	48 83 c7 01          	add    $0x1,%rdi
     16d:	88 5f ff             	mov    %bl,-0x1(%rdi)
     170:	48 39 c7             	cmp    %rax,%rdi
     173:	74 11                	je     186 <number+0x186>
     175:	0f 1f 00             	nopl   (%rax)
     178:	88 1f                	mov    %bl,(%rdi)
     17a:	48 83 c7 02          	add    $0x2,%rdi
     17e:	88 5f ff             	mov    %bl,-0x1(%rdi)
     181:	48 39 c7             	cmp    %rax,%rdi
     184:	75 f2                	jne    178 <number+0x178>
     186:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
     18c:	44 39 c6             	cmp    %r8d,%esi
     18f:	0f 8d 9b 01 00 00    	jge    330 <number+0x330>
     195:	41 29 f0             	sub    %esi,%r8d
     198:	41 8d 50 ff          	lea    -0x1(%r8),%edx
     19c:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
     1a1:	83 e2 01             	and    $0x1,%edx
     1a4:	75 12                	jne    1b8 <number+0x1b8>
     1a6:	48 83 c7 01          	add    $0x1,%rdi
     1aa:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
     1ae:	48 39 c7             	cmp    %rax,%rdi
     1b1:	74 15                	je     1c8 <number+0x1c8>
     1b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     1b8:	c6 07 30             	movb   $0x30,(%rdi)
     1bb:	48 83 c7 02          	add    $0x2,%rdi
     1bf:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
     1c3:	48 39 c7             	cmp    %rax,%rdi
     1c6:	75 f0                	jne    1b8 <number+0x1b8>
     1c8:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
     1cd:	48 63 d1             	movslq %ecx,%rdx
     1d0:	83 c1 01             	add    $0x1,%ecx
     1d3:	48 63 c9             	movslq %ecx,%rcx
     1d6:	48 01 d3             	add    %rdx,%rbx
     1d9:	48 01 c1             	add    %rax,%rcx
     1dc:	48 89 da             	mov    %rbx,%rdx
     1df:	90                   	nop
     1e0:	0f b6 32             	movzbl (%rdx),%esi
     1e3:	48 83 c0 01          	add    $0x1,%rax
     1e7:	48 83 ea 01          	sub    $0x1,%rdx
     1eb:	40 88 70 ff          	mov    %sil,-0x1(%rax)
     1ef:	48 39 c8             	cmp    %rcx,%rax
     1f2:	75 ec                	jne    1e0 <number+0x1e0>
     1f4:	45 85 d2             	test   %r10d,%r10d
     1f7:	7e 2f                	jle    228 <number+0x228>
     1f9:	45 89 d2             	mov    %r10d,%r10d
     1fc:	4a 8d 04 11          	lea    (%rcx,%r10,1),%rax
     200:	41 83 e2 01          	and    $0x1,%r10d
     204:	74 12                	je     218 <number+0x218>
     206:	48 83 c1 01          	add    $0x1,%rcx
     20a:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
     20e:	48 39 c1             	cmp    %rax,%rcx
     211:	74 15                	je     228 <number+0x228>
     213:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     218:	c6 01 20             	movb   $0x20,(%rcx)
     21b:	48 83 c1 02          	add    $0x2,%rcx
     21f:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
     223:	48 39 c1             	cmp    %rax,%rcx
     226:	75 f0                	jne    218 <number+0x218>
     228:	5b                   	pop    %rbx
     229:	5d                   	pop    %rbp
     22a:	41 5c                	pop    %r12
     22c:	41 5d                	pop    %r13
     22e:	41 5e                	pop    %r14
     230:	41 5f                	pop    %r15
     232:	c3                   	ret
     233:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     238:	44 89 ca             	mov    %r9d,%edx
     23b:	45 89 ce             	mov    %r9d,%r14d
     23e:	45 89 cf             	mov    %r9d,%r15d
     241:	83 e2 01             	and    $0x1,%edx
     244:	41 83 e6 11          	and    $0x11,%r14d
     248:	83 fa 01             	cmp    $0x1,%edx
     24b:	19 db                	sbb    %ebx,%ebx
     24d:	83 e3 f0             	and    $0xfffffff0,%ebx
     250:	83 c3 30             	add    $0x30,%ebx
     253:	85 d2                	test   %edx,%edx
     255:	44 0f 44 f6          	cmove  %esi,%r14d
     259:	41 83 e7 20          	and    $0x20,%r15d
     25d:	41 f6 c1 02          	test   $0x2,%r9b
     261:	0f 85 11 fe ff ff    	jne    78 <number+0x78>
     267:	e9 15 fe ff ff       	jmp    81 <number+0x81>
     26c:	0f 1f 40 00          	nopl   0x0(%rax)
     270:	44 89 ca             	mov    %r9d,%edx
     273:	83 e2 08             	and    $0x8,%edx
     276:	0f 84 18 fe ff ff    	je     94 <number+0x94>
     27c:	ba 20 00 00 00       	mov    $0x20,%edx
     281:	e9 0a fe ff ff       	jmp    90 <number+0x90>
     286:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     28d:	00 00 00 
     290:	48 f7 d8             	neg    %rax
     293:	41 83 ea 01          	sub    $0x1,%r10d
     297:	ba 2d 00 00 00       	mov    $0x2d,%edx
     29c:	45 85 ff             	test   %r15d,%r15d
     29f:	0f 85 f4 fd ff ff    	jne    99 <number+0x99>
     2a5:	48 8d 74 24 b8       	lea    -0x48(%rsp),%rsi
     2aa:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
     2af:	4c 63 dd             	movslq %ebp,%r11
     2b2:	45 31 ed             	xor    %r13d,%r13d
     2b5:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
     2ba:	49 89 f1             	mov    %rsi,%r9
     2bd:	41 89 d7             	mov    %edx,%r15d
     2c0:	31 f6                	xor    %esi,%esi
     2c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     2c8:	44 89 ea             	mov    %r13d,%edx
     2cb:	89 f1                	mov    %esi,%ecx
     2cd:	49 83 c1 01          	add    $0x1,%r9
     2d1:	83 c6 01             	add    $0x1,%esi
     2d4:	49 f7 f3             	div    %r11
     2d7:	48 63 d2             	movslq %edx,%rdx
     2da:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
     2df:	41 88 51 ff          	mov    %dl,-0x1(%r9)
     2e3:	48 85 c0             	test   %rax,%rax
     2e6:	75 e0                	jne    2c8 <number+0x2c8>
     2e8:	44 89 fa             	mov    %r15d,%edx
     2eb:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
     2f0:	e9 dd fd ff ff       	jmp    d2 <number+0xd2>
     2f5:	0f 1f 00             	nopl   (%rax)
     2f8:	41 0f b6 44 24 21    	movzbl 0x21(%r12),%eax
     2fe:	c6 07 30             	movb   $0x30,(%rdi)
     301:	48 83 c7 02          	add    $0x2,%rdi
     305:	88 47 ff             	mov    %al,-0x1(%rdi)
     308:	e9 3a fe ff ff       	jmp    147 <number+0x147>
     30d:	0f 1f 00             	nopl   (%rax)
     310:	c6 07 30             	movb   $0x30,(%rdi)
     313:	48 83 c7 01          	add    $0x1,%rdi
     317:	e9 2b fe ff ff       	jmp    147 <number+0x147>
     31c:	0f 1f 40 00          	nopl   0x0(%rax)
     320:	41 83 ea 02          	sub    $0x2,%r10d
     324:	41 bf 20 00 00 00    	mov    $0x20,%r15d
     32a:	e9 84 fd ff ff       	jmp    b3 <number+0xb3>
     32f:	90                   	nop
     330:	48 89 f8             	mov    %rdi,%rax
     333:	e9 90 fe ff ff       	jmp    1c8 <number+0x1c8>
     338:	41 83 ea 01          	sub    $0x1,%r10d
     33c:	e9 e5 fd ff ff       	jmp    126 <number+0x126>
     341:	41 83 ea 01          	sub    $0x1,%r10d
     345:	e9 42 fe ff ff       	jmp    18c <number+0x18c>
     34a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000350 <putchar>:
     350:	f3 0f 1e fa          	endbr64
     354:	89 f0                	mov    %esi,%eax
     356:	4c 8d 15 f7 ff ff ff 	lea    -0x9(%rip),%r10        # 354 <putchar+0x4>
     35d:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
     362:	48 63 d2             	movslq %edx,%rdx
     365:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     36c:	00 00 00 
     36f:	0f af c8             	imul   %eax,%ecx
     372:	4d 01 da             	add    %r11,%r10
     375:	48 c1 e6 04          	shl    $0x4,%rsi
     379:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     380:	00 00 00 
     383:	4d 01 da             	add    %r11,%r10
     386:	4c 01 d6             	add    %r10,%rsi
     389:	4c 63 d0             	movslq %eax,%r10
     38c:	48 63 c1             	movslq %ecx,%rax
     38f:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
     394:	49 c1 e2 02          	shl    $0x2,%r10
     398:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
     39c:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
     3a0:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
     3a4:	ba 00 01 00 00       	mov    $0x100,%edx
     3a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     3b0:	0f b6 0e             	movzbl (%rsi),%ecx
     3b3:	d1 fa                	sar    $1,%edx
     3b5:	85 d1                	test   %edx,%ecx
     3b7:	44 89 c1             	mov    %r8d,%ecx
     3ba:	41 0f 44 c9          	cmove  %r9d,%ecx
     3be:	48 83 c0 04          	add    $0x4,%rax
     3c2:	89 48 fc             	mov    %ecx,-0x4(%rax)
     3c5:	48 39 f8             	cmp    %rdi,%rax
     3c8:	75 e6                	jne    3b0 <putchar+0x60>
     3ca:	48 83 c6 01          	add    $0x1,%rsi
     3ce:	4a 8d 3c 10          	lea    (%rax,%r10,1),%rdi
     3d2:	4c 39 de             	cmp    %r11,%rsi
     3d5:	75 c9                	jne    3a0 <putchar+0x50>
     3d7:	c3                   	ret
     3d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     3df:	00 

00000000000003e0 <clear_screen>:
     3e0:	f3 0f 1e fa          	endbr64
     3e4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     3eb:	00 00 00 
     3ee:	41 57                	push   %r15
     3f0:	41 56                	push   %r14
     3f2:	41 55                	push   %r13
     3f4:	41 54                	push   %r12
     3f6:	55                   	push   %rbp
     3f7:	48 bd 00 00 00 00 00 	movabs $0x0,%rbp
     3fe:	00 00 00 
     401:	53                   	push   %rbx
     402:	48 8d 1d db ff ff ff 	lea    -0x25(%rip),%rbx        # 3e4 <clear_screen+0x4>
     409:	4c 01 db             	add    %r11,%rbx
     40c:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
     410:	99                   	cltd
     411:	f7 7c 1d 10          	idivl  0x10(%rbp,%rbx,1)
     415:	89 c1                	mov    %eax,%ecx
     417:	8b 44 1d 04          	mov    0x4(%rbp,%rbx,1),%eax
     41b:	99                   	cltd
     41c:	f7 7c 1d 14          	idivl  0x14(%rbp,%rbx,1)
     420:	85 c0                	test   %eax,%eax
     422:	0f 8e d5 00 00 00    	jle    4fd <clear_screen+0x11d>
     428:	4c 8b 6c 1d 18       	mov    0x18(%rbp,%rbx,1),%r13
     42d:	85 c9                	test   %ecx,%ecx
     42f:	0f 8e c8 00 00 00    	jle    4fd <clear_screen+0x11d>
     435:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     43c:	00 00 00 
     43f:	41 89 f8             	mov    %edi,%r8d
     442:	41 89 f1             	mov    %esi,%r9d
     445:	45 31 e4             	xor    %r12d,%r12d
     448:	49 bf 00 00 00 00 00 	movabs $0x0,%r15
     44f:	00 00 00 
     452:	4c 8d 1c 1a          	lea    (%rdx,%rbx,1),%r11
     456:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
     45b:	31 d2                	xor    %edx,%edx
     45d:	89 c6                	mov    %eax,%esi
     45f:	8b 44 1d 14          	mov    0x14(%rbp,%rbx,1),%eax
     463:	4c 63 74 1d 00       	movslq 0x0(%rbp,%rbx,1),%r14
     468:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
     46c:	41 0f af c4          	imul   %r12d,%eax
     470:	4c 89 f7             	mov    %r14,%rdi
     473:	49 c1 e6 02          	shl    $0x2,%r14
     477:	0f af c7             	imul   %edi,%eax
     47a:	8b 7c 1d 10          	mov    0x10(%rbp,%rbx,1),%edi
     47e:	0f af fa             	imul   %edx,%edi
     481:	48 98                	cltq
     483:	48 63 ff             	movslq %edi,%rdi
     486:	48 8d 44 38 08       	lea    0x8(%rax,%rdi,1),%rax
     48b:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
     490:	4c 8d 14 87          	lea    (%rdi,%rax,4),%r10
     494:	49 8d 3c 1f          	lea    (%r15,%rbx,1),%rdi
     498:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     49f:	00 
     4a0:	49 8d 42 e0          	lea    -0x20(%r10),%rax
     4a4:	ba 00 01 00 00       	mov    $0x100,%edx
     4a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     4b0:	44 0f b6 2f          	movzbl (%rdi),%r13d
     4b4:	d1 fa                	sar    $1,%edx
     4b6:	41 85 d5             	test   %edx,%r13d
     4b9:	45 89 c5             	mov    %r8d,%r13d
     4bc:	45 0f 44 e9          	cmove  %r9d,%r13d
     4c0:	48 83 c0 04          	add    $0x4,%rax
     4c4:	44 89 68 fc          	mov    %r13d,-0x4(%rax)
     4c8:	4c 39 d0             	cmp    %r10,%rax
     4cb:	75 e3                	jne    4b0 <clear_screen+0xd0>
     4cd:	48 83 c7 01          	add    $0x1,%rdi
     4d1:	4e 8d 14 30          	lea    (%rax,%r14,1),%r10
     4d5:	4c 39 df             	cmp    %r11,%rdi
     4d8:	75 c6                	jne    4a0 <clear_screen+0xc0>
     4da:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
     4de:	83 c2 01             	add    $0x1,%edx
     4e1:	39 d1                	cmp    %edx,%ecx
     4e3:	0f 85 76 ff ff ff    	jne    45f <clear_screen+0x7f>
     4e9:	41 83 c4 01          	add    $0x1,%r12d
     4ed:	4c 8b 6c 24 f8       	mov    -0x8(%rsp),%r13
     4f2:	89 f0                	mov    %esi,%eax
     4f4:	44 39 e6             	cmp    %r12d,%esi
     4f7:	0f 85 59 ff ff ff    	jne    456 <clear_screen+0x76>
     4fd:	48 c7 44 1d 08 00 00 	movq   $0x0,0x8(%rbp,%rbx,1)
     504:	00 00 
     506:	5b                   	pop    %rbx
     507:	5d                   	pop    %rbp
     508:	41 5c                	pop    %r12
     50a:	41 5d                	pop    %r13
     50c:	41 5e                	pop    %r14
     50e:	41 5f                	pop    %r15
     510:	c3                   	ret
     511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     518:	00 00 00 00 
     51c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000520 <skip_atoi2>:
     520:	f3 0f 1e fa          	endbr64
     524:	48 8b 17             	mov    (%rdi),%rdx
     527:	0f b6 02             	movzbl (%rdx),%eax
     52a:	8d 48 d0             	lea    -0x30(%rax),%ecx
     52d:	80 f9 09             	cmp    $0x9,%cl
     530:	77 36                	ja     568 <skip_atoi2+0x48>
     532:	48 83 c2 01          	add    $0x1,%rdx
     536:	31 c9                	xor    %ecx,%ecx
     538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     53f:	00 
     540:	83 e8 30             	sub    $0x30,%eax
     543:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
     546:	48 89 17             	mov    %rdx,(%rdi)
     549:	48 83 c2 01          	add    $0x1,%rdx
     54d:	0f be c0             	movsbl %al,%eax
     550:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
     553:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
     557:	8d 70 d0             	lea    -0x30(%rax),%esi
     55a:	40 80 fe 09          	cmp    $0x9,%sil
     55e:	76 e0                	jbe    540 <skip_atoi2+0x20>
     560:	89 c8                	mov    %ecx,%eax
     562:	c3                   	ret
     563:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     568:	31 c9                	xor    %ecx,%ecx
     56a:	89 c8                	mov    %ecx,%eax
     56c:	c3                   	ret
     56d:	0f 1f 00             	nopl   (%rax)

0000000000000570 <skip_atoi>:
     570:	f3 0f 1e fa          	endbr64
     574:	48 8b 17             	mov    (%rdi),%rdx
     577:	0f b6 02             	movzbl (%rdx),%eax
     57a:	8d 48 d0             	lea    -0x30(%rax),%ecx
     57d:	80 f9 09             	cmp    $0x9,%cl
     580:	77 36                	ja     5b8 <skip_atoi+0x48>
     582:	48 83 c2 01          	add    $0x1,%rdx
     586:	31 c9                	xor    %ecx,%ecx
     588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     58f:	00 
     590:	83 e8 30             	sub    $0x30,%eax
     593:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
     596:	48 89 17             	mov    %rdx,(%rdi)
     599:	48 83 c2 01          	add    $0x1,%rdx
     59d:	0f be c0             	movsbl %al,%eax
     5a0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
     5a3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
     5a7:	8d 70 d0             	lea    -0x30(%rax),%esi
     5aa:	40 80 fe 09          	cmp    $0x9,%sil
     5ae:	76 e0                	jbe    590 <skip_atoi+0x20>
     5b0:	89 c8                	mov    %ecx,%eax
     5b2:	c3                   	ret
     5b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     5b8:	31 c9                	xor    %ecx,%ecx
     5ba:	89 c8                	mov    %ecx,%eax
     5bc:	c3                   	ret
     5bd:	0f 1f 00             	nopl   (%rax)

00000000000005c0 <vsprintf>:
     5c0:	f3 0f 1e fa          	endbr64
     5c4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     5cb:	00 00 00 
     5ce:	41 57                	push   %r15
     5d0:	41 56                	push   %r14
     5d2:	4c 8d 35 eb ff ff ff 	lea    -0x15(%rip),%r14        # 5c4 <vsprintf+0x4>
     5d9:	41 55                	push   %r13
     5db:	4d 01 de             	add    %r11,%r14
     5de:	49 89 fd             	mov    %rdi,%r13
     5e1:	41 54                	push   %r12
     5e3:	55                   	push   %rbp
     5e4:	53                   	push   %rbx
     5e5:	48 83 ec 18          	sub    $0x18,%rsp
     5e9:	0f b6 06             	movzbl (%rsi),%eax
     5ec:	84 c0                	test   %al,%al
     5ee:	0f 84 57 06 00 00    	je     c4b <vsprintf+0x68b>
     5f4:	48 89 f1             	mov    %rsi,%rcx
     5f7:	49 89 d4             	mov    %rdx,%r12
     5fa:	48 8d 2d 00 00 00 00 	lea    0x0(%rip),%rbp        # 601 <vsprintf+0x41>
     601:	49 bf 01 00 00 10 01 	movabs $0x400110000001,%r15
     608:	40 00 00 
     60b:	eb 18                	jmp    625 <vsprintf+0x65>
     60d:	0f 1f 00             	nopl   (%rax)
     610:	88 07                	mov    %al,(%rdi)
     612:	48 83 c1 01          	add    $0x1,%rcx
     616:	0f b6 01             	movzbl (%rcx),%eax
     619:	48 83 c7 01          	add    $0x1,%rdi
     61d:	84 c0                	test   %al,%al
     61f:	0f 84 2b 01 00 00    	je     750 <vsprintf+0x190>
     625:	3c 25                	cmp    $0x25,%al
     627:	75 e7                	jne    610 <vsprintf+0x50>
     629:	45 31 c9             	xor    %r9d,%r9d
     62c:	0f 1f 40 00          	nopl   0x0(%rax)
     630:	0f be 41 01          	movsbl 0x1(%rcx),%eax
     634:	48 8d 59 01          	lea    0x1(%rcx),%rbx
     638:	8d 50 e0             	lea    -0x20(%rax),%edx
     63b:	80 fa 10             	cmp    $0x10,%dl
     63e:	77 10                	ja     650 <vsprintf+0x90>
     640:	0f b6 d2             	movzbl %dl,%edx
     643:	48 8b 74 d5 00       	mov    0x0(%rbp,%rdx,8),%rsi
     648:	48 01 ee             	add    %rbp,%rsi
     64b:	3e ff e6             	notrack jmp *%rsi
     64e:	66 90                	xchg   %ax,%ax
     650:	8d 50 d0             	lea    -0x30(%rax),%edx
     653:	80 fa 09             	cmp    $0x9,%dl
     656:	0f 86 44 01 00 00    	jbe    7a0 <vsprintf+0x1e0>
     65c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
     661:	3c 2a                	cmp    $0x2a,%al
     663:	0f 84 67 01 00 00    	je     7d0 <vsprintf+0x210>
     669:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
     66f:	3c 2e                	cmp    $0x2e,%al
     671:	0f 84 f9 00 00 00    	je     770 <vsprintf+0x1b0>
     677:	8d 48 b4             	lea    -0x4c(%rax),%ecx
     67a:	80 f9 2e             	cmp    $0x2e,%cl
     67d:	0f 87 7d 00 00 00    	ja     700 <vsprintf+0x140>
     683:	49 0f a3 cf          	bt     %rcx,%r15
     687:	73 77                	jae    700 <vsprintf+0x140>
     689:	0f b6 73 01          	movzbl 0x1(%rbx),%esi
     68d:	4c 8d 53 01          	lea    0x1(%rbx),%r10
     691:	8d 4e db             	lea    -0x25(%rsi),%ecx
     694:	80 f9 53             	cmp    $0x53,%cl
     697:	0f 87 86 00 00 00    	ja     723 <vsprintf+0x163>
     69d:	0f b6 c9             	movzbl %cl,%ecx
     6a0:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 6a7 <vsprintf+0xe7>
     6a7:	48 03 34 ce          	add    (%rsi,%rcx,8),%rsi
     6ab:	3e ff e6             	notrack jmp *%rsi
     6ae:	66 90                	xchg   %ax,%ax
     6b0:	41 83 c9 01          	or     $0x1,%r9d
     6b4:	48 89 d9             	mov    %rbx,%rcx
     6b7:	e9 74 ff ff ff       	jmp    630 <vsprintf+0x70>
     6bc:	0f 1f 40 00          	nopl   0x0(%rax)
     6c0:	41 83 c9 10          	or     $0x10,%r9d
     6c4:	eb ee                	jmp    6b4 <vsprintf+0xf4>
     6c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6cd:	00 00 00 
     6d0:	41 83 c9 04          	or     $0x4,%r9d
     6d4:	eb de                	jmp    6b4 <vsprintf+0xf4>
     6d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6dd:	00 00 00 
     6e0:	41 83 c9 20          	or     $0x20,%r9d
     6e4:	eb ce                	jmp    6b4 <vsprintf+0xf4>
     6e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6ed:	00 00 00 
     6f0:	41 83 c9 08          	or     $0x8,%r9d
     6f4:	eb be                	jmp    6b4 <vsprintf+0xf4>
     6f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     6fd:	00 00 00 
     700:	83 e8 25             	sub    $0x25,%eax
     703:	3c 53                	cmp    $0x53,%al
     705:	77 19                	ja     720 <vsprintf+0x160>
     707:	0f b6 c0             	movzbl %al,%eax
     70a:	48 8d 0d 00 00 00 00 	lea    0x0(%rip),%rcx        # 711 <vsprintf+0x151>
     711:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
     715:	3e ff e1             	notrack jmp *%rcx
     718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     71f:	00 
     720:	49 89 da             	mov    %rbx,%r10
     723:	c6 07 25             	movb   $0x25,(%rdi)
     726:	41 0f b6 02          	movzbl (%r10),%eax
     72a:	84 c0                	test   %al,%al
     72c:	0f 84 e2 03 00 00    	je     b14 <vsprintf+0x554>
     732:	88 47 01             	mov    %al,0x1(%rdi)
     735:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     73a:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     73e:	48 83 c7 02          	add    $0x2,%rdi
     742:	84 c0                	test   %al,%al
     744:	0f 85 db fe ff ff    	jne    625 <vsprintf+0x65>
     74a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     750:	89 f8                	mov    %edi,%eax
     752:	44 29 e8             	sub    %r13d,%eax
     755:	c6 07 00             	movb   $0x0,(%rdi)
     758:	48 83 c4 18          	add    $0x18,%rsp
     75c:	5b                   	pop    %rbx
     75d:	5d                   	pop    %rbp
     75e:	41 5c                	pop    %r12
     760:	41 5d                	pop    %r13
     762:	41 5e                	pop    %r14
     764:	41 5f                	pop    %r15
     766:	c3                   	ret
     767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     76e:	00 00 
     770:	0f be 43 01          	movsbl 0x1(%rbx),%eax
     774:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
     778:	8d 70 d0             	lea    -0x30(%rax),%esi
     77b:	40 80 fe 09          	cmp    $0x9,%sil
     77f:	0f 86 b3 02 00 00    	jbe    a38 <vsprintf+0x478>
     785:	3c 2a                	cmp    $0x2a,%al
     787:	0f 84 e3 02 00 00    	je     a70 <vsprintf+0x4b0>
     78d:	48 89 cb             	mov    %rcx,%rbx
     790:	45 31 c0             	xor    %r8d,%r8d
     793:	e9 df fe ff ff       	jmp    677 <vsprintf+0xb7>
     798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     79f:	00 
     7a0:	31 d2                	xor    %edx,%edx
     7a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     7a8:	83 e8 30             	sub    $0x30,%eax
     7ab:	48 83 c3 01          	add    $0x1,%rbx
     7af:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
     7b2:	0f be c0             	movsbl %al,%eax
     7b5:	8d 14 50             	lea    (%rax,%rdx,2),%edx
     7b8:	0f be 03             	movsbl (%rbx),%eax
     7bb:	8d 48 d0             	lea    -0x30(%rax),%ecx
     7be:	80 f9 09             	cmp    $0x9,%cl
     7c1:	76 e5                	jbe    7a8 <vsprintf+0x1e8>
     7c3:	e9 a1 fe ff ff       	jmp    669 <vsprintf+0xa9>
     7c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     7cf:	00 
     7d0:	41 8b 04 24          	mov    (%r12),%eax
     7d4:	48 8d 59 02          	lea    0x2(%rcx),%rbx
     7d8:	83 f8 2f             	cmp    $0x2f,%eax
     7db:	77 23                	ja     800 <vsprintf+0x240>
     7dd:	89 c2                	mov    %eax,%edx
     7df:	83 c0 08             	add    $0x8,%eax
     7e2:	49 03 54 24 10       	add    0x10(%r12),%rdx
     7e7:	41 89 04 24          	mov    %eax,(%r12)
     7eb:	8b 12                	mov    (%rdx),%edx
     7ed:	85 d2                	test   %edx,%edx
     7ef:	79 06                	jns    7f7 <vsprintf+0x237>
     7f1:	f7 da                	neg    %edx
     7f3:	41 83 c9 10          	or     $0x10,%r9d
     7f7:	0f be 41 02          	movsbl 0x2(%rcx),%eax
     7fb:	e9 69 fe ff ff       	jmp    669 <vsprintf+0xa9>
     800:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
     805:	48 8d 42 08          	lea    0x8(%rdx),%rax
     809:	49 89 44 24 08       	mov    %rax,0x8(%r12)
     80e:	eb db                	jmp    7eb <vsprintf+0x22b>
     810:	41 83 c9 40          	or     $0x40,%r9d
     814:	41 8b 0c 24          	mov    (%r12),%ecx
     818:	83 f8 6c             	cmp    $0x6c,%eax
     81b:	0f 84 07 04 00 00    	je     c28 <vsprintf+0x668>
     821:	83 f9 2f             	cmp    $0x2f,%ecx
     824:	0f 87 86 02 00 00    	ja     ab0 <vsprintf+0x4f0>
     82a:	89 c8                	mov    %ecx,%eax
     82c:	83 c1 08             	add    $0x8,%ecx
     82f:	49 03 44 24 10       	add    0x10(%r12),%rax
     834:	41 89 0c 24          	mov    %ecx,(%r12)
     838:	89 d1                	mov    %edx,%ecx
     83a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     83f:	8b 30                	mov    (%rax),%esi
     841:	ba 10 00 00 00       	mov    $0x10,%edx
     846:	eb 36                	jmp    87e <vsprintf+0x2be>
     848:	41 83 c9 02          	or     $0x2,%r9d
     84c:	41 8b 0c 24          	mov    (%r12),%ecx
     850:	83 f8 6c             	cmp    $0x6c,%eax
     853:	0f 84 8f 03 00 00    	je     be8 <vsprintf+0x628>
     859:	83 f9 2f             	cmp    $0x2f,%ecx
     85c:	0f 87 66 02 00 00    	ja     ac8 <vsprintf+0x508>
     862:	89 c8                	mov    %ecx,%eax
     864:	83 c1 08             	add    $0x8,%ecx
     867:	49 03 44 24 10       	add    0x10(%r12),%rax
     86c:	41 89 0c 24          	mov    %ecx,(%r12)
     870:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     875:	8b 30                	mov    (%rax),%esi
     877:	89 d1                	mov    %edx,%ecx
     879:	ba 0a 00 00 00       	mov    $0xa,%edx
     87e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     885:	00 00 00 
     888:	4c 01 f0             	add    %r14,%rax
     88b:	ff d0                	call   *%rax
     88d:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
     892:	48 89 c7             	mov    %rax,%rdi
     895:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     899:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     89e:	e9 7a fd ff ff       	jmp    61d <vsprintf+0x5d>
     8a3:	49 89 da             	mov    %rbx,%r10
     8a6:	c6 07 25             	movb   $0x25,(%rdi)
     8a9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     8ad:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     8b2:	48 83 c7 01          	add    $0x1,%rdi
     8b6:	e9 62 fd ff ff       	jmp    61d <vsprintf+0x5d>
     8bb:	49 89 da             	mov    %rbx,%r10
     8be:	41 83 e1 10          	and    $0x10,%r9d
     8c2:	0f 84 63 02 00 00    	je     b2b <vsprintf+0x56b>
     8c8:	41 8b 04 24          	mov    (%r12),%eax
     8cc:	83 f8 2f             	cmp    $0x2f,%eax
     8cf:	0f 86 2c 02 00 00    	jbe    b01 <vsprintf+0x541>
     8d5:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
     8da:	48 8d 41 08          	lea    0x8(%rcx),%rax
     8de:	49 89 44 24 08       	mov    %rax,0x8(%r12)
     8e3:	8b 01                	mov    (%rcx),%eax
     8e5:	48 8d 77 01          	lea    0x1(%rdi),%rsi
     8e9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     8ed:	88 07                	mov    %al,(%rdi)
     8ef:	89 d0                	mov    %edx,%eax
     8f1:	48 01 c7             	add    %rax,%rdi
     8f4:	83 fa 01             	cmp    $0x1,%edx
     8f7:	0f 8e dd 04 00 00    	jle    dda <vsprintf+0x81a>
     8fd:	48 89 f8             	mov    %rdi,%rax
     900:	48 29 f0             	sub    %rsi,%rax
     903:	a8 01                	test   $0x1,%al
     905:	74 11                	je     918 <vsprintf+0x358>
     907:	48 83 c6 01          	add    $0x1,%rsi
     90b:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
     90f:	48 39 f7             	cmp    %rsi,%rdi
     912:	74 85                	je     899 <vsprintf+0x2d9>
     914:	0f 1f 40 00          	nopl   0x0(%rax)
     918:	c6 06 20             	movb   $0x20,(%rsi)
     91b:	48 83 c6 02          	add    $0x2,%rsi
     91f:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
     923:	48 39 f7             	cmp    %rsi,%rdi
     926:	75 f0                	jne    918 <vsprintf+0x358>
     928:	e9 6c ff ff ff       	jmp    899 <vsprintf+0x2d9>
     92d:	49 89 da             	mov    %rbx,%r10
     930:	41 8b 04 24          	mov    (%r12),%eax
     934:	83 f8 2f             	cmp    $0x2f,%eax
     937:	0f 87 b1 01 00 00    	ja     aee <vsprintf+0x52e>
     93d:	89 c1                	mov    %eax,%ecx
     93f:	83 c0 08             	add    $0x8,%eax
     942:	49 03 4c 24 10       	add    0x10(%r12),%rcx
     947:	41 89 04 24          	mov    %eax,(%r12)
     94b:	4c 8b 19             	mov    (%rcx),%r11
     94e:	41 80 3b 00          	cmpb   $0x0,(%r11)
     952:	0f 84 97 04 00 00    	je     def <vsprintf+0x82f>
     958:	4c 89 d8             	mov    %r11,%rax
     95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     960:	48 83 c0 01          	add    $0x1,%rax
     964:	80 38 00             	cmpb   $0x0,(%rax)
     967:	75 f7                	jne    960 <vsprintf+0x3a0>
     969:	89 c6                	mov    %eax,%esi
     96b:	44 29 de             	sub    %r11d,%esi
     96e:	44 39 c6             	cmp    %r8d,%esi
     971:	44 89 c0             	mov    %r8d,%eax
     974:	0f 4e c6             	cmovle %esi,%eax
     977:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
     97b:	0f 45 f0             	cmovne %eax,%esi
     97e:	41 83 e1 10          	and    $0x10,%r9d
     982:	0f 84 7c 03 00 00    	je     d04 <vsprintf+0x744>
     988:	85 f6                	test   %esi,%esi
     98a:	0f 8e 57 04 00 00    	jle    de7 <vsprintf+0x827>
     990:	4c 63 c6             	movslq %esi,%r8
     993:	31 c0                	xor    %eax,%eax
     995:	0f 1f 00             	nopl   (%rax)
     998:	41 0f b6 0c 03       	movzbl (%r11,%rax,1),%ecx
     99d:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
     9a0:	48 83 c0 01          	add    $0x1,%rax
     9a4:	49 39 c0             	cmp    %rax,%r8
     9a7:	75 ef                	jne    998 <vsprintf+0x3d8>
     9a9:	41 89 f0             	mov    %esi,%r8d
     9ac:	49 01 f8             	add    %rdi,%r8
     9af:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     9b3:	39 f2                	cmp    %esi,%edx
     9b5:	0f 8e 12 04 00 00    	jle    dcd <vsprintf+0x80d>
     9bb:	29 f2                	sub    %esi,%edx
     9bd:	8d 42 ff             	lea    -0x1(%rdx),%eax
     9c0:	49 8d 7c 00 01       	lea    0x1(%r8,%rax,1),%rdi
     9c5:	a8 01                	test   $0x1,%al
     9c7:	75 17                	jne    9e0 <vsprintf+0x420>
     9c9:	49 83 c0 01          	add    $0x1,%r8
     9cd:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
     9d2:	4c 39 c7             	cmp    %r8,%rdi
     9d5:	0f 84 be fe ff ff    	je     899 <vsprintf+0x2d9>
     9db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     9e0:	41 c6 00 20          	movb   $0x20,(%r8)
     9e4:	49 83 c0 02          	add    $0x2,%r8
     9e8:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
     9ed:	4c 39 c7             	cmp    %r8,%rdi
     9f0:	75 ee                	jne    9e0 <vsprintf+0x420>
     9f2:	e9 a2 fe ff ff       	jmp    899 <vsprintf+0x2d9>
     9f7:	49 89 da             	mov    %rbx,%r10
     9fa:	83 fa ff             	cmp    $0xffffffff,%edx
     9fd:	0f 84 1a 01 00 00    	je     b1d <vsprintf+0x55d>
     a03:	41 8b 04 24          	mov    (%r12),%eax
     a07:	83 f8 2f             	cmp    $0x2f,%eax
     a0a:	0f 87 cb 00 00 00    	ja     adb <vsprintf+0x51b>
     a10:	89 c1                	mov    %eax,%ecx
     a12:	83 c0 08             	add    $0x8,%eax
     a15:	49 03 4c 24 10       	add    0x10(%r12),%rcx
     a1a:	41 89 04 24          	mov    %eax,(%r12)
     a1e:	48 8b 31             	mov    (%rcx),%rsi
     a21:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     a26:	89 d1                	mov    %edx,%ecx
     a28:	ba 10 00 00 00       	mov    $0x10,%edx
     a2d:	e9 4c fe ff ff       	jmp    87e <vsprintf+0x2be>
     a32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     a38:	45 31 c0             	xor    %r8d,%r8d
     a3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     a40:	83 e8 30             	sub    $0x30,%eax
     a43:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
     a47:	48 83 c1 01          	add    $0x1,%rcx
     a4b:	0f be c0             	movsbl %al,%eax
     a4e:	44 8d 04 70          	lea    (%rax,%rsi,2),%r8d
     a52:	0f be 01             	movsbl (%rcx),%eax
     a55:	8d 70 d0             	lea    -0x30(%rax),%esi
     a58:	40 80 fe 09          	cmp    $0x9,%sil
     a5c:	76 e2                	jbe    a40 <vsprintf+0x480>
     a5e:	31 f6                	xor    %esi,%esi
     a60:	45 85 c0             	test   %r8d,%r8d
     a63:	48 89 cb             	mov    %rcx,%rbx
     a66:	44 0f 48 c6          	cmovs  %esi,%r8d
     a6a:	e9 08 fc ff ff       	jmp    677 <vsprintf+0xb7>
     a6f:	90                   	nop
     a70:	41 8b 04 24          	mov    (%r12),%eax
     a74:	48 8d 73 02          	lea    0x2(%rbx),%rsi
     a78:	83 f8 2f             	cmp    $0x2f,%eax
     a7b:	0f 87 d1 01 00 00    	ja     c52 <vsprintf+0x692>
     a81:	89 c1                	mov    %eax,%ecx
     a83:	83 c0 08             	add    $0x8,%eax
     a86:	49 03 4c 24 10       	add    0x10(%r12),%rcx
     a8b:	41 89 04 24          	mov    %eax,(%r12)
     a8f:	44 8b 01             	mov    (%rcx),%r8d
     a92:	31 c0                	xor    %eax,%eax
     a94:	45 85 c0             	test   %r8d,%r8d
     a97:	44 0f 48 c0          	cmovs  %eax,%r8d
     a9b:	0f be 43 02          	movsbl 0x2(%rbx),%eax
     a9f:	48 89 f3             	mov    %rsi,%rbx
     aa2:	e9 d0 fb ff ff       	jmp    677 <vsprintf+0xb7>
     aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     aae:	00 00 
     ab0:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     ab5:	48 8d 48 08          	lea    0x8(%rax),%rcx
     ab9:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     abe:	e9 75 fd ff ff       	jmp    838 <vsprintf+0x278>
     ac3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     ac8:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     acd:	48 8d 48 08          	lea    0x8(%rax),%rcx
     ad1:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     ad6:	e9 95 fd ff ff       	jmp    870 <vsprintf+0x2b0>
     adb:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
     ae0:	48 8d 41 08          	lea    0x8(%rcx),%rax
     ae4:	49 89 44 24 08       	mov    %rax,0x8(%r12)
     ae9:	e9 30 ff ff ff       	jmp    a1e <vsprintf+0x45e>
     aee:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
     af3:	48 8d 41 08          	lea    0x8(%rcx),%rax
     af7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
     afc:	e9 4a fe ff ff       	jmp    94b <vsprintf+0x38b>
     b01:	89 c1                	mov    %eax,%ecx
     b03:	83 c0 08             	add    $0x8,%eax
     b06:	49 03 4c 24 10       	add    0x10(%r12),%rcx
     b0b:	41 89 04 24          	mov    %eax,(%r12)
     b0f:	e9 cf fd ff ff       	jmp    8e3 <vsprintf+0x323>
     b14:	48 83 c7 01          	add    $0x1,%rdi
     b18:	e9 33 fc ff ff       	jmp    750 <vsprintf+0x190>
     b1d:	41 83 c9 01          	or     $0x1,%r9d
     b21:	ba 10 00 00 00       	mov    $0x10,%edx
     b26:	e9 d8 fe ff ff       	jmp    a03 <vsprintf+0x443>
     b2b:	8d 42 ff             	lea    -0x1(%rdx),%eax
     b2e:	48 89 c1             	mov    %rax,%rcx
     b31:	48 01 f8             	add    %rdi,%rax
     b34:	83 fa 01             	cmp    $0x1,%edx
     b37:	0f 8e 81 02 00 00    	jle    dbe <vsprintf+0x7fe>
     b3d:	48 89 c2             	mov    %rax,%rdx
     b40:	48 29 fa             	sub    %rdi,%rdx
     b43:	83 e2 01             	and    $0x1,%edx
     b46:	74 10                	je     b58 <vsprintf+0x598>
     b48:	48 83 c7 01          	add    $0x1,%rdi
     b4c:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     b50:	48 39 f8             	cmp    %rdi,%rax
     b53:	74 13                	je     b68 <vsprintf+0x5a8>
     b55:	0f 1f 00             	nopl   (%rax)
     b58:	c6 07 20             	movb   $0x20,(%rdi)
     b5b:	48 83 c7 02          	add    $0x2,%rdi
     b5f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     b63:	48 39 f8             	cmp    %rdi,%rax
     b66:	75 f0                	jne    b58 <vsprintf+0x598>
     b68:	31 d2                	xor    %edx,%edx
     b6a:	e9 59 fd ff ff       	jmp    8c8 <vsprintf+0x308>
     b6f:	41 8b 14 24          	mov    (%r12),%edx
     b73:	83 f8 6c             	cmp    $0x6c,%eax
     b76:	0f 84 f9 00 00 00    	je     c75 <vsprintf+0x6b5>
     b7c:	83 fa 2f             	cmp    $0x2f,%edx
     b7f:	0f 87 59 01 00 00    	ja     cde <vsprintf+0x71e>
     b85:	89 d0                	mov    %edx,%eax
     b87:	83 c2 08             	add    $0x8,%edx
     b8a:	49 03 44 24 10       	add    0x10(%r12),%rax
     b8f:	41 89 14 24          	mov    %edx,(%r12)
     b93:	48 8b 00             	mov    (%rax),%rax
     b96:	48 89 fa             	mov    %rdi,%rdx
     b99:	49 8d 4a 01          	lea    0x1(%r10),%rcx
     b9d:	4c 29 ea             	sub    %r13,%rdx
     ba0:	89 10                	mov    %edx,(%rax)
     ba2:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     ba7:	e9 71 fa ff ff       	jmp    61d <vsprintf+0x5d>
     bac:	41 8b 0c 24          	mov    (%r12),%ecx
     bb0:	83 f8 6c             	cmp    $0x6c,%eax
     bb3:	0f 84 ec 00 00 00    	je     ca5 <vsprintf+0x6e5>
     bb9:	83 f9 2f             	cmp    $0x2f,%ecx
     bbc:	0f 87 2f 01 00 00    	ja     cf1 <vsprintf+0x731>
     bc2:	89 c8                	mov    %ecx,%eax
     bc4:	83 c1 08             	add    $0x8,%ecx
     bc7:	49 03 44 24 10       	add    0x10(%r12),%rax
     bcc:	41 89 0c 24          	mov    %ecx,(%r12)
     bd0:	89 d1                	mov    %edx,%ecx
     bd2:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
     bd7:	8b 30                	mov    (%rax),%esi
     bd9:	ba 08 00 00 00       	mov    $0x8,%edx
     bde:	e9 9b fc ff ff       	jmp    87e <vsprintf+0x2be>
     be3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     be8:	83 f9 2f             	cmp    $0x2f,%ecx
     beb:	77 78                	ja     c65 <vsprintf+0x6a5>
     bed:	89 c8                	mov    %ecx,%eax
     bef:	83 c1 08             	add    $0x8,%ecx
     bf2:	49 03 44 24 10       	add    0x10(%r12),%rax
     bf7:	41 89 0c 24          	mov    %ecx,(%r12)
     bfb:	48 8b 30             	mov    (%rax),%rsi
     bfe:	89 d1                	mov    %edx,%ecx
     c00:	ba 0a 00 00 00       	mov    $0xa,%edx
     c05:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c0c:	00 00 00 
     c0f:	4c 01 f0             	add    %r14,%rax
     c12:	ff d0                	call   *%rax
     c14:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
     c18:	48 89 c7             	mov    %rax,%rdi
     c1b:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
     c1f:	e9 f9 f9 ff ff       	jmp    61d <vsprintf+0x5d>
     c24:	0f 1f 40 00          	nopl   0x0(%rax)
     c28:	83 f9 2f             	cmp    $0x2f,%ecx
     c2b:	0f 87 9a 00 00 00    	ja     ccb <vsprintf+0x70b>
     c31:	89 c8                	mov    %ecx,%eax
     c33:	83 c1 08             	add    $0x8,%ecx
     c36:	49 03 44 24 10       	add    0x10(%r12),%rax
     c3b:	41 89 0c 24          	mov    %ecx,(%r12)
     c3f:	89 d1                	mov    %edx,%ecx
     c41:	48 8b 30             	mov    (%rax),%rsi
     c44:	ba 10 00 00 00       	mov    $0x10,%edx
     c49:	eb ba                	jmp    c05 <vsprintf+0x645>
     c4b:	31 c0                	xor    %eax,%eax
     c4d:	e9 03 fb ff ff       	jmp    755 <vsprintf+0x195>
     c52:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
     c57:	48 8d 41 08          	lea    0x8(%rcx),%rax
     c5b:	49 89 44 24 08       	mov    %rax,0x8(%r12)
     c60:	e9 2a fe ff ff       	jmp    a8f <vsprintf+0x4cf>
     c65:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     c6a:	48 8d 48 08          	lea    0x8(%rax),%rcx
     c6e:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     c73:	eb 86                	jmp    bfb <vsprintf+0x63b>
     c75:	83 fa 2f             	cmp    $0x2f,%edx
     c78:	0f 87 ca 00 00 00    	ja     d48 <vsprintf+0x788>
     c7e:	89 d0                	mov    %edx,%eax
     c80:	83 c2 08             	add    $0x8,%edx
     c83:	49 03 44 24 10       	add    0x10(%r12),%rax
     c88:	41 89 14 24          	mov    %edx,(%r12)
     c8c:	48 8b 00             	mov    (%rax),%rax
     c8f:	48 89 fa             	mov    %rdi,%rdx
     c92:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
     c96:	4c 29 ea             	sub    %r13,%rdx
     c99:	48 89 10             	mov    %rdx,(%rax)
     c9c:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
     ca0:	e9 78 f9 ff ff       	jmp    61d <vsprintf+0x5d>
     ca5:	83 f9 2f             	cmp    $0x2f,%ecx
     ca8:	0f 86 ad 00 00 00    	jbe    d5b <vsprintf+0x79b>
     cae:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     cb3:	48 8d 48 08          	lea    0x8(%rax),%rcx
     cb7:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     cbc:	89 d1                	mov    %edx,%ecx
     cbe:	48 8b 30             	mov    (%rax),%rsi
     cc1:	ba 08 00 00 00       	mov    $0x8,%edx
     cc6:	e9 3a ff ff ff       	jmp    c05 <vsprintf+0x645>
     ccb:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     cd0:	48 8d 48 08          	lea    0x8(%rax),%rcx
     cd4:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     cd9:	e9 61 ff ff ff       	jmp    c3f <vsprintf+0x67f>
     cde:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     ce3:	48 8d 50 08          	lea    0x8(%rax),%rdx
     ce7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
     cec:	e9 a2 fe ff ff       	jmp    b93 <vsprintf+0x5d3>
     cf1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     cf6:	48 8d 48 08          	lea    0x8(%rax),%rcx
     cfa:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
     cff:	e9 cc fe ff ff       	jmp    bd0 <vsprintf+0x610>
     d04:	39 f2                	cmp    %esi,%edx
     d06:	0f 8e b9 00 00 00    	jle    dc5 <vsprintf+0x805>
     d0c:	83 ea 01             	sub    $0x1,%edx
     d0f:	29 f2                	sub    %esi,%edx
     d11:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
     d16:	83 e2 01             	and    $0x1,%edx
     d19:	75 15                	jne    d30 <vsprintf+0x770>
     d1b:	48 83 c7 01          	add    $0x1,%rdi
     d1f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     d23:	48 39 c7             	cmp    %rax,%rdi
     d26:	74 18                	je     d40 <vsprintf+0x780>
     d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     d2f:	00 
     d30:	c6 07 20             	movb   $0x20,(%rdi)
     d33:	48 83 c7 02          	add    $0x2,%rdi
     d37:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
     d3b:	48 39 c7             	cmp    %rax,%rdi
     d3e:	75 f0                	jne    d30 <vsprintf+0x770>
     d40:	8d 56 ff             	lea    -0x1(%rsi),%edx
     d43:	e9 40 fc ff ff       	jmp    988 <vsprintf+0x3c8>
     d48:	49 8b 44 24 08       	mov    0x8(%r12),%rax
     d4d:	48 8d 50 08          	lea    0x8(%rax),%rdx
     d51:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
     d56:	e9 31 ff ff ff       	jmp    c8c <vsprintf+0x6cc>
     d5b:	89 c8                	mov    %ecx,%eax
     d5d:	83 c1 08             	add    $0x8,%ecx
     d60:	49 03 44 24 10       	add    0x10(%r12),%rax
     d65:	41 89 0c 24          	mov    %ecx,(%r12)
     d69:	e9 4e ff ff ff       	jmp    cbc <vsprintf+0x6fc>
     d6e:	41 8b 0c 24          	mov    (%r12),%ecx
     d72:	41 83 c9 02          	or     $0x2,%r9d
     d76:	49 89 da             	mov    %rbx,%r10
     d79:	e9 db fa ff ff       	jmp    859 <vsprintf+0x299>
     d7e:	41 8b 0c 24          	mov    (%r12),%ecx
     d82:	41 83 c9 40          	or     $0x40,%r9d
     d86:	49 89 da             	mov    %rbx,%r10
     d89:	e9 93 fa ff ff       	jmp    821 <vsprintf+0x261>
     d8e:	41 8b 0c 24          	mov    (%r12),%ecx
     d92:	49 89 da             	mov    %rbx,%r10
     d95:	e9 bf fa ff ff       	jmp    859 <vsprintf+0x299>
     d9a:	41 8b 0c 24          	mov    (%r12),%ecx
     d9e:	49 89 da             	mov    %rbx,%r10
     da1:	e9 13 fe ff ff       	jmp    bb9 <vsprintf+0x5f9>
     da6:	41 8b 14 24          	mov    (%r12),%edx
     daa:	49 89 da             	mov    %rbx,%r10
     dad:	e9 ca fd ff ff       	jmp    b7c <vsprintf+0x5bc>
     db2:	41 8b 0c 24          	mov    (%r12),%ecx
     db6:	49 89 da             	mov    %rbx,%r10
     db9:	e9 63 fa ff ff       	jmp    821 <vsprintf+0x261>
     dbe:	89 ca                	mov    %ecx,%edx
     dc0:	e9 03 fb ff ff       	jmp    8c8 <vsprintf+0x308>
     dc5:	83 ea 01             	sub    $0x1,%edx
     dc8:	e9 bb fb ff ff       	jmp    988 <vsprintf+0x3c8>
     dcd:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     dd2:	4c 89 c7             	mov    %r8,%rdi
     dd5:	e9 43 f8 ff ff       	jmp    61d <vsprintf+0x5d>
     dda:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
     ddf:	48 89 f7             	mov    %rsi,%rdi
     de2:	e9 36 f8 ff ff       	jmp    61d <vsprintf+0x5d>
     de7:	49 89 f8             	mov    %rdi,%r8
     dea:	e9 c0 fb ff ff       	jmp    9af <vsprintf+0x3ef>
     def:	31 f6                	xor    %esi,%esi
     df1:	e9 78 fb ff ff       	jmp    96e <vsprintf+0x3ae>
     df6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     dfd:	00 00 00 

0000000000000e00 <color_printk>:
     e00:	f3 0f 1e fa          	endbr64
     e04:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     e0b:	00 00 00 
     e0e:	41 57                	push   %r15
     e10:	41 56                	push   %r14
     e12:	41 55                	push   %r13
     e14:	41 54                	push   %r12
     e16:	4c 8d 25 e7 ff ff ff 	lea    -0x19(%rip),%r12        # e04 <color_printk+0x4>
     e1d:	55                   	push   %rbp
     e1e:	4d 01 dc             	add    %r11,%r12
     e21:	89 f5                	mov    %esi,%ebp
     e23:	48 89 d6             	mov    %rdx,%rsi
     e26:	53                   	push   %rbx
     e27:	89 fb                	mov    %edi,%ebx
     e29:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
     e30:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
     e35:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
     e3a:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
     e3f:	84 c0                	test   %al,%al
     e41:	74 3d                	je     e80 <color_printk+0x80>
     e43:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
     e48:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
     e4f:	00 
     e50:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
     e57:	00 
     e58:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
     e5f:	00 
     e60:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
     e67:	00 
     e68:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
     e6f:	00 
     e70:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
     e77:	00 
     e78:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
     e7f:	00 
     e80:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
     e87:	00 
     e88:	c7 44 24 28 18 00 00 	movl   $0x18,0x28(%rsp)
     e8f:	00 
     e90:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
     e95:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
     e9a:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
     e9f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
     ea4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     eab:	00 00 00 
     eae:	4c 01 e0             	add    %r12,%rax
     eb1:	c7 44 24 2c 30 00 00 	movl   $0x30,0x2c(%rsp)
     eb8:	00 
     eb9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     ebe:	48 89 c7             	mov    %rax,%rdi
     ec1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ec8:	00 00 00 
     ecb:	4c 01 e0             	add    %r12,%rax
     ece:	ff d0                	call   *%rax
     ed0:	41 89 c5             	mov    %eax,%r13d
     ed3:	85 c0                	test   %eax,%eax
     ed5:	0f 8e 6f 01 00 00    	jle    104a <color_printk+0x24a>
     edb:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     ee2:	00 00 00 
     ee5:	45 31 d2             	xor    %r10d,%r10d
     ee8:	45 31 db             	xor    %r11d,%r11d
     eeb:	4b 8b 44 20 18       	mov    0x18(%r8,%r12,1),%rax
     ef0:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
     ef5:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
     efa:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
     efe:	48 89 04 24          	mov    %rax,(%rsp)
     f02:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f09:	00 00 00 
     f0c:	4c 01 e0             	add    %r12,%rax
     f0f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     f14:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f1b:	00 00 00 
     f1e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     f23:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f2a:	00 00 00 
     f2d:	4a 8d 3c 20          	lea    (%rax,%r12,1),%rdi
     f31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     f38:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
     f3d:	45 85 d2             	test   %r10d,%r10d
     f40:	0f 8f 19 01 00 00    	jg     105f <color_printk+0x25f>
     f46:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
     f4b:	49 63 c3             	movslq %r11d,%rax
     f4e:	41 83 c3 01          	add    $0x1,%r11d
     f52:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     f56:	3c 0a                	cmp    $0xa,%al
     f58:	0f 84 0b 01 00 00    	je     1069 <color_printk+0x269>
     f5e:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
     f63:	3c 08                	cmp    $0x8,%al
     f65:	0f 84 14 01 00 00    	je     107f <color_printk+0x27f>
     f6b:	3c 09                	cmp    $0x9,%al
     f6d:	0f 85 a0 01 00 00    	jne    1113 <color_printk+0x313>
     f73:	44 8d 52 08          	lea    0x8(%rdx),%r10d
     f77:	41 83 e2 f8          	and    $0xfffffff8,%r10d
     f7b:	41 29 d2             	sub    %edx,%r10d
     f7e:	41 0f af f6          	imul   %r14d,%esi
     f82:	4c 63 f9             	movslq %ecx,%r15
     f85:	41 83 ea 01          	sub    $0x1,%r10d
     f89:	41 0f af d1          	imul   %r9d,%edx
     f8d:	49 c1 e7 02          	shl    $0x2,%r15
     f91:	0f af f1             	imul   %ecx,%esi
     f94:	48 63 d2             	movslq %edx,%rdx
     f97:	48 63 c6             	movslq %esi,%rax
     f9a:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
     f9f:	48 8b 14 24          	mov    (%rsp),%rdx
     fa3:	4c 8d 0c 82          	lea    (%rdx,%rax,4),%r9
     fa7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
     fac:	49 8d 34 04          	lea    (%r12,%rax,1),%rsi
     fb0:	49 8d 41 e0          	lea    -0x20(%r9),%rax
     fb4:	ba 00 01 00 00       	mov    $0x100,%edx
     fb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     fc0:	0f b6 0e             	movzbl (%rsi),%ecx
     fc3:	d1 fa                	sar    $1,%edx
     fc5:	85 d1                	test   %edx,%ecx
     fc7:	89 d9                	mov    %ebx,%ecx
     fc9:	0f 44 cd             	cmove  %ebp,%ecx
     fcc:	48 83 c0 04          	add    $0x4,%rax
     fd0:	89 48 fc             	mov    %ecx,-0x4(%rax)
     fd3:	4c 39 c8             	cmp    %r9,%rax
     fd6:	75 e8                	jne    fc0 <color_printk+0x1c0>
     fd8:	48 83 c6 01          	add    $0x1,%rsi
     fdc:	4e 8d 0c 38          	lea    (%rax,%r15,1),%r9
     fe0:	48 39 fe             	cmp    %rdi,%rsi
     fe3:	75 cb                	jne    fb0 <color_printk+0x1b0>
     fe5:	43 8b 44 20 08       	mov    0x8(%r8,%r12,1),%eax
     fea:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
     fee:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
     ff3:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
     ff8:	44 8d 78 01          	lea    0x1(%rax),%r15d
     ffc:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
    1001:	47 89 7c 20 08       	mov    %r15d,0x8(%r8,%r12,1)
    1006:	89 c8                	mov    %ecx,%eax
    1008:	99                   	cltd
    1009:	41 f7 f9             	idiv   %r9d
    100c:	44 39 f8             	cmp    %r15d,%eax
    100f:	7f 11                	jg     1022 <color_printk+0x222>
    1011:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
    1018:	00 00 
    101a:	83 c6 01             	add    $0x1,%esi
    101d:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
    1022:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
    1027:	99                   	cltd
    1028:	41 f7 fe             	idiv   %r14d
    102b:	39 f0                	cmp    %esi,%eax
    102d:	7f 09                	jg     1038 <color_printk+0x238>
    102f:	43 c7 44 20 0c 00 00 	movl   $0x0,0xc(%r8,%r12,1)
    1036:	00 00 
    1038:	45 39 dd             	cmp    %r11d,%r13d
    103b:	0f 8f f7 fe ff ff    	jg     f38 <color_printk+0x138>
    1041:	45 85 d2             	test   %r10d,%r10d
    1044:	0f 85 ee fe ff ff    	jne    f38 <color_printk+0x138>
    104a:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
    1051:	44 89 e8             	mov    %r13d,%eax
    1054:	5b                   	pop    %rbx
    1055:	5d                   	pop    %rbp
    1056:	41 5c                	pop    %r12
    1058:	41 5d                	pop    %r13
    105a:	41 5e                	pop    %r14
    105c:	41 5f                	pop    %r15
    105e:	c3                   	ret
    105f:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
    1064:	e9 15 ff ff ff       	jmp    f7e <color_printk+0x17e>
    1069:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
    1070:	00 00 
    1072:	83 c6 01             	add    $0x1,%esi
    1075:	45 31 ff             	xor    %r15d,%r15d
    1078:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
    107d:	eb 87                	jmp    1006 <color_printk+0x206>
    107f:	83 ea 01             	sub    $0x1,%edx
    1082:	41 89 d7             	mov    %edx,%r15d
    1085:	0f 88 ff 00 00 00    	js     118a <color_printk+0x38a>
    108b:	43 89 54 20 08       	mov    %edx,0x8(%r8,%r12,1)
    1090:	41 0f af f6          	imul   %r14d,%esi
    1094:	44 89 c8             	mov    %r9d,%eax
    1097:	48 63 d1             	movslq %ecx,%rdx
    109a:	41 0f af c7          	imul   %r15d,%eax
    109e:	48 c1 e2 02          	shl    $0x2,%rdx
    10a2:	0f af ce             	imul   %esi,%ecx
    10a5:	48 8b 34 24          	mov    (%rsp),%rsi
    10a9:	48 98                	cltq
    10ab:	48 63 c9             	movslq %ecx,%rcx
    10ae:	48 8d 44 01 08       	lea    0x8(%rcx,%rax,1),%rax
    10b3:	4c 8d 34 86          	lea    (%rsi,%rax,4),%r14
    10b7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    10bc:	4d 8d 0c 04          	lea    (%r12,%rax,1),%r9
    10c0:	49 8d 46 e0          	lea    -0x20(%r14),%rax
    10c4:	b9 00 01 00 00       	mov    $0x100,%ecx
    10c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d0:	41 0f b6 31          	movzbl (%r9),%esi
    10d4:	d1 f9                	sar    $1,%ecx
    10d6:	85 ce                	test   %ecx,%esi
    10d8:	89 de                	mov    %ebx,%esi
    10da:	0f 44 f5             	cmove  %ebp,%esi
    10dd:	48 83 c0 04          	add    $0x4,%rax
    10e1:	89 70 fc             	mov    %esi,-0x4(%rax)
    10e4:	4c 39 f0             	cmp    %r14,%rax
    10e7:	75 e7                	jne    10d0 <color_printk+0x2d0>
    10e9:	49 83 c1 01          	add    $0x1,%r9
    10ed:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
    10f1:	49 39 f9             	cmp    %rdi,%r9
    10f4:	75 ca                	jne    10c0 <color_printk+0x2c0>
    10f6:	47 8b 7c 20 08       	mov    0x8(%r8,%r12,1),%r15d
    10fb:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
    10ff:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
    1104:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
    1109:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
    110e:	e9 f3 fe ff ff       	jmp    1006 <color_printk+0x206>
    1113:	41 0f af d1          	imul   %r9d,%edx
    1117:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
    111c:	48 c1 e0 04          	shl    $0x4,%rax
    1120:	4c 01 f8             	add    %r15,%rax
    1123:	4c 63 f9             	movslq %ecx,%r15
    1126:	4c 63 ca             	movslq %edx,%r9
    1129:	44 89 f2             	mov    %r14d,%edx
    112c:	49 c1 e7 02          	shl    $0x2,%r15
    1130:	4c 8d 70 10          	lea    0x10(%rax),%r14
    1134:	0f af d6             	imul   %esi,%edx
    1137:	48 8b 34 24          	mov    (%rsp),%rsi
    113b:	0f af d1             	imul   %ecx,%edx
    113e:	48 63 d2             	movslq %edx,%rdx
    1141:	49 8d 54 11 08       	lea    0x8(%r9,%rdx,1),%rdx
    1146:	4c 8d 0c 96          	lea    (%rsi,%rdx,4),%r9
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1150:	49 8d 51 e0          	lea    -0x20(%r9),%rdx
    1154:	b9 00 01 00 00       	mov    $0x100,%ecx
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1160:	0f b6 30             	movzbl (%rax),%esi
    1163:	d1 f9                	sar    $1,%ecx
    1165:	85 ce                	test   %ecx,%esi
    1167:	89 de                	mov    %ebx,%esi
    1169:	0f 44 f5             	cmove  %ebp,%esi
    116c:	48 83 c2 04          	add    $0x4,%rdx
    1170:	89 72 fc             	mov    %esi,-0x4(%rdx)
    1173:	4c 39 ca             	cmp    %r9,%rdx
    1176:	75 e8                	jne    1160 <color_printk+0x360>
    1178:	48 83 c0 01          	add    $0x1,%rax
    117c:	4e 8d 0c 3a          	lea    (%rdx,%r15,1),%r9
    1180:	4c 39 f0             	cmp    %r14,%rax
    1183:	75 cb                	jne    1150 <color_printk+0x350>
    1185:	e9 5b fe ff ff       	jmp    fe5 <color_printk+0x1e5>
    118a:	89 c8                	mov    %ecx,%eax
    118c:	99                   	cltd
    118d:	41 f7 f9             	idiv   %r9d
    1190:	83 e8 01             	sub    $0x1,%eax
    1193:	41 0f af c1          	imul   %r9d,%eax
    1197:	83 ee 01             	sub    $0x1,%esi
    119a:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
    119f:	43 89 44 20 08       	mov    %eax,0x8(%r8,%r12,1)
    11a4:	41 89 c7             	mov    %eax,%r15d
    11a7:	0f 89 e3 fe ff ff    	jns    1090 <color_printk+0x290>
    11ad:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
    11b2:	99                   	cltd
    11b3:	41 f7 fe             	idiv   %r14d
    11b6:	83 e8 01             	sub    $0x1,%eax
    11b9:	41 0f af c6          	imul   %r14d,%eax
    11bd:	43 89 44 20 0c       	mov    %eax,0xc(%r8,%r12,1)
    11c2:	89 c6                	mov    %eax,%esi
    11c4:	e9 c7 fe ff ff       	jmp    1090 <color_printk+0x290>
