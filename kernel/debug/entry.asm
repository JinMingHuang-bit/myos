
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
  17:	48 8e d8             	mov    %rax,%ds
  1a:	58                   	pop    %rax
  1b:	48 8e c0             	mov    %rax,%es
  1e:	58                   	pop    %rax
  1f:	48 83 c4 10          	add    $0x10,%rsp
  23:	48 cf                	iretq  

0000000000000025 <divide_error>:
  25:	6a 00                	push   $0x0
  27:	50                   	push   %rax
  28:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 2f <divide_error+0xa>
  2f:	48 87 04 24          	xchg   %rax,(%rsp)
  33:	eb 00                	jmp    35 <error_code>

0000000000000035 <error_code>:
  35:	50                   	push   %rax
  36:	48 8c c0             	mov    %es,%rax
  39:	50                   	push   %rax
  3a:	48 8c d8             	mov    %ds,%rax
  3d:	50                   	push   %rax
  3e:	48 31 c0             	xor    %rax,%rax
  41:	55                   	push   %rbp
  42:	57                   	push   %rdi
  43:	56                   	push   %rsi
  44:	52                   	push   %rdx
  45:	51                   	push   %rcx
  46:	53                   	push   %rbx
  47:	41 50                	push   %r8
  49:	41 51                	push   %r9
  4b:	41 52                	push   %r10
  4d:	41 53                	push   %r11
  4f:	41 54                	push   %r12
  51:	41 55                	push   %r13
  53:	41 56                	push   %r14
  55:	41 57                	push   %r15
  57:	fc                   	cld    
  58:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
  5f:	00 
  60:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
  67:	00 
  68:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
  6f:	48 8e df             	mov    %rdi,%ds
  72:	48 8e c7             	mov    %rdi,%es
  75:	48 89 e7             	mov    %rsp,%rdi
  78:	ff d2                	call   *%rdx
  7a:	eb 00                	jmp    7c <ret_from_intr>

000000000000007c <ret_from_intr>:
  7c:	eb 82                	jmp    0 <RESTORE_ALL>

000000000000007e <debug>:
  7e:	6a 00                	push   $0x0
  80:	50                   	push   %rax
  81:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 88 <debug+0xa>
  88:	48 87 04 24          	xchg   %rax,(%rsp)
  8c:	eb a7                	jmp    35 <error_code>

000000000000008e <nmi>:
  8e:	50                   	push   %rax
  8f:	fc                   	cld    
  90:	50                   	push   %rax
  91:	50                   	push   %rax
  92:	48 8c c0             	mov    %es,%rax
  95:	50                   	push   %rax
  96:	48 8c d8             	mov    %ds,%rax
  99:	50                   	push   %rax
  9a:	48 31 c0             	xor    %rax,%rax
  9d:	55                   	push   %rbp
  9e:	57                   	push   %rdi
  9f:	56                   	push   %rsi
  a0:	52                   	push   %rdx
  a1:	51                   	push   %rcx
  a2:	53                   	push   %rbx
  a3:	41 50                	push   %r8
  a5:	41 51                	push   %r9
  a7:	41 52                	push   %r10
  a9:	41 53                	push   %r11
  ab:	41 54                	push   %r12
  ad:	41 55                	push   %r13
  af:	41 56                	push   %r14
  b1:	41 57                	push   %r15
  b3:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
  ba:	48 8e da             	mov    %rdx,%ds
  bd:	48 8e c2             	mov    %rdx,%es
  c0:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
  c7:	48 89 e6             	mov    %rsp,%rsi
  ca:	e8 00 00 00 00       	call   cf <nmi+0x41>
  cf:	e9 2c ff ff ff       	jmp    0 <RESTORE_ALL>

00000000000000d4 <invalid_TSS>:
  d4:	50                   	push   %rax
  d5:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # dc <invalid_TSS+0x8>
  dc:	48 87 04 24          	xchg   %rax,(%rsp)
  e0:	e9 50 ff ff ff       	jmp    35 <error_code>

00000000000000e5 <page_fault>:
  e5:	50                   	push   %rax
  e6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # ed <page_fault+0x8>
  ed:	48 87 04 24          	xchg   %rax,(%rsp)
  f1:	e9 3f ff ff ff       	jmp    35 <error_code>

00000000000000f6 <int3>:
  f6:	6a 00                	push   $0x0
  f8:	50                   	push   %rax
  f9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 100 <int3+0xa>
 100:	48 87 04 24          	xchg   %rax,(%rsp)
 104:	e9 2c ff ff ff       	jmp    35 <error_code>

