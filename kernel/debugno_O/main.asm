
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	53                   	push   %rbx
   b:	48 83 ec 10          	sub    $0x10,%rsp
   f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # f <Start_Kernel+0xf>
  16:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  1d:	00 00 00 
  20:	4c 01 db             	add    %r11,%rbx
  23:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
  2a:	80 ff ff 
  2d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  31:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  38:	00 00 00 
  3b:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
  42:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  49:	00 00 00 
  4c:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
  53:	00 
  54:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  5b:	00 00 00 
  5e:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
  65:	00 
  66:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  6d:	00 00 00 
  70:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
  77:	00 
  78:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  7f:	00 00 00 
  82:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
  89:	00 
  8a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  91:	00 00 00 
  94:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
  9b:	00 
  9c:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  a3:	00 00 00 
  a6:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
  ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  b2:	00 00 00 
  b5:	8b 14 03             	mov    (%rbx,%rax,1),%edx
  b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  bf:	00 00 00 
  c2:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
  c6:	0f af c2             	imul   %edx,%eax
  c9:	c1 e0 02             	shl    $0x2,%eax
  cc:	48 98                	cltq
  ce:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  d5:	00 00 00 
  d8:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
  dd:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  e4:	00 00 00 
  e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
  eb:	48 89 c2             	mov    %rax,%rdx
  ee:	be 00 00 00 00       	mov    $0x0,%esi
  f3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  f8:	49 89 df             	mov    %rbx,%r15
  fb:	b8 00 00 00 00       	mov    $0x0,%eax
 100:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 107:	00 00 00 
 10a:	48 01 d9             	add    %rbx,%rcx
 10d:	ff d1                	call   *%rcx
 10f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 116:	00 00 00 
 119:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 11d:	48 89 c2             	mov    %rax,%rdx
 120:	be 00 00 00 00       	mov    $0x0,%esi
 125:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 12a:	49 89 df             	mov    %rbx,%r15
 12d:	b8 00 00 00 00       	mov    $0x0,%eax
 132:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 139:	00 00 00 
 13c:	48 01 d9             	add    %rbx,%rcx
 13f:	ff d1                	call   *%rcx
 141:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 148:	00 00 00 
 14b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 14f:	48 89 c2             	mov    %rax,%rdx
 152:	be 00 00 00 00       	mov    $0x0,%esi
 157:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 15c:	49 89 df             	mov    %rbx,%r15
 15f:	b8 00 00 00 00       	mov    $0x0,%eax
 164:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 16b:	00 00 00 
 16e:	48 01 d9             	add    %rbx,%rcx
 171:	ff d1                	call   *%rcx
 173:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 17a:	00 00 00 
 17d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 181:	48 89 c2             	mov    %rax,%rdx
 184:	be 00 00 00 00       	mov    $0x0,%esi
 189:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 18e:	49 89 df             	mov    %rbx,%r15
 191:	b8 00 00 00 00       	mov    $0x0,%eax
 196:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 19d:	00 00 00 
 1a0:	48 01 d9             	add    %rbx,%rcx
 1a3:	ff d1                	call   *%rcx
 1a5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1ac:	00 00 00 
 1af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 1b3:	48 89 c2             	mov    %rax,%rdx
 1b6:	be 00 00 00 00       	mov    $0x0,%esi
 1bb:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 1c0:	49 89 df             	mov    %rbx,%r15
 1c3:	b8 00 00 00 00       	mov    $0x0,%eax
 1c8:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 1cf:	00 00 00 
 1d2:	48 01 d9             	add    %rbx,%rcx
 1d5:	ff d1                	call   *%rcx
 1d7:	90                   	nop
 1d8:	eb fd                	jmp    1d7 <Start_Kernel+0x1d7>
