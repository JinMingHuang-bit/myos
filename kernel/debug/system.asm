
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 30 97 00 00 	lgdt   0x9730(%rip)        # ffff800000109748 <GDT_END>
ffff800000100018:	0f 01 1d 33 a7 00 00 	lidt   0xa733(%rip)        # ffff80000010a752 <IDT_END>
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
ffff800000100099:	48 8d 3d b2 96 00 00 	lea    0x96b2(%rip),%rdi        # ffff800000109752 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 9e a6 00 00 	lea    0xa69e(%rip),%rdx        # ffff80000010a75c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d c8 95 00 00 	lea    0x95c8(%rip),%rdi        # ffff8000001096c0 <GDT_Table>
ffff8000001000f8:	48 89 47 40          	mov    %rax,0x40(%rdi)
ffff8000001000fc:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000100100:	48 89 57 48          	mov    %rdx,0x48(%rdi)
ffff800000100104:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100110 <go_to_kernel>
ffff80000010010b:	6a 08                	push   $0x8
ffff80000010010d:	50                   	push   %rax
ffff80000010010e:	48 cb                	lretq

ffff800000100110 <go_to_kernel>:
ffff800000100110:	5a                   	pop    %rdx
ffff800000100111:	41 10 00             	adc    %al,(%r8)
ffff800000100114:	00                   	.byte 0
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
ffff800000100161:	e8 1c 44 00 00       	call   ffff800000104582 <color_printk>
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
ffff80000010400f:	49 bb 88 a8 00 00 00 	movabs $0xa888,%r11
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

ffff800000104131 <Get_gdt>:
ffff800000104131:	f3 0f 1e fa          	endbr64
ffff800000104135:	55                   	push   %rbp
ffff800000104136:	48 89 e5             	mov    %rsp,%rbp
ffff800000104139:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104139 <Get_gdt+0x8>
ffff800000104140:	49 bb 57 a7 00 00 00 	movabs $0xa757,%r11
ffff800000104147:	00 00 00 
ffff80000010414a:	4c 01 d8             	add    %r11,%rax
ffff80000010414d:	0f 20 d8             	mov    %cr3,%rax
ffff800000104150:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104154:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104158:	5d                   	pop    %rbp
ffff800000104159:	c3                   	ret

ffff80000010415a <Start_Kernel>:
ffff80000010415a:	f3 0f 1e fa          	endbr64
ffff80000010415e:	55                   	push   %rbp
ffff80000010415f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104162:	41 57                	push   %r15
ffff800000104164:	53                   	push   %rbx
ffff800000104165:	48 81 ec 10 03 00 00 	sub    $0x310,%rsp
ffff80000010416c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010416c <Start_Kernel+0x12>
ffff800000104173:	49 bb 24 a7 00 00 00 	movabs $0xa724,%r11
ffff80000010417a:	00 00 00 
ffff80000010417d:	4c 01 db             	add    %r11,%rbx
ffff800000104180:	0f 20 e0             	mov    %cr4,%rax
ffff800000104183:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104187:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
ffff80000010418e:	00 
ffff80000010418f:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
ffff800000104196:	00 
ffff800000104197:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010419b:	0f 22 e0             	mov    %rax,%cr4
ffff80000010419e:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff8000001041a5:	80 ff ff 
ffff8000001041a8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001041ac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041b3:	00 00 00 
ffff8000001041b6:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff8000001041bd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041c4:	00 00 00 
ffff8000001041c7:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff8000001041ce:	00 
ffff8000001041cf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041d6:	00 00 00 
ffff8000001041d9:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001041e0:	00 
ffff8000001041e1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041e8:	00 00 00 
ffff8000001041eb:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001041f2:	00 
ffff8000001041f3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041fa:	00 00 00 
ffff8000001041fd:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff800000104204:	00 
ffff800000104205:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010420c:	00 00 00 
ffff80000010420f:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff800000104216:	00 
ffff800000104217:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010421e:	00 00 00 
ffff800000104221:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff800000104226:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010422d:	00 00 00 
ffff800000104230:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff800000104233:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010423a:	00 00 00 
ffff80000010423d:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104241:	0f af c2             	imul   %edx,%eax
ffff800000104244:	c1 e0 02             	shl    $0x2,%eax
ffff800000104247:	48 98                	cltq
ffff800000104249:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104250:	00 00 00 
ffff800000104253:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff800000104258:	b8 40 00 00 00       	mov    $0x40,%eax
ffff80000010425d:	0f 00 d8             	ltr    %eax
ffff800000104260:	68 00 7c 00 00       	push   $0x7c00
ffff800000104265:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010426c:	ff 
ffff80000010426d:	68 00 7c 00 00       	push   $0x7c00
ffff800000104272:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104279:	ff 
ffff80000010427a:	68 00 7c 00 00       	push   $0x7c00
ffff80000010427f:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104286:	ff 
ffff800000104287:	68 00 7c 00 00       	push   $0x7c00
ffff80000010428c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104293:	ff 
ffff800000104294:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff80000010429b:	80 ff ff 
ffff80000010429e:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff8000001042a5:	80 ff ff 
ffff8000001042a8:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042af:	80 ff ff 
ffff8000001042b2:	48 89 c1             	mov    %rax,%rcx
ffff8000001042b5:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042bc:	80 ff ff 
ffff8000001042bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001042c2:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042c9:	80 ff ff 
ffff8000001042cc:	48 89 c6             	mov    %rax,%rsi
ffff8000001042cf:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042d6:	80 ff ff 
ffff8000001042d9:	48 89 c7             	mov    %rax,%rdi
ffff8000001042dc:	48 b8 70 57 ff ff ff 	movabs $0xffffffffffff5770,%rax
ffff8000001042e3:	ff ff ff 
ffff8000001042e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042ea:	ff d0                	call   *%rax
ffff8000001042ec:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042f0:	49 89 df             	mov    %rbx,%r15
ffff8000001042f3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f8:	48 ba ed 86 ff ff ff 	movabs $0xffffffffffff86ed,%rdx
ffff8000001042ff:	ff ff ff 
ffff800000104302:	48 01 da             	add    %rbx,%rdx
ffff800000104305:	ff d2                	call   *%rdx
ffff800000104307:	48 8d 95 e0 fc ff ff 	lea    -0x320(%rbp),%rdx
ffff80000010430e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104313:	b9 5f 00 00 00       	mov    $0x5f,%ecx
ffff800000104318:	48 89 d7             	mov    %rdx,%rdi
ffff80000010431b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
ffff80000010431e:	48 b8 88 9b ff ff ff 	movabs $0xffffffffffff9b88,%rax
ffff800000104325:	ff ff ff 
ffff800000104328:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010432c:	48 89 c2             	mov    %rax,%rdx
ffff80000010432f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104334:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104339:	49 89 df             	mov    %rbx,%r15
ffff80000010433c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104341:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000104348:	ff ff ff 
ffff80000010434b:	48 01 d9             	add    %rbx,%rcx
ffff80000010434e:	ff d1                	call   *%rcx
ffff800000104350:	48 b8 99 9b ff ff ff 	movabs $0xffffffffffff9b99,%rax
ffff800000104357:	ff ff ff 
ffff80000010435a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010435e:	48 89 c2             	mov    %rax,%rdx
ffff800000104361:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104366:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010436b:	49 89 df             	mov    %rbx,%r15
ffff80000010436e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104373:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010437a:	ff ff ff 
ffff80000010437d:	48 01 d9             	add    %rbx,%rcx
ffff800000104380:	ff d1                	call   *%rcx
ffff800000104382:	48 b8 a8 9b ff ff ff 	movabs $0xffffffffffff9ba8,%rax
ffff800000104389:	ff ff ff 
ffff80000010438c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104390:	48 89 c2             	mov    %rax,%rdx
ffff800000104393:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104398:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010439d:	49 89 df             	mov    %rbx,%r15
ffff8000001043a0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043a5:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001043ac:	ff ff ff 
ffff8000001043af:	48 01 d9             	add    %rbx,%rcx
ffff8000001043b2:	ff d1                	call   *%rcx
ffff8000001043b4:	49 89 df             	mov    %rbx,%r15
ffff8000001043b7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043bc:	48 ba 85 8f ff ff ff 	movabs $0xffffffffffff8f85,%rdx
ffff8000001043c3:	ff ff ff 
ffff8000001043c6:	48 01 da             	add    %rbx,%rdx
ffff8000001043c9:	ff d2                	call   *%rdx
ffff8000001043cb:	48 b8 00 9c ff ff ff 	movabs $0xffffffffffff9c00,%rax
ffff8000001043d2:	ff ff ff 
ffff8000001043d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043d9:	48 89 c2             	mov    %rax,%rdx
ffff8000001043dc:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043e1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043e6:	49 89 df             	mov    %rbx,%r15
ffff8000001043e9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043ee:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001043f5:	ff ff ff 
ffff8000001043f8:	48 01 d9             	add    %rbx,%rcx
ffff8000001043fb:	ff d1                	call   *%rcx
ffff8000001043fd:	48 b8 38 9c ff ff ff 	movabs $0xffffffffffff9c38,%rax
ffff800000104404:	ff ff ff 
ffff800000104407:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010440b:	48 89 c2             	mov    %rax,%rdx
ffff80000010440e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104413:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104418:	49 89 df             	mov    %rbx,%r15
ffff80000010441b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104420:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000104427:	ff ff ff 
ffff80000010442a:	48 01 d9             	add    %rbx,%rcx
ffff80000010442d:	ff d1                	call   *%rcx
ffff80000010442f:	90                   	nop
ffff800000104430:	eb fd                	jmp    ffff80000010442f <Start_Kernel+0x2d5>

ffff800000104432 <Cstrlen>:
ffff800000104432:	f3 0f 1e fa          	endbr64
ffff800000104436:	55                   	push   %rbp
ffff800000104437:	48 89 e5             	mov    %rsp,%rbp
ffff80000010443a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010443a <Cstrlen+0x8>
ffff800000104441:	49 bb 56 a4 00 00 00 	movabs $0xa456,%r11
ffff800000104448:	00 00 00 
ffff80000010444b:	4c 01 d8             	add    %r11,%rax
ffff80000010444e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104452:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104456:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010445a:	eb 05                	jmp    ffff800000104461 <Cstrlen+0x2f>
ffff80000010445c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104461:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104465:	0f b6 00             	movzbl (%rax),%eax
ffff800000104468:	84 c0                	test   %al,%al
ffff80000010446a:	75 f0                	jne    ffff80000010445c <Cstrlen+0x2a>
ffff80000010446c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104470:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff800000104474:	5d                   	pop    %rbp
ffff800000104475:	c3                   	ret

ffff800000104476 <putchar>:
ffff800000104476:	f3 0f 1e fa          	endbr64
ffff80000010447a:	55                   	push   %rbp
ffff80000010447b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010447e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010447e <putchar+0x8>
ffff800000104485:	49 bb 12 a4 00 00 00 	movabs $0xa412,%r11
ffff80000010448c:	00 00 00 
ffff80000010448f:	4c 01 d8             	add    %r11,%rax
ffff800000104492:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104496:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104499:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff80000010449c:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff80000010449f:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff8000001044a3:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff8000001044a7:	8b 55 10             	mov    0x10(%rbp),%edx
ffff8000001044aa:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff8000001044ad:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001044b4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001044bb:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff8000001044c2:	00 
ffff8000001044c3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001044ca:	00 
ffff8000001044cb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001044d2:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001044d6:	48 63 d2             	movslq %edx,%rdx
ffff8000001044d9:	48 89 d1             	mov    %rdx,%rcx
ffff8000001044dc:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001044e0:	48 ba 50 bf ff ff ff 	movabs $0xffffffffffffbf50,%rdx
ffff8000001044e7:	ff ff ff 
ffff8000001044ea:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001044ee:	48 01 c8             	add    %rcx,%rax
ffff8000001044f1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001044f5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001044fc:	eb 7a                	jmp    ffff800000104578 <putchar+0x102>
ffff8000001044fe:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff800000104501:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104504:	01 d0                	add    %edx,%eax
ffff800000104506:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff80000010450a:	48 63 d0             	movslq %eax,%rdx
ffff80000010450d:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104510:	48 98                	cltq
ffff800000104512:	48 01 d0             	add    %rdx,%rax
ffff800000104515:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff80000010451c:	00 
ffff80000010451d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104521:	48 01 d0             	add    %rdx,%rax
ffff800000104524:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104528:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff80000010452f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104536:	eb 31                	jmp    ffff800000104569 <putchar+0xf3>
ffff800000104538:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff80000010453b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010453f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104542:	0f b6 c0             	movzbl %al,%eax
ffff800000104545:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104548:	85 c0                	test   %eax,%eax
ffff80000010454a:	74 0b                	je     ffff800000104557 <putchar+0xe1>
ffff80000010454c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104550:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff800000104553:	89 10                	mov    %edx,(%rax)
ffff800000104555:	eb 09                	jmp    ffff800000104560 <putchar+0xea>
ffff800000104557:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010455b:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff80000010455e:	89 10                	mov    %edx,(%rax)
ffff800000104560:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff800000104565:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104569:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff80000010456d:	7e c9                	jle    ffff800000104538 <putchar+0xc2>
ffff80000010456f:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104574:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104578:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff80000010457c:	7e 80                	jle    ffff8000001044fe <putchar+0x88>
ffff80000010457e:	90                   	nop
ffff80000010457f:	90                   	nop
ffff800000104580:	5d                   	pop    %rbp
ffff800000104581:	c3                   	ret

ffff800000104582 <color_printk>:
ffff800000104582:	f3 0f 1e fa          	endbr64
ffff800000104586:	55                   	push   %rbp
ffff800000104587:	48 89 e5             	mov    %rsp,%rbp
ffff80000010458a:	53                   	push   %rbx
ffff80000010458b:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104592:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104592 <color_printk+0x10>
ffff800000104599:	49 bb fe a2 00 00 00 	movabs $0xa2fe,%r11
ffff8000001045a0:	00 00 00 
ffff8000001045a3:	4c 01 db             	add    %r11,%rbx
ffff8000001045a6:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff8000001045ac:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff8000001045b2:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff8000001045b9:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001045c0:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001045c7:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001045ce:	84 c0                	test   %al,%al
ffff8000001045d0:	74 23                	je     ffff8000001045f5 <color_printk+0x73>
ffff8000001045d2:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001045d9:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001045dd:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001045e1:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001045e5:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001045e9:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001045ed:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001045f1:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001045f5:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001045fc:	00 00 00 
ffff8000001045ff:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104606:	00 00 00 
ffff800000104609:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104610:	00 00 00 
ffff800000104613:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff80000010461a:	00 00 00 
ffff80000010461d:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff800000104624:	00 00 00 
ffff800000104627:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff80000010462b:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff800000104632:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104639:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104640:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff800000104647:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff80000010464e:	48 89 c6             	mov    %rax,%rsi
ffff800000104651:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104658:	00 00 00 
ffff80000010465b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010465f:	48 89 c7             	mov    %rax,%rdi
ffff800000104662:	48 b8 72 67 ff ff ff 	movabs $0xffffffffffff6772,%rax
ffff800000104669:	ff ff ff 
ffff80000010466c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104670:	ff d0                	call   *%rax
ffff800000104672:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104678:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff80000010467f:	00 00 00 
ffff800000104682:	e9 81 04 00 00       	jmp    ffff800000104b08 <color_printk+0x586>
ffff800000104687:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff80000010468e:	7e 0c                	jle    ffff80000010469c <color_printk+0x11a>
ffff800000104690:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104697:	e9 45 02 00 00       	jmp    ffff8000001048e1 <color_printk+0x35f>
ffff80000010469c:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001046a2:	48 63 d0             	movslq %eax,%rdx
ffff8000001046a5:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046ac:	00 00 00 
ffff8000001046af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046b3:	48 01 d0             	add    %rdx,%rax
ffff8000001046b6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046b9:	3c 0a                	cmp    $0xa,%al
ffff8000001046bb:	75 36                	jne    ffff8000001046f3 <color_printk+0x171>
ffff8000001046bd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046c4:	00 00 00 
ffff8000001046c7:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001046cb:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001046ce:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046d5:	00 00 00 
ffff8000001046d8:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001046dc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046e3:	00 00 00 
ffff8000001046e6:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001046ed:	00 
ffff8000001046ee:	e9 6a 03 00 00       	jmp    ffff800000104a5d <color_printk+0x4db>
ffff8000001046f3:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001046f9:	48 63 d0             	movslq %eax,%rdx
ffff8000001046fc:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104703:	00 00 00 
ffff800000104706:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010470a:	48 01 d0             	add    %rdx,%rax
ffff80000010470d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104710:	3c 08                	cmp    $0x8,%al
ffff800000104712:	0f 85 78 01 00 00    	jne    ffff800000104890 <color_printk+0x30e>
ffff800000104718:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010471f:	00 00 00 
ffff800000104722:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104726:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104729:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104730:	00 00 00 
ffff800000104733:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104737:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010473e:	00 00 00 
ffff800000104741:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104745:	85 c0                	test   %eax,%eax
ffff800000104747:	0f 89 b2 00 00 00    	jns    ffff8000001047ff <color_printk+0x27d>
ffff80000010474d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104754:	00 00 00 
ffff800000104757:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff80000010475a:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104761:	00 00 00 
ffff800000104764:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104768:	99                   	cltd
ffff800000104769:	f7 fe                	idiv   %esi
ffff80000010476b:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010476e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104775:	00 00 00 
ffff800000104778:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010477c:	0f af c2             	imul   %edx,%eax
ffff80000010477f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104786:	00 00 00 
ffff800000104789:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff80000010478d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104794:	00 00 00 
ffff800000104797:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010479b:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010479e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047a5:	00 00 00 
ffff8000001047a8:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001047ac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047b3:	00 00 00 
ffff8000001047b6:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001047ba:	85 c0                	test   %eax,%eax
ffff8000001047bc:	79 41                	jns    ffff8000001047ff <color_printk+0x27d>
ffff8000001047be:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047c5:	00 00 00 
ffff8000001047c8:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001047cc:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047d3:	00 00 00 
ffff8000001047d6:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001047da:	99                   	cltd
ffff8000001047db:	f7 ff                	idiv   %edi
ffff8000001047dd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047e0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047e7:	00 00 00 
ffff8000001047ea:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047ee:	0f af c2             	imul   %edx,%eax
ffff8000001047f1:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047f8:	00 00 00 
ffff8000001047fb:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001047ff:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104806:	00 00 00 
ffff800000104809:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010480d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104814:	00 00 00 
ffff800000104817:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff80000010481b:	89 d1                	mov    %edx,%ecx
ffff80000010481d:	0f af c8             	imul   %eax,%ecx
ffff800000104820:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104827:	00 00 00 
ffff80000010482a:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff80000010482e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104835:	00 00 00 
ffff800000104838:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010483c:	0f af d0             	imul   %eax,%edx
ffff80000010483f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104846:	00 00 00 
ffff800000104849:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff80000010484c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104853:	00 00 00 
ffff800000104856:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010485b:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104862:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104868:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010486c:	6a 20                	push   $0x20
ffff80000010486e:	45 89 c1             	mov    %r8d,%r9d
ffff800000104871:	41 89 f8             	mov    %edi,%r8d
ffff800000104874:	48 89 c7             	mov    %rax,%rdi
ffff800000104877:	48 b8 e6 5b ff ff ff 	movabs $0xffffffffffff5be6,%rax
ffff80000010487e:	ff ff ff 
ffff800000104881:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104885:	ff d0                	call   *%rax
ffff800000104887:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010488b:	e9 cd 01 00 00       	jmp    ffff800000104a5d <color_printk+0x4db>
ffff800000104890:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104896:	48 63 d0             	movslq %eax,%rdx
ffff800000104899:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001048a0:	00 00 00 
ffff8000001048a3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001048a7:	48 01 d0             	add    %rdx,%rax
ffff8000001048aa:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048ad:	3c 09                	cmp    $0x9,%al
ffff8000001048af:	0f 85 e3 00 00 00    	jne    ffff800000104998 <color_printk+0x416>
ffff8000001048b5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048bc:	00 00 00 
ffff8000001048bf:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001048c3:	83 c0 08             	add    $0x8,%eax
ffff8000001048c6:	83 e0 f8             	and    $0xfffffff8,%eax
ffff8000001048c9:	89 c2                	mov    %eax,%edx
ffff8000001048cb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048d2:	00 00 00 
ffff8000001048d5:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001048d9:	29 c2                	sub    %eax,%edx
ffff8000001048db:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff8000001048e1:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001048e8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048ef:	00 00 00 
ffff8000001048f2:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048f6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048fd:	00 00 00 
ffff800000104900:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104904:	89 d1                	mov    %edx,%ecx
ffff800000104906:	0f af c8             	imul   %eax,%ecx
ffff800000104909:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104910:	00 00 00 
ffff800000104913:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104917:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010491e:	00 00 00 
ffff800000104921:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104925:	0f af d0             	imul   %eax,%edx
ffff800000104928:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010492f:	00 00 00 
ffff800000104932:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104935:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010493c:	00 00 00 
ffff80000010493f:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104944:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff80000010494b:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104951:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104955:	6a 20                	push   $0x20
ffff800000104957:	45 89 c1             	mov    %r8d,%r9d
ffff80000010495a:	41 89 f8             	mov    %edi,%r8d
ffff80000010495d:	48 89 c7             	mov    %rax,%rdi
ffff800000104960:	48 b8 e6 5b ff ff ff 	movabs $0xffffffffffff5be6,%rax
ffff800000104967:	ff ff ff 
ffff80000010496a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010496e:	ff d0                	call   *%rax
ffff800000104970:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104974:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010497b:	00 00 00 
ffff80000010497e:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104982:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104985:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010498c:	00 00 00 
ffff80000010498f:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104993:	e9 c5 00 00 00       	jmp    ffff800000104a5d <color_printk+0x4db>
ffff800000104998:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010499e:	48 63 d0             	movslq %eax,%rdx
ffff8000001049a1:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049a8:	00 00 00 
ffff8000001049ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049af:	48 01 d0             	add    %rdx,%rax
ffff8000001049b2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001049b5:	0f b6 f8             	movzbl %al,%edi
ffff8000001049b8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049bf:	00 00 00 
ffff8000001049c2:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001049c6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049cd:	00 00 00 
ffff8000001049d0:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001049d4:	89 d1                	mov    %edx,%ecx
ffff8000001049d6:	0f af c8             	imul   %eax,%ecx
ffff8000001049d9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049e0:	00 00 00 
ffff8000001049e3:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001049e7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ee:	00 00 00 
ffff8000001049f1:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049f5:	0f af d0             	imul   %eax,%edx
ffff8000001049f8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ff:	00 00 00 
ffff800000104a02:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104a05:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a0c:	00 00 00 
ffff800000104a0f:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104a14:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104a1b:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104a22:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104a26:	57                   	push   %rdi
ffff800000104a27:	48 89 c7             	mov    %rax,%rdi
ffff800000104a2a:	48 b8 e6 5b ff ff ff 	movabs $0xffffffffffff5be6,%rax
ffff800000104a31:	ff ff ff 
ffff800000104a34:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a38:	ff d0                	call   *%rax
ffff800000104a3a:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104a3e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a45:	00 00 00 
ffff800000104a48:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a4c:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a4f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a56:	00 00 00 
ffff800000104a59:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a5d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a64:	00 00 00 
ffff800000104a67:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104a6b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a72:	00 00 00 
ffff800000104a75:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a78:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a7f:	00 00 00 
ffff800000104a82:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a86:	99                   	cltd
ffff800000104a87:	f7 fe                	idiv   %esi
ffff800000104a89:	39 c1                	cmp    %eax,%ecx
ffff800000104a8b:	7c 31                	jl     ffff800000104abe <color_printk+0x53c>
ffff800000104a8d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a94:	00 00 00 
ffff800000104a97:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a9b:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a9e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aa5:	00 00 00 
ffff800000104aa8:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104aac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ab3:	00 00 00 
ffff800000104ab6:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104abd:	00 
ffff800000104abe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ac5:	00 00 00 
ffff800000104ac8:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104acc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ad3:	00 00 00 
ffff800000104ad6:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104ada:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104ae1:	00 00 00 
ffff800000104ae4:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104ae8:	99                   	cltd
ffff800000104ae9:	f7 ff                	idiv   %edi
ffff800000104aeb:	39 c1                	cmp    %eax,%ecx
ffff800000104aed:	7c 12                	jl     ffff800000104b01 <color_printk+0x57f>
ffff800000104aef:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104af6:	00 00 00 
ffff800000104af9:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104b00:	00 
ffff800000104b01:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104b08:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b0e:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104b14:	0f 8c 6d fb ff ff    	jl     ffff800000104687 <color_printk+0x105>
ffff800000104b1a:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104b21:	0f 85 60 fb ff ff    	jne    ffff800000104687 <color_printk+0x105>
ffff800000104b27:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104b2d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104b31:	c9                   	leave
ffff800000104b32:	c3                   	ret

