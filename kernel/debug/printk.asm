
printk.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Cstrlen>:
       0:	f3 0f 1e fa          	endbr64
       4:	55                   	push   %rbp
       5:	48 89 e5             	mov    %rsp,%rbp
       8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8 <Cstrlen+0x8>
       f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      16:	00 00 00 
      19:	4c 01 d8             	add    %r11,%rax
      1c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
      20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      24:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      28:	eb 05                	jmp    2f <Cstrlen+0x2f>
      2a:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
      2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      33:	0f b6 00             	movzbl (%rax),%eax
      36:	84 c0                	test   %al,%al
      38:	75 f0                	jne    2a <Cstrlen+0x2a>
      3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      3e:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
      42:	5d                   	pop    %rbp
      43:	c3                   	ret

0000000000000044 <putchar>:
      44:	f3 0f 1e fa          	endbr64
      48:	55                   	push   %rbp
      49:	48 89 e5             	mov    %rsp,%rbp
      4c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 4c <putchar+0x8>
      53:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      5a:	00 00 00 
      5d:	4c 01 d8             	add    %r11,%rax
      60:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
      64:	89 75 d4             	mov    %esi,-0x2c(%rbp)
      67:	89 55 d0             	mov    %edx,-0x30(%rbp)
      6a:	89 4d cc             	mov    %ecx,-0x34(%rbp)
      6d:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
      71:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
      75:	8b 55 10             	mov    0x10(%rbp),%edx
      78:	88 55 c0             	mov    %dl,-0x40(%rbp)
      7b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
      82:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
      89:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
      90:	00 
      91:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
      98:	00 
      99:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
      a0:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
      a4:	48 63 d2             	movslq %edx,%rdx
      a7:	48 89 d1             	mov    %rdx,%rcx
      aa:	48 c1 e1 04          	shl    $0x4,%rcx
      ae:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      b5:	00 00 00 
      b8:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
      bc:	48 01 c8             	add    %rcx,%rax
      bf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      c3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
      ca:	eb 7a                	jmp    146 <putchar+0x102>
      cc:	8b 55 cc             	mov    -0x34(%rbp),%edx
      cf:	8b 45 fc             	mov    -0x4(%rbp),%eax
      d2:	01 d0                	add    %edx,%eax
      d4:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
      d8:	48 63 d0             	movslq %eax,%rdx
      db:	8b 45 d0             	mov    -0x30(%rbp),%eax
      de:	48 98                	cltq
      e0:	48 01 d0             	add    %rdx,%rax
      e3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
      ea:	00 
      eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
      ef:	48 01 d0             	add    %rdx,%rax
      f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      f6:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
      fd:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
     104:	eb 31                	jmp    137 <putchar+0xf3>
     106:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
     109:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     10d:	0f b6 00             	movzbl (%rax),%eax
     110:	0f b6 c0             	movzbl %al,%eax
     113:	23 45 e4             	and    -0x1c(%rbp),%eax
     116:	85 c0                	test   %eax,%eax
     118:	74 0b                	je     125 <putchar+0xe1>
     11a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     11e:	8b 55 c8             	mov    -0x38(%rbp),%edx
     121:	89 10                	mov    %edx,(%rax)
     123:	eb 09                	jmp    12e <putchar+0xea>
     125:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     129:	8b 55 c4             	mov    -0x3c(%rbp),%edx
     12c:	89 10                	mov    %edx,(%rax)
     12e:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
     133:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
     137:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
     13b:	7e c9                	jle    106 <putchar+0xc2>
     13d:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
     142:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     146:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
     14a:	7e 80                	jle    cc <putchar+0x88>
     14c:	90                   	nop
     14d:	90                   	nop
     14e:	5d                   	pop    %rbp
     14f:	c3                   	ret

