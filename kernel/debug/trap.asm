
trap.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <set_intr_gate>:
       0:	f3 0f 1e fa          	endbr64 
       4:	55                   	push   %rbp
       5:	48 89 e5             	mov    %rsp,%rbp
       8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8 <set_intr_gate+0x8>
       f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      16:	00 00 00 
      19:	4c 01 d8             	add    %r11,%rax
      1c:	89 7d ec             	mov    %edi,-0x14(%rbp)
      1f:	89 f1                	mov    %esi,%ecx
      21:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
      25:	89 ca                	mov    %ecx,%edx
      27:	88 55 e8             	mov    %dl,-0x18(%rbp)
      2a:	8b 55 ec             	mov    -0x14(%rbp),%edx
      2d:	48 89 d1             	mov    %rdx,%rcx
      30:	48 c1 e1 04          	shl    $0x4,%rcx
      34:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      3b:	00 00 00 
      3e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
      42:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
      46:	8b 55 ec             	mov    -0x14(%rbp),%edx
      49:	48 c1 e2 04          	shl    $0x4,%rdx
      4d:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
      51:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      58:	00 00 00 
      5b:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
      5f:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
      63:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      67:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
      6d:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
      71:	48 89 c2             	mov    %rax,%rdx
      74:	44 89 c0             	mov    %r8d,%eax
      77:	66 89 d0             	mov    %dx,%ax
      7a:	48 83 e1 07          	and    $0x7,%rcx
      7e:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
      85:	48 c1 e1 20          	shl    $0x20,%rcx
      89:	48 01 c8             	add    %rcx,%rax
      8c:	48 31 c9             	xor    %rcx,%rcx
      8f:	89 d1                	mov    %edx,%ecx
      91:	48 c1 e9 10          	shr    $0x10,%rcx
      95:	48 c1 e1 30          	shl    $0x30,%rcx
      99:	48 01 c8             	add    %rcx,%rax
      9c:	48 89 06             	mov    %rax,(%rsi)
      9f:	48 c1 ea 20          	shr    $0x20,%rdx
      a3:	48 89 17             	mov    %rdx,(%rdi)
      a6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      aa:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
      ae:	90                   	nop
      af:	5d                   	pop    %rbp
      b0:	c3                   	ret    

00000000000000b1 <set_trap_gate>:
      b1:	f3 0f 1e fa          	endbr64 
      b5:	55                   	push   %rbp
      b6:	48 89 e5             	mov    %rsp,%rbp
      b9:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # b9 <set_trap_gate+0x8>
      c0:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      c7:	00 00 00 
      ca:	4c 01 d8             	add    %r11,%rax
      cd:	89 7d ec             	mov    %edi,-0x14(%rbp)
      d0:	89 f1                	mov    %esi,%ecx
      d2:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
      d6:	89 ca                	mov    %ecx,%edx
      d8:	88 55 e8             	mov    %dl,-0x18(%rbp)
      db:	8b 55 ec             	mov    -0x14(%rbp),%edx
      de:	48 89 d1             	mov    %rdx,%rcx
      e1:	48 c1 e1 04          	shl    $0x4,%rcx
      e5:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      ec:	00 00 00 
      ef:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
      f3:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
      f7:	8b 55 ec             	mov    -0x14(%rbp),%edx
      fa:	48 c1 e2 04          	shl    $0x4,%rdx
      fe:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
     102:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     109:	00 00 00 
     10c:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     110:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
     114:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     118:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
     11e:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
     122:	48 89 c2             	mov    %rax,%rdx
     125:	44 89 c0             	mov    %r8d,%eax
     128:	66 89 d0             	mov    %dx,%ax
     12b:	48 83 e1 07          	and    $0x7,%rcx
     12f:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
     136:	48 c1 e1 20          	shl    $0x20,%rcx
     13a:	48 01 c8             	add    %rcx,%rax
     13d:	48 31 c9             	xor    %rcx,%rcx
     140:	89 d1                	mov    %edx,%ecx
     142:	48 c1 e9 10          	shr    $0x10,%rcx
     146:	48 c1 e1 30          	shl    $0x30,%rcx
     14a:	48 01 c8             	add    %rcx,%rax
     14d:	48 89 06             	mov    %rax,(%rsi)
     150:	48 c1 ea 20          	shr    $0x20,%rdx
     154:	48 89 17             	mov    %rdx,(%rdi)
     157:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     15b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     15f:	90                   	nop
     160:	5d                   	pop    %rbp
     161:	c3                   	ret    

0000000000000162 <set_system_gate>:
     162:	f3 0f 1e fa          	endbr64 
     166:	55                   	push   %rbp
     167:	48 89 e5             	mov    %rsp,%rbp
     16a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 16a <set_system_gate+0x8>
     171:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     178:	00 00 00 
     17b:	4c 01 d8             	add    %r11,%rax
     17e:	89 7d ec             	mov    %edi,-0x14(%rbp)
     181:	89 f1                	mov    %esi,%ecx
     183:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
     187:	89 ca                	mov    %ecx,%edx
     189:	88 55 e8             	mov    %dl,-0x18(%rbp)
     18c:	8b 55 ec             	mov    -0x14(%rbp),%edx
     18f:	48 89 d1             	mov    %rdx,%rcx
     192:	48 c1 e1 04          	shl    $0x4,%rcx
     196:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     19d:	00 00 00 
     1a0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     1a4:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
     1a8:	8b 55 ec             	mov    -0x14(%rbp),%edx
     1ab:	48 c1 e2 04          	shl    $0x4,%rdx
     1af:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
     1b3:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     1ba:	00 00 00 
     1bd:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     1c1:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
     1c5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     1c9:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
     1cf:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
     1d3:	48 89 c2             	mov    %rax,%rdx
     1d6:	44 89 c0             	mov    %r8d,%eax
     1d9:	66 89 d0             	mov    %dx,%ax
     1dc:	48 83 e1 07          	and    $0x7,%rcx
     1e0:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
     1e7:	48 c1 e1 20          	shl    $0x20,%rcx
     1eb:	48 01 c8             	add    %rcx,%rax
     1ee:	48 31 c9             	xor    %rcx,%rcx
     1f1:	89 d1                	mov    %edx,%ecx
     1f3:	48 c1 e9 10          	shr    $0x10,%rcx
     1f7:	48 c1 e1 30          	shl    $0x30,%rcx
     1fb:	48 01 c8             	add    %rcx,%rax
     1fe:	48 89 06             	mov    %rax,(%rsi)
     201:	48 c1 ea 20          	shr    $0x20,%rdx
     205:	48 89 17             	mov    %rdx,(%rdi)
     208:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     20c:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     210:	90                   	nop
     211:	5d                   	pop    %rbp
     212:	c3                   	ret    

0000000000000213 <set_tss64>:
     213:	f3 0f 1e fa          	endbr64 
     217:	55                   	push   %rbp
     218:	48 89 e5             	mov    %rsp,%rbp
     21b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 21b <set_tss64+0x8>
     222:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     229:	00 00 00 
     22c:	4c 01 d8             	add    %r11,%rax
     22f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     233:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     237:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     23b:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
     23f:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
     243:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
     247:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     24e:	00 00 00 
     251:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     255:	48 8d 52 04          	lea    0x4(%rdx),%rdx
     259:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     25d:	48 89 0a             	mov    %rcx,(%rdx)
     260:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     267:	00 00 00 
     26a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     26e:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
     272:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     276:	48 89 0a             	mov    %rcx,(%rdx)
     279:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     280:	00 00 00 
     283:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     287:	48 8d 52 14          	lea    0x14(%rdx),%rdx
     28b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     28f:	48 89 0a             	mov    %rcx,(%rdx)
     292:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     299:	00 00 00 
     29c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2a0:	48 8d 52 24          	lea    0x24(%rdx),%rdx
     2a4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
     2a8:	48 89 0a             	mov    %rcx,(%rdx)
     2ab:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2b2:	00 00 00 
     2b5:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2b9:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
     2bd:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
     2c1:	48 89 0a             	mov    %rcx,(%rdx)
     2c4:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2cb:	00 00 00 
     2ce:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2d2:	48 8d 52 34          	lea    0x34(%rdx),%rdx
     2d6:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
     2da:	48 89 0a             	mov    %rcx,(%rdx)
     2dd:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2e4:	00 00 00 
     2e7:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2eb:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
     2ef:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
     2f3:	48 89 0a             	mov    %rcx,(%rdx)
     2f6:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2fd:	00 00 00 
     300:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     304:	48 8d 52 44          	lea    0x44(%rdx),%rdx
     308:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
     30c:	48 89 0a             	mov    %rcx,(%rdx)
     30f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     316:	00 00 00 
     319:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     31d:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
     321:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
     325:	48 89 0a             	mov    %rcx,(%rdx)
     328:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     32f:	00 00 00 
     332:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     336:	48 8d 40 54          	lea    0x54(%rax),%rax
     33a:	48 8b 55 28          	mov    0x28(%rbp),%rdx
     33e:	48 89 10             	mov    %rdx,(%rax)
     341:	90                   	nop
     342:	5d                   	pop    %rbp
     343:	c3                   	ret    

