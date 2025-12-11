
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 85 00 00 	lgdt   0x8550(%rip)        # ffff800000108568 <GDT_END>
ffff800000100018:	0f 01 1d 53 95 00 00 	lidt   0x9553(%rip)        # ffff800000109572 <IDT_END>
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
ffff800000100099:	48 8d 3d d2 84 00 00 	lea    0x84d2(%rip),%rdi        # ffff800000108572 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 be 94 00 00 	lea    0x94be(%rip),%rdx        # ffff80000010957c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d e8 83 00 00 	lea    0x83e8(%rip),%rdi        # ffff8000001084e0 <GDT_Table>
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
ffff800000100161:	e8 d2 43 00 00       	call   ffff800000104538 <color_printk>
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
ffff80000010400f:	49 bb a8 86 00 00 00 	movabs $0x86a8,%r11
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
ffff80000010413c:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000104140:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104140 <Start_Kernel+0xf>
ffff800000104147:	49 bb 70 85 00 00 00 	movabs $0x8570,%r11
ffff80000010414e:	00 00 00 
ffff800000104151:	4c 01 db             	add    %r11,%rbx
ffff800000104154:	0f 20 e0             	mov    %cr4,%rax
ffff800000104157:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010415b:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
ffff800000104162:	00 
ffff800000104163:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
ffff80000010416a:	00 
ffff80000010416b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010416f:	0f 22 e0             	mov    %rax,%cr4
ffff800000104172:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104179:	80 ff ff 
ffff80000010417c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000104180:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104187:	00 00 00 
ffff80000010418a:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff800000104191:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104198:	00 00 00 
ffff80000010419b:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff8000001041a2:	00 
ffff8000001041a3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041aa:	00 00 00 
ffff8000001041ad:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001041b4:	00 
ffff8000001041b5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041bc:	00 00 00 
ffff8000001041bf:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001041c6:	00 
ffff8000001041c7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041ce:	00 00 00 
ffff8000001041d1:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff8000001041d8:	00 
ffff8000001041d9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041e0:	00 00 00 
ffff8000001041e3:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff8000001041ea:	00 
ffff8000001041eb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041f2:	00 00 00 
ffff8000001041f5:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff8000001041fa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104201:	00 00 00 
ffff800000104204:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff800000104207:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010420e:	00 00 00 
ffff800000104211:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104215:	0f af c2             	imul   %edx,%eax
ffff800000104218:	c1 e0 02             	shl    $0x2,%eax
ffff80000010421b:	48 98                	cltq
ffff80000010421d:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104224:	00 00 00 
ffff800000104227:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff80000010422c:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000104231:	0f 00 d8             	ltr    %eax
ffff800000104234:	68 00 7c 00 00       	push   $0x7c00
ffff800000104239:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104240:	ff 
ffff800000104241:	68 00 7c 00 00       	push   $0x7c00
ffff800000104246:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010424d:	ff 
ffff80000010424e:	68 00 7c 00 00       	push   $0x7c00
ffff800000104253:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010425a:	ff 
ffff80000010425b:	68 00 7c 00 00       	push   $0x7c00
ffff800000104260:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104267:	ff 
ffff800000104268:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff80000010426f:	80 ff ff 
ffff800000104272:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff800000104279:	80 ff ff 
ffff80000010427c:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104283:	80 ff ff 
ffff800000104286:	48 89 c1             	mov    %rax,%rcx
ffff800000104289:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104290:	80 ff ff 
ffff800000104293:	48 89 c2             	mov    %rax,%rdx
ffff800000104296:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff80000010429d:	80 ff ff 
ffff8000001042a0:	48 89 c6             	mov    %rax,%rsi
ffff8000001042a3:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042aa:	80 ff ff 
ffff8000001042ad:	48 89 c7             	mov    %rax,%rdi
ffff8000001042b0:	48 b8 50 79 ff ff ff 	movabs $0xffffffffffff7950,%rax
ffff8000001042b7:	ff ff ff 
ffff8000001042ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042be:	ff d0                	call   *%rax
ffff8000001042c0:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042c4:	49 89 df             	mov    %rbx,%r15
ffff8000001042c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042cc:	48 ba 83 a8 ff ff ff 	movabs $0xffffffffffffa883,%rdx
ffff8000001042d3:	ff ff ff 
ffff8000001042d6:	48 01 da             	add    %rbx,%rdx
ffff8000001042d9:	ff d2                	call   *%rdx
ffff8000001042db:	48 b8 00 ae ff ff ff 	movabs $0xffffffffffffae00,%rax
ffff8000001042e2:	ff ff ff 
ffff8000001042e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001042ec:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001042f1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001042f6:	49 89 df             	mov    %rbx,%r15
ffff8000001042f9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042fe:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000104305:	ff ff ff 
ffff800000104308:	48 01 d9             	add    %rbx,%rcx
ffff80000010430b:	ff d1                	call   *%rcx
ffff80000010430d:	48 b8 11 ae ff ff ff 	movabs $0xffffffffffffae11,%rax
ffff800000104314:	ff ff ff 
ffff800000104317:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010431b:	48 89 c2             	mov    %rax,%rdx
ffff80000010431e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104323:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104328:	49 89 df             	mov    %rbx,%r15
ffff80000010432b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104330:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000104337:	ff ff ff 
ffff80000010433a:	48 01 d9             	add    %rbx,%rcx
ffff80000010433d:	ff d1                	call   *%rcx
ffff80000010433f:	48 b8 20 ae ff ff ff 	movabs $0xffffffffffffae20,%rax
ffff800000104346:	ff ff ff 
ffff800000104349:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010434d:	48 89 c2             	mov    %rax,%rdx
ffff800000104350:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104355:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010435a:	49 89 df             	mov    %rbx,%r15
ffff80000010435d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104362:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000104369:	ff ff ff 
ffff80000010436c:	48 01 d9             	add    %rbx,%rcx
ffff80000010436f:	ff d1                	call   *%rcx
ffff800000104371:	b8 01 00 00 00       	mov    $0x1,%eax
ffff800000104376:	bf 00 00 00 00       	mov    $0x0,%edi
ffff80000010437b:	99                   	cltd
ffff80000010437c:	f7 ff                	idiv   %edi
ffff80000010437e:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff800000104381:	48 b8 78 ae ff ff ff 	movabs $0xffffffffffffae78,%rax
ffff800000104388:	ff ff ff 
ffff80000010438b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010438f:	48 89 c2             	mov    %rax,%rdx
ffff800000104392:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104397:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010439c:	49 89 df             	mov    %rbx,%r15
ffff80000010439f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043a4:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001043ab:	ff ff ff 
ffff8000001043ae:	48 01 d9             	add    %rbx,%rcx
ffff8000001043b1:	ff d1                	call   *%rcx
ffff8000001043b3:	48 b8 b0 ae ff ff ff 	movabs $0xffffffffffffaeb0,%rax
ffff8000001043ba:	ff ff ff 
ffff8000001043bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043c1:	48 89 c2             	mov    %rax,%rdx
ffff8000001043c4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043c9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043ce:	49 89 df             	mov    %rbx,%r15
ffff8000001043d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043d6:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001043dd:	ff ff ff 
ffff8000001043e0:	48 01 d9             	add    %rbx,%rcx
ffff8000001043e3:	ff d1                	call   *%rcx
ffff8000001043e5:	90                   	nop
ffff8000001043e6:	eb fd                	jmp    ffff8000001043e5 <Start_Kernel+0x2b4>

ffff8000001043e8 <Cstrlen>:
ffff8000001043e8:	f3 0f 1e fa          	endbr64
ffff8000001043ec:	55                   	push   %rbp
ffff8000001043ed:	48 89 e5             	mov    %rsp,%rbp
ffff8000001043f0:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001043f0 <Cstrlen+0x8>
ffff8000001043f7:	49 bb c0 82 00 00 00 	movabs $0x82c0,%r11
ffff8000001043fe:	00 00 00 
ffff800000104401:	4c 01 d8             	add    %r11,%rax
ffff800000104404:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104408:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010440c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104410:	eb 05                	jmp    ffff800000104417 <Cstrlen+0x2f>
ffff800000104412:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104417:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010441b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010441e:	84 c0                	test   %al,%al
ffff800000104420:	75 f0                	jne    ffff800000104412 <Cstrlen+0x2a>
ffff800000104422:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104426:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010442a:	5d                   	pop    %rbp
ffff80000010442b:	c3                   	ret

ffff80000010442c <putchar>:
ffff80000010442c:	f3 0f 1e fa          	endbr64
ffff800000104430:	55                   	push   %rbp
ffff800000104431:	48 89 e5             	mov    %rsp,%rbp
ffff800000104434:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104434 <putchar+0x8>
ffff80000010443b:	49 bb 7c 82 00 00 00 	movabs $0x827c,%r11
ffff800000104442:	00 00 00 
ffff800000104445:	4c 01 d8             	add    %r11,%rax
ffff800000104448:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010444c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff80000010444f:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104452:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104455:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104459:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010445d:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104460:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104463:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010446a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104471:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104478:	00 
ffff800000104479:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104480:	00 
ffff800000104481:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000104488:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff80000010448c:	48 63 d2             	movslq %edx,%rdx
ffff80000010448f:	48 89 d1             	mov    %rdx,%rcx
ffff800000104492:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000104496:	48 ba 50 cf ff ff ff 	movabs $0xffffffffffffcf50,%rdx
ffff80000010449d:	ff ff ff 
ffff8000001044a0:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001044a4:	48 01 c8             	add    %rcx,%rax
ffff8000001044a7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001044ab:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001044b2:	eb 7a                	jmp    ffff80000010452e <putchar+0x102>
ffff8000001044b4:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001044b7:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001044ba:	01 d0                	add    %edx,%eax
ffff8000001044bc:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001044c0:	48 63 d0             	movslq %eax,%rdx
ffff8000001044c3:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001044c6:	48 98                	cltq
ffff8000001044c8:	48 01 d0             	add    %rdx,%rax
ffff8000001044cb:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001044d2:	00 
ffff8000001044d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001044d7:	48 01 d0             	add    %rdx,%rax
ffff8000001044da:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001044de:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001044e5:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001044ec:	eb 31                	jmp    ffff80000010451f <putchar+0xf3>
ffff8000001044ee:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001044f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044f5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044f8:	0f b6 c0             	movzbl %al,%eax
ffff8000001044fb:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff8000001044fe:	85 c0                	test   %eax,%eax
ffff800000104500:	74 0b                	je     ffff80000010450d <putchar+0xe1>
ffff800000104502:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104506:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff800000104509:	89 10                	mov    %edx,(%rax)
ffff80000010450b:	eb 09                	jmp    ffff800000104516 <putchar+0xea>
ffff80000010450d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104511:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104514:	89 10                	mov    %edx,(%rax)
ffff800000104516:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010451b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff80000010451f:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104523:	7e c9                	jle    ffff8000001044ee <putchar+0xc2>
ffff800000104525:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010452a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff80000010452e:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104532:	7e 80                	jle    ffff8000001044b4 <putchar+0x88>
ffff800000104534:	90                   	nop
ffff800000104535:	90                   	nop
ffff800000104536:	5d                   	pop    %rbp
ffff800000104537:	c3                   	ret

ffff800000104538 <color_printk>:
ffff800000104538:	f3 0f 1e fa          	endbr64
ffff80000010453c:	55                   	push   %rbp
ffff80000010453d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104540:	53                   	push   %rbx
ffff800000104541:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104548:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104548 <color_printk+0x10>
ffff80000010454f:	49 bb 68 81 00 00 00 	movabs $0x8168,%r11
ffff800000104556:	00 00 00 
ffff800000104559:	4c 01 db             	add    %r11,%rbx
ffff80000010455c:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104562:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104568:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff80000010456f:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104576:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff80000010457d:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff800000104584:	84 c0                	test   %al,%al
ffff800000104586:	74 23                	je     ffff8000001045ab <color_printk+0x73>
ffff800000104588:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff80000010458f:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff800000104593:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff800000104597:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff80000010459b:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff80000010459f:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001045a3:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001045a7:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001045ab:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001045b2:	00 00 00 
ffff8000001045b5:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001045bc:	00 00 00 
ffff8000001045bf:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001045c6:	00 00 00 
ffff8000001045c9:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001045d0:	00 00 00 
ffff8000001045d3:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001045da:	00 00 00 
ffff8000001045dd:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001045e1:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001045e8:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001045ef:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001045f6:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff8000001045fd:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104604:	48 89 c6             	mov    %rax,%rsi
ffff800000104607:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010460e:	00 00 00 
ffff800000104611:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104615:	48 89 c7             	mov    %rax,%rdi
ffff800000104618:	48 b8 08 89 ff ff ff 	movabs $0xffffffffffff8908,%rax
ffff80000010461f:	ff ff ff 
ffff800000104622:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104626:	ff d0                	call   *%rax
ffff800000104628:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff80000010462e:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104635:	00 00 00 
ffff800000104638:	e9 81 04 00 00       	jmp    ffff800000104abe <color_printk+0x586>
ffff80000010463d:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104644:	7e 0c                	jle    ffff800000104652 <color_printk+0x11a>
ffff800000104646:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010464d:	e9 45 02 00 00       	jmp    ffff800000104897 <color_printk+0x35f>
ffff800000104652:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104658:	48 63 d0             	movslq %eax,%rdx
ffff80000010465b:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104662:	00 00 00 
ffff800000104665:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104669:	48 01 d0             	add    %rdx,%rax
ffff80000010466c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010466f:	3c 0a                	cmp    $0xa,%al
ffff800000104671:	75 36                	jne    ffff8000001046a9 <color_printk+0x171>
ffff800000104673:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010467a:	00 00 00 
ffff80000010467d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104681:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104684:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010468b:	00 00 00 
ffff80000010468e:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104692:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104699:	00 00 00 
ffff80000010469c:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001046a3:	00 
ffff8000001046a4:	e9 6a 03 00 00       	jmp    ffff800000104a13 <color_printk+0x4db>
ffff8000001046a9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001046af:	48 63 d0             	movslq %eax,%rdx
ffff8000001046b2:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046b9:	00 00 00 
ffff8000001046bc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046c0:	48 01 d0             	add    %rdx,%rax
ffff8000001046c3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046c6:	3c 08                	cmp    $0x8,%al
ffff8000001046c8:	0f 85 78 01 00 00    	jne    ffff800000104846 <color_printk+0x30e>
ffff8000001046ce:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046d5:	00 00 00 
ffff8000001046d8:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046dc:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001046df:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046e6:	00 00 00 
ffff8000001046e9:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001046ed:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046f4:	00 00 00 
ffff8000001046f7:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046fb:	85 c0                	test   %eax,%eax
ffff8000001046fd:	0f 89 b2 00 00 00    	jns    ffff8000001047b5 <color_printk+0x27d>
ffff800000104703:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010470a:	00 00 00 
ffff80000010470d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104710:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104717:	00 00 00 
ffff80000010471a:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010471e:	99                   	cltd
ffff80000010471f:	f7 fe                	idiv   %esi
ffff800000104721:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104724:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010472b:	00 00 00 
ffff80000010472e:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104732:	0f af c2             	imul   %edx,%eax
ffff800000104735:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010473c:	00 00 00 
ffff80000010473f:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104743:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010474a:	00 00 00 
ffff80000010474d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104751:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104754:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010475b:	00 00 00 
ffff80000010475e:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104762:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104769:	00 00 00 
ffff80000010476c:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104770:	85 c0                	test   %eax,%eax
ffff800000104772:	79 41                	jns    ffff8000001047b5 <color_printk+0x27d>
ffff800000104774:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010477b:	00 00 00 
ffff80000010477e:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104782:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104789:	00 00 00 
ffff80000010478c:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104790:	99                   	cltd
ffff800000104791:	f7 ff                	idiv   %edi
ffff800000104793:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104796:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010479d:	00 00 00 
ffff8000001047a0:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047a4:	0f af c2             	imul   %edx,%eax
ffff8000001047a7:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047ae:	00 00 00 
ffff8000001047b1:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001047b5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047bc:	00 00 00 
ffff8000001047bf:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001047c3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047ca:	00 00 00 
ffff8000001047cd:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047d1:	89 d1                	mov    %edx,%ecx
ffff8000001047d3:	0f af c8             	imul   %eax,%ecx
ffff8000001047d6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047dd:	00 00 00 
ffff8000001047e0:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001047e4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047eb:	00 00 00 
ffff8000001047ee:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047f2:	0f af d0             	imul   %eax,%edx
ffff8000001047f5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047fc:	00 00 00 
ffff8000001047ff:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104802:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104809:	00 00 00 
ffff80000010480c:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104811:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104818:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff80000010481e:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104822:	6a 20                	push   $0x20
ffff800000104824:	45 89 c1             	mov    %r8d,%r9d
ffff800000104827:	41 89 f8             	mov    %edi,%r8d
ffff80000010482a:	48 89 c7             	mov    %rax,%rdi
ffff80000010482d:	48 b8 7c 7d ff ff ff 	movabs $0xffffffffffff7d7c,%rax
ffff800000104834:	ff ff ff 
ffff800000104837:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010483b:	ff d0                	call   *%rax
ffff80000010483d:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104841:	e9 cd 01 00 00       	jmp    ffff800000104a13 <color_printk+0x4db>
ffff800000104846:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010484c:	48 63 d0             	movslq %eax,%rdx
ffff80000010484f:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104856:	00 00 00 
ffff800000104859:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010485d:	48 01 d0             	add    %rdx,%rax
ffff800000104860:	0f b6 00             	movzbl (%rax),%eax
ffff800000104863:	3c 09                	cmp    $0x9,%al
ffff800000104865:	0f 85 e3 00 00 00    	jne    ffff80000010494e <color_printk+0x416>
ffff80000010486b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104872:	00 00 00 
ffff800000104875:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104879:	83 c0 08             	add    $0x8,%eax
ffff80000010487c:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010487f:	89 c2                	mov    %eax,%edx
ffff800000104881:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104888:	00 00 00 
ffff80000010488b:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010488f:	29 c2                	sub    %eax,%edx
ffff800000104891:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff800000104897:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff80000010489e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a5:	00 00 00 
ffff8000001048a8:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048ac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048b3:	00 00 00 
ffff8000001048b6:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048ba:	89 d1                	mov    %edx,%ecx
ffff8000001048bc:	0f af c8             	imul   %eax,%ecx
ffff8000001048bf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c6:	00 00 00 
ffff8000001048c9:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048cd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048d4:	00 00 00 
ffff8000001048d7:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048db:	0f af d0             	imul   %eax,%edx
ffff8000001048de:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048e5:	00 00 00 
ffff8000001048e8:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001048eb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048f2:	00 00 00 
ffff8000001048f5:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001048fa:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104901:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104907:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010490b:	6a 20                	push   $0x20
ffff80000010490d:	45 89 c1             	mov    %r8d,%r9d
ffff800000104910:	41 89 f8             	mov    %edi,%r8d
ffff800000104913:	48 89 c7             	mov    %rax,%rdi
ffff800000104916:	48 b8 7c 7d ff ff ff 	movabs $0xffffffffffff7d7c,%rax
ffff80000010491d:	ff ff ff 
ffff800000104920:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104924:	ff d0                	call   *%rax
ffff800000104926:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010492a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104931:	00 00 00 
ffff800000104934:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104938:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010493b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104942:	00 00 00 
ffff800000104945:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104949:	e9 c5 00 00 00       	jmp    ffff800000104a13 <color_printk+0x4db>
ffff80000010494e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104954:	48 63 d0             	movslq %eax,%rdx
ffff800000104957:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010495e:	00 00 00 
ffff800000104961:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104965:	48 01 d0             	add    %rdx,%rax
ffff800000104968:	0f b6 00             	movzbl (%rax),%eax
ffff80000010496b:	0f b6 f8             	movzbl %al,%edi
ffff80000010496e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104975:	00 00 00 
ffff800000104978:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010497c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104983:	00 00 00 
ffff800000104986:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff80000010498a:	89 d1                	mov    %edx,%ecx
ffff80000010498c:	0f af c8             	imul   %eax,%ecx
ffff80000010498f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104996:	00 00 00 
ffff800000104999:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff80000010499d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049a4:	00 00 00 
ffff8000001049a7:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049ab:	0f af d0             	imul   %eax,%edx
ffff8000001049ae:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049b5:	00 00 00 
ffff8000001049b8:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049bb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049c2:	00 00 00 
ffff8000001049c5:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049ca:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff8000001049d1:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff8000001049d8:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049dc:	57                   	push   %rdi
ffff8000001049dd:	48 89 c7             	mov    %rax,%rdi
ffff8000001049e0:	48 b8 7c 7d ff ff ff 	movabs $0xffffffffffff7d7c,%rax
ffff8000001049e7:	ff ff ff 
ffff8000001049ea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049ee:	ff d0                	call   *%rax
ffff8000001049f0:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001049f4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049fb:	00 00 00 
ffff8000001049fe:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a02:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a05:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a0c:	00 00 00 
ffff800000104a0f:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a13:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a1a:	00 00 00 
ffff800000104a1d:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104a21:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a28:	00 00 00 
ffff800000104a2b:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a2e:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a35:	00 00 00 
ffff800000104a38:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a3c:	99                   	cltd
ffff800000104a3d:	f7 fe                	idiv   %esi
ffff800000104a3f:	39 c1                	cmp    %eax,%ecx
ffff800000104a41:	7c 31                	jl     ffff800000104a74 <color_printk+0x53c>
ffff800000104a43:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a4a:	00 00 00 
ffff800000104a4d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a51:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a54:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a5b:	00 00 00 
ffff800000104a5e:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104a62:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a69:	00 00 00 
ffff800000104a6c:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104a73:	00 
ffff800000104a74:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a7b:	00 00 00 
ffff800000104a7e:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104a82:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a89:	00 00 00 
ffff800000104a8c:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104a90:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a97:	00 00 00 
ffff800000104a9a:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104a9e:	99                   	cltd
ffff800000104a9f:	f7 ff                	idiv   %edi
ffff800000104aa1:	39 c1                	cmp    %eax,%ecx
ffff800000104aa3:	7c 12                	jl     ffff800000104ab7 <color_printk+0x57f>
ffff800000104aa5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aac:	00 00 00 
ffff800000104aaf:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104ab6:	00 
ffff800000104ab7:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104abe:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104ac4:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104aca:	0f 8c 6d fb ff ff    	jl     ffff80000010463d <color_printk+0x105>
ffff800000104ad0:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104ad7:	0f 85 60 fb ff ff    	jne    ffff80000010463d <color_printk+0x105>
ffff800000104add:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104ae3:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104ae7:	c9                   	leave
ffff800000104ae8:	c3                   	ret