0000000000000109 <overflow>:
 109:	6a 00                	push   $0x0
 10b:	50                   	push   %rax
 10c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 113 <overflow+0xa>
 113:	48 87 04 24          	xchg   %rax,(%rsp)
 117:	e9 19 ff ff ff       	jmp    35 <error_code>

000000000000011c <bounds>:
 11c:	6a 00                	push   $0x0
 11e:	50                   	push   %rax
 11f:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 126 <bounds+0xa>
 126:	48 87 04 24          	xchg   %rax,(%rsp)
 12a:	e9 06 ff ff ff       	jmp    35 <error_code>

000000000000012f <undefined_opcode>:
 12f:	6a 00                	push   $0x0
 131:	50                   	push   %rax
 132:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 139 <undefined_opcode+0xa>
 139:	48 87 04 24          	xchg   %rax,(%rsp)
 13d:	e9 f3 fe ff ff       	jmp    35 <error_code>

0000000000000142 <dev_not_available>:
 142:	6a 00                	push   $0x0
 144:	50                   	push   %rax
 145:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 14c <dev_not_available+0xa>
 14c:	48 87 04 24          	xchg   %rax,(%rsp)
 150:	e9 e0 fe ff ff       	jmp    35 <error_code>

0000000000000155 <double_fault>:
 155:	50                   	push   %rax
 156:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 15d <double_fault+0x8>
 15d:	48 87 04 24          	xchg   %rax,(%rsp)
 161:	e9 cf fe ff ff       	jmp    35 <error_code>

0000000000000166 <coprocessor_segment_overrun>:
 166:	6a 00                	push   $0x0
 168:	50                   	push   %rax
 169:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 170 <coprocessor_segment_overrun+0xa>
 170:	48 87 04 24          	xchg   %rax,(%rsp)
 174:	e9 bc fe ff ff       	jmp    35 <error_code>

0000000000000179 <segment_not_present>:
 179:	50                   	push   %rax
 17a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 181 <segment_not_present+0x8>
 181:	48 87 04 24          	xchg   %rax,(%rsp)
 185:	e9 ab fe ff ff       	jmp    35 <error_code>

000000000000018a <stack_segment_fault>:
 18a:	50                   	push   %rax
 18b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 192 <stack_segment_fault+0x8>
 192:	48 87 04 24          	xchg   %rax,(%rsp)
 196:	e9 9a fe ff ff       	jmp    35 <error_code>

000000000000019b <general_protection>:
 19b:	50                   	push   %rax
 19c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1a3 <general_protection+0x8>
 1a3:	48 87 04 24          	xchg   %rax,(%rsp)
 1a7:	e9 89 fe ff ff       	jmp    35 <error_code>

00000000000001ac <x87_FPU_error>:
 1ac:	6a 00                	push   $0x0
 1ae:	50                   	push   %rax
 1af:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1b6 <x87_FPU_error+0xa>
 1b6:	48 87 04 24          	xchg   %rax,(%rsp)
 1ba:	e9 76 fe ff ff       	jmp    35 <error_code>

00000000000001bf <alignment_check>:
 1bf:	50                   	push   %rax
 1c0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1c7 <alignment_check+0x8>
 1c7:	48 87 04 24          	xchg   %rax,(%rsp)
 1cb:	e9 65 fe ff ff       	jmp    35 <error_code>

00000000000001d0 <machine_check>:
 1d0:	6a 00                	push   $0x0
 1d2:	50                   	push   %rax
 1d3:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1da <machine_check+0xa>
 1da:	48 87 04 24          	xchg   %rax,(%rsp)
 1de:	e9 52 fe ff ff       	jmp    35 <error_code>

00000000000001e3 <SIMD_exception>:
 1e3:	6a 00                	push   $0x0
 1e5:	50                   	push   %rax
 1e6:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1ed <SIMD_exception+0xa>
 1ed:	48 87 04 24          	xchg   %rax,(%rsp)
 1f1:	e9 3f fe ff ff       	jmp    35 <error_code>

00000000000001f6 <virtualization_exception>:
 1f6:	6a 00                	push   $0x0
 1f8:	50                   	push   %rax
 1f9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 200 <virtualization_exception+0xa>
 200:	48 87 04 24          	xchg   %rax,(%rsp)
 204:	e9 2c fe ff ff       	jmp    35 <error_code>