0000000000000344 <do_divide_error>:
     344:	f3 0f 1e fa          	endbr64 
     348:	55                   	push   %rbp
     349:	48 89 e5             	mov    %rsp,%rbp
     34c:	41 57                	push   %r15
     34e:	48 83 ec 28          	sub    $0x28,%rsp
     352:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 352 <do_divide_error+0xe>
     359:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     360:	00 00 00 
     363:	4d 01 da             	add    %r11,%r10
     366:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     36a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     36e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     375:	00 
     376:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     37a:	48 05 98 00 00 00    	add    $0x98,%rax
     380:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     384:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     388:	48 8b 08             	mov    (%rax),%rcx
     38b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     38f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     393:	49 89 c9             	mov    %rcx,%r9
     396:	49 89 d0             	mov    %rdx,%r8
     399:	48 89 c1             	mov    %rax,%rcx
     39c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     3a3:	00 00 00 
     3a6:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     3aa:	48 89 c2             	mov    %rax,%rdx
     3ad:	be 00 00 00 00       	mov    $0x0,%esi
     3b2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     3b7:	4d 89 d7             	mov    %r10,%r15
     3ba:	b8 00 00 00 00       	mov    $0x0,%eax
     3bf:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     3c6:	00 00 00 
     3c9:	4d 01 d3             	add    %r10,%r11
     3cc:	41 ff d3             	call   *%r11
     3cf:	eb fe                	jmp    3cf <do_divide_error+0x8b>

00000000000003d1 <do_debug>:
     3d1:	f3 0f 1e fa          	endbr64 
     3d5:	55                   	push   %rbp
     3d6:	48 89 e5             	mov    %rsp,%rbp
     3d9:	41 57                	push   %r15
     3db:	48 83 ec 28          	sub    $0x28,%rsp
     3df:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 3df <do_debug+0xe>
     3e6:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     3ed:	00 00 00 
     3f0:	4d 01 da             	add    %r11,%r10
     3f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     3f7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     3fb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     402:	00 
     403:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     407:	48 05 98 00 00 00    	add    $0x98,%rax
     40d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     411:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     415:	48 8b 08             	mov    (%rax),%rcx
     418:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     41c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     420:	49 89 c9             	mov    %rcx,%r9
     423:	49 89 d0             	mov    %rdx,%r8
     426:	48 89 c1             	mov    %rax,%rcx
     429:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     430:	00 00 00 
     433:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     437:	48 89 c2             	mov    %rax,%rdx
     43a:	be 00 00 00 00       	mov    $0x0,%esi
     43f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     444:	4d 89 d7             	mov    %r10,%r15
     447:	b8 00 00 00 00       	mov    $0x0,%eax
     44c:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     453:	00 00 00 
     456:	4d 01 d3             	add    %r10,%r11
     459:	41 ff d3             	call   *%r11
     45c:	eb fe                	jmp    45c <do_debug+0x8b>

000000000000045e <do_nmi>:
     45e:	f3 0f 1e fa          	endbr64 
     462:	55                   	push   %rbp
     463:	48 89 e5             	mov    %rsp,%rbp
     466:	41 57                	push   %r15
     468:	48 83 ec 28          	sub    $0x28,%rsp
     46c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 46c <do_nmi+0xe>
     473:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     47a:	00 00 00 
     47d:	4d 01 da             	add    %r11,%r10
     480:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     484:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     488:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     48f:	00 
     490:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     494:	48 05 98 00 00 00    	add    $0x98,%rax
     49a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     49e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     4a2:	48 8b 08             	mov    (%rax),%rcx
     4a5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     4a9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     4ad:	49 89 c9             	mov    %rcx,%r9
     4b0:	49 89 d0             	mov    %rdx,%r8
     4b3:	48 89 c1             	mov    %rax,%rcx
     4b6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4bd:	00 00 00 
     4c0:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     4c4:	48 89 c2             	mov    %rax,%rdx
     4c7:	be 00 00 00 00       	mov    $0x0,%esi
     4cc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     4d1:	4d 89 d7             	mov    %r10,%r15
     4d4:	b8 00 00 00 00       	mov    $0x0,%eax
     4d9:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     4e0:	00 00 00 
     4e3:	4d 01 d3             	add    %r10,%r11
     4e6:	41 ff d3             	call   *%r11
     4e9:	eb fe                	jmp    4e9 <do_nmi+0x8b>

00000000000004eb <do_int3>:
     4eb:	f3 0f 1e fa          	endbr64 
     4ef:	55                   	push   %rbp
     4f0:	48 89 e5             	mov    %rsp,%rbp
     4f3:	41 57                	push   %r15
     4f5:	48 83 ec 28          	sub    $0x28,%rsp
     4f9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 4f9 <do_int3+0xe>
     500:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     507:	00 00 00 
     50a:	4d 01 da             	add    %r11,%r10
     50d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     511:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     515:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     51c:	00 
     51d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     521:	48 05 98 00 00 00    	add    $0x98,%rax
     527:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     52b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     52f:	48 8b 08             	mov    (%rax),%rcx
     532:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     536:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     53a:	49 89 c9             	mov    %rcx,%r9
     53d:	49 89 d0             	mov    %rdx,%r8
     540:	48 89 c1             	mov    %rax,%rcx
     543:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     54a:	00 00 00 
     54d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     551:	48 89 c2             	mov    %rax,%rdx
     554:	be 00 00 00 00       	mov    $0x0,%esi
     559:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     55e:	4d 89 d7             	mov    %r10,%r15
     561:	b8 00 00 00 00       	mov    $0x0,%eax
     566:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     56d:	00 00 00 
     570:	4d 01 d3             	add    %r10,%r11
     573:	41 ff d3             	call   *%r11
     576:	eb fe                	jmp    576 <do_int3+0x8b>

0000000000000578 <do_overflow>:
     578:	f3 0f 1e fa          	endbr64 
     57c:	55                   	push   %rbp
     57d:	48 89 e5             	mov    %rsp,%rbp
     580:	41 57                	push   %r15
     582:	48 83 ec 28          	sub    $0x28,%rsp
     586:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 586 <do_overflow+0xe>
     58d:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     594:	00 00 00 
     597:	4d 01 da             	add    %r11,%r10
     59a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     59e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     5a2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     5a9:	00 
     5aa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     5ae:	48 05 98 00 00 00    	add    $0x98,%rax
     5b4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     5b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     5bc:	48 8b 08             	mov    (%rax),%rcx
     5bf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     5c3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     5c7:	49 89 c9             	mov    %rcx,%r9
     5ca:	49 89 d0             	mov    %rdx,%r8
     5cd:	48 89 c1             	mov    %rax,%rcx
     5d0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5d7:	00 00 00 
     5da:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     5de:	48 89 c2             	mov    %rax,%rdx
     5e1:	be 00 00 00 00       	mov    $0x0,%esi
     5e6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     5eb:	4d 89 d7             	mov    %r10,%r15
     5ee:	b8 00 00 00 00       	mov    $0x0,%eax
     5f3:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     5fa:	00 00 00 
     5fd:	4d 01 d3             	add    %r10,%r11
     600:	41 ff d3             	call   *%r11
     603:	eb fe                	jmp    603 <do_overflow+0x8b>

0000000000000605 <do_bounds>:
     605:	f3 0f 1e fa          	endbr64 
     609:	55                   	push   %rbp
     60a:	48 89 e5             	mov    %rsp,%rbp
     60d:	41 57                	push   %r15
     60f:	48 83 ec 28          	sub    $0x28,%rsp
     613:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 613 <do_bounds+0xe>
     61a:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     621:	00 00 00 
     624:	4d 01 da             	add    %r11,%r10
     627:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     62b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     62f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     636:	00 
     637:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     63b:	48 05 98 00 00 00    	add    $0x98,%rax
     641:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     645:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     649:	48 8b 08             	mov    (%rax),%rcx
     64c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     650:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     654:	49 89 c9             	mov    %rcx,%r9
     657:	49 89 d0             	mov    %rdx,%r8
     65a:	48 89 c1             	mov    %rax,%rcx
     65d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     664:	00 00 00 
     667:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     66b:	48 89 c2             	mov    %rax,%rdx
     66e:	be 00 00 00 00       	mov    $0x0,%esi
     673:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     678:	4d 89 d7             	mov    %r10,%r15
     67b:	b8 00 00 00 00       	mov    $0x0,%eax
     680:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     687:	00 00 00 
     68a:	4d 01 d3             	add    %r10,%r11
     68d:	41 ff d3             	call   *%r11
     690:	eb fe                	jmp    690 <do_bounds+0x8b>