ffff800000104ae9 <clear_screen>:
ffff800000104ae9:	f3 0f 1e fa          	endbr64
ffff800000104aed:	55                   	push   %rbp
ffff800000104aee:	48 89 e5             	mov    %rsp,%rbp
ffff800000104af1:	53                   	push   %rbx
ffff800000104af2:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104af6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104af6 <clear_screen+0xd>
ffff800000104afd:	49 bb ba 7b 00 00 00 	movabs $0x7bba,%r11
ffff800000104b04:	00 00 00 
ffff800000104b07:	4c 01 db             	add    %r11,%rbx
ffff800000104b0a:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104b0d:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104b10:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b17:	00 00 00 
ffff800000104b1a:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b1d:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b24:	00 00 00 
ffff800000104b27:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104b2b:	99                   	cltd
ffff800000104b2c:	f7 f9                	idiv   %ecx
ffff800000104b2e:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104b31:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b38:	00 00 00 
ffff800000104b3b:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b3f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b46:	00 00 00 
ffff800000104b49:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104b4d:	99                   	cltd
ffff800000104b4e:	f7 fe                	idiv   %esi
ffff800000104b50:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104b53:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104b5a:	e9 83 00 00 00       	jmp    ffff800000104be2 <clear_screen+0xf9>
ffff800000104b5f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104b66:	eb 6e                	jmp    ffff800000104bd6 <clear_screen+0xed>
ffff800000104b68:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b6f:	00 00 00 
ffff800000104b72:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b76:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104b7a:	89 c1                	mov    %eax,%ecx
ffff800000104b7c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b83:	00 00 00 
ffff800000104b86:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104b8a:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104b8e:	89 c2                	mov    %eax,%edx
ffff800000104b90:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b97:	00 00 00 
ffff800000104b9a:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104b9d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ba4:	00 00 00 
ffff800000104ba7:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104bac:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104bb0:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104bb3:	6a 20                	push   $0x20
ffff800000104bb5:	45 89 c1             	mov    %r8d,%r9d
ffff800000104bb8:	41 89 f8             	mov    %edi,%r8d
ffff800000104bbb:	48 89 c7             	mov    %rax,%rdi
ffff800000104bbe:	48 b8 7c 7d ff ff ff 	movabs $0xffffffffffff7d7c,%rax
ffff800000104bc5:	ff ff ff 
ffff800000104bc8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104bcc:	ff d0                	call   *%rax
ffff800000104bce:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104bd2:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104bd6:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104bd9:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104bdc:	7c 8a                	jl     ffff800000104b68 <clear_screen+0x7f>
ffff800000104bde:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104be2:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104be5:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104be8:	0f 8c 71 ff ff ff    	jl     ffff800000104b5f <clear_screen+0x76>
ffff800000104bee:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf5:	00 00 00 
ffff800000104bf8:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104bff:	00 
ffff800000104c00:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c07:	00 00 00 
ffff800000104c0a:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104c11:	00 
ffff800000104c12:	90                   	nop
ffff800000104c13:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104c17:	c9                   	leave
ffff800000104c18:	c3                   	ret

ffff800000104c19 <skip_atoi2>:
ffff800000104c19:	f3 0f 1e fa          	endbr64
ffff800000104c1d:	55                   	push   %rbp
ffff800000104c1e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c21:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104c21 <skip_atoi2+0x8>
ffff800000104c28:	49 bb 8f 7a 00 00 00 	movabs $0x7a8f,%r11
ffff800000104c2f:	00 00 00 
ffff800000104c32:	4c 01 d8             	add    %r11,%rax
ffff800000104c35:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104c39:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c40:	eb 39                	jmp    ffff800000104c7b <skip_atoi2+0x62>
ffff800000104c42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c46:	48 8b 00             	mov    (%rax),%rax
ffff800000104c49:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c4c:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104c4f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c53:	48 8b 00             	mov    (%rax),%rax
ffff800000104c56:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104c5a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c5e:	48 89 10             	mov    %rdx,(%rax)
ffff800000104c61:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c64:	89 d0                	mov    %edx,%eax
ffff800000104c66:	c1 e0 02             	shl    $0x2,%eax
ffff800000104c69:	01 d0                	add    %edx,%eax
ffff800000104c6b:	01 c0                	add    %eax,%eax
ffff800000104c6d:	89 c2                	mov    %eax,%edx
ffff800000104c6f:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104c73:	83 e8 30             	sub    $0x30,%eax
ffff800000104c76:	01 d0                	add    %edx,%eax
ffff800000104c78:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104c7b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c7f:	48 8b 00             	mov    (%rax),%rax
ffff800000104c82:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c85:	3c 2f                	cmp    $0x2f,%al
ffff800000104c87:	7e 0e                	jle    ffff800000104c97 <skip_atoi2+0x7e>
ffff800000104c89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c8d:	48 8b 00             	mov    (%rax),%rax
ffff800000104c90:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c93:	3c 39                	cmp    $0x39,%al
ffff800000104c95:	7e ab                	jle    ffff800000104c42 <skip_atoi2+0x29>
ffff800000104c97:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104c9a:	5d                   	pop    %rbp
ffff800000104c9b:	c3                   	ret

ffff800000104c9c <skip_atoi>:
ffff800000104c9c:	f3 0f 1e fa          	endbr64
ffff800000104ca0:	55                   	push   %rbp
ffff800000104ca1:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ca4:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104ca4 <skip_atoi+0x8>
ffff800000104cab:	49 bb 0c 7a 00 00 00 	movabs $0x7a0c,%r11
ffff800000104cb2:	00 00 00 
ffff800000104cb5:	4c 01 d8             	add    %r11,%rax
ffff800000104cb8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104cbc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104cc3:	eb 2c                	jmp    ffff800000104cf1 <skip_atoi+0x55>
ffff800000104cc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cc9:	48 8b 00             	mov    (%rax),%rax
ffff800000104ccc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cd0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cd4:	48 89 10             	mov    %rdx,(%rax)
ffff800000104cd7:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104cda:	89 d0                	mov    %edx,%eax
ffff800000104cdc:	c1 e0 02             	shl    $0x2,%eax
ffff800000104cdf:	01 d0                	add    %edx,%eax
ffff800000104ce1:	01 c0                	add    %eax,%eax
ffff800000104ce3:	89 c2                	mov    %eax,%edx
ffff800000104ce5:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104ce9:	83 e8 30             	sub    $0x30,%eax
ffff800000104cec:	01 d0                	add    %edx,%eax
ffff800000104cee:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104cf1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cf5:	48 8b 00             	mov    (%rax),%rax
ffff800000104cf8:	0f b6 00             	movzbl (%rax),%eax
ffff800000104cfb:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104cfe:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104d02:	7e 13                	jle    ffff800000104d17 <skip_atoi+0x7b>
ffff800000104d04:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d08:	48 8b 00             	mov    (%rax),%rax
ffff800000104d0b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d0e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d11:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104d15:	7e ae                	jle    ffff800000104cc5 <skip_atoi+0x29>
ffff800000104d17:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d1a:	5d                   	pop    %rbp
ffff800000104d1b:	c3                   	ret

ffff800000104d1c <number>:
ffff800000104d1c:	f3 0f 1e fa          	endbr64
ffff800000104d20:	55                   	push   %rbp
ffff800000104d21:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d24:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d24 <number+0x8>
ffff800000104d2b:	49 bb 8c 79 00 00 00 	movabs $0x798c,%r11
ffff800000104d32:	00 00 00 
ffff800000104d35:	4c 01 d8             	add    %r11,%rax
ffff800000104d38:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104d3c:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104d40:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104d43:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104d46:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104d4a:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104d4e:	48 ba d8 ae ff ff ff 	movabs $0xffffffffffffaed8,%rdx
ffff800000104d55:	ff ff ff 
ffff800000104d58:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104d5c:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104d60:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104d67:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104d6a:	83 e2 40             	and    $0x40,%edx
ffff800000104d6d:	85 d2                	test   %edx,%edx
ffff800000104d6f:	74 12                	je     ffff800000104d83 <number+0x67>
ffff800000104d71:	48 ba 00 af ff ff ff 	movabs $0xffffffffffffaf00,%rdx
ffff800000104d78:	ff ff ff 
ffff800000104d7b:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104d7f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104d83:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d86:	83 e0 10             	and    $0x10,%eax
ffff800000104d89:	85 c0                	test   %eax,%eax
ffff800000104d8b:	74 04                	je     ffff800000104d91 <number+0x75>
ffff800000104d8d:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104d91:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104d95:	7e 06                	jle    ffff800000104d9d <number+0x81>
ffff800000104d97:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104d9b:	7e 0a                	jle    ffff800000104da7 <number+0x8b>
ffff800000104d9d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104da2:	e9 0f 02 00 00       	jmp    ffff800000104fb6 <number+0x29a>
ffff800000104da7:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104daa:	83 e0 01             	and    $0x1,%eax
ffff800000104dad:	85 c0                	test   %eax,%eax
ffff800000104daf:	74 07                	je     ffff800000104db8 <number+0x9c>
ffff800000104db1:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104db6:	eb 05                	jmp    ffff800000104dbd <number+0xa1>
ffff800000104db8:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104dbd:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104dc0:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104dc4:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104dc7:	83 e0 02             	and    $0x2,%eax
ffff800000104dca:	85 c0                	test   %eax,%eax
ffff800000104dcc:	74 11                	je     ffff800000104ddf <number+0xc3>
ffff800000104dce:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104dd3:	79 0a                	jns    ffff800000104ddf <number+0xc3>
ffff800000104dd5:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104dd9:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104ddd:	eb 1d                	jmp    ffff800000104dfc <number+0xe0>
ffff800000104ddf:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104de2:	83 e0 04             	and    $0x4,%eax
ffff800000104de5:	85 c0                	test   %eax,%eax
ffff800000104de7:	75 0b                	jne    ffff800000104df4 <number+0xd8>
ffff800000104de9:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104dec:	c1 e0 02             	shl    $0x2,%eax
ffff800000104def:	83 e0 20             	and    $0x20,%eax
ffff800000104df2:	eb 05                	jmp    ffff800000104df9 <number+0xdd>
ffff800000104df4:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104df9:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104dfc:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104e00:	74 04                	je     ffff800000104e06 <number+0xea>
ffff800000104e02:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e06:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e09:	83 e0 20             	and    $0x20,%eax
ffff800000104e0c:	85 c0                	test   %eax,%eax
ffff800000104e0e:	74 16                	je     ffff800000104e26 <number+0x10a>
ffff800000104e10:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104e14:	75 06                	jne    ffff800000104e1c <number+0x100>
ffff800000104e16:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104e1a:	eb 0a                	jmp    ffff800000104e26 <number+0x10a>
ffff800000104e1c:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104e20:	75 04                	jne    ffff800000104e26 <number+0x10a>
ffff800000104e22:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e26:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e2b:	75 4b                	jne    ffff800000104e78 <number+0x15c>
ffff800000104e2d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e30:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e33:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e36:	48 98                	cltq
ffff800000104e38:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104e3d:	eb 40                	jmp    ffff800000104e7f <number+0x163>
ffff800000104e3f:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104e42:	48 63 c8             	movslq %eax,%rcx
ffff800000104e45:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e49:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104e4e:	48 f7 f1             	div    %rcx
ffff800000104e51:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e55:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104e58:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104e5b:	48 63 d0             	movslq %eax,%rdx
ffff800000104e5e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104e62:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104e66:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e69:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e6c:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e6f:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104e72:	48 98                	cltq
ffff800000104e74:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104e78:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e7d:	75 c0                	jne    ffff800000104e3f <number+0x123>
ffff800000104e7f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e82:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104e85:	7e 06                	jle    ffff800000104e8d <number+0x171>
ffff800000104e87:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e8a:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104e8d:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104e90:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104e93:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e96:	83 e0 11             	and    $0x11,%eax
ffff800000104e99:	85 c0                	test   %eax,%eax
ffff800000104e9b:	75 1e                	jne    ffff800000104ebb <number+0x19f>
ffff800000104e9d:	eb 0f                	jmp    ffff800000104eae <number+0x192>
ffff800000104e9f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ea3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ea7:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104eab:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104eae:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104eb1:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104eb4:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104eb7:	85 c0                	test   %eax,%eax
ffff800000104eb9:	7f e4                	jg     ffff800000104e9f <number+0x183>
ffff800000104ebb:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104ebf:	74 12                	je     ffff800000104ed3 <number+0x1b7>
ffff800000104ec1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ec5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ec9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ecd:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104ed1:	88 10                	mov    %dl,(%rax)
ffff800000104ed3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ed6:	83 e0 20             	and    $0x20,%eax
ffff800000104ed9:	85 c0                	test   %eax,%eax
ffff800000104edb:	74 45                	je     ffff800000104f22 <number+0x206>
ffff800000104edd:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104ee1:	75 11                	jne    ffff800000104ef4 <number+0x1d8>
ffff800000104ee3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ee7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104eeb:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104eef:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104ef2:	eb 2e                	jmp    ffff800000104f22 <number+0x206>
ffff800000104ef4:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104ef8:	75 28                	jne    ffff800000104f22 <number+0x206>
ffff800000104efa:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104efe:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f02:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f06:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f09:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f0d:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104f11:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f15:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f19:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f1d:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f20:	88 10                	mov    %dl,(%rax)
ffff800000104f22:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f25:	83 e0 10             	and    $0x10,%eax
ffff800000104f28:	85 c0                	test   %eax,%eax
ffff800000104f2a:	75 32                	jne    ffff800000104f5e <number+0x242>
ffff800000104f2c:	eb 12                	jmp    ffff800000104f40 <number+0x224>
ffff800000104f2e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f32:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f36:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f3a:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104f3e:	88 10                	mov    %dl,(%rax)
ffff800000104f40:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f43:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f46:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f49:	85 c0                	test   %eax,%eax
ffff800000104f4b:	7f e1                	jg     ffff800000104f2e <number+0x212>
ffff800000104f4d:	eb 0f                	jmp    ffff800000104f5e <number+0x242>
ffff800000104f4f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f53:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f57:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f5b:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f5e:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f61:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f64:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104f67:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104f6a:	7c e3                	jl     ffff800000104f4f <number+0x233>
ffff800000104f6c:	eb 19                	jmp    ffff800000104f87 <number+0x26b>
ffff800000104f6e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f72:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f76:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f7a:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104f7d:	48 63 d2             	movslq %edx,%rdx
ffff800000104f80:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104f85:	88 10                	mov    %dl,(%rax)
ffff800000104f87:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f8a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f8d:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f90:	85 c0                	test   %eax,%eax
ffff800000104f92:	7f da                	jg     ffff800000104f6e <number+0x252>
ffff800000104f94:	eb 0f                	jmp    ffff800000104fa5 <number+0x289>
ffff800000104f96:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f9a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f9e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fa2:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104fa5:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104fa8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fab:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104fae:	85 c0                	test   %eax,%eax
ffff800000104fb0:	7f e4                	jg     ffff800000104f96 <number+0x27a>
ffff800000104fb2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fb6:	5d                   	pop    %rbp
ffff800000104fb7:	c3                   	ret

