
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
     4c9:	8b 50 10             	mov    0x10(%rax),%edx
     4cc:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     4d3:	00 00 00 
     4d6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     4d9:	48 63 c8             	movslq %eax,%rcx
     4dc:	48 01 de             	add    %rbx,%rsi
     4df:	48 89 c8             	mov    %rcx,%rax
     4e2:	48 c1 e0 02          	shl    $0x2,%rax
     4e6:	48 01 c8             	add    %rcx,%rax
     4e9:	48 c1 e0 02          	shl    $0x2,%rax
     4ed:	48 01 f0             	add    %rsi,%rax
     4f0:	48 83 c0 10          	add    $0x10,%rax
     4f4:	89 10                	mov    %edx,(%rax)
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
     6dc:	48 3b 45 88          	cmp    -0x78(%rbp),%rax
     6e0:	76 15                	jbe    6f7 <init_memory+0x3de>
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
     6ff:	48 63 d0             	movslq %eax,%rdx
     702:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     709:	00 00 00 
     70c:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
     713:	00 
     714:	48 39 c2             	cmp    %rax,%rdx
     717:	0f 86 f2 fe ff ff    	jbe    60f <init_memory+0x2f6>
     71d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     721:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     725:	49 89 d0             	mov    %rdx,%r8
     728:	48 89 c1             	mov    %rax,%rcx
     72b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     732:	00 00 00 
     735:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     739:	48 89 c2             	mov    %rax,%rdx
     73c:	be 00 00 00 00       	mov    $0x0,%esi
     741:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     746:	49 89 df             	mov    %rbx,%r15
     749:	b8 00 00 00 00       	mov    $0x0,%eax
     74e:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     755:	00 00 00 
     758:	49 01 d9             	add    %rbx,%r9
     75b:	41 ff d1             	call   *%r9
     75e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     765:	00 00 00 
     768:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     76f:	00 
     770:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     777:	00 00 00 
     77a:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
     77e:	48 89 d0             	mov    %rdx,%rax
     781:	48 c1 e0 02          	shl    $0x2,%rax
     785:	48 01 d0             	add    %rdx,%rax
     788:	48 c1 e0 02          	shl    $0x2,%rax
     78c:	48 01 c8             	add    %rcx,%rax
     78f:	48 8b 08             	mov    (%rax),%rcx
     792:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     799:	00 00 00 
     79c:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     7a3:	00 
     7a4:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     7ab:	00 00 00 
     7ae:	48 89 d0             	mov    %rdx,%rax
     7b1:	48 c1 e0 02          	shl    $0x2,%rax
     7b5:	48 01 d0             	add    %rdx,%rax
     7b8:	48 c1 e0 02          	shl    $0x2,%rax
     7bc:	48 01 d8             	add    %rbx,%rax
     7bf:	48 01 f0             	add    %rsi,%rax
     7c2:	48 83 c0 08          	add    $0x8,%rax
     7c6:	48 8b 00             	mov    (%rax),%rax
     7c9:	48 01 c8             	add    %rcx,%rax
     7cc:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     7d0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7d7:	00 00 00 
     7da:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
     7e1:	00 
     7e2:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     7e8:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     7ee:	48 89 c2             	mov    %rax,%rdx
     7f1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7f8:	00 00 00 
     7fb:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
     802:	00 
     803:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     807:	48 c1 e8 15          	shr    $0x15,%rax
     80b:	48 89 c2             	mov    %rax,%rdx
     80e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     815:	00 00 00 
     818:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
     81f:	00 
     820:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     824:	48 c1 e8 15          	shr    $0x15,%rax
     828:	48 83 c0 3f          	add    $0x3f,%rax
     82c:	48 c1 e8 03          	shr    $0x3,%rax
     830:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     834:	48 89 c2             	mov    %rax,%rdx
     837:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     83e:	00 00 00 
     841:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
     848:	00 
     849:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     850:	00 00 00 
     853:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     85a:	00 
     85b:	48 89 c2             	mov    %rax,%rdx
     85e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     865:	00 00 00 
     868:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     86f:	00 
     870:	be ff 00 00 00       	mov    $0xff,%esi
     875:	48 89 c7             	mov    %rax,%rdi
     878:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     87f:	00 00 00 
     882:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     886:	ff d0                	call   *%rax
     888:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     88f:	00 00 00 
     892:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     899:	00 
     89a:	48 89 c2             	mov    %rax,%rdx
     89d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8a4:	00 00 00 
     8a7:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     8ae:	00 
     8af:	48 01 d0             	add    %rdx,%rax
     8b2:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     8b8:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     8be:	48 89 c2             	mov    %rax,%rdx
     8c1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8c8:	00 00 00 
     8cb:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
     8d2:	00 
     8d3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     8d7:	48 c1 e8 15          	shr    $0x15,%rax
     8db:	48 89 c2             	mov    %rax,%rdx
     8de:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8e5:	00 00 00 
     8e8:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
     8ef:	00 
     8f0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     8f4:	48 c1 e8 15          	shr    $0x15,%rax
     8f8:	48 89 c2             	mov    %rax,%rdx
     8fb:	48 89 d0             	mov    %rdx,%rax
     8fe:	48 c1 e0 02          	shl    $0x2,%rax
     902:	48 01 d0             	add    %rdx,%rax
     905:	48 c1 e0 03          	shl    $0x3,%rax
     909:	48 83 c0 07          	add    $0x7,%rax
     90d:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     911:	48 89 c2             	mov    %rax,%rdx
     914:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     91b:	00 00 00 
     91e:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
     925:	00 
     926:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     92d:	00 00 00 
     930:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     937:	00 
     938:	48 89 c2             	mov    %rax,%rdx
     93b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     942:	00 00 00 
     945:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     94c:	00 
     94d:	be 00 00 00 00       	mov    $0x0,%esi
     952:	48 89 c7             	mov    %rax,%rdi
     955:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     95c:	00 00 00 
     95f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     963:	ff d0                	call   *%rax
     965:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     96c:	00 00 00 
     96f:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     976:	00 
     977:	48 89 c2             	mov    %rax,%rdx
     97a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     981:	00 00 00 
     984:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     98b:	00 
     98c:	48 01 d0             	add    %rdx,%rax
     98f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     995:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     99b:	48 89 c2             	mov    %rax,%rdx
     99e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a5:	00 00 00 
     9a8:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
     9af:	00 
     9b0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9b7:	00 00 00 
     9ba:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
     9c1:	00 00 00 00 00 
     9c6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9cd:	00 00 00 
     9d0:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
     9d7:	00 90 01 00 00 
     9dc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9e3:	00 00 00 
     9e6:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
     9ed:	00 
     9ee:	48 89 c2             	mov    %rax,%rdx
     9f1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9f8:	00 00 00 
     9fb:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     a02:	00 
     a03:	be 00 00 00 00       	mov    $0x0,%esi
     a08:	48 89 c7             	mov    %rax,%rdi
     a0b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a12:	00 00 00 
     a15:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a19:	ff d0                	call   *%rax
     a1b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     a22:	e9 f8 02 00 00       	jmp    d1f <init_memory+0xa06>
     a27:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a2e:	00 00 00 
     a31:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a34:	48 63 d0             	movslq %eax,%rdx
     a37:	48 01 d9             	add    %rbx,%rcx
     a3a:	48 89 d0             	mov    %rdx,%rax
     a3d:	48 c1 e0 02          	shl    $0x2,%rax
     a41:	48 01 d0             	add    %rdx,%rax
     a44:	48 c1 e0 02          	shl    $0x2,%rax
     a48:	48 01 c8             	add    %rcx,%rax
     a4b:	48 83 c0 10          	add    $0x10,%rax
     a4f:	8b 00                	mov    (%rax),%eax
     a51:	83 f8 01             	cmp    $0x1,%eax
     a54:	0f 85 bd 02 00 00    	jne    d17 <init_memory+0x9fe>
     a5a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a61:	00 00 00 
     a64:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a67:	48 63 d0             	movslq %eax,%rdx
     a6a:	48 01 d9             	add    %rbx,%rcx
     a6d:	48 89 d0             	mov    %rdx,%rax
     a70:	48 c1 e0 02          	shl    $0x2,%rax
     a74:	48 01 d0             	add    %rdx,%rax
     a77:	48 c1 e0 02          	shl    $0x2,%rax
     a7b:	48 01 c8             	add    %rcx,%rax
     a7e:	48 8b 00             	mov    (%rax),%rax
     a81:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     a87:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     a8d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     a91:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a98:	00 00 00 
     a9b:	8b 45 ec             	mov    -0x14(%rbp),%eax
     a9e:	48 63 d0             	movslq %eax,%rdx
     aa1:	48 01 d9             	add    %rbx,%rcx
     aa4:	48 89 d0             	mov    %rdx,%rax
     aa7:	48 c1 e0 02          	shl    $0x2,%rax
     aab:	48 01 d0             	add    %rdx,%rax
     aae:	48 c1 e0 02          	shl    $0x2,%rax
     ab2:	48 01 c8             	add    %rcx,%rax
     ab5:	48 8b 08             	mov    (%rax),%rcx
     ab8:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     abf:	00 00 00 
     ac2:	8b 45 ec             	mov    -0x14(%rbp),%eax
     ac5:	48 63 d0             	movslq %eax,%rdx
     ac8:	48 89 d0             	mov    %rdx,%rax
     acb:	48 c1 e0 02          	shl    $0x2,%rax
     acf:	48 01 d0             	add    %rdx,%rax
     ad2:	48 c1 e0 02          	shl    $0x2,%rax
     ad6:	48 01 d8             	add    %rbx,%rax
     ad9:	48 01 f0             	add    %rsi,%rax
     adc:	48 83 c0 08          	add    $0x8,%rax
     ae0:	48 8b 00             	mov    (%rax),%rax
     ae3:	48 01 c8             	add    %rcx,%rax
     ae6:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     aec:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     af0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     af4:	48 3b 45 a0          	cmp    -0x60(%rbp),%rax
     af8:	0f 86 1c 02 00 00    	jbe    d1a <init_memory+0xa01>
     afe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b05:	00 00 00 
     b08:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     b0f:	00 
     b10:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b17:	00 00 00 
     b1a:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     b21:	00 
     b22:	48 89 d0             	mov    %rdx,%rax
     b25:	48 c1 e0 02          	shl    $0x2,%rax
     b29:	48 01 d0             	add    %rdx,%rax
     b2c:	48 c1 e0 04          	shl    $0x4,%rax
     b30:	48 01 c8             	add    %rcx,%rax
     b33:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     b37:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b3e:	00 00 00 
     b41:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     b48:	00 
     b49:	48 8d 50 01          	lea    0x1(%rax),%rdx
     b4d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b54:	00 00 00 
     b57:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
     b5e:	00 
     b5f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b63:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     b67:	48 89 50 10          	mov    %rdx,0x10(%rax)
     b6b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b6f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     b73:	48 89 50 18          	mov    %rdx,0x18(%rax)
     b77:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b7b:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     b7f:	48 89 c2             	mov    %rax,%rdx
     b82:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b86:	48 89 50 20          	mov    %rdx,0x20(%rax)
     b8a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     b8e:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
     b95:	00 
     b96:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     b9a:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     b9e:	48 c1 e8 15          	shr    $0x15,%rax
     ba2:	48 89 c2             	mov    %rax,%rdx
     ba5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     ba9:	48 89 50 40          	mov    %rdx,0x40(%rax)
     bad:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bb1:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
     bb8:	00 
     bb9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bbd:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
     bc4:	00 
     bc5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bc9:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     bd0:	00 00 00 
     bd3:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
     bd7:	48 89 50 30          	mov    %rdx,0x30(%rax)
     bdb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     bdf:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     be3:	48 c1 e8 15          	shr    $0x15,%rax
     be7:	48 89 c2             	mov    %rax,%rdx
     bea:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     bee:	48 89 50 08          	mov    %rdx,0x8(%rax)
     bf2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bf9:	00 00 00 
     bfc:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
     c03:	00 
     c04:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c08:	48 c1 e8 15          	shr    $0x15,%rax
     c0c:	48 89 c2             	mov    %rax,%rdx
     c0f:	48 89 d0             	mov    %rdx,%rax
     c12:	48 c1 e0 02          	shl    $0x2,%rax
     c16:	48 01 d0             	add    %rdx,%rax
     c19:	48 c1 e0 03          	shl    $0x3,%rax
     c1d:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     c21:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     c25:	48 89 10             	mov    %rdx,(%rax)
     c28:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     c2c:	48 8b 00             	mov    (%rax),%rax
     c2f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     c33:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
     c3a:	e9 bf 00 00 00       	jmp    cfe <init_memory+0x9e5>
     c3f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c43:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
     c47:	48 89 10             	mov    %rdx,(%rax)
     c4a:	8b 45 e8             	mov    -0x18(%rbp),%eax
     c4d:	48 98                	cltq   
     c4f:	48 c1 e0 15          	shl    $0x15,%rax
     c53:	48 89 c2             	mov    %rax,%rdx
     c56:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     c5a:	48 01 c2             	add    %rax,%rdx
     c5d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c61:	48 89 50 08          	mov    %rdx,0x8(%rax)
     c65:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c69:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     c70:	00 
     c71:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c75:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     c7c:	00 
     c7d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c81:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     c88:	00 
     c89:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c90:	00 00 00 
     c93:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
     c9a:	00 
     c9b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     c9f:	48 8b 40 08          	mov    0x8(%rax),%rax
     ca3:	48 c1 e8 1b          	shr    $0x1b,%rax
     ca7:	48 c1 e0 03          	shl    $0x3,%rax
     cab:	48 01 d0             	add    %rdx,%rax
     cae:	48 8b 10             	mov    (%rax),%rdx
     cb1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     cb5:	48 8b 40 08          	mov    0x8(%rax),%rax
     cb9:	48 c1 e8 15          	shr    $0x15,%rax
     cbd:	83 e0 3f             	and    $0x3f,%eax
     cc0:	be 01 00 00 00       	mov    $0x1,%esi
     cc5:	89 c1                	mov    %eax,%ecx
     cc7:	48 d3 e6             	shl    %cl,%rsi
     cca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cd1:	00 00 00 
     cd4:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
     cdb:	00 
     cdc:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     ce0:	48 8b 40 08          	mov    0x8(%rax),%rax
     ce4:	48 c1 e8 1b          	shr    $0x1b,%rax
     ce8:	48 c1 e0 03          	shl    $0x3,%rax
     cec:	48 01 c8             	add    %rcx,%rax
     cef:	48 31 f2             	xor    %rsi,%rdx
     cf2:	48 89 10             	mov    %rdx,(%rax)
     cf5:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
     cf9:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
     cfe:	8b 45 e8             	mov    -0x18(%rbp),%eax
     d01:	48 63 d0             	movslq %eax,%rdx
     d04:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     d08:	48 8b 40 08          	mov    0x8(%rax),%rax
     d0c:	48 39 c2             	cmp    %rax,%rdx
     d0f:	0f 82 2a ff ff ff    	jb     c3f <init_memory+0x926>
     d15:	eb 04                	jmp    d1b <init_memory+0xa02>
     d17:	90                   	nop
     d18:	eb 01                	jmp    d1b <init_memory+0xa02>
     d1a:	90                   	nop
     d1b:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     d1f:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d22:	48 63 d0             	movslq %eax,%rdx
     d25:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d2c:	00 00 00 
     d2f:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
     d36:	00 
     d37:	48 39 c2             	cmp    %rax,%rdx
     d3a:	0f 86 e7 fc ff ff    	jbe    a27 <init_memory+0x70e>
     d40:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d47:	00 00 00 
     d4a:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d51:	00 
     d52:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     d59:	00 00 00 
     d5c:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
     d63:	00 
     d64:	48 89 10             	mov    %rdx,(%rax)
     d67:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d6e:	00 00 00 
     d71:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d78:	00 
     d79:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
     d80:	00 
     d81:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d88:	00 00 00 
     d8b:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     d92:	00 
     d93:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     d9a:	00 
     d9b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     da2:	00 00 00 
     da5:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     dac:	00 
     dad:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     db4:	00 
     db5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dbc:	00 00 00 
     dbf:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     dc6:	00 
     dc7:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     dce:	00 
     dcf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dd6:	00 00 00 
     dd9:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     de0:	00 
     de1:	48 89 d0             	mov    %rdx,%rax
     de4:	48 c1 e0 02          	shl    $0x2,%rax
     de8:	48 01 d0             	add    %rdx,%rax
     deb:	48 c1 e0 04          	shl    $0x4,%rax
     def:	48 83 c0 07          	add    $0x7,%rax
     df3:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     df7:	48 89 c2             	mov    %rax,%rdx
     dfa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e01:	00 00 00 
     e04:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
     e0b:	00 
     e0c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e13:	00 00 00 
     e16:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
     e1d:	00 
     e1e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e25:	00 00 00 
     e28:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
     e2f:	00 
     e30:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e37:	00 00 00 
     e3a:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     e41:	00 
     e42:	49 89 c9             	mov    %rcx,%r9
     e45:	49 89 d0             	mov    %rdx,%r8
     e48:	48 89 c1             	mov    %rax,%rcx
     e4b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e52:	00 00 00 
     e55:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e59:	48 89 c2             	mov    %rax,%rdx
     e5c:	be 00 00 00 00       	mov    $0x0,%esi
     e61:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     e66:	49 89 df             	mov    %rbx,%r15
     e69:	b8 00 00 00 00       	mov    $0x0,%eax
     e6e:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     e75:	00 00 00 
     e78:	49 01 da             	add    %rbx,%r10
     e7b:	41 ff d2             	call   *%r10
     e7e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e85:	00 00 00 
     e88:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
     e8f:	00 
     e90:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e97:	00 00 00 
     e9a:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
     ea1:	00 
     ea2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ea9:	00 00 00 
     eac:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     eb3:	00 
     eb4:	49 89 c9             	mov    %rcx,%r9
     eb7:	49 89 d0             	mov    %rdx,%r8
     eba:	48 89 c1             	mov    %rax,%rcx
     ebd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ec4:	00 00 00 
     ec7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ecb:	48 89 c2             	mov    %rax,%rdx
     ece:	be 00 00 00 00       	mov    $0x0,%esi
     ed3:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     ed8:	49 89 df             	mov    %rbx,%r15
     edb:	b8 00 00 00 00       	mov    $0x0,%eax
     ee0:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     ee7:	00 00 00 
     eea:	49 01 da             	add    %rbx,%r10
     eed:	41 ff d2             	call   *%r10
     ef0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ef7:	00 00 00 
     efa:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
     f01:	00 
     f02:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f09:	00 00 00 
     f0c:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     f13:	00 
     f14:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f1b:	00 00 00 
     f1e:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     f25:	00 
     f26:	49 89 c9             	mov    %rcx,%r9
     f29:	49 89 d0             	mov    %rdx,%r8
     f2c:	48 89 c1             	mov    %rax,%rcx
     f2f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f36:	00 00 00 
     f39:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f3d:	48 89 c2             	mov    %rax,%rdx
     f40:	be 00 00 00 00       	mov    $0x0,%esi
     f45:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     f4a:	49 89 df             	mov    %rbx,%r15
     f4d:	b8 00 00 00 00       	mov    $0x0,%eax
     f52:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     f59:	00 00 00 
     f5c:	49 01 da             	add    %rbx,%r10
     f5f:	41 ff d2             	call   *%r10
     f62:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f69:	00 00 00 
     f6c:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
     f73:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f7a:	00 00 00 
     f7d:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
     f84:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     f8b:	e9 c1 00 00 00       	jmp    1051 <init_memory+0xd38>
     f90:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f97:	00 00 00 
     f9a:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     fa1:	00 
     fa2:	8b 45 ec             	mov    -0x14(%rbp),%eax
     fa5:	48 63 d0             	movslq %eax,%rdx
     fa8:	48 89 d0             	mov    %rdx,%rax
     fab:	48 c1 e0 02          	shl    $0x2,%rax
     faf:	48 01 d0             	add    %rdx,%rax
     fb2:	48 c1 e0 04          	shl    $0x4,%rax
     fb6:	48 01 c8             	add    %rcx,%rax
     fb9:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     fbd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fc1:	48 8b 48 08          	mov    0x8(%rax),%rcx
     fc5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fc9:	48 8b 10             	mov    (%rax),%rdx
     fcc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fd0:	48 8b 78 20          	mov    0x20(%rax),%rdi
     fd4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fd8:	48 8b 70 18          	mov    0x18(%rax),%rsi
     fdc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     fe0:	48 8b 40 10          	mov    0x10(%rax),%rax
     fe4:	51                   	push   %rcx
     fe5:	52                   	push   %rdx
     fe6:	49 89 f9             	mov    %rdi,%r9
     fe9:	49 89 f0             	mov    %rsi,%r8
     fec:	48 89 c1             	mov    %rax,%rcx
     fef:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ff6:	00 00 00 
     ff9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ffd:	48 89 c2             	mov    %rax,%rdx
    1000:	be 00 00 00 00       	mov    $0x0,%esi
    1005:	bf 00 80 ff 00       	mov    $0xff8000,%edi
    100a:	49 89 df             	mov    %rbx,%r15
    100d:	b8 00 00 00 00       	mov    $0x0,%eax
    1012:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    1019:	00 00 00 
    101c:	49 01 da             	add    %rbx,%r10
    101f:	41 ff d2             	call   *%r10
    1022:	48 83 c4 10          	add    $0x10,%rsp
    1026:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    102a:	48 8b 40 10          	mov    0x10(%rax),%rax
    102e:	48 ba 00 00 00 00 01 	movabs $0x100000000,%rdx
    1035:	00 00 00 
    1038:	48 39 d0             	cmp    %rdx,%rax
    103b:	75 10                	jne    104d <init_memory+0xd34>
    103d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    1044:	00 00 00 
    1047:	8b 45 ec             	mov    -0x14(%rbp),%eax
    104a:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
    104d:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1051:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1054:	48 63 d0             	movslq %eax,%rdx
    1057:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    105e:	00 00 00 
    1061:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
    1068:	00 
    1069:	48 39 c2             	cmp    %rax,%rdx
    106c:	0f 82 1e ff ff ff    	jb     f90 <init_memory+0xc77>
    1072:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1079:	00 00 00 
    107c:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
    1083:	00 
    1084:	48 89 c2             	mov    %rax,%rdx
    1087:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    108e:	00 00 00 
    1091:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
    1098:	00 
    1099:	48 01 d0             	add    %rdx,%rax
    109c:	48 05 00 01 00 00    	add    $0x100,%rax
    10a2:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    10a6:	48 89 c2             	mov    %rax,%rdx
    10a9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10b0:	00 00 00 
    10b3:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
    10ba:	00 
    10bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10c2:	00 00 00 
    10c5:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
    10cc:	00 
    10cd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10d4:	00 00 00 
    10d7:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
    10de:	00 
    10df:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10e6:	00 00 00 
    10e9:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
    10f0:	00 
    10f1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    10f8:	00 00 00 
    10fb:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
    1102:	00 
    1103:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    110a:	00 00 00 
    110d:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
    1114:	00 
    1115:	51                   	push   %rcx
    1116:	52                   	push   %rdx
    1117:	49 89 f9             	mov    %rdi,%r9
    111a:	49 89 f0             	mov    %rsi,%r8
    111d:	48 89 c1             	mov    %rax,%rcx
    1120:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1127:	00 00 00 
    112a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    112e:	48 89 c2             	mov    %rax,%rdx
    1131:	be 00 00 00 00       	mov    $0x0,%esi
    1136:	bf 00 80 ff 00       	mov    $0xff8000,%edi
    113b:	49 89 df             	mov    %rbx,%r15
    113e:	b8 00 00 00 00       	mov    $0x0,%eax
    1143:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    114a:	00 00 00 
    114d:	49 01 da             	add    %rbx,%r10
    1150:	41 ff d2             	call   *%r10
    1153:	48 83 c4 10          	add    $0x10,%rsp
    1157:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    115e:	00 00 00 
    1161:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
    1168:	00 
    1169:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
    1170:	80 00 00 
    1173:	48 01 d0             	add    %rdx,%rax
    1176:	48 c1 e8 15          	shr    $0x15,%rax
    117a:	89 45 ec             	mov    %eax,-0x14(%rbp)
    117d:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1184:	eb 45                	jmp    11cb <init_memory+0xeb2>
    1186:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    118d:	00 00 00 
    1190:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    1197:	00 
    1198:	8b 45 e8             	mov    -0x18(%rbp),%eax
    119b:	48 63 d0             	movslq %eax,%rdx
    119e:	48 89 d0             	mov    %rdx,%rax
    11a1:	48 c1 e0 02          	shl    $0x2,%rax
    11a5:	48 01 d0             	add    %rdx,%rax
    11a8:	48 c1 e0 03          	shl    $0x3,%rax
    11ac:	48 01 c8             	add    %rcx,%rax
    11af:	be 93 00 00 00       	mov    $0x93,%esi
    11b4:	48 89 c7             	mov    %rax,%rdi
    11b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11be:	00 00 00 
    11c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11c5:	ff d0                	call   *%rax
    11c7:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    11cb:	8b 45 e8             	mov    -0x18(%rbp),%eax
    11ce:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    11d1:	7e b3                	jle    1186 <init_memory+0xe6d>
    11d3:	b8 00 00 00 00       	mov    $0x0,%eax
    11d8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    11df:	00 00 00 
    11e2:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
    11e6:	ff d2                	call   *%rdx
    11e8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    11ef:	00 00 00 
    11f2:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
    11f6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11fd:	00 00 00 
    1200:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1204:	48 89 c1             	mov    %rax,%rcx
    1207:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    120e:	00 00 00 
    1211:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1215:	48 89 c2             	mov    %rax,%rdx
    1218:	be 00 00 00 00       	mov    $0x0,%esi
    121d:	bf ff ff 00 00       	mov    $0xffff,%edi
    1222:	49 89 df             	mov    %rbx,%r15
    1225:	b8 00 00 00 00       	mov    $0x0,%eax
    122a:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1231:	00 00 00 
    1234:	49 01 d8             	add    %rbx,%r8
    1237:	41 ff d0             	call   *%r8
    123a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1241:	00 00 00 
    1244:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1248:	48 89 c2             	mov    %rax,%rdx
    124b:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    1252:	80 ff ff 
    1255:	48 01 d0             	add    %rdx,%rax
    1258:	48 8b 00             	mov    (%rax),%rax
    125b:	48 89 c1             	mov    %rax,%rcx
    125e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1265:	00 00 00 
    1268:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    126c:	48 89 c2             	mov    %rax,%rdx
    126f:	be 00 00 00 00       	mov    $0x0,%esi
    1274:	bf ff ff 00 00       	mov    $0xffff,%edi
    1279:	49 89 df             	mov    %rbx,%r15
    127c:	b8 00 00 00 00       	mov    $0x0,%eax
    1281:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1288:	00 00 00 
    128b:	49 01 d8             	add    %rbx,%r8
    128e:	41 ff d0             	call   *%r8
    1291:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1298:	00 00 00 
    129b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    129f:	48 89 c2             	mov    %rax,%rdx
    12a2:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    12a9:	80 ff ff 
    12ac:	48 01 d0             	add    %rdx,%rax
    12af:	48 8b 00             	mov    (%rax),%rax
    12b2:	b0 00                	mov    $0x0,%al
    12b4:	48 89 c2             	mov    %rax,%rdx
    12b7:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    12be:	80 ff ff 
    12c1:	48 01 d0             	add    %rdx,%rax
    12c4:	48 8b 00             	mov    (%rax),%rax
    12c7:	b0 00                	mov    $0x0,%al
    12c9:	48 89 c1             	mov    %rax,%rcx
    12cc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12d3:	00 00 00 
    12d6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12da:	48 89 c2             	mov    %rax,%rdx
    12dd:	be 00 00 00 00       	mov    $0x0,%esi
    12e2:	bf ff ff 00 00       	mov    $0xffff,%edi
    12e7:	49 89 df             	mov    %rbx,%r15
    12ea:	b8 00 00 00 00       	mov    $0x0,%eax
    12ef:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    12f6:	00 00 00 
    12f9:	49 01 d8             	add    %rbx,%r8
    12fc:	41 ff d0             	call   *%r8
    12ff:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1306:	eb 36                	jmp    133e <init_memory+0x1025>
    1308:	8b 45 ec             	mov    -0x14(%rbp),%eax
    130b:	48 98                	cltq   
    130d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1314:	00 
    1315:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    131c:	00 00 00 
    131f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1323:	48 01 c2             	add    %rax,%rdx
    1326:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    132d:	80 ff ff 
    1330:	48 01 d0             	add    %rdx,%rax
    1333:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    133a:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    133e:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    1342:	7e c4                	jle    1308 <init_memory+0xfef>
    1344:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    134b:	00 00 00 
    134e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1352:	48 89 c2             	mov    %rax,%rdx
    1355:	be 00 00 00 00       	mov    $0x0,%esi
    135a:	bf ff ff 00 00       	mov    $0xffff,%edi
    135f:	49 89 df             	mov    %rbx,%r15
    1362:	b8 00 00 00 00       	mov    $0x0,%eax
    1367:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    136e:	00 00 00 
    1371:	48 01 d9             	add    %rbx,%rcx
    1374:	ff d1                	call   *%rcx
    1376:	0f 20 d8             	mov    %cr3,%rax
    1379:	0f 22 d8             	mov    %rax,%cr3
    137c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1380:	90                   	nop
    1381:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
    1385:	5b                   	pop    %rbx
    1386:	41 5f                	pop    %r15
    1388:	5d                   	pop    %rbp
    1389:	c3                   	ret    

