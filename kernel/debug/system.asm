
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 8a 00 00 	lgdt   0x8a50(%rip)        # ffff800000108a68 <GDT_END>
ffff800000100018:	0f 01 1d 53 9a 00 00 	lidt   0x9a53(%rip)        # ffff800000109a72 <IDT_END>
ffff80000010001f:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100023:	8e d8                	mov    %eax,%ds
ffff800000100025:	8e c0                	mov    %eax,%es
ffff800000100027:	8e e0                	mov    %eax,%fs
ffff800000100029:	8e e8                	mov    %eax,%gs
ffff80000010002b:	8e d0                	mov    %eax,%ss
ffff80000010002d:	48 c7 c4 00 7e 00 00 	mov    $0x7e00,%rsp
ffff800000100034:	48 c7 c0 00 10 10 00 	mov    $0x101000,%rax
ffff80000010003b:	0f 22 d8             	mov    %rax,%cr3
ffff80000010003e:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff80000010004a <switch_seg>
ffff800000100045:	6a 08                	push   $0x8
ffff800000100047:	50                   	push   %rax
ffff800000100048:	48 cb                	lretq

ffff80000010004a <switch_seg>:
ffff80000010004a:	52                   	push   %rdx
ffff80000010004b:	00 10                	add    %dl,(%rax)
ffff80000010004d:	00 00                	add    %al,(%rax)
ffff80000010004f:	80 ff ff             	cmp    $0xff,%bh

ffff800000100052 <entry64>:
ffff800000100052:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100059:	8e d8                	mov    %eax,%ds
ffff80000010005b:	8e c0                	mov    %eax,%es
ffff80000010005d:	8e e8                	mov    %eax,%gs
ffff80000010005f:	8e d0                	mov    %eax,%ss
ffff800000100061:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
ffff800000100068:	80 ff ff 

ffff80000010006b <setup_IDT>:
ffff80000010006b:	48 8d 15 a6 00 00 00 	lea    0xa6(%rip),%rdx        # ffff800000100118 <ignore_int>
ffff800000100072:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
ffff800000100079:	66 89 d0             	mov    %dx,%ax
ffff80000010007c:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
ffff800000100083:	8e 00 00 
ffff800000100086:	48 01 c8             	add    %rcx,%rax
ffff800000100089:	89 d1                	mov    %edx,%ecx
ffff80000010008b:	c1 e9 10             	shr    $0x10,%ecx
ffff80000010008e:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000100092:	48 01 c8             	add    %rcx,%rax
ffff800000100095:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000100099:	48 8d 3d d2 89 00 00 	lea    0x89d2(%rip),%rdi        # ffff800000108a72 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 be 99 00 00 	lea    0x99be(%rip),%rdx        # ffff800000109a7c <TSS64_Table>
ffff8000001000be:	48 31 c0             	xor    %rax,%rax
ffff8000001000c1:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000c4:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
ffff8000001000cb:	48 c1 e0 28          	shl    $0x28,%rax
ffff8000001000cf:	89 d1                	mov    %edx,%ecx
ffff8000001000d1:	c1 e9 18             	shr    $0x18,%ecx
ffff8000001000d4:	48 c1 e1 38          	shl    $0x38,%rcx
ffff8000001000d8:	48 01 c8             	add    %rcx,%rax
ffff8000001000db:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000de:	89 d1                	mov    %edx,%ecx
ffff8000001000e0:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
ffff8000001000e6:	48 c1 e1 10          	shl    $0x10,%rcx
ffff8000001000ea:	48 01 c8             	add    %rcx,%rax
ffff8000001000ed:	48 83 c0 67          	add    $0x67,%rax
ffff8000001000f1:	48 8d 3d e8 88 00 00 	lea    0x88e8(%rip),%rdi        # ffff8000001089e0 <GDT_Table>
ffff8000001000f8:	48 89 47 40          	mov    %rax,0x40(%rdi)
ffff8000001000fc:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000100100:	48 89 57 48          	mov    %rdx,0x48(%rdi)
ffff800000100104:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100110 <go_to_kernel>
ffff80000010010b:	6a 08                	push   $0x8
ffff80000010010d:	50                   	push   %rax
ffff80000010010e:	48 cb                	lretq

ffff800000100110 <go_to_kernel>:
ffff800000100110:	31 41 10             	xor    %eax,0x10(%rcx)
ffff800000100113:	00 00                	add    %al,(%rax)
ffff800000100115:	80 ff ff             	cmp    $0xff,%bh

ffff800000100118 <ignore_int>:
ffff800000100118:	fc                   	cld
ffff800000100119:	50                   	push   %rax
ffff80000010011a:	53                   	push   %rbx
ffff80000010011b:	51                   	push   %rcx
ffff80000010011c:	52                   	push   %rdx
ffff80000010011d:	55                   	push   %rbp
ffff80000010011e:	57                   	push   %rdi
ffff80000010011f:	56                   	push   %rsi
ffff800000100120:	41 50                	push   %r8
ffff800000100122:	41 51                	push   %r9
ffff800000100124:	41 52                	push   %r10
ffff800000100126:	41 53                	push   %r11
ffff800000100128:	41 54                	push   %r12
ffff80000010012a:	41 55                	push   %r13
ffff80000010012c:	41 56                	push   %r14
ffff80000010012e:	41 57                	push   %r15
ffff800000100130:	8c c0                	mov    %es,%eax
ffff800000100132:	50                   	push   %rax
ffff800000100133:	8c d8                	mov    %ds,%eax
ffff800000100135:	50                   	push   %rax
ffff800000100136:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff80000010013d:	8e d8                	mov    %eax,%ds
ffff80000010013f:	8e c0                	mov    %eax,%es
ffff800000100141:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # ffff80000010018b <int_msg>
ffff800000100148:	50                   	push   %rax
ffff800000100149:	48 89 c2             	mov    %rax,%rdx
ffff80000010014c:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
ffff800000100153:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
ffff80000010015a:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
ffff800000100161:	e8 f3 43 00 00       	call   ffff800000104559 <color_printk>
ffff800000100166:	48 83 c4 08          	add    $0x8,%rsp

ffff80000010016a <Loop>:
ffff80000010016a:	eb fe                	jmp    ffff80000010016a <Loop>
ffff80000010016c:	58                   	pop    %rax
ffff80000010016d:	8e d8                	mov    %eax,%ds
ffff80000010016f:	58                   	pop    %rax
ffff800000100170:	8e c0                	mov    %eax,%es
ffff800000100172:	41 5f                	pop    %r15
ffff800000100174:	41 5e                	pop    %r14
ffff800000100176:	41 5d                	pop    %r13
ffff800000100178:	41 5c                	pop    %r12
ffff80000010017a:	41 5b                	pop    %r11
ffff80000010017c:	41 5a                	pop    %r10
ffff80000010017e:	41 59                	pop    %r9
ffff800000100180:	41 58                	pop    %r8
ffff800000100182:	5e                   	pop    %rsi
ffff800000100183:	5f                   	pop    %rdi
ffff800000100184:	5d                   	pop    %rbp
ffff800000100185:	5a                   	pop    %rdx
ffff800000100186:	59                   	pop    %rcx
ffff800000100187:	5b                   	pop    %rbx
ffff800000100188:	58                   	pop    %rax
ffff800000100189:	48 cf                	iretq

ffff80000010018b <int_msg>:
ffff80000010018b:	55                   	push   %rbp
ffff80000010018c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010018d:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
ffff800000100191:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff800000100194:	74 65                	je     ffff8000001001fb <int_msg+0x70>
ffff800000100196:	72 72                	jb     ffff80000010020a <int_msg+0x7f>
ffff800000100198:	75 70                	jne    ffff80000010020a <int_msg+0x7f>
ffff80000010019a:	74 20                	je     ffff8000001001bc <int_msg+0x31>
ffff80000010019c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010019d:	72 20                	jb     ffff8000001001bf <int_msg+0x34>
ffff80000010019f:	66 61                	data16 (bad)
ffff8000001001a1:	75 6c                	jne    ffff80000010020f <int_msg+0x84>
ffff8000001001a3:	74 20                	je     ffff8000001001c5 <int_msg+0x3a>
ffff8000001001a5:	61                   	(bad)
ffff8000001001a6:	74 20                	je     ffff8000001001c8 <int_msg+0x3d>
ffff8000001001a8:	52                   	push   %rdx
ffff8000001001a9:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
ffff8000001001b0:	79 6f                	jns    ffff800000100221 <int_msg+0x96>
ffff8000001001b2:	75 20                	jne    ffff8000001001d4 <int_msg+0x49>
ffff8000001001b4:	73 65                	jae    ffff80000010021b <int_msg+0x90>
ffff8000001001b6:	72 69                	jb     ffff800000100221 <int_msg+0x96>
ffff8000001001b8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001b9:	75 73                	jne    ffff80000010022e <int_msg+0xa3>
ffff8000001001bb:	3f                   	(bad)
ffff8000001001bc:	0a 00                	or     (%rax),%al
ffff8000001001be:	90                   	nop
ffff8000001001bf:	90                   	nop
	...

ffff800000101000 <__PML4E>:
ffff800000101000:	07                   	(bad)
ffff800000101001:	20 10                	and    %dl,(%rax)
	...
ffff8000001017ff:	00 07                	add    %al,(%rdi)
ffff800000101801:	20 10                	and    %dl,(%rax)
	...

ffff800000102000 <__PDPTE>:
ffff800000102000:	03 30                	add    (%rax),%esi
ffff800000102002:	10 00                	adc    %al,(%rax)
	...

ffff800000103000 <__PDE>:
ffff800000103000:	83 00 00             	addl   $0x0,(%rax)
ffff800000103003:	00 00                	add    %al,(%rax)
ffff800000103005:	00 00                	add    %al,(%rax)
ffff800000103007:	00 83 00 20 00 00    	add    %al,0x2000(%rbx)
ffff80000010300d:	00 00                	add    %al,(%rax)
ffff80000010300f:	00 83 00 40 00 00    	add    %al,0x4000(%rbx)
ffff800000103015:	00 00                	add    %al,(%rax)
ffff800000103017:	00 83 00 60 00 00    	add    %al,0x6000(%rbx)
ffff80000010301d:	00 00                	add    %al,(%rax)
ffff80000010301f:	00 83 00 80 00 00    	add    %al,0x8000(%rbx)
ffff800000103025:	00 00                	add    %al,(%rax)
ffff800000103027:	00 83 00 00 e0 00    	add    %al,0xe00000(%rbx)
ffff80000010302d:	00 00                	add    %al,(%rax)
ffff80000010302f:	00 83 00 20 e0 00    	add    %al,0xe02000(%rbx)
ffff800000103035:	00 00                	add    %al,(%rax)
ffff800000103037:	00 83 00 40 e0 00    	add    %al,0xe04000(%rbx)
ffff80000010303d:	00 00                	add    %al,(%rax)
ffff80000010303f:	00 83 00 60 e0 00    	add    %al,0xe06000(%rbx)
ffff800000103045:	00 00                	add    %al,(%rax)
ffff800000103047:	00 83 00 80 e0 00    	add    %al,0xe08000(%rbx)
ffff80000010304d:	00 00                	add    %al,(%rax)
ffff80000010304f:	00 83 00 a0 e0 00    	add    %al,0xe0a000(%rbx)
ffff800000103055:	00 00                	add    %al,(%rax)
ffff800000103057:	00 83 00 c0 e0 00    	add    %al,0xe0c000(%rbx)
ffff80000010305d:	00 00                	add    %al,(%rax)
ffff80000010305f:	00 83 00 e0 e0 00    	add    %al,0xe0e000(%rbx)
	...

ffff800000104000 <set_tss64>:
ffff800000104000:	f3 0f 1e fa          	endbr64
ffff800000104004:	55                   	push   %rbp
ffff800000104005:	48 89 e5             	mov    %rsp,%rbp
ffff800000104008:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104008 <set_tss64+0x8>
ffff80000010400f:	49 bb a8 9b 00 00 00 	movabs $0x9ba8,%r11
ffff800000104016:	00 00 00 
ffff800000104019:	4c 01 d8             	add    %r11,%rax
ffff80000010401c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000104020:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000104024:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104028:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff80000010402c:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000104030:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000104034:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010403b:	ff ff ff 
ffff80000010403e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104042:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000104046:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff80000010404a:	48 89 0a             	mov    %rcx,(%rdx)
ffff80000010404d:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000104054:	ff ff ff 
ffff800000104057:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010405b:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff80000010405f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104063:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104066:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010406d:	ff ff ff 
ffff800000104070:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104074:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000104078:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010407c:	48 89 0a             	mov    %rcx,(%rdx)
ffff80000010407f:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000104086:	ff ff ff 
ffff800000104089:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010408d:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000104091:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000104095:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104098:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010409f:	ff ff ff 
ffff8000001040a2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040a6:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff8000001040aa:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff8000001040ae:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040b1:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff8000001040b8:	ff ff ff 
ffff8000001040bb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040bf:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff8000001040c3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff8000001040c7:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040ca:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff8000001040d1:	ff ff ff 
ffff8000001040d4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040d8:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff8000001040dc:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff8000001040e0:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040e3:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff8000001040ea:	ff ff ff 
ffff8000001040ed:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040f1:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff8000001040f5:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff8000001040f9:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040fc:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000104103:	ff ff ff 
ffff800000104106:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010410a:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff80000010410e:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000104112:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104115:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010411c:	ff ff ff 
ffff80000010411f:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000104123:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000104127:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff80000010412b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010412e:	90                   	nop
ffff80000010412f:	5d                   	pop    %rbp
ffff800000104130:	c3                   	ret

ffff800000104131 <Start_Kernel>:
ffff800000104131:	f3 0f 1e fa          	endbr64
ffff800000104135:	55                   	push   %rbp
ffff800000104136:	48 89 e5             	mov    %rsp,%rbp
ffff800000104139:	41 57                	push   %r15
ffff80000010413b:	53                   	push   %rbx
ffff80000010413c:	48 81 ec a0 02 00 00 	sub    $0x2a0,%rsp
ffff800000104143:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104143 <Start_Kernel+0x12>
ffff80000010414a:	49 bb 6d 9a 00 00 00 	movabs $0x9a6d,%r11
ffff800000104151:	00 00 00 
ffff800000104154:	4c 01 db             	add    %r11,%rbx
ffff800000104157:	0f 20 e0             	mov    %cr4,%rax
ffff80000010415a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010415e:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
ffff800000104165:	00 
ffff800000104166:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
ffff80000010416d:	00 
ffff80000010416e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104172:	0f 22 e0             	mov    %rax,%cr4
ffff800000104175:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff80000010417c:	80 ff ff 
ffff80000010417f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000104183:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010418a:	00 00 00 
ffff80000010418d:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff800000104194:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010419b:	00 00 00 
ffff80000010419e:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff8000001041a5:	00 
ffff8000001041a6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041ad:	00 00 00 
ffff8000001041b0:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001041b7:	00 
ffff8000001041b8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041bf:	00 00 00 
ffff8000001041c2:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001041c9:	00 
ffff8000001041ca:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041d1:	00 00 00 
ffff8000001041d4:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff8000001041db:	00 
ffff8000001041dc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041e3:	00 00 00 
ffff8000001041e6:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff8000001041ed:	00 
ffff8000001041ee:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041f5:	00 00 00 
ffff8000001041f8:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff8000001041fd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104204:	00 00 00 
ffff800000104207:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff80000010420a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104211:	00 00 00 
ffff800000104214:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104218:	0f af c2             	imul   %edx,%eax
ffff80000010421b:	c1 e0 02             	shl    $0x2,%eax
ffff80000010421e:	48 98                	cltq
ffff800000104220:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104227:	00 00 00 
ffff80000010422a:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff80000010422f:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000104234:	0f 00 d8             	ltr    %eax
ffff800000104237:	68 00 7c 00 00       	push   $0x7c00
ffff80000010423c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104243:	ff 
ffff800000104244:	68 00 7c 00 00       	push   $0x7c00
ffff800000104249:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104250:	ff 
ffff800000104251:	68 00 7c 00 00       	push   $0x7c00
ffff800000104256:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010425d:	ff 
ffff80000010425e:	68 00 7c 00 00       	push   $0x7c00
ffff800000104263:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010426a:	ff 
ffff80000010426b:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff800000104272:	80 ff ff 
ffff800000104275:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff80000010427c:	80 ff ff 
ffff80000010427f:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104286:	80 ff ff 
ffff800000104289:	48 89 c1             	mov    %rax,%rcx
ffff80000010428c:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104293:	80 ff ff 
ffff800000104296:	48 89 c2             	mov    %rax,%rdx
ffff800000104299:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042a0:	80 ff ff 
ffff8000001042a3:	48 89 c6             	mov    %rax,%rsi
ffff8000001042a6:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042ad:	80 ff ff 
ffff8000001042b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001042b3:	48 b8 50 64 ff ff ff 	movabs $0xffffffffffff6450,%rax
ffff8000001042ba:	ff ff ff 
ffff8000001042bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042c1:	ff d0                	call   *%rax
ffff8000001042c3:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042c7:	49 89 df             	mov    %rbx,%r15
ffff8000001042ca:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042cf:	48 ba a4 93 ff ff ff 	movabs $0xffffffffffff93a4,%rdx
ffff8000001042d6:	ff ff ff 
ffff8000001042d9:	48 01 da             	add    %rbx,%rdx
ffff8000001042dc:	ff d2                	call   *%rdx
ffff8000001042de:	48 8d 95 50 fd ff ff 	lea    -0x2b0(%rbp),%rdx
ffff8000001042e5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042ea:	b9 51 00 00 00       	mov    $0x51,%ecx
ffff8000001042ef:	48 89 d7             	mov    %rdx,%rdi
ffff8000001042f2:	f3 48 ab             	rep stos %rax,%es:(%rdi)
ffff8000001042f5:	48 b8 e0 9c ff ff ff 	movabs $0xffffffffffff9ce0,%rax
ffff8000001042fc:	ff ff ff 
ffff8000001042ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104303:	48 89 c2             	mov    %rax,%rdx
ffff800000104306:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010430b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104310:	49 89 df             	mov    %rbx,%r15
ffff800000104313:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104318:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff80000010431f:	ff ff ff 
ffff800000104322:	48 01 d9             	add    %rbx,%rcx
ffff800000104325:	ff d1                	call   *%rcx
ffff800000104327:	48 b8 f1 9c ff ff ff 	movabs $0xffffffffffff9cf1,%rax
ffff80000010432e:	ff ff ff 
ffff800000104331:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104335:	48 89 c2             	mov    %rax,%rdx
ffff800000104338:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010433d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104342:	49 89 df             	mov    %rbx,%r15
ffff800000104345:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010434a:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000104351:	ff ff ff 
ffff800000104354:	48 01 d9             	add    %rbx,%rcx
ffff800000104357:	ff d1                	call   *%rcx
ffff800000104359:	48 b8 00 9d ff ff ff 	movabs $0xffffffffffff9d00,%rax
ffff800000104360:	ff ff ff 
ffff800000104363:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104367:	48 89 c2             	mov    %rax,%rdx
ffff80000010436a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010436f:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104374:	49 89 df             	mov    %rbx,%r15
ffff800000104377:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010437c:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000104383:	ff ff ff 
ffff800000104386:	48 01 d9             	add    %rbx,%rcx
ffff800000104389:	ff d1                	call   *%rcx
ffff80000010438b:	49 89 df             	mov    %rbx,%r15
ffff80000010438e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104393:	48 ba 23 99 ff ff ff 	movabs $0xffffffffffff9923,%rdx
ffff80000010439a:	ff ff ff 
ffff80000010439d:	48 01 da             	add    %rbx,%rdx
ffff8000001043a0:	ff d2                	call   *%rdx
ffff8000001043a2:	48 b8 58 9d ff ff ff 	movabs $0xffffffffffff9d58,%rax
ffff8000001043a9:	ff ff ff 
ffff8000001043ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043b0:	48 89 c2             	mov    %rax,%rdx
ffff8000001043b3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043b8:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043bd:	49 89 df             	mov    %rbx,%r15
ffff8000001043c0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043c5:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001043cc:	ff ff ff 
ffff8000001043cf:	48 01 d9             	add    %rbx,%rcx
ffff8000001043d2:	ff d1                	call   *%rcx
ffff8000001043d4:	48 b8 90 9d ff ff ff 	movabs $0xffffffffffff9d90,%rax
ffff8000001043db:	ff ff ff 
ffff8000001043de:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043e2:	48 89 c2             	mov    %rax,%rdx
ffff8000001043e5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043ea:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043ef:	49 89 df             	mov    %rbx,%r15
ffff8000001043f2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043f7:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001043fe:	ff ff ff 
ffff800000104401:	48 01 d9             	add    %rbx,%rcx
ffff800000104404:	ff d1                	call   *%rcx
ffff800000104406:	90                   	nop
ffff800000104407:	eb fd                	jmp    ffff800000104406 <Start_Kernel+0x2d5>

ffff800000104409 <Cstrlen>:
ffff800000104409:	f3 0f 1e fa          	endbr64
ffff80000010440d:	55                   	push   %rbp
ffff80000010440e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104411:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104411 <Cstrlen+0x8>
ffff800000104418:	49 bb 9f 97 00 00 00 	movabs $0x979f,%r11
ffff80000010441f:	00 00 00 
ffff800000104422:	4c 01 d8             	add    %r11,%rax
ffff800000104425:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104429:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010442d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104431:	eb 05                	jmp    ffff800000104438 <Cstrlen+0x2f>
ffff800000104433:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104438:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010443c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010443f:	84 c0                	test   %al,%al
ffff800000104441:	75 f0                	jne    ffff800000104433 <Cstrlen+0x2a>
ffff800000104443:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104447:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010444b:	5d                   	pop    %rbp
ffff80000010444c:	c3                   	ret