ffff800000104fb8 <vsprintf>:
ffff800000104fb8:	f3 0f 1e fa          	endbr64
ffff800000104fbc:	55                   	push   %rbp
ffff800000104fbd:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fc0:	53                   	push   %rbx
ffff800000104fc1:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104fc5:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104fc5 <vsprintf+0xd>
ffff800000104fcc:	49 bb eb 76 00 00 00 	movabs $0x76eb,%r11
ffff800000104fd3:	00 00 00 
ffff800000104fd6:	4c 01 db             	add    %r11,%rbx
ffff800000104fd9:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104fdd:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104fe1:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000104fe5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fe9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104fed:	e9 f8 08 00 00       	jmp    ffff8000001058ea <vsprintf+0x932>
ffff800000104ff2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ff6:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ff9:	3c 25                	cmp    $0x25,%al
ffff800000104ffb:	74 1a                	je     ffff800000105017 <vsprintf+0x5f>
ffff800000104ffd:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105001:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105005:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105009:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010500d:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105010:	88 10                	mov    %dl,(%rax)
ffff800000105012:	e9 c7 08 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff800000105017:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff80000010501e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105022:	48 83 c0 01          	add    $0x1,%rax
ffff800000105026:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010502a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010502e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105031:	0f be c0             	movsbl %al,%eax
ffff800000105034:	83 e8 20             	sub    $0x20,%eax
ffff800000105037:	83 f8 10             	cmp    $0x10,%eax
ffff80000010503a:	77 40                	ja     ffff80000010507c <vsprintf+0xc4>
ffff80000010503c:	89 c0                	mov    %eax,%eax
ffff80000010503e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105045:	00 
ffff800000105046:	48 8d 05 8b 25 00 00 	lea    0x258b(%rip),%rax        # ffff8000001075d8 <.LC1+0x28>
ffff80000010504d:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105051:	48 8d 15 80 25 00 00 	lea    0x2580(%rip),%rdx        # ffff8000001075d8 <.LC1+0x28>
ffff800000105058:	48 01 d0             	add    %rdx,%rax
ffff80000010505b:	3e ff e0             	notrack jmp *%rax
ffff80000010505e:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105062:	eb ba                	jmp    ffff80000010501e <vsprintf+0x66>
ffff800000105064:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000105068:	eb b4                	jmp    ffff80000010501e <vsprintf+0x66>
ffff80000010506a:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff80000010506e:	eb ae                	jmp    ffff80000010501e <vsprintf+0x66>
ffff800000105070:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000105074:	eb a8                	jmp    ffff80000010501e <vsprintf+0x66>
ffff800000105076:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010507a:	eb a2                	jmp    ffff80000010501e <vsprintf+0x66>
ffff80000010507c:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000105083:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105087:	0f b6 00             	movzbl (%rax),%eax
ffff80000010508a:	3c 2f                	cmp    $0x2f,%al
ffff80000010508c:	7e 27                	jle    ffff8000001050b5 <vsprintf+0xfd>
ffff80000010508e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105092:	0f b6 00             	movzbl (%rax),%eax
ffff800000105095:	3c 39                	cmp    $0x39,%al
ffff800000105097:	7f 1c                	jg     ffff8000001050b5 <vsprintf+0xfd>
ffff800000105099:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010509d:	48 89 c7             	mov    %rax,%rdi
ffff8000001050a0:	48 b8 ec 85 ff ff ff 	movabs $0xffffffffffff85ec,%rax
ffff8000001050a7:	ff ff ff 
ffff8000001050aa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050ae:	ff d0                	call   *%rax
ffff8000001050b0:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001050b3:	eb 6c                	jmp    ffff800000105121 <vsprintf+0x169>
ffff8000001050b5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050b9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050bc:	3c 2a                	cmp    $0x2a,%al
ffff8000001050be:	75 61                	jne    ffff800000105121 <vsprintf+0x169>
ffff8000001050c0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050c4:	48 83 c0 01          	add    $0x1,%rax
ffff8000001050c8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001050cc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050d0:	8b 00                	mov    (%rax),%eax
ffff8000001050d2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050d5:	77 24                	ja     ffff8000001050fb <vsprintf+0x143>
ffff8000001050d7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050db:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001050df:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050e3:	8b 00                	mov    (%rax),%eax
ffff8000001050e5:	89 c0                	mov    %eax,%eax
ffff8000001050e7:	48 01 d0             	add    %rdx,%rax
ffff8000001050ea:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050ee:	8b 12                	mov    (%rdx),%edx
ffff8000001050f0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001050f3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050f7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001050f9:	eb 14                	jmp    ffff80000010510f <vsprintf+0x157>
ffff8000001050fb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050ff:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105103:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105107:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010510b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010510f:	8b 00                	mov    (%rax),%eax
ffff800000105111:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105114:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105118:	79 07                	jns    ffff800000105121 <vsprintf+0x169>
ffff80000010511a:	f7 5d d8             	negl   -0x28(%rbp)
ffff80000010511d:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105121:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000105128:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010512c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010512f:	3c 2e                	cmp    $0x2e,%al
ffff800000105131:	0f 85 aa 00 00 00    	jne    ffff8000001051e1 <vsprintf+0x229>
ffff800000105137:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010513b:	48 83 c0 01          	add    $0x1,%rax
ffff80000010513f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105143:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105147:	0f b6 00             	movzbl (%rax),%eax
ffff80000010514a:	3c 2f                	cmp    $0x2f,%al
ffff80000010514c:	7e 27                	jle    ffff800000105175 <vsprintf+0x1bd>
ffff80000010514e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105152:	0f b6 00             	movzbl (%rax),%eax
ffff800000105155:	3c 39                	cmp    $0x39,%al
ffff800000105157:	7f 1c                	jg     ffff800000105175 <vsprintf+0x1bd>
ffff800000105159:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010515d:	48 89 c7             	mov    %rax,%rdi
ffff800000105160:	48 b8 ec 85 ff ff ff 	movabs $0xffffffffffff85ec,%rax
ffff800000105167:	ff ff ff 
ffff80000010516a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010516e:	ff d0                	call   *%rax
ffff800000105170:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105173:	eb 5f                	jmp    ffff8000001051d4 <vsprintf+0x21c>
ffff800000105175:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105179:	0f b6 00             	movzbl (%rax),%eax
ffff80000010517c:	3c 2a                	cmp    $0x2a,%al
ffff80000010517e:	75 54                	jne    ffff8000001051d4 <vsprintf+0x21c>
ffff800000105180:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105184:	48 83 c0 01          	add    $0x1,%rax
ffff800000105188:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010518c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105190:	8b 00                	mov    (%rax),%eax
ffff800000105192:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105195:	77 24                	ja     ffff8000001051bb <vsprintf+0x203>
ffff800000105197:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010519b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010519f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051a3:	8b 00                	mov    (%rax),%eax
ffff8000001051a5:	89 c0                	mov    %eax,%eax
ffff8000001051a7:	48 01 d0             	add    %rdx,%rax
ffff8000001051aa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051ae:	8b 12                	mov    (%rdx),%edx
ffff8000001051b0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051b3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051b7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051b9:	eb 14                	jmp    ffff8000001051cf <vsprintf+0x217>
ffff8000001051bb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051bf:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051c3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051c7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051cb:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051cf:	8b 00                	mov    (%rax),%eax
ffff8000001051d1:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001051d4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001051d8:	79 07                	jns    ffff8000001051e1 <vsprintf+0x229>
ffff8000001051da:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001051e1:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001051e8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051ec:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051ef:	3c 68                	cmp    $0x68,%al
ffff8000001051f1:	74 21                	je     ffff800000105214 <vsprintf+0x25c>
ffff8000001051f3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051f7:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051fa:	3c 6c                	cmp    $0x6c,%al
ffff8000001051fc:	74 16                	je     ffff800000105214 <vsprintf+0x25c>
ffff8000001051fe:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105202:	0f b6 00             	movzbl (%rax),%eax
ffff800000105205:	3c 4c                	cmp    $0x4c,%al
ffff800000105207:	74 0b                	je     ffff800000105214 <vsprintf+0x25c>
ffff800000105209:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010520d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105210:	3c 7a                	cmp    $0x7a,%al
ffff800000105212:	75 19                	jne    ffff80000010522d <vsprintf+0x275>
ffff800000105214:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105218:	0f b6 00             	movzbl (%rax),%eax
ffff80000010521b:	0f be c0             	movsbl %al,%eax
ffff80000010521e:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105221:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105225:	48 83 c0 01          	add    $0x1,%rax
ffff800000105229:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010522d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105231:	0f b6 00             	movzbl (%rax),%eax
ffff800000105234:	0f be c0             	movsbl %al,%eax
ffff800000105237:	83 e8 25             	sub    $0x25,%eax
ffff80000010523a:	83 f8 53             	cmp    $0x53,%eax
ffff80000010523d:	0f 87 5d 06 00 00    	ja     ffff8000001058a0 <vsprintf+0x8e8>
ffff800000105243:	89 c0                	mov    %eax,%eax
ffff800000105245:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010524c:	00 
ffff80000010524d:	48 8d 05 0c 24 00 00 	lea    0x240c(%rip),%rax        # ffff800000107660 <.LC1+0xb0>
ffff800000105254:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105258:	48 8d 15 01 24 00 00 	lea    0x2401(%rip),%rdx        # ffff800000107660 <.LC1+0xb0>
ffff80000010525f:	48 01 d0             	add    %rdx,%rax
ffff800000105262:	3e ff e0             	notrack jmp *%rax
ffff800000105265:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105268:	83 e0 10             	and    $0x10,%eax
ffff80000010526b:	85 c0                	test   %eax,%eax
ffff80000010526d:	75 1b                	jne    ffff80000010528a <vsprintf+0x2d2>
ffff80000010526f:	eb 0f                	jmp    ffff800000105280 <vsprintf+0x2c8>
ffff800000105271:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105275:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105279:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010527d:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105280:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105284:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105288:	7f e7                	jg     ffff800000105271 <vsprintf+0x2b9>
ffff80000010528a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010528e:	8b 00                	mov    (%rax),%eax
ffff800000105290:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105293:	77 24                	ja     ffff8000001052b9 <vsprintf+0x301>
ffff800000105295:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105299:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010529d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a1:	8b 00                	mov    (%rax),%eax
ffff8000001052a3:	89 c0                	mov    %eax,%eax
ffff8000001052a5:	48 01 d0             	add    %rdx,%rax
ffff8000001052a8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052ac:	8b 12                	mov    (%rdx),%edx
ffff8000001052ae:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052b1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052b5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052b7:	eb 14                	jmp    ffff8000001052cd <vsprintf+0x315>
ffff8000001052b9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052bd:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052c1:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052c5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052c9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052cd:	8b 08                	mov    (%rax),%ecx
ffff8000001052cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052d3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052d7:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052db:	89 ca                	mov    %ecx,%edx
ffff8000001052dd:	88 10                	mov    %dl,(%rax)
ffff8000001052df:	eb 0f                	jmp    ffff8000001052f0 <vsprintf+0x338>
ffff8000001052e1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052e5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052e9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052ed:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052f0:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001052f4:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001052f8:	7f e7                	jg     ffff8000001052e1 <vsprintf+0x329>
ffff8000001052fa:	e9 df 05 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff8000001052ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105303:	8b 00                	mov    (%rax),%eax
ffff800000105305:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105308:	77 24                	ja     ffff80000010532e <vsprintf+0x376>
ffff80000010530a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010530e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105312:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105316:	8b 00                	mov    (%rax),%eax
ffff800000105318:	89 c0                	mov    %eax,%eax
ffff80000010531a:	48 01 d0             	add    %rdx,%rax
ffff80000010531d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105321:	8b 12                	mov    (%rdx),%edx
ffff800000105323:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105326:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010532a:	89 0a                	mov    %ecx,(%rdx)
ffff80000010532c:	eb 14                	jmp    ffff800000105342 <vsprintf+0x38a>
ffff80000010532e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105332:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105336:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010533a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010533e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105342:	48 8b 00             	mov    (%rax),%rax
ffff800000105345:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105349:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010534e:	75 08                	jne    ffff800000105358 <vsprintf+0x3a0>
ffff800000105350:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105357:	00 
ffff800000105358:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010535c:	48 89 c7             	mov    %rax,%rdi
ffff80000010535f:	48 b8 38 7d ff ff ff 	movabs $0xffffffffffff7d38,%rax
ffff800000105366:	ff ff ff 
ffff800000105369:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010536d:	ff d0                	call   *%rax
ffff80000010536f:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105372:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105376:	79 08                	jns    ffff800000105380 <vsprintf+0x3c8>
ffff800000105378:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010537b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010537e:	eb 0e                	jmp    ffff80000010538e <vsprintf+0x3d6>
ffff800000105380:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105383:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000105386:	7e 06                	jle    ffff80000010538e <vsprintf+0x3d6>
ffff800000105388:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010538b:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010538e:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105391:	83 e0 10             	and    $0x10,%eax
ffff800000105394:	85 c0                	test   %eax,%eax
ffff800000105396:	75 1f                	jne    ffff8000001053b7 <vsprintf+0x3ff>
ffff800000105398:	eb 0f                	jmp    ffff8000001053a9 <vsprintf+0x3f1>
ffff80000010539a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010539e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053a2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053a6:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053a9:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001053ac:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001053af:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001053b2:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001053b5:	7c e3                	jl     ffff80000010539a <vsprintf+0x3e2>
ffff8000001053b7:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001053be:	eb 21                	jmp    ffff8000001053e1 <vsprintf+0x429>
ffff8000001053c0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001053c4:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001053c8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001053cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053d0:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001053d4:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001053d8:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001053db:	88 10                	mov    %dl,(%rax)
ffff8000001053dd:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff8000001053e1:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001053e4:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001053e7:	7c d7                	jl     ffff8000001053c0 <vsprintf+0x408>
ffff8000001053e9:	eb 0f                	jmp    ffff8000001053fa <vsprintf+0x442>
ffff8000001053eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053ef:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053f3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053f7:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053fa:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001053fd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105400:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105403:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105406:	7c e3                	jl     ffff8000001053eb <vsprintf+0x433>
ffff800000105408:	e9 d1 04 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff80000010540d:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105411:	0f 85 82 00 00 00    	jne    ffff800000105499 <vsprintf+0x4e1>
ffff800000105417:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010541b:	8b 00                	mov    (%rax),%eax
ffff80000010541d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105420:	77 24                	ja     ffff800000105446 <vsprintf+0x48e>
ffff800000105422:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105426:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010542a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010542e:	8b 00                	mov    (%rax),%eax
ffff800000105430:	89 c0                	mov    %eax,%eax
ffff800000105432:	48 01 d0             	add    %rdx,%rax
ffff800000105435:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105439:	8b 12                	mov    (%rdx),%edx
ffff80000010543b:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010543e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105442:	89 0a                	mov    %ecx,(%rdx)
ffff800000105444:	eb 14                	jmp    ffff80000010545a <vsprintf+0x4a2>
ffff800000105446:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010544a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010544e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105452:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105456:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010545a:	48 8b 00             	mov    (%rax),%rax
ffff80000010545d:	48 89 c7             	mov    %rax,%rdi
ffff800000105460:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105463:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105466:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105469:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010546d:	41 89 f1             	mov    %esi,%r9d
ffff800000105470:	41 89 c8             	mov    %ecx,%r8d
ffff800000105473:	89 d1                	mov    %edx,%ecx
ffff800000105475:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010547a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010547d:	48 89 c7             	mov    %rax,%rdi
ffff800000105480:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff800000105487:	ff ff ff 
ffff80000010548a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010548e:	ff d0                	call   *%rax
ffff800000105490:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105494:	e9 45 04 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff800000105499:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010549d:	8b 00                	mov    (%rax),%eax
ffff80000010549f:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054a2:	77 24                	ja     ffff8000001054c8 <vsprintf+0x510>
ffff8000001054a4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054a8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054ac:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054b0:	8b 00                	mov    (%rax),%eax
ffff8000001054b2:	89 c0                	mov    %eax,%eax
ffff8000001054b4:	48 01 d0             	add    %rdx,%rax
ffff8000001054b7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054bb:	8b 12                	mov    (%rdx),%edx
ffff8000001054bd:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054c0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054c4:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054c6:	eb 14                	jmp    ffff8000001054dc <vsprintf+0x524>
ffff8000001054c8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054cc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054d0:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001054d4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054d8:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054dc:	8b 00                	mov    (%rax),%eax
ffff8000001054de:	89 c7                	mov    %eax,%edi
ffff8000001054e0:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001054e3:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001054e6:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001054e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054ed:	41 89 f1             	mov    %esi,%r9d
ffff8000001054f0:	41 89 c8             	mov    %ecx,%r8d
ffff8000001054f3:	89 d1                	mov    %edx,%ecx
ffff8000001054f5:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001054fa:	48 89 fe             	mov    %rdi,%rsi
ffff8000001054fd:	48 89 c7             	mov    %rax,%rdi
ffff800000105500:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff800000105507:	ff ff ff 
ffff80000010550a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010550e:	ff d0                	call   *%rax
ffff800000105510:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105514:	e9 c5 03 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff800000105519:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010551d:	75 0b                	jne    ffff80000010552a <vsprintf+0x572>
ffff80000010551f:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105526:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010552a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010552e:	8b 00                	mov    (%rax),%eax
ffff800000105530:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105533:	77 24                	ja     ffff800000105559 <vsprintf+0x5a1>
ffff800000105535:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105539:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010553d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105541:	8b 00                	mov    (%rax),%eax
ffff800000105543:	89 c0                	mov    %eax,%eax
ffff800000105545:	48 01 d0             	add    %rdx,%rax
ffff800000105548:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010554c:	8b 12                	mov    (%rdx),%edx
ffff80000010554e:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105551:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105555:	89 0a                	mov    %ecx,(%rdx)
ffff800000105557:	eb 14                	jmp    ffff80000010556d <vsprintf+0x5b5>
ffff800000105559:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010555d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105561:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105565:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105569:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010556d:	48 8b 00             	mov    (%rax),%rax
ffff800000105570:	48 89 c7             	mov    %rax,%rdi
ffff800000105573:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105576:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105579:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010557c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105580:	41 89 f1             	mov    %esi,%r9d
ffff800000105583:	41 89 c8             	mov    %ecx,%r8d
ffff800000105586:	89 d1                	mov    %edx,%ecx
ffff800000105588:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010558d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105590:	48 89 c7             	mov    %rax,%rdi
ffff800000105593:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff80000010559a:	ff ff ff 
ffff80000010559d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055a1:	ff d0                	call   *%rax
ffff8000001055a3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055a7:	e9 32 03 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff8000001055ac:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001055b0:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055b4:	0f 85 82 00 00 00    	jne    ffff80000010563c <vsprintf+0x684>
ffff8000001055ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055be:	8b 00                	mov    (%rax),%eax
ffff8000001055c0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055c3:	77 24                	ja     ffff8000001055e9 <vsprintf+0x631>
ffff8000001055c5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055c9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055cd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d1:	8b 00                	mov    (%rax),%eax
ffff8000001055d3:	89 c0                	mov    %eax,%eax
ffff8000001055d5:	48 01 d0             	add    %rdx,%rax
ffff8000001055d8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055dc:	8b 12                	mov    (%rdx),%edx
ffff8000001055de:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055e1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055e5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055e7:	eb 14                	jmp    ffff8000001055fd <vsprintf+0x645>
ffff8000001055e9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ed:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055f1:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055f5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055f9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055fd:	48 8b 00             	mov    (%rax),%rax
ffff800000105600:	48 89 c7             	mov    %rax,%rdi
ffff800000105603:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105606:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105609:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010560c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105610:	41 89 f1             	mov    %esi,%r9d
ffff800000105613:	41 89 c8             	mov    %ecx,%r8d
ffff800000105616:	89 d1                	mov    %edx,%ecx
ffff800000105618:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010561d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105620:	48 89 c7             	mov    %rax,%rdi
ffff800000105623:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff80000010562a:	ff ff ff 
ffff80000010562d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105631:	ff d0                	call   *%rax
ffff800000105633:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105637:	e9 a2 02 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff80000010563c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105640:	8b 00                	mov    (%rax),%eax
ffff800000105642:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105645:	77 24                	ja     ffff80000010566b <vsprintf+0x6b3>
ffff800000105647:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010564b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010564f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105653:	8b 00                	mov    (%rax),%eax
ffff800000105655:	89 c0                	mov    %eax,%eax
ffff800000105657:	48 01 d0             	add    %rdx,%rax
ffff80000010565a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010565e:	8b 12                	mov    (%rdx),%edx
ffff800000105660:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105663:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105667:	89 0a                	mov    %ecx,(%rdx)
ffff800000105669:	eb 14                	jmp    ffff80000010567f <vsprintf+0x6c7>
ffff80000010566b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010566f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105673:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105677:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010567b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010567f:	8b 00                	mov    (%rax),%eax
ffff800000105681:	89 c7                	mov    %eax,%edi
ffff800000105683:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105686:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105689:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010568c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105690:	41 89 f1             	mov    %esi,%r9d
ffff800000105693:	41 89 c8             	mov    %ecx,%r8d
ffff800000105696:	89 d1                	mov    %edx,%ecx
ffff800000105698:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010569d:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056a0:	48 89 c7             	mov    %rax,%rdi
ffff8000001056a3:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff8000001056aa:	ff ff ff 
ffff8000001056ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056b1:	ff d0                	call   *%rax
ffff8000001056b3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056b7:	e9 22 02 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff8000001056bc:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001056c0:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001056c4:	0f 85 82 00 00 00    	jne    ffff80000010574c <vsprintf+0x794>
ffff8000001056ca:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056ce:	8b 00                	mov    (%rax),%eax
ffff8000001056d0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056d3:	77 24                	ja     ffff8000001056f9 <vsprintf+0x741>
ffff8000001056d5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056d9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001056dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056e1:	8b 00                	mov    (%rax),%eax
ffff8000001056e3:	89 c0                	mov    %eax,%eax
ffff8000001056e5:	48 01 d0             	add    %rdx,%rax
ffff8000001056e8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056ec:	8b 12                	mov    (%rdx),%edx
ffff8000001056ee:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001056f1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056f5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056f7:	eb 14                	jmp    ffff80000010570d <vsprintf+0x755>
ffff8000001056f9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056fd:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105701:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105705:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105709:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010570d:	48 8b 00             	mov    (%rax),%rax
ffff800000105710:	48 89 c7             	mov    %rax,%rdi
ffff800000105713:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105716:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105719:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010571c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105720:	41 89 f1             	mov    %esi,%r9d
ffff800000105723:	41 89 c8             	mov    %ecx,%r8d
ffff800000105726:	89 d1                	mov    %edx,%ecx
ffff800000105728:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010572d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105730:	48 89 c7             	mov    %rax,%rdi
ffff800000105733:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff80000010573a:	ff ff ff 
ffff80000010573d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105741:	ff d0                	call   *%rax
ffff800000105743:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105747:	e9 92 01 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff80000010574c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105750:	8b 00                	mov    (%rax),%eax
ffff800000105752:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105755:	77 24                	ja     ffff80000010577b <vsprintf+0x7c3>
ffff800000105757:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010575b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010575f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105763:	8b 00                	mov    (%rax),%eax
ffff800000105765:	89 c0                	mov    %eax,%eax
ffff800000105767:	48 01 d0             	add    %rdx,%rax
ffff80000010576a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010576e:	8b 12                	mov    (%rdx),%edx
ffff800000105770:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105773:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105777:	89 0a                	mov    %ecx,(%rdx)
ffff800000105779:	eb 14                	jmp    ffff80000010578f <vsprintf+0x7d7>
ffff80000010577b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010577f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105783:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105787:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010578b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010578f:	8b 00                	mov    (%rax),%eax
ffff800000105791:	89 c7                	mov    %eax,%edi
ffff800000105793:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105796:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105799:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010579c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057a0:	41 89 f1             	mov    %esi,%r9d
ffff8000001057a3:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057a6:	89 d1                	mov    %edx,%ecx
ffff8000001057a8:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057ad:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001057b3:	48 b8 6c 86 ff ff ff 	movabs $0xffffffffffff866c,%rax
ffff8000001057ba:	ff ff ff 
ffff8000001057bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057c1:	ff d0                	call   *%rax
ffff8000001057c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057c7:	e9 12 01 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff8000001057cc:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001057d0:	75 61                	jne    ffff800000105833 <vsprintf+0x87b>
ffff8000001057d2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057d6:	8b 00                	mov    (%rax),%eax
ffff8000001057d8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057db:	77 24                	ja     ffff800000105801 <vsprintf+0x849>
ffff8000001057dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057e5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e9:	8b 00                	mov    (%rax),%eax
ffff8000001057eb:	89 c0                	mov    %eax,%eax
ffff8000001057ed:	48 01 d0             	add    %rdx,%rax
ffff8000001057f0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057f4:	8b 12                	mov    (%rdx),%edx
ffff8000001057f6:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057fd:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057ff:	eb 14                	jmp    ffff800000105815 <vsprintf+0x85d>
ffff800000105801:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105805:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105809:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010580d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105811:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105815:	48 8b 00             	mov    (%rax),%rax
ffff800000105818:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010581c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105820:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105824:	48 89 c2             	mov    %rax,%rdx
ffff800000105827:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010582b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010582e:	e9 ab 00 00 00       	jmp    ffff8000001058de <vsprintf+0x926>
ffff800000105833:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105837:	8b 00                	mov    (%rax),%eax
ffff800000105839:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010583c:	77 24                	ja     ffff800000105862 <vsprintf+0x8aa>
ffff80000010583e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105842:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105846:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010584a:	8b 00                	mov    (%rax),%eax
ffff80000010584c:	89 c0                	mov    %eax,%eax
ffff80000010584e:	48 01 d0             	add    %rdx,%rax
ffff800000105851:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105855:	8b 12                	mov    (%rdx),%edx
ffff800000105857:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010585a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010585e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105860:	eb 14                	jmp    ffff800000105876 <vsprintf+0x8be>
ffff800000105862:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105866:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010586a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010586e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105872:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105876:	48 8b 00             	mov    (%rax),%rax
ffff800000105879:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010587d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105881:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105885:	89 c2                	mov    %eax,%edx
ffff800000105887:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010588b:	89 10                	mov    %edx,(%rax)
ffff80000010588d:	eb 4f                	jmp    ffff8000001058de <vsprintf+0x926>
ffff80000010588f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105893:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105897:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010589b:	c6 00 25             	movb   $0x25,(%rax)
ffff80000010589e:	eb 3e                	jmp    ffff8000001058de <vsprintf+0x926>
ffff8000001058a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058a4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058a8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058ac:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058af:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058b3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001058b6:	84 c0                	test   %al,%al
ffff8000001058b8:	74 17                	je     ffff8000001058d1 <vsprintf+0x919>
ffff8000001058ba:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001058be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c2:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001058c6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001058ca:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001058cd:	88 10                	mov    %dl,(%rax)
ffff8000001058cf:	eb 0c                	jmp    ffff8000001058dd <vsprintf+0x925>
ffff8000001058d1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058d5:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001058d9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001058dd:	90                   	nop
ffff8000001058de:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058e2:	48 83 c0 01          	add    $0x1,%rax
ffff8000001058e6:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001058ea:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058ee:	0f b6 00             	movzbl (%rax),%eax
ffff8000001058f1:	84 c0                	test   %al,%al
ffff8000001058f3:	0f 85 f9 f6 ff ff    	jne    ffff800000104ff2 <vsprintf+0x3a>
ffff8000001058f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058fd:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105900:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105904:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105908:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010590c:	c9                   	leave
ffff80000010590d:	c3                   	ret