000000000000138a <alloc_page>:
    138a:	f3 0f 1e fa          	endbr64 
    138e:	55                   	push   %rbp
    138f:	48 89 e5             	mov    %rsp,%rbp
    1392:	41 57                	push   %r15
    1394:	53                   	push   %rbx
    1395:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    1399:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 1399 <alloc_page+0xf>
    13a0:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    13a7:	00 00 00 
    13aa:	4c 01 db             	add    %r11,%rbx
    13ad:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
    13b3:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
    13b9:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
    13c0:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    13c7:	00 
    13c8:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    13cf:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    13d6:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
    13dd:	74 5b                	je     143a <alloc_page+0xb0>
    13df:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
    13e6:	7f 7c                	jg     1464 <alloc_page+0xda>
    13e8:	83 bd 7c ff ff ff 01 	cmpl   $0x1,-0x84(%rbp)
    13ef:	74 0b                	je     13fc <alloc_page+0x72>
    13f1:	83 bd 7c ff ff ff 02 	cmpl   $0x2,-0x84(%rbp)
    13f8:	74 1e                	je     1418 <alloc_page+0x8e>
    13fa:	eb 68                	jmp    1464 <alloc_page+0xda>
    13fc:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    1403:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    140a:	00 00 00 
    140d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1410:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1413:	e9 88 00 00 00       	jmp    14a0 <alloc_page+0x116>
    1418:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    141f:	00 00 00 
    1422:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1425:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1428:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    142f:	00 00 00 
    1432:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1435:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1438:	eb 66                	jmp    14a0 <alloc_page+0x116>
    143a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1441:	00 00 00 
    1444:	8b 04 03             	mov    (%rbx,%rax,1),%eax
    1447:	89 45 e8             	mov    %eax,-0x18(%rbp)
    144a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1451:	00 00 00 
    1454:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
    145b:	00 
    145c:	83 e8 01             	sub    $0x1,%eax
    145f:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    1462:	eb 3c                	jmp    14a0 <alloc_page+0x116>
    1464:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    146b:	00 00 00 
    146e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1472:	48 89 c2             	mov    %rax,%rdx
    1475:	be 00 00 00 00       	mov    $0x0,%esi
    147a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    147f:	49 89 df             	mov    %rbx,%r15
    1482:	b8 00 00 00 00       	mov    $0x0,%eax
    1487:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    148e:	00 00 00 
    1491:	48 01 d9             	add    %rbx,%rcx
    1494:	ff d1                	call   *%rcx
    1496:	b8 00 00 00 00       	mov    $0x0,%eax
    149b:	e9 79 02 00 00       	jmp    1719 <alloc_page+0x38f>
    14a0:	8b 45 e8             	mov    -0x18(%rbp),%eax
    14a3:	89 45 ec             	mov    %eax,-0x14(%rbp)
    14a6:	e9 5d 02 00 00       	jmp    1708 <alloc_page+0x37e>
    14ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14b2:	00 00 00 
    14b5:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
    14bc:	00 
    14bd:	8b 45 ec             	mov    -0x14(%rbp),%eax
    14c0:	48 63 d0             	movslq %eax,%rdx
    14c3:	48 89 d0             	mov    %rdx,%rax
    14c6:	48 c1 e0 02          	shl    $0x2,%rax
    14ca:	48 01 d0             	add    %rdx,%rax
    14cd:	48 c1 e0 04          	shl    $0x4,%rax
    14d1:	48 01 c8             	add    %rcx,%rax
    14d4:	48 8b 50 40          	mov    0x40(%rax),%rdx
    14d8:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    14de:	48 98                	cltq   
    14e0:	48 39 c2             	cmp    %rax,%rdx
    14e3:	0f 82 1a 02 00 00    	jb     1703 <alloc_page+0x379>
    14e9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14f0:	00 00 00 
    14f3:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
    14fa:	00 
    14fb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    14fe:	48 63 d0             	movslq %eax,%rdx
    1501:	48 89 d0             	mov    %rdx,%rax
    1504:	48 c1 e0 02          	shl    $0x2,%rax
    1508:	48 01 d0             	add    %rdx,%rax
    150b:	48 c1 e0 04          	shl    $0x4,%rax
    150f:	48 01 c8             	add    %rcx,%rax
    1512:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    1516:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    151a:	48 8b 40 10          	mov    0x10(%rax),%rax
    151e:	48 c1 e8 15          	shr    $0x15,%rax
    1522:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    1526:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    152a:	48 8b 40 18          	mov    0x18(%rax),%rax
    152e:	48 c1 e8 15          	shr    $0x15,%rax
    1532:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
    1536:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    153a:	48 8b 40 20          	mov    0x20(%rax),%rax
    153e:	48 c1 e8 15          	shr    $0x15,%rax
    1542:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    1546:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    154a:	83 e0 3f             	and    $0x3f,%eax
    154d:	48 89 c2             	mov    %rax,%rdx
    1550:	b8 40 00 00 00       	mov    $0x40,%eax
    1555:	48 29 d0             	sub    %rdx,%rax
    1558:	48 89 45 98          	mov    %rax,-0x68(%rbp)
    155c:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1560:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1564:	e9 8a 01 00 00       	jmp    16f3 <alloc_page+0x369>
    1569:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1570:	00 00 00 
    1573:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
    157a:	00 
    157b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    157f:	48 c1 e8 06          	shr    $0x6,%rax
    1583:	48 c1 e0 03          	shl    $0x3,%rax
    1587:	48 01 d0             	add    %rdx,%rax
    158a:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    158e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1592:	83 e0 3f             	and    $0x3f,%eax
    1595:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    1599:	48 8b 45 88          	mov    -0x78(%rbp),%rax
    159d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    15a1:	e9 1f 01 00 00       	jmp    16c5 <alloc_page+0x33b>
    15a6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15aa:	48 8b 00             	mov    (%rax),%rax
    15ad:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    15b1:	89 d1                	mov    %edx,%ecx
    15b3:	48 d3 e8             	shr    %cl,%rax
    15b6:	48 89 c6             	mov    %rax,%rsi
    15b9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    15bd:	48 83 c0 08          	add    $0x8,%rax
    15c1:	48 8b 10             	mov    (%rax),%rdx
    15c4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15c8:	89 c1                	mov    %eax,%ecx
    15ca:	b8 40 00 00 00       	mov    $0x40,%eax
    15cf:	29 c8                	sub    %ecx,%eax
    15d1:	89 c1                	mov    %eax,%ecx
    15d3:	48 d3 e2             	shl    %cl,%rdx
    15d6:	48 89 d0             	mov    %rdx,%rax
    15d9:	48 09 c6             	or     %rax,%rsi
    15dc:	48 89 f2             	mov    %rsi,%rdx
    15df:	83 bd 78 ff ff ff 40 	cmpl   $0x40,-0x88(%rbp)
    15e6:	74 19                	je     1601 <alloc_page+0x277>
    15e8:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    15ee:	be 01 00 00 00       	mov    $0x1,%esi
    15f3:	89 c1                	mov    %eax,%ecx
    15f5:	48 d3 e6             	shl    %cl,%rsi
    15f8:	48 89 f0             	mov    %rsi,%rax
    15fb:	48 83 e8 01          	sub    $0x1,%rax
    15ff:	eb 07                	jmp    1608 <alloc_page+0x27e>
    1601:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1608:	48 21 d0             	and    %rdx,%rax
    160b:	48 85 c0             	test   %rax,%rax
    160e:	0f 85 ac 00 00 00    	jne    16c0 <alloc_page+0x336>
    1614:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1618:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    161c:	48 01 d0             	add    %rdx,%rax
    161f:	48 83 e8 01          	sub    $0x1,%rax
    1623:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    1627:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    162e:	00 
    162f:	eb 58                	jmp    1689 <alloc_page+0x2ff>
    1631:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1638:	00 00 00 
    163b:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    1642:	00 
    1643:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    1647:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    164b:	48 01 c2             	add    %rax,%rdx
    164e:	48 89 d0             	mov    %rdx,%rax
    1651:	48 c1 e0 02          	shl    $0x2,%rax
    1655:	48 01 d0             	add    %rdx,%rax
    1658:	48 c1 e0 03          	shl    $0x3,%rax
    165c:	48 01 c8             	add    %rcx,%rax
    165f:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    1663:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
    166a:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    166e:	48 89 d6             	mov    %rdx,%rsi
    1671:	48 89 c7             	mov    %rax,%rdi
    1674:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    167b:	00 00 00 
    167e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1682:	ff d0                	call   *%rax
    1684:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
    1689:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    168f:	48 98                	cltq   
    1691:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    1695:	72 9a                	jb     1631 <alloc_page+0x2a7>
    1697:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    169e:	00 00 00 
    16a1:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
    16a8:	00 
    16a9:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    16ad:	48 89 d0             	mov    %rdx,%rax
    16b0:	48 c1 e0 02          	shl    $0x2,%rax
    16b4:	48 01 d0             	add    %rdx,%rax
    16b7:	48 c1 e0 03          	shl    $0x3,%rax
    16bb:	48 01 c8             	add    %rcx,%rax
    16be:	eb 59                	jmp    1719 <alloc_page+0x38f>
    16c0:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
    16c5:	b8 40 00 00 00       	mov    $0x40,%eax
    16ca:	48 2b 45 88          	sub    -0x78(%rbp),%rax
    16ce:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
    16d2:	0f 82 ce fe ff ff    	jb     15a6 <alloc_page+0x21c>
    16d8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16dc:	83 e0 3f             	and    $0x3f,%eax
    16df:	48 85 c0             	test   %rax,%rax
    16e2:	74 06                	je     16ea <alloc_page+0x360>
    16e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
    16e8:	eb 05                	jmp    16ef <alloc_page+0x365>
    16ea:	b8 40 00 00 00       	mov    $0x40,%eax
    16ef:	48 01 45 d8          	add    %rax,-0x28(%rbp)
    16f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    16f7:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
    16fb:	0f 86 68 fe ff ff    	jbe    1569 <alloc_page+0x1df>
    1701:	eb 01                	jmp    1704 <alloc_page+0x37a>
    1703:	90                   	nop
    1704:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1708:	8b 45 ec             	mov    -0x14(%rbp),%eax
    170b:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    170e:	0f 8e 97 fd ff ff    	jle    14ab <alloc_page+0x121>
    1714:	b8 00 00 00 00       	mov    $0x0,%eax
    1719:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    171d:	5b                   	pop    %rbx
    171e:	41 5f                	pop    %r15
    1720:	5d                   	pop    %rbp
    1721:	c3                   	ret    