ffff80000010444d <putchar>:
ffff80000010444d:	f3 0f 1e fa          	endbr64
ffff800000104451:	55                   	push   %rbp
ffff800000104452:	48 89 e5             	mov    %rsp,%rbp
ffff800000104455:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104455 <putchar+0x8>
ffff80000010445c:	49 bb 5b 97 00 00 00 	movabs $0x975b,%r11
ffff800000104463:	00 00 00 
ffff800000104466:	4c 01 d8             	add    %r11,%rax
ffff800000104469:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010446d:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104470:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104473:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104476:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010447a:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010447e:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104481:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104484:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010448b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104492:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104499:	00 
ffff80000010449a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001044a1:	00 
ffff8000001044a2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001044a9:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001044ad:	48 63 d2             	movslq %edx,%rdx
ffff8000001044b0:	48 89 d1             	mov    %rdx,%rcx
ffff8000001044b3:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001044b7:	48 ba 50 bf ff ff ff 	movabs $0xffffffffffffbf50,%rdx
ffff8000001044be:	ff ff ff 
ffff8000001044c1:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001044c5:	48 01 c8             	add    %rcx,%rax
ffff8000001044c8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001044cc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001044d3:	eb 7a                	jmp    ffff80000010454f <putchar+0x102>
ffff8000001044d5:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001044d8:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001044db:	01 d0                	add    %edx,%eax
ffff8000001044dd:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001044e1:	48 63 d0             	movslq %eax,%rdx
ffff8000001044e4:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001044e7:	48 98                	cltq
ffff8000001044e9:	48 01 d0             	add    %rdx,%rax
ffff8000001044ec:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001044f3:	00 
ffff8000001044f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001044f8:	48 01 d0             	add    %rdx,%rax
ffff8000001044fb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001044ff:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff800000104506:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010450d:	eb 31                	jmp    ffff800000104540 <putchar+0xf3>
ffff80000010450f:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff800000104512:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104516:	0f b6 00             	movzbl (%rax),%eax
ffff800000104519:	0f b6 c0             	movzbl %al,%eax
ffff80000010451c:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff80000010451f:	85 c0                	test   %eax,%eax
ffff800000104521:	74 0b                	je     ffff80000010452e <putchar+0xe1>
ffff800000104523:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104527:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff80000010452a:	89 10                	mov    %edx,(%rax)
ffff80000010452c:	eb 09                	jmp    ffff800000104537 <putchar+0xea>
ffff80000010452e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104532:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104535:	89 10                	mov    %edx,(%rax)
ffff800000104537:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010453c:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104540:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104544:	7e c9                	jle    ffff80000010450f <putchar+0xc2>
ffff800000104546:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010454b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff80000010454f:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104553:	7e 80                	jle    ffff8000001044d5 <putchar+0x88>
ffff800000104555:	90                   	nop
ffff800000104556:	90                   	nop
ffff800000104557:	5d                   	pop    %rbp
ffff800000104558:	c3                   	ret

ffff800000104559 <color_printk>:
ffff800000104559:	f3 0f 1e fa          	endbr64
ffff80000010455d:	55                   	push   %rbp
ffff80000010455e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104561:	53                   	push   %rbx
ffff800000104562:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104569:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104569 <color_printk+0x10>
ffff800000104570:	49 bb 47 96 00 00 00 	movabs $0x9647,%r11
ffff800000104577:	00 00 00 
ffff80000010457a:	4c 01 db             	add    %r11,%rbx
ffff80000010457d:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104583:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104589:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff800000104590:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104597:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff80000010459e:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001045a5:	84 c0                	test   %al,%al
ffff8000001045a7:	74 23                	je     ffff8000001045cc <color_printk+0x73>
ffff8000001045a9:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001045b0:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001045b4:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001045b8:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001045bc:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001045c0:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001045c4:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001045c8:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001045cc:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001045d3:	00 00 00 
ffff8000001045d6:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001045dd:	00 00 00 
ffff8000001045e0:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001045e7:	00 00 00 
ffff8000001045ea:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001045f1:	00 00 00 
ffff8000001045f4:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001045fb:	00 00 00 
ffff8000001045fe:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104602:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff800000104609:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104610:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104617:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff80000010461e:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104625:	48 89 c6             	mov    %rax,%rsi
ffff800000104628:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010462f:	00 00 00 
ffff800000104632:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104636:	48 89 c7             	mov    %rax,%rdi
ffff800000104639:	48 b8 29 74 ff ff ff 	movabs $0xffffffffffff7429,%rax
ffff800000104640:	ff ff ff 
ffff800000104643:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104647:	ff d0                	call   *%rax
ffff800000104649:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff80000010464f:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104656:	00 00 00 
ffff800000104659:	e9 81 04 00 00       	jmp    ffff800000104adf <color_printk+0x586>
ffff80000010465e:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104665:	7e 0c                	jle    ffff800000104673 <color_printk+0x11a>
ffff800000104667:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010466e:	e9 45 02 00 00       	jmp    ffff8000001048b8 <color_printk+0x35f>
ffff800000104673:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104679:	48 63 d0             	movslq %eax,%rdx
ffff80000010467c:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104683:	00 00 00 
ffff800000104686:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010468a:	48 01 d0             	add    %rdx,%rax
ffff80000010468d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104690:	3c 0a                	cmp    $0xa,%al
ffff800000104692:	75 36                	jne    ffff8000001046ca <color_printk+0x171>
ffff800000104694:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010469b:	00 00 00 
ffff80000010469e:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001046a2:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001046a5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046ac:	00 00 00 
ffff8000001046af:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001046b3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046ba:	00 00 00 
ffff8000001046bd:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001046c4:	00 
ffff8000001046c5:	e9 6a 03 00 00       	jmp    ffff800000104a34 <color_printk+0x4db>
ffff8000001046ca:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001046d0:	48 63 d0             	movslq %eax,%rdx
ffff8000001046d3:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046da:	00 00 00 
ffff8000001046dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046e1:	48 01 d0             	add    %rdx,%rax
ffff8000001046e4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046e7:	3c 08                	cmp    $0x8,%al
ffff8000001046e9:	0f 85 78 01 00 00    	jne    ffff800000104867 <color_printk+0x30e>
ffff8000001046ef:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046f6:	00 00 00 
ffff8000001046f9:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046fd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104700:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104707:	00 00 00 
ffff80000010470a:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010470e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104715:	00 00 00 
ffff800000104718:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010471c:	85 c0                	test   %eax,%eax
ffff80000010471e:	0f 89 b2 00 00 00    	jns    ffff8000001047d6 <color_printk+0x27d>
ffff800000104724:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010472b:	00 00 00 
ffff80000010472e:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104731:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104738:	00 00 00 
ffff80000010473b:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010473f:	99                   	cltd
ffff800000104740:	f7 fe                	idiv   %esi
ffff800000104742:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104745:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010474c:	00 00 00 
ffff80000010474f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104753:	0f af c2             	imul   %edx,%eax
ffff800000104756:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010475d:	00 00 00 
ffff800000104760:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104764:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010476b:	00 00 00 
ffff80000010476e:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104772:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104775:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010477c:	00 00 00 
ffff80000010477f:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104783:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010478a:	00 00 00 
ffff80000010478d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104791:	85 c0                	test   %eax,%eax
ffff800000104793:	79 41                	jns    ffff8000001047d6 <color_printk+0x27d>
ffff800000104795:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010479c:	00 00 00 
ffff80000010479f:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001047a3:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047aa:	00 00 00 
ffff8000001047ad:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001047b1:	99                   	cltd
ffff8000001047b2:	f7 ff                	idiv   %edi
ffff8000001047b4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047b7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047be:	00 00 00 
ffff8000001047c1:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047c5:	0f af c2             	imul   %edx,%eax
ffff8000001047c8:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047cf:	00 00 00 
ffff8000001047d2:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001047d6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047dd:	00 00 00 
ffff8000001047e0:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001047e4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047eb:	00 00 00 
ffff8000001047ee:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047f2:	89 d1                	mov    %edx,%ecx
ffff8000001047f4:	0f af c8             	imul   %eax,%ecx
ffff8000001047f7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047fe:	00 00 00 
ffff800000104801:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104805:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010480c:	00 00 00 
ffff80000010480f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104813:	0f af d0             	imul   %eax,%edx
ffff800000104816:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010481d:	00 00 00 
ffff800000104820:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104823:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010482a:	00 00 00 
ffff80000010482d:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104832:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104839:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff80000010483f:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104843:	6a 20                	push   $0x20
ffff800000104845:	45 89 c1             	mov    %r8d,%r9d
ffff800000104848:	41 89 f8             	mov    %edi,%r8d
ffff80000010484b:	48 89 c7             	mov    %rax,%rdi
ffff80000010484e:	48 b8 9d 68 ff ff ff 	movabs $0xffffffffffff689d,%rax
ffff800000104855:	ff ff ff 
ffff800000104858:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010485c:	ff d0                	call   *%rax
ffff80000010485e:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104862:	e9 cd 01 00 00       	jmp    ffff800000104a34 <color_printk+0x4db>
ffff800000104867:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010486d:	48 63 d0             	movslq %eax,%rdx
ffff800000104870:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104877:	00 00 00 
ffff80000010487a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010487e:	48 01 d0             	add    %rdx,%rax
ffff800000104881:	0f b6 00             	movzbl (%rax),%eax
ffff800000104884:	3c 09                	cmp    $0x9,%al
ffff800000104886:	0f 85 e3 00 00 00    	jne    ffff80000010496f <color_printk+0x416>
ffff80000010488c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104893:	00 00 00 
ffff800000104896:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010489a:	83 c0 08             	add    $0x8,%eax
ffff80000010489d:	83 e0 f8             	and    $0xfffffff8,%eax
ffff8000001048a0:	89 c2                	mov    %eax,%edx
ffff8000001048a2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a9:	00 00 00 
ffff8000001048ac:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001048b0:	29 c2                	sub    %eax,%edx
ffff8000001048b2:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff8000001048b8:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001048bf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c6:	00 00 00 
ffff8000001048c9:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048cd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048d4:	00 00 00 
ffff8000001048d7:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048db:	89 d1                	mov    %edx,%ecx
ffff8000001048dd:	0f af c8             	imul   %eax,%ecx
ffff8000001048e0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048e7:	00 00 00 
ffff8000001048ea:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048ee:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048f5:	00 00 00 
ffff8000001048f8:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048fc:	0f af d0             	imul   %eax,%edx
ffff8000001048ff:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104906:	00 00 00 
ffff800000104909:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff80000010490c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104913:	00 00 00 
ffff800000104916:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010491b:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104922:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104928:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010492c:	6a 20                	push   $0x20
ffff80000010492e:	45 89 c1             	mov    %r8d,%r9d
ffff800000104931:	41 89 f8             	mov    %edi,%r8d
ffff800000104934:	48 89 c7             	mov    %rax,%rdi
ffff800000104937:	48 b8 9d 68 ff ff ff 	movabs $0xffffffffffff689d,%rax
ffff80000010493e:	ff ff ff 
ffff800000104941:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104945:	ff d0                	call   *%rax
ffff800000104947:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010494b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104952:	00 00 00 
ffff800000104955:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104959:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010495c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104963:	00 00 00 
ffff800000104966:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010496a:	e9 c5 00 00 00       	jmp    ffff800000104a34 <color_printk+0x4db>
ffff80000010496f:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104975:	48 63 d0             	movslq %eax,%rdx
ffff800000104978:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010497f:	00 00 00 
ffff800000104982:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104986:	48 01 d0             	add    %rdx,%rax
ffff800000104989:	0f b6 00             	movzbl (%rax),%eax
ffff80000010498c:	0f b6 f8             	movzbl %al,%edi
ffff80000010498f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104996:	00 00 00 
ffff800000104999:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010499d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049a4:	00 00 00 
ffff8000001049a7:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001049ab:	89 d1                	mov    %edx,%ecx
ffff8000001049ad:	0f af c8             	imul   %eax,%ecx
ffff8000001049b0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049b7:	00 00 00 
ffff8000001049ba:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001049be:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049c5:	00 00 00 
ffff8000001049c8:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049cc:	0f af d0             	imul   %eax,%edx
ffff8000001049cf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049d6:	00 00 00 
ffff8000001049d9:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049dc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049e3:	00 00 00 
ffff8000001049e6:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049eb:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff8000001049f2:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff8000001049f9:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049fd:	57                   	push   %rdi
ffff8000001049fe:	48 89 c7             	mov    %rax,%rdi
ffff800000104a01:	48 b8 9d 68 ff ff ff 	movabs $0xffffffffffff689d,%rax
ffff800000104a08:	ff ff ff 
ffff800000104a0b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a0f:	ff d0                	call   *%rax
ffff800000104a11:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104a15:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a1c:	00 00 00 
ffff800000104a1f:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a23:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a26:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a2d:	00 00 00 
ffff800000104a30:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a34:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a3b:	00 00 00 
ffff800000104a3e:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104a42:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a49:	00 00 00 
ffff800000104a4c:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a4f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a56:	00 00 00 
ffff800000104a59:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a5d:	99                   	cltd
ffff800000104a5e:	f7 fe                	idiv   %esi
ffff800000104a60:	39 c1                	cmp    %eax,%ecx
ffff800000104a62:	7c 31                	jl     ffff800000104a95 <color_printk+0x53c>
ffff800000104a64:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a6b:	00 00 00 
ffff800000104a6e:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a72:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a75:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a7c:	00 00 00 
ffff800000104a7f:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104a83:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a8a:	00 00 00 
ffff800000104a8d:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104a94:	00 
ffff800000104a95:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a9c:	00 00 00 
ffff800000104a9f:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104aa3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aaa:	00 00 00 
ffff800000104aad:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104ab1:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104ab8:	00 00 00 
ffff800000104abb:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104abf:	99                   	cltd
ffff800000104ac0:	f7 ff                	idiv   %edi
ffff800000104ac2:	39 c1                	cmp    %eax,%ecx
ffff800000104ac4:	7c 12                	jl     ffff800000104ad8 <color_printk+0x57f>
ffff800000104ac6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104acd:	00 00 00 
ffff800000104ad0:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104ad7:	00 
ffff800000104ad8:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104adf:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104ae5:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104aeb:	0f 8c 6d fb ff ff    	jl     ffff80000010465e <color_printk+0x105>
ffff800000104af1:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104af8:	0f 85 60 fb ff ff    	jne    ffff80000010465e <color_printk+0x105>
ffff800000104afe:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104b04:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104b08:	c9                   	leave
ffff800000104b09:	c3                   	ret

ffff800000104b0a <clear_screen>:
ffff800000104b0a:	f3 0f 1e fa          	endbr64
ffff800000104b0e:	55                   	push   %rbp
ffff800000104b0f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b12:	53                   	push   %rbx
ffff800000104b13:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104b17:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104b17 <clear_screen+0xd>
ffff800000104b1e:	49 bb 99 90 00 00 00 	movabs $0x9099,%r11
ffff800000104b25:	00 00 00 
ffff800000104b28:	4c 01 db             	add    %r11,%rbx
ffff800000104b2b:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104b2e:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104b31:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b38:	00 00 00 
ffff800000104b3b:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b3e:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b45:	00 00 00 
ffff800000104b48:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104b4c:	99                   	cltd
ffff800000104b4d:	f7 f9                	idiv   %ecx
ffff800000104b4f:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104b52:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b59:	00 00 00 
ffff800000104b5c:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b60:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b67:	00 00 00 
ffff800000104b6a:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104b6e:	99                   	cltd
ffff800000104b6f:	f7 fe                	idiv   %esi
ffff800000104b71:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104b74:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104b7b:	e9 83 00 00 00       	jmp    ffff800000104c03 <clear_screen+0xf9>
ffff800000104b80:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104b87:	eb 6e                	jmp    ffff800000104bf7 <clear_screen+0xed>
ffff800000104b89:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b90:	00 00 00 
ffff800000104b93:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b97:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104b9b:	89 c1                	mov    %eax,%ecx
ffff800000104b9d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ba4:	00 00 00 
ffff800000104ba7:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104bab:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104baf:	89 c2                	mov    %eax,%edx
ffff800000104bb1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bb8:	00 00 00 
ffff800000104bbb:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104bbe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bc5:	00 00 00 
ffff800000104bc8:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104bcd:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104bd1:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104bd4:	6a 20                	push   $0x20
ffff800000104bd6:	45 89 c1             	mov    %r8d,%r9d
ffff800000104bd9:	41 89 f8             	mov    %edi,%r8d
ffff800000104bdc:	48 89 c7             	mov    %rax,%rdi
ffff800000104bdf:	48 b8 9d 68 ff ff ff 	movabs $0xffffffffffff689d,%rax
ffff800000104be6:	ff ff ff 
ffff800000104be9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104bed:	ff d0                	call   *%rax
ffff800000104bef:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104bf3:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104bf7:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104bfa:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104bfd:	7c 8a                	jl     ffff800000104b89 <clear_screen+0x7f>
ffff800000104bff:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104c03:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104c06:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104c09:	0f 8c 71 ff ff ff    	jl     ffff800000104b80 <clear_screen+0x76>
ffff800000104c0f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c16:	00 00 00 
ffff800000104c19:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104c20:	00 
ffff800000104c21:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c28:	00 00 00 
ffff800000104c2b:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104c32:	00 
ffff800000104c33:	90                   	nop
ffff800000104c34:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104c38:	c9                   	leave
ffff800000104c39:	c3                   	ret

ffff800000104c3a <skip_atoi2>:
ffff800000104c3a:	f3 0f 1e fa          	endbr64
ffff800000104c3e:	55                   	push   %rbp
ffff800000104c3f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c42:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104c42 <skip_atoi2+0x8>
ffff800000104c49:	49 bb 6e 8f 00 00 00 	movabs $0x8f6e,%r11
ffff800000104c50:	00 00 00 
ffff800000104c53:	4c 01 d8             	add    %r11,%rax
ffff800000104c56:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104c5a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c61:	eb 39                	jmp    ffff800000104c9c <skip_atoi2+0x62>
ffff800000104c63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c67:	48 8b 00             	mov    (%rax),%rax
ffff800000104c6a:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c6d:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104c70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c74:	48 8b 00             	mov    (%rax),%rax
ffff800000104c77:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104c7b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c7f:	48 89 10             	mov    %rdx,(%rax)
ffff800000104c82:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c85:	89 d0                	mov    %edx,%eax
ffff800000104c87:	c1 e0 02             	shl    $0x2,%eax
ffff800000104c8a:	01 d0                	add    %edx,%eax
ffff800000104c8c:	01 c0                	add    %eax,%eax
ffff800000104c8e:	89 c2                	mov    %eax,%edx
ffff800000104c90:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104c94:	83 e8 30             	sub    $0x30,%eax
ffff800000104c97:	01 d0                	add    %edx,%eax
ffff800000104c99:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104c9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ca0:	48 8b 00             	mov    (%rax),%rax
ffff800000104ca3:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ca6:	3c 2f                	cmp    $0x2f,%al
ffff800000104ca8:	7e 0e                	jle    ffff800000104cb8 <skip_atoi2+0x7e>
ffff800000104caa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cae:	48 8b 00             	mov    (%rax),%rax
ffff800000104cb1:	0f b6 00             	movzbl (%rax),%eax
ffff800000104cb4:	3c 39                	cmp    $0x39,%al
ffff800000104cb6:	7e ab                	jle    ffff800000104c63 <skip_atoi2+0x29>
ffff800000104cb8:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104cbb:	5d                   	pop    %rbp
ffff800000104cbc:	c3                   	ret

ffff800000104cbd <skip_atoi>:
ffff800000104cbd:	f3 0f 1e fa          	endbr64
ffff800000104cc1:	55                   	push   %rbp
ffff800000104cc2:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cc5:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cc5 <skip_atoi+0x8>
ffff800000104ccc:	49 bb eb 8e 00 00 00 	movabs $0x8eeb,%r11
ffff800000104cd3:	00 00 00 
ffff800000104cd6:	4c 01 d8             	add    %r11,%rax
ffff800000104cd9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104cdd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104ce4:	eb 2c                	jmp    ffff800000104d12 <skip_atoi+0x55>
ffff800000104ce6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cea:	48 8b 00             	mov    (%rax),%rax
ffff800000104ced:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cf1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cf5:	48 89 10             	mov    %rdx,(%rax)
ffff800000104cf8:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104cfb:	89 d0                	mov    %edx,%eax
ffff800000104cfd:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d00:	01 d0                	add    %edx,%eax
ffff800000104d02:	01 c0                	add    %eax,%eax
ffff800000104d04:	89 c2                	mov    %eax,%edx
ffff800000104d06:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d0a:	83 e8 30             	sub    $0x30,%eax
ffff800000104d0d:	01 d0                	add    %edx,%eax
ffff800000104d0f:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d16:	48 8b 00             	mov    (%rax),%rax
ffff800000104d19:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d1c:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d1f:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104d23:	7e 13                	jle    ffff800000104d38 <skip_atoi+0x7b>
ffff800000104d25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d29:	48 8b 00             	mov    (%rax),%rax
ffff800000104d2c:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d2f:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d32:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104d36:	7e ae                	jle    ffff800000104ce6 <skip_atoi+0x29>
ffff800000104d38:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d3b:	5d                   	pop    %rbp
ffff800000104d3c:	c3                   	ret