ffff800000104b33 <clear_screen>:
ffff800000104b33:	f3 0f 1e fa          	endbr64
ffff800000104b37:	55                   	push   %rbp
ffff800000104b38:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b3b:	53                   	push   %rbx
ffff800000104b3c:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104b40:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104b40 <clear_screen+0xd>
ffff800000104b47:	49 bb 50 9d 00 00 00 	movabs $0x9d50,%r11
ffff800000104b4e:	00 00 00 
ffff800000104b51:	4c 01 db             	add    %r11,%rbx
ffff800000104b54:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104b57:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104b5a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b61:	00 00 00 
ffff800000104b64:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b67:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b6e:	00 00 00 
ffff800000104b71:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104b75:	99                   	cltd
ffff800000104b76:	f7 f9                	idiv   %ecx
ffff800000104b78:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104b7b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b82:	00 00 00 
ffff800000104b85:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b89:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b90:	00 00 00 
ffff800000104b93:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104b97:	99                   	cltd
ffff800000104b98:	f7 fe                	idiv   %esi
ffff800000104b9a:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104b9d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104ba4:	e9 83 00 00 00       	jmp    ffff800000104c2c <clear_screen+0xf9>
ffff800000104ba9:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104bb0:	eb 6e                	jmp    ffff800000104c20 <clear_screen+0xed>
ffff800000104bb2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bb9:	00 00 00 
ffff800000104bbc:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104bc0:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104bc4:	89 c1                	mov    %eax,%ecx
ffff800000104bc6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bcd:	00 00 00 
ffff800000104bd0:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104bd4:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104bd8:	89 c2                	mov    %eax,%edx
ffff800000104bda:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104be1:	00 00 00 
ffff800000104be4:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104be7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bee:	00 00 00 
ffff800000104bf1:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104bf6:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104bfa:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104bfd:	6a 20                	push   $0x20
ffff800000104bff:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c02:	41 89 f8             	mov    %edi,%r8d
ffff800000104c05:	48 89 c7             	mov    %rax,%rdi
ffff800000104c08:	48 b8 e6 5b ff ff ff 	movabs $0xffffffffffff5be6,%rax
ffff800000104c0f:	ff ff ff 
ffff800000104c12:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c16:	ff d0                	call   *%rax
ffff800000104c18:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104c1c:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104c20:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104c23:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104c26:	7c 8a                	jl     ffff800000104bb2 <clear_screen+0x7f>
ffff800000104c28:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104c2c:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104c2f:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104c32:	0f 8c 71 ff ff ff    	jl     ffff800000104ba9 <clear_screen+0x76>
ffff800000104c38:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c3f:	00 00 00 
ffff800000104c42:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104c49:	00 
ffff800000104c4a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c51:	00 00 00 
ffff800000104c54:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104c5b:	00 
ffff800000104c5c:	90                   	nop
ffff800000104c5d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104c61:	c9                   	leave
ffff800000104c62:	c3                   	ret

ffff800000104c63 <skip_atoi2>:
ffff800000104c63:	f3 0f 1e fa          	endbr64
ffff800000104c67:	55                   	push   %rbp
ffff800000104c68:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c6b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104c6b <skip_atoi2+0x8>
ffff800000104c72:	49 bb 25 9c 00 00 00 	movabs $0x9c25,%r11
ffff800000104c79:	00 00 00 
ffff800000104c7c:	4c 01 d8             	add    %r11,%rax
ffff800000104c7f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104c83:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c8a:	eb 39                	jmp    ffff800000104cc5 <skip_atoi2+0x62>
ffff800000104c8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c90:	48 8b 00             	mov    (%rax),%rax
ffff800000104c93:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c96:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104c99:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c9d:	48 8b 00             	mov    (%rax),%rax
ffff800000104ca0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ca4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ca8:	48 89 10             	mov    %rdx,(%rax)
ffff800000104cab:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104cae:	89 d0                	mov    %edx,%eax
ffff800000104cb0:	c1 e0 02             	shl    $0x2,%eax
ffff800000104cb3:	01 d0                	add    %edx,%eax
ffff800000104cb5:	01 c0                	add    %eax,%eax
ffff800000104cb7:	89 c2                	mov    %eax,%edx
ffff800000104cb9:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104cbd:	83 e8 30             	sub    $0x30,%eax
ffff800000104cc0:	01 d0                	add    %edx,%eax
ffff800000104cc2:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104cc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cc9:	48 8b 00             	mov    (%rax),%rax
ffff800000104ccc:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ccf:	3c 2f                	cmp    $0x2f,%al
ffff800000104cd1:	7e 0e                	jle    ffff800000104ce1 <skip_atoi2+0x7e>
ffff800000104cd3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cd7:	48 8b 00             	mov    (%rax),%rax
ffff800000104cda:	0f b6 00             	movzbl (%rax),%eax
ffff800000104cdd:	3c 39                	cmp    $0x39,%al
ffff800000104cdf:	7e ab                	jle    ffff800000104c8c <skip_atoi2+0x29>
ffff800000104ce1:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104ce4:	5d                   	pop    %rbp
ffff800000104ce5:	c3                   	ret

ffff800000104ce6 <skip_atoi>:
ffff800000104ce6:	f3 0f 1e fa          	endbr64
ffff800000104cea:	55                   	push   %rbp
ffff800000104ceb:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cee:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cee <skip_atoi+0x8>
ffff800000104cf5:	49 bb a2 9b 00 00 00 	movabs $0x9ba2,%r11
ffff800000104cfc:	00 00 00 
ffff800000104cff:	4c 01 d8             	add    %r11,%rax
ffff800000104d02:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d06:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104d0d:	eb 2c                	jmp    ffff800000104d3b <skip_atoi+0x55>
ffff800000104d0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d13:	48 8b 00             	mov    (%rax),%rax
ffff800000104d16:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d1e:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d21:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d24:	89 d0                	mov    %edx,%eax
ffff800000104d26:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d29:	01 d0                	add    %edx,%eax
ffff800000104d2b:	01 c0                	add    %eax,%eax
ffff800000104d2d:	89 c2                	mov    %eax,%edx
ffff800000104d2f:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d33:	83 e8 30             	sub    $0x30,%eax
ffff800000104d36:	01 d0                	add    %edx,%eax
ffff800000104d38:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d3f:	48 8b 00             	mov    (%rax),%rax
ffff800000104d42:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d45:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d48:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104d4c:	7e 13                	jle    ffff800000104d61 <skip_atoi+0x7b>
ffff800000104d4e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d52:	48 8b 00             	mov    (%rax),%rax
ffff800000104d55:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d58:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d5b:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104d5f:	7e ae                	jle    ffff800000104d0f <skip_atoi+0x29>
ffff800000104d61:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d64:	5d                   	pop    %rbp
ffff800000104d65:	c3                   	ret

ffff800000104d66 <number>:
ffff800000104d66:	f3 0f 1e fa          	endbr64
ffff800000104d6a:	55                   	push   %rbp
ffff800000104d6b:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d6e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d6e <number+0x8>
ffff800000104d75:	49 bb 22 9b 00 00 00 	movabs $0x9b22,%r11
ffff800000104d7c:	00 00 00 
ffff800000104d7f:	4c 01 d8             	add    %r11,%rax
ffff800000104d82:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104d86:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104d8a:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104d8d:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104d90:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104d94:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104d98:	48 ba 60 9c ff ff ff 	movabs $0xffffffffffff9c60,%rdx
ffff800000104d9f:	ff ff ff 
ffff800000104da2:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104da6:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104daa:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104db1:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104db4:	83 e2 40             	and    $0x40,%edx
ffff800000104db7:	85 d2                	test   %edx,%edx
ffff800000104db9:	74 12                	je     ffff800000104dcd <number+0x67>
ffff800000104dbb:	48 ba 88 9c ff ff ff 	movabs $0xffffffffffff9c88,%rdx
ffff800000104dc2:	ff ff ff 
ffff800000104dc5:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104dc9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104dcd:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104dd0:	83 e0 10             	and    $0x10,%eax
ffff800000104dd3:	85 c0                	test   %eax,%eax
ffff800000104dd5:	74 04                	je     ffff800000104ddb <number+0x75>
ffff800000104dd7:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104ddb:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104ddf:	7e 06                	jle    ffff800000104de7 <number+0x81>
ffff800000104de1:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104de5:	7e 0a                	jle    ffff800000104df1 <number+0x8b>
ffff800000104de7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104dec:	e9 0f 02 00 00       	jmp    ffff800000105000 <number+0x29a>
ffff800000104df1:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104df4:	83 e0 01             	and    $0x1,%eax
ffff800000104df7:	85 c0                	test   %eax,%eax
ffff800000104df9:	74 07                	je     ffff800000104e02 <number+0x9c>
ffff800000104dfb:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104e00:	eb 05                	jmp    ffff800000104e07 <number+0xa1>
ffff800000104e02:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104e07:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104e0a:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104e0e:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e11:	83 e0 02             	and    $0x2,%eax
ffff800000104e14:	85 c0                	test   %eax,%eax
ffff800000104e16:	74 11                	je     ffff800000104e29 <number+0xc3>
ffff800000104e18:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e1d:	79 0a                	jns    ffff800000104e29 <number+0xc3>
ffff800000104e1f:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104e23:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104e27:	eb 1d                	jmp    ffff800000104e46 <number+0xe0>
ffff800000104e29:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e2c:	83 e0 04             	and    $0x4,%eax
ffff800000104e2f:	85 c0                	test   %eax,%eax
ffff800000104e31:	75 0b                	jne    ffff800000104e3e <number+0xd8>
ffff800000104e33:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e36:	c1 e0 02             	shl    $0x2,%eax
ffff800000104e39:	83 e0 20             	and    $0x20,%eax
ffff800000104e3c:	eb 05                	jmp    ffff800000104e43 <number+0xdd>
ffff800000104e3e:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104e43:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104e46:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104e4a:	74 04                	je     ffff800000104e50 <number+0xea>
ffff800000104e4c:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e50:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e53:	83 e0 20             	and    $0x20,%eax
ffff800000104e56:	85 c0                	test   %eax,%eax
ffff800000104e58:	74 16                	je     ffff800000104e70 <number+0x10a>
ffff800000104e5a:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104e5e:	75 06                	jne    ffff800000104e66 <number+0x100>
ffff800000104e60:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104e64:	eb 0a                	jmp    ffff800000104e70 <number+0x10a>
ffff800000104e66:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104e6a:	75 04                	jne    ffff800000104e70 <number+0x10a>
ffff800000104e6c:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e70:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e75:	75 4b                	jne    ffff800000104ec2 <number+0x15c>
ffff800000104e77:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e7a:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e7d:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e80:	48 98                	cltq
ffff800000104e82:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104e87:	eb 40                	jmp    ffff800000104ec9 <number+0x163>
ffff800000104e89:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104e8c:	48 63 c8             	movslq %eax,%rcx
ffff800000104e8f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e93:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104e98:	48 f7 f1             	div    %rcx
ffff800000104e9b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e9f:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104ea2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104ea5:	48 63 d0             	movslq %eax,%rdx
ffff800000104ea8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104eac:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104eb0:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104eb3:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104eb6:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104eb9:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104ebc:	48 98                	cltq
ffff800000104ebe:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104ec2:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104ec7:	75 c0                	jne    ffff800000104e89 <number+0x123>
ffff800000104ec9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ecc:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104ecf:	7e 06                	jle    ffff800000104ed7 <number+0x171>
ffff800000104ed1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ed4:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104ed7:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104eda:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104edd:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ee0:	83 e0 11             	and    $0x11,%eax
ffff800000104ee3:	85 c0                	test   %eax,%eax
ffff800000104ee5:	75 1e                	jne    ffff800000104f05 <number+0x19f>
ffff800000104ee7:	eb 0f                	jmp    ffff800000104ef8 <number+0x192>
ffff800000104ee9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104eed:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ef1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ef5:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104ef8:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104efb:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104efe:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f01:	85 c0                	test   %eax,%eax
ffff800000104f03:	7f e4                	jg     ffff800000104ee9 <number+0x183>
ffff800000104f05:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104f09:	74 12                	je     ffff800000104f1d <number+0x1b7>
ffff800000104f0b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f0f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f13:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f17:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104f1b:	88 10                	mov    %dl,(%rax)
ffff800000104f1d:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f20:	83 e0 20             	and    $0x20,%eax
ffff800000104f23:	85 c0                	test   %eax,%eax
ffff800000104f25:	74 45                	je     ffff800000104f6c <number+0x206>
ffff800000104f27:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104f2b:	75 11                	jne    ffff800000104f3e <number+0x1d8>
ffff800000104f2d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f31:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f35:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f39:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f3c:	eb 2e                	jmp    ffff800000104f6c <number+0x206>
ffff800000104f3e:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104f42:	75 28                	jne    ffff800000104f6c <number+0x206>
ffff800000104f44:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f48:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f4c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f50:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f53:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f57:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104f5b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f5f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f63:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f67:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f6a:	88 10                	mov    %dl,(%rax)
ffff800000104f6c:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f6f:	83 e0 10             	and    $0x10,%eax
ffff800000104f72:	85 c0                	test   %eax,%eax
ffff800000104f74:	75 32                	jne    ffff800000104fa8 <number+0x242>
ffff800000104f76:	eb 12                	jmp    ffff800000104f8a <number+0x224>
ffff800000104f78:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f7c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f80:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f84:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104f88:	88 10                	mov    %dl,(%rax)
ffff800000104f8a:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f8d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f90:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f93:	85 c0                	test   %eax,%eax
ffff800000104f95:	7f e1                	jg     ffff800000104f78 <number+0x212>
ffff800000104f97:	eb 0f                	jmp    ffff800000104fa8 <number+0x242>
ffff800000104f99:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f9d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fa1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fa5:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fa8:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104fab:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fae:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104fb1:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104fb4:	7c e3                	jl     ffff800000104f99 <number+0x233>
ffff800000104fb6:	eb 19                	jmp    ffff800000104fd1 <number+0x26b>
ffff800000104fb8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fbc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fc0:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fc4:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104fc7:	48 63 d2             	movslq %edx,%rdx
ffff800000104fca:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104fcf:	88 10                	mov    %dl,(%rax)
ffff800000104fd1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104fd4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fd7:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104fda:	85 c0                	test   %eax,%eax
ffff800000104fdc:	7f da                	jg     ffff800000104fb8 <number+0x252>
ffff800000104fde:	eb 0f                	jmp    ffff800000104fef <number+0x289>
ffff800000104fe0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fe4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fe8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fec:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104fef:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104ff2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ff5:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104ff8:	85 c0                	test   %eax,%eax
ffff800000104ffa:	7f e4                	jg     ffff800000104fe0 <number+0x27a>
ffff800000104ffc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105000:	5d                   	pop    %rbp
ffff800000105001:	c3                   	ret