0000000000000150 <color_printk>:
     150:	f3 0f 1e fa          	endbr64
     154:	55                   	push   %rbp
     155:	48 89 e5             	mov    %rsp,%rbp
     158:	53                   	push   %rbx
     159:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
     160:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 160 <color_printk+0x10>
     167:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     16e:	00 00 00 
     171:	4c 01 db             	add    %r11,%rbx
     174:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
     17a:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
     180:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
     187:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
     18e:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
     195:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
     19c:	84 c0                	test   %al,%al
     19e:	74 23                	je     1c3 <color_printk+0x73>
     1a0:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
     1a7:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
     1ab:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
     1af:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
     1b3:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
     1b7:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
     1bb:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
     1bf:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
     1c3:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
     1ca:	00 00 00 
     1cd:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
     1d4:	00 00 00 
     1d7:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
     1de:	00 00 00 
     1e1:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
     1e8:	00 00 00 
     1eb:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
     1f2:	00 00 00 
     1f5:	48 8d 45 10          	lea    0x10(%rbp),%rax
     1f9:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
     200:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
     207:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
     20e:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
     215:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
     21c:	48 89 c6             	mov    %rax,%rsi
     21f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     226:	00 00 00 
     229:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     22d:	48 89 c7             	mov    %rax,%rdi
     230:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     237:	00 00 00 
     23a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     23e:	ff d0                	call   *%rax
     240:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
     246:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
     24d:	00 00 00 
     250:	e9 81 04 00 00       	jmp    6d6 <color_printk+0x586>
     255:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
     25c:	7e 0c                	jle    26a <color_printk+0x11a>
     25e:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
     265:	e9 45 02 00 00       	jmp    4af <color_printk+0x35f>
     26a:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     270:	48 63 d0             	movslq %eax,%rdx
     273:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     27a:	00 00 00 
     27d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     281:	48 01 d0             	add    %rdx,%rax
     284:	0f b6 00             	movzbl (%rax),%eax
     287:	3c 0a                	cmp    $0xa,%al
     289:	75 36                	jne    2c1 <color_printk+0x171>
     28b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     292:	00 00 00 
     295:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
     299:	8d 50 01             	lea    0x1(%rax),%edx
     29c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     2a3:	00 00 00 
     2a6:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
     2aa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     2b1:	00 00 00 
     2b4:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
     2bb:	00 
     2bc:	e9 6a 03 00 00       	jmp    62b <color_printk+0x4db>
     2c1:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     2c7:	48 63 d0             	movslq %eax,%rdx
     2ca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     2d1:	00 00 00 
     2d4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     2d8:	48 01 d0             	add    %rdx,%rax
     2db:	0f b6 00             	movzbl (%rax),%eax
     2de:	3c 08                	cmp    $0x8,%al
     2e0:	0f 85 78 01 00 00    	jne    45e <color_printk+0x30e>
     2e6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     2ed:	00 00 00 
     2f0:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     2f4:	8d 50 ff             	lea    -0x1(%rax),%edx
     2f7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     2fe:	00 00 00 
     301:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
     305:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     30c:	00 00 00 
     30f:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     313:	85 c0                	test   %eax,%eax
     315:	0f 89 b2 00 00 00    	jns    3cd <color_printk+0x27d>
     31b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     322:	00 00 00 
     325:	8b 04 03             	mov    (%rbx,%rax,1),%eax
     328:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     32f:	00 00 00 
     332:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
     336:	99                   	cltd
     337:	f7 fe                	idiv   %esi
     339:	8d 50 ff             	lea    -0x1(%rax),%edx
     33c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     343:	00 00 00 
     346:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     34a:	0f af c2             	imul   %edx,%eax
     34d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     354:	00 00 00 
     357:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
     35b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     362:	00 00 00 
     365:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
     369:	8d 50 ff             	lea    -0x1(%rax),%edx
     36c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     373:	00 00 00 
     376:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
     37a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     381:	00 00 00 
     384:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
     388:	85 c0                	test   %eax,%eax
     38a:	79 41                	jns    3cd <color_printk+0x27d>
     38c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     393:	00 00 00 
     396:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
     39a:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     3a1:	00 00 00 
     3a4:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
     3a8:	99                   	cltd
     3a9:	f7 ff                	idiv   %edi
     3ab:	8d 50 ff             	lea    -0x1(%rax),%edx
     3ae:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3b5:	00 00 00 
     3b8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     3bc:	0f af c2             	imul   %edx,%eax
     3bf:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     3c6:	00 00 00 
     3c9:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
     3cd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3d4:	00 00 00 
     3d7:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
     3db:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3e2:	00 00 00 
     3e5:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     3e9:	89 d1                	mov    %edx,%ecx
     3eb:	0f af c8             	imul   %eax,%ecx
     3ee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3f5:	00 00 00 
     3f8:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
     3fc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     403:	00 00 00 
     406:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     40a:	0f af d0             	imul   %eax,%edx
     40d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     414:	00 00 00 
     417:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     41a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     421:	00 00 00 
     424:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     429:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
     430:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
     436:	48 83 ec 08          	sub    $0x8,%rsp
     43a:	6a 20                	push   $0x20
     43c:	45 89 c1             	mov    %r8d,%r9d
     43f:	41 89 f8             	mov    %edi,%r8d
     442:	48 89 c7             	mov    %rax,%rdi
     445:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     44c:	00 00 00 
     44f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     453:	ff d0                	call   *%rax
     455:	48 83 c4 10          	add    $0x10,%rsp
     459:	e9 cd 01 00 00       	jmp    62b <color_printk+0x4db>
     45e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     464:	48 63 d0             	movslq %eax,%rdx
     467:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     46e:	00 00 00 
     471:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     475:	48 01 d0             	add    %rdx,%rax
     478:	0f b6 00             	movzbl (%rax),%eax
     47b:	3c 09                	cmp    $0x9,%al
     47d:	0f 85 e3 00 00 00    	jne    566 <color_printk+0x416>
     483:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     48a:	00 00 00 
     48d:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     491:	83 c0 08             	add    $0x8,%eax
     494:	83 e0 f8             	and    $0xfffffff8,%eax
     497:	89 c2                	mov    %eax,%edx
     499:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4a0:	00 00 00 
     4a3:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     4a7:	29 c2                	sub    %eax,%edx
     4a9:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
     4af:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
     4b6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4bd:	00 00 00 
     4c0:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
     4c4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4cb:	00 00 00 
     4ce:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     4d2:	89 d1                	mov    %edx,%ecx
     4d4:	0f af c8             	imul   %eax,%ecx
     4d7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4de:	00 00 00 
     4e1:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
     4e5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4ec:	00 00 00 
     4ef:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     4f3:	0f af d0             	imul   %eax,%edx
     4f6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4fd:	00 00 00 
     500:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     503:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     50a:	00 00 00 
     50d:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     512:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
     519:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
     51f:	48 83 ec 08          	sub    $0x8,%rsp
     523:	6a 20                	push   $0x20
     525:	45 89 c1             	mov    %r8d,%r9d
     528:	41 89 f8             	mov    %edi,%r8d
     52b:	48 89 c7             	mov    %rax,%rdi
     52e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     535:	00 00 00 
     538:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     53c:	ff d0                	call   *%rax
     53e:	48 83 c4 10          	add    $0x10,%rsp
     542:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     549:	00 00 00 
     54c:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     550:	8d 50 01             	lea    0x1(%rax),%edx
     553:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     55a:	00 00 00 
     55d:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
     561:	e9 c5 00 00 00       	jmp    62b <color_printk+0x4db>
     566:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     56c:	48 63 d0             	movslq %eax,%rdx
     56f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     576:	00 00 00 
     579:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     57d:	48 01 d0             	add    %rdx,%rax
     580:	0f b6 00             	movzbl (%rax),%eax
     583:	0f b6 f8             	movzbl %al,%edi
     586:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     58d:	00 00 00 
     590:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
     594:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     59b:	00 00 00 
     59e:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     5a2:	89 d1                	mov    %edx,%ecx
     5a4:	0f af c8             	imul   %eax,%ecx
     5a7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5ae:	00 00 00 
     5b1:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
     5b5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5bc:	00 00 00 
     5bf:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     5c3:	0f af d0             	imul   %eax,%edx
     5c6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5cd:	00 00 00 
     5d0:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     5d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5da:	00 00 00 
     5dd:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     5e2:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
     5e9:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
     5f0:	48 83 ec 08          	sub    $0x8,%rsp
     5f4:	57                   	push   %rdi
     5f5:	48 89 c7             	mov    %rax,%rdi
     5f8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5ff:	00 00 00 
     602:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     606:	ff d0                	call   *%rax
     608:	48 83 c4 10          	add    $0x10,%rsp
     60c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     613:	00 00 00 
     616:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     61a:	8d 50 01             	lea    0x1(%rax),%edx
     61d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     624:	00 00 00 
     627:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
     62b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     632:	00 00 00 
     635:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
     639:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     640:	00 00 00 
     643:	8b 04 03             	mov    (%rbx,%rax,1),%eax
     646:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     64d:	00 00 00 
     650:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
     654:	99                   	cltd
     655:	f7 fe                	idiv   %esi
     657:	39 c1                	cmp    %eax,%ecx
     659:	7c 31                	jl     68c <color_printk+0x53c>
     65b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     662:	00 00 00 
     665:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
     669:	8d 50 01             	lea    0x1(%rax),%edx
     66c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     673:	00 00 00 
     676:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
     67a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     681:	00 00 00 
     684:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
     68b:	00 
     68c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     693:	00 00 00 
     696:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
     69a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6a1:	00 00 00 
     6a4:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
     6a8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     6af:	00 00 00 
     6b2:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
     6b6:	99                   	cltd
     6b7:	f7 ff                	idiv   %edi
     6b9:	39 c1                	cmp    %eax,%ecx
     6bb:	7c 12                	jl     6cf <color_printk+0x57f>
     6bd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6c4:	00 00 00 
     6c7:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
     6ce:	00 
     6cf:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
     6d6:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     6dc:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
     6e2:	0f 8c 6d fb ff ff    	jl     255 <color_printk+0x105>
     6e8:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
     6ef:	0f 85 60 fb ff ff    	jne    255 <color_printk+0x105>
     6f5:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
     6fb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     6ff:	c9                   	leave
     700:	c3                   	ret

0000000000000701 <clear_screen>:
     701:	f3 0f 1e fa          	endbr64
     705:	55                   	push   %rbp
     706:	48 89 e5             	mov    %rsp,%rbp
     709:	53                   	push   %rbx
     70a:	48 83 ec 18          	sub    $0x18,%rsp
     70e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 70e <clear_screen+0xd>
     715:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     71c:	00 00 00 
     71f:	4c 01 db             	add    %r11,%rbx
     722:	89 7d e4             	mov    %edi,-0x1c(%rbp)
     725:	89 75 e0             	mov    %esi,-0x20(%rbp)
     728:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     72f:	00 00 00 
     732:	8b 04 03             	mov    (%rbx,%rax,1),%eax
     735:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     73c:	00 00 00 
     73f:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
     743:	99                   	cltd
     744:	f7 f9                	idiv   %ecx
     746:	89 45 ec             	mov    %eax,-0x14(%rbp)
     749:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     750:	00 00 00 
     753:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
     757:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     75e:	00 00 00 
     761:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
     765:	99                   	cltd
     766:	f7 fe                	idiv   %esi
     768:	89 45 e8             	mov    %eax,-0x18(%rbp)
     76b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     772:	e9 83 00 00 00       	jmp    7fa <clear_screen+0xf9>
     777:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
     77e:	eb 6e                	jmp    7ee <clear_screen+0xed>
     780:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     787:	00 00 00 
     78a:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     78e:	0f af 45 f4          	imul   -0xc(%rbp),%eax
     792:	89 c1                	mov    %eax,%ecx
     794:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     79b:	00 00 00 
     79e:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     7a2:	0f af 45 f0          	imul   -0x10(%rbp),%eax
     7a6:	89 c2                	mov    %eax,%edx
     7a8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7af:	00 00 00 
     7b2:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     7b5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7bc:	00 00 00 
     7bf:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     7c4:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
     7c8:	8b 7d e4             	mov    -0x1c(%rbp),%edi
     7cb:	6a 20                	push   $0x20
     7cd:	45 89 c1             	mov    %r8d,%r9d
     7d0:	41 89 f8             	mov    %edi,%r8d
     7d3:	48 89 c7             	mov    %rax,%rdi
     7d6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7dd:	00 00 00 
     7e0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     7e4:	ff d0                	call   *%rax
     7e6:	48 83 c4 08          	add    $0x8,%rsp
     7ea:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
     7ee:	8b 45 f0             	mov    -0x10(%rbp),%eax
     7f1:	3b 45 ec             	cmp    -0x14(%rbp),%eax
     7f4:	7c 8a                	jl     780 <clear_screen+0x7f>
     7f6:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     7fa:	8b 45 f4             	mov    -0xc(%rbp),%eax
     7fd:	3b 45 e8             	cmp    -0x18(%rbp),%eax
     800:	0f 8c 71 ff ff ff    	jl     777 <clear_screen+0x76>
     806:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     80d:	00 00 00 
     810:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
     817:	00 
     818:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     81f:	00 00 00 
     822:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
     829:	00 
     82a:	90                   	nop
     82b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     82f:	c9                   	leave
     830:	c3                   	ret