0000000000000692 <do_undefined_opcode>:
     692:	f3 0f 1e fa          	endbr64 
     696:	55                   	push   %rbp
     697:	48 89 e5             	mov    %rsp,%rbp
     69a:	41 57                	push   %r15
     69c:	48 83 ec 28          	sub    $0x28,%rsp
     6a0:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 6a0 <do_undefined_opcode+0xe>
     6a7:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     6ae:	00 00 00 
     6b1:	4d 01 da             	add    %r11,%r10
     6b4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     6b8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     6bc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     6c3:	00 
     6c4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     6c8:	48 05 98 00 00 00    	add    $0x98,%rax
     6ce:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     6d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     6d6:	48 8b 08             	mov    (%rax),%rcx
     6d9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     6dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     6e1:	49 89 c9             	mov    %rcx,%r9
     6e4:	49 89 d0             	mov    %rdx,%r8
     6e7:	48 89 c1             	mov    %rax,%rcx
     6ea:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6f1:	00 00 00 
     6f4:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     6f8:	48 89 c2             	mov    %rax,%rdx
     6fb:	be 00 00 00 00       	mov    $0x0,%esi
     700:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     705:	4d 89 d7             	mov    %r10,%r15
     708:	b8 00 00 00 00       	mov    $0x0,%eax
     70d:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     714:	00 00 00 
     717:	4d 01 d3             	add    %r10,%r11
     71a:	41 ff d3             	call   *%r11
     71d:	eb fe                	jmp    71d <do_undefined_opcode+0x8b>

000000000000071f <do_dev_not_available>:
     71f:	f3 0f 1e fa          	endbr64 
     723:	55                   	push   %rbp
     724:	48 89 e5             	mov    %rsp,%rbp
     727:	41 57                	push   %r15
     729:	48 83 ec 28          	sub    $0x28,%rsp
     72d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 72d <do_dev_not_available+0xe>
     734:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     73b:	00 00 00 
     73e:	4d 01 da             	add    %r11,%r10
     741:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     745:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     749:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     750:	00 
     751:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     755:	48 05 98 00 00 00    	add    $0x98,%rax
     75b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     75f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     763:	48 8b 08             	mov    (%rax),%rcx
     766:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     76a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     76e:	49 89 c9             	mov    %rcx,%r9
     771:	49 89 d0             	mov    %rdx,%r8
     774:	48 89 c1             	mov    %rax,%rcx
     777:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     77e:	00 00 00 
     781:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     785:	48 89 c2             	mov    %rax,%rdx
     788:	be 00 00 00 00       	mov    $0x0,%esi
     78d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     792:	4d 89 d7             	mov    %r10,%r15
     795:	b8 00 00 00 00       	mov    $0x0,%eax
     79a:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     7a1:	00 00 00 
     7a4:	4d 01 d3             	add    %r10,%r11
     7a7:	41 ff d3             	call   *%r11
     7aa:	eb fe                	jmp    7aa <do_dev_not_available+0x8b>

00000000000007ac <do_double_fault>:
     7ac:	f3 0f 1e fa          	endbr64 
     7b0:	55                   	push   %rbp
     7b1:	48 89 e5             	mov    %rsp,%rbp
     7b4:	41 57                	push   %r15
     7b6:	48 83 ec 28          	sub    $0x28,%rsp
     7ba:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 7ba <do_double_fault+0xe>
     7c1:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     7c8:	00 00 00 
     7cb:	4d 01 da             	add    %r11,%r10
     7ce:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     7d2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     7d6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     7dd:	00 
     7de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     7e2:	48 05 98 00 00 00    	add    $0x98,%rax
     7e8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     7ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     7f0:	48 8b 08             	mov    (%rax),%rcx
     7f3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     7f7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     7fb:	49 89 c9             	mov    %rcx,%r9
     7fe:	49 89 d0             	mov    %rdx,%r8
     801:	48 89 c1             	mov    %rax,%rcx
     804:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     80b:	00 00 00 
     80e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     812:	48 89 c2             	mov    %rax,%rdx
     815:	be 00 00 00 00       	mov    $0x0,%esi
     81a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     81f:	4d 89 d7             	mov    %r10,%r15
     822:	b8 00 00 00 00       	mov    $0x0,%eax
     827:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     82e:	00 00 00 
     831:	4d 01 d3             	add    %r10,%r11
     834:	41 ff d3             	call   *%r11
     837:	eb fe                	jmp    837 <do_double_fault+0x8b>

0000000000000839 <do_coprocessor_segment_overrun>:
     839:	f3 0f 1e fa          	endbr64 
     83d:	55                   	push   %rbp
     83e:	48 89 e5             	mov    %rsp,%rbp
     841:	41 57                	push   %r15
     843:	48 83 ec 28          	sub    $0x28,%rsp
     847:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 847 <do_coprocessor_segment_overrun+0xe>
     84e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     855:	00 00 00 
     858:	4d 01 da             	add    %r11,%r10
     85b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     85f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     863:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     86a:	00 
     86b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     86f:	48 05 98 00 00 00    	add    $0x98,%rax
     875:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     879:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     87d:	48 8b 08             	mov    (%rax),%rcx
     880:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     884:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     888:	49 89 c9             	mov    %rcx,%r9
     88b:	49 89 d0             	mov    %rdx,%r8
     88e:	48 89 c1             	mov    %rax,%rcx
     891:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     898:	00 00 00 
     89b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     89f:	48 89 c2             	mov    %rax,%rdx
     8a2:	be 00 00 00 00       	mov    $0x0,%esi
     8a7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     8ac:	4d 89 d7             	mov    %r10,%r15
     8af:	b8 00 00 00 00       	mov    $0x0,%eax
     8b4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     8bb:	00 00 00 
     8be:	4d 01 d3             	add    %r10,%r11
     8c1:	41 ff d3             	call   *%r11
     8c4:	eb fe                	jmp    8c4 <do_coprocessor_segment_overrun+0x8b>

