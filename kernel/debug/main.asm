
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
   b:	00 00 00 
   e:	41 57                	push   %r15
  10:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # 4 <Start_Kernel+0x4>
  17:	53                   	push   %rbx
  18:	4d 01 df             	add    %r11,%r15
  1b:	48 83 ec 08          	sub    $0x8,%rsp
  1f:	0f 20 e0             	mov    %cr4,%rax
  22:	80 cc 06             	or     $0x6,%ah
  25:	0f 22 e0             	mov    %rax,%cr4
  28:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  2f:	00 00 00 
  32:	31 f6                	xor    %esi,%esi
  34:	48 b9 00 00 a0 00 00 	movabs $0xffff800000a00000,%rcx
  3b:	80 ff ff 
  3e:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  45:	00 00 00 
  48:	66 41 0f 6f 04 17    	movdqa (%r15,%rdx,1),%xmm0
  4e:	4a 89 4c 38 18       	mov    %rcx,0x18(%rax,%r15,1)
  53:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  5a:	00 00 00 
  5d:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
  64:	00 00 00 
  67:	49 8b 14 17          	mov    (%r15,%rdx,1),%rdx
  6b:	4c 01 fb             	add    %r15,%rbx
  6e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  73:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
  7a:	4f 00 
  7c:	41 0f 29 04 07       	movaps %xmm0,(%r15,%rax,1)
  81:	49 89 54 07 10       	mov    %rdx,0x10(%r15,%rax,1)
  86:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  8d:	00 00 00 
  90:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  94:	31 c0                	xor    %eax,%eax
  96:	ff d3                	call   *%rbx
  98:	31 f6                	xor    %esi,%esi
  9a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  9f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  a6:	00 00 00 
  a9:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  ad:	31 c0                	xor    %eax,%eax
  af:	ff d3                	call   *%rbx
  b1:	31 f6                	xor    %esi,%esi
  b3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  b8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  bf:	00 00 00 
  c2:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  c6:	31 c0                	xor    %eax,%eax
  c8:	ff d3                	call   *%rbx
  ca:	31 f6                	xor    %esi,%esi
  cc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  d1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  d8:	00 00 00 
  db:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  df:	31 c0                	xor    %eax,%eax
  e1:	ff d3                	call   *%rbx
  e3:	31 f6                	xor    %esi,%esi
  e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  ea:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  f1:	00 00 00 
  f4:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  f8:	31 c0                	xor    %eax,%eax
  fa:	ff d3                	call   *%rbx
  fc:	31 f6                	xor    %esi,%esi
  fe:	bf 00 ff ff 00       	mov    $0xffff00,%edi
 103:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
 10a:	00 00 00 
 10d:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
 111:	31 c0                	xor    %eax,%eax
 113:	ff d3                	call   *%rbx
 115:	eb fe                	jmp    115 <Start_Kernel+0x115>
