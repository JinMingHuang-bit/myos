
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
      59:	48 8e d8             	mov    %rax,%ds
      5c:	48 8e c0             	mov    %rax,%es
      5f:	48 8e e8             	mov    %rax,%gs
      62:	48 8e d0             	mov    %rax,%ss
      65:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
      6c:	80 ff ff 

000000000000006f <setup_IDT>:
      6f:	48 8d 15 a6 00 00 00 	lea    0xa6(%rip),%rdx        # 11c <ignore_int>
      76:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
      7d:	66 89 d0             	mov    %dx,%ax
      80:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
      87:	8e 00 00 
      8a:	48 01 c8             	add    %rcx,%rax
      8d:	89 d1                	mov    %edx,%ecx
      8f:	c1 e9 10             	shr    $0x10,%ecx
      92:	48 c1 e1 30          	shl    $0x30,%rcx
      96:	48 01 c8             	add    %rcx,%rax
      99:	48 c1 ea 20          	shr    $0x20,%rdx
      9d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # a4 <setup_IDT+0x35>
      a4:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

00000000000000ab <rp_sidt>:
      ab:	48 89 07             	mov    %rax,(%rdi)
      ae:	48 89 57 08          	mov    %rdx,0x8(%rdi)
      b2:	48 83 c7 10          	add    $0x10,%rdi
      b6:	48 ff c9             	dec    %rcx
      b9:	75 f0                	jne    ab <rp_sidt>

00000000000000bb <setup_TSS64>:
      bb:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # c2 <setup_TSS64+0x7>
      c2:	48 31 c0             	xor    %rax,%rax
      c5:	48 31 c9             	xor    %rcx,%rcx
      c8:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
      cf:	48 c1 e0 28          	shl    $0x28,%rax
      d3:	89 d1                	mov    %edx,%ecx
      d5:	c1 e9 18             	shr    $0x18,%ecx
      d8:	48 c1 e1 38          	shl    $0x38,%rcx
      dc:	48 01 c8             	add    %rcx,%rax
      df:	48 31 c9             	xor    %rcx,%rcx
      e2:	89 d1                	mov    %edx,%ecx
      e4:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
      ea:	48 c1 e1 10          	shl    $0x10,%rcx
      ee:	48 01 c8             	add    %rcx,%rax
      f1:	48 83 c0 67          	add    $0x67,%rax
      f5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # fc <setup_TSS64+0x41>
      fc:	48 89 47 40          	mov    %rax,0x40(%rdi)
     100:	48 c1 ea 20          	shr    $0x20,%rdx
     104:	48 89 57 48          	mov    %rdx,0x48(%rdi)
     108:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 114 <go_to_kernel>
     10f:	6a 08                	push   $0x8
     111:	50                   	push   %rax
     112:	48 cb                	lretq  

0000000000000114 <go_to_kernel>:
	...

000000000000011c <ignore_int>:
     11c:	fc                   	cld    
     11d:	50                   	push   %rax
     11e:	53                   	push   %rbx
     11f:	51                   	push   %rcx
     120:	52                   	push   %rdx
     121:	55                   	push   %rbp
     122:	57                   	push   %rdi
     123:	56                   	push   %rsi
     124:	41 50                	push   %r8
     126:	41 51                	push   %r9
     128:	41 52                	push   %r10
     12a:	41 53                	push   %r11
     12c:	41 54                	push   %r12
     12e:	41 55                	push   %r13
     130:	41 56                	push   %r14
     132:	41 57                	push   %r15
     134:	48 8c c0             	mov    %es,%rax
     137:	50                   	push   %rax
     138:	48 8c d8             	mov    %ds,%rax
     13b:	50                   	push   %rax
     13c:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
     143:	48 8e d8             	mov    %rax,%ds
     146:	48 8e c0             	mov    %rax,%es
     149:	48 8d 05 45 00 00 00 	lea    0x45(%rip),%rax        # 195 <int_msg>
     150:	50                   	push   %rax
     151:	48 89 c2             	mov    %rax,%rdx
     154:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
     15b:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
     162:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
     169:	e8 00 00 00 00       	call   16e <ignore_int+0x52>
     16e:	48 83 c4 08          	add    $0x8,%rsp

0000000000000172 <Loop>:
     172:	eb fe                	jmp    172 <Loop>
     174:	58                   	pop    %rax
     175:	48 8e d8             	mov    %rax,%ds
     178:	58                   	pop    %rax
     179:	48 8e c0             	mov    %rax,%es
     17c:	41 5f                	pop    %r15
     17e:	41 5e                	pop    %r14
     180:	41 5d                	pop    %r13
     182:	41 5c                	pop    %r12
     184:	41 5b                	pop    %r11
     186:	41 5a                	pop    %r10
     188:	41 59                	pop    %r9
     18a:	41 58                	pop    %r8
     18c:	5e                   	pop    %rsi
     18d:	5f                   	pop    %rdi
     18e:	5d                   	pop    %rbp
     18f:	5a                   	pop    %rdx
     190:	59                   	pop    %rcx
     191:	5b                   	pop    %rbx
     192:	58                   	pop    %rax
     193:	48 cf                	iretq  

0000000000000195 <int_msg>:
     195:	55                   	push   %rbp
     196:	6e                   	outsb  %ds:(%rsi),(%dx)
     197:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
     19b:	20 49 6e             	and    %cl,0x6e(%rcx)
     19e:	74 65                	je     205 <int_msg+0x70>
     1a0:	72 72                	jb     214 <int_msg+0x7f>
     1a2:	75 70                	jne    214 <int_msg+0x7f>
     1a4:	74 20                	je     1c6 <int_msg+0x31>
     1a6:	6f                   	outsl  %ds:(%rsi),(%dx)
     1a7:	72 20                	jb     1c9 <int_msg+0x34>
     1a9:	66 61                	data16 (bad) 
     1ab:	75 6c                	jne    219 <int_msg+0x84>
     1ad:	74 20                	je     1cf <int_msg+0x3a>
     1af:	61                   	(bad)  
     1b0:	74 20                	je     1d2 <int_msg+0x3d>
     1b2:	52                   	push   %rdx
     1b3:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
     1ba:	79 6f                	jns    22b <int_msg+0x96>
     1bc:	75 20                	jne    1de <int_msg+0x49>
     1be:	73 65                	jae    225 <int_msg+0x90>
     1c0:	72 69                	jb     22b <int_msg+0x96>
     1c2:	6f                   	outsl  %ds:(%rsi),(%dx)
     1c3:	75 73                	jne    238 <int_msg+0xa3>
     1c5:	3f                   	(bad)  
     1c6:	0a 00                	or     (%rax),%al
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