ffff800000105002 <vsprintf>:
ffff800000105002:	f3 0f 1e fa          	endbr64
ffff800000105006:	55                   	push   %rbp
ffff800000105007:	48 89 e5             	mov    %rsp,%rbp
ffff80000010500a:	53                   	push   %rbx
ffff80000010500b:	48 83 ec 68          	sub    $0x68,%rsp
ffff80000010500f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010500f <vsprintf+0xd>
ffff800000105016:	49 bb 81 98 00 00 00 	movabs $0x9881,%r11
ffff80000010501d:	00 00 00 
ffff800000105020:	4c 01 db             	add    %r11,%rbx
ffff800000105023:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105027:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff80000010502b:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff80000010502f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105033:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105037:	e9 f8 08 00 00       	jmp    ffff800000105934 <vsprintf+0x932>
ffff80000010503c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105040:	0f b6 00             	movzbl (%rax),%eax
ffff800000105043:	3c 25                	cmp    $0x25,%al
ffff800000105045:	74 1a                	je     ffff800000105061 <vsprintf+0x5f>
ffff800000105047:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010504b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010504f:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105053:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105057:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010505a:	88 10                	mov    %dl,(%rax)
ffff80000010505c:	e9 c7 08 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105061:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000105068:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010506c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105070:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105074:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105078:	0f b6 00             	movzbl (%rax),%eax
ffff80000010507b:	0f be c0             	movsbl %al,%eax
ffff80000010507e:	83 e8 20             	sub    $0x20,%eax
ffff800000105081:	83 f8 10             	cmp    $0x10,%eax
ffff800000105084:	77 40                	ja     ffff8000001050c6 <vsprintf+0xc4>
ffff800000105086:	89 c0                	mov    %eax,%eax
ffff800000105088:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010508f:	00 
ffff800000105090:	48 8d 05 a9 34 00 00 	lea    0x34a9(%rip),%rax        # ffff800000108540 <.LC1+0x28>
ffff800000105097:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010509b:	48 8d 15 9e 34 00 00 	lea    0x349e(%rip),%rdx        # ffff800000108540 <.LC1+0x28>
ffff8000001050a2:	48 01 d0             	add    %rdx,%rax
ffff8000001050a5:	3e ff e0             	notrack jmp *%rax
ffff8000001050a8:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001050ac:	eb ba                	jmp    ffff800000105068 <vsprintf+0x66>
ffff8000001050ae:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff8000001050b2:	eb b4                	jmp    ffff800000105068 <vsprintf+0x66>
ffff8000001050b4:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff8000001050b8:	eb ae                	jmp    ffff800000105068 <vsprintf+0x66>
ffff8000001050ba:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff8000001050be:	eb a8                	jmp    ffff800000105068 <vsprintf+0x66>
ffff8000001050c0:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001050c4:	eb a2                	jmp    ffff800000105068 <vsprintf+0x66>
ffff8000001050c6:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff8000001050cd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050d1:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050d4:	3c 2f                	cmp    $0x2f,%al
ffff8000001050d6:	7e 27                	jle    ffff8000001050ff <vsprintf+0xfd>
ffff8000001050d8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050dc:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050df:	3c 39                	cmp    $0x39,%al
ffff8000001050e1:	7f 1c                	jg     ffff8000001050ff <vsprintf+0xfd>
ffff8000001050e3:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001050e7:	48 89 c7             	mov    %rax,%rdi
ffff8000001050ea:	48 b8 56 64 ff ff ff 	movabs $0xffffffffffff6456,%rax
ffff8000001050f1:	ff ff ff 
ffff8000001050f4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050f8:	ff d0                	call   *%rax
ffff8000001050fa:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001050fd:	eb 6c                	jmp    ffff80000010516b <vsprintf+0x169>
ffff8000001050ff:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105103:	0f b6 00             	movzbl (%rax),%eax
ffff800000105106:	3c 2a                	cmp    $0x2a,%al
ffff800000105108:	75 61                	jne    ffff80000010516b <vsprintf+0x169>
ffff80000010510a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010510e:	48 83 c0 01          	add    $0x1,%rax
ffff800000105112:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105116:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010511a:	8b 00                	mov    (%rax),%eax
ffff80000010511c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010511f:	77 24                	ja     ffff800000105145 <vsprintf+0x143>
ffff800000105121:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105125:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105129:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010512d:	8b 00                	mov    (%rax),%eax
ffff80000010512f:	89 c0                	mov    %eax,%eax
ffff800000105131:	48 01 d0             	add    %rdx,%rax
ffff800000105134:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105138:	8b 12                	mov    (%rdx),%edx
ffff80000010513a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010513d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105141:	89 0a                	mov    %ecx,(%rdx)
ffff800000105143:	eb 14                	jmp    ffff800000105159 <vsprintf+0x157>
ffff800000105145:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105149:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010514d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105151:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105155:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105159:	8b 00                	mov    (%rax),%eax
ffff80000010515b:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff80000010515e:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105162:	79 07                	jns    ffff80000010516b <vsprintf+0x169>
ffff800000105164:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000105167:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010516b:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000105172:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105176:	0f b6 00             	movzbl (%rax),%eax
ffff800000105179:	3c 2e                	cmp    $0x2e,%al
ffff80000010517b:	0f 85 aa 00 00 00    	jne    ffff80000010522b <vsprintf+0x229>
ffff800000105181:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105185:	48 83 c0 01          	add    $0x1,%rax
ffff800000105189:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010518d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105191:	0f b6 00             	movzbl (%rax),%eax
ffff800000105194:	3c 2f                	cmp    $0x2f,%al
ffff800000105196:	7e 27                	jle    ffff8000001051bf <vsprintf+0x1bd>
ffff800000105198:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010519c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010519f:	3c 39                	cmp    $0x39,%al
ffff8000001051a1:	7f 1c                	jg     ffff8000001051bf <vsprintf+0x1bd>
ffff8000001051a3:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001051a7:	48 89 c7             	mov    %rax,%rdi
ffff8000001051aa:	48 b8 56 64 ff ff ff 	movabs $0xffffffffffff6456,%rax
ffff8000001051b1:	ff ff ff 
ffff8000001051b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051b8:	ff d0                	call   *%rax
ffff8000001051ba:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001051bd:	eb 5f                	jmp    ffff80000010521e <vsprintf+0x21c>
ffff8000001051bf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051c3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051c6:	3c 2a                	cmp    $0x2a,%al
ffff8000001051c8:	75 54                	jne    ffff80000010521e <vsprintf+0x21c>
ffff8000001051ca:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051ce:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051d2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051d6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051da:	8b 00                	mov    (%rax),%eax
ffff8000001051dc:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001051df:	77 24                	ja     ffff800000105205 <vsprintf+0x203>
ffff8000001051e1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051e5:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001051e9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051ed:	8b 00                	mov    (%rax),%eax
ffff8000001051ef:	89 c0                	mov    %eax,%eax
ffff8000001051f1:	48 01 d0             	add    %rdx,%rax
ffff8000001051f4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051f8:	8b 12                	mov    (%rdx),%edx
ffff8000001051fa:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051fd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105201:	89 0a                	mov    %ecx,(%rdx)
ffff800000105203:	eb 14                	jmp    ffff800000105219 <vsprintf+0x217>
ffff800000105205:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105209:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010520d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105211:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105215:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105219:	8b 00                	mov    (%rax),%eax
ffff80000010521b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010521e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105222:	79 07                	jns    ffff80000010522b <vsprintf+0x229>
ffff800000105224:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff80000010522b:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff800000105232:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105236:	0f b6 00             	movzbl (%rax),%eax
ffff800000105239:	3c 68                	cmp    $0x68,%al
ffff80000010523b:	74 21                	je     ffff80000010525e <vsprintf+0x25c>
ffff80000010523d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105241:	0f b6 00             	movzbl (%rax),%eax
ffff800000105244:	3c 6c                	cmp    $0x6c,%al
ffff800000105246:	74 16                	je     ffff80000010525e <vsprintf+0x25c>
ffff800000105248:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010524c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010524f:	3c 4c                	cmp    $0x4c,%al
ffff800000105251:	74 0b                	je     ffff80000010525e <vsprintf+0x25c>
ffff800000105253:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105257:	0f b6 00             	movzbl (%rax),%eax
ffff80000010525a:	3c 7a                	cmp    $0x7a,%al
ffff80000010525c:	75 19                	jne    ffff800000105277 <vsprintf+0x275>
ffff80000010525e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105262:	0f b6 00             	movzbl (%rax),%eax
ffff800000105265:	0f be c0             	movsbl %al,%eax
ffff800000105268:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff80000010526b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010526f:	48 83 c0 01          	add    $0x1,%rax
ffff800000105273:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105277:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010527b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010527e:	0f be c0             	movsbl %al,%eax
ffff800000105281:	83 e8 25             	sub    $0x25,%eax
ffff800000105284:	83 f8 53             	cmp    $0x53,%eax
ffff800000105287:	0f 87 5d 06 00 00    	ja     ffff8000001058ea <vsprintf+0x8e8>
ffff80000010528d:	89 c0                	mov    %eax,%eax
ffff80000010528f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105296:	00 
ffff800000105297:	48 8d 05 2a 33 00 00 	lea    0x332a(%rip),%rax        # ffff8000001085c8 <.LC1+0xb0>
ffff80000010529e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff8000001052a2:	48 8d 15 1f 33 00 00 	lea    0x331f(%rip),%rdx        # ffff8000001085c8 <.LC1+0xb0>
ffff8000001052a9:	48 01 d0             	add    %rdx,%rax
ffff8000001052ac:	3e ff e0             	notrack jmp *%rax
ffff8000001052af:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001052b2:	83 e0 10             	and    $0x10,%eax
ffff8000001052b5:	85 c0                	test   %eax,%eax
ffff8000001052b7:	75 1b                	jne    ffff8000001052d4 <vsprintf+0x2d2>
ffff8000001052b9:	eb 0f                	jmp    ffff8000001052ca <vsprintf+0x2c8>
ffff8000001052bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052bf:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052c3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052c7:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052ca:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001052ce:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001052d2:	7f e7                	jg     ffff8000001052bb <vsprintf+0x2b9>
ffff8000001052d4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052d8:	8b 00                	mov    (%rax),%eax
ffff8000001052da:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001052dd:	77 24                	ja     ffff800000105303 <vsprintf+0x301>
ffff8000001052df:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052e3:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052e7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052eb:	8b 00                	mov    (%rax),%eax
ffff8000001052ed:	89 c0                	mov    %eax,%eax
ffff8000001052ef:	48 01 d0             	add    %rdx,%rax
ffff8000001052f2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052f6:	8b 12                	mov    (%rdx),%edx
ffff8000001052f8:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052fb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052ff:	89 0a                	mov    %ecx,(%rdx)
ffff800000105301:	eb 14                	jmp    ffff800000105317 <vsprintf+0x315>
ffff800000105303:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105307:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010530b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010530f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105313:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105317:	8b 08                	mov    (%rax),%ecx
ffff800000105319:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010531d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105321:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105325:	89 ca                	mov    %ecx,%edx
ffff800000105327:	88 10                	mov    %dl,(%rax)
ffff800000105329:	eb 0f                	jmp    ffff80000010533a <vsprintf+0x338>
ffff80000010532b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010532f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105333:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105337:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010533a:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff80000010533e:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105342:	7f e7                	jg     ffff80000010532b <vsprintf+0x329>
ffff800000105344:	e9 df 05 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105349:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010534d:	8b 00                	mov    (%rax),%eax
ffff80000010534f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105352:	77 24                	ja     ffff800000105378 <vsprintf+0x376>
ffff800000105354:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105358:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010535c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105360:	8b 00                	mov    (%rax),%eax
ffff800000105362:	89 c0                	mov    %eax,%eax
ffff800000105364:	48 01 d0             	add    %rdx,%rax
ffff800000105367:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010536b:	8b 12                	mov    (%rdx),%edx
ffff80000010536d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105370:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105374:	89 0a                	mov    %ecx,(%rdx)
ffff800000105376:	eb 14                	jmp    ffff80000010538c <vsprintf+0x38a>
ffff800000105378:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010537c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105380:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105384:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105388:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010538c:	48 8b 00             	mov    (%rax),%rax
ffff80000010538f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105393:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105398:	75 08                	jne    ffff8000001053a2 <vsprintf+0x3a0>
ffff80000010539a:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001053a1:	00 
ffff8000001053a2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001053a6:	48 89 c7             	mov    %rax,%rdi
ffff8000001053a9:	48 b8 a2 5b ff ff ff 	movabs $0xffffffffffff5ba2,%rax
ffff8000001053b0:	ff ff ff 
ffff8000001053b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053b7:	ff d0                	call   *%rax
ffff8000001053b9:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001053bc:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001053c0:	79 08                	jns    ffff8000001053ca <vsprintf+0x3c8>
ffff8000001053c2:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001053c5:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001053c8:	eb 0e                	jmp    ffff8000001053d8 <vsprintf+0x3d6>
ffff8000001053ca:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001053cd:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001053d0:	7e 06                	jle    ffff8000001053d8 <vsprintf+0x3d6>
ffff8000001053d2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001053d5:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001053d8:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001053db:	83 e0 10             	and    $0x10,%eax
ffff8000001053de:	85 c0                	test   %eax,%eax
ffff8000001053e0:	75 1f                	jne    ffff800000105401 <vsprintf+0x3ff>
ffff8000001053e2:	eb 0f                	jmp    ffff8000001053f3 <vsprintf+0x3f1>
ffff8000001053e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053e8:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053ec:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053f0:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053f3:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001053f6:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001053f9:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001053fc:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001053ff:	7c e3                	jl     ffff8000001053e4 <vsprintf+0x3e2>
ffff800000105401:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff800000105408:	eb 21                	jmp    ffff80000010542b <vsprintf+0x429>
ffff80000010540a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010540e:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000105412:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105416:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010541a:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010541e:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105422:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105425:	88 10                	mov    %dl,(%rax)
ffff800000105427:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff80000010542b:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff80000010542e:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105431:	7c d7                	jl     ffff80000010540a <vsprintf+0x408>
ffff800000105433:	eb 0f                	jmp    ffff800000105444 <vsprintf+0x442>
ffff800000105435:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105439:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010543d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105441:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105444:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105447:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010544a:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010544d:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105450:	7c e3                	jl     ffff800000105435 <vsprintf+0x433>
ffff800000105452:	e9 d1 04 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105457:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010545b:	0f 85 82 00 00 00    	jne    ffff8000001054e3 <vsprintf+0x4e1>
ffff800000105461:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105465:	8b 00                	mov    (%rax),%eax
ffff800000105467:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010546a:	77 24                	ja     ffff800000105490 <vsprintf+0x48e>
ffff80000010546c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105470:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105474:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105478:	8b 00                	mov    (%rax),%eax
ffff80000010547a:	89 c0                	mov    %eax,%eax
ffff80000010547c:	48 01 d0             	add    %rdx,%rax
ffff80000010547f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105483:	8b 12                	mov    (%rdx),%edx
ffff800000105485:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105488:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010548c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010548e:	eb 14                	jmp    ffff8000001054a4 <vsprintf+0x4a2>
ffff800000105490:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105494:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105498:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010549c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054a0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054a4:	48 8b 00             	mov    (%rax),%rax
ffff8000001054a7:	48 89 c7             	mov    %rax,%rdi
ffff8000001054aa:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001054ad:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001054b0:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001054b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054b7:	41 89 f1             	mov    %esi,%r9d
ffff8000001054ba:	41 89 c8             	mov    %ecx,%r8d
ffff8000001054bd:	89 d1                	mov    %edx,%ecx
ffff8000001054bf:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001054c4:	48 89 fe             	mov    %rdi,%rsi
ffff8000001054c7:	48 89 c7             	mov    %rax,%rdi
ffff8000001054ca:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff8000001054d1:	ff ff ff 
ffff8000001054d4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054d8:	ff d0                	call   *%rax
ffff8000001054da:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001054de:	e9 45 04 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff8000001054e3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054e7:	8b 00                	mov    (%rax),%eax
ffff8000001054e9:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054ec:	77 24                	ja     ffff800000105512 <vsprintf+0x510>
ffff8000001054ee:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054f2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054f6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054fa:	8b 00                	mov    (%rax),%eax
ffff8000001054fc:	89 c0                	mov    %eax,%eax
ffff8000001054fe:	48 01 d0             	add    %rdx,%rax
ffff800000105501:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105505:	8b 12                	mov    (%rdx),%edx
ffff800000105507:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010550a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010550e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105510:	eb 14                	jmp    ffff800000105526 <vsprintf+0x524>
ffff800000105512:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105516:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010551a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010551e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105522:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105526:	8b 00                	mov    (%rax),%eax
ffff800000105528:	89 c7                	mov    %eax,%edi
ffff80000010552a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010552d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105530:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105533:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105537:	41 89 f1             	mov    %esi,%r9d
ffff80000010553a:	41 89 c8             	mov    %ecx,%r8d
ffff80000010553d:	89 d1                	mov    %edx,%ecx
ffff80000010553f:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105544:	48 89 fe             	mov    %rdi,%rsi
ffff800000105547:	48 89 c7             	mov    %rax,%rdi
ffff80000010554a:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff800000105551:	ff ff ff 
ffff800000105554:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105558:	ff d0                	call   *%rax
ffff80000010555a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010555e:	e9 c5 03 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105563:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff800000105567:	75 0b                	jne    ffff800000105574 <vsprintf+0x572>
ffff800000105569:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105570:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105574:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105578:	8b 00                	mov    (%rax),%eax
ffff80000010557a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010557d:	77 24                	ja     ffff8000001055a3 <vsprintf+0x5a1>
ffff80000010557f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105583:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105587:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010558b:	8b 00                	mov    (%rax),%eax
ffff80000010558d:	89 c0                	mov    %eax,%eax
ffff80000010558f:	48 01 d0             	add    %rdx,%rax
ffff800000105592:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105596:	8b 12                	mov    (%rdx),%edx
ffff800000105598:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010559b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010559f:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055a1:	eb 14                	jmp    ffff8000001055b7 <vsprintf+0x5b5>
ffff8000001055a3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055a7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055ab:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055af:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055b3:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055b7:	48 8b 00             	mov    (%rax),%rax
ffff8000001055ba:	48 89 c7             	mov    %rax,%rdi
ffff8000001055bd:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001055c0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055c3:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055ca:	41 89 f1             	mov    %esi,%r9d
ffff8000001055cd:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055d0:	89 d1                	mov    %edx,%ecx
ffff8000001055d2:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001055d7:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055da:	48 89 c7             	mov    %rax,%rdi
ffff8000001055dd:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff8000001055e4:	ff ff ff 
ffff8000001055e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055eb:	ff d0                	call   *%rax
ffff8000001055ed:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055f1:	e9 32 03 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff8000001055f6:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001055fa:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055fe:	0f 85 82 00 00 00    	jne    ffff800000105686 <vsprintf+0x684>
ffff800000105604:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105608:	8b 00                	mov    (%rax),%eax
ffff80000010560a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010560d:	77 24                	ja     ffff800000105633 <vsprintf+0x631>
ffff80000010560f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105613:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105617:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010561b:	8b 00                	mov    (%rax),%eax
ffff80000010561d:	89 c0                	mov    %eax,%eax
ffff80000010561f:	48 01 d0             	add    %rdx,%rax
ffff800000105622:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105626:	8b 12                	mov    (%rdx),%edx
ffff800000105628:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010562b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010562f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105631:	eb 14                	jmp    ffff800000105647 <vsprintf+0x645>
ffff800000105633:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105637:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010563b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010563f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105643:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105647:	48 8b 00             	mov    (%rax),%rax
ffff80000010564a:	48 89 c7             	mov    %rax,%rdi
ffff80000010564d:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105650:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105653:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105656:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010565a:	41 89 f1             	mov    %esi,%r9d
ffff80000010565d:	41 89 c8             	mov    %ecx,%r8d
ffff800000105660:	89 d1                	mov    %edx,%ecx
ffff800000105662:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105667:	48 89 fe             	mov    %rdi,%rsi
ffff80000010566a:	48 89 c7             	mov    %rax,%rdi
ffff80000010566d:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff800000105674:	ff ff ff 
ffff800000105677:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010567b:	ff d0                	call   *%rax
ffff80000010567d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105681:	e9 a2 02 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105686:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010568a:	8b 00                	mov    (%rax),%eax
ffff80000010568c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010568f:	77 24                	ja     ffff8000001056b5 <vsprintf+0x6b3>
ffff800000105691:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105695:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105699:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010569d:	8b 00                	mov    (%rax),%eax
ffff80000010569f:	89 c0                	mov    %eax,%eax
ffff8000001056a1:	48 01 d0             	add    %rdx,%rax
ffff8000001056a4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056a8:	8b 12                	mov    (%rdx),%edx
ffff8000001056aa:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001056ad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056b1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056b3:	eb 14                	jmp    ffff8000001056c9 <vsprintf+0x6c7>
ffff8000001056b5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056b9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056bd:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056c1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056c5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056c9:	8b 00                	mov    (%rax),%eax
ffff8000001056cb:	89 c7                	mov    %eax,%edi
ffff8000001056cd:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001056d0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001056d3:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001056d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056da:	41 89 f1             	mov    %esi,%r9d
ffff8000001056dd:	41 89 c8             	mov    %ecx,%r8d
ffff8000001056e0:	89 d1                	mov    %edx,%ecx
ffff8000001056e2:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056e7:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056ea:	48 89 c7             	mov    %rax,%rdi
ffff8000001056ed:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff8000001056f4:	ff ff ff 
ffff8000001056f7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056fb:	ff d0                	call   *%rax
ffff8000001056fd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105701:	e9 22 02 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105706:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff80000010570a:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010570e:	0f 85 82 00 00 00    	jne    ffff800000105796 <vsprintf+0x794>
ffff800000105714:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105718:	8b 00                	mov    (%rax),%eax
ffff80000010571a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010571d:	77 24                	ja     ffff800000105743 <vsprintf+0x741>
ffff80000010571f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105723:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105727:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010572b:	8b 00                	mov    (%rax),%eax
ffff80000010572d:	89 c0                	mov    %eax,%eax
ffff80000010572f:	48 01 d0             	add    %rdx,%rax
ffff800000105732:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105736:	8b 12                	mov    (%rdx),%edx
ffff800000105738:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010573b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010573f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105741:	eb 14                	jmp    ffff800000105757 <vsprintf+0x755>
ffff800000105743:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105747:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010574b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010574f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105753:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105757:	48 8b 00             	mov    (%rax),%rax
ffff80000010575a:	48 89 c7             	mov    %rax,%rdi
ffff80000010575d:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105760:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105763:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105766:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010576a:	41 89 f1             	mov    %esi,%r9d
ffff80000010576d:	41 89 c8             	mov    %ecx,%r8d
ffff800000105770:	89 d1                	mov    %edx,%ecx
ffff800000105772:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105777:	48 89 fe             	mov    %rdi,%rsi
ffff80000010577a:	48 89 c7             	mov    %rax,%rdi
ffff80000010577d:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff800000105784:	ff ff ff 
ffff800000105787:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010578b:	ff d0                	call   *%rax
ffff80000010578d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105791:	e9 92 01 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105796:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010579a:	8b 00                	mov    (%rax),%eax
ffff80000010579c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010579f:	77 24                	ja     ffff8000001057c5 <vsprintf+0x7c3>
ffff8000001057a1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057a5:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057a9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057ad:	8b 00                	mov    (%rax),%eax
ffff8000001057af:	89 c0                	mov    %eax,%eax
ffff8000001057b1:	48 01 d0             	add    %rdx,%rax
ffff8000001057b4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057b8:	8b 12                	mov    (%rdx),%edx
ffff8000001057ba:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057bd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057c1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057c3:	eb 14                	jmp    ffff8000001057d9 <vsprintf+0x7d7>
ffff8000001057c5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057c9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001057cd:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001057d1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057d5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001057d9:	8b 00                	mov    (%rax),%eax
ffff8000001057db:	89 c7                	mov    %eax,%edi
ffff8000001057dd:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057e0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057e3:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057e6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057ea:	41 89 f1             	mov    %esi,%r9d
ffff8000001057ed:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057f0:	89 d1                	mov    %edx,%ecx
ffff8000001057f2:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057f7:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057fa:	48 89 c7             	mov    %rax,%rdi
ffff8000001057fd:	48 b8 d6 64 ff ff ff 	movabs $0xffffffffffff64d6,%rax
ffff800000105804:	ff ff ff 
ffff800000105807:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010580b:	ff d0                	call   *%rax
ffff80000010580d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105811:	e9 12 01 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff800000105816:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010581a:	75 61                	jne    ffff80000010587d <vsprintf+0x87b>
ffff80000010581c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105820:	8b 00                	mov    (%rax),%eax
ffff800000105822:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105825:	77 24                	ja     ffff80000010584b <vsprintf+0x849>
ffff800000105827:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010582b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010582f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105833:	8b 00                	mov    (%rax),%eax
ffff800000105835:	89 c0                	mov    %eax,%eax
ffff800000105837:	48 01 d0             	add    %rdx,%rax
ffff80000010583a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010583e:	8b 12                	mov    (%rdx),%edx
ffff800000105840:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105843:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105847:	89 0a                	mov    %ecx,(%rdx)
ffff800000105849:	eb 14                	jmp    ffff80000010585f <vsprintf+0x85d>
ffff80000010584b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010584f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105853:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105857:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010585b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010585f:	48 8b 00             	mov    (%rax),%rax
ffff800000105862:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105866:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010586a:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010586e:	48 89 c2             	mov    %rax,%rdx
ffff800000105871:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105875:	48 89 10             	mov    %rdx,(%rax)
ffff800000105878:	e9 ab 00 00 00       	jmp    ffff800000105928 <vsprintf+0x926>
ffff80000010587d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105881:	8b 00                	mov    (%rax),%eax
ffff800000105883:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105886:	77 24                	ja     ffff8000001058ac <vsprintf+0x8aa>
ffff800000105888:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010588c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105890:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105894:	8b 00                	mov    (%rax),%eax
ffff800000105896:	89 c0                	mov    %eax,%eax
ffff800000105898:	48 01 d0             	add    %rdx,%rax
ffff80000010589b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010589f:	8b 12                	mov    (%rdx),%edx
ffff8000001058a1:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001058a4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058a8:	89 0a                	mov    %ecx,(%rdx)
ffff8000001058aa:	eb 14                	jmp    ffff8000001058c0 <vsprintf+0x8be>
ffff8000001058ac:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058b0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058b4:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058b8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058bc:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058c0:	48 8b 00             	mov    (%rax),%rax
ffff8000001058c3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001058c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058cb:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001058cf:	89 c2                	mov    %eax,%edx
ffff8000001058d1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001058d5:	89 10                	mov    %edx,(%rax)
ffff8000001058d7:	eb 4f                	jmp    ffff800000105928 <vsprintf+0x926>
ffff8000001058d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058dd:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058e1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058e5:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058e8:	eb 3e                	jmp    ffff800000105928 <vsprintf+0x926>
ffff8000001058ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058ee:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058f2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058f6:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058f9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058fd:	0f b6 00             	movzbl (%rax),%eax
ffff800000105900:	84 c0                	test   %al,%al
ffff800000105902:	74 17                	je     ffff80000010591b <vsprintf+0x919>
ffff800000105904:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105908:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010590c:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105910:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105914:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105917:	88 10                	mov    %dl,(%rax)
ffff800000105919:	eb 0c                	jmp    ffff800000105927 <vsprintf+0x925>
ffff80000010591b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010591f:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105923:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105927:	90                   	nop
ffff800000105928:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010592c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105930:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105934:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105938:	0f b6 00             	movzbl (%rax),%eax
ffff80000010593b:	84 c0                	test   %al,%al
ffff80000010593d:	0f 85 f9 f6 ff ff    	jne    ffff80000010503c <vsprintf+0x3a>
ffff800000105943:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105947:	c6 00 00             	movb   $0x0,(%rax)
ffff80000010594a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010594e:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105952:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105956:	c9                   	leave
ffff800000105957:	c3                   	ret

ffff800000105958 <set_intr_gate>:
ffff800000105958:	f3 0f 1e fa          	endbr64
ffff80000010595c:	55                   	push   %rbp
ffff80000010595d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105960:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105960 <set_intr_gate+0x8>
ffff800000105967:	49 bb 30 8f 00 00 00 	movabs $0x8f30,%r11
ffff80000010596e:	00 00 00 
ffff800000105971:	4c 01 d8             	add    %r11,%rax
ffff800000105974:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105977:	89 f1                	mov    %esi,%ecx
ffff800000105979:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff80000010597d:	89 ca                	mov    %ecx,%edx
ffff80000010597f:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105982:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105985:	48 89 d1             	mov    %rdx,%rcx
ffff800000105988:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010598c:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105993:	ff ff ff 
ffff800000105996:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010599a:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff80000010599e:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001059a1:	48 c1 e2 04          	shl    $0x4,%rdx
ffff8000001059a5:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff8000001059a9:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff8000001059b0:	ff ff ff 
ffff8000001059b3:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff8000001059b7:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff8000001059bb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001059bf:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff8000001059c5:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff8000001059c9:	44 89 c0             	mov    %r8d,%eax
ffff8000001059cc:	66 89 d0             	mov    %dx,%ax
ffff8000001059cf:	48 83 e1 07          	and    $0x7,%rcx
ffff8000001059d3:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff8000001059da:	48 c1 e1 20          	shl    $0x20,%rcx
ffff8000001059de:	48 01 c8             	add    %rcx,%rax
ffff8000001059e1:	48 31 c9             	xor    %rcx,%rcx
ffff8000001059e4:	89 d1                	mov    %edx,%ecx
ffff8000001059e6:	48 c1 e9 10          	shr    $0x10,%rcx
ffff8000001059ea:	48 c1 e1 30          	shl    $0x30,%rcx
ffff8000001059ee:	48 01 c8             	add    %rcx,%rax
ffff8000001059f1:	48 89 06             	mov    %rax,(%rsi)
ffff8000001059f4:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001059f8:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001059fb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001059ff:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a03:	90                   	nop
ffff800000105a04:	5d                   	pop    %rbp
ffff800000105a05:	c3                   	ret