00000000000008c6 <do_invalid_TSS>:
     8c6:	f3 0f 1e fa          	endbr64 
     8ca:	55                   	push   %rbp
     8cb:	48 89 e5             	mov    %rsp,%rbp
     8ce:	41 57                	push   %r15
     8d0:	53                   	push   %rbx
     8d1:	48 83 ec 20          	sub    $0x20,%rsp
     8d5:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 8d5 <do_invalid_TSS+0xf>
     8dc:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     8e3:	00 00 00 
     8e6:	4c 01 db             	add    %r11,%rbx
     8e9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     8ed:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     8f1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     8f8:	00 
     8f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     8fd:	48 05 98 00 00 00    	add    $0x98,%rax
     903:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     907:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     90b:	48 8b 08             	mov    (%rax),%rcx
     90e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     912:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     916:	49 89 c9             	mov    %rcx,%r9
     919:	49 89 d0             	mov    %rdx,%r8
     91c:	48 89 c1             	mov    %rax,%rcx
     91f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     926:	00 00 00 
     929:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     92d:	48 89 c2             	mov    %rax,%rdx
     930:	be 00 00 00 00       	mov    $0x0,%esi
     935:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     93a:	49 89 df             	mov    %rbx,%r15
     93d:	b8 00 00 00 00       	mov    $0x0,%eax
     942:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     949:	00 00 00 
     94c:	49 01 da             	add    %rbx,%r10
     94f:	41 ff d2             	call   *%r10
     952:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     956:	83 e0 01             	and    $0x1,%eax
     959:	48 85 c0             	test   %rax,%rax
     95c:	74 32                	je     990 <do_invalid_TSS+0xca>
     95e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     965:	00 00 00 
     968:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     96c:	48 89 c2             	mov    %rax,%rdx
     96f:	be 00 00 00 00       	mov    $0x0,%esi
     974:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     979:	49 89 df             	mov    %rbx,%r15
     97c:	b8 00 00 00 00       	mov    $0x0,%eax
     981:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     988:	00 00 00 
     98b:	48 01 d9             	add    %rbx,%rcx
     98e:	ff d1                	call   *%rcx
     990:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     994:	83 e0 02             	and    $0x2,%eax
     997:	48 85 c0             	test   %rax,%rax
     99a:	74 34                	je     9d0 <do_invalid_TSS+0x10a>
     99c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a3:	00 00 00 
     9a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     9aa:	48 89 c2             	mov    %rax,%rdx
     9ad:	be 00 00 00 00       	mov    $0x0,%esi
     9b2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     9b7:	49 89 df             	mov    %rbx,%r15
     9ba:	b8 00 00 00 00       	mov    $0x0,%eax
     9bf:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     9c6:	00 00 00 
     9c9:	48 01 d9             	add    %rbx,%rcx
     9cc:	ff d1                	call   *%rcx
     9ce:	eb 32                	jmp    a02 <do_invalid_TSS+0x13c>
     9d0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9d7:	00 00 00 
     9da:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     9de:	48 89 c2             	mov    %rax,%rdx
     9e1:	be 00 00 00 00       	mov    $0x0,%esi
     9e6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     9eb:	49 89 df             	mov    %rbx,%r15
     9ee:	b8 00 00 00 00       	mov    $0x0,%eax
     9f3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     9fa:	00 00 00 
     9fd:	48 01 d9             	add    %rbx,%rcx
     a00:	ff d1                	call   *%rcx
     a02:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a06:	83 e0 02             	and    $0x2,%eax
     a09:	48 85 c0             	test   %rax,%rax
     a0c:	75 72                	jne    a80 <do_invalid_TSS+0x1ba>
     a0e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a12:	83 e0 04             	and    $0x4,%eax
     a15:	48 85 c0             	test   %rax,%rax
     a18:	74 34                	je     a4e <do_invalid_TSS+0x188>
     a1a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a21:	00 00 00 
     a24:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a28:	48 89 c2             	mov    %rax,%rdx
     a2b:	be 00 00 00 00       	mov    $0x0,%esi
     a30:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     a35:	49 89 df             	mov    %rbx,%r15
     a38:	b8 00 00 00 00       	mov    $0x0,%eax
     a3d:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a44:	00 00 00 
     a47:	48 01 d9             	add    %rbx,%rcx
     a4a:	ff d1                	call   *%rcx
     a4c:	eb 32                	jmp    a80 <do_invalid_TSS+0x1ba>
     a4e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a55:	00 00 00 
     a58:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a5c:	48 89 c2             	mov    %rax,%rdx
     a5f:	be 00 00 00 00       	mov    $0x0,%esi
     a64:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     a69:	49 89 df             	mov    %rbx,%r15
     a6c:	b8 00 00 00 00       	mov    $0x0,%eax
     a71:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a78:	00 00 00 
     a7b:	48 01 d9             	add    %rbx,%rcx
     a7e:	ff d1                	call   *%rcx
     a80:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a84:	25 f8 ff 00 00       	and    $0xfff8,%eax
     a89:	48 89 c1             	mov    %rax,%rcx
     a8c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a93:	00 00 00 
     a96:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a9a:	48 89 c2             	mov    %rax,%rdx
     a9d:	be 00 00 00 00       	mov    $0x0,%esi
     aa2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     aa7:	49 89 df             	mov    %rbx,%r15
     aaa:	b8 00 00 00 00       	mov    $0x0,%eax
     aaf:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     ab6:	00 00 00 
     ab9:	49 01 d8             	add    %rbx,%r8
     abc:	41 ff d0             	call   *%r8
     abf:	eb fe                	jmp    abf <do_invalid_TSS+0x1f9>

0000000000000ac1 <do_segment_not_present>:
     ac1:	f3 0f 1e fa          	endbr64 
     ac5:	55                   	push   %rbp
     ac6:	48 89 e5             	mov    %rsp,%rbp
     ac9:	41 57                	push   %r15
     acb:	53                   	push   %rbx
     acc:	48 83 ec 20          	sub    $0x20,%rsp
     ad0:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ad0 <do_segment_not_present+0xf>
     ad7:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     ade:	00 00 00 
     ae1:	4c 01 db             	add    %r11,%rbx
     ae4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ae8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     aec:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     af3:	00 
     af4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     af8:	48 05 98 00 00 00    	add    $0x98,%rax
     afe:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     b02:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     b06:	48 8b 08             	mov    (%rax),%rcx
     b09:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     b0d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b11:	49 89 c9             	mov    %rcx,%r9
     b14:	49 89 d0             	mov    %rdx,%r8
     b17:	48 89 c1             	mov    %rax,%rcx
     b1a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b21:	00 00 00 
     b24:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     b28:	48 89 c2             	mov    %rax,%rdx
     b2b:	be 00 00 00 00       	mov    $0x0,%esi
     b30:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     b35:	49 89 df             	mov    %rbx,%r15
     b38:	b8 00 00 00 00       	mov    $0x0,%eax
     b3d:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     b44:	00 00 00 
     b47:	49 01 da             	add    %rbx,%r10
     b4a:	41 ff d2             	call   *%r10
     b4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b51:	83 e0 01             	and    $0x1,%eax
     b54:	48 85 c0             	test   %rax,%rax
     b57:	74 32                	je     b8b <do_segment_not_present+0xca>
     b59:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b60:	00 00 00 
     b63:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     b67:	48 89 c2             	mov    %rax,%rdx
     b6a:	be 00 00 00 00       	mov    $0x0,%esi
     b6f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     b74:	49 89 df             	mov    %rbx,%r15
     b77:	b8 00 00 00 00       	mov    $0x0,%eax
     b7c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     b83:	00 00 00 
     b86:	48 01 d9             	add    %rbx,%rcx
     b89:	ff d1                	call   *%rcx
     b8b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b8f:	83 e0 02             	and    $0x2,%eax
     b92:	48 85 c0             	test   %rax,%rax
     b95:	74 34                	je     bcb <do_segment_not_present+0x10a>
     b97:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b9e:	00 00 00 
     ba1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ba5:	48 89 c2             	mov    %rax,%rdx
     ba8:	be 00 00 00 00       	mov    $0x0,%esi
     bad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     bb2:	49 89 df             	mov    %rbx,%r15
     bb5:	b8 00 00 00 00       	mov    $0x0,%eax
     bba:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     bc1:	00 00 00 
     bc4:	48 01 d9             	add    %rbx,%rcx
     bc7:	ff d1                	call   *%rcx
     bc9:	eb 32                	jmp    bfd <do_segment_not_present+0x13c>
     bcb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bd2:	00 00 00 
     bd5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     bd9:	48 89 c2             	mov    %rax,%rdx
     bdc:	be 00 00 00 00       	mov    $0x0,%esi
     be1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     be6:	49 89 df             	mov    %rbx,%r15
     be9:	b8 00 00 00 00       	mov    $0x0,%eax
     bee:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     bf5:	00 00 00 
     bf8:	48 01 d9             	add    %rbx,%rcx
     bfb:	ff d1                	call   *%rcx
     bfd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c01:	83 e0 02             	and    $0x2,%eax
     c04:	48 85 c0             	test   %rax,%rax
     c07:	75 72                	jne    c7b <do_segment_not_present+0x1ba>
     c09:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c0d:	83 e0 04             	and    $0x4,%eax
     c10:	48 85 c0             	test   %rax,%rax
     c13:	74 34                	je     c49 <do_segment_not_present+0x188>
     c15:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c1c:	00 00 00 
     c1f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c23:	48 89 c2             	mov    %rax,%rdx
     c26:	be 00 00 00 00       	mov    $0x0,%esi
     c2b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     c30:	49 89 df             	mov    %rbx,%r15
     c33:	b8 00 00 00 00       	mov    $0x0,%eax
     c38:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     c3f:	00 00 00 
     c42:	48 01 d9             	add    %rbx,%rcx
     c45:	ff d1                	call   *%rcx
     c47:	eb 32                	jmp    c7b <do_segment_not_present+0x1ba>
     c49:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c50:	00 00 00 
     c53:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c57:	48 89 c2             	mov    %rax,%rdx
     c5a:	be 00 00 00 00       	mov    $0x0,%esi
     c5f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     c64:	49 89 df             	mov    %rbx,%r15
     c67:	b8 00 00 00 00       	mov    $0x0,%eax
     c6c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     c73:	00 00 00 
     c76:	48 01 d9             	add    %rbx,%rcx
     c79:	ff d1                	call   *%rcx
     c7b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c7f:	25 f8 ff 00 00       	and    $0xfff8,%eax
     c84:	48 89 c1             	mov    %rax,%rcx
     c87:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c8e:	00 00 00 
     c91:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c95:	48 89 c2             	mov    %rax,%rdx
     c98:	be 00 00 00 00       	mov    $0x0,%esi
     c9d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     ca2:	49 89 df             	mov    %rbx,%r15
     ca5:	b8 00 00 00 00       	mov    $0x0,%eax
     caa:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     cb1:	00 00 00 
     cb4:	49 01 d8             	add    %rbx,%r8
     cb7:	41 ff d0             	call   *%r8
     cba:	eb fe                	jmp    cba <do_segment_not_present+0x1f9>

