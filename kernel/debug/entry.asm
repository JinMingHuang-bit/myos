
entry.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <RESTORE_ALL>:
   0:	41 5f                	pop    %r15
   2:	41 5e                	pop    %r14
   4:	41 5d                	pop    %r13
   6:	41 5c                	pop    %r12
   8:	41 5b                	pop    %r11
   a:	41 5a                	pop    %r10
   c:	41 59                	pop    %r9
   e:	41 58                	pop    %r8
  10:	5b                   	pop    %rbx
  11:	59                   	pop    %rcx
  12:	5a                   	pop    %rdx
  13:	5e                   	pop    %rsi
  14:	5f                   	pop    %rdi
  15:	5d                   	pop    %rbp
  16:	58                   	pop    %rax
  17:	8e d8                	mov    %eax,%ds
  19:	58                   	pop    %rax
  1a:	8e c0                	mov    %eax,%es
  1c:	58                   	pop    %rax
  1d:	48 83 c4 10          	add    $0x10,%rsp
  21:	48 cf                	iretq

0000000000000023 <ret_from_intr>:
  23:	eb db                	jmp    0 <RESTORE_ALL>

0000000000000025 <divide_error>:
  25:	6a 00                	push   $0x0
  27:	50                   	push   %rax
  28:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2f <divide_error+0xa>
  2f:	48 87 04 24          	xchg   %rax,(%rsp)

0000000000000033 <error_code>:
  33:	50                   	push   %rax
  34:	8c c0                	mov    %es,%eax
  36:	50                   	push   %rax
  37:	8c d8                	mov    %ds,%eax
  39:	50                   	push   %rax
  3a:	48 31 c0             	xor    %rax,%rax
  3d:	55                   	push   %rbp
  3e:	57                   	push   %rdi
  3f:	56                   	push   %rsi
  40:	52                   	push   %rdx
  41:	51                   	push   %rcx
  42:	53                   	push   %rbx
  43:	41 50                	push   %r8
  45:	41 51                	push   %r9
  47:	41 52                	push   %r10
  49:	41 53                	push   %r11
  4b:	41 54                	push   %r12
  4d:	41 55                	push   %r13
  4f:	41 56                	push   %r14
  51:	41 57                	push   %r15
  53:	fc                   	cld
  54:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  5b:	00 
  5c:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  63:	00 
  64:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
  6b:	8e df                	mov    %edi,%ds
  6d:	8e c7                	mov    %edi,%es
  6f:	48 89 e7             	mov    %rsp,%rdi
  72:	ff d2                	call   *%rdx
  74:	eb ad                	jmp    23 <ret_from_intr>

0000000000000076 <debug>:
  76:	6a 00                	push   $0x0
  78:	50                   	push   %rax
  79:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 80 <debug+0xa>
  80:	48 87 04 24          	xchg   %rax,(%rsp)
  84:	eb ad                	jmp    33 <error_code>

0000000000000086 <nmi>:
  86:	50                   	push   %rax
  87:	fc                   	cld
  88:	50                   	push   %rax
  89:	50                   	push   %rax
  8a:	8c c0                	mov    %es,%eax
  8c:	50                   	push   %rax
  8d:	8c d8                	mov    %ds,%eax
  8f:	50                   	push   %rax
  90:	48 31 c0             	xor    %rax,%rax
  93:	55                   	push   %rbp
  94:	57                   	push   %rdi
  95:	56                   	push   %rsi
  96:	52                   	push   %rdx
  97:	51                   	push   %rcx
  98:	53                   	push   %rbx
  99:	41 50                	push   %r8
  9b:	41 51                	push   %r9
  9d:	41 52                	push   %r10
  9f:	41 53                	push   %r11
  a1:	41 54                	push   %r12
  a3:	41 55                	push   %r13
  a5:	41 56                	push   %r14
  a7:	41 57                	push   %r15
  a9:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
  b0:	8e da                	mov    %edx,%ds
  b2:	8e c2                	mov    %edx,%es
  b4:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
  bb:	48 89 e7             	mov    %rsp,%rdi
  be:	e8 00 00 00 00       	call   c3 <nmi+0x3d>
  c3:	e9 38 ff ff ff       	jmp    0 <RESTORE_ALL>

00000000000000c8 <int3>:
  c8:	6a 00                	push   $0x0
  ca:	50                   	push   %rax
  cb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # d2 <int3+0xa>
  d2:	48 87 04 24          	xchg   %rax,(%rsp)
  d6:	e9 58 ff ff ff       	jmp    33 <error_code>

00000000000000db <overflow>:
  db:	6a 00                	push   $0x0
  dd:	50                   	push   %rax
  de:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e5 <overflow+0xa>
  e5:	48 87 04 24          	xchg   %rax,(%rsp)
  e9:	e9 45 ff ff ff       	jmp    33 <error_code>

