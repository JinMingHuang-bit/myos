
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
      63:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
      67:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
      6d:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
      71:	44 89 c0             	mov    %r8d,%eax
      74:	66 89 d0             	mov    %dx,%ax
      77:	48 83 e1 07          	and    $0x7,%rcx
      7b:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
      82:	48 c1 e1 20          	shl    $0x20,%rcx
      86:	48 01 c8             	add    %rcx,%rax
      89:	48 31 c9             	xor    %rcx,%rcx
      8c:	89 d1                	mov    %edx,%ecx
      8e:	48 c1 e9 10          	shr    $0x10,%rcx
      92:	48 c1 e1 30          	shl    $0x30,%rcx
      96:	48 01 c8             	add    %rcx,%rax
      99:	48 89 06             	mov    %rax,(%rsi)
      9c:	48 c1 ea 20          	shr    $0x20,%rdx
      a0:	48 89 17             	mov    %rdx,(%rdi)
      a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      a7:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
      ab:	90                   	nop
      ac:	5d                   	pop    %rbp
      ad:	c3                   	ret

00000000000000ae <set_trap_gate>:
      ae:	f3 0f 1e fa          	endbr64
      b2:	55                   	push   %rbp
      b3:	48 89 e5             	mov    %rsp,%rbp
      b6:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # b6 <set_trap_gate+0x8>
      bd:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      c4:	00 00 00 
      c7:	4c 01 d8             	add    %r11,%rax
      ca:	89 7d ec             	mov    %edi,-0x14(%rbp)
      cd:	89 f1                	mov    %esi,%ecx
      cf:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
      d3:	89 ca                	mov    %ecx,%edx
      d5:	88 55 e8             	mov    %dl,-0x18(%rbp)
      d8:	8b 55 ec             	mov    -0x14(%rbp),%edx
      db:	48 89 d1             	mov    %rdx,%rcx
      de:	48 c1 e1 04          	shl    $0x4,%rcx
      e2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
      e9:	00 00 00 
      ec:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
      f0:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
      f4:	8b 55 ec             	mov    -0x14(%rbp),%edx
      f7:	48 c1 e2 04          	shl    $0x4,%rdx
      fb:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
      ff:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     106:	00 00 00 
     109:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     10d:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
     111:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     115:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
     11b:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
     11f:	44 89 c0             	mov    %r8d,%eax
     122:	66 89 d0             	mov    %dx,%ax
     125:	48 83 e1 07          	and    $0x7,%rcx
     129:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
     130:	48 c1 e1 20          	shl    $0x20,%rcx
     134:	48 01 c8             	add    %rcx,%rax
     137:	48 31 c9             	xor    %rcx,%rcx
     13a:	89 d1                	mov    %edx,%ecx
     13c:	48 c1 e9 10          	shr    $0x10,%rcx
     140:	48 c1 e1 30          	shl    $0x30,%rcx
     144:	48 01 c8             	add    %rcx,%rax
     147:	48 89 06             	mov    %rax,(%rsi)
     14a:	48 c1 ea 20          	shr    $0x20,%rdx
     14e:	48 89 17             	mov    %rdx,(%rdi)
     151:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     155:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     159:	90                   	nop
     15a:	5d                   	pop    %rbp
     15b:	c3                   	ret

000000000000015c <set_system_gate>:
     15c:	f3 0f 1e fa          	endbr64
     160:	55                   	push   %rbp
     161:	48 89 e5             	mov    %rsp,%rbp
     164:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 164 <set_system_gate+0x8>
     16b:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     172:	00 00 00 
     175:	4c 01 d8             	add    %r11,%rax
     178:	89 7d ec             	mov    %edi,-0x14(%rbp)
     17b:	89 f1                	mov    %esi,%ecx
     17d:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
     181:	89 ca                	mov    %ecx,%edx
     183:	88 55 e8             	mov    %dl,-0x18(%rbp)
     186:	8b 55 ec             	mov    -0x14(%rbp),%edx
     189:	48 89 d1             	mov    %rdx,%rcx
     18c:	48 c1 e1 04          	shl    $0x4,%rcx
     190:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     197:	00 00 00 
     19a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     19e:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
     1a2:	8b 55 ec             	mov    -0x14(%rbp),%edx
     1a5:	48 c1 e2 04          	shl    $0x4,%rdx
     1a9:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
     1ad:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     1b4:	00 00 00 
     1b7:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     1bb:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
     1bf:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     1c3:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
     1c9:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
     1cd:	44 89 c0             	mov    %r8d,%eax
     1d0:	66 89 d0             	mov    %dx,%ax
     1d3:	48 83 e1 07          	and    $0x7,%rcx
     1d7:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
     1de:	48 c1 e1 20          	shl    $0x20,%rcx
     1e2:	48 01 c8             	add    %rcx,%rax
     1e5:	48 31 c9             	xor    %rcx,%rcx
     1e8:	89 d1                	mov    %edx,%ecx
     1ea:	48 c1 e9 10          	shr    $0x10,%rcx
     1ee:	48 c1 e1 30          	shl    $0x30,%rcx
     1f2:	48 01 c8             	add    %rcx,%rax
     1f5:	48 89 06             	mov    %rax,(%rsi)
     1f8:	48 c1 ea 20          	shr    $0x20,%rdx
     1fc:	48 89 17             	mov    %rdx,(%rdi)
     1ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     203:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
     207:	90                   	nop
     208:	5d                   	pop    %rbp
     209:	c3                   	ret

000000000000020a <set_tss64>:
     20a:	f3 0f 1e fa          	endbr64
     20e:	55                   	push   %rbp
     20f:	48 89 e5             	mov    %rsp,%rbp
     212:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 212 <set_tss64+0x8>
     219:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     220:	00 00 00 
     223:	4c 01 d8             	add    %r11,%rax
     226:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     22a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     22e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     232:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
     236:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
     23a:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
     23e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     245:	00 00 00 
     248:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     24c:	48 8d 52 04          	lea    0x4(%rdx),%rdx
     250:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     254:	48 89 0a             	mov    %rcx,(%rdx)
     257:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     25e:	00 00 00 
     261:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     265:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
     269:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
     26d:	48 89 0a             	mov    %rcx,(%rdx)
     270:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     277:	00 00 00 
     27a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     27e:	48 8d 52 14          	lea    0x14(%rdx),%rdx
     282:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
     286:	48 89 0a             	mov    %rcx,(%rdx)
     289:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     290:	00 00 00 
     293:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     297:	48 8d 52 24          	lea    0x24(%rdx),%rdx
     29b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
     29f:	48 89 0a             	mov    %rcx,(%rdx)
     2a2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2a9:	00 00 00 
     2ac:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2b0:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
     2b4:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
     2b8:	48 89 0a             	mov    %rcx,(%rdx)
     2bb:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2c2:	00 00 00 
     2c5:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2c9:	48 8d 52 34          	lea    0x34(%rdx),%rdx
     2cd:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
     2d1:	48 89 0a             	mov    %rcx,(%rdx)
     2d4:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2db:	00 00 00 
     2de:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2e2:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
     2e6:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
     2ea:	48 89 0a             	mov    %rcx,(%rdx)
     2ed:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2f4:	00 00 00 
     2f7:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     2fb:	48 8d 52 44          	lea    0x44(%rdx),%rdx
     2ff:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
     303:	48 89 0a             	mov    %rcx,(%rdx)
     306:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     30d:	00 00 00 
     310:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
     314:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
     318:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
     31c:	48 89 0a             	mov    %rcx,(%rdx)
     31f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     326:	00 00 00 
     329:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
     32d:	48 8d 40 54          	lea    0x54(%rax),%rax
     331:	48 8b 55 28          	mov    0x28(%rbp),%rdx
     335:	48 89 10             	mov    %rdx,(%rax)
     338:	90                   	nop
     339:	5d                   	pop    %rbp
     33a:	c3                   	ret