ffff800000105a06 <set_trap_gate>:
ffff800000105a06:	f3 0f 1e fa          	endbr64
ffff800000105a0a:	55                   	push   %rbp
ffff800000105a0b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a0e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a0e <set_trap_gate+0x8>
ffff800000105a15:	49 bb 82 8e 00 00 00 	movabs $0x8e82,%r11
ffff800000105a1c:	00 00 00 
ffff800000105a1f:	4c 01 d8             	add    %r11,%rax
ffff800000105a22:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a25:	89 f1                	mov    %esi,%ecx
ffff800000105a27:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a2b:	89 ca                	mov    %ecx,%edx
ffff800000105a2d:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a30:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a33:	48 89 d1             	mov    %rdx,%rcx
ffff800000105a36:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105a3a:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a41:	ff ff ff 
ffff800000105a44:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a48:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a4c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a4f:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a53:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a57:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a5e:	ff ff ff 
ffff800000105a61:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a65:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a69:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a6d:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a73:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a77:	44 89 c0             	mov    %r8d,%eax
ffff800000105a7a:	66 89 d0             	mov    %dx,%ax
ffff800000105a7d:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a81:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105a88:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a8c:	48 01 c8             	add    %rcx,%rax
ffff800000105a8f:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a92:	89 d1                	mov    %edx,%ecx
ffff800000105a94:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a98:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a9c:	48 01 c8             	add    %rcx,%rax
ffff800000105a9f:	48 89 06             	mov    %rax,(%rsi)
ffff800000105aa2:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105aa6:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105aa9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105aad:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105ab1:	90                   	nop
ffff800000105ab2:	5d                   	pop    %rbp
ffff800000105ab3:	c3                   	ret

ffff800000105ab4 <set_system_gate>:
ffff800000105ab4:	f3 0f 1e fa          	endbr64
ffff800000105ab8:	55                   	push   %rbp
ffff800000105ab9:	48 89 e5             	mov    %rsp,%rbp
ffff800000105abc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105abc <set_system_gate+0x8>
ffff800000105ac3:	49 bb d4 8d 00 00 00 	movabs $0x8dd4,%r11
ffff800000105aca:	00 00 00 
ffff800000105acd:	4c 01 d8             	add    %r11,%rax
ffff800000105ad0:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105ad3:	89 f1                	mov    %esi,%ecx
ffff800000105ad5:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105ad9:	89 ca                	mov    %ecx,%edx
ffff800000105adb:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105ade:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ae1:	48 89 d1             	mov    %rdx,%rcx
ffff800000105ae4:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105ae8:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105aef:	ff ff ff 
ffff800000105af2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105af6:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105afa:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105afd:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105b01:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105b05:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105b0c:	ff ff ff 
ffff800000105b0f:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105b13:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105b17:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105b1b:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105b21:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105b25:	44 89 c0             	mov    %r8d,%eax
ffff800000105b28:	66 89 d0             	mov    %dx,%ax
ffff800000105b2b:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105b2f:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105b36:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105b3a:	48 01 c8             	add    %rcx,%rax
ffff800000105b3d:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b40:	89 d1                	mov    %edx,%ecx
ffff800000105b42:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b46:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b4a:	48 01 c8             	add    %rcx,%rax
ffff800000105b4d:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b50:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b54:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b57:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b5b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b5f:	90                   	nop
ffff800000105b60:	5d                   	pop    %rbp
ffff800000105b61:	c3                   	ret
ffff800000105b62:	f3 0f 1e fa          	endbr64
ffff800000105b66:	55                   	push   %rbp
ffff800000105b67:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b6a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b6a <set_system_gate+0xb6>
ffff800000105b71:	49 bb 26 8d 00 00 00 	movabs $0x8d26,%r11
ffff800000105b78:	00 00 00 
ffff800000105b7b:	4c 01 d8             	add    %r11,%rax
ffff800000105b7e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105b82:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105b86:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105b8a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105b8e:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105b92:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105b96:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b9d:	ff ff ff 
ffff800000105ba0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ba4:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105ba8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105bac:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105baf:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bb6:	ff ff ff 
ffff800000105bb9:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bbd:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105bc1:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105bc5:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bc8:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bcf:	ff ff ff 
ffff800000105bd2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bd6:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105bda:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105bde:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105be1:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105be8:	ff ff ff 
ffff800000105beb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bef:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105bf3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105bf7:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bfa:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c01:	ff ff ff 
ffff800000105c04:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c08:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105c0c:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105c10:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c13:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c1a:	ff ff ff 
ffff800000105c1d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c21:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105c25:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105c29:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c2c:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c33:	ff ff ff 
ffff800000105c36:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c3a:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105c3e:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105c42:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c45:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c4c:	ff ff ff 
ffff800000105c4f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c53:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105c57:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105c5b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c5e:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c65:	ff ff ff 
ffff800000105c68:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c6c:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105c70:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105c74:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c77:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c7e:	ff ff ff 
ffff800000105c81:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105c85:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105c89:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105c8d:	48 89 10             	mov    %rdx,(%rax)
ffff800000105c90:	90                   	nop
ffff800000105c91:	5d                   	pop    %rbp
ffff800000105c92:	c3                   	ret

ffff800000105c93 <do_divide_error>:
ffff800000105c93:	f3 0f 1e fa          	endbr64
ffff800000105c97:	55                   	push   %rbp
ffff800000105c98:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c9b:	41 57                	push   %r15
ffff800000105c9d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ca1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ca1 <do_divide_error+0xe>
ffff800000105ca8:	49 bb ef 8b 00 00 00 	movabs $0x8bef,%r11
ffff800000105caf:	00 00 00 
ffff800000105cb2:	4d 01 da             	add    %r11,%r10
ffff800000105cb5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105cb9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105cbd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105cc4:	00 
ffff800000105cc5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105cc9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ccf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105cd3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105cd7:	48 8b 08             	mov    (%rax),%rcx
ffff800000105cda:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105cde:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ce2:	49 89 c9             	mov    %rcx,%r9
ffff800000105ce5:	49 89 d0             	mov    %rdx,%r8
ffff800000105ce8:	48 89 c1             	mov    %rax,%rcx
ffff800000105ceb:	48 b8 d8 9f ff ff ff 	movabs $0xffffffffffff9fd8,%rax
ffff800000105cf2:	ff ff ff 
ffff800000105cf5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105cf9:	48 89 c2             	mov    %rax,%rdx
ffff800000105cfc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d01:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d06:	4d 89 d7             	mov    %r10,%r15
ffff800000105d09:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d0e:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105d15:	ff ff ff 
ffff800000105d18:	4d 01 d3             	add    %r10,%r11
ffff800000105d1b:	41 ff d3             	call   *%r11
ffff800000105d1e:	90                   	nop
ffff800000105d1f:	eb fd                	jmp    ffff800000105d1e <do_divide_error+0x8b>

ffff800000105d21 <do_debug>:
ffff800000105d21:	f3 0f 1e fa          	endbr64
ffff800000105d25:	55                   	push   %rbp
ffff800000105d26:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d29:	41 57                	push   %r15
ffff800000105d2b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d2f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d2f <do_debug+0xe>
ffff800000105d36:	49 bb 61 8b 00 00 00 	movabs $0x8b61,%r11
ffff800000105d3d:	00 00 00 
ffff800000105d40:	4d 01 da             	add    %r11,%r10
ffff800000105d43:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d47:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d4b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d52:	00 
ffff800000105d53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d57:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d5d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d65:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d68:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d6c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d70:	49 89 c9             	mov    %rcx,%r9
ffff800000105d73:	49 89 d0             	mov    %rdx,%r8
ffff800000105d76:	48 89 c1             	mov    %rax,%rcx
ffff800000105d79:	48 b8 18 a0 ff ff ff 	movabs $0xffffffffffffa018,%rax
ffff800000105d80:	ff ff ff 
ffff800000105d83:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d87:	48 89 c2             	mov    %rax,%rdx
ffff800000105d8a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d8f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d94:	4d 89 d7             	mov    %r10,%r15
ffff800000105d97:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d9c:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105da3:	ff ff ff 
ffff800000105da6:	4d 01 d3             	add    %r10,%r11
ffff800000105da9:	41 ff d3             	call   *%r11
ffff800000105dac:	90                   	nop
ffff800000105dad:	eb fd                	jmp    ffff800000105dac <do_debug+0x8b>

ffff800000105daf <do_nmi>:
ffff800000105daf:	f3 0f 1e fa          	endbr64
ffff800000105db3:	55                   	push   %rbp
ffff800000105db4:	48 89 e5             	mov    %rsp,%rbp
ffff800000105db7:	41 57                	push   %r15
ffff800000105db9:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105dbd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105dbd <do_nmi+0xe>
ffff800000105dc4:	49 bb d3 8a 00 00 00 	movabs $0x8ad3,%r11
ffff800000105dcb:	00 00 00 
ffff800000105dce:	4d 01 da             	add    %r11,%r10
ffff800000105dd1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105dd5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105dd9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105de0:	00 
ffff800000105de1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105de5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105deb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105def:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105df3:	48 8b 08             	mov    (%rax),%rcx
ffff800000105df6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105dfa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dfe:	49 89 c9             	mov    %rcx,%r9
ffff800000105e01:	49 89 d0             	mov    %rdx,%r8
ffff800000105e04:	48 89 c1             	mov    %rax,%rcx
ffff800000105e07:	48 b8 50 a0 ff ff ff 	movabs $0xffffffffffffa050,%rax
ffff800000105e0e:	ff ff ff 
ffff800000105e11:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e15:	48 89 c2             	mov    %rax,%rdx
ffff800000105e18:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e1d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e22:	4d 89 d7             	mov    %r10,%r15
ffff800000105e25:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e2a:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105e31:	ff ff ff 
ffff800000105e34:	4d 01 d3             	add    %r10,%r11
ffff800000105e37:	41 ff d3             	call   *%r11
ffff800000105e3a:	90                   	nop
ffff800000105e3b:	eb fd                	jmp    ffff800000105e3a <do_nmi+0x8b>

ffff800000105e3d <do_int3>:
ffff800000105e3d:	f3 0f 1e fa          	endbr64
ffff800000105e41:	55                   	push   %rbp
ffff800000105e42:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e45:	41 57                	push   %r15
ffff800000105e47:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e4b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e4b <do_int3+0xe>
ffff800000105e52:	49 bb 45 8a 00 00 00 	movabs $0x8a45,%r11
ffff800000105e59:	00 00 00 
ffff800000105e5c:	4d 01 da             	add    %r11,%r10
ffff800000105e5f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e63:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e67:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e6e:	00 
ffff800000105e6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e73:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e79:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e81:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e84:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e88:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e8c:	49 89 c9             	mov    %rcx,%r9
ffff800000105e8f:	49 89 d0             	mov    %rdx,%r8
ffff800000105e92:	48 89 c1             	mov    %rax,%rcx
ffff800000105e95:	48 b8 88 a0 ff ff ff 	movabs $0xffffffffffffa088,%rax
ffff800000105e9c:	ff ff ff 
ffff800000105e9f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ea3:	48 89 c2             	mov    %rax,%rdx
ffff800000105ea6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105eab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105eb0:	4d 89 d7             	mov    %r10,%r15
ffff800000105eb3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105eb8:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105ebf:	ff ff ff 
ffff800000105ec2:	4d 01 d3             	add    %r10,%r11
ffff800000105ec5:	41 ff d3             	call   *%r11
ffff800000105ec8:	90                   	nop
ffff800000105ec9:	eb fd                	jmp    ffff800000105ec8 <do_int3+0x8b>

ffff800000105ecb <do_overflow>:
ffff800000105ecb:	f3 0f 1e fa          	endbr64
ffff800000105ecf:	55                   	push   %rbp
ffff800000105ed0:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ed3:	41 57                	push   %r15
ffff800000105ed5:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ed9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ed9 <do_overflow+0xe>
ffff800000105ee0:	49 bb b7 89 00 00 00 	movabs $0x89b7,%r11
ffff800000105ee7:	00 00 00 
ffff800000105eea:	4d 01 da             	add    %r11,%r10
ffff800000105eed:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ef1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ef5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105efc:	00 
ffff800000105efd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f01:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f07:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f0f:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f12:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f1a:	49 89 c9             	mov    %rcx,%r9
ffff800000105f1d:	49 89 d0             	mov    %rdx,%r8
ffff800000105f20:	48 89 c1             	mov    %rax,%rcx
ffff800000105f23:	48 b8 c0 a0 ff ff ff 	movabs $0xffffffffffffa0c0,%rax
ffff800000105f2a:	ff ff ff 
ffff800000105f2d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f31:	48 89 c2             	mov    %rax,%rdx
ffff800000105f34:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f39:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f3e:	4d 89 d7             	mov    %r10,%r15
ffff800000105f41:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f46:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105f4d:	ff ff ff 
ffff800000105f50:	4d 01 d3             	add    %r10,%r11
ffff800000105f53:	41 ff d3             	call   *%r11
ffff800000105f56:	90                   	nop
ffff800000105f57:	eb fd                	jmp    ffff800000105f56 <do_overflow+0x8b>

ffff800000105f59 <do_bounds>:
ffff800000105f59:	f3 0f 1e fa          	endbr64
ffff800000105f5d:	55                   	push   %rbp
ffff800000105f5e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f61:	41 57                	push   %r15
ffff800000105f63:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f67:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f67 <do_bounds+0xe>
ffff800000105f6e:	49 bb 29 89 00 00 00 	movabs $0x8929,%r11
ffff800000105f75:	00 00 00 
ffff800000105f78:	4d 01 da             	add    %r11,%r10
ffff800000105f7b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f7f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f83:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f8a:	00 
ffff800000105f8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f8f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f95:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f99:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f9d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fa0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fa4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fa8:	49 89 c9             	mov    %rcx,%r9
ffff800000105fab:	49 89 d0             	mov    %rdx,%r8
ffff800000105fae:	48 89 c1             	mov    %rax,%rcx
ffff800000105fb1:	48 b8 00 a1 ff ff ff 	movabs $0xffffffffffffa100,%rax
ffff800000105fb8:	ff ff ff 
ffff800000105fbb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105fbf:	48 89 c2             	mov    %rax,%rdx
ffff800000105fc2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105fc7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105fcc:	4d 89 d7             	mov    %r10,%r15
ffff800000105fcf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fd4:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000105fdb:	ff ff ff 
ffff800000105fde:	4d 01 d3             	add    %r10,%r11
ffff800000105fe1:	41 ff d3             	call   *%r11
ffff800000105fe4:	90                   	nop
ffff800000105fe5:	eb fd                	jmp    ffff800000105fe4 <do_bounds+0x8b>

ffff800000105fe7 <do_undefined_opcode>:
ffff800000105fe7:	f3 0f 1e fa          	endbr64
ffff800000105feb:	55                   	push   %rbp
ffff800000105fec:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fef:	41 57                	push   %r15
ffff800000105ff1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ff5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ff5 <do_undefined_opcode+0xe>
ffff800000105ffc:	49 bb 9b 88 00 00 00 	movabs $0x889b,%r11
ffff800000106003:	00 00 00 
ffff800000106006:	4d 01 da             	add    %r11,%r10
ffff800000106009:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010600d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106011:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106018:	00 
ffff800000106019:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010601d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106023:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106027:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010602b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010602e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106032:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106036:	49 89 c9             	mov    %rcx,%r9
ffff800000106039:	49 89 d0             	mov    %rdx,%r8
ffff80000010603c:	48 89 c1             	mov    %rax,%rcx
ffff80000010603f:	48 b8 40 a1 ff ff ff 	movabs $0xffffffffffffa140,%rax
ffff800000106046:	ff ff ff 
ffff800000106049:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010604d:	48 89 c2             	mov    %rax,%rdx
ffff800000106050:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106055:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010605a:	4d 89 d7             	mov    %r10,%r15
ffff80000010605d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106062:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106069:	ff ff ff 
ffff80000010606c:	4d 01 d3             	add    %r10,%r11
ffff80000010606f:	41 ff d3             	call   *%r11
ffff800000106072:	90                   	nop
ffff800000106073:	eb fd                	jmp    ffff800000106072 <do_undefined_opcode+0x8b>

ffff800000106075 <do_dev_not_available>:
ffff800000106075:	f3 0f 1e fa          	endbr64
ffff800000106079:	55                   	push   %rbp
ffff80000010607a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010607d:	41 57                	push   %r15
ffff80000010607f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106083:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106083 <do_dev_not_available+0xe>
ffff80000010608a:	49 bb 0d 88 00 00 00 	movabs $0x880d,%r11
ffff800000106091:	00 00 00 
ffff800000106094:	4d 01 da             	add    %r11,%r10
ffff800000106097:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010609b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010609f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060a6:	00 
ffff8000001060a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060ab:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060b1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060b9:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060bc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060c4:	49 89 c9             	mov    %rcx,%r9
ffff8000001060c7:	49 89 d0             	mov    %rdx,%r8
ffff8000001060ca:	48 89 c1             	mov    %rax,%rcx
ffff8000001060cd:	48 b8 88 a1 ff ff ff 	movabs $0xffffffffffffa188,%rax
ffff8000001060d4:	ff ff ff 
ffff8000001060d7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001060db:	48 89 c2             	mov    %rax,%rdx
ffff8000001060de:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060e3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060e8:	4d 89 d7             	mov    %r10,%r15
ffff8000001060eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060f0:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff8000001060f7:	ff ff ff 
ffff8000001060fa:	4d 01 d3             	add    %r10,%r11
ffff8000001060fd:	41 ff d3             	call   *%r11
ffff800000106100:	90                   	nop
ffff800000106101:	eb fd                	jmp    ffff800000106100 <do_dev_not_available+0x8b>

ffff800000106103 <do_double_fault>:
ffff800000106103:	f3 0f 1e fa          	endbr64
ffff800000106107:	55                   	push   %rbp
ffff800000106108:	48 89 e5             	mov    %rsp,%rbp
ffff80000010610b:	41 57                	push   %r15
ffff80000010610d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106111:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106111 <do_double_fault+0xe>
ffff800000106118:	49 bb 7f 87 00 00 00 	movabs $0x877f,%r11
ffff80000010611f:	00 00 00 
ffff800000106122:	4d 01 da             	add    %r11,%r10
ffff800000106125:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106129:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010612d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106134:	00 
ffff800000106135:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106139:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010613f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106143:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106147:	48 8b 08             	mov    (%rax),%rcx
ffff80000010614a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010614e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106152:	49 89 c9             	mov    %rcx,%r9
ffff800000106155:	49 89 d0             	mov    %rdx,%r8
ffff800000106158:	48 89 c1             	mov    %rax,%rcx
ffff80000010615b:	48 b8 d0 a1 ff ff ff 	movabs $0xffffffffffffa1d0,%rax
ffff800000106162:	ff ff ff 
ffff800000106165:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106169:	48 89 c2             	mov    %rax,%rdx
ffff80000010616c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106171:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106176:	4d 89 d7             	mov    %r10,%r15
ffff800000106179:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010617e:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106185:	ff ff ff 
ffff800000106188:	4d 01 d3             	add    %r10,%r11
ffff80000010618b:	41 ff d3             	call   *%r11
ffff80000010618e:	90                   	nop
ffff80000010618f:	eb fd                	jmp    ffff80000010618e <do_double_fault+0x8b>

ffff800000106191 <do_coprocessor_segment_overrun>:
ffff800000106191:	f3 0f 1e fa          	endbr64
ffff800000106195:	55                   	push   %rbp
ffff800000106196:	48 89 e5             	mov    %rsp,%rbp
ffff800000106199:	41 57                	push   %r15
ffff80000010619b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010619f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010619f <do_coprocessor_segment_overrun+0xe>
ffff8000001061a6:	49 bb f1 86 00 00 00 	movabs $0x86f1,%r11
ffff8000001061ad:	00 00 00 
ffff8000001061b0:	4d 01 da             	add    %r11,%r10
ffff8000001061b3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061b7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061bb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061c2:	00 
ffff8000001061c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061c7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061cd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061d5:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061d8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061dc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061e0:	49 89 c9             	mov    %rcx,%r9
ffff8000001061e3:	49 89 d0             	mov    %rdx,%r8
ffff8000001061e6:	48 89 c1             	mov    %rax,%rcx
ffff8000001061e9:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff8000001061f0:	ff ff ff 
ffff8000001061f3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061f7:	48 89 c2             	mov    %rax,%rdx
ffff8000001061fa:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061ff:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106204:	4d 89 d7             	mov    %r10,%r15
ffff800000106207:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010620c:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106213:	ff ff ff 
ffff800000106216:	4d 01 d3             	add    %r10,%r11
ffff800000106219:	41 ff d3             	call   *%r11
ffff80000010621c:	90                   	nop
ffff80000010621d:	eb fd                	jmp    ffff80000010621c <do_coprocessor_segment_overrun+0x8b>