0000000000000cbc <do_stack_segment_fault>:
     cbc:	f3 0f 1e fa          	endbr64 
     cc0:	55                   	push   %rbp
     cc1:	48 89 e5             	mov    %rsp,%rbp
     cc4:	41 57                	push   %r15
     cc6:	53                   	push   %rbx
     cc7:	48 83 ec 20          	sub    $0x20,%rsp
     ccb:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ccb <do_stack_segment_fault+0xf>
     cd2:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     cd9:	00 00 00 
     cdc:	4c 01 db             	add    %r11,%rbx
     cdf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ce3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     ce7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     cee:	00 
     cef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     cf3:	48 05 98 00 00 00    	add    $0x98,%rax
     cf9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     cfd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d01:	48 8b 08             	mov    (%rax),%rcx
     d04:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     d08:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d0c:	49 89 c9             	mov    %rcx,%r9
     d0f:	49 89 d0             	mov    %rdx,%r8
     d12:	48 89 c1             	mov    %rax,%rcx
     d15:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d1c:	00 00 00 
     d1f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d23:	48 89 c2             	mov    %rax,%rdx
     d26:	be 00 00 00 00       	mov    $0x0,%esi
     d2b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     d30:	49 89 df             	mov    %rbx,%r15
     d33:	b8 00 00 00 00       	mov    $0x0,%eax
     d38:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     d3f:	00 00 00 
     d42:	49 01 da             	add    %rbx,%r10
     d45:	41 ff d2             	call   *%r10
     d48:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d4c:	83 e0 01             	and    $0x1,%eax
     d4f:	48 85 c0             	test   %rax,%rax
     d52:	74 32                	je     d86 <do_stack_segment_fault+0xca>
     d54:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d5b:	00 00 00 
     d5e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d62:	48 89 c2             	mov    %rax,%rdx
     d65:	be 00 00 00 00       	mov    $0x0,%esi
     d6a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     d6f:	49 89 df             	mov    %rbx,%r15
     d72:	b8 00 00 00 00       	mov    $0x0,%eax
     d77:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     d7e:	00 00 00 
     d81:	48 01 d9             	add    %rbx,%rcx
     d84:	ff d1                	call   *%rcx
     d86:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d8a:	83 e0 02             	and    $0x2,%eax
     d8d:	48 85 c0             	test   %rax,%rax
     d90:	74 34                	je     dc6 <do_stack_segment_fault+0x10a>
     d92:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d99:	00 00 00 
     d9c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     da0:	48 89 c2             	mov    %rax,%rdx
     da3:	be 00 00 00 00       	mov    $0x0,%esi
     da8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     dad:	49 89 df             	mov    %rbx,%r15
     db0:	b8 00 00 00 00       	mov    $0x0,%eax
     db5:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     dbc:	00 00 00 
     dbf:	48 01 d9             	add    %rbx,%rcx
     dc2:	ff d1                	call   *%rcx
     dc4:	eb 32                	jmp    df8 <do_stack_segment_fault+0x13c>
     dc6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dcd:	00 00 00 
     dd0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     dd4:	48 89 c2             	mov    %rax,%rdx
     dd7:	be 00 00 00 00       	mov    $0x0,%esi
     ddc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     de1:	49 89 df             	mov    %rbx,%r15
     de4:	b8 00 00 00 00       	mov    $0x0,%eax
     de9:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     df0:	00 00 00 
     df3:	48 01 d9             	add    %rbx,%rcx
     df6:	ff d1                	call   *%rcx
     df8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     dfc:	83 e0 02             	and    $0x2,%eax
     dff:	48 85 c0             	test   %rax,%rax
     e02:	75 72                	jne    e76 <do_stack_segment_fault+0x1ba>
     e04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e08:	83 e0 04             	and    $0x4,%eax
     e0b:	48 85 c0             	test   %rax,%rax
     e0e:	74 34                	je     e44 <do_stack_segment_fault+0x188>
     e10:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e17:	00 00 00 
     e1a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e1e:	48 89 c2             	mov    %rax,%rdx
     e21:	be 00 00 00 00       	mov    $0x0,%esi
     e26:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     e2b:	49 89 df             	mov    %rbx,%r15
     e2e:	b8 00 00 00 00       	mov    $0x0,%eax
     e33:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     e3a:	00 00 00 
     e3d:	48 01 d9             	add    %rbx,%rcx
     e40:	ff d1                	call   *%rcx
     e42:	eb 32                	jmp    e76 <do_stack_segment_fault+0x1ba>
     e44:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e4b:	00 00 00 
     e4e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e52:	48 89 c2             	mov    %rax,%rdx
     e55:	be 00 00 00 00       	mov    $0x0,%esi
     e5a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     e5f:	49 89 df             	mov    %rbx,%r15
     e62:	b8 00 00 00 00       	mov    $0x0,%eax
     e67:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     e6e:	00 00 00 
     e71:	48 01 d9             	add    %rbx,%rcx
     e74:	ff d1                	call   *%rcx
     e76:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e7a:	25 f8 ff 00 00       	and    $0xfff8,%eax
     e7f:	48 89 c1             	mov    %rax,%rcx
     e82:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e89:	00 00 00 
     e8c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e90:	48 89 c2             	mov    %rax,%rdx
     e93:	be 00 00 00 00       	mov    $0x0,%esi
     e98:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     e9d:	49 89 df             	mov    %rbx,%r15
     ea0:	b8 00 00 00 00       	mov    $0x0,%eax
     ea5:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     eac:	00 00 00 
     eaf:	49 01 d8             	add    %rbx,%r8
     eb2:	41 ff d0             	call   *%r8
     eb5:	eb fe                	jmp    eb5 <do_stack_segment_fault+0x1f9>

