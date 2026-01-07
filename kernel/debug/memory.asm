
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
     393:	e9 8a 01 00 00       	jmp    522 <init_memory+0x209>
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
     51c:	77 10                	ja     52e <init_memory+0x215>
     51e:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
     522:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
     526:	0f 8e 6c fe ff ff    	jle    398 <init_memory+0x7f>
     52c:	eb 01                	jmp    52f <init_memory+0x216>
     52e:	90                   	nop
     52f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     533:	48 89 c1             	mov    %rax,%rcx
     536:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     53d:	00 00 00 
     540:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     544:	48 89 c2             	mov    %rax,%rdx
     547:	be 00 00 00 00       	mov    $0x0,%esi
     54c:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     551:	49 89 df             	mov    %rbx,%r15
     554:	b8 00 00 00 00       	mov    $0x0,%eax
     559:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     560:	00 00 00 
     563:	49 01 d8             	add    %rbx,%r8
     566:	41 ff d0             	call   *%r8
     569:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     570:	00 
     571:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     578:	e9 ed 00 00 00       	jmp    66a <init_memory+0x351>
     57d:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     584:	00 00 00 
     587:	8b 45 ec             	mov    -0x14(%rbp),%eax
     58a:	48 63 d0             	movslq %eax,%rdx
     58d:	48 01 d9             	add    %rbx,%rcx
     590:	48 89 d0             	mov    %rdx,%rax
     593:	48 c1 e0 02          	shl    $0x2,%rax
     597:	48 01 d0             	add    %rdx,%rax
     59a:	48 c1 e0 02          	shl    $0x2,%rax
     59e:	48 01 c8             	add    %rcx,%rax
     5a1:	48 83 c0 10          	add    $0x10,%rax
     5a5:	8b 00                	mov    (%rax),%eax
     5a7:	83 f8 01             	cmp    $0x1,%eax
     5aa:	0f 85 b2 00 00 00    	jne    662 <init_memory+0x349>
     5b0:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     5b7:	00 00 00 
     5ba:	8b 45 ec             	mov    -0x14(%rbp),%eax
     5bd:	48 63 d0             	movslq %eax,%rdx
     5c0:	48 01 d9             	add    %rbx,%rcx
     5c3:	48 89 d0             	mov    %rdx,%rax
     5c6:	48 c1 e0 02          	shl    $0x2,%rax
     5ca:	48 01 d0             	add    %rdx,%rax
     5cd:	48 c1 e0 02          	shl    $0x2,%rax
     5d1:	48 01 c8             	add    %rcx,%rax
     5d4:	48 8b 00             	mov    (%rax),%rax
     5d7:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     5dd:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     5e3:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     5e7:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     5ee:	00 00 00 
     5f1:	8b 45 ec             	mov    -0x14(%rbp),%eax
     5f4:	48 63 d0             	movslq %eax,%rdx
     5f7:	48 01 d9             	add    %rbx,%rcx
     5fa:	48 89 d0             	mov    %rdx,%rax
     5fd:	48 c1 e0 02          	shl    $0x2,%rax
     601:	48 01 d0             	add    %rdx,%rax
     604:	48 c1 e0 02          	shl    $0x2,%rax
     608:	48 01 c8             	add    %rcx,%rax
     60b:	48 8b 08             	mov    (%rax),%rcx
     60e:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     615:	00 00 00 
     618:	8b 45 ec             	mov    -0x14(%rbp),%eax
     61b:	48 63 d0             	movslq %eax,%rdx
     61e:	48 89 d0             	mov    %rdx,%rax
     621:	48 c1 e0 02          	shl    $0x2,%rax
     625:	48 01 d0             	add    %rdx,%rax
     628:	48 c1 e0 02          	shl    $0x2,%rax
     62c:	48 01 d8             	add    %rbx,%rax
     62f:	48 01 f0             	add    %rsi,%rax
     632:	48 83 c0 08          	add    $0x8,%rax
     636:	48 8b 00             	mov    (%rax),%rax
     639:	48 01 c8             	add    %rcx,%rax
     63c:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     642:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     646:	48 8b 45 88          	mov    -0x78(%rbp),%rax
     64a:	48 39 45 90          	cmp    %rax,-0x70(%rbp)
     64e:	73 15                	jae    665 <init_memory+0x34c>
     650:	48 8b 45 88          	mov    -0x78(%rbp),%rax
     654:	48 2b 45 90          	sub    -0x70(%rbp),%rax
     658:	48 c1 e8 15          	shr    $0x15,%rax
     65c:	48 01 45 e0          	add    %rax,-0x20(%rbp)
     660:	eb 04                	jmp    666 <init_memory+0x34d>
     662:	90                   	nop
     663:	eb 01                	jmp    666 <init_memory+0x34d>
     665:	90                   	nop
     666:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     66a:	8b 45 ec             	mov    -0x14(%rbp),%eax
     66d:	48 98                	cltq
     66f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     676:	00 00 00 
     679:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     680:	00 
     681:	48 39 c2             	cmp    %rax,%rdx
     684:	0f 83 f3 fe ff ff    	jae    57d <init_memory+0x264>
     68a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     68e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     692:	49 89 d0             	mov    %rdx,%r8
     695:	48 89 c1             	mov    %rax,%rcx
     698:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     69f:	00 00 00 
     6a2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     6a6:	48 89 c2             	mov    %rax,%rdx
     6a9:	be 00 00 00 00       	mov    $0x0,%esi
     6ae:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     6b3:	49 89 df             	mov    %rbx,%r15
     6b6:	b8 00 00 00 00       	mov    $0x0,%eax
     6bb:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     6c2:	00 00 00 
     6c5:	49 01 d9             	add    %rbx,%r9
     6c8:	41 ff d1             	call   *%r9
     6cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6d2:	00 00 00 
     6d5:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     6dc:	00 
     6dd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6e4:	00 00 00 
     6e7:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
     6eb:	48 89 d0             	mov    %rdx,%rax
     6ee:	48 c1 e0 02          	shl    $0x2,%rax
     6f2:	48 01 d0             	add    %rdx,%rax
     6f5:	48 c1 e0 02          	shl    $0x2,%rax
     6f9:	48 01 c8             	add    %rcx,%rax
     6fc:	48 8b 08             	mov    (%rax),%rcx
     6ff:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     706:	00 00 00 
     709:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     710:	00 
     711:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     718:	00 00 00 
     71b:	48 89 d0             	mov    %rdx,%rax
     71e:	48 c1 e0 02          	shl    $0x2,%rax
     722:	48 01 d0             	add    %rdx,%rax
     725:	48 c1 e0 02          	shl    $0x2,%rax
     729:	48 01 d8             	add    %rbx,%rax
     72c:	48 01 f0             	add    %rsi,%rax
     72f:	48 83 c0 08          	add    $0x8,%rax
     733:	48 8b 00             	mov    (%rax),%rax
     736:	48 01 c8             	add    %rcx,%rax
     739:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     73d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     741:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     745:	49 89 d0             	mov    %rdx,%r8
     748:	48 89 c1             	mov    %rax,%rcx
     74b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     752:	00 00 00 
     755:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     759:	48 89 c2             	mov    %rax,%rdx
     75c:	be 00 00 00 00       	mov    $0x0,%esi
     761:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     766:	49 89 df             	mov    %rbx,%r15
     769:	b8 00 00 00 00       	mov    $0x0,%eax
     76e:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     775:	00 00 00 
     778:	49 01 d9             	add    %rbx,%r9
     77b:	41 ff d1             	call   *%r9
     77e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     785:	00 00 00 
     788:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
     78f:	00 
     790:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     796:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     79c:	48 89 c2             	mov    %rax,%rdx
     79f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7a6:	00 00 00 
     7a9:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
     7b0:	00 
     7b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     7b5:	48 c1 e8 15          	shr    $0x15,%rax
     7b9:	48 89 c2             	mov    %rax,%rdx
     7bc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7c3:	00 00 00 
     7c6:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
     7cd:	00 
     7ce:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     7d2:	48 c1 e8 15          	shr    $0x15,%rax
     7d6:	48 83 c0 3f          	add    $0x3f,%rax
     7da:	48 c1 e8 03          	shr    $0x3,%rax
     7de:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     7e2:	48 89 c2             	mov    %rax,%rdx
     7e5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7ec:	00 00 00 
     7ef:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
     7f6:	00 
     7f7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7fe:	00 00 00 
     801:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     808:	00 
     809:	48 89 c2             	mov    %rax,%rdx
     80c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     813:	00 00 00 
     816:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     81d:	00 
     81e:	be ff 00 00 00       	mov    $0xff,%esi
     823:	48 89 c7             	mov    %rax,%rdi
     826:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     82d:	00 00 00 
     830:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     834:	ff d0                	call   *%rax
     836:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     83d:	00 00 00 
     840:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     847:	00 
     848:	48 89 c2             	mov    %rax,%rdx
     84b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     852:	00 00 00 
     855:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     85c:	00 
     85d:	48 01 d0             	add    %rdx,%rax
     860:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     866:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     86c:	48 89 c2             	mov    %rax,%rdx
     86f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     876:	00 00 00 
     879:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
     880:	00 
     881:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     885:	48 c1 e8 15          	shr    $0x15,%rax
     889:	48 89 c2             	mov    %rax,%rdx
     88c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     893:	00 00 00 
     896:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
     89d:	00 
     89e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     8a2:	48 c1 e8 15          	shr    $0x15,%rax
     8a6:	48 89 c2             	mov    %rax,%rdx
     8a9:	48 89 d0             	mov    %rdx,%rax
     8ac:	48 c1 e0 02          	shl    $0x2,%rax
     8b0:	48 01 d0             	add    %rdx,%rax
     8b3:	48 c1 e0 03          	shl    $0x3,%rax
     8b7:	48 83 c0 07          	add    $0x7,%rax
     8bb:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     8bf:	48 89 c2             	mov    %rax,%rdx
     8c2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8c9:	00 00 00 
     8cc:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
     8d3:	00 
     8d4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8db:	00 00 00 
     8de:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     8e5:	00 
     8e6:	48 89 c2             	mov    %rax,%rdx
     8e9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8f0:	00 00 00 
     8f3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     8fa:	00 
     8fb:	be 00 00 00 00       	mov    $0x0,%esi
     900:	48 89 c7             	mov    %rax,%rdi
     903:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     90a:	00 00 00 
     90d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     911:	ff d0                	call   *%rax
     913:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     91a:	00 00 00 
     91d:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     924:	00 
     925:	48 89 c2             	mov    %rax,%rdx
     928:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     92f:	00 00 00 
     932:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     939:	00 
     93a:	48 01 d0             	add    %rdx,%rax
     93d:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     943:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     949:	48 89 c2             	mov    %rax,%rdx
     94c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     953:	00 00 00 
     956:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
     95d:	00 
     95e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     965:	00 00 00 
     968:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
     96f:	00 00 00 00 00 
     974:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     97b:	00 00 00 
     97e:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
     985:	00 90 01 00 00 
     98a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     991:	00 00 00 
     994:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
     99b:	00 
     99c:	48 89 c2             	mov    %rax,%rdx
     99f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a6:	00 00 00 
     9a9:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     9b0:	00 
     9b1:	be 00 00 00 00       	mov    $0x0,%esi
     9b6:	48 89 c7             	mov    %rax,%rdi
     9b9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9c0:	00 00 00 
     9c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     9c7:	ff d0                	call   *%rax
     9c9:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     9d0:	e9 f8 02 00 00       	jmp    ccd <init_memory+0x9b4>
     9d5:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     9dc:	00 00 00 
     9df:	8b 45 ec             	mov    -0x14(%rbp),%eax
     9e2:	48 63 d0             	movslq %eax,%rdx
     9e5:	48 01 d9             	add    %rbx,%rcx
     9e8:	48 89 d0             	mov    %rdx,%rax
     9eb:	48 c1 e0 02          	shl    $0x2,%rax
     9ef:	48 01 d0             	add    %rdx,%rax
     9f2:	48 c1 e0 02          	shl    $0x2,%rax
     9f6:	48 01 c8             	add    %rcx,%rax
     9f9:	48 83 c0 10          	add    $0x10,%rax
     9fd:	8b 00                	mov    (%rax),%eax
     9ff:	83 f8 01             	cmp    $0x1,%eax
     a02:	0f 85 bd 02 00 00    	jne    cc5 <init_memory+0x9ac>
     a08:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a0f:	00 00 00 
     a12:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a15:	48 63 d0             	movslq %eax,%rdx
     a18:	48 01 d9             	add    %rbx,%rcx
     a1b:	48 89 d0             	mov    %rdx,%rax
     a1e:	48 c1 e0 02          	shl    $0x2,%rax
     a22:	48 01 d0             	add    %rdx,%rax
     a25:	48 c1 e0 02          	shl    $0x2,%rax
     a29:	48 01 c8             	add    %rcx,%rax
     a2c:	48 8b 00             	mov    (%rax),%rax
     a2f:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     a35:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     a3b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     a3f:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a46:	00 00 00 
     a49:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a4c:	48 63 d0             	movslq %eax,%rdx
     a4f:	48 01 d9             	add    %rbx,%rcx
     a52:	48 89 d0             	mov    %rdx,%rax
     a55:	48 c1 e0 02          	shl    $0x2,%rax
     a59:	48 01 d0             	add    %rdx,%rax
     a5c:	48 c1 e0 02          	shl    $0x2,%rax
     a60:	48 01 c8             	add    %rcx,%rax
     a63:	48 8b 08             	mov    (%rax),%rcx
     a66:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     a6d:	00 00 00 
     a70:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a73:	48 63 d0             	movslq %eax,%rdx
     a76:	48 89 d0             	mov    %rdx,%rax
     a79:	48 c1 e0 02          	shl    $0x2,%rax
     a7d:	48 01 d0             	add    %rdx,%rax
     a80:	48 c1 e0 02          	shl    $0x2,%rax
     a84:	48 01 d8             	add    %rbx,%rax
     a87:	48 01 f0             	add    %rsi,%rax
     a8a:	48 83 c0 08          	add    $0x8,%rax
     a8e:	48 8b 00             	mov    (%rax),%rax
     a91:	48 01 c8             	add    %rcx,%rax
     a94:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     a9a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     a9e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     aa2:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
     aa6:	0f 83 1c 02 00 00    	jae    cc8 <init_memory+0x9af>
     aac:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ab3:	00 00 00 
     ab6:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     abd:	00 
     abe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ac5:	00 00 00 
     ac8:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     acf:	00 
     ad0:	48 89 d0             	mov    %rdx,%rax
     ad3:	48 c1 e0 02          	shl    $0x2,%rax
     ad7:	48 01 d0             	add    %rdx,%rax
     ada:	48 c1 e0 04          	shl    $0x4,%rax
     ade:	48 01 c8             	add    %rcx,%rax
     ae1:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     ae5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     aec:	00 00 00 
     aef:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     af6:	00 
     af7:	48 8d 50 01          	lea    0x1(%rax),%rdx
     afb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b02:	00 00 00 
     b05:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
     b0c:	00 
     b0d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b11:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
     b15:	48 89 50 10          	mov    %rdx,0x10(%rax)
     b19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b1d:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     b21:	48 89 50 18          	mov    %rdx,0x18(%rax)
     b25:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     b29:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
     b2d:	48 89 c2             	mov    %rax,%rdx
     b30:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b34:	48 89 50 20          	mov    %rdx,0x20(%rax)
     b38:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b3c:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
     b43:	00 
     b44:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     b48:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
     b4c:	48 c1 e8 15          	shr    $0x15,%rax
     b50:	48 89 c2             	mov    %rax,%rdx
     b53:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b57:	48 89 50 40          	mov    %rdx,0x40(%rax)
     b5b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b5f:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
     b66:	00 
     b67:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b6b:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
     b72:	00 
     b73:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b77:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     b7e:	00 00 00 
     b81:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
     b85:	48 89 50 30          	mov    %rdx,0x30(%rax)
     b89:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     b8d:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
     b91:	48 c1 e8 15          	shr    $0x15,%rax
     b95:	48 89 c2             	mov    %rax,%rdx
     b98:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b9c:	48 89 50 08          	mov    %rdx,0x8(%rax)
     ba0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ba7:	00 00 00 
     baa:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
     bb1:	00 
     bb2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     bb6:	48 c1 e8 15          	shr    $0x15,%rax
     bba:	48 89 c2             	mov    %rax,%rdx
     bbd:	48 89 d0             	mov    %rdx,%rax
     bc0:	48 c1 e0 02          	shl    $0x2,%rax
     bc4:	48 01 d0             	add    %rdx,%rax
     bc7:	48 c1 e0 03          	shl    $0x3,%rax
     bcb:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     bcf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     bd3:	48 89 10             	mov    %rdx,(%rax)
     bd6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     bda:	48 8b 00             	mov    (%rax),%rax
     bdd:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     be1:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
     be8:	e9 bf 00 00 00       	jmp    cac <init_memory+0x993>
     bed:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     bf1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     bf5:	48 89 10             	mov    %rdx,(%rax)
     bf8:	8b 45 e8             	mov    -0x18(%rbp),%eax
     bfb:	48 98                	cltq
     bfd:	48 c1 e0 15          	shl    $0x15,%rax
     c01:	48 89 c2             	mov    %rax,%rdx
     c04:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     c08:	48 01 c2             	add    %rax,%rdx
     c0b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c0f:	48 89 50 08          	mov    %rdx,0x8(%rax)
     c13:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c17:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     c1e:	00 
     c1f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c23:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     c2a:	00 
     c2b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c2f:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     c36:	00 
     c37:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c3e:	00 00 00 
     c41:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
     c48:	00 
     c49:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c4d:	48 8b 40 08          	mov    0x8(%rax),%rax
     c51:	48 c1 e8 1b          	shr    $0x1b,%rax
     c55:	48 c1 e0 03          	shl    $0x3,%rax
     c59:	48 01 d0             	add    %rdx,%rax
     c5c:	48 8b 10             	mov    (%rax),%rdx
     c5f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c63:	48 8b 40 08          	mov    0x8(%rax),%rax
     c67:	48 c1 e8 15          	shr    $0x15,%rax
     c6b:	83 e0 3f             	and    $0x3f,%eax
     c6e:	be 01 00 00 00       	mov    $0x1,%esi
     c73:	89 c1                	mov    %eax,%ecx
     c75:	48 d3 e6             	shl    %cl,%rsi
     c78:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c7f:	00 00 00 
     c82:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
     c89:	00 
     c8a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c8e:	48 8b 40 08          	mov    0x8(%rax),%rax
     c92:	48 c1 e8 1b          	shr    $0x1b,%rax
     c96:	48 c1 e0 03          	shl    $0x3,%rax
     c9a:	48 01 c8             	add    %rcx,%rax
     c9d:	48 31 f2             	xor    %rsi,%rdx
     ca0:	48 89 10             	mov    %rdx,(%rax)
     ca3:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
     ca7:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
     cac:	8b 45 e8             	mov    -0x18(%rbp),%eax
     caf:	48 63 d0             	movslq %eax,%rdx
     cb2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     cb6:	48 8b 40 08          	mov    0x8(%rax),%rax
     cba:	48 39 c2             	cmp    %rax,%rdx
     cbd:	0f 82 2a ff ff ff    	jb     bed <init_memory+0x8d4>
     cc3:	eb 04                	jmp    cc9 <init_memory+0x9b0>
     cc5:	90                   	nop
     cc6:	eb 01                	jmp    cc9 <init_memory+0x9b0>
     cc8:	90                   	nop
     cc9:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     ccd:	8b 45 ec             	mov    -0x14(%rbp),%eax
     cd0:	48 98                	cltq
     cd2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     cd9:	00 00 00 
     cdc:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     ce3:	00 
     ce4:	48 39 c2             	cmp    %rax,%rdx
     ce7:	0f 83 e8 fc ff ff    	jae    9d5 <init_memory+0x6bc>
     ced:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cf4:	00 00 00 
     cf7:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     cfe:	00 
     cff:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     d06:	00 00 00 
     d09:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
     d10:	00 
     d11:	48 89 10             	mov    %rdx,(%rax)
     d14:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d1b:	00 00 00 
     d1e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d25:	00 
     d26:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
     d2d:	00 
     d2e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d35:	00 00 00 
     d38:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d3f:	00 
     d40:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     d47:	00 
     d48:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d4f:	00 00 00 
     d52:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d59:	00 
     d5a:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     d61:	00 
     d62:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d69:	00 00 00 
     d6c:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d73:	00 
     d74:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     d7b:	00 
     d7c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d83:	00 00 00 
     d86:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     d8d:	00 
     d8e:	48 89 d0             	mov    %rdx,%rax
     d91:	48 c1 e0 02          	shl    $0x2,%rax
     d95:	48 01 d0             	add    %rdx,%rax
     d98:	48 c1 e0 04          	shl    $0x4,%rax
     d9c:	48 83 c0 07          	add    $0x7,%rax
     da0:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     da4:	48 89 c2             	mov    %rax,%rdx
     da7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dae:	00 00 00 
     db1:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
     db8:	00 
     db9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dc0:	00 00 00 
     dc3:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
     dca:	00 
     dcb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dd2:	00 00 00 
     dd5:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
     ddc:	00 
     ddd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     de4:	00 00 00 
     de7:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     dee:	00 
     def:	49 89 c9             	mov    %rcx,%r9
     df2:	49 89 d0             	mov    %rdx,%r8
     df5:	48 89 c1             	mov    %rax,%rcx
     df8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dff:	00 00 00 
     e02:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e06:	48 89 c2             	mov    %rax,%rdx
     e09:	be 00 00 00 00       	mov    $0x0,%esi
     e0e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     e13:	49 89 df             	mov    %rbx,%r15
     e16:	b8 00 00 00 00       	mov    $0x0,%eax
     e1b:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     e22:	00 00 00 
     e25:	49 01 da             	add    %rbx,%r10
     e28:	41 ff d2             	call   *%r10
     e2b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e32:	00 00 00 
     e35:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
     e3c:	00 
     e3d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e44:	00 00 00 
     e47:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
     e4e:	00 
     e4f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e56:	00 00 00 
     e59:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     e60:	00 
     e61:	49 89 c9             	mov    %rcx,%r9
     e64:	49 89 d0             	mov    %rdx,%r8
     e67:	48 89 c1             	mov    %rax,%rcx
     e6a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e71:	00 00 00 
     e74:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e78:	48 89 c2             	mov    %rax,%rdx
     e7b:	be 00 00 00 00       	mov    $0x0,%esi
     e80:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     e85:	49 89 df             	mov    %rbx,%r15
     e88:	b8 00 00 00 00       	mov    $0x0,%eax
     e8d:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     e94:	00 00 00 
     e97:	49 01 da             	add    %rbx,%r10
     e9a:	41 ff d2             	call   *%r10
     e9d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ea4:	00 00 00 
     ea7:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
     eae:	00 
     eaf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     eb6:	00 00 00 
     eb9:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     ec0:	00 
     ec1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ec8:	00 00 00 
     ecb:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     ed2:	00 
     ed3:	49 89 c9             	mov    %rcx,%r9
     ed6:	49 89 d0             	mov    %rdx,%r8
     ed9:	48 89 c1             	mov    %rax,%rcx
     edc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ee3:	00 00 00 
     ee6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     eea:	48 89 c2             	mov    %rax,%rdx
     eed:	be 00 00 00 00       	mov    $0x0,%esi
     ef2:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     ef7:	49 89 df             	mov    %rbx,%r15
     efa:	b8 00 00 00 00       	mov    $0x0,%eax
     eff:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     f06:	00 00 00 
     f09:	49 01 da             	add    %rbx,%r10
     f0c:	41 ff d2             	call   *%r10
     f0f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     f16:	e9 c1 00 00 00       	jmp    fdc <init_memory+0xcc3>
     f1b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f22:	00 00 00 
     f25:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     f2c:	00 
     f2d:	8b 45 ec             	mov    -0x14(%rbp),%eax
     f30:	48 63 d0             	movslq %eax,%rdx
     f33:	48 89 d0             	mov    %rdx,%rax
     f36:	48 c1 e0 02          	shl    $0x2,%rax
     f3a:	48 01 d0             	add    %rdx,%rax
     f3d:	48 c1 e0 04          	shl    $0x4,%rax
     f41:	48 01 c8             	add    %rcx,%rax
     f44:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
     f48:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     f4c:	48 8b 48 08          	mov    0x8(%rax),%rcx
     f50:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     f54:	48 8b 10             	mov    (%rax),%rdx
     f57:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     f5b:	48 8b 78 20          	mov    0x20(%rax),%rdi
     f5f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     f63:	48 8b 70 18          	mov    0x18(%rax),%rsi
     f67:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     f6b:	48 8b 40 10          	mov    0x10(%rax),%rax
     f6f:	51                   	push   %rcx
     f70:	52                   	push   %rdx
     f71:	49 89 f9             	mov    %rdi,%r9
     f74:	49 89 f0             	mov    %rsi,%r8
     f77:	48 89 c1             	mov    %rax,%rcx
     f7a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f81:	00 00 00 
     f84:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f88:	48 89 c2             	mov    %rax,%rdx
     f8b:	be 00 00 00 00       	mov    $0x0,%esi
     f90:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     f95:	49 89 df             	mov    %rbx,%r15
     f98:	b8 00 00 00 00       	mov    $0x0,%eax
     f9d:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     fa4:	00 00 00 
     fa7:	49 01 da             	add    %rbx,%r10
     faa:	41 ff d2             	call   *%r10
     fad:	48 83 c4 10          	add    $0x10,%rsp
     fb1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
     fb5:	48 8b 50 10          	mov    0x10(%rax),%rdx
     fb9:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
     fc0:	00 00 00 
     fc3:	48 39 c2             	cmp    %rax,%rdx
     fc6:	75 10                	jne    fd8 <init_memory+0xcbf>
     fc8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     fcf:	00 00 00 
     fd2:	8b 45 ec             	mov    -0x14(%rbp),%eax
     fd5:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
     fd8:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     fdc:	8b 45 ec             	mov    -0x14(%rbp),%eax
     fdf:	48 63 d0             	movslq %eax,%rdx
     fe2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     fe9:	00 00 00 
     fec:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     ff3:	00 
     ff4:	48 39 c2             	cmp    %rax,%rdx
     ff7:	0f 82 1e ff ff ff    	jb     f1b <init_memory+0xc02>
     ffd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1004:	00 00 00 
    1007:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
    100e:	00 
    100f:	48 89 c2             	mov    %rax,%rdx
    1012:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1019:	00 00 00 
    101c:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
    1023:	00 
    1024:	48 01 d0             	add    %rdx,%rax
    1027:	48 05 00 01 00 00    	add    $0x100,%rax
    102d:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    1031:	48 89 c2             	mov    %rax,%rdx
    1034:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    103b:	00 00 00 
    103e:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
    1045:	00 
    1046:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    104d:	00 00 00 
    1050:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
    1057:	00 
    1058:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    105f:	00 00 00 
    1062:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
    1069:	00 
    106a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1071:	00 00 00 
    1074:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
    107b:	00 
    107c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1083:	00 00 00 
    1086:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
    108d:	00 
    108e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1095:	00 00 00 
    1098:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
    109f:	00 
    10a0:	51                   	push   %rcx
    10a1:	52                   	push   %rdx
    10a2:	49 89 f9             	mov    %rdi,%r9
    10a5:	49 89 f0             	mov    %rsi,%r8
    10a8:	48 89 c1             	mov    %rax,%rcx
    10ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10b2:	00 00 00 
    10b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    10b9:	48 89 c2             	mov    %rax,%rdx
    10bc:	be 00 00 00 00       	mov    $0x0,%esi
    10c1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
    10c6:	49 89 df             	mov    %rbx,%r15
    10c9:	b8 00 00 00 00       	mov    $0x0,%eax
    10ce:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    10d5:	00 00 00 
    10d8:	49 01 da             	add    %rbx,%r10
    10db:	41 ff d2             	call   *%r10
    10de:	48 83 c4 10          	add    $0x10,%rsp
    10e2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10e9:	00 00 00 
    10ec:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
    10f3:	00 
    10f4:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
    10fb:	80 00 00 
    10fe:	48 01 d0             	add    %rdx,%rax
    1101:	48 c1 e8 15          	shr    $0x15,%rax
    1105:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1108:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    110f:	eb 45                	jmp    1156 <init_memory+0xe3d>
    1111:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1118:	00 00 00 
    111b:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    1122:	00 
    1123:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1126:	48 63 d0             	movslq %eax,%rdx
    1129:	48 89 d0             	mov    %rdx,%rax
    112c:	48 c1 e0 02          	shl    $0x2,%rax
    1130:	48 01 d0             	add    %rdx,%rax
    1133:	48 c1 e0 03          	shl    $0x3,%rax
    1137:	48 01 c8             	add    %rcx,%rax
    113a:	be 93 00 00 00       	mov    $0x93,%esi
    113f:	48 89 c7             	mov    %rax,%rdi
    1142:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1149:	00 00 00 
    114c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1150:	ff d0                	call   *%rax
    1152:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    1156:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1159:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    115c:	7e b3                	jle    1111 <init_memory+0xdf8>
    115e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1165:	00 00 00 
    1168:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    116c:	48 89 c1             	mov    %rax,%rcx
    116f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1176:	00 00 00 
    1179:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    117d:	48 89 c2             	mov    %rax,%rdx
    1180:	be 00 00 00 00       	mov    $0x0,%esi
    1185:	bf ff ff 00 00       	mov    $0xffff,%edi
    118a:	49 89 df             	mov    %rbx,%r15
    118d:	b8 00 00 00 00       	mov    $0x0,%eax
    1192:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1199:	00 00 00 
    119c:	49 01 d8             	add    %rbx,%r8
    119f:	41 ff d0             	call   *%r8
    11a2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11a9:	00 00 00 
    11ac:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    11b0:	48 89 c2             	mov    %rax,%rdx
    11b3:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    11ba:	80 ff ff 
    11bd:	48 01 d0             	add    %rdx,%rax
    11c0:	48 8b 00             	mov    (%rax),%rax
    11c3:	48 89 c1             	mov    %rax,%rcx
    11c6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11cd:	00 00 00 
    11d0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11d4:	48 89 c2             	mov    %rax,%rdx
    11d7:	be 00 00 00 00       	mov    $0x0,%esi
    11dc:	bf ff ff 00 00       	mov    $0xffff,%edi
    11e1:	49 89 df             	mov    %rbx,%r15
    11e4:	b8 00 00 00 00       	mov    $0x0,%eax
    11e9:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    11f0:	00 00 00 
    11f3:	49 01 d8             	add    %rbx,%r8
    11f6:	41 ff d0             	call   *%r8
    11f9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1200:	00 00 00 
    1203:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1207:	48 89 c2             	mov    %rax,%rdx
    120a:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    1211:	80 ff ff 
    1214:	48 01 d0             	add    %rdx,%rax
    1217:	48 8b 00             	mov    (%rax),%rax
    121a:	b0 00                	mov    $0x0,%al
    121c:	48 89 c2             	mov    %rax,%rdx
    121f:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    1226:	80 ff ff 
    1229:	48 01 d0             	add    %rdx,%rax
    122c:	48 8b 00             	mov    (%rax),%rax
    122f:	b0 00                	mov    $0x0,%al
    1231:	48 89 c1             	mov    %rax,%rcx
    1234:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    123b:	00 00 00 
    123e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1242:	48 89 c2             	mov    %rax,%rdx
    1245:	be 00 00 00 00       	mov    $0x0,%esi
    124a:	bf ff ff 00 00       	mov    $0xffff,%edi
    124f:	49 89 df             	mov    %rbx,%r15
    1252:	b8 00 00 00 00       	mov    $0x0,%eax
    1257:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    125e:	00 00 00 
    1261:	49 01 d8             	add    %rbx,%r8
    1264:	41 ff d0             	call   *%r8
    1267:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    126e:	eb 36                	jmp    12a6 <init_memory+0xf8d>
    1270:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1273:	48 98                	cltq
    1275:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    127c:	00 
    127d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1284:	00 00 00 
    1287:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    128b:	48 01 c2             	add    %rax,%rdx
    128e:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    1295:	80 ff ff 
    1298:	48 01 d0             	add    %rdx,%rax
    129b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    12a2:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    12a6:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    12aa:	7e c4                	jle    1270 <init_memory+0xf57>
    12ac:	0f 20 d8             	mov    %cr3,%rax
    12af:	0f 22 d8             	mov    %rax,%cr3
    12b2:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    12b6:	90                   	nop
    12b7:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
    12bb:	5b                   	pop    %rbx
    12bc:	41 5f                	pop    %r15
    12be:	5d                   	pop    %rbp
    12bf:	c3                   	ret
