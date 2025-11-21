
head.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <_start>:
       0:	66 b8 10 00          	mov    $0x10,%ax
       4:	8e d8                	mov    %eax,%ds
       6:	8e c0                	mov    %eax,%es
       8:	8e e0                	mov    %eax,%fs
       a:	8e d0                	mov    %eax,%ss
       c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
      11:	0f 01 15 00 00 00 00 	lgdt   0x0(%rip)        # 18 <_start+0x18>
      18:	0f 01 1d 00 00 00 00 	lidt   0x0(%rip)        # 1f <_start+0x1f>
      1f:	66 b8 10 00          	mov    $0x10,%ax
      23:	8e d8                	mov    %eax,%ds
      25:	8e c0                	mov    %eax,%es
      27:	8e e0                	mov    %eax,%fs
      29:	8e e8                	mov    %eax,%gs
      2b:	8e d0                	mov    %eax,%ss
      2d:	48 c7 c4 00 7e 00 00 	mov    $0x7e00,%rsp
      34:	48 c7 c0 00 10 10 00 	mov    $0x101000,%rax
      3b:	0f 22 d8             	mov    %rax,%cr3
      3e:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 4a <switch_seg>
      45:	6a 08                	push   $0x8
      47:	50                   	push   %rax
      48:	48 cb                	lretq

000000000000004a <switch_seg>:
	...

0000000000000052 <entry64>:
      52:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
      59:	8e d8                	mov    %eax,%ds
      5b:	8e c0                	mov    %eax,%es
      5d:	8e e8                	mov    %eax,%gs
      5f:	8e d0                	mov    %eax,%ss
      61:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
      68:	80 ff ff 

000000000000006b <setup_IDT>:
      6b:	48 8d 15 ad 00 00 00 	lea    0xad(%rip),%rdx        # 11f <ignore_int>
      72:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
      79:	66 89 d0             	mov    %dx,%ax
      7c:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
      83:	8e 00 00 
      86:	48 01 c8             	add    %rcx,%rax
      89:	89 d1                	mov    %edx,%ecx
      8b:	c1 e9 10             	shr    $0x10,%ecx
      8e:	48 c1 e1 30          	shl    $0x30,%rcx
      92:	48 01 c8             	add    %rcx,%rax
      95:	48 c1 ea 20          	shr    $0x20,%rdx
      99:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # a0 <setup_IDT+0x35>
      a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

00000000000000a7 <rp_sidt>:
      a7:	48 89 07             	mov    %rax,(%rdi)
      aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
      ae:	48 83 c7 10          	add    $0x10,%rdi
      b2:	48 ff c9             	dec    %rcx
      b5:	75 f0                	jne    a7 <rp_sidt>

00000000000000b7 <setup_TSS64>:
      b7:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # be <setup_TSS64+0x7>
      be:	48 31 c0             	xor    %rax,%rax
      c1:	48 31 c9             	xor    %rcx,%rcx
      c4:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
      cb:	48 c1 e0 28          	shl    $0x28,%rax
      cf:	89 d1                	mov    %edx,%ecx
      d1:	c1 e9 18             	shr    $0x18,%ecx
      d4:	48 c1 e1 38          	shl    $0x38,%rcx
      d8:	48 01 c8             	add    %rcx,%rax
      db:	48 31 c9             	xor    %rcx,%rcx
      de:	89 d1                	mov    %edx,%ecx
      e0:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
      e6:	48 c1 e1 10          	shl    $0x10,%rcx
      ea:	48 01 c8             	add    %rcx,%rax
      ed:	48 83 c0 67          	add    $0x67,%rax
      f1:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # f8 <setup_TSS64+0x41>
      f8:	48 89 47 40          	mov    %rax,0x40(%rdi)
      fc:	48 c1 ea 20          	shr    $0x20,%rdx
     100:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     104:	66 b8 40 00          	mov    $0x40,%ax
     108:	0f 00 d8             	ltr    %eax
     10b:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 117 <go_to_kernel>
     112:	6a 08                	push   $0x8
     114:	50                   	push   %rax
     115:	48 cb                	lretq

0000000000000117 <go_to_kernel>:
	...

000000000000011f <ignore_int>:
     11f:	fc                   	cld
     120:	50                   	push   %rax
     121:	53                   	push   %rbx
     122:	51                   	push   %rcx
     123:	52                   	push   %rdx
     124:	55                   	push   %rbp
     125:	57                   	push   %rdi
     126:	56                   	push   %rsi
     127:	41 50                	push   %r8
     129:	41 51                	push   %r9
     12b:	41 52                	push   %r10
     12d:	41 53                	push   %r11
     12f:	41 54                	push   %r12
     131:	41 55                	push   %r13
     133:	41 56                	push   %r14
     135:	41 57                	push   %r15
     137:	8c c0                	mov    %es,%eax
     139:	50                   	push   %rax
     13a:	8c d8                	mov    %ds,%eax
     13c:	50                   	push   %rax
     13d:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
     144:	8e d8                	mov    %eax,%ds
     146:	8e c0                	mov    %eax,%es
     148:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # 192 <int_msg>
     14f:	50                   	push   %rax
     150:	48 89 c2             	mov    %rax,%rdx
     153:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     15a:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
     161:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
     168:	e8 00 00 00 00       	call   16d <ignore_int+0x4e>
     16d:	48 83 c4 08          	add    $0x8,%rsp

