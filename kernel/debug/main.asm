
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
 165:	48 81 ec 10 03 00 00 	sub    $0x310,%rsp
 16c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 16c <Start_Kernel+0x12>
 173:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 17a:	00 00 00 
 17d:	4c 01 db             	add    %r11,%rbx
 180:	0f 20 e0             	mov    %cr4,%rax
 183:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 187:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
 18e:	00 
 18f:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
 196:	00 
 197:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 19b:	0f 22 e0             	mov    %rax,%cr4
 19e:	48 83 ec 08          	sub    $0x8,%rsp
 1a2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1a9:	00 00 00 
 1ac:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1b0:	50                   	push   %rax
 1b1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1b8:	00 00 00 
 1bb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1bf:	49 89 c1             	mov    %rax,%r9
 1c2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1c9:	00 00 00 
 1cc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1d0:	49 89 c0             	mov    %rax,%r8
 1d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1da:	00 00 00 
 1dd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1e1:	48 89 c1             	mov    %rax,%rcx
 1e4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1eb:	00 00 00 
 1ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 1f2:	48 89 c2             	mov    %rax,%rdx
 1f5:	be 00 00 00 00       	mov    $0x0,%esi
 1fa:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 1ff:	49 89 df             	mov    %rbx,%r15
 202:	b8 00 00 00 00       	mov    $0x0,%eax
 207:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 20e:	00 00 00 
 211:	49 01 da             	add    %rbx,%r10
 214:	41 ff d2             	call   *%r10
 217:	48 83 c4 10          	add    $0x10,%rsp
 21b:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 222:	80 ff ff 
 225:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 229:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 230:	00 00 00 
 233:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 23a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 241:	00 00 00 
 244:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 24b:	00 
 24c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 253:	00 00 00 
 256:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 25d:	00 
 25e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 265:	00 00 00 
 268:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 26f:	00 
 270:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 277:	00 00 00 
 27a:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 281:	00 
 282:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 289:	00 00 00 
 28c:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 293:	00 
 294:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 29b:	00 00 00 
 29e:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 2a3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2aa:	00 00 00 
 2ad:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 2b0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2b7:	00 00 00 
 2ba:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 2be:	0f af c2             	imul   %edx,%eax
 2c1:	c1 e0 02             	shl    $0x2,%eax
 2c4:	48 98                	cltq
 2c6:	48 05 ff 0f 00 00    	add    $0xfff,%rax
 2cc:	25 ff 0f 00 00       	and    $0xfff,%eax
 2d1:	48 89 c2             	mov    %rax,%rdx
 2d4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2db:	00 00 00 
 2de:	48 89 54 03 20       	mov    %rdx,0x20(%rbx,%rax,1)
 2e3:	b8 40 00 00 00       	mov    $0x40,%eax
 2e8:	0f 00 d8             	ltr    %eax
 2eb:	68 00 7c 00 00       	push   $0x7c00
 2f0:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 2f7:	ff 
 2f8:	68 00 7c 00 00       	push   $0x7c00
 2fd:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 304:	ff 
 305:	68 00 7c 00 00       	push   $0x7c00
 30a:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 311:	ff 
 312:	68 00 7c 00 00       	push   $0x7c00
 317:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 31e:	ff 
 31f:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 326:	80 ff ff 
 329:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 330:	80 ff ff 
 333:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 33a:	80 ff ff 
 33d:	48 89 c1             	mov    %rax,%rcx
 340:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 347:	80 ff ff 
 34a:	48 89 c2             	mov    %rax,%rdx
 34d:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 354:	80 ff ff 
 357:	48 89 c6             	mov    %rax,%rsi
 35a:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 361:	80 ff ff 
 364:	48 89 c7             	mov    %rax,%rdi
 367:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 36e:	00 00 00 
 371:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 375:	ff d0                	call   *%rax
 377:	48 83 c4 20          	add    $0x20,%rsp
 37b:	49 89 df             	mov    %rbx,%r15
 37e:	b8 00 00 00 00       	mov    $0x0,%eax
 383:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 38a:	00 00 00 
 38d:	48 01 da             	add    %rbx,%rdx
 390:	ff d2                	call   *%rdx
 392:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 399:	00 00 00 
 39c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 3a0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 3a4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3ab:	00 00 00 
 3ae:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 3b2:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 3b6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3bd:	00 00 00 
 3c0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 3c4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 3c8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3cf:	00 00 00 
 3d2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 3d6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 3da:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3e1:	00 00 00 
 3e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3e8:	48 89 c2             	mov    %rax,%rdx
 3eb:	be 00 00 00 00       	mov    $0x0,%esi
 3f0:	bf ff ff ff 00       	mov    $0xffffff,%edi
 3f5:	49 89 df             	mov    %rbx,%r15
 3f8:	b8 00 00 00 00       	mov    $0x0,%eax
 3fd:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 404:	00 00 00 
 407:	48 01 d9             	add    %rbx,%rcx
 40a:	ff d1                	call   *%rcx
 40c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 413:	00 00 00 
 416:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 41a:	48 89 c2             	mov    %rax,%rdx
 41d:	be 00 00 00 00       	mov    $0x0,%esi
 422:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 427:	49 89 df             	mov    %rbx,%r15
 42a:	b8 00 00 00 00       	mov    $0x0,%eax
 42f:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 436:	00 00 00 
 439:	48 01 d9             	add    %rbx,%rcx
 43c:	ff d1                	call   *%rcx
 43e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 445:	00 00 00 
 448:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 44c:	48 89 c2             	mov    %rax,%rdx
 44f:	be 00 00 00 00       	mov    $0x0,%esi
 454:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 459:	49 89 df             	mov    %rbx,%r15
 45c:	b8 00 00 00 00       	mov    $0x0,%eax
 461:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 468:	00 00 00 
 46b:	48 01 d9             	add    %rbx,%rcx
 46e:	ff d1                	call   *%rcx
 470:	49 89 df             	mov    %rbx,%r15
 473:	b8 00 00 00 00       	mov    $0x0,%eax
 478:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 47f:	00 00 00 
 482:	48 01 da             	add    %rbx,%rdx
 485:	ff d2                	call   *%rdx
 487:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 48e:	00 00 00 
 491:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 495:	48 89 c2             	mov    %rax,%rdx
 498:	be 00 00 00 00       	mov    $0x0,%esi
 49d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 4a2:	49 89 df             	mov    %rbx,%r15
 4a5:	b8 00 00 00 00       	mov    $0x0,%eax
 4aa:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 4b1:	00 00 00 
 4b4:	48 01 d9             	add    %rbx,%rcx
 4b7:	ff d1                	call   *%rcx
 4b9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 4c0:	00 00 00 
 4c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 4c7:	48 89 c2             	mov    %rax,%rdx
 4ca:	be 00 00 00 00       	mov    $0x0,%esi
 4cf:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 4d4:	49 89 df             	mov    %rbx,%r15
 4d7:	b8 00 00 00 00       	mov    $0x0,%eax
 4dc:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 4e3:	00 00 00 
 4e6:	48 01 d9             	add    %rbx,%rcx
 4e9:	ff d1                	call   *%rcx
 4eb:	90                   	nop
 4ec:	eb fd                	jmp    4eb <Start_Kernel+0x391>
