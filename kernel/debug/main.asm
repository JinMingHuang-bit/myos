
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
 13c:	48 81 ec a0 02 00 00 	sub    $0x2a0,%rsp
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
 175:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
 17c:	80 ff ff 
 17f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
 183:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 18a:	00 00 00 
 18d:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
 194:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 19b:	00 00 00 
 19e:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
 1a5:	00 
 1a6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1ad:	00 00 00 
 1b0:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
 1b7:	00 
 1b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1bf:	00 00 00 
 1c2:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
 1c9:	00 
 1ca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1d1:	00 00 00 
 1d4:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
 1db:	00 
 1dc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1e3:	00 00 00 
 1e6:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
 1ed:	00 
 1ee:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1f5:	00 00 00 
 1f8:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
 1fd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 204:	00 00 00 
 207:	8b 14 03             	mov    (%rbx,%rax,1),%edx
 20a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 211:	00 00 00 
 214:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
 218:	0f af c2             	imul   %edx,%eax
 21b:	c1 e0 02             	shl    $0x2,%eax
 21e:	48 98                	cltq
 220:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 227:	00 00 00 
 22a:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
 22f:	b8 40 00 00 00       	mov    $0x40,%eax
 234:	0f 00 d8             	ltr    %eax
 237:	68 00 7c 00 00       	push   $0x7c00
 23c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 243:	ff 
 244:	68 00 7c 00 00       	push   $0x7c00
 249:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 250:	ff 
 251:	68 00 7c 00 00       	push   $0x7c00
 256:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 25d:	ff 
 25e:	68 00 7c 00 00       	push   $0x7c00
 263:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
 26a:	ff 
 26b:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
 272:	80 ff ff 
 275:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
 27c:	80 ff ff 
 27f:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 286:	80 ff ff 
 289:	48 89 c1             	mov    %rax,%rcx
 28c:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 293:	80 ff ff 
 296:	48 89 c2             	mov    %rax,%rdx
 299:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2a0:	80 ff ff 
 2a3:	48 89 c6             	mov    %rax,%rsi
 2a6:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
 2ad:	80 ff ff 
 2b0:	48 89 c7             	mov    %rax,%rdi
 2b3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2ba:	00 00 00 
 2bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 2c1:	ff d0                	call   *%rax
 2c3:	48 83 c4 20          	add    $0x20,%rsp
 2c7:	49 89 df             	mov    %rbx,%r15
 2ca:	b8 00 00 00 00       	mov    $0x0,%eax
 2cf:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 2d6:	00 00 00 
 2d9:	48 01 da             	add    %rbx,%rdx
 2dc:	ff d2                	call   *%rdx
 2de:	48 8d 95 50 fd ff ff 	lea    -0x2b0(%rbp),%rdx
 2e5:	b8 00 00 00 00       	mov    $0x0,%eax
 2ea:	b9 51 00 00 00       	mov    $0x51,%ecx
 2ef:	48 89 d7             	mov    %rdx,%rdi
 2f2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 2f5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 2fc:	00 00 00 
 2ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 303:	48 89 c2             	mov    %rax,%rdx
 306:	be 00 00 00 00       	mov    $0x0,%esi
 30b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 310:	49 89 df             	mov    %rbx,%r15
 313:	b8 00 00 00 00       	mov    $0x0,%eax
 318:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 31f:	00 00 00 
 322:	48 01 d9             	add    %rbx,%rcx
 325:	ff d1                	call   *%rcx
 327:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 32e:	00 00 00 
 331:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 335:	48 89 c2             	mov    %rax,%rdx
 338:	be 00 00 00 00       	mov    $0x0,%esi
 33d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 342:	49 89 df             	mov    %rbx,%r15
 345:	b8 00 00 00 00       	mov    $0x0,%eax
 34a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 351:	00 00 00 
 354:	48 01 d9             	add    %rbx,%rcx
 357:	ff d1                	call   *%rcx
 359:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 360:	00 00 00 
 363:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 367:	48 89 c2             	mov    %rax,%rdx
 36a:	be 00 00 00 00       	mov    $0x0,%esi
 36f:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 374:	49 89 df             	mov    %rbx,%r15
 377:	b8 00 00 00 00       	mov    $0x0,%eax
 37c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 383:	00 00 00 
 386:	48 01 d9             	add    %rbx,%rcx
 389:	ff d1                	call   *%rcx
 38b:	49 89 df             	mov    %rbx,%r15
 38e:	b8 00 00 00 00       	mov    $0x0,%eax
 393:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 39a:	00 00 00 
 39d:	48 01 da             	add    %rbx,%rdx
 3a0:	ff d2                	call   *%rdx
 3a2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3a9:	00 00 00 
 3ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3b0:	48 89 c2             	mov    %rax,%rdx
 3b3:	be 00 00 00 00       	mov    $0x0,%esi
 3b8:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3bd:	49 89 df             	mov    %rbx,%r15
 3c0:	b8 00 00 00 00       	mov    $0x0,%eax
 3c5:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3cc:	00 00 00 
 3cf:	48 01 d9             	add    %rbx,%rcx
 3d2:	ff d1                	call   *%rcx
 3d4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 3db:	00 00 00 
 3de:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 3e2:	48 89 c2             	mov    %rax,%rdx
 3e5:	be 00 00 00 00       	mov    $0x0,%esi
 3ea:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 3ef:	49 89 df             	mov    %rbx,%r15
 3f2:	b8 00 00 00 00       	mov    $0x0,%eax
 3f7:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 3fe:	00 00 00 
 401:	48 01 d9             	add    %rbx,%rcx
 404:	ff d1                	call   *%rcx
 406:	90                   	nop
 407:	eb fd                	jmp    406 <Start_Kernel+0x2d5>
