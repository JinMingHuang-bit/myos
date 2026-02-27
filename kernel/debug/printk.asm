
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
     106:	d1 7d e4             	sarl   -0x1c(%rbp)
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
     250:	e9 83 04 00 00       	jmp    6d8 <color_printk+0x588>
     255:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
     25c:	7e 0c                	jle    26a <color_printk+0x11a>
     25e:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
     265:	e9 47 02 00 00       	jmp    4b1 <color_printk+0x361>
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
     2bc:	e9 6c 03 00 00       	jmp    62d <color_printk+0x4dd>
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
     459:	e9 cf 01 00 00       	jmp    62d <color_printk+0x4dd>
     45e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     464:	48 63 d0             	movslq %eax,%rdx
     467:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     46e:	00 00 00 
     471:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     475:	48 01 d0             	add    %rdx,%rax
     478:	0f b6 00             	movzbl (%rax),%eax
     47b:	3c 09                	cmp    $0x9,%al
     47d:	0f 85 e5 00 00 00    	jne    568 <color_printk+0x418>
     483:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     48a:	00 00 00 
     48d:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     491:	83 c0 08             	add    $0x8,%eax
     494:	83 e0 f8             	and    $0xfffffff8,%eax
     497:	89 c2                	mov    %eax,%edx
     499:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4a0:	00 00 00 
     4a3:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
     4a7:	89 d0                	mov    %edx,%eax
     4a9:	29 c8                	sub    %ecx,%eax
     4ab:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
     4b1:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
     4b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4bf:	00 00 00 
     4c2:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
     4c6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4cd:	00 00 00 
     4d0:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     4d4:	89 d1                	mov    %edx,%ecx
     4d6:	0f af c8             	imul   %eax,%ecx
     4d9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4e0:	00 00 00 
     4e3:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
     4e7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4ee:	00 00 00 
     4f1:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     4f5:	0f af d0             	imul   %eax,%edx
     4f8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4ff:	00 00 00 
     502:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     505:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     50c:	00 00 00 
     50f:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     514:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
     51b:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
     521:	48 83 ec 08          	sub    $0x8,%rsp
     525:	6a 20                	push   $0x20
     527:	45 89 c1             	mov    %r8d,%r9d
     52a:	41 89 f8             	mov    %edi,%r8d
     52d:	48 89 c7             	mov    %rax,%rdi
     530:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     537:	00 00 00 
     53a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     53e:	ff d0                	call   *%rax
     540:	48 83 c4 10          	add    $0x10,%rsp
     544:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     54b:	00 00 00 
     54e:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     552:	8d 50 01             	lea    0x1(%rax),%edx
     555:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     55c:	00 00 00 
     55f:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
     563:	e9 c5 00 00 00       	jmp    62d <color_printk+0x4dd>
     568:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     56e:	48 63 d0             	movslq %eax,%rdx
     571:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     578:	00 00 00 
     57b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     57f:	48 01 d0             	add    %rdx,%rax
     582:	0f b6 00             	movzbl (%rax),%eax
     585:	0f b6 f8             	movzbl %al,%edi
     588:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     58f:	00 00 00 
     592:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
     596:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     59d:	00 00 00 
     5a0:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     5a4:	89 d1                	mov    %edx,%ecx
     5a6:	0f af c8             	imul   %eax,%ecx
     5a9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5b0:	00 00 00 
     5b3:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
     5b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5be:	00 00 00 
     5c1:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     5c5:	0f af d0             	imul   %eax,%edx
     5c8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5cf:	00 00 00 
     5d2:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     5d5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5dc:	00 00 00 
     5df:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     5e4:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
     5eb:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
     5f2:	48 83 ec 08          	sub    $0x8,%rsp
     5f6:	57                   	push   %rdi
     5f7:	48 89 c7             	mov    %rax,%rdi
     5fa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     601:	00 00 00 
     604:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     608:	ff d0                	call   *%rax
     60a:	48 83 c4 10          	add    $0x10,%rsp
     60e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     615:	00 00 00 
     618:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
     61c:	8d 50 01             	lea    0x1(%rax),%edx
     61f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     626:	00 00 00 
     629:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
     62d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     634:	00 00 00 
     637:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
     63b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     642:	00 00 00 
     645:	8b 04 03             	mov    (%rbx,%rax,1),%eax
     648:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     64f:	00 00 00 
     652:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
     656:	99                   	cltd   
     657:	f7 fe                	idiv   %esi
     659:	39 c1                	cmp    %eax,%ecx
     65b:	7c 31                	jl     68e <color_printk+0x53e>
     65d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     664:	00 00 00 
     667:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
     66b:	8d 50 01             	lea    0x1(%rax),%edx
     66e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     675:	00 00 00 
     678:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
     67c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     683:	00 00 00 
     686:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
     68d:	00 
     68e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     695:	00 00 00 
     698:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
     69c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6a3:	00 00 00 
     6a6:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
     6aa:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     6b1:	00 00 00 
     6b4:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
     6b8:	99                   	cltd   
     6b9:	f7 ff                	idiv   %edi
     6bb:	39 c1                	cmp    %eax,%ecx
     6bd:	7c 12                	jl     6d1 <color_printk+0x581>
     6bf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6c6:	00 00 00 
     6c9:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
     6d0:	00 
     6d1:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
     6d8:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
     6de:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
     6e4:	0f 8c 6b fb ff ff    	jl     255 <color_printk+0x105>
     6ea:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
     6f1:	0f 85 5e fb ff ff    	jne    255 <color_printk+0x105>
     6f7:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
     6fd:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     701:	c9                   	leave  
     702:	c3                   	ret    