ffff80000010590e <set_intr_gate>:
ffff80000010590e:	f3 0f 1e fa          	endbr64
ffff800000105912:	55                   	push   %rbp
ffff800000105913:	48 89 e5             	mov    %rsp,%rbp
ffff800000105916:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105916 <set_intr_gate+0x8>
ffff80000010591d:	49 bb 9a 6d 00 00 00 	movabs $0x6d9a,%r11
ffff800000105924:	00 00 00 
ffff800000105927:	4c 01 d8             	add    %r11,%rax
ffff80000010592a:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff80000010592d:	89 f1                	mov    %esi,%ecx
ffff80000010592f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105933:	89 ca                	mov    %ecx,%edx
ffff800000105935:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105938:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff80000010593b:	48 89 d1             	mov    %rdx,%rcx
ffff80000010593e:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105942:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105949:	ff ff ff 
ffff80000010594c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105950:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105954:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105957:	48 c1 e2 04          	shl    $0x4,%rdx
ffff80000010595b:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff80000010595f:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105966:	ff ff ff 
ffff800000105969:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff80000010596d:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105971:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105975:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff80000010597b:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff80000010597f:	44 89 c0             	mov    %r8d,%eax
ffff800000105982:	66 89 d0             	mov    %dx,%ax
ffff800000105985:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105989:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105990:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105994:	48 01 c8             	add    %rcx,%rax
ffff800000105997:	48 31 c9             	xor    %rcx,%rcx
ffff80000010599a:	89 d1                	mov    %edx,%ecx
ffff80000010599c:	48 c1 e9 10          	shr    $0x10,%rcx
ffff8000001059a0:	48 c1 e1 30          	shl    $0x30,%rcx
ffff8000001059a4:	48 01 c8             	add    %rcx,%rax
ffff8000001059a7:	48 89 06             	mov    %rax,(%rsi)
ffff8000001059aa:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001059ae:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001059b1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001059b5:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff8000001059b9:	90                   	nop
ffff8000001059ba:	5d                   	pop    %rbp
ffff8000001059bb:	c3                   	ret

ffff8000001059bc <set_trap_gate>:
ffff8000001059bc:	f3 0f 1e fa          	endbr64
ffff8000001059c0:	55                   	push   %rbp
ffff8000001059c1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059c4:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059c4 <set_trap_gate+0x8>
ffff8000001059cb:	49 bb ec 6c 00 00 00 	movabs $0x6cec,%r11
ffff8000001059d2:	00 00 00 
ffff8000001059d5:	4c 01 d8             	add    %r11,%rax
ffff8000001059d8:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff8000001059db:	89 f1                	mov    %esi,%ecx
ffff8000001059dd:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001059e1:	89 ca                	mov    %ecx,%edx
ffff8000001059e3:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff8000001059e6:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001059e9:	48 89 d1             	mov    %rdx,%rcx
ffff8000001059ec:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001059f0:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff8000001059f7:	ff ff ff 
ffff8000001059fa:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001059fe:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a02:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a05:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a09:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a0d:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a14:	ff ff ff 
ffff800000105a17:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a1b:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a1f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a23:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a29:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a2d:	44 89 c0             	mov    %r8d,%eax
ffff800000105a30:	66 89 d0             	mov    %dx,%ax
ffff800000105a33:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a37:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105a3e:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a42:	48 01 c8             	add    %rcx,%rax
ffff800000105a45:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a48:	89 d1                	mov    %edx,%ecx
ffff800000105a4a:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a4e:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a52:	48 01 c8             	add    %rcx,%rax
ffff800000105a55:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a58:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a5c:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a5f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a63:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a67:	90                   	nop
ffff800000105a68:	5d                   	pop    %rbp
ffff800000105a69:	c3                   	ret

ffff800000105a6a <set_system_gate>:
ffff800000105a6a:	f3 0f 1e fa          	endbr64
ffff800000105a6e:	55                   	push   %rbp
ffff800000105a6f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a72:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a72 <set_system_gate+0x8>
ffff800000105a79:	49 bb 3e 6c 00 00 00 	movabs $0x6c3e,%r11
ffff800000105a80:	00 00 00 
ffff800000105a83:	4c 01 d8             	add    %r11,%rax
ffff800000105a86:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a89:	89 f1                	mov    %esi,%ecx
ffff800000105a8b:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a8f:	89 ca                	mov    %ecx,%edx
ffff800000105a91:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a94:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a97:	48 89 d1             	mov    %rdx,%rcx
ffff800000105a9a:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105a9e:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105aa5:	ff ff ff 
ffff800000105aa8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105aac:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105ab0:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ab3:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105ab7:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105abb:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105ac2:	ff ff ff 
ffff800000105ac5:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ac9:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105acd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105ad1:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105ad7:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105adb:	44 89 c0             	mov    %r8d,%eax
ffff800000105ade:	66 89 d0             	mov    %dx,%ax
ffff800000105ae1:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105ae5:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105aec:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105af0:	48 01 c8             	add    %rcx,%rax
ffff800000105af3:	48 31 c9             	xor    %rcx,%rcx
ffff800000105af6:	89 d1                	mov    %edx,%ecx
ffff800000105af8:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105afc:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b00:	48 01 c8             	add    %rcx,%rax
ffff800000105b03:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b06:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b0a:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b0d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b11:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b15:	90                   	nop
ffff800000105b16:	5d                   	pop    %rbp
ffff800000105b17:	c3                   	ret
ffff800000105b18:	f3 0f 1e fa          	endbr64
ffff800000105b1c:	55                   	push   %rbp
ffff800000105b1d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b20:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b20 <set_system_gate+0xb6>
ffff800000105b27:	49 bb 90 6b 00 00 00 	movabs $0x6b90,%r11
ffff800000105b2e:	00 00 00 
ffff800000105b31:	4c 01 d8             	add    %r11,%rax
ffff800000105b34:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105b38:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105b3c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105b40:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105b44:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105b48:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105b4c:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b53:	ff ff ff 
ffff800000105b56:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b5a:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105b5e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105b62:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b65:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b6c:	ff ff ff 
ffff800000105b6f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b73:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105b77:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105b7b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b7e:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b85:	ff ff ff 
ffff800000105b88:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b8c:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105b90:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105b94:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b97:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b9e:	ff ff ff 
ffff800000105ba1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ba5:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105ba9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105bad:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bb0:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bb7:	ff ff ff 
ffff800000105bba:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bbe:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105bc2:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105bc6:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bc9:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bd0:	ff ff ff 
ffff800000105bd3:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bd7:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105bdb:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105bdf:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105be2:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105be9:	ff ff ff 
ffff800000105bec:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bf0:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105bf4:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105bf8:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bfb:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c02:	ff ff ff 
ffff800000105c05:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c09:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105c0d:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105c11:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c14:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c1b:	ff ff ff 
ffff800000105c1e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c22:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105c26:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105c2a:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c2d:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c34:	ff ff ff 
ffff800000105c37:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105c3b:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105c3f:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105c43:	48 89 10             	mov    %rdx,(%rax)
ffff800000105c46:	90                   	nop
ffff800000105c47:	5d                   	pop    %rbp
ffff800000105c48:	c3                   	ret

ffff800000105c49 <do_divide_error>:
ffff800000105c49:	f3 0f 1e fa          	endbr64
ffff800000105c4d:	55                   	push   %rbp
ffff800000105c4e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c51:	41 57                	push   %r15
ffff800000105c53:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105c57:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105c57 <do_divide_error+0xe>
ffff800000105c5e:	49 bb 59 6a 00 00 00 	movabs $0x6a59,%r11
ffff800000105c65:	00 00 00 
ffff800000105c68:	4d 01 da             	add    %r11,%r10
ffff800000105c6b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c6f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c73:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c7a:	00 
ffff800000105c7b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105c7f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105c85:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105c89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c8d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105c90:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105c94:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c98:	49 89 c9             	mov    %rcx,%r9
ffff800000105c9b:	49 89 d0             	mov    %rdx,%r8
ffff800000105c9e:	48 89 c1             	mov    %rax,%rcx
ffff800000105ca1:	48 b8 50 b2 ff ff ff 	movabs $0xffffffffffffb250,%rax
ffff800000105ca8:	ff ff ff 
ffff800000105cab:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105caf:	48 89 c2             	mov    %rax,%rdx
ffff800000105cb2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105cb7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105cbc:	4d 89 d7             	mov    %r10,%r15
ffff800000105cbf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105cc4:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105ccb:	ff ff ff 
ffff800000105cce:	4d 01 d3             	add    %r10,%r11
ffff800000105cd1:	41 ff d3             	call   *%r11
ffff800000105cd4:	90                   	nop
ffff800000105cd5:	eb fd                	jmp    ffff800000105cd4 <do_divide_error+0x8b>