ffff80000010621f <do_invalid_TSS>:
ffff80000010621f:	f3 0f 1e fa          	endbr64
ffff800000106223:	55                   	push   %rbp
ffff800000106224:	48 89 e5             	mov    %rsp,%rbp
ffff800000106227:	41 57                	push   %r15
ffff800000106229:	53                   	push   %rbx
ffff80000010622a:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010622e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010622e <do_invalid_TSS+0xf>
ffff800000106235:	49 bb 62 86 00 00 00 	movabs $0x8662,%r11
ffff80000010623c:	00 00 00 
ffff80000010623f:	4c 01 db             	add    %r11,%rbx
ffff800000106242:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106246:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010624a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106251:	00 
ffff800000106252:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106256:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010625c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106260:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106264:	48 8b 08             	mov    (%rax),%rcx
ffff800000106267:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010626b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010626f:	49 89 c9             	mov    %rcx,%r9
ffff800000106272:	49 89 d0             	mov    %rdx,%r8
ffff800000106275:	48 89 c1             	mov    %rax,%rcx
ffff800000106278:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff80000010627f:	ff ff ff 
ffff800000106282:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106286:	48 89 c2             	mov    %rax,%rdx
ffff800000106289:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010628e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106293:	49 89 df             	mov    %rbx,%r15
ffff800000106296:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010629b:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff8000001062a2:	ff ff ff 
ffff8000001062a5:	49 01 da             	add    %rbx,%r10
ffff8000001062a8:	41 ff d2             	call   *%r10
ffff8000001062ab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062af:	83 e0 01             	and    $0x1,%eax
ffff8000001062b2:	48 85 c0             	test   %rax,%rax
ffff8000001062b5:	74 32                	je     ffff8000001062e9 <do_invalid_TSS+0xca>
ffff8000001062b7:	48 b8 a0 a2 ff ff ff 	movabs $0xffffffffffffa2a0,%rax
ffff8000001062be:	ff ff ff 
ffff8000001062c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062c5:	48 89 c2             	mov    %rax,%rdx
ffff8000001062c8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062cd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062d2:	49 89 df             	mov    %rbx,%r15
ffff8000001062d5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062da:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001062e1:	ff ff ff 
ffff8000001062e4:	48 01 d9             	add    %rbx,%rcx
ffff8000001062e7:	ff d1                	call   *%rcx
ffff8000001062e9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062ed:	83 e0 02             	and    $0x2,%eax
ffff8000001062f0:	48 85 c0             	test   %rax,%rax
ffff8000001062f3:	74 34                	je     ffff800000106329 <do_invalid_TSS+0x10a>
ffff8000001062f5:	48 b8 20 a3 ff ff ff 	movabs $0xffffffffffffa320,%rax
ffff8000001062fc:	ff ff ff 
ffff8000001062ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106303:	48 89 c2             	mov    %rax,%rdx
ffff800000106306:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010630b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106310:	49 89 df             	mov    %rbx,%r15
ffff800000106313:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106318:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010631f:	ff ff ff 
ffff800000106322:	48 01 d9             	add    %rbx,%rcx
ffff800000106325:	ff d1                	call   *%rcx
ffff800000106327:	eb 32                	jmp    ffff80000010635b <do_invalid_TSS+0x13c>
ffff800000106329:	48 b8 50 a3 ff ff ff 	movabs $0xffffffffffffa350,%rax
ffff800000106330:	ff ff ff 
ffff800000106333:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106337:	48 89 c2             	mov    %rax,%rdx
ffff80000010633a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010633f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106344:	49 89 df             	mov    %rbx,%r15
ffff800000106347:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010634c:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106353:	ff ff ff 
ffff800000106356:	48 01 d9             	add    %rbx,%rcx
ffff800000106359:	ff d1                	call   *%rcx
ffff80000010635b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010635f:	83 e0 02             	and    $0x2,%eax
ffff800000106362:	48 85 c0             	test   %rax,%rax
ffff800000106365:	75 72                	jne    ffff8000001063d9 <do_invalid_TSS+0x1ba>
ffff800000106367:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010636b:	83 e0 04             	and    $0x4,%eax
ffff80000010636e:	48 85 c0             	test   %rax,%rax
ffff800000106371:	74 34                	je     ffff8000001063a7 <do_invalid_TSS+0x188>
ffff800000106373:	48 b8 88 a3 ff ff ff 	movabs $0xffffffffffffa388,%rax
ffff80000010637a:	ff ff ff 
ffff80000010637d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106381:	48 89 c2             	mov    %rax,%rdx
ffff800000106384:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106389:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010638e:	49 89 df             	mov    %rbx,%r15
ffff800000106391:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106396:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010639d:	ff ff ff 
ffff8000001063a0:	48 01 d9             	add    %rbx,%rcx
ffff8000001063a3:	ff d1                	call   *%rcx
ffff8000001063a5:	eb 32                	jmp    ffff8000001063d9 <do_invalid_TSS+0x1ba>
ffff8000001063a7:	48 b8 c0 a3 ff ff ff 	movabs $0xffffffffffffa3c0,%rax
ffff8000001063ae:	ff ff ff 
ffff8000001063b1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063b5:	48 89 c2             	mov    %rax,%rdx
ffff8000001063b8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063bd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063c2:	49 89 df             	mov    %rbx,%r15
ffff8000001063c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063ca:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001063d1:	ff ff ff 
ffff8000001063d4:	48 01 d9             	add    %rbx,%rcx
ffff8000001063d7:	ff d1                	call   *%rcx
ffff8000001063d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063dd:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001063e2:	48 89 c1             	mov    %rax,%rcx
ffff8000001063e5:	48 b8 f0 a3 ff ff ff 	movabs $0xffffffffffffa3f0,%rax
ffff8000001063ec:	ff ff ff 
ffff8000001063ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063f3:	48 89 c2             	mov    %rax,%rdx
ffff8000001063f6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063fb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106400:	49 89 df             	mov    %rbx,%r15
ffff800000106403:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106408:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff80000010640f:	ff ff ff 
ffff800000106412:	49 01 d8             	add    %rbx,%r8
ffff800000106415:	41 ff d0             	call   *%r8
ffff800000106418:	90                   	nop
ffff800000106419:	eb fd                	jmp    ffff800000106418 <do_invalid_TSS+0x1f9>

ffff80000010641b <do_segment_not_present>:
ffff80000010641b:	f3 0f 1e fa          	endbr64
ffff80000010641f:	55                   	push   %rbp
ffff800000106420:	48 89 e5             	mov    %rsp,%rbp
ffff800000106423:	41 57                	push   %r15
ffff800000106425:	53                   	push   %rbx
ffff800000106426:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010642a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010642a <do_segment_not_present+0xf>
ffff800000106431:	49 bb 66 84 00 00 00 	movabs $0x8466,%r11
ffff800000106438:	00 00 00 
ffff80000010643b:	4c 01 db             	add    %r11,%rbx
ffff80000010643e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106442:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106446:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010644d:	00 
ffff80000010644e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106452:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106458:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010645c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106460:	48 8b 08             	mov    (%rax),%rcx
ffff800000106463:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106467:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010646b:	49 89 c9             	mov    %rcx,%r9
ffff80000010646e:	49 89 d0             	mov    %rdx,%r8
ffff800000106471:	48 89 c1             	mov    %rax,%rcx
ffff800000106474:	48 b8 10 a4 ff ff ff 	movabs $0xffffffffffffa410,%rax
ffff80000010647b:	ff ff ff 
ffff80000010647e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106482:	48 89 c2             	mov    %rax,%rdx
ffff800000106485:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010648a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010648f:	49 89 df             	mov    %rbx,%r15
ffff800000106492:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106497:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff80000010649e:	ff ff ff 
ffff8000001064a1:	49 01 da             	add    %rbx,%r10
ffff8000001064a4:	41 ff d2             	call   *%r10
ffff8000001064a7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064ab:	83 e0 01             	and    $0x1,%eax
ffff8000001064ae:	48 85 c0             	test   %rax,%rax
ffff8000001064b1:	74 32                	je     ffff8000001064e5 <do_segment_not_present+0xca>
ffff8000001064b3:	48 b8 a0 a2 ff ff ff 	movabs $0xffffffffffffa2a0,%rax
ffff8000001064ba:	ff ff ff 
ffff8000001064bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064c1:	48 89 c2             	mov    %rax,%rdx
ffff8000001064c4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064c9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064ce:	49 89 df             	mov    %rbx,%r15
ffff8000001064d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064d6:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001064dd:	ff ff ff 
ffff8000001064e0:	48 01 d9             	add    %rbx,%rcx
ffff8000001064e3:	ff d1                	call   *%rcx
ffff8000001064e5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064e9:	83 e0 02             	and    $0x2,%eax
ffff8000001064ec:	48 85 c0             	test   %rax,%rax
ffff8000001064ef:	74 34                	je     ffff800000106525 <do_segment_not_present+0x10a>
ffff8000001064f1:	48 b8 20 a3 ff ff ff 	movabs $0xffffffffffffa320,%rax
ffff8000001064f8:	ff ff ff 
ffff8000001064fb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064ff:	48 89 c2             	mov    %rax,%rdx
ffff800000106502:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106507:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010650c:	49 89 df             	mov    %rbx,%r15
ffff80000010650f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106514:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010651b:	ff ff ff 
ffff80000010651e:	48 01 d9             	add    %rbx,%rcx
ffff800000106521:	ff d1                	call   *%rcx
ffff800000106523:	eb 32                	jmp    ffff800000106557 <do_segment_not_present+0x13c>
ffff800000106525:	48 b8 50 a3 ff ff ff 	movabs $0xffffffffffffa350,%rax
ffff80000010652c:	ff ff ff 
ffff80000010652f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106533:	48 89 c2             	mov    %rax,%rdx
ffff800000106536:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010653b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106540:	49 89 df             	mov    %rbx,%r15
ffff800000106543:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106548:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010654f:	ff ff ff 
ffff800000106552:	48 01 d9             	add    %rbx,%rcx
ffff800000106555:	ff d1                	call   *%rcx
ffff800000106557:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010655b:	83 e0 02             	and    $0x2,%eax
ffff80000010655e:	48 85 c0             	test   %rax,%rax
ffff800000106561:	75 72                	jne    ffff8000001065d5 <do_segment_not_present+0x1ba>
ffff800000106563:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106567:	83 e0 04             	and    $0x4,%eax
ffff80000010656a:	48 85 c0             	test   %rax,%rax
ffff80000010656d:	74 34                	je     ffff8000001065a3 <do_segment_not_present+0x188>
ffff80000010656f:	48 b8 88 a3 ff ff ff 	movabs $0xffffffffffffa388,%rax
ffff800000106576:	ff ff ff 
ffff800000106579:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010657d:	48 89 c2             	mov    %rax,%rdx
ffff800000106580:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106585:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010658a:	49 89 df             	mov    %rbx,%r15
ffff80000010658d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106592:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106599:	ff ff ff 
ffff80000010659c:	48 01 d9             	add    %rbx,%rcx
ffff80000010659f:	ff d1                	call   *%rcx
ffff8000001065a1:	eb 32                	jmp    ffff8000001065d5 <do_segment_not_present+0x1ba>
ffff8000001065a3:	48 b8 c0 a3 ff ff ff 	movabs $0xffffffffffffa3c0,%rax
ffff8000001065aa:	ff ff ff 
ffff8000001065ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065b1:	48 89 c2             	mov    %rax,%rdx
ffff8000001065b4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065b9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065be:	49 89 df             	mov    %rbx,%r15
ffff8000001065c1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065c6:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001065cd:	ff ff ff 
ffff8000001065d0:	48 01 d9             	add    %rbx,%rcx
ffff8000001065d3:	ff d1                	call   *%rcx
ffff8000001065d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065d9:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001065de:	48 89 c1             	mov    %rax,%rcx
ffff8000001065e1:	48 b8 f0 a3 ff ff ff 	movabs $0xffffffffffffa3f0,%rax
ffff8000001065e8:	ff ff ff 
ffff8000001065eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001065f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065fc:	49 89 df             	mov    %rbx,%r15
ffff8000001065ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106604:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff80000010660b:	ff ff ff 
ffff80000010660e:	49 01 d8             	add    %rbx,%r8
ffff800000106611:	41 ff d0             	call   *%r8
ffff800000106614:	90                   	nop
ffff800000106615:	eb fd                	jmp    ffff800000106614 <do_segment_not_present+0x1f9>

ffff800000106617 <do_stack_segment_fault>:
ffff800000106617:	f3 0f 1e fa          	endbr64
ffff80000010661b:	55                   	push   %rbp
ffff80000010661c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010661f:	41 57                	push   %r15
ffff800000106621:	53                   	push   %rbx
ffff800000106622:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106626:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106626 <do_stack_segment_fault+0xf>
ffff80000010662d:	49 bb 6a 82 00 00 00 	movabs $0x826a,%r11
ffff800000106634:	00 00 00 
ffff800000106637:	4c 01 db             	add    %r11,%rbx
ffff80000010663a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010663e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106642:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106649:	00 
ffff80000010664a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010664e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106654:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106658:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010665c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010665f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106663:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106667:	49 89 c9             	mov    %rcx,%r9
ffff80000010666a:	49 89 d0             	mov    %rdx,%r8
ffff80000010666d:	48 89 c1             	mov    %rax,%rcx
ffff800000106670:	48 b8 58 a4 ff ff ff 	movabs $0xffffffffffffa458,%rax
ffff800000106677:	ff ff ff 
ffff80000010667a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010667e:	48 89 c2             	mov    %rax,%rdx
ffff800000106681:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106686:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010668b:	49 89 df             	mov    %rbx,%r15
ffff80000010668e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106693:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff80000010669a:	ff ff ff 
ffff80000010669d:	49 01 da             	add    %rbx,%r10
ffff8000001066a0:	41 ff d2             	call   *%r10
ffff8000001066a3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066a7:	83 e0 01             	and    $0x1,%eax
ffff8000001066aa:	48 85 c0             	test   %rax,%rax
ffff8000001066ad:	74 32                	je     ffff8000001066e1 <do_stack_segment_fault+0xca>
ffff8000001066af:	48 b8 a0 a2 ff ff ff 	movabs $0xffffffffffffa2a0,%rax
ffff8000001066b6:	ff ff ff 
ffff8000001066b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066bd:	48 89 c2             	mov    %rax,%rdx
ffff8000001066c0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066c5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066ca:	49 89 df             	mov    %rbx,%r15
ffff8000001066cd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066d2:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001066d9:	ff ff ff 
ffff8000001066dc:	48 01 d9             	add    %rbx,%rcx
ffff8000001066df:	ff d1                	call   *%rcx
ffff8000001066e1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066e5:	83 e0 02             	and    $0x2,%eax
ffff8000001066e8:	48 85 c0             	test   %rax,%rax
ffff8000001066eb:	74 34                	je     ffff800000106721 <do_stack_segment_fault+0x10a>
ffff8000001066ed:	48 b8 20 a3 ff ff ff 	movabs $0xffffffffffffa320,%rax
ffff8000001066f4:	ff ff ff 
ffff8000001066f7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066fb:	48 89 c2             	mov    %rax,%rdx
ffff8000001066fe:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106703:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106708:	49 89 df             	mov    %rbx,%r15
ffff80000010670b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106710:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106717:	ff ff ff 
ffff80000010671a:	48 01 d9             	add    %rbx,%rcx
ffff80000010671d:	ff d1                	call   *%rcx
ffff80000010671f:	eb 32                	jmp    ffff800000106753 <do_stack_segment_fault+0x13c>
ffff800000106721:	48 b8 50 a3 ff ff ff 	movabs $0xffffffffffffa350,%rax
ffff800000106728:	ff ff ff 
ffff80000010672b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010672f:	48 89 c2             	mov    %rax,%rdx
ffff800000106732:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106737:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010673c:	49 89 df             	mov    %rbx,%r15
ffff80000010673f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106744:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff80000010674b:	ff ff ff 
ffff80000010674e:	48 01 d9             	add    %rbx,%rcx
ffff800000106751:	ff d1                	call   *%rcx
ffff800000106753:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106757:	83 e0 02             	and    $0x2,%eax
ffff80000010675a:	48 85 c0             	test   %rax,%rax
ffff80000010675d:	75 72                	jne    ffff8000001067d1 <do_stack_segment_fault+0x1ba>
ffff80000010675f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106763:	83 e0 04             	and    $0x4,%eax
ffff800000106766:	48 85 c0             	test   %rax,%rax
ffff800000106769:	74 34                	je     ffff80000010679f <do_stack_segment_fault+0x188>
ffff80000010676b:	48 b8 88 a3 ff ff ff 	movabs $0xffffffffffffa388,%rax
ffff800000106772:	ff ff ff 
ffff800000106775:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106779:	48 89 c2             	mov    %rax,%rdx
ffff80000010677c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106781:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106786:	49 89 df             	mov    %rbx,%r15
ffff800000106789:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010678e:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106795:	ff ff ff 
ffff800000106798:	48 01 d9             	add    %rbx,%rcx
ffff80000010679b:	ff d1                	call   *%rcx
ffff80000010679d:	eb 32                	jmp    ffff8000001067d1 <do_stack_segment_fault+0x1ba>
ffff80000010679f:	48 b8 c0 a3 ff ff ff 	movabs $0xffffffffffffa3c0,%rax
ffff8000001067a6:	ff ff ff 
ffff8000001067a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067ad:	48 89 c2             	mov    %rax,%rdx
ffff8000001067b0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067b5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067ba:	49 89 df             	mov    %rbx,%r15
ffff8000001067bd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067c2:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001067c9:	ff ff ff 
ffff8000001067cc:	48 01 d9             	add    %rbx,%rcx
ffff8000001067cf:	ff d1                	call   *%rcx
ffff8000001067d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067d5:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001067da:	48 89 c1             	mov    %rax,%rcx
ffff8000001067dd:	48 b8 f0 a3 ff ff ff 	movabs $0xffffffffffffa3f0,%rax
ffff8000001067e4:	ff ff ff 
ffff8000001067e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067f3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067f8:	49 89 df             	mov    %rbx,%r15
ffff8000001067fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106800:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff800000106807:	ff ff ff 
ffff80000010680a:	49 01 d8             	add    %rbx,%r8
ffff80000010680d:	41 ff d0             	call   *%r8
ffff800000106810:	90                   	nop
ffff800000106811:	eb fd                	jmp    ffff800000106810 <do_stack_segment_fault+0x1f9>

ffff800000106813 <do_general_protection>:
ffff800000106813:	f3 0f 1e fa          	endbr64
ffff800000106817:	55                   	push   %rbp
ffff800000106818:	48 89 e5             	mov    %rsp,%rbp
ffff80000010681b:	41 57                	push   %r15
ffff80000010681d:	53                   	push   %rbx
ffff80000010681e:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106822:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106822 <do_general_protection+0xf>
ffff800000106829:	49 bb 6e 80 00 00 00 	movabs $0x806e,%r11
ffff800000106830:	00 00 00 
ffff800000106833:	4c 01 db             	add    %r11,%rbx
ffff800000106836:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010683a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010683e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106845:	00 
ffff800000106846:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010684a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106850:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106858:	48 8b 08             	mov    (%rax),%rcx
ffff80000010685b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010685f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106863:	49 89 c9             	mov    %rcx,%r9
ffff800000106866:	49 89 d0             	mov    %rdx,%r8
ffff800000106869:	48 89 c1             	mov    %rax,%rcx
ffff80000010686c:	48 b8 a0 a4 ff ff ff 	movabs $0xffffffffffffa4a0,%rax
ffff800000106873:	ff ff ff 
ffff800000106876:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010687a:	48 89 c2             	mov    %rax,%rdx
ffff80000010687d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106882:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106887:	49 89 df             	mov    %rbx,%r15
ffff80000010688a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010688f:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff800000106896:	ff ff ff 
ffff800000106899:	49 01 da             	add    %rbx,%r10
ffff80000010689c:	41 ff d2             	call   *%r10
ffff80000010689f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068a3:	83 e0 01             	and    $0x1,%eax
ffff8000001068a6:	48 85 c0             	test   %rax,%rax
ffff8000001068a9:	74 32                	je     ffff8000001068dd <do_general_protection+0xca>
ffff8000001068ab:	48 b8 a0 a2 ff ff ff 	movabs $0xffffffffffffa2a0,%rax
ffff8000001068b2:	ff ff ff 
ffff8000001068b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068b9:	48 89 c2             	mov    %rax,%rdx
ffff8000001068bc:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068c1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068c6:	49 89 df             	mov    %rbx,%r15
ffff8000001068c9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068ce:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001068d5:	ff ff ff 
ffff8000001068d8:	48 01 d9             	add    %rbx,%rcx
ffff8000001068db:	ff d1                	call   *%rcx
ffff8000001068dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068e1:	83 e0 02             	and    $0x2,%eax
ffff8000001068e4:	48 85 c0             	test   %rax,%rax
ffff8000001068e7:	74 34                	je     ffff80000010691d <do_general_protection+0x10a>
ffff8000001068e9:	48 b8 20 a3 ff ff ff 	movabs $0xffffffffffffa320,%rax
ffff8000001068f0:	ff ff ff 
ffff8000001068f3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068f7:	48 89 c2             	mov    %rax,%rdx
ffff8000001068fa:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068ff:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106904:	49 89 df             	mov    %rbx,%r15
ffff800000106907:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010690c:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106913:	ff ff ff 
ffff800000106916:	48 01 d9             	add    %rbx,%rcx
ffff800000106919:	ff d1                	call   *%rcx
ffff80000010691b:	eb 32                	jmp    ffff80000010694f <do_general_protection+0x13c>
ffff80000010691d:	48 b8 50 a3 ff ff ff 	movabs $0xffffffffffffa350,%rax
ffff800000106924:	ff ff ff 
ffff800000106927:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010692b:	48 89 c2             	mov    %rax,%rdx
ffff80000010692e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106933:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106938:	49 89 df             	mov    %rbx,%r15
ffff80000010693b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106940:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106947:	ff ff ff 
ffff80000010694a:	48 01 d9             	add    %rbx,%rcx
ffff80000010694d:	ff d1                	call   *%rcx
ffff80000010694f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106953:	83 e0 02             	and    $0x2,%eax
ffff800000106956:	48 85 c0             	test   %rax,%rax
ffff800000106959:	75 72                	jne    ffff8000001069cd <do_general_protection+0x1ba>
ffff80000010695b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010695f:	83 e0 04             	and    $0x4,%eax
ffff800000106962:	48 85 c0             	test   %rax,%rax
ffff800000106965:	74 34                	je     ffff80000010699b <do_general_protection+0x188>
ffff800000106967:	48 b8 88 a3 ff ff ff 	movabs $0xffffffffffffa388,%rax
ffff80000010696e:	ff ff ff 
ffff800000106971:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106975:	48 89 c2             	mov    %rax,%rdx
ffff800000106978:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010697d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106982:	49 89 df             	mov    %rbx,%r15
ffff800000106985:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010698a:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106991:	ff ff ff 
ffff800000106994:	48 01 d9             	add    %rbx,%rcx
ffff800000106997:	ff d1                	call   *%rcx
ffff800000106999:	eb 32                	jmp    ffff8000001069cd <do_general_protection+0x1ba>
ffff80000010699b:	48 b8 c0 a3 ff ff ff 	movabs $0xffffffffffffa3c0,%rax
ffff8000001069a2:	ff ff ff 
ffff8000001069a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001069ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069b1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069b6:	49 89 df             	mov    %rbx,%r15
ffff8000001069b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069be:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff8000001069c5:	ff ff ff 
ffff8000001069c8:	48 01 d9             	add    %rbx,%rcx
ffff8000001069cb:	ff d1                	call   *%rcx
ffff8000001069cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069d1:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001069d6:	48 89 c1             	mov    %rax,%rcx
ffff8000001069d9:	48 b8 f0 a3 ff ff ff 	movabs $0xffffffffffffa3f0,%rax
ffff8000001069e0:	ff ff ff 
ffff8000001069e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001069ea:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069ef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069f4:	49 89 df             	mov    %rbx,%r15
ffff8000001069f7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069fc:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff800000106a03:	ff ff ff 
ffff800000106a06:	49 01 d8             	add    %rbx,%r8
ffff800000106a09:	41 ff d0             	call   *%r8
ffff800000106a0c:	90                   	nop
ffff800000106a0d:	eb fd                	jmp    ffff800000106a0c <do_general_protection+0x1f9>

