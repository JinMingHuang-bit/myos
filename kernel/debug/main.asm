
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <set_tss64>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8 <set_tss64+0x8>
   f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  16:	00 00 00 
  19:	4c 01 d8             	add    %r11,%rax
  1c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  20:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  24:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  28:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  2c:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
  30:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
  34:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  3b:	00 00 00 
  3e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  42:	48 8d 52 04          	lea    0x4(%rdx),%rdx
  46:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4a:	48 89 0a             	mov    %rcx,(%rdx)
  4d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  54:	00 00 00 
  57:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  5b:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
  5f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  63:	48 89 0a             	mov    %rcx,(%rdx)
  66:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  6d:	00 00 00 
  70:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  74:	48 8d 52 14          	lea    0x14(%rdx),%rdx
  78:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  7c:	48 89 0a             	mov    %rcx,(%rdx)
  7f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  86:	00 00 00 
  89:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  8d:	48 8d 52 24          	lea    0x24(%rdx),%rdx
  91:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  95:	48 89 0a             	mov    %rcx,(%rdx)
  98:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  9f:	00 00 00 
  a2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  a6:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
  aa:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  ae:	48 89 0a             	mov    %rcx,(%rdx)
  b1:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  b8:	00 00 00 
  bb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  bf:	48 8d 52 34          	lea    0x34(%rdx),%rdx
  c3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  c7:	48 89 0a             	mov    %rcx,(%rdx)
  ca:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  d1:	00 00 00 
  d4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  d8:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
  dc:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  e0:	48 89 0a             	mov    %rcx,(%rdx)
  e3:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  ea:	00 00 00 
  ed:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
  f1:	48 8d 52 44          	lea    0x44(%rdx),%rdx
  f5:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
  f9:	48 89 0a             	mov    %rcx,(%rdx)
  fc:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 103:	00 00 00 
 106:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
 10a:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
 10e:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
 112:	48 89 0a             	mov    %rcx,(%rdx)
 115:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 11c:	00 00 00 
 11f:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
 123:	48 8d 40 54          	lea    0x54(%rax),%rax
 127:	48 8b 55 28          	mov    0x28(%rbp),%rdx
 12b:	48 89 10             	mov    %rdx,(%rax)
 12e:	90                   	nop
 12f:	5d                   	pop    %rbp
 130:	c3                   	ret

0000000000000131 <Get_gdt>:
 131:	f3 0f 1e fa          	endbr64
 135:	55                   	push   %rbp
 136:	48 89 e5             	mov    %rsp,%rbp
 139:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 139 <Get_gdt+0x8>
 140:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 147:	00 00 00 
 14a:	4c 01 d8             	add    %r11,%rax
 14d:	0f 20 d8             	mov    %cr3,%rax
 150:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 154:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 158:	5d                   	pop    %rbp
 159:	c3                   	ret

