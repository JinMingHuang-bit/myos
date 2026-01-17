
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

00000000000000da <Get_gdt>:
      da:	f3 0f 1e fa          	endbr64
      de:	55                   	push   %rbp
      df:	48 89 e5             	mov    %rsp,%rbp
      e2:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # e2 <Get_gdt+0x8>
      e9:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      f0:	00 00 00 
      f3:	4c 01 d8             	add    %r11,%rax
      f6:	0f 20 d8             	mov    %cr3,%rax
      f9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     101:	5d                   	pop    %rbp
     102:	c3                   	ret

0000000000000103 <page_init>:
     103:	f3 0f 1e fa          	endbr64
     107:	55                   	push   %rbp
     108:	48 89 e5             	mov    %rsp,%rbp
     10b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 10b <page_init+0x8>
     112:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     119:	00 00 00 
     11c:	4c 01 d8             	add    %r11,%rax
     11f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     123:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     127:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     12b:	48 8b 52 10          	mov    0x10(%rdx),%rdx
     12f:	48 85 d2             	test   %rdx,%rdx
     132:	0f 85 d0 00 00 00    	jne    208 <page_init+0x105>
     138:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     13f:	00 00 00 
     142:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
     149:	00 
     14a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     14e:	48 8b 52 08          	mov    0x8(%rdx),%rdx
     152:	48 c1 ea 1b          	shr    $0x1b,%rdx
     156:	48 c1 e2 03          	shl    $0x3,%rdx
     15a:	48 01 ca             	add    %rcx,%rdx
     15d:	48 8b 32             	mov    (%rdx),%rsi
     160:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     164:	48 8b 52 08          	mov    0x8(%rdx),%rdx
     168:	48 c1 ea 15          	shr    $0x15,%rdx
     16c:	83 e2 3f             	and    $0x3f,%edx
     16f:	bf 01 00 00 00       	mov    $0x1,%edi
     174:	89 d1                	mov    %edx,%ecx
     176:	48 d3 e7             	shl    %cl,%rdi
     179:	48 89 f9             	mov    %rdi,%rcx
     17c:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     183:	00 00 00 
     186:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
     18d:	00 
     18e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     192:	48 8b 40 08          	mov    0x8(%rax),%rax
     196:	48 c1 e8 1b          	shr    $0x1b,%rax
     19a:	48 c1 e0 03          	shl    $0x3,%rax
     19e:	48 01 d0             	add    %rdx,%rax
     1a1:	48 09 ce             	or     %rcx,%rsi
     1a4:	48 89 f2             	mov    %rsi,%rdx
     1a7:	48 89 10             	mov    %rdx,(%rax)
     1aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1ae:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     1b2:	48 89 50 10          	mov    %rdx,0x10(%rax)
     1b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1ba:	48 8b 40 18          	mov    0x18(%rax),%rax
     1be:	48 8d 50 01          	lea    0x1(%rax),%rdx
     1c2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1c6:	48 89 50 18          	mov    %rdx,0x18(%rax)
     1ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1ce:	48 8b 00             	mov    (%rax),%rax
     1d1:	48 8b 50 38          	mov    0x38(%rax),%rdx
     1d5:	48 83 c2 01          	add    $0x1,%rdx
     1d9:	48 89 50 38          	mov    %rdx,0x38(%rax)
     1dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1e1:	48 8b 00             	mov    (%rax),%rax
     1e4:	48 8b 50 40          	mov    0x40(%rax),%rdx
     1e8:	48 83 ea 01          	sub    $0x1,%rdx
     1ec:	48 89 50 40          	mov    %rdx,0x40(%rax)
     1f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     1f4:	48 8b 00             	mov    (%rax),%rax
     1f7:	48 8b 50 48          	mov    0x48(%rax),%rdx
     1fb:	48 83 c2 01          	add    $0x1,%rdx
     1ff:	48 89 50 48          	mov    %rdx,0x48(%rax)
     203:	e9 0a 01 00 00       	jmp    312 <page_init+0x20f>
     208:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     20c:	48 8b 52 10          	mov    0x10(%rdx),%rdx
     210:	83 e2 04             	and    $0x4,%edx
     213:	48 85 d2             	test   %rdx,%rdx
     216:	75 2e                	jne    246 <page_init+0x143>
     218:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     21c:	48 8b 52 10          	mov    0x10(%rdx),%rdx
     220:	81 e2 00 01 00 00    	and    $0x100,%edx
     226:	48 85 d2             	test   %rdx,%rdx
     229:	75 1b                	jne    246 <page_init+0x143>
     22b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     22f:	83 e2 04             	and    $0x4,%edx
     232:	48 85 d2             	test   %rdx,%rdx
     235:	75 0f                	jne    246 <page_init+0x143>
     237:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
     23b:	81 e2 00 01 00 00    	and    $0x100,%edx
     241:	48 85 d2             	test   %rdx,%rdx
     244:	74 43                	je     289 <page_init+0x186>
     246:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     24a:	48 8b 40 10          	mov    0x10(%rax),%rax
     24e:	48 0b 45 f0          	or     -0x10(%rbp),%rax
     252:	48 89 c2             	mov    %rax,%rdx
     255:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     259:	48 89 50 10          	mov    %rdx,0x10(%rax)
     25d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     261:	48 8b 40 18          	mov    0x18(%rax),%rax
     265:	48 8d 50 01          	lea    0x1(%rax),%rdx
     269:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     26d:	48 89 50 18          	mov    %rdx,0x18(%rax)
     271:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     275:	48 8b 00             	mov    (%rax),%rax
     278:	48 8b 50 48          	mov    0x48(%rax),%rdx
     27c:	48 83 c2 01          	add    $0x1,%rdx
     280:	48 89 50 48          	mov    %rdx,0x48(%rax)
     284:	e9 89 00 00 00       	jmp    312 <page_init+0x20f>
     289:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     290:	00 00 00 
     293:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
     29a:	00 
     29b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     29f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
     2a3:	48 c1 ea 1b          	shr    $0x1b,%rdx
     2a7:	48 c1 e2 03          	shl    $0x3,%rdx
     2ab:	48 01 ca             	add    %rcx,%rdx
     2ae:	48 8b 32             	mov    (%rdx),%rsi
     2b1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
     2b5:	48 8b 52 08          	mov    0x8(%rdx),%rdx
     2b9:	48 c1 ea 15          	shr    $0x15,%rdx
     2bd:	83 e2 3f             	and    $0x3f,%edx
     2c0:	bf 01 00 00 00       	mov    $0x1,%edi
     2c5:	89 d1                	mov    %edx,%ecx
     2c7:	48 d3 e7             	shl    %cl,%rdi
     2ca:	48 89 f9             	mov    %rdi,%rcx
     2cd:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2d4:	00 00 00 
     2d7:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
     2de:	00 
     2df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     2e3:	48 8b 40 08          	mov    0x8(%rax),%rax
     2e7:	48 c1 e8 1b          	shr    $0x1b,%rax
     2eb:	48 c1 e0 03          	shl    $0x3,%rax
     2ef:	48 01 d0             	add    %rdx,%rax
     2f2:	48 09 ce             	or     %rcx,%rsi
     2f5:	48 89 f2             	mov    %rsi,%rdx
     2f8:	48 89 10             	mov    %rdx,(%rax)
     2fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     2ff:	48 8b 40 10          	mov    0x10(%rax),%rax
     303:	48 0b 45 f0          	or     -0x10(%rbp),%rax
     307:	48 89 c2             	mov    %rax,%rdx
     30a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
     30e:	48 89 50 10          	mov    %rdx,0x10(%rax)
     312:	b8 00 00 00 00       	mov    $0x0,%eax
     317:	5d                   	pop    %rbp
     318:	c3                   	ret