ffff800000106a0f <do_page_fault>:
ffff800000106a0f:	f3 0f 1e fa          	endbr64
ffff800000106a13:	55                   	push   %rbp
ffff800000106a14:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a17:	41 57                	push   %r15
ffff800000106a19:	53                   	push   %rbx
ffff800000106a1a:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106a1e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106a1e <do_page_fault+0xf>
ffff800000106a25:	49 bb 72 7e 00 00 00 	movabs $0x7e72,%r11
ffff800000106a2c:	00 00 00 
ffff800000106a2f:	4c 01 db             	add    %r11,%rbx
ffff800000106a32:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106a36:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106a3a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106a41:	00 
ffff800000106a42:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106a49:	00 
ffff800000106a4a:	0f 20 d0             	mov    %cr2,%rax
ffff800000106a4d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106a51:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106a55:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106a5b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106a5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106a63:	48 8b 08             	mov    (%rax),%rcx
ffff800000106a66:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106a6a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a6e:	49 89 c9             	mov    %rcx,%r9
ffff800000106a71:	49 89 d0             	mov    %rdx,%r8
ffff800000106a74:	48 89 c1             	mov    %rax,%rcx
ffff800000106a77:	48 b8 e8 a4 ff ff ff 	movabs $0xffffffffffffa4e8,%rax
ffff800000106a7e:	ff ff ff 
ffff800000106a81:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a85:	48 89 c2             	mov    %rax,%rdx
ffff800000106a88:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a8d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a92:	49 89 df             	mov    %rbx,%r15
ffff800000106a95:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a9a:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff800000106aa1:	ff ff ff 
ffff800000106aa4:	49 01 da             	add    %rbx,%r10
ffff800000106aa7:	41 ff d2             	call   *%r10
ffff800000106aaa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aae:	83 e0 01             	and    $0x1,%eax
ffff800000106ab1:	48 85 c0             	test   %rax,%rax
ffff800000106ab4:	75 32                	jne    ffff800000106ae8 <do_page_fault+0xd9>
ffff800000106ab6:	48 b8 26 a5 ff ff ff 	movabs $0xffffffffffffa526,%rax
ffff800000106abd:	ff ff ff 
ffff800000106ac0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ac4:	48 89 c2             	mov    %rax,%rdx
ffff800000106ac7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106acc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ad1:	49 89 df             	mov    %rbx,%r15
ffff800000106ad4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ad9:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106ae0:	ff ff ff 
ffff800000106ae3:	48 01 d9             	add    %rbx,%rcx
ffff800000106ae6:	ff d1                	call   *%rcx
ffff800000106ae8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aec:	83 e0 02             	and    $0x2,%eax
ffff800000106aef:	48 85 c0             	test   %rax,%rax
ffff800000106af2:	74 34                	je     ffff800000106b28 <do_page_fault+0x119>
ffff800000106af4:	48 b8 39 a5 ff ff ff 	movabs $0xffffffffffffa539,%rax
ffff800000106afb:	ff ff ff 
ffff800000106afe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b02:	48 89 c2             	mov    %rax,%rdx
ffff800000106b05:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b0a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b0f:	49 89 df             	mov    %rbx,%r15
ffff800000106b12:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b17:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106b1e:	ff ff ff 
ffff800000106b21:	48 01 d9             	add    %rbx,%rcx
ffff800000106b24:	ff d1                	call   *%rcx
ffff800000106b26:	eb 32                	jmp    ffff800000106b5a <do_page_fault+0x14b>
ffff800000106b28:	48 b8 4d a5 ff ff ff 	movabs $0xffffffffffffa54d,%rax
ffff800000106b2f:	ff ff ff 
ffff800000106b32:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b36:	48 89 c2             	mov    %rax,%rdx
ffff800000106b39:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b3e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b43:	49 89 df             	mov    %rbx,%r15
ffff800000106b46:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b4b:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106b52:	ff ff ff 
ffff800000106b55:	48 01 d9             	add    %rbx,%rcx
ffff800000106b58:	ff d1                	call   *%rcx
ffff800000106b5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b5e:	83 e0 04             	and    $0x4,%eax
ffff800000106b61:	48 85 c0             	test   %rax,%rax
ffff800000106b64:	74 34                	je     ffff800000106b9a <do_page_fault+0x18b>
ffff800000106b66:	48 b8 60 a5 ff ff ff 	movabs $0xffffffffffffa560,%rax
ffff800000106b6d:	ff ff ff 
ffff800000106b70:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b74:	48 89 c2             	mov    %rax,%rdx
ffff800000106b77:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b7c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b81:	49 89 df             	mov    %rbx,%r15
ffff800000106b84:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b89:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106b90:	ff ff ff 
ffff800000106b93:	48 01 d9             	add    %rbx,%rcx
ffff800000106b96:	ff d1                	call   *%rcx
ffff800000106b98:	eb 32                	jmp    ffff800000106bcc <do_page_fault+0x1bd>
ffff800000106b9a:	48 b8 72 a5 ff ff ff 	movabs $0xffffffffffffa572,%rax
ffff800000106ba1:	ff ff ff 
ffff800000106ba4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ba8:	48 89 c2             	mov    %rax,%rdx
ffff800000106bab:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bb0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bb5:	49 89 df             	mov    %rbx,%r15
ffff800000106bb8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bbd:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106bc4:	ff ff ff 
ffff800000106bc7:	48 01 d9             	add    %rbx,%rcx
ffff800000106bca:	ff d1                	call   *%rcx
ffff800000106bcc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bd0:	83 e0 08             	and    $0x8,%eax
ffff800000106bd3:	48 85 c0             	test   %rax,%rax
ffff800000106bd6:	74 32                	je     ffff800000106c0a <do_page_fault+0x1fb>
ffff800000106bd8:	48 b8 8e a5 ff ff ff 	movabs $0xffffffffffffa58e,%rax
ffff800000106bdf:	ff ff ff 
ffff800000106be2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106be6:	48 89 c2             	mov    %rax,%rdx
ffff800000106be9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bee:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bf3:	49 89 df             	mov    %rbx,%r15
ffff800000106bf6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bfb:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106c02:	ff ff ff 
ffff800000106c05:	48 01 d9             	add    %rbx,%rcx
ffff800000106c08:	ff d1                	call   *%rcx
ffff800000106c0a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c0e:	83 e0 10             	and    $0x10,%eax
ffff800000106c11:	48 85 c0             	test   %rax,%rax
ffff800000106c14:	74 32                	je     ffff800000106c48 <do_page_fault+0x239>
ffff800000106c16:	48 b8 b0 a5 ff ff ff 	movabs $0xffffffffffffa5b0,%rax
ffff800000106c1d:	ff ff ff 
ffff800000106c20:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c24:	48 89 c2             	mov    %rax,%rdx
ffff800000106c27:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c2c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c31:	49 89 df             	mov    %rbx,%r15
ffff800000106c34:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c39:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106c40:	ff ff ff 
ffff800000106c43:	48 01 d9             	add    %rbx,%rcx
ffff800000106c46:	ff d1                	call   *%rcx
ffff800000106c48:	48 b8 cf a5 ff ff ff 	movabs $0xffffffffffffa5cf,%rax
ffff800000106c4f:	ff ff ff 
ffff800000106c52:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c56:	48 89 c2             	mov    %rax,%rdx
ffff800000106c59:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c5e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c63:	49 89 df             	mov    %rbx,%r15
ffff800000106c66:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c6b:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000106c72:	ff ff ff 
ffff800000106c75:	48 01 d9             	add    %rbx,%rcx
ffff800000106c78:	ff d1                	call   *%rcx
ffff800000106c7a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c7e:	48 89 c1             	mov    %rax,%rcx
ffff800000106c81:	48 b8 d1 a5 ff ff ff 	movabs $0xffffffffffffa5d1,%rax
ffff800000106c88:	ff ff ff 
ffff800000106c8b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c8f:	48 89 c2             	mov    %rax,%rdx
ffff800000106c92:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c97:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c9c:	49 89 df             	mov    %rbx,%r15
ffff800000106c9f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ca4:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff800000106cab:	ff ff ff 
ffff800000106cae:	49 01 d8             	add    %rbx,%r8
ffff800000106cb1:	41 ff d0             	call   *%r8
ffff800000106cb4:	90                   	nop
ffff800000106cb5:	eb fd                	jmp    ffff800000106cb4 <do_page_fault+0x2a5>

ffff800000106cb7 <do_x87_FPU_error>:
ffff800000106cb7:	f3 0f 1e fa          	endbr64
ffff800000106cbb:	55                   	push   %rbp
ffff800000106cbc:	48 89 e5             	mov    %rsp,%rbp
ffff800000106cbf:	41 57                	push   %r15
ffff800000106cc1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106cc5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106cc5 <do_x87_FPU_error+0xe>
ffff800000106ccc:	49 bb cb 7b 00 00 00 	movabs $0x7bcb,%r11
ffff800000106cd3:	00 00 00 
ffff800000106cd6:	4d 01 da             	add    %r11,%r10
ffff800000106cd9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106cdd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ce1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ce8:	00 
ffff800000106ce9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ced:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106cf3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106cf7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106cfb:	48 8b 08             	mov    (%rax),%rcx
ffff800000106cfe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d02:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d06:	49 89 c9             	mov    %rcx,%r9
ffff800000106d09:	49 89 d0             	mov    %rdx,%r8
ffff800000106d0c:	48 89 c1             	mov    %rax,%rcx
ffff800000106d0f:	48 b8 e0 a5 ff ff ff 	movabs $0xffffffffffffa5e0,%rax
ffff800000106d16:	ff ff ff 
ffff800000106d19:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d1d:	48 89 c2             	mov    %rax,%rdx
ffff800000106d20:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d25:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d2a:	4d 89 d7             	mov    %r10,%r15
ffff800000106d2d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d32:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106d39:	ff ff ff 
ffff800000106d3c:	4d 01 d3             	add    %r10,%r11
ffff800000106d3f:	41 ff d3             	call   *%r11
ffff800000106d42:	90                   	nop
ffff800000106d43:	eb fd                	jmp    ffff800000106d42 <do_x87_FPU_error+0x8b>

ffff800000106d45 <do_alignment_check>:
ffff800000106d45:	f3 0f 1e fa          	endbr64
ffff800000106d49:	55                   	push   %rbp
ffff800000106d4a:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d4d:	41 57                	push   %r15
ffff800000106d4f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d53:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d53 <do_alignment_check+0xe>
ffff800000106d5a:	49 bb 3d 7b 00 00 00 	movabs $0x7b3d,%r11
ffff800000106d61:	00 00 00 
ffff800000106d64:	4d 01 da             	add    %r11,%r10
ffff800000106d67:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d6b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d6f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d76:	00 
ffff800000106d77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d7b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d81:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d85:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d89:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d8c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d90:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d94:	49 89 c9             	mov    %rcx,%r9
ffff800000106d97:	49 89 d0             	mov    %rdx,%r8
ffff800000106d9a:	48 89 c1             	mov    %rax,%rcx
ffff800000106d9d:	48 b8 28 a6 ff ff ff 	movabs $0xffffffffffffa628,%rax
ffff800000106da4:	ff ff ff 
ffff800000106da7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106dab:	48 89 c2             	mov    %rax,%rdx
ffff800000106dae:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106db3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106db8:	4d 89 d7             	mov    %r10,%r15
ffff800000106dbb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dc0:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106dc7:	ff ff ff 
ffff800000106dca:	4d 01 d3             	add    %r10,%r11
ffff800000106dcd:	41 ff d3             	call   *%r11
ffff800000106dd0:	90                   	nop
ffff800000106dd1:	eb fd                	jmp    ffff800000106dd0 <do_alignment_check+0x8b>

ffff800000106dd3 <do_machine_check>:
ffff800000106dd3:	f3 0f 1e fa          	endbr64
ffff800000106dd7:	55                   	push   %rbp
ffff800000106dd8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ddb:	41 57                	push   %r15
ffff800000106ddd:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106de1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106de1 <do_machine_check+0xe>
ffff800000106de8:	49 bb af 7a 00 00 00 	movabs $0x7aaf,%r11
ffff800000106def:	00 00 00 
ffff800000106df2:	4d 01 da             	add    %r11,%r10
ffff800000106df5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106df9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106dfd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e04:	00 
ffff800000106e05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e09:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e0f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e13:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e17:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e1a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e1e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e22:	49 89 c9             	mov    %rcx,%r9
ffff800000106e25:	49 89 d0             	mov    %rdx,%r8
ffff800000106e28:	48 89 c1             	mov    %rax,%rcx
ffff800000106e2b:	48 b8 70 a6 ff ff ff 	movabs $0xffffffffffffa670,%rax
ffff800000106e32:	ff ff ff 
ffff800000106e35:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e39:	48 89 c2             	mov    %rax,%rdx
ffff800000106e3c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e41:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e46:	4d 89 d7             	mov    %r10,%r15
ffff800000106e49:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e4e:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106e55:	ff ff ff 
ffff800000106e58:	4d 01 d3             	add    %r10,%r11
ffff800000106e5b:	41 ff d3             	call   *%r11
ffff800000106e5e:	90                   	nop
ffff800000106e5f:	eb fd                	jmp    ffff800000106e5e <do_machine_check+0x8b>

ffff800000106e61 <do_SIMD_exception>:
ffff800000106e61:	f3 0f 1e fa          	endbr64
ffff800000106e65:	55                   	push   %rbp
ffff800000106e66:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e69:	41 57                	push   %r15
ffff800000106e6b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e6f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e6f <do_SIMD_exception+0xe>
ffff800000106e76:	49 bb 21 7a 00 00 00 	movabs $0x7a21,%r11
ffff800000106e7d:	00 00 00 
ffff800000106e80:	4d 01 da             	add    %r11,%r10
ffff800000106e83:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e87:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e8b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e92:	00 
ffff800000106e93:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e97:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e9d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ea1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ea5:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ea8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106eac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106eb0:	49 89 c9             	mov    %rcx,%r9
ffff800000106eb3:	49 89 d0             	mov    %rdx,%r8
ffff800000106eb6:	48 89 c1             	mov    %rax,%rcx
ffff800000106eb9:	48 b8 b8 a6 ff ff ff 	movabs $0xffffffffffffa6b8,%rax
ffff800000106ec0:	ff ff ff 
ffff800000106ec3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106ec7:	48 89 c2             	mov    %rax,%rdx
ffff800000106eca:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ecf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ed4:	4d 89 d7             	mov    %r10,%r15
ffff800000106ed7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106edc:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106ee3:	ff ff ff 
ffff800000106ee6:	4d 01 d3             	add    %r10,%r11
ffff800000106ee9:	41 ff d3             	call   *%r11
ffff800000106eec:	90                   	nop
ffff800000106eed:	eb fd                	jmp    ffff800000106eec <do_SIMD_exception+0x8b>

ffff800000106eef <do_virtualization_exception>:
ffff800000106eef:	f3 0f 1e fa          	endbr64
ffff800000106ef3:	55                   	push   %rbp
ffff800000106ef4:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ef7:	41 57                	push   %r15
ffff800000106ef9:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106efd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106efd <do_virtualization_exception+0xe>
ffff800000106f04:	49 bb 93 79 00 00 00 	movabs $0x7993,%r11
ffff800000106f0b:	00 00 00 
ffff800000106f0e:	4d 01 da             	add    %r11,%r10
ffff800000106f11:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f15:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f19:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f20:	00 
ffff800000106f21:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f25:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f2b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f33:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f36:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f3a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f3e:	49 89 c9             	mov    %rcx,%r9
ffff800000106f41:	49 89 d0             	mov    %rdx,%r8
ffff800000106f44:	48 89 c1             	mov    %rax,%rcx
ffff800000106f47:	48 b8 00 a7 ff ff ff 	movabs $0xffffffffffffa700,%rax
ffff800000106f4e:	ff ff ff 
ffff800000106f51:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f55:	48 89 c2             	mov    %rax,%rdx
ffff800000106f58:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f5d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f62:	4d 89 d7             	mov    %r10,%r15
ffff800000106f65:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f6a:	49 bb f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r11
ffff800000106f71:	ff ff ff 
ffff800000106f74:	4d 01 d3             	add    %r10,%r11
ffff800000106f77:	41 ff d3             	call   *%r11
ffff800000106f7a:	90                   	nop
ffff800000106f7b:	eb fd                	jmp    ffff800000106f7a <do_virtualization_exception+0x8b>

ffff800000106f7d <sys_vector_init>:
ffff800000106f7d:	f3 0f 1e fa          	endbr64
ffff800000106f81:	55                   	push   %rbp
ffff800000106f82:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f85:	53                   	push   %rbx
ffff800000106f86:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106f86 <sys_vector_init+0x9>
ffff800000106f8d:	49 bb 0a 79 00 00 00 	movabs $0x790a,%r11
ffff800000106f94:	00 00 00 
ffff800000106f97:	4c 01 db             	add    %r11,%rbx
ffff800000106f9a:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000106fa1:	ff ff ff 
ffff800000106fa4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fa8:	48 89 c2             	mov    %rax,%rdx
ffff800000106fab:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fb0:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000106fb5:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000106fbc:	ff ff ff 
ffff800000106fbf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fc3:	ff d0                	call   *%rax
ffff800000106fc5:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000106fcc:	ff ff ff 
ffff800000106fcf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fd3:	48 89 c2             	mov    %rax,%rdx
ffff800000106fd6:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fdb:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000106fe0:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000106fe7:	ff ff ff 
ffff800000106fea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fee:	ff d0                	call   *%rax
ffff800000106ff0:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000106ff7:	ff ff ff 
ffff800000106ffa:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106ffe:	48 89 c2             	mov    %rax,%rdx
ffff800000107001:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107006:	bf 02 00 00 00       	mov    $0x2,%edi
ffff80000010700b:	48 b8 c8 70 ff ff ff 	movabs $0xffffffffffff70c8,%rax
ffff800000107012:	ff ff ff 
ffff800000107015:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107019:	ff d0                	call   *%rax
ffff80000010701b:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000107022:	ff ff ff 
ffff800000107025:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107029:	48 89 c2             	mov    %rax,%rdx
ffff80000010702c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107031:	bf 03 00 00 00       	mov    $0x3,%edi
ffff800000107036:	48 b8 24 72 ff ff ff 	movabs $0xffffffffffff7224,%rax
ffff80000010703d:	ff ff ff 
ffff800000107040:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107044:	ff d0                	call   *%rax
ffff800000107046:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff80000010704d:	ff ff ff 
ffff800000107050:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107054:	48 89 c2             	mov    %rax,%rdx
ffff800000107057:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010705c:	bf 04 00 00 00       	mov    $0x4,%edi
ffff800000107061:	48 b8 24 72 ff ff ff 	movabs $0xffffffffffff7224,%rax
ffff800000107068:	ff ff ff 
ffff80000010706b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010706f:	ff d0                	call   *%rax
ffff800000107071:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107078:	ff ff ff 
ffff80000010707b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010707f:	48 89 c2             	mov    %rax,%rdx
ffff800000107082:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107087:	bf 05 00 00 00       	mov    $0x5,%edi
ffff80000010708c:	48 b8 24 72 ff ff ff 	movabs $0xffffffffffff7224,%rax
ffff800000107093:	ff ff ff 
ffff800000107096:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010709a:	ff d0                	call   *%rax
ffff80000010709c:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff8000001070a3:	ff ff ff 
ffff8000001070a6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070aa:	48 89 c2             	mov    %rax,%rdx
ffff8000001070ad:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070b2:	bf 06 00 00 00       	mov    $0x6,%edi
ffff8000001070b7:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001070be:	ff ff ff 
ffff8000001070c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070c5:	ff d0                	call   *%rax
ffff8000001070c7:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff8000001070ce:	ff ff ff 
ffff8000001070d1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070d5:	48 89 c2             	mov    %rax,%rdx
ffff8000001070d8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070dd:	bf 07 00 00 00       	mov    $0x7,%edi
ffff8000001070e2:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001070e9:	ff ff ff 
ffff8000001070ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070f0:	ff d0                	call   *%rax
ffff8000001070f2:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001070f9:	ff ff ff 
ffff8000001070fc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107100:	48 89 c2             	mov    %rax,%rdx
ffff800000107103:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107108:	bf 08 00 00 00       	mov    $0x8,%edi
ffff80000010710d:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000107114:	ff ff ff 
ffff800000107117:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010711b:	ff d0                	call   *%rax
ffff80000010711d:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff800000107124:	ff ff ff 
ffff800000107127:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010712b:	48 89 c2             	mov    %rax,%rdx
ffff80000010712e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107133:	bf 09 00 00 00       	mov    $0x9,%edi
ffff800000107138:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff80000010713f:	ff ff ff 
ffff800000107142:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107146:	ff d0                	call   *%rax
ffff800000107148:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff80000010714f:	ff ff ff 
ffff800000107152:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107156:	48 89 c2             	mov    %rax,%rdx
ffff800000107159:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010715e:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff800000107163:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff80000010716a:	ff ff ff 
ffff80000010716d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107171:	ff d0                	call   *%rax
ffff800000107173:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff80000010717a:	ff ff ff 
ffff80000010717d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107181:	48 89 c2             	mov    %rax,%rdx
ffff800000107184:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107189:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff80000010718e:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000107195:	ff ff ff 
ffff800000107198:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010719c:	ff d0                	call   *%rax
ffff80000010719e:	48 b8 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rax
ffff8000001071a5:	ff ff ff 
ffff8000001071a8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071ac:	48 89 c2             	mov    %rax,%rdx
ffff8000001071af:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071b4:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff8000001071b9:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001071c0:	ff ff ff 
ffff8000001071c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071c7:	ff d0                	call   *%rax
ffff8000001071c9:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff8000001071d0:	ff ff ff 
ffff8000001071d3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071d7:	48 89 c2             	mov    %rax,%rdx
ffff8000001071da:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071df:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001071e4:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001071eb:	ff ff ff 
ffff8000001071ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071f2:	ff d0                	call   *%rax
ffff8000001071f4:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001071fb:	ff ff ff 
ffff8000001071fe:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107202:	48 89 c2             	mov    %rax,%rdx
ffff800000107205:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010720a:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff80000010720f:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000107216:	ff ff ff 
ffff800000107219:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010721d:	ff d0                	call   *%rax
ffff80000010721f:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff800000107226:	ff ff ff 
ffff800000107229:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010722d:	48 89 c2             	mov    %rax,%rdx
ffff800000107230:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107235:	bf 10 00 00 00       	mov    $0x10,%edi
ffff80000010723a:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000107241:	ff ff ff 
ffff800000107244:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107248:	ff d0                	call   *%rax
ffff80000010724a:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff800000107251:	ff ff ff 
ffff800000107254:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107258:	48 89 c2             	mov    %rax,%rdx
ffff80000010725b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107260:	bf 11 00 00 00       	mov    $0x11,%edi
ffff800000107265:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff80000010726c:	ff ff ff 
ffff80000010726f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107273:	ff d0                	call   *%rax
ffff800000107275:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff80000010727c:	ff ff ff 
ffff80000010727f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107283:	48 89 c2             	mov    %rax,%rdx
ffff800000107286:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010728b:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107290:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff800000107297:	ff ff ff 
ffff80000010729a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010729e:	ff d0                	call   *%rax
ffff8000001072a0:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff8000001072a7:	ff ff ff 
ffff8000001072aa:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072ae:	48 89 c2             	mov    %rax,%rdx
ffff8000001072b1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072b6:	bf 13 00 00 00       	mov    $0x13,%edi
ffff8000001072bb:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001072c2:	ff ff ff 
ffff8000001072c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072c9:	ff d0                	call   *%rax
ffff8000001072cb:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff8000001072d2:	ff ff ff 
ffff8000001072d5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072d9:	48 89 c2             	mov    %rax,%rdx
ffff8000001072dc:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072e1:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001072e6:	48 b8 76 71 ff ff ff 	movabs $0xffffffffffff7176,%rax
ffff8000001072ed:	ff ff ff 
ffff8000001072f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072f4:	ff d0                	call   *%rax
ffff8000001072f6:	90                   	nop
ffff8000001072f7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001072fb:	c9                   	leave
ffff8000001072fc:	c3                   	ret

ffff8000001072fd <RESTORE_ALL>:
ffff8000001072fd:	41 5f                	pop    %r15
ffff8000001072ff:	41 5e                	pop    %r14
ffff800000107301:	41 5d                	pop    %r13
ffff800000107303:	41 5c                	pop    %r12
ffff800000107305:	41 5b                	pop    %r11
ffff800000107307:	41 5a                	pop    %r10
ffff800000107309:	41 59                	pop    %r9
ffff80000010730b:	41 58                	pop    %r8
ffff80000010730d:	5b                   	pop    %rbx
ffff80000010730e:	59                   	pop    %rcx
ffff80000010730f:	5a                   	pop    %rdx
ffff800000107310:	5e                   	pop    %rsi
ffff800000107311:	5f                   	pop    %rdi
ffff800000107312:	5d                   	pop    %rbp
ffff800000107313:	58                   	pop    %rax
ffff800000107314:	8e d8                	mov    %eax,%ds
ffff800000107316:	58                   	pop    %rax
ffff800000107317:	8e c0                	mov    %eax,%es
ffff800000107319:	58                   	pop    %rax
ffff80000010731a:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010731e:	48 cf                	iretq

ffff800000107320 <divide_error>:
ffff800000107320:	6a 00                	push   $0x0
ffff800000107322:	50                   	push   %rax
ffff800000107323:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105c93 <do_divide_error>
ffff80000010732a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010732e:	eb 00                	jmp    ffff800000107330 <error_code>