ffff800000104d3d <number>:
ffff800000104d3d:	f3 0f 1e fa          	endbr64
ffff800000104d41:	55                   	push   %rbp
ffff800000104d42:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d45:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d45 <number+0x8>
ffff800000104d4c:	49 bb 6b 8e 00 00 00 	movabs $0x8e6b,%r11
ffff800000104d53:	00 00 00 
ffff800000104d56:	4c 01 d8             	add    %r11,%rax
ffff800000104d59:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104d5d:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104d61:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104d64:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104d67:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104d6b:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104d6f:	48 ba b8 9d ff ff ff 	movabs $0xffffffffffff9db8,%rdx
ffff800000104d76:	ff ff ff 
ffff800000104d79:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104d7d:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104d81:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104d88:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104d8b:	83 e2 40             	and    $0x40,%edx
ffff800000104d8e:	85 d2                	test   %edx,%edx
ffff800000104d90:	74 12                	je     ffff800000104da4 <number+0x67>
ffff800000104d92:	48 ba e0 9d ff ff ff 	movabs $0xffffffffffff9de0,%rdx
ffff800000104d99:	ff ff ff 
ffff800000104d9c:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104da0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104da4:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104da7:	83 e0 10             	and    $0x10,%eax
ffff800000104daa:	85 c0                	test   %eax,%eax
ffff800000104dac:	74 04                	je     ffff800000104db2 <number+0x75>
ffff800000104dae:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104db2:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104db6:	7e 06                	jle    ffff800000104dbe <number+0x81>
ffff800000104db8:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104dbc:	7e 0a                	jle    ffff800000104dc8 <number+0x8b>
ffff800000104dbe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104dc3:	e9 0f 02 00 00       	jmp    ffff800000104fd7 <number+0x29a>
ffff800000104dc8:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104dcb:	83 e0 01             	and    $0x1,%eax
ffff800000104dce:	85 c0                	test   %eax,%eax
ffff800000104dd0:	74 07                	je     ffff800000104dd9 <number+0x9c>
ffff800000104dd2:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104dd7:	eb 05                	jmp    ffff800000104dde <number+0xa1>
ffff800000104dd9:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104dde:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104de1:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104de5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104de8:	83 e0 02             	and    $0x2,%eax
ffff800000104deb:	85 c0                	test   %eax,%eax
ffff800000104ded:	74 11                	je     ffff800000104e00 <number+0xc3>
ffff800000104def:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104df4:	79 0a                	jns    ffff800000104e00 <number+0xc3>
ffff800000104df6:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104dfa:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104dfe:	eb 1d                	jmp    ffff800000104e1d <number+0xe0>
ffff800000104e00:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e03:	83 e0 04             	and    $0x4,%eax
ffff800000104e06:	85 c0                	test   %eax,%eax
ffff800000104e08:	75 0b                	jne    ffff800000104e15 <number+0xd8>
ffff800000104e0a:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e0d:	c1 e0 02             	shl    $0x2,%eax
ffff800000104e10:	83 e0 20             	and    $0x20,%eax
ffff800000104e13:	eb 05                	jmp    ffff800000104e1a <number+0xdd>
ffff800000104e15:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104e1a:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104e1d:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104e21:	74 04                	je     ffff800000104e27 <number+0xea>
ffff800000104e23:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e27:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e2a:	83 e0 20             	and    $0x20,%eax
ffff800000104e2d:	85 c0                	test   %eax,%eax
ffff800000104e2f:	74 16                	je     ffff800000104e47 <number+0x10a>
ffff800000104e31:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104e35:	75 06                	jne    ffff800000104e3d <number+0x100>
ffff800000104e37:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104e3b:	eb 0a                	jmp    ffff800000104e47 <number+0x10a>
ffff800000104e3d:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104e41:	75 04                	jne    ffff800000104e47 <number+0x10a>
ffff800000104e43:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e47:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e4c:	75 4b                	jne    ffff800000104e99 <number+0x15c>
ffff800000104e4e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e51:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e54:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e57:	48 98                	cltq
ffff800000104e59:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104e5e:	eb 40                	jmp    ffff800000104ea0 <number+0x163>
ffff800000104e60:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104e63:	48 63 c8             	movslq %eax,%rcx
ffff800000104e66:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e6a:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104e6f:	48 f7 f1             	div    %rcx
ffff800000104e72:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e76:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104e79:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104e7c:	48 63 d0             	movslq %eax,%rdx
ffff800000104e7f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104e83:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104e87:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e8a:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e8d:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e90:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104e93:	48 98                	cltq
ffff800000104e95:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104e99:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e9e:	75 c0                	jne    ffff800000104e60 <number+0x123>
ffff800000104ea0:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ea3:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104ea6:	7e 06                	jle    ffff800000104eae <number+0x171>
ffff800000104ea8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104eab:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104eae:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104eb1:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104eb4:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104eb7:	83 e0 11             	and    $0x11,%eax
ffff800000104eba:	85 c0                	test   %eax,%eax
ffff800000104ebc:	75 1e                	jne    ffff800000104edc <number+0x19f>
ffff800000104ebe:	eb 0f                	jmp    ffff800000104ecf <number+0x192>
ffff800000104ec0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ec4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ec8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ecc:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104ecf:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104ed2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ed5:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104ed8:	85 c0                	test   %eax,%eax
ffff800000104eda:	7f e4                	jg     ffff800000104ec0 <number+0x183>
ffff800000104edc:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104ee0:	74 12                	je     ffff800000104ef4 <number+0x1b7>
ffff800000104ee2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ee6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104eea:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104eee:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104ef2:	88 10                	mov    %dl,(%rax)
ffff800000104ef4:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ef7:	83 e0 20             	and    $0x20,%eax
ffff800000104efa:	85 c0                	test   %eax,%eax
ffff800000104efc:	74 45                	je     ffff800000104f43 <number+0x206>
ffff800000104efe:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104f02:	75 11                	jne    ffff800000104f15 <number+0x1d8>
ffff800000104f04:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f08:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f0c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f10:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f13:	eb 2e                	jmp    ffff800000104f43 <number+0x206>
ffff800000104f15:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104f19:	75 28                	jne    ffff800000104f43 <number+0x206>
ffff800000104f1b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f1f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f23:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f27:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f2a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f2e:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104f32:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f36:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f3a:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f3e:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f41:	88 10                	mov    %dl,(%rax)
ffff800000104f43:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f46:	83 e0 10             	and    $0x10,%eax
ffff800000104f49:	85 c0                	test   %eax,%eax
ffff800000104f4b:	75 32                	jne    ffff800000104f7f <number+0x242>
ffff800000104f4d:	eb 12                	jmp    ffff800000104f61 <number+0x224>
ffff800000104f4f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f53:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f57:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f5b:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104f5f:	88 10                	mov    %dl,(%rax)
ffff800000104f61:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f64:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f67:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f6a:	85 c0                	test   %eax,%eax
ffff800000104f6c:	7f e1                	jg     ffff800000104f4f <number+0x212>
ffff800000104f6e:	eb 0f                	jmp    ffff800000104f7f <number+0x242>
ffff800000104f70:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f74:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f78:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f7c:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f7f:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f82:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f85:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104f88:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104f8b:	7c e3                	jl     ffff800000104f70 <number+0x233>
ffff800000104f8d:	eb 19                	jmp    ffff800000104fa8 <number+0x26b>
ffff800000104f8f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f93:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f97:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f9b:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104f9e:	48 63 d2             	movslq %edx,%rdx
ffff800000104fa1:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104fa6:	88 10                	mov    %dl,(%rax)
ffff800000104fa8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104fab:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fae:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104fb1:	85 c0                	test   %eax,%eax
ffff800000104fb3:	7f da                	jg     ffff800000104f8f <number+0x252>
ffff800000104fb5:	eb 0f                	jmp    ffff800000104fc6 <number+0x289>
ffff800000104fb7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fbb:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fbf:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fc3:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104fc6:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104fc9:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fcc:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104fcf:	85 c0                	test   %eax,%eax
ffff800000104fd1:	7f e4                	jg     ffff800000104fb7 <number+0x27a>
ffff800000104fd3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fd7:	5d                   	pop    %rbp
ffff800000104fd8:	c3                   	ret