000000000000033b <do_divide_error>:
     33b:	f3 0f 1e fa          	endbr64
     33f:	55                   	push   %rbp
     340:	48 89 e5             	mov    %rsp,%rbp
     343:	41 57                	push   %r15
     345:	48 83 ec 28          	sub    $0x28,%rsp
     349:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 349 <do_divide_error+0xe>
     350:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     357:	00 00 00 
     35a:	4d 01 da             	add    %r11,%r10
     35d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     361:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     365:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     36c:	00 
     36d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     371:	48 05 98 00 00 00    	add    $0x98,%rax
     377:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     37b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     37f:	48 8b 08             	mov    (%rax),%rcx
     382:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     386:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     38a:	49 89 c9             	mov    %rcx,%r9
     38d:	49 89 d0             	mov    %rdx,%r8
     390:	48 89 c1             	mov    %rax,%rcx
     393:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     39a:	00 00 00 
     39d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     3a1:	48 89 c2             	mov    %rax,%rdx
     3a4:	be 00 00 00 00       	mov    $0x0,%esi
     3a9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     3ae:	4d 89 d7             	mov    %r10,%r15
     3b1:	b8 00 00 00 00       	mov    $0x0,%eax
     3b6:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     3bd:	00 00 00 
     3c0:	4d 01 d3             	add    %r10,%r11
     3c3:	41 ff d3             	call   *%r11
     3c6:	90                   	nop
     3c7:	eb fd                	jmp    3c6 <do_divide_error+0x8b>

00000000000003c9 <do_debug>:
     3c9:	f3 0f 1e fa          	endbr64
     3cd:	55                   	push   %rbp
     3ce:	48 89 e5             	mov    %rsp,%rbp
     3d1:	41 57                	push   %r15
     3d3:	48 83 ec 28          	sub    $0x28,%rsp
     3d7:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 3d7 <do_debug+0xe>
     3de:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     3e5:	00 00 00 
     3e8:	4d 01 da             	add    %r11,%r10
     3eb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     3ef:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     3f3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     3fa:	00 
     3fb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     3ff:	48 05 98 00 00 00    	add    $0x98,%rax
     405:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     409:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     40d:	48 8b 08             	mov    (%rax),%rcx
     410:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     414:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     418:	49 89 c9             	mov    %rcx,%r9
     41b:	49 89 d0             	mov    %rdx,%r8
     41e:	48 89 c1             	mov    %rax,%rcx
     421:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     428:	00 00 00 
     42b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     42f:	48 89 c2             	mov    %rax,%rdx
     432:	be 00 00 00 00       	mov    $0x0,%esi
     437:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     43c:	4d 89 d7             	mov    %r10,%r15
     43f:	b8 00 00 00 00       	mov    $0x0,%eax
     444:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     44b:	00 00 00 
     44e:	4d 01 d3             	add    %r10,%r11
     451:	41 ff d3             	call   *%r11
     454:	90                   	nop
     455:	eb fd                	jmp    454 <do_debug+0x8b>

0000000000000457 <do_nmi>:
     457:	f3 0f 1e fa          	endbr64
     45b:	55                   	push   %rbp
     45c:	48 89 e5             	mov    %rsp,%rbp
     45f:	41 57                	push   %r15
     461:	48 83 ec 28          	sub    $0x28,%rsp
     465:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 465 <do_nmi+0xe>
     46c:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     473:	00 00 00 
     476:	4d 01 da             	add    %r11,%r10
     479:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     47d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     481:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     488:	00 
     489:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     48d:	48 05 98 00 00 00    	add    $0x98,%rax
     493:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     497:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     49b:	48 8b 08             	mov    (%rax),%rcx
     49e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     4a2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     4a6:	49 89 c9             	mov    %rcx,%r9
     4a9:	49 89 d0             	mov    %rdx,%r8
     4ac:	48 89 c1             	mov    %rax,%rcx
     4af:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4b6:	00 00 00 
     4b9:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     4bd:	48 89 c2             	mov    %rax,%rdx
     4c0:	be 00 00 00 00       	mov    $0x0,%esi
     4c5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     4ca:	4d 89 d7             	mov    %r10,%r15
     4cd:	b8 00 00 00 00       	mov    $0x0,%eax
     4d2:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     4d9:	00 00 00 
     4dc:	4d 01 d3             	add    %r10,%r11
     4df:	41 ff d3             	call   *%r11
     4e2:	90                   	nop
     4e3:	eb fd                	jmp    4e2 <do_nmi+0x8b>

00000000000004e5 <do_int3>:
     4e5:	f3 0f 1e fa          	endbr64
     4e9:	55                   	push   %rbp
     4ea:	48 89 e5             	mov    %rsp,%rbp
     4ed:	41 57                	push   %r15
     4ef:	48 83 ec 28          	sub    $0x28,%rsp
     4f3:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 4f3 <do_int3+0xe>
     4fa:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     501:	00 00 00 
     504:	4d 01 da             	add    %r11,%r10
     507:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     50b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     50f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     516:	00 
     517:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     51b:	48 05 98 00 00 00    	add    $0x98,%rax
     521:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     525:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     529:	48 8b 08             	mov    (%rax),%rcx
     52c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     530:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     534:	49 89 c9             	mov    %rcx,%r9
     537:	49 89 d0             	mov    %rdx,%r8
     53a:	48 89 c1             	mov    %rax,%rcx
     53d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     544:	00 00 00 
     547:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     54b:	48 89 c2             	mov    %rax,%rdx
     54e:	be 00 00 00 00       	mov    $0x0,%esi
     553:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     558:	4d 89 d7             	mov    %r10,%r15
     55b:	b8 00 00 00 00       	mov    $0x0,%eax
     560:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     567:	00 00 00 
     56a:	4d 01 d3             	add    %r10,%r11
     56d:	41 ff d3             	call   *%r11
     570:	90                   	nop
     571:	eb fd                	jmp    570 <do_int3+0x8b>

0000000000000573 <do_overflow>:
     573:	f3 0f 1e fa          	endbr64
     577:	55                   	push   %rbp
     578:	48 89 e5             	mov    %rsp,%rbp
     57b:	41 57                	push   %r15
     57d:	48 83 ec 28          	sub    $0x28,%rsp
     581:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 581 <do_overflow+0xe>
     588:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     58f:	00 00 00 
     592:	4d 01 da             	add    %r11,%r10
     595:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     599:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     59d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     5a4:	00 
     5a5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     5a9:	48 05 98 00 00 00    	add    $0x98,%rax
     5af:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     5b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     5b7:	48 8b 08             	mov    (%rax),%rcx
     5ba:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     5be:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     5c2:	49 89 c9             	mov    %rcx,%r9
     5c5:	49 89 d0             	mov    %rdx,%r8
     5c8:	48 89 c1             	mov    %rax,%rcx
     5cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5d2:	00 00 00 
     5d5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     5d9:	48 89 c2             	mov    %rax,%rdx
     5dc:	be 00 00 00 00       	mov    $0x0,%esi
     5e1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     5e6:	4d 89 d7             	mov    %r10,%r15
     5e9:	b8 00 00 00 00       	mov    $0x0,%eax
     5ee:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     5f5:	00 00 00 
     5f8:	4d 01 d3             	add    %r10,%r11
     5fb:	41 ff d3             	call   *%r11
     5fe:	90                   	nop
     5ff:	eb fd                	jmp    5fe <do_overflow+0x8b>

0000000000000601 <do_bounds>:
     601:	f3 0f 1e fa          	endbr64
     605:	55                   	push   %rbp
     606:	48 89 e5             	mov    %rsp,%rbp
     609:	41 57                	push   %r15
     60b:	48 83 ec 28          	sub    $0x28,%rsp
     60f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 60f <do_bounds+0xe>
     616:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     61d:	00 00 00 
     620:	4d 01 da             	add    %r11,%r10
     623:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     627:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     62b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     632:	00 
     633:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     637:	48 05 98 00 00 00    	add    $0x98,%rax
     63d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     641:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     645:	48 8b 08             	mov    (%rax),%rcx
     648:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     64c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     650:	49 89 c9             	mov    %rcx,%r9
     653:	49 89 d0             	mov    %rdx,%r8
     656:	48 89 c1             	mov    %rax,%rcx
     659:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     660:	00 00 00 
     663:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     667:	48 89 c2             	mov    %rax,%rdx
     66a:	be 00 00 00 00       	mov    $0x0,%esi
     66f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     674:	4d 89 d7             	mov    %r10,%r15
     677:	b8 00 00 00 00       	mov    $0x0,%eax
     67c:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     683:	00 00 00 
     686:	4d 01 d3             	add    %r10,%r11
     689:	41 ff d3             	call   *%r11
     68c:	90                   	nop
     68d:	eb fd                	jmp    68c <do_bounds+0x8b>