0000000000000319 <init_memory>:
     319:	f3 0f 1e fa          	endbr64
     31d:	55                   	push   %rbp
     31e:	48 89 e5             	mov    %rsp,%rbp
     321:	41 57                	push   %r15
     323:	53                   	push   %rbx
     324:	48 83 ec 70          	sub    $0x70,%rsp
     328:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 328 <init_memory+0xf>
     32f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     336:	00 00 00 
     339:	4c 01 db             	add    %r11,%rbx
     33c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     343:	00 
     344:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     34b:	00 
     34c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     353:	00 00 00 
     356:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     35a:	48 89 c2             	mov    %rax,%rdx
     35d:	be 00 00 00 00       	mov    $0x0,%esi
     362:	bf ff 00 00 00       	mov    $0xff,%edi
     367:	49 89 df             	mov    %rbx,%r15
     36a:	b8 00 00 00 00       	mov    $0x0,%eax
     36f:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     376:	00 00 00 
     379:	48 01 d9             	add    %rbx,%rcx
     37c:	ff d1                	call   *%rcx
     37e:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
     385:	80 ff ff 
     388:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     38c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
     393:	e9 a2 01 00 00       	jmp    53a <init_memory+0x221>
     398:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     39c:	8b 48 10             	mov    0x10(%rax),%ecx
     39f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     3a3:	48 8b 50 08          	mov    0x8(%rax),%rdx
     3a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     3ab:	48 8b 00             	mov    (%rax),%rax
     3ae:	41 89 c9             	mov    %ecx,%r9d
     3b1:	49 89 d0             	mov    %rdx,%r8
     3b4:	48 89 c1             	mov    %rax,%rcx
     3b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3be:	00 00 00 
     3c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     3c5:	48 89 c2             	mov    %rax,%rdx
     3c8:	be 00 00 00 00       	mov    $0x0,%esi
     3cd:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     3d2:	49 89 df             	mov    %rbx,%r15
     3d5:	b8 00 00 00 00       	mov    $0x0,%eax
     3da:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     3e1:	00 00 00 
     3e4:	49 01 da             	add    %rbx,%r10
     3e7:	41 ff d2             	call   *%r10
     3ea:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     3f1:	00 
     3f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     3f6:	8b 40 10             	mov    0x10(%rax),%eax
     3f9:	83 f8 01             	cmp    $0x1,%eax
     3fc:	75 0c                	jne    40a <init_memory+0xf1>
     3fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     402:	48 8b 40 08          	mov    0x8(%rax),%rax
     406:	48 01 45 e0          	add    %rax,-0x20(%rbp)
     40a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     411:	00 00 00 
     414:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     417:	48 63 d0             	movslq %eax,%rdx
     41a:	48 01 d9             	add    %rbx,%rcx
     41d:	48 89 d0             	mov    %rdx,%rax
     420:	48 c1 e0 02          	shl    $0x2,%rax
     424:	48 01 d0             	add    %rdx,%rax
     427:	48 c1 e0 02          	shl    $0x2,%rax
     42b:	48 01 c8             	add    %rcx,%rax
     42e:	48 8b 10             	mov    (%rax),%rdx
     431:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     435:	48 8b 00             	mov    (%rax),%rax
     438:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     43c:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     443:	00 00 00 
     446:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     449:	48 63 d0             	movslq %eax,%rdx
     44c:	48 01 de             	add    %rbx,%rsi
     44f:	48 89 d0             	mov    %rdx,%rax
     452:	48 c1 e0 02          	shl    $0x2,%rax
     456:	48 01 d0             	add    %rdx,%rax
     459:	48 c1 e0 02          	shl    $0x2,%rax
     45d:	48 01 f0             	add    %rsi,%rax
     460:	48 89 08             	mov    %rcx,(%rax)
     463:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     46a:	00 00 00 
     46d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     470:	48 63 d0             	movslq %eax,%rdx
     473:	48 89 d0             	mov    %rdx,%rax
     476:	48 c1 e0 02          	shl    $0x2,%rax
     47a:	48 01 d0             	add    %rdx,%rax
     47d:	48 c1 e0 02          	shl    $0x2,%rax
     481:	48 01 d8             	add    %rbx,%rax
     484:	48 01 c8             	add    %rcx,%rax
     487:	48 83 c0 08          	add    $0x8,%rax
     48b:	48 8b 10             	mov    (%rax),%rdx
     48e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     492:	48 8b 40 08          	mov    0x8(%rax),%rax
     496:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     49a:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     4a1:	00 00 00 
     4a4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     4a7:	48 63 d0             	movslq %eax,%rdx
     4aa:	48 89 d0             	mov    %rdx,%rax
     4ad:	48 c1 e0 02          	shl    $0x2,%rax
     4b1:	48 01 d0             	add    %rdx,%rax
     4b4:	48 c1 e0 02          	shl    $0x2,%rax
     4b8:	48 01 d8             	add    %rbx,%rax
     4bb:	48 01 f0             	add    %rsi,%rax
     4be:	48 83 c0 08          	add    $0x8,%rax
     4c2:	48 89 08             	mov    %rcx,(%rax)
     4c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     4c9:	8b 48 10             	mov    0x10(%rax),%ecx
     4cc:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     4d3:	00 00 00 
     4d6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     4d9:	48 63 d0             	movslq %eax,%rdx
     4dc:	48 01 de             	add    %rbx,%rsi
     4df:	48 89 d0             	mov    %rdx,%rax
     4e2:	48 c1 e0 02          	shl    $0x2,%rax
     4e6:	48 01 d0             	add    %rdx,%rax
     4e9:	48 c1 e0 02          	shl    $0x2,%rax
     4ed:	48 01 f0             	add    %rsi,%rax
     4f0:	48 83 c0 10          	add    $0x10,%rax
     4f4:	89 08                	mov    %ecx,(%rax)
     4f6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     4f9:	48 98                	cltq
     4fb:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     502:	00 00 00 
     505:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
     50c:	00 
     50d:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
     512:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     516:	8b 40 10             	mov    0x10(%rax),%eax
     519:	83 f8 04             	cmp    $0x4,%eax
     51c:	77 26                	ja     544 <init_memory+0x22b>
     51e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     522:	48 8b 40 08          	mov    0x8(%rax),%rax
     526:	48 85 c0             	test   %rax,%rax
     529:	74 19                	je     544 <init_memory+0x22b>
     52b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     52f:	8b 40 10             	mov    0x10(%rax),%eax
     532:	85 c0                	test   %eax,%eax
     534:	74 0e                	je     544 <init_memory+0x22b>
     536:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
     53a:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
     53e:	0f 8e 54 fe ff ff    	jle    398 <init_memory+0x7f>
     544:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     548:	48 89 c1             	mov    %rax,%rcx
     54b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     552:	00 00 00 
     555:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     559:	48 89 c2             	mov    %rax,%rdx
     55c:	be 00 00 00 00       	mov    $0x0,%esi
     561:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     566:	49 89 df             	mov    %rbx,%r15
     569:	b8 00 00 00 00       	mov    $0x0,%eax
     56e:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     575:	00 00 00 
     578:	49 01 d8             	add    %rbx,%r8
     57b:	41 ff d0             	call   *%r8
     57e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     582:	48 89 c1             	mov    %rax,%rcx
     585:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     58c:	00 00 00 
     58f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     593:	48 89 c2             	mov    %rax,%rdx
     596:	be 00 00 00 00       	mov    $0x0,%esi
     59b:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     5a0:	49 89 df             	mov    %rbx,%r15
     5a3:	b8 00 00 00 00       	mov    $0x0,%eax
     5a8:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     5af:	00 00 00 
     5b2:	49 01 d8             	add    %rbx,%r8
     5b5:	41 ff d0             	call   *%r8
     5b8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5bc:	48 c1 e8 14          	shr    $0x14,%rax
     5c0:	89 45 bc             	mov    %eax,-0x44(%rbp)
     5c3:	8b 45 bc             	mov    -0x44(%rbp),%eax
     5c6:	89 c1                	mov    %eax,%ecx
     5c8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5cf:	00 00 00 
     5d2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     5d6:	48 89 c2             	mov    %rax,%rdx
     5d9:	be 00 00 00 00       	mov    $0x0,%esi
     5de:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     5e3:	49 89 df             	mov    %rbx,%r15
     5e6:	b8 00 00 00 00       	mov    $0x0,%eax
     5eb:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     5f2:	00 00 00 
     5f5:	49 01 d8             	add    %rbx,%r8
     5f8:	41 ff d0             	call   *%r8
     5fb:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     602:	00 
     603:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     60a:	e9 ed 00 00 00       	jmp    6fc <init_memory+0x3e3>
     60f:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     616:	00 00 00 
     619:	8b 45 ec             	mov    -0x14(%rbp),%eax
     61c:	48 63 d0             	movslq %eax,%rdx
     61f:	48 01 d9             	add    %rbx,%rcx
     622:	48 89 d0             	mov    %rdx,%rax
     625:	48 c1 e0 02          	shl    $0x2,%rax
     629:	48 01 d0             	add    %rdx,%rax
     62c:	48 c1 e0 02          	shl    $0x2,%rax
     630:	48 01 c8             	add    %rcx,%rax
     633:	48 83 c0 10          	add    $0x10,%rax
     637:	8b 00                	mov    (%rax),%eax
     639:	83 f8 01             	cmp    $0x1,%eax
     63c:	0f 85 b2 00 00 00    	jne    6f4 <init_memory+0x3db>
     642:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     649:	00 00 00 
     64c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     64f:	48 63 d0             	movslq %eax,%rdx
     652:	48 01 d9             	add    %rbx,%rcx
     655:	48 89 d0             	mov    %rdx,%rax
     658:	48 c1 e0 02          	shl    $0x2,%rax
     65c:	48 01 d0             	add    %rdx,%rax
     65f:	48 c1 e0 02          	shl    $0x2,%rax
     663:	48 01 c8             	add    %rcx,%rax
     666:	48 8b 00             	mov    (%rax),%rax
     669:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     66f:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     675:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     679:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     680:	00 00 00 
     683:	8b 45 ec             	mov    -0x14(%rbp),%eax
     686:	48 63 d0             	movslq %eax,%rdx
     689:	48 01 d9             	add    %rbx,%rcx
     68c:	48 89 d0             	mov    %rdx,%rax
     68f:	48 c1 e0 02          	shl    $0x2,%rax
     693:	48 01 d0             	add    %rdx,%rax
     696:	48 c1 e0 02          	shl    $0x2,%rax
     69a:	48 01 c8             	add    %rcx,%rax
     69d:	48 8b 08             	mov    (%rax),%rcx
     6a0:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     6a7:	00 00 00 
     6aa:	8b 45 ec             	mov    -0x14(%rbp),%eax
     6ad:	48 63 d0             	movslq %eax,%rdx
     6b0:	48 89 d0             	mov    %rdx,%rax
     6b3:	48 c1 e0 02          	shl    $0x2,%rax
     6b7:	48 01 d0             	add    %rdx,%rax
     6ba:	48 c1 e0 02          	shl    $0x2,%rax
     6be:	48 01 d8             	add    %rbx,%rax
     6c1:	48 01 f0             	add    %rsi,%rax
     6c4:	48 83 c0 08          	add    $0x8,%rax
     6c8:	48 8b 00             	mov    (%rax),%rax
     6cb:	48 01 c8             	add    %rcx,%rax
     6ce:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     6d4:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     6d8:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     6dc:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
     6e0:	73 15                	jae    6f7 <init_memory+0x3de>
     6e2:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     6e6:	48 2b 45 88          	sub    -0x78(%rbp),%rax
     6ea:	48 c1 e8 15          	shr    $0x15,%rax
     6ee:	48 01 45 e0          	add    %rax,-0x20(%rbp)
     6f2:	eb 04                	jmp    6f8 <init_memory+0x3df>
     6f4:	90                   	nop
     6f5:	eb 01                	jmp    6f8 <init_memory+0x3df>
     6f7:	90                   	nop
     6f8:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     6fc:	8b 45 ec             	mov    -0x14(%rbp),%eax
     6ff:	48 98                	cltq
     701:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     708:	00 00 00 
     70b:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     712:	00 
     713:	48 39 c2             	cmp    %rax,%rdx
     716:	0f 83 f3 fe ff ff    	jae    60f <init_memory+0x2f6>
     71c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     720:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     724:	49 89 d0             	mov    %rdx,%r8
     727:	48 89 c1             	mov    %rax,%rcx
     72a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     731:	00 00 00 
     734:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     738:	48 89 c2             	mov    %rax,%rdx
     73b:	be 00 00 00 00       	mov    $0x0,%esi
     740:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     745:	49 89 df             	mov    %rbx,%r15
     748:	b8 00 00 00 00       	mov    $0x0,%eax
     74d:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     754:	00 00 00 
     757:	49 01 d9             	add    %rbx,%r9
     75a:	41 ff d1             	call   *%r9
     75d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     764:	00 00 00 
     767:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     76e:	00 
     76f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     776:	00 00 00 
     779:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
     77d:	48 89 d0             	mov    %rdx,%rax
     780:	48 c1 e0 02          	shl    $0x2,%rax
     784:	48 01 d0             	add    %rdx,%rax
     787:	48 c1 e0 02          	shl    $0x2,%rax
     78b:	48 01 c8             	add    %rcx,%rax
     78e:	48 8b 08             	mov    (%rax),%rcx
     791:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     798:	00 00 00 
     79b:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     7a2:	00 
     7a3:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     7aa:	00 00 00 
     7ad:	48 89 d0             	mov    %rdx,%rax
     7b0:	48 c1 e0 02          	shl    $0x2,%rax
     7b4:	48 01 d0             	add    %rdx,%rax
     7b7:	48 c1 e0 02          	shl    $0x2,%rax
     7bb:	48 01 d8             	add    %rbx,%rax
     7be:	48 01 f0             	add    %rsi,%rax
     7c1:	48 83 c0 08          	add    $0x8,%rax
     7c5:	48 8b 00             	mov    (%rax),%rax
     7c8:	48 01 c8             	add    %rcx,%rax
     7cb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     7cf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7d6:	00 00 00 
     7d9:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
     7e0:	00 
     7e1:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     7e7:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     7ed:	48 89 c2             	mov    %rax,%rdx
     7f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7f7:	00 00 00 
     7fa:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
     801:	00 
     802:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     806:	48 c1 e8 15          	shr    $0x15,%rax
     80a:	48 89 c2             	mov    %rax,%rdx
     80d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     814:	00 00 00 
     817:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
     81e:	00 
     81f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     823:	48 c1 e8 15          	shr    $0x15,%rax
     827:	48 83 c0 3f          	add    $0x3f,%rax
     82b:	48 c1 e8 03          	shr    $0x3,%rax
     82f:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     833:	48 89 c2             	mov    %rax,%rdx
     836:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     83d:	00 00 00 
     840:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
     847:	00 
     848:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     84f:	00 00 00 
     852:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     859:	00 
     85a:	48 89 c2             	mov    %rax,%rdx
     85d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     864:	00 00 00 
     867:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     86e:	00 
     86f:	be ff 00 00 00       	mov    $0xff,%esi
     874:	48 89 c7             	mov    %rax,%rdi
     877:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     87e:	00 00 00 
     881:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     885:	ff d0                	call   *%rax
     887:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     88e:	00 00 00 
     891:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     898:	00 
     899:	48 89 c2             	mov    %rax,%rdx
     89c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8a3:	00 00 00 
     8a6:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     8ad:	00 
     8ae:	48 01 d0             	add    %rdx,%rax
     8b1:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     8b7:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     8bd:	48 89 c2             	mov    %rax,%rdx
     8c0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8c7:	00 00 00 
     8ca:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
     8d1:	00 
     8d2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     8d6:	48 c1 e8 15          	shr    $0x15,%rax
     8da:	48 89 c2             	mov    %rax,%rdx
     8dd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8e4:	00 00 00 
     8e7:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
     8ee:	00 
     8ef:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     8f3:	48 c1 e8 15          	shr    $0x15,%rax
     8f7:	48 89 c2             	mov    %rax,%rdx
     8fa:	48 89 d0             	mov    %rdx,%rax
     8fd:	48 c1 e0 02          	shl    $0x2,%rax
     901:	48 01 d0             	add    %rdx,%rax
     904:	48 c1 e0 03          	shl    $0x3,%rax
     908:	48 83 c0 07          	add    $0x7,%rax
     90c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     910:	48 89 c2             	mov    %rax,%rdx
     913:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     91a:	00 00 00 
     91d:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
     924:	00 
     925:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     92c:	00 00 00 
     92f:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     936:	00 
     937:	48 89 c2             	mov    %rax,%rdx
     93a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     941:	00 00 00 
     944:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     94b:	00 
     94c:	be 00 00 00 00       	mov    $0x0,%esi
     951:	48 89 c7             	mov    %rax,%rdi
     954:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     95b:	00 00 00 
     95e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     962:	ff d0                	call   *%rax
     964:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     96b:	00 00 00 
     96e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     975:	00 
     976:	48 89 c2             	mov    %rax,%rdx
     979:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     980:	00 00 00 
     983:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     98a:	00 
     98b:	48 01 d0             	add    %rdx,%rax
     98e:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     994:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     99a:	48 89 c2             	mov    %rax,%rdx
     99d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a4:	00 00 00 
     9a7:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
     9ae:	00 
     9af:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9b6:	00 00 00 
     9b9:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
     9c0:	00 00 00 00 00 
     9c5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9cc:	00 00 00 
     9cf:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
     9d6:	00 90 01 00 00 
     9db:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9e2:	00 00 00 
     9e5:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
     9ec:	00 
     9ed:	48 89 c2             	mov    %rax,%rdx
     9f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9f7:	00 00 00 
     9fa:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     a01:	00 
     a02:	be 00 00 00 00       	mov    $0x0,%esi
     a07:	48 89 c7             	mov    %rax,%rdi
     a0a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a11:	00 00 00 
     a14:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a18:	ff d0                	call   *%rax
     a1a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     a21:	e9 f8 02 00 00       	jmp    d1e <init_memory+0xa05>
     a26:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a2d:	00 00 00 
     a30:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a33:	48 63 d0             	movslq %eax,%rdx
     a36:	48 01 d9             	add    %rbx,%rcx
     a39:	48 89 d0             	mov    %rdx,%rax
     a3c:	48 c1 e0 02          	shl    $0x2,%rax
     a40:	48 01 d0             	add    %rdx,%rax
     a43:	48 c1 e0 02          	shl    $0x2,%rax
     a47:	48 01 c8             	add    %rcx,%rax
     a4a:	48 83 c0 10          	add    $0x10,%rax
     a4e:	8b 00                	mov    (%rax),%eax
     a50:	83 f8 01             	cmp    $0x1,%eax
     a53:	0f 85 bd 02 00 00    	jne    d16 <init_memory+0x9fd>
     a59:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a60:	00 00 00 
     a63:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a66:	48 63 d0             	movslq %eax,%rdx
     a69:	48 01 d9             	add    %rbx,%rcx
     a6c:	48 89 d0             	mov    %rdx,%rax
     a6f:	48 c1 e0 02          	shl    $0x2,%rax
     a73:	48 01 d0             	add    %rdx,%rax
     a76:	48 c1 e0 02          	shl    $0x2,%rax
     a7a:	48 01 c8             	add    %rcx,%rax
     a7d:	48 8b 00             	mov    (%rax),%rax
     a80:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     a86:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     a8c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     a90:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a97:	00 00 00 
     a9a:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a9d:	48 63 d0             	movslq %eax,%rdx
     aa0:	48 01 d9             	add    %rbx,%rcx
     aa3:	48 89 d0             	mov    %rdx,%rax
     aa6:	48 c1 e0 02          	shl    $0x2,%rax
     aaa:	48 01 d0             	add    %rdx,%rax
     aad:	48 c1 e0 02          	shl    $0x2,%rax
     ab1:	48 01 c8             	add    %rcx,%rax
     ab4:	48 8b 08             	mov    (%rax),%rcx
     ab7:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     abe:	00 00 00 
     ac1:	8b 45 ec             	mov    -0x14(%rbp),%eax
     ac4:	48 63 d0             	movslq %eax,%rdx
     ac7:	48 89 d0             	mov    %rdx,%rax
     aca:	48 c1 e0 02          	shl    $0x2,%rax
     ace:	48 01 d0             	add    %rdx,%rax
     ad1:	48 c1 e0 02          	shl    $0x2,%rax
     ad5:	48 01 d8             	add    %rbx,%rax
     ad8:	48 01 f0             	add    %rsi,%rax
     adb:	48 83 c0 08          	add    $0x8,%rax
     adf:	48 8b 00             	mov    (%rax),%rax
     ae2:	48 01 c8             	add    %rcx,%rax
     ae5:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     aeb:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     aef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     af3:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
     af7:	0f 83 1c 02 00 00    	jae    d19 <init_memory+0xa00>
     afd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b04:	00 00 00 
     b07:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     b0e:	00 
     b0f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b16:	00 00 00 
     b19:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     b20:	00 
     b21:	48 89 d0             	mov    %rdx,%rax
     b24:	48 c1 e0 02          	shl    $0x2,%rax
     b28:	48 01 d0             	add    %rdx,%rax
     b2b:	48 c1 e0 04          	shl    $0x4,%rax
     b2f:	48 01 c8             	add    %rcx,%rax
     b32:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     b36:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b3d:	00 00 00 
     b40:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     b47:	00 
     b48:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b4c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b53:	00 00 00 
     b56:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
     b5d:	00 
     b5e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b62:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     b66:	48 89 50 10          	mov    %rdx,0x10(%rax)
     b6a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b6e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     b72:	48 89 50 18          	mov    %rdx,0x18(%rax)
     b76:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b7a:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     b7e:	48 89 c2             	mov    %rax,%rdx
     b81:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b85:	48 89 50 20          	mov    %rdx,0x20(%rax)
     b89:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b8d:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
     b94:	00 
     b95:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b99:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     b9d:	48 c1 e8 15          	shr    $0x15,%rax
     ba1:	48 89 c2             	mov    %rax,%rdx
     ba4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     ba8:	48 89 50 40          	mov    %rdx,0x40(%rax)
     bac:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bb0:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
     bb7:	00 
     bb8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bbc:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
     bc3:	00 
     bc4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bc8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     bcf:	00 00 00 
     bd2:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
     bd6:	48 89 50 30          	mov    %rdx,0x30(%rax)
     bda:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     bde:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     be2:	48 c1 e8 15          	shr    $0x15,%rax
     be6:	48 89 c2             	mov    %rax,%rdx
     be9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bed:	48 89 50 08          	mov    %rdx,0x8(%rax)
     bf1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bf8:	00 00 00 
     bfb:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
     c02:	00 
     c03:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c07:	48 c1 e8 15          	shr    $0x15,%rax
     c0b:	48 89 c2             	mov    %rax,%rdx
     c0e:	48 89 d0             	mov    %rdx,%rax
     c11:	48 c1 e0 02          	shl    $0x2,%rax
     c15:	48 01 d0             	add    %rdx,%rax
     c18:	48 c1 e0 03          	shl    $0x3,%rax
     c1c:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     c20:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     c24:	48 89 10             	mov    %rdx,(%rax)
     c27:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     c2b:	48 8b 00             	mov    (%rax),%rax
     c2e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     c32:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
     c39:	e9 bf 00 00 00       	jmp    cfd <init_memory+0x9e4>
     c3e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c42:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
     c46:	48 89 10             	mov    %rdx,(%rax)
     c49:	8b 45 e8             	mov    -0x18(%rbp),%eax
     c4c:	48 98                	cltq
     c4e:	48 c1 e0 15          	shl    $0x15,%rax
     c52:	48 89 c2             	mov    %rax,%rdx
     c55:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c59:	48 01 c2             	add    %rax,%rdx
     c5c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c60:	48 89 50 08          	mov    %rdx,0x8(%rax)
     c64:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c68:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     c6f:	00 
     c70:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c74:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     c7b:	00 
     c7c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c80:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     c87:	00 
     c88:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c8f:	00 00 00 
     c92:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
     c99:	00 
     c9a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c9e:	48 8b 40 08          	mov    0x8(%rax),%rax
     ca2:	48 c1 e8 1b          	shr    $0x1b,%rax
     ca6:	48 c1 e0 03          	shl    $0x3,%rax
     caa:	48 01 d0             	add    %rdx,%rax
     cad:	48 8b 10             	mov    (%rax),%rdx
     cb0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     cb4:	48 8b 40 08          	mov    0x8(%rax),%rax
     cb8:	48 c1 e8 15          	shr    $0x15,%rax
     cbc:	83 e0 3f             	and    $0x3f,%eax
     cbf:	be 01 00 00 00       	mov    $0x1,%esi
     cc4:	89 c1                	mov    %eax,%ecx
     cc6:	48 d3 e6             	shl    %cl,%rsi
     cc9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cd0:	00 00 00 
     cd3:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
     cda:	00 
     cdb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     cdf:	48 8b 40 08          	mov    0x8(%rax),%rax
     ce3:	48 c1 e8 1b          	shr    $0x1b,%rax
     ce7:	48 c1 e0 03          	shl    $0x3,%rax
     ceb:	48 01 c8             	add    %rcx,%rax
     cee:	48 31 f2             	xor    %rsi,%rdx
     cf1:	48 89 10             	mov    %rdx,(%rax)
     cf4:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
     cf8:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
     cfd:	8b 45 e8             	mov    -0x18(%rbp),%eax
     d00:	48 63 d0             	movslq %eax,%rdx
     d03:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     d07:	48 8b 40 08          	mov    0x8(%rax),%rax
     d0b:	48 39 c2             	cmp    %rax,%rdx
     d0e:	0f 82 2a ff ff ff    	jb     c3e <init_memory+0x925>
     d14:	eb 04                	jmp    d1a <init_memory+0xa01>
     d16:	90                   	nop
     d17:	eb 01                	jmp    d1a <init_memory+0xa01>
     d19:	90                   	nop
     d1a:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     d1e:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d21:	48 98                	cltq
     d23:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     d2a:	00 00 00 
     d2d:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     d34:	00 
     d35:	48 39 c2             	cmp    %rax,%rdx
     d38:	0f 83 e8 fc ff ff    	jae    a26 <init_memory+0x70d>
     d3e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d45:	00 00 00 
     d48:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d4f:	00 
     d50:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     d57:	00 00 00 
     d5a:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
     d61:	00 
     d62:	48 89 10             	mov    %rdx,(%rax)
     d65:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d6c:	00 00 00 
     d6f:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d76:	00 
     d77:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
     d7e:	00 
     d7f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d86:	00 00 00 
     d89:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d90:	00 
     d91:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     d98:	00 
     d99:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     da0:	00 00 00 
     da3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     daa:	00 
     dab:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     db2:	00 
     db3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dba:	00 00 00 
     dbd:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     dc4:	00 
     dc5:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     dcc:	00 
     dcd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dd4:	00 00 00 
     dd7:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     dde:	00 
     ddf:	48 89 d0             	mov    %rdx,%rax
     de2:	48 c1 e0 02          	shl    $0x2,%rax
     de6:	48 01 d0             	add    %rdx,%rax
     de9:	48 c1 e0 04          	shl    $0x4,%rax
     ded:	48 83 c0 07          	add    $0x7,%rax
     df1:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     df5:	48 89 c2             	mov    %rax,%rdx
     df8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dff:	00 00 00 
     e02:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
     e09:	00 
     e0a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e11:	00 00 00 
     e14:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
     e1b:	00 
     e1c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e23:	00 00 00 
     e26:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
     e2d:	00 
     e2e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e35:	00 00 00 
     e38:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     e3f:	00 
     e40:	49 89 c9             	mov    %rcx,%r9
     e43:	49 89 d0             	mov    %rdx,%r8
     e46:	48 89 c1             	mov    %rax,%rcx
     e49:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e50:	00 00 00 
     e53:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e57:	48 89 c2             	mov    %rax,%rdx
     e5a:	be 00 00 00 00       	mov    $0x0,%esi
     e5f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     e64:	49 89 df             	mov    %rbx,%r15
     e67:	b8 00 00 00 00       	mov    $0x0,%eax
     e6c:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     e73:	00 00 00 
     e76:	49 01 da             	add    %rbx,%r10
     e79:	41 ff d2             	call   *%r10
     e7c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e83:	00 00 00 
     e86:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
     e8d:	00 
     e8e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e95:	00 00 00 
     e98:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
     e9f:	00 
     ea0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ea7:	00 00 00 
     eaa:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     eb1:	00 
     eb2:	49 89 c9             	mov    %rcx,%r9
     eb5:	49 89 d0             	mov    %rdx,%r8
     eb8:	48 89 c1             	mov    %rax,%rcx
     ebb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ec2:	00 00 00 
     ec5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ec9:	48 89 c2             	mov    %rax,%rdx
     ecc:	be 00 00 00 00       	mov    $0x0,%esi
     ed1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     ed6:	49 89 df             	mov    %rbx,%r15
     ed9:	b8 00 00 00 00       	mov    $0x0,%eax
     ede:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     ee5:	00 00 00 
     ee8:	49 01 da             	add    %rbx,%r10
     eeb:	41 ff d2             	call   *%r10
     eee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ef5:	00 00 00 
     ef8:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
     eff:	00 
     f00:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f07:	00 00 00 
     f0a:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     f11:	00 
     f12:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f19:	00 00 00 
     f1c:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     f23:	00 
     f24:	49 89 c9             	mov    %rcx,%r9
     f27:	49 89 d0             	mov    %rdx,%r8
     f2a:	48 89 c1             	mov    %rax,%rcx
     f2d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f34:	00 00 00 
     f37:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f3b:	48 89 c2             	mov    %rax,%rdx
     f3e:	be 00 00 00 00       	mov    $0x0,%esi
     f43:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     f48:	49 89 df             	mov    %rbx,%r15
     f4b:	b8 00 00 00 00       	mov    $0x0,%eax
     f50:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     f57:	00 00 00 
     f5a:	49 01 da             	add    %rbx,%r10
     f5d:	41 ff d2             	call   *%r10
     f60:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f67:	00 00 00 
     f6a:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
     f71:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f78:	00 00 00 
     f7b:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
     f82:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     f89:	e9 c1 00 00 00       	jmp    104f <init_memory+0xd36>
     f8e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f95:	00 00 00 
     f98:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     f9f:	00 
     fa0:	8b 45 ec             	mov    -0x14(%rbp),%eax
     fa3:	48 63 d0             	movslq %eax,%rdx
     fa6:	48 89 d0             	mov    %rdx,%rax
     fa9:	48 c1 e0 02          	shl    $0x2,%rax
     fad:	48 01 d0             	add    %rdx,%rax
     fb0:	48 c1 e0 04          	shl    $0x4,%rax
     fb4:	48 01 c8             	add    %rcx,%rax
     fb7:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     fbb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fbf:	48 8b 48 08          	mov    0x8(%rax),%rcx
     fc3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fc7:	48 8b 10             	mov    (%rax),%rdx
     fca:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fce:	48 8b 78 20          	mov    0x20(%rax),%rdi
     fd2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fd6:	48 8b 70 18          	mov    0x18(%rax),%rsi
     fda:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fde:	48 8b 40 10          	mov    0x10(%rax),%rax
     fe2:	51                   	push   %rcx
     fe3:	52                   	push   %rdx
     fe4:	49 89 f9             	mov    %rdi,%r9
     fe7:	49 89 f0             	mov    %rsi,%r8
     fea:	48 89 c1             	mov    %rax,%rcx
     fed:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ff4:	00 00 00 
     ff7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ffb:	48 89 c2             	mov    %rax,%rdx
     ffe:	be 00 00 00 00       	mov    $0x0,%esi
    1003:	bf 00 80 ff 00       	mov    $0xff8000,%edi
    1008:	49 89 df             	mov    %rbx,%r15
    100b:	b8 00 00 00 00       	mov    $0x0,%eax
    1010:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    1017:	00 00 00 
    101a:	49 01 da             	add    %rbx,%r10
    101d:	41 ff d2             	call   *%r10
    1020:	48 83 c4 10          	add    $0x10,%rsp
    1024:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    1028:	48 8b 50 10          	mov    0x10(%rax),%rdx
    102c:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
    1033:	00 00 00 
    1036:	48 39 c2             	cmp    %rax,%rdx
    1039:	75 10                	jne    104b <init_memory+0xd32>
    103b:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    1042:	00 00 00 
    1045:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1048:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
    104b:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    104f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1052:	48 63 d0             	movslq %eax,%rdx
    1055:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    105c:	00 00 00 
    105f:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
    1066:	00 
    1067:	48 39 c2             	cmp    %rax,%rdx
    106a:	0f 82 1e ff ff ff    	jb     f8e <init_memory+0xc75>
    1070:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1077:	00 00 00 
    107a:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
    1081:	00 
    1082:	48 89 c2             	mov    %rax,%rdx
    1085:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    108c:	00 00 00 
    108f:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
    1096:	00 
    1097:	48 01 d0             	add    %rdx,%rax
    109a:	48 05 00 01 00 00    	add    $0x100,%rax
    10a0:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    10a4:	48 89 c2             	mov    %rax,%rdx
    10a7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10ae:	00 00 00 
    10b1:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
    10b8:	00 
    10b9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10c0:	00 00 00 
    10c3:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
    10ca:	00 
    10cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10d2:	00 00 00 
    10d5:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
    10dc:	00 
    10dd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10e4:	00 00 00 
    10e7:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
    10ee:	00 
    10ef:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10f6:	00 00 00 
    10f9:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
    1100:	00 
    1101:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1108:	00 00 00 
    110b:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
    1112:	00 
    1113:	51                   	push   %rcx
    1114:	52                   	push   %rdx
    1115:	49 89 f9             	mov    %rdi,%r9
    1118:	49 89 f0             	mov    %rsi,%r8
    111b:	48 89 c1             	mov    %rax,%rcx
    111e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1125:	00 00 00 
    1128:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    112c:	48 89 c2             	mov    %rax,%rdx
    112f:	be 00 00 00 00       	mov    $0x0,%esi
    1134:	bf 00 80 ff 00       	mov    $0xff8000,%edi
    1139:	49 89 df             	mov    %rbx,%r15
    113c:	b8 00 00 00 00       	mov    $0x0,%eax
    1141:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    1148:	00 00 00 
    114b:	49 01 da             	add    %rbx,%r10
    114e:	41 ff d2             	call   *%r10
    1151:	48 83 c4 10          	add    $0x10,%rsp
    1155:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    115c:	00 00 00 
    115f:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
    1166:	00 
    1167:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
    116e:	80 00 00 
    1171:	48 01 d0             	add    %rdx,%rax
    1174:	48 c1 e8 15          	shr    $0x15,%rax
    1178:	89 45 ec             	mov    %eax,-0x14(%rbp)
    117b:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1182:	eb 45                	jmp    11c9 <init_memory+0xeb0>
    1184:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    118b:	00 00 00 
    118e:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    1195:	00 
    1196:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1199:	48 63 d0             	movslq %eax,%rdx
    119c:	48 89 d0             	mov    %rdx,%rax
    119f:	48 c1 e0 02          	shl    $0x2,%rax
    11a3:	48 01 d0             	add    %rdx,%rax
    11a6:	48 c1 e0 03          	shl    $0x3,%rax
    11aa:	48 01 c8             	add    %rcx,%rax
    11ad:	be 93 00 00 00       	mov    $0x93,%esi
    11b2:	48 89 c7             	mov    %rax,%rdi
    11b5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11bc:	00 00 00 
    11bf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11c3:	ff d0                	call   *%rax
    11c5:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    11c9:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11cc:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    11cf:	7e b3                	jle    1184 <init_memory+0xe6b>
    11d1:	b8 00 00 00 00       	mov    $0x0,%eax
    11d6:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    11dd:	00 00 00 
    11e0:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
    11e4:	ff d2                	call   *%rdx
    11e6:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    11ed:	00 00 00 
    11f0:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
    11f4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11fb:	00 00 00 
    11fe:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1202:	48 89 c1             	mov    %rax,%rcx
    1205:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    120c:	00 00 00 
    120f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1213:	48 89 c2             	mov    %rax,%rdx
    1216:	be 00 00 00 00       	mov    $0x0,%esi
    121b:	bf ff ff 00 00       	mov    $0xffff,%edi
    1220:	49 89 df             	mov    %rbx,%r15
    1223:	b8 00 00 00 00       	mov    $0x0,%eax
    1228:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    122f:	00 00 00 
    1232:	49 01 d8             	add    %rbx,%r8
    1235:	41 ff d0             	call   *%r8
    1238:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    123f:	00 00 00 
    1242:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1246:	48 89 c2             	mov    %rax,%rdx
    1249:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    1250:	80 ff ff 
    1253:	48 01 d0             	add    %rdx,%rax
    1256:	48 8b 00             	mov    (%rax),%rax
    1259:	48 89 c1             	mov    %rax,%rcx
    125c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1263:	00 00 00 
    1266:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    126a:	48 89 c2             	mov    %rax,%rdx
    126d:	be 00 00 00 00       	mov    $0x0,%esi
    1272:	bf ff ff 00 00       	mov    $0xffff,%edi
    1277:	49 89 df             	mov    %rbx,%r15
    127a:	b8 00 00 00 00       	mov    $0x0,%eax
    127f:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1286:	00 00 00 
    1289:	49 01 d8             	add    %rbx,%r8
    128c:	41 ff d0             	call   *%r8
    128f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1296:	00 00 00 
    1299:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    129d:	48 89 c2             	mov    %rax,%rdx
    12a0:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    12a7:	80 ff ff 
    12aa:	48 01 d0             	add    %rdx,%rax
    12ad:	48 8b 00             	mov    (%rax),%rax
    12b0:	b0 00                	mov    $0x0,%al
    12b2:	48 89 c2             	mov    %rax,%rdx
    12b5:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    12bc:	80 ff ff 
    12bf:	48 01 d0             	add    %rdx,%rax
    12c2:	48 8b 00             	mov    (%rax),%rax
    12c5:	b0 00                	mov    $0x0,%al
    12c7:	48 89 c1             	mov    %rax,%rcx
    12ca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12d1:	00 00 00 
    12d4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12d8:	48 89 c2             	mov    %rax,%rdx
    12db:	be 00 00 00 00       	mov    $0x0,%esi
    12e0:	bf ff ff 00 00       	mov    $0xffff,%edi
    12e5:	49 89 df             	mov    %rbx,%r15
    12e8:	b8 00 00 00 00       	mov    $0x0,%eax
    12ed:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    12f4:	00 00 00 
    12f7:	49 01 d8             	add    %rbx,%r8
    12fa:	41 ff d0             	call   *%r8
    12fd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1304:	eb 36                	jmp    133c <init_memory+0x1023>
    1306:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1309:	48 98                	cltq
    130b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1312:	00 
    1313:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    131a:	00 00 00 
    131d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1321:	48 01 c2             	add    %rax,%rdx
    1324:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    132b:	80 ff ff 
    132e:	48 01 d0             	add    %rdx,%rax
    1331:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    1338:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    133c:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    1340:	7e c4                	jle    1306 <init_memory+0xfed>
    1342:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1349:	00 00 00 
    134c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1350:	48 89 c2             	mov    %rax,%rdx
    1353:	be 00 00 00 00       	mov    $0x0,%esi
    1358:	bf ff ff 00 00       	mov    $0xffff,%edi
    135d:	49 89 df             	mov    %rbx,%r15
    1360:	b8 00 00 00 00       	mov    $0x0,%eax
    1365:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    136c:	00 00 00 
    136f:	48 01 d9             	add    %rbx,%rcx
    1372:	ff d1                	call   *%rcx
    1374:	0f 20 d8             	mov    %cr3,%rax
    1377:	0f 22 d8             	mov    %rax,%cr3
    137a:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    137e:	90                   	nop
    137f:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
    1383:	5b                   	pop    %rbx
    1384:	41 5f                	pop    %r15
    1386:	5d                   	pop    %rbp
    1387:	c3                   	ret

