
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <Start_Kernel>:
   0:	f3 0f 1e fa          	endbr64
   4:	41 57                	push   %r15
   6:	31 f6                	xor    %esi,%esi
   8:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
   f:	00 00 00 
  12:	4c 8d 3d eb ff ff ff 	lea    -0x15(%rip),%r15        # 4 <Start_Kernel+0x4>
  19:	53                   	push   %rbx
  1a:	4d 01 df             	add    %r11,%r15
  1d:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  24:	00 00 00 
  27:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  2e:	00 00 00 
  31:	48 b9 00 00 a0 00 00 	movabs $0xffff800000a00000,%rcx
  38:	80 ff ff 
  3b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  40:	48 bb 00 00 00 00 00 	movabs $0x0,%rbx
  47:	00 00 00 
  4a:	4c 01 fb             	add    %r15,%rbx
  4d:	48 83 ec 08          	sub    $0x8,%rsp
  51:	66 41 0f 6f 04 17    	movdqa (%r15,%rdx,1),%xmm0
  /*00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg
   00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg
   00049935377e[CPU0  ] interrupt(long mode): gate descriptor is not valid sys seg*/
  57:	4a 89 4c 38 18       	mov    %rcx,0x18(%rax,%r15,1)
  5c:	48 ba 00 00 00 00 00 	movabs $0x0,%rdx
  63:	00 00 00 
  66:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
  6d:	4f 00 
  6f:	49 8b 14 17          	mov    (%r15,%rdx,1),%rdx
  73:	41 0f 29 04 07       	movaps %xmm0,(%r15,%rax,1)
  78:	49 89 54 07 10       	mov    %rdx,0x10(%r15,%rax,1)
  7d:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  84:	00 00 00 
  87:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  8b:	31 c0                	xor    %eax,%eax
  8d:	ff d3                	call   *%rbx
  8f:	31 f6                	xor    %esi,%esi
  91:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  96:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  9d:	00 00 00 
  a0:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  a4:	31 c0                	xor    %eax,%eax
  a6:	ff d3                	call   *%rbx
  a8:	31 f6                	xor    %esi,%esi
  aa:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  af:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  b6:	00 00 00 
  b9:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  bd:	31 c0                	xor    %eax,%eax
  bf:	ff d3                	call   *%rbx
  c1:	31 f6                	xor    %esi,%esi
  c3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  c8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  cf:	00 00 00 
  d2:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  d6:	31 c0                	xor    %eax,%eax
  d8:	ff d3                	call   *%rbx
  da:	31 f6                	xor    %esi,%esi
  dc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
  e1:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
  e8:	00 00 00 
  eb:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
  ef:	31 c0                	xor    %eax,%eax
  f1:	ff d3                	call   *%rbx
  f3:	eb fe                	jmp    f3 <Start_Kernel+0xf3>
