
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
      6b:	48 8d 15 a6 00 00 00 	lea    0xa6(%rip),%rdx        # 118 <ignore_int>
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
     104:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 110 <go_to_kernel>
     10b:	6a 08                	push   $0x8
     10d:	50                   	push   %rax
     10e:	48 cb                	lretq

0000000000000110 <go_to_kernel>:
	...

0000000000000118 <ignore_int>:
     118:	fc                   	cld
     119:	50                   	push   %rax
     11a:	53                   	push   %rbx
     11b:	51                   	push   %rcx
     11c:	52                   	push   %rdx
     11d:	55                   	push   %rbp
     11e:	57                   	push   %rdi
     11f:	56                   	push   %rsi
     120:	41 50                	push   %r8
     122:	41 51                	push   %r9
     124:	41 52                	push   %r10
     126:	41 53                	push   %r11
     128:	41 54                	push   %r12
     12a:	41 55                	push   %r13
     12c:	41 56                	push   %r14
     12e:	41 57                	push   %r15
     130:	8c c0                	mov    %es,%eax
     132:	50                   	push   %rax
     133:	8c d8                	mov    %ds,%eax
     135:	50                   	push   %rax
     136:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
     13d:	8e d8                	mov    %eax,%ds
     13f:	8e c0                	mov    %eax,%es
     141:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # 18b <int_msg>
     148:	50                   	push   %rax
     149:	48 89 c2             	mov    %rax,%rdx
     14c:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     153:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
     15a:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
     161:	e8 00 00 00 00       	call   166 <ignore_int+0x4e>
     166:	48 83 c4 08          	add    $0x8,%rsp

000000000000016a <Loop>:
     16a:	eb fe                	jmp    16a <Loop>
     16c:	58                   	pop    %rax
     16d:	8e d8                	mov    %eax,%ds
     16f:	58                   	pop    %rax
     170:	8e c0                	mov    %eax,%es
     172:	41 5f                	pop    %r15
     174:	41 5e                	pop    %r14
     176:	41 5d                	pop    %r13
     178:	41 5c                	pop    %r12
     17a:	41 5b                	pop    %r11
     17c:	41 5a                	pop    %r10
     17e:	41 59                	pop    %r9
     180:	41 58                	pop    %r8
     182:	5e                   	pop    %rsi
     183:	5f                   	pop    %rdi
     184:	5d                   	pop    %rbp
     185:	5a                   	pop    %rdx
     186:	59                   	pop    %rcx
     187:	5b                   	pop    %rbx
     188:	58                   	pop    %rax
     189:	48 cf                	iretq

000000000000018b <int_msg>:
     18b:	55                   	push   %rbp
     18c:	6e                   	outsb  %ds:(%rsi),(%dx)
     18d:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
     191:	20 49 6e             	and    %cl,0x6e(%rcx)
     194:	74 65                	je     1fb <int_msg+0x70>
     196:	72 72                	jb     20a <int_msg+0x7f>
     198:	75 70                	jne    20a <int_msg+0x7f>
     19a:	74 20                	je     1bc <int_msg+0x31>
     19c:	6f                   	outsl  %ds:(%rsi),(%dx)
     19d:	72 20                	jb     1bf <int_msg+0x34>
     19f:	66 61                	data16 (bad)
     1a1:	75 6c                	jne    20f <int_msg+0x84>
     1a3:	74 20                	je     1c5 <int_msg+0x3a>
     1a5:	61                   	(bad)
     1a6:	74 20                	je     1c8 <int_msg+0x3d>
     1a8:	52                   	push   %rdx
     1a9:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
     1b0:	79 6f                	jns    221 <int_msg+0x96>
     1b2:	75 20                	jne    1d4 <int_msg+0x49>
     1b4:	73 65                	jae    21b <int_msg+0x90>
     1b6:	72 69                	jb     221 <int_msg+0x96>
     1b8:	6f                   	outsl  %ds:(%rsi),(%dx)
     1b9:	75 73                	jne    22e <int_msg+0xa3>
     1bb:	3f                   	(bad)
     1bc:	0a 00                	or     (%rax),%al
     1be:	90                   	nop
     1bf:	90                   	nop
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