0000000000000831 <skip_atoi2>:
     831:	f3 0f 1e fa          	endbr64
     835:	55                   	push   %rbp
     836:	48 89 e5             	mov    %rsp,%rbp
     839:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 839 <skip_atoi2+0x8>
     840:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     847:	00 00 00 
     84a:	4c 01 d8             	add    %r11,%rax
     84d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     851:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     858:	eb 39                	jmp    893 <skip_atoi2+0x62>
     85a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     85e:	48 8b 00             	mov    (%rax),%rax
     861:	0f b6 00             	movzbl (%rax),%eax
     864:	88 45 fb             	mov    %al,-0x5(%rbp)
     867:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     86b:	48 8b 00             	mov    (%rax),%rax
     86e:	48 8d 50 01          	lea    0x1(%rax),%rdx
     872:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     876:	48 89 10             	mov    %rdx,(%rax)
     879:	8b 55 fc             	mov    -0x4(%rbp),%edx
     87c:	89 d0                	mov    %edx,%eax
     87e:	c1 e0 02             	shl    $0x2,%eax
     881:	01 d0                	add    %edx,%eax
     883:	01 c0                	add    %eax,%eax
     885:	89 c2                	mov    %eax,%edx
     887:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
     88b:	83 e8 30             	sub    $0x30,%eax
     88e:	01 d0                	add    %edx,%eax
     890:	89 45 fc             	mov    %eax,-0x4(%rbp)
     893:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     897:	48 8b 00             	mov    (%rax),%rax
     89a:	0f b6 00             	movzbl (%rax),%eax
     89d:	3c 2f                	cmp    $0x2f,%al
     89f:	7e 0e                	jle    8af <skip_atoi2+0x7e>
     8a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8a5:	48 8b 00             	mov    (%rax),%rax
     8a8:	0f b6 00             	movzbl (%rax),%eax
     8ab:	3c 39                	cmp    $0x39,%al
     8ad:	7e ab                	jle    85a <skip_atoi2+0x29>
     8af:	8b 45 fc             	mov    -0x4(%rbp),%eax
     8b2:	5d                   	pop    %rbp
     8b3:	c3                   	ret

00000000000008b4 <skip_atoi>:
     8b4:	f3 0f 1e fa          	endbr64
     8b8:	55                   	push   %rbp
     8b9:	48 89 e5             	mov    %rsp,%rbp
     8bc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8bc <skip_atoi+0x8>
     8c3:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     8ca:	00 00 00 
     8cd:	4c 01 d8             	add    %r11,%rax
     8d0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     8d4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     8db:	eb 2c                	jmp    909 <skip_atoi+0x55>
     8dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8e1:	48 8b 00             	mov    (%rax),%rax
     8e4:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8ec:	48 89 10             	mov    %rdx,(%rax)
     8ef:	8b 55 fc             	mov    -0x4(%rbp),%edx
     8f2:	89 d0                	mov    %edx,%eax
     8f4:	c1 e0 02             	shl    $0x2,%eax
     8f7:	01 d0                	add    %edx,%eax
     8f9:	01 c0                	add    %eax,%eax
     8fb:	89 c2                	mov    %eax,%edx
     8fd:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
     901:	83 e8 30             	sub    $0x30,%eax
     904:	01 d0                	add    %edx,%eax
     906:	89 45 fc             	mov    %eax,-0x4(%rbp)
     909:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     90d:	48 8b 00             	mov    (%rax),%rax
     910:	0f b6 00             	movzbl (%rax),%eax
     913:	88 45 fb             	mov    %al,-0x5(%rbp)
     916:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
     91a:	7e 13                	jle    92f <skip_atoi+0x7b>
     91c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     920:	48 8b 00             	mov    (%rax),%rax
     923:	0f b6 00             	movzbl (%rax),%eax
     926:	88 45 fb             	mov    %al,-0x5(%rbp)
     929:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
     92d:	7e ae                	jle    8dd <skip_atoi+0x29>
     92f:	8b 45 fc             	mov    -0x4(%rbp),%eax
     932:	5d                   	pop    %rbp
     933:	c3                   	ret