000000000000068f <do_undefined_opcode>:
     68f:	f3 0f 1e fa          	endbr64
     693:	55                   	push   %rbp
     694:	48 89 e5             	mov    %rsp,%rbp
     697:	41 57                	push   %r15
     699:	48 83 ec 28          	sub    $0x28,%rsp
     69d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 69d <do_undefined_opcode+0xe>
     6a4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     6ab:	00 00 00 
     6ae:	4d 01 da             	add    %r11,%r10
     6b1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     6b5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     6b9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     6c0:	00 
     6c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     6c5:	48 05 98 00 00 00    	add    $0x98,%rax
     6cb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     6cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     6d3:	48 8b 08             	mov    (%rax),%rcx
     6d6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     6da:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     6de:	49 89 c9             	mov    %rcx,%r9
     6e1:	49 89 d0             	mov    %rdx,%r8
     6e4:	48 89 c1             	mov    %rax,%rcx
     6e7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6ee:	00 00 00 
     6f1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     6f5:	48 89 c2             	mov    %rax,%rdx
     6f8:	be 00 00 00 00       	mov    $0x0,%esi
     6fd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     702:	4d 89 d7             	mov    %r10,%r15
     705:	b8 00 00 00 00       	mov    $0x0,%eax
     70a:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     711:	00 00 00 
     714:	4d 01 d3             	add    %r10,%r11
     717:	41 ff d3             	call   *%r11
     71a:	90                   	nop
     71b:	eb fd                	jmp    71a <do_undefined_opcode+0x8b>

000000000000071d <do_dev_not_available>:
     71d:	f3 0f 1e fa          	endbr64
     721:	55                   	push   %rbp
     722:	48 89 e5             	mov    %rsp,%rbp
     725:	41 57                	push   %r15
     727:	48 83 ec 28          	sub    $0x28,%rsp
     72b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 72b <do_dev_not_available+0xe>
     732:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     739:	00 00 00 
     73c:	4d 01 da             	add    %r11,%r10
     73f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     743:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     747:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     74e:	00 
     74f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     753:	48 05 98 00 00 00    	add    $0x98,%rax
     759:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     75d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     761:	48 8b 08             	mov    (%rax),%rcx
     764:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     768:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     76c:	49 89 c9             	mov    %rcx,%r9
     76f:	49 89 d0             	mov    %rdx,%r8
     772:	48 89 c1             	mov    %rax,%rcx
     775:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     77c:	00 00 00 
     77f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     783:	48 89 c2             	mov    %rax,%rdx
     786:	be 00 00 00 00       	mov    $0x0,%esi
     78b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     790:	4d 89 d7             	mov    %r10,%r15
     793:	b8 00 00 00 00       	mov    $0x0,%eax
     798:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     79f:	00 00 00 
     7a2:	4d 01 d3             	add    %r10,%r11
     7a5:	41 ff d3             	call   *%r11
     7a8:	90                   	nop
     7a9:	eb fd                	jmp    7a8 <do_dev_not_available+0x8b>

00000000000007ab <do_double_fault>:
     7ab:	f3 0f 1e fa          	endbr64
     7af:	55                   	push   %rbp
     7b0:	48 89 e5             	mov    %rsp,%rbp
     7b3:	41 57                	push   %r15
     7b5:	48 83 ec 28          	sub    $0x28,%rsp
     7b9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 7b9 <do_double_fault+0xe>
     7c0:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     7c7:	00 00 00 
     7ca:	4d 01 da             	add    %r11,%r10
     7cd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     7d1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     7d5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     7dc:	00 
     7dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     7e1:	48 05 98 00 00 00    	add    $0x98,%rax
     7e7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     7eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     7ef:	48 8b 08             	mov    (%rax),%rcx
     7f2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     7f6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     7fa:	49 89 c9             	mov    %rcx,%r9
     7fd:	49 89 d0             	mov    %rdx,%r8
     800:	48 89 c1             	mov    %rax,%rcx
     803:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     80a:	00 00 00 
     80d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
     811:	48 89 c2             	mov    %rax,%rdx
     814:	be 00 00 00 00       	mov    $0x0,%esi
     819:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     81e:	4d 89 d7             	mov    %r10,%r15
     821:	b8 00 00 00 00       	mov    $0x0,%eax
     826:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     82d:	00 00 00 
     830:	4d 01 d3             	add    %r10,%r11
     833:	41 ff d3             	call   *%r11
     836:	90                   	nop
     837:	eb fd                	jmp    836 <do_double_fault+0x8b>

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
     8c4:	90                   	nop
     8c5:	eb fd                	jmp    8c4 <do_coprocessor_segment_overrun+0x8b>

00000000000008c7 <do_invalid_TSS>:
     8c7:	f3 0f 1e fa          	endbr64
     8cb:	55                   	push   %rbp
     8cc:	48 89 e5             	mov    %rsp,%rbp
     8cf:	41 57                	push   %r15
     8d1:	53                   	push   %rbx
     8d2:	48 83 ec 20          	sub    $0x20,%rsp
     8d6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 8d6 <do_invalid_TSS+0xf>
     8dd:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     8e4:	00 00 00 
     8e7:	4c 01 db             	add    %r11,%rbx
     8ea:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     8ee:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     8f2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     8f9:	00 
     8fa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     8fe:	48 05 98 00 00 00    	add    $0x98,%rax
     904:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     908:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     90c:	48 8b 08             	mov    (%rax),%rcx
     90f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     913:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     917:	49 89 c9             	mov    %rcx,%r9
     91a:	49 89 d0             	mov    %rdx,%r8
     91d:	48 89 c1             	mov    %rax,%rcx
     920:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     927:	00 00 00 
     92a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     92e:	48 89 c2             	mov    %rax,%rdx
     931:	be 00 00 00 00       	mov    $0x0,%esi
     936:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     93b:	49 89 df             	mov    %rbx,%r15
     93e:	b8 00 00 00 00       	mov    $0x0,%eax
     943:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     94a:	00 00 00 
     94d:	49 01 da             	add    %rbx,%r10
     950:	41 ff d2             	call   *%r10
     953:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     957:	83 e0 01             	and    $0x1,%eax
     95a:	48 85 c0             	test   %rax,%rax
     95d:	74 32                	je     991 <do_invalid_TSS+0xca>
     95f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     966:	00 00 00 
     969:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     96d:	48 89 c2             	mov    %rax,%rdx
     970:	be 00 00 00 00       	mov    $0x0,%esi
     975:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     97a:	49 89 df             	mov    %rbx,%r15
     97d:	b8 00 00 00 00       	mov    $0x0,%eax
     982:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     989:	00 00 00 
     98c:	48 01 d9             	add    %rbx,%rcx
     98f:	ff d1                	call   *%rcx
     991:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     995:	83 e0 02             	and    $0x2,%eax
     998:	48 85 c0             	test   %rax,%rax
     99b:	74 34                	je     9d1 <do_invalid_TSS+0x10a>
     99d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a4:	00 00 00 
     9a7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     9ab:	48 89 c2             	mov    %rax,%rdx
     9ae:	be 00 00 00 00       	mov    $0x0,%esi
     9b3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     9b8:	49 89 df             	mov    %rbx,%r15
     9bb:	b8 00 00 00 00       	mov    $0x0,%eax
     9c0:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     9c7:	00 00 00 
     9ca:	48 01 d9             	add    %rbx,%rcx
     9cd:	ff d1                	call   *%rcx
     9cf:	eb 32                	jmp    a03 <do_invalid_TSS+0x13c>
     9d1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9d8:	00 00 00 
     9db:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     9df:	48 89 c2             	mov    %rax,%rdx
     9e2:	be 00 00 00 00       	mov    $0x0,%esi
     9e7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     9ec:	49 89 df             	mov    %rbx,%r15
     9ef:	b8 00 00 00 00       	mov    $0x0,%eax
     9f4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     9fb:	00 00 00 
     9fe:	48 01 d9             	add    %rbx,%rcx
     a01:	ff d1                	call   *%rcx
     a03:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a07:	83 e0 02             	and    $0x2,%eax
     a0a:	48 85 c0             	test   %rax,%rax
     a0d:	75 72                	jne    a81 <do_invalid_TSS+0x1ba>
     a0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a13:	83 e0 04             	and    $0x4,%eax
     a16:	48 85 c0             	test   %rax,%rax
     a19:	74 34                	je     a4f <do_invalid_TSS+0x188>
     a1b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a22:	00 00 00 
     a25:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a29:	48 89 c2             	mov    %rax,%rdx
     a2c:	be 00 00 00 00       	mov    $0x0,%esi
     a31:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     a36:	49 89 df             	mov    %rbx,%r15
     a39:	b8 00 00 00 00       	mov    $0x0,%eax
     a3e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a45:	00 00 00 
     a48:	48 01 d9             	add    %rbx,%rcx
     a4b:	ff d1                	call   *%rcx
     a4d:	eb 32                	jmp    a81 <do_invalid_TSS+0x1ba>
     a4f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a56:	00 00 00 
     a59:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a5d:	48 89 c2             	mov    %rax,%rdx
     a60:	be 00 00 00 00       	mov    $0x0,%esi
     a65:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     a6a:	49 89 df             	mov    %rbx,%r15
     a6d:	b8 00 00 00 00       	mov    $0x0,%eax
     a72:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     a79:	00 00 00 
     a7c:	48 01 d9             	add    %rbx,%rcx
     a7f:	ff d1                	call   *%rcx
     a81:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     a85:	25 f8 ff 00 00       	and    $0xfff8,%eax
     a8a:	48 89 c1             	mov    %rax,%rcx
     a8d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a94:	00 00 00 
     a97:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     a9b:	48 89 c2             	mov    %rax,%rdx
     a9e:	be 00 00 00 00       	mov    $0x0,%esi
     aa3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     aa8:	49 89 df             	mov    %rbx,%r15
     aab:	b8 00 00 00 00       	mov    $0x0,%eax
     ab0:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     ab7:	00 00 00 
     aba:	49 01 d8             	add    %rbx,%r8
     abd:	41 ff d0             	call   *%r8
     ac0:	90                   	nop
     ac1:	eb fd                	jmp    ac0 <do_invalid_TSS+0x1f9>