0000000000000703 <clear_screen>:
     703:	f3 0f 1e fa          	endbr64 
     707:	55                   	push   %rbp
     708:	48 89 e5             	mov    %rsp,%rbp
     70b:	53                   	push   %rbx
     70c:	48 83 ec 18          	sub    $0x18,%rsp
     710:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 710 <clear_screen+0xd>
     717:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     71e:	00 00 00 
     721:	4c 01 db             	add    %r11,%rbx
     724:	89 7d e4             	mov    %edi,-0x1c(%rbp)
     727:	89 75 e0             	mov    %esi,-0x20(%rbp)
     72a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     731:	00 00 00 
     734:	8b 04 03             	mov    (%rbx,%rax,1),%eax
     737:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     73e:	00 00 00 
     741:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
     745:	99                   	cltd   
     746:	f7 f9                	idiv   %ecx
     748:	89 45 ec             	mov    %eax,-0x14(%rbp)
     74b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     752:	00 00 00 
     755:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
     759:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     760:	00 00 00 
     763:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
     767:	99                   	cltd   
     768:	f7 fe                	idiv   %esi
     76a:	89 45 e8             	mov    %eax,-0x18(%rbp)
     76d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
     774:	e9 83 00 00 00       	jmp    7fc <clear_screen+0xf9>
     779:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
     780:	eb 6e                	jmp    7f0 <clear_screen+0xed>
     782:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     789:	00 00 00 
     78c:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
     790:	0f af 45 f4          	imul   -0xc(%rbp),%eax
     794:	89 c1                	mov    %eax,%ecx
     796:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     79d:	00 00 00 
     7a0:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
     7a4:	0f af 45 f0          	imul   -0x10(%rbp),%eax
     7a8:	89 c2                	mov    %eax,%edx
     7aa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7b1:	00 00 00 
     7b4:	8b 34 03             	mov    (%rbx,%rax,1),%esi
     7b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7be:	00 00 00 
     7c1:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
     7c6:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
     7ca:	8b 7d e4             	mov    -0x1c(%rbp),%edi
     7cd:	6a 20                	push   $0x20
     7cf:	45 89 c1             	mov    %r8d,%r9d
     7d2:	41 89 f8             	mov    %edi,%r8d
     7d5:	48 89 c7             	mov    %rax,%rdi
     7d8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7df:	00 00 00 
     7e2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     7e6:	ff d0                	call   *%rax
     7e8:	48 83 c4 08          	add    $0x8,%rsp
     7ec:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
     7f0:	8b 45 f0             	mov    -0x10(%rbp),%eax
     7f3:	3b 45 ec             	cmp    -0x14(%rbp),%eax
     7f6:	7c 8a                	jl     782 <clear_screen+0x7f>
     7f8:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
     7fc:	8b 45 f4             	mov    -0xc(%rbp),%eax
     7ff:	3b 45 e8             	cmp    -0x18(%rbp),%eax
     802:	0f 8c 71 ff ff ff    	jl     779 <clear_screen+0x76>
     808:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     80f:	00 00 00 
     812:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
     819:	00 
     81a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     821:	00 00 00 
     824:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
     82b:	00 
     82c:	90                   	nop
     82d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
     831:	c9                   	leave  
     832:	c3                   	ret    

0000000000000833 <skip_atoi2>:
     833:	f3 0f 1e fa          	endbr64 
     837:	55                   	push   %rbp
     838:	48 89 e5             	mov    %rsp,%rbp
     83b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 83b <skip_atoi2+0x8>
     842:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     849:	00 00 00 
     84c:	4c 01 d8             	add    %r11,%rax
     84f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     853:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     85a:	eb 39                	jmp    895 <skip_atoi2+0x62>
     85c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     860:	48 8b 00             	mov    (%rax),%rax
     863:	0f b6 00             	movzbl (%rax),%eax
     866:	88 45 fb             	mov    %al,-0x5(%rbp)
     869:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     86d:	48 8b 00             	mov    (%rax),%rax
     870:	48 8d 50 01          	lea    0x1(%rax),%rdx
     874:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     878:	48 89 10             	mov    %rdx,(%rax)
     87b:	8b 55 fc             	mov    -0x4(%rbp),%edx
     87e:	89 d0                	mov    %edx,%eax
     880:	c1 e0 02             	shl    $0x2,%eax
     883:	01 d0                	add    %edx,%eax
     885:	01 c0                	add    %eax,%eax
     887:	89 c2                	mov    %eax,%edx
     889:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
     88d:	83 e8 30             	sub    $0x30,%eax
     890:	01 d0                	add    %edx,%eax
     892:	89 45 fc             	mov    %eax,-0x4(%rbp)
     895:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     899:	48 8b 00             	mov    (%rax),%rax
     89c:	0f b6 00             	movzbl (%rax),%eax
     89f:	3c 2f                	cmp    $0x2f,%al
     8a1:	7e 0e                	jle    8b1 <skip_atoi2+0x7e>
     8a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8a7:	48 8b 00             	mov    (%rax),%rax
     8aa:	0f b6 00             	movzbl (%rax),%eax
     8ad:	3c 39                	cmp    $0x39,%al
     8af:	7e ab                	jle    85c <skip_atoi2+0x29>
     8b1:	8b 45 fc             	mov    -0x4(%rbp),%eax
     8b4:	5d                   	pop    %rbp
     8b5:	c3                   	ret    

00000000000008b6 <skip_atoi>:
     8b6:	f3 0f 1e fa          	endbr64 
     8ba:	55                   	push   %rbp
     8bb:	48 89 e5             	mov    %rsp,%rbp
     8be:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8be <skip_atoi+0x8>
     8c5:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     8cc:	00 00 00 
     8cf:	4c 01 d8             	add    %r11,%rax
     8d2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     8d6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     8dd:	eb 2c                	jmp    90b <skip_atoi+0x55>
     8df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8e3:	48 8b 00             	mov    (%rax),%rax
     8e6:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     8ee:	48 89 10             	mov    %rdx,(%rax)
     8f1:	8b 55 fc             	mov    -0x4(%rbp),%edx
     8f4:	89 d0                	mov    %edx,%eax
     8f6:	c1 e0 02             	shl    $0x2,%eax
     8f9:	01 d0                	add    %edx,%eax
     8fb:	01 c0                	add    %eax,%eax
     8fd:	89 c2                	mov    %eax,%edx
     8ff:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
     903:	83 e8 30             	sub    $0x30,%eax
     906:	01 d0                	add    %edx,%eax
     908:	89 45 fc             	mov    %eax,-0x4(%rbp)
     90b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     90f:	48 8b 00             	mov    (%rax),%rax
     912:	0f b6 00             	movzbl (%rax),%eax
     915:	88 45 fb             	mov    %al,-0x5(%rbp)
     918:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
     91c:	7e 13                	jle    931 <skip_atoi+0x7b>
     91e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     922:	48 8b 00             	mov    (%rax),%rax
     925:	0f b6 00             	movzbl (%rax),%eax
     928:	88 45 fb             	mov    %al,-0x5(%rbp)
     92b:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
     92f:	7e ae                	jle    8df <skip_atoi+0x29>
     931:	8b 45 fc             	mov    -0x4(%rbp),%eax
     934:	5d                   	pop    %rbp
     935:	c3                   	ret    