0000000000000eb7 <do_general_protection>:
     eb7:	f3 0f 1e fa          	endbr64 
     ebb:	55                   	push   %rbp
     ebc:	48 89 e5             	mov    %rsp,%rbp
     ebf:	41 57                	push   %r15
     ec1:	53                   	push   %rbx
     ec2:	48 83 ec 20          	sub    $0x20,%rsp
     ec6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ec6 <do_general_protection+0xf>
     ecd:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     ed4:	00 00 00 
     ed7:	4c 01 db             	add    %r11,%rbx
     eda:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ede:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     ee2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     ee9:	00 
     eea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     eee:	48 05 98 00 00 00    	add    $0x98,%rax
     ef4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     ef8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     efc:	48 8b 08             	mov    (%rax),%rcx
     eff:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     f03:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f07:	49 89 c9             	mov    %rcx,%r9
     f0a:	49 89 d0             	mov    %rdx,%r8
     f0d:	48 89 c1             	mov    %rax,%rcx
     f10:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f17:	00 00 00 
     f1a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f1e:	48 89 c2             	mov    %rax,%rdx
     f21:	be 00 00 00 00       	mov    $0x0,%esi
     f26:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     f2b:	49 89 df             	mov    %rbx,%r15
     f2e:	b8 00 00 00 00       	mov    $0x0,%eax
     f33:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     f3a:	00 00 00 
     f3d:	49 01 da             	add    %rbx,%r10
     f40:	41 ff d2             	call   *%r10
     f43:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f47:	83 e0 01             	and    $0x1,%eax
     f4a:	48 85 c0             	test   %rax,%rax
     f4d:	74 32                	je     f81 <do_general_protection+0xca>
     f4f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f56:	00 00 00 
     f59:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f5d:	48 89 c2             	mov    %rax,%rdx
     f60:	be 00 00 00 00       	mov    $0x0,%esi
     f65:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     f6a:	49 89 df             	mov    %rbx,%r15
     f6d:	b8 00 00 00 00       	mov    $0x0,%eax
     f72:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     f79:	00 00 00 
     f7c:	48 01 d9             	add    %rbx,%rcx
     f7f:	ff d1                	call   *%rcx
     f81:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f85:	83 e0 02             	and    $0x2,%eax
     f88:	48 85 c0             	test   %rax,%rax
     f8b:	74 34                	je     fc1 <do_general_protection+0x10a>
     f8d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f94:	00 00 00 
     f97:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f9b:	48 89 c2             	mov    %rax,%rdx
     f9e:	be 00 00 00 00       	mov    $0x0,%esi
     fa3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     fa8:	49 89 df             	mov    %rbx,%r15
     fab:	b8 00 00 00 00       	mov    $0x0,%eax
     fb0:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     fb7:	00 00 00 
     fba:	48 01 d9             	add    %rbx,%rcx
     fbd:	ff d1                	call   *%rcx
     fbf:	eb 32                	jmp    ff3 <do_general_protection+0x13c>
     fc1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     fc8:	00 00 00 
     fcb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     fcf:	48 89 c2             	mov    %rax,%rdx
     fd2:	be 00 00 00 00       	mov    $0x0,%esi
     fd7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     fdc:	49 89 df             	mov    %rbx,%r15
     fdf:	b8 00 00 00 00       	mov    $0x0,%eax
     fe4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     feb:	00 00 00 
     fee:	48 01 d9             	add    %rbx,%rcx
     ff1:	ff d1                	call   *%rcx
     ff3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     ff7:	83 e0 02             	and    $0x2,%eax
     ffa:	48 85 c0             	test   %rax,%rax
     ffd:	75 72                	jne    1071 <do_general_protection+0x1ba>
     fff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1003:	83 e0 04             	and    $0x4,%eax
    1006:	48 85 c0             	test   %rax,%rax
    1009:	74 34                	je     103f <do_general_protection+0x188>
    100b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1012:	00 00 00 
    1015:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1019:	48 89 c2             	mov    %rax,%rdx
    101c:	be 00 00 00 00       	mov    $0x0,%esi
    1021:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1026:	49 89 df             	mov    %rbx,%r15
    1029:	b8 00 00 00 00       	mov    $0x0,%eax
    102e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1035:	00 00 00 
    1038:	48 01 d9             	add    %rbx,%rcx
    103b:	ff d1                	call   *%rcx
    103d:	eb 32                	jmp    1071 <do_general_protection+0x1ba>
    103f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1046:	00 00 00 
    1049:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    104d:	48 89 c2             	mov    %rax,%rdx
    1050:	be 00 00 00 00       	mov    $0x0,%esi
    1055:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    105a:	49 89 df             	mov    %rbx,%r15
    105d:	b8 00 00 00 00       	mov    $0x0,%eax
    1062:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1069:	00 00 00 
    106c:	48 01 d9             	add    %rbx,%rcx
    106f:	ff d1                	call   *%rcx
    1071:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1075:	25 f8 ff 00 00       	and    $0xfff8,%eax
    107a:	48 89 c1             	mov    %rax,%rcx
    107d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1084:	00 00 00 
    1087:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    108b:	48 89 c2             	mov    %rax,%rdx
    108e:	be 00 00 00 00       	mov    $0x0,%esi
    1093:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1098:	49 89 df             	mov    %rbx,%r15
    109b:	b8 00 00 00 00       	mov    $0x0,%eax
    10a0:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    10a7:	00 00 00 
    10aa:	49 01 d8             	add    %rbx,%r8
    10ad:	41 ff d0             	call   *%r8
    10b0:	eb fe                	jmp    10b0 <do_general_protection+0x1f9>

00000000000010b2 <do_page_fault>:
    10b2:	f3 0f 1e fa          	endbr64 
    10b6:	55                   	push   %rbp
    10b7:	48 89 e5             	mov    %rsp,%rbp
    10ba:	41 57                	push   %r15
    10bc:	53                   	push   %rbx
    10bd:	48 83 ec 20          	sub    $0x20,%rsp
    10c1:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 10c1 <do_page_fault+0xf>
    10c8:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    10cf:	00 00 00 
    10d2:	4c 01 db             	add    %r11,%rbx
    10d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    10d9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    10dd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    10e4:	00 
    10e5:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    10ec:	00 
    10ed:	0f 20 d0             	mov    %cr2,%rax
    10f0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    10f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    10f8:	48 05 98 00 00 00    	add    $0x98,%rax
    10fe:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1102:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1106:	48 8b 08             	mov    (%rax),%rcx
    1109:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    110d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1111:	49 89 c9             	mov    %rcx,%r9
    1114:	49 89 d0             	mov    %rdx,%r8
    1117:	48 89 c1             	mov    %rax,%rcx
    111a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1121:	00 00 00 
    1124:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1128:	48 89 c2             	mov    %rax,%rdx
    112b:	be 00 00 00 00       	mov    $0x0,%esi
    1130:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1135:	49 89 df             	mov    %rbx,%r15
    1138:	b8 00 00 00 00       	mov    $0x0,%eax
    113d:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    1144:	00 00 00 
    1147:	49 01 da             	add    %rbx,%r10
    114a:	41 ff d2             	call   *%r10
    114d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1151:	83 e0 01             	and    $0x1,%eax
    1154:	48 85 c0             	test   %rax,%rax
    1157:	75 32                	jne    118b <do_page_fault+0xd9>
    1159:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1160:	00 00 00 
    1163:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1167:	48 89 c2             	mov    %rax,%rdx
    116a:	be 00 00 00 00       	mov    $0x0,%esi
    116f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1174:	49 89 df             	mov    %rbx,%r15
    1177:	b8 00 00 00 00       	mov    $0x0,%eax
    117c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1183:	00 00 00 
    1186:	48 01 d9             	add    %rbx,%rcx
    1189:	ff d1                	call   *%rcx
    118b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    118f:	83 e0 02             	and    $0x2,%eax
    1192:	48 85 c0             	test   %rax,%rax
    1195:	74 34                	je     11cb <do_page_fault+0x119>
    1197:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    119e:	00 00 00 
    11a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11a5:	48 89 c2             	mov    %rax,%rdx
    11a8:	be 00 00 00 00       	mov    $0x0,%esi
    11ad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    11b2:	49 89 df             	mov    %rbx,%r15
    11b5:	b8 00 00 00 00       	mov    $0x0,%eax
    11ba:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    11c1:	00 00 00 
    11c4:	48 01 d9             	add    %rbx,%rcx
    11c7:	ff d1                	call   *%rcx
    11c9:	eb 32                	jmp    11fd <do_page_fault+0x14b>
    11cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11d2:	00 00 00 
    11d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11d9:	48 89 c2             	mov    %rax,%rdx
    11dc:	be 00 00 00 00       	mov    $0x0,%esi
    11e1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    11e6:	49 89 df             	mov    %rbx,%r15
    11e9:	b8 00 00 00 00       	mov    $0x0,%eax
    11ee:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    11f5:	00 00 00 
    11f8:	48 01 d9             	add    %rbx,%rcx
    11fb:	ff d1                	call   *%rcx
    11fd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1201:	83 e0 04             	and    $0x4,%eax
    1204:	48 85 c0             	test   %rax,%rax
    1207:	74 34                	je     123d <do_page_fault+0x18b>
    1209:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1210:	00 00 00 
    1213:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1217:	48 89 c2             	mov    %rax,%rdx
    121a:	be 00 00 00 00       	mov    $0x0,%esi
    121f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1224:	49 89 df             	mov    %rbx,%r15
    1227:	b8 00 00 00 00       	mov    $0x0,%eax
    122c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1233:	00 00 00 
    1236:	48 01 d9             	add    %rbx,%rcx
    1239:	ff d1                	call   *%rcx
    123b:	eb 32                	jmp    126f <do_page_fault+0x1bd>
    123d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1244:	00 00 00 
    1247:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    124b:	48 89 c2             	mov    %rax,%rdx
    124e:	be 00 00 00 00       	mov    $0x0,%esi
    1253:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1258:	49 89 df             	mov    %rbx,%r15
    125b:	b8 00 00 00 00       	mov    $0x0,%eax
    1260:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1267:	00 00 00 
    126a:	48 01 d9             	add    %rbx,%rcx
    126d:	ff d1                	call   *%rcx
    126f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1273:	83 e0 08             	and    $0x8,%eax
    1276:	48 85 c0             	test   %rax,%rax
    1279:	74 32                	je     12ad <do_page_fault+0x1fb>
    127b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1282:	00 00 00 
    1285:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1289:	48 89 c2             	mov    %rax,%rdx
    128c:	be 00 00 00 00       	mov    $0x0,%esi
    1291:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1296:	49 89 df             	mov    %rbx,%r15
    1299:	b8 00 00 00 00       	mov    $0x0,%eax
    129e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    12a5:	00 00 00 
    12a8:	48 01 d9             	add    %rbx,%rcx
    12ab:	ff d1                	call   *%rcx
    12ad:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12b1:	83 e0 10             	and    $0x10,%eax
    12b4:	48 85 c0             	test   %rax,%rax
    12b7:	74 32                	je     12eb <do_page_fault+0x239>
    12b9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12c0:	00 00 00 
    12c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12c7:	48 89 c2             	mov    %rax,%rdx
    12ca:	be 00 00 00 00       	mov    $0x0,%esi
    12cf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    12d4:	49 89 df             	mov    %rbx,%r15
    12d7:	b8 00 00 00 00       	mov    $0x0,%eax
    12dc:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    12e3:	00 00 00 
    12e6:	48 01 d9             	add    %rbx,%rcx
    12e9:	ff d1                	call   *%rcx
    12eb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12f2:	00 00 00 
    12f5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12f9:	48 89 c2             	mov    %rax,%rdx
    12fc:	be 00 00 00 00       	mov    $0x0,%esi
    1301:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1306:	49 89 df             	mov    %rbx,%r15
    1309:	b8 00 00 00 00       	mov    $0x0,%eax
    130e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1315:	00 00 00 
    1318:	48 01 d9             	add    %rbx,%rcx
    131b:	ff d1                	call   *%rcx
    131d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1321:	48 89 c1             	mov    %rax,%rcx
    1324:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    132b:	00 00 00 
    132e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1332:	48 89 c2             	mov    %rax,%rdx
    1335:	be 00 00 00 00       	mov    $0x0,%esi
    133a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    133f:	49 89 df             	mov    %rbx,%r15
    1342:	b8 00 00 00 00       	mov    $0x0,%eax
    1347:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    134e:	00 00 00 
    1351:	49 01 d8             	add    %rbx,%r8
    1354:	41 ff d0             	call   *%r8
    1357:	eb fe                	jmp    1357 <do_page_fault+0x2a5>