0000000000000ac3 <do_segment_not_present>:
     ac3:	f3 0f 1e fa          	endbr64
     ac7:	55                   	push   %rbp
     ac8:	48 89 e5             	mov    %rsp,%rbp
     acb:	41 57                	push   %r15
     acd:	53                   	push   %rbx
     ace:	48 83 ec 20          	sub    $0x20,%rsp
     ad2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ad2 <do_segment_not_present+0xf>
     ad9:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     ae0:	00 00 00 
     ae3:	4c 01 db             	add    %r11,%rbx
     ae6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     aea:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     aee:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     af5:	00 
     af6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     afa:	48 05 98 00 00 00    	add    $0x98,%rax
     b00:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     b04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     b08:	48 8b 08             	mov    (%rax),%rcx
     b0b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     b0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b13:	49 89 c9             	mov    %rcx,%r9
     b16:	49 89 d0             	mov    %rdx,%r8
     b19:	48 89 c1             	mov    %rax,%rcx
     b1c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b23:	00 00 00 
     b26:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     b2a:	48 89 c2             	mov    %rax,%rdx
     b2d:	be 00 00 00 00       	mov    $0x0,%esi
     b32:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     b37:	49 89 df             	mov    %rbx,%r15
     b3a:	b8 00 00 00 00       	mov    $0x0,%eax
     b3f:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     b46:	00 00 00 
     b49:	49 01 da             	add    %rbx,%r10
     b4c:	41 ff d2             	call   *%r10
     b4f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b53:	83 e0 01             	and    $0x1,%eax
     b56:	48 85 c0             	test   %rax,%rax
     b59:	74 32                	je     b8d <do_segment_not_present+0xca>
     b5b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b62:	00 00 00 
     b65:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     b69:	48 89 c2             	mov    %rax,%rdx
     b6c:	be 00 00 00 00       	mov    $0x0,%esi
     b71:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     b76:	49 89 df             	mov    %rbx,%r15
     b79:	b8 00 00 00 00       	mov    $0x0,%eax
     b7e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     b85:	00 00 00 
     b88:	48 01 d9             	add    %rbx,%rcx
     b8b:	ff d1                	call   *%rcx
     b8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     b91:	83 e0 02             	and    $0x2,%eax
     b94:	48 85 c0             	test   %rax,%rax
     b97:	74 34                	je     bcd <do_segment_not_present+0x10a>
     b99:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ba0:	00 00 00 
     ba3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ba7:	48 89 c2             	mov    %rax,%rdx
     baa:	be 00 00 00 00       	mov    $0x0,%esi
     baf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     bb4:	49 89 df             	mov    %rbx,%r15
     bb7:	b8 00 00 00 00       	mov    $0x0,%eax
     bbc:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     bc3:	00 00 00 
     bc6:	48 01 d9             	add    %rbx,%rcx
     bc9:	ff d1                	call   *%rcx
     bcb:	eb 32                	jmp    bff <do_segment_not_present+0x13c>
     bcd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bd4:	00 00 00 
     bd7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     bdb:	48 89 c2             	mov    %rax,%rdx
     bde:	be 00 00 00 00       	mov    $0x0,%esi
     be3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     be8:	49 89 df             	mov    %rbx,%r15
     beb:	b8 00 00 00 00       	mov    $0x0,%eax
     bf0:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     bf7:	00 00 00 
     bfa:	48 01 d9             	add    %rbx,%rcx
     bfd:	ff d1                	call   *%rcx
     bff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c03:	83 e0 02             	and    $0x2,%eax
     c06:	48 85 c0             	test   %rax,%rax
     c09:	75 72                	jne    c7d <do_segment_not_present+0x1ba>
     c0b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c0f:	83 e0 04             	and    $0x4,%eax
     c12:	48 85 c0             	test   %rax,%rax
     c15:	74 34                	je     c4b <do_segment_not_present+0x188>
     c17:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c1e:	00 00 00 
     c21:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c25:	48 89 c2             	mov    %rax,%rdx
     c28:	be 00 00 00 00       	mov    $0x0,%esi
     c2d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     c32:	49 89 df             	mov    %rbx,%r15
     c35:	b8 00 00 00 00       	mov    $0x0,%eax
     c3a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     c41:	00 00 00 
     c44:	48 01 d9             	add    %rbx,%rcx
     c47:	ff d1                	call   *%rcx
     c49:	eb 32                	jmp    c7d <do_segment_not_present+0x1ba>
     c4b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c52:	00 00 00 
     c55:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c59:	48 89 c2             	mov    %rax,%rdx
     c5c:	be 00 00 00 00       	mov    $0x0,%esi
     c61:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     c66:	49 89 df             	mov    %rbx,%r15
     c69:	b8 00 00 00 00       	mov    $0x0,%eax
     c6e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     c75:	00 00 00 
     c78:	48 01 d9             	add    %rbx,%rcx
     c7b:	ff d1                	call   *%rcx
     c7d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     c81:	25 f8 ff 00 00       	and    $0xfff8,%eax
     c86:	48 89 c1             	mov    %rax,%rcx
     c89:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c90:	00 00 00 
     c93:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c97:	48 89 c2             	mov    %rax,%rdx
     c9a:	be 00 00 00 00       	mov    $0x0,%esi
     c9f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     ca4:	49 89 df             	mov    %rbx,%r15
     ca7:	b8 00 00 00 00       	mov    $0x0,%eax
     cac:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     cb3:	00 00 00 
     cb6:	49 01 d8             	add    %rbx,%r8
     cb9:	41 ff d0             	call   *%r8
     cbc:	90                   	nop
     cbd:	eb fd                	jmp    cbc <do_segment_not_present+0x1f9>