0000000000001388 <alloc_page>:
    1388:	f3 0f 1e fa          	endbr64
    138c:	55                   	push   %rbp
    138d:	48 89 e5             	mov    %rsp,%rbp
    1390:	41 57                	push   %r15
    1392:	53                   	push   %rbx
    1393:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1397:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 1397 <alloc_page+0xf>
    139e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    13a5:	00 00 00 
    13a8:	4c 01 db             	add    %r11,%rbx
    13ab:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
    13b1:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
    13b7:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
    13be:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    13c5:	00 
    13c6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    13cd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    13d4:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
    13db:	74 5b                	je     1438 <alloc_page+0xb0>
    13dd:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
    13e4:	7f 7c                	jg     1462 <alloc_page+0xda>
    13e6:	83 bd 7c ff ff ff 01 	cmpl   $0x1,-0x84(%rbp)
    13ed:	74 0b                	je     13fa <alloc_page+0x72>
    13ef:	83 bd 7c ff ff ff 02 	cmpl   $0x2,-0x84(%rbp)
    13f6:	74 1e                	je     1416 <alloc_page+0x8e>
    13f8:	eb 68                	jmp    1462 <alloc_page+0xda>
    13fa:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1401:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1408:	00 00 00 
    140b:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    140e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1411:	e9 88 00 00 00       	jmp    149e <alloc_page+0x116>
    1416:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    141d:	00 00 00 
    1420:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1423:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1426:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    142d:	00 00 00 
    1430:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1433:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1436:	eb 66                	jmp    149e <alloc_page+0x116>
    1438:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    143f:	00 00 00 
    1442:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1445:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1448:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    144f:	00 00 00 
    1452:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
    1459:	00 
    145a:	83 e8 01             	sub    $0x1,%eax
    145d:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1460:	eb 3c                	jmp    149e <alloc_page+0x116>
    1462:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1469:	00 00 00 
    146c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1470:	48 89 c2             	mov    %rax,%rdx
    1473:	be 00 00 00 00       	mov    $0x0,%esi
    1478:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    147d:	49 89 df             	mov    %rbx,%r15
    1480:	b8 00 00 00 00       	mov    $0x0,%eax
    1485:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    148c:	00 00 00 
    148f:	48 01 d9             	add    %rbx,%rcx
    1492:	ff d1                	call   *%rcx
    1494:	b8 00 00 00 00       	mov    $0x0,%eax
    1499:	e9 79 02 00 00       	jmp    1717 <alloc_page+0x38f>
    149e:	8b 45 e8             	mov    -0x18(%rbp),%eax
    14a1:	89 45 ec             	mov    %eax,-0x14(%rbp)
    14a4:	e9 5d 02 00 00       	jmp    1706 <alloc_page+0x37e>
    14a9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14b0:	00 00 00 
    14b3:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
    14ba:	00 
    14bb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    14be:	48 63 d0             	movslq %eax,%rdx
    14c1:	48 89 d0             	mov    %rdx,%rax
    14c4:	48 c1 e0 02          	shl    $0x2,%rax
    14c8:	48 01 d0             	add    %rdx,%rax
    14cb:	48 c1 e0 04          	shl    $0x4,%rax
    14cf:	48 01 c8             	add    %rcx,%rax
    14d2:	48 8b 50 40          	mov    0x40(%rax),%rdx
    14d6:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    14dc:	48 98                	cltq
    14de:	48 39 c2             	cmp    %rax,%rdx
    14e1:	0f 82 1a 02 00 00    	jb     1701 <alloc_page+0x379>
    14e7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14ee:	00 00 00 
    14f1:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
    14f8:	00 
    14f9:	8b 45 ec             	mov    -0x14(%rbp),%eax
    14fc:	48 63 d0             	movslq %eax,%rdx
    14ff:	48 89 d0             	mov    %rdx,%rax
    1502:	48 c1 e0 02          	shl    $0x2,%rax
    1506:	48 01 d0             	add    %rdx,%rax
    1509:	48 c1 e0 04          	shl    $0x4,%rax
    150d:	48 01 c8             	add    %rcx,%rax
    1510:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1514:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1518:	48 8b 40 10          	mov    0x10(%rax),%rax
    151c:	48 c1 e8 15          	shr    $0x15,%rax
    1520:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1524:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1528:	48 8b 40 18          	mov    0x18(%rax),%rax
    152c:	48 c1 e8 15          	shr    $0x15,%rax
    1530:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1534:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1538:	48 8b 40 20          	mov    0x20(%rax),%rax
    153c:	48 c1 e8 15          	shr    $0x15,%rax
    1540:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1544:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1548:	83 e0 3f             	and    $0x3f,%eax
    154b:	48 89 c2             	mov    %rax,%rdx
    154e:	b8 40 00 00 00       	mov    $0x40,%eax
    1553:	48 29 d0             	sub    %rdx,%rax
    1556:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    155a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    155e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1562:	e9 8a 01 00 00       	jmp    16f1 <alloc_page+0x369>
    1567:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    156e:	00 00 00 
    1571:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
    1578:	00 
    1579:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    157d:	48 c1 ea 06          	shr    $0x6,%rdx
    1581:	48 c1 e2 03          	shl    $0x3,%rdx
    1585:	48 01 d0             	add    %rdx,%rax
    1588:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    158c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1590:	83 e0 3f             	and    $0x3f,%eax
    1593:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    1597:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    159b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    159f:	e9 1f 01 00 00       	jmp    16c3 <alloc_page+0x33b>
    15a4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15a8:	48 8b 00             	mov    (%rax),%rax
    15ab:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    15af:	89 d1                	mov    %edx,%ecx
    15b1:	48 d3 e8             	shr    %cl,%rax
    15b4:	48 89 c6             	mov    %rax,%rsi
    15b7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15bb:	48 83 c0 08          	add    $0x8,%rax
    15bf:	48 8b 10             	mov    (%rax),%rdx
    15c2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15c6:	89 c1                	mov    %eax,%ecx
    15c8:	b8 40 00 00 00       	mov    $0x40,%eax
    15cd:	29 c8                	sub    %ecx,%eax
    15cf:	89 c1                	mov    %eax,%ecx
    15d1:	48 d3 e2             	shl    %cl,%rdx
    15d4:	48 89 d0             	mov    %rdx,%rax
    15d7:	48 09 c6             	or     %rax,%rsi
    15da:	48 89 f2             	mov    %rsi,%rdx
    15dd:	83 bd 78 ff ff ff 40 	cmpl   $0x40,-0x88(%rbp)
    15e4:	74 19                	je     15ff <alloc_page+0x277>
    15e6:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    15ec:	be 01 00 00 00       	mov    $0x1,%esi
    15f1:	89 c1                	mov    %eax,%ecx
    15f3:	48 d3 e6             	shl    %cl,%rsi
    15f6:	48 89 f0             	mov    %rsi,%rax
    15f9:	48 83 e8 01          	sub    $0x1,%rax
    15fd:	eb 07                	jmp    1606 <alloc_page+0x27e>
    15ff:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1606:	48 21 d0             	and    %rdx,%rax
    1609:	48 85 c0             	test   %rax,%rax
    160c:	0f 85 ac 00 00 00    	jne    16be <alloc_page+0x336>
    1612:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1616:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    161a:	48 01 d0             	add    %rdx,%rax
    161d:	48 83 e8 01          	sub    $0x1,%rax
    1621:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1625:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    162c:	00 
    162d:	eb 58                	jmp    1687 <alloc_page+0x2ff>
    162f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1636:	00 00 00 
    1639:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    1640:	00 
    1641:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    1645:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1649:	48 01 c2             	add    %rax,%rdx
    164c:	48 89 d0             	mov    %rdx,%rax
    164f:	48 c1 e0 02          	shl    $0x2,%rax
    1653:	48 01 d0             	add    %rdx,%rax
    1656:	48 c1 e0 03          	shl    $0x3,%rax
    165a:	48 01 c8             	add    %rcx,%rax
    165d:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    1661:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    1668:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    166c:	48 89 d6             	mov    %rdx,%rsi
    166f:	48 89 c7             	mov    %rax,%rdi
    1672:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1679:	00 00 00 
    167c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1680:	ff d0                	call   *%rax
    1682:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
    1687:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    168d:	48 98                	cltq
    168f:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    1693:	72 9a                	jb     162f <alloc_page+0x2a7>
    1695:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    169c:	00 00 00 
    169f:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    16a6:	00 
    16a7:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    16ab:	48 89 d0             	mov    %rdx,%rax
    16ae:	48 c1 e0 02          	shl    $0x2,%rax
    16b2:	48 01 d0             	add    %rdx,%rax
    16b5:	48 c1 e0 03          	shl    $0x3,%rax
    16b9:	48 01 c8             	add    %rcx,%rax
    16bc:	eb 59                	jmp    1717 <alloc_page+0x38f>
    16be:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
    16c3:	b8 40 00 00 00       	mov    $0x40,%eax
    16c8:	48 2b 45 88          	sub    -0x78(%rbp),%rax
    16cc:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
    16d0:	0f 82 ce fe ff ff    	jb     15a4 <alloc_page+0x21c>
    16d6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16da:	83 e0 3f             	and    $0x3f,%eax
    16dd:	48 85 c0             	test   %rax,%rax
    16e0:	74 06                	je     16e8 <alloc_page+0x360>
    16e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    16e6:	eb 05                	jmp    16ed <alloc_page+0x365>
    16e8:	b8 40 00 00 00       	mov    $0x40,%eax
    16ed:	48 01 45 d8          	add    %rax,-0x28(%rbp)
    16f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16f5:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
    16f9:	0f 83 68 fe ff ff    	jae    1567 <alloc_page+0x1df>
    16ff:	eb 01                	jmp    1702 <alloc_page+0x37a>
    1701:	90                   	nop
    1702:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1706:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1709:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    170c:	0f 8e 97 fd ff ff    	jle    14a9 <alloc_page+0x121>
    1712:	b8 00 00 00 00       	mov    $0x0,%eax
    1717:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    171b:	5b                   	pop    %rbx
    171c:	41 5f                	pop    %r15
    171e:	5d                   	pop    %rbp
    171f:	c3                   	ret
