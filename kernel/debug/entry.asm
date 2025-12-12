
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

0000000000000023 <divide_error>:
  23:	6a 00                	push   $0x0
  25:	50                   	push   %rax
  26:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2d <divide_error+0xa>
  2d:	48 87 04 24          	xchg   %rax,(%rsp)
  31:	eb 00                	jmp    33 <error_code>

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
  74:	eb 00                	jmp    76 <ret_from_intr>

0000000000000076 <ret_from_intr>:
  76:	eb 88                	jmp    0 <RESTORE_ALL>

0000000000000078 <debug>:
  78:	6a 00                	push   $0x0
  7a:	50                   	push   %rax
  7b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 82 <debug+0xa>
  82:	48 87 04 24          	xchg   %rax,(%rsp)
  86:	eb ab                	jmp    33 <error_code>

0000000000000088 <nmi>:
  88:	50                   	push   %rax
  89:	fc                   	cld
  8a:	50                   	push   %rax
  8b:	50                   	push   %rax
  8c:	8c c0                	mov    %es,%eax
  8e:	50                   	push   %rax
  8f:	8c d8                	mov    %ds,%eax
  91:	50                   	push   %rax
  92:	48 31 c0             	xor    %rax,%rax
  95:	55                   	push   %rbp
  96:	57                   	push   %rdi
  97:	56                   	push   %rsi
  98:	52                   	push   %rdx
  99:	51                   	push   %rcx
  9a:	53                   	push   %rbx
  9b:	41 50                	push   %r8
  9d:	41 51                	push   %r9
  9f:	41 52                	push   %r10
  a1:	41 53                	push   %r11
  a3:	41 54                	push   %r12
  a5:	41 55                	push   %r13
  a7:	41 56                	push   %r14
  a9:	41 57                	push   %r15
  ab:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
  b2:	8e da                	mov    %edx,%ds
  b4:	8e c2                	mov    %edx,%es
  b6:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  bd:	48 89 e6             	mov    %rsp,%rsi
  c0:	e8 00 00 00 00       	call   c5 <nmi+0x3d>
  c5:	e9 36 ff ff ff       	jmp    0 <RESTORE_ALL>

00000000000000ca <invalid_TSS>:
  ca:	50                   	push   %rax
  cb:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # d2 <invalid_TSS+0x8>
  d2:	48 87 04 24          	xchg   %rax,(%rsp)
  d6:	e9 58 ff ff ff       	jmp    33 <error_code>

00000000000000db <page_fault>:
  db:	50                   	push   %rax
  dc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e3 <page_fault+0x8>
  e3:	48 87 04 24          	xchg   %rax,(%rsp)
  e7:	e9 47 ff ff ff       	jmp    33 <error_code>

00000000000000ec <int3>:
  ec:	6a 00                	push   $0x0
  ee:	50                   	push   %rax
  ef:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f6 <int3+0xa>
  f6:	48 87 04 24          	xchg   %rax,(%rsp)
  fa:	e9 34 ff ff ff       	jmp    33 <error_code>

00000000000000ff <overflow>:
  ff:	6a 00                	push   $0x0
 101:	50                   	push   %rax
 102:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 109 <overflow+0xa>
 109:	48 87 04 24          	xchg   %rax,(%rsp)
 10d:	e9 21 ff ff ff       	jmp    33 <error_code>

0000000000000112 <bounds>:
 112:	6a 00                	push   $0x0
 114:	50                   	push   %rax
 115:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11c <bounds+0xa>
 11c:	48 87 04 24          	xchg   %rax,(%rsp)
 120:	e9 0e ff ff ff       	jmp    33 <error_code>

0000000000000125 <undefined_opcode>:
 125:	6a 00                	push   $0x0
 127:	50                   	push   %rax
 128:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12f <undefined_opcode+0xa>
 12f:	48 87 04 24          	xchg   %rax,(%rsp)
 133:	e9 fb fe ff ff       	jmp    33 <error_code>

0000000000000138 <dev_not_available>:
 138:	6a 00                	push   $0x0
 13a:	50                   	push   %rax
 13b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 142 <dev_not_available+0xa>
 142:	48 87 04 24          	xchg   %rax,(%rsp)
 146:	e9 e8 fe ff ff       	jmp    33 <error_code>

000000000000014b <double_fault>:
 14b:	50                   	push   %rax
 14c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 153 <double_fault+0x8>
 153:	48 87 04 24          	xchg   %rax,(%rsp)
 157:	e9 d7 fe ff ff       	jmp    33 <error_code>

000000000000015c <coprocessor_segment_overrun>:
 15c:	6a 00                	push   $0x0
 15e:	50                   	push   %rax
 15f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 166 <coprocessor_segment_overrun+0xa>
 166:	48 87 04 24          	xchg   %rax,(%rsp)
 16a:	e9 c4 fe ff ff       	jmp    33 <error_code>

000000000000016f <segment_not_present>:
 16f:	50                   	push   %rax
 170:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 177 <segment_not_present+0x8>
 177:	48 87 04 24          	xchg   %rax,(%rsp)
 17b:	e9 b3 fe ff ff       	jmp    33 <error_code>

0000000000000180 <stack_segment_fault>:
 180:	50                   	push   %rax
 181:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 188 <stack_segment_fault+0x8>
 188:	48 87 04 24          	xchg   %rax,(%rsp)
 18c:	e9 a2 fe ff ff       	jmp    33 <error_code>

0000000000000191 <general_protection>:
 191:	50                   	push   %rax
 192:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 199 <general_protection+0x8>
 199:	48 87 04 24          	xchg   %rax,(%rsp)
 19d:	e9 91 fe ff ff       	jmp    33 <error_code>

00000000000001a2 <x87_FPU_error>:
 1a2:	6a 00                	push   $0x0
 1a4:	50                   	push   %rax
 1a5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ac <x87_FPU_error+0xa>
 1ac:	48 87 04 24          	xchg   %rax,(%rsp)
 1b0:	e9 7e fe ff ff       	jmp    33 <error_code>

00000000000001b5 <alignment_check>:
 1b5:	50                   	push   %rax
 1b6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1bd <alignment_check+0x8>
 1bd:	48 87 04 24          	xchg   %rax,(%rsp)
 1c1:	e9 6d fe ff ff       	jmp    33 <error_code>

00000000000001c6 <machine_check>:
 1c6:	6a 00                	push   $0x0
 1c8:	50                   	push   %rax
 1c9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1d0 <machine_check+0xa>
 1d0:	48 87 04 24          	xchg   %rax,(%rsp)
 1d4:	e9 5a fe ff ff       	jmp    33 <error_code>

00000000000001d9 <SIMD_exception>:
 1d9:	6a 00                	push   $0x0
 1db:	50                   	push   %rax
 1dc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e3 <SIMD_exception+0xa>
 1e3:	48 87 04 24          	xchg   %rax,(%rsp)
 1e7:	e9 47 fe ff ff       	jmp    33 <error_code>

00000000000001ec <virtualization_exception>:
 1ec:	6a 00                	push   $0x0
 1ee:	50                   	push   %rax
 1ef:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f6 <virtualization_exception+0xa>
 1f6:	48 87 04 24          	xchg   %rax,(%rsp)
 1fa:	e9 34 fe ff ff       	jmp    33 <error_code>