0000000000000cbf <do_stack_segment_fault>:
     cbf:	f3 0f 1e fa          	endbr64
     cc3:	55                   	push   %rbp
     cc4:	48 89 e5             	mov    %rsp,%rbp
     cc7:	41 57                	push   %r15
     cc9:	53                   	push   %rbx
     cca:	48 83 ec 20          	sub    $0x20,%rsp
     cce:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # cce <do_stack_segment_fault+0xf>
     cd5:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     cdc:	00 00 00 
     cdf:	4c 01 db             	add    %r11,%rbx
     ce2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ce6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     cea:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     cf1:	00 
     cf2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     cf6:	48 05 98 00 00 00    	add    $0x98,%rax
     cfc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     d00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     d04:	48 8b 08             	mov    (%rax),%rcx
     d07:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     d0b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d0f:	49 89 c9             	mov    %rcx,%r9
     d12:	49 89 d0             	mov    %rdx,%r8
     d15:	48 89 c1             	mov    %rax,%rcx
     d18:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d1f:	00 00 00 
     d22:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d26:	48 89 c2             	mov    %rax,%rdx
     d29:	be 00 00 00 00       	mov    $0x0,%esi
     d2e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     d33:	49 89 df             	mov    %rbx,%r15
     d36:	b8 00 00 00 00       	mov    $0x0,%eax
     d3b:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     d42:	00 00 00 
     d45:	49 01 da             	add    %rbx,%r10
     d48:	41 ff d2             	call   *%r10
     d4b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d4f:	83 e0 01             	and    $0x1,%eax
     d52:	48 85 c0             	test   %rax,%rax
     d55:	74 32                	je     d89 <do_stack_segment_fault+0xca>
     d57:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d5e:	00 00 00 
     d61:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d65:	48 89 c2             	mov    %rax,%rdx
     d68:	be 00 00 00 00       	mov    $0x0,%esi
     d6d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     d72:	49 89 df             	mov    %rbx,%r15
     d75:	b8 00 00 00 00       	mov    $0x0,%eax
     d7a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     d81:	00 00 00 
     d84:	48 01 d9             	add    %rbx,%rcx
     d87:	ff d1                	call   *%rcx
     d89:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     d8d:	83 e0 02             	and    $0x2,%eax
     d90:	48 85 c0             	test   %rax,%rax
     d93:	74 34                	je     dc9 <do_stack_segment_fault+0x10a>
     d95:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d9c:	00 00 00 
     d9f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     da3:	48 89 c2             	mov    %rax,%rdx
     da6:	be 00 00 00 00       	mov    $0x0,%esi
     dab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     db0:	49 89 df             	mov    %rbx,%r15
     db3:	b8 00 00 00 00       	mov    $0x0,%eax
     db8:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     dbf:	00 00 00 
     dc2:	48 01 d9             	add    %rbx,%rcx
     dc5:	ff d1                	call   *%rcx
     dc7:	eb 32                	jmp    dfb <do_stack_segment_fault+0x13c>
     dc9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     dd0:	00 00 00 
     dd3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     dd7:	48 89 c2             	mov    %rax,%rdx
     dda:	be 00 00 00 00       	mov    $0x0,%esi
     ddf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     de4:	49 89 df             	mov    %rbx,%r15
     de7:	b8 00 00 00 00       	mov    $0x0,%eax
     dec:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     df3:	00 00 00 
     df6:	48 01 d9             	add    %rbx,%rcx
     df9:	ff d1                	call   *%rcx
     dfb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     dff:	83 e0 02             	and    $0x2,%eax
     e02:	48 85 c0             	test   %rax,%rax
     e05:	75 72                	jne    e79 <do_stack_segment_fault+0x1ba>
     e07:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e0b:	83 e0 04             	and    $0x4,%eax
     e0e:	48 85 c0             	test   %rax,%rax
     e11:	74 34                	je     e47 <do_stack_segment_fault+0x188>
     e13:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e1a:	00 00 00 
     e1d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e21:	48 89 c2             	mov    %rax,%rdx
     e24:	be 00 00 00 00       	mov    $0x0,%esi
     e29:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     e2e:	49 89 df             	mov    %rbx,%r15
     e31:	b8 00 00 00 00       	mov    $0x0,%eax
     e36:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     e3d:	00 00 00 
     e40:	48 01 d9             	add    %rbx,%rcx
     e43:	ff d1                	call   *%rcx
     e45:	eb 32                	jmp    e79 <do_stack_segment_fault+0x1ba>
     e47:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e4e:	00 00 00 
     e51:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e55:	48 89 c2             	mov    %rax,%rdx
     e58:	be 00 00 00 00       	mov    $0x0,%esi
     e5d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     e62:	49 89 df             	mov    %rbx,%r15
     e65:	b8 00 00 00 00       	mov    $0x0,%eax
     e6a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     e71:	00 00 00 
     e74:	48 01 d9             	add    %rbx,%rcx
     e77:	ff d1                	call   *%rcx
     e79:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     e7d:	25 f8 ff 00 00       	and    $0xfff8,%eax
     e82:	48 89 c1             	mov    %rax,%rcx
     e85:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e8c:	00 00 00 
     e8f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     e93:	48 89 c2             	mov    %rax,%rdx
     e96:	be 00 00 00 00       	mov    $0x0,%esi
     e9b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     ea0:	49 89 df             	mov    %rbx,%r15
     ea3:	b8 00 00 00 00       	mov    $0x0,%eax
     ea8:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     eaf:	00 00 00 
     eb2:	49 01 d8             	add    %rbx,%r8
     eb5:	41 ff d0             	call   *%r8
     eb8:	90                   	nop
     eb9:	eb fd                	jmp    eb8 <do_stack_segment_fault+0x1f9>

0000000000000ebb <do_general_protection>:
     ebb:	f3 0f 1e fa          	endbr64
     ebf:	55                   	push   %rbp
     ec0:	48 89 e5             	mov    %rsp,%rbp
     ec3:	41 57                	push   %r15
     ec5:	53                   	push   %rbx
     ec6:	48 83 ec 20          	sub    $0x20,%rsp
     eca:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # eca <do_general_protection+0xf>
     ed1:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     ed8:	00 00 00 
     edb:	4c 01 db             	add    %r11,%rbx
     ede:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
     ee2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
     ee6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
     eed:	00 
     eee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     ef2:	48 05 98 00 00 00    	add    $0x98,%rax
     ef8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
     efc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     f00:	48 8b 08             	mov    (%rax),%rcx
     f03:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
     f07:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f0b:	49 89 c9             	mov    %rcx,%r9
     f0e:	49 89 d0             	mov    %rdx,%r8
     f11:	48 89 c1             	mov    %rax,%rcx
     f14:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f1b:	00 00 00 
     f1e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f22:	48 89 c2             	mov    %rax,%rdx
     f25:	be 00 00 00 00       	mov    $0x0,%esi
     f2a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     f2f:	49 89 df             	mov    %rbx,%r15
     f32:	b8 00 00 00 00       	mov    $0x0,%eax
     f37:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     f3e:	00 00 00 
     f41:	49 01 da             	add    %rbx,%r10
     f44:	41 ff d2             	call   *%r10
     f47:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f4b:	83 e0 01             	and    $0x1,%eax
     f4e:	48 85 c0             	test   %rax,%rax
     f51:	74 32                	je     f85 <do_general_protection+0xca>
     f53:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f5a:	00 00 00 
     f5d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f61:	48 89 c2             	mov    %rax,%rdx
     f64:	be 00 00 00 00       	mov    $0x0,%esi
     f69:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     f6e:	49 89 df             	mov    %rbx,%r15
     f71:	b8 00 00 00 00       	mov    $0x0,%eax
     f76:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     f7d:	00 00 00 
     f80:	48 01 d9             	add    %rbx,%rcx
     f83:	ff d1                	call   *%rcx
     f85:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     f89:	83 e0 02             	and    $0x2,%eax
     f8c:	48 85 c0             	test   %rax,%rax
     f8f:	74 34                	je     fc5 <do_general_protection+0x10a>
     f91:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f98:	00 00 00 
     f9b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f9f:	48 89 c2             	mov    %rax,%rdx
     fa2:	be 00 00 00 00       	mov    $0x0,%esi
     fa7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     fac:	49 89 df             	mov    %rbx,%r15
     faf:	b8 00 00 00 00       	mov    $0x0,%eax
     fb4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     fbb:	00 00 00 
     fbe:	48 01 d9             	add    %rbx,%rcx
     fc1:	ff d1                	call   *%rcx
     fc3:	eb 32                	jmp    ff7 <do_general_protection+0x13c>
     fc5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     fcc:	00 00 00 
     fcf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     fd3:	48 89 c2             	mov    %rax,%rdx
     fd6:	be 00 00 00 00       	mov    $0x0,%esi
     fdb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
     fe0:	49 89 df             	mov    %rbx,%r15
     fe3:	b8 00 00 00 00       	mov    $0x0,%eax
     fe8:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     fef:	00 00 00 
     ff2:	48 01 d9             	add    %rbx,%rcx
     ff5:	ff d1                	call   *%rcx
     ff7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
     ffb:	83 e0 02             	and    $0x2,%eax
     ffe:	48 85 c0             	test   %rax,%rax
    1001:	75 72                	jne    1075 <do_general_protection+0x1ba>
    1003:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1007:	83 e0 04             	and    $0x4,%eax
    100a:	48 85 c0             	test   %rax,%rax
    100d:	74 34                	je     1043 <do_general_protection+0x188>
    100f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1016:	00 00 00 
    1019:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    101d:	48 89 c2             	mov    %rax,%rdx
    1020:	be 00 00 00 00       	mov    $0x0,%esi
    1025:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    102a:	49 89 df             	mov    %rbx,%r15
    102d:	b8 00 00 00 00       	mov    $0x0,%eax
    1032:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1039:	00 00 00 
    103c:	48 01 d9             	add    %rbx,%rcx
    103f:	ff d1                	call   *%rcx
    1041:	eb 32                	jmp    1075 <do_general_protection+0x1ba>
    1043:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    104a:	00 00 00 
    104d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1051:	48 89 c2             	mov    %rax,%rdx
    1054:	be 00 00 00 00       	mov    $0x0,%esi
    1059:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    105e:	49 89 df             	mov    %rbx,%r15
    1061:	b8 00 00 00 00       	mov    $0x0,%eax
    1066:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    106d:	00 00 00 
    1070:	48 01 d9             	add    %rbx,%rcx
    1073:	ff d1                	call   *%rcx
    1075:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1079:	25 f8 ff 00 00       	and    $0xfff8,%eax
    107e:	48 89 c1             	mov    %rax,%rcx
    1081:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1088:	00 00 00 
    108b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    108f:	48 89 c2             	mov    %rax,%rdx
    1092:	be 00 00 00 00       	mov    $0x0,%esi
    1097:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    109c:	49 89 df             	mov    %rbx,%r15
    109f:	b8 00 00 00 00       	mov    $0x0,%eax
    10a4:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    10ab:	00 00 00 
    10ae:	49 01 d8             	add    %rbx,%r8
    10b1:	41 ff d0             	call   *%r8
    10b4:	90                   	nop
    10b5:	eb fd                	jmp    10b4 <do_general_protection+0x1f9>

