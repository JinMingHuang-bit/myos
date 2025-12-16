
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
 13c:	48 83 ec 10          	sub    $0x10,%rsp
 140:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 140 <Start_Kernel+0xf>
 147:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
 14e:	00 00 00 
 151:	4c 01 db             	add    %r11,%rbx
 154:	0f 20 e0             	mov    %cr4,%rax
 157:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
 15b:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
 162:	00 
 163:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
 16a:	00 
 16b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 16f:	0f 22 e0             	mov    %rax,%cr4
 172:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 179:	80 ff ff 
 17c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 180:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 187:	00 00 00 
 18a:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 191:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 198:	00 00 00 
 19b:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 1a2:	00 
 1a3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1aa:	00 00 00 
 1ad:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 1b4:	00 
 1b5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1bc:	00 00 00 
 1bf:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 1c6:	00 
 1c7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1ce:	00 00 00 
 1d1:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 1d8:	00 
 1d9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1e0:	00 00 00 
 1e3:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 1ea:	00 
 1eb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1f2:	00 00 00 
 1f5:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 1fa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 201:	00 00 00 
 204:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 207:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 20e:	00 00 00 
 211:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 215:	0f af c2             	imul   %edx,%eax
 218:	c1 e0 02             	shl    $0x2,%eax
 21b:	48 98                	cltq
 21d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 224:	00 00 00 
 227:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
 22c:	b8 40 00 00 00       	mov    $0x40,%eax
 231:	0f 00 d8             	ltr    %eax
 234:	68 00 7c 00 00       	push   $0x7c00
 239:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 240:	ff 
 241:	68 00 7c 00 00       	push   $0x7c00
 246:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 24d:	ff 
 24e:	68 00 7c 00 00       	push   $0x7c00
 253:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 25a:	ff 
 25b:	68 00 7c 00 00       	push   $0x7c00
 260:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 267:	ff 
 268:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 26f:	80 ff ff 
 272:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 279:	80 ff ff 
 27c:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 283:	80 ff ff 
 286:	48 89 c1             	mov    %rax,%rcx
 289:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 290:	80 ff ff 
 293:	48 89 c2             	mov    %rax,%rdx
 296:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 29d:	80 ff ff 
 2a0:	48 89 c6             	mov    %rax,%rsi
 2a3:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2aa:	80 ff ff 
 2ad:	48 89 c7             	mov    %rax,%rdi
 2b0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2b7:	00 00 00 
 2ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2be:	ff d0                	call   *%rax
 2c0:	48 83 c4 20          	add    $0x20,%rsp
 2c4:	49 89 df             	mov    %rbx,%r15
 2c7:	b8 00 00 00 00       	mov    $0x0,%eax
 2cc:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2d3:	00 00 00 
 2d6:	48 01 da             	add    %rbx,%rdx
 2d9:	ff d2                	call   *%rdx
 2db:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2e2:	00 00 00 
 2e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2e9:	48 89 c2             	mov    %rax,%rdx
 2ec:	be 00 00 00 00       	mov    $0x0,%esi
 2f1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 2f6:	49 89 df             	mov    %rbx,%r15
 2f9:	b8 00 00 00 00       	mov    $0x0,%eax
 2fe:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 305:	00 00 00 
 308:	48 01 d9             	add    %rbx,%rcx
 30b:	ff d1                	call   *%rcx
 30d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 314:	00 00 00 
 317:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 31b:	48 89 c2             	mov    %rax,%rdx
 31e:	be 00 00 00 00       	mov    $0x0,%esi
 323:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 328:	49 89 df             	mov    %rbx,%r15
 32b:	b8 00 00 00 00       	mov    $0x0,%eax
 330:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 337:	00 00 00 
 33a:	48 01 d9             	add    %rbx,%rcx
 33d:	ff d1                	call   *%rcx
 33f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 346:	00 00 00 
 349:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 34d:	48 89 c2             	mov    %rax,%rdx
 350:	be 00 00 00 00       	mov    $0x0,%esi
 355:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 35a:	49 89 df             	mov    %rbx,%r15
 35d:	b8 00 00 00 00       	mov    $0x0,%eax
 362:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 369:	00 00 00 
 36c:	48 01 d9             	add    %rbx,%rcx
 36f:	ff d1                	call   *%rcx
 371:	49 89 df             	mov    %rbx,%r15
 374:	b8 00 00 00 00       	mov    $0x0,%eax
 379:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 380:	00 00 00 
 383:	48 01 da             	add    %rbx,%rdx
 386:	ff d2                	call   *%rdx
 388:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 38f:	00 00 00 
 392:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 396:	48 89 c2             	mov    %rax,%rdx
 399:	be 00 00 00 00       	mov    $0x0,%esi
 39e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3a3:	49 89 df             	mov    %rbx,%r15
 3a6:	b8 00 00 00 00       	mov    $0x0,%eax
 3ab:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3b2:	00 00 00 
 3b5:	48 01 d9             	add    %rbx,%rcx
 3b8:	ff d1                	call   *%rcx
 3ba:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3c1:	00 00 00 
 3c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3c8:	48 89 c2             	mov    %rax,%rdx
 3cb:	be 00 00 00 00       	mov    $0x0,%esi
 3d0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3d5:	49 89 df             	mov    %rbx,%r15
 3d8:	b8 00 00 00 00       	mov    $0x0,%eax
 3dd:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3e4:	00 00 00 
 3e7:	48 01 d9             	add    %rbx,%rcx
 3ea:	ff d1                	call   *%rcx
 3ec:	90                   	nop
 3ed:	eb fd                	jmp    3ec <Start_Kernel+0x2bb>
