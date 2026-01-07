
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

0000000000000131 <Start_Kernel>:
 131:	f3 0f 1e fa          	endbr64
 135:	55                   	push   %rbp
 136:	48 89 e5             	mov    %rsp,%rbp
 139:	41 57                	push   %r15
 13b:	53                   	push   %rbx
 13c:	48 81 ec 10 03 00 00 	sub    $0x310,%rsp
 143:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 143 <Start_Kernel+0x12>
 14a:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 151:	00 00 00 
 154:	4c 01 db             	add    %r11,%rbx
 157:	0f 20 e0             	mov    %cr4,%rax
 15a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 15e:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
 165:	00 
 166:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
 16d:	00 
 16e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 172:	0f 22 e0             	mov    %rax,%cr4
 175:	48 83 ec 08          	sub    $0x8,%rsp
 179:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 180:	00 00 00 
 183:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 187:	50                   	push   %rax
 188:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 18f:	00 00 00 
 192:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 196:	49 89 c1             	mov    %rax,%r9
 199:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1a0:	00 00 00 
 1a3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1a7:	49 89 c0             	mov    %rax,%r8
 1aa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1b1:	00 00 00 
 1b4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 1b8:	48 89 c1             	mov    %rax,%rcx
 1bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1c2:	00 00 00 
 1c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 1c9:	48 89 c2             	mov    %rax,%rdx
 1cc:	be 00 00 00 00       	mov    $0x0,%esi
 1d1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 1d6:	49 89 df             	mov    %rbx,%r15
 1d9:	b8 00 00 00 00       	mov    $0x0,%eax
 1de:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
 1e5:	00 00 00 
 1e8:	49 01 da             	add    %rbx,%r10
 1eb:	41 ff d2             	call   *%r10
 1ee:	48 83 c4 10          	add    $0x10,%rsp
 1f2:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 1f9:	80 ff ff 
 1fc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 200:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 207:	00 00 00 
 20a:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 211:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 218:	00 00 00 
 21b:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 222:	00 
 223:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 22a:	00 00 00 
 22d:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 234:	00 
 235:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 23c:	00 00 00 
 23f:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 246:	00 
 247:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 24e:	00 00 00 
 251:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 258:	00 
 259:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 260:	00 00 00 
 263:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 26a:	00 
 26b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 272:	00 00 00 
 275:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 27a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 281:	00 00 00 
 284:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 287:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 28e:	00 00 00 
 291:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 295:	0f af c2             	imul   %edx,%eax
 298:	c1 e0 02             	shl    $0x2,%eax
 29b:	48 98                	cltq
 29d:	48 05 ff 0f 00 00    	add    $0xfff,%rax
 2a3:	25 ff 0f 00 00       	and    $0xfff,%eax
 2a8:	48 89 c2             	mov    %rax,%rdx
 2ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2b2:	00 00 00 
 2b5:	48 89 54 03 20       	mov    %rdx,0x20(%rbx,%rax,1)
 2ba:	b8 40 00 00 00       	mov    $0x40,%eax
 2bf:	0f 00 d8             	ltr    %eax
 2c2:	68 00 7c 00 00       	push   $0x7c00
 2c7:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 2ce:	ff 
 2cf:	68 00 7c 00 00       	push   $0x7c00
 2d4:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 2db:	ff 
 2dc:	68 00 7c 00 00       	push   $0x7c00
 2e1:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 2e8:	ff 
 2e9:	68 00 7c 00 00       	push   $0x7c00
 2ee:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 2f5:	ff 
 2f6:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 2fd:	80 ff ff 
 300:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 307:	80 ff ff 
 30a:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 311:	80 ff ff 
 314:	48 89 c1             	mov    %rax,%rcx
 317:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 31e:	80 ff ff 
 321:	48 89 c2             	mov    %rax,%rdx
 324:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 32b:	80 ff ff 
 32e:	48 89 c6             	mov    %rax,%rsi
 331:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 338:	80 ff ff 
 33b:	48 89 c7             	mov    %rax,%rdi
 33e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 345:	00 00 00 
 348:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 34c:	ff d0                	call   *%rax
 34e:	48 83 c4 20          	add    $0x20,%rsp
 352:	49 89 df             	mov    %rbx,%r15
 355:	b8 00 00 00 00       	mov    $0x0,%eax
 35a:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 361:	00 00 00 
 364:	48 01 da             	add    %rbx,%rdx
 367:	ff d2                	call   *%rdx
 369:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 370:	00 00 00 
 373:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 377:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
 37b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 382:	00 00 00 
 385:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 389:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 38d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 394:	00 00 00 
 397:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 39b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 39f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3a6:	00 00 00 
 3a9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
 3ad:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 3b1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3b8:	00 00 00 
 3bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3bf:	48 89 c2             	mov    %rax,%rdx
 3c2:	be 00 00 00 00       	mov    $0x0,%esi
 3c7:	bf ff ff ff 00       	mov    $0xffffff,%edi
 3cc:	49 89 df             	mov    %rbx,%r15
 3cf:	b8 00 00 00 00       	mov    $0x0,%eax
 3d4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3db:	00 00 00 
 3de:	48 01 d9             	add    %rbx,%rcx
 3e1:	ff d1                	call   *%rcx
 3e3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3ea:	00 00 00 
 3ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3f1:	48 89 c2             	mov    %rax,%rdx
 3f4:	be 00 00 00 00       	mov    $0x0,%esi
 3f9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3fe:	49 89 df             	mov    %rbx,%r15
 401:	b8 00 00 00 00       	mov    $0x0,%eax
 406:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 40d:	00 00 00 
 410:	48 01 d9             	add    %rbx,%rcx
 413:	ff d1                	call   *%rcx
 415:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 41c:	00 00 00 
 41f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 423:	48 89 c2             	mov    %rax,%rdx
 426:	be 00 00 00 00       	mov    $0x0,%esi
 42b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 430:	49 89 df             	mov    %rbx,%r15
 433:	b8 00 00 00 00       	mov    $0x0,%eax
 438:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 43f:	00 00 00 
 442:	48 01 d9             	add    %rbx,%rcx
 445:	ff d1                	call   *%rcx
 447:	49 89 df             	mov    %rbx,%r15
 44a:	b8 00 00 00 00       	mov    $0x0,%eax
 44f:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 456:	00 00 00 
 459:	48 01 da             	add    %rbx,%rdx
 45c:	ff d2                	call   *%rdx
 45e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 465:	00 00 00 
 468:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 46c:	48 89 c2             	mov    %rax,%rdx
 46f:	be 00 00 00 00       	mov    $0x0,%esi
 474:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 479:	49 89 df             	mov    %rbx,%r15
 47c:	b8 00 00 00 00       	mov    $0x0,%eax
 481:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 488:	00 00 00 
 48b:	48 01 d9             	add    %rbx,%rcx
 48e:	ff d1                	call   *%rcx
 490:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 497:	00 00 00 
 49a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 49e:	48 89 c2             	mov    %rax,%rdx
 4a1:	be 00 00 00 00       	mov    $0x0,%esi
 4a6:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 4ab:	49 89 df             	mov    %rbx,%r15
 4ae:	b8 00 00 00 00       	mov    $0x0,%eax
 4b3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 4ba:	00 00 00 
 4bd:	48 01 d9             	add    %rbx,%rcx
 4c0:	ff d1                	call   *%rcx
 4c2:	90                   	nop
 4c3:	eb fd                	jmp    4c2 <Start_Kernel+0x391>