00000000000010b7 <do_page_fault>:
    10b7:	f3 0f 1e fa          	endbr64
    10bb:	55                   	push   %rbp
    10bc:	48 89 e5             	mov    %rsp,%rbp
    10bf:	41 57                	push   %r15
    10c1:	53                   	push   %rbx
    10c2:	48 83 ec 20          	sub    $0x20,%rsp
    10c6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 10c6 <do_page_fault+0xf>
    10cd:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    10d4:	00 00 00 
    10d7:	4c 01 db             	add    %r11,%rbx
    10da:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    10de:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    10e2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    10e9:	00 
    10ea:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    10f1:	00 
    10f2:	0f 20 d0             	mov    %cr2,%rax
    10f5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    10f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    10fd:	48 05 98 00 00 00    	add    $0x98,%rax
    1103:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1107:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    110b:	48 8b 08             	mov    (%rax),%rcx
    110e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1112:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1116:	49 89 c9             	mov    %rcx,%r9
    1119:	49 89 d0             	mov    %rdx,%r8
    111c:	48 89 c1             	mov    %rax,%rcx
    111f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1126:	00 00 00 
    1129:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    112d:	48 89 c2             	mov    %rax,%rdx
    1130:	be 00 00 00 00       	mov    $0x0,%esi
    1135:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    113a:	49 89 df             	mov    %rbx,%r15
    113d:	b8 00 00 00 00       	mov    $0x0,%eax
    1142:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
    1149:	00 00 00 
    114c:	49 01 da             	add    %rbx,%r10
    114f:	41 ff d2             	call   *%r10
    1152:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1156:	83 e0 01             	and    $0x1,%eax
    1159:	48 85 c0             	test   %rax,%rax
    115c:	75 32                	jne    1190 <do_page_fault+0xd9>
    115e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1165:	00 00 00 
    1168:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    116c:	48 89 c2             	mov    %rax,%rdx
    116f:	be 00 00 00 00       	mov    $0x0,%esi
    1174:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1179:	49 89 df             	mov    %rbx,%r15
    117c:	b8 00 00 00 00       	mov    $0x0,%eax
    1181:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1188:	00 00 00 
    118b:	48 01 d9             	add    %rbx,%rcx
    118e:	ff d1                	call   *%rcx
    1190:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1194:	83 e0 02             	and    $0x2,%eax
    1197:	48 85 c0             	test   %rax,%rax
    119a:	74 34                	je     11d0 <do_page_fault+0x119>
    119c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11a3:	00 00 00 
    11a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11aa:	48 89 c2             	mov    %rax,%rdx
    11ad:	be 00 00 00 00       	mov    $0x0,%esi
    11b2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    11b7:	49 89 df             	mov    %rbx,%r15
    11ba:	b8 00 00 00 00       	mov    $0x0,%eax
    11bf:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    11c6:	00 00 00 
    11c9:	48 01 d9             	add    %rbx,%rcx
    11cc:	ff d1                	call   *%rcx
    11ce:	eb 32                	jmp    1202 <do_page_fault+0x14b>
    11d0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    11d7:	00 00 00 
    11da:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    11de:	48 89 c2             	mov    %rax,%rdx
    11e1:	be 00 00 00 00       	mov    $0x0,%esi
    11e6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    11eb:	49 89 df             	mov    %rbx,%r15
    11ee:	b8 00 00 00 00       	mov    $0x0,%eax
    11f3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    11fa:	00 00 00 
    11fd:	48 01 d9             	add    %rbx,%rcx
    1200:	ff d1                	call   *%rcx
    1202:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1206:	83 e0 04             	and    $0x4,%eax
    1209:	48 85 c0             	test   %rax,%rax
    120c:	74 34                	je     1242 <do_page_fault+0x18b>
    120e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1215:	00 00 00 
    1218:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    121c:	48 89 c2             	mov    %rax,%rdx
    121f:	be 00 00 00 00       	mov    $0x0,%esi
    1224:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1229:	49 89 df             	mov    %rbx,%r15
    122c:	b8 00 00 00 00       	mov    $0x0,%eax
    1231:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    1238:	00 00 00 
    123b:	48 01 d9             	add    %rbx,%rcx
    123e:	ff d1                	call   *%rcx
    1240:	eb 32                	jmp    1274 <do_page_fault+0x1bd>
    1242:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1249:	00 00 00 
    124c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1250:	48 89 c2             	mov    %rax,%rdx
    1253:	be 00 00 00 00       	mov    $0x0,%esi
    1258:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    125d:	49 89 df             	mov    %rbx,%r15
    1260:	b8 00 00 00 00       	mov    $0x0,%eax
    1265:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    126c:	00 00 00 
    126f:	48 01 d9             	add    %rbx,%rcx
    1272:	ff d1                	call   *%rcx
    1274:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1278:	83 e0 08             	and    $0x8,%eax
    127b:	48 85 c0             	test   %rax,%rax
    127e:	74 32                	je     12b2 <do_page_fault+0x1fb>
    1280:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1287:	00 00 00 
    128a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    128e:	48 89 c2             	mov    %rax,%rdx
    1291:	be 00 00 00 00       	mov    $0x0,%esi
    1296:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    129b:	49 89 df             	mov    %rbx,%r15
    129e:	b8 00 00 00 00       	mov    $0x0,%eax
    12a3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    12aa:	00 00 00 
    12ad:	48 01 d9             	add    %rbx,%rcx
    12b0:	ff d1                	call   *%rcx
    12b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12b6:	83 e0 10             	and    $0x10,%eax
    12b9:	48 85 c0             	test   %rax,%rax
    12bc:	74 32                	je     12f0 <do_page_fault+0x239>
    12be:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12c5:	00 00 00 
    12c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12cc:	48 89 c2             	mov    %rax,%rdx
    12cf:	be 00 00 00 00       	mov    $0x0,%esi
    12d4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    12d9:	49 89 df             	mov    %rbx,%r15
    12dc:	b8 00 00 00 00       	mov    $0x0,%eax
    12e1:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    12e8:	00 00 00 
    12eb:	48 01 d9             	add    %rbx,%rcx
    12ee:	ff d1                	call   *%rcx
    12f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    12f7:	00 00 00 
    12fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    12fe:	48 89 c2             	mov    %rax,%rdx
    1301:	be 00 00 00 00       	mov    $0x0,%esi
    1306:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    130b:	49 89 df             	mov    %rbx,%r15
    130e:	b8 00 00 00 00       	mov    $0x0,%eax
    1313:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
    131a:	00 00 00 
    131d:	48 01 d9             	add    %rbx,%rcx
    1320:	ff d1                	call   *%rcx
    1322:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1326:	48 89 c1             	mov    %rax,%rcx
    1329:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1330:	00 00 00 
    1333:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1337:	48 89 c2             	mov    %rax,%rdx
    133a:	be 00 00 00 00       	mov    $0x0,%esi
    133f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1344:	49 89 df             	mov    %rbx,%r15
    1347:	b8 00 00 00 00       	mov    $0x0,%eax
    134c:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1353:	00 00 00 
    1356:	49 01 d8             	add    %rbx,%r8
    1359:	41 ff d0             	call   *%r8
    135c:	90                   	nop
    135d:	eb fd                	jmp    135c <do_page_fault+0x2a5>

