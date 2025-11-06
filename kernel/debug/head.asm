
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
      6b:	48 8b 05 b1 00 00 00 	mov    0xb1(%rip),%rax        # 123 <go_to_kernel>
      72:	6a 08                	push   $0x8
      74:	50                   	push   %rax
      75:	48 cb                	lretq

0000000000000077 <setup_IDT>:
      77:	48 8d 15 ad 00 00 00 	lea    0xad(%rip),%rdx        # 12b <ignore_int>
      7e:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
      85:	66 89 d0             	mov    %dx,%ax
      88:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
      8f:	8e 00 00 
      92:	48 01 c8             	add    %rcx,%rax
      95:	89 d1                	mov    %edx,%ecx
      97:	c1 e9 10             	shr    $0x10,%ecx
      9a:	48 c1 e1 30          	shl    $0x30,%rcx
      9e:	48 01 c8             	add    %rcx,%rax
      a1:	48 c1 ea 20          	shr    $0x20,%rdx
      a5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # ac <setup_IDT+0x35>
      ac:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

00000000000000b3 <rp_sidt>:
      b3:	48 89 07             	mov    %rax,(%rdi)
      b6:	48 89 57 08          	mov    %rdx,0x8(%rdi)
      ba:	48 83 c7 10          	add    $0x10,%rdi
      be:	48 ff c9             	dec    %rcx
      c1:	75 f0                	jne    b3 <rp_sidt>

00000000000000c3 <setup_TSS64>:
      c3:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # ca <setup_TSS64+0x7>
      ca:	48 31 c0             	xor    %rax,%rax
      cd:	48 31 c9             	xor    %rcx,%rcx
      d0:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
      d7:	48 c1 e0 28          	shl    $0x28,%rax
      db:	89 d1                	mov    %edx,%ecx
      dd:	c1 e9 18             	shr    $0x18,%ecx
      e0:	48 c1 e1 38          	shl    $0x38,%rcx
      e4:	48 01 c8             	add    %rcx,%rax
      e7:	48 31 c9             	xor    %rcx,%rcx
      ea:	89 d1                	mov    %edx,%ecx
      ec:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
      f2:	48 c1 e1 10          	shl    $0x10,%rcx
      f6:	48 01 c8             	add    %rcx,%rax
      f9:	48 83 c0 67          	add    $0x67,%rax
      fd:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 104 <setup_TSS64+0x41>
     104:	48 89 47 40          	mov    %rax,0x40(%rdi)
     108:	48 c1 ea 20          	shr    $0x20,%rdx
     10c:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     110:	66 b8 40 00          	mov    $0x40,%ax
     114:	0f 00 d8             	ltr    %eax
     117:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 123 <go_to_kernel>
     11e:	6a 08                	push   $0x8
     120:	50                   	push   %rax
     121:	48 cb                	lretq

0000000000000123 <go_to_kernel>:
	...

000000000000012b <ignore_int>:
     12b:	fc                   	cld
     12c:	50                   	push   %rax
     12d:	53                   	push   %rbx
     12e:	51                   	push   %rcx
     12f:	52                   	push   %rdx
     130:	55                   	push   %rbp
     131:	57                   	push   %rdi
     132:	56                   	push   %rsi
     133:	41 50                	push   %r8
     135:	41 51                	push   %r9
     137:	41 52                	push   %r10
     139:	41 53                	push   %r11
     13b:	41 54                	push   %r12
     13d:	41 55                	push   %r13
     13f:	41 56                	push   %r14
     141:	41 57                	push   %r15
     143:	8c c0                	mov    %es,%eax
     145:	50                   	push   %rax
     146:	8c d8                	mov    %ds,%eax
     148:	50                   	push   %rax
     149:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
     150:	8e d8                	mov    %eax,%ds
     152:	8e c0                	mov    %eax,%es
     154:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # 19e <int_msg>
     15b:	50                   	push   %rax
     15c:	48 89 c2             	mov    %rax,%rdx
     15f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     166:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
     16d:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
     174:	e8 00 00 00 00       	call   179 <ignore_int+0x4e>
     179:	48 83 c4 08          	add    $0x8,%rsp

000000000000017d <Loop>:
     17d:	eb fe                	jmp    17d <Loop>
     17f:	58                   	pop    %rax
     180:	8e d8                	mov    %eax,%ds
     182:	58                   	pop    %rax
     183:	8e c0                	mov    %eax,%es
     185:	41 5f                	pop    %r15
     187:	41 5e                	pop    %r14
     189:	41 5d                	pop    %r13
     18b:	41 5c                	pop    %r12
     18d:	41 5b                	pop    %r11
     18f:	41 5a                	pop    %r10
     191:	41 59                	pop    %r9
     193:	41 58                	pop    %r8
     195:	5e                   	pop    %rsi
     196:	5f                   	pop    %rdi
     197:	5d                   	pop    %rbp
     198:	5a                   	pop    %rdx
     199:	59                   	pop    %rcx
     19a:	5b                   	pop    %rbx
     19b:	58                   	pop    %rax
     19c:	48 cf                	iretq

000000000000019e <int_msg>:
     19e:	55                   	push   %rbp
     19f:	6e                   	outsb  %ds:(%rsi),(%dx)
     1a0:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
     1a4:	20 49 6e             	and    %cl,0x6e(%rcx)
     1a7:	74 65                	je     20e <int_msg+0x70>
     1a9:	72 72                	jb     21d <int_msg+0x7f>
     1ab:	75 70                	jne    21d <int_msg+0x7f>
     1ad:	74 20                	je     1cf <int_msg+0x31>
     1af:	6f                   	outsl  %ds:(%rsi),(%dx)
     1b0:	72 20                	jb     1d2 <int_msg+0x34>
     1b2:	66 61                	data16 (bad)
     1b4:	75 6c                	jne    222 <int_msg+0x84>
     1b6:	74 20                	je     1d8 <int_msg+0x3a>
     1b8:	61                   	(bad)
     1b9:	74 20                	je     1db <int_msg+0x3d>
     1bb:	52                   	push   %rdx
     1bc:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
     1c3:	79 6f                	jns    234 <int_msg+0x96>
     1c5:	75 20                	jne    1e7 <int_msg+0x49>
     1c7:	73 65                	jae    22e <int_msg+0x90>
     1c9:	72 69                	jb     234 <int_msg+0x96>
     1cb:	6f                   	outsl  %ds:(%rsi),(%dx)
     1cc:	75 73                	jne    241 <int_msg+0xa3>
     1ce:	3f                   	(bad)
     1cf:	0a 00                	or     (%rax),%al
     1d1:	90                   	nop
     1d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
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