0000000000000936 <number>:
     936:	f3 0f 1e fa          	endbr64 
     93a:	55                   	push   %rbp
     93b:	48 89 e5             	mov    %rsp,%rbp
     93e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 93e <number+0x8>
     945:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     94c:	00 00 00 
     94f:	4c 01 d8             	add    %r11,%rax
     952:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     956:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     95a:	89 55 9c             	mov    %edx,-0x64(%rbp)
     95d:	89 4d 98             	mov    %ecx,-0x68(%rbp)
     960:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
     964:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
     968:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     96f:	00 00 00 
     972:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
     976:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     97a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     981:	8b 55 90             	mov    -0x70(%rbp),%edx
     984:	83 e2 40             	and    $0x40,%edx
     987:	85 d2                	test   %edx,%edx
     989:	74 12                	je     99d <number+0x67>
     98b:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     992:	00 00 00 
     995:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
     999:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
     99d:	8b 45 90             	mov    -0x70(%rbp),%eax
     9a0:	83 e0 10             	and    $0x10,%eax
     9a3:	85 c0                	test   %eax,%eax
     9a5:	74 04                	je     9ab <number+0x75>
     9a7:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
     9ab:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
     9af:	7e 06                	jle    9b7 <number+0x81>
     9b1:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
     9b5:	7e 0a                	jle    9c1 <number+0x8b>
     9b7:	b8 00 00 00 00       	mov    $0x0,%eax
     9bc:	e9 0f 02 00 00       	jmp    bd0 <number+0x29a>
     9c1:	8b 45 90             	mov    -0x70(%rbp),%eax
     9c4:	83 e0 01             	and    $0x1,%eax
     9c7:	85 c0                	test   %eax,%eax
     9c9:	74 07                	je     9d2 <number+0x9c>
     9cb:	b8 30 00 00 00       	mov    $0x30,%eax
     9d0:	eb 05                	jmp    9d7 <number+0xa1>
     9d2:	b8 20 00 00 00       	mov    $0x20,%eax
     9d7:	88 45 eb             	mov    %al,-0x15(%rbp)
     9da:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
     9de:	8b 45 90             	mov    -0x70(%rbp),%eax
     9e1:	83 e0 02             	and    $0x2,%eax
     9e4:	85 c0                	test   %eax,%eax
     9e6:	74 11                	je     9f9 <number+0xc3>
     9e8:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     9ed:	79 0a                	jns    9f9 <number+0xc3>
     9ef:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
     9f3:	48 f7 5d a0          	negq   -0x60(%rbp)
     9f7:	eb 1d                	jmp    a16 <number+0xe0>
     9f9:	8b 45 90             	mov    -0x70(%rbp),%eax
     9fc:	83 e0 04             	and    $0x4,%eax
     9ff:	85 c0                	test   %eax,%eax
     a01:	75 0b                	jne    a0e <number+0xd8>
     a03:	8b 45 90             	mov    -0x70(%rbp),%eax
     a06:	c1 e0 02             	shl    $0x2,%eax
     a09:	83 e0 20             	and    $0x20,%eax
     a0c:	eb 05                	jmp    a13 <number+0xdd>
     a0e:	b8 2b 00 00 00       	mov    $0x2b,%eax
     a13:	88 45 ff             	mov    %al,-0x1(%rbp)
     a16:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
     a1a:	74 04                	je     a20 <number+0xea>
     a1c:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
     a20:	8b 45 90             	mov    -0x70(%rbp),%eax
     a23:	83 e0 20             	and    $0x20,%eax
     a26:	85 c0                	test   %eax,%eax
     a28:	74 16                	je     a40 <number+0x10a>
     a2a:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
     a2e:	75 06                	jne    a36 <number+0x100>
     a30:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
     a34:	eb 0a                	jmp    a40 <number+0x10a>
     a36:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
     a3a:	75 04                	jne    a40 <number+0x10a>
     a3c:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
     a40:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     a45:	75 4b                	jne    a92 <number+0x15c>
     a47:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a4a:	8d 50 01             	lea    0x1(%rax),%edx
     a4d:	89 55 ec             	mov    %edx,-0x14(%rbp)
     a50:	48 98                	cltq   
     a52:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
     a57:	eb 40                	jmp    a99 <number+0x163>
     a59:	8b 45 9c             	mov    -0x64(%rbp),%eax
     a5c:	48 63 c8             	movslq %eax,%rcx
     a5f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     a63:	ba 00 00 00 00       	mov    $0x0,%edx
     a68:	48 f7 f1             	div    %rcx
     a6b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     a6f:	89 55 e4             	mov    %edx,-0x1c(%rbp)
     a72:	8b 45 e4             	mov    -0x1c(%rbp),%eax
     a75:	48 63 d0             	movslq %eax,%rdx
     a78:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     a7c:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     a80:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a83:	8d 50 01             	lea    0x1(%rax),%edx
     a86:	89 55 ec             	mov    %edx,-0x14(%rbp)
     a89:	0f b6 11             	movzbl (%rcx),%edx
     a8c:	48 98                	cltq   
     a8e:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
     a92:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
     a97:	75 c0                	jne    a59 <number+0x123>
     a99:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a9c:	3b 45 94             	cmp    -0x6c(%rbp),%eax
     a9f:	7e 06                	jle    aa7 <number+0x171>
     aa1:	8b 45 ec             	mov    -0x14(%rbp),%eax
     aa4:	89 45 94             	mov    %eax,-0x6c(%rbp)
     aa7:	8b 45 94             	mov    -0x6c(%rbp),%eax
     aaa:	29 45 98             	sub    %eax,-0x68(%rbp)
     aad:	8b 45 90             	mov    -0x70(%rbp),%eax
     ab0:	83 e0 11             	and    $0x11,%eax
     ab3:	85 c0                	test   %eax,%eax
     ab5:	75 1e                	jne    ad5 <number+0x19f>
     ab7:	eb 0f                	jmp    ac8 <number+0x192>
     ab9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     abd:	48 8d 50 01          	lea    0x1(%rax),%rdx
     ac1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     ac5:	c6 00 20             	movb   $0x20,(%rax)
     ac8:	8b 45 98             	mov    -0x68(%rbp),%eax
     acb:	8d 50 ff             	lea    -0x1(%rax),%edx
     ace:	89 55 98             	mov    %edx,-0x68(%rbp)
     ad1:	85 c0                	test   %eax,%eax
     ad3:	7f e4                	jg     ab9 <number+0x183>
     ad5:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
     ad9:	74 12                	je     aed <number+0x1b7>
     adb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     adf:	48 8d 50 01          	lea    0x1(%rax),%rdx
     ae3:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     ae7:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
     aeb:	88 10                	mov    %dl,(%rax)
     aed:	8b 45 90             	mov    -0x70(%rbp),%eax
     af0:	83 e0 20             	and    $0x20,%eax
     af3:	85 c0                	test   %eax,%eax
     af5:	74 45                	je     b3c <number+0x206>
     af7:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
     afb:	75 11                	jne    b0e <number+0x1d8>
     afd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b01:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b05:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b09:	c6 00 30             	movb   $0x30,(%rax)
     b0c:	eb 2e                	jmp    b3c <number+0x206>
     b0e:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
     b12:	75 28                	jne    b3c <number+0x206>
     b14:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b18:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b1c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b20:	c6 00 30             	movb   $0x30,(%rax)
     b23:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
     b27:	48 8d 48 21          	lea    0x21(%rax),%rcx
     b2b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b2f:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b33:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b37:	0f b6 11             	movzbl (%rcx),%edx
     b3a:	88 10                	mov    %dl,(%rax)
     b3c:	8b 45 90             	mov    -0x70(%rbp),%eax
     b3f:	83 e0 10             	and    $0x10,%eax
     b42:	85 c0                	test   %eax,%eax
     b44:	75 32                	jne    b78 <number+0x242>
     b46:	eb 12                	jmp    b5a <number+0x224>
     b48:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b4c:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b50:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b54:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
     b58:	88 10                	mov    %dl,(%rax)
     b5a:	8b 45 98             	mov    -0x68(%rbp),%eax
     b5d:	8d 50 ff             	lea    -0x1(%rax),%edx
     b60:	89 55 98             	mov    %edx,-0x68(%rbp)
     b63:	85 c0                	test   %eax,%eax
     b65:	7f e1                	jg     b48 <number+0x212>
     b67:	eb 0f                	jmp    b78 <number+0x242>
     b69:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b6d:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b71:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b75:	c6 00 30             	movb   $0x30,(%rax)
     b78:	8b 45 94             	mov    -0x6c(%rbp),%eax
     b7b:	8d 50 ff             	lea    -0x1(%rax),%edx
     b7e:	89 55 94             	mov    %edx,-0x6c(%rbp)
     b81:	39 45 ec             	cmp    %eax,-0x14(%rbp)
     b84:	7c e3                	jl     b69 <number+0x233>
     b86:	eb 19                	jmp    ba1 <number+0x26b>
     b88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     b8c:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b90:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     b94:	8b 55 ec             	mov    -0x14(%rbp),%edx
     b97:	48 63 d2             	movslq %edx,%rdx
     b9a:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
     b9f:	88 10                	mov    %dl,(%rax)
     ba1:	8b 45 ec             	mov    -0x14(%rbp),%eax
     ba4:	8d 50 ff             	lea    -0x1(%rax),%edx
     ba7:	89 55 ec             	mov    %edx,-0x14(%rbp)
     baa:	85 c0                	test   %eax,%eax
     bac:	7f da                	jg     b88 <number+0x252>
     bae:	eb 0f                	jmp    bbf <number+0x289>
     bb0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     bb4:	48 8d 50 01          	lea    0x1(%rax),%rdx
     bb8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
     bbc:	c6 00 20             	movb   $0x20,(%rax)
     bbf:	8b 45 98             	mov    -0x68(%rbp),%eax
     bc2:	8d 50 ff             	lea    -0x1(%rax),%edx
     bc5:	89 55 98             	mov    %edx,-0x68(%rbp)
     bc8:	85 c0                	test   %eax,%eax
     bca:	7f e4                	jg     bb0 <number+0x27a>
     bcc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     bd0:	5d                   	pop    %rbp
     bd1:	c3                   	ret    