000000000000135f <do_x87_FPU_error>:
    135f:	f3 0f 1e fa          	endbr64
    1363:	55                   	push   %rbp
    1364:	48 89 e5             	mov    %rsp,%rbp
    1367:	41 57                	push   %r15
    1369:	48 83 ec 28          	sub    $0x28,%rsp
    136d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 136d <do_x87_FPU_error+0xe>
    1374:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    137b:	00 00 00 
    137e:	4d 01 da             	add    %r11,%r10
    1381:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1385:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1389:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1390:	00 
    1391:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1395:	48 05 98 00 00 00    	add    $0x98,%rax
    139b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    139f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    13a3:	48 8b 08             	mov    (%rax),%rcx
    13a6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    13aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    13ae:	49 89 c9             	mov    %rcx,%r9
    13b1:	49 89 d0             	mov    %rdx,%r8
    13b4:	48 89 c1             	mov    %rax,%rcx
    13b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    13be:	00 00 00 
    13c1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    13c5:	48 89 c2             	mov    %rax,%rdx
    13c8:	be 00 00 00 00       	mov    $0x0,%esi
    13cd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    13d2:	4d 89 d7             	mov    %r10,%r15
    13d5:	b8 00 00 00 00       	mov    $0x0,%eax
    13da:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    13e1:	00 00 00 
    13e4:	4d 01 d3             	add    %r10,%r11
    13e7:	41 ff d3             	call   *%r11
    13ea:	90                   	nop
    13eb:	eb fd                	jmp    13ea <do_x87_FPU_error+0x8b>

00000000000013ed <do_alignment_check>:
    13ed:	f3 0f 1e fa          	endbr64
    13f1:	55                   	push   %rbp
    13f2:	48 89 e5             	mov    %rsp,%rbp
    13f5:	41 57                	push   %r15
    13f7:	48 83 ec 28          	sub    $0x28,%rsp
    13fb:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 13fb <do_alignment_check+0xe>
    1402:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1409:	00 00 00 
    140c:	4d 01 da             	add    %r11,%r10
    140f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1413:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1417:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    141e:	00 
    141f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1423:	48 05 98 00 00 00    	add    $0x98,%rax
    1429:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    142d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1431:	48 8b 08             	mov    (%rax),%rcx
    1434:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1438:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    143c:	49 89 c9             	mov    %rcx,%r9
    143f:	49 89 d0             	mov    %rdx,%r8
    1442:	48 89 c1             	mov    %rax,%rcx
    1445:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    144c:	00 00 00 
    144f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    1453:	48 89 c2             	mov    %rax,%rdx
    1456:	be 00 00 00 00       	mov    $0x0,%esi
    145b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    1460:	4d 89 d7             	mov    %r10,%r15
    1463:	b8 00 00 00 00       	mov    $0x0,%eax
    1468:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    146f:	00 00 00 
    1472:	4d 01 d3             	add    %r10,%r11
    1475:	41 ff d3             	call   *%r11
    1478:	90                   	nop
    1479:	eb fd                	jmp    1478 <do_alignment_check+0x8b>

000000000000147b <do_machine_check>:
    147b:	f3 0f 1e fa          	endbr64
    147f:	55                   	push   %rbp
    1480:	48 89 e5             	mov    %rsp,%rbp
    1483:	41 57                	push   %r15
    1485:	48 83 ec 28          	sub    $0x28,%rsp
    1489:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 1489 <do_machine_check+0xe>
    1490:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1497:	00 00 00 
    149a:	4d 01 da             	add    %r11,%r10
    149d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    14a1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    14a5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    14ac:	00 
    14ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    14b1:	48 05 98 00 00 00    	add    $0x98,%rax
    14b7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    14bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    14bf:	48 8b 08             	mov    (%rax),%rcx
    14c2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    14c6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14ca:	49 89 c9             	mov    %rcx,%r9
    14cd:	49 89 d0             	mov    %rdx,%r8
    14d0:	48 89 c1             	mov    %rax,%rcx
    14d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    14da:	00 00 00 
    14dd:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    14e1:	48 89 c2             	mov    %rax,%rdx
    14e4:	be 00 00 00 00       	mov    $0x0,%esi
    14e9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    14ee:	4d 89 d7             	mov    %r10,%r15
    14f1:	b8 00 00 00 00       	mov    $0x0,%eax
    14f6:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    14fd:	00 00 00 
    1500:	4d 01 d3             	add    %r10,%r11
    1503:	41 ff d3             	call   *%r11
    1506:	90                   	nop
    1507:	eb fd                	jmp    1506 <do_machine_check+0x8b>

0000000000001509 <do_SIMD_exception>:
    1509:	f3 0f 1e fa          	endbr64
    150d:	55                   	push   %rbp
    150e:	48 89 e5             	mov    %rsp,%rbp
    1511:	41 57                	push   %r15
    1513:	48 83 ec 28          	sub    $0x28,%rsp
    1517:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 1517 <do_SIMD_exception+0xe>
    151e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1525:	00 00 00 
    1528:	4d 01 da             	add    %r11,%r10
    152b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    152f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1533:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    153a:	00 
    153b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    153f:	48 05 98 00 00 00    	add    $0x98,%rax
    1545:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1549:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    154d:	48 8b 08             	mov    (%rax),%rcx
    1550:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    1554:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1558:	49 89 c9             	mov    %rcx,%r9
    155b:	49 89 d0             	mov    %rdx,%r8
    155e:	48 89 c1             	mov    %rax,%rcx
    1561:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1568:	00 00 00 
    156b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    156f:	48 89 c2             	mov    %rax,%rdx
    1572:	be 00 00 00 00       	mov    $0x0,%esi
    1577:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    157c:	4d 89 d7             	mov    %r10,%r15
    157f:	b8 00 00 00 00       	mov    $0x0,%eax
    1584:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    158b:	00 00 00 
    158e:	4d 01 d3             	add    %r10,%r11
    1591:	41 ff d3             	call   *%r11
    1594:	90                   	nop
    1595:	eb fd                	jmp    1594 <do_SIMD_exception+0x8b>

0000000000001597 <do_virtualization_exception>:
    1597:	f3 0f 1e fa          	endbr64
    159b:	55                   	push   %rbp
    159c:	48 89 e5             	mov    %rsp,%rbp
    159f:	41 57                	push   %r15
    15a1:	48 83 ec 28          	sub    $0x28,%rsp
    15a5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # 15a5 <do_virtualization_exception+0xe>
    15ac:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    15b3:	00 00 00 
    15b6:	4d 01 da             	add    %r11,%r10
    15b9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    15bd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    15c1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    15c8:	00 
    15c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    15cd:	48 05 98 00 00 00    	add    $0x98,%rax
    15d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    15d7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    15db:	48 8b 08             	mov    (%rax),%rcx
    15de:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    15e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    15e6:	49 89 c9             	mov    %rcx,%r9
    15e9:	49 89 d0             	mov    %rdx,%r8
    15ec:	48 89 c1             	mov    %rax,%rcx
    15ef:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    15f6:	00 00 00 
    15f9:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
    15fd:	48 89 c2             	mov    %rax,%rdx
    1600:	be 00 00 00 00       	mov    $0x0,%esi
    1605:	bf 00 00 ff 00       	mov    $0xff0000,%edi
    160a:	4d 89 d7             	mov    %r10,%r15
    160d:	b8 00 00 00 00       	mov    $0x0,%eax
    1612:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    1619:	00 00 00 
    161c:	4d 01 d3             	add    %r10,%r11
    161f:	41 ff d3             	call   *%r11
    1622:	90                   	nop
    1623:	eb fd                	jmp    1622 <do_virtualization_exception+0x8b>

