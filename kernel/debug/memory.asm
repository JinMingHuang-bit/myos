
memory.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <init_memory>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	53                   	push   %rbx
   b:	48 83 ec 40          	sub    $0x40,%rsp
   f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # f <init_memory+0xf>
  16:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  1d:	00 00 00 
  20:	4c 01 db             	add    %r11,%rbx
  23:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
  2a:	00 
  2b:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  32:	00 
  33:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  3a:	00 00 00 
  3d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
  41:	48 89 c2             	mov    %rax,%rdx
  44:	be 00 00 00 00       	mov    $0x0,%esi
  49:	bf ff 00 00 00       	mov    $0xff,%edi
  4e:	49 89 df             	mov    %rbx,%r15
  51:	b8 00 00 00 00       	mov    $0x0,%eax
  56:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  5d:	00 00 00 
  60:	48 01 d9             	add    %rbx,%rcx
  63:	ff d1                	call   *%rcx
  65:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
  6c:	80 ff ff 
  6f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  73:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  7a:	e9 8a 01 00 00       	jmp    209 <init_memory+0x209>
  7f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  83:	8b 48 10             	mov    0x10(%rax),%ecx
  86:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  8a:	48 8b 50 08          	mov    0x8(%rax),%rdx
  8e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  92:	48 8b 00             	mov    (%rax),%rax
  95:	41 89 c9             	mov    %ecx,%r9d
  98:	49 89 d0             	mov    %rdx,%r8
  9b:	48 89 c1             	mov    %rax,%rcx
  9e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  a5:	00 00 00 
  a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
  ac:	48 89 c2             	mov    %rax,%rdx
  af:	be 00 00 00 00       	mov    $0x0,%esi
  b4:	bf 00 80 ff 00       	mov    $0xff8000,%edi
  b9:	49 89 df             	mov    %rbx,%r15
  bc:	b8 00 00 00 00       	mov    $0x0,%eax
  c1:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
  c8:	00 00 00 
  cb:	49 01 da             	add    %rbx,%r10
  ce:	41 ff d2             	call   *%r10
  d1:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  d8:	00 
  d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  dd:	8b 40 10             	mov    0x10(%rax),%eax
  e0:	83 f8 01             	cmp    $0x1,%eax
  e3:	75 0c                	jne    f1 <init_memory+0xf1>
  e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  e9:	48 8b 40 08          	mov    0x8(%rax),%rax
  ed:	48 01 45 e0          	add    %rax,-0x20(%rbp)
  f1:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  f8:	00 00 00 
  fb:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  fe:	48 63 d0             	movslq %eax,%rdx
 101:	48 01 d9             	add    %rbx,%rcx
 104:	48 89 d0             	mov    %rdx,%rax
 107:	48 c1 e0 02          	shl    $0x2,%rax
 10b:	48 01 d0             	add    %rdx,%rax
 10e:	48 c1 e0 02          	shl    $0x2,%rax
 112:	48 01 c8             	add    %rcx,%rax
 115:	48 8b 10             	mov    (%rax),%rdx
 118:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 11c:	48 8b 00             	mov    (%rax),%rax
 11f:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 123:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 12a:	00 00 00 
 12d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 130:	48 63 d0             	movslq %eax,%rdx
 133:	48 01 de             	add    %rbx,%rsi
 136:	48 89 d0             	mov    %rdx,%rax
 139:	48 c1 e0 02          	shl    $0x2,%rax
 13d:	48 01 d0             	add    %rdx,%rax
 140:	48 c1 e0 02          	shl    $0x2,%rax
 144:	48 01 f0             	add    %rsi,%rax
 147:	48 89 08             	mov    %rcx,(%rax)
 14a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 151:	00 00 00 
 154:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 157:	48 63 d0             	movslq %eax,%rdx
 15a:	48 89 d0             	mov    %rdx,%rax
 15d:	48 c1 e0 02          	shl    $0x2,%rax
 161:	48 01 d0             	add    %rdx,%rax
 164:	48 c1 e0 02          	shl    $0x2,%rax
 168:	48 01 d8             	add    %rbx,%rax
 16b:	48 01 c8             	add    %rcx,%rax
 16e:	48 83 c0 08          	add    $0x8,%rax
 172:	48 8b 10             	mov    (%rax),%rdx
 175:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 179:	48 8b 40 08          	mov    0x8(%rax),%rax
 17d:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 181:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 188:	00 00 00 
 18b:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 18e:	48 63 d0             	movslq %eax,%rdx
 191:	48 89 d0             	mov    %rdx,%rax
 194:	48 c1 e0 02          	shl    $0x2,%rax
 198:	48 01 d0             	add    %rdx,%rax
 19b:	48 c1 e0 02          	shl    $0x2,%rax
 19f:	48 01 d8             	add    %rbx,%rax
 1a2:	48 01 f0             	add    %rsi,%rax
 1a5:	48 83 c0 08          	add    $0x8,%rax
 1a9:	48 89 08             	mov    %rcx,(%rax)
 1ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1b0:	8b 48 10             	mov    0x10(%rax),%ecx
 1b3:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1ba:	00 00 00 
 1bd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1c0:	48 63 d0             	movslq %eax,%rdx
 1c3:	48 01 de             	add    %rbx,%rsi
 1c6:	48 89 d0             	mov    %rdx,%rax
 1c9:	48 c1 e0 02          	shl    $0x2,%rax
 1cd:	48 01 d0             	add    %rdx,%rax
 1d0:	48 c1 e0 02          	shl    $0x2,%rax
 1d4:	48 01 f0             	add    %rsi,%rax
 1d7:	48 83 c0 10          	add    $0x10,%rax
 1db:	89 08                	mov    %ecx,(%rax)
 1dd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1e0:	48 98                	cltq
 1e2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 1e9:	00 00 00 
 1ec:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
 1f3:	00 
 1f4:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
 1f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1fd:	8b 40 10             	mov    0x10(%rax),%eax
 200:	83 f8 04             	cmp    $0x4,%eax
 203:	77 10                	ja     215 <init_memory+0x215>
 205:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
 209:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
 20d:	0f 8e 6c fe ff ff    	jle    7f <init_memory+0x7f>
 213:	eb 01                	jmp    216 <init_memory+0x216>
 215:	90                   	nop
 216:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 21a:	48 89 c1             	mov    %rax,%rcx
 21d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 224:	00 00 00 
 227:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 22b:	48 89 c2             	mov    %rax,%rdx
 22e:	be 00 00 00 00       	mov    $0x0,%esi
 233:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 238:	49 89 df             	mov    %rbx,%r15
 23b:	b8 00 00 00 00       	mov    $0x0,%eax
 240:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 247:	00 00 00 
 24a:	49 01 d8             	add    %rbx,%r8
 24d:	41 ff d0             	call   *%r8
 250:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 257:	00 
 258:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 25f:	e9 ed 00 00 00       	jmp    351 <init_memory+0x351>
 264:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 26b:	00 00 00 
 26e:	8b 45 ec             	mov    -0x14(%rbp),%eax
 271:	48 63 d0             	movslq %eax,%rdx
 274:	48 01 d9             	add    %rbx,%rcx
 277:	48 89 d0             	mov    %rdx,%rax
 27a:	48 c1 e0 02          	shl    $0x2,%rax
 27e:	48 01 d0             	add    %rdx,%rax
 281:	48 c1 e0 02          	shl    $0x2,%rax
 285:	48 01 c8             	add    %rcx,%rax
 288:	48 83 c0 10          	add    $0x10,%rax
 28c:	8b 00                	mov    (%rax),%eax
 28e:	83 f8 01             	cmp    $0x1,%eax
 291:	0f 85 b2 00 00 00    	jne    349 <init_memory+0x349>
 297:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 29e:	00 00 00 
 2a1:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2a4:	48 63 d0             	movslq %eax,%rdx
 2a7:	48 01 d9             	add    %rbx,%rcx
 2aa:	48 89 d0             	mov    %rdx,%rax
 2ad:	48 c1 e0 02          	shl    $0x2,%rax
 2b1:	48 01 d0             	add    %rdx,%rax
 2b4:	48 c1 e0 02          	shl    $0x2,%rax
 2b8:	48 01 c8             	add    %rcx,%rax
 2bb:	48 8b 00             	mov    (%rax),%rax
 2be:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
 2c4:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 2ca:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 2ce:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 2d5:	00 00 00 
 2d8:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2db:	48 63 d0             	movslq %eax,%rdx
 2de:	48 01 d9             	add    %rbx,%rcx
 2e1:	48 89 d0             	mov    %rdx,%rax
 2e4:	48 c1 e0 02          	shl    $0x2,%rax
 2e8:	48 01 d0             	add    %rdx,%rax
 2eb:	48 c1 e0 02          	shl    $0x2,%rax
 2ef:	48 01 c8             	add    %rcx,%rax
 2f2:	48 8b 08             	mov    (%rax),%rcx
 2f5:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 2fc:	00 00 00 
 2ff:	8b 45 ec             	mov    -0x14(%rbp),%eax
 302:	48 63 d0             	movslq %eax,%rdx
 305:	48 89 d0             	mov    %rdx,%rax
 308:	48 c1 e0 02          	shl    $0x2,%rax
 30c:	48 01 d0             	add    %rdx,%rax
 30f:	48 c1 e0 02          	shl    $0x2,%rax
 313:	48 01 d8             	add    %rbx,%rax
 316:	48 01 f0             	add    %rsi,%rax
 319:	48 83 c0 08          	add    $0x8,%rax
 31d:	48 8b 00             	mov    (%rax),%rax
 320:	48 01 c8             	add    %rcx,%rax
 323:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 329:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 32d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 331:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
 335:	73 15                	jae    34c <init_memory+0x34c>
 337:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
 33b:	48 2b 45 c0          	sub    -0x40(%rbp),%rax
 33f:	48 c1 e8 15          	shr    $0x15,%rax
 343:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
 347:	eb 04                	jmp    34d <init_memory+0x34d>
 349:	90                   	nop
 34a:	eb 01                	jmp    34d <init_memory+0x34d>
 34c:	90                   	nop
 34d:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
 351:	8b 45 ec             	mov    -0x14(%rbp),%eax
 354:	48 98                	cltq
 356:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 35d:	00 00 00 
 360:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
 367:	00 
 368:	48 39 c2             	cmp    %rax,%rdx
 36b:	0f 83 f3 fe ff ff    	jae    264 <init_memory+0x264>
 371:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
 375:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 379:	49 89 d0             	mov    %rdx,%r8
 37c:	48 89 c1             	mov    %rax,%rcx
 37f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 386:	00 00 00 
 389:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 38d:	48 89 c2             	mov    %rax,%rdx
 390:	be 00 00 00 00       	mov    $0x0,%esi
 395:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 39a:	49 89 df             	mov    %rbx,%r15
 39d:	b8 00 00 00 00       	mov    $0x0,%eax
 3a2:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
 3a9:	00 00 00 
 3ac:	49 01 d9             	add    %rbx,%r9
 3af:	41 ff d1             	call   *%r9
 3b2:	90                   	nop
 3b3:	48 83 c4 40          	add    $0x40,%rsp
 3b7:	5b                   	pop    %rbx
 3b8:	41 5f                	pop    %r15
 3ba:	5d                   	pop    %rbp
 3bb:	c3                   	ret
