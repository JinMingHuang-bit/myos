
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

0000000000000031 <error_code>:
  31:	50                   	push   %rax
  32:	8c c0                	mov    %es,%eax
  34:	50                   	push   %rax
  35:	8c d8                	mov    %ds,%eax
  37:	50                   	push   %rax
  38:	48 31 c0             	xor    %rax,%rax
  3b:	55                   	push   %rbp
  3c:	57                   	push   %rdi
  3d:	56                   	push   %rsi
  3e:	52                   	push   %rdx
  3f:	51                   	push   %rcx
  40:	53                   	push   %rbx
  41:	41 50                	push   %r8
  43:	41 51                	push   %r9
  45:	41 52                	push   %r10
  47:	41 53                	push   %r11
  49:	41 54                	push   %r12
  4b:	41 55                	push   %r13
  4d:	41 56                	push   %r14
  4f:	41 57                	push   %r15
  51:	fc                   	cld
  52:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  59:	00 
  5a:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  61:	00 
  62:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
  69:	8e df                	mov    %edi,%ds
  6b:	8e c7                	mov    %edi,%es
  6d:	48 89 e7             	mov    %rsp,%rdi
  70:	ff d2                	call   *%rdx
  72:	eb 00                	jmp    74 <ret_from_intr>

0000000000000074 <ret_from_intr>:
  74:	eb 8a                	jmp    0 <RESTORE_ALL>

0000000000000076 <debug>:
  76:	6a 00                	push   $0x0
  78:	50                   	push   %rax
  79:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 80 <debug+0xa>
  80:	48 87 04 24          	xchg   %rax,(%rsp)
  84:	eb ab                	jmp    31 <error_code>

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
  b4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  bb:	48 89 e6             	mov    %rsp,%rsi
  be:	e8 00 00 00 00       	call   c3 <nmi+0x3d>
  c3:	e9 38 ff ff ff       	jmp    0 <RESTORE_ALL>

00000000000000c8 <invalid_TSS>:
  c8:	50                   	push   %rax
  c9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # d0 <invalid_TSS+0x8>
  d0:	48 87 04 24          	xchg   %rax,(%rsp)
  d4:	e9 58 ff ff ff       	jmp    31 <error_code>

00000000000000d9 <page_fault>:
  d9:	50                   	push   %rax
  da:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # e1 <page_fault+0x8>
  e1:	48 87 04 24          	xchg   %rax,(%rsp)
  e5:	e9 47 ff ff ff       	jmp    31 <error_code>

00000000000000ea <int3>:
  ea:	6a 00                	push   $0x0
  ec:	50                   	push   %rax
  ed:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # f4 <int3+0xa>
  f4:	48 87 04 24          	xchg   %rax,(%rsp)
  f8:	e9 34 ff ff ff       	jmp    31 <error_code>

00000000000000fd <overflow>:
  fd:	6a 00                	push   $0x0
  ff:	50                   	push   %rax
 100:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 107 <overflow+0xa>
 107:	48 87 04 24          	xchg   %rax,(%rsp)
 10b:	e9 21 ff ff ff       	jmp    31 <error_code>

0000000000000110 <bounds>:
 110:	6a 00                	push   $0x0
 112:	50                   	push   %rax
 113:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11a <bounds+0xa>
 11a:	48 87 04 24          	xchg   %rax,(%rsp)
 11e:	e9 0e ff ff ff       	jmp    31 <error_code>

0000000000000123 <undefined_opcode>:
 123:	6a 00                	push   $0x0
 125:	50                   	push   %rax
 126:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 12d <undefined_opcode+0xa>
 12d:	48 87 04 24          	xchg   %rax,(%rsp)
 131:	e9 fb fe ff ff       	jmp    31 <error_code>

0000000000000136 <dev_not_available>:
 136:	6a 00                	push   $0x0
 138:	50                   	push   %rax
 139:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 140 <dev_not_available+0xa>
 140:	48 87 04 24          	xchg   %rax,(%rsp)
 144:	e9 e8 fe ff ff       	jmp    31 <error_code>

0000000000000149 <double_fault>:
 149:	50                   	push   %rax
 14a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 151 <double_fault+0x8>
 151:	48 87 04 24          	xchg   %rax,(%rsp)
 155:	e9 d7 fe ff ff       	jmp    31 <error_code>

000000000000015a <coprocessor_segment_overrun>:
 15a:	6a 00                	push   $0x0
 15c:	50                   	push   %rax
 15d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 164 <coprocessor_segment_overrun+0xa>
 164:	48 87 04 24          	xchg   %rax,(%rsp)
 168:	e9 c4 fe ff ff       	jmp    31 <error_code>

000000000000016d <segment_not_present>:
 16d:	50                   	push   %rax
 16e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 175 <segment_not_present+0x8>
 175:	48 87 04 24          	xchg   %rax,(%rsp)
 179:	e9 b3 fe ff ff       	jmp    31 <error_code>

000000000000017e <stack_segment_fault>:
 17e:	50                   	push   %rax
 17f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 186 <stack_segment_fault+0x8>
 186:	48 87 04 24          	xchg   %rax,(%rsp)
 18a:	e9 a2 fe ff ff       	jmp    31 <error_code>

000000000000018f <general_protection>:
 18f:	50                   	push   %rax
 190:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 197 <general_protection+0x8>
 197:	48 87 04 24          	xchg   %rax,(%rsp)
 19b:	e9 91 fe ff ff       	jmp    31 <error_code>

00000000000001a0 <x87_FPU_error>:
 1a0:	6a 00                	push   $0x0
 1a2:	50                   	push   %rax
 1a3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1aa <x87_FPU_error+0xa>
 1aa:	48 87 04 24          	xchg   %rax,(%rsp)
 1ae:	e9 7e fe ff ff       	jmp    31 <error_code>

00000000000001b3 <alignment_check>:
 1b3:	50                   	push   %rax
 1b4:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1bb <alignment_check+0x8>
 1bb:	48 87 04 24          	xchg   %rax,(%rsp)
 1bf:	e9 6d fe ff ff       	jmp    31 <error_code>

00000000000001c4 <machine_check>:
 1c4:	6a 00                	push   $0x0
 1c6:	50                   	push   %rax
 1c7:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ce <machine_check+0xa>
 1ce:	48 87 04 24          	xchg   %rax,(%rsp)
 1d2:	e9 5a fe ff ff       	jmp    31 <error_code>

00000000000001d7 <SIMD_exception>:
 1d7:	6a 00                	push   $0x0
 1d9:	50                   	push   %rax
 1da:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e1 <SIMD_exception+0xa>
 1e1:	48 87 04 24          	xchg   %rax,(%rsp)
 1e5:	e9 47 fe ff ff       	jmp    31 <error_code>

00000000000001ea <virtualization_exception>:
 1ea:	6a 00                	push   $0x0
 1ec:	50                   	push   %rax
 1ed:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1f4 <virtualization_exception+0xa>
 1f4:	48 87 04 24          	xchg   %rax,(%rsp)
 1f8:	e9 34 fe ff ff       	jmp    31 <error_code>
