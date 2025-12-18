
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
  7a:	e9 8c 01 00 00       	jmp    20b <init_memory+0x20b>
  7f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  83:	48 8b 48 10          	mov    0x10(%rax),%rcx
  87:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  8b:	48 8b 50 08          	mov    0x8(%rax),%rdx
  8f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  93:	48 8b 00             	mov    (%rax),%rax
  96:	49 89 c9             	mov    %rcx,%r9
  99:	49 89 d0             	mov    %rdx,%r8
  9c:	48 89 c1             	mov    %rax,%rcx
  9f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  a6:	00 00 00 
  a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
  ad:	48 89 c2             	mov    %rax,%rdx
  b0:	be 00 00 00 00       	mov    $0x0,%esi
  b5:	bf 00 80 ff 00       	mov    $0xff8000,%edi
  ba:	49 89 df             	mov    %rbx,%r15
  bd:	b8 00 00 00 00       	mov    $0x0,%eax
  c2:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
  c9:	00 00 00 
  cc:	49 01 da             	add    %rbx,%r10
  cf:	41 ff d2             	call   *%r10
  d2:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  d9:	00 
  da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  de:	48 8b 40 10          	mov    0x10(%rax),%rax
  e2:	48 83 f8 01          	cmp    $0x1,%rax
  e6:	75 0c                	jne    f4 <init_memory+0xf4>
  e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  ec:	48 8b 40 08          	mov    0x8(%rax),%rax
  f0:	48 01 45 e0          	add    %rax,-0x20(%rbp)
  f4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  fb:	00 00 00 
  fe:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 101:	48 63 d0             	movslq %eax,%rdx
 104:	48 01 d9             	add    %rbx,%rcx
 107:	48 89 d0             	mov    %rdx,%rax
 10a:	48 01 c0             	add    %rax,%rax
 10d:	48 01 d0             	add    %rdx,%rax
 110:	48 c1 e0 03          	shl    $0x3,%rax
 114:	48 01 c8             	add    %rcx,%rax
 117:	48 8b 10             	mov    (%rax),%rdx
 11a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 11e:	48 8b 00             	mov    (%rax),%rax
 121:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 125:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 12c:	00 00 00 
 12f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 132:	48 63 d0             	movslq %eax,%rdx
 135:	48 01 de             	add    %rbx,%rsi
 138:	48 89 d0             	mov    %rdx,%rax
 13b:	48 01 c0             	add    %rax,%rax
 13e:	48 01 d0             	add    %rdx,%rax
 141:	48 c1 e0 03          	shl    $0x3,%rax
 145:	48 01 f0             	add    %rsi,%rax
 148:	48 89 08             	mov    %rcx,(%rax)
 14b:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 152:	00 00 00 
 155:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 158:	48 63 d0             	movslq %eax,%rdx
 15b:	48 89 d0             	mov    %rdx,%rax
 15e:	48 01 c0             	add    %rax,%rax
 161:	48 01 d0             	add    %rdx,%rax
 164:	48 c1 e0 03          	shl    $0x3,%rax
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
 194:	48 01 c0             	add    %rax,%rax
 197:	48 01 d0             	add    %rdx,%rax
 19a:	48 c1 e0 03          	shl    $0x3,%rax
 19e:	48 01 d8             	add    %rbx,%rax
 1a1:	48 01 f0             	add    %rsi,%rax
 1a4:	48 83 c0 08          	add    $0x8,%rax
 1a8:	48 89 08             	mov    %rcx,(%rax)
 1ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1af:	48 8b 48 10          	mov    0x10(%rax),%rcx
 1b3:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 1ba:	00 00 00 
 1bd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1c0:	48 63 d0             	movslq %eax,%rdx
 1c3:	48 01 de             	add    %rbx,%rsi
 1c6:	48 89 d0             	mov    %rdx,%rax
 1c9:	48 01 c0             	add    %rax,%rax
 1cc:	48 01 d0             	add    %rdx,%rax
 1cf:	48 c1 e0 03          	shl    $0x3,%rax
 1d3:	48 01 f0             	add    %rsi,%rax
 1d6:	48 83 c0 10          	add    $0x10,%rax
 1da:	48 89 08             	mov    %rcx,(%rax)
 1dd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
 1e0:	48 98                	cltq
 1e2:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
 1e9:	00 00 00 
 1ec:	48 89 84 13 00 03 00 	mov    %rax,0x300(%rbx,%rdx,1)
 1f3:	00 
 1f4:	48 83 45 d8 18       	addq   $0x18,-0x28(%rbp)
 1f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
 1fd:	48 8b 40 10          	mov    0x10(%rax),%rax
 201:	48 83 f8 04          	cmp    $0x4,%rax
 205:	77 10                	ja     217 <init_memory+0x217>
 207:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
 20b:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
 20f:	0f 8e 6a fe ff ff    	jle    7f <init_memory+0x7f>
 215:	eb 01                	jmp    218 <init_memory+0x218>
 217:	90                   	nop
 218:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 21c:	48 89 c1             	mov    %rax,%rcx
 21f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 226:	00 00 00 
 229:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 22d:	48 89 c2             	mov    %rax,%rdx
 230:	be 00 00 00 00       	mov    $0x0,%esi
 235:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 23a:	49 89 df             	mov    %rbx,%r15
 23d:	b8 00 00 00 00       	mov    $0x0,%eax
 242:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 249:	00 00 00 
 24c:	49 01 d8             	add    %rbx,%r8
 24f:	41 ff d0             	call   *%r8
 252:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
 259:	00 
 25a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 261:	e9 eb 00 00 00       	jmp    351 <init_memory+0x351>
 266:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 26d:	00 00 00 
 270:	8b 45 ec             	mov    -0x14(%rbp),%eax
 273:	48 63 d0             	movslq %eax,%rdx
 276:	48 01 d9             	add    %rbx,%rcx
 279:	48 89 d0             	mov    %rdx,%rax
 27c:	48 01 c0             	add    %rax,%rax
 27f:	48 01 d0             	add    %rdx,%rax
 282:	48 c1 e0 03          	shl    $0x3,%rax
 286:	48 01 c8             	add    %rcx,%rax
 289:	48 83 c0 10          	add    $0x10,%rax
 28d:	48 8b 00             	mov    (%rax),%rax
 290:	48 83 f8 01          	cmp    $0x1,%rax
 294:	0f 85 af 00 00 00    	jne    349 <init_memory+0x349>
 29a:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 2a1:	00 00 00 
 2a4:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2a7:	48 63 d0             	movslq %eax,%rdx
 2aa:	48 01 d9             	add    %rbx,%rcx
 2ad:	48 89 d0             	mov    %rdx,%rax
 2b0:	48 01 c0             	add    %rax,%rax
 2b3:	48 01 d0             	add    %rdx,%rax
 2b6:	48 c1 e0 03          	shl    $0x3,%rax
 2ba:	48 01 c8             	add    %rcx,%rax
 2bd:	48 8b 00             	mov    (%rax),%rax
 2c0:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
 2c6:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
 2cc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
 2d0:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 2d7:	00 00 00 
 2da:	8b 45 ec             	mov    -0x14(%rbp),%eax
 2dd:	48 63 d0             	movslq %eax,%rdx
 2e0:	48 01 d9             	add    %rbx,%rcx
 2e3:	48 89 d0             	mov    %rdx,%rax
 2e6:	48 01 c0             	add    %rax,%rax
 2e9:	48 01 d0             	add    %rdx,%rax
 2ec:	48 c1 e0 03          	shl    $0x3,%rax
 2f0:	48 01 c8             	add    %rcx,%rax
 2f3:	48 8b 08             	mov    (%rax),%rcx
 2f6:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
 2fd:	00 00 00 
 300:	8b 45 ec             	mov    -0x14(%rbp),%eax
 303:	48 63 d0             	movslq %eax,%rdx
 306:	48 89 d0             	mov    %rdx,%rax
 309:	48 01 c0             	add    %rax,%rax
 30c:	48 01 d0             	add    %rdx,%rax
 30f:	48 c1 e0 03          	shl    $0x3,%rax
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
 360:	48 8b 94 13 00 03 00 	mov    0x300(%rbx,%rdx,1),%rdx
 367:	00 
 368:	48 39 c2             	cmp    %rax,%rdx
 36b:	0f 83 f5 fe ff ff    	jae    266 <init_memory+0x266>
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