0000000000001359 <do_x87_FPU_error>:
    1359:	f3 0f 1e fa          	endbr64 
    135d:	55                   	push   %rbp
    135e:	48 89 e5             	mov    %rsp,%rbp
    1361:	41 57                	push   %r15
    1363:	48 83 ec 28          	sub    $0x28,%rsp
    1367:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 1367 <do_x87_FPU_error+0xe>
    136e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1375:	00 00 00 
    1378:	4d 01 da             	add    %r11,%r10
    137b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    137f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1383:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    138a:	00 
    138b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    138f:	48 05 98 00 00 00    	add    $0x98,%rax
    1395:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1399:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    139d:	48 8b 08             	mov    (%rax),%rcx
    13a0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    13a4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    13a8:	49 89 c9             	mov    %rcx,%r9
    13ab:	49 89 d0             	mov    %rdx,%r8
    13ae:	48 89 c1             	mov    %rax,%rcx
    13b1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    13b8:	00 00 00 
    13bb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    13bf:	48 89 c2             	mov    %rax,%rdx
    13c2:	be 00 00 00 00       	mov    $0x0,%esi
    13c7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    13cc:	4d 89 d7             	mov    %r10,%r15
    13cf:	b8 00 00 00 00       	mov    $0x0,%eax
    13d4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    13db:	00 00 00 
    13de:	4d 01 d3             	add    %r10,%r11
    13e1:	41 ff d3             	call   *%r11
    13e4:	eb fe                	jmp    13e4 <do_x87_FPU_error+0x8b>

00000000000013e6 <do_alignment_check>:
    13e6:	f3 0f 1e fa          	endbr64 
    13ea:	55                   	push   %rbp
    13eb:	48 89 e5             	mov    %rsp,%rbp
    13ee:	41 57                	push   %r15
    13f0:	48 83 ec 28          	sub    $0x28,%rsp
    13f4:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 13f4 <do_alignment_check+0xe>
    13fb:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1402:	00 00 00 
    1405:	4d 01 da             	add    %r11,%r10
    1408:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    140c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1410:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1417:	00 
    1418:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    141c:	48 05 98 00 00 00    	add    $0x98,%rax
    1422:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1426:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    142a:	48 8b 08             	mov    (%rax),%rcx
    142d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1431:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1435:	49 89 c9             	mov    %rcx,%r9
    1438:	49 89 d0             	mov    %rdx,%r8
    143b:	48 89 c1             	mov    %rax,%rcx
    143e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1445:	00 00 00 
    1448:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    144c:	48 89 c2             	mov    %rax,%rdx
    144f:	be 00 00 00 00       	mov    $0x0,%esi
    1454:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1459:	4d 89 d7             	mov    %r10,%r15
    145c:	b8 00 00 00 00       	mov    $0x0,%eax
    1461:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1468:	00 00 00 
    146b:	4d 01 d3             	add    %r10,%r11
    146e:	41 ff d3             	call   *%r11
    1471:	eb fe                	jmp    1471 <do_alignment_check+0x8b>

0000000000001473 <do_machine_check>:
    1473:	f3 0f 1e fa          	endbr64 
    1477:	55                   	push   %rbp
    1478:	48 89 e5             	mov    %rsp,%rbp
    147b:	41 57                	push   %r15
    147d:	48 83 ec 28          	sub    $0x28,%rsp
    1481:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 1481 <do_machine_check+0xe>
    1488:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    148f:	00 00 00 
    1492:	4d 01 da             	add    %r11,%r10
    1495:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1499:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    149d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    14a4:	00 
    14a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    14a9:	48 05 98 00 00 00    	add    $0x98,%rax
    14af:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    14b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14b7:	48 8b 08             	mov    (%rax),%rcx
    14ba:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    14be:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14c2:	49 89 c9             	mov    %rcx,%r9
    14c5:	49 89 d0             	mov    %rdx,%r8
    14c8:	48 89 c1             	mov    %rax,%rcx
    14cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14d2:	00 00 00 
    14d5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    14d9:	48 89 c2             	mov    %rax,%rdx
    14dc:	be 00 00 00 00       	mov    $0x0,%esi
    14e1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    14e6:	4d 89 d7             	mov    %r10,%r15
    14e9:	b8 00 00 00 00       	mov    $0x0,%eax
    14ee:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    14f5:	00 00 00 
    14f8:	4d 01 d3             	add    %r10,%r11
    14fb:	41 ff d3             	call   *%r11
    14fe:	eb fe                	jmp    14fe <do_machine_check+0x8b>

0000000000001500 <do_SIMD_exception>:
    1500:	f3 0f 1e fa          	endbr64 
    1504:	55                   	push   %rbp
    1505:	48 89 e5             	mov    %rsp,%rbp
    1508:	41 57                	push   %r15
    150a:	48 83 ec 28          	sub    $0x28,%rsp
    150e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 150e <do_SIMD_exception+0xe>
    1515:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    151c:	00 00 00 
    151f:	4d 01 da             	add    %r11,%r10
    1522:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1526:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    152a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1531:	00 
    1532:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1536:	48 05 98 00 00 00    	add    $0x98,%rax
    153c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1540:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1544:	48 8b 08             	mov    (%rax),%rcx
    1547:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    154b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    154f:	49 89 c9             	mov    %rcx,%r9
    1552:	49 89 d0             	mov    %rdx,%r8
    1555:	48 89 c1             	mov    %rax,%rcx
    1558:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    155f:	00 00 00 
    1562:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    1566:	48 89 c2             	mov    %rax,%rdx
    1569:	be 00 00 00 00       	mov    $0x0,%esi
    156e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1573:	4d 89 d7             	mov    %r10,%r15
    1576:	b8 00 00 00 00       	mov    $0x0,%eax
    157b:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1582:	00 00 00 
    1585:	4d 01 d3             	add    %r10,%r11
    1588:	41 ff d3             	call   *%r11
    158b:	eb fe                	jmp    158b <do_SIMD_exception+0x8b>

