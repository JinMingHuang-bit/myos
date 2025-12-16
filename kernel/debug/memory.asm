
memory.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <init_memory>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	41 57                	push   %r15
   a:	53                   	push   %rbx
   b:	48 83 ec 20          	sub    $0x20,%rsp
   f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # f <init_memory+0xf>
  16:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  1d:	00 00 00 
  20:	4c 01 db             	add    %r11,%rbx
  23:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  2a:	00 
  2b:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
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
  6f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  73:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  7a:	e9 b2 00 00 00       	jmp    131 <init_memory+0x131>
  7f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  83:	8b 48 10             	mov    0x10(%rax),%ecx
  86:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  8a:	8b 50 08             	mov    0x8(%rax),%edx
  8d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  91:	8b 78 0c             	mov    0xc(%rax),%edi
  94:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  98:	8b 30                	mov    (%rax),%esi
  9a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  9e:	8b 40 04             	mov    0x4(%rax),%eax
  a1:	51                   	push   %rcx
  a2:	52                   	push   %rdx
  a3:	41 89 f9             	mov    %edi,%r9d
  a6:	41 89 f0             	mov    %esi,%r8d
  a9:	89 c1                	mov    %eax,%ecx
  ab:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  b2:	00 00 00 
  b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
  b9:	48 89 c2             	mov    %rax,%rdx
  bc:	be 00 00 00 00       	mov    $0x0,%esi
  c1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
  c6:	49 89 df             	mov    %rbx,%r15
  c9:	b8 00 00 00 00       	mov    $0x0,%eax
  ce:	49 ba 00 00 00 00 00 	movabs $0x0,%r10
  d5:	00 00 00 
  d8:	49 01 da             	add    %rbx,%r10
  db:	41 ff d2             	call   *%r10
  de:	48 83 c4 10          	add    $0x10,%rsp
  e2:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  e9:	00 
  ea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  ee:	8b 40 10             	mov    0x10(%rax),%eax
  f1:	83 f8 01             	cmp    $0x1,%eax
  f4:	75 26                	jne    11c <init_memory+0x11c>
  f6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  fa:	8b 40 0c             	mov    0xc(%rax),%eax
  fd:	89 c0                	mov    %eax,%eax
  ff:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 103:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 107:	8b 40 08             	mov    0x8(%rax),%eax
 10a:	89 c0                	mov    %eax,%eax
 10c:	48 01 45 e8          	add    %rax,-0x18(%rbp)
 110:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 114:	48 c1 e0 20          	shl    $0x20,%rax
 118:	48 01 45 e8          	add    %rax,-0x18(%rbp)
 11c:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
 121:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
 125:	8b 40 10             	mov    0x10(%rax),%eax
 128:	83 f8 04             	cmp    $0x4,%eax
 12b:	77 10                	ja     13d <init_memory+0x13d>
 12d:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
 131:	83 7d dc 1f          	cmpl   $0x1f,-0x24(%rbp)
 135:	0f 8e 44 ff ff ff    	jle    7f <init_memory+0x7f>
 13b:	eb 01                	jmp    13e <init_memory+0x13e>
 13d:	90                   	nop
 13e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 142:	48 89 c1             	mov    %rax,%rcx
 145:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 14c:	00 00 00 
 14f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
 153:	48 89 c2             	mov    %rax,%rdx
 156:	be 00 00 00 00       	mov    $0x0,%esi
 15b:	bf 00 80 ff 00       	mov    $0xff8000,%edi
 160:	49 89 df             	mov    %rbx,%r15
 163:	b8 00 00 00 00       	mov    $0x0,%eax
 168:	49 b8 00 00 00 00 00 	movabs $0x0,%r8
 16f:	00 00 00 
 172:	49 01 d8             	add    %rbx,%r8
 175:	41 ff d0             	call   *%r8
 178:	90                   	nop
 179:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
 17d:	5b                   	pop    %rbx
 17e:	41 5f                	pop    %r15
 180:	5d                   	pop    %rbp
 181:	c3                   	ret