0000000000000bd2 <vsprintf>:
     bd2:	f3 0f 1e fa          	endbr64 
     bd6:	55                   	push   %rbp
     bd7:	48 89 e5             	mov    %rsp,%rbp
     bda:	53                   	push   %rbx
     bdb:	48 83 ec 68          	sub    $0x68,%rsp
     bdf:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # bdf <vsprintf+0xd>
     be6:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     bed:	00 00 00 
     bf0:	4c 01 db             	add    %r11,%rbx
     bf3:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
     bf7:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
     bfb:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
     bff:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     c03:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     c07:	e9 f8 08 00 00       	jmp    1504 <vsprintf+0x932>
     c0c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c10:	0f b6 00             	movzbl (%rax),%eax
     c13:	3c 25                	cmp    $0x25,%al
     c15:	74 1a                	je     c31 <vsprintf+0x5f>
     c17:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     c1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     c1f:	48 8d 48 01          	lea    0x1(%rax),%rcx
     c23:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
     c27:	0f b6 12             	movzbl (%rdx),%edx
     c2a:	88 10                	mov    %dl,(%rax)
     c2c:	e9 c7 08 00 00       	jmp    14f8 <vsprintf+0x926>
     c31:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
     c38:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c3c:	48 83 c0 01          	add    $0x1,%rax
     c40:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     c44:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c48:	0f b6 00             	movzbl (%rax),%eax
     c4b:	0f be c0             	movsbl %al,%eax
     c4e:	83 e8 20             	sub    $0x20,%eax
     c51:	83 f8 10             	cmp    $0x10,%eax
     c54:	77 40                	ja     c96 <vsprintf+0xc4>
     c56:	89 c0                	mov    %eax,%eax
     c58:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     c5f:	00 
     c60:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # c67 <vsprintf+0x95>
     c67:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     c6b:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # c72 <vsprintf+0xa0>
     c72:	48 01 d0             	add    %rdx,%rax
     c75:	3e ff e0             	notrack jmp *%rax
     c78:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
     c7c:	eb ba                	jmp    c38 <vsprintf+0x66>
     c7e:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
     c82:	eb b4                	jmp    c38 <vsprintf+0x66>
     c84:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
     c88:	eb ae                	jmp    c38 <vsprintf+0x66>
     c8a:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
     c8e:	eb a8                	jmp    c38 <vsprintf+0x66>
     c90:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
     c94:	eb a2                	jmp    c38 <vsprintf+0x66>
     c96:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
     c9d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     ca1:	0f b6 00             	movzbl (%rax),%eax
     ca4:	3c 2f                	cmp    $0x2f,%al
     ca6:	7e 27                	jle    ccf <vsprintf+0xfd>
     ca8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     cac:	0f b6 00             	movzbl (%rax),%eax
     caf:	3c 39                	cmp    $0x39,%al
     cb1:	7f 1c                	jg     ccf <vsprintf+0xfd>
     cb3:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
     cb7:	48 89 c7             	mov    %rax,%rdi
     cba:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cc1:	00 00 00 
     cc4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     cc8:	ff d0                	call   *%rax
     cca:	89 45 d8             	mov    %eax,-0x28(%rbp)
     ccd:	eb 6c                	jmp    d3b <vsprintf+0x169>
     ccf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     cd3:	0f b6 00             	movzbl (%rax),%eax
     cd6:	3c 2a                	cmp    $0x2a,%al
     cd8:	75 61                	jne    d3b <vsprintf+0x169>
     cda:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     cde:	48 83 c0 01          	add    $0x1,%rax
     ce2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     ce6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cea:	8b 00                	mov    (%rax),%eax
     cec:	83 f8 2f             	cmp    $0x2f,%eax
     cef:	77 24                	ja     d15 <vsprintf+0x143>
     cf1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cf5:	48 8b 50 10          	mov    0x10(%rax),%rdx
     cf9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cfd:	8b 00                	mov    (%rax),%eax
     cff:	89 c0                	mov    %eax,%eax
     d01:	48 01 d0             	add    %rdx,%rax
     d04:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d08:	8b 12                	mov    (%rdx),%edx
     d0a:	8d 4a 08             	lea    0x8(%rdx),%ecx
     d0d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d11:	89 0a                	mov    %ecx,(%rdx)
     d13:	eb 14                	jmp    d29 <vsprintf+0x157>
     d15:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     d19:	48 8b 40 08          	mov    0x8(%rax),%rax
     d1d:	48 8d 48 08          	lea    0x8(%rax),%rcx
     d21:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     d25:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     d29:	8b 00                	mov    (%rax),%eax
     d2b:	89 45 d8             	mov    %eax,-0x28(%rbp)
     d2e:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     d32:	79 07                	jns    d3b <vsprintf+0x169>
     d34:	f7 5d d8             	negl   -0x28(%rbp)
     d37:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
     d3b:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
     d42:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d46:	0f b6 00             	movzbl (%rax),%eax
     d49:	3c 2e                	cmp    $0x2e,%al
     d4b:	0f 85 aa 00 00 00    	jne    dfb <vsprintf+0x229>
     d51:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d55:	48 83 c0 01          	add    $0x1,%rax
     d59:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     d5d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d61:	0f b6 00             	movzbl (%rax),%eax
     d64:	3c 2f                	cmp    $0x2f,%al
     d66:	7e 27                	jle    d8f <vsprintf+0x1bd>
     d68:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d6c:	0f b6 00             	movzbl (%rax),%eax
     d6f:	3c 39                	cmp    $0x39,%al
     d71:	7f 1c                	jg     d8f <vsprintf+0x1bd>
     d73:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
     d77:	48 89 c7             	mov    %rax,%rdi
     d7a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d81:	00 00 00 
     d84:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d88:	ff d0                	call   *%rax
     d8a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     d8d:	eb 5f                	jmp    dee <vsprintf+0x21c>
     d8f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d93:	0f b6 00             	movzbl (%rax),%eax
     d96:	3c 2a                	cmp    $0x2a,%al
     d98:	75 54                	jne    dee <vsprintf+0x21c>
     d9a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     d9e:	48 83 c0 01          	add    $0x1,%rax
     da2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     da6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     daa:	8b 00                	mov    (%rax),%eax
     dac:	83 f8 2f             	cmp    $0x2f,%eax
     daf:	77 24                	ja     dd5 <vsprintf+0x203>
     db1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     db5:	48 8b 50 10          	mov    0x10(%rax),%rdx
     db9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     dbd:	8b 00                	mov    (%rax),%eax
     dbf:	89 c0                	mov    %eax,%eax
     dc1:	48 01 d0             	add    %rdx,%rax
     dc4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     dc8:	8b 12                	mov    (%rdx),%edx
     dca:	8d 4a 08             	lea    0x8(%rdx),%ecx
     dcd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     dd1:	89 0a                	mov    %ecx,(%rdx)
     dd3:	eb 14                	jmp    de9 <vsprintf+0x217>
     dd5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     dd9:	48 8b 40 08          	mov    0x8(%rax),%rax
     ddd:	48 8d 48 08          	lea    0x8(%rax),%rcx
     de1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     de5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     de9:	8b 00                	mov    (%rax),%eax
     deb:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     dee:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
     df2:	79 07                	jns    dfb <vsprintf+0x229>
     df4:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
     dfb:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
     e02:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e06:	0f b6 00             	movzbl (%rax),%eax
     e09:	3c 68                	cmp    $0x68,%al
     e0b:	74 21                	je     e2e <vsprintf+0x25c>
     e0d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e11:	0f b6 00             	movzbl (%rax),%eax
     e14:	3c 6c                	cmp    $0x6c,%al
     e16:	74 16                	je     e2e <vsprintf+0x25c>
     e18:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e1c:	0f b6 00             	movzbl (%rax),%eax
     e1f:	3c 4c                	cmp    $0x4c,%al
     e21:	74 0b                	je     e2e <vsprintf+0x25c>
     e23:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e27:	0f b6 00             	movzbl (%rax),%eax
     e2a:	3c 7a                	cmp    $0x7a,%al
     e2c:	75 19                	jne    e47 <vsprintf+0x275>
     e2e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e32:	0f b6 00             	movzbl (%rax),%eax
     e35:	0f be c0             	movsbl %al,%eax
     e38:	89 45 c8             	mov    %eax,-0x38(%rbp)
     e3b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e3f:	48 83 c0 01          	add    $0x1,%rax
     e43:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     e47:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     e4b:	0f b6 00             	movzbl (%rax),%eax
     e4e:	0f be c0             	movsbl %al,%eax
     e51:	83 e8 25             	sub    $0x25,%eax
     e54:	83 f8 53             	cmp    $0x53,%eax
     e57:	0f 87 5d 06 00 00    	ja     14ba <vsprintf+0x8e8>
     e5d:	89 c0                	mov    %eax,%eax
     e5f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
     e66:	00 
     e67:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e6e <vsprintf+0x29c>
     e6e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
     e72:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # e79 <vsprintf+0x2a7>
     e79:	48 01 d0             	add    %rdx,%rax
     e7c:	3e ff e0             	notrack jmp *%rax
     e7f:	8b 45 dc             	mov    -0x24(%rbp),%eax
     e82:	83 e0 10             	and    $0x10,%eax
     e85:	85 c0                	test   %eax,%eax
     e87:	75 1b                	jne    ea4 <vsprintf+0x2d2>
     e89:	eb 0f                	jmp    e9a <vsprintf+0x2c8>
     e8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     e8f:	48 8d 50 01          	lea    0x1(%rax),%rdx
     e93:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     e97:	c6 00 20             	movb   $0x20,(%rax)
     e9a:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
     e9e:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     ea2:	7f e7                	jg     e8b <vsprintf+0x2b9>
     ea4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ea8:	8b 00                	mov    (%rax),%eax
     eaa:	83 f8 2f             	cmp    $0x2f,%eax
     ead:	77 24                	ja     ed3 <vsprintf+0x301>
     eaf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     eb3:	48 8b 50 10          	mov    0x10(%rax),%rdx
     eb7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ebb:	8b 00                	mov    (%rax),%eax
     ebd:	89 c0                	mov    %eax,%eax
     ebf:	48 01 d0             	add    %rdx,%rax
     ec2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ec6:	8b 12                	mov    (%rdx),%edx
     ec8:	8d 4a 08             	lea    0x8(%rdx),%ecx
     ecb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ecf:	89 0a                	mov    %ecx,(%rdx)
     ed1:	eb 14                	jmp    ee7 <vsprintf+0x315>
     ed3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     ed7:	48 8b 40 08          	mov    0x8(%rax),%rax
     edb:	48 8d 48 08          	lea    0x8(%rax),%rcx
     edf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     ee3:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     ee7:	8b 08                	mov    (%rax),%ecx
     ee9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     eed:	48 8d 50 01          	lea    0x1(%rax),%rdx
     ef1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     ef5:	89 ca                	mov    %ecx,%edx
     ef7:	88 10                	mov    %dl,(%rax)
     ef9:	eb 0f                	jmp    f0a <vsprintf+0x338>
     efb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     eff:	48 8d 50 01          	lea    0x1(%rax),%rdx
     f03:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     f07:	c6 00 20             	movb   $0x20,(%rax)
     f0a:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
     f0e:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
     f12:	7f e7                	jg     efb <vsprintf+0x329>
     f14:	e9 df 05 00 00       	jmp    14f8 <vsprintf+0x926>
     f19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f1d:	8b 00                	mov    (%rax),%eax
     f1f:	83 f8 2f             	cmp    $0x2f,%eax
     f22:	77 24                	ja     f48 <vsprintf+0x376>
     f24:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f28:	48 8b 50 10          	mov    0x10(%rax),%rdx
     f2c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f30:	8b 00                	mov    (%rax),%eax
     f32:	89 c0                	mov    %eax,%eax
     f34:	48 01 d0             	add    %rdx,%rax
     f37:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f3b:	8b 12                	mov    (%rdx),%edx
     f3d:	8d 4a 08             	lea    0x8(%rdx),%ecx
     f40:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f44:	89 0a                	mov    %ecx,(%rdx)
     f46:	eb 14                	jmp    f5c <vsprintf+0x38a>
     f48:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     f4c:	48 8b 40 08          	mov    0x8(%rax),%rax
     f50:	48 8d 48 08          	lea    0x8(%rax),%rcx
     f54:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     f58:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
     f5c:	48 8b 00             	mov    (%rax),%rax
     f5f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     f63:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
     f68:	75 08                	jne    f72 <vsprintf+0x3a0>
     f6a:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     f71:	00 
     f72:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     f76:	48 89 c7             	mov    %rax,%rdi
     f79:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f80:	00 00 00 
     f83:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f87:	ff d0                	call   *%rax
     f89:	89 45 d0             	mov    %eax,-0x30(%rbp)
     f8c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
     f90:	79 08                	jns    f9a <vsprintf+0x3c8>
     f92:	8b 45 d0             	mov    -0x30(%rbp),%eax
     f95:	89 45 d4             	mov    %eax,-0x2c(%rbp)
     f98:	eb 0e                	jmp    fa8 <vsprintf+0x3d6>
     f9a:	8b 45 d0             	mov    -0x30(%rbp),%eax
     f9d:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
     fa0:	7e 06                	jle    fa8 <vsprintf+0x3d6>
     fa2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     fa5:	89 45 d0             	mov    %eax,-0x30(%rbp)
     fa8:	8b 45 dc             	mov    -0x24(%rbp),%eax
     fab:	83 e0 10             	and    $0x10,%eax
     fae:	85 c0                	test   %eax,%eax
     fb0:	75 1f                	jne    fd1 <vsprintf+0x3ff>
     fb2:	eb 0f                	jmp    fc3 <vsprintf+0x3f1>
     fb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fb8:	48 8d 50 01          	lea    0x1(%rax),%rdx
     fbc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     fc0:	c6 00 20             	movb   $0x20,(%rax)
     fc3:	8b 45 d8             	mov    -0x28(%rbp),%eax
     fc6:	8d 50 ff             	lea    -0x1(%rax),%edx
     fc9:	89 55 d8             	mov    %edx,-0x28(%rbp)
     fcc:	39 45 d0             	cmp    %eax,-0x30(%rbp)
     fcf:	7c e3                	jl     fb4 <vsprintf+0x3e2>
     fd1:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
     fd8:	eb 21                	jmp    ffb <vsprintf+0x429>
     fda:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     fde:	48 8d 42 01          	lea    0x1(%rdx),%rax
     fe2:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     fe6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     fea:	48 8d 48 01          	lea    0x1(%rax),%rcx
     fee:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
     ff2:	0f b6 12             	movzbl (%rdx),%edx
     ff5:	88 10                	mov    %dl,(%rax)
     ff7:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
     ffb:	8b 45 cc             	mov    -0x34(%rbp),%eax
     ffe:	3b 45 d0             	cmp    -0x30(%rbp),%eax
    1001:	7c d7                	jl     fda <vsprintf+0x408>
    1003:	eb 0f                	jmp    1014 <vsprintf+0x442>
    1005:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1009:	48 8d 50 01          	lea    0x1(%rax),%rdx
    100d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1011:	c6 00 20             	movb   $0x20,(%rax)
    1014:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1017:	8d 50 ff             	lea    -0x1(%rax),%edx
    101a:	89 55 d8             	mov    %edx,-0x28(%rbp)
    101d:	39 45 d0             	cmp    %eax,-0x30(%rbp)
    1020:	7c e3                	jl     1005 <vsprintf+0x433>
    1022:	e9 d1 04 00 00       	jmp    14f8 <vsprintf+0x926>
    1027:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    102b:	0f 85 82 00 00 00    	jne    10b3 <vsprintf+0x4e1>
    1031:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1035:	8b 00                	mov    (%rax),%eax
    1037:	83 f8 2f             	cmp    $0x2f,%eax
    103a:	77 24                	ja     1060 <vsprintf+0x48e>
    103c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1040:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1044:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1048:	8b 00                	mov    (%rax),%eax
    104a:	89 c0                	mov    %eax,%eax
    104c:	48 01 d0             	add    %rdx,%rax
    104f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1053:	8b 12                	mov    (%rdx),%edx
    1055:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1058:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    105c:	89 0a                	mov    %ecx,(%rdx)
    105e:	eb 14                	jmp    1074 <vsprintf+0x4a2>
    1060:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1064:	48 8b 40 08          	mov    0x8(%rax),%rax
    1068:	48 8d 48 08          	lea    0x8(%rax),%rcx
    106c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1070:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1074:	48 8b 00             	mov    (%rax),%rax
    1077:	48 89 c7             	mov    %rax,%rdi
    107a:	8b 75 dc             	mov    -0x24(%rbp),%esi
    107d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1080:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1083:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1087:	41 89 f1             	mov    %esi,%r9d
    108a:	41 89 c8             	mov    %ecx,%r8d
    108d:	89 d1                	mov    %edx,%ecx
    108f:	ba 08 00 00 00       	mov    $0x8,%edx
    1094:	48 89 fe             	mov    %rdi,%rsi
    1097:	48 89 c7             	mov    %rax,%rdi
    109a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10a1:	00 00 00 
    10a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    10a8:	ff d0                	call   *%rax
    10aa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    10ae:	e9 45 04 00 00       	jmp    14f8 <vsprintf+0x926>
    10b3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10b7:	8b 00                	mov    (%rax),%eax
    10b9:	83 f8 2f             	cmp    $0x2f,%eax
    10bc:	77 24                	ja     10e2 <vsprintf+0x510>
    10be:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10c2:	48 8b 50 10          	mov    0x10(%rax),%rdx
    10c6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10ca:	8b 00                	mov    (%rax),%eax
    10cc:	89 c0                	mov    %eax,%eax
    10ce:	48 01 d0             	add    %rdx,%rax
    10d1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10d5:	8b 12                	mov    (%rdx),%edx
    10d7:	8d 4a 08             	lea    0x8(%rdx),%ecx
    10da:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10de:	89 0a                	mov    %ecx,(%rdx)
    10e0:	eb 14                	jmp    10f6 <vsprintf+0x524>
    10e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    10e6:	48 8b 40 08          	mov    0x8(%rax),%rax
    10ea:	48 8d 48 08          	lea    0x8(%rax),%rcx
    10ee:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    10f2:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    10f6:	8b 00                	mov    (%rax),%eax
    10f8:	89 c7                	mov    %eax,%edi
    10fa:	8b 75 dc             	mov    -0x24(%rbp),%esi
    10fd:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1100:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1103:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1107:	41 89 f1             	mov    %esi,%r9d
    110a:	41 89 c8             	mov    %ecx,%r8d
    110d:	89 d1                	mov    %edx,%ecx
    110f:	ba 08 00 00 00       	mov    $0x8,%edx
    1114:	48 89 fe             	mov    %rdi,%rsi
    1117:	48 89 c7             	mov    %rax,%rdi
    111a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1121:	00 00 00 
    1124:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1128:	ff d0                	call   *%rax
    112a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    112e:	e9 c5 03 00 00       	jmp    14f8 <vsprintf+0x926>
    1133:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
    1137:	75 0b                	jne    1144 <vsprintf+0x572>
    1139:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
    1140:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
    1144:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1148:	8b 00                	mov    (%rax),%eax
    114a:	83 f8 2f             	cmp    $0x2f,%eax
    114d:	77 24                	ja     1173 <vsprintf+0x5a1>
    114f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1153:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1157:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    115b:	8b 00                	mov    (%rax),%eax
    115d:	89 c0                	mov    %eax,%eax
    115f:	48 01 d0             	add    %rdx,%rax
    1162:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1166:	8b 12                	mov    (%rdx),%edx
    1168:	8d 4a 08             	lea    0x8(%rdx),%ecx
    116b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    116f:	89 0a                	mov    %ecx,(%rdx)
    1171:	eb 14                	jmp    1187 <vsprintf+0x5b5>
    1173:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1177:	48 8b 40 08          	mov    0x8(%rax),%rax
    117b:	48 8d 48 08          	lea    0x8(%rax),%rcx
    117f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1183:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1187:	48 8b 00             	mov    (%rax),%rax
    118a:	48 89 c7             	mov    %rax,%rdi
    118d:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1190:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1193:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1196:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    119a:	41 89 f1             	mov    %esi,%r9d
    119d:	41 89 c8             	mov    %ecx,%r8d
    11a0:	89 d1                	mov    %edx,%ecx
    11a2:	ba 10 00 00 00       	mov    $0x10,%edx
    11a7:	48 89 fe             	mov    %rdi,%rsi
    11aa:	48 89 c7             	mov    %rax,%rdi
    11ad:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11b4:	00 00 00 
    11b7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11bb:	ff d0                	call   *%rax
    11bd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    11c1:	e9 32 03 00 00       	jmp    14f8 <vsprintf+0x926>
    11c6:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
    11ca:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    11ce:	0f 85 82 00 00 00    	jne    1256 <vsprintf+0x684>
    11d4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11d8:	8b 00                	mov    (%rax),%eax
    11da:	83 f8 2f             	cmp    $0x2f,%eax
    11dd:	77 24                	ja     1203 <vsprintf+0x631>
    11df:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11e3:	48 8b 50 10          	mov    0x10(%rax),%rdx
    11e7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    11eb:	8b 00                	mov    (%rax),%eax
    11ed:	89 c0                	mov    %eax,%eax
    11ef:	48 01 d0             	add    %rdx,%rax
    11f2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    11f6:	8b 12                	mov    (%rdx),%edx
    11f8:	8d 4a 08             	lea    0x8(%rdx),%ecx
    11fb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    11ff:	89 0a                	mov    %ecx,(%rdx)
    1201:	eb 14                	jmp    1217 <vsprintf+0x645>
    1203:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1207:	48 8b 40 08          	mov    0x8(%rax),%rax
    120b:	48 8d 48 08          	lea    0x8(%rax),%rcx
    120f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1213:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1217:	48 8b 00             	mov    (%rax),%rax
    121a:	48 89 c7             	mov    %rax,%rdi
    121d:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1220:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1223:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1226:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    122a:	41 89 f1             	mov    %esi,%r9d
    122d:	41 89 c8             	mov    %ecx,%r8d
    1230:	89 d1                	mov    %edx,%ecx
    1232:	ba 10 00 00 00       	mov    $0x10,%edx
    1237:	48 89 fe             	mov    %rdi,%rsi
    123a:	48 89 c7             	mov    %rax,%rdi
    123d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1244:	00 00 00 
    1247:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    124b:	ff d0                	call   *%rax
    124d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1251:	e9 a2 02 00 00       	jmp    14f8 <vsprintf+0x926>
    1256:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    125a:	8b 00                	mov    (%rax),%eax
    125c:	83 f8 2f             	cmp    $0x2f,%eax
    125f:	77 24                	ja     1285 <vsprintf+0x6b3>
    1261:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1265:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1269:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    126d:	8b 00                	mov    (%rax),%eax
    126f:	89 c0                	mov    %eax,%eax
    1271:	48 01 d0             	add    %rdx,%rax
    1274:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1278:	8b 12                	mov    (%rdx),%edx
    127a:	8d 4a 08             	lea    0x8(%rdx),%ecx
    127d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1281:	89 0a                	mov    %ecx,(%rdx)
    1283:	eb 14                	jmp    1299 <vsprintf+0x6c7>
    1285:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1289:	48 8b 40 08          	mov    0x8(%rax),%rax
    128d:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1291:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1295:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1299:	8b 00                	mov    (%rax),%eax
    129b:	89 c7                	mov    %eax,%edi
    129d:	8b 75 dc             	mov    -0x24(%rbp),%esi
    12a0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    12a3:	8b 55 d8             	mov    -0x28(%rbp),%edx
    12a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12aa:	41 89 f1             	mov    %esi,%r9d
    12ad:	41 89 c8             	mov    %ecx,%r8d
    12b0:	89 d1                	mov    %edx,%ecx
    12b2:	ba 10 00 00 00       	mov    $0x10,%edx
    12b7:	48 89 fe             	mov    %rdi,%rsi
    12ba:	48 89 c7             	mov    %rax,%rdi
    12bd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12c4:	00 00 00 
    12c7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12cb:	ff d0                	call   *%rax
    12cd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    12d1:	e9 22 02 00 00       	jmp    14f8 <vsprintf+0x926>
    12d6:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
    12da:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    12de:	0f 85 82 00 00 00    	jne    1366 <vsprintf+0x794>
    12e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12e8:	8b 00                	mov    (%rax),%eax
    12ea:	83 f8 2f             	cmp    $0x2f,%eax
    12ed:	77 24                	ja     1313 <vsprintf+0x741>
    12ef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12f3:	48 8b 50 10          	mov    0x10(%rax),%rdx
    12f7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    12fb:	8b 00                	mov    (%rax),%eax
    12fd:	89 c0                	mov    %eax,%eax
    12ff:	48 01 d0             	add    %rdx,%rax
    1302:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1306:	8b 12                	mov    (%rdx),%edx
    1308:	8d 4a 08             	lea    0x8(%rdx),%ecx
    130b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    130f:	89 0a                	mov    %ecx,(%rdx)
    1311:	eb 14                	jmp    1327 <vsprintf+0x755>
    1313:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1317:	48 8b 40 08          	mov    0x8(%rax),%rax
    131b:	48 8d 48 08          	lea    0x8(%rax),%rcx
    131f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1323:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1327:	48 8b 00             	mov    (%rax),%rax
    132a:	48 89 c7             	mov    %rax,%rdi
    132d:	8b 75 dc             	mov    -0x24(%rbp),%esi
    1330:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    1333:	8b 55 d8             	mov    -0x28(%rbp),%edx
    1336:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    133a:	41 89 f1             	mov    %esi,%r9d
    133d:	41 89 c8             	mov    %ecx,%r8d
    1340:	89 d1                	mov    %edx,%ecx
    1342:	ba 0a 00 00 00       	mov    $0xa,%edx
    1347:	48 89 fe             	mov    %rdi,%rsi
    134a:	48 89 c7             	mov    %rax,%rdi
    134d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1354:	00 00 00 
    1357:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    135b:	ff d0                	call   *%rax
    135d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1361:	e9 92 01 00 00       	jmp    14f8 <vsprintf+0x926>
    1366:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    136a:	8b 00                	mov    (%rax),%eax
    136c:	83 f8 2f             	cmp    $0x2f,%eax
    136f:	77 24                	ja     1395 <vsprintf+0x7c3>
    1371:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1375:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1379:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    137d:	8b 00                	mov    (%rax),%eax
    137f:	89 c0                	mov    %eax,%eax
    1381:	48 01 d0             	add    %rdx,%rax
    1384:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1388:	8b 12                	mov    (%rdx),%edx
    138a:	8d 4a 08             	lea    0x8(%rdx),%ecx
    138d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1391:	89 0a                	mov    %ecx,(%rdx)
    1393:	eb 14                	jmp    13a9 <vsprintf+0x7d7>
    1395:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1399:	48 8b 40 08          	mov    0x8(%rax),%rax
    139d:	48 8d 48 08          	lea    0x8(%rax),%rcx
    13a1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    13a5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    13a9:	8b 00                	mov    (%rax),%eax
    13ab:	89 c7                	mov    %eax,%edi
    13ad:	8b 75 dc             	mov    -0x24(%rbp),%esi
    13b0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
    13b3:	8b 55 d8             	mov    -0x28(%rbp),%edx
    13b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13ba:	41 89 f1             	mov    %esi,%r9d
    13bd:	41 89 c8             	mov    %ecx,%r8d
    13c0:	89 d1                	mov    %edx,%ecx
    13c2:	ba 0a 00 00 00       	mov    $0xa,%edx
    13c7:	48 89 fe             	mov    %rdi,%rsi
    13ca:	48 89 c7             	mov    %rax,%rdi
    13cd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    13d4:	00 00 00 
    13d7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    13db:	ff d0                	call   *%rax
    13dd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    13e1:	e9 12 01 00 00       	jmp    14f8 <vsprintf+0x926>
    13e6:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
    13ea:	75 61                	jne    144d <vsprintf+0x87b>
    13ec:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    13f0:	8b 00                	mov    (%rax),%eax
    13f2:	83 f8 2f             	cmp    $0x2f,%eax
    13f5:	77 24                	ja     141b <vsprintf+0x849>
    13f7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    13fb:	48 8b 50 10          	mov    0x10(%rax),%rdx
    13ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1403:	8b 00                	mov    (%rax),%eax
    1405:	89 c0                	mov    %eax,%eax
    1407:	48 01 d0             	add    %rdx,%rax
    140a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    140e:	8b 12                	mov    (%rdx),%edx
    1410:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1413:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1417:	89 0a                	mov    %ecx,(%rdx)
    1419:	eb 14                	jmp    142f <vsprintf+0x85d>
    141b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    141f:	48 8b 40 08          	mov    0x8(%rax),%rax
    1423:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1427:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    142b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    142f:	48 8b 00             	mov    (%rax),%rax
    1432:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1436:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    143a:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    143e:	48 89 c2             	mov    %rax,%rdx
    1441:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1445:	48 89 10             	mov    %rdx,(%rax)
    1448:	e9 ab 00 00 00       	jmp    14f8 <vsprintf+0x926>
    144d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1451:	8b 00                	mov    (%rax),%eax
    1453:	83 f8 2f             	cmp    $0x2f,%eax
    1456:	77 24                	ja     147c <vsprintf+0x8aa>
    1458:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    145c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    1460:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1464:	8b 00                	mov    (%rax),%eax
    1466:	89 c0                	mov    %eax,%eax
    1468:	48 01 d0             	add    %rdx,%rax
    146b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    146f:	8b 12                	mov    (%rdx),%edx
    1471:	8d 4a 08             	lea    0x8(%rdx),%ecx
    1474:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    1478:	89 0a                	mov    %ecx,(%rdx)
    147a:	eb 14                	jmp    1490 <vsprintf+0x8be>
    147c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    1480:	48 8b 40 08          	mov    0x8(%rax),%rax
    1484:	48 8d 48 08          	lea    0x8(%rax),%rcx
    1488:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    148c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    1490:	48 8b 00             	mov    (%rax),%rax
    1493:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1497:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    149b:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    149f:	89 c2                	mov    %eax,%edx
    14a1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    14a5:	89 10                	mov    %edx,(%rax)
    14a7:	eb 4f                	jmp    14f8 <vsprintf+0x926>
    14a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14ad:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14b1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14b5:	c6 00 25             	movb   $0x25,(%rax)
    14b8:	eb 3e                	jmp    14f8 <vsprintf+0x926>
    14ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14be:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14c2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    14c6:	c6 00 25             	movb   $0x25,(%rax)
    14c9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14cd:	0f b6 00             	movzbl (%rax),%eax
    14d0:	84 c0                	test   %al,%al
    14d2:	74 17                	je     14eb <vsprintf+0x919>
    14d4:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
    14d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14dc:	48 8d 48 01          	lea    0x1(%rax),%rcx
    14e0:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    14e4:	0f b6 12             	movzbl (%rdx),%edx
    14e7:	88 10                	mov    %dl,(%rax)
    14e9:	eb 0c                	jmp    14f7 <vsprintf+0x925>
    14eb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14ef:	48 83 e8 01          	sub    $0x1,%rax
    14f3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    14f7:	90                   	nop
    14f8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    14fc:	48 83 c0 01          	add    $0x1,%rax
    1500:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1504:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    1508:	0f b6 00             	movzbl (%rax),%eax
    150b:	84 c0                	test   %al,%al
    150d:	0f 85 f9 f6 ff ff    	jne    c0c <vsprintf+0x3a>
    1513:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1517:	c6 00 00             	movb   $0x0,(%rax)
    151a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    151e:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
    1522:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1526:	c9                   	leave  
    1527:	c3                   	ret    