000000000000015a <Start_Kernel>:
 15a:	f3 0f 1e fa          	endbr64
 15e:	55                   	push   %rbp
 15f:	48 89 e5             	mov    %rsp,%rbp
 162:	41 57                	push   %r15
 164:	53                   	push   %rbx
 165:	48 83 ec 20          	sub    $0x20,%rsp
 169:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 169 <Start_Kernel+0xf>
 170:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 177:	00 00 00 
 17a:	4c 01 db             	add    %r11,%rbx
 17d:	0f 20 e0             	mov    %cr4,%rax
 180:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 184:	48 81 4d e0 00 02 00 	orq    $0x200,-0x20(%rbp)
 18b:	00 
 18c:	48 81 4d e0 00 04 00 	orq    $0x400,-0x20(%rbp)
 193:	00 
 194:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 198:	0f 22 e0             	mov    %rax,%cr4
 19b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1a2:	00 00 00 
 1a5:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 1ac:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1b3:	00 00 00 
 1b6:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 1bd:	00 
 1be:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1c5:	00 00 00 
 1c8:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 1cf:	00 
 1d0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1d7:	00 00 00 
 1da:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 1e1:	00 
 1e2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1e9:	00 00 00 
 1ec:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 1f3:	00 
 1f4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1fb:	00 00 00 
 1fe:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 205:	00 
 206:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 20d:	00 00 00 
 210:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 217:	80 ff ff 
 21a:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 21f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 226:	00 00 00 
 229:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 22c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 233:	00 00 00 
 236:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 23a:	0f af c2             	imul   %edx,%eax
 23d:	c1 e0 02             	shl    $0x2,%eax
 240:	48 98                	cltq
 242:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 249:	00 00 00 
 24c:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
 251:	b8 40 00 00 00       	mov    $0x40,%eax
 256:	0f 00 d8             	ltr    %eax
 259:	68 00 7c 00 00       	push   $0x7c00
 25e:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 265:	ff 
 266:	68 00 7c 00 00       	push   $0x7c00
 26b:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 272:	ff 
 273:	68 00 7c 00 00       	push   $0x7c00
 278:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 27f:	ff 
 280:	68 00 7c 00 00       	push   $0x7c00
 285:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 28c:	ff 
 28d:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 294:	80 ff ff 
 297:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 29e:	80 ff ff 
 2a1:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2a8:	80 ff ff 
 2ab:	48 89 c1             	mov    %rax,%rcx
 2ae:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2b5:	80 ff ff 
 2b8:	48 89 c2             	mov    %rax,%rdx
 2bb:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2c2:	80 ff ff 
 2c5:	48 89 c6             	mov    %rax,%rsi
 2c8:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2cf:	80 ff ff 
 2d2:	48 89 c7             	mov    %rax,%rdi
 2d5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2dc:	00 00 00 
 2df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2e3:	ff d0                	call   *%rax
 2e5:	48 83 c4 20          	add    $0x20,%rsp
 2e9:	49 89 df             	mov    %rbx,%r15
 2ec:	b8 00 00 00 00       	mov    $0x0,%eax
 2f1:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2f8:	00 00 00 
 2fb:	48 01 da             	add    %rbx,%rdx
 2fe:	ff d2                	call   *%rdx
 300:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 307:	00 00 00 
 30a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 30e:	48 89 c2             	mov    %rax,%rdx
 311:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 318:	00 00 00 
 31b:	48 89 94 03 d0 02 00 	mov    %rdx,0x2d0(%rbx,%rax,1)
 322:	00 
 323:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 32a:	00 00 00 
 32d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 331:	48 89 c2             	mov    %rax,%rdx
 334:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 33b:	00 00 00 
 33e:	48 89 94 03 d8 02 00 	mov    %rdx,0x2d8(%rbx,%rax,1)
 345:	00 
 346:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 34d:	00 00 00 
 350:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 354:	48 89 c2             	mov    %rax,%rdx
 357:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 35e:	00 00 00 
 361:	48 89 94 03 e0 02 00 	mov    %rdx,0x2e0(%rbx,%rax,1)
 368:	00 
 369:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 370:	00 00 00 
 373:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 377:	48 89 c2             	mov    %rax,%rdx
 37a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 381:	00 00 00 
 384:	48 89 94 03 e8 02 00 	mov    %rdx,0x2e8(%rbx,%rax,1)
 38b:	00 
 38c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 393:	00 00 00 
 396:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 39a:	48 89 c2             	mov    %rax,%rdx
 39d:	be 00 00 00 00       	mov    $0x0,%esi
 3a2:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3a7:	49 89 df             	mov    %rbx,%r15
 3aa:	b8 00 00 00 00       	mov    $0x0,%eax
 3af:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3b6:	00 00 00 
 3b9:	48 01 d9             	add    %rbx,%rcx
 3bc:	ff d1                	call   *%rcx
 3be:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3c5:	00 00 00 
 3c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3cc:	48 89 c2             	mov    %rax,%rdx
 3cf:	be 00 00 00 00       	mov    $0x0,%esi
 3d4:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3d9:	49 89 df             	mov    %rbx,%r15
 3dc:	b8 00 00 00 00       	mov    $0x0,%eax
 3e1:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3e8:	00 00 00 
 3eb:	48 01 d9             	add    %rbx,%rcx
 3ee:	ff d1                	call   *%rcx
 3f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3f7:	00 00 00 
 3fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3fe:	48 89 c2             	mov    %rax,%rdx
 401:	be 00 00 00 00       	mov    $0x0,%esi
 406:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 40b:	49 89 df             	mov    %rbx,%r15
 40e:	b8 00 00 00 00       	mov    $0x0,%eax
 413:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 41a:	00 00 00 
 41d:	48 01 d9             	add    %rbx,%rcx
 420:	ff d1                	call   *%rcx
 422:	49 89 df             	mov    %rbx,%r15
 425:	b8 00 00 00 00       	mov    $0x0,%eax
 42a:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 431:	00 00 00 
 434:	48 01 da             	add    %rbx,%rdx
 437:	ff d2                	call   *%rdx
 439:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
 440:	00 
 441:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 448:	00 00 00 
 44b:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 452:	00 
 453:	48 8b 00             	mov    (%rax),%rax
 456:	48 89 c1             	mov    %rax,%rcx
 459:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 460:	00 00 00 
 463:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 467:	48 89 c2             	mov    %rax,%rdx
 46a:	be 00 00 00 00       	mov    $0x0,%esi
 46f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
 474:	49 89 df             	mov    %rbx,%r15
 477:	b8 00 00 00 00       	mov    $0x0,%eax
 47c:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 483:	00 00 00 
 486:	49 01 d8             	add    %rbx,%r8
 489:	41 ff d0             	call   *%r8
 48c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 493:	00 00 00 
 496:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 49d:	00 
 49e:	48 83 c0 08          	add    $0x8,%rax
 4a2:	48 8b 00             	mov    (%rax),%rax
 4a5:	48 89 c1             	mov    %rax,%rcx
 4a8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4af:	00 00 00 
 4b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 4b6:	48 89 c2             	mov    %rax,%rdx
 4b9:	be 00 00 00 00       	mov    $0x0,%esi
 4be:	bf 00 00 ff 00       	mov    $0xff0000,%edi
 4c3:	49 89 df             	mov    %rbx,%r15
 4c6:	b8 00 00 00 00       	mov    $0x0,%eax
 4cb:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 4d2:	00 00 00 
 4d5:	49 01 d8             	add    %rbx,%r8
 4d8:	41 ff d0             	call   *%r8
 4db:	ba 91 00 00 00       	mov    $0x91,%edx
 4e0:	be 40 00 00 00       	mov    $0x40,%esi
 4e5:	bf 02 00 00 00       	mov    $0x2,%edi
 4ea:	49 89 df             	mov    %rbx,%r15
 4ed:	b8 00 00 00 00       	mov    $0x0,%eax
 4f2:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 4f9:	00 00 00 
 4fc:	48 01 d9             	add    %rbx,%rcx
 4ff:	ff d1                	call   *%rcx
 501:	48 98                	cltq
 503:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 507:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 50e:	e9 0c 01 00 00       	jmp    61f <Start_Kernel+0x4c5>
 513:	8b 45 ec             	mov    -0x14(%rbp),%eax
 516:	48 63 d0             	movslq %eax,%rdx
 519:	48 89 d0             	mov    %rdx,%rax
 51c:	48 c1 e0 02          	shl    $0x2,%rax
 520:	48 01 d0             	add    %rdx,%rax
 523:	48 c1 e0 03          	shl    $0x3,%rax
 527:	48 89 c2             	mov    %rax,%rdx
 52a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 52e:	48 01 d0             	add    %rdx,%rax
 531:	48 8b 48 08          	mov    0x8(%rax),%rcx
 535:	8b 45 ec             	mov    -0x14(%rbp),%eax
 538:	48 63 d0             	movslq %eax,%rdx
 53b:	48 89 d0             	mov    %rdx,%rax
 53e:	48 c1 e0 02          	shl    $0x2,%rax
 542:	48 01 d0             	add    %rdx,%rax
 545:	48 c1 e0 03          	shl    $0x3,%rax
 549:	48 89 c2             	mov    %rax,%rdx
 54c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 550:	48 01 d0             	add    %rdx,%rax
 553:	48 8b 50 10          	mov    0x10(%rax),%rdx
 557:	8b 45 ec             	mov    -0x14(%rbp),%eax
 55a:	49 89 c9             	mov    %rcx,%r9
 55d:	49 89 d0             	mov    %rdx,%r8
 560:	89 c1                	mov    %eax,%ecx
 562:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 569:	00 00 00 
 56c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 570:	48 89 c2             	mov    %rax,%rdx
 573:	be 00 00 00 00       	mov    $0x0,%esi
 578:	bf ff ff 00 00       	mov    $0xffff,%edi
 57d:	49 89 df             	mov    %rbx,%r15
 580:	b8 00 00 00 00       	mov    $0x0,%eax
 585:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 58c:	00 00 00 
 58f:	49 01 da             	add    %rbx,%r10
 592:	41 ff d2             	call   *%r10
 595:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 599:	8b 45 ec             	mov    -0x14(%rbp),%eax
 59c:	48 63 d0             	movslq %eax,%rdx
 59f:	48 89 d0             	mov    %rdx,%rax
 5a2:	48 c1 e0 02          	shl    $0x2,%rax
 5a6:	48 01 d0             	add    %rdx,%rax
 5a9:	48 c1 e0 03          	shl    $0x3,%rax
 5ad:	48 89 c2             	mov    %rax,%rdx
 5b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 5b4:	48 01 d0             	add    %rdx,%rax
 5b7:	48 8b 48 08          	mov    0x8(%rax),%rcx
 5bb:	8b 45 ec             	mov    -0x14(%rbp),%eax
 5be:	48 63 d0             	movslq %eax,%rdx
 5c1:	48 89 d0             	mov    %rdx,%rax
 5c4:	48 c1 e0 02          	shl    $0x2,%rax
 5c8:	48 01 d0             	add    %rdx,%rax
 5cb:	48 c1 e0 03          	shl    $0x3,%rax
 5cf:	48 89 c2             	mov    %rax,%rdx
 5d2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 5d6:	48 01 d0             	add    %rdx,%rax
 5d9:	48 8b 50 10          	mov    0x10(%rax),%rdx
 5dd:	8b 45 ec             	mov    -0x14(%rbp),%eax
 5e0:	49 89 c9             	mov    %rcx,%r9
 5e3:	49 89 d0             	mov    %rdx,%r8
 5e6:	89 c1                	mov    %eax,%ecx
 5e8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 5ef:	00 00 00 
 5f2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 5f6:	48 89 c2             	mov    %rax,%rdx
 5f9:	be 00 00 00 00       	mov    $0x0,%esi
 5fe:	bf ff ff 00 00       	mov    $0xffff,%edi
 603:	49 89 df             	mov    %rbx,%r15
 606:	b8 00 00 00 00       	mov    $0x0,%eax
 60b:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 612:	00 00 00 
 615:	49 01 da             	add    %rbx,%r10
 618:	41 ff d2             	call   *%r10
 61b:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 61f:	83 7d ec 0f          	cmpl   $0xf,-0x14(%rbp)
 623:	0f 8e ea fe ff ff    	jle    513 <Start_Kernel+0x3b9>
 629:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 630:	00 00 00 
 633:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 63a:	00 
 63b:	48 8b 00             	mov    (%rax),%rax
 63e:	48 89 c1             	mov    %rax,%rcx
 641:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 648:	00 00 00 
 64b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 64f:	48 89 c2             	mov    %rax,%rdx
 652:	be 00 00 00 00       	mov    $0x0,%esi
 657:	bf 00 00 ff 00       	mov    $0xff0000,%edi
 65c:	49 89 df             	mov    %rbx,%r15
 65f:	b8 00 00 00 00       	mov    $0x0,%eax
 664:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 66b:	00 00 00 
 66e:	49 01 d8             	add    %rbx,%r8
 671:	41 ff d0             	call   *%r8
 674:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 67b:	00 00 00 
 67e:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
 685:	00 
 686:	48 83 c0 08          	add    $0x8,%rax
 68a:	48 8b 00             	mov    (%rax),%rax
 68d:	48 89 c1             	mov    %rax,%rcx
 690:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 697:	00 00 00 
 69a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 69e:	48 89 c2             	mov    %rax,%rdx
 6a1:	be 00 00 00 00       	mov    $0x0,%esi
 6a6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
 6ab:	49 89 df             	mov    %rbx,%r15
 6ae:	b8 00 00 00 00       	mov    $0x0,%eax
 6b3:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 6ba:	00 00 00 
 6bd:	49 01 d8             	add    %rbx,%r8
 6c0:	41 ff d0             	call   *%r8
 6c3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6ca:	00 00 00 
 6cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 6d1:	48 89 c2             	mov    %rax,%rdx
 6d4:	be 00 00 00 00       	mov    $0x0,%esi
 6d9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 6de:	49 89 df             	mov    %rbx,%r15
 6e1:	b8 00 00 00 00       	mov    $0x0,%eax
 6e6:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 6ed:	00 00 00 
 6f0:	48 01 d9             	add    %rbx,%rcx
 6f3:	ff d1                	call   *%rcx
 6f5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 6fc:	00 00 00 
 6ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 703:	48 89 c2             	mov    %rax,%rdx
 706:	be 00 00 00 00       	mov    $0x0,%esi
 70b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 710:	49 89 df             	mov    %rbx,%r15
 713:	b8 00 00 00 00       	mov    $0x0,%eax
 718:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 71f:	00 00 00 
 722:	48 01 d9             	add    %rbx,%rcx
 725:	ff d1                	call   *%rcx
 727:	90                   	nop
 728:	eb fd                	jmp    727 <Start_Kernel+0x5cd>
