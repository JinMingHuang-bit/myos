
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
      6b:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # 77 <go_to_kernel>
      72:	6a 08                	push   $0x8
      74:	50                   	push   %rax
      75:	48 cb                	lretq

0000000000000077 <go_to_kernel>:
	...
      7f:	90                   	nop
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