00000000000000ee <bounds>:
  ee:	6a 00                	push   $0x0
  f0:	50                   	push   %rax
  f1:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f8 <bounds+0xa>
  f8:	48 87 04 24          	xchg   %rax,(%rsp)
  fc:	e9 32 ff ff ff       	jmp    33 <error_code>

0000000000000101 <undefined_opcode>:
 101:	6a 00                	push   $0x0
 103:	50                   	push   %rax
 104:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 10b <undefined_opcode+0xa>
 10b:	48 87 04 24          	xchg   %rax,(%rsp)
 10f:	e9 1f ff ff ff       	jmp    33 <error_code>

0000000000000114 <dev_not_available>:
 114:	6a 00                	push   $0x0
 116:	50                   	push   %rax
 117:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11e <dev_not_available+0xa>
 11e:	48 87 04 24          	xchg   %rax,(%rsp)
 122:	e9 0c ff ff ff       	jmp    33 <error_code>

0000000000000127 <double_fault>:
 127:	50                   	push   %rax
 128:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12f <double_fault+0x8>
 12f:	48 87 04 24          	xchg   %rax,(%rsp)
 133:	e9 fb fe ff ff       	jmp    33 <error_code>

0000000000000138 <coprocessor_segment_overrun>:
 138:	6a 00                	push   $0x0
 13a:	50                   	push   %rax
 13b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 142 <coprocessor_segment_overrun+0xa>
 142:	48 87 04 24          	xchg   %rax,(%rsp)
 146:	e9 e8 fe ff ff       	jmp    33 <error_code>

000000000000014b <invalid_TSS>:
 14b:	50                   	push   %rax
 14c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 153 <invalid_TSS+0x8>
 153:	48 87 04 24          	xchg   %rax,(%rsp)
 157:	e9 d7 fe ff ff       	jmp    33 <error_code>

000000000000015c <segment_not_present>:
 15c:	50                   	push   %rax
 15d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 164 <segment_not_present+0x8>
 164:	48 87 04 24          	xchg   %rax,(%rsp)
 168:	e9 c6 fe ff ff       	jmp    33 <error_code>

000000000000016d <stack_segment_fault>:
 16d:	50                   	push   %rax
 16e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 175 <stack_segment_fault+0x8>
 175:	48 87 04 24          	xchg   %rax,(%rsp)
 179:	e9 b5 fe ff ff       	jmp    33 <error_code>

000000000000017e <general_protection>:
 17e:	50                   	push   %rax
 17f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 186 <general_protection+0x8>
 186:	48 87 04 24          	xchg   %rax,(%rsp)
 18a:	e9 a4 fe ff ff       	jmp    33 <error_code>

000000000000018f <page_fault>:
 18f:	50                   	push   %rax
 190:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 197 <page_fault+0x8>
 197:	48 87 04 24          	xchg   %rax,(%rsp)
 19b:	e9 93 fe ff ff       	jmp    33 <error_code>

00000000000001a0 <x87_FPU_error>:
 1a0:	6a 00                	push   $0x0
 1a2:	50                   	push   %rax
 1a3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1aa <x87_FPU_error+0xa>
 1aa:	48 87 04 24          	xchg   %rax,(%rsp)
 1ae:	e9 80 fe ff ff       	jmp    33 <error_code>

00000000000001b3 <alignment_check>:
 1b3:	50                   	push   %rax
 1b4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1bb <alignment_check+0x8>
 1bb:	48 87 04 24          	xchg   %rax,(%rsp)
 1bf:	e9 6f fe ff ff       	jmp    33 <error_code>

00000000000001c4 <machine_check>:
 1c4:	6a 00                	push   $0x0
 1c6:	50                   	push   %rax
 1c7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ce <machine_check+0xa>
 1ce:	48 87 04 24          	xchg   %rax,(%rsp)
 1d2:	e9 5c fe ff ff       	jmp    33 <error_code>

00000000000001d7 <SIMD_exception>:
 1d7:	6a 00                	push   $0x0
 1d9:	50                   	push   %rax
 1da:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e1 <SIMD_exception+0xa>
 1e1:	48 87 04 24          	xchg   %rax,(%rsp)
 1e5:	e9 49 fe ff ff       	jmp    33 <error_code>

00000000000001ea <virtualization_exception>:
 1ea:	6a 00                	push   $0x0
 1ec:	50                   	push   %rax
 1ed:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f4 <virtualization_exception+0xa>
 1f4:	48 87 04 24          	xchg   %rax,(%rsp)
 1f8:	e9 36 fe ff ff       	jmp    33 <error_code>