ffff800000107330 <error_code>:
ffff800000107330:	50                   	push   %rax
ffff800000107331:	8c c0                	mov    %es,%eax
ffff800000107333:	50                   	push   %rax
ffff800000107334:	8c d8                	mov    %ds,%eax
ffff800000107336:	50                   	push   %rax
ffff800000107337:	48 31 c0             	xor    %rax,%rax
ffff80000010733a:	55                   	push   %rbp
ffff80000010733b:	57                   	push   %rdi
ffff80000010733c:	56                   	push   %rsi
ffff80000010733d:	52                   	push   %rdx
ffff80000010733e:	51                   	push   %rcx
ffff80000010733f:	53                   	push   %rbx
ffff800000107340:	41 50                	push   %r8
ffff800000107342:	41 51                	push   %r9
ffff800000107344:	41 52                	push   %r10
ffff800000107346:	41 53                	push   %r11
ffff800000107348:	41 54                	push   %r12
ffff80000010734a:	41 55                	push   %r13
ffff80000010734c:	41 56                	push   %r14
ffff80000010734e:	41 57                	push   %r15
ffff800000107350:	fc                   	cld
ffff800000107351:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000107358:	00 
ffff800000107359:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000107360:	00 
ffff800000107361:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000107368:	8e df                	mov    %edi,%ds
ffff80000010736a:	8e c7                	mov    %edi,%es
ffff80000010736c:	48 89 e7             	mov    %rsp,%rdi
ffff80000010736f:	ff d2                	call   *%rdx
ffff800000107371:	eb 00                	jmp    ffff800000107373 <ret_from_intr>

ffff800000107373 <ret_from_intr>:
ffff800000107373:	eb 88                	jmp    ffff8000001072fd <RESTORE_ALL>

ffff800000107375 <debug>:
ffff800000107375:	6a 00                	push   $0x0
ffff800000107377:	50                   	push   %rax
ffff800000107378:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105d21 <do_debug>
ffff80000010737f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107383:	eb ab                	jmp    ffff800000107330 <error_code>

ffff800000107385 <nmi>:
ffff800000107385:	50                   	push   %rax
ffff800000107386:	fc                   	cld
ffff800000107387:	50                   	push   %rax
ffff800000107388:	50                   	push   %rax
ffff800000107389:	8c c0                	mov    %es,%eax
ffff80000010738b:	50                   	push   %rax
ffff80000010738c:	8c d8                	mov    %ds,%eax
ffff80000010738e:	50                   	push   %rax
ffff80000010738f:	48 31 c0             	xor    %rax,%rax
ffff800000107392:	55                   	push   %rbp
ffff800000107393:	57                   	push   %rdi
ffff800000107394:	56                   	push   %rsi
ffff800000107395:	52                   	push   %rdx
ffff800000107396:	51                   	push   %rcx
ffff800000107397:	53                   	push   %rbx
ffff800000107398:	41 50                	push   %r8
ffff80000010739a:	41 51                	push   %r9
ffff80000010739c:	41 52                	push   %r10
ffff80000010739e:	41 53                	push   %r11
ffff8000001073a0:	41 54                	push   %r12
ffff8000001073a2:	41 55                	push   %r13
ffff8000001073a4:	41 56                	push   %r14
ffff8000001073a6:	41 57                	push   %r15
ffff8000001073a8:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff8000001073af:	8e da                	mov    %edx,%ds
ffff8000001073b1:	8e c2                	mov    %edx,%es
ffff8000001073b3:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff8000001073ba:	48 89 e6             	mov    %rsp,%rsi
ffff8000001073bd:	e8 ed e9 ff ff       	call   ffff800000105daf <do_nmi>
ffff8000001073c2:	e9 36 ff ff ff       	jmp    ffff8000001072fd <RESTORE_ALL>

ffff8000001073c7 <invalid_TSS>:
ffff8000001073c7:	50                   	push   %rax
ffff8000001073c8:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff80000010621f <do_invalid_TSS>
ffff8000001073cf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073d3:	e9 58 ff ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001073d8 <page_fault>:
ffff8000001073d8:	50                   	push   %rax
ffff8000001073d9:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106a0f <do_page_fault>
ffff8000001073e0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073e4:	e9 47 ff ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001073e9 <int3>:
ffff8000001073e9:	6a 00                	push   $0x0
ffff8000001073eb:	50                   	push   %rax
ffff8000001073ec:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105e3d <do_int3>
ffff8000001073f3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073f7:	e9 34 ff ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001073fc <overflow>:
ffff8000001073fc:	6a 00                	push   $0x0
ffff8000001073fe:	50                   	push   %rax
ffff8000001073ff:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105ecb <do_overflow>
ffff800000107406:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010740a:	e9 21 ff ff ff       	jmp    ffff800000107330 <error_code>

ffff80000010740f <bounds>:
ffff80000010740f:	6a 00                	push   $0x0
ffff800000107411:	50                   	push   %rax
ffff800000107412:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105f59 <do_bounds>
ffff800000107419:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010741d:	e9 0e ff ff ff       	jmp    ffff800000107330 <error_code>

ffff800000107422 <undefined_opcode>:
ffff800000107422:	6a 00                	push   $0x0
ffff800000107424:	50                   	push   %rax
ffff800000107425:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff800000105fe7 <do_undefined_opcode>
ffff80000010742c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107430:	e9 fb fe ff ff       	jmp    ffff800000107330 <error_code>

ffff800000107435 <dev_not_available>:
ffff800000107435:	6a 00                	push   $0x0
ffff800000107437:	50                   	push   %rax
ffff800000107438:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff800000106075 <do_dev_not_available>
ffff80000010743f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107443:	e9 e8 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff800000107448 <double_fault>:
ffff800000107448:	50                   	push   %rax
ffff800000107449:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff800000106103 <do_double_fault>
ffff800000107450:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107454:	e9 d7 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff800000107459 <coprocessor_segment_overrun>:
ffff800000107459:	6a 00                	push   $0x0
ffff80000010745b:	50                   	push   %rax
ffff80000010745c:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff800000106191 <do_coprocessor_segment_overrun>
ffff800000107463:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107467:	e9 c4 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff80000010746c <segment_not_present>:
ffff80000010746c:	50                   	push   %rax
ffff80000010746d:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff80000010641b <do_segment_not_present>
ffff800000107474:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107478:	e9 b3 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff80000010747d <stack_segment_fault>:
ffff80000010747d:	50                   	push   %rax
ffff80000010747e:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff800000106617 <do_stack_segment_fault>
ffff800000107485:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107489:	e9 a2 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff80000010748e <general_protection>:
ffff80000010748e:	50                   	push   %rax
ffff80000010748f:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff800000106813 <do_general_protection>
ffff800000107496:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010749a:	e9 91 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff80000010749f <x87_FPU_error>:
ffff80000010749f:	6a 00                	push   $0x0
ffff8000001074a1:	50                   	push   %rax
ffff8000001074a2:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106cb7 <do_x87_FPU_error>
ffff8000001074a9:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ad:	e9 7e fe ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001074b2 <alignment_check>:
ffff8000001074b2:	50                   	push   %rax
ffff8000001074b3:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106d45 <do_alignment_check>
ffff8000001074ba:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074be:	e9 6d fe ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001074c3 <machine_check>:
ffff8000001074c3:	6a 00                	push   $0x0
ffff8000001074c5:	50                   	push   %rax
ffff8000001074c6:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106dd3 <do_machine_check>
ffff8000001074cd:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074d1:	e9 5a fe ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001074d6 <SIMD_exception>:
ffff8000001074d6:	6a 00                	push   $0x0
ffff8000001074d8:	50                   	push   %rax
ffff8000001074d9:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106e61 <do_SIMD_exception>
ffff8000001074e0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074e4:	e9 47 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001074e9 <virtualization_exception>:
ffff8000001074e9:	6a 00                	push   $0x0
ffff8000001074eb:	50                   	push   %rax
ffff8000001074ec:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106eef <do_virtualization_exception>
ffff8000001074f3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074f7:	e9 34 fe ff ff       	jmp    ffff800000107330 <error_code>

ffff8000001074fc <Cmemset>:
ffff8000001074fc:	f3 0f 1e fa          	endbr64
ffff800000107500:	55                   	push   %rbp
ffff800000107501:	48 89 e5             	mov    %rsp,%rbp
ffff800000107504:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107504 <Cmemset+0x8>
ffff80000010750b:	49 bb 8c 73 00 00 00 	movabs $0x738c,%r11
ffff800000107512:	00 00 00 
ffff800000107515:	4c 01 d8             	add    %r11,%rax
ffff800000107518:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010751c:	89 f0                	mov    %esi,%eax
ffff80000010751e:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff800000107522:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff800000107525:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107529:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010752d:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff800000107531:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107535:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107539:	48 c1 e0 08          	shl    $0x8,%rax
ffff80000010753d:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107541:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107545:	48 c1 e0 10          	shl    $0x10,%rax
ffff800000107549:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff80000010754d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107551:	48 c1 e0 20          	shl    $0x20,%rax
ffff800000107555:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107559:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010755d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107561:	eb 15                	jmp    ffff800000107578 <Cmemset+0x7c>
ffff800000107563:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107567:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010756b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010756e:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff800000107573:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff800000107578:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff80000010757d:	7f e4                	jg     ffff800000107563 <Cmemset+0x67>
ffff80000010757f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107583:	83 e0 04             	and    $0x4,%eax
ffff800000107586:	48 85 c0             	test   %rax,%rax
ffff800000107589:	74 11                	je     ffff80000010759c <Cmemset+0xa0>
ffff80000010758b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010758f:	89 c2                	mov    %eax,%edx
ffff800000107591:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107595:	89 10                	mov    %edx,(%rax)
ffff800000107597:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff80000010759c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001075a0:	83 e0 02             	and    $0x2,%eax
ffff8000001075a3:	48 85 c0             	test   %rax,%rax
ffff8000001075a6:	74 12                	je     ffff8000001075ba <Cmemset+0xbe>
ffff8000001075a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075ac:	89 c2                	mov    %eax,%edx
ffff8000001075ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075b2:	66 89 10             	mov    %dx,(%rax)
ffff8000001075b5:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff8000001075ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001075be:	83 e0 01             	and    $0x1,%eax
ffff8000001075c1:	48 85 c0             	test   %rax,%rax
ffff8000001075c4:	74 0a                	je     ffff8000001075d0 <Cmemset+0xd4>
ffff8000001075c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075ca:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff8000001075ce:	88 10                	mov    %dl,(%rax)
ffff8000001075d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075d4:	5d                   	pop    %rbp
ffff8000001075d5:	c3                   	ret

ffff8000001075d6 <Get_gdt>:
ffff8000001075d6:	f3 0f 1e fa          	endbr64
ffff8000001075da:	55                   	push   %rbp
ffff8000001075db:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075de:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001075de <Get_gdt+0x8>
ffff8000001075e5:	49 bb b2 72 00 00 00 	movabs $0x72b2,%r11
ffff8000001075ec:	00 00 00 
ffff8000001075ef:	4c 01 d8             	add    %r11,%rax
ffff8000001075f2:	0f 20 d8             	mov    %cr3,%rax
ffff8000001075f5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001075f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075fd:	5d                   	pop    %rbp
ffff8000001075fe:	c3                   	ret

ffff8000001075ff <page_init>:
ffff8000001075ff:	f3 0f 1e fa          	endbr64
ffff800000107603:	55                   	push   %rbp
ffff800000107604:	48 89 e5             	mov    %rsp,%rbp
ffff800000107607:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107607 <page_init+0x8>
ffff80000010760e:	49 bb 89 72 00 00 00 	movabs $0x7289,%r11
ffff800000107615:	00 00 00 
ffff800000107618:	4c 01 d8             	add    %r11,%rax
ffff80000010761b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010761f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107623:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107627:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010762b:	48 85 d2             	test   %rdx,%rdx
ffff80000010762e:	0f 85 d0 00 00 00    	jne    ffff800000107704 <page_init+0x105>
ffff800000107634:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010763b:	00 00 00 
ffff80000010763e:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107645:	00 
ffff800000107646:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010764a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff80000010764e:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107652:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107656:	48 01 ca             	add    %rcx,%rdx
ffff800000107659:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010765c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107660:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107664:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107668:	83 e2 3f             	and    $0x3f,%edx
ffff80000010766b:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107670:	89 d1                	mov    %edx,%ecx
ffff800000107672:	48 d3 e7             	shl    %cl,%rdi
ffff800000107675:	48 89 f9             	mov    %rdi,%rcx
ffff800000107678:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010767f:	00 00 00 
ffff800000107682:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff800000107689:	00 
ffff80000010768a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010768e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107692:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107696:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010769a:	48 01 d0             	add    %rdx,%rax
ffff80000010769d:	48 09 ce             	or     %rcx,%rsi
ffff8000001076a0:	48 89 f2             	mov    %rsi,%rdx
ffff8000001076a3:	48 89 10             	mov    %rdx,(%rax)
ffff8000001076a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076aa:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001076ae:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001076b2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076b6:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001076ba:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001076be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076c2:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001076c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076ca:	48 8b 00             	mov    (%rax),%rax
ffff8000001076cd:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff8000001076d1:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001076d5:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff8000001076d9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076dd:	48 8b 00             	mov    (%rax),%rax
ffff8000001076e0:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff8000001076e4:	48 83 ea 01          	sub    $0x1,%rdx
ffff8000001076e8:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff8000001076ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076f0:	48 8b 00             	mov    (%rax),%rax
ffff8000001076f3:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001076f7:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001076fb:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001076ff:	e9 0a 01 00 00       	jmp    ffff80000010780e <page_init+0x20f>
ffff800000107704:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107708:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010770c:	83 e2 04             	and    $0x4,%edx
ffff80000010770f:	48 85 d2             	test   %rdx,%rdx
ffff800000107712:	75 2e                	jne    ffff800000107742 <page_init+0x143>
ffff800000107714:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107718:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010771c:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107722:	48 85 d2             	test   %rdx,%rdx
ffff800000107725:	75 1b                	jne    ffff800000107742 <page_init+0x143>
ffff800000107727:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010772b:	83 e2 04             	and    $0x4,%edx
ffff80000010772e:	48 85 d2             	test   %rdx,%rdx
ffff800000107731:	75 0f                	jne    ffff800000107742 <page_init+0x143>
ffff800000107733:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107737:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff80000010773d:	48 85 d2             	test   %rdx,%rdx
ffff800000107740:	74 43                	je     ffff800000107785 <page_init+0x186>
ffff800000107742:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107746:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010774a:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff80000010774e:	48 89 c2             	mov    %rax,%rdx
ffff800000107751:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107755:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107759:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010775d:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000107761:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107765:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107769:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff80000010776d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107771:	48 8b 00             	mov    (%rax),%rax
ffff800000107774:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff800000107778:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010777c:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff800000107780:	e9 89 00 00 00       	jmp    ffff80000010780e <page_init+0x20f>
ffff800000107785:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010778c:	00 00 00 
ffff80000010778f:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107796:	00 
ffff800000107797:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010779b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff80000010779f:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff8000001077a3:	48 c1 e2 03          	shl    $0x3,%rdx
ffff8000001077a7:	48 01 ca             	add    %rcx,%rdx
ffff8000001077aa:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001077ad:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001077b1:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001077b5:	48 c1 ea 15          	shr    $0x15,%rdx
ffff8000001077b9:	83 e2 3f             	and    $0x3f,%edx
ffff8000001077bc:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001077c1:	89 d1                	mov    %edx,%ecx
ffff8000001077c3:	48 d3 e7             	shl    %cl,%rdi
ffff8000001077c6:	48 89 f9             	mov    %rdi,%rcx
ffff8000001077c9:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001077d0:	00 00 00 
ffff8000001077d3:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff8000001077da:	00 
ffff8000001077db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077df:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001077e3:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff8000001077e7:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001077eb:	48 01 d0             	add    %rdx,%rax
ffff8000001077ee:	48 09 ce             	or     %rcx,%rsi
ffff8000001077f1:	48 89 f2             	mov    %rsi,%rdx
ffff8000001077f4:	48 89 10             	mov    %rdx,(%rax)
ffff8000001077f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077fb:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001077ff:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107803:	48 89 c2             	mov    %rax,%rdx
ffff800000107806:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010780a:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010780e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107813:	5d                   	pop    %rbp
ffff800000107814:	c3                   	ret

