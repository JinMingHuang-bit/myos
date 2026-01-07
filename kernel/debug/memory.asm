
memory.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Get_gdt>:
       0:	f3 0f 1e fa          	endbr64
       4:	55                   	push   %rbp
       5:	48 89 e5             	mov    %rsp,%rbp
       8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 8 <Get_gdt+0x8>
       f:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      16:	00 00 00 
      19:	4c 01 d8             	add    %r11,%rax
      1c:	0f 20 d8             	mov    %cr3,%rax
      1f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      23:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      27:	5d                   	pop    %rbp
      28:	c3                   	ret

0000000000000029 <Cmemset>:
      29:	f3 0f 1e fa          	endbr64
      2d:	55                   	push   %rbp
      2e:	48 89 e5             	mov    %rsp,%rbp
      31:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 31 <Cmemset+0x8>
      38:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
      3f:	00 00 00 
      42:	4c 01 d8             	add    %r11,%rax
      45:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
      49:	89 f0                	mov    %esi,%eax
      4b:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
      4f:	88 45 d4             	mov    %al,-0x2c(%rbp)
      52:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
      56:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      5a:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
      5e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      66:	48 c1 e0 08          	shl    $0x8,%rax
      6a:	48 09 45 e8          	or     %rax,-0x18(%rbp)
      6e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      72:	48 c1 e0 10          	shl    $0x10,%rax
      76:	48 09 45 e8          	or     %rax,-0x18(%rbp)
      7a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      7e:	48 c1 e0 20          	shl    $0x20,%rax
      82:	48 09 45 e8          	or     %rax,-0x18(%rbp)
      86:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
      8a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
      8e:	eb 15                	jmp    a5 <Cmemset+0x7c>
      90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      94:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
      98:	48 89 10             	mov    %rdx,(%rax)
      9b:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
      a0:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
      a5:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
      aa:	7f e4                	jg     90 <Cmemset+0x67>
      ac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      b0:	83 e0 04             	and    $0x4,%eax
      b3:	48 85 c0             	test   %rax,%rax
      b6:	74 11                	je     c9 <Cmemset+0xa0>
      b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      bc:	89 c2                	mov    %eax,%edx
      be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      c2:	89 10                	mov    %edx,(%rax)
      c4:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
      c9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      cd:	83 e0 02             	and    $0x2,%eax
      d0:	48 85 c0             	test   %rax,%rax
      d3:	74 12                	je     e7 <Cmemset+0xbe>
      d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
      d9:	89 c2                	mov    %eax,%edx
      db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      df:	66 89 10             	mov    %dx,(%rax)
      e2:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
      e7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
      eb:	83 e0 01             	and    $0x1,%eax
      ee:	48 85 c0             	test   %rax,%rax
      f1:	74 0a                	je     fd <Cmemset+0xd4>
      f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      f7:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
      fb:	88 10                	mov    %dl,(%rax)
      fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     101:	5d                   	pop    %rbp
     102:	c3                   	ret