000000000000158d <do_virtualization_exception>:
    158d:	f3 0f 1e fa          	endbr64 
    1591:	55                   	push   %rbp
    1592:	48 89 e5             	mov    %rsp,%rbp
    1595:	41 57                	push   %r15
    1597:	48 83 ec 28          	sub    $0x28,%rsp
    159b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 159b <do_virtualization_exception+0xe>
    15a2:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    15a9:	00 00 00 
    15ac:	4d 01 da             	add    %r11,%r10
    15af:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    15b3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    15b7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    15be:	00 
    15bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15c3:	48 05 98 00 00 00    	add    $0x98,%rax
    15c9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    15cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15d1:	48 8b 08             	mov    (%rax),%rcx
    15d4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    15d8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15dc:	49 89 c9             	mov    %rcx,%r9
    15df:	49 89 d0             	mov    %rdx,%r8
    15e2:	48 89 c1             	mov    %rax,%rcx
    15e5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    15ec:	00 00 00 
    15ef:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    15f3:	48 89 c2             	mov    %rax,%rdx
    15f6:	be 00 00 00 00       	mov    $0x0,%esi
    15fb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1600:	4d 89 d7             	mov    %r10,%r15
    1603:	b8 00 00 00 00       	mov    $0x0,%eax
    1608:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    160f:	00 00 00 
    1612:	4d 01 d3             	add    %r10,%r11
    1615:	41 ff d3             	call   *%r11
    1618:	eb fe                	jmp    1618 <do_virtualization_exception+0x8b>

000000000000161a <sys_vector_init>:
    161a:	f3 0f 1e fa          	endbr64 
    161e:	55                   	push   %rbp
    161f:	48 89 e5             	mov    %rsp,%rbp
    1622:	53                   	push   %rbx
    1623:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 1623 <sys_vector_init+0x9>
    162a:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1631:	00 00 00 
    1634:	4c 01 db             	add    %r11,%rbx
    1637:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    163e:	00 00 00 
    1641:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1645:	48 89 c2             	mov    %rax,%rdx
    1648:	be 01 00 00 00       	mov    $0x1,%esi
    164d:	bf 00 00 00 00       	mov    $0x0,%edi
    1652:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1659:	00 00 00 
    165c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1660:	ff d0                	call   *%rax
    1662:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1669:	00 00 00 
    166c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1670:	48 89 c2             	mov    %rax,%rdx
    1673:	be 01 00 00 00       	mov    $0x1,%esi
    1678:	bf 01 00 00 00       	mov    $0x1,%edi
    167d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1684:	00 00 00 
    1687:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    168b:	ff d0                	call   *%rax
    168d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1694:	00 00 00 
    1697:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    169b:	48 89 c2             	mov    %rax,%rdx
    169e:	be 01 00 00 00       	mov    $0x1,%esi
    16a3:	bf 02 00 00 00       	mov    $0x2,%edi
    16a8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16af:	00 00 00 
    16b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    16b6:	ff d0                	call   *%rax
    16b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16bf:	00 00 00 
    16c2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    16c6:	48 89 c2             	mov    %rax,%rdx
    16c9:	be 01 00 00 00       	mov    $0x1,%esi
    16ce:	bf 03 00 00 00       	mov    $0x3,%edi
    16d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16da:	00 00 00 
    16dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    16e1:	ff d0                	call   *%rax
    16e3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16ea:	00 00 00 
    16ed:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    16f1:	48 89 c2             	mov    %rax,%rdx
    16f4:	be 01 00 00 00       	mov    $0x1,%esi
    16f9:	bf 04 00 00 00       	mov    $0x4,%edi
    16fe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1705:	00 00 00 
    1708:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    170c:	ff d0                	call   *%rax
    170e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1715:	00 00 00 
    1718:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    171c:	48 89 c2             	mov    %rax,%rdx
    171f:	be 01 00 00 00       	mov    $0x1,%esi
    1724:	bf 05 00 00 00       	mov    $0x5,%edi
    1729:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1730:	00 00 00 
    1733:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1737:	ff d0                	call   *%rax
    1739:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1740:	00 00 00 
    1743:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1747:	48 89 c2             	mov    %rax,%rdx
    174a:	be 01 00 00 00       	mov    $0x1,%esi
    174f:	bf 06 00 00 00       	mov    $0x6,%edi
    1754:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    175b:	00 00 00 
    175e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1762:	ff d0                	call   *%rax
    1764:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    176b:	00 00 00 
    176e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1772:	48 89 c2             	mov    %rax,%rdx
    1775:	be 01 00 00 00       	mov    $0x1,%esi
    177a:	bf 07 00 00 00       	mov    $0x7,%edi
    177f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1786:	00 00 00 
    1789:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    178d:	ff d0                	call   *%rax
    178f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1796:	00 00 00 
    1799:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    179d:	48 89 c2             	mov    %rax,%rdx
    17a0:	be 01 00 00 00       	mov    $0x1,%esi
    17a5:	bf 08 00 00 00       	mov    $0x8,%edi
    17aa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17b1:	00 00 00 
    17b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    17b8:	ff d0                	call   *%rax
    17ba:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17c1:	00 00 00 
    17c4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    17c8:	48 89 c2             	mov    %rax,%rdx
    17cb:	be 01 00 00 00       	mov    $0x1,%esi
    17d0:	bf 09 00 00 00       	mov    $0x9,%edi
    17d5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17dc:	00 00 00 
    17df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    17e3:	ff d0                	call   *%rax
    17e5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17ec:	00 00 00 
    17ef:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    17f3:	48 89 c2             	mov    %rax,%rdx
    17f6:	be 01 00 00 00       	mov    $0x1,%esi
    17fb:	bf 0a 00 00 00       	mov    $0xa,%edi
    1800:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1807:	00 00 00 
    180a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    180e:	ff d0                	call   *%rax
    1810:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1817:	00 00 00 
    181a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    181e:	48 89 c2             	mov    %rax,%rdx
    1821:	be 01 00 00 00       	mov    $0x1,%esi
    1826:	bf 0b 00 00 00       	mov    $0xb,%edi
    182b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1832:	00 00 00 
    1835:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1839:	ff d0                	call   *%rax
    183b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1842:	00 00 00 
    1845:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1849:	48 89 c2             	mov    %rax,%rdx
    184c:	be 01 00 00 00       	mov    $0x1,%esi
    1851:	bf 0c 00 00 00       	mov    $0xc,%edi
    1856:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    185d:	00 00 00 
    1860:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1864:	ff d0                	call   *%rax
    1866:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    186d:	00 00 00 
    1870:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1874:	48 89 c2             	mov    %rax,%rdx
    1877:	be 01 00 00 00       	mov    $0x1,%esi
    187c:	bf 0d 00 00 00       	mov    $0xd,%edi
    1881:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1888:	00 00 00 
    188b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    188f:	ff d0                	call   *%rax
    1891:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1898:	00 00 00 
    189b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    189f:	48 89 c2             	mov    %rax,%rdx
    18a2:	be 01 00 00 00       	mov    $0x1,%esi
    18a7:	bf 0e 00 00 00       	mov    $0xe,%edi
    18ac:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18b3:	00 00 00 
    18b6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    18ba:	ff d0                	call   *%rax
    18bc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18c3:	00 00 00 
    18c6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    18ca:	48 89 c2             	mov    %rax,%rdx
    18cd:	be 01 00 00 00       	mov    $0x1,%esi
    18d2:	bf 10 00 00 00       	mov    $0x10,%edi
    18d7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18de:	00 00 00 
    18e1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    18e5:	ff d0                	call   *%rax
    18e7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18ee:	00 00 00 
    18f1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    18f5:	48 89 c2             	mov    %rax,%rdx
    18f8:	be 01 00 00 00       	mov    $0x1,%esi
    18fd:	bf 11 00 00 00       	mov    $0x11,%edi
    1902:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1909:	00 00 00 
    190c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1910:	ff d0                	call   *%rax
    1912:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1919:	00 00 00 
    191c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1920:	48 89 c2             	mov    %rax,%rdx
    1923:	be 01 00 00 00       	mov    $0x1,%esi
    1928:	bf 12 00 00 00       	mov    $0x12,%edi
    192d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1934:	00 00 00 
    1937:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    193b:	ff d0                	call   *%rax
    193d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1944:	00 00 00 
    1947:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    194b:	48 89 c2             	mov    %rax,%rdx
    194e:	be 01 00 00 00       	mov    $0x1,%esi
    1953:	bf 13 00 00 00       	mov    $0x13,%edi
    1958:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    195f:	00 00 00 
    1962:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1966:	ff d0                	call   *%rax
    1968:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    196f:	00 00 00 
    1972:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1976:	48 89 c2             	mov    %rax,%rdx
    1979:	be 01 00 00 00       	mov    $0x1,%esi
    197e:	bf 14 00 00 00       	mov    $0x14,%edi
    1983:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    198a:	00 00 00 
    198d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1991:	ff d0                	call   *%rax
    1993:	90                   	nop
    1994:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1998:	c9                   	leave  
    1999:	c3                   	ret    