ffff800000104fd9 <vsprintf>:
ffff800000104fd9:	f3 0f 1e fa          	endbr64
ffff800000104fdd:	55                   	push   %rbp
ffff800000104fde:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fe1:	53                   	push   %rbx
ffff800000104fe2:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104fe6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104fe6 <vsprintf+0xd>
ffff800000104fed:	49 bb ca 8b 00 00 00 	movabs $0x8bca,%r11
ffff800000104ff4:	00 00 00 
ffff800000104ff7:	4c 01 db             	add    %r11,%rbx
ffff800000104ffa:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104ffe:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105002:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000105006:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010500a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010500e:	e9 f8 08 00 00       	jmp    ffff80000010590b <vsprintf+0x932>
ffff800000105013:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105017:	0f b6 00             	movzbl (%rax),%eax
ffff80000010501a:	3c 25                	cmp    $0x25,%al
ffff80000010501c:	74 1a                	je     ffff800000105038 <vsprintf+0x5f>
ffff80000010501e:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105022:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105026:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010502a:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010502e:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105031:	88 10                	mov    %dl,(%rax)
ffff800000105033:	e9 c7 08 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff800000105038:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff80000010503f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105043:	48 83 c0 01          	add    $0x1,%rax
ffff800000105047:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010504b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010504f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105052:	0f be c0             	movsbl %al,%eax
ffff800000105055:	83 e8 20             	sub    $0x20,%eax
ffff800000105058:	83 f8 10             	cmp    $0x10,%eax
ffff80000010505b:	77 40                	ja     ffff80000010509d <vsprintf+0xc4>
ffff80000010505d:	89 c0                	mov    %eax,%eax
ffff80000010505f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105066:	00 
ffff800000105067:	48 8d 05 4a 29 00 00 	lea    0x294a(%rip),%rax        # ffff8000001079b8 <.LC1+0x28>
ffff80000010506e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105072:	48 8d 15 3f 29 00 00 	lea    0x293f(%rip),%rdx        # ffff8000001079b8 <.LC1+0x28>
ffff800000105079:	48 01 d0             	add    %rdx,%rax
ffff80000010507c:	3e ff e0             	notrack jmp *%rax
ffff80000010507f:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105083:	eb ba                	jmp    ffff80000010503f <vsprintf+0x66>
ffff800000105085:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000105089:	eb b4                	jmp    ffff80000010503f <vsprintf+0x66>
ffff80000010508b:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff80000010508f:	eb ae                	jmp    ffff80000010503f <vsprintf+0x66>
ffff800000105091:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000105095:	eb a8                	jmp    ffff80000010503f <vsprintf+0x66>
ffff800000105097:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010509b:	eb a2                	jmp    ffff80000010503f <vsprintf+0x66>
ffff80000010509d:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff8000001050a4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050a8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050ab:	3c 2f                	cmp    $0x2f,%al
ffff8000001050ad:	7e 27                	jle    ffff8000001050d6 <vsprintf+0xfd>
ffff8000001050af:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050b3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050b6:	3c 39                	cmp    $0x39,%al
ffff8000001050b8:	7f 1c                	jg     ffff8000001050d6 <vsprintf+0xfd>
ffff8000001050ba:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001050be:	48 89 c7             	mov    %rax,%rdi
ffff8000001050c1:	48 b8 0d 71 ff ff ff 	movabs $0xffffffffffff710d,%rax
ffff8000001050c8:	ff ff ff 
ffff8000001050cb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050cf:	ff d0                	call   *%rax
ffff8000001050d1:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001050d4:	eb 6c                	jmp    ffff800000105142 <vsprintf+0x169>
ffff8000001050d6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050da:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050dd:	3c 2a                	cmp    $0x2a,%al
ffff8000001050df:	75 61                	jne    ffff800000105142 <vsprintf+0x169>
ffff8000001050e1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050e5:	48 83 c0 01          	add    $0x1,%rax
ffff8000001050e9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001050ed:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050f1:	8b 00                	mov    (%rax),%eax
ffff8000001050f3:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050f6:	77 24                	ja     ffff80000010511c <vsprintf+0x143>
ffff8000001050f8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050fc:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105100:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105104:	8b 00                	mov    (%rax),%eax
ffff800000105106:	89 c0                	mov    %eax,%eax
ffff800000105108:	48 01 d0             	add    %rdx,%rax
ffff80000010510b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010510f:	8b 12                	mov    (%rdx),%edx
ffff800000105111:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105114:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105118:	89 0a                	mov    %ecx,(%rdx)
ffff80000010511a:	eb 14                	jmp    ffff800000105130 <vsprintf+0x157>
ffff80000010511c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105120:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105124:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105128:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010512c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105130:	8b 00                	mov    (%rax),%eax
ffff800000105132:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105135:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105139:	79 07                	jns    ffff800000105142 <vsprintf+0x169>
ffff80000010513b:	f7 5d d8             	negl   -0x28(%rbp)
ffff80000010513e:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105142:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000105149:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010514d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105150:	3c 2e                	cmp    $0x2e,%al
ffff800000105152:	0f 85 aa 00 00 00    	jne    ffff800000105202 <vsprintf+0x229>
ffff800000105158:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010515c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105160:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105164:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105168:	0f b6 00             	movzbl (%rax),%eax
ffff80000010516b:	3c 2f                	cmp    $0x2f,%al
ffff80000010516d:	7e 27                	jle    ffff800000105196 <vsprintf+0x1bd>
ffff80000010516f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105173:	0f b6 00             	movzbl (%rax),%eax
ffff800000105176:	3c 39                	cmp    $0x39,%al
ffff800000105178:	7f 1c                	jg     ffff800000105196 <vsprintf+0x1bd>
ffff80000010517a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010517e:	48 89 c7             	mov    %rax,%rdi
ffff800000105181:	48 b8 0d 71 ff ff ff 	movabs $0xffffffffffff710d,%rax
ffff800000105188:	ff ff ff 
ffff80000010518b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010518f:	ff d0                	call   *%rax
ffff800000105191:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105194:	eb 5f                	jmp    ffff8000001051f5 <vsprintf+0x21c>
ffff800000105196:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010519a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010519d:	3c 2a                	cmp    $0x2a,%al
ffff80000010519f:	75 54                	jne    ffff8000001051f5 <vsprintf+0x21c>
ffff8000001051a1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051a5:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051a9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051ad:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051b1:	8b 00                	mov    (%rax),%eax
ffff8000001051b3:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001051b6:	77 24                	ja     ffff8000001051dc <vsprintf+0x203>
ffff8000001051b8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051bc:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001051c0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051c4:	8b 00                	mov    (%rax),%eax
ffff8000001051c6:	89 c0                	mov    %eax,%eax
ffff8000001051c8:	48 01 d0             	add    %rdx,%rax
ffff8000001051cb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051cf:	8b 12                	mov    (%rdx),%edx
ffff8000001051d1:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051d4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051d8:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051da:	eb 14                	jmp    ffff8000001051f0 <vsprintf+0x217>
ffff8000001051dc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051e0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051e4:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051e8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051ec:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051f0:	8b 00                	mov    (%rax),%eax
ffff8000001051f2:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001051f5:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001051f9:	79 07                	jns    ffff800000105202 <vsprintf+0x229>
ffff8000001051fb:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105202:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff800000105209:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010520d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105210:	3c 68                	cmp    $0x68,%al
ffff800000105212:	74 21                	je     ffff800000105235 <vsprintf+0x25c>
ffff800000105214:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105218:	0f b6 00             	movzbl (%rax),%eax
ffff80000010521b:	3c 6c                	cmp    $0x6c,%al
ffff80000010521d:	74 16                	je     ffff800000105235 <vsprintf+0x25c>
ffff80000010521f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105223:	0f b6 00             	movzbl (%rax),%eax
ffff800000105226:	3c 4c                	cmp    $0x4c,%al
ffff800000105228:	74 0b                	je     ffff800000105235 <vsprintf+0x25c>
ffff80000010522a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010522e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105231:	3c 7a                	cmp    $0x7a,%al
ffff800000105233:	75 19                	jne    ffff80000010524e <vsprintf+0x275>
ffff800000105235:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105239:	0f b6 00             	movzbl (%rax),%eax
ffff80000010523c:	0f be c0             	movsbl %al,%eax
ffff80000010523f:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105242:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105246:	48 83 c0 01          	add    $0x1,%rax
ffff80000010524a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010524e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105252:	0f b6 00             	movzbl (%rax),%eax
ffff800000105255:	0f be c0             	movsbl %al,%eax
ffff800000105258:	83 e8 25             	sub    $0x25,%eax
ffff80000010525b:	83 f8 53             	cmp    $0x53,%eax
ffff80000010525e:	0f 87 5d 06 00 00    	ja     ffff8000001058c1 <vsprintf+0x8e8>
ffff800000105264:	89 c0                	mov    %eax,%eax
ffff800000105266:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010526d:	00 
ffff80000010526e:	48 8d 05 cb 27 00 00 	lea    0x27cb(%rip),%rax        # ffff800000107a40 <.LC1+0xb0>
ffff800000105275:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105279:	48 8d 15 c0 27 00 00 	lea    0x27c0(%rip),%rdx        # ffff800000107a40 <.LC1+0xb0>
ffff800000105280:	48 01 d0             	add    %rdx,%rax
ffff800000105283:	3e ff e0             	notrack jmp *%rax
ffff800000105286:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105289:	83 e0 10             	and    $0x10,%eax
ffff80000010528c:	85 c0                	test   %eax,%eax
ffff80000010528e:	75 1b                	jne    ffff8000001052ab <vsprintf+0x2d2>
ffff800000105290:	eb 0f                	jmp    ffff8000001052a1 <vsprintf+0x2c8>
ffff800000105292:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105296:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010529a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010529e:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052a1:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001052a5:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001052a9:	7f e7                	jg     ffff800000105292 <vsprintf+0x2b9>
ffff8000001052ab:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052af:	8b 00                	mov    (%rax),%eax
ffff8000001052b1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001052b4:	77 24                	ja     ffff8000001052da <vsprintf+0x301>
ffff8000001052b6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052ba:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052be:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052c2:	8b 00                	mov    (%rax),%eax
ffff8000001052c4:	89 c0                	mov    %eax,%eax
ffff8000001052c6:	48 01 d0             	add    %rdx,%rax
ffff8000001052c9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052cd:	8b 12                	mov    (%rdx),%edx
ffff8000001052cf:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052d2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052d6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052d8:	eb 14                	jmp    ffff8000001052ee <vsprintf+0x315>
ffff8000001052da:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052de:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052e2:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052e6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052ea:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052ee:	8b 08                	mov    (%rax),%ecx
ffff8000001052f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052f4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052f8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052fc:	89 ca                	mov    %ecx,%edx
ffff8000001052fe:	88 10                	mov    %dl,(%rax)
ffff800000105300:	eb 0f                	jmp    ffff800000105311 <vsprintf+0x338>
ffff800000105302:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105306:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010530a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010530e:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105311:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105315:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105319:	7f e7                	jg     ffff800000105302 <vsprintf+0x329>
ffff80000010531b:	e9 df 05 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff800000105320:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105324:	8b 00                	mov    (%rax),%eax
ffff800000105326:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105329:	77 24                	ja     ffff80000010534f <vsprintf+0x376>
ffff80000010532b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010532f:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105333:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105337:	8b 00                	mov    (%rax),%eax
ffff800000105339:	89 c0                	mov    %eax,%eax
ffff80000010533b:	48 01 d0             	add    %rdx,%rax
ffff80000010533e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105342:	8b 12                	mov    (%rdx),%edx
ffff800000105344:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105347:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010534b:	89 0a                	mov    %ecx,(%rdx)
ffff80000010534d:	eb 14                	jmp    ffff800000105363 <vsprintf+0x38a>
ffff80000010534f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105353:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105357:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010535b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010535f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105363:	48 8b 00             	mov    (%rax),%rax
ffff800000105366:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010536a:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010536f:	75 08                	jne    ffff800000105379 <vsprintf+0x3a0>
ffff800000105371:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105378:	00 
ffff800000105379:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010537d:	48 89 c7             	mov    %rax,%rdi
ffff800000105380:	48 b8 59 68 ff ff ff 	movabs $0xffffffffffff6859,%rax
ffff800000105387:	ff ff ff 
ffff80000010538a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010538e:	ff d0                	call   *%rax
ffff800000105390:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105393:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105397:	79 08                	jns    ffff8000001053a1 <vsprintf+0x3c8>
ffff800000105399:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010539c:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010539f:	eb 0e                	jmp    ffff8000001053af <vsprintf+0x3d6>
ffff8000001053a1:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001053a4:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001053a7:	7e 06                	jle    ffff8000001053af <vsprintf+0x3d6>
ffff8000001053a9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001053ac:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001053af:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001053b2:	83 e0 10             	and    $0x10,%eax
ffff8000001053b5:	85 c0                	test   %eax,%eax
ffff8000001053b7:	75 1f                	jne    ffff8000001053d8 <vsprintf+0x3ff>
ffff8000001053b9:	eb 0f                	jmp    ffff8000001053ca <vsprintf+0x3f1>
ffff8000001053bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053bf:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053c3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053c7:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053ca:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001053cd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001053d0:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001053d3:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001053d6:	7c e3                	jl     ffff8000001053bb <vsprintf+0x3e2>
ffff8000001053d8:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001053df:	eb 21                	jmp    ffff800000105402 <vsprintf+0x429>
ffff8000001053e1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001053e5:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001053e9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001053ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053f1:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001053f5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001053f9:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001053fc:	88 10                	mov    %dl,(%rax)
ffff8000001053fe:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105402:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105405:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105408:	7c d7                	jl     ffff8000001053e1 <vsprintf+0x408>
ffff80000010540a:	eb 0f                	jmp    ffff80000010541b <vsprintf+0x442>
ffff80000010540c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105410:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105414:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105418:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010541b:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff80000010541e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105421:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105424:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105427:	7c e3                	jl     ffff80000010540c <vsprintf+0x433>
ffff800000105429:	e9 d1 04 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff80000010542e:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105432:	0f 85 82 00 00 00    	jne    ffff8000001054ba <vsprintf+0x4e1>
ffff800000105438:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010543c:	8b 00                	mov    (%rax),%eax
ffff80000010543e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105441:	77 24                	ja     ffff800000105467 <vsprintf+0x48e>
ffff800000105443:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105447:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010544b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010544f:	8b 00                	mov    (%rax),%eax
ffff800000105451:	89 c0                	mov    %eax,%eax
ffff800000105453:	48 01 d0             	add    %rdx,%rax
ffff800000105456:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010545a:	8b 12                	mov    (%rdx),%edx
ffff80000010545c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010545f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105463:	89 0a                	mov    %ecx,(%rdx)
ffff800000105465:	eb 14                	jmp    ffff80000010547b <vsprintf+0x4a2>
ffff800000105467:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010546b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010546f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105473:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105477:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010547b:	48 8b 00             	mov    (%rax),%rax
ffff80000010547e:	48 89 c7             	mov    %rax,%rdi
ffff800000105481:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105484:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105487:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010548a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010548e:	41 89 f1             	mov    %esi,%r9d
ffff800000105491:	41 89 c8             	mov    %ecx,%r8d
ffff800000105494:	89 d1                	mov    %edx,%ecx
ffff800000105496:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010549b:	48 89 fe             	mov    %rdi,%rsi
ffff80000010549e:	48 89 c7             	mov    %rax,%rdi
ffff8000001054a1:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff8000001054a8:	ff ff ff 
ffff8000001054ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054af:	ff d0                	call   *%rax
ffff8000001054b1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001054b5:	e9 45 04 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001054ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054be:	8b 00                	mov    (%rax),%eax
ffff8000001054c0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054c3:	77 24                	ja     ffff8000001054e9 <vsprintf+0x510>
ffff8000001054c5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054c9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054cd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d1:	8b 00                	mov    (%rax),%eax
ffff8000001054d3:	89 c0                	mov    %eax,%eax
ffff8000001054d5:	48 01 d0             	add    %rdx,%rax
ffff8000001054d8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054dc:	8b 12                	mov    (%rdx),%edx
ffff8000001054de:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054e1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054e5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054e7:	eb 14                	jmp    ffff8000001054fd <vsprintf+0x524>
ffff8000001054e9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054ed:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054f1:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001054f5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054fd:	8b 00                	mov    (%rax),%eax
ffff8000001054ff:	89 c7                	mov    %eax,%edi
ffff800000105501:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105504:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105507:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010550a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010550e:	41 89 f1             	mov    %esi,%r9d
ffff800000105511:	41 89 c8             	mov    %ecx,%r8d
ffff800000105514:	89 d1                	mov    %edx,%ecx
ffff800000105516:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010551b:	48 89 fe             	mov    %rdi,%rsi
ffff80000010551e:	48 89 c7             	mov    %rax,%rdi
ffff800000105521:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff800000105528:	ff ff ff 
ffff80000010552b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010552f:	ff d0                	call   *%rax
ffff800000105531:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105535:	e9 c5 03 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff80000010553a:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010553e:	75 0b                	jne    ffff80000010554b <vsprintf+0x572>
ffff800000105540:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105547:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010554b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010554f:	8b 00                	mov    (%rax),%eax
ffff800000105551:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105554:	77 24                	ja     ffff80000010557a <vsprintf+0x5a1>
ffff800000105556:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010555a:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010555e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105562:	8b 00                	mov    (%rax),%eax
ffff800000105564:	89 c0                	mov    %eax,%eax
ffff800000105566:	48 01 d0             	add    %rdx,%rax
ffff800000105569:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010556d:	8b 12                	mov    (%rdx),%edx
ffff80000010556f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105572:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105576:	89 0a                	mov    %ecx,(%rdx)
ffff800000105578:	eb 14                	jmp    ffff80000010558e <vsprintf+0x5b5>
ffff80000010557a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010557e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105582:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105586:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010558a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010558e:	48 8b 00             	mov    (%rax),%rax
ffff800000105591:	48 89 c7             	mov    %rax,%rdi
ffff800000105594:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105597:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010559a:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010559d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055a1:	41 89 f1             	mov    %esi,%r9d
ffff8000001055a4:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055a7:	89 d1                	mov    %edx,%ecx
ffff8000001055a9:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001055ae:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055b1:	48 89 c7             	mov    %rax,%rdi
ffff8000001055b4:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff8000001055bb:	ff ff ff 
ffff8000001055be:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055c2:	ff d0                	call   *%rax
ffff8000001055c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055c8:	e9 32 03 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001055cd:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001055d1:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055d5:	0f 85 82 00 00 00    	jne    ffff80000010565d <vsprintf+0x684>
ffff8000001055db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055df:	8b 00                	mov    (%rax),%eax
ffff8000001055e1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055e4:	77 24                	ja     ffff80000010560a <vsprintf+0x631>
ffff8000001055e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ea:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055ee:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f2:	8b 00                	mov    (%rax),%eax
ffff8000001055f4:	89 c0                	mov    %eax,%eax
ffff8000001055f6:	48 01 d0             	add    %rdx,%rax
ffff8000001055f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055fd:	8b 12                	mov    (%rdx),%edx
ffff8000001055ff:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105602:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105606:	89 0a                	mov    %ecx,(%rdx)
ffff800000105608:	eb 14                	jmp    ffff80000010561e <vsprintf+0x645>
ffff80000010560a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010560e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105612:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105616:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010561a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010561e:	48 8b 00             	mov    (%rax),%rax
ffff800000105621:	48 89 c7             	mov    %rax,%rdi
ffff800000105624:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105627:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010562a:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010562d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105631:	41 89 f1             	mov    %esi,%r9d
ffff800000105634:	41 89 c8             	mov    %ecx,%r8d
ffff800000105637:	89 d1                	mov    %edx,%ecx
ffff800000105639:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010563e:	48 89 fe             	mov    %rdi,%rsi
ffff800000105641:	48 89 c7             	mov    %rax,%rdi
ffff800000105644:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff80000010564b:	ff ff ff 
ffff80000010564e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105652:	ff d0                	call   *%rax
ffff800000105654:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105658:	e9 a2 02 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff80000010565d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105661:	8b 00                	mov    (%rax),%eax
ffff800000105663:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105666:	77 24                	ja     ffff80000010568c <vsprintf+0x6b3>
ffff800000105668:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010566c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105670:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105674:	8b 00                	mov    (%rax),%eax
ffff800000105676:	89 c0                	mov    %eax,%eax
ffff800000105678:	48 01 d0             	add    %rdx,%rax
ffff80000010567b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010567f:	8b 12                	mov    (%rdx),%edx
ffff800000105681:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105684:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105688:	89 0a                	mov    %ecx,(%rdx)
ffff80000010568a:	eb 14                	jmp    ffff8000001056a0 <vsprintf+0x6c7>
ffff80000010568c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105690:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105694:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105698:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010569c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056a0:	8b 00                	mov    (%rax),%eax
ffff8000001056a2:	89 c7                	mov    %eax,%edi
ffff8000001056a4:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001056a7:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001056aa:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001056ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056b1:	41 89 f1             	mov    %esi,%r9d
ffff8000001056b4:	41 89 c8             	mov    %ecx,%r8d
ffff8000001056b7:	89 d1                	mov    %edx,%ecx
ffff8000001056b9:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056be:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056c1:	48 89 c7             	mov    %rax,%rdi
ffff8000001056c4:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff8000001056cb:	ff ff ff 
ffff8000001056ce:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056d2:	ff d0                	call   *%rax
ffff8000001056d4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056d8:	e9 22 02 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001056dd:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001056e1:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001056e5:	0f 85 82 00 00 00    	jne    ffff80000010576d <vsprintf+0x794>
ffff8000001056eb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056ef:	8b 00                	mov    (%rax),%eax
ffff8000001056f1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056f4:	77 24                	ja     ffff80000010571a <vsprintf+0x741>
ffff8000001056f6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056fa:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001056fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105702:	8b 00                	mov    (%rax),%eax
ffff800000105704:	89 c0                	mov    %eax,%eax
ffff800000105706:	48 01 d0             	add    %rdx,%rax
ffff800000105709:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010570d:	8b 12                	mov    (%rdx),%edx
ffff80000010570f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105712:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105716:	89 0a                	mov    %ecx,(%rdx)
ffff800000105718:	eb 14                	jmp    ffff80000010572e <vsprintf+0x755>
ffff80000010571a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010571e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105722:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105726:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010572a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010572e:	48 8b 00             	mov    (%rax),%rax
ffff800000105731:	48 89 c7             	mov    %rax,%rdi
ffff800000105734:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105737:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010573a:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010573d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105741:	41 89 f1             	mov    %esi,%r9d
ffff800000105744:	41 89 c8             	mov    %ecx,%r8d
ffff800000105747:	89 d1                	mov    %edx,%ecx
ffff800000105749:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010574e:	48 89 fe             	mov    %rdi,%rsi
ffff800000105751:	48 89 c7             	mov    %rax,%rdi
ffff800000105754:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff80000010575b:	ff ff ff 
ffff80000010575e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105762:	ff d0                	call   *%rax
ffff800000105764:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105768:	e9 92 01 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff80000010576d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105771:	8b 00                	mov    (%rax),%eax
ffff800000105773:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105776:	77 24                	ja     ffff80000010579c <vsprintf+0x7c3>
ffff800000105778:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010577c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105780:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105784:	8b 00                	mov    (%rax),%eax
ffff800000105786:	89 c0                	mov    %eax,%eax
ffff800000105788:	48 01 d0             	add    %rdx,%rax
ffff80000010578b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010578f:	8b 12                	mov    (%rdx),%edx
ffff800000105791:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105794:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105798:	89 0a                	mov    %ecx,(%rdx)
ffff80000010579a:	eb 14                	jmp    ffff8000001057b0 <vsprintf+0x7d7>
ffff80000010579c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057a0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001057a4:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001057a8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057ac:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001057b0:	8b 00                	mov    (%rax),%eax
ffff8000001057b2:	89 c7                	mov    %eax,%edi
ffff8000001057b4:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057b7:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057ba:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057c1:	41 89 f1             	mov    %esi,%r9d
ffff8000001057c4:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057c7:	89 d1                	mov    %edx,%ecx
ffff8000001057c9:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057ce:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057d1:	48 89 c7             	mov    %rax,%rdi
ffff8000001057d4:	48 b8 8d 71 ff ff ff 	movabs $0xffffffffffff718d,%rax
ffff8000001057db:	ff ff ff 
ffff8000001057de:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057e2:	ff d0                	call   *%rax
ffff8000001057e4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057e8:	e9 12 01 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001057ed:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001057f1:	75 61                	jne    ffff800000105854 <vsprintf+0x87b>
ffff8000001057f3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057f7:	8b 00                	mov    (%rax),%eax
ffff8000001057f9:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057fc:	77 24                	ja     ffff800000105822 <vsprintf+0x849>
ffff8000001057fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105802:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105806:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010580a:	8b 00                	mov    (%rax),%eax
ffff80000010580c:	89 c0                	mov    %eax,%eax
ffff80000010580e:	48 01 d0             	add    %rdx,%rax
ffff800000105811:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105815:	8b 12                	mov    (%rdx),%edx
ffff800000105817:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010581a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010581e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105820:	eb 14                	jmp    ffff800000105836 <vsprintf+0x85d>
ffff800000105822:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105826:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010582a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010582e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105832:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105836:	48 8b 00             	mov    (%rax),%rax
ffff800000105839:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010583d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105841:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105845:	48 89 c2             	mov    %rax,%rdx
ffff800000105848:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010584c:	48 89 10             	mov    %rdx,(%rax)
ffff80000010584f:	e9 ab 00 00 00       	jmp    ffff8000001058ff <vsprintf+0x926>
ffff800000105854:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105858:	8b 00                	mov    (%rax),%eax
ffff80000010585a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010585d:	77 24                	ja     ffff800000105883 <vsprintf+0x8aa>
ffff80000010585f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105863:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105867:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010586b:	8b 00                	mov    (%rax),%eax
ffff80000010586d:	89 c0                	mov    %eax,%eax
ffff80000010586f:	48 01 d0             	add    %rdx,%rax
ffff800000105872:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105876:	8b 12                	mov    (%rdx),%edx
ffff800000105878:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010587b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010587f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105881:	eb 14                	jmp    ffff800000105897 <vsprintf+0x8be>
ffff800000105883:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105887:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010588b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010588f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105893:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105897:	48 8b 00             	mov    (%rax),%rax
ffff80000010589a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010589e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058a2:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001058a6:	89 c2                	mov    %eax,%edx
ffff8000001058a8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001058ac:	89 10                	mov    %edx,(%rax)
ffff8000001058ae:	eb 4f                	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001058b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058b4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058b8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058bc:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058bf:	eb 3e                	jmp    ffff8000001058ff <vsprintf+0x926>
ffff8000001058c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058c9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058cd:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058d0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058d4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001058d7:	84 c0                	test   %al,%al
ffff8000001058d9:	74 17                	je     ffff8000001058f2 <vsprintf+0x919>
ffff8000001058db:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001058df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058e3:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001058e7:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001058eb:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001058ee:	88 10                	mov    %dl,(%rax)
ffff8000001058f0:	eb 0c                	jmp    ffff8000001058fe <vsprintf+0x925>
ffff8000001058f2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058f6:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001058fa:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001058fe:	90                   	nop
ffff8000001058ff:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105903:	48 83 c0 01          	add    $0x1,%rax
ffff800000105907:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010590b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010590f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105912:	84 c0                	test   %al,%al
ffff800000105914:	0f 85 f9 f6 ff ff    	jne    ffff800000105013 <vsprintf+0x3a>
ffff80000010591a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010591e:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105921:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105925:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105929:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010592d:	c9                   	leave
ffff80000010592e:	c3                   	ret

ffff80000010592f <set_intr_gate>:
ffff80000010592f:	f3 0f 1e fa          	endbr64
ffff800000105933:	55                   	push   %rbp
ffff800000105934:	48 89 e5             	mov    %rsp,%rbp
ffff800000105937:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105937 <set_intr_gate+0x8>
ffff80000010593e:	49 bb 79 82 00 00 00 	movabs $0x8279,%r11
ffff800000105945:	00 00 00 
ffff800000105948:	4c 01 d8             	add    %r11,%rax
ffff80000010594b:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff80000010594e:	89 f1                	mov    %esi,%ecx
ffff800000105950:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105954:	89 ca                	mov    %ecx,%edx
ffff800000105956:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105959:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff80000010595c:	48 89 d1             	mov    %rdx,%rcx
ffff80000010595f:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105963:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff80000010596a:	ff ff ff 
ffff80000010596d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105971:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105975:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105978:	48 c1 e2 04          	shl    $0x4,%rdx
ffff80000010597c:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105980:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105987:	ff ff ff 
ffff80000010598a:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff80000010598e:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105992:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105996:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff80000010599c:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff8000001059a0:	44 89 c0             	mov    %r8d,%eax
ffff8000001059a3:	66 89 d0             	mov    %dx,%ax
ffff8000001059a6:	48 83 e1 07          	and    $0x7,%rcx
ffff8000001059aa:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff8000001059b1:	48 c1 e1 20          	shl    $0x20,%rcx
ffff8000001059b5:	48 01 c8             	add    %rcx,%rax
ffff8000001059b8:	48 31 c9             	xor    %rcx,%rcx
ffff8000001059bb:	89 d1                	mov    %edx,%ecx
ffff8000001059bd:	48 c1 e9 10          	shr    $0x10,%rcx
ffff8000001059c1:	48 c1 e1 30          	shl    $0x30,%rcx
ffff8000001059c5:	48 01 c8             	add    %rcx,%rax
ffff8000001059c8:	48 89 06             	mov    %rax,(%rsi)
ffff8000001059cb:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001059cf:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001059d2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001059d6:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff8000001059da:	90                   	nop
ffff8000001059db:	5d                   	pop    %rbp
ffff8000001059dc:	c3                   	ret

ffff8000001059dd <set_trap_gate>:
ffff8000001059dd:	f3 0f 1e fa          	endbr64
ffff8000001059e1:	55                   	push   %rbp
ffff8000001059e2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059e5:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059e5 <set_trap_gate+0x8>
ffff8000001059ec:	49 bb cb 81 00 00 00 	movabs $0x81cb,%r11
ffff8000001059f3:	00 00 00 
ffff8000001059f6:	4c 01 d8             	add    %r11,%rax
ffff8000001059f9:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff8000001059fc:	89 f1                	mov    %esi,%ecx
ffff8000001059fe:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a02:	89 ca                	mov    %ecx,%edx
ffff800000105a04:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a07:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a0a:	48 89 d1             	mov    %rdx,%rcx
ffff800000105a0d:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105a11:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a18:	ff ff ff 
ffff800000105a1b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a1f:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a23:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a26:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a2a:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a2e:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a35:	ff ff ff 
ffff800000105a38:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a3c:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a40:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a44:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a4a:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a4e:	44 89 c0             	mov    %r8d,%eax
ffff800000105a51:	66 89 d0             	mov    %dx,%ax
ffff800000105a54:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a58:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105a5f:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a63:	48 01 c8             	add    %rcx,%rax
ffff800000105a66:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a69:	89 d1                	mov    %edx,%ecx
ffff800000105a6b:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a6f:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a73:	48 01 c8             	add    %rcx,%rax
ffff800000105a76:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a79:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a7d:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a80:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a84:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a88:	90                   	nop
ffff800000105a89:	5d                   	pop    %rbp
ffff800000105a8a:	c3                   	ret

ffff800000105a8b <set_system_gate>:
ffff800000105a8b:	f3 0f 1e fa          	endbr64
ffff800000105a8f:	55                   	push   %rbp
ffff800000105a90:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a93:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a93 <set_system_gate+0x8>
ffff800000105a9a:	49 bb 1d 81 00 00 00 	movabs $0x811d,%r11
ffff800000105aa1:	00 00 00 
ffff800000105aa4:	4c 01 d8             	add    %r11,%rax
ffff800000105aa7:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105aaa:	89 f1                	mov    %esi,%ecx
ffff800000105aac:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105ab0:	89 ca                	mov    %ecx,%edx
ffff800000105ab2:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105ab5:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ab8:	48 89 d1             	mov    %rdx,%rcx
ffff800000105abb:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105abf:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105ac6:	ff ff ff 
ffff800000105ac9:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105acd:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105ad1:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ad4:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105ad8:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105adc:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105ae3:	ff ff ff 
ffff800000105ae6:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105aea:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105aee:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105af2:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105af8:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105afc:	44 89 c0             	mov    %r8d,%eax
ffff800000105aff:	66 89 d0             	mov    %dx,%ax
ffff800000105b02:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105b06:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105b0d:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105b11:	48 01 c8             	add    %rcx,%rax
ffff800000105b14:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b17:	89 d1                	mov    %edx,%ecx
ffff800000105b19:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b1d:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b21:	48 01 c8             	add    %rcx,%rax
ffff800000105b24:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b27:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b2b:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b2e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b32:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b36:	90                   	nop
ffff800000105b37:	5d                   	pop    %rbp
ffff800000105b38:	c3                   	ret
ffff800000105b39:	f3 0f 1e fa          	endbr64
ffff800000105b3d:	55                   	push   %rbp
ffff800000105b3e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b41:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b41 <set_system_gate+0xb6>
ffff800000105b48:	49 bb 6f 80 00 00 00 	movabs $0x806f,%r11
ffff800000105b4f:	00 00 00 
ffff800000105b52:	4c 01 d8             	add    %r11,%rax
ffff800000105b55:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105b59:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105b5d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105b61:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105b65:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105b69:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105b6d:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b74:	ff ff ff 
ffff800000105b77:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b7b:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105b7f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105b83:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b86:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b8d:	ff ff ff 
ffff800000105b90:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b94:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105b98:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105b9c:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b9f:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105ba6:	ff ff ff 
ffff800000105ba9:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bad:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105bb1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105bb5:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bb8:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bbf:	ff ff ff 
ffff800000105bc2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bc6:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105bca:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105bce:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bd1:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bd8:	ff ff ff 
ffff800000105bdb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bdf:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105be3:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105be7:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bea:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bf1:	ff ff ff 
ffff800000105bf4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bf8:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105bfc:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105c00:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c03:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c0a:	ff ff ff 
ffff800000105c0d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c11:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105c15:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105c19:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c1c:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c23:	ff ff ff 
ffff800000105c26:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c2a:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105c2e:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105c32:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c35:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c3c:	ff ff ff 
ffff800000105c3f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c43:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105c47:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105c4b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c4e:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c55:	ff ff ff 
ffff800000105c58:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105c5c:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105c60:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105c64:	48 89 10             	mov    %rdx,(%rax)
ffff800000105c67:	90                   	nop
ffff800000105c68:	5d                   	pop    %rbp
ffff800000105c69:	c3                   	ret