0000000000001625 <sys_vector_init>:
    1625:	f3 0f 1e fa          	endbr64
    1629:	55                   	push   %rbp
    162a:	48 89 e5             	mov    %rsp,%rbp
    162d:	53                   	push   %rbx
    162e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 162e <sys_vector_init+0x9>
    1635:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    163c:	00 00 00 
    163f:	4c 01 db             	add    %r11,%rbx
    1642:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1649:	00 00 00 
    164c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1650:	48 89 c2             	mov    %rax,%rdx
    1653:	be 01 00 00 00       	mov    $0x1,%esi
    1658:	bf 00 00 00 00       	mov    $0x0,%edi
    165d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1664:	00 00 00 
    1667:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    166b:	ff d0                	call   *%rax
    166d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1674:	00 00 00 
    1677:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    167b:	48 89 c2             	mov    %rax,%rdx
    167e:	be 01 00 00 00       	mov    $0x1,%esi
    1683:	bf 01 00 00 00       	mov    $0x1,%edi
    1688:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    168f:	00 00 00 
    1692:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1696:	ff d0                	call   *%rax
    1698:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    169f:	00 00 00 
    16a2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    16a6:	48 89 c2             	mov    %rax,%rdx
    16a9:	be 01 00 00 00       	mov    $0x1,%esi
    16ae:	bf 02 00 00 00       	mov    $0x2,%edi
    16b3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16ba:	00 00 00 
    16bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    16c1:	ff d0                	call   *%rax
    16c3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16ca:	00 00 00 
    16cd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    16d1:	48 89 c2             	mov    %rax,%rdx
    16d4:	be 01 00 00 00       	mov    $0x1,%esi
    16d9:	bf 03 00 00 00       	mov    $0x3,%edi
    16de:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16e5:	00 00 00 
    16e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    16ec:	ff d0                	call   *%rax
    16ee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    16f5:	00 00 00 
    16f8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    16fc:	48 89 c2             	mov    %rax,%rdx
    16ff:	be 01 00 00 00       	mov    $0x1,%esi
    1704:	bf 04 00 00 00       	mov    $0x4,%edi
    1709:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1710:	00 00 00 
    1713:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1717:	ff d0                	call   *%rax
    1719:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1720:	00 00 00 
    1723:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1727:	48 89 c2             	mov    %rax,%rdx
    172a:	be 01 00 00 00       	mov    $0x1,%esi
    172f:	bf 05 00 00 00       	mov    $0x5,%edi
    1734:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    173b:	00 00 00 
    173e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1742:	ff d0                	call   *%rax
    1744:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    174b:	00 00 00 
    174e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1752:	48 89 c2             	mov    %rax,%rdx
    1755:	be 01 00 00 00       	mov    $0x1,%esi
    175a:	bf 06 00 00 00       	mov    $0x6,%edi
    175f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1766:	00 00 00 
    1769:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    176d:	ff d0                	call   *%rax
    176f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1776:	00 00 00 
    1779:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    177d:	48 89 c2             	mov    %rax,%rdx
    1780:	be 01 00 00 00       	mov    $0x1,%esi
    1785:	bf 07 00 00 00       	mov    $0x7,%edi
    178a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1791:	00 00 00 
    1794:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1798:	ff d0                	call   *%rax
    179a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17a1:	00 00 00 
    17a4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    17a8:	48 89 c2             	mov    %rax,%rdx
    17ab:	be 01 00 00 00       	mov    $0x1,%esi
    17b0:	bf 08 00 00 00       	mov    $0x8,%edi
    17b5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17bc:	00 00 00 
    17bf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    17c3:	ff d0                	call   *%rax
    17c5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17cc:	00 00 00 
    17cf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    17d3:	48 89 c2             	mov    %rax,%rdx
    17d6:	be 01 00 00 00       	mov    $0x1,%esi
    17db:	bf 09 00 00 00       	mov    $0x9,%edi
    17e0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17e7:	00 00 00 
    17ea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    17ee:	ff d0                	call   *%rax
    17f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    17f7:	00 00 00 
    17fa:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    17fe:	48 89 c2             	mov    %rax,%rdx
    1801:	be 01 00 00 00       	mov    $0x1,%esi
    1806:	bf 0a 00 00 00       	mov    $0xa,%edi
    180b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1812:	00 00 00 
    1815:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1819:	ff d0                	call   *%rax
    181b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1822:	00 00 00 
    1825:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1829:	48 89 c2             	mov    %rax,%rdx
    182c:	be 01 00 00 00       	mov    $0x1,%esi
    1831:	bf 0b 00 00 00       	mov    $0xb,%edi
    1836:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    183d:	00 00 00 
    1840:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1844:	ff d0                	call   *%rax
    1846:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    184d:	00 00 00 
    1850:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1854:	48 89 c2             	mov    %rax,%rdx
    1857:	be 01 00 00 00       	mov    $0x1,%esi
    185c:	bf 0c 00 00 00       	mov    $0xc,%edi
    1861:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1868:	00 00 00 
    186b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    186f:	ff d0                	call   *%rax
    1871:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1878:	00 00 00 
    187b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    187f:	48 89 c2             	mov    %rax,%rdx
    1882:	be 01 00 00 00       	mov    $0x1,%esi
    1887:	bf 0d 00 00 00       	mov    $0xd,%edi
    188c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1893:	00 00 00 
    1896:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    189a:	ff d0                	call   *%rax
    189c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18a3:	00 00 00 
    18a6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    18aa:	48 89 c2             	mov    %rax,%rdx
    18ad:	be 01 00 00 00       	mov    $0x1,%esi
    18b2:	bf 0e 00 00 00       	mov    $0xe,%edi
    18b7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18be:	00 00 00 
    18c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    18c5:	ff d0                	call   *%rax
    18c7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18ce:	00 00 00 
    18d1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    18d5:	48 89 c2             	mov    %rax,%rdx
    18d8:	be 01 00 00 00       	mov    $0x1,%esi
    18dd:	bf 10 00 00 00       	mov    $0x10,%edi
    18e2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18e9:	00 00 00 
    18ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    18f0:	ff d0                	call   *%rax
    18f2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    18f9:	00 00 00 
    18fc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1900:	48 89 c2             	mov    %rax,%rdx
    1903:	be 01 00 00 00       	mov    $0x1,%esi
    1908:	bf 11 00 00 00       	mov    $0x11,%edi
    190d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1914:	00 00 00 
    1917:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    191b:	ff d0                	call   *%rax
    191d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1924:	00 00 00 
    1927:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    192b:	48 89 c2             	mov    %rax,%rdx
    192e:	be 01 00 00 00       	mov    $0x1,%esi
    1933:	bf 12 00 00 00       	mov    $0x12,%edi
    1938:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    193f:	00 00 00 
    1942:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1946:	ff d0                	call   *%rax
    1948:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    194f:	00 00 00 
    1952:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1956:	48 89 c2             	mov    %rax,%rdx
    1959:	be 01 00 00 00       	mov    $0x1,%esi
    195e:	bf 13 00 00 00       	mov    $0x13,%edi
    1963:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    196a:	00 00 00 
    196d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1971:	ff d0                	call   *%rax
    1973:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    197a:	00 00 00 
    197d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
    1981:	48 89 c2             	mov    %rax,%rdx
    1984:	be 01 00 00 00       	mov    $0x1,%esi
    1989:	bf 14 00 00 00       	mov    $0x14,%edi
    198e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    1995:	00 00 00 
    1998:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    199c:	ff d0                	call   *%rax
    199e:	90                   	nop
    199f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    19a3:	c9                   	leave
    19a4:	c3                   	ret