0000000000000934 <number>:
     934:	f3 0f 1e fa          	endbr64
     938:	55                   	push   %rbp
     939:	48 89 e5             	mov    %rsp,%rbp
     93c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 93c <number+0x8>
     943:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     94a:	00 00 00 
     94d:	4c 01 d8             	add    %r11,%rax
     950:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     954:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     958:	89 55 9c             	mov    %edx,-0x64(%rbp)
     95b:	89 4d 98             	mov    %ecx,-0x68(%rbp)
     95e:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
     962:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
     966:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     96d:	00 00 00 
     970:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
     974:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     978:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     97f:	8b 55 90             	mov    -0x70(%rbp),%edx
     982:	83 e2 40             	and    $0x40,%edx
     985:	85 d2                	test   %edx,%edx
     987:	74 12                	je     99b <number+0x67>
     989:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     990:	00 00 00 
     993:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
     997:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     99b:	8b 45 90             	mov    -0x70(%rbp),%eax
     99e:	83 e0 10             	and    $0x10,%eax
     9a1:	85 c0                	test   %eax,%eax
     9a3:	74 04                	je     9a9 <number+0x75>
     9a5:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
     9a9:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
     9ad:	7e 06                	jle    9b5 <number+0x81>
     9af:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
     9b3:	7e 0a                	jle    9bf <number+0x8b>
     9b5:	b8 00 00 00 00       	mov    $0x0,%eax
     9ba:	e9 0f 02 00 00       	jmp    bce <number+0x29a>
     9bf:	8b 45 90             	mov    -0x70(%rbp),%eax
     9c2:	83 e0 01             	and    $0x1,%eax
     9c5:	85 c0                	test   %eax,%eax
     9c7:	74 07                	je     9d0 <number+0x9c>
     9c9:	b8 30 00 00 00       	mov    $0x30,%eax
     9ce:	eb 05                	jmp    9d5 <number+0xa1>
     9d0:	b8 20 00 00 00       	mov    $0x20,%eax
     9d5:	88 45 eb             	mov    %al,-0x15(%rbp)
     9d8:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
     9dc:	8b 45 90             	mov    -0x70(%rbp),%eax
     9df:	83 e0 02             	and    $0x2,%eax
     9e2:	85 c0                	test   %eax,%eax
     9e4:	74 11                	je     9f7 <number+0xc3>
     9e6:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     9eb:	79 0a                	jns    9f7 <number+0xc3>
     9ed:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
     9f1:	48 f7 5d a0          	negq   -0x60(%rbp)
     9f5:	eb 1d                	jmp    a14 <number+0xe0>
     9f7:	8b 45 90             	mov    -0x70(%rbp),%eax
     9fa:	83 e0 04             	and    $0x4,%eax
     9fd:	85 c0                	test   %eax,%eax
     9ff:	75 0b                	jne    a0c <number+0xd8>
     a01:	8b 45 90             	mov    -0x70(%rbp),%eax
     a04:	c1 e0 02             	shl    $0x2,%eax
     a07:	83 e0 20             	and    $0x20,%eax
     a0a:	eb 05                	jmp    a11 <number+0xdd>
     a0c:	b8 2b 00 00 00       	mov    $0x2b,%eax
     a11:	88 45 ff             	mov    %al,-0x1(%rbp)
     a14:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
     a18:	74 04                	je     a1e <number+0xea>
     a1a:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
     a1e:	8b 45 90             	mov    -0x70(%rbp),%eax
     a21:	83 e0 20             	and    $0x20,%eax
     a24:	85 c0                	test   %eax,%eax
     a26:	74 16                	je     a3e <number+0x10a>
     a28:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
     a2c:	75 06                	jne    a34 <number+0x100>
     a2e:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
     a32:	eb 0a                	jmp    a3e <number+0x10a>
     a34:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
     a38:	75 04                	jne    a3e <number+0x10a>
     a3a:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
     a3e:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     a43:	75 4b                	jne    a90 <number+0x15c>
     a45:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a48:	8d 50 01             	lea    0x1(%rax),%edx
     a4b:	89 55 ec             	mov    %edx,-0x14(%rbp)
     a4e:	48 98                	cltq
     a50:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
     a55:	eb 40                	jmp    a97 <number+0x163>
     a57:	8b 45 9c             	mov    -0x64(%rbp),%eax
     a5a:	48 63 c8             	movslq %eax,%rcx
     a5d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     a61:	ba 00 00 00 00       	mov    $0x0,%edx
     a66:	48 f7 f1             	div    %rcx
     a69:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     a6d:	89 55 e4             	mov    %edx,-0x1c(%rbp)
     a70:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     a73:	48 63 d0             	movslq %eax,%rdx
     a76:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     a7a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     a7e:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a81:	8d 50 01             	lea    0x1(%rax),%edx
     a84:	89 55 ec             	mov    %edx,-0x14(%rbp)
     a87:	0f b6 11             	movzbl (%rcx),%edx
     a8a:	48 98                	cltq
     a8c:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
     a90:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     a95:	75 c0                	jne    a57 <number+0x123>
     a97:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a9a:	3b 45 94             	cmp    -0x6c(%rbp),%eax
     a9d:	7e 06                	jle    aa5 <number+0x171>
     a9f:	8b 45 ec             	mov    -0x14(%rbp),%eax
     aa2:	89 45 94             	mov    %eax,-0x6c(%rbp)
     aa5:	8b 45 94             	mov    -0x6c(%rbp),%eax
     aa8:	29 45 98             	sub    %eax,-0x68(%rbp)
     aab:	8b 45 90             	mov    -0x70(%rbp),%eax
     aae:	83 e0 11             	and    $0x11,%eax
     ab1:	85 c0                	test   %eax,%eax
     ab3:	75 1e                	jne    ad3 <number+0x19f>
     ab5:	eb 0f                	jmp    ac6 <number+0x192>
     ab7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     abb:	48 8d 50 01          	lea    0x1(%rax),%rdx
     abf:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     ac3:	c6 00 20             	movb   $0x20,(%rax)
     ac6:	8b 45 98             	mov    -0x68(%rbp),%eax
     ac9:	8d 50 ff             	lea    -0x1(%rax),%edx
     acc:	89 55 98             	mov    %edx,-0x68(%rbp)
     acf:	85 c0                	test   %eax,%eax
     ad1:	7f e4                	jg     ab7 <number+0x183>
     ad3:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
     ad7:	74 12                	je     aeb <number+0x1b7>
     ad9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     add:	48 8d 50 01          	lea    0x1(%rax),%rdx
     ae1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     ae5:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
     ae9:	88 10                	mov    %dl,(%rax)
     aeb:	8b 45 90             	mov    -0x70(%rbp),%eax
     aee:	83 e0 20             	and    $0x20,%eax
     af1:	85 c0                	test   %eax,%eax
     af3:	74 45                	je     b3a <number+0x206>
     af5:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
     af9:	75 11                	jne    b0c <number+0x1d8>
     afb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     aff:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b03:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b07:	c6 00 30             	movb   $0x30,(%rax)
     b0a:	eb 2e                	jmp    b3a <number+0x206>
     b0c:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
     b10:	75 28                	jne    b3a <number+0x206>
     b12:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b16:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b1a:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b1e:	c6 00 30             	movb   $0x30,(%rax)
     b21:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     b25:	48 8d 48 21          	lea    0x21(%rax),%rcx
     b29:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b2d:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b31:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b35:	0f b6 11             	movzbl (%rcx),%edx
     b38:	88 10                	mov    %dl,(%rax)
     b3a:	8b 45 90             	mov    -0x70(%rbp),%eax
     b3d:	83 e0 10             	and    $0x10,%eax
     b40:	85 c0                	test   %eax,%eax
     b42:	75 32                	jne    b76 <number+0x242>
     b44:	eb 12                	jmp    b58 <number+0x224>
     b46:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b4a:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b4e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b52:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
     b56:	88 10                	mov    %dl,(%rax)
     b58:	8b 45 98             	mov    -0x68(%rbp),%eax
     b5b:	8d 50 ff             	lea    -0x1(%rax),%edx
     b5e:	89 55 98             	mov    %edx,-0x68(%rbp)
     b61:	85 c0                	test   %eax,%eax
     b63:	7f e1                	jg     b46 <number+0x212>
     b65:	eb 0f                	jmp    b76 <number+0x242>
     b67:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b6b:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b6f:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b73:	c6 00 30             	movb   $0x30,(%rax)
     b76:	8b 45 94             	mov    -0x6c(%rbp),%eax
     b79:	8d 50 ff             	lea    -0x1(%rax),%edx
     b7c:	89 55 94             	mov    %edx,-0x6c(%rbp)
     b7f:	39 45 ec             	cmp    %eax,-0x14(%rbp)
     b82:	7c e3                	jl     b67 <number+0x233>
     b84:	eb 19                	jmp    b9f <number+0x26b>
     b86:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b8a:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b8e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b92:	8b 55 ec             	mov    -0x14(%rbp),%edx
     b95:	48 63 d2             	movslq %edx,%rdx
     b98:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
     b9d:	88 10                	mov    %dl,(%rax)
     b9f:	8b 45 ec             	mov    -0x14(%rbp),%eax
     ba2:	8d 50 ff             	lea    -0x1(%rax),%edx
     ba5:	89 55 ec             	mov    %edx,-0x14(%rbp)
     ba8:	85 c0                	test   %eax,%eax
     baa:	7f da                	jg     b86 <number+0x252>
     bac:	eb 0f                	jmp    bbd <number+0x289>
     bae:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     bb2:	48 8d 50 01          	lea    0x1(%rax),%rdx
     bb6:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     bba:	c6 00 20             	movb   $0x20,(%rax)
     bbd:	8b 45 98             	mov    -0x68(%rbp),%eax
     bc0:	8d 50 ff             	lea    -0x1(%rax),%edx
     bc3:	89 55 98             	mov    %edx,-0x68(%rbp)
     bc6:	85 c0                	test   %eax,%eax
     bc8:	7f e4                	jg     bae <number+0x27a>
     bca:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     bce:	5d                   	pop    %rbp
     bcf:	c3                   	ret