ffff800000105c6a <do_divide_error>:
ffff800000105c6a:	f3 0f 1e fa          	endbr64
ffff800000105c6e:	55                   	push   %rbp
ffff800000105c6f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c72:	41 57                	push   %r15
ffff800000105c74:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105c78:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105c78 <do_divide_error+0xe>
ffff800000105c7f:	49 bb 38 7f 00 00 00 	movabs $0x7f38,%r11
ffff800000105c86:	00 00 00 
ffff800000105c89:	4d 01 da             	add    %r11,%r10
ffff800000105c8c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c90:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c94:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c9b:	00 
ffff800000105c9c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ca0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ca6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105caa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105cae:	48 8b 08             	mov    (%rax),%rcx
ffff800000105cb1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105cb5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105cb9:	49 89 c9             	mov    %rcx,%r9
ffff800000105cbc:	49 89 d0             	mov    %rdx,%r8
ffff800000105cbf:	48 89 c1             	mov    %rax,%rcx
ffff800000105cc2:	48 b8 30 a1 ff ff ff 	movabs $0xffffffffffffa130,%rax
ffff800000105cc9:	ff ff ff 
ffff800000105ccc:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105cd0:	48 89 c2             	mov    %rax,%rdx
ffff800000105cd3:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105cd8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105cdd:	4d 89 d7             	mov    %r10,%r15
ffff800000105ce0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ce5:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105cec:	ff ff ff 
ffff800000105cef:	4d 01 d3             	add    %r10,%r11
ffff800000105cf2:	41 ff d3             	call   *%r11
ffff800000105cf5:	90                   	nop
ffff800000105cf6:	eb fd                	jmp    ffff800000105cf5 <do_divide_error+0x8b>

ffff800000105cf8 <do_debug>:
ffff800000105cf8:	f3 0f 1e fa          	endbr64
ffff800000105cfc:	55                   	push   %rbp
ffff800000105cfd:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d00:	41 57                	push   %r15
ffff800000105d02:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d06:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d06 <do_debug+0xe>
ffff800000105d0d:	49 bb aa 7e 00 00 00 	movabs $0x7eaa,%r11
ffff800000105d14:	00 00 00 
ffff800000105d17:	4d 01 da             	add    %r11,%r10
ffff800000105d1a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d1e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d22:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d29:	00 
ffff800000105d2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d2e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d34:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d3c:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d3f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d43:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d47:	49 89 c9             	mov    %rcx,%r9
ffff800000105d4a:	49 89 d0             	mov    %rdx,%r8
ffff800000105d4d:	48 89 c1             	mov    %rax,%rcx
ffff800000105d50:	48 b8 70 a1 ff ff ff 	movabs $0xffffffffffffa170,%rax
ffff800000105d57:	ff ff ff 
ffff800000105d5a:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d5e:	48 89 c2             	mov    %rax,%rdx
ffff800000105d61:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d66:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d6b:	4d 89 d7             	mov    %r10,%r15
ffff800000105d6e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d73:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105d7a:	ff ff ff 
ffff800000105d7d:	4d 01 d3             	add    %r10,%r11
ffff800000105d80:	41 ff d3             	call   *%r11
ffff800000105d83:	90                   	nop
ffff800000105d84:	eb fd                	jmp    ffff800000105d83 <do_debug+0x8b>

ffff800000105d86 <do_nmi>:
ffff800000105d86:	f3 0f 1e fa          	endbr64
ffff800000105d8a:	55                   	push   %rbp
ffff800000105d8b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d8e:	41 57                	push   %r15
ffff800000105d90:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d94:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d94 <do_nmi+0xe>
ffff800000105d9b:	49 bb 1c 7e 00 00 00 	movabs $0x7e1c,%r11
ffff800000105da2:	00 00 00 
ffff800000105da5:	4d 01 da             	add    %r11,%r10
ffff800000105da8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105dac:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105db0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105db7:	00 
ffff800000105db8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105dbc:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105dc2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105dc6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105dca:	48 8b 08             	mov    (%rax),%rcx
ffff800000105dcd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105dd1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dd5:	49 89 c9             	mov    %rcx,%r9
ffff800000105dd8:	49 89 d0             	mov    %rdx,%r8
ffff800000105ddb:	48 89 c1             	mov    %rax,%rcx
ffff800000105dde:	48 b8 a8 a1 ff ff ff 	movabs $0xffffffffffffa1a8,%rax
ffff800000105de5:	ff ff ff 
ffff800000105de8:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105dec:	48 89 c2             	mov    %rax,%rdx
ffff800000105def:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105df4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105df9:	4d 89 d7             	mov    %r10,%r15
ffff800000105dfc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e01:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105e08:	ff ff ff 
ffff800000105e0b:	4d 01 d3             	add    %r10,%r11
ffff800000105e0e:	41 ff d3             	call   *%r11
ffff800000105e11:	90                   	nop
ffff800000105e12:	eb fd                	jmp    ffff800000105e11 <do_nmi+0x8b>

ffff800000105e14 <do_int3>:
ffff800000105e14:	f3 0f 1e fa          	endbr64
ffff800000105e18:	55                   	push   %rbp
ffff800000105e19:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e1c:	41 57                	push   %r15
ffff800000105e1e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e22:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e22 <do_int3+0xe>
ffff800000105e29:	49 bb 8e 7d 00 00 00 	movabs $0x7d8e,%r11
ffff800000105e30:	00 00 00 
ffff800000105e33:	4d 01 da             	add    %r11,%r10
ffff800000105e36:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e3a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e3e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e45:	00 
ffff800000105e46:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e4a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e50:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e54:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e58:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e5b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e5f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e63:	49 89 c9             	mov    %rcx,%r9
ffff800000105e66:	49 89 d0             	mov    %rdx,%r8
ffff800000105e69:	48 89 c1             	mov    %rax,%rcx
ffff800000105e6c:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff800000105e73:	ff ff ff 
ffff800000105e76:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e7a:	48 89 c2             	mov    %rax,%rdx
ffff800000105e7d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e82:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e87:	4d 89 d7             	mov    %r10,%r15
ffff800000105e8a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e8f:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105e96:	ff ff ff 
ffff800000105e99:	4d 01 d3             	add    %r10,%r11
ffff800000105e9c:	41 ff d3             	call   *%r11
ffff800000105e9f:	90                   	nop
ffff800000105ea0:	eb fd                	jmp    ffff800000105e9f <do_int3+0x8b>

ffff800000105ea2 <do_overflow>:
ffff800000105ea2:	f3 0f 1e fa          	endbr64
ffff800000105ea6:	55                   	push   %rbp
ffff800000105ea7:	48 89 e5             	mov    %rsp,%rbp
ffff800000105eaa:	41 57                	push   %r15
ffff800000105eac:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105eb0:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105eb0 <do_overflow+0xe>
ffff800000105eb7:	49 bb 00 7d 00 00 00 	movabs $0x7d00,%r11
ffff800000105ebe:	00 00 00 
ffff800000105ec1:	4d 01 da             	add    %r11,%r10
ffff800000105ec4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ec8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ecc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ed3:	00 
ffff800000105ed4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ed8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ede:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ee2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ee6:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ee9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105eed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ef1:	49 89 c9             	mov    %rcx,%r9
ffff800000105ef4:	49 89 d0             	mov    %rdx,%r8
ffff800000105ef7:	48 89 c1             	mov    %rax,%rcx
ffff800000105efa:	48 b8 18 a2 ff ff ff 	movabs $0xffffffffffffa218,%rax
ffff800000105f01:	ff ff ff 
ffff800000105f04:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f08:	48 89 c2             	mov    %rax,%rdx
ffff800000105f0b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f10:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f15:	4d 89 d7             	mov    %r10,%r15
ffff800000105f18:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f1d:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105f24:	ff ff ff 
ffff800000105f27:	4d 01 d3             	add    %r10,%r11
ffff800000105f2a:	41 ff d3             	call   *%r11
ffff800000105f2d:	90                   	nop
ffff800000105f2e:	eb fd                	jmp    ffff800000105f2d <do_overflow+0x8b>

ffff800000105f30 <do_bounds>:
ffff800000105f30:	f3 0f 1e fa          	endbr64
ffff800000105f34:	55                   	push   %rbp
ffff800000105f35:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f38:	41 57                	push   %r15
ffff800000105f3a:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f3e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f3e <do_bounds+0xe>
ffff800000105f45:	49 bb 72 7c 00 00 00 	movabs $0x7c72,%r11
ffff800000105f4c:	00 00 00 
ffff800000105f4f:	4d 01 da             	add    %r11,%r10
ffff800000105f52:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f56:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f5a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f61:	00 
ffff800000105f62:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f66:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f6c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f74:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f77:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f7b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f7f:	49 89 c9             	mov    %rcx,%r9
ffff800000105f82:	49 89 d0             	mov    %rdx,%r8
ffff800000105f85:	48 89 c1             	mov    %rax,%rcx
ffff800000105f88:	48 b8 58 a2 ff ff ff 	movabs $0xffffffffffffa258,%rax
ffff800000105f8f:	ff ff ff 
ffff800000105f92:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f96:	48 89 c2             	mov    %rax,%rdx
ffff800000105f99:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f9e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105fa3:	4d 89 d7             	mov    %r10,%r15
ffff800000105fa6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fab:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000105fb2:	ff ff ff 
ffff800000105fb5:	4d 01 d3             	add    %r10,%r11
ffff800000105fb8:	41 ff d3             	call   *%r11
ffff800000105fbb:	90                   	nop
ffff800000105fbc:	eb fd                	jmp    ffff800000105fbb <do_bounds+0x8b>

ffff800000105fbe <do_undefined_opcode>:
ffff800000105fbe:	f3 0f 1e fa          	endbr64
ffff800000105fc2:	55                   	push   %rbp
ffff800000105fc3:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fc6:	41 57                	push   %r15
ffff800000105fc8:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fcc:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fcc <do_undefined_opcode+0xe>
ffff800000105fd3:	49 bb e4 7b 00 00 00 	movabs $0x7be4,%r11
ffff800000105fda:	00 00 00 
ffff800000105fdd:	4d 01 da             	add    %r11,%r10
ffff800000105fe0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fe4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fe8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fef:	00 
ffff800000105ff0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ff4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ffa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ffe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106002:	48 8b 08             	mov    (%rax),%rcx
ffff800000106005:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106009:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010600d:	49 89 c9             	mov    %rcx,%r9
ffff800000106010:	49 89 d0             	mov    %rdx,%r8
ffff800000106013:	48 89 c1             	mov    %rax,%rcx
ffff800000106016:	48 b8 98 a2 ff ff ff 	movabs $0xffffffffffffa298,%rax
ffff80000010601d:	ff ff ff 
ffff800000106020:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106024:	48 89 c2             	mov    %rax,%rdx
ffff800000106027:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010602c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106031:	4d 89 d7             	mov    %r10,%r15
ffff800000106034:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106039:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106040:	ff ff ff 
ffff800000106043:	4d 01 d3             	add    %r10,%r11
ffff800000106046:	41 ff d3             	call   *%r11
ffff800000106049:	90                   	nop
ffff80000010604a:	eb fd                	jmp    ffff800000106049 <do_undefined_opcode+0x8b>

ffff80000010604c <do_dev_not_available>:
ffff80000010604c:	f3 0f 1e fa          	endbr64
ffff800000106050:	55                   	push   %rbp
ffff800000106051:	48 89 e5             	mov    %rsp,%rbp
ffff800000106054:	41 57                	push   %r15
ffff800000106056:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010605a:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010605a <do_dev_not_available+0xe>
ffff800000106061:	49 bb 56 7b 00 00 00 	movabs $0x7b56,%r11
ffff800000106068:	00 00 00 
ffff80000010606b:	4d 01 da             	add    %r11,%r10
ffff80000010606e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106072:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106076:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010607d:	00 
ffff80000010607e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106082:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106088:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010608c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106090:	48 8b 08             	mov    (%rax),%rcx
ffff800000106093:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106097:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010609b:	49 89 c9             	mov    %rcx,%r9
ffff80000010609e:	49 89 d0             	mov    %rdx,%r8
ffff8000001060a1:	48 89 c1             	mov    %rax,%rcx
ffff8000001060a4:	48 b8 e0 a2 ff ff ff 	movabs $0xffffffffffffa2e0,%rax
ffff8000001060ab:	ff ff ff 
ffff8000001060ae:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001060b2:	48 89 c2             	mov    %rax,%rdx
ffff8000001060b5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060ba:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060bf:	4d 89 d7             	mov    %r10,%r15
ffff8000001060c2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060c7:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff8000001060ce:	ff ff ff 
ffff8000001060d1:	4d 01 d3             	add    %r10,%r11
ffff8000001060d4:	41 ff d3             	call   *%r11
ffff8000001060d7:	90                   	nop
ffff8000001060d8:	eb fd                	jmp    ffff8000001060d7 <do_dev_not_available+0x8b>

ffff8000001060da <do_double_fault>:
ffff8000001060da:	f3 0f 1e fa          	endbr64
ffff8000001060de:	55                   	push   %rbp
ffff8000001060df:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060e2:	41 57                	push   %r15
ffff8000001060e4:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060e8:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060e8 <do_double_fault+0xe>
ffff8000001060ef:	49 bb c8 7a 00 00 00 	movabs $0x7ac8,%r11
ffff8000001060f6:	00 00 00 
ffff8000001060f9:	4d 01 da             	add    %r11,%r10
ffff8000001060fc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106100:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106104:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010610b:	00 
ffff80000010610c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106110:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106116:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010611a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010611e:	48 8b 08             	mov    (%rax),%rcx
ffff800000106121:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106125:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106129:	49 89 c9             	mov    %rcx,%r9
ffff80000010612c:	49 89 d0             	mov    %rdx,%r8
ffff80000010612f:	48 89 c1             	mov    %rax,%rcx
ffff800000106132:	48 b8 28 a3 ff ff ff 	movabs $0xffffffffffffa328,%rax
ffff800000106139:	ff ff ff 
ffff80000010613c:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106140:	48 89 c2             	mov    %rax,%rdx
ffff800000106143:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106148:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010614d:	4d 89 d7             	mov    %r10,%r15
ffff800000106150:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106155:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff80000010615c:	ff ff ff 
ffff80000010615f:	4d 01 d3             	add    %r10,%r11
ffff800000106162:	41 ff d3             	call   *%r11
ffff800000106165:	90                   	nop
ffff800000106166:	eb fd                	jmp    ffff800000106165 <do_double_fault+0x8b>

ffff800000106168 <do_coprocessor_segment_overrun>:
ffff800000106168:	f3 0f 1e fa          	endbr64
ffff80000010616c:	55                   	push   %rbp
ffff80000010616d:	48 89 e5             	mov    %rsp,%rbp
ffff800000106170:	41 57                	push   %r15
ffff800000106172:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106176:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106176 <do_coprocessor_segment_overrun+0xe>
ffff80000010617d:	49 bb 3a 7a 00 00 00 	movabs $0x7a3a,%r11
ffff800000106184:	00 00 00 
ffff800000106187:	4d 01 da             	add    %r11,%r10
ffff80000010618a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010618e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106192:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106199:	00 
ffff80000010619a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010619e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061a4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061ac:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061af:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061b3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061b7:	49 89 c9             	mov    %rcx,%r9
ffff8000001061ba:	49 89 d0             	mov    %rdx,%r8
ffff8000001061bd:	48 89 c1             	mov    %rax,%rcx
ffff8000001061c0:	48 b8 68 a3 ff ff ff 	movabs $0xffffffffffffa368,%rax
ffff8000001061c7:	ff ff ff 
ffff8000001061ca:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061ce:	48 89 c2             	mov    %rax,%rdx
ffff8000001061d1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061d6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061db:	4d 89 d7             	mov    %r10,%r15
ffff8000001061de:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061e3:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff8000001061ea:	ff ff ff 
ffff8000001061ed:	4d 01 d3             	add    %r10,%r11
ffff8000001061f0:	41 ff d3             	call   *%r11
ffff8000001061f3:	90                   	nop
ffff8000001061f4:	eb fd                	jmp    ffff8000001061f3 <do_coprocessor_segment_overrun+0x8b>

ffff8000001061f6 <do_invalid_TSS>:
ffff8000001061f6:	f3 0f 1e fa          	endbr64
ffff8000001061fa:	55                   	push   %rbp
ffff8000001061fb:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061fe:	41 57                	push   %r15
ffff800000106200:	53                   	push   %rbx
ffff800000106201:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106205:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106205 <do_invalid_TSS+0xf>
ffff80000010620c:	49 bb ab 79 00 00 00 	movabs $0x79ab,%r11
ffff800000106213:	00 00 00 
ffff800000106216:	4c 01 db             	add    %r11,%rbx
ffff800000106219:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010621d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106221:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106228:	00 
ffff800000106229:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010622d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106233:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106237:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010623b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010623e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106242:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106246:	49 89 c9             	mov    %rcx,%r9
ffff800000106249:	49 89 d0             	mov    %rdx,%r8
ffff80000010624c:	48 89 c1             	mov    %rax,%rcx
ffff80000010624f:	48 b8 b8 a3 ff ff ff 	movabs $0xffffffffffffa3b8,%rax
ffff800000106256:	ff ff ff 
ffff800000106259:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010625d:	48 89 c2             	mov    %rax,%rdx
ffff800000106260:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106265:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010626a:	49 89 df             	mov    %rbx,%r15
ffff80000010626d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106272:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff800000106279:	ff ff ff 
ffff80000010627c:	49 01 da             	add    %rbx,%r10
ffff80000010627f:	41 ff d2             	call   *%r10
ffff800000106282:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106286:	83 e0 01             	and    $0x1,%eax
ffff800000106289:	48 85 c0             	test   %rax,%rax
ffff80000010628c:	74 32                	je     ffff8000001062c0 <do_invalid_TSS+0xca>
ffff80000010628e:	48 b8 f8 a3 ff ff ff 	movabs $0xffffffffffffa3f8,%rax
ffff800000106295:	ff ff ff 
ffff800000106298:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010629c:	48 89 c2             	mov    %rax,%rdx
ffff80000010629f:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062a4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062a9:	49 89 df             	mov    %rbx,%r15
ffff8000001062ac:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062b1:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001062b8:	ff ff ff 
ffff8000001062bb:	48 01 d9             	add    %rbx,%rcx
ffff8000001062be:	ff d1                	call   *%rcx
ffff8000001062c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062c4:	83 e0 02             	and    $0x2,%eax
ffff8000001062c7:	48 85 c0             	test   %rax,%rax
ffff8000001062ca:	74 34                	je     ffff800000106300 <do_invalid_TSS+0x10a>
ffff8000001062cc:	48 b8 78 a4 ff ff ff 	movabs $0xffffffffffffa478,%rax
ffff8000001062d3:	ff ff ff 
ffff8000001062d6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062da:	48 89 c2             	mov    %rax,%rdx
ffff8000001062dd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062e2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062e7:	49 89 df             	mov    %rbx,%r15
ffff8000001062ea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062ef:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001062f6:	ff ff ff 
ffff8000001062f9:	48 01 d9             	add    %rbx,%rcx
ffff8000001062fc:	ff d1                	call   *%rcx
ffff8000001062fe:	eb 32                	jmp    ffff800000106332 <do_invalid_TSS+0x13c>
ffff800000106300:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff800000106307:	ff ff ff 
ffff80000010630a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010630e:	48 89 c2             	mov    %rax,%rdx
ffff800000106311:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106316:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010631b:	49 89 df             	mov    %rbx,%r15
ffff80000010631e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106323:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff80000010632a:	ff ff ff 
ffff80000010632d:	48 01 d9             	add    %rbx,%rcx
ffff800000106330:	ff d1                	call   *%rcx
ffff800000106332:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106336:	83 e0 02             	and    $0x2,%eax
ffff800000106339:	48 85 c0             	test   %rax,%rax
ffff80000010633c:	75 72                	jne    ffff8000001063b0 <do_invalid_TSS+0x1ba>
ffff80000010633e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106342:	83 e0 04             	and    $0x4,%eax
ffff800000106345:	48 85 c0             	test   %rax,%rax
ffff800000106348:	74 34                	je     ffff80000010637e <do_invalid_TSS+0x188>
ffff80000010634a:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff800000106351:	ff ff ff 
ffff800000106354:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106358:	48 89 c2             	mov    %rax,%rdx
ffff80000010635b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106360:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106365:	49 89 df             	mov    %rbx,%r15
ffff800000106368:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010636d:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106374:	ff ff ff 
ffff800000106377:	48 01 d9             	add    %rbx,%rcx
ffff80000010637a:	ff d1                	call   *%rcx
ffff80000010637c:	eb 32                	jmp    ffff8000001063b0 <do_invalid_TSS+0x1ba>
ffff80000010637e:	48 b8 18 a5 ff ff ff 	movabs $0xffffffffffffa518,%rax
ffff800000106385:	ff ff ff 
ffff800000106388:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010638c:	48 89 c2             	mov    %rax,%rdx
ffff80000010638f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106394:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106399:	49 89 df             	mov    %rbx,%r15
ffff80000010639c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063a1:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001063a8:	ff ff ff 
ffff8000001063ab:	48 01 d9             	add    %rbx,%rcx
ffff8000001063ae:	ff d1                	call   *%rcx
ffff8000001063b0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063b4:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001063b9:	48 89 c1             	mov    %rax,%rcx
ffff8000001063bc:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff8000001063c3:	ff ff ff 
ffff8000001063c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063ca:	48 89 c2             	mov    %rax,%rdx
ffff8000001063cd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063d2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063d7:	49 89 df             	mov    %rbx,%r15
ffff8000001063da:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063df:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff8000001063e6:	ff ff ff 
ffff8000001063e9:	49 01 d8             	add    %rbx,%r8
ffff8000001063ec:	41 ff d0             	call   *%r8
ffff8000001063ef:	90                   	nop
ffff8000001063f0:	eb fd                	jmp    ffff8000001063ef <do_invalid_TSS+0x1f9>