ffff800000105cd7 <do_debug>:
ffff800000105cd7:	f3 0f 1e fa          	endbr64
ffff800000105cdb:	55                   	push   %rbp
ffff800000105cdc:	48 89 e5             	mov    %rsp,%rbp
ffff800000105cdf:	41 57                	push   %r15
ffff800000105ce1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ce5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ce5 <do_debug+0xe>
ffff800000105cec:	49 bb cb 69 00 00 00 	movabs $0x69cb,%r11
ffff800000105cf3:	00 00 00 
ffff800000105cf6:	4d 01 da             	add    %r11,%r10
ffff800000105cf9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105cfd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d01:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d08:	00 
ffff800000105d09:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d0d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d13:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d1b:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d1e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d22:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d26:	49 89 c9             	mov    %rcx,%r9
ffff800000105d29:	49 89 d0             	mov    %rdx,%r8
ffff800000105d2c:	48 89 c1             	mov    %rax,%rcx
ffff800000105d2f:	48 b8 90 b2 ff ff ff 	movabs $0xffffffffffffb290,%rax
ffff800000105d36:	ff ff ff 
ffff800000105d39:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d3d:	48 89 c2             	mov    %rax,%rdx
ffff800000105d40:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d45:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d4a:	4d 89 d7             	mov    %r10,%r15
ffff800000105d4d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d52:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105d59:	ff ff ff 
ffff800000105d5c:	4d 01 d3             	add    %r10,%r11
ffff800000105d5f:	41 ff d3             	call   *%r11
ffff800000105d62:	90                   	nop
ffff800000105d63:	eb fd                	jmp    ffff800000105d62 <do_debug+0x8b>

ffff800000105d65 <do_nmi>:
ffff800000105d65:	f3 0f 1e fa          	endbr64
ffff800000105d69:	55                   	push   %rbp
ffff800000105d6a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d6d:	41 57                	push   %r15
ffff800000105d6f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d73:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d73 <do_nmi+0xe>
ffff800000105d7a:	49 bb 3d 69 00 00 00 	movabs $0x693d,%r11
ffff800000105d81:	00 00 00 
ffff800000105d84:	4d 01 da             	add    %r11,%r10
ffff800000105d87:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d8b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d8f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d96:	00 
ffff800000105d97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d9b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105da1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105da5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105da9:	48 8b 08             	mov    (%rax),%rcx
ffff800000105dac:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105db0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105db4:	49 89 c9             	mov    %rcx,%r9
ffff800000105db7:	49 89 d0             	mov    %rdx,%r8
ffff800000105dba:	48 89 c1             	mov    %rax,%rcx
ffff800000105dbd:	48 b8 c8 b2 ff ff ff 	movabs $0xffffffffffffb2c8,%rax
ffff800000105dc4:	ff ff ff 
ffff800000105dc7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105dcb:	48 89 c2             	mov    %rax,%rdx
ffff800000105dce:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105dd3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105dd8:	4d 89 d7             	mov    %r10,%r15
ffff800000105ddb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105de0:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105de7:	ff ff ff 
ffff800000105dea:	4d 01 d3             	add    %r10,%r11
ffff800000105ded:	41 ff d3             	call   *%r11
ffff800000105df0:	90                   	nop
ffff800000105df1:	eb fd                	jmp    ffff800000105df0 <do_nmi+0x8b>

ffff800000105df3 <do_int3>:
ffff800000105df3:	f3 0f 1e fa          	endbr64
ffff800000105df7:	55                   	push   %rbp
ffff800000105df8:	48 89 e5             	mov    %rsp,%rbp
ffff800000105dfb:	41 57                	push   %r15
ffff800000105dfd:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e01:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e01 <do_int3+0xe>
ffff800000105e08:	49 bb af 68 00 00 00 	movabs $0x68af,%r11
ffff800000105e0f:	00 00 00 
ffff800000105e12:	4d 01 da             	add    %r11,%r10
ffff800000105e15:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e19:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e1d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e24:	00 
ffff800000105e25:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e29:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e2f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e37:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e3a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e3e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e42:	49 89 c9             	mov    %rcx,%r9
ffff800000105e45:	49 89 d0             	mov    %rdx,%r8
ffff800000105e48:	48 89 c1             	mov    %rax,%rcx
ffff800000105e4b:	48 b8 00 b3 ff ff ff 	movabs $0xffffffffffffb300,%rax
ffff800000105e52:	ff ff ff 
ffff800000105e55:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e59:	48 89 c2             	mov    %rax,%rdx
ffff800000105e5c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e61:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e66:	4d 89 d7             	mov    %r10,%r15
ffff800000105e69:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e6e:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105e75:	ff ff ff 
ffff800000105e78:	4d 01 d3             	add    %r10,%r11
ffff800000105e7b:	41 ff d3             	call   *%r11
ffff800000105e7e:	90                   	nop
ffff800000105e7f:	eb fd                	jmp    ffff800000105e7e <do_int3+0x8b>

ffff800000105e81 <do_overflow>:
ffff800000105e81:	f3 0f 1e fa          	endbr64
ffff800000105e85:	55                   	push   %rbp
ffff800000105e86:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e89:	41 57                	push   %r15
ffff800000105e8b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e8f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e8f <do_overflow+0xe>
ffff800000105e96:	49 bb 21 68 00 00 00 	movabs $0x6821,%r11
ffff800000105e9d:	00 00 00 
ffff800000105ea0:	4d 01 da             	add    %r11,%r10
ffff800000105ea3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ea7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105eab:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105eb2:	00 
ffff800000105eb3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105eb7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ebd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ec1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ec5:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ec8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ecc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ed0:	49 89 c9             	mov    %rcx,%r9
ffff800000105ed3:	49 89 d0             	mov    %rdx,%r8
ffff800000105ed6:	48 89 c1             	mov    %rax,%rcx
ffff800000105ed9:	48 b8 38 b3 ff ff ff 	movabs $0xffffffffffffb338,%rax
ffff800000105ee0:	ff ff ff 
ffff800000105ee3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ee7:	48 89 c2             	mov    %rax,%rdx
ffff800000105eea:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105eef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105ef4:	4d 89 d7             	mov    %r10,%r15
ffff800000105ef7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105efc:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105f03:	ff ff ff 
ffff800000105f06:	4d 01 d3             	add    %r10,%r11
ffff800000105f09:	41 ff d3             	call   *%r11
ffff800000105f0c:	90                   	nop
ffff800000105f0d:	eb fd                	jmp    ffff800000105f0c <do_overflow+0x8b>

ffff800000105f0f <do_bounds>:
ffff800000105f0f:	f3 0f 1e fa          	endbr64
ffff800000105f13:	55                   	push   %rbp
ffff800000105f14:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f17:	41 57                	push   %r15
ffff800000105f19:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f1d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f1d <do_bounds+0xe>
ffff800000105f24:	49 bb 93 67 00 00 00 	movabs $0x6793,%r11
ffff800000105f2b:	00 00 00 
ffff800000105f2e:	4d 01 da             	add    %r11,%r10
ffff800000105f31:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f35:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f39:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f40:	00 
ffff800000105f41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f45:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f4b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f4f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f53:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f56:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f5e:	49 89 c9             	mov    %rcx,%r9
ffff800000105f61:	49 89 d0             	mov    %rdx,%r8
ffff800000105f64:	48 89 c1             	mov    %rax,%rcx
ffff800000105f67:	48 b8 78 b3 ff ff ff 	movabs $0xffffffffffffb378,%rax
ffff800000105f6e:	ff ff ff 
ffff800000105f71:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f75:	48 89 c2             	mov    %rax,%rdx
ffff800000105f78:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f7d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f82:	4d 89 d7             	mov    %r10,%r15
ffff800000105f85:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f8a:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000105f91:	ff ff ff 
ffff800000105f94:	4d 01 d3             	add    %r10,%r11
ffff800000105f97:	41 ff d3             	call   *%r11
ffff800000105f9a:	90                   	nop
ffff800000105f9b:	eb fd                	jmp    ffff800000105f9a <do_bounds+0x8b>

ffff800000105f9d <do_undefined_opcode>:
ffff800000105f9d:	f3 0f 1e fa          	endbr64
ffff800000105fa1:	55                   	push   %rbp
ffff800000105fa2:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fa5:	41 57                	push   %r15
ffff800000105fa7:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fab:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fab <do_undefined_opcode+0xe>
ffff800000105fb2:	49 bb 05 67 00 00 00 	movabs $0x6705,%r11
ffff800000105fb9:	00 00 00 
ffff800000105fbc:	4d 01 da             	add    %r11,%r10
ffff800000105fbf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fc3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fc7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fce:	00 
ffff800000105fcf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fd3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fd9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fdd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fe1:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fe4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fe8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fec:	49 89 c9             	mov    %rcx,%r9
ffff800000105fef:	49 89 d0             	mov    %rdx,%r8
ffff800000105ff2:	48 89 c1             	mov    %rax,%rcx
ffff800000105ff5:	48 b8 b8 b3 ff ff ff 	movabs $0xffffffffffffb3b8,%rax
ffff800000105ffc:	ff ff ff 
ffff800000105fff:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106003:	48 89 c2             	mov    %rax,%rdx
ffff800000106006:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010600b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106010:	4d 89 d7             	mov    %r10,%r15
ffff800000106013:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106018:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff80000010601f:	ff ff ff 
ffff800000106022:	4d 01 d3             	add    %r10,%r11
ffff800000106025:	41 ff d3             	call   *%r11
ffff800000106028:	90                   	nop
ffff800000106029:	eb fd                	jmp    ffff800000106028 <do_undefined_opcode+0x8b>

ffff80000010602b <do_dev_not_available>:
ffff80000010602b:	f3 0f 1e fa          	endbr64
ffff80000010602f:	55                   	push   %rbp
ffff800000106030:	48 89 e5             	mov    %rsp,%rbp
ffff800000106033:	41 57                	push   %r15
ffff800000106035:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106039:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106039 <do_dev_not_available+0xe>
ffff800000106040:	49 bb 77 66 00 00 00 	movabs $0x6677,%r11
ffff800000106047:	00 00 00 
ffff80000010604a:	4d 01 da             	add    %r11,%r10
ffff80000010604d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106051:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106055:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010605c:	00 
ffff80000010605d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106061:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106067:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010606b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010606f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106072:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106076:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010607a:	49 89 c9             	mov    %rcx,%r9
ffff80000010607d:	49 89 d0             	mov    %rdx,%r8
ffff800000106080:	48 89 c1             	mov    %rax,%rcx
ffff800000106083:	48 b8 00 b4 ff ff ff 	movabs $0xffffffffffffb400,%rax
ffff80000010608a:	ff ff ff 
ffff80000010608d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106091:	48 89 c2             	mov    %rax,%rdx
ffff800000106094:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106099:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010609e:	4d 89 d7             	mov    %r10,%r15
ffff8000001060a1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060a6:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff8000001060ad:	ff ff ff 
ffff8000001060b0:	4d 01 d3             	add    %r10,%r11
ffff8000001060b3:	41 ff d3             	call   *%r11
ffff8000001060b6:	90                   	nop
ffff8000001060b7:	eb fd                	jmp    ffff8000001060b6 <do_dev_not_available+0x8b>

ffff8000001060b9 <do_double_fault>:
ffff8000001060b9:	f3 0f 1e fa          	endbr64
ffff8000001060bd:	55                   	push   %rbp
ffff8000001060be:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060c1:	41 57                	push   %r15
ffff8000001060c3:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060c7:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060c7 <do_double_fault+0xe>
ffff8000001060ce:	49 bb e9 65 00 00 00 	movabs $0x65e9,%r11
ffff8000001060d5:	00 00 00 
ffff8000001060d8:	4d 01 da             	add    %r11,%r10
ffff8000001060db:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060df:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060e3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060ea:	00 
ffff8000001060eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060ef:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060fd:	48 8b 08             	mov    (%rax),%rcx
ffff800000106100:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106104:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106108:	49 89 c9             	mov    %rcx,%r9
ffff80000010610b:	49 89 d0             	mov    %rdx,%r8
ffff80000010610e:	48 89 c1             	mov    %rax,%rcx
ffff800000106111:	48 b8 48 b4 ff ff ff 	movabs $0xffffffffffffb448,%rax
ffff800000106118:	ff ff ff 
ffff80000010611b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010611f:	48 89 c2             	mov    %rax,%rdx
ffff800000106122:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106127:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010612c:	4d 89 d7             	mov    %r10,%r15
ffff80000010612f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106134:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff80000010613b:	ff ff ff 
ffff80000010613e:	4d 01 d3             	add    %r10,%r11
ffff800000106141:	41 ff d3             	call   *%r11
ffff800000106144:	90                   	nop
ffff800000106145:	eb fd                	jmp    ffff800000106144 <do_double_fault+0x8b>

ffff800000106147 <do_coprocessor_segment_overrun>:
ffff800000106147:	f3 0f 1e fa          	endbr64
ffff80000010614b:	55                   	push   %rbp
ffff80000010614c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010614f:	41 57                	push   %r15
ffff800000106151:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106155:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106155 <do_coprocessor_segment_overrun+0xe>
ffff80000010615c:	49 bb 5b 65 00 00 00 	movabs $0x655b,%r11
ffff800000106163:	00 00 00 
ffff800000106166:	4d 01 da             	add    %r11,%r10
ffff800000106169:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010616d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106171:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106178:	00 
ffff800000106179:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010617d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106183:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106187:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010618b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010618e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106192:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106196:	49 89 c9             	mov    %rcx,%r9
ffff800000106199:	49 89 d0             	mov    %rdx,%r8
ffff80000010619c:	48 89 c1             	mov    %rax,%rcx
ffff80000010619f:	48 b8 88 b4 ff ff ff 	movabs $0xffffffffffffb488,%rax
ffff8000001061a6:	ff ff ff 
ffff8000001061a9:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061ad:	48 89 c2             	mov    %rax,%rdx
ffff8000001061b0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061b5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061ba:	4d 89 d7             	mov    %r10,%r15
ffff8000001061bd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061c2:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff8000001061c9:	ff ff ff 
ffff8000001061cc:	4d 01 d3             	add    %r10,%r11
ffff8000001061cf:	41 ff d3             	call   *%r11
ffff8000001061d2:	90                   	nop
ffff8000001061d3:	eb fd                	jmp    ffff8000001061d2 <do_coprocessor_segment_overrun+0x8b>

ffff8000001061d5 <do_invalid_TSS>:
ffff8000001061d5:	f3 0f 1e fa          	endbr64
ffff8000001061d9:	55                   	push   %rbp
ffff8000001061da:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061dd:	41 57                	push   %r15
ffff8000001061df:	53                   	push   %rbx
ffff8000001061e0:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001061e4:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001061e4 <do_invalid_TSS+0xf>
ffff8000001061eb:	49 bb cc 64 00 00 00 	movabs $0x64cc,%r11
ffff8000001061f2:	00 00 00 
ffff8000001061f5:	4c 01 db             	add    %r11,%rbx
ffff8000001061f8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061fc:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106200:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106207:	00 
ffff800000106208:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010620c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106212:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106216:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010621a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010621d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106221:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106225:	49 89 c9             	mov    %rcx,%r9
ffff800000106228:	49 89 d0             	mov    %rdx,%r8
ffff80000010622b:	48 89 c1             	mov    %rax,%rcx
ffff80000010622e:	48 b8 d8 b4 ff ff ff 	movabs $0xffffffffffffb4d8,%rax
ffff800000106235:	ff ff ff 
ffff800000106238:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010623c:	48 89 c2             	mov    %rax,%rdx
ffff80000010623f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106244:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106249:	49 89 df             	mov    %rbx,%r15
ffff80000010624c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106251:	49 ba 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r10
ffff800000106258:	ff ff ff 
ffff80000010625b:	49 01 da             	add    %rbx,%r10
ffff80000010625e:	41 ff d2             	call   *%r10
ffff800000106261:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106265:	83 e0 01             	and    $0x1,%eax
ffff800000106268:	48 85 c0             	test   %rax,%rax
ffff80000010626b:	74 32                	je     ffff80000010629f <do_invalid_TSS+0xca>
ffff80000010626d:	48 b8 18 b5 ff ff ff 	movabs $0xffffffffffffb518,%rax
ffff800000106274:	ff ff ff 
ffff800000106277:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010627b:	48 89 c2             	mov    %rax,%rdx
ffff80000010627e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106283:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106288:	49 89 df             	mov    %rbx,%r15
ffff80000010628b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106290:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106297:	ff ff ff 
ffff80000010629a:	48 01 d9             	add    %rbx,%rcx
ffff80000010629d:	ff d1                	call   *%rcx
ffff80000010629f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062a3:	83 e0 02             	and    $0x2,%eax
ffff8000001062a6:	48 85 c0             	test   %rax,%rax
ffff8000001062a9:	74 34                	je     ffff8000001062df <do_invalid_TSS+0x10a>
ffff8000001062ab:	48 b8 98 b5 ff ff ff 	movabs $0xffffffffffffb598,%rax
ffff8000001062b2:	ff ff ff 
ffff8000001062b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062b9:	48 89 c2             	mov    %rax,%rdx
ffff8000001062bc:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062c1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062c6:	49 89 df             	mov    %rbx,%r15
ffff8000001062c9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062ce:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001062d5:	ff ff ff 
ffff8000001062d8:	48 01 d9             	add    %rbx,%rcx
ffff8000001062db:	ff d1                	call   *%rcx
ffff8000001062dd:	eb 32                	jmp    ffff800000106311 <do_invalid_TSS+0x13c>
ffff8000001062df:	48 b8 c8 b5 ff ff ff 	movabs $0xffffffffffffb5c8,%rax
ffff8000001062e6:	ff ff ff 
ffff8000001062e9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062ed:	48 89 c2             	mov    %rax,%rdx
ffff8000001062f0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062f5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062fa:	49 89 df             	mov    %rbx,%r15
ffff8000001062fd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106302:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106309:	ff ff ff 
ffff80000010630c:	48 01 d9             	add    %rbx,%rcx
ffff80000010630f:	ff d1                	call   *%rcx
ffff800000106311:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106315:	83 e0 02             	and    $0x2,%eax
ffff800000106318:	48 85 c0             	test   %rax,%rax
ffff80000010631b:	75 72                	jne    ffff80000010638f <do_invalid_TSS+0x1ba>
ffff80000010631d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106321:	83 e0 04             	and    $0x4,%eax
ffff800000106324:	48 85 c0             	test   %rax,%rax
ffff800000106327:	74 34                	je     ffff80000010635d <do_invalid_TSS+0x188>
ffff800000106329:	48 b8 00 b6 ff ff ff 	movabs $0xffffffffffffb600,%rax
ffff800000106330:	ff ff ff 
ffff800000106333:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106337:	48 89 c2             	mov    %rax,%rdx
ffff80000010633a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010633f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106344:	49 89 df             	mov    %rbx,%r15
ffff800000106347:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010634c:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106353:	ff ff ff 
ffff800000106356:	48 01 d9             	add    %rbx,%rcx
ffff800000106359:	ff d1                	call   *%rcx
ffff80000010635b:	eb 32                	jmp    ffff80000010638f <do_invalid_TSS+0x1ba>
ffff80000010635d:	48 b8 38 b6 ff ff ff 	movabs $0xffffffffffffb638,%rax
ffff800000106364:	ff ff ff 
ffff800000106367:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010636b:	48 89 c2             	mov    %rax,%rdx
ffff80000010636e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106373:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106378:	49 89 df             	mov    %rbx,%r15
ffff80000010637b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106380:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106387:	ff ff ff 
ffff80000010638a:	48 01 d9             	add    %rbx,%rcx
ffff80000010638d:	ff d1                	call   *%rcx
ffff80000010638f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106393:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106398:	48 89 c1             	mov    %rax,%rcx
ffff80000010639b:	48 b8 68 b6 ff ff ff 	movabs $0xffffffffffffb668,%rax
ffff8000001063a2:	ff ff ff 
ffff8000001063a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001063ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063b1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063b6:	49 89 df             	mov    %rbx,%r15
ffff8000001063b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063be:	49 b8 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r8
ffff8000001063c5:	ff ff ff 
ffff8000001063c8:	49 01 d8             	add    %rbx,%r8
ffff8000001063cb:	41 ff d0             	call   *%r8
ffff8000001063ce:	90                   	nop
ffff8000001063cf:	eb fd                	jmp    ffff8000001063ce <do_invalid_TSS+0x1f9>

