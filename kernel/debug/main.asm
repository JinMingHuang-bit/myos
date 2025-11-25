
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	53                   	push   %rbx
   b:	48 83 ec 20          	sub    $0x20,%rsp
   f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # f <Start_Kernel+0xf>
  16:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  1d:	00 00 00 
  20:	4c 01 db             	add    %r11,%rbx
  23:	0f 20 e0             	mov    %cr4,%rax
  26:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  2a:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
  31:	00 
  32:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
  39:	00 
  3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  3e:	0f 22 e0             	mov    %rax,%cr4
  41:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
  48:	80 ff ff 
  4b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  56:	00 00 00 
  59:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
  60:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  67:	00 00 00 
  6a:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
  71:	00 
  72:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  79:	00 00 00 
  7c:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
  83:	00 
  84:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  8b:	00 00 00 
  8e:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
  95:	00 
  96:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  9d:	00 00 00 
  a0:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
  a7:	00 
  a8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  af:	00 00 00 
  b2:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
  b9:	00 
  ba:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  c1:	00 00 00 
  c4:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
  c9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  d0:	00 00 00 
  d3:	8b 14 03             	mov    (%rbx,%rax,1),%edx
  d6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  dd:	00 00 00 
  e0:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
  e4:	0f af c2             	imul   %edx,%eax
  e7:	c1 e0 02             	shl    $0x2,%eax
  ea:	48 98                	cltq
  ec:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  f3:	00 00 00 
  f6:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
  fb:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 102:	00 00 00 
 105:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 109:	48 89 c2             	mov    %rax,%rdx
 10c:	be 00 00 00 00       	mov    $0x0,%esi
 111:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 116:	49 89 df             	mov    %rbx,%r15
 119:	b8 00 00 00 00       	mov    $0x0,%eax
 11e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 125:	00 00 00 
 128:	48 01 d9             	add    %rbx,%rcx
 12b:	ff d1                	call   *%rcx
 12d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 134:	00 00 00 
 137:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 13b:	48 89 c2             	mov    %rax,%rdx
 13e:	be 00 00 00 00       	mov    $0x0,%esi
 143:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 148:	49 89 df             	mov    %rbx,%r15
 14b:	b8 00 00 00 00       	mov    $0x0,%eax
 150:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 157:	00 00 00 
 15a:	48 01 d9             	add    %rbx,%rcx
 15d:	ff d1                	call   *%rcx
 15f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 166:	00 00 00 
 169:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 16d:	48 89 c2             	mov    %rax,%rdx
 170:	be 00 00 00 00       	mov    $0x0,%esi
 175:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 17a:	49 89 df             	mov    %rbx,%r15
 17d:	b8 00 00 00 00       	mov    $0x0,%eax
 182:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 189:	00 00 00 
 18c:	48 01 d9             	add    %rbx,%rcx
 18f:	ff d1                	call   *%rcx
 191:	b8 01 00 00 00       	mov    $0x1,%eax
 196:	bf 00 00 00 00       	mov    $0x0,%edi
 19b:	99                   	cltd
 19c:	f7 ff                	idiv   %edi
 19e:	89 45 dc             	mov    %eax,-0x24(%rbp)
 1a1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1a8:	00 00 00 
 1ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 1af:	48 89 c2             	mov    %rax,%rdx
 1b2:	be 00 00 00 00       	mov    $0x0,%esi
 1b7:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 1bc:	49 89 df             	mov    %rbx,%r15
 1bf:	b8 00 00 00 00       	mov    $0x0,%eax
 1c4:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 1cb:	00 00 00 
 1ce:	48 01 d9             	add    %rbx,%rcx
 1d1:	ff d1                	call   *%rcx
 1d3:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 1da:	00 00 00 
 1dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 1e1:	48 89 c2             	mov    %rax,%rdx
 1e4:	be 00 00 00 00       	mov    $0x0,%esi
 1e9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 1ee:	49 89 df             	mov    %rbx,%r15
 1f1:	b8 00 00 00 00       	mov    $0x0,%eax
 1f6:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 1fd:	00 00 00 
 200:	48 01 d9             	add    %rbx,%rcx
 203:	ff d1                	call   *%rcx
 205:	90                   	nop
 206:	eb fd                	jmp    205 <Start_Kernel+0x205>