ffff8000001063f2 <do_segment_not_present>:
ffff8000001063f2:	f3 0f 1e fa          	endbr64
ffff8000001063f6:	55                   	push   %rbp
ffff8000001063f7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063fa:	41 57                	push   %r15
ffff8000001063fc:	53                   	push   %rbx
ffff8000001063fd:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106401:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106401 <do_segment_not_present+0xf>
ffff800000106408:	49 bb af 77 00 00 00 	movabs $0x77af,%r11
ffff80000010640f:	00 00 00 
ffff800000106412:	4c 01 db             	add    %r11,%rbx
ffff800000106415:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106419:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010641d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106424:	00 
ffff800000106425:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106429:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010642f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106433:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106437:	48 8b 08             	mov    (%rax),%rcx
ffff80000010643a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010643e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106442:	49 89 c9             	mov    %rcx,%r9
ffff800000106445:	49 89 d0             	mov    %rdx,%r8
ffff800000106448:	48 89 c1             	mov    %rax,%rcx
ffff80000010644b:	48 b8 68 a5 ff ff ff 	movabs $0xffffffffffffa568,%rax
ffff800000106452:	ff ff ff 
ffff800000106455:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106459:	48 89 c2             	mov    %rax,%rdx
ffff80000010645c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106461:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106466:	49 89 df             	mov    %rbx,%r15
ffff800000106469:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010646e:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff800000106475:	ff ff ff 
ffff800000106478:	49 01 da             	add    %rbx,%r10
ffff80000010647b:	41 ff d2             	call   *%r10
ffff80000010647e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106482:	83 e0 01             	and    $0x1,%eax
ffff800000106485:	48 85 c0             	test   %rax,%rax
ffff800000106488:	74 32                	je     ffff8000001064bc <do_segment_not_present+0xca>
ffff80000010648a:	48 b8 f8 a3 ff ff ff 	movabs $0xffffffffffffa3f8,%rax
ffff800000106491:	ff ff ff 
ffff800000106494:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106498:	48 89 c2             	mov    %rax,%rdx
ffff80000010649b:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064a0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064a5:	49 89 df             	mov    %rbx,%r15
ffff8000001064a8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064ad:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001064b4:	ff ff ff 
ffff8000001064b7:	48 01 d9             	add    %rbx,%rcx
ffff8000001064ba:	ff d1                	call   *%rcx
ffff8000001064bc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064c0:	83 e0 02             	and    $0x2,%eax
ffff8000001064c3:	48 85 c0             	test   %rax,%rax
ffff8000001064c6:	74 34                	je     ffff8000001064fc <do_segment_not_present+0x10a>
ffff8000001064c8:	48 b8 78 a4 ff ff ff 	movabs $0xffffffffffffa478,%rax
ffff8000001064cf:	ff ff ff 
ffff8000001064d2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064d6:	48 89 c2             	mov    %rax,%rdx
ffff8000001064d9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064de:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064e3:	49 89 df             	mov    %rbx,%r15
ffff8000001064e6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064eb:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001064f2:	ff ff ff 
ffff8000001064f5:	48 01 d9             	add    %rbx,%rcx
ffff8000001064f8:	ff d1                	call   *%rcx
ffff8000001064fa:	eb 32                	jmp    ffff80000010652e <do_segment_not_present+0x13c>
ffff8000001064fc:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff800000106503:	ff ff ff 
ffff800000106506:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010650a:	48 89 c2             	mov    %rax,%rdx
ffff80000010650d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106512:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106517:	49 89 df             	mov    %rbx,%r15
ffff80000010651a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010651f:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106526:	ff ff ff 
ffff800000106529:	48 01 d9             	add    %rbx,%rcx
ffff80000010652c:	ff d1                	call   *%rcx
ffff80000010652e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106532:	83 e0 02             	and    $0x2,%eax
ffff800000106535:	48 85 c0             	test   %rax,%rax
ffff800000106538:	75 72                	jne    ffff8000001065ac <do_segment_not_present+0x1ba>
ffff80000010653a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010653e:	83 e0 04             	and    $0x4,%eax
ffff800000106541:	48 85 c0             	test   %rax,%rax
ffff800000106544:	74 34                	je     ffff80000010657a <do_segment_not_present+0x188>
ffff800000106546:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff80000010654d:	ff ff ff 
ffff800000106550:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106554:	48 89 c2             	mov    %rax,%rdx
ffff800000106557:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010655c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106561:	49 89 df             	mov    %rbx,%r15
ffff800000106564:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106569:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106570:	ff ff ff 
ffff800000106573:	48 01 d9             	add    %rbx,%rcx
ffff800000106576:	ff d1                	call   *%rcx
ffff800000106578:	eb 32                	jmp    ffff8000001065ac <do_segment_not_present+0x1ba>
ffff80000010657a:	48 b8 18 a5 ff ff ff 	movabs $0xffffffffffffa518,%rax
ffff800000106581:	ff ff ff 
ffff800000106584:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106588:	48 89 c2             	mov    %rax,%rdx
ffff80000010658b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106590:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106595:	49 89 df             	mov    %rbx,%r15
ffff800000106598:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010659d:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001065a4:	ff ff ff 
ffff8000001065a7:	48 01 d9             	add    %rbx,%rcx
ffff8000001065aa:	ff d1                	call   *%rcx
ffff8000001065ac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065b0:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001065b5:	48 89 c1             	mov    %rax,%rcx
ffff8000001065b8:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff8000001065bf:	ff ff ff 
ffff8000001065c2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065c6:	48 89 c2             	mov    %rax,%rdx
ffff8000001065c9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065ce:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065d3:	49 89 df             	mov    %rbx,%r15
ffff8000001065d6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065db:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff8000001065e2:	ff ff ff 
ffff8000001065e5:	49 01 d8             	add    %rbx,%r8
ffff8000001065e8:	41 ff d0             	call   *%r8
ffff8000001065eb:	90                   	nop
ffff8000001065ec:	eb fd                	jmp    ffff8000001065eb <do_segment_not_present+0x1f9>

ffff8000001065ee <do_stack_segment_fault>:
ffff8000001065ee:	f3 0f 1e fa          	endbr64
ffff8000001065f2:	55                   	push   %rbp
ffff8000001065f3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001065f6:	41 57                	push   %r15
ffff8000001065f8:	53                   	push   %rbx
ffff8000001065f9:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001065fd:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001065fd <do_stack_segment_fault+0xf>
ffff800000106604:	49 bb b3 75 00 00 00 	movabs $0x75b3,%r11
ffff80000010660b:	00 00 00 
ffff80000010660e:	4c 01 db             	add    %r11,%rbx
ffff800000106611:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106615:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106619:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106620:	00 
ffff800000106621:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106625:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010662b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010662f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106633:	48 8b 08             	mov    (%rax),%rcx
ffff800000106636:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010663a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010663e:	49 89 c9             	mov    %rcx,%r9
ffff800000106641:	49 89 d0             	mov    %rdx,%r8
ffff800000106644:	48 89 c1             	mov    %rax,%rcx
ffff800000106647:	48 b8 b0 a5 ff ff ff 	movabs $0xffffffffffffa5b0,%rax
ffff80000010664e:	ff ff ff 
ffff800000106651:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106655:	48 89 c2             	mov    %rax,%rdx
ffff800000106658:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010665d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106662:	49 89 df             	mov    %rbx,%r15
ffff800000106665:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010666a:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff800000106671:	ff ff ff 
ffff800000106674:	49 01 da             	add    %rbx,%r10
ffff800000106677:	41 ff d2             	call   *%r10
ffff80000010667a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010667e:	83 e0 01             	and    $0x1,%eax
ffff800000106681:	48 85 c0             	test   %rax,%rax
ffff800000106684:	74 32                	je     ffff8000001066b8 <do_stack_segment_fault+0xca>
ffff800000106686:	48 b8 f8 a3 ff ff ff 	movabs $0xffffffffffffa3f8,%rax
ffff80000010668d:	ff ff ff 
ffff800000106690:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106694:	48 89 c2             	mov    %rax,%rdx
ffff800000106697:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010669c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066a1:	49 89 df             	mov    %rbx,%r15
ffff8000001066a4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066a9:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001066b0:	ff ff ff 
ffff8000001066b3:	48 01 d9             	add    %rbx,%rcx
ffff8000001066b6:	ff d1                	call   *%rcx
ffff8000001066b8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066bc:	83 e0 02             	and    $0x2,%eax
ffff8000001066bf:	48 85 c0             	test   %rax,%rax
ffff8000001066c2:	74 34                	je     ffff8000001066f8 <do_stack_segment_fault+0x10a>
ffff8000001066c4:	48 b8 78 a4 ff ff ff 	movabs $0xffffffffffffa478,%rax
ffff8000001066cb:	ff ff ff 
ffff8000001066ce:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066d2:	48 89 c2             	mov    %rax,%rdx
ffff8000001066d5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066da:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066df:	49 89 df             	mov    %rbx,%r15
ffff8000001066e2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066e7:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001066ee:	ff ff ff 
ffff8000001066f1:	48 01 d9             	add    %rbx,%rcx
ffff8000001066f4:	ff d1                	call   *%rcx
ffff8000001066f6:	eb 32                	jmp    ffff80000010672a <do_stack_segment_fault+0x13c>
ffff8000001066f8:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001066ff:	ff ff ff 
ffff800000106702:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106706:	48 89 c2             	mov    %rax,%rdx
ffff800000106709:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010670e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106713:	49 89 df             	mov    %rbx,%r15
ffff800000106716:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010671b:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106722:	ff ff ff 
ffff800000106725:	48 01 d9             	add    %rbx,%rcx
ffff800000106728:	ff d1                	call   *%rcx
ffff80000010672a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010672e:	83 e0 02             	and    $0x2,%eax
ffff800000106731:	48 85 c0             	test   %rax,%rax
ffff800000106734:	75 72                	jne    ffff8000001067a8 <do_stack_segment_fault+0x1ba>
ffff800000106736:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010673a:	83 e0 04             	and    $0x4,%eax
ffff80000010673d:	48 85 c0             	test   %rax,%rax
ffff800000106740:	74 34                	je     ffff800000106776 <do_stack_segment_fault+0x188>
ffff800000106742:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff800000106749:	ff ff ff 
ffff80000010674c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106750:	48 89 c2             	mov    %rax,%rdx
ffff800000106753:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106758:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010675d:	49 89 df             	mov    %rbx,%r15
ffff800000106760:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106765:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff80000010676c:	ff ff ff 
ffff80000010676f:	48 01 d9             	add    %rbx,%rcx
ffff800000106772:	ff d1                	call   *%rcx
ffff800000106774:	eb 32                	jmp    ffff8000001067a8 <do_stack_segment_fault+0x1ba>
ffff800000106776:	48 b8 18 a5 ff ff ff 	movabs $0xffffffffffffa518,%rax
ffff80000010677d:	ff ff ff 
ffff800000106780:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106784:	48 89 c2             	mov    %rax,%rdx
ffff800000106787:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010678c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106791:	49 89 df             	mov    %rbx,%r15
ffff800000106794:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106799:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001067a0:	ff ff ff 
ffff8000001067a3:	48 01 d9             	add    %rbx,%rcx
ffff8000001067a6:	ff d1                	call   *%rcx
ffff8000001067a8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067ac:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001067b1:	48 89 c1             	mov    %rax,%rcx
ffff8000001067b4:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff8000001067bb:	ff ff ff 
ffff8000001067be:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067c2:	48 89 c2             	mov    %rax,%rdx
ffff8000001067c5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067ca:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067cf:	49 89 df             	mov    %rbx,%r15
ffff8000001067d2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067d7:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff8000001067de:	ff ff ff 
ffff8000001067e1:	49 01 d8             	add    %rbx,%r8
ffff8000001067e4:	41 ff d0             	call   *%r8
ffff8000001067e7:	90                   	nop
ffff8000001067e8:	eb fd                	jmp    ffff8000001067e7 <do_stack_segment_fault+0x1f9>

ffff8000001067ea <do_general_protection>:
ffff8000001067ea:	f3 0f 1e fa          	endbr64
ffff8000001067ee:	55                   	push   %rbp
ffff8000001067ef:	48 89 e5             	mov    %rsp,%rbp
ffff8000001067f2:	41 57                	push   %r15
ffff8000001067f4:	53                   	push   %rbx
ffff8000001067f5:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001067f9:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001067f9 <do_general_protection+0xf>
ffff800000106800:	49 bb b7 73 00 00 00 	movabs $0x73b7,%r11
ffff800000106807:	00 00 00 
ffff80000010680a:	4c 01 db             	add    %r11,%rbx
ffff80000010680d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106811:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106815:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010681c:	00 
ffff80000010681d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106821:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106827:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010682b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010682f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106832:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106836:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010683a:	49 89 c9             	mov    %rcx,%r9
ffff80000010683d:	49 89 d0             	mov    %rdx,%r8
ffff800000106840:	48 89 c1             	mov    %rax,%rcx
ffff800000106843:	48 b8 f8 a5 ff ff ff 	movabs $0xffffffffffffa5f8,%rax
ffff80000010684a:	ff ff ff 
ffff80000010684d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106851:	48 89 c2             	mov    %rax,%rdx
ffff800000106854:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106859:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010685e:	49 89 df             	mov    %rbx,%r15
ffff800000106861:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106866:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff80000010686d:	ff ff ff 
ffff800000106870:	49 01 da             	add    %rbx,%r10
ffff800000106873:	41 ff d2             	call   *%r10
ffff800000106876:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010687a:	83 e0 01             	and    $0x1,%eax
ffff80000010687d:	48 85 c0             	test   %rax,%rax
ffff800000106880:	74 32                	je     ffff8000001068b4 <do_general_protection+0xca>
ffff800000106882:	48 b8 f8 a3 ff ff ff 	movabs $0xffffffffffffa3f8,%rax
ffff800000106889:	ff ff ff 
ffff80000010688c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106890:	48 89 c2             	mov    %rax,%rdx
ffff800000106893:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106898:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010689d:	49 89 df             	mov    %rbx,%r15
ffff8000001068a0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068a5:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001068ac:	ff ff ff 
ffff8000001068af:	48 01 d9             	add    %rbx,%rcx
ffff8000001068b2:	ff d1                	call   *%rcx
ffff8000001068b4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068b8:	83 e0 02             	and    $0x2,%eax
ffff8000001068bb:	48 85 c0             	test   %rax,%rax
ffff8000001068be:	74 34                	je     ffff8000001068f4 <do_general_protection+0x10a>
ffff8000001068c0:	48 b8 78 a4 ff ff ff 	movabs $0xffffffffffffa478,%rax
ffff8000001068c7:	ff ff ff 
ffff8000001068ca:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068ce:	48 89 c2             	mov    %rax,%rdx
ffff8000001068d1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068d6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068db:	49 89 df             	mov    %rbx,%r15
ffff8000001068de:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068e3:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff8000001068ea:	ff ff ff 
ffff8000001068ed:	48 01 d9             	add    %rbx,%rcx
ffff8000001068f0:	ff d1                	call   *%rcx
ffff8000001068f2:	eb 32                	jmp    ffff800000106926 <do_general_protection+0x13c>
ffff8000001068f4:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001068fb:	ff ff ff 
ffff8000001068fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106902:	48 89 c2             	mov    %rax,%rdx
ffff800000106905:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010690a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010690f:	49 89 df             	mov    %rbx,%r15
ffff800000106912:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106917:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff80000010691e:	ff ff ff 
ffff800000106921:	48 01 d9             	add    %rbx,%rcx
ffff800000106924:	ff d1                	call   *%rcx
ffff800000106926:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010692a:	83 e0 02             	and    $0x2,%eax
ffff80000010692d:	48 85 c0             	test   %rax,%rax
ffff800000106930:	75 72                	jne    ffff8000001069a4 <do_general_protection+0x1ba>
ffff800000106932:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106936:	83 e0 04             	and    $0x4,%eax
ffff800000106939:	48 85 c0             	test   %rax,%rax
ffff80000010693c:	74 34                	je     ffff800000106972 <do_general_protection+0x188>
ffff80000010693e:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff800000106945:	ff ff ff 
ffff800000106948:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010694c:	48 89 c2             	mov    %rax,%rdx
ffff80000010694f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106954:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106959:	49 89 df             	mov    %rbx,%r15
ffff80000010695c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106961:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106968:	ff ff ff 
ffff80000010696b:	48 01 d9             	add    %rbx,%rcx
ffff80000010696e:	ff d1                	call   *%rcx
ffff800000106970:	eb 32                	jmp    ffff8000001069a4 <do_general_protection+0x1ba>
ffff800000106972:	48 b8 18 a5 ff ff ff 	movabs $0xffffffffffffa518,%rax
ffff800000106979:	ff ff ff 
ffff80000010697c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106980:	48 89 c2             	mov    %rax,%rdx
ffff800000106983:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106988:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010698d:	49 89 df             	mov    %rbx,%r15
ffff800000106990:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106995:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff80000010699c:	ff ff ff 
ffff80000010699f:	48 01 d9             	add    %rbx,%rcx
ffff8000001069a2:	ff d1                	call   *%rcx
ffff8000001069a4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069a8:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001069ad:	48 89 c1             	mov    %rax,%rcx
ffff8000001069b0:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff8000001069b7:	ff ff ff 
ffff8000001069ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069be:	48 89 c2             	mov    %rax,%rdx
ffff8000001069c1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069c6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069cb:	49 89 df             	mov    %rbx,%r15
ffff8000001069ce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069d3:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff8000001069da:	ff ff ff 
ffff8000001069dd:	49 01 d8             	add    %rbx,%r8
ffff8000001069e0:	41 ff d0             	call   *%r8
ffff8000001069e3:	90                   	nop
ffff8000001069e4:	eb fd                	jmp    ffff8000001069e3 <do_general_protection+0x1f9>

