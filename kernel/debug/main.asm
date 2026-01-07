
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
 19e:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 1a5:	80 ff ff 
 1a8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 1ac:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1b3:	00 00 00 
 1b6:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 1bd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1c4:	00 00 00 
 1c7:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 1ce:	00 
 1cf:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1d6:	00 00 00 
 1d9:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 1e0:	00 
 1e1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1e8:	00 00 00 
 1eb:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 1f2:	00 
 1f3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1fa:	00 00 00 
 1fd:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 204:	00 
 205:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 20c:	00 00 00 
 20f:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 216:	00 
 217:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 21e:	00 00 00 
 221:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 226:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 22d:	00 00 00 
 230:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 233:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 23a:	00 00 00 
 23d:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 241:	0f af c2             	imul   %edx,%eax
 244:	c1 e0 02             	shl    $0x2,%eax
 247:	48 98                	cltq
 249:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 250:	00 00 00 
 253:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
 258:	b8 40 00 00 00       	mov    $0x40,%eax
 25d:	0f 00 d8             	ltr    %eax
 260:	68 00 7c 00 00       	push   $0x7c00
 265:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 26c:	ff 
 26d:	68 00 7c 00 00       	push   $0x7c00
 272:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 279:	ff 
 27a:	68 00 7c 00 00       	push   $0x7c00
 27f:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 286:	ff 
 287:	68 00 7c 00 00       	push   $0x7c00
 28c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 293:	ff 
 294:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 29b:	80 ff ff 
 29e:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 2a5:	80 ff ff 
 2a8:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2af:	80 ff ff 
 2b2:	48 89 c1             	mov    %rax,%rcx
 2b5:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2bc:	80 ff ff 
 2bf:	48 89 c2             	mov    %rax,%rdx
 2c2:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2c9:	80 ff ff 
 2cc:	48 89 c6             	mov    %rax,%rsi
 2cf:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2d6:	80 ff ff 
 2d9:	48 89 c7             	mov    %rax,%rdi
 2dc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2e3:	00 00 00 
 2e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2ea:	ff d0                	call   *%rax
 2ec:	48 83 c4 20          	add    $0x20,%rsp
 2f0:	49 89 df             	mov    %rbx,%r15
 2f3:	b8 00 00 00 00       	mov    $0x0,%eax
 2f8:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2ff:	00 00 00 
 302:	48 01 da             	add    %rbx,%rdx
 305:	ff d2                	call   *%rdx
 307:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
 30e:	b8 00 00 00 00       	mov    $0x0,%eax
 313:	b9 5f 00 00 00       	mov    $0x5f,%ecx
 318:	48 89 d7             	mov    %rdx,%rdi
 31b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 31e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 325:	00 00 00 
 328:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 32c:	48 89 c2             	mov    %rax,%rdx
 32f:	be 00 00 00 00       	mov    $0x0,%esi
 334:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 339:	49 89 df             	mov    %rbx,%r15
 33c:	b8 00 00 00 00       	mov    $0x0,%eax
 341:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 348:	00 00 00 
 34b:	48 01 d9             	add    %rbx,%rcx
 34e:	ff d1                	call   *%rcx
 350:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 357:	00 00 00 
 35a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 35e:	48 89 c2             	mov    %rax,%rdx
 361:	be 00 00 00 00       	mov    $0x0,%esi
 366:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 36b:	49 89 df             	mov    %rbx,%r15
 36e:	b8 00 00 00 00       	mov    $0x0,%eax
 373:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 37a:	00 00 00 
 37d:	48 01 d9             	add    %rbx,%rcx
 380:	ff d1                	call   *%rcx
 382:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 389:	00 00 00 
 38c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 390:	48 89 c2             	mov    %rax,%rdx
 393:	be 00 00 00 00       	mov    $0x0,%esi
 398:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 39d:	49 89 df             	mov    %rbx,%r15
 3a0:	b8 00 00 00 00       	mov    $0x0,%eax
 3a5:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3ac:	00 00 00 
 3af:	48 01 d9             	add    %rbx,%rcx
 3b2:	ff d1                	call   *%rcx
 3b4:	49 89 df             	mov    %rbx,%r15
 3b7:	b8 00 00 00 00       	mov    $0x0,%eax
 3bc:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 3c3:	00 00 00 
 3c6:	48 01 da             	add    %rbx,%rdx
 3c9:	ff d2                	call   *%rdx
 3cb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3d2:	00 00 00 
 3d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3d9:	48 89 c2             	mov    %rax,%rdx
 3dc:	be 00 00 00 00       	mov    $0x0,%esi
 3e1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3e6:	49 89 df             	mov    %rbx,%r15
 3e9:	b8 00 00 00 00       	mov    $0x0,%eax
 3ee:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3f5:	00 00 00 
 3f8:	48 01 d9             	add    %rbx,%rcx
 3fb:	ff d1                	call   *%rcx
 3fd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 404:	00 00 00 
 407:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 40b:	48 89 c2             	mov    %rax,%rdx
 40e:	be 00 00 00 00       	mov    $0x0,%esi
 413:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 418:	49 89 df             	mov    %rbx,%r15
 41b:	b8 00 00 00 00       	mov    $0x0,%eax
 420:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 427:	00 00 00 
 42a:	48 01 d9             	add    %rbx,%rcx
 42d:	ff d1                	call   *%rcx
 42f:	90                   	nop
 430:	eb fd                	jmp    42f <Start_Kernel+0x2d5>