ffff8000001063d1 <do_segment_not_present>:
ffff8000001063d1:	f3 0f 1e fa          	endbr64
ffff8000001063d5:	55                   	push   %rbp
ffff8000001063d6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063d9:	41 57                	push   %r15
ffff8000001063db:	53                   	push   %rbx
ffff8000001063dc:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001063e0:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001063e0 <do_segment_not_present+0xf>
ffff8000001063e7:	49 bb d0 62 00 00 00 	movabs $0x62d0,%r11
ffff8000001063ee:	00 00 00 
ffff8000001063f1:	4c 01 db             	add    %r11,%rbx
ffff8000001063f4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001063f8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001063fc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106403:	00 
ffff800000106404:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106408:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010640e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106412:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106416:	48 8b 08             	mov    (%rax),%rcx
ffff800000106419:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010641d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106421:	49 89 c9             	mov    %rcx,%r9
ffff800000106424:	49 89 d0             	mov    %rdx,%r8
ffff800000106427:	48 89 c1             	mov    %rax,%rcx
ffff80000010642a:	48 b8 88 b6 ff ff ff 	movabs $0xffffffffffffb688,%rax
ffff800000106431:	ff ff ff 
ffff800000106434:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106438:	48 89 c2             	mov    %rax,%rdx
ffff80000010643b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106440:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106445:	49 89 df             	mov    %rbx,%r15
ffff800000106448:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010644d:	49 ba 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r10
ffff800000106454:	ff ff ff 
ffff800000106457:	49 01 da             	add    %rbx,%r10
ffff80000010645a:	41 ff d2             	call   *%r10
ffff80000010645d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106461:	83 e0 01             	and    $0x1,%eax
ffff800000106464:	48 85 c0             	test   %rax,%rax
ffff800000106467:	74 32                	je     ffff80000010649b <do_segment_not_present+0xca>
ffff800000106469:	48 b8 18 b5 ff ff ff 	movabs $0xffffffffffffb518,%rax
ffff800000106470:	ff ff ff 
ffff800000106473:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106477:	48 89 c2             	mov    %rax,%rdx
ffff80000010647a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010647f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106484:	49 89 df             	mov    %rbx,%r15
ffff800000106487:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010648c:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106493:	ff ff ff 
ffff800000106496:	48 01 d9             	add    %rbx,%rcx
ffff800000106499:	ff d1                	call   *%rcx
ffff80000010649b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010649f:	83 e0 02             	and    $0x2,%eax
ffff8000001064a2:	48 85 c0             	test   %rax,%rax
ffff8000001064a5:	74 34                	je     ffff8000001064db <do_segment_not_present+0x10a>
ffff8000001064a7:	48 b8 98 b5 ff ff ff 	movabs $0xffffffffffffb598,%rax
ffff8000001064ae:	ff ff ff 
ffff8000001064b1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064b5:	48 89 c2             	mov    %rax,%rdx
ffff8000001064b8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064bd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064c2:	49 89 df             	mov    %rbx,%r15
ffff8000001064c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064ca:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001064d1:	ff ff ff 
ffff8000001064d4:	48 01 d9             	add    %rbx,%rcx
ffff8000001064d7:	ff d1                	call   *%rcx
ffff8000001064d9:	eb 32                	jmp    ffff80000010650d <do_segment_not_present+0x13c>
ffff8000001064db:	48 b8 c8 b5 ff ff ff 	movabs $0xffffffffffffb5c8,%rax
ffff8000001064e2:	ff ff ff 
ffff8000001064e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001064ec:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064f6:	49 89 df             	mov    %rbx,%r15
ffff8000001064f9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064fe:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106505:	ff ff ff 
ffff800000106508:	48 01 d9             	add    %rbx,%rcx
ffff80000010650b:	ff d1                	call   *%rcx
ffff80000010650d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106511:	83 e0 02             	and    $0x2,%eax
ffff800000106514:	48 85 c0             	test   %rax,%rax
ffff800000106517:	75 72                	jne    ffff80000010658b <do_segment_not_present+0x1ba>
ffff800000106519:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010651d:	83 e0 04             	and    $0x4,%eax
ffff800000106520:	48 85 c0             	test   %rax,%rax
ffff800000106523:	74 34                	je     ffff800000106559 <do_segment_not_present+0x188>
ffff800000106525:	48 b8 00 b6 ff ff ff 	movabs $0xffffffffffffb600,%rax
ffff80000010652c:	ff ff ff 
ffff80000010652f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106533:	48 89 c2             	mov    %rax,%rdx
ffff800000106536:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010653b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106540:	49 89 df             	mov    %rbx,%r15
ffff800000106543:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106548:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010654f:	ff ff ff 
ffff800000106552:	48 01 d9             	add    %rbx,%rcx
ffff800000106555:	ff d1                	call   *%rcx
ffff800000106557:	eb 32                	jmp    ffff80000010658b <do_segment_not_present+0x1ba>
ffff800000106559:	48 b8 38 b6 ff ff ff 	movabs $0xffffffffffffb638,%rax
ffff800000106560:	ff ff ff 
ffff800000106563:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106567:	48 89 c2             	mov    %rax,%rdx
ffff80000010656a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010656f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106574:	49 89 df             	mov    %rbx,%r15
ffff800000106577:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010657c:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106583:	ff ff ff 
ffff800000106586:	48 01 d9             	add    %rbx,%rcx
ffff800000106589:	ff d1                	call   *%rcx
ffff80000010658b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010658f:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106594:	48 89 c1             	mov    %rax,%rcx
ffff800000106597:	48 b8 68 b6 ff ff ff 	movabs $0xffffffffffffb668,%rax
ffff80000010659e:	ff ff ff 
ffff8000001065a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065a5:	48 89 c2             	mov    %rax,%rdx
ffff8000001065a8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065ad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065b2:	49 89 df             	mov    %rbx,%r15
ffff8000001065b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065ba:	49 b8 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r8
ffff8000001065c1:	ff ff ff 
ffff8000001065c4:	49 01 d8             	add    %rbx,%r8
ffff8000001065c7:	41 ff d0             	call   *%r8
ffff8000001065ca:	90                   	nop
ffff8000001065cb:	eb fd                	jmp    ffff8000001065ca <do_segment_not_present+0x1f9>

ffff8000001065cd <do_stack_segment_fault>:
ffff8000001065cd:	f3 0f 1e fa          	endbr64
ffff8000001065d1:	55                   	push   %rbp
ffff8000001065d2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001065d5:	41 57                	push   %r15
ffff8000001065d7:	53                   	push   %rbx
ffff8000001065d8:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001065dc:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001065dc <do_stack_segment_fault+0xf>
ffff8000001065e3:	49 bb d4 60 00 00 00 	movabs $0x60d4,%r11
ffff8000001065ea:	00 00 00 
ffff8000001065ed:	4c 01 db             	add    %r11,%rbx
ffff8000001065f0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001065f4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001065f8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001065ff:	00 
ffff800000106600:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106604:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010660a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010660e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106612:	48 8b 08             	mov    (%rax),%rcx
ffff800000106615:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106619:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010661d:	49 89 c9             	mov    %rcx,%r9
ffff800000106620:	49 89 d0             	mov    %rdx,%r8
ffff800000106623:	48 89 c1             	mov    %rax,%rcx
ffff800000106626:	48 b8 d0 b6 ff ff ff 	movabs $0xffffffffffffb6d0,%rax
ffff80000010662d:	ff ff ff 
ffff800000106630:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106634:	48 89 c2             	mov    %rax,%rdx
ffff800000106637:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010663c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106641:	49 89 df             	mov    %rbx,%r15
ffff800000106644:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106649:	49 ba 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r10
ffff800000106650:	ff ff ff 
ffff800000106653:	49 01 da             	add    %rbx,%r10
ffff800000106656:	41 ff d2             	call   *%r10
ffff800000106659:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010665d:	83 e0 01             	and    $0x1,%eax
ffff800000106660:	48 85 c0             	test   %rax,%rax
ffff800000106663:	74 32                	je     ffff800000106697 <do_stack_segment_fault+0xca>
ffff800000106665:	48 b8 18 b5 ff ff ff 	movabs $0xffffffffffffb518,%rax
ffff80000010666c:	ff ff ff 
ffff80000010666f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106673:	48 89 c2             	mov    %rax,%rdx
ffff800000106676:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010667b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106680:	49 89 df             	mov    %rbx,%r15
ffff800000106683:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106688:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010668f:	ff ff ff 
ffff800000106692:	48 01 d9             	add    %rbx,%rcx
ffff800000106695:	ff d1                	call   *%rcx
ffff800000106697:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010669b:	83 e0 02             	and    $0x2,%eax
ffff80000010669e:	48 85 c0             	test   %rax,%rax
ffff8000001066a1:	74 34                	je     ffff8000001066d7 <do_stack_segment_fault+0x10a>
ffff8000001066a3:	48 b8 98 b5 ff ff ff 	movabs $0xffffffffffffb598,%rax
ffff8000001066aa:	ff ff ff 
ffff8000001066ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066b1:	48 89 c2             	mov    %rax,%rdx
ffff8000001066b4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066b9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066be:	49 89 df             	mov    %rbx,%r15
ffff8000001066c1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066c6:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001066cd:	ff ff ff 
ffff8000001066d0:	48 01 d9             	add    %rbx,%rcx
ffff8000001066d3:	ff d1                	call   *%rcx
ffff8000001066d5:	eb 32                	jmp    ffff800000106709 <do_stack_segment_fault+0x13c>
ffff8000001066d7:	48 b8 c8 b5 ff ff ff 	movabs $0xffffffffffffb5c8,%rax
ffff8000001066de:	ff ff ff 
ffff8000001066e1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066e5:	48 89 c2             	mov    %rax,%rdx
ffff8000001066e8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066ed:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066f2:	49 89 df             	mov    %rbx,%r15
ffff8000001066f5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066fa:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106701:	ff ff ff 
ffff800000106704:	48 01 d9             	add    %rbx,%rcx
ffff800000106707:	ff d1                	call   *%rcx
ffff800000106709:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010670d:	83 e0 02             	and    $0x2,%eax
ffff800000106710:	48 85 c0             	test   %rax,%rax
ffff800000106713:	75 72                	jne    ffff800000106787 <do_stack_segment_fault+0x1ba>
ffff800000106715:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106719:	83 e0 04             	and    $0x4,%eax
ffff80000010671c:	48 85 c0             	test   %rax,%rax
ffff80000010671f:	74 34                	je     ffff800000106755 <do_stack_segment_fault+0x188>
ffff800000106721:	48 b8 00 b6 ff ff ff 	movabs $0xffffffffffffb600,%rax
ffff800000106728:	ff ff ff 
ffff80000010672b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010672f:	48 89 c2             	mov    %rax,%rdx
ffff800000106732:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106737:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010673c:	49 89 df             	mov    %rbx,%r15
ffff80000010673f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106744:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010674b:	ff ff ff 
ffff80000010674e:	48 01 d9             	add    %rbx,%rcx
ffff800000106751:	ff d1                	call   *%rcx
ffff800000106753:	eb 32                	jmp    ffff800000106787 <do_stack_segment_fault+0x1ba>
ffff800000106755:	48 b8 38 b6 ff ff ff 	movabs $0xffffffffffffb638,%rax
ffff80000010675c:	ff ff ff 
ffff80000010675f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106763:	48 89 c2             	mov    %rax,%rdx
ffff800000106766:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010676b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106770:	49 89 df             	mov    %rbx,%r15
ffff800000106773:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106778:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010677f:	ff ff ff 
ffff800000106782:	48 01 d9             	add    %rbx,%rcx
ffff800000106785:	ff d1                	call   *%rcx
ffff800000106787:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010678b:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106790:	48 89 c1             	mov    %rax,%rcx
ffff800000106793:	48 b8 68 b6 ff ff ff 	movabs $0xffffffffffffb668,%rax
ffff80000010679a:	ff ff ff 
ffff80000010679d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067a1:	48 89 c2             	mov    %rax,%rdx
ffff8000001067a4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067a9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067ae:	49 89 df             	mov    %rbx,%r15
ffff8000001067b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067b6:	49 b8 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r8
ffff8000001067bd:	ff ff ff 
ffff8000001067c0:	49 01 d8             	add    %rbx,%r8
ffff8000001067c3:	41 ff d0             	call   *%r8
ffff8000001067c6:	90                   	nop
ffff8000001067c7:	eb fd                	jmp    ffff8000001067c6 <do_stack_segment_fault+0x1f9>

ffff8000001067c9 <do_general_protection>:
ffff8000001067c9:	f3 0f 1e fa          	endbr64
ffff8000001067cd:	55                   	push   %rbp
ffff8000001067ce:	48 89 e5             	mov    %rsp,%rbp
ffff8000001067d1:	41 57                	push   %r15
ffff8000001067d3:	53                   	push   %rbx
ffff8000001067d4:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001067d8:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001067d8 <do_general_protection+0xf>
ffff8000001067df:	49 bb d8 5e 00 00 00 	movabs $0x5ed8,%r11
ffff8000001067e6:	00 00 00 
ffff8000001067e9:	4c 01 db             	add    %r11,%rbx
ffff8000001067ec:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001067f0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001067f4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001067fb:	00 
ffff8000001067fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106800:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106806:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010680a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010680e:	48 8b 08             	mov    (%rax),%rcx
ffff800000106811:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106815:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106819:	49 89 c9             	mov    %rcx,%r9
ffff80000010681c:	49 89 d0             	mov    %rdx,%r8
ffff80000010681f:	48 89 c1             	mov    %rax,%rcx
ffff800000106822:	48 b8 18 b7 ff ff ff 	movabs $0xffffffffffffb718,%rax
ffff800000106829:	ff ff ff 
ffff80000010682c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106830:	48 89 c2             	mov    %rax,%rdx
ffff800000106833:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106838:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010683d:	49 89 df             	mov    %rbx,%r15
ffff800000106840:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106845:	49 ba 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r10
ffff80000010684c:	ff ff ff 
ffff80000010684f:	49 01 da             	add    %rbx,%r10
ffff800000106852:	41 ff d2             	call   *%r10
ffff800000106855:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106859:	83 e0 01             	and    $0x1,%eax
ffff80000010685c:	48 85 c0             	test   %rax,%rax
ffff80000010685f:	74 32                	je     ffff800000106893 <do_general_protection+0xca>
ffff800000106861:	48 b8 18 b5 ff ff ff 	movabs $0xffffffffffffb518,%rax
ffff800000106868:	ff ff ff 
ffff80000010686b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010686f:	48 89 c2             	mov    %rax,%rdx
ffff800000106872:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106877:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010687c:	49 89 df             	mov    %rbx,%r15
ffff80000010687f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106884:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010688b:	ff ff ff 
ffff80000010688e:	48 01 d9             	add    %rbx,%rcx
ffff800000106891:	ff d1                	call   *%rcx
ffff800000106893:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106897:	83 e0 02             	and    $0x2,%eax
ffff80000010689a:	48 85 c0             	test   %rax,%rax
ffff80000010689d:	74 34                	je     ffff8000001068d3 <do_general_protection+0x10a>
ffff80000010689f:	48 b8 98 b5 ff ff ff 	movabs $0xffffffffffffb598,%rax
ffff8000001068a6:	ff ff ff 
ffff8000001068a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068ad:	48 89 c2             	mov    %rax,%rdx
ffff8000001068b0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068b5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068ba:	49 89 df             	mov    %rbx,%r15
ffff8000001068bd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068c2:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001068c9:	ff ff ff 
ffff8000001068cc:	48 01 d9             	add    %rbx,%rcx
ffff8000001068cf:	ff d1                	call   *%rcx
ffff8000001068d1:	eb 32                	jmp    ffff800000106905 <do_general_protection+0x13c>
ffff8000001068d3:	48 b8 c8 b5 ff ff ff 	movabs $0xffffffffffffb5c8,%rax
ffff8000001068da:	ff ff ff 
ffff8000001068dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e1:	48 89 c2             	mov    %rax,%rdx
ffff8000001068e4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068e9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068ee:	49 89 df             	mov    %rbx,%r15
ffff8000001068f1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068f6:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff8000001068fd:	ff ff ff 
ffff800000106900:	48 01 d9             	add    %rbx,%rcx
ffff800000106903:	ff d1                	call   *%rcx
ffff800000106905:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106909:	83 e0 02             	and    $0x2,%eax
ffff80000010690c:	48 85 c0             	test   %rax,%rax
ffff80000010690f:	75 72                	jne    ffff800000106983 <do_general_protection+0x1ba>
ffff800000106911:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106915:	83 e0 04             	and    $0x4,%eax
ffff800000106918:	48 85 c0             	test   %rax,%rax
ffff80000010691b:	74 34                	je     ffff800000106951 <do_general_protection+0x188>
ffff80000010691d:	48 b8 00 b6 ff ff ff 	movabs $0xffffffffffffb600,%rax
ffff800000106924:	ff ff ff 
ffff800000106927:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010692b:	48 89 c2             	mov    %rax,%rdx
ffff80000010692e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106933:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106938:	49 89 df             	mov    %rbx,%r15
ffff80000010693b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106940:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106947:	ff ff ff 
ffff80000010694a:	48 01 d9             	add    %rbx,%rcx
ffff80000010694d:	ff d1                	call   *%rcx
ffff80000010694f:	eb 32                	jmp    ffff800000106983 <do_general_protection+0x1ba>
ffff800000106951:	48 b8 38 b6 ff ff ff 	movabs $0xffffffffffffb638,%rax
ffff800000106958:	ff ff ff 
ffff80000010695b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010695f:	48 89 c2             	mov    %rax,%rdx
ffff800000106962:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106967:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010696c:	49 89 df             	mov    %rbx,%r15
ffff80000010696f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106974:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff80000010697b:	ff ff ff 
ffff80000010697e:	48 01 d9             	add    %rbx,%rcx
ffff800000106981:	ff d1                	call   *%rcx
ffff800000106983:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106987:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010698c:	48 89 c1             	mov    %rax,%rcx
ffff80000010698f:	48 b8 68 b6 ff ff ff 	movabs $0xffffffffffffb668,%rax
ffff800000106996:	ff ff ff 
ffff800000106999:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010699d:	48 89 c2             	mov    %rax,%rdx
ffff8000001069a0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069a5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069aa:	49 89 df             	mov    %rbx,%r15
ffff8000001069ad:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069b2:	49 b8 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r8
ffff8000001069b9:	ff ff ff 
ffff8000001069bc:	49 01 d8             	add    %rbx,%r8
ffff8000001069bf:	41 ff d0             	call   *%r8
ffff8000001069c2:	90                   	nop
ffff8000001069c3:	eb fd                	jmp    ffff8000001069c2 <do_general_protection+0x1f9>