0000000000000171 <Loop>:
     171:	eb fe                	jmp    171 <Loop>
     173:	58                   	pop    %rax
     174:	8e d8                	mov    %eax,%ds
     176:	58                   	pop    %rax
     177:	8e c0                	mov    %eax,%es
     179:	41 5f                	pop    %r15
     17b:	41 5e                	pop    %r14
     17d:	41 5d                	pop    %r13
     17f:	41 5c                	pop    %r12
     181:	41 5b                	pop    %r11
     183:	41 5a                	pop    %r10
     185:	41 59                	pop    %r9
     187:	41 58                	pop    %r8
     189:	5e                   	pop    %rsi
     18a:	5f                   	pop    %rdi
     18b:	5d                   	pop    %rbp
     18c:	5a                   	pop    %rdx
     18d:	59                   	pop    %rcx
     18e:	5b                   	pop    %rbx
     18f:	58                   	pop    %rax
     190:	48 cf                	iretq

0000000000000192 <int_msg>:
     192:	55                   	push   %rbp
     193:	6e                   	outsb  %ds:(%rsi),(%dx)
     194:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
     198:	20 49 6e             	and    %cl,0x6e(%rcx)
     19b:	74 65                	je     202 <int_msg+0x70>
     19d:	72 72                	jb     211 <int_msg+0x7f>
     19f:	75 70                	jne    211 <int_msg+0x7f>
     1a1:	74 20                	je     1c3 <int_msg+0x31>
     1a3:	6f                   	outsl  %ds:(%rsi),(%dx)
     1a4:	72 20                	jb     1c6 <int_msg+0x34>
     1a6:	66 61                	data16 (bad)
     1a8:	75 6c                	jne    216 <int_msg+0x84>
     1aa:	74 20                	je     1cc <int_msg+0x3a>
     1ac:	61                   	(bad)
     1ad:	74 20                	je     1cf <int_msg+0x3d>
     1af:	52                   	push   %rdx
     1b0:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
     1b7:	79 6f                	jns    228 <int_msg+0x96>
     1b9:	75 20                	jne    1db <int_msg+0x49>
     1bb:	73 65                	jae    222 <int_msg+0x90>
     1bd:	72 69                	jb     228 <int_msg+0x96>
     1bf:	6f                   	outsl  %ds:(%rsi),(%dx)
     1c0:	75 73                	jne    235 <int_msg+0xa3>
     1c2:	3f                   	(bad)
     1c3:	0a 00                	or     (%rax),%al
     1c5:	90                   	nop
     1c6:	66 90                	xchg   %ax,%ax
	...

0000000000001000 <__PML4E>:
    1000:	07                   	(bad)
    1001:	20 10                	and    %dl,(%rax)
	...
    17ff:	00 07                	add    %al,(%rdi)
    1801:	20 10                	and    %dl,(%rax)
	...

0000000000002000 <__PDPTE>:
    2000:	03 30                	add    (%rax),%esi
    2002:	10 00                	adc    %al,(%rax)
	...

0000000000003000 <__PDE>:
    3000:	83 00 00             	addl   $0x0,(%rax)
    3003:	00 00                	add    %al,(%rax)
    3005:	00 00                	add    %al,(%rax)
    3007:	00 83 00 20 00 00    	add    %al,0x2000(%rbx)
    300d:	00 00                	add    %al,(%rax)
    300f:	00 83 00 40 00 00    	add    %al,0x4000(%rbx)
    3015:	00 00                	add    %al,(%rax)
    3017:	00 83 00 60 00 00    	add    %al,0x6000(%rbx)
    301d:	00 00                	add    %al,(%rax)
    301f:	00 83 00 80 00 00    	add    %al,0x8000(%rbx)
    3025:	00 00                	add    %al,(%rax)
    3027:	00 83 00 00 e0 00    	add    %al,0xe00000(%rbx)
    302d:	00 00                	add    %al,(%rax)
    302f:	00 83 00 20 e0 00    	add    %al,0xe02000(%rbx)
    3035:	00 00                	add    %al,(%rax)
    3037:	00 83 00 40 e0 00    	add    %al,0xe04000(%rbx)
    303d:	00 00                	add    %al,(%rax)
    303f:	00 83 00 60 e0 00    	add    %al,0xe06000(%rbx)
    3045:	00 00                	add    %al,(%rax)
    3047:	00 83 00 80 e0 00    	add    %al,0xe08000(%rbx)
    304d:	00 00                	add    %al,(%rax)
    304f:	00 83 00 a0 e0 00    	add    %al,0xe0a000(%rbx)
    3055:	00 00                	add    %al,(%rax)
    3057:	00 83 00 c0 e0 00    	add    %al,0xe0c000(%rbx)
    305d:	00 00                	add    %al,(%rax)
    305f:	00 83 00 e0 e0 00    	add    %al,0xe0e000(%rbx)
	...