0000000000000103 <init_memory>:
     103:	f3 0f 1e fa          	endbr64
     107:	55                   	push   %rbp
     108:	48 89 e5             	mov    %rsp,%rbp
     10b:	41 57                	push   %r15
     10d:	53                   	push   %rbx
     10e:	48 83 ec 70          	sub    $0x70,%rsp
     112:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # 112 <init_memory+0xf>
     119:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
     120:	00 00 00 
     123:	4c 01 db             	add    %r11,%rbx
     126:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     12d:	00 
     12e:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
     135:	00 
     136:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     13d:	00 00 00 
     140:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     144:	48 89 c2             	mov    %rax,%rdx
     147:	be 00 00 00 00       	mov    $0x0,%esi
     14c:	bf ff 00 00 00       	mov    $0xff,%edi
     151:	49 89 df             	mov    %rbx,%r15
     154:	b8 00 00 00 00       	mov    $0x0,%eax
     159:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     160:	00 00 00 
     163:	48 01 d9             	add    %rbx,%rcx
     166:	ff d1                	call   *%rcx
     168:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
     16f:	80 ff ff 
     172:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
     176:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
     17d:	e9 a2 01 00 00       	jmp    324 <init_memory+0x221>
     182:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     186:	8b 48 10             	mov    0x10(%rax),%ecx
     189:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     18d:	48 8b 50 08          	mov    0x8(%rax),%rdx
     191:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     195:	48 8b 00             	mov    (%rax),%rax
     198:	41 89 c9             	mov    %ecx,%r9d
     19b:	49 89 d0             	mov    %rdx,%r8
     19e:	48 89 c1             	mov    %rax,%rcx
     1a1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     1a8:	00 00 00 
     1ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     1af:	48 89 c2             	mov    %rax,%rdx
     1b2:	be 00 00 00 00       	mov    $0x0,%esi
     1b7:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     1bc:	49 89 df             	mov    %rbx,%r15
     1bf:	b8 00 00 00 00       	mov    $0x0,%eax
     1c4:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     1cb:	00 00 00 
     1ce:	49 01 da             	add    %rbx,%r10
     1d1:	41 ff d2             	call   *%r10
     1d4:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
     1db:	00 
     1dc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     1e0:	8b 40 10             	mov    0x10(%rax),%eax
     1e3:	83 f8 01             	cmp    $0x1,%eax
     1e6:	75 0c                	jne    1f4 <init_memory+0xf1>
     1e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     1ec:	48 8b 40 08          	mov    0x8(%rax),%rax
     1f0:	48 01 45 e0          	add    %rax,-0x20(%rbp)
     1f4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     1fb:	00 00 00 
     1fe:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     201:	48 63 d0             	movslq %eax,%rdx
     204:	48 01 d9             	add    %rbx,%rcx
     207:	48 89 d0             	mov    %rdx,%rax
     20a:	48 c1 e0 02          	shl    $0x2,%rax
     20e:	48 01 d0             	add    %rdx,%rax
     211:	48 c1 e0 02          	shl    $0x2,%rax
     215:	48 01 c8             	add    %rcx,%rax
     218:	48 8b 10             	mov    (%rax),%rdx
     21b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     21f:	48 8b 00             	mov    (%rax),%rax
     222:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     226:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     22d:	00 00 00 
     230:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     233:	48 63 d0             	movslq %eax,%rdx
     236:	48 01 de             	add    %rbx,%rsi
     239:	48 89 d0             	mov    %rdx,%rax
     23c:	48 c1 e0 02          	shl    $0x2,%rax
     240:	48 01 d0             	add    %rdx,%rax
     243:	48 c1 e0 02          	shl    $0x2,%rax
     247:	48 01 f0             	add    %rsi,%rax
     24a:	48 89 08             	mov    %rcx,(%rax)
     24d:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     254:	00 00 00 
     257:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     25a:	48 63 d0             	movslq %eax,%rdx
     25d:	48 89 d0             	mov    %rdx,%rax
     260:	48 c1 e0 02          	shl    $0x2,%rax
     264:	48 01 d0             	add    %rdx,%rax
     267:	48 c1 e0 02          	shl    $0x2,%rax
     26b:	48 01 d8             	add    %rbx,%rax
     26e:	48 01 c8             	add    %rcx,%rax
     271:	48 83 c0 08          	add    $0x8,%rax
     275:	48 8b 10             	mov    (%rax),%rdx
     278:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     27c:	48 8b 40 08          	mov    0x8(%rax),%rax
     280:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
     284:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     28b:	00 00 00 
     28e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     291:	48 63 d0             	movslq %eax,%rdx
     294:	48 89 d0             	mov    %rdx,%rax
     297:	48 c1 e0 02          	shl    $0x2,%rax
     29b:	48 01 d0             	add    %rdx,%rax
     29e:	48 c1 e0 02          	shl    $0x2,%rax
     2a2:	48 01 d8             	add    %rbx,%rax
     2a5:	48 01 f0             	add    %rsi,%rax
     2a8:	48 83 c0 08          	add    $0x8,%rax
     2ac:	48 89 08             	mov    %rcx,(%rax)
     2af:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     2b3:	8b 48 10             	mov    0x10(%rax),%ecx
     2b6:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     2bd:	00 00 00 
     2c0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     2c3:	48 63 d0             	movslq %eax,%rdx
     2c6:	48 01 de             	add    %rbx,%rsi
     2c9:	48 89 d0             	mov    %rdx,%rax
     2cc:	48 c1 e0 02          	shl    $0x2,%rax
     2d0:	48 01 d0             	add    %rdx,%rax
     2d3:	48 c1 e0 02          	shl    $0x2,%rax
     2d7:	48 01 f0             	add    %rsi,%rax
     2da:	48 83 c0 10          	add    $0x10,%rax
     2de:	89 08                	mov    %ecx,(%rax)
     2e0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
     2e3:	48 98                	cltq
     2e5:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     2ec:	00 00 00 
     2ef:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
     2f6:	00 
     2f7:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
     2fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     300:	8b 40 10             	mov    0x10(%rax),%eax
     303:	83 f8 04             	cmp    $0x4,%eax
     306:	77 26                	ja     32e <init_memory+0x22b>
     308:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     30c:	48 8b 40 08          	mov    0x8(%rax),%rax
     310:	48 85 c0             	test   %rax,%rax
     313:	74 19                	je     32e <init_memory+0x22b>
     315:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
     319:	8b 40 10             	mov    0x10(%rax),%eax
     31c:	85 c0                	test   %eax,%eax
     31e:	74 0e                	je     32e <init_memory+0x22b>
     320:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
     324:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
     328:	0f 8e 54 fe ff ff    	jle    182 <init_memory+0x7f>
     32e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     332:	48 89 c1             	mov    %rax,%rcx
     335:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     33c:	00 00 00 
     33f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     343:	48 89 c2             	mov    %rax,%rdx
     346:	be 00 00 00 00       	mov    $0x0,%esi
     34b:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     350:	49 89 df             	mov    %rbx,%r15
     353:	b8 00 00 00 00       	mov    $0x0,%eax
     358:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     35f:	00 00 00 
     362:	49 01 d8             	add    %rbx,%r8
     365:	41 ff d0             	call   *%r8
     368:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
     36f:	00 
     370:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     377:	e9 ed 00 00 00       	jmp    469 <init_memory+0x366>
     37c:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     383:	00 00 00 
     386:	8b 45 ec             	mov    -0x14(%rbp),%eax
     389:	48 63 d0             	movslq %eax,%rdx
     38c:	48 01 d9             	add    %rbx,%rcx
     38f:	48 89 d0             	mov    %rdx,%rax
     392:	48 c1 e0 02          	shl    $0x2,%rax
     396:	48 01 d0             	add    %rdx,%rax
     399:	48 c1 e0 02          	shl    $0x2,%rax
     39d:	48 01 c8             	add    %rcx,%rax
     3a0:	48 83 c0 10          	add    $0x10,%rax
     3a4:	8b 00                	mov    (%rax),%eax
     3a6:	83 f8 01             	cmp    $0x1,%eax
     3a9:	0f 85 b2 00 00 00    	jne    461 <init_memory+0x35e>
     3af:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     3b6:	00 00 00 
     3b9:	8b 45 ec             	mov    -0x14(%rbp),%eax
     3bc:	48 63 d0             	movslq %eax,%rdx
     3bf:	48 01 d9             	add    %rbx,%rcx
     3c2:	48 89 d0             	mov    %rdx,%rax
     3c5:	48 c1 e0 02          	shl    $0x2,%rax
     3c9:	48 01 d0             	add    %rdx,%rax
     3cc:	48 c1 e0 02          	shl    $0x2,%rax
     3d0:	48 01 c8             	add    %rcx,%rax
     3d3:	48 8b 00             	mov    (%rax),%rax
     3d6:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     3dc:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     3e2:	48 89 45 88          	mov    %rax,-0x78(%rbp)
     3e6:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     3ed:	00 00 00 
     3f0:	8b 45 ec             	mov    -0x14(%rbp),%eax
     3f3:	48 63 d0             	movslq %eax,%rdx
     3f6:	48 01 d9             	add    %rbx,%rcx
     3f9:	48 89 d0             	mov    %rdx,%rax
     3fc:	48 c1 e0 02          	shl    $0x2,%rax
     400:	48 01 d0             	add    %rdx,%rax
     403:	48 c1 e0 02          	shl    $0x2,%rax
     407:	48 01 c8             	add    %rcx,%rax
     40a:	48 8b 08             	mov    (%rax),%rcx
     40d:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     414:	00 00 00 
     417:	8b 45 ec             	mov    -0x14(%rbp),%eax
     41a:	48 63 d0             	movslq %eax,%rdx
     41d:	48 89 d0             	mov    %rdx,%rax
     420:	48 c1 e0 02          	shl    $0x2,%rax
     424:	48 01 d0             	add    %rdx,%rax
     427:	48 c1 e0 02          	shl    $0x2,%rax
     42b:	48 01 d8             	add    %rbx,%rax
     42e:	48 01 f0             	add    %rsi,%rax
     431:	48 83 c0 08          	add    $0x8,%rax
     435:	48 8b 00             	mov    (%rax),%rax
     438:	48 01 c8             	add    %rcx,%rax
     43b:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     441:	48 89 45 80          	mov    %rax,-0x80(%rbp)
     445:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     449:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
     44d:	73 15                	jae    464 <init_memory+0x361>
     44f:	48 8b 45 80          	mov    -0x80(%rbp),%rax
     453:	48 2b 45 88          	sub    -0x78(%rbp),%rax
     457:	48 c1 e8 15          	shr    $0x15,%rax
     45b:	48 01 45 e0          	add    %rax,-0x20(%rbp)
     45f:	eb 04                	jmp    465 <init_memory+0x362>
     461:	90                   	nop
     462:	eb 01                	jmp    465 <init_memory+0x362>
     464:	90                   	nop
     465:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     469:	8b 45 ec             	mov    -0x14(%rbp),%eax
     46c:	48 98                	cltq
     46e:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     475:	00 00 00 
     478:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     47f:	00 
     480:	48 39 c2             	cmp    %rax,%rdx
     483:	0f 83 f3 fe ff ff    	jae    37c <init_memory+0x279>
     489:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     48d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     491:	49 89 d0             	mov    %rdx,%r8
     494:	48 89 c1             	mov    %rax,%rcx
     497:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     49e:	00 00 00 
     4a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     4a5:	48 89 c2             	mov    %rax,%rdx
     4a8:	be 00 00 00 00       	mov    $0x0,%esi
     4ad:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     4b2:	49 89 df             	mov    %rbx,%r15
     4b5:	b8 00 00 00 00       	mov    $0x0,%eax
     4ba:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     4c1:	00 00 00 
     4c4:	49 01 d9             	add    %rbx,%r9
     4c7:	41 ff d1             	call   *%r9
     4ca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4d1:	00 00 00 
     4d4:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     4db:	00 
     4dc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     4e3:	00 00 00 
     4e6:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
     4ea:	48 89 d0             	mov    %rdx,%rax
     4ed:	48 c1 e0 02          	shl    $0x2,%rax
     4f1:	48 01 d0             	add    %rdx,%rax
     4f4:	48 c1 e0 02          	shl    $0x2,%rax
     4f8:	48 01 c8             	add    %rcx,%rax
     4fb:	48 8b 08             	mov    (%rax),%rcx
     4fe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     505:	00 00 00 
     508:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
     50f:	00 
     510:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     517:	00 00 00 
     51a:	48 89 d0             	mov    %rdx,%rax
     51d:	48 c1 e0 02          	shl    $0x2,%rax
     521:	48 01 d0             	add    %rdx,%rax
     524:	48 c1 e0 02          	shl    $0x2,%rax
     528:	48 01 d8             	add    %rbx,%rax
     52b:	48 01 f0             	add    %rsi,%rax
     52e:	48 83 c0 08          	add    $0x8,%rax
     532:	48 8b 00             	mov    (%rax),%rax
     535:	48 01 c8             	add    %rcx,%rax
     538:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
     53c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
     540:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     544:	49 89 d0             	mov    %rdx,%r8
     547:	48 89 c1             	mov    %rax,%rcx
     54a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     551:	00 00 00 
     554:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     558:	48 89 c2             	mov    %rax,%rdx
     55b:	be 00 00 00 00       	mov    $0x0,%esi
     560:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     565:	49 89 df             	mov    %rbx,%r15
     568:	b8 00 00 00 00       	mov    $0x0,%eax
     56d:	49 b9 00 00 00 00 00 	movabs $0x0,%r9
     574:	00 00 00 
     577:	49 01 d9             	add    %rbx,%r9
     57a:	41 ff d1             	call   *%r9
     57d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     584:	00 00 00 
     587:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
     58e:	00 
     58f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     595:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     59b:	48 89 c2             	mov    %rax,%rdx
     59e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5a5:	00 00 00 
     5a8:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
     5af:	00 
     5b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5b4:	48 c1 e8 15          	shr    $0x15,%rax
     5b8:	48 89 c2             	mov    %rax,%rdx
     5bb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5c2:	00 00 00 
     5c5:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
     5cc:	00 
     5cd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     5d1:	48 c1 e8 15          	shr    $0x15,%rax
     5d5:	48 83 c0 3f          	add    $0x3f,%rax
     5d9:	48 c1 e8 03          	shr    $0x3,%rax
     5dd:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     5e1:	48 89 c2             	mov    %rax,%rdx
     5e4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5eb:	00 00 00 
     5ee:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
     5f5:	00 
     5f6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     5fd:	00 00 00 
     600:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     607:	00 
     608:	48 89 c2             	mov    %rax,%rdx
     60b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     612:	00 00 00 
     615:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     61c:	00 
     61d:	be ff 00 00 00       	mov    $0xff,%esi
     622:	48 89 c7             	mov    %rax,%rdi
     625:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     62c:	00 00 00 
     62f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     633:	ff d0                	call   *%rax
     635:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     63c:	00 00 00 
     63f:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     646:	00 
     647:	48 89 c2             	mov    %rax,%rdx
     64a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     651:	00 00 00 
     654:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
     65b:	00 
     65c:	48 01 d0             	add    %rdx,%rax
     65f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     665:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     66b:	48 89 c2             	mov    %rax,%rdx
     66e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     675:	00 00 00 
     678:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
     67f:	00 
     680:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     684:	48 c1 e8 15          	shr    $0x15,%rax
     688:	48 89 c2             	mov    %rax,%rdx
     68b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     692:	00 00 00 
     695:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
     69c:	00 
     69d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
     6a1:	48 c1 e8 15          	shr    $0x15,%rax
     6a5:	48 89 c2             	mov    %rax,%rdx
     6a8:	48 89 d0             	mov    %rdx,%rax
     6ab:	48 c1 e0 02          	shl    $0x2,%rax
     6af:	48 01 d0             	add    %rdx,%rax
     6b2:	48 c1 e0 03          	shl    $0x3,%rax
     6b6:	48 83 c0 07          	add    $0x7,%rax
     6ba:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     6be:	48 89 c2             	mov    %rax,%rdx
     6c1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6c8:	00 00 00 
     6cb:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
     6d2:	00 
     6d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6da:	00 00 00 
     6dd:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     6e4:	00 
     6e5:	48 89 c2             	mov    %rax,%rdx
     6e8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     6ef:	00 00 00 
     6f2:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     6f9:	00 
     6fa:	be 00 00 00 00       	mov    $0x0,%esi
     6ff:	48 89 c7             	mov    %rax,%rdi
     702:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     709:	00 00 00 
     70c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     710:	ff d0                	call   *%rax
     712:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     719:	00 00 00 
     71c:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     723:	00 
     724:	48 89 c2             	mov    %rax,%rdx
     727:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     72e:	00 00 00 
     731:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
     738:	00 
     739:	48 01 d0             	add    %rdx,%rax
     73c:	48 05 ff 0f 00 00    	add    $0xfff,%rax
     742:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
     748:	48 89 c2             	mov    %rax,%rdx
     74b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     752:	00 00 00 
     755:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
     75c:	00 
     75d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     764:	00 00 00 
     767:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
     76e:	00 00 00 00 00 
     773:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     77a:	00 00 00 
     77d:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
     784:	00 90 01 00 00 
     789:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     790:	00 00 00 
     793:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
     79a:	00 
     79b:	48 89 c2             	mov    %rax,%rdx
     79e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7a5:	00 00 00 
     7a8:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     7af:	00 
     7b0:	be 00 00 00 00       	mov    $0x0,%esi
     7b5:	48 89 c7             	mov    %rax,%rdi
     7b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     7bf:	00 00 00 
     7c2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     7c6:	ff d0                	call   *%rax
     7c8:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     7cf:	e9 f8 02 00 00       	jmp    acc <init_memory+0x9c9>
     7d4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     7db:	00 00 00 
     7de:	8b 45 ec             	mov    -0x14(%rbp),%eax
     7e1:	48 63 d0             	movslq %eax,%rdx
     7e4:	48 01 d9             	add    %rbx,%rcx
     7e7:	48 89 d0             	mov    %rdx,%rax
     7ea:	48 c1 e0 02          	shl    $0x2,%rax
     7ee:	48 01 d0             	add    %rdx,%rax
     7f1:	48 c1 e0 02          	shl    $0x2,%rax
     7f5:	48 01 c8             	add    %rcx,%rax
     7f8:	48 83 c0 10          	add    $0x10,%rax
     7fc:	8b 00                	mov    (%rax),%eax
     7fe:	83 f8 01             	cmp    $0x1,%eax
     801:	0f 85 bd 02 00 00    	jne    ac4 <init_memory+0x9c1>
     807:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     80e:	00 00 00 
     811:	8b 45 ec             	mov    -0x14(%rbp),%eax
     814:	48 63 d0             	movslq %eax,%rdx
     817:	48 01 d9             	add    %rbx,%rcx
     81a:	48 89 d0             	mov    %rdx,%rax
     81d:	48 c1 e0 02          	shl    $0x2,%rax
     821:	48 01 d0             	add    %rdx,%rax
     824:	48 c1 e0 02          	shl    $0x2,%rax
     828:	48 01 c8             	add    %rcx,%rax
     82b:	48 8b 00             	mov    (%rax),%rax
     82e:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
     834:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     83a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
     83e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
     845:	00 00 00 
     848:	8b 45 ec             	mov    -0x14(%rbp),%eax
     84b:	48 63 d0             	movslq %eax,%rdx
     84e:	48 01 d9             	add    %rbx,%rcx
     851:	48 89 d0             	mov    %rdx,%rax
     854:	48 c1 e0 02          	shl    $0x2,%rax
     858:	48 01 d0             	add    %rdx,%rax
     85b:	48 c1 e0 02          	shl    $0x2,%rax
     85f:	48 01 c8             	add    %rcx,%rax
     862:	48 8b 08             	mov    (%rax),%rcx
     865:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
     86c:	00 00 00 
     86f:	8b 45 ec             	mov    -0x14(%rbp),%eax
     872:	48 63 d0             	movslq %eax,%rdx
     875:	48 89 d0             	mov    %rdx,%rax
     878:	48 c1 e0 02          	shl    $0x2,%rax
     87c:	48 01 d0             	add    %rdx,%rax
     87f:	48 c1 e0 02          	shl    $0x2,%rax
     883:	48 01 d8             	add    %rbx,%rax
     886:	48 01 f0             	add    %rsi,%rax
     889:	48 83 c0 08          	add    $0x8,%rax
     88d:	48 8b 00             	mov    (%rax),%rax
     890:	48 01 c8             	add    %rcx,%rax
     893:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
     899:	48 89 45 98          	mov    %rax,-0x68(%rbp)
     89d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     8a1:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
     8a5:	0f 83 1c 02 00 00    	jae    ac7 <init_memory+0x9c4>
     8ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8b2:	00 00 00 
     8b5:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     8bc:	00 
     8bd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8c4:	00 00 00 
     8c7:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     8ce:	00 
     8cf:	48 89 d0             	mov    %rdx,%rax
     8d2:	48 c1 e0 02          	shl    $0x2,%rax
     8d6:	48 01 d0             	add    %rdx,%rax
     8d9:	48 c1 e0 04          	shl    $0x4,%rax
     8dd:	48 01 c8             	add    %rcx,%rax
     8e0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
     8e4:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     8eb:	00 00 00 
     8ee:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     8f5:	00 
     8f6:	48 8d 50 01          	lea    0x1(%rax),%rdx
     8fa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     901:	00 00 00 
     904:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
     90b:	00 
     90c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     910:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
     914:	48 89 50 10          	mov    %rdx,0x10(%rax)
     918:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     91c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
     920:	48 89 50 18          	mov    %rdx,0x18(%rax)
     924:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     928:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     92c:	48 89 c2             	mov    %rax,%rdx
     92f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     933:	48 89 50 20          	mov    %rdx,0x20(%rax)
     937:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     93b:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
     942:	00 
     943:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     947:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     94b:	48 c1 e8 15          	shr    $0x15,%rax
     94f:	48 89 c2             	mov    %rax,%rdx
     952:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     956:	48 89 50 40          	mov    %rdx,0x40(%rax)
     95a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     95e:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
     965:	00 
     966:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     96a:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
     971:	00 
     972:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     976:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     97d:	00 00 00 
     980:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
     984:	48 89 50 30          	mov    %rdx,0x30(%rax)
     988:	48 8b 45 98          	mov    -0x68(%rbp),%rax
     98c:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
     990:	48 c1 e8 15          	shr    $0x15,%rax
     994:	48 89 c2             	mov    %rax,%rdx
     997:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     99b:	48 89 50 08          	mov    %rdx,0x8(%rax)
     99f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     9a6:	00 00 00 
     9a9:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
     9b0:	00 
     9b1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     9b5:	48 c1 e8 15          	shr    $0x15,%rax
     9b9:	48 89 c2             	mov    %rax,%rdx
     9bc:	48 89 d0             	mov    %rdx,%rax
     9bf:	48 c1 e0 02          	shl    $0x2,%rax
     9c3:	48 01 d0             	add    %rdx,%rax
     9c6:	48 c1 e0 03          	shl    $0x3,%rax
     9ca:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     9ce:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     9d2:	48 89 10             	mov    %rdx,(%rax)
     9d5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     9d9:	48 8b 00             	mov    (%rax),%rax
     9dc:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
     9e0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
     9e7:	e9 bf 00 00 00       	jmp    aab <init_memory+0x9a8>
     9ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     9f0:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
     9f4:	48 89 10             	mov    %rdx,(%rax)
     9f7:	8b 45 e8             	mov    -0x18(%rbp),%eax
     9fa:	48 98                	cltq
     9fc:	48 c1 e0 15          	shl    $0x15,%rax
     a00:	48 89 c2             	mov    %rax,%rdx
     a03:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
     a07:	48 01 c2             	add    %rax,%rdx
     a0a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a0e:	48 89 50 08          	mov    %rdx,0x8(%rax)
     a12:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a16:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     a1d:	00 
     a1e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a22:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     a29:	00 
     a2a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a2e:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     a35:	00 
     a36:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a3d:	00 00 00 
     a40:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
     a47:	00 
     a48:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a4c:	48 8b 40 08          	mov    0x8(%rax),%rax
     a50:	48 c1 e8 1b          	shr    $0x1b,%rax
     a54:	48 c1 e0 03          	shl    $0x3,%rax
     a58:	48 01 d0             	add    %rdx,%rax
     a5b:	48 8b 10             	mov    (%rax),%rdx
     a5e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a62:	48 8b 40 08          	mov    0x8(%rax),%rax
     a66:	48 c1 e8 15          	shr    $0x15,%rax
     a6a:	83 e0 3f             	and    $0x3f,%eax
     a6d:	be 01 00 00 00       	mov    $0x1,%esi
     a72:	89 c1                	mov    %eax,%ecx
     a74:	48 d3 e6             	shl    %cl,%rsi
     a77:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     a7e:	00 00 00 
     a81:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
     a88:	00 
     a89:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
     a8d:	48 8b 40 08          	mov    0x8(%rax),%rax
     a91:	48 c1 e8 1b          	shr    $0x1b,%rax
     a95:	48 c1 e0 03          	shl    $0x3,%rax
     a99:	48 01 c8             	add    %rcx,%rax
     a9c:	48 31 f2             	xor    %rsi,%rdx
     a9f:	48 89 10             	mov    %rdx,(%rax)
     aa2:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
     aa6:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
     aab:	8b 45 e8             	mov    -0x18(%rbp),%eax
     aae:	48 63 d0             	movslq %eax,%rdx
     ab1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
     ab5:	48 8b 40 08          	mov    0x8(%rax),%rax
     ab9:	48 39 c2             	cmp    %rax,%rdx
     abc:	0f 82 2a ff ff ff    	jb     9ec <init_memory+0x8e9>
     ac2:	eb 04                	jmp    ac8 <init_memory+0x9c5>
     ac4:	90                   	nop
     ac5:	eb 01                	jmp    ac8 <init_memory+0x9c5>
     ac7:	90                   	nop
     ac8:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     acc:	8b 45 ec             	mov    -0x14(%rbp),%eax
     acf:	48 98                	cltq
     ad1:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     ad8:	00 00 00 
     adb:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
     ae2:	00 
     ae3:	48 39 c2             	cmp    %rax,%rdx
     ae6:	0f 83 e8 fc ff ff    	jae    7d4 <init_memory+0x6d1>
     aec:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     af3:	00 00 00 
     af6:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     afd:	00 
     afe:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     b05:	00 00 00 
     b08:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
     b0f:	00 
     b10:	48 89 10             	mov    %rdx,(%rax)
     b13:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b1a:	00 00 00 
     b1d:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     b24:	00 
     b25:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
     b2c:	00 
     b2d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b34:	00 00 00 
     b37:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     b3e:	00 
     b3f:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
     b46:	00 
     b47:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b4e:	00 00 00 
     b51:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     b58:	00 
     b59:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
     b60:	00 
     b61:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b68:	00 00 00 
     b6b:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     b72:	00 
     b73:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
     b7a:	00 
     b7b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     b82:	00 00 00 
     b85:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     b8c:	00 
     b8d:	48 89 d0             	mov    %rdx,%rax
     b90:	48 c1 e0 02          	shl    $0x2,%rax
     b94:	48 01 d0             	add    %rdx,%rax
     b97:	48 c1 e0 04          	shl    $0x4,%rax
     b9b:	48 83 c0 07          	add    $0x7,%rax
     b9f:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     ba3:	48 89 c2             	mov    %rax,%rdx
     ba6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bad:	00 00 00 
     bb0:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
     bb7:	00 
     bb8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bbf:	00 00 00 
     bc2:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
     bc9:	00 
     bca:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bd1:	00 00 00 
     bd4:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
     bdb:	00 
     bdc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     be3:	00 00 00 
     be6:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
     bed:	00 
     bee:	49 89 c9             	mov    %rcx,%r9
     bf1:	49 89 d0             	mov    %rdx,%r8
     bf4:	48 89 c1             	mov    %rax,%rcx
     bf7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     bfe:	00 00 00 
     c01:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c05:	48 89 c2             	mov    %rax,%rdx
     c08:	be 00 00 00 00       	mov    $0x0,%esi
     c0d:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     c12:	49 89 df             	mov    %rbx,%r15
     c15:	b8 00 00 00 00       	mov    $0x0,%eax
     c1a:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     c21:	00 00 00 
     c24:	49 01 da             	add    %rbx,%r10
     c27:	41 ff d2             	call   *%r10
     c2a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c31:	00 00 00 
     c34:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
     c3b:	00 
     c3c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c43:	00 00 00 
     c46:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
     c4d:	00 
     c4e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c55:	00 00 00 
     c58:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
     c5f:	00 
     c60:	49 89 c9             	mov    %rcx,%r9
     c63:	49 89 d0             	mov    %rdx,%r8
     c66:	48 89 c1             	mov    %rax,%rcx
     c69:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     c70:	00 00 00 
     c73:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     c77:	48 89 c2             	mov    %rax,%rdx
     c7a:	be 00 00 00 00       	mov    $0x0,%esi
     c7f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     c84:	49 89 df             	mov    %rbx,%r15
     c87:	b8 00 00 00 00       	mov    $0x0,%eax
     c8c:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     c93:	00 00 00 
     c96:	49 01 da             	add    %rbx,%r10
     c99:	41 ff d2             	call   *%r10
     c9c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ca3:	00 00 00 
     ca6:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
     cad:	00 
     cae:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cb5:	00 00 00 
     cb8:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
     cbf:	00 
     cc0:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     cc7:	00 00 00 
     cca:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     cd1:	00 
     cd2:	49 89 c9             	mov    %rcx,%r9
     cd5:	49 89 d0             	mov    %rdx,%r8
     cd8:	48 89 c1             	mov    %rax,%rcx
     cdb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ce2:	00 00 00 
     ce5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     ce9:	48 89 c2             	mov    %rax,%rdx
     cec:	be 00 00 00 00       	mov    $0x0,%esi
     cf1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     cf6:	49 89 df             	mov    %rbx,%r15
     cf9:	b8 00 00 00 00       	mov    $0x0,%eax
     cfe:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     d05:	00 00 00 
     d08:	49 01 da             	add    %rbx,%r10
     d0b:	41 ff d2             	call   *%r10
     d0e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
     d15:	e9 c1 00 00 00       	jmp    ddb <init_memory+0xcd8>
     d1a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d21:	00 00 00 
     d24:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
     d2b:	00 
     d2c:	8b 45 ec             	mov    -0x14(%rbp),%eax
     d2f:	48 63 d0             	movslq %eax,%rdx
     d32:	48 89 d0             	mov    %rdx,%rax
     d35:	48 c1 e0 02          	shl    $0x2,%rax
     d39:	48 01 d0             	add    %rdx,%rax
     d3c:	48 c1 e0 04          	shl    $0x4,%rax
     d40:	48 01 c8             	add    %rcx,%rax
     d43:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
     d47:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     d4b:	48 8b 48 08          	mov    0x8(%rax),%rcx
     d4f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     d53:	48 8b 10             	mov    (%rax),%rdx
     d56:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     d5a:	48 8b 78 20          	mov    0x20(%rax),%rdi
     d5e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     d62:	48 8b 70 18          	mov    0x18(%rax),%rsi
     d66:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     d6a:	48 8b 40 10          	mov    0x10(%rax),%rax
     d6e:	51                   	push   %rcx
     d6f:	52                   	push   %rdx
     d70:	49 89 f9             	mov    %rdi,%r9
     d73:	49 89 f0             	mov    %rsi,%r8
     d76:	48 89 c1             	mov    %rax,%rcx
     d79:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     d80:	00 00 00 
     d83:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     d87:	48 89 c2             	mov    %rax,%rdx
     d8a:	be 00 00 00 00       	mov    $0x0,%esi
     d8f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     d94:	49 89 df             	mov    %rbx,%r15
     d97:	b8 00 00 00 00       	mov    $0x0,%eax
     d9c:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     da3:	00 00 00 
     da6:	49 01 da             	add    %rbx,%r10
     da9:	41 ff d2             	call   *%r10
     dac:	48 83 c4 10          	add    $0x10,%rsp
     db0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
     db4:	48 8b 50 10          	mov    0x10(%rax),%rdx
     db8:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
     dbf:	00 00 00 
     dc2:	48 39 c2             	cmp    %rax,%rdx
     dc5:	75 10                	jne    dd7 <init_memory+0xcd4>
     dc7:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     dce:	00 00 00 
     dd1:	8b 45 ec             	mov    -0x14(%rbp),%eax
     dd4:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
     dd7:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
     ddb:	8b 45 ec             	mov    -0x14(%rbp),%eax
     dde:	48 63 d0             	movslq %eax,%rdx
     de1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     de8:	00 00 00 
     deb:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
     df2:	00 
     df3:	48 39 c2             	cmp    %rax,%rdx
     df6:	0f 82 1e ff ff ff    	jb     d1a <init_memory+0xc17>
     dfc:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e03:	00 00 00 
     e06:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
     e0d:	00 
     e0e:	48 89 c2             	mov    %rax,%rdx
     e11:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e18:	00 00 00 
     e1b:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
     e22:	00 
     e23:	48 01 d0             	add    %rdx,%rax
     e26:	48 05 00 01 00 00    	add    $0x100,%rax
     e2c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
     e30:	48 89 c2             	mov    %rax,%rdx
     e33:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e3a:	00 00 00 
     e3d:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
     e44:	00 
     e45:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e4c:	00 00 00 
     e4f:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
     e56:	00 
     e57:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e5e:	00 00 00 
     e61:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
     e68:	00 
     e69:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e70:	00 00 00 
     e73:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
     e7a:	00 
     e7b:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e82:	00 00 00 
     e85:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
     e8c:	00 
     e8d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     e94:	00 00 00 
     e97:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
     e9e:	00 
     e9f:	51                   	push   %rcx
     ea0:	52                   	push   %rdx
     ea1:	49 89 f9             	mov    %rdi,%r9
     ea4:	49 89 f0             	mov    %rsi,%r8
     ea7:	48 89 c1             	mov    %rax,%rcx
     eaa:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     eb1:	00 00 00 
     eb4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     eb8:	48 89 c2             	mov    %rax,%rdx
     ebb:	be 00 00 00 00       	mov    $0x0,%esi
     ec0:	bf 00 80 ff 00       	mov    $0xff8000,%edi
     ec5:	49 89 df             	mov    %rbx,%r15
     ec8:	b8 00 00 00 00       	mov    $0x0,%eax
     ecd:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
     ed4:	00 00 00 
     ed7:	49 01 da             	add    %rbx,%r10
     eda:	41 ff d2             	call   *%r10
     edd:	48 83 c4 10          	add    $0x10,%rsp
     ee1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     ee8:	00 00 00 
     eeb:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
     ef2:	00 
     ef3:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
     efa:	80 00 00 
     efd:	48 01 d0             	add    %rdx,%rax
     f00:	48 c1 e8 15          	shr    $0x15,%rax
     f04:	89 45 ec             	mov    %eax,-0x14(%rbp)
     f07:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
     f0e:	eb 45                	jmp    f55 <init_memory+0xe52>
     f10:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f17:	00 00 00 
     f1a:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
     f21:	00 
     f22:	8b 45 e8             	mov    -0x18(%rbp),%eax
     f25:	48 63 d0             	movslq %eax,%rdx
     f28:	48 89 d0             	mov    %rdx,%rax
     f2b:	48 c1 e0 02          	shl    $0x2,%rax
     f2f:	48 01 d0             	add    %rdx,%rax
     f32:	48 c1 e0 03          	shl    $0x3,%rax
     f36:	48 01 c8             	add    %rcx,%rax
     f39:	be 93 00 00 00       	mov    $0x93,%esi
     f3e:	48 89 c7             	mov    %rax,%rdi
     f41:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f48:	00 00 00 
     f4b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f4f:	ff d0                	call   *%rax
     f51:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
     f55:	8b 45 e8             	mov    -0x18(%rbp),%eax
     f58:	3b 45 ec             	cmp    -0x14(%rbp),%eax
     f5b:	7e b3                	jle    f10 <init_memory+0xe0d>
     f5d:	b8 00 00 00 00       	mov    $0x0,%eax
     f62:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
     f69:	00 00 00 
     f6c:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
     f70:	ff d2                	call   *%rdx
     f72:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
     f76:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     f7a:	48 89 c1             	mov    %rax,%rcx
     f7d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     f84:	00 00 00 
     f87:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     f8b:	48 89 c2             	mov    %rax,%rdx
     f8e:	be 00 00 00 00       	mov    $0x0,%esi
     f93:	bf ff ff 00 00       	mov    $0xffff,%edi
     f98:	49 89 df             	mov    %rbx,%r15
     f9b:	b8 00 00 00 00       	mov    $0x0,%eax
     fa0:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     fa7:	00 00 00 
     faa:	49 01 d8             	add    %rbx,%r8
     fad:	41 ff d0             	call   *%r8
     fb0:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
     fb7:	80 ff ff 
     fba:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
     fbe:	48 01 d0             	add    %rdx,%rax
     fc1:	48 8b 00             	mov    (%rax),%rax
     fc4:	48 89 c1             	mov    %rax,%rcx
     fc7:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
     fce:	00 00 00 
     fd1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
     fd5:	48 89 c2             	mov    %rax,%rdx
     fd8:	be 00 00 00 00       	mov    $0x0,%esi
     fdd:	bf ff ff 00 00       	mov    $0xffff,%edi
     fe2:	49 89 df             	mov    %rbx,%r15
     fe5:	b8 00 00 00 00       	mov    $0x0,%eax
     fea:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
     ff1:	00 00 00 
     ff4:	49 01 d8             	add    %rbx,%r8
     ff7:	41 ff d0             	call   *%r8
     ffa:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
    1001:	80 ff ff 
    1004:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1008:	48 01 d0             	add    %rdx,%rax
    100b:	48 8b 00             	mov    (%rax),%rax
    100e:	b0 00                	mov    $0x0,%al
    1010:	48 89 c2             	mov    %rax,%rdx
    1013:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    101a:	80 ff ff 
    101d:	48 01 d0             	add    %rdx,%rax
    1020:	48 8b 00             	mov    (%rax),%rax
    1023:	b0 00                	mov    $0x0,%al
    1025:	48 89 c1             	mov    %rax,%rcx
    1028:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
    102f:	00 00 00 
    1032:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
    1036:	48 89 c2             	mov    %rax,%rdx
    1039:	be 00 00 00 00       	mov    $0x0,%esi
    103e:	bf ff ff 00 00       	mov    $0xffff,%edi
    1043:	49 89 df             	mov    %rbx,%r15
    1046:	b8 00 00 00 00       	mov    $0x0,%eax
    104b:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
    1052:	00 00 00 
    1055:	49 01 d8             	add    %rbx,%r8
    1058:	41 ff d0             	call   *%r8
    105b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1062:	eb 2c                	jmp    1090 <init_memory+0xf8d>
    1064:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1067:	48 98                	cltq
    1069:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1070:	00 
    1071:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1075:	48 01 c2             	add    %rax,%rdx
    1078:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
    107f:	80 ff ff 
    1082:	48 01 d0             	add    %rdx,%rax
    1085:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    108c:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1090:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
    1094:	7e ce                	jle    1064 <init_memory+0xf61>
    1096:	0f 20 d8             	mov    %cr3,%rax
    1099:	0f 22 d8             	mov    %rax,%cr3
    109c:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    10a0:	90                   	nop
    10a1:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
    10a5:	5b                   	pop    %rbx
    10a6:	41 5f                	pop    %r15
    10a8:	5d                   	pop    %rbp
    10a9:	c3                   	ret