ffff8000001069c5 <do_page_fault>:
ffff8000001069c5:	f3 0f 1e fa          	endbr64
ffff8000001069c9:	55                   	push   %rbp
ffff8000001069ca:	48 89 e5             	mov    %rsp,%rbp
ffff8000001069cd:	41 57                	push   %r15
ffff8000001069cf:	53                   	push   %rbx
ffff8000001069d0:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001069d4:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001069d4 <do_page_fault+0xf>
ffff8000001069db:	49 bb dc 5c 00 00 00 	movabs $0x5cdc,%r11
ffff8000001069e2:	00 00 00 
ffff8000001069e5:	4c 01 db             	add    %r11,%rbx
ffff8000001069e8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001069ec:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001069f0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001069f7:	00 
ffff8000001069f8:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001069ff:	00 
ffff800000106a00:	0f 20 d0             	mov    %cr2,%rax
ffff800000106a03:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106a07:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106a0b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106a11:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106a15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106a19:	48 8b 08             	mov    (%rax),%rcx
ffff800000106a1c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106a20:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a24:	49 89 c9             	mov    %rcx,%r9
ffff800000106a27:	49 89 d0             	mov    %rdx,%r8
ffff800000106a2a:	48 89 c1             	mov    %rax,%rcx
ffff800000106a2d:	48 b8 60 b7 ff ff ff 	movabs $0xffffffffffffb760,%rax
ffff800000106a34:	ff ff ff 
ffff800000106a37:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a3b:	48 89 c2             	mov    %rax,%rdx
ffff800000106a3e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a43:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a48:	49 89 df             	mov    %rbx,%r15
ffff800000106a4b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a50:	49 ba 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r10
ffff800000106a57:	ff ff ff 
ffff800000106a5a:	49 01 da             	add    %rbx,%r10
ffff800000106a5d:	41 ff d2             	call   *%r10
ffff800000106a60:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a64:	83 e0 01             	and    $0x1,%eax
ffff800000106a67:	48 85 c0             	test   %rax,%rax
ffff800000106a6a:	75 32                	jne    ffff800000106a9e <do_page_fault+0xd9>
ffff800000106a6c:	48 b8 9e b7 ff ff ff 	movabs $0xffffffffffffb79e,%rax
ffff800000106a73:	ff ff ff 
ffff800000106a76:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a7a:	48 89 c2             	mov    %rax,%rdx
ffff800000106a7d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a82:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a87:	49 89 df             	mov    %rbx,%r15
ffff800000106a8a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a8f:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106a96:	ff ff ff 
ffff800000106a99:	48 01 d9             	add    %rbx,%rcx
ffff800000106a9c:	ff d1                	call   *%rcx
ffff800000106a9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aa2:	83 e0 02             	and    $0x2,%eax
ffff800000106aa5:	48 85 c0             	test   %rax,%rax
ffff800000106aa8:	74 34                	je     ffff800000106ade <do_page_fault+0x119>
ffff800000106aaa:	48 b8 b1 b7 ff ff ff 	movabs $0xffffffffffffb7b1,%rax
ffff800000106ab1:	ff ff ff 
ffff800000106ab4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ab8:	48 89 c2             	mov    %rax,%rdx
ffff800000106abb:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ac0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ac5:	49 89 df             	mov    %rbx,%r15
ffff800000106ac8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106acd:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106ad4:	ff ff ff 
ffff800000106ad7:	48 01 d9             	add    %rbx,%rcx
ffff800000106ada:	ff d1                	call   *%rcx
ffff800000106adc:	eb 32                	jmp    ffff800000106b10 <do_page_fault+0x14b>
ffff800000106ade:	48 b8 c5 b7 ff ff ff 	movabs $0xffffffffffffb7c5,%rax
ffff800000106ae5:	ff ff ff 
ffff800000106ae8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106aec:	48 89 c2             	mov    %rax,%rdx
ffff800000106aef:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106af4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106af9:	49 89 df             	mov    %rbx,%r15
ffff800000106afc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b01:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106b08:	ff ff ff 
ffff800000106b0b:	48 01 d9             	add    %rbx,%rcx
ffff800000106b0e:	ff d1                	call   *%rcx
ffff800000106b10:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b14:	83 e0 04             	and    $0x4,%eax
ffff800000106b17:	48 85 c0             	test   %rax,%rax
ffff800000106b1a:	74 34                	je     ffff800000106b50 <do_page_fault+0x18b>
ffff800000106b1c:	48 b8 d8 b7 ff ff ff 	movabs $0xffffffffffffb7d8,%rax
ffff800000106b23:	ff ff ff 
ffff800000106b26:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b2a:	48 89 c2             	mov    %rax,%rdx
ffff800000106b2d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b32:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b37:	49 89 df             	mov    %rbx,%r15
ffff800000106b3a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b3f:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106b46:	ff ff ff 
ffff800000106b49:	48 01 d9             	add    %rbx,%rcx
ffff800000106b4c:	ff d1                	call   *%rcx
ffff800000106b4e:	eb 32                	jmp    ffff800000106b82 <do_page_fault+0x1bd>
ffff800000106b50:	48 b8 ea b7 ff ff ff 	movabs $0xffffffffffffb7ea,%rax
ffff800000106b57:	ff ff ff 
ffff800000106b5a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b5e:	48 89 c2             	mov    %rax,%rdx
ffff800000106b61:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b66:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b6b:	49 89 df             	mov    %rbx,%r15
ffff800000106b6e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b73:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106b7a:	ff ff ff 
ffff800000106b7d:	48 01 d9             	add    %rbx,%rcx
ffff800000106b80:	ff d1                	call   *%rcx
ffff800000106b82:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b86:	83 e0 08             	and    $0x8,%eax
ffff800000106b89:	48 85 c0             	test   %rax,%rax
ffff800000106b8c:	74 32                	je     ffff800000106bc0 <do_page_fault+0x1fb>
ffff800000106b8e:	48 b8 06 b8 ff ff ff 	movabs $0xffffffffffffb806,%rax
ffff800000106b95:	ff ff ff 
ffff800000106b98:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b9c:	48 89 c2             	mov    %rax,%rdx
ffff800000106b9f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ba4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ba9:	49 89 df             	mov    %rbx,%r15
ffff800000106bac:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bb1:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106bb8:	ff ff ff 
ffff800000106bbb:	48 01 d9             	add    %rbx,%rcx
ffff800000106bbe:	ff d1                	call   *%rcx
ffff800000106bc0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bc4:	83 e0 10             	and    $0x10,%eax
ffff800000106bc7:	48 85 c0             	test   %rax,%rax
ffff800000106bca:	74 32                	je     ffff800000106bfe <do_page_fault+0x239>
ffff800000106bcc:	48 b8 28 b8 ff ff ff 	movabs $0xffffffffffffb828,%rax
ffff800000106bd3:	ff ff ff 
ffff800000106bd6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bda:	48 89 c2             	mov    %rax,%rdx
ffff800000106bdd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106be2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106be7:	49 89 df             	mov    %rbx,%r15
ffff800000106bea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bef:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106bf6:	ff ff ff 
ffff800000106bf9:	48 01 d9             	add    %rbx,%rcx
ffff800000106bfc:	ff d1                	call   *%rcx
ffff800000106bfe:	48 b8 47 b8 ff ff ff 	movabs $0xffffffffffffb847,%rax
ffff800000106c05:	ff ff ff 
ffff800000106c08:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c0c:	48 89 c2             	mov    %rax,%rdx
ffff800000106c0f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c14:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c19:	49 89 df             	mov    %rbx,%r15
ffff800000106c1c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c21:	48 b9 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%rcx
ffff800000106c28:	ff ff ff 
ffff800000106c2b:	48 01 d9             	add    %rbx,%rcx
ffff800000106c2e:	ff d1                	call   *%rcx
ffff800000106c30:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c34:	48 89 c1             	mov    %rax,%rcx
ffff800000106c37:	48 b8 49 b8 ff ff ff 	movabs $0xffffffffffffb849,%rax
ffff800000106c3e:	ff ff ff 
ffff800000106c41:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c45:	48 89 c2             	mov    %rax,%rdx
ffff800000106c48:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c4d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c52:	49 89 df             	mov    %rbx,%r15
ffff800000106c55:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c5a:	49 b8 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r8
ffff800000106c61:	ff ff ff 
ffff800000106c64:	49 01 d8             	add    %rbx,%r8
ffff800000106c67:	41 ff d0             	call   *%r8
ffff800000106c6a:	90                   	nop
ffff800000106c6b:	eb fd                	jmp    ffff800000106c6a <do_page_fault+0x2a5>

ffff800000106c6d <do_x87_FPU_error>:
ffff800000106c6d:	f3 0f 1e fa          	endbr64
ffff800000106c71:	55                   	push   %rbp
ffff800000106c72:	48 89 e5             	mov    %rsp,%rbp
ffff800000106c75:	41 57                	push   %r15
ffff800000106c77:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106c7b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106c7b <do_x87_FPU_error+0xe>
ffff800000106c82:	49 bb 35 5a 00 00 00 	movabs $0x5a35,%r11
ffff800000106c89:	00 00 00 
ffff800000106c8c:	4d 01 da             	add    %r11,%r10
ffff800000106c8f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106c93:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106c97:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106c9e:	00 
ffff800000106c9f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ca3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ca9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106cad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106cb1:	48 8b 08             	mov    (%rax),%rcx
ffff800000106cb4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106cb8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cbc:	49 89 c9             	mov    %rcx,%r9
ffff800000106cbf:	49 89 d0             	mov    %rdx,%r8
ffff800000106cc2:	48 89 c1             	mov    %rax,%rcx
ffff800000106cc5:	48 b8 58 b8 ff ff ff 	movabs $0xffffffffffffb858,%rax
ffff800000106ccc:	ff ff ff 
ffff800000106ccf:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106cd3:	48 89 c2             	mov    %rax,%rdx
ffff800000106cd6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cdb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ce0:	4d 89 d7             	mov    %r10,%r15
ffff800000106ce3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ce8:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000106cef:	ff ff ff 
ffff800000106cf2:	4d 01 d3             	add    %r10,%r11
ffff800000106cf5:	41 ff d3             	call   *%r11
ffff800000106cf8:	90                   	nop
ffff800000106cf9:	eb fd                	jmp    ffff800000106cf8 <do_x87_FPU_error+0x8b>

ffff800000106cfb <do_alignment_check>:
ffff800000106cfb:	f3 0f 1e fa          	endbr64
ffff800000106cff:	55                   	push   %rbp
ffff800000106d00:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d03:	41 57                	push   %r15
ffff800000106d05:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d09:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d09 <do_alignment_check+0xe>
ffff800000106d10:	49 bb a7 59 00 00 00 	movabs $0x59a7,%r11
ffff800000106d17:	00 00 00 
ffff800000106d1a:	4d 01 da             	add    %r11,%r10
ffff800000106d1d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d21:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d25:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d2c:	00 
ffff800000106d2d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d31:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d37:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d3f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d42:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d46:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d4a:	49 89 c9             	mov    %rcx,%r9
ffff800000106d4d:	49 89 d0             	mov    %rdx,%r8
ffff800000106d50:	48 89 c1             	mov    %rax,%rcx
ffff800000106d53:	48 b8 a0 b8 ff ff ff 	movabs $0xffffffffffffb8a0,%rax
ffff800000106d5a:	ff ff ff 
ffff800000106d5d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d61:	48 89 c2             	mov    %rax,%rdx
ffff800000106d64:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d69:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d6e:	4d 89 d7             	mov    %r10,%r15
ffff800000106d71:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d76:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000106d7d:	ff ff ff 
ffff800000106d80:	4d 01 d3             	add    %r10,%r11
ffff800000106d83:	41 ff d3             	call   *%r11
ffff800000106d86:	90                   	nop
ffff800000106d87:	eb fd                	jmp    ffff800000106d86 <do_alignment_check+0x8b>

ffff800000106d89 <do_machine_check>:
ffff800000106d89:	f3 0f 1e fa          	endbr64
ffff800000106d8d:	55                   	push   %rbp
ffff800000106d8e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d91:	41 57                	push   %r15
ffff800000106d93:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d97:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d97 <do_machine_check+0xe>
ffff800000106d9e:	49 bb 19 59 00 00 00 	movabs $0x5919,%r11
ffff800000106da5:	00 00 00 
ffff800000106da8:	4d 01 da             	add    %r11,%r10
ffff800000106dab:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106daf:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106db3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106dba:	00 
ffff800000106dbb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106dbf:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106dc5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106dc9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106dcd:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dd0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106dd4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106dd8:	49 89 c9             	mov    %rcx,%r9
ffff800000106ddb:	49 89 d0             	mov    %rdx,%r8
ffff800000106dde:	48 89 c1             	mov    %rax,%rcx
ffff800000106de1:	48 b8 e8 b8 ff ff ff 	movabs $0xffffffffffffb8e8,%rax
ffff800000106de8:	ff ff ff 
ffff800000106deb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106def:	48 89 c2             	mov    %rax,%rdx
ffff800000106df2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106df7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dfc:	4d 89 d7             	mov    %r10,%r15
ffff800000106dff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e04:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000106e0b:	ff ff ff 
ffff800000106e0e:	4d 01 d3             	add    %r10,%r11
ffff800000106e11:	41 ff d3             	call   *%r11
ffff800000106e14:	90                   	nop
ffff800000106e15:	eb fd                	jmp    ffff800000106e14 <do_machine_check+0x8b>

ffff800000106e17 <do_SIMD_exception>:
ffff800000106e17:	f3 0f 1e fa          	endbr64
ffff800000106e1b:	55                   	push   %rbp
ffff800000106e1c:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e1f:	41 57                	push   %r15
ffff800000106e21:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e25:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e25 <do_SIMD_exception+0xe>
ffff800000106e2c:	49 bb 8b 58 00 00 00 	movabs $0x588b,%r11
ffff800000106e33:	00 00 00 
ffff800000106e36:	4d 01 da             	add    %r11,%r10
ffff800000106e39:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e3d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e41:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e48:	00 
ffff800000106e49:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e4d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e53:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e5b:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e5e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e62:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e66:	49 89 c9             	mov    %rcx,%r9
ffff800000106e69:	49 89 d0             	mov    %rdx,%r8
ffff800000106e6c:	48 89 c1             	mov    %rax,%rcx
ffff800000106e6f:	48 b8 30 b9 ff ff ff 	movabs $0xffffffffffffb930,%rax
ffff800000106e76:	ff ff ff 
ffff800000106e79:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e7d:	48 89 c2             	mov    %rax,%rdx
ffff800000106e80:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e85:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e8a:	4d 89 d7             	mov    %r10,%r15
ffff800000106e8d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e92:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000106e99:	ff ff ff 
ffff800000106e9c:	4d 01 d3             	add    %r10,%r11
ffff800000106e9f:	41 ff d3             	call   *%r11
ffff800000106ea2:	90                   	nop
ffff800000106ea3:	eb fd                	jmp    ffff800000106ea2 <do_SIMD_exception+0x8b>

ffff800000106ea5 <do_virtualization_exception>:
ffff800000106ea5:	f3 0f 1e fa          	endbr64
ffff800000106ea9:	55                   	push   %rbp
ffff800000106eaa:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ead:	41 57                	push   %r15
ffff800000106eaf:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106eb3:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106eb3 <do_virtualization_exception+0xe>
ffff800000106eba:	49 bb fd 57 00 00 00 	movabs $0x57fd,%r11
ffff800000106ec1:	00 00 00 
ffff800000106ec4:	4d 01 da             	add    %r11,%r10
ffff800000106ec7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ecb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ecf:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ed6:	00 
ffff800000106ed7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106edb:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ee1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ee5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ee9:	48 8b 08             	mov    (%rax),%rcx
ffff800000106eec:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ef0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ef4:	49 89 c9             	mov    %rcx,%r9
ffff800000106ef7:	49 89 d0             	mov    %rdx,%r8
ffff800000106efa:	48 89 c1             	mov    %rax,%rcx
ffff800000106efd:	48 b8 78 b9 ff ff ff 	movabs $0xffffffffffffb978,%rax
ffff800000106f04:	ff ff ff 
ffff800000106f07:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f0b:	48 89 c2             	mov    %rax,%rdx
ffff800000106f0e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f13:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f18:	4d 89 d7             	mov    %r10,%r15
ffff800000106f1b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f20:	49 bb 88 7e ff ff ff 	movabs $0xffffffffffff7e88,%r11
ffff800000106f27:	ff ff ff 
ffff800000106f2a:	4d 01 d3             	add    %r10,%r11
ffff800000106f2d:	41 ff d3             	call   *%r11
ffff800000106f30:	90                   	nop
ffff800000106f31:	eb fd                	jmp    ffff800000106f30 <do_virtualization_exception+0x8b>

