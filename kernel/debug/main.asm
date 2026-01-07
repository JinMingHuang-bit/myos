
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
 165:	48 83 ec 10          	sub    $0x10,%rsp
 169:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 169 <Start_Kernel+0xf>
 170:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 177:	00 00 00 
 17a:	4c 01 db             	add    %r11,%rbx
 17d:	0f 20 e0             	mov    %cr4,%rax
 180:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 184:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
 18b:	00 
 18c:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
 193:	00 
 194:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 198:	0f 22 e0             	mov    %rax,%cr4
 19b:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 1a2:	80 ff ff 
 1a5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 1a9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1b0:	00 00 00 
 1b3:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 1ba:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1c1:	00 00 00 
 1c4:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 1cb:	00 
 1cc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1d3:	00 00 00 
 1d6:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 1dd:	00 
 1de:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1e5:	00 00 00 
 1e8:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 1ef:	00 
 1f0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1f7:	00 00 00 
 1fa:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 201:	00 
 202:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 209:	00 00 00 
 20c:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 213:	00 
 214:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 21b:	00 00 00 
 21e:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 223:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 22a:	00 00 00 
 22d:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 230:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 237:	00 00 00 
 23a:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 23e:	0f af c2             	imul   %edx,%eax
 241:	c1 e0 02             	shl    $0x2,%eax
 244:	48 98                	cltq
 246:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 24d:	00 00 00 
 250:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
 255:	b8 40 00 00 00       	mov    $0x40,%eax
 25a:	0f 00 d8             	ltr    %eax
 25d:	68 00 7c 00 00       	push   $0x7c00
 262:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 269:	ff 
 26a:	68 00 7c 00 00       	push   $0x7c00
 26f:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 276:	ff 
 277:	68 00 7c 00 00       	push   $0x7c00
 27c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 283:	ff 
 284:	68 00 7c 00 00       	push   $0x7c00
 289:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 290:	ff 
 291:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 298:	80 ff ff 
 29b:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 2a2:	80 ff ff 
 2a5:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2ac:	80 ff ff 
 2af:	48 89 c1             	mov    %rax,%rcx
 2b2:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2b9:	80 ff ff 
 2bc:	48 89 c2             	mov    %rax,%rdx
 2bf:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2c6:	80 ff ff 
 2c9:	48 89 c6             	mov    %rax,%rsi
 2cc:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2d3:	80 ff ff 
 2d6:	48 89 c7             	mov    %rax,%rdi
 2d9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2e0:	00 00 00 
 2e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2e7:	ff d0                	call   *%rax
 2e9:	48 83 c4 20          	add    $0x20,%rsp
 2ed:	49 89 df             	mov    %rbx,%r15
 2f0:	b8 00 00 00 00       	mov    $0x0,%eax
 2f5:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2fc:	00 00 00 
 2ff:	48 01 da             	add    %rbx,%rdx
 302:	ff d2                	call   *%rdx
 304:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 30b:	00 00 00 
 30e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 312:	48 89 c2             	mov    %rax,%rdx
 315:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 31c:	00 00 00 
 31f:	48 89 94 03 d0 02 00 	mov    %rdx,0x2d0(%rbx,%rax,1)
 326:	00 
 327:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 32e:	00 00 00 
 331:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 335:	48 89 c2             	mov    %rax,%rdx
 338:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 33f:	00 00 00 
 342:	48 89 94 03 d8 02 00 	mov    %rdx,0x2d8(%rbx,%rax,1)
 349:	00 
 34a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 351:	00 00 00 
 354:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 358:	48 89 c2             	mov    %rax,%rdx
 35b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 362:	00 00 00 
 365:	48 89 94 03 e0 02 00 	mov    %rdx,0x2e0(%rbx,%rax,1)
 36c:	00 
 36d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 374:	00 00 00 
 377:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 37b:	48 89 c2             	mov    %rax,%rdx
 37e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 385:	00 00 00 
 388:	48 89 94 03 e8 02 00 	mov    %rdx,0x2e8(%rbx,%rax,1)
 38f:	00 
 390:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 397:	00 00 00 
 39a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 39e:	48 89 c2             	mov    %rax,%rdx
 3a1:	be 00 00 00 00       	mov    $0x0,%esi
 3a6:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3ab:	49 89 df             	mov    %rbx,%r15
 3ae:	b8 00 00 00 00       	mov    $0x0,%eax
 3b3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3ba:	00 00 00 
 3bd:	48 01 d9             	add    %rbx,%rcx
 3c0:	ff d1                	call   *%rcx
 3c2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3c9:	00 00 00 
 3cc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3d0:	48 89 c2             	mov    %rax,%rdx
 3d3:	be 00 00 00 00       	mov    $0x0,%esi
 3d8:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3dd:	49 89 df             	mov    %rbx,%r15
 3e0:	b8 00 00 00 00       	mov    $0x0,%eax
 3e5:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3ec:	00 00 00 
 3ef:	48 01 d9             	add    %rbx,%rcx
 3f2:	ff d1                	call   *%rcx
 3f4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3fb:	00 00 00 
 3fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 402:	48 89 c2             	mov    %rax,%rdx
 405:	be 00 00 00 00       	mov    $0x0,%esi
 40a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 40f:	49 89 df             	mov    %rbx,%r15
 412:	b8 00 00 00 00       	mov    $0x0,%eax
 417:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 41e:	00 00 00 
 421:	48 01 d9             	add    %rbx,%rcx
 424:	ff d1                	call   *%rcx
 426:	49 89 df             	mov    %rbx,%r15
 429:	b8 00 00 00 00       	mov    $0x0,%eax
 42e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 435:	00 00 00 
 438:	48 01 da             	add    %rbx,%rdx
 43b:	ff d2                	call   *%rdx
 43d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 444:	00 00 00 
 447:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 44b:	48 89 c2             	mov    %rax,%rdx
 44e:	be 00 00 00 00       	mov    $0x0,%esi
 453:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 458:	49 89 df             	mov    %rbx,%r15
 45b:	b8 00 00 00 00       	mov    $0x0,%eax
 460:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 467:	00 00 00 
 46a:	48 01 d9             	add    %rbx,%rcx
 46d:	ff d1                	call   *%rcx
 46f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 476:	00 00 00 
 479:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 47d:	48 89 c2             	mov    %rax,%rdx
 480:	be 00 00 00 00       	mov    $0x0,%esi
 485:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 48a:	49 89 df             	mov    %rbx,%r15
 48d:	b8 00 00 00 00       	mov    $0x0,%eax
 492:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 499:	00 00 00 
 49c:	48 01 d9             	add    %rbx,%rcx
 49f:	ff d1                	call   *%rcx
 4a1:	90                   	nop
 4a2:	eb fd                	jmp    4a1 <Start_Kernel+0x347>