ffff8000001069e6 <do_page_fault>:
ffff8000001069e6:	f3 0f 1e fa          	endbr64
ffff8000001069ea:	55                   	push   %rbp
ffff8000001069eb:	48 89 e5             	mov    %rsp,%rbp
ffff8000001069ee:	41 57                	push   %r15
ffff8000001069f0:	53                   	push   %rbx
ffff8000001069f1:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001069f5:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001069f5 <do_page_fault+0xf>
ffff8000001069fc:	49 bb bb 71 00 00 00 	movabs $0x71bb,%r11
ffff800000106a03:	00 00 00 
ffff800000106a06:	4c 01 db             	add    %r11,%rbx
ffff800000106a09:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106a0d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106a11:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106a18:	00 
ffff800000106a19:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106a20:	00 
ffff800000106a21:	0f 20 d0             	mov    %cr2,%rax
ffff800000106a24:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106a28:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106a2c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106a32:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106a36:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106a3a:	48 8b 08             	mov    (%rax),%rcx
ffff800000106a3d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106a41:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a45:	49 89 c9             	mov    %rcx,%r9
ffff800000106a48:	49 89 d0             	mov    %rdx,%r8
ffff800000106a4b:	48 89 c1             	mov    %rax,%rcx
ffff800000106a4e:	48 b8 40 a6 ff ff ff 	movabs $0xffffffffffffa640,%rax
ffff800000106a55:	ff ff ff 
ffff800000106a58:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a5c:	48 89 c2             	mov    %rax,%rdx
ffff800000106a5f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a64:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a69:	49 89 df             	mov    %rbx,%r15
ffff800000106a6c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a71:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff800000106a78:	ff ff ff 
ffff800000106a7b:	49 01 da             	add    %rbx,%r10
ffff800000106a7e:	41 ff d2             	call   *%r10
ffff800000106a81:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a85:	83 e0 01             	and    $0x1,%eax
ffff800000106a88:	48 85 c0             	test   %rax,%rax
ffff800000106a8b:	75 32                	jne    ffff800000106abf <do_page_fault+0xd9>
ffff800000106a8d:	48 b8 7e a6 ff ff ff 	movabs $0xffffffffffffa67e,%rax
ffff800000106a94:	ff ff ff 
ffff800000106a97:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a9b:	48 89 c2             	mov    %rax,%rdx
ffff800000106a9e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aa3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106aa8:	49 89 df             	mov    %rbx,%r15
ffff800000106aab:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ab0:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106ab7:	ff ff ff 
ffff800000106aba:	48 01 d9             	add    %rbx,%rcx
ffff800000106abd:	ff d1                	call   *%rcx
ffff800000106abf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ac3:	83 e0 02             	and    $0x2,%eax
ffff800000106ac6:	48 85 c0             	test   %rax,%rax
ffff800000106ac9:	74 34                	je     ffff800000106aff <do_page_fault+0x119>
ffff800000106acb:	48 b8 91 a6 ff ff ff 	movabs $0xffffffffffffa691,%rax
ffff800000106ad2:	ff ff ff 
ffff800000106ad5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ad9:	48 89 c2             	mov    %rax,%rdx
ffff800000106adc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ae1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ae6:	49 89 df             	mov    %rbx,%r15
ffff800000106ae9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106aee:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106af5:	ff ff ff 
ffff800000106af8:	48 01 d9             	add    %rbx,%rcx
ffff800000106afb:	ff d1                	call   *%rcx
ffff800000106afd:	eb 32                	jmp    ffff800000106b31 <do_page_fault+0x14b>
ffff800000106aff:	48 b8 a5 a6 ff ff ff 	movabs $0xffffffffffffa6a5,%rax
ffff800000106b06:	ff ff ff 
ffff800000106b09:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b0d:	48 89 c2             	mov    %rax,%rdx
ffff800000106b10:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b15:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b1a:	49 89 df             	mov    %rbx,%r15
ffff800000106b1d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b22:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106b29:	ff ff ff 
ffff800000106b2c:	48 01 d9             	add    %rbx,%rcx
ffff800000106b2f:	ff d1                	call   *%rcx
ffff800000106b31:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b35:	83 e0 04             	and    $0x4,%eax
ffff800000106b38:	48 85 c0             	test   %rax,%rax
ffff800000106b3b:	74 34                	je     ffff800000106b71 <do_page_fault+0x18b>
ffff800000106b3d:	48 b8 b8 a6 ff ff ff 	movabs $0xffffffffffffa6b8,%rax
ffff800000106b44:	ff ff ff 
ffff800000106b47:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b4b:	48 89 c2             	mov    %rax,%rdx
ffff800000106b4e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b53:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b58:	49 89 df             	mov    %rbx,%r15
ffff800000106b5b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b60:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106b67:	ff ff ff 
ffff800000106b6a:	48 01 d9             	add    %rbx,%rcx
ffff800000106b6d:	ff d1                	call   *%rcx
ffff800000106b6f:	eb 32                	jmp    ffff800000106ba3 <do_page_fault+0x1bd>
ffff800000106b71:	48 b8 ca a6 ff ff ff 	movabs $0xffffffffffffa6ca,%rax
ffff800000106b78:	ff ff ff 
ffff800000106b7b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b7f:	48 89 c2             	mov    %rax,%rdx
ffff800000106b82:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b87:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b8c:	49 89 df             	mov    %rbx,%r15
ffff800000106b8f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b94:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106b9b:	ff ff ff 
ffff800000106b9e:	48 01 d9             	add    %rbx,%rcx
ffff800000106ba1:	ff d1                	call   *%rcx
ffff800000106ba3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ba7:	83 e0 08             	and    $0x8,%eax
ffff800000106baa:	48 85 c0             	test   %rax,%rax
ffff800000106bad:	74 32                	je     ffff800000106be1 <do_page_fault+0x1fb>
ffff800000106baf:	48 b8 e6 a6 ff ff ff 	movabs $0xffffffffffffa6e6,%rax
ffff800000106bb6:	ff ff ff 
ffff800000106bb9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bbd:	48 89 c2             	mov    %rax,%rdx
ffff800000106bc0:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bc5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bca:	49 89 df             	mov    %rbx,%r15
ffff800000106bcd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bd2:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106bd9:	ff ff ff 
ffff800000106bdc:	48 01 d9             	add    %rbx,%rcx
ffff800000106bdf:	ff d1                	call   *%rcx
ffff800000106be1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106be5:	83 e0 10             	and    $0x10,%eax
ffff800000106be8:	48 85 c0             	test   %rax,%rax
ffff800000106beb:	74 32                	je     ffff800000106c1f <do_page_fault+0x239>
ffff800000106bed:	48 b8 08 a7 ff ff ff 	movabs $0xffffffffffffa708,%rax
ffff800000106bf4:	ff ff ff 
ffff800000106bf7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bfb:	48 89 c2             	mov    %rax,%rdx
ffff800000106bfe:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c03:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c08:	49 89 df             	mov    %rbx,%r15
ffff800000106c0b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c10:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106c17:	ff ff ff 
ffff800000106c1a:	48 01 d9             	add    %rbx,%rcx
ffff800000106c1d:	ff d1                	call   *%rcx
ffff800000106c1f:	48 b8 27 a7 ff ff ff 	movabs $0xffffffffffffa727,%rax
ffff800000106c26:	ff ff ff 
ffff800000106c29:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c2d:	48 89 c2             	mov    %rax,%rdx
ffff800000106c30:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c35:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c3a:	49 89 df             	mov    %rbx,%r15
ffff800000106c3d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c42:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000106c49:	ff ff ff 
ffff800000106c4c:	48 01 d9             	add    %rbx,%rcx
ffff800000106c4f:	ff d1                	call   *%rcx
ffff800000106c51:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c55:	48 89 c1             	mov    %rax,%rcx
ffff800000106c58:	48 b8 29 a7 ff ff ff 	movabs $0xffffffffffffa729,%rax
ffff800000106c5f:	ff ff ff 
ffff800000106c62:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c66:	48 89 c2             	mov    %rax,%rdx
ffff800000106c69:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c6e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c73:	49 89 df             	mov    %rbx,%r15
ffff800000106c76:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c7b:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff800000106c82:	ff ff ff 
ffff800000106c85:	49 01 d8             	add    %rbx,%r8
ffff800000106c88:	41 ff d0             	call   *%r8
ffff800000106c8b:	90                   	nop
ffff800000106c8c:	eb fd                	jmp    ffff800000106c8b <do_page_fault+0x2a5>

ffff800000106c8e <do_x87_FPU_error>:
ffff800000106c8e:	f3 0f 1e fa          	endbr64
ffff800000106c92:	55                   	push   %rbp
ffff800000106c93:	48 89 e5             	mov    %rsp,%rbp
ffff800000106c96:	41 57                	push   %r15
ffff800000106c98:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106c9c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106c9c <do_x87_FPU_error+0xe>
ffff800000106ca3:	49 bb 14 6f 00 00 00 	movabs $0x6f14,%r11
ffff800000106caa:	00 00 00 
ffff800000106cad:	4d 01 da             	add    %r11,%r10
ffff800000106cb0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106cb4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106cb8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106cbf:	00 
ffff800000106cc0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106cc4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106cca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106cce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106cd2:	48 8b 08             	mov    (%rax),%rcx
ffff800000106cd5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106cd9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cdd:	49 89 c9             	mov    %rcx,%r9
ffff800000106ce0:	49 89 d0             	mov    %rdx,%r8
ffff800000106ce3:	48 89 c1             	mov    %rax,%rcx
ffff800000106ce6:	48 b8 38 a7 ff ff ff 	movabs $0xffffffffffffa738,%rax
ffff800000106ced:	ff ff ff 
ffff800000106cf0:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106cf4:	48 89 c2             	mov    %rax,%rdx
ffff800000106cf7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cfc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d01:	4d 89 d7             	mov    %r10,%r15
ffff800000106d04:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d09:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106d10:	ff ff ff 
ffff800000106d13:	4d 01 d3             	add    %r10,%r11
ffff800000106d16:	41 ff d3             	call   *%r11
ffff800000106d19:	90                   	nop
ffff800000106d1a:	eb fd                	jmp    ffff800000106d19 <do_x87_FPU_error+0x8b>

ffff800000106d1c <do_alignment_check>:
ffff800000106d1c:	f3 0f 1e fa          	endbr64
ffff800000106d20:	55                   	push   %rbp
ffff800000106d21:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d24:	41 57                	push   %r15
ffff800000106d26:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d2a:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d2a <do_alignment_check+0xe>
ffff800000106d31:	49 bb 86 6e 00 00 00 	movabs $0x6e86,%r11
ffff800000106d38:	00 00 00 
ffff800000106d3b:	4d 01 da             	add    %r11,%r10
ffff800000106d3e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d42:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d46:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d4d:	00 
ffff800000106d4e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d52:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d58:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d60:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d63:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d67:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d6b:	49 89 c9             	mov    %rcx,%r9
ffff800000106d6e:	49 89 d0             	mov    %rdx,%r8
ffff800000106d71:	48 89 c1             	mov    %rax,%rcx
ffff800000106d74:	48 b8 80 a7 ff ff ff 	movabs $0xffffffffffffa780,%rax
ffff800000106d7b:	ff ff ff 
ffff800000106d7e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d82:	48 89 c2             	mov    %rax,%rdx
ffff800000106d85:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d8a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d8f:	4d 89 d7             	mov    %r10,%r15
ffff800000106d92:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d97:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106d9e:	ff ff ff 
ffff800000106da1:	4d 01 d3             	add    %r10,%r11
ffff800000106da4:	41 ff d3             	call   *%r11
ffff800000106da7:	90                   	nop
ffff800000106da8:	eb fd                	jmp    ffff800000106da7 <do_alignment_check+0x8b>

ffff800000106daa <do_machine_check>:
ffff800000106daa:	f3 0f 1e fa          	endbr64
ffff800000106dae:	55                   	push   %rbp
ffff800000106daf:	48 89 e5             	mov    %rsp,%rbp
ffff800000106db2:	41 57                	push   %r15
ffff800000106db4:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106db8:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106db8 <do_machine_check+0xe>
ffff800000106dbf:	49 bb f8 6d 00 00 00 	movabs $0x6df8,%r11
ffff800000106dc6:	00 00 00 
ffff800000106dc9:	4d 01 da             	add    %r11,%r10
ffff800000106dcc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106dd0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106dd4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ddb:	00 
ffff800000106ddc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106de0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106de6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106dea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106dee:	48 8b 08             	mov    (%rax),%rcx
ffff800000106df1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106df5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106df9:	49 89 c9             	mov    %rcx,%r9
ffff800000106dfc:	49 89 d0             	mov    %rdx,%r8
ffff800000106dff:	48 89 c1             	mov    %rax,%rcx
ffff800000106e02:	48 b8 c8 a7 ff ff ff 	movabs $0xffffffffffffa7c8,%rax
ffff800000106e09:	ff ff ff 
ffff800000106e0c:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e10:	48 89 c2             	mov    %rax,%rdx
ffff800000106e13:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e18:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e1d:	4d 89 d7             	mov    %r10,%r15
ffff800000106e20:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e25:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106e2c:	ff ff ff 
ffff800000106e2f:	4d 01 d3             	add    %r10,%r11
ffff800000106e32:	41 ff d3             	call   *%r11
ffff800000106e35:	90                   	nop
ffff800000106e36:	eb fd                	jmp    ffff800000106e35 <do_machine_check+0x8b>

ffff800000106e38 <do_SIMD_exception>:
ffff800000106e38:	f3 0f 1e fa          	endbr64
ffff800000106e3c:	55                   	push   %rbp
ffff800000106e3d:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e40:	41 57                	push   %r15
ffff800000106e42:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e46:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e46 <do_SIMD_exception+0xe>
ffff800000106e4d:	49 bb 6a 6d 00 00 00 	movabs $0x6d6a,%r11
ffff800000106e54:	00 00 00 
ffff800000106e57:	4d 01 da             	add    %r11,%r10
ffff800000106e5a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e5e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e62:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e69:	00 
ffff800000106e6a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e6e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e74:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e7c:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e7f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e83:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e87:	49 89 c9             	mov    %rcx,%r9
ffff800000106e8a:	49 89 d0             	mov    %rdx,%r8
ffff800000106e8d:	48 89 c1             	mov    %rax,%rcx
ffff800000106e90:	48 b8 10 a8 ff ff ff 	movabs $0xffffffffffffa810,%rax
ffff800000106e97:	ff ff ff 
ffff800000106e9a:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e9e:	48 89 c2             	mov    %rax,%rdx
ffff800000106ea1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ea6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106eab:	4d 89 d7             	mov    %r10,%r15
ffff800000106eae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eb3:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106eba:	ff ff ff 
ffff800000106ebd:	4d 01 d3             	add    %r10,%r11
ffff800000106ec0:	41 ff d3             	call   *%r11
ffff800000106ec3:	90                   	nop
ffff800000106ec4:	eb fd                	jmp    ffff800000106ec3 <do_SIMD_exception+0x8b>

ffff800000106ec6 <do_virtualization_exception>:
ffff800000106ec6:	f3 0f 1e fa          	endbr64
ffff800000106eca:	55                   	push   %rbp
ffff800000106ecb:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ece:	41 57                	push   %r15
ffff800000106ed0:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106ed4:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106ed4 <do_virtualization_exception+0xe>
ffff800000106edb:	49 bb dc 6c 00 00 00 	movabs $0x6cdc,%r11
ffff800000106ee2:	00 00 00 
ffff800000106ee5:	4d 01 da             	add    %r11,%r10
ffff800000106ee8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106eec:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ef0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ef7:	00 
ffff800000106ef8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106efc:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f02:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f06:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f0a:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f0d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f11:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f15:	49 89 c9             	mov    %rcx,%r9
ffff800000106f18:	49 89 d0             	mov    %rdx,%r8
ffff800000106f1b:	48 89 c1             	mov    %rax,%rcx
ffff800000106f1e:	48 b8 58 a8 ff ff ff 	movabs $0xffffffffffffa858,%rax
ffff800000106f25:	ff ff ff 
ffff800000106f28:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f2c:	48 89 c2             	mov    %rax,%rdx
ffff800000106f2f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f34:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f39:	4d 89 d7             	mov    %r10,%r15
ffff800000106f3c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f41:	49 bb a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r11
ffff800000106f48:	ff ff ff 
ffff800000106f4b:	4d 01 d3             	add    %r10,%r11
ffff800000106f4e:	41 ff d3             	call   *%r11
ffff800000106f51:	90                   	nop
ffff800000106f52:	eb fd                	jmp    ffff800000106f51 <do_virtualization_exception+0x8b>

ffff800000106f54 <sys_vector_init>:
ffff800000106f54:	f3 0f 1e fa          	endbr64
ffff800000106f58:	55                   	push   %rbp
ffff800000106f59:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f5c:	53                   	push   %rbx
ffff800000106f5d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106f5d <sys_vector_init+0x9>
ffff800000106f64:	49 bb 53 6c 00 00 00 	movabs $0x6c53,%r11
ffff800000106f6b:	00 00 00 
ffff800000106f6e:	4c 01 db             	add    %r11,%rbx
ffff800000106f71:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000106f78:	ff ff ff 
ffff800000106f7b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106f7f:	48 89 c2             	mov    %rax,%rdx
ffff800000106f82:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f87:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000106f8c:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000106f93:	ff ff ff 
ffff800000106f96:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f9a:	ff d0                	call   *%rax
ffff800000106f9c:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000106fa3:	ff ff ff 
ffff800000106fa6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106faa:	48 89 c2             	mov    %rax,%rdx
ffff800000106fad:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fb2:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000106fb7:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000106fbe:	ff ff ff 
ffff800000106fc1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fc5:	ff d0                	call   *%rax
ffff800000106fc7:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000106fce:	ff ff ff 
ffff800000106fd1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fd5:	48 89 c2             	mov    %rax,%rdx
ffff800000106fd8:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fdd:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000106fe2:	48 b8 7f 7d ff ff ff 	movabs $0xffffffffffff7d7f,%rax
ffff800000106fe9:	ff ff ff 
ffff800000106fec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ff0:	ff d0                	call   *%rax
ffff800000106ff2:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000106ff9:	ff ff ff 
ffff800000106ffc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107000:	48 89 c2             	mov    %rax,%rdx
ffff800000107003:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107008:	bf 03 00 00 00       	mov    $0x3,%edi
ffff80000010700d:	48 b8 db 7e ff ff ff 	movabs $0xffffffffffff7edb,%rax
ffff800000107014:	ff ff ff 
ffff800000107017:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010701b:	ff d0                	call   *%rax
ffff80000010701d:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107024:	ff ff ff 
ffff800000107027:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010702b:	48 89 c2             	mov    %rax,%rdx
ffff80000010702e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107033:	bf 04 00 00 00       	mov    $0x4,%edi
ffff800000107038:	48 b8 db 7e ff ff ff 	movabs $0xffffffffffff7edb,%rax
ffff80000010703f:	ff ff ff 
ffff800000107042:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107046:	ff d0                	call   *%rax
ffff800000107048:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff80000010704f:	ff ff ff 
ffff800000107052:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107056:	48 89 c2             	mov    %rax,%rdx
ffff800000107059:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010705e:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107063:	48 b8 db 7e ff ff ff 	movabs $0xffffffffffff7edb,%rax
ffff80000010706a:	ff ff ff 
ffff80000010706d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107071:	ff d0                	call   *%rax
ffff800000107073:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff80000010707a:	ff ff ff 
ffff80000010707d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107081:	48 89 c2             	mov    %rax,%rdx
ffff800000107084:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107089:	bf 06 00 00 00       	mov    $0x6,%edi
ffff80000010708e:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107095:	ff ff ff 
ffff800000107098:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010709c:	ff d0                	call   *%rax
ffff80000010709e:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff8000001070a5:	ff ff ff 
ffff8000001070a8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070ac:	48 89 c2             	mov    %rax,%rdx
ffff8000001070af:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070b4:	bf 07 00 00 00       	mov    $0x7,%edi
ffff8000001070b9:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff8000001070c0:	ff ff ff 
ffff8000001070c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070c7:	ff d0                	call   *%rax
ffff8000001070c9:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001070d0:	ff ff ff 
ffff8000001070d3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070d7:	48 89 c2             	mov    %rax,%rdx
ffff8000001070da:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070df:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001070e4:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff8000001070eb:	ff ff ff 
ffff8000001070ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070f2:	ff d0                	call   *%rax
ffff8000001070f4:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001070fb:	ff ff ff 
ffff8000001070fe:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107102:	48 89 c2             	mov    %rax,%rdx
ffff800000107105:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010710a:	bf 09 00 00 00       	mov    $0x9,%edi
ffff80000010710f:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107116:	ff ff ff 
ffff800000107119:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010711d:	ff d0                	call   *%rax
ffff80000010711f:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000107126:	ff ff ff 
ffff800000107129:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010712d:	48 89 c2             	mov    %rax,%rdx
ffff800000107130:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107135:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff80000010713a:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107141:	ff ff ff 
ffff800000107144:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107148:	ff d0                	call   *%rax
ffff80000010714a:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107151:	ff ff ff 
ffff800000107154:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107158:	48 89 c2             	mov    %rax,%rdx
ffff80000010715b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107160:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107165:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff80000010716c:	ff ff ff 
ffff80000010716f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107173:	ff d0                	call   *%rax
ffff800000107175:	48 b8 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rax
ffff80000010717c:	ff ff ff 
ffff80000010717f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107183:	48 89 c2             	mov    %rax,%rdx
ffff800000107186:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010718b:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff800000107190:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107197:	ff ff ff 
ffff80000010719a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010719e:	ff d0                	call   *%rax
ffff8000001071a0:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff8000001071a7:	ff ff ff 
ffff8000001071aa:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071ae:	48 89 c2             	mov    %rax,%rdx
ffff8000001071b1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071b6:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001071bb:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff8000001071c2:	ff ff ff 
ffff8000001071c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071c9:	ff d0                	call   *%rax
ffff8000001071cb:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001071d2:	ff ff ff 
ffff8000001071d5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071d9:	48 89 c2             	mov    %rax,%rdx
ffff8000001071dc:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071e1:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001071e6:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff8000001071ed:	ff ff ff 
ffff8000001071f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071f4:	ff d0                	call   *%rax
ffff8000001071f6:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001071fd:	ff ff ff 
ffff800000107200:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107204:	48 89 c2             	mov    %rax,%rdx
ffff800000107207:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010720c:	bf 10 00 00 00       	mov    $0x10,%edi
ffff800000107211:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107218:	ff ff ff 
ffff80000010721b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010721f:	ff d0                	call   *%rax
ffff800000107221:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff800000107228:	ff ff ff 
ffff80000010722b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010722f:	48 89 c2             	mov    %rax,%rdx
ffff800000107232:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107237:	bf 11 00 00 00       	mov    $0x11,%edi
ffff80000010723c:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107243:	ff ff ff 
ffff800000107246:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010724a:	ff d0                	call   *%rax
ffff80000010724c:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107253:	ff ff ff 
ffff800000107256:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010725a:	48 89 c2             	mov    %rax,%rdx
ffff80000010725d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107262:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107267:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff80000010726e:	ff ff ff 
ffff800000107271:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107275:	ff d0                	call   *%rax
ffff800000107277:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff80000010727e:	ff ff ff 
ffff800000107281:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107285:	48 89 c2             	mov    %rax,%rdx
ffff800000107288:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010728d:	bf 13 00 00 00       	mov    $0x13,%edi
ffff800000107292:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff800000107299:	ff ff ff 
ffff80000010729c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072a0:	ff d0                	call   *%rax
ffff8000001072a2:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff8000001072a9:	ff ff ff 
ffff8000001072ac:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072b0:	48 89 c2             	mov    %rax,%rdx
ffff8000001072b3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072b8:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001072bd:	48 b8 2d 7e ff ff ff 	movabs $0xffffffffffff7e2d,%rax
ffff8000001072c4:	ff ff ff 
ffff8000001072c7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072cb:	ff d0                	call   *%rax
ffff8000001072cd:	90                   	nop
ffff8000001072ce:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001072d2:	c9                   	leave
ffff8000001072d3:	c3                   	ret

