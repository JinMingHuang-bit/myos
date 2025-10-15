
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	4c 8d 3d f9 ff ff ff 	lea    -0x7(%rip),%r15        # 6 <Start_Kernel+0x6>
   d:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
  14:	00 00 00 
  17:	4d 01 df             	add    %r11,%r15
  1a:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  21:	00 00 00 
  24:	41 c7 04 07 a0 05 00 	movl   $0x5a0,(%r15,%rax,1)
  2b:	00 
  2c:	41 c7 44 07 04 84 03 	movl   $0x384,0x4(%r15,%rax,1)
  33:	00 00 
  35:	41 c7 44 07 08 00 00 	movl   $0x0,0x8(%r15,%rax,1)
  3c:	00 00 
  3e:	41 c7 44 07 0c 00 00 	movl   $0x0,0xc(%r15,%rax,1)
  45:	00 00 
  47:	41 c7 44 07 10 08 00 	movl   $0x8,0x10(%r15,%rax,1)
  4e:	00 00 
  50:	41 c7 44 07 14 10 00 	movl   $0x10,0x14(%r15,%rax,1)
  57:	00 00 
  59:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
  60:	80 ff ff 
  63:	4a 89 74 38 18       	mov    %rsi,0x18(%rax,%r15,1)
  68:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
  6f:	4f 00 
  71:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  78:	00 00 00 
  7b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  7f:	be 00 00 00 00       	mov    $0x0,%esi
  84:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  89:	b8 00 00 00 00       	mov    $0x0,%eax
  8e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  95:	00 00 00 
  98:	4c 01 f9             	add    %r15,%rcx
  9b:	ff d1                	call   *%rcx
  9d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  a4:	00 00 00 
  a7:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  ab:	be 00 00 00 00       	mov    $0x0,%esi
  b0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  b5:	b8 00 00 00 00       	mov    $0x0,%eax
  ba:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  c1:	00 00 00 
  c4:	4c 01 f9             	add    %r15,%rcx
  c7:	ff d1                	call   *%rcx
  c9:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  d0:	00 00 00 
  d3:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  d7:	be 00 00 00 00       	mov    $0x0,%esi
  dc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  e1:	b8 00 00 00 00       	mov    $0x0,%eax
  e6:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
  ed:	00 00 00 
  f0:	4c 01 f9             	add    %r15,%rcx
  f3:	ff d1                	call   *%rcx
  f5:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  fc:	00 00 00 
  ff:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
 103:	be 00 00 00 00       	mov    $0x0,%esi
 108:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 10d:	b8 00 00 00 00       	mov    $0x0,%eax
 112:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 119:	00 00 00 
 11c:	4c 01 f9             	add    %r15,%rcx
 11f:	ff d1                	call   *%rcx
 121:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 128:	00 00 00 
 12b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
 12f:	be 00 00 00 00       	mov    $0x0,%esi
 134:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 139:	b8 00 00 00 00       	mov    $0x0,%eax
 13e:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
 145:	00 00 00 
 148:	4c 01 f9             	add    %r15,%rcx
 14b:	ff d1                	call   *%rcx
 14d:	eb fe                	jmp    14d <Start_Kernel+0x14d>