00000000000010aa <page_init>:
    10aa:	f3 0f 1e fa          	endbr64
    10ae:	55                   	push   %rbp
    10af:	48 89 e5             	mov    %rsp,%rbp
    10b2:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # 10b2 <page_init+0x8>
    10b9:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
    10c0:	00 00 00 
    10c3:	4c 01 d8             	add    %r11,%rax
    10c6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    10ca:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    10ce:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    10d2:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    10d6:	48 85 d2             	test   %rdx,%rdx
    10d9:	0f 85 d0 00 00 00    	jne    11af <page_init+0x105>
    10df:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    10e6:	00 00 00 
    10e9:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
    10f0:	00 
    10f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    10f5:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    10f9:	48 c1 ea 1b          	shr    $0x1b,%rdx
    10fd:	48 c1 e2 03          	shl    $0x3,%rdx
    1101:	48 01 ca             	add    %rcx,%rdx
    1104:	48 8b 32             	mov    (%rdx),%rsi
    1107:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    110b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    110f:	48 c1 ea 15          	shr    $0x15,%rdx
    1113:	83 e2 3f             	and    $0x3f,%edx
    1116:	bf 01 00 00 00       	mov    $0x1,%edi
    111b:	89 d1                	mov    %edx,%ecx
    111d:	48 d3 e7             	shl    %cl,%rdi
    1120:	48 89 f9             	mov    %rdi,%rcx
    1123:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    112a:	00 00 00 
    112d:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
    1134:	00 
    1135:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1139:	48 8b 40 08          	mov    0x8(%rax),%rax
    113d:	48 c1 e8 1b          	shr    $0x1b,%rax
    1141:	48 c1 e0 03          	shl    $0x3,%rax
    1145:	48 01 d0             	add    %rdx,%rax
    1148:	48 09 ce             	or     %rcx,%rsi
    114b:	48 89 f2             	mov    %rsi,%rdx
    114e:	48 89 10             	mov    %rdx,(%rax)
    1151:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1155:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    1159:	48 89 50 10          	mov    %rdx,0x10(%rax)
    115d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1161:	48 8b 40 18          	mov    0x18(%rax),%rax
    1165:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1169:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    116d:	48 89 50 18          	mov    %rdx,0x18(%rax)
    1171:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1175:	48 8b 00             	mov    (%rax),%rax
    1178:	48 8b 50 38          	mov    0x38(%rax),%rdx
    117c:	48 83 c2 01          	add    $0x1,%rdx
    1180:	48 89 50 38          	mov    %rdx,0x38(%rax)
    1184:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1188:	48 8b 00             	mov    (%rax),%rax
    118b:	48 8b 50 40          	mov    0x40(%rax),%rdx
    118f:	48 83 ea 01          	sub    $0x1,%rdx
    1193:	48 89 50 40          	mov    %rdx,0x40(%rax)
    1197:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    119b:	48 8b 00             	mov    (%rax),%rax
    119e:	48 8b 50 48          	mov    0x48(%rax),%rdx
    11a2:	48 83 c2 01          	add    $0x1,%rdx
    11a6:	48 89 50 48          	mov    %rdx,0x48(%rax)
    11aa:	e9 0a 01 00 00       	jmp    12b9 <page_init+0x20f>
    11af:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11b3:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    11b7:	83 e2 04             	and    $0x4,%edx
    11ba:	48 85 d2             	test   %rdx,%rdx
    11bd:	75 2e                	jne    11ed <page_init+0x143>
    11bf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11c3:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    11c7:	81 e2 00 01 00 00    	and    $0x100,%edx
    11cd:	48 85 d2             	test   %rdx,%rdx
    11d0:	75 1b                	jne    11ed <page_init+0x143>
    11d2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11d6:	83 e2 04             	and    $0x4,%edx
    11d9:	48 85 d2             	test   %rdx,%rdx
    11dc:	75 0f                	jne    11ed <page_init+0x143>
    11de:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    11e2:	81 e2 00 01 00 00    	and    $0x100,%edx
    11e8:	48 85 d2             	test   %rdx,%rdx
    11eb:	74 43                	je     1230 <page_init+0x186>
    11ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11f1:	48 8b 40 10          	mov    0x10(%rax),%rax
    11f5:	48 0b 45 f0          	or     -0x10(%rbp),%rax
    11f9:	48 89 c2             	mov    %rax,%rdx
    11fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1200:	48 89 50 10          	mov    %rdx,0x10(%rax)
    1204:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1208:	48 8b 40 18          	mov    0x18(%rax),%rax
    120c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1210:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1214:	48 89 50 18          	mov    %rdx,0x18(%rax)
    1218:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    121c:	48 8b 00             	mov    (%rax),%rax
    121f:	48 8b 50 48          	mov    0x48(%rax),%rdx
    1223:	48 83 c2 01          	add    $0x1,%rdx
    1227:	48 89 50 48          	mov    %rdx,0x48(%rax)
    122b:	e9 89 00 00 00       	jmp    12b9 <page_init+0x20f>
    1230:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    1237:	00 00 00 
    123a:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
    1241:	00 
    1242:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1246:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    124a:	48 c1 ea 1b          	shr    $0x1b,%rdx
    124e:	48 c1 e2 03          	shl    $0x3,%rdx
    1252:	48 01 ca             	add    %rcx,%rdx
    1255:	48 8b 32             	mov    (%rdx),%rsi
    1258:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    125c:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1260:	48 c1 ea 15          	shr    $0x15,%rdx
    1264:	83 e2 3f             	and    $0x3f,%edx
    1267:	bf 01 00 00 00       	mov    $0x1,%edi
    126c:	89 d1                	mov    %edx,%ecx
    126e:	48 d3 e7             	shl    %cl,%rdi
    1271:	48 89 f9             	mov    %rdi,%rcx
    1274:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
    127b:	00 00 00 
    127e:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
    1285:	00 
    1286:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    128a:	48 8b 40 08          	mov    0x8(%rax),%rax
    128e:	48 c1 e8 1b          	shr    $0x1b,%rax
    1292:	48 c1 e0 03          	shl    $0x3,%rax
    1296:	48 01 d0             	add    %rdx,%rax
    1299:	48 09 ce             	or     %rcx,%rsi
    129c:	48 89 f2             	mov    %rsi,%rdx
    129f:	48 89 10             	mov    %rdx,(%rax)
    12a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12a6:	48 8b 40 10          	mov    0x10(%rax),%rax
    12aa:	48 0b 45 f0          	or     -0x10(%rbp),%rax
    12ae:	48 89 c2             	mov    %rax,%rdx
    12b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12b5:	48 89 50 10          	mov    %rdx,0x10(%rax)
    12b9:	b8 00 00 00 00       	mov    $0x0,%eax
    12be:	5d                   	pop    %rbp
    12bf:	c3                   	ret