ffff800000106f33 <sys_vector_init>:
ffff800000106f33:	f3 0f 1e fa          	endbr64
ffff800000106f37:	55                   	push   %rbp
ffff800000106f38:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f3b:	53                   	push   %rbx
ffff800000106f3c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106f3c <sys_vector_init+0x9>
ffff800000106f43:	49 bb 74 57 00 00 00 	movabs $0x5774,%r11
ffff800000106f4a:	00 00 00 
ffff800000106f4d:	4c 01 db             	add    %r11,%rbx
ffff800000106f50:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000106f57:	ff ff ff 
ffff800000106f5a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106f5e:	48 89 c2             	mov    %rax,%rdx
ffff800000106f61:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f66:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000106f6b:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000106f72:	ff ff ff 
ffff800000106f75:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f79:	ff d0                	call   *%rax
ffff800000106f7b:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000106f82:	ff ff ff 
ffff800000106f85:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106f89:	48 89 c2             	mov    %rax,%rdx
ffff800000106f8c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f91:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000106f96:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000106f9d:	ff ff ff 
ffff800000106fa0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fa4:	ff d0                	call   *%rax
ffff800000106fa6:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000106fad:	ff ff ff 
ffff800000106fb0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fb4:	48 89 c2             	mov    %rax,%rdx
ffff800000106fb7:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fbc:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000106fc1:	48 b8 5e 92 ff ff ff 	movabs $0xffffffffffff925e,%rax
ffff800000106fc8:	ff ff ff 
ffff800000106fcb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fcf:	ff d0                	call   *%rax
ffff800000106fd1:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000106fd8:	ff ff ff 
ffff800000106fdb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fdf:	48 89 c2             	mov    %rax,%rdx
ffff800000106fe2:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fe7:	bf 03 00 00 00       	mov    $0x3,%edi
ffff800000106fec:	48 b8 ba 93 ff ff ff 	movabs $0xffffffffffff93ba,%rax
ffff800000106ff3:	ff ff ff 
ffff800000106ff6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ffa:	ff d0                	call   *%rax
ffff800000106ffc:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107003:	ff ff ff 
ffff800000107006:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010700a:	48 89 c2             	mov    %rax,%rdx
ffff80000010700d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107012:	bf 04 00 00 00       	mov    $0x4,%edi
ffff800000107017:	48 b8 ba 93 ff ff ff 	movabs $0xffffffffffff93ba,%rax
ffff80000010701e:	ff ff ff 
ffff800000107021:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107025:	ff d0                	call   *%rax
ffff800000107027:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff80000010702e:	ff ff ff 
ffff800000107031:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107035:	48 89 c2             	mov    %rax,%rdx
ffff800000107038:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010703d:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107042:	48 b8 ba 93 ff ff ff 	movabs $0xffffffffffff93ba,%rax
ffff800000107049:	ff ff ff 
ffff80000010704c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107050:	ff d0                	call   *%rax
ffff800000107052:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff800000107059:	ff ff ff 
ffff80000010705c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107060:	48 89 c2             	mov    %rax,%rdx
ffff800000107063:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107068:	bf 06 00 00 00       	mov    $0x6,%edi
ffff80000010706d:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000107074:	ff ff ff 
ffff800000107077:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010707b:	ff d0                	call   *%rax
ffff80000010707d:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff800000107084:	ff ff ff 
ffff800000107087:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010708b:	48 89 c2             	mov    %rax,%rdx
ffff80000010708e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107093:	bf 07 00 00 00       	mov    $0x7,%edi
ffff800000107098:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff80000010709f:	ff ff ff 
ffff8000001070a2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070a6:	ff d0                	call   *%rax
ffff8000001070a8:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001070af:	ff ff ff 
ffff8000001070b2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070b6:	48 89 c2             	mov    %rax,%rdx
ffff8000001070b9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070be:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001070c3:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001070ca:	ff ff ff 
ffff8000001070cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d1:	ff d0                	call   *%rax
ffff8000001070d3:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001070da:	ff ff ff 
ffff8000001070dd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070e1:	48 89 c2             	mov    %rax,%rdx
ffff8000001070e4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070e9:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001070ee:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001070f5:	ff ff ff 
ffff8000001070f8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070fc:	ff d0                	call   *%rax
ffff8000001070fe:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff800000107105:	ff ff ff 
ffff800000107108:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010710c:	48 89 c2             	mov    %rax,%rdx
ffff80000010710f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107114:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff800000107119:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000107120:	ff ff ff 
ffff800000107123:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107127:	ff d0                	call   *%rax
ffff800000107129:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107130:	ff ff ff 
ffff800000107133:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107137:	48 89 c2             	mov    %rax,%rdx
ffff80000010713a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010713f:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107144:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff80000010714b:	ff ff ff 
ffff80000010714e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107152:	ff d0                	call   *%rax
ffff800000107154:	48 b8 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rax
ffff80000010715b:	ff ff ff 
ffff80000010715e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107162:	48 89 c2             	mov    %rax,%rdx
ffff800000107165:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010716a:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff80000010716f:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000107176:	ff ff ff 
ffff800000107179:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010717d:	ff d0                	call   *%rax
ffff80000010717f:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff800000107186:	ff ff ff 
ffff800000107189:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010718d:	48 89 c2             	mov    %rax,%rdx
ffff800000107190:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107195:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff80000010719a:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001071a1:	ff ff ff 
ffff8000001071a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071a8:	ff d0                	call   *%rax
ffff8000001071aa:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001071b1:	ff ff ff 
ffff8000001071b4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071b8:	48 89 c2             	mov    %rax,%rdx
ffff8000001071bb:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071c0:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001071c5:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001071cc:	ff ff ff 
ffff8000001071cf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071d3:	ff d0                	call   *%rax
ffff8000001071d5:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001071dc:	ff ff ff 
ffff8000001071df:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071e3:	48 89 c2             	mov    %rax,%rdx
ffff8000001071e6:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071eb:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001071f0:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001071f7:	ff ff ff 
ffff8000001071fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071fe:	ff d0                	call   *%rax
ffff800000107200:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff800000107207:	ff ff ff 
ffff80000010720a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010720e:	48 89 c2             	mov    %rax,%rdx
ffff800000107211:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107216:	bf 11 00 00 00       	mov    $0x11,%edi
ffff80000010721b:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000107222:	ff ff ff 
ffff800000107225:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107229:	ff d0                	call   *%rax
ffff80000010722b:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107232:	ff ff ff 
ffff800000107235:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107239:	48 89 c2             	mov    %rax,%rdx
ffff80000010723c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107241:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107246:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff80000010724d:	ff ff ff 
ffff800000107250:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107254:	ff d0                	call   *%rax
ffff800000107256:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff80000010725d:	ff ff ff 
ffff800000107260:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107264:	48 89 c2             	mov    %rax,%rdx
ffff800000107267:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010726c:	bf 13 00 00 00       	mov    $0x13,%edi
ffff800000107271:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff800000107278:	ff ff ff 
ffff80000010727b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010727f:	ff d0                	call   *%rax
ffff800000107281:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff800000107288:	ff ff ff 
ffff80000010728b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010728f:	48 89 c2             	mov    %rax,%rdx
ffff800000107292:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107297:	bf 14 00 00 00       	mov    $0x14,%edi
ffff80000010729c:	48 b8 0c 93 ff ff ff 	movabs $0xffffffffffff930c,%rax
ffff8000001072a3:	ff ff ff 
ffff8000001072a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072aa:	ff d0                	call   *%rax
ffff8000001072ac:	90                   	nop
ffff8000001072ad:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001072b1:	c9                   	leave
ffff8000001072b2:	c3                   	ret

ffff8000001072b3 <RESTORE_ALL>:
ffff8000001072b3:	41 5f                	pop    %r15
ffff8000001072b5:	41 5e                	pop    %r14
ffff8000001072b7:	41 5d                	pop    %r13
ffff8000001072b9:	41 5c                	pop    %r12
ffff8000001072bb:	41 5b                	pop    %r11
ffff8000001072bd:	41 5a                	pop    %r10
ffff8000001072bf:	41 59                	pop    %r9
ffff8000001072c1:	41 58                	pop    %r8
ffff8000001072c3:	5b                   	pop    %rbx
ffff8000001072c4:	59                   	pop    %rcx
ffff8000001072c5:	5a                   	pop    %rdx
ffff8000001072c6:	5e                   	pop    %rsi
ffff8000001072c7:	5f                   	pop    %rdi
ffff8000001072c8:	5d                   	pop    %rbp
ffff8000001072c9:	58                   	pop    %rax
ffff8000001072ca:	8e d8                	mov    %eax,%ds
ffff8000001072cc:	58                   	pop    %rax
ffff8000001072cd:	8e c0                	mov    %eax,%es
ffff8000001072cf:	58                   	pop    %rax
ffff8000001072d0:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001072d4:	48 cf                	iretq

ffff8000001072d6 <divide_error>:
ffff8000001072d6:	6a 00                	push   $0x0
ffff8000001072d8:	50                   	push   %rax
ffff8000001072d9:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105c49 <do_divide_error>
ffff8000001072e0:	48 87 04 24          	xchg   %rax,(%rsp)

ffff8000001072e4 <error_code>:
ffff8000001072e4:	50                   	push   %rax
ffff8000001072e5:	8c c0                	mov    %es,%eax
ffff8000001072e7:	50                   	push   %rax
ffff8000001072e8:	8c d8                	mov    %ds,%eax
ffff8000001072ea:	50                   	push   %rax
ffff8000001072eb:	48 31 c0             	xor    %rax,%rax
ffff8000001072ee:	55                   	push   %rbp
ffff8000001072ef:	57                   	push   %rdi
ffff8000001072f0:	56                   	push   %rsi
ffff8000001072f1:	52                   	push   %rdx
ffff8000001072f2:	51                   	push   %rcx
ffff8000001072f3:	53                   	push   %rbx
ffff8000001072f4:	41 50                	push   %r8
ffff8000001072f6:	41 51                	push   %r9
ffff8000001072f8:	41 52                	push   %r10
ffff8000001072fa:	41 53                	push   %r11
ffff8000001072fc:	41 54                	push   %r12
ffff8000001072fe:	41 55                	push   %r13
ffff800000107300:	41 56                	push   %r14
ffff800000107302:	41 57                	push   %r15
ffff800000107304:	fc                   	cld
ffff800000107305:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff80000010730c:	00 
ffff80000010730d:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000107314:	00 
ffff800000107315:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff80000010731c:	8e df                	mov    %edi,%ds
ffff80000010731e:	8e c7                	mov    %edi,%es
ffff800000107320:	48 89 e7             	mov    %rsp,%rdi
ffff800000107323:	ff d2                	call   *%rdx
ffff800000107325:	eb 00                	jmp    ffff800000107327 <ret_from_intr>

ffff800000107327 <ret_from_intr>:
ffff800000107327:	eb 8a                	jmp    ffff8000001072b3 <RESTORE_ALL>

ffff800000107329 <debug>:
ffff800000107329:	6a 00                	push   $0x0
ffff80000010732b:	50                   	push   %rax
ffff80000010732c:	48 8d 05 a4 e9 ff ff 	lea    -0x165c(%rip),%rax        # ffff800000105cd7 <do_debug>
ffff800000107333:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107337:	eb ab                	jmp    ffff8000001072e4 <error_code>

ffff800000107339 <nmi>:
ffff800000107339:	50                   	push   %rax
ffff80000010733a:	fc                   	cld
ffff80000010733b:	50                   	push   %rax
ffff80000010733c:	50                   	push   %rax
ffff80000010733d:	8c c0                	mov    %es,%eax
ffff80000010733f:	50                   	push   %rax
ffff800000107340:	8c d8                	mov    %ds,%eax
ffff800000107342:	50                   	push   %rax
ffff800000107343:	48 31 c0             	xor    %rax,%rax
ffff800000107346:	55                   	push   %rbp
ffff800000107347:	57                   	push   %rdi
ffff800000107348:	56                   	push   %rsi
ffff800000107349:	52                   	push   %rdx
ffff80000010734a:	51                   	push   %rcx
ffff80000010734b:	53                   	push   %rbx
ffff80000010734c:	41 50                	push   %r8
ffff80000010734e:	41 51                	push   %r9
ffff800000107350:	41 52                	push   %r10
ffff800000107352:	41 53                	push   %r11
ffff800000107354:	41 54                	push   %r12
ffff800000107356:	41 55                	push   %r13
ffff800000107358:	41 56                	push   %r14
ffff80000010735a:	41 57                	push   %r15
ffff80000010735c:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff800000107363:	8e da                	mov    %edx,%ds
ffff800000107365:	8e c2                	mov    %edx,%es
ffff800000107367:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff80000010736e:	48 89 e6             	mov    %rsp,%rsi
ffff800000107371:	e8 ef e9 ff ff       	call   ffff800000105d65 <do_nmi>
ffff800000107376:	e9 38 ff ff ff       	jmp    ffff8000001072b3 <RESTORE_ALL>

ffff80000010737b <invalid_TSS>:
ffff80000010737b:	50                   	push   %rax
ffff80000010737c:	48 8d 05 52 ee ff ff 	lea    -0x11ae(%rip),%rax        # ffff8000001061d5 <do_invalid_TSS>
ffff800000107383:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107387:	e9 58 ff ff ff       	jmp    ffff8000001072e4 <error_code>

ffff80000010738c <page_fault>:
ffff80000010738c:	50                   	push   %rax
ffff80000010738d:	48 8d 05 31 f6 ff ff 	lea    -0x9cf(%rip),%rax        # ffff8000001069c5 <do_page_fault>
ffff800000107394:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107398:	e9 47 ff ff ff       	jmp    ffff8000001072e4 <error_code>

ffff80000010739d <int3>:
ffff80000010739d:	6a 00                	push   $0x0
ffff80000010739f:	50                   	push   %rax
ffff8000001073a0:	48 8d 05 4c ea ff ff 	lea    -0x15b4(%rip),%rax        # ffff800000105df3 <do_int3>
ffff8000001073a7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073ab:	e9 34 ff ff ff       	jmp    ffff8000001072e4 <error_code>

ffff8000001073b0 <overflow>:
ffff8000001073b0:	6a 00                	push   $0x0
ffff8000001073b2:	50                   	push   %rax
ffff8000001073b3:	48 8d 05 c7 ea ff ff 	lea    -0x1539(%rip),%rax        # ffff800000105e81 <do_overflow>
ffff8000001073ba:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073be:	e9 21 ff ff ff       	jmp    ffff8000001072e4 <error_code>

ffff8000001073c3 <bounds>:
ffff8000001073c3:	6a 00                	push   $0x0
ffff8000001073c5:	50                   	push   %rax
ffff8000001073c6:	48 8d 05 42 eb ff ff 	lea    -0x14be(%rip),%rax        # ffff800000105f0f <do_bounds>
ffff8000001073cd:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073d1:	e9 0e ff ff ff       	jmp    ffff8000001072e4 <error_code>

ffff8000001073d6 <undefined_opcode>:
ffff8000001073d6:	6a 00                	push   $0x0
ffff8000001073d8:	50                   	push   %rax
ffff8000001073d9:	48 8d 05 bd eb ff ff 	lea    -0x1443(%rip),%rax        # ffff800000105f9d <do_undefined_opcode>
ffff8000001073e0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073e4:	e9 fb fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff8000001073e9 <dev_not_available>:
ffff8000001073e9:	6a 00                	push   $0x0
ffff8000001073eb:	50                   	push   %rax
ffff8000001073ec:	48 8d 05 38 ec ff ff 	lea    -0x13c8(%rip),%rax        # ffff80000010602b <do_dev_not_available>
ffff8000001073f3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073f7:	e9 e8 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff8000001073fc <double_fault>:
ffff8000001073fc:	50                   	push   %rax
ffff8000001073fd:	48 8d 05 b5 ec ff ff 	lea    -0x134b(%rip),%rax        # ffff8000001060b9 <do_double_fault>
ffff800000107404:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107408:	e9 d7 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff80000010740d <coprocessor_segment_overrun>:
ffff80000010740d:	6a 00                	push   $0x0
ffff80000010740f:	50                   	push   %rax
ffff800000107410:	48 8d 05 30 ed ff ff 	lea    -0x12d0(%rip),%rax        # ffff800000106147 <do_coprocessor_segment_overrun>
ffff800000107417:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010741b:	e9 c4 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107420 <segment_not_present>:
ffff800000107420:	50                   	push   %rax
ffff800000107421:	48 8d 05 a9 ef ff ff 	lea    -0x1057(%rip),%rax        # ffff8000001063d1 <do_segment_not_present>
ffff800000107428:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010742c:	e9 b3 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107431 <stack_segment_fault>:
ffff800000107431:	50                   	push   %rax
ffff800000107432:	48 8d 05 94 f1 ff ff 	lea    -0xe6c(%rip),%rax        # ffff8000001065cd <do_stack_segment_fault>
ffff800000107439:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010743d:	e9 a2 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107442 <general_protection>:
ffff800000107442:	50                   	push   %rax
ffff800000107443:	48 8d 05 7f f3 ff ff 	lea    -0xc81(%rip),%rax        # ffff8000001067c9 <do_general_protection>
ffff80000010744a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010744e:	e9 91 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107453 <x87_FPU_error>:
ffff800000107453:	6a 00                	push   $0x0
ffff800000107455:	50                   	push   %rax
ffff800000107456:	48 8d 05 10 f8 ff ff 	lea    -0x7f0(%rip),%rax        # ffff800000106c6d <do_x87_FPU_error>
ffff80000010745d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107461:	e9 7e fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107466 <alignment_check>:
ffff800000107466:	50                   	push   %rax
ffff800000107467:	48 8d 05 8d f8 ff ff 	lea    -0x773(%rip),%rax        # ffff800000106cfb <do_alignment_check>
ffff80000010746e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107472:	e9 6d fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff800000107477 <machine_check>:
ffff800000107477:	6a 00                	push   $0x0
ffff800000107479:	50                   	push   %rax
ffff80000010747a:	48 8d 05 08 f9 ff ff 	lea    -0x6f8(%rip),%rax        # ffff800000106d89 <do_machine_check>
ffff800000107481:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107485:	e9 5a fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff80000010748a <SIMD_exception>:
ffff80000010748a:	6a 00                	push   $0x0
ffff80000010748c:	50                   	push   %rax
ffff80000010748d:	48 8d 05 83 f9 ff ff 	lea    -0x67d(%rip),%rax        # ffff800000106e17 <do_SIMD_exception>
ffff800000107494:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107498:	e9 47 fe ff ff       	jmp    ffff8000001072e4 <error_code>

ffff80000010749d <virtualization_exception>:
ffff80000010749d:	6a 00                	push   $0x0
ffff80000010749f:	50                   	push   %rax
ffff8000001074a0:	48 8d 05 fe f9 ff ff 	lea    -0x602(%rip),%rax        # ffff800000106ea5 <do_virtualization_exception>
ffff8000001074a7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ab:	e9 34 fe ff ff       	jmp    ffff8000001072e4 <error_code>