ffff800000107815 <init_memory>:
ffff800000107815:	f3 0f 1e fa          	endbr64
ffff800000107819:	55                   	push   %rbp
ffff80000010781a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010781d:	41 57                	push   %r15
ffff80000010781f:	53                   	push   %rbx
ffff800000107820:	48 83 ec 60          	sub    $0x60,%rsp
ffff800000107824:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107824 <init_memory+0xf>
ffff80000010782b:	49 bb 6c 70 00 00 00 	movabs $0x706c,%r11
ffff800000107832:	00 00 00 
ffff800000107835:	4c 01 db             	add    %r11,%rbx
ffff800000107838:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010783f:	00 
ffff800000107840:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff800000107847:	00 
ffff800000107848:	48 b8 50 a7 ff ff ff 	movabs $0xffffffffffffa750,%rax
ffff80000010784f:	ff ff ff 
ffff800000107852:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107856:	48 89 c2             	mov    %rax,%rdx
ffff800000107859:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010785e:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107863:	49 89 df             	mov    %rbx,%r15
ffff800000107866:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010786b:	48 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%rcx
ffff800000107872:	ff ff ff 
ffff800000107875:	48 01 d9             	add    %rbx,%rcx
ffff800000107878:	ff d1                	call   *%rcx
ffff80000010787a:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107881:	80 ff ff 
ffff800000107884:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107888:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff80000010788f:	e9 8a 01 00 00       	jmp    ffff800000107a1e <init_memory+0x209>
ffff800000107894:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107898:	8b 48 10             	mov    0x10(%rax),%ecx
ffff80000010789b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010789f:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff8000001078a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078a7:	48 8b 00             	mov    (%rax),%rax
ffff8000001078aa:	41 89 c9             	mov    %ecx,%r9d
ffff8000001078ad:	49 89 d0             	mov    %rdx,%r8
ffff8000001078b0:	48 89 c1             	mov    %rax,%rcx
ffff8000001078b3:	48 b8 c8 a7 ff ff ff 	movabs $0xffffffffffffa7c8,%rax
ffff8000001078ba:	ff ff ff 
ffff8000001078bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078c1:	48 89 c2             	mov    %rax,%rdx
ffff8000001078c4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001078c9:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001078ce:	49 89 df             	mov    %rbx,%r15
ffff8000001078d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078d6:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff8000001078dd:	ff ff ff 
ffff8000001078e0:	49 01 da             	add    %rbx,%r10
ffff8000001078e3:	41 ff d2             	call   *%r10
ffff8000001078e6:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff8000001078ed:	00 
ffff8000001078ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078f2:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001078f5:	83 f8 01             	cmp    $0x1,%eax
ffff8000001078f8:	75 0c                	jne    ffff800000107906 <init_memory+0xf1>
ffff8000001078fa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078fe:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107902:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107906:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010790d:	00 00 00 
ffff800000107910:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107913:	48 63 d0             	movslq %eax,%rdx
ffff800000107916:	48 01 d9             	add    %rbx,%rcx
ffff800000107919:	48 89 d0             	mov    %rdx,%rax
ffff80000010791c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107920:	48 01 d0             	add    %rdx,%rax
ffff800000107923:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107927:	48 01 c8             	add    %rcx,%rax
ffff80000010792a:	48 8b 10             	mov    (%rax),%rdx
ffff80000010792d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107931:	48 8b 00             	mov    (%rax),%rax
ffff800000107934:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107938:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff80000010793f:	00 00 00 
ffff800000107942:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107945:	48 63 d0             	movslq %eax,%rdx
ffff800000107948:	48 01 de             	add    %rbx,%rsi
ffff80000010794b:	48 89 d0             	mov    %rdx,%rax
ffff80000010794e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107952:	48 01 d0             	add    %rdx,%rax
ffff800000107955:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107959:	48 01 f0             	add    %rsi,%rax
ffff80000010795c:	48 89 08             	mov    %rcx,(%rax)
ffff80000010795f:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107966:	00 00 00 
ffff800000107969:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010796c:	48 63 d0             	movslq %eax,%rdx
ffff80000010796f:	48 89 d0             	mov    %rdx,%rax
ffff800000107972:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107976:	48 01 d0             	add    %rdx,%rax
ffff800000107979:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010797d:	48 01 d8             	add    %rbx,%rax
ffff800000107980:	48 01 c8             	add    %rcx,%rax
ffff800000107983:	48 83 c0 08          	add    $0x8,%rax
ffff800000107987:	48 8b 10             	mov    (%rax),%rdx
ffff80000010798a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010798e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107992:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107996:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff80000010799d:	00 00 00 
ffff8000001079a0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079a3:	48 63 d0             	movslq %eax,%rdx
ffff8000001079a6:	48 89 d0             	mov    %rdx,%rax
ffff8000001079a9:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079ad:	48 01 d0             	add    %rdx,%rax
ffff8000001079b0:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079b4:	48 01 d8             	add    %rbx,%rax
ffff8000001079b7:	48 01 f0             	add    %rsi,%rax
ffff8000001079ba:	48 83 c0 08          	add    $0x8,%rax
ffff8000001079be:	48 89 08             	mov    %rcx,(%rax)
ffff8000001079c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001079c5:	8b 48 10             	mov    0x10(%rax),%ecx
ffff8000001079c8:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001079cf:	00 00 00 
ffff8000001079d2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079d5:	48 63 d0             	movslq %eax,%rdx
ffff8000001079d8:	48 01 de             	add    %rbx,%rsi
ffff8000001079db:	48 89 d0             	mov    %rdx,%rax
ffff8000001079de:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079e2:	48 01 d0             	add    %rdx,%rax
ffff8000001079e5:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079e9:	48 01 f0             	add    %rsi,%rax
ffff8000001079ec:	48 83 c0 10          	add    $0x10,%rax
ffff8000001079f0:	89 08                	mov    %ecx,(%rax)
ffff8000001079f2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079f5:	48 98                	cltq
ffff8000001079f7:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001079fe:	00 00 00 
ffff800000107a01:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff800000107a08:	00 
ffff800000107a09:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107a0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a12:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107a15:	83 f8 04             	cmp    $0x4,%eax
ffff800000107a18:	77 10                	ja     ffff800000107a2a <init_memory+0x215>
ffff800000107a1a:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff800000107a1e:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff800000107a22:	0f 8e 6c fe ff ff    	jle    ffff800000107894 <init_memory+0x7f>
ffff800000107a28:	eb 01                	jmp    ffff800000107a2b <init_memory+0x216>
ffff800000107a2a:	90                   	nop
ffff800000107a2b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a2f:	48 89 c1             	mov    %rax,%rcx
ffff800000107a32:	48 b8 f8 a7 ff ff ff 	movabs $0xffffffffffffa7f8,%rax
ffff800000107a39:	ff ff ff 
ffff800000107a3c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107a40:	48 89 c2             	mov    %rax,%rdx
ffff800000107a43:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107a48:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107a4d:	49 89 df             	mov    %rbx,%r15
ffff800000107a50:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a55:	49 b8 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r8
ffff800000107a5c:	ff ff ff 
ffff800000107a5f:	49 01 d8             	add    %rbx,%r8
ffff800000107a62:	41 ff d0             	call   *%r8
ffff800000107a65:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107a6c:	00 
ffff800000107a6d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107a74:	e9 ed 00 00 00       	jmp    ffff800000107b66 <init_memory+0x351>
ffff800000107a79:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107a80:	00 00 00 
ffff800000107a83:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107a86:	48 63 d0             	movslq %eax,%rdx
ffff800000107a89:	48 01 d9             	add    %rbx,%rcx
ffff800000107a8c:	48 89 d0             	mov    %rdx,%rax
ffff800000107a8f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a93:	48 01 d0             	add    %rdx,%rax
ffff800000107a96:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a9a:	48 01 c8             	add    %rcx,%rax
ffff800000107a9d:	48 83 c0 10          	add    $0x10,%rax
ffff800000107aa1:	8b 00                	mov    (%rax),%eax
ffff800000107aa3:	83 f8 01             	cmp    $0x1,%eax
ffff800000107aa6:	0f 85 b2 00 00 00    	jne    ffff800000107b5e <init_memory+0x349>
ffff800000107aac:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107ab3:	00 00 00 
ffff800000107ab6:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107ab9:	48 63 d0             	movslq %eax,%rdx
ffff800000107abc:	48 01 d9             	add    %rbx,%rcx
ffff800000107abf:	48 89 d0             	mov    %rdx,%rax
ffff800000107ac2:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ac6:	48 01 d0             	add    %rdx,%rax
ffff800000107ac9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107acd:	48 01 c8             	add    %rcx,%rax
ffff800000107ad0:	48 8b 00             	mov    (%rax),%rax
ffff800000107ad3:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107ad9:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107adf:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000107ae3:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107aea:	00 00 00 
ffff800000107aed:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107af0:	48 63 d0             	movslq %eax,%rdx
ffff800000107af3:	48 01 d9             	add    %rbx,%rcx
ffff800000107af6:	48 89 d0             	mov    %rdx,%rax
ffff800000107af9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107afd:	48 01 d0             	add    %rdx,%rax
ffff800000107b00:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b04:	48 01 c8             	add    %rcx,%rax
ffff800000107b07:	48 8b 08             	mov    (%rax),%rcx
ffff800000107b0a:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107b11:	00 00 00 
ffff800000107b14:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107b17:	48 63 d0             	movslq %eax,%rdx
ffff800000107b1a:	48 89 d0             	mov    %rdx,%rax
ffff800000107b1d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b21:	48 01 d0             	add    %rdx,%rax
ffff800000107b24:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b28:	48 01 d8             	add    %rbx,%rax
ffff800000107b2b:	48 01 f0             	add    %rsi,%rax
ffff800000107b2e:	48 83 c0 08          	add    $0x8,%rax
ffff800000107b32:	48 8b 00             	mov    (%rax),%rax
ffff800000107b35:	48 01 c8             	add    %rcx,%rax
ffff800000107b38:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107b3e:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000107b42:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107b46:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
ffff800000107b4a:	73 15                	jae    ffff800000107b61 <init_memory+0x34c>
ffff800000107b4c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107b50:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000107b54:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107b58:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107b5c:	eb 04                	jmp    ffff800000107b62 <init_memory+0x34d>
ffff800000107b5e:	90                   	nop
ffff800000107b5f:	eb 01                	jmp    ffff800000107b62 <init_memory+0x34d>
ffff800000107b61:	90                   	nop
ffff800000107b62:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107b66:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107b69:	48 98                	cltq
ffff800000107b6b:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107b72:	00 00 00 
ffff800000107b75:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000107b7c:	00 
ffff800000107b7d:	48 39 c2             	cmp    %rax,%rdx
ffff800000107b80:	0f 83 f3 fe ff ff    	jae    ffff800000107a79 <init_memory+0x264>
ffff800000107b86:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107b8a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b8e:	49 89 d0             	mov    %rdx,%r8
ffff800000107b91:	48 89 c1             	mov    %rax,%rcx
ffff800000107b94:	48 b8 18 a8 ff ff ff 	movabs $0xffffffffffffa818,%rax
ffff800000107b9b:	ff ff ff 
ffff800000107b9e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ba2:	48 89 c2             	mov    %rax,%rdx
ffff800000107ba5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107baa:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107baf:	49 89 df             	mov    %rbx,%r15
ffff800000107bb2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107bb7:	49 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r9
ffff800000107bbe:	ff ff ff 
ffff800000107bc1:	49 01 d9             	add    %rbx,%r9
ffff800000107bc4:	41 ff d1             	call   *%r9
ffff800000107bc7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107bce:	00 00 00 
ffff800000107bd1:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107bd8:	00 
ffff800000107bd9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107be0:	00 00 00 
ffff800000107be3:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107be7:	48 89 d0             	mov    %rdx,%rax
ffff800000107bea:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bee:	48 01 d0             	add    %rdx,%rax
ffff800000107bf1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bf5:	48 01 c8             	add    %rcx,%rax
ffff800000107bf8:	48 8b 08             	mov    (%rax),%rcx
ffff800000107bfb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107c02:	00 00 00 
ffff800000107c05:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107c0c:	00 
ffff800000107c0d:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c14:	00 00 00 
ffff800000107c17:	48 89 d0             	mov    %rdx,%rax
ffff800000107c1a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c1e:	48 01 d0             	add    %rdx,%rax
ffff800000107c21:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c25:	48 01 d8             	add    %rbx,%rax
ffff800000107c28:	48 01 f0             	add    %rsi,%rax
ffff800000107c2b:	48 83 c0 08          	add    $0x8,%rax
ffff800000107c2f:	48 8b 00             	mov    (%rax),%rax
ffff800000107c32:	48 01 c8             	add    %rcx,%rax
ffff800000107c35:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107c39:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107c3d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c41:	49 89 d0             	mov    %rdx,%r8
ffff800000107c44:	48 89 c1             	mov    %rax,%rcx
ffff800000107c47:	48 b8 48 a8 ff ff ff 	movabs $0xffffffffffffa848,%rax
ffff800000107c4e:	ff ff ff 
ffff800000107c51:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107c55:	48 89 c2             	mov    %rax,%rdx
ffff800000107c58:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107c5d:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107c62:	49 89 df             	mov    %rbx,%r15
ffff800000107c65:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107c6a:	49 b9 f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r9
ffff800000107c71:	ff ff ff 
ffff800000107c74:	49 01 d9             	add    %rbx,%r9
ffff800000107c77:	41 ff d1             	call   *%r9
ffff800000107c7a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107c81:	00 00 00 
ffff800000107c84:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107c8b:	00 
ffff800000107c8c:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107c92:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107c98:	48 89 c2             	mov    %rax,%rdx
ffff800000107c9b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ca2:	00 00 00 
ffff800000107ca5:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107cac:	00 
ffff800000107cad:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107cb1:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107cb5:	48 89 c2             	mov    %rax,%rdx
ffff800000107cb8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107cbf:	00 00 00 
ffff800000107cc2:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000107cc9:	00 
ffff800000107cca:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107cce:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107cd2:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000107cd6:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000107cda:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107cde:	48 89 c2             	mov    %rax,%rdx
ffff800000107ce1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ce8:	00 00 00 
ffff800000107ceb:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000107cf2:	00 
ffff800000107cf3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107cfa:	00 00 00 
ffff800000107cfd:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107d04:	00 
ffff800000107d05:	48 89 c2             	mov    %rax,%rdx
ffff800000107d08:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d0f:	00 00 00 
ffff800000107d12:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107d19:	00 
ffff800000107d1a:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107d1f:	48 89 c7             	mov    %rax,%rdi
ffff800000107d22:	48 b8 6c 8c ff ff ff 	movabs $0xffffffffffff8c6c,%rax
ffff800000107d29:	ff ff ff 
ffff800000107d2c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d30:	ff d0                	call   *%rax
ffff800000107d32:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d39:	00 00 00 
ffff800000107d3c:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107d43:	00 
ffff800000107d44:	48 89 c2             	mov    %rax,%rdx
ffff800000107d47:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d4e:	00 00 00 
ffff800000107d51:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107d58:	00 
ffff800000107d59:	48 01 d0             	add    %rdx,%rax
ffff800000107d5c:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107d62:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107d68:	48 89 c2             	mov    %rax,%rdx
ffff800000107d6b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d72:	00 00 00 
ffff800000107d75:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff800000107d7c:	00 
ffff800000107d7d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d81:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107d85:	48 89 c2             	mov    %rax,%rdx
ffff800000107d88:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d8f:	00 00 00 
ffff800000107d92:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff800000107d99:	00 
ffff800000107d9a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d9e:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107da2:	48 89 c2             	mov    %rax,%rdx
ffff800000107da5:	48 89 d0             	mov    %rdx,%rax
ffff800000107da8:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107dac:	48 01 d0             	add    %rdx,%rax
ffff800000107daf:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107db3:	48 83 c0 07          	add    $0x7,%rax
ffff800000107db7:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107dbb:	48 89 c2             	mov    %rax,%rdx
ffff800000107dbe:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dc5:	00 00 00 
ffff800000107dc8:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000107dcf:	00 
ffff800000107dd0:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dd7:	00 00 00 
ffff800000107dda:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107de1:	00 
ffff800000107de2:	48 89 c2             	mov    %rax,%rdx
ffff800000107de5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dec:	00 00 00 
ffff800000107def:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107df6:	00 
ffff800000107df7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107dfc:	48 89 c7             	mov    %rax,%rdi
ffff800000107dff:	48 b8 6c 8c ff ff ff 	movabs $0xffffffffffff8c6c,%rax
ffff800000107e06:	ff ff ff 
ffff800000107e09:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107e0d:	ff d0                	call   *%rax
ffff800000107e0f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e16:	00 00 00 
ffff800000107e19:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107e20:	00 
ffff800000107e21:	48 89 c2             	mov    %rax,%rdx
ffff800000107e24:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e2b:	00 00 00 
ffff800000107e2e:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107e35:	00 
ffff800000107e36:	48 01 d0             	add    %rdx,%rax
ffff800000107e39:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107e3f:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107e45:	48 89 c2             	mov    %rax,%rdx
ffff800000107e48:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e4f:	00 00 00 
ffff800000107e52:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff800000107e59:	00 
ffff800000107e5a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e61:	00 00 00 
ffff800000107e64:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff800000107e6b:	00 00 00 00 00 
ffff800000107e70:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e77:	00 00 00 
ffff800000107e7a:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff800000107e81:	00 90 01 00 00 
ffff800000107e86:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e8d:	00 00 00 
ffff800000107e90:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000107e97:	00 
ffff800000107e98:	48 89 c2             	mov    %rax,%rdx
ffff800000107e9b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ea2:	00 00 00 
ffff800000107ea5:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000107eac:	00 
ffff800000107ead:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107eb2:	48 89 c7             	mov    %rax,%rdi
ffff800000107eb5:	48 b8 6c 8c ff ff ff 	movabs $0xffffffffffff8c6c,%rax
ffff800000107ebc:	ff ff ff 
ffff800000107ebf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ec3:	ff d0                	call   *%rax
ffff800000107ec5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107ecc:	e9 f8 02 00 00       	jmp    ffff8000001081c9 <init_memory+0x9b4>
ffff800000107ed1:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107ed8:	00 00 00 
ffff800000107edb:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107ede:	48 63 d0             	movslq %eax,%rdx
ffff800000107ee1:	48 01 d9             	add    %rbx,%rcx
ffff800000107ee4:	48 89 d0             	mov    %rdx,%rax
ffff800000107ee7:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107eeb:	48 01 d0             	add    %rdx,%rax
ffff800000107eee:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ef2:	48 01 c8             	add    %rcx,%rax
ffff800000107ef5:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ef9:	8b 00                	mov    (%rax),%eax
ffff800000107efb:	83 f8 01             	cmp    $0x1,%eax
ffff800000107efe:	0f 85 bd 02 00 00    	jne    ffff8000001081c1 <init_memory+0x9ac>
ffff800000107f04:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107f0b:	00 00 00 
ffff800000107f0e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107f11:	48 63 d0             	movslq %eax,%rdx
ffff800000107f14:	48 01 d9             	add    %rbx,%rcx
ffff800000107f17:	48 89 d0             	mov    %rdx,%rax
ffff800000107f1a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f1e:	48 01 d0             	add    %rdx,%rax
ffff800000107f21:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f25:	48 01 c8             	add    %rcx,%rax
ffff800000107f28:	48 8b 00             	mov    (%rax),%rax
ffff800000107f2b:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107f31:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107f37:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000107f3b:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107f42:	00 00 00 
ffff800000107f45:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107f48:	48 63 d0             	movslq %eax,%rdx
ffff800000107f4b:	48 01 d9             	add    %rbx,%rcx
ffff800000107f4e:	48 89 d0             	mov    %rdx,%rax
ffff800000107f51:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f55:	48 01 d0             	add    %rdx,%rax
ffff800000107f58:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f5c:	48 01 c8             	add    %rcx,%rax
ffff800000107f5f:	48 8b 08             	mov    (%rax),%rcx
ffff800000107f62:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107f69:	00 00 00 
ffff800000107f6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107f6f:	48 63 d0             	movslq %eax,%rdx
ffff800000107f72:	48 89 d0             	mov    %rdx,%rax
ffff800000107f75:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f79:	48 01 d0             	add    %rdx,%rax
ffff800000107f7c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f80:	48 01 d8             	add    %rbx,%rax
ffff800000107f83:	48 01 f0             	add    %rsi,%rax
ffff800000107f86:	48 83 c0 08          	add    $0x8,%rax
ffff800000107f8a:	48 8b 00             	mov    (%rax),%rax
ffff800000107f8d:	48 01 c8             	add    %rcx,%rax
ffff800000107f90:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107f96:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000107f9a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000107f9e:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
ffff800000107fa2:	0f 83 1c 02 00 00    	jae    ffff8000001081c4 <init_memory+0x9af>
ffff800000107fa8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107faf:	00 00 00 
ffff800000107fb2:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000107fb9:	00 
ffff800000107fba:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fc1:	00 00 00 
ffff800000107fc4:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000107fcb:	00 
ffff800000107fcc:	48 89 d0             	mov    %rdx,%rax
ffff800000107fcf:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fd3:	48 01 d0             	add    %rdx,%rax
ffff800000107fd6:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000107fda:	48 01 c8             	add    %rcx,%rax
ffff800000107fdd:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000107fe1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fe8:	00 00 00 
ffff800000107feb:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000107ff2:	00 
ffff800000107ff3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107ff7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ffe:	00 00 00 
ffff800000108001:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff800000108008:	00 
ffff800000108009:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010800d:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
ffff800000108011:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000108015:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108019:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
ffff80000010801d:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000108021:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108025:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
ffff800000108029:	48 89 c2             	mov    %rax,%rdx
ffff80000010802c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108030:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff800000108034:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108038:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff80000010803f:	00 
ffff800000108040:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108044:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
ffff800000108048:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010804c:	48 89 c2             	mov    %rax,%rdx
ffff80000010804f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108053:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff800000108057:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010805b:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff800000108062:	00 
ffff800000108063:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108067:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff80000010806e:	00 
ffff80000010806f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108073:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010807a:	00 00 00 
ffff80000010807d:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000108081:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108085:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108089:	48 2b 45 b8          	sub    -0x48(%rbp),%rax
ffff80000010808d:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108091:	48 89 c2             	mov    %rax,%rdx
ffff800000108094:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108098:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff80000010809c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080a3:	00 00 00 
ffff8000001080a6:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001080ad:	00 
ffff8000001080ae:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001080b2:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080b6:	48 89 c2             	mov    %rax,%rdx
ffff8000001080b9:	48 89 d0             	mov    %rdx,%rax
ffff8000001080bc:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001080c0:	48 01 d0             	add    %rdx,%rax
ffff8000001080c3:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001080c7:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff8000001080cb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001080cf:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080d2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001080d6:	48 8b 00             	mov    (%rax),%rax
ffff8000001080d9:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001080dd:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001080e4:	e9 bf 00 00 00       	jmp    ffff8000001081a8 <init_memory+0x993>
ffff8000001080e9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001080ed:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
ffff8000001080f1:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080f4:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001080f7:	48 98                	cltq
ffff8000001080f9:	48 c1 e0 15          	shl    $0x15,%rax
ffff8000001080fd:	48 89 c2             	mov    %rax,%rdx
ffff800000108100:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108104:	48 01 c2             	add    %rax,%rdx
ffff800000108107:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010810b:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff80000010810f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108113:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff80000010811a:	00 
ffff80000010811b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010811f:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000108126:	00 
ffff800000108127:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010812b:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000108132:	00 
ffff800000108133:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010813a:	00 00 00 
ffff80000010813d:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108144:	00 
ffff800000108145:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108149:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010814d:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108151:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108155:	48 01 d0             	add    %rdx,%rax
ffff800000108158:	48 8b 10             	mov    (%rax),%rdx
ffff80000010815b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010815f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108163:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108167:	83 e0 3f             	and    $0x3f,%eax
ffff80000010816a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010816f:	89 c1                	mov    %eax,%ecx
ffff800000108171:	48 d3 e6             	shl    %cl,%rsi
ffff800000108174:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010817b:	00 00 00 
ffff80000010817e:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff800000108185:	00 
ffff800000108186:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010818a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010818e:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108192:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108196:	48 01 c8             	add    %rcx,%rax
ffff800000108199:	48 31 f2             	xor    %rsi,%rdx
ffff80000010819c:	48 89 10             	mov    %rdx,(%rax)
ffff80000010819f:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001081a3:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff8000001081a8:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001081ab:	48 63 d0             	movslq %eax,%rdx
ffff8000001081ae:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001081b2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001081b6:	48 39 c2             	cmp    %rax,%rdx
ffff8000001081b9:	0f 82 2a ff ff ff    	jb     ffff8000001080e9 <init_memory+0x8d4>
ffff8000001081bf:	eb 04                	jmp    ffff8000001081c5 <init_memory+0x9b0>
ffff8000001081c1:	90                   	nop
ffff8000001081c2:	eb 01                	jmp    ffff8000001081c5 <init_memory+0x9b0>
ffff8000001081c4:	90                   	nop
ffff8000001081c5:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001081c9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001081cc:	48 98                	cltq
ffff8000001081ce:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001081d5:	00 00 00 
ffff8000001081d8:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff8000001081df:	00 
ffff8000001081e0:	48 39 c2             	cmp    %rax,%rdx
ffff8000001081e3:	0f 83 e8 fc ff ff    	jae    ffff800000107ed1 <init_memory+0x6bc>
ffff8000001081e9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081f0:	00 00 00 
ffff8000001081f3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001081fa:	00 
ffff8000001081fb:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000108202:	00 00 00 
ffff800000108205:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff80000010820c:	00 
ffff80000010820d:	48 89 10             	mov    %rdx,(%rax)
ffff800000108210:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108217:	00 00 00 
ffff80000010821a:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108221:	00 
ffff800000108222:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff800000108229:	00 
ffff80000010822a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108231:	00 00 00 
ffff800000108234:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010823b:	00 
ffff80000010823c:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108243:	00 
ffff800000108244:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010824b:	00 00 00 
ffff80000010824e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108255:	00 
ffff800000108256:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff80000010825d:	00 
ffff80000010825e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108265:	00 00 00 
ffff800000108268:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010826f:	00 
ffff800000108270:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000108277:	00 
ffff800000108278:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010827f:	00 00 00 
ffff800000108282:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108289:	00 
ffff80000010828a:	48 89 d0             	mov    %rdx,%rax
ffff80000010828d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108291:	48 01 d0             	add    %rdx,%rax
ffff800000108294:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108298:	48 83 c0 07          	add    $0x7,%rax
ffff80000010829c:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001082a0:	48 89 c2             	mov    %rax,%rdx
ffff8000001082a3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082aa:	00 00 00 
ffff8000001082ad:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff8000001082b4:	00 
ffff8000001082b5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082bc:	00 00 00 
ffff8000001082bf:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff8000001082c6:	00 
ffff8000001082c7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082ce:	00 00 00 
ffff8000001082d1:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff8000001082d8:	00 
ffff8000001082d9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082e0:	00 00 00 
ffff8000001082e3:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff8000001082ea:	00 
ffff8000001082eb:	49 89 c9             	mov    %rcx,%r9
ffff8000001082ee:	49 89 d0             	mov    %rdx,%r8
ffff8000001082f1:	48 89 c1             	mov    %rax,%rcx
ffff8000001082f4:	48 b8 78 a8 ff ff ff 	movabs $0xffffffffffffa878,%rax
ffff8000001082fb:	ff ff ff 
ffff8000001082fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108302:	48 89 c2             	mov    %rax,%rdx
ffff800000108305:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010830a:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010830f:	49 89 df             	mov    %rbx,%r15
ffff800000108312:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108317:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff80000010831e:	ff ff ff 
ffff800000108321:	49 01 da             	add    %rbx,%r10
ffff800000108324:	41 ff d2             	call   *%r10
ffff800000108327:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010832e:	00 00 00 
ffff800000108331:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff800000108338:	00 
ffff800000108339:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108340:	00 00 00 
ffff800000108343:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff80000010834a:	00 
ffff80000010834b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108352:	00 00 00 
ffff800000108355:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010835c:	00 
ffff80000010835d:	49 89 c9             	mov    %rcx,%r9
ffff800000108360:	49 89 d0             	mov    %rdx,%r8
ffff800000108363:	48 89 c1             	mov    %rax,%rcx
ffff800000108366:	48 b8 b0 a8 ff ff ff 	movabs $0xffffffffffffa8b0,%rax
ffff80000010836d:	ff ff ff 
ffff800000108370:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108374:	48 89 c2             	mov    %rax,%rdx
ffff800000108377:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010837c:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108381:	49 89 df             	mov    %rbx,%r15
ffff800000108384:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108389:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff800000108390:	ff ff ff 
ffff800000108393:	49 01 da             	add    %rbx,%r10
ffff800000108396:	41 ff d2             	call   *%r10
ffff800000108399:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083a0:	00 00 00 
ffff8000001083a3:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff8000001083aa:	00 
ffff8000001083ab:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083b2:	00 00 00 
ffff8000001083b5:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff8000001083bc:	00 
ffff8000001083bd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083c4:	00 00 00 
ffff8000001083c7:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001083ce:	00 
ffff8000001083cf:	49 89 c9             	mov    %rcx,%r9
ffff8000001083d2:	49 89 d0             	mov    %rdx,%r8
ffff8000001083d5:	48 89 c1             	mov    %rax,%rcx
ffff8000001083d8:	48 b8 f0 a8 ff ff ff 	movabs $0xffffffffffffa8f0,%rax
ffff8000001083df:	ff ff ff 
ffff8000001083e2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001083e6:	48 89 c2             	mov    %rax,%rdx
ffff8000001083e9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001083ee:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001083f3:	49 89 df             	mov    %rbx,%r15
ffff8000001083f6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001083fb:	49 ba f2 5c ff ff ff 	movabs $0xffffffffffff5cf2,%r10
ffff800000108402:	ff ff ff 
ffff800000108405:	49 01 da             	add    %rbx,%r10
ffff800000108408:	41 ff d2             	call   *%r10
ffff80000010840b:	90                   	nop
ffff80000010840c:	48 83 c4 60          	add    $0x60,%rsp
ffff800000108410:	5b                   	pop    %rbx
ffff800000108411:	41 5f                	pop    %r15
ffff800000108413:	5d                   	pop    %rbp
ffff800000108414:	c3                   	ret