ffff8000001072d4 <RESTORE_ALL>:
ffff8000001072d4:	41 5f                	pop    %r15
ffff8000001072d6:	41 5e                	pop    %r14
ffff8000001072d8:	41 5d                	pop    %r13
ffff8000001072da:	41 5c                	pop    %r12
ffff8000001072dc:	41 5b                	pop    %r11
ffff8000001072de:	41 5a                	pop    %r10
ffff8000001072e0:	41 59                	pop    %r9
ffff8000001072e2:	41 58                	pop    %r8
ffff8000001072e4:	5b                   	pop    %rbx
ffff8000001072e5:	59                   	pop    %rcx
ffff8000001072e6:	5a                   	pop    %rdx
ffff8000001072e7:	5e                   	pop    %rsi
ffff8000001072e8:	5f                   	pop    %rdi
ffff8000001072e9:	5d                   	pop    %rbp
ffff8000001072ea:	58                   	pop    %rax
ffff8000001072eb:	8e d8                	mov    %eax,%ds
ffff8000001072ed:	58                   	pop    %rax
ffff8000001072ee:	8e c0                	mov    %eax,%es
ffff8000001072f0:	58                   	pop    %rax
ffff8000001072f1:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001072f5:	48 cf                	iretq

ffff8000001072f7 <divide_error>:
ffff8000001072f7:	6a 00                	push   $0x0
ffff8000001072f9:	50                   	push   %rax
ffff8000001072fa:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105c6a <do_divide_error>
ffff800000107301:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107305:	eb 00                	jmp    ffff800000107307 <error_code>

ffff800000107307 <error_code>:
ffff800000107307:	50                   	push   %rax
ffff800000107308:	8c c0                	mov    %es,%eax
ffff80000010730a:	50                   	push   %rax
ffff80000010730b:	8c d8                	mov    %ds,%eax
ffff80000010730d:	50                   	push   %rax
ffff80000010730e:	48 31 c0             	xor    %rax,%rax
ffff800000107311:	55                   	push   %rbp
ffff800000107312:	57                   	push   %rdi
ffff800000107313:	56                   	push   %rsi
ffff800000107314:	52                   	push   %rdx
ffff800000107315:	51                   	push   %rcx
ffff800000107316:	53                   	push   %rbx
ffff800000107317:	41 50                	push   %r8
ffff800000107319:	41 51                	push   %r9
ffff80000010731b:	41 52                	push   %r10
ffff80000010731d:	41 53                	push   %r11
ffff80000010731f:	41 54                	push   %r12
ffff800000107321:	41 55                	push   %r13
ffff800000107323:	41 56                	push   %r14
ffff800000107325:	41 57                	push   %r15
ffff800000107327:	fc                   	cld
ffff800000107328:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff80000010732f:	00 
ffff800000107330:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000107337:	00 
ffff800000107338:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff80000010733f:	8e df                	mov    %edi,%ds
ffff800000107341:	8e c7                	mov    %edi,%es
ffff800000107343:	48 89 e7             	mov    %rsp,%rdi
ffff800000107346:	ff d2                	call   *%rdx
ffff800000107348:	eb 00                	jmp    ffff80000010734a <ret_from_intr>

ffff80000010734a <ret_from_intr>:
ffff80000010734a:	eb 88                	jmp    ffff8000001072d4 <RESTORE_ALL>

ffff80000010734c <debug>:
ffff80000010734c:	6a 00                	push   $0x0
ffff80000010734e:	50                   	push   %rax
ffff80000010734f:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105cf8 <do_debug>
ffff800000107356:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010735a:	eb ab                	jmp    ffff800000107307 <error_code>

ffff80000010735c <nmi>:
ffff80000010735c:	50                   	push   %rax
ffff80000010735d:	fc                   	cld
ffff80000010735e:	50                   	push   %rax
ffff80000010735f:	50                   	push   %rax
ffff800000107360:	8c c0                	mov    %es,%eax
ffff800000107362:	50                   	push   %rax
ffff800000107363:	8c d8                	mov    %ds,%eax
ffff800000107365:	50                   	push   %rax
ffff800000107366:	48 31 c0             	xor    %rax,%rax
ffff800000107369:	55                   	push   %rbp
ffff80000010736a:	57                   	push   %rdi
ffff80000010736b:	56                   	push   %rsi
ffff80000010736c:	52                   	push   %rdx
ffff80000010736d:	51                   	push   %rcx
ffff80000010736e:	53                   	push   %rbx
ffff80000010736f:	41 50                	push   %r8
ffff800000107371:	41 51                	push   %r9
ffff800000107373:	41 52                	push   %r10
ffff800000107375:	41 53                	push   %r11
ffff800000107377:	41 54                	push   %r12
ffff800000107379:	41 55                	push   %r13
ffff80000010737b:	41 56                	push   %r14
ffff80000010737d:	41 57                	push   %r15
ffff80000010737f:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff800000107386:	8e da                	mov    %edx,%ds
ffff800000107388:	8e c2                	mov    %edx,%es
ffff80000010738a:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff800000107391:	48 89 e6             	mov    %rsp,%rsi
ffff800000107394:	e8 ed e9 ff ff       	call   ffff800000105d86 <do_nmi>
ffff800000107399:	e9 36 ff ff ff       	jmp    ffff8000001072d4 <RESTORE_ALL>

ffff80000010739e <invalid_TSS>:
ffff80000010739e:	50                   	push   %rax
ffff80000010739f:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff8000001061f6 <do_invalid_TSS>
ffff8000001073a6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073aa:	e9 58 ff ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001073af <page_fault>:
ffff8000001073af:	50                   	push   %rax
ffff8000001073b0:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff8000001069e6 <do_page_fault>
ffff8000001073b7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073bb:	e9 47 ff ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001073c0 <int3>:
ffff8000001073c0:	6a 00                	push   $0x0
ffff8000001073c2:	50                   	push   %rax
ffff8000001073c3:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105e14 <do_int3>
ffff8000001073ca:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073ce:	e9 34 ff ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001073d3 <overflow>:
ffff8000001073d3:	6a 00                	push   $0x0
ffff8000001073d5:	50                   	push   %rax
ffff8000001073d6:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105ea2 <do_overflow>
ffff8000001073dd:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073e1:	e9 21 ff ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001073e6 <bounds>:
ffff8000001073e6:	6a 00                	push   $0x0
ffff8000001073e8:	50                   	push   %rax
ffff8000001073e9:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105f30 <do_bounds>
ffff8000001073f0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073f4:	e9 0e ff ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001073f9 <undefined_opcode>:
ffff8000001073f9:	6a 00                	push   $0x0
ffff8000001073fb:	50                   	push   %rax
ffff8000001073fc:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff800000105fbe <do_undefined_opcode>
ffff800000107403:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107407:	e9 fb fe ff ff       	jmp    ffff800000107307 <error_code>

ffff80000010740c <dev_not_available>:
ffff80000010740c:	6a 00                	push   $0x0
ffff80000010740e:	50                   	push   %rax
ffff80000010740f:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff80000010604c <do_dev_not_available>
ffff800000107416:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010741a:	e9 e8 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff80000010741f <double_fault>:
ffff80000010741f:	50                   	push   %rax
ffff800000107420:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff8000001060da <do_double_fault>
ffff800000107427:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010742b:	e9 d7 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107430 <coprocessor_segment_overrun>:
ffff800000107430:	6a 00                	push   $0x0
ffff800000107432:	50                   	push   %rax
ffff800000107433:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff800000106168 <do_coprocessor_segment_overrun>
ffff80000010743a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010743e:	e9 c4 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107443 <segment_not_present>:
ffff800000107443:	50                   	push   %rax
ffff800000107444:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff8000001063f2 <do_segment_not_present>
ffff80000010744b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010744f:	e9 b3 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107454 <stack_segment_fault>:
ffff800000107454:	50                   	push   %rax
ffff800000107455:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff8000001065ee <do_stack_segment_fault>
ffff80000010745c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107460:	e9 a2 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107465 <general_protection>:
ffff800000107465:	50                   	push   %rax
ffff800000107466:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff8000001067ea <do_general_protection>
ffff80000010746d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107471:	e9 91 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107476 <x87_FPU_error>:
ffff800000107476:	6a 00                	push   $0x0
ffff800000107478:	50                   	push   %rax
ffff800000107479:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106c8e <do_x87_FPU_error>
ffff800000107480:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107484:	e9 7e fe ff ff       	jmp    ffff800000107307 <error_code>

ffff800000107489 <alignment_check>:
ffff800000107489:	50                   	push   %rax
ffff80000010748a:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106d1c <do_alignment_check>
ffff800000107491:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107495:	e9 6d fe ff ff       	jmp    ffff800000107307 <error_code>

ffff80000010749a <machine_check>:
ffff80000010749a:	6a 00                	push   $0x0
ffff80000010749c:	50                   	push   %rax
ffff80000010749d:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106daa <do_machine_check>
ffff8000001074a4:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074a8:	e9 5a fe ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001074ad <SIMD_exception>:
ffff8000001074ad:	6a 00                	push   $0x0
ffff8000001074af:	50                   	push   %rax
ffff8000001074b0:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106e38 <do_SIMD_exception>
ffff8000001074b7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074bb:	e9 47 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001074c0 <virtualization_exception>:
ffff8000001074c0:	6a 00                	push   $0x0
ffff8000001074c2:	50                   	push   %rax
ffff8000001074c3:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106ec6 <do_virtualization_exception>
ffff8000001074ca:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ce:	e9 34 fe ff ff       	jmp    ffff800000107307 <error_code>

ffff8000001074d3 <init_memory>:
ffff8000001074d3:	f3 0f 1e fa          	endbr64
ffff8000001074d7:	55                   	push   %rbp
ffff8000001074d8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001074db:	41 57                	push   %r15
ffff8000001074dd:	53                   	push   %rbx
ffff8000001074de:	48 83 ec 40          	sub    $0x40,%rsp
ffff8000001074e2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001074e2 <init_memory+0xf>
ffff8000001074e9:	49 bb ce 66 00 00 00 	movabs $0x66ce,%r11
ffff8000001074f0:	00 00 00 
ffff8000001074f3:	4c 01 db             	add    %r11,%rbx
ffff8000001074f6:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001074fd:	00 
ffff8000001074fe:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff800000107505:	00 
ffff800000107506:	48 b8 a8 a8 ff ff ff 	movabs $0xffffffffffffa8a8,%rax
ffff80000010750d:	ff ff ff 
ffff800000107510:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107514:	48 89 c2             	mov    %rax,%rdx
ffff800000107517:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010751c:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107521:	49 89 df             	mov    %rbx,%r15
ffff800000107524:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107529:	48 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%rcx
ffff800000107530:	ff ff ff 
ffff800000107533:	48 01 d9             	add    %rbx,%rcx
ffff800000107536:	ff d1                	call   *%rcx
ffff800000107538:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff80000010753f:	80 ff ff 
ffff800000107542:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107546:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff80000010754d:	e9 8a 01 00 00       	jmp    ffff8000001076dc <init_memory+0x209>
ffff800000107552:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107556:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107559:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010755d:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107561:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107565:	48 8b 00             	mov    (%rax),%rax
ffff800000107568:	41 89 c9             	mov    %ecx,%r9d
ffff80000010756b:	49 89 d0             	mov    %rdx,%r8
ffff80000010756e:	48 89 c1             	mov    %rax,%rcx
ffff800000107571:	48 b8 20 a9 ff ff ff 	movabs $0xffffffffffffa920,%rax
ffff800000107578:	ff ff ff 
ffff80000010757b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010757f:	48 89 c2             	mov    %rax,%rdx
ffff800000107582:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107587:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010758c:	49 89 df             	mov    %rbx,%r15
ffff80000010758f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107594:	49 ba a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r10
ffff80000010759b:	ff ff ff 
ffff80000010759e:	49 01 da             	add    %rbx,%r10
ffff8000001075a1:	41 ff d2             	call   *%r10
ffff8000001075a4:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
ffff8000001075ab:	00 
ffff8000001075ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075b0:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001075b3:	83 f8 01             	cmp    $0x1,%eax
ffff8000001075b6:	75 0c                	jne    ffff8000001075c4 <init_memory+0xf1>
ffff8000001075b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075bc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001075c0:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff8000001075c4:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001075cb:	00 00 00 
ffff8000001075ce:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001075d1:	48 63 d0             	movslq %eax,%rdx
ffff8000001075d4:	48 01 d9             	add    %rbx,%rcx
ffff8000001075d7:	48 89 d0             	mov    %rdx,%rax
ffff8000001075da:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001075de:	48 01 d0             	add    %rdx,%rax
ffff8000001075e1:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001075e5:	48 01 c8             	add    %rcx,%rax
ffff8000001075e8:	48 8b 10             	mov    (%rax),%rdx
ffff8000001075eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075ef:	48 8b 00             	mov    (%rax),%rax
ffff8000001075f2:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001075f6:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff8000001075fd:	00 00 00 
ffff800000107600:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107603:	48 63 d0             	movslq %eax,%rdx
ffff800000107606:	48 01 de             	add    %rbx,%rsi
ffff800000107609:	48 89 d0             	mov    %rdx,%rax
ffff80000010760c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107610:	48 01 d0             	add    %rdx,%rax
ffff800000107613:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107617:	48 01 f0             	add    %rsi,%rax
ffff80000010761a:	48 89 08             	mov    %rcx,(%rax)
ffff80000010761d:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107624:	00 00 00 
ffff800000107627:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010762a:	48 63 d0             	movslq %eax,%rdx
ffff80000010762d:	48 89 d0             	mov    %rdx,%rax
ffff800000107630:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107634:	48 01 d0             	add    %rdx,%rax
ffff800000107637:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010763b:	48 01 d8             	add    %rbx,%rax
ffff80000010763e:	48 01 c8             	add    %rcx,%rax
ffff800000107641:	48 83 c0 08          	add    $0x8,%rax
ffff800000107645:	48 8b 10             	mov    (%rax),%rdx
ffff800000107648:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010764c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107650:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107654:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff80000010765b:	00 00 00 
ffff80000010765e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107661:	48 63 d0             	movslq %eax,%rdx
ffff800000107664:	48 89 d0             	mov    %rdx,%rax
ffff800000107667:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010766b:	48 01 d0             	add    %rdx,%rax
ffff80000010766e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107672:	48 01 d8             	add    %rbx,%rax
ffff800000107675:	48 01 f0             	add    %rsi,%rax
ffff800000107678:	48 83 c0 08          	add    $0x8,%rax
ffff80000010767c:	48 89 08             	mov    %rcx,(%rax)
ffff80000010767f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107683:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107686:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff80000010768d:	00 00 00 
ffff800000107690:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107693:	48 63 d0             	movslq %eax,%rdx
ffff800000107696:	48 01 de             	add    %rbx,%rsi
ffff800000107699:	48 89 d0             	mov    %rdx,%rax
ffff80000010769c:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001076a0:	48 01 d0             	add    %rdx,%rax
ffff8000001076a3:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001076a7:	48 01 f0             	add    %rsi,%rax
ffff8000001076aa:	48 83 c0 10          	add    $0x10,%rax
ffff8000001076ae:	89 08                	mov    %ecx,(%rax)
ffff8000001076b0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001076b3:	48 98                	cltq
ffff8000001076b5:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001076bc:	00 00 00 
ffff8000001076bf:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff8000001076c6:	00 
ffff8000001076c7:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff8000001076cc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076d0:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001076d3:	83 f8 04             	cmp    $0x4,%eax
ffff8000001076d6:	77 10                	ja     ffff8000001076e8 <init_memory+0x215>
ffff8000001076d8:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff8000001076dc:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff8000001076e0:	0f 8e 6c fe ff ff    	jle    ffff800000107552 <init_memory+0x7f>
ffff8000001076e6:	eb 01                	jmp    ffff8000001076e9 <init_memory+0x216>
ffff8000001076e8:	90                   	nop
ffff8000001076e9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001076ed:	48 89 c1             	mov    %rax,%rcx
ffff8000001076f0:	48 b8 50 a9 ff ff ff 	movabs $0xffffffffffffa950,%rax
ffff8000001076f7:	ff ff ff 
ffff8000001076fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001076fe:	48 89 c2             	mov    %rax,%rdx
ffff800000107701:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107706:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010770b:	49 89 df             	mov    %rbx,%r15
ffff80000010770e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107713:	49 b8 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r8
ffff80000010771a:	ff ff ff 
ffff80000010771d:	49 01 d8             	add    %rbx,%r8
ffff800000107720:	41 ff d0             	call   *%r8
ffff800000107723:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010772a:	00 
ffff80000010772b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107732:	e9 ed 00 00 00       	jmp    ffff800000107824 <init_memory+0x351>
ffff800000107737:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff80000010773e:	00 00 00 
ffff800000107741:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107744:	48 63 d0             	movslq %eax,%rdx
ffff800000107747:	48 01 d9             	add    %rbx,%rcx
ffff80000010774a:	48 89 d0             	mov    %rdx,%rax
ffff80000010774d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107751:	48 01 d0             	add    %rdx,%rax
ffff800000107754:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107758:	48 01 c8             	add    %rcx,%rax
ffff80000010775b:	48 83 c0 10          	add    $0x10,%rax
ffff80000010775f:	8b 00                	mov    (%rax),%eax
ffff800000107761:	83 f8 01             	cmp    $0x1,%eax
ffff800000107764:	0f 85 b2 00 00 00    	jne    ffff80000010781c <init_memory+0x349>
ffff80000010776a:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107771:	00 00 00 
ffff800000107774:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107777:	48 63 d0             	movslq %eax,%rdx
ffff80000010777a:	48 01 d9             	add    %rbx,%rcx
ffff80000010777d:	48 89 d0             	mov    %rdx,%rax
ffff800000107780:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107784:	48 01 d0             	add    %rdx,%rax
ffff800000107787:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010778b:	48 01 c8             	add    %rcx,%rax
ffff80000010778e:	48 8b 00             	mov    (%rax),%rax
ffff800000107791:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107797:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff80000010779d:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001077a1:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001077a8:	00 00 00 
ffff8000001077ab:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001077ae:	48 63 d0             	movslq %eax,%rdx
ffff8000001077b1:	48 01 d9             	add    %rbx,%rcx
ffff8000001077b4:	48 89 d0             	mov    %rdx,%rax
ffff8000001077b7:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077bb:	48 01 d0             	add    %rdx,%rax
ffff8000001077be:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077c2:	48 01 c8             	add    %rcx,%rax
ffff8000001077c5:	48 8b 08             	mov    (%rax),%rcx
ffff8000001077c8:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff8000001077cf:	00 00 00 
ffff8000001077d2:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001077d5:	48 63 d0             	movslq %eax,%rdx
ffff8000001077d8:	48 89 d0             	mov    %rdx,%rax
ffff8000001077db:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077df:	48 01 d0             	add    %rdx,%rax
ffff8000001077e2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077e6:	48 01 d8             	add    %rbx,%rax
ffff8000001077e9:	48 01 f0             	add    %rsi,%rax
ffff8000001077ec:	48 83 c0 08          	add    $0x8,%rax
ffff8000001077f0:	48 8b 00             	mov    (%rax),%rax
ffff8000001077f3:	48 01 c8             	add    %rcx,%rax
ffff8000001077f6:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001077fc:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000107800:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107804:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107808:	73 15                	jae    ffff80000010781f <init_memory+0x34c>
ffff80000010780a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010780e:	48 2b 45 c0          	sub    -0x40(%rbp),%rax
ffff800000107812:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107816:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010781a:	eb 04                	jmp    ffff800000107820 <init_memory+0x34d>
ffff80000010781c:	90                   	nop
ffff80000010781d:	eb 01                	jmp    ffff800000107820 <init_memory+0x34d>
ffff80000010781f:	90                   	nop
ffff800000107820:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107824:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107827:	48 98                	cltq
ffff800000107829:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000107830:	00 00 00 
ffff800000107833:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff80000010783a:	00 
ffff80000010783b:	48 39 c2             	cmp    %rax,%rdx
ffff80000010783e:	0f 83 f3 fe ff ff    	jae    ffff800000107737 <init_memory+0x264>
ffff800000107844:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107848:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010784c:	49 89 d0             	mov    %rdx,%r8
ffff80000010784f:	48 89 c1             	mov    %rax,%rcx
ffff800000107852:	48 b8 70 a9 ff ff ff 	movabs $0xffffffffffffa970,%rax
ffff800000107859:	ff ff ff 
ffff80000010785c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107860:	48 89 c2             	mov    %rax,%rdx
ffff800000107863:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107868:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010786d:	49 89 df             	mov    %rbx,%r15
ffff800000107870:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107875:	49 b9 a9 69 ff ff ff 	movabs $0xffffffffffff69a9,%r9
ffff80000010787c:	ff ff ff 
ffff80000010787f:	49 01 d9             	add    %rbx,%r9
ffff800000107882:	41 ff d1             	call   *%r9
ffff800000107885:	90                   	nop
ffff800000107886:	48 83 c4 40          	add    $0x40,%rsp
ffff80000010788a:	5b                   	pop    %rbx
ffff80000010788b:	41 5f                	pop    %r15
ffff80000010788d:	5d                   	pop    %rbp
ffff80000010788e:	c3                   	ret