0000000000000bd0 <vsprintf>:
     bd0:	f3 0f 1e fa          	endbr64
     bd4:	55                   	push   %rbp
     bd5:	48 89 e5             	mov    %rsp,%rbp
     bd8:	53                   	push   %rbx
     bd9:	48 83 ec 68          	sub    $0x68,%rsp
     bdd:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # bdd <vsprintf+0xd>
     be4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     beb:	00 00 00 
     bee:	4c 01 db             	add    %r11,%rbx
     bf1:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     bf5:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     bf9:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
     bfd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     c01:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     c05:	e9 f8 08 00 00       	jmp    1502 <vsprintf+0x932>
     c0a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c0e:	0f b6 00             	movzbl (%rax),%eax
     c11:	3c 25                	cmp    $0x25,%al
     c13:	74 1a                	je     c2f <vsprintf+0x5f>
     c15:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     c19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c1d:	48 8d 48 01          	lea    0x1(%rax),%rcx
     c21:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
     c25:	0f b6 12             	movzbl (%rdx),%edx
     c28:	88 10                	mov    %dl,(%rax)
     c2a:	e9 c7 08 00 00       	jmp    14f6 <vsprintf+0x926>
     c2f:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
     c36:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c3a:	48 83 c0 01          	add    $0x1,%rax
     c3e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     c42:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c46:	0f b6 00             	movzbl (%rax),%eax
     c49:	0f be c0             	movsbl %al,%eax
     c4c:	83 e8 20             	sub    $0x20,%eax
     c4f:	83 f8 10             	cmp    $0x10,%eax
     c52:	77 40                	ja     c94 <vsprintf+0xc4>
     c54:	89 c0                	mov    %eax,%eax
     c56:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     c5d:	00 
     c5e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c65 <vsprintf+0x95>
     c65:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     c69:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # c70 <vsprintf+0xa0>
     c70:	48 01 d0             	add    %rdx,%rax
     c73:	3e ff e0             	notrack jmp *%rax
     c76:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
     c7a:	eb ba                	jmp    c36 <vsprintf+0x66>
     c7c:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
     c80:	eb b4                	jmp    c36 <vsprintf+0x66>
     c82:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
     c86:	eb ae                	jmp    c36 <vsprintf+0x66>
     c88:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
     c8c:	eb a8                	jmp    c36 <vsprintf+0x66>
     c8e:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
     c92:	eb a2                	jmp    c36 <vsprintf+0x66>
     c94:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
     c9b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c9f:	0f b6 00             	movzbl (%rax),%eax
     ca2:	3c 2f                	cmp    $0x2f,%al
     ca4:	7e 27                	jle    ccd <vsprintf+0xfd>
     ca6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     caa:	0f b6 00             	movzbl (%rax),%eax
     cad:	3c 39                	cmp    $0x39,%al
     caf:	7f 1c                	jg     ccd <vsprintf+0xfd>
     cb1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
     cb5:	48 89 c7             	mov    %rax,%rdi
     cb8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cbf:	00 00 00 
     cc2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     cc6:	ff d0                	call   *%rax
     cc8:	89 45 d8             	mov    %eax,-0x28(%rbp)
     ccb:	eb 6c                	jmp    d39 <vsprintf+0x169>
     ccd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     cd1:	0f b6 00             	movzbl (%rax),%eax
     cd4:	3c 2a                	cmp    $0x2a,%al
     cd6:	75 61                	jne    d39 <vsprintf+0x169>
     cd8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     cdc:	48 83 c0 01          	add    $0x1,%rax
     ce0:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     ce4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ce8:	8b 00                	mov    (%rax),%eax
     cea:	83 f8 2f             	cmp    $0x2f,%eax
     ced:	77 24                	ja     d13 <vsprintf+0x143>
     cef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cf3:	48 8b 50 10          	mov    0x10(%rax),%rdx
     cf7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cfb:	8b 00                	mov    (%rax),%eax
     cfd:	89 c0                	mov    %eax,%eax
     cff:	48 01 d0             	add    %rdx,%rax
     d02:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d06:	8b 12                	mov    (%rdx),%edx
     d08:	8d 4a 08             	lea    0x8(%rdx),%ecx
     d0b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d0f:	89 0a                	mov    %ecx,(%rdx)
     d11:	eb 14                	jmp    d27 <vsprintf+0x157>
     d13:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     d17:	48 8b 40 08          	mov    0x8(%rax),%rax
     d1b:	48 8d 48 08          	lea    0x8(%rax),%rcx
     d1f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d23:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     d27:	8b 00                	mov    (%rax),%eax
     d29:	89 45 d8             	mov    %eax,-0x28(%rbp)
     d2c:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     d30:	79 07                	jns    d39 <vsprintf+0x169>
     d32:	f7 5d d8             	negl   -0x28(%rbp)
     d35:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
     d39:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
     d40:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d44:	0f b6 00             	movzbl (%rax),%eax
     d47:	3c 2e                	cmp    $0x2e,%al
     d49:	0f 85 aa 00 00 00    	jne    df9 <vsprintf+0x229>
     d4f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d53:	48 83 c0 01          	add    $0x1,%rax
     d57:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     d5b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d5f:	0f b6 00             	movzbl (%rax),%eax
     d62:	3c 2f                	cmp    $0x2f,%al
     d64:	7e 27                	jle    d8d <vsprintf+0x1bd>
     d66:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d6a:	0f b6 00             	movzbl (%rax),%eax
     d6d:	3c 39                	cmp    $0x39,%al
     d6f:	7f 1c                	jg     d8d <vsprintf+0x1bd>
     d71:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
     d75:	48 89 c7             	mov    %rax,%rdi
     d78:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d7f:	00 00 00 
     d82:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d86:	ff d0                	call   *%rax
     d88:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     d8b:	eb 5f                	jmp    dec <vsprintf+0x21c>
     d8d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d91:	0f b6 00             	movzbl (%rax),%eax
     d94:	3c 2a                	cmp    $0x2a,%al
     d96:	75 54                	jne    dec <vsprintf+0x21c>
     d98:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d9c:	48 83 c0 01          	add    $0x1,%rax
     da0:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     da4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     da8:	8b 00                	mov    (%rax),%eax
     daa:	83 f8 2f             	cmp    $0x2f,%eax
     dad:	77 24                	ja     dd3 <vsprintf+0x203>
     daf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     db3:	48 8b 50 10          	mov    0x10(%rax),%rdx
     db7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     dbb:	8b 00                	mov    (%rax),%eax
     dbd:	89 c0                	mov    %eax,%eax
     dbf:	48 01 d0             	add    %rdx,%rax
     dc2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     dc6:	8b 12                	mov    (%rdx),%edx
     dc8:	8d 4a 08             	lea    0x8(%rdx),%ecx
     dcb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     dcf:	89 0a                	mov    %ecx,(%rdx)
     dd1:	eb 14                	jmp    de7 <vsprintf+0x217>
     dd3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     dd7:	48 8b 40 08          	mov    0x8(%rax),%rax
     ddb:	48 8d 48 08          	lea    0x8(%rax),%rcx
     ddf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     de3:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     de7:	8b 00                	mov    (%rax),%eax
     de9:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     dec:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
     df0:	79 07                	jns    df9 <vsprintf+0x229>
     df2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
     df9:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
     e00:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e04:	0f b6 00             	movzbl (%rax),%eax
     e07:	3c 68                	cmp    $0x68,%al
     e09:	74 21                	je     e2c <vsprintf+0x25c>
     e0b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e0f:	0f b6 00             	movzbl (%rax),%eax
     e12:	3c 6c                	cmp    $0x6c,%al
     e14:	74 16                	je     e2c <vsprintf+0x25c>
     e16:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e1a:	0f b6 00             	movzbl (%rax),%eax
     e1d:	3c 4c                	cmp    $0x4c,%al
     e1f:	74 0b                	je     e2c <vsprintf+0x25c>
     e21:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e25:	0f b6 00             	movzbl (%rax),%eax
     e28:	3c 7a                	cmp    $0x7a,%al
     e2a:	75 19                	jne    e45 <vsprintf+0x275>
     e2c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e30:	0f b6 00             	movzbl (%rax),%eax
     e33:	0f be c0             	movsbl %al,%eax
     e36:	89 45 c8             	mov    %eax,-0x38(%rbp)
     e39:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e3d:	48 83 c0 01          	add    $0x1,%rax
     e41:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     e45:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e49:	0f b6 00             	movzbl (%rax),%eax
     e4c:	0f be c0             	movsbl %al,%eax
     e4f:	83 e8 25             	sub    $0x25,%eax
     e52:	83 f8 53             	cmp    $0x53,%eax
     e55:	0f 87 5d 06 00 00    	ja     14b8 <vsprintf+0x8e8>
     e5b:	89 c0                	mov    %eax,%eax
     e5d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     e64:	00 
     e65:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e6c <vsprintf+0x29c>
     e6c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     e70:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # e77 <vsprintf+0x2a7>
     e77:	48 01 d0             	add    %rdx,%rax
     e7a:	3e ff e0             	notrack jmp *%rax
     e7d:	8b 45 dc             	mov    -0x24(%rbp),%eax
     e80:	83 e0 10             	and    $0x10,%eax
     e83:	85 c0                	test   %eax,%eax
     e85:	75 1b                	jne    ea2 <vsprintf+0x2d2>
     e87:	eb 0f                	jmp    e98 <vsprintf+0x2c8>
     e89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     e8d:	48 8d 50 01          	lea    0x1(%rax),%rdx
     e91:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     e95:	c6 00 20             	movb   $0x20,(%rax)
     e98:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
     e9c:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     ea0:	7f e7                	jg     e89 <vsprintf+0x2b9>
     ea2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ea6:	8b 00                	mov    (%rax),%eax
     ea8:	83 f8 2f             	cmp    $0x2f,%eax
     eab:	77 24                	ja     ed1 <vsprintf+0x301>
     ead:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     eb1:	48 8b 50 10          	mov    0x10(%rax),%rdx
     eb5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     eb9:	8b 00                	mov    (%rax),%eax
     ebb:	89 c0                	mov    %eax,%eax
     ebd:	48 01 d0             	add    %rdx,%rax
     ec0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ec4:	8b 12                	mov    (%rdx),%edx
     ec6:	8d 4a 08             	lea    0x8(%rdx),%ecx
     ec9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ecd:	89 0a                	mov    %ecx,(%rdx)
     ecf:	eb 14                	jmp    ee5 <vsprintf+0x315>
     ed1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ed5:	48 8b 40 08          	mov    0x8(%rax),%rax
     ed9:	48 8d 48 08          	lea    0x8(%rax),%rcx
     edd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ee1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     ee5:	8b 08                	mov    (%rax),%ecx
     ee7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     eeb:	48 8d 50 01          	lea    0x1(%rax),%rdx
     eef:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     ef3:	89 ca                	mov    %ecx,%edx
     ef5:	88 10                	mov    %dl,(%rax)
     ef7:	eb 0f                	jmp    f08 <vsprintf+0x338>
     ef9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     efd:	48 8d 50 01          	lea    0x1(%rax),%rdx
     f01:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     f05:	c6 00 20             	movb   $0x20,(%rax)
     f08:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
     f0c:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     f10:	7f e7                	jg     ef9 <vsprintf+0x329>
     f12:	e9 df 05 00 00       	jmp    14f6 <vsprintf+0x926>
     f17:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f1b:	8b 00                	mov    (%rax),%eax
     f1d:	83 f8 2f             	cmp    $0x2f,%eax
     f20:	77 24                	ja     f46 <vsprintf+0x376>
     f22:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f26:	48 8b 50 10          	mov    0x10(%rax),%rdx
     f2a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f2e:	8b 00                	mov    (%rax),%eax
     f30:	89 c0                	mov    %eax,%eax
     f32:	48 01 d0             	add    %rdx,%rax
     f35:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f39:	8b 12                	mov    (%rdx),%edx
     f3b:	8d 4a 08             	lea    0x8(%rdx),%ecx
     f3e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f42:	89 0a                	mov    %ecx,(%rdx)
     f44:	eb 14                	jmp    f5a <vsprintf+0x38a>
     f46:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f4a:	48 8b 40 08          	mov    0x8(%rax),%rax
     f4e:	48 8d 48 08          	lea    0x8(%rax),%rcx
     f52:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f56:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     f5a:	48 8b 00             	mov    (%rax),%rax
     f5d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     f61:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
     f66:	75 08                	jne    f70 <vsprintf+0x3a0>
     f68:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     f6f:	00 
     f70:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     f74:	48 89 c7             	mov    %rax,%rdi
     f77:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f7e:	00 00 00 
     f81:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f85:	ff d0                	call   *%rax
     f87:	89 45 d0             	mov    %eax,-0x30(%rbp)
     f8a:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
     f8e:	79 08                	jns    f98 <vsprintf+0x3c8>
     f90:	8b 45 d0             	mov    -0x30(%rbp),%eax
     f93:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     f96:	eb 0e                	jmp    fa6 <vsprintf+0x3d6>
     f98:	8b 45 d0             	mov    -0x30(%rbp),%eax
     f9b:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
     f9e:	7e 06                	jle    fa6 <vsprintf+0x3d6>
     fa0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     fa3:	89 45 d0             	mov    %eax,-0x30(%rbp)
     fa6:	8b 45 dc             	mov    -0x24(%rbp),%eax
     fa9:	83 e0 10             	and    $0x10,%eax
     fac:	85 c0                	test   %eax,%eax
     fae:	75 1f                	jne    fcf <vsprintf+0x3ff>
     fb0:	eb 0f                	jmp    fc1 <vsprintf+0x3f1>
     fb2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fb6:	48 8d 50 01          	lea    0x1(%rax),%rdx
     fba:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     fbe:	c6 00 20             	movb   $0x20,(%rax)
     fc1:	8b 45 d8             	mov    -0x28(%rbp),%eax
     fc4:	8d 50 ff             	lea    -0x1(%rax),%edx
     fc7:	89 55 d8             	mov    %edx,-0x28(%rbp)
     fca:	39 45 d0             	cmp    %eax,-0x30(%rbp)
     fcd:	7c e3                	jl     fb2 <vsprintf+0x3e2>
     fcf:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
     fd6:	eb 21                	jmp    ff9 <vsprintf+0x429>
     fd8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     fdc:	48 8d 42 01          	lea    0x1(%rdx),%rax
     fe0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     fe4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fe8:	48 8d 48 01          	lea    0x1(%rax),%rcx
     fec:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
     ff0:	0f b6 12             	movzbl (%rdx),%edx
     ff3:	88 10                	mov    %dl,(%rax)
     ff5:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
     ff9:	8b 45 cc             	mov    -0x34(%rbp),%eax
     ffc:	3b 45 d0             	cmp    -0x30(%rbp),%eax
     fff:	7c d7                	jl     fd8 <vsprintf+0x408>
    1001:	eb 0f                	jmp    1012 <vsprintf+0x442>
    1003:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1007:	48 8d 50 01          	lea    0x1(%rax),%rdx
    100b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    100f:	c6 00 20             	movb   $0x20,(%rax)
    1012:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1015:	8d 50 ff             	lea    -0x1(%rax),%edx
    1018:	89 55 d8             	mov    %edx,-0x28(%rbp)
    101b:	39 45 d0             	cmp    %eax,-0x30(%rbp)
    101e:	7c e3                	jl     1003 <vsprintf+0x433>
    1020:	e9 d1 04 00 00       	jmp    14f6 <vsprintf+0x926>
    1025:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    1029:	0f 85 82 00 00 00    	jne    10b1 <vsprintf+0x4e1>
    102f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1033:	8b 00                	mov    (%rax),%eax
    1035:	83 f8 2f             	cmp    $0x2f,%eax
    1038:	77 24                	ja     105e <vsprintf+0x48e>
    103a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    103e:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1042:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1046:	8b 00                	mov    (%rax),%eax
    1048:	89 c0                	mov    %eax,%eax
    104a:	48 01 d0             	add    %rdx,%rax
    104d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1051:	8b 12                	mov    (%rdx),%edx
    1053:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1056:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    105a:	89 0a                	mov    %ecx,(%rdx)
    105c:	eb 14                	jmp    1072 <vsprintf+0x4a2>
    105e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1062:	48 8b 40 08          	mov    0x8(%rax),%rax
    1066:	48 8d 48 08          	lea    0x8(%rax),%rcx
    106a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    106e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1072:	48 8b 00             	mov    (%rax),%rax
    1075:	48 89 c7             	mov    %rax,%rdi
    1078:	8b 75 dc             	mov    -0x24(%rbp),%esi
    107b:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    107e:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1081:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1085:	41 89 f1             	mov    %esi,%r9d
    1088:	41 89 c8             	mov    %ecx,%r8d
    108b:	89 d1                	mov    %edx,%ecx
    108d:	ba 08 00 00 00       	mov    $0x8,%edx
    1092:	48 89 fe             	mov    %rdi,%rsi
    1095:	48 89 c7             	mov    %rax,%rdi
    1098:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    109f:	00 00 00 
    10a2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    10a6:	ff d0                	call   *%rax
    10a8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    10ac:	e9 45 04 00 00       	jmp    14f6 <vsprintf+0x926>
    10b1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10b5:	8b 00                	mov    (%rax),%eax
    10b7:	83 f8 2f             	cmp    $0x2f,%eax
    10ba:	77 24                	ja     10e0 <vsprintf+0x510>
    10bc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10c0:	48 8b 50 10          	mov    0x10(%rax),%rdx
    10c4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10c8:	8b 00                	mov    (%rax),%eax
    10ca:	89 c0                	mov    %eax,%eax
    10cc:	48 01 d0             	add    %rdx,%rax
    10cf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10d3:	8b 12                	mov    (%rdx),%edx
    10d5:	8d 4a 08             	lea    0x8(%rdx),%ecx
    10d8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10dc:	89 0a                	mov    %ecx,(%rdx)
    10de:	eb 14                	jmp    10f4 <vsprintf+0x524>
    10e0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10e4:	48 8b 40 08          	mov    0x8(%rax),%rax
    10e8:	48 8d 48 08          	lea    0x8(%rax),%rcx
    10ec:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10f0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    10f4:	8b 00                	mov    (%rax),%eax
    10f6:	89 c7                	mov    %eax,%edi
    10f8:	8b 75 dc             	mov    -0x24(%rbp),%esi
    10fb:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    10fe:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1101:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1105:	41 89 f1             	mov    %esi,%r9d
    1108:	41 89 c8             	mov    %ecx,%r8d
    110b:	89 d1                	mov    %edx,%ecx
    110d:	ba 08 00 00 00       	mov    $0x8,%edx
    1112:	48 89 fe             	mov    %rdi,%rsi
    1115:	48 89 c7             	mov    %rax,%rdi
    1118:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    111f:	00 00 00 
    1122:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1126:	ff d0                	call   *%rax
    1128:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    112c:	e9 c5 03 00 00       	jmp    14f6 <vsprintf+0x926>
    1131:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
    1135:	75 0b                	jne    1142 <vsprintf+0x572>
    1137:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
    113e:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
    1142:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1146:	8b 00                	mov    (%rax),%eax
    1148:	83 f8 2f             	cmp    $0x2f,%eax
    114b:	77 24                	ja     1171 <vsprintf+0x5a1>
    114d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1151:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1155:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1159:	8b 00                	mov    (%rax),%eax
    115b:	89 c0                	mov    %eax,%eax
    115d:	48 01 d0             	add    %rdx,%rax
    1160:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1164:	8b 12                	mov    (%rdx),%edx
    1166:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1169:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    116d:	89 0a                	mov    %ecx,(%rdx)
    116f:	eb 14                	jmp    1185 <vsprintf+0x5b5>
    1171:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1175:	48 8b 40 08          	mov    0x8(%rax),%rax
    1179:	48 8d 48 08          	lea    0x8(%rax),%rcx
    117d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1181:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1185:	48 8b 00             	mov    (%rax),%rax
    1188:	48 89 c7             	mov    %rax,%rdi
    118b:	8b 75 dc             	mov    -0x24(%rbp),%esi
    118e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1191:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1194:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1198:	41 89 f1             	mov    %esi,%r9d
    119b:	41 89 c8             	mov    %ecx,%r8d
    119e:	89 d1                	mov    %edx,%ecx
    11a0:	ba 10 00 00 00       	mov    $0x10,%edx
    11a5:	48 89 fe             	mov    %rdi,%rsi
    11a8:	48 89 c7             	mov    %rax,%rdi
    11ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11b2:	00 00 00 
    11b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11b9:	ff d0                	call   *%rax
    11bb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11bf:	e9 32 03 00 00       	jmp    14f6 <vsprintf+0x926>
    11c4:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
    11c8:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    11cc:	0f 85 82 00 00 00    	jne    1254 <vsprintf+0x684>
    11d2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11d6:	8b 00                	mov    (%rax),%eax
    11d8:	83 f8 2f             	cmp    $0x2f,%eax
    11db:	77 24                	ja     1201 <vsprintf+0x631>
    11dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11e1:	48 8b 50 10          	mov    0x10(%rax),%rdx
    11e5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11e9:	8b 00                	mov    (%rax),%eax
    11eb:	89 c0                	mov    %eax,%eax
    11ed:	48 01 d0             	add    %rdx,%rax
    11f0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    11f4:	8b 12                	mov    (%rdx),%edx
    11f6:	8d 4a 08             	lea    0x8(%rdx),%ecx
    11f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    11fd:	89 0a                	mov    %ecx,(%rdx)
    11ff:	eb 14                	jmp    1215 <vsprintf+0x645>
    1201:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1205:	48 8b 40 08          	mov    0x8(%rax),%rax
    1209:	48 8d 48 08          	lea    0x8(%rax),%rcx
    120d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1211:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1215:	48 8b 00             	mov    (%rax),%rax
    1218:	48 89 c7             	mov    %rax,%rdi
    121b:	8b 75 dc             	mov    -0x24(%rbp),%esi
    121e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1221:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1224:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1228:	41 89 f1             	mov    %esi,%r9d
    122b:	41 89 c8             	mov    %ecx,%r8d
    122e:	89 d1                	mov    %edx,%ecx
    1230:	ba 10 00 00 00       	mov    $0x10,%edx
    1235:	48 89 fe             	mov    %rdi,%rsi
    1238:	48 89 c7             	mov    %rax,%rdi
    123b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1242:	00 00 00 
    1245:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1249:	ff d0                	call   *%rax
    124b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    124f:	e9 a2 02 00 00       	jmp    14f6 <vsprintf+0x926>
    1254:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1258:	8b 00                	mov    (%rax),%eax
    125a:	83 f8 2f             	cmp    $0x2f,%eax
    125d:	77 24                	ja     1283 <vsprintf+0x6b3>
    125f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1263:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1267:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    126b:	8b 00                	mov    (%rax),%eax
    126d:	89 c0                	mov    %eax,%eax
    126f:	48 01 d0             	add    %rdx,%rax
    1272:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1276:	8b 12                	mov    (%rdx),%edx
    1278:	8d 4a 08             	lea    0x8(%rdx),%ecx
    127b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    127f:	89 0a                	mov    %ecx,(%rdx)
    1281:	eb 14                	jmp    1297 <vsprintf+0x6c7>
    1283:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1287:	48 8b 40 08          	mov    0x8(%rax),%rax
    128b:	48 8d 48 08          	lea    0x8(%rax),%rcx
    128f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1293:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1297:	8b 00                	mov    (%rax),%eax
    1299:	89 c7                	mov    %eax,%edi
    129b:	8b 75 dc             	mov    -0x24(%rbp),%esi
    129e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    12a1:	8b 55 d8             	mov    -0x28(%rbp),%edx
    12a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12a8:	41 89 f1             	mov    %esi,%r9d
    12ab:	41 89 c8             	mov    %ecx,%r8d
    12ae:	89 d1                	mov    %edx,%ecx
    12b0:	ba 10 00 00 00       	mov    $0x10,%edx
    12b5:	48 89 fe             	mov    %rdi,%rsi
    12b8:	48 89 c7             	mov    %rax,%rdi
    12bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12c2:	00 00 00 
    12c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12c9:	ff d0                	call   *%rax
    12cb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    12cf:	e9 22 02 00 00       	jmp    14f6 <vsprintf+0x926>
    12d4:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
    12d8:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    12dc:	0f 85 82 00 00 00    	jne    1364 <vsprintf+0x794>
    12e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12e6:	8b 00                	mov    (%rax),%eax
    12e8:	83 f8 2f             	cmp    $0x2f,%eax
    12eb:	77 24                	ja     1311 <vsprintf+0x741>
    12ed:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12f1:	48 8b 50 10          	mov    0x10(%rax),%rdx
    12f5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12f9:	8b 00                	mov    (%rax),%eax
    12fb:	89 c0                	mov    %eax,%eax
    12fd:	48 01 d0             	add    %rdx,%rax
    1300:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1304:	8b 12                	mov    (%rdx),%edx
    1306:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1309:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    130d:	89 0a                	mov    %ecx,(%rdx)
    130f:	eb 14                	jmp    1325 <vsprintf+0x755>
    1311:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1315:	48 8b 40 08          	mov    0x8(%rax),%rax
    1319:	48 8d 48 08          	lea    0x8(%rax),%rcx
    131d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1321:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1325:	48 8b 00             	mov    (%rax),%rax
    1328:	48 89 c7             	mov    %rax,%rdi
    132b:	8b 75 dc             	mov    -0x24(%rbp),%esi
    132e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1331:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1334:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1338:	41 89 f1             	mov    %esi,%r9d
    133b:	41 89 c8             	mov    %ecx,%r8d
    133e:	89 d1                	mov    %edx,%ecx
    1340:	ba 0a 00 00 00       	mov    $0xa,%edx
    1345:	48 89 fe             	mov    %rdi,%rsi
    1348:	48 89 c7             	mov    %rax,%rdi
    134b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1352:	00 00 00 
    1355:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1359:	ff d0                	call   *%rax
    135b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    135f:	e9 92 01 00 00       	jmp    14f6 <vsprintf+0x926>
    1364:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1368:	8b 00                	mov    (%rax),%eax
    136a:	83 f8 2f             	cmp    $0x2f,%eax
    136d:	77 24                	ja     1393 <vsprintf+0x7c3>
    136f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1373:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1377:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    137b:	8b 00                	mov    (%rax),%eax
    137d:	89 c0                	mov    %eax,%eax
    137f:	48 01 d0             	add    %rdx,%rax
    1382:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1386:	8b 12                	mov    (%rdx),%edx
    1388:	8d 4a 08             	lea    0x8(%rdx),%ecx
    138b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    138f:	89 0a                	mov    %ecx,(%rdx)
    1391:	eb 14                	jmp    13a7 <vsprintf+0x7d7>
    1393:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1397:	48 8b 40 08          	mov    0x8(%rax),%rax
    139b:	48 8d 48 08          	lea    0x8(%rax),%rcx
    139f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    13a3:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    13a7:	8b 00                	mov    (%rax),%eax
    13a9:	89 c7                	mov    %eax,%edi
    13ab:	8b 75 dc             	mov    -0x24(%rbp),%esi
    13ae:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    13b1:	8b 55 d8             	mov    -0x28(%rbp),%edx
    13b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13b8:	41 89 f1             	mov    %esi,%r9d
    13bb:	41 89 c8             	mov    %ecx,%r8d
    13be:	89 d1                	mov    %edx,%ecx
    13c0:	ba 0a 00 00 00       	mov    $0xa,%edx
    13c5:	48 89 fe             	mov    %rdi,%rsi
    13c8:	48 89 c7             	mov    %rax,%rdi
    13cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    13d2:	00 00 00 
    13d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    13d9:	ff d0                	call   *%rax
    13db:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13df:	e9 12 01 00 00       	jmp    14f6 <vsprintf+0x926>
    13e4:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    13e8:	75 61                	jne    144b <vsprintf+0x87b>
    13ea:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    13ee:	8b 00                	mov    (%rax),%eax
    13f0:	83 f8 2f             	cmp    $0x2f,%eax
    13f3:	77 24                	ja     1419 <vsprintf+0x849>
    13f5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    13f9:	48 8b 50 10          	mov    0x10(%rax),%rdx
    13fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1401:	8b 00                	mov    (%rax),%eax
    1403:	89 c0                	mov    %eax,%eax
    1405:	48 01 d0             	add    %rdx,%rax
    1408:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    140c:	8b 12                	mov    (%rdx),%edx
    140e:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1411:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1415:	89 0a                	mov    %ecx,(%rdx)
    1417:	eb 14                	jmp    142d <vsprintf+0x85d>
    1419:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    141d:	48 8b 40 08          	mov    0x8(%rax),%rax
    1421:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1425:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1429:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    142d:	48 8b 00             	mov    (%rax),%rax
    1430:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1434:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1438:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    143c:	48 89 c2             	mov    %rax,%rdx
    143f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1443:	48 89 10             	mov    %rdx,(%rax)
    1446:	e9 ab 00 00 00       	jmp    14f6 <vsprintf+0x926>
    144b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    144f:	8b 00                	mov    (%rax),%eax
    1451:	83 f8 2f             	cmp    $0x2f,%eax
    1454:	77 24                	ja     147a <vsprintf+0x8aa>
    1456:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    145a:	48 8b 50 10          	mov    0x10(%rax),%rdx
    145e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1462:	8b 00                	mov    (%rax),%eax
    1464:	89 c0                	mov    %eax,%eax
    1466:	48 01 d0             	add    %rdx,%rax
    1469:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    146d:	8b 12                	mov    (%rdx),%edx
    146f:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1472:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1476:	89 0a                	mov    %ecx,(%rdx)
    1478:	eb 14                	jmp    148e <vsprintf+0x8be>
    147a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    147e:	48 8b 40 08          	mov    0x8(%rax),%rax
    1482:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1486:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    148a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    148e:	48 8b 00             	mov    (%rax),%rax
    1491:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1495:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1499:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    149d:	89 c2                	mov    %eax,%edx
    149f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    14a3:	89 10                	mov    %edx,(%rax)
    14a5:	eb 4f                	jmp    14f6 <vsprintf+0x926>
    14a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14ab:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14af:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14b3:	c6 00 25             	movb   $0x25,(%rax)
    14b6:	eb 3e                	jmp    14f6 <vsprintf+0x926>
    14b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14bc:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14c0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14c4:	c6 00 25             	movb   $0x25,(%rax)
    14c7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14cb:	0f b6 00             	movzbl (%rax),%eax
    14ce:	84 c0                	test   %al,%al
    14d0:	74 17                	je     14e9 <vsprintf+0x919>
    14d2:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    14d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14da:	48 8d 48 01          	lea    0x1(%rax),%rcx
    14de:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    14e2:	0f b6 12             	movzbl (%rdx),%edx
    14e5:	88 10                	mov    %dl,(%rax)
    14e7:	eb 0c                	jmp    14f5 <vsprintf+0x925>
    14e9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14ed:	48 83 e8 01          	sub    $0x1,%rax
    14f1:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    14f5:	90                   	nop
    14f6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14fa:	48 83 c0 01          	add    $0x1,%rax
    14fe:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1502:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1506:	0f b6 00             	movzbl (%rax),%eax
    1509:	84 c0                	test   %al,%al
    150b:	0f 85 f9 f6 ff ff    	jne    c0a <vsprintf+0x3a>
    1511:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1515:	c6 00 00             	movb   $0x0,(%rax)
    1518:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    151c:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    1520:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1524:	c9                   	leave
    1525:	c3                   	ret
