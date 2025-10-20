
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	4c 8d 3d f9 ff ff ff 	lea    -0x7(%rip),%r15        # 6 <Start_Kernel+0x6>
   d:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  14:	00 00 00 
  17:	4d 01 df             	add    %r11,%r15
  1a:	0f 20 e0             	mov    %cr4,%rax
  1d:	80 cc 06             	or     $0x6,%ah
  20:	0f 22 e0             	mov    %rax,%cr4
  23:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  2a:	00 00 00 
  2d:	41 c7 04 07 a0 05 00 	movl   $0x5a0,(%r15,%rax,1)
  34:	00 
  35:	41 c7 44 07 04 84 03 	movl   $0x384,0x4(%r15,%rax,1)
  3c:	00 00 
  3e:	41 c7 44 07 08 00 00 	movl   $0x0,0x8(%r15,%rax,1)
  45:	00 00 
  47:	41 c7 44 07 0c 00 00 	movl   $0x0,0xc(%r15,%rax,1)
  4e:	00 00 
  50:	41 c7 44 07 10 08 00 	movl   $0x8,0x10(%r15,%rax,1)
  57:	00 00 
  59:	41 c7 44 07 14 10 00 	movl   $0x10,0x14(%r15,%rax,1)
  60:	00 00 
  62:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
  69:	80 ff ff 
  6c:	4a 89 74 38 18       	mov    %rsi,0x18(%rax,%r15,1)
  71:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
  78:	4f 00 
  7a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  81:	00 00 00 
  84:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  88:	be 00 00 00 00       	mov    $0x0,%esi
  8d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  92:	b8 00 00 00 00       	mov    $0x0,%eax
  97:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  9e:	00 00 00 
  a1:	4c 01 f9             	add    %r15,%rcx
  a4:	ff d1                	call   *%rcx
  a6:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  ad:	00 00 00 
  b0:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  b4:	be 00 00 00 00       	mov    $0x0,%esi
  b9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  be:	b8 00 00 00 00       	mov    $0x0,%eax
  c3:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  ca:	00 00 00 
  cd:	4c 01 f9             	add    %r15,%rcx
  d0:	ff d1                	call   *%rcx
  d2:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  d9:	00 00 00 
  dc:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  e0:	be 00 00 00 00       	mov    $0x0,%esi
  e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  ea:	b8 00 00 00 00       	mov    $0x0,%eax
  ef:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  f6:	00 00 00 
  f9:	4c 01 f9             	add    %r15,%rcx
  fc:	ff d1                	call   *%rcx
  fe:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 105:	00 00 00 
 108:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
 10c:	be 00 00 00 00       	mov    $0x0,%esi
 111:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 116:	b8 00 00 00 00       	mov    $0x0,%eax
 11b:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 122:	00 00 00 
 125:	4c 01 f9             	add    %r15,%rcx
 128:	ff d1                	call   *%rcx
 12a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 131:	00 00 00 
 134:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
 138:	be 00 00 00 00       	mov    $0x0,%esi
 13d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 142:	b8 00 00 00 00       	mov    $0x0,%eax
 147:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 14e:	00 00 00 
 151:	4c 01 f9             	add    %r15,%rcx
 154:	ff d1                	call   *%rcx
 156:	eb fe                	jmp    156 <Start_Kernel+0x156>
