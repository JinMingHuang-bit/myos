
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 98 00 00 	lgdt   0x9850(%rip)        # ffff800000109868 <GDT_END>
ffff800000100018:	0f 01 1d 53 a8 00 00 	lidt   0xa853(%rip)        # ffff80000010a872 <IDT_END>
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
ffff800000100099:	48 8d 3d d2 97 00 00 	lea    0x97d2(%rip),%rdi        # ffff800000109872 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 be a7 00 00 	lea    0xa7be(%rip),%rdx        # ffff80000010a87c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d e8 96 00 00 	lea    0x96e8(%rip),%rdi        # ffff8000001097e0 <GDT_Table>
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
ffff800000100161:	e8 af 44 00 00       	call   ffff800000104615 <color_printk>
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
ffff80000010400f:	49 bb c8 a9 00 00 00 	movabs $0xa9c8,%r11
ffff800000104016:	00 00 00 
ffff800000104019:	4c 01 d8             	add    %r11,%rax
ffff80000010401c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000104020:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000104024:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104028:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff80000010402c:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000104030:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000104034:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff80000010403b:	ff ff ff 
ffff80000010403e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104042:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000104046:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff80000010404a:	48 89 0a             	mov    %rcx,(%rdx)
ffff80000010404d:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000104054:	ff ff ff 
ffff800000104057:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010405b:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff80000010405f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104063:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104066:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff80000010406d:	ff ff ff 
ffff800000104070:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104074:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000104078:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010407c:	48 89 0a             	mov    %rcx,(%rdx)
ffff80000010407f:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000104086:	ff ff ff 
ffff800000104089:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010408d:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000104091:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000104095:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104098:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff80000010409f:	ff ff ff 
ffff8000001040a2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040a6:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff8000001040aa:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff8000001040ae:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040b1:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff8000001040b8:	ff ff ff 
ffff8000001040bb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040bf:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff8000001040c3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff8000001040c7:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040ca:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff8000001040d1:	ff ff ff 
ffff8000001040d4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040d8:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff8000001040dc:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff8000001040e0:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040e3:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff8000001040ea:	ff ff ff 
ffff8000001040ed:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001040f1:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff8000001040f5:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff8000001040f9:	48 89 0a             	mov    %rcx,(%rdx)
ffff8000001040fc:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000104103:	ff ff ff 
ffff800000104106:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010410a:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff80000010410e:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000104112:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000104115:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
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
ffff80000010413c:	48 81 ec 10 03 00 00 	sub    $0x310,%rsp
ffff800000104143:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104143 <Start_Kernel+0x12>
ffff80000010414a:	49 bb 8d a8 00 00 00 	movabs $0xa88d,%r11
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
ffff800000104175:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104179:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff800000104180:	ff ff ff 
ffff800000104183:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104187:	50                   	push   %rax
ffff800000104188:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff80000010418f:	ff ff ff 
ffff800000104192:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104196:	49 89 c1             	mov    %rax,%r9
ffff800000104199:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff8000001041a0:	ff ff ff 
ffff8000001041a3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041a7:	49 89 c0             	mov    %rax,%r8
ffff8000001041aa:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff8000001041b1:	ff ff ff 
ffff8000001041b4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041b8:	48 89 c1             	mov    %rax,%rcx
ffff8000001041bb:	48 b8 a8 9a ff ff ff 	movabs $0xffffffffffff9aa8,%rax
ffff8000001041c2:	ff ff ff 
ffff8000001041c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041c9:	48 89 c2             	mov    %rax,%rdx
ffff8000001041cc:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041d1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041d6:	49 89 df             	mov    %rbx,%r15
ffff8000001041d9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041de:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff8000001041e5:	ff ff ff 
ffff8000001041e8:	49 01 da             	add    %rbx,%r10
ffff8000001041eb:	41 ff d2             	call   *%r10
ffff8000001041ee:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001041f2:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff8000001041f9:	80 ff ff 
ffff8000001041fc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000104200:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104207:	00 00 00 
ffff80000010420a:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff800000104211:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104218:	00 00 00 
ffff80000010421b:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff800000104222:	00 
ffff800000104223:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010422a:	00 00 00 
ffff80000010422d:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104234:	00 
ffff800000104235:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010423c:	00 00 00 
ffff80000010423f:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104246:	00 
ffff800000104247:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010424e:	00 00 00 
ffff800000104251:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff800000104258:	00 
ffff800000104259:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104260:	00 00 00 
ffff800000104263:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff80000010426a:	00 
ffff80000010426b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104272:	00 00 00 
ffff800000104275:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff80000010427a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104281:	00 00 00 
ffff800000104284:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff800000104287:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010428e:	00 00 00 
ffff800000104291:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104295:	0f af c2             	imul   %edx,%eax
ffff800000104298:	c1 e0 02             	shl    $0x2,%eax
ffff80000010429b:	48 98                	cltq
ffff80000010429d:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001042a3:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff8000001042a8:	48 89 c2             	mov    %rax,%rdx
ffff8000001042ab:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001042b2:	00 00 00 
ffff8000001042b5:	48 89 54 03 20       	mov    %rdx,0x20(%rbx,%rax,1)
ffff8000001042ba:	b8 40 00 00 00       	mov    $0x40,%eax
ffff8000001042bf:	0f 00 d8             	ltr    %eax
ffff8000001042c2:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042c7:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff8000001042ce:	ff 
ffff8000001042cf:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042d4:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff8000001042db:	ff 
ffff8000001042dc:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042e1:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff8000001042e8:	ff 
ffff8000001042e9:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042ee:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff8000001042f5:	ff 
ffff8000001042f6:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff8000001042fd:	80 ff ff 
ffff800000104300:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff800000104307:	80 ff ff 
ffff80000010430a:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104311:	80 ff ff 
ffff800000104314:	48 89 c1             	mov    %rax,%rcx
ffff800000104317:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff80000010431e:	80 ff ff 
ffff800000104321:	48 89 c2             	mov    %rax,%rdx
ffff800000104324:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff80000010432b:	80 ff ff 
ffff80000010432e:	48 89 c6             	mov    %rax,%rsi
ffff800000104331:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104338:	80 ff ff 
ffff80000010433b:	48 89 c7             	mov    %rax,%rdi
ffff80000010433e:	48 b8 30 56 ff ff ff 	movabs $0xffffffffffff5630,%rax
ffff800000104345:	ff ff ff 
ffff800000104348:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010434c:	ff d0                	call   *%rax
ffff80000010434e:	48 83 c4 20          	add    $0x20,%rsp
ffff800000104352:	49 89 df             	mov    %rbx,%r15
ffff800000104355:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010435a:	48 ba 40 86 ff ff ff 	movabs $0xffffffffffff8640,%rdx
ffff800000104361:	ff ff ff 
ffff800000104364:	48 01 da             	add    %rbx,%rdx
ffff800000104367:	ff d2                	call   *%rdx
ffff800000104369:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff800000104370:	ff ff ff 
ffff800000104373:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104377:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff80000010437b:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff800000104382:	ff ff ff 
ffff800000104385:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104389:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010438d:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff800000104394:	ff ff ff 
ffff800000104397:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010439b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010439f:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001043a6:	ff ff ff 
ffff8000001043a9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001043ad:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001043b1:	48 b8 e2 9a ff ff ff 	movabs $0xffffffffffff9ae2,%rax
ffff8000001043b8:	ff ff ff 
ffff8000001043bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001043c2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043c7:	bf ff ff ff 00       	mov    $0xffffff,%edi
ffff8000001043cc:	49 89 df             	mov    %rbx,%r15
ffff8000001043cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043d4:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001043db:	ff ff ff 
ffff8000001043de:	48 01 d9             	add    %rbx,%rcx
ffff8000001043e1:	ff d1                	call   *%rcx
ffff8000001043e3:	48 b8 f4 9a ff ff ff 	movabs $0xffffffffffff9af4,%rax
ffff8000001043ea:	ff ff ff 
ffff8000001043ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043f1:	48 89 c2             	mov    %rax,%rdx
ffff8000001043f4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043f9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043fe:	49 89 df             	mov    %rbx,%r15
ffff800000104401:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104406:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff80000010440d:	ff ff ff 
ffff800000104410:	48 01 d9             	add    %rbx,%rcx
ffff800000104413:	ff d1                	call   *%rcx
ffff800000104415:	48 b8 00 9b ff ff ff 	movabs $0xffffffffffff9b00,%rax
ffff80000010441c:	ff ff ff 
ffff80000010441f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104423:	48 89 c2             	mov    %rax,%rdx
ffff800000104426:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010442b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104430:	49 89 df             	mov    %rbx,%r15
ffff800000104433:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104438:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff80000010443f:	ff ff ff 
ffff800000104442:	48 01 d9             	add    %rbx,%rcx
ffff800000104445:	ff d1                	call   *%rcx
ffff800000104447:	49 89 df             	mov    %rbx,%r15
ffff80000010444a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010444f:	48 ba 99 8c ff ff ff 	movabs $0xffffffffffff8c99,%rdx
ffff800000104456:	ff ff ff 
ffff800000104459:	48 01 da             	add    %rbx,%rdx
ffff80000010445c:	ff d2                	call   *%rdx
ffff80000010445e:	48 b8 58 9b ff ff ff 	movabs $0xffffffffffff9b58,%rax
ffff800000104465:	ff ff ff 
ffff800000104468:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010446c:	48 89 c2             	mov    %rax,%rdx
ffff80000010446f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104474:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104479:	49 89 df             	mov    %rbx,%r15
ffff80000010447c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104481:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000104488:	ff ff ff 
ffff80000010448b:	48 01 d9             	add    %rbx,%rcx
ffff80000010448e:	ff d1                	call   *%rcx
ffff800000104490:	48 b8 90 9b ff ff ff 	movabs $0xffffffffffff9b90,%rax
ffff800000104497:	ff ff ff 
ffff80000010449a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010449e:	48 89 c2             	mov    %rax,%rdx
ffff8000001044a1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001044a6:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001044ab:	49 89 df             	mov    %rbx,%r15
ffff8000001044ae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044b3:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001044ba:	ff ff ff 
ffff8000001044bd:	48 01 d9             	add    %rbx,%rcx
ffff8000001044c0:	ff d1                	call   *%rcx
ffff8000001044c2:	90                   	nop
ffff8000001044c3:	eb fd                	jmp    ffff8000001044c2 <Start_Kernel+0x391>

ffff8000001044c5 <Cstrlen>:
ffff8000001044c5:	f3 0f 1e fa          	endbr64
ffff8000001044c9:	55                   	push   %rbp
ffff8000001044ca:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044cd:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044cd <Cstrlen+0x8>
ffff8000001044d4:	49 bb 03 a5 00 00 00 	movabs $0xa503,%r11
ffff8000001044db:	00 00 00 
ffff8000001044de:	4c 01 d8             	add    %r11,%rax
ffff8000001044e1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001044e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044e9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001044ed:	eb 05                	jmp    ffff8000001044f4 <Cstrlen+0x2f>
ffff8000001044ef:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001044f4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001044f8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044fb:	84 c0                	test   %al,%al
ffff8000001044fd:	75 f0                	jne    ffff8000001044ef <Cstrlen+0x2a>
ffff8000001044ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104503:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff800000104507:	5d                   	pop    %rbp
ffff800000104508:	c3                   	ret

ffff800000104509 <putchar>:
ffff800000104509:	f3 0f 1e fa          	endbr64
ffff80000010450d:	55                   	push   %rbp
ffff80000010450e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104511:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104511 <putchar+0x8>
ffff800000104518:	49 bb bf a4 00 00 00 	movabs $0xa4bf,%r11
ffff80000010451f:	00 00 00 
ffff800000104522:	4c 01 d8             	add    %r11,%rax
ffff800000104525:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104529:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff80000010452c:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff80000010452f:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104532:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104536:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010453a:	8b 55 10             	mov    0x10(%rbp),%edx
ffff80000010453d:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104540:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104547:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010454e:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104555:	00 
ffff800000104556:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010455d:	00 
ffff80000010455e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000104565:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff800000104569:	48 63 d2             	movslq %edx,%rdx
ffff80000010456c:	48 89 d1             	mov    %rdx,%rcx
ffff80000010456f:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000104573:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff80000010457a:	ff ff ff 
ffff80000010457d:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104581:	48 01 c8             	add    %rcx,%rax
ffff800000104584:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104588:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010458f:	eb 7a                	jmp    ffff80000010460b <putchar+0x102>
ffff800000104591:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff800000104594:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104597:	01 d0                	add    %edx,%eax
ffff800000104599:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff80000010459d:	48 63 d0             	movslq %eax,%rdx
ffff8000001045a0:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001045a3:	48 98                	cltq
ffff8000001045a5:	48 01 d0             	add    %rdx,%rax
ffff8000001045a8:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001045af:	00 
ffff8000001045b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045b4:	48 01 d0             	add    %rdx,%rax
ffff8000001045b7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001045bb:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001045c2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001045c9:	eb 31                	jmp    ffff8000001045fc <putchar+0xf3>
ffff8000001045cb:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001045ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001045d2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045d5:	0f b6 c0             	movzbl %al,%eax
ffff8000001045d8:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff8000001045db:	85 c0                	test   %eax,%eax
ffff8000001045dd:	74 0b                	je     ffff8000001045ea <putchar+0xe1>
ffff8000001045df:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045e3:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff8000001045e6:	89 10                	mov    %edx,(%rax)
ffff8000001045e8:	eb 09                	jmp    ffff8000001045f3 <putchar+0xea>
ffff8000001045ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045ee:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff8000001045f1:	89 10                	mov    %edx,(%rax)
ffff8000001045f3:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff8000001045f8:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff8000001045fc:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104600:	7e c9                	jle    ffff8000001045cb <putchar+0xc2>
ffff800000104602:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104607:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff80000010460b:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff80000010460f:	7e 80                	jle    ffff800000104591 <putchar+0x88>
ffff800000104611:	90                   	nop
ffff800000104612:	90                   	nop
ffff800000104613:	5d                   	pop    %rbp
ffff800000104614:	c3                   	ret

ffff800000104615 <color_printk>:
ffff800000104615:	f3 0f 1e fa          	endbr64
ffff800000104619:	55                   	push   %rbp
ffff80000010461a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010461d:	53                   	push   %rbx
ffff80000010461e:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104625:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104625 <color_printk+0x10>
ffff80000010462c:	49 bb ab a3 00 00 00 	movabs $0xa3ab,%r11
ffff800000104633:	00 00 00 
ffff800000104636:	4c 01 db             	add    %r11,%rbx
ffff800000104639:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff80000010463f:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104645:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff80000010464c:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104653:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff80000010465a:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff800000104661:	84 c0                	test   %al,%al
ffff800000104663:	74 23                	je     ffff800000104688 <color_printk+0x73>
ffff800000104665:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff80000010466c:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff800000104670:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff800000104674:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff800000104678:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff80000010467c:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff800000104680:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff800000104684:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff800000104688:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff80000010468f:	00 00 00 
ffff800000104692:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104699:	00 00 00 
ffff80000010469c:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001046a3:	00 00 00 
ffff8000001046a6:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001046ad:	00 00 00 
ffff8000001046b0:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001046b7:	00 00 00 
ffff8000001046ba:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001046be:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001046c5:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001046cc:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001046d3:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff8000001046da:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff8000001046e1:	48 89 c6             	mov    %rax,%rsi
ffff8000001046e4:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046eb:	00 00 00 
ffff8000001046ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046f2:	48 89 c7             	mov    %rax,%rdi
ffff8000001046f5:	48 b8 c5 66 ff ff ff 	movabs $0xffffffffffff66c5,%rax
ffff8000001046fc:	ff ff ff 
ffff8000001046ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104703:	ff d0                	call   *%rax
ffff800000104705:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff80000010470b:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104712:	00 00 00 
ffff800000104715:	e9 81 04 00 00       	jmp    ffff800000104b9b <color_printk+0x586>
ffff80000010471a:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104721:	7e 0c                	jle    ffff80000010472f <color_printk+0x11a>
ffff800000104723:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010472a:	e9 45 02 00 00       	jmp    ffff800000104974 <color_printk+0x35f>
ffff80000010472f:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104735:	48 63 d0             	movslq %eax,%rdx
ffff800000104738:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010473f:	00 00 00 
ffff800000104742:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104746:	48 01 d0             	add    %rdx,%rax
ffff800000104749:	0f b6 00             	movzbl (%rax),%eax
ffff80000010474c:	3c 0a                	cmp    $0xa,%al
ffff80000010474e:	75 36                	jne    ffff800000104786 <color_printk+0x171>
ffff800000104750:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104757:	00 00 00 
ffff80000010475a:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010475e:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104761:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104768:	00 00 00 
ffff80000010476b:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010476f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104776:	00 00 00 
ffff800000104779:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104780:	00 
ffff800000104781:	e9 6a 03 00 00       	jmp    ffff800000104af0 <color_printk+0x4db>
ffff800000104786:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010478c:	48 63 d0             	movslq %eax,%rdx
ffff80000010478f:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104796:	00 00 00 
ffff800000104799:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010479d:	48 01 d0             	add    %rdx,%rax
ffff8000001047a0:	0f b6 00             	movzbl (%rax),%eax
ffff8000001047a3:	3c 08                	cmp    $0x8,%al
ffff8000001047a5:	0f 85 78 01 00 00    	jne    ffff800000104923 <color_printk+0x30e>
ffff8000001047ab:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047b2:	00 00 00 
ffff8000001047b5:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047b9:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047bc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047c3:	00 00 00 
ffff8000001047c6:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001047ca:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047d1:	00 00 00 
ffff8000001047d4:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047d8:	85 c0                	test   %eax,%eax
ffff8000001047da:	0f 89 b2 00 00 00    	jns    ffff800000104892 <color_printk+0x27d>
ffff8000001047e0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047e7:	00 00 00 
ffff8000001047ea:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff8000001047ed:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047f4:	00 00 00 
ffff8000001047f7:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff8000001047fb:	99                   	cltd
ffff8000001047fc:	f7 fe                	idiv   %esi
ffff8000001047fe:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104801:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104808:	00 00 00 
ffff80000010480b:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010480f:	0f af c2             	imul   %edx,%eax
ffff800000104812:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104819:	00 00 00 
ffff80000010481c:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104820:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104827:	00 00 00 
ffff80000010482a:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010482e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104831:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104838:	00 00 00 
ffff80000010483b:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010483f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104846:	00 00 00 
ffff800000104849:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010484d:	85 c0                	test   %eax,%eax
ffff80000010484f:	79 41                	jns    ffff800000104892 <color_printk+0x27d>
ffff800000104851:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104858:	00 00 00 
ffff80000010485b:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010485f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104866:	00 00 00 
ffff800000104869:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff80000010486d:	99                   	cltd
ffff80000010486e:	f7 ff                	idiv   %edi
ffff800000104870:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104873:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010487a:	00 00 00 
ffff80000010487d:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104881:	0f af c2             	imul   %edx,%eax
ffff800000104884:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010488b:	00 00 00 
ffff80000010488e:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff800000104892:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104899:	00 00 00 
ffff80000010489c:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048a0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a7:	00 00 00 
ffff8000001048aa:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048ae:	89 d1                	mov    %edx,%ecx
ffff8000001048b0:	0f af c8             	imul   %eax,%ecx
ffff8000001048b3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048ba:	00 00 00 
ffff8000001048bd:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048c1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c8:	00 00 00 
ffff8000001048cb:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048cf:	0f af d0             	imul   %eax,%edx
ffff8000001048d2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048d9:	00 00 00 
ffff8000001048dc:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001048df:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048e6:	00 00 00 
ffff8000001048e9:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001048ee:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001048f5:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001048fb:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001048ff:	6a 20                	push   $0x20
ffff800000104901:	45 89 c1             	mov    %r8d,%r9d
ffff800000104904:	41 89 f8             	mov    %edi,%r8d
ffff800000104907:	48 89 c7             	mov    %rax,%rdi
ffff80000010490a:	48 b8 39 5b ff ff ff 	movabs $0xffffffffffff5b39,%rax
ffff800000104911:	ff ff ff 
ffff800000104914:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104918:	ff d0                	call   *%rax
ffff80000010491a:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010491e:	e9 cd 01 00 00       	jmp    ffff800000104af0 <color_printk+0x4db>
ffff800000104923:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104929:	48 63 d0             	movslq %eax,%rdx
ffff80000010492c:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104933:	00 00 00 
ffff800000104936:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010493a:	48 01 d0             	add    %rdx,%rax
ffff80000010493d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104940:	3c 09                	cmp    $0x9,%al
ffff800000104942:	0f 85 e3 00 00 00    	jne    ffff800000104a2b <color_printk+0x416>
ffff800000104948:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010494f:	00 00 00 
ffff800000104952:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104956:	83 c0 08             	add    $0x8,%eax
ffff800000104959:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010495c:	89 c2                	mov    %eax,%edx
ffff80000010495e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104965:	00 00 00 
ffff800000104968:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010496c:	29 c2                	sub    %eax,%edx
ffff80000010496e:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff800000104974:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff80000010497b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104982:	00 00 00 
ffff800000104985:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104989:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104990:	00 00 00 
ffff800000104993:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104997:	89 d1                	mov    %edx,%ecx
ffff800000104999:	0f af c8             	imul   %eax,%ecx
ffff80000010499c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049a3:	00 00 00 
ffff8000001049a6:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001049aa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049b1:	00 00 00 
ffff8000001049b4:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049b8:	0f af d0             	imul   %eax,%edx
ffff8000001049bb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049c2:	00 00 00 
ffff8000001049c5:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049c8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049cf:	00 00 00 
ffff8000001049d2:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049d7:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001049de:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001049e4:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049e8:	6a 20                	push   $0x20
ffff8000001049ea:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049ed:	41 89 f8             	mov    %edi,%r8d
ffff8000001049f0:	48 89 c7             	mov    %rax,%rdi
ffff8000001049f3:	48 b8 39 5b ff ff ff 	movabs $0xffffffffffff5b39,%rax
ffff8000001049fa:	ff ff ff 
ffff8000001049fd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a01:	ff d0                	call   *%rax
ffff800000104a03:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104a07:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a0e:	00 00 00 
ffff800000104a11:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a15:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a18:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a1f:	00 00 00 
ffff800000104a22:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a26:	e9 c5 00 00 00       	jmp    ffff800000104af0 <color_printk+0x4db>
ffff800000104a2b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104a31:	48 63 d0             	movslq %eax,%rdx
ffff800000104a34:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104a3b:	00 00 00 
ffff800000104a3e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a42:	48 01 d0             	add    %rdx,%rax
ffff800000104a45:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a48:	0f b6 f8             	movzbl %al,%edi
ffff800000104a4b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a52:	00 00 00 
ffff800000104a55:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104a59:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a60:	00 00 00 
ffff800000104a63:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104a67:	89 d1                	mov    %edx,%ecx
ffff800000104a69:	0f af c8             	imul   %eax,%ecx
ffff800000104a6c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a73:	00 00 00 
ffff800000104a76:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104a7a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a81:	00 00 00 
ffff800000104a84:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a88:	0f af d0             	imul   %eax,%edx
ffff800000104a8b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a92:	00 00 00 
ffff800000104a95:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104a98:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a9f:	00 00 00 
ffff800000104aa2:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104aa7:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104aae:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104ab5:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104ab9:	57                   	push   %rdi
ffff800000104aba:	48 89 c7             	mov    %rax,%rdi
ffff800000104abd:	48 b8 39 5b ff ff ff 	movabs $0xffffffffffff5b39,%rax
ffff800000104ac4:	ff ff ff 
ffff800000104ac7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104acb:	ff d0                	call   *%rax
ffff800000104acd:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104ad1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ad8:	00 00 00 
ffff800000104adb:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104adf:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104ae2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ae9:	00 00 00 
ffff800000104aec:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104af0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104af7:	00 00 00 
ffff800000104afa:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104afe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b05:	00 00 00 
ffff800000104b08:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b0b:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b12:	00 00 00 
ffff800000104b15:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104b19:	99                   	cltd
ffff800000104b1a:	f7 fe                	idiv   %esi
ffff800000104b1c:	39 c1                	cmp    %eax,%ecx
ffff800000104b1e:	7c 31                	jl     ffff800000104b51 <color_printk+0x53c>
ffff800000104b20:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b27:	00 00 00 
ffff800000104b2a:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104b2e:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104b31:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b38:	00 00 00 
ffff800000104b3b:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104b3f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b46:	00 00 00 
ffff800000104b49:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104b50:	00 
ffff800000104b51:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b58:	00 00 00 
ffff800000104b5b:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104b5f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b66:	00 00 00 
ffff800000104b69:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b6d:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b74:	00 00 00 
ffff800000104b77:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104b7b:	99                   	cltd
ffff800000104b7c:	f7 ff                	idiv   %edi
ffff800000104b7e:	39 c1                	cmp    %eax,%ecx
ffff800000104b80:	7c 12                	jl     ffff800000104b94 <color_printk+0x57f>
ffff800000104b82:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b89:	00 00 00 
ffff800000104b8c:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104b93:	00 
ffff800000104b94:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104b9b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104ba1:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104ba7:	0f 8c 6d fb ff ff    	jl     ffff80000010471a <color_printk+0x105>
ffff800000104bad:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104bb4:	0f 85 60 fb ff ff    	jne    ffff80000010471a <color_printk+0x105>
ffff800000104bba:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104bc0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104bc4:	c9                   	leave
ffff800000104bc5:	c3                   	ret

ffff800000104bc6 <clear_screen>:
ffff800000104bc6:	f3 0f 1e fa          	endbr64
ffff800000104bca:	55                   	push   %rbp
ffff800000104bcb:	48 89 e5             	mov    %rsp,%rbp
ffff800000104bce:	53                   	push   %rbx
ffff800000104bcf:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104bd3:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104bd3 <clear_screen+0xd>
ffff800000104bda:	49 bb fd 9d 00 00 00 	movabs $0x9dfd,%r11
ffff800000104be1:	00 00 00 
ffff800000104be4:	4c 01 db             	add    %r11,%rbx
ffff800000104be7:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104bea:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104bed:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf4:	00 00 00 
ffff800000104bf7:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104bfa:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c01:	00 00 00 
ffff800000104c04:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104c08:	99                   	cltd
ffff800000104c09:	f7 f9                	idiv   %ecx
ffff800000104c0b:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104c0e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c15:	00 00 00 
ffff800000104c18:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104c1c:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c23:	00 00 00 
ffff800000104c26:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104c2a:	99                   	cltd
ffff800000104c2b:	f7 fe                	idiv   %esi
ffff800000104c2d:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104c30:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104c37:	e9 83 00 00 00       	jmp    ffff800000104cbf <clear_screen+0xf9>
ffff800000104c3c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104c43:	eb 6e                	jmp    ffff800000104cb3 <clear_screen+0xed>
ffff800000104c45:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c4c:	00 00 00 
ffff800000104c4f:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104c53:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104c57:	89 c1                	mov    %eax,%ecx
ffff800000104c59:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c60:	00 00 00 
ffff800000104c63:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c67:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104c6b:	89 c2                	mov    %eax,%edx
ffff800000104c6d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c74:	00 00 00 
ffff800000104c77:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c7a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c81:	00 00 00 
ffff800000104c84:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c89:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104c8d:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104c90:	6a 20                	push   $0x20
ffff800000104c92:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c95:	41 89 f8             	mov    %edi,%r8d
ffff800000104c98:	48 89 c7             	mov    %rax,%rdi
ffff800000104c9b:	48 b8 39 5b ff ff ff 	movabs $0xffffffffffff5b39,%rax
ffff800000104ca2:	ff ff ff 
ffff800000104ca5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ca9:	ff d0                	call   *%rax
ffff800000104cab:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104caf:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104cb3:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104cb6:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104cb9:	7c 8a                	jl     ffff800000104c45 <clear_screen+0x7f>
ffff800000104cbb:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104cbf:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104cc2:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104cc5:	0f 8c 71 ff ff ff    	jl     ffff800000104c3c <clear_screen+0x76>
ffff800000104ccb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cd2:	00 00 00 
ffff800000104cd5:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104cdc:	00 
ffff800000104cdd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ce4:	00 00 00 
ffff800000104ce7:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104cee:	00 
ffff800000104cef:	90                   	nop
ffff800000104cf0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104cf4:	c9                   	leave
ffff800000104cf5:	c3                   	ret

ffff800000104cf6 <skip_atoi2>:
ffff800000104cf6:	f3 0f 1e fa          	endbr64
ffff800000104cfa:	55                   	push   %rbp
ffff800000104cfb:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cfe:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cfe <skip_atoi2+0x8>
ffff800000104d05:	49 bb d2 9c 00 00 00 	movabs $0x9cd2,%r11
ffff800000104d0c:	00 00 00 
ffff800000104d0f:	4c 01 d8             	add    %r11,%rax
ffff800000104d12:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d16:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104d1d:	eb 39                	jmp    ffff800000104d58 <skip_atoi2+0x62>
ffff800000104d1f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d23:	48 8b 00             	mov    (%rax),%rax
ffff800000104d26:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d29:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d2c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d30:	48 8b 00             	mov    (%rax),%rax
ffff800000104d33:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d3b:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d3e:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d41:	89 d0                	mov    %edx,%eax
ffff800000104d43:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d46:	01 d0                	add    %edx,%eax
ffff800000104d48:	01 c0                	add    %eax,%eax
ffff800000104d4a:	89 c2                	mov    %eax,%edx
ffff800000104d4c:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d50:	83 e8 30             	sub    $0x30,%eax
ffff800000104d53:	01 d0                	add    %edx,%eax
ffff800000104d55:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d5c:	48 8b 00             	mov    (%rax),%rax
ffff800000104d5f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d62:	3c 2f                	cmp    $0x2f,%al
ffff800000104d64:	7e 0e                	jle    ffff800000104d74 <skip_atoi2+0x7e>
ffff800000104d66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d6a:	48 8b 00             	mov    (%rax),%rax
ffff800000104d6d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d70:	3c 39                	cmp    $0x39,%al
ffff800000104d72:	7e ab                	jle    ffff800000104d1f <skip_atoi2+0x29>
ffff800000104d74:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d77:	5d                   	pop    %rbp
ffff800000104d78:	c3                   	ret

ffff800000104d79 <skip_atoi>:
ffff800000104d79:	f3 0f 1e fa          	endbr64
ffff800000104d7d:	55                   	push   %rbp
ffff800000104d7e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d81:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d81 <skip_atoi+0x8>
ffff800000104d88:	49 bb 4f 9c 00 00 00 	movabs $0x9c4f,%r11
ffff800000104d8f:	00 00 00 
ffff800000104d92:	4c 01 d8             	add    %r11,%rax
ffff800000104d95:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d99:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104da0:	eb 2c                	jmp    ffff800000104dce <skip_atoi+0x55>
ffff800000104da2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104da6:	48 8b 00             	mov    (%rax),%rax
ffff800000104da9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104dad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104db1:	48 89 10             	mov    %rdx,(%rax)
ffff800000104db4:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104db7:	89 d0                	mov    %edx,%eax
ffff800000104db9:	c1 e0 02             	shl    $0x2,%eax
ffff800000104dbc:	01 d0                	add    %edx,%eax
ffff800000104dbe:	01 c0                	add    %eax,%eax
ffff800000104dc0:	89 c2                	mov    %eax,%edx
ffff800000104dc2:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104dc6:	83 e8 30             	sub    $0x30,%eax
ffff800000104dc9:	01 d0                	add    %edx,%eax
ffff800000104dcb:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104dce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dd2:	48 8b 00             	mov    (%rax),%rax
ffff800000104dd5:	0f b6 00             	movzbl (%rax),%eax
ffff800000104dd8:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104ddb:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104ddf:	7e 13                	jle    ffff800000104df4 <skip_atoi+0x7b>
ffff800000104de1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104de5:	48 8b 00             	mov    (%rax),%rax
ffff800000104de8:	0f b6 00             	movzbl (%rax),%eax
ffff800000104deb:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104dee:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104df2:	7e ae                	jle    ffff800000104da2 <skip_atoi+0x29>
ffff800000104df4:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104df7:	5d                   	pop    %rbp
ffff800000104df8:	c3                   	ret

ffff800000104df9 <number>:
ffff800000104df9:	f3 0f 1e fa          	endbr64
ffff800000104dfd:	55                   	push   %rbp
ffff800000104dfe:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e01:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104e01 <number+0x8>
ffff800000104e08:	49 bb cf 9b 00 00 00 	movabs $0x9bcf,%r11
ffff800000104e0f:	00 00 00 
ffff800000104e12:	4c 01 d8             	add    %r11,%rax
ffff800000104e15:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104e19:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104e1d:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104e20:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104e23:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104e27:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104e2b:	48 ba b8 9b ff ff ff 	movabs $0xffffffffffff9bb8,%rdx
ffff800000104e32:	ff ff ff 
ffff800000104e35:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104e39:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104e3d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104e44:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104e47:	83 e2 40             	and    $0x40,%edx
ffff800000104e4a:	85 d2                	test   %edx,%edx
ffff800000104e4c:	74 12                	je     ffff800000104e60 <number+0x67>
ffff800000104e4e:	48 ba e0 9b ff ff ff 	movabs $0xffffffffffff9be0,%rdx
ffff800000104e55:	ff ff ff 
ffff800000104e58:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104e5c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104e60:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e63:	83 e0 10             	and    $0x10,%eax
ffff800000104e66:	85 c0                	test   %eax,%eax
ffff800000104e68:	74 04                	je     ffff800000104e6e <number+0x75>
ffff800000104e6a:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104e6e:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104e72:	7e 06                	jle    ffff800000104e7a <number+0x81>
ffff800000104e74:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104e78:	7e 0a                	jle    ffff800000104e84 <number+0x8b>
ffff800000104e7a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104e7f:	e9 0f 02 00 00       	jmp    ffff800000105093 <number+0x29a>
ffff800000104e84:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e87:	83 e0 01             	and    $0x1,%eax
ffff800000104e8a:	85 c0                	test   %eax,%eax
ffff800000104e8c:	74 07                	je     ffff800000104e95 <number+0x9c>
ffff800000104e8e:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104e93:	eb 05                	jmp    ffff800000104e9a <number+0xa1>
ffff800000104e95:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104e9a:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104e9d:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104ea1:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ea4:	83 e0 02             	and    $0x2,%eax
ffff800000104ea7:	85 c0                	test   %eax,%eax
ffff800000104ea9:	74 11                	je     ffff800000104ebc <number+0xc3>
ffff800000104eab:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104eb0:	79 0a                	jns    ffff800000104ebc <number+0xc3>
ffff800000104eb2:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104eb6:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104eba:	eb 1d                	jmp    ffff800000104ed9 <number+0xe0>
ffff800000104ebc:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ebf:	83 e0 04             	and    $0x4,%eax
ffff800000104ec2:	85 c0                	test   %eax,%eax
ffff800000104ec4:	75 0b                	jne    ffff800000104ed1 <number+0xd8>
ffff800000104ec6:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ec9:	c1 e0 02             	shl    $0x2,%eax
ffff800000104ecc:	83 e0 20             	and    $0x20,%eax
ffff800000104ecf:	eb 05                	jmp    ffff800000104ed6 <number+0xdd>
ffff800000104ed1:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104ed6:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104ed9:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104edd:	74 04                	je     ffff800000104ee3 <number+0xea>
ffff800000104edf:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104ee3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ee6:	83 e0 20             	and    $0x20,%eax
ffff800000104ee9:	85 c0                	test   %eax,%eax
ffff800000104eeb:	74 16                	je     ffff800000104f03 <number+0x10a>
ffff800000104eed:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104ef1:	75 06                	jne    ffff800000104ef9 <number+0x100>
ffff800000104ef3:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104ef7:	eb 0a                	jmp    ffff800000104f03 <number+0x10a>
ffff800000104ef9:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104efd:	75 04                	jne    ffff800000104f03 <number+0x10a>
ffff800000104eff:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104f03:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f08:	75 4b                	jne    ffff800000104f55 <number+0x15c>
ffff800000104f0a:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f0d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f10:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f13:	48 98                	cltq
ffff800000104f15:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104f1a:	eb 40                	jmp    ffff800000104f5c <number+0x163>
ffff800000104f1c:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104f1f:	48 63 c8             	movslq %eax,%rcx
ffff800000104f22:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f26:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104f2b:	48 f7 f1             	div    %rcx
ffff800000104f2e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f32:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104f35:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104f38:	48 63 d0             	movslq %eax,%rdx
ffff800000104f3b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f3f:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104f43:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f46:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f49:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f4c:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f4f:	48 98                	cltq
ffff800000104f51:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104f55:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f5a:	75 c0                	jne    ffff800000104f1c <number+0x123>
ffff800000104f5c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f5f:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104f62:	7e 06                	jle    ffff800000104f6a <number+0x171>
ffff800000104f64:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f67:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104f6a:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f6d:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104f70:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f73:	83 e0 11             	and    $0x11,%eax
ffff800000104f76:	85 c0                	test   %eax,%eax
ffff800000104f78:	75 1e                	jne    ffff800000104f98 <number+0x19f>
ffff800000104f7a:	eb 0f                	jmp    ffff800000104f8b <number+0x192>
ffff800000104f7c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f80:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f84:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f88:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104f8b:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f8e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f91:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f94:	85 c0                	test   %eax,%eax
ffff800000104f96:	7f e4                	jg     ffff800000104f7c <number+0x183>
ffff800000104f98:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104f9c:	74 12                	je     ffff800000104fb0 <number+0x1b7>
ffff800000104f9e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fa2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fa6:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104faa:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104fae:	88 10                	mov    %dl,(%rax)
ffff800000104fb0:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104fb3:	83 e0 20             	and    $0x20,%eax
ffff800000104fb6:	85 c0                	test   %eax,%eax
ffff800000104fb8:	74 45                	je     ffff800000104fff <number+0x206>
ffff800000104fba:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104fbe:	75 11                	jne    ffff800000104fd1 <number+0x1d8>
ffff800000104fc0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fc4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fc8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fcc:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fcf:	eb 2e                	jmp    ffff800000104fff <number+0x206>
ffff800000104fd1:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104fd5:	75 28                	jne    ffff800000104fff <number+0x206>
ffff800000104fd7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fdb:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fdf:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fe3:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fe6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104fea:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104fee:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ff2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ff6:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ffa:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104ffd:	88 10                	mov    %dl,(%rax)
ffff800000104fff:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105002:	83 e0 10             	and    $0x10,%eax
ffff800000105005:	85 c0                	test   %eax,%eax
ffff800000105007:	75 32                	jne    ffff80000010503b <number+0x242>
ffff800000105009:	eb 12                	jmp    ffff80000010501d <number+0x224>
ffff80000010500b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010500f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105013:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105017:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff80000010501b:	88 10                	mov    %dl,(%rax)
ffff80000010501d:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105020:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105023:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000105026:	85 c0                	test   %eax,%eax
ffff800000105028:	7f e1                	jg     ffff80000010500b <number+0x212>
ffff80000010502a:	eb 0f                	jmp    ffff80000010503b <number+0x242>
ffff80000010502c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105030:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105034:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105038:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010503b:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff80000010503e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105041:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000105044:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000105047:	7c e3                	jl     ffff80000010502c <number+0x233>
ffff800000105049:	eb 19                	jmp    ffff800000105064 <number+0x26b>
ffff80000010504b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010504f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105053:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105057:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff80000010505a:	48 63 d2             	movslq %edx,%rdx
ffff80000010505d:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000105062:	88 10                	mov    %dl,(%rax)
ffff800000105064:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105067:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010506a:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff80000010506d:	85 c0                	test   %eax,%eax
ffff80000010506f:	7f da                	jg     ffff80000010504b <number+0x252>
ffff800000105071:	eb 0f                	jmp    ffff800000105082 <number+0x289>
ffff800000105073:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105077:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010507b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010507f:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105082:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105085:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105088:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff80000010508b:	85 c0                	test   %eax,%eax
ffff80000010508d:	7f e4                	jg     ffff800000105073 <number+0x27a>
ffff80000010508f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105093:	5d                   	pop    %rbp
ffff800000105094:	c3                   	ret

ffff800000105095 <vsprintf>:
ffff800000105095:	f3 0f 1e fa          	endbr64
ffff800000105099:	55                   	push   %rbp
ffff80000010509a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010509d:	53                   	push   %rbx
ffff80000010509e:	48 83 ec 68          	sub    $0x68,%rsp
ffff8000001050a2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001050a2 <vsprintf+0xd>
ffff8000001050a9:	49 bb 2e 99 00 00 00 	movabs $0x992e,%r11
ffff8000001050b0:	00 00 00 
ffff8000001050b3:	4c 01 db             	add    %r11,%rbx
ffff8000001050b6:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff8000001050ba:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff8000001050be:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff8000001050c2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050c6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001050ca:	e9 f8 08 00 00       	jmp    ffff8000001059c7 <vsprintf+0x932>
ffff8000001050cf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050d3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050d6:	3c 25                	cmp    $0x25,%al
ffff8000001050d8:	74 1a                	je     ffff8000001050f4 <vsprintf+0x5f>
ffff8000001050da:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001050de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050e2:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001050e6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001050ea:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001050ed:	88 10                	mov    %dl,(%rax)
ffff8000001050ef:	e9 c7 08 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff8000001050f4:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff8000001050fb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050ff:	48 83 c0 01          	add    $0x1,%rax
ffff800000105103:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105107:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010510b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010510e:	0f be c0             	movsbl %al,%eax
ffff800000105111:	83 e8 20             	sub    $0x20,%eax
ffff800000105114:	83 f8 10             	cmp    $0x10,%eax
ffff800000105117:	77 40                	ja     ffff800000105159 <vsprintf+0xc4>
ffff800000105119:	89 c0                	mov    %eax,%eax
ffff80000010511b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105122:	00 
ffff800000105123:	48 8d 05 ae 34 00 00 	lea    0x34ae(%rip),%rax        # ffff8000001085d8 <.LC1+0x28>
ffff80000010512a:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010512e:	48 8d 15 a3 34 00 00 	lea    0x34a3(%rip),%rdx        # ffff8000001085d8 <.LC1+0x28>
ffff800000105135:	48 01 d0             	add    %rdx,%rax
ffff800000105138:	3e ff e0             	notrack jmp *%rax
ffff80000010513b:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010513f:	eb ba                	jmp    ffff8000001050fb <vsprintf+0x66>
ffff800000105141:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000105145:	eb b4                	jmp    ffff8000001050fb <vsprintf+0x66>
ffff800000105147:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff80000010514b:	eb ae                	jmp    ffff8000001050fb <vsprintf+0x66>
ffff80000010514d:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000105151:	eb a8                	jmp    ffff8000001050fb <vsprintf+0x66>
ffff800000105153:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105157:	eb a2                	jmp    ffff8000001050fb <vsprintf+0x66>
ffff800000105159:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000105160:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105164:	0f b6 00             	movzbl (%rax),%eax
ffff800000105167:	3c 2f                	cmp    $0x2f,%al
ffff800000105169:	7e 27                	jle    ffff800000105192 <vsprintf+0xfd>
ffff80000010516b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010516f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105172:	3c 39                	cmp    $0x39,%al
ffff800000105174:	7f 1c                	jg     ffff800000105192 <vsprintf+0xfd>
ffff800000105176:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010517a:	48 89 c7             	mov    %rax,%rdi
ffff80000010517d:	48 b8 a9 63 ff ff ff 	movabs $0xffffffffffff63a9,%rax
ffff800000105184:	ff ff ff 
ffff800000105187:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010518b:	ff d0                	call   *%rax
ffff80000010518d:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105190:	eb 6c                	jmp    ffff8000001051fe <vsprintf+0x169>
ffff800000105192:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105196:	0f b6 00             	movzbl (%rax),%eax
ffff800000105199:	3c 2a                	cmp    $0x2a,%al
ffff80000010519b:	75 61                	jne    ffff8000001051fe <vsprintf+0x169>
ffff80000010519d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051a1:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051a5:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051a9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051ad:	8b 00                	mov    (%rax),%eax
ffff8000001051af:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001051b2:	77 24                	ja     ffff8000001051d8 <vsprintf+0x143>
ffff8000001051b4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051b8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001051bc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051c0:	8b 00                	mov    (%rax),%eax
ffff8000001051c2:	89 c0                	mov    %eax,%eax
ffff8000001051c4:	48 01 d0             	add    %rdx,%rax
ffff8000001051c7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051cb:	8b 12                	mov    (%rdx),%edx
ffff8000001051cd:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051d0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051d4:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051d6:	eb 14                	jmp    ffff8000001051ec <vsprintf+0x157>
ffff8000001051d8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051dc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051e0:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051e4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051e8:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051ec:	8b 00                	mov    (%rax),%eax
ffff8000001051ee:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001051f1:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001051f5:	79 07                	jns    ffff8000001051fe <vsprintf+0x169>
ffff8000001051f7:	f7 5d d8             	negl   -0x28(%rbp)
ffff8000001051fa:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001051fe:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000105205:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105209:	0f b6 00             	movzbl (%rax),%eax
ffff80000010520c:	3c 2e                	cmp    $0x2e,%al
ffff80000010520e:	0f 85 aa 00 00 00    	jne    ffff8000001052be <vsprintf+0x229>
ffff800000105214:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105218:	48 83 c0 01          	add    $0x1,%rax
ffff80000010521c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105220:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105224:	0f b6 00             	movzbl (%rax),%eax
ffff800000105227:	3c 2f                	cmp    $0x2f,%al
ffff800000105229:	7e 27                	jle    ffff800000105252 <vsprintf+0x1bd>
ffff80000010522b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010522f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105232:	3c 39                	cmp    $0x39,%al
ffff800000105234:	7f 1c                	jg     ffff800000105252 <vsprintf+0x1bd>
ffff800000105236:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010523a:	48 89 c7             	mov    %rax,%rdi
ffff80000010523d:	48 b8 a9 63 ff ff ff 	movabs $0xffffffffffff63a9,%rax
ffff800000105244:	ff ff ff 
ffff800000105247:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010524b:	ff d0                	call   *%rax
ffff80000010524d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105250:	eb 5f                	jmp    ffff8000001052b1 <vsprintf+0x21c>
ffff800000105252:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105256:	0f b6 00             	movzbl (%rax),%eax
ffff800000105259:	3c 2a                	cmp    $0x2a,%al
ffff80000010525b:	75 54                	jne    ffff8000001052b1 <vsprintf+0x21c>
ffff80000010525d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105261:	48 83 c0 01          	add    $0x1,%rax
ffff800000105265:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105269:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010526d:	8b 00                	mov    (%rax),%eax
ffff80000010526f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105272:	77 24                	ja     ffff800000105298 <vsprintf+0x203>
ffff800000105274:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105278:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010527c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105280:	8b 00                	mov    (%rax),%eax
ffff800000105282:	89 c0                	mov    %eax,%eax
ffff800000105284:	48 01 d0             	add    %rdx,%rax
ffff800000105287:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010528b:	8b 12                	mov    (%rdx),%edx
ffff80000010528d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105290:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105294:	89 0a                	mov    %ecx,(%rdx)
ffff800000105296:	eb 14                	jmp    ffff8000001052ac <vsprintf+0x217>
ffff800000105298:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010529c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052a0:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052a4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052a8:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052ac:	8b 00                	mov    (%rax),%eax
ffff8000001052ae:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001052b1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001052b5:	79 07                	jns    ffff8000001052be <vsprintf+0x229>
ffff8000001052b7:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001052be:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001052c5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052c9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052cc:	3c 68                	cmp    $0x68,%al
ffff8000001052ce:	74 21                	je     ffff8000001052f1 <vsprintf+0x25c>
ffff8000001052d0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052d4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052d7:	3c 6c                	cmp    $0x6c,%al
ffff8000001052d9:	74 16                	je     ffff8000001052f1 <vsprintf+0x25c>
ffff8000001052db:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052df:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052e2:	3c 4c                	cmp    $0x4c,%al
ffff8000001052e4:	74 0b                	je     ffff8000001052f1 <vsprintf+0x25c>
ffff8000001052e6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052ea:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052ed:	3c 7a                	cmp    $0x7a,%al
ffff8000001052ef:	75 19                	jne    ffff80000010530a <vsprintf+0x275>
ffff8000001052f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052f5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052f8:	0f be c0             	movsbl %al,%eax
ffff8000001052fb:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff8000001052fe:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105302:	48 83 c0 01          	add    $0x1,%rax
ffff800000105306:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010530a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010530e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105311:	0f be c0             	movsbl %al,%eax
ffff800000105314:	83 e8 25             	sub    $0x25,%eax
ffff800000105317:	83 f8 53             	cmp    $0x53,%eax
ffff80000010531a:	0f 87 5d 06 00 00    	ja     ffff80000010597d <vsprintf+0x8e8>
ffff800000105320:	89 c0                	mov    %eax,%eax
ffff800000105322:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105329:	00 
ffff80000010532a:	48 8d 05 2f 33 00 00 	lea    0x332f(%rip),%rax        # ffff800000108660 <.LC1+0xb0>
ffff800000105331:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105335:	48 8d 15 24 33 00 00 	lea    0x3324(%rip),%rdx        # ffff800000108660 <.LC1+0xb0>
ffff80000010533c:	48 01 d0             	add    %rdx,%rax
ffff80000010533f:	3e ff e0             	notrack jmp *%rax
ffff800000105342:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105345:	83 e0 10             	and    $0x10,%eax
ffff800000105348:	85 c0                	test   %eax,%eax
ffff80000010534a:	75 1b                	jne    ffff800000105367 <vsprintf+0x2d2>
ffff80000010534c:	eb 0f                	jmp    ffff80000010535d <vsprintf+0x2c8>
ffff80000010534e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105352:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105356:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010535a:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010535d:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105361:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105365:	7f e7                	jg     ffff80000010534e <vsprintf+0x2b9>
ffff800000105367:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010536b:	8b 00                	mov    (%rax),%eax
ffff80000010536d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105370:	77 24                	ja     ffff800000105396 <vsprintf+0x301>
ffff800000105372:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105376:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010537a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010537e:	8b 00                	mov    (%rax),%eax
ffff800000105380:	89 c0                	mov    %eax,%eax
ffff800000105382:	48 01 d0             	add    %rdx,%rax
ffff800000105385:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105389:	8b 12                	mov    (%rdx),%edx
ffff80000010538b:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010538e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105392:	89 0a                	mov    %ecx,(%rdx)
ffff800000105394:	eb 14                	jmp    ffff8000001053aa <vsprintf+0x315>
ffff800000105396:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010539a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010539e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053a2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053a6:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053aa:	8b 08                	mov    (%rax),%ecx
ffff8000001053ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053b0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053b4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053b8:	89 ca                	mov    %ecx,%edx
ffff8000001053ba:	88 10                	mov    %dl,(%rax)
ffff8000001053bc:	eb 0f                	jmp    ffff8000001053cd <vsprintf+0x338>
ffff8000001053be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053c2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053c6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053ca:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053cd:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001053d1:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001053d5:	7f e7                	jg     ffff8000001053be <vsprintf+0x329>
ffff8000001053d7:	e9 df 05 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff8000001053dc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053e0:	8b 00                	mov    (%rax),%eax
ffff8000001053e2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001053e5:	77 24                	ja     ffff80000010540b <vsprintf+0x376>
ffff8000001053e7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053eb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053ef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053f3:	8b 00                	mov    (%rax),%eax
ffff8000001053f5:	89 c0                	mov    %eax,%eax
ffff8000001053f7:	48 01 d0             	add    %rdx,%rax
ffff8000001053fa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053fe:	8b 12                	mov    (%rdx),%edx
ffff800000105400:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105403:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105407:	89 0a                	mov    %ecx,(%rdx)
ffff800000105409:	eb 14                	jmp    ffff80000010541f <vsprintf+0x38a>
ffff80000010540b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010540f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105413:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105417:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010541b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010541f:	48 8b 00             	mov    (%rax),%rax
ffff800000105422:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105426:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010542b:	75 08                	jne    ffff800000105435 <vsprintf+0x3a0>
ffff80000010542d:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105434:	00 
ffff800000105435:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105439:	48 89 c7             	mov    %rax,%rdi
ffff80000010543c:	48 b8 f5 5a ff ff ff 	movabs $0xffffffffffff5af5,%rax
ffff800000105443:	ff ff ff 
ffff800000105446:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010544a:	ff d0                	call   *%rax
ffff80000010544c:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010544f:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105453:	79 08                	jns    ffff80000010545d <vsprintf+0x3c8>
ffff800000105455:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105458:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010545b:	eb 0e                	jmp    ffff80000010546b <vsprintf+0x3d6>
ffff80000010545d:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105460:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000105463:	7e 06                	jle    ffff80000010546b <vsprintf+0x3d6>
ffff800000105465:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000105468:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010546b:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010546e:	83 e0 10             	and    $0x10,%eax
ffff800000105471:	85 c0                	test   %eax,%eax
ffff800000105473:	75 1f                	jne    ffff800000105494 <vsprintf+0x3ff>
ffff800000105475:	eb 0f                	jmp    ffff800000105486 <vsprintf+0x3f1>
ffff800000105477:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010547b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010547f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105483:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105486:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105489:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010548c:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010548f:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105492:	7c e3                	jl     ffff800000105477 <vsprintf+0x3e2>
ffff800000105494:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff80000010549b:	eb 21                	jmp    ffff8000001054be <vsprintf+0x429>
ffff80000010549d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001054a1:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001054a5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001054a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054ad:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001054b1:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001054b5:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001054b8:	88 10                	mov    %dl,(%rax)
ffff8000001054ba:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff8000001054be:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001054c1:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001054c4:	7c d7                	jl     ffff80000010549d <vsprintf+0x408>
ffff8000001054c6:	eb 0f                	jmp    ffff8000001054d7 <vsprintf+0x442>
ffff8000001054c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054cc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001054d0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054d4:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001054d7:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001054da:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001054dd:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001054e0:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001054e3:	7c e3                	jl     ffff8000001054c8 <vsprintf+0x433>
ffff8000001054e5:	e9 d1 04 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff8000001054ea:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001054ee:	0f 85 82 00 00 00    	jne    ffff800000105576 <vsprintf+0x4e1>
ffff8000001054f4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054f8:	8b 00                	mov    (%rax),%eax
ffff8000001054fa:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054fd:	77 24                	ja     ffff800000105523 <vsprintf+0x48e>
ffff8000001054ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105503:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105507:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010550b:	8b 00                	mov    (%rax),%eax
ffff80000010550d:	89 c0                	mov    %eax,%eax
ffff80000010550f:	48 01 d0             	add    %rdx,%rax
ffff800000105512:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105516:	8b 12                	mov    (%rdx),%edx
ffff800000105518:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010551b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010551f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105521:	eb 14                	jmp    ffff800000105537 <vsprintf+0x4a2>
ffff800000105523:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105527:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010552b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010552f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105533:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105537:	48 8b 00             	mov    (%rax),%rax
ffff80000010553a:	48 89 c7             	mov    %rax,%rdi
ffff80000010553d:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105540:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105543:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105546:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010554a:	41 89 f1             	mov    %esi,%r9d
ffff80000010554d:	41 89 c8             	mov    %ecx,%r8d
ffff800000105550:	89 d1                	mov    %edx,%ecx
ffff800000105552:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105557:	48 89 fe             	mov    %rdi,%rsi
ffff80000010555a:	48 89 c7             	mov    %rax,%rdi
ffff80000010555d:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105564:	ff ff ff 
ffff800000105567:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010556b:	ff d0                	call   *%rax
ffff80000010556d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105571:	e9 45 04 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105576:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010557a:	8b 00                	mov    (%rax),%eax
ffff80000010557c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010557f:	77 24                	ja     ffff8000001055a5 <vsprintf+0x510>
ffff800000105581:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105585:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105589:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010558d:	8b 00                	mov    (%rax),%eax
ffff80000010558f:	89 c0                	mov    %eax,%eax
ffff800000105591:	48 01 d0             	add    %rdx,%rax
ffff800000105594:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105598:	8b 12                	mov    (%rdx),%edx
ffff80000010559a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010559d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055a1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055a3:	eb 14                	jmp    ffff8000001055b9 <vsprintf+0x524>
ffff8000001055a5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055a9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055ad:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055b1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055b5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055b9:	8b 00                	mov    (%rax),%eax
ffff8000001055bb:	89 c7                	mov    %eax,%edi
ffff8000001055bd:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001055c0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055c3:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055ca:	41 89 f1             	mov    %esi,%r9d
ffff8000001055cd:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055d0:	89 d1                	mov    %edx,%ecx
ffff8000001055d2:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001055d7:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055da:	48 89 c7             	mov    %rax,%rdi
ffff8000001055dd:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff8000001055e4:	ff ff ff 
ffff8000001055e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055eb:	ff d0                	call   *%rax
ffff8000001055ed:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055f1:	e9 c5 03 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff8000001055f6:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff8000001055fa:	75 0b                	jne    ffff800000105607 <vsprintf+0x572>
ffff8000001055fc:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105603:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105607:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010560b:	8b 00                	mov    (%rax),%eax
ffff80000010560d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105610:	77 24                	ja     ffff800000105636 <vsprintf+0x5a1>
ffff800000105612:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105616:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010561a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010561e:	8b 00                	mov    (%rax),%eax
ffff800000105620:	89 c0                	mov    %eax,%eax
ffff800000105622:	48 01 d0             	add    %rdx,%rax
ffff800000105625:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105629:	8b 12                	mov    (%rdx),%edx
ffff80000010562b:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010562e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105632:	89 0a                	mov    %ecx,(%rdx)
ffff800000105634:	eb 14                	jmp    ffff80000010564a <vsprintf+0x5b5>
ffff800000105636:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010563a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010563e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105642:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105646:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010564a:	48 8b 00             	mov    (%rax),%rax
ffff80000010564d:	48 89 c7             	mov    %rax,%rdi
ffff800000105650:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105653:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105656:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105659:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010565d:	41 89 f1             	mov    %esi,%r9d
ffff800000105660:	41 89 c8             	mov    %ecx,%r8d
ffff800000105663:	89 d1                	mov    %edx,%ecx
ffff800000105665:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010566a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010566d:	48 89 c7             	mov    %rax,%rdi
ffff800000105670:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105677:	ff ff ff 
ffff80000010567a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010567e:	ff d0                	call   *%rax
ffff800000105680:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105684:	e9 32 03 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105689:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff80000010568d:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105691:	0f 85 82 00 00 00    	jne    ffff800000105719 <vsprintf+0x684>
ffff800000105697:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010569b:	8b 00                	mov    (%rax),%eax
ffff80000010569d:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056a0:	77 24                	ja     ffff8000001056c6 <vsprintf+0x631>
ffff8000001056a2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056a6:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001056aa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056ae:	8b 00                	mov    (%rax),%eax
ffff8000001056b0:	89 c0                	mov    %eax,%eax
ffff8000001056b2:	48 01 d0             	add    %rdx,%rax
ffff8000001056b5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056b9:	8b 12                	mov    (%rdx),%edx
ffff8000001056bb:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001056be:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056c2:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056c4:	eb 14                	jmp    ffff8000001056da <vsprintf+0x645>
ffff8000001056c6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056ca:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056ce:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056d2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056d6:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056da:	48 8b 00             	mov    (%rax),%rax
ffff8000001056dd:	48 89 c7             	mov    %rax,%rdi
ffff8000001056e0:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001056e3:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001056e6:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001056e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056ed:	41 89 f1             	mov    %esi,%r9d
ffff8000001056f0:	41 89 c8             	mov    %ecx,%r8d
ffff8000001056f3:	89 d1                	mov    %edx,%ecx
ffff8000001056f5:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056fa:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056fd:	48 89 c7             	mov    %rax,%rdi
ffff800000105700:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105707:	ff ff ff 
ffff80000010570a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010570e:	ff d0                	call   *%rax
ffff800000105710:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105714:	e9 a2 02 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105719:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010571d:	8b 00                	mov    (%rax),%eax
ffff80000010571f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105722:	77 24                	ja     ffff800000105748 <vsprintf+0x6b3>
ffff800000105724:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105728:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010572c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105730:	8b 00                	mov    (%rax),%eax
ffff800000105732:	89 c0                	mov    %eax,%eax
ffff800000105734:	48 01 d0             	add    %rdx,%rax
ffff800000105737:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010573b:	8b 12                	mov    (%rdx),%edx
ffff80000010573d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105740:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105744:	89 0a                	mov    %ecx,(%rdx)
ffff800000105746:	eb 14                	jmp    ffff80000010575c <vsprintf+0x6c7>
ffff800000105748:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010574c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105750:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105754:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105758:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010575c:	8b 00                	mov    (%rax),%eax
ffff80000010575e:	89 c7                	mov    %eax,%edi
ffff800000105760:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105763:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105766:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105769:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010576d:	41 89 f1             	mov    %esi,%r9d
ffff800000105770:	41 89 c8             	mov    %ecx,%r8d
ffff800000105773:	89 d1                	mov    %edx,%ecx
ffff800000105775:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010577a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010577d:	48 89 c7             	mov    %rax,%rdi
ffff800000105780:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105787:	ff ff ff 
ffff80000010578a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010578e:	ff d0                	call   *%rax
ffff800000105790:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105794:	e9 22 02 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105799:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff80000010579d:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001057a1:	0f 85 82 00 00 00    	jne    ffff800000105829 <vsprintf+0x794>
ffff8000001057a7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057ab:	8b 00                	mov    (%rax),%eax
ffff8000001057ad:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057b0:	77 24                	ja     ffff8000001057d6 <vsprintf+0x741>
ffff8000001057b2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057b6:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057be:	8b 00                	mov    (%rax),%eax
ffff8000001057c0:	89 c0                	mov    %eax,%eax
ffff8000001057c2:	48 01 d0             	add    %rdx,%rax
ffff8000001057c5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057c9:	8b 12                	mov    (%rdx),%edx
ffff8000001057cb:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057ce:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057d2:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057d4:	eb 14                	jmp    ffff8000001057ea <vsprintf+0x755>
ffff8000001057d6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057da:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001057de:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001057e2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057e6:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001057ea:	48 8b 00             	mov    (%rax),%rax
ffff8000001057ed:	48 89 c7             	mov    %rax,%rdi
ffff8000001057f0:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057f3:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057f6:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057fd:	41 89 f1             	mov    %esi,%r9d
ffff800000105800:	41 89 c8             	mov    %ecx,%r8d
ffff800000105803:	89 d1                	mov    %edx,%ecx
ffff800000105805:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010580a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010580d:	48 89 c7             	mov    %rax,%rdi
ffff800000105810:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105817:	ff ff ff 
ffff80000010581a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010581e:	ff d0                	call   *%rax
ffff800000105820:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105824:	e9 92 01 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105829:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010582d:	8b 00                	mov    (%rax),%eax
ffff80000010582f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105832:	77 24                	ja     ffff800000105858 <vsprintf+0x7c3>
ffff800000105834:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105838:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010583c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105840:	8b 00                	mov    (%rax),%eax
ffff800000105842:	89 c0                	mov    %eax,%eax
ffff800000105844:	48 01 d0             	add    %rdx,%rax
ffff800000105847:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010584b:	8b 12                	mov    (%rdx),%edx
ffff80000010584d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105850:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105854:	89 0a                	mov    %ecx,(%rdx)
ffff800000105856:	eb 14                	jmp    ffff80000010586c <vsprintf+0x7d7>
ffff800000105858:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010585c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105860:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105864:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105868:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010586c:	8b 00                	mov    (%rax),%eax
ffff80000010586e:	89 c7                	mov    %eax,%edi
ffff800000105870:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105873:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105876:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105879:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010587d:	41 89 f1             	mov    %esi,%r9d
ffff800000105880:	41 89 c8             	mov    %ecx,%r8d
ffff800000105883:	89 d1                	mov    %edx,%ecx
ffff800000105885:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010588a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010588d:	48 89 c7             	mov    %rax,%rdi
ffff800000105890:	48 b8 29 64 ff ff ff 	movabs $0xffffffffffff6429,%rax
ffff800000105897:	ff ff ff 
ffff80000010589a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010589e:	ff d0                	call   *%rax
ffff8000001058a0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058a4:	e9 12 01 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff8000001058a9:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001058ad:	75 61                	jne    ffff800000105910 <vsprintf+0x87b>
ffff8000001058af:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058b3:	8b 00                	mov    (%rax),%eax
ffff8000001058b5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001058b8:	77 24                	ja     ffff8000001058de <vsprintf+0x849>
ffff8000001058ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058be:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001058c2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058c6:	8b 00                	mov    (%rax),%eax
ffff8000001058c8:	89 c0                	mov    %eax,%eax
ffff8000001058ca:	48 01 d0             	add    %rdx,%rax
ffff8000001058cd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058d1:	8b 12                	mov    (%rdx),%edx
ffff8000001058d3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001058d6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058da:	89 0a                	mov    %ecx,(%rdx)
ffff8000001058dc:	eb 14                	jmp    ffff8000001058f2 <vsprintf+0x85d>
ffff8000001058de:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058e2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058e6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058ea:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058ee:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058f2:	48 8b 00             	mov    (%rax),%rax
ffff8000001058f5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001058f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058fd:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105901:	48 89 c2             	mov    %rax,%rdx
ffff800000105904:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105908:	48 89 10             	mov    %rdx,(%rax)
ffff80000010590b:	e9 ab 00 00 00       	jmp    ffff8000001059bb <vsprintf+0x926>
ffff800000105910:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105914:	8b 00                	mov    (%rax),%eax
ffff800000105916:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105919:	77 24                	ja     ffff80000010593f <vsprintf+0x8aa>
ffff80000010591b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010591f:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105923:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105927:	8b 00                	mov    (%rax),%eax
ffff800000105929:	89 c0                	mov    %eax,%eax
ffff80000010592b:	48 01 d0             	add    %rdx,%rax
ffff80000010592e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105932:	8b 12                	mov    (%rdx),%edx
ffff800000105934:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105937:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010593b:	89 0a                	mov    %ecx,(%rdx)
ffff80000010593d:	eb 14                	jmp    ffff800000105953 <vsprintf+0x8be>
ffff80000010593f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105943:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105947:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010594b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010594f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105953:	48 8b 00             	mov    (%rax),%rax
ffff800000105956:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010595a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010595e:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105962:	89 c2                	mov    %eax,%edx
ffff800000105964:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105968:	89 10                	mov    %edx,(%rax)
ffff80000010596a:	eb 4f                	jmp    ffff8000001059bb <vsprintf+0x926>
ffff80000010596c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105970:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105974:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105978:	c6 00 25             	movb   $0x25,(%rax)
ffff80000010597b:	eb 3e                	jmp    ffff8000001059bb <vsprintf+0x926>
ffff80000010597d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105981:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105985:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105989:	c6 00 25             	movb   $0x25,(%rax)
ffff80000010598c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105990:	0f b6 00             	movzbl (%rax),%eax
ffff800000105993:	84 c0                	test   %al,%al
ffff800000105995:	74 17                	je     ffff8000001059ae <vsprintf+0x919>
ffff800000105997:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010599b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010599f:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001059a3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001059a7:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001059aa:	88 10                	mov    %dl,(%rax)
ffff8000001059ac:	eb 0c                	jmp    ffff8000001059ba <vsprintf+0x925>
ffff8000001059ae:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059b2:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001059b6:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059ba:	90                   	nop
ffff8000001059bb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059bf:	48 83 c0 01          	add    $0x1,%rax
ffff8000001059c3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059c7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059cb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001059ce:	84 c0                	test   %al,%al
ffff8000001059d0:	0f 85 f9 f6 ff ff    	jne    ffff8000001050cf <vsprintf+0x3a>
ffff8000001059d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059da:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001059dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059e1:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001059e5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001059e9:	c9                   	leave
ffff8000001059ea:	c3                   	ret

ffff8000001059eb <set_intr_gate>:
ffff8000001059eb:	f3 0f 1e fa          	endbr64
ffff8000001059ef:	55                   	push   %rbp
ffff8000001059f0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059f3:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059f3 <set_intr_gate+0x8>
ffff8000001059fa:	49 bb dd 8f 00 00 00 	movabs $0x8fdd,%r11
ffff800000105a01:	00 00 00 
ffff800000105a04:	4c 01 d8             	add    %r11,%rax
ffff800000105a07:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a0a:	89 f1                	mov    %esi,%ecx
ffff800000105a0c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a10:	89 ca                	mov    %ecx,%edx
ffff800000105a12:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a15:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a18:	48 89 d1             	mov    %rdx,%rcx
ffff800000105a1b:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105a1f:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a26:	ff ff ff 
ffff800000105a29:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a2d:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a31:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a34:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a38:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a3c:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a43:	ff ff ff 
ffff800000105a46:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a4a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a4e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a52:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a58:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a5c:	44 89 c0             	mov    %r8d,%eax
ffff800000105a5f:	66 89 d0             	mov    %dx,%ax
ffff800000105a62:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a66:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105a6d:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a71:	48 01 c8             	add    %rcx,%rax
ffff800000105a74:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a77:	89 d1                	mov    %edx,%ecx
ffff800000105a79:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a7d:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a81:	48 01 c8             	add    %rcx,%rax
ffff800000105a84:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a87:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a8b:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a8e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a92:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a96:	90                   	nop
ffff800000105a97:	5d                   	pop    %rbp
ffff800000105a98:	c3                   	ret

ffff800000105a99 <set_trap_gate>:
ffff800000105a99:	f3 0f 1e fa          	endbr64
ffff800000105a9d:	55                   	push   %rbp
ffff800000105a9e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105aa1:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105aa1 <set_trap_gate+0x8>
ffff800000105aa8:	49 bb 2f 8f 00 00 00 	movabs $0x8f2f,%r11
ffff800000105aaf:	00 00 00 
ffff800000105ab2:	4c 01 d8             	add    %r11,%rax
ffff800000105ab5:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105ab8:	89 f1                	mov    %esi,%ecx
ffff800000105aba:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105abe:	89 ca                	mov    %ecx,%edx
ffff800000105ac0:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105ac3:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ac6:	48 89 d1             	mov    %rdx,%rcx
ffff800000105ac9:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105acd:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ad4:	ff ff ff 
ffff800000105ad7:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105adb:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105adf:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ae2:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105ae6:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105aea:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105af1:	ff ff ff 
ffff800000105af4:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105af8:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105afc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105b00:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105b06:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105b0a:	44 89 c0             	mov    %r8d,%eax
ffff800000105b0d:	66 89 d0             	mov    %dx,%ax
ffff800000105b10:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105b14:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105b1b:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105b1f:	48 01 c8             	add    %rcx,%rax
ffff800000105b22:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b25:	89 d1                	mov    %edx,%ecx
ffff800000105b27:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b2b:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b2f:	48 01 c8             	add    %rcx,%rax
ffff800000105b32:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b35:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b39:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b3c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b40:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b44:	90                   	nop
ffff800000105b45:	5d                   	pop    %rbp
ffff800000105b46:	c3                   	ret

ffff800000105b47 <set_system_gate>:
ffff800000105b47:	f3 0f 1e fa          	endbr64
ffff800000105b4b:	55                   	push   %rbp
ffff800000105b4c:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b4f:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b4f <set_system_gate+0x8>
ffff800000105b56:	49 bb 81 8e 00 00 00 	movabs $0x8e81,%r11
ffff800000105b5d:	00 00 00 
ffff800000105b60:	4c 01 d8             	add    %r11,%rax
ffff800000105b63:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105b66:	89 f1                	mov    %esi,%ecx
ffff800000105b68:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105b6c:	89 ca                	mov    %ecx,%edx
ffff800000105b6e:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105b71:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b74:	48 89 d1             	mov    %rdx,%rcx
ffff800000105b77:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105b7b:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b82:	ff ff ff 
ffff800000105b85:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b89:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105b8d:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b90:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105b94:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105b98:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b9f:	ff ff ff 
ffff800000105ba2:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ba6:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105baa:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105bae:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105bb4:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105bb8:	44 89 c0             	mov    %r8d,%eax
ffff800000105bbb:	66 89 d0             	mov    %dx,%ax
ffff800000105bbe:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105bc2:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105bc9:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105bcd:	48 01 c8             	add    %rcx,%rax
ffff800000105bd0:	48 31 c9             	xor    %rcx,%rcx
ffff800000105bd3:	89 d1                	mov    %edx,%ecx
ffff800000105bd5:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105bd9:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105bdd:	48 01 c8             	add    %rcx,%rax
ffff800000105be0:	48 89 06             	mov    %rax,(%rsi)
ffff800000105be3:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105be7:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105bea:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105bee:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105bf2:	90                   	nop
ffff800000105bf3:	5d                   	pop    %rbp
ffff800000105bf4:	c3                   	ret
ffff800000105bf5:	f3 0f 1e fa          	endbr64
ffff800000105bf9:	55                   	push   %rbp
ffff800000105bfa:	48 89 e5             	mov    %rsp,%rbp
ffff800000105bfd:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105bfd <set_system_gate+0xb6>
ffff800000105c04:	49 bb d3 8d 00 00 00 	movabs $0x8dd3,%r11
ffff800000105c0b:	00 00 00 
ffff800000105c0e:	4c 01 d8             	add    %r11,%rax
ffff800000105c11:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105c15:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105c19:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105c1d:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105c21:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105c25:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105c29:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c30:	ff ff ff 
ffff800000105c33:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c37:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105c3b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105c3f:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c42:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c49:	ff ff ff 
ffff800000105c4c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c50:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105c54:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105c58:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c5b:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c62:	ff ff ff 
ffff800000105c65:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c69:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105c6d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105c71:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c74:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c7b:	ff ff ff 
ffff800000105c7e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c82:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105c86:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105c8a:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c8d:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c94:	ff ff ff 
ffff800000105c97:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c9b:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105c9f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105ca3:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ca6:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cad:	ff ff ff 
ffff800000105cb0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cb4:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105cb8:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105cbc:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cbf:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cc6:	ff ff ff 
ffff800000105cc9:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ccd:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105cd1:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105cd5:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cd8:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cdf:	ff ff ff 
ffff800000105ce2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ce6:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105cea:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105cee:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cf1:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cf8:	ff ff ff 
ffff800000105cfb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cff:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105d03:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105d07:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105d0a:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105d11:	ff ff ff 
ffff800000105d14:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105d18:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105d1c:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105d20:	48 89 10             	mov    %rdx,(%rax)
ffff800000105d23:	90                   	nop
ffff800000105d24:	5d                   	pop    %rbp
ffff800000105d25:	c3                   	ret

ffff800000105d26 <do_divide_error>:
ffff800000105d26:	f3 0f 1e fa          	endbr64
ffff800000105d2a:	55                   	push   %rbp
ffff800000105d2b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d2e:	41 57                	push   %r15
ffff800000105d30:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d34:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d34 <do_divide_error+0xe>
ffff800000105d3b:	49 bb 9c 8c 00 00 00 	movabs $0x8c9c,%r11
ffff800000105d42:	00 00 00 
ffff800000105d45:	4d 01 da             	add    %r11,%r10
ffff800000105d48:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d4c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d50:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d57:	00 
ffff800000105d58:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d5c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d62:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d6a:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d6d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d71:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d75:	49 89 c9             	mov    %rcx,%r9
ffff800000105d78:	49 89 d0             	mov    %rdx,%r8
ffff800000105d7b:	48 89 c1             	mov    %rax,%rcx
ffff800000105d7e:	48 b8 30 9f ff ff ff 	movabs $0xffffffffffff9f30,%rax
ffff800000105d85:	ff ff ff 
ffff800000105d88:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d8c:	48 89 c2             	mov    %rax,%rdx
ffff800000105d8f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d94:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d99:	4d 89 d7             	mov    %r10,%r15
ffff800000105d9c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105da1:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000105da8:	ff ff ff 
ffff800000105dab:	4d 01 d3             	add    %r10,%r11
ffff800000105dae:	41 ff d3             	call   *%r11
ffff800000105db1:	90                   	nop
ffff800000105db2:	eb fd                	jmp    ffff800000105db1 <do_divide_error+0x8b>

ffff800000105db4 <do_debug>:
ffff800000105db4:	f3 0f 1e fa          	endbr64
ffff800000105db8:	55                   	push   %rbp
ffff800000105db9:	48 89 e5             	mov    %rsp,%rbp
ffff800000105dbc:	41 57                	push   %r15
ffff800000105dbe:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105dc2:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105dc2 <do_debug+0xe>
ffff800000105dc9:	49 bb 0e 8c 00 00 00 	movabs $0x8c0e,%r11
ffff800000105dd0:	00 00 00 
ffff800000105dd3:	4d 01 da             	add    %r11,%r10
ffff800000105dd6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105dda:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105dde:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105de5:	00 
ffff800000105de6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105dea:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105df0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105df4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105df8:	48 8b 08             	mov    (%rax),%rcx
ffff800000105dfb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105dff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e03:	49 89 c9             	mov    %rcx,%r9
ffff800000105e06:	49 89 d0             	mov    %rdx,%r8
ffff800000105e09:	48 89 c1             	mov    %rax,%rcx
ffff800000105e0c:	48 b8 70 9f ff ff ff 	movabs $0xffffffffffff9f70,%rax
ffff800000105e13:	ff ff ff 
ffff800000105e16:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e1a:	48 89 c2             	mov    %rax,%rdx
ffff800000105e1d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e22:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e27:	4d 89 d7             	mov    %r10,%r15
ffff800000105e2a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e2f:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000105e36:	ff ff ff 
ffff800000105e39:	4d 01 d3             	add    %r10,%r11
ffff800000105e3c:	41 ff d3             	call   *%r11
ffff800000105e3f:	90                   	nop
ffff800000105e40:	eb fd                	jmp    ffff800000105e3f <do_debug+0x8b>

ffff800000105e42 <do_nmi>:
ffff800000105e42:	f3 0f 1e fa          	endbr64
ffff800000105e46:	55                   	push   %rbp
ffff800000105e47:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e4a:	41 57                	push   %r15
ffff800000105e4c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e50:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e50 <do_nmi+0xe>
ffff800000105e57:	49 bb 80 8b 00 00 00 	movabs $0x8b80,%r11
ffff800000105e5e:	00 00 00 
ffff800000105e61:	4d 01 da             	add    %r11,%r10
ffff800000105e64:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e68:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e6c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e73:	00 
ffff800000105e74:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e78:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e7e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e82:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e86:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e89:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e91:	49 89 c9             	mov    %rcx,%r9
ffff800000105e94:	49 89 d0             	mov    %rdx,%r8
ffff800000105e97:	48 89 c1             	mov    %rax,%rcx
ffff800000105e9a:	48 b8 a8 9f ff ff ff 	movabs $0xffffffffffff9fa8,%rax
ffff800000105ea1:	ff ff ff 
ffff800000105ea4:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ea8:	48 89 c2             	mov    %rax,%rdx
ffff800000105eab:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105eb0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105eb5:	4d 89 d7             	mov    %r10,%r15
ffff800000105eb8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ebd:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000105ec4:	ff ff ff 
ffff800000105ec7:	4d 01 d3             	add    %r10,%r11
ffff800000105eca:	41 ff d3             	call   *%r11
ffff800000105ecd:	90                   	nop
ffff800000105ece:	eb fd                	jmp    ffff800000105ecd <do_nmi+0x8b>

ffff800000105ed0 <do_int3>:
ffff800000105ed0:	f3 0f 1e fa          	endbr64
ffff800000105ed4:	55                   	push   %rbp
ffff800000105ed5:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ed8:	41 57                	push   %r15
ffff800000105eda:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ede:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ede <do_int3+0xe>
ffff800000105ee5:	49 bb f2 8a 00 00 00 	movabs $0x8af2,%r11
ffff800000105eec:	00 00 00 
ffff800000105eef:	4d 01 da             	add    %r11,%r10
ffff800000105ef2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ef6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105efa:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f01:	00 
ffff800000105f02:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f06:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f0c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f14:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f17:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f1b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f1f:	49 89 c9             	mov    %rcx,%r9
ffff800000105f22:	49 89 d0             	mov    %rdx,%r8
ffff800000105f25:	48 89 c1             	mov    %rax,%rcx
ffff800000105f28:	48 b8 e0 9f ff ff ff 	movabs $0xffffffffffff9fe0,%rax
ffff800000105f2f:	ff ff ff 
ffff800000105f32:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f36:	48 89 c2             	mov    %rax,%rdx
ffff800000105f39:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f3e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f43:	4d 89 d7             	mov    %r10,%r15
ffff800000105f46:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f4b:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000105f52:	ff ff ff 
ffff800000105f55:	4d 01 d3             	add    %r10,%r11
ffff800000105f58:	41 ff d3             	call   *%r11
ffff800000105f5b:	90                   	nop
ffff800000105f5c:	eb fd                	jmp    ffff800000105f5b <do_int3+0x8b>

ffff800000105f5e <do_overflow>:
ffff800000105f5e:	f3 0f 1e fa          	endbr64
ffff800000105f62:	55                   	push   %rbp
ffff800000105f63:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f66:	41 57                	push   %r15
ffff800000105f68:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f6c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f6c <do_overflow+0xe>
ffff800000105f73:	49 bb 64 8a 00 00 00 	movabs $0x8a64,%r11
ffff800000105f7a:	00 00 00 
ffff800000105f7d:	4d 01 da             	add    %r11,%r10
ffff800000105f80:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f84:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f88:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f8f:	00 
ffff800000105f90:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f94:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f9a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f9e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fa2:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fa5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fa9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fad:	49 89 c9             	mov    %rcx,%r9
ffff800000105fb0:	49 89 d0             	mov    %rdx,%r8
ffff800000105fb3:	48 89 c1             	mov    %rax,%rcx
ffff800000105fb6:	48 b8 18 a0 ff ff ff 	movabs $0xffffffffffffa018,%rax
ffff800000105fbd:	ff ff ff 
ffff800000105fc0:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105fc4:	48 89 c2             	mov    %rax,%rdx
ffff800000105fc7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105fcc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105fd1:	4d 89 d7             	mov    %r10,%r15
ffff800000105fd4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fd9:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000105fe0:	ff ff ff 
ffff800000105fe3:	4d 01 d3             	add    %r10,%r11
ffff800000105fe6:	41 ff d3             	call   *%r11
ffff800000105fe9:	90                   	nop
ffff800000105fea:	eb fd                	jmp    ffff800000105fe9 <do_overflow+0x8b>

ffff800000105fec <do_bounds>:
ffff800000105fec:	f3 0f 1e fa          	endbr64
ffff800000105ff0:	55                   	push   %rbp
ffff800000105ff1:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ff4:	41 57                	push   %r15
ffff800000105ff6:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ffa:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ffa <do_bounds+0xe>
ffff800000106001:	49 bb d6 89 00 00 00 	movabs $0x89d6,%r11
ffff800000106008:	00 00 00 
ffff80000010600b:	4d 01 da             	add    %r11,%r10
ffff80000010600e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106012:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106016:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010601d:	00 
ffff80000010601e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106022:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106028:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010602c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106030:	48 8b 08             	mov    (%rax),%rcx
ffff800000106033:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106037:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010603b:	49 89 c9             	mov    %rcx,%r9
ffff80000010603e:	49 89 d0             	mov    %rdx,%r8
ffff800000106041:	48 89 c1             	mov    %rax,%rcx
ffff800000106044:	48 b8 58 a0 ff ff ff 	movabs $0xffffffffffffa058,%rax
ffff80000010604b:	ff ff ff 
ffff80000010604e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106052:	48 89 c2             	mov    %rax,%rdx
ffff800000106055:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010605a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010605f:	4d 89 d7             	mov    %r10,%r15
ffff800000106062:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106067:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff80000010606e:	ff ff ff 
ffff800000106071:	4d 01 d3             	add    %r10,%r11
ffff800000106074:	41 ff d3             	call   *%r11
ffff800000106077:	90                   	nop
ffff800000106078:	eb fd                	jmp    ffff800000106077 <do_bounds+0x8b>

ffff80000010607a <do_undefined_opcode>:
ffff80000010607a:	f3 0f 1e fa          	endbr64
ffff80000010607e:	55                   	push   %rbp
ffff80000010607f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106082:	41 57                	push   %r15
ffff800000106084:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106088:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106088 <do_undefined_opcode+0xe>
ffff80000010608f:	49 bb 48 89 00 00 00 	movabs $0x8948,%r11
ffff800000106096:	00 00 00 
ffff800000106099:	4d 01 da             	add    %r11,%r10
ffff80000010609c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060a0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060a4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060ab:	00 
ffff8000001060ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060b0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060b6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060be:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060c1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060c9:	49 89 c9             	mov    %rcx,%r9
ffff8000001060cc:	49 89 d0             	mov    %rdx,%r8
ffff8000001060cf:	48 89 c1             	mov    %rax,%rcx
ffff8000001060d2:	48 b8 98 a0 ff ff ff 	movabs $0xffffffffffffa098,%rax
ffff8000001060d9:	ff ff ff 
ffff8000001060dc:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001060e0:	48 89 c2             	mov    %rax,%rdx
ffff8000001060e3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060e8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060ed:	4d 89 d7             	mov    %r10,%r15
ffff8000001060f0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060f5:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff8000001060fc:	ff ff ff 
ffff8000001060ff:	4d 01 d3             	add    %r10,%r11
ffff800000106102:	41 ff d3             	call   *%r11
ffff800000106105:	90                   	nop
ffff800000106106:	eb fd                	jmp    ffff800000106105 <do_undefined_opcode+0x8b>

ffff800000106108 <do_dev_not_available>:
ffff800000106108:	f3 0f 1e fa          	endbr64
ffff80000010610c:	55                   	push   %rbp
ffff80000010610d:	48 89 e5             	mov    %rsp,%rbp
ffff800000106110:	41 57                	push   %r15
ffff800000106112:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106116:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106116 <do_dev_not_available+0xe>
ffff80000010611d:	49 bb ba 88 00 00 00 	movabs $0x88ba,%r11
ffff800000106124:	00 00 00 
ffff800000106127:	4d 01 da             	add    %r11,%r10
ffff80000010612a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010612e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106132:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106139:	00 
ffff80000010613a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010613e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106144:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106148:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010614c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010614f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106153:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106157:	49 89 c9             	mov    %rcx,%r9
ffff80000010615a:	49 89 d0             	mov    %rdx,%r8
ffff80000010615d:	48 89 c1             	mov    %rax,%rcx
ffff800000106160:	48 b8 e0 a0 ff ff ff 	movabs $0xffffffffffffa0e0,%rax
ffff800000106167:	ff ff ff 
ffff80000010616a:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010616e:	48 89 c2             	mov    %rax,%rdx
ffff800000106171:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106176:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010617b:	4d 89 d7             	mov    %r10,%r15
ffff80000010617e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106183:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff80000010618a:	ff ff ff 
ffff80000010618d:	4d 01 d3             	add    %r10,%r11
ffff800000106190:	41 ff d3             	call   *%r11
ffff800000106193:	90                   	nop
ffff800000106194:	eb fd                	jmp    ffff800000106193 <do_dev_not_available+0x8b>

ffff800000106196 <do_double_fault>:
ffff800000106196:	f3 0f 1e fa          	endbr64
ffff80000010619a:	55                   	push   %rbp
ffff80000010619b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010619e:	41 57                	push   %r15
ffff8000001061a0:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061a4:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001061a4 <do_double_fault+0xe>
ffff8000001061ab:	49 bb 2c 88 00 00 00 	movabs $0x882c,%r11
ffff8000001061b2:	00 00 00 
ffff8000001061b5:	4d 01 da             	add    %r11,%r10
ffff8000001061b8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061bc:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061c0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061c7:	00 
ffff8000001061c8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061cc:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061da:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061dd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061e1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061e5:	49 89 c9             	mov    %rcx,%r9
ffff8000001061e8:	49 89 d0             	mov    %rdx,%r8
ffff8000001061eb:	48 89 c1             	mov    %rax,%rcx
ffff8000001061ee:	48 b8 28 a1 ff ff ff 	movabs $0xffffffffffffa128,%rax
ffff8000001061f5:	ff ff ff 
ffff8000001061f8:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061fc:	48 89 c2             	mov    %rax,%rdx
ffff8000001061ff:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106204:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106209:	4d 89 d7             	mov    %r10,%r15
ffff80000010620c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106211:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000106218:	ff ff ff 
ffff80000010621b:	4d 01 d3             	add    %r10,%r11
ffff80000010621e:	41 ff d3             	call   *%r11
ffff800000106221:	90                   	nop
ffff800000106222:	eb fd                	jmp    ffff800000106221 <do_double_fault+0x8b>

ffff800000106224 <do_coprocessor_segment_overrun>:
ffff800000106224:	f3 0f 1e fa          	endbr64
ffff800000106228:	55                   	push   %rbp
ffff800000106229:	48 89 e5             	mov    %rsp,%rbp
ffff80000010622c:	41 57                	push   %r15
ffff80000010622e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106232:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106232 <do_coprocessor_segment_overrun+0xe>
ffff800000106239:	49 bb 9e 87 00 00 00 	movabs $0x879e,%r11
ffff800000106240:	00 00 00 
ffff800000106243:	4d 01 da             	add    %r11,%r10
ffff800000106246:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010624a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010624e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106255:	00 
ffff800000106256:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010625a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106260:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106264:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106268:	48 8b 08             	mov    (%rax),%rcx
ffff80000010626b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010626f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106273:	49 89 c9             	mov    %rcx,%r9
ffff800000106276:	49 89 d0             	mov    %rdx,%r8
ffff800000106279:	48 89 c1             	mov    %rax,%rcx
ffff80000010627c:	48 b8 68 a1 ff ff ff 	movabs $0xffffffffffffa168,%rax
ffff800000106283:	ff ff ff 
ffff800000106286:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010628a:	48 89 c2             	mov    %rax,%rdx
ffff80000010628d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106292:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106297:	4d 89 d7             	mov    %r10,%r15
ffff80000010629a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010629f:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff8000001062a6:	ff ff ff 
ffff8000001062a9:	4d 01 d3             	add    %r10,%r11
ffff8000001062ac:	41 ff d3             	call   *%r11
ffff8000001062af:	90                   	nop
ffff8000001062b0:	eb fd                	jmp    ffff8000001062af <do_coprocessor_segment_overrun+0x8b>

ffff8000001062b2 <do_invalid_TSS>:
ffff8000001062b2:	f3 0f 1e fa          	endbr64
ffff8000001062b6:	55                   	push   %rbp
ffff8000001062b7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062ba:	41 57                	push   %r15
ffff8000001062bc:	53                   	push   %rbx
ffff8000001062bd:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001062c1:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001062c1 <do_invalid_TSS+0xf>
ffff8000001062c8:	49 bb 0f 87 00 00 00 	movabs $0x870f,%r11
ffff8000001062cf:	00 00 00 
ffff8000001062d2:	4c 01 db             	add    %r11,%rbx
ffff8000001062d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001062d9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001062dd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001062e4:	00 
ffff8000001062e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062e9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001062f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001062f7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062fa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106302:	49 89 c9             	mov    %rcx,%r9
ffff800000106305:	49 89 d0             	mov    %rdx,%r8
ffff800000106308:	48 89 c1             	mov    %rax,%rcx
ffff80000010630b:	48 b8 b8 a1 ff ff ff 	movabs $0xffffffffffffa1b8,%rax
ffff800000106312:	ff ff ff 
ffff800000106315:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106319:	48 89 c2             	mov    %rax,%rdx
ffff80000010631c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106321:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106326:	49 89 df             	mov    %rbx,%r15
ffff800000106329:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010632e:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000106335:	ff ff ff 
ffff800000106338:	49 01 da             	add    %rbx,%r10
ffff80000010633b:	41 ff d2             	call   *%r10
ffff80000010633e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106342:	83 e0 01             	and    $0x1,%eax
ffff800000106345:	48 85 c0             	test   %rax,%rax
ffff800000106348:	74 32                	je     ffff80000010637c <do_invalid_TSS+0xca>
ffff80000010634a:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106351:	ff ff ff 
ffff800000106354:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106358:	48 89 c2             	mov    %rax,%rdx
ffff80000010635b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106360:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106365:	49 89 df             	mov    %rbx,%r15
ffff800000106368:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010636d:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106374:	ff ff ff 
ffff800000106377:	48 01 d9             	add    %rbx,%rcx
ffff80000010637a:	ff d1                	call   *%rcx
ffff80000010637c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106380:	83 e0 02             	and    $0x2,%eax
ffff800000106383:	48 85 c0             	test   %rax,%rax
ffff800000106386:	74 34                	je     ffff8000001063bc <do_invalid_TSS+0x10a>
ffff800000106388:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff80000010638f:	ff ff ff 
ffff800000106392:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106396:	48 89 c2             	mov    %rax,%rdx
ffff800000106399:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010639e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063a3:	49 89 df             	mov    %rbx,%r15
ffff8000001063a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063ab:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001063b2:	ff ff ff 
ffff8000001063b5:	48 01 d9             	add    %rbx,%rcx
ffff8000001063b8:	ff d1                	call   *%rcx
ffff8000001063ba:	eb 32                	jmp    ffff8000001063ee <do_invalid_TSS+0x13c>
ffff8000001063bc:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001063c3:	ff ff ff 
ffff8000001063c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063ca:	48 89 c2             	mov    %rax,%rdx
ffff8000001063cd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063d2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063d7:	49 89 df             	mov    %rbx,%r15
ffff8000001063da:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063df:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001063e6:	ff ff ff 
ffff8000001063e9:	48 01 d9             	add    %rbx,%rcx
ffff8000001063ec:	ff d1                	call   *%rcx
ffff8000001063ee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063f2:	83 e0 02             	and    $0x2,%eax
ffff8000001063f5:	48 85 c0             	test   %rax,%rax
ffff8000001063f8:	75 72                	jne    ffff80000010646c <do_invalid_TSS+0x1ba>
ffff8000001063fa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063fe:	83 e0 04             	and    $0x4,%eax
ffff800000106401:	48 85 c0             	test   %rax,%rax
ffff800000106404:	74 34                	je     ffff80000010643a <do_invalid_TSS+0x188>
ffff800000106406:	48 b8 e0 a2 ff ff ff 	movabs $0xffffffffffffa2e0,%rax
ffff80000010640d:	ff ff ff 
ffff800000106410:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106414:	48 89 c2             	mov    %rax,%rdx
ffff800000106417:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010641c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106421:	49 89 df             	mov    %rbx,%r15
ffff800000106424:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106429:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106430:	ff ff ff 
ffff800000106433:	48 01 d9             	add    %rbx,%rcx
ffff800000106436:	ff d1                	call   *%rcx
ffff800000106438:	eb 32                	jmp    ffff80000010646c <do_invalid_TSS+0x1ba>
ffff80000010643a:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff800000106441:	ff ff ff 
ffff800000106444:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106448:	48 89 c2             	mov    %rax,%rdx
ffff80000010644b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106450:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106455:	49 89 df             	mov    %rbx,%r15
ffff800000106458:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010645d:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106464:	ff ff ff 
ffff800000106467:	48 01 d9             	add    %rbx,%rcx
ffff80000010646a:	ff d1                	call   *%rcx
ffff80000010646c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106470:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106475:	48 89 c1             	mov    %rax,%rcx
ffff800000106478:	48 b8 48 a3 ff ff ff 	movabs $0xffffffffffffa348,%rax
ffff80000010647f:	ff ff ff 
ffff800000106482:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106486:	48 89 c2             	mov    %rax,%rdx
ffff800000106489:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010648e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106493:	49 89 df             	mov    %rbx,%r15
ffff800000106496:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010649b:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff8000001064a2:	ff ff ff 
ffff8000001064a5:	49 01 d8             	add    %rbx,%r8
ffff8000001064a8:	41 ff d0             	call   *%r8
ffff8000001064ab:	90                   	nop
ffff8000001064ac:	eb fd                	jmp    ffff8000001064ab <do_invalid_TSS+0x1f9>

ffff8000001064ae <do_segment_not_present>:
ffff8000001064ae:	f3 0f 1e fa          	endbr64
ffff8000001064b2:	55                   	push   %rbp
ffff8000001064b3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001064b6:	41 57                	push   %r15
ffff8000001064b8:	53                   	push   %rbx
ffff8000001064b9:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001064bd:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001064bd <do_segment_not_present+0xf>
ffff8000001064c4:	49 bb 13 85 00 00 00 	movabs $0x8513,%r11
ffff8000001064cb:	00 00 00 
ffff8000001064ce:	4c 01 db             	add    %r11,%rbx
ffff8000001064d1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064d5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064d9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064e0:	00 
ffff8000001064e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064e5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064eb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064f3:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064f6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064fa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064fe:	49 89 c9             	mov    %rcx,%r9
ffff800000106501:	49 89 d0             	mov    %rdx,%r8
ffff800000106504:	48 89 c1             	mov    %rax,%rcx
ffff800000106507:	48 b8 68 a3 ff ff ff 	movabs $0xffffffffffffa368,%rax
ffff80000010650e:	ff ff ff 
ffff800000106511:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106515:	48 89 c2             	mov    %rax,%rdx
ffff800000106518:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010651d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106522:	49 89 df             	mov    %rbx,%r15
ffff800000106525:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010652a:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000106531:	ff ff ff 
ffff800000106534:	49 01 da             	add    %rbx,%r10
ffff800000106537:	41 ff d2             	call   *%r10
ffff80000010653a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010653e:	83 e0 01             	and    $0x1,%eax
ffff800000106541:	48 85 c0             	test   %rax,%rax
ffff800000106544:	74 32                	je     ffff800000106578 <do_segment_not_present+0xca>
ffff800000106546:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff80000010654d:	ff ff ff 
ffff800000106550:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106554:	48 89 c2             	mov    %rax,%rdx
ffff800000106557:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010655c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106561:	49 89 df             	mov    %rbx,%r15
ffff800000106564:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106569:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106570:	ff ff ff 
ffff800000106573:	48 01 d9             	add    %rbx,%rcx
ffff800000106576:	ff d1                	call   *%rcx
ffff800000106578:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010657c:	83 e0 02             	and    $0x2,%eax
ffff80000010657f:	48 85 c0             	test   %rax,%rax
ffff800000106582:	74 34                	je     ffff8000001065b8 <do_segment_not_present+0x10a>
ffff800000106584:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff80000010658b:	ff ff ff 
ffff80000010658e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106592:	48 89 c2             	mov    %rax,%rdx
ffff800000106595:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010659a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010659f:	49 89 df             	mov    %rbx,%r15
ffff8000001065a2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065a7:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001065ae:	ff ff ff 
ffff8000001065b1:	48 01 d9             	add    %rbx,%rcx
ffff8000001065b4:	ff d1                	call   *%rcx
ffff8000001065b6:	eb 32                	jmp    ffff8000001065ea <do_segment_not_present+0x13c>
ffff8000001065b8:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001065bf:	ff ff ff 
ffff8000001065c2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065c6:	48 89 c2             	mov    %rax,%rdx
ffff8000001065c9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065ce:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065d3:	49 89 df             	mov    %rbx,%r15
ffff8000001065d6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065db:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001065e2:	ff ff ff 
ffff8000001065e5:	48 01 d9             	add    %rbx,%rcx
ffff8000001065e8:	ff d1                	call   *%rcx
ffff8000001065ea:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065ee:	83 e0 02             	and    $0x2,%eax
ffff8000001065f1:	48 85 c0             	test   %rax,%rax
ffff8000001065f4:	75 72                	jne    ffff800000106668 <do_segment_not_present+0x1ba>
ffff8000001065f6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065fa:	83 e0 04             	and    $0x4,%eax
ffff8000001065fd:	48 85 c0             	test   %rax,%rax
ffff800000106600:	74 34                	je     ffff800000106636 <do_segment_not_present+0x188>
ffff800000106602:	48 b8 e0 a2 ff ff ff 	movabs $0xffffffffffffa2e0,%rax
ffff800000106609:	ff ff ff 
ffff80000010660c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106610:	48 89 c2             	mov    %rax,%rdx
ffff800000106613:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106618:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010661d:	49 89 df             	mov    %rbx,%r15
ffff800000106620:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106625:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff80000010662c:	ff ff ff 
ffff80000010662f:	48 01 d9             	add    %rbx,%rcx
ffff800000106632:	ff d1                	call   *%rcx
ffff800000106634:	eb 32                	jmp    ffff800000106668 <do_segment_not_present+0x1ba>
ffff800000106636:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff80000010663d:	ff ff ff 
ffff800000106640:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106644:	48 89 c2             	mov    %rax,%rdx
ffff800000106647:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010664c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106651:	49 89 df             	mov    %rbx,%r15
ffff800000106654:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106659:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106660:	ff ff ff 
ffff800000106663:	48 01 d9             	add    %rbx,%rcx
ffff800000106666:	ff d1                	call   *%rcx
ffff800000106668:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010666c:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106671:	48 89 c1             	mov    %rax,%rcx
ffff800000106674:	48 b8 48 a3 ff ff ff 	movabs $0xffffffffffffa348,%rax
ffff80000010667b:	ff ff ff 
ffff80000010667e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106682:	48 89 c2             	mov    %rax,%rdx
ffff800000106685:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010668a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010668f:	49 89 df             	mov    %rbx,%r15
ffff800000106692:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106697:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff80000010669e:	ff ff ff 
ffff8000001066a1:	49 01 d8             	add    %rbx,%r8
ffff8000001066a4:	41 ff d0             	call   *%r8
ffff8000001066a7:	90                   	nop
ffff8000001066a8:	eb fd                	jmp    ffff8000001066a7 <do_segment_not_present+0x1f9>

ffff8000001066aa <do_stack_segment_fault>:
ffff8000001066aa:	f3 0f 1e fa          	endbr64
ffff8000001066ae:	55                   	push   %rbp
ffff8000001066af:	48 89 e5             	mov    %rsp,%rbp
ffff8000001066b2:	41 57                	push   %r15
ffff8000001066b4:	53                   	push   %rbx
ffff8000001066b5:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001066b9:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001066b9 <do_stack_segment_fault+0xf>
ffff8000001066c0:	49 bb 17 83 00 00 00 	movabs $0x8317,%r11
ffff8000001066c7:	00 00 00 
ffff8000001066ca:	4c 01 db             	add    %r11,%rbx
ffff8000001066cd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066d1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066d5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001066dc:	00 
ffff8000001066dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001066e1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001066e7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001066eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001066ef:	48 8b 08             	mov    (%rax),%rcx
ffff8000001066f2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001066f6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066fa:	49 89 c9             	mov    %rcx,%r9
ffff8000001066fd:	49 89 d0             	mov    %rdx,%r8
ffff800000106700:	48 89 c1             	mov    %rax,%rcx
ffff800000106703:	48 b8 b0 a3 ff ff ff 	movabs $0xffffffffffffa3b0,%rax
ffff80000010670a:	ff ff ff 
ffff80000010670d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106711:	48 89 c2             	mov    %rax,%rdx
ffff800000106714:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106719:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010671e:	49 89 df             	mov    %rbx,%r15
ffff800000106721:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106726:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff80000010672d:	ff ff ff 
ffff800000106730:	49 01 da             	add    %rbx,%r10
ffff800000106733:	41 ff d2             	call   *%r10
ffff800000106736:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010673a:	83 e0 01             	and    $0x1,%eax
ffff80000010673d:	48 85 c0             	test   %rax,%rax
ffff800000106740:	74 32                	je     ffff800000106774 <do_stack_segment_fault+0xca>
ffff800000106742:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106749:	ff ff ff 
ffff80000010674c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106750:	48 89 c2             	mov    %rax,%rdx
ffff800000106753:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106758:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010675d:	49 89 df             	mov    %rbx,%r15
ffff800000106760:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106765:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff80000010676c:	ff ff ff 
ffff80000010676f:	48 01 d9             	add    %rbx,%rcx
ffff800000106772:	ff d1                	call   *%rcx
ffff800000106774:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106778:	83 e0 02             	and    $0x2,%eax
ffff80000010677b:	48 85 c0             	test   %rax,%rax
ffff80000010677e:	74 34                	je     ffff8000001067b4 <do_stack_segment_fault+0x10a>
ffff800000106780:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff800000106787:	ff ff ff 
ffff80000010678a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010678e:	48 89 c2             	mov    %rax,%rdx
ffff800000106791:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106796:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010679b:	49 89 df             	mov    %rbx,%r15
ffff80000010679e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067a3:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001067aa:	ff ff ff 
ffff8000001067ad:	48 01 d9             	add    %rbx,%rcx
ffff8000001067b0:	ff d1                	call   *%rcx
ffff8000001067b2:	eb 32                	jmp    ffff8000001067e6 <do_stack_segment_fault+0x13c>
ffff8000001067b4:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001067bb:	ff ff ff 
ffff8000001067be:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067c2:	48 89 c2             	mov    %rax,%rdx
ffff8000001067c5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067ca:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067cf:	49 89 df             	mov    %rbx,%r15
ffff8000001067d2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067d7:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001067de:	ff ff ff 
ffff8000001067e1:	48 01 d9             	add    %rbx,%rcx
ffff8000001067e4:	ff d1                	call   *%rcx
ffff8000001067e6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067ea:	83 e0 02             	and    $0x2,%eax
ffff8000001067ed:	48 85 c0             	test   %rax,%rax
ffff8000001067f0:	75 72                	jne    ffff800000106864 <do_stack_segment_fault+0x1ba>
ffff8000001067f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067f6:	83 e0 04             	and    $0x4,%eax
ffff8000001067f9:	48 85 c0             	test   %rax,%rax
ffff8000001067fc:	74 34                	je     ffff800000106832 <do_stack_segment_fault+0x188>
ffff8000001067fe:	48 b8 e0 a2 ff ff ff 	movabs $0xffffffffffffa2e0,%rax
ffff800000106805:	ff ff ff 
ffff800000106808:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010680c:	48 89 c2             	mov    %rax,%rdx
ffff80000010680f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106814:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106819:	49 89 df             	mov    %rbx,%r15
ffff80000010681c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106821:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106828:	ff ff ff 
ffff80000010682b:	48 01 d9             	add    %rbx,%rcx
ffff80000010682e:	ff d1                	call   *%rcx
ffff800000106830:	eb 32                	jmp    ffff800000106864 <do_stack_segment_fault+0x1ba>
ffff800000106832:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff800000106839:	ff ff ff 
ffff80000010683c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106840:	48 89 c2             	mov    %rax,%rdx
ffff800000106843:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106848:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010684d:	49 89 df             	mov    %rbx,%r15
ffff800000106850:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106855:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff80000010685c:	ff ff ff 
ffff80000010685f:	48 01 d9             	add    %rbx,%rcx
ffff800000106862:	ff d1                	call   *%rcx
ffff800000106864:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106868:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010686d:	48 89 c1             	mov    %rax,%rcx
ffff800000106870:	48 b8 48 a3 ff ff ff 	movabs $0xffffffffffffa348,%rax
ffff800000106877:	ff ff ff 
ffff80000010687a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010687e:	48 89 c2             	mov    %rax,%rdx
ffff800000106881:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106886:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010688b:	49 89 df             	mov    %rbx,%r15
ffff80000010688e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106893:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff80000010689a:	ff ff ff 
ffff80000010689d:	49 01 d8             	add    %rbx,%r8
ffff8000001068a0:	41 ff d0             	call   *%r8
ffff8000001068a3:	90                   	nop
ffff8000001068a4:	eb fd                	jmp    ffff8000001068a3 <do_stack_segment_fault+0x1f9>

ffff8000001068a6 <do_general_protection>:
ffff8000001068a6:	f3 0f 1e fa          	endbr64
ffff8000001068aa:	55                   	push   %rbp
ffff8000001068ab:	48 89 e5             	mov    %rsp,%rbp
ffff8000001068ae:	41 57                	push   %r15
ffff8000001068b0:	53                   	push   %rbx
ffff8000001068b1:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001068b5:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001068b5 <do_general_protection+0xf>
ffff8000001068bc:	49 bb 1b 81 00 00 00 	movabs $0x811b,%r11
ffff8000001068c3:	00 00 00 
ffff8000001068c6:	4c 01 db             	add    %r11,%rbx
ffff8000001068c9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001068cd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001068d1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001068d8:	00 
ffff8000001068d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001068dd:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001068e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001068e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001068eb:	48 8b 08             	mov    (%rax),%rcx
ffff8000001068ee:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001068f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068f6:	49 89 c9             	mov    %rcx,%r9
ffff8000001068f9:	49 89 d0             	mov    %rdx,%r8
ffff8000001068fc:	48 89 c1             	mov    %rax,%rcx
ffff8000001068ff:	48 b8 f8 a3 ff ff ff 	movabs $0xffffffffffffa3f8,%rax
ffff800000106906:	ff ff ff 
ffff800000106909:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010690d:	48 89 c2             	mov    %rax,%rdx
ffff800000106910:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106915:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010691a:	49 89 df             	mov    %rbx,%r15
ffff80000010691d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106922:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000106929:	ff ff ff 
ffff80000010692c:	49 01 da             	add    %rbx,%r10
ffff80000010692f:	41 ff d2             	call   *%r10
ffff800000106932:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106936:	83 e0 01             	and    $0x1,%eax
ffff800000106939:	48 85 c0             	test   %rax,%rax
ffff80000010693c:	74 32                	je     ffff800000106970 <do_general_protection+0xca>
ffff80000010693e:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106945:	ff ff ff 
ffff800000106948:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010694c:	48 89 c2             	mov    %rax,%rdx
ffff80000010694f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106954:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106959:	49 89 df             	mov    %rbx,%r15
ffff80000010695c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106961:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106968:	ff ff ff 
ffff80000010696b:	48 01 d9             	add    %rbx,%rcx
ffff80000010696e:	ff d1                	call   *%rcx
ffff800000106970:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106974:	83 e0 02             	and    $0x2,%eax
ffff800000106977:	48 85 c0             	test   %rax,%rax
ffff80000010697a:	74 34                	je     ffff8000001069b0 <do_general_protection+0x10a>
ffff80000010697c:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff800000106983:	ff ff ff 
ffff800000106986:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010698a:	48 89 c2             	mov    %rax,%rdx
ffff80000010698d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106992:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106997:	49 89 df             	mov    %rbx,%r15
ffff80000010699a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010699f:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001069a6:	ff ff ff 
ffff8000001069a9:	48 01 d9             	add    %rbx,%rcx
ffff8000001069ac:	ff d1                	call   *%rcx
ffff8000001069ae:	eb 32                	jmp    ffff8000001069e2 <do_general_protection+0x13c>
ffff8000001069b0:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001069b7:	ff ff ff 
ffff8000001069ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069be:	48 89 c2             	mov    %rax,%rdx
ffff8000001069c1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069c6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069cb:	49 89 df             	mov    %rbx,%r15
ffff8000001069ce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069d3:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001069da:	ff ff ff 
ffff8000001069dd:	48 01 d9             	add    %rbx,%rcx
ffff8000001069e0:	ff d1                	call   *%rcx
ffff8000001069e2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069e6:	83 e0 02             	and    $0x2,%eax
ffff8000001069e9:	48 85 c0             	test   %rax,%rax
ffff8000001069ec:	75 72                	jne    ffff800000106a60 <do_general_protection+0x1ba>
ffff8000001069ee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069f2:	83 e0 04             	and    $0x4,%eax
ffff8000001069f5:	48 85 c0             	test   %rax,%rax
ffff8000001069f8:	74 34                	je     ffff800000106a2e <do_general_protection+0x188>
ffff8000001069fa:	48 b8 e0 a2 ff ff ff 	movabs $0xffffffffffffa2e0,%rax
ffff800000106a01:	ff ff ff 
ffff800000106a04:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a08:	48 89 c2             	mov    %rax,%rdx
ffff800000106a0b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a10:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a15:	49 89 df             	mov    %rbx,%r15
ffff800000106a18:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a1d:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106a24:	ff ff ff 
ffff800000106a27:	48 01 d9             	add    %rbx,%rcx
ffff800000106a2a:	ff d1                	call   *%rcx
ffff800000106a2c:	eb 32                	jmp    ffff800000106a60 <do_general_protection+0x1ba>
ffff800000106a2e:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff800000106a35:	ff ff ff 
ffff800000106a38:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a3c:	48 89 c2             	mov    %rax,%rdx
ffff800000106a3f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a44:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a49:	49 89 df             	mov    %rbx,%r15
ffff800000106a4c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a51:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106a58:	ff ff ff 
ffff800000106a5b:	48 01 d9             	add    %rbx,%rcx
ffff800000106a5e:	ff d1                	call   *%rcx
ffff800000106a60:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a64:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106a69:	48 89 c1             	mov    %rax,%rcx
ffff800000106a6c:	48 b8 48 a3 ff ff ff 	movabs $0xffffffffffffa348,%rax
ffff800000106a73:	ff ff ff 
ffff800000106a76:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a7a:	48 89 c2             	mov    %rax,%rdx
ffff800000106a7d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a82:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a87:	49 89 df             	mov    %rbx,%r15
ffff800000106a8a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a8f:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff800000106a96:	ff ff ff 
ffff800000106a99:	49 01 d8             	add    %rbx,%r8
ffff800000106a9c:	41 ff d0             	call   *%r8
ffff800000106a9f:	90                   	nop
ffff800000106aa0:	eb fd                	jmp    ffff800000106a9f <do_general_protection+0x1f9>

ffff800000106aa2 <do_page_fault>:
ffff800000106aa2:	f3 0f 1e fa          	endbr64
ffff800000106aa6:	55                   	push   %rbp
ffff800000106aa7:	48 89 e5             	mov    %rsp,%rbp
ffff800000106aaa:	41 57                	push   %r15
ffff800000106aac:	53                   	push   %rbx
ffff800000106aad:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106ab1:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106ab1 <do_page_fault+0xf>
ffff800000106ab8:	49 bb 1f 7f 00 00 00 	movabs $0x7f1f,%r11
ffff800000106abf:	00 00 00 
ffff800000106ac2:	4c 01 db             	add    %r11,%rbx
ffff800000106ac5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ac9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106acd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ad4:	00 
ffff800000106ad5:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106adc:	00 
ffff800000106add:	0f 20 d0             	mov    %cr2,%rax
ffff800000106ae0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106ae4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ae8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106aee:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106af2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106af6:	48 8b 08             	mov    (%rax),%rcx
ffff800000106af9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106afd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b01:	49 89 c9             	mov    %rcx,%r9
ffff800000106b04:	49 89 d0             	mov    %rdx,%r8
ffff800000106b07:	48 89 c1             	mov    %rax,%rcx
ffff800000106b0a:	48 b8 40 a4 ff ff ff 	movabs $0xffffffffffffa440,%rax
ffff800000106b11:	ff ff ff 
ffff800000106b14:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b18:	48 89 c2             	mov    %rax,%rdx
ffff800000106b1b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b20:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b25:	49 89 df             	mov    %rbx,%r15
ffff800000106b28:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b2d:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000106b34:	ff ff ff 
ffff800000106b37:	49 01 da             	add    %rbx,%r10
ffff800000106b3a:	41 ff d2             	call   *%r10
ffff800000106b3d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b41:	83 e0 01             	and    $0x1,%eax
ffff800000106b44:	48 85 c0             	test   %rax,%rax
ffff800000106b47:	75 32                	jne    ffff800000106b7b <do_page_fault+0xd9>
ffff800000106b49:	48 b8 7e a4 ff ff ff 	movabs $0xffffffffffffa47e,%rax
ffff800000106b50:	ff ff ff 
ffff800000106b53:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b57:	48 89 c2             	mov    %rax,%rdx
ffff800000106b5a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b5f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b64:	49 89 df             	mov    %rbx,%r15
ffff800000106b67:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b6c:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106b73:	ff ff ff 
ffff800000106b76:	48 01 d9             	add    %rbx,%rcx
ffff800000106b79:	ff d1                	call   *%rcx
ffff800000106b7b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b7f:	83 e0 02             	and    $0x2,%eax
ffff800000106b82:	48 85 c0             	test   %rax,%rax
ffff800000106b85:	74 34                	je     ffff800000106bbb <do_page_fault+0x119>
ffff800000106b87:	48 b8 91 a4 ff ff ff 	movabs $0xffffffffffffa491,%rax
ffff800000106b8e:	ff ff ff 
ffff800000106b91:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b95:	48 89 c2             	mov    %rax,%rdx
ffff800000106b98:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b9d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ba2:	49 89 df             	mov    %rbx,%r15
ffff800000106ba5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106baa:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106bb1:	ff ff ff 
ffff800000106bb4:	48 01 d9             	add    %rbx,%rcx
ffff800000106bb7:	ff d1                	call   *%rcx
ffff800000106bb9:	eb 32                	jmp    ffff800000106bed <do_page_fault+0x14b>
ffff800000106bbb:	48 b8 a5 a4 ff ff ff 	movabs $0xffffffffffffa4a5,%rax
ffff800000106bc2:	ff ff ff 
ffff800000106bc5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bc9:	48 89 c2             	mov    %rax,%rdx
ffff800000106bcc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bd1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bd6:	49 89 df             	mov    %rbx,%r15
ffff800000106bd9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bde:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106be5:	ff ff ff 
ffff800000106be8:	48 01 d9             	add    %rbx,%rcx
ffff800000106beb:	ff d1                	call   *%rcx
ffff800000106bed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bf1:	83 e0 04             	and    $0x4,%eax
ffff800000106bf4:	48 85 c0             	test   %rax,%rax
ffff800000106bf7:	74 34                	je     ffff800000106c2d <do_page_fault+0x18b>
ffff800000106bf9:	48 b8 b8 a4 ff ff ff 	movabs $0xffffffffffffa4b8,%rax
ffff800000106c00:	ff ff ff 
ffff800000106c03:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c07:	48 89 c2             	mov    %rax,%rdx
ffff800000106c0a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c0f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c14:	49 89 df             	mov    %rbx,%r15
ffff800000106c17:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c1c:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106c23:	ff ff ff 
ffff800000106c26:	48 01 d9             	add    %rbx,%rcx
ffff800000106c29:	ff d1                	call   *%rcx
ffff800000106c2b:	eb 32                	jmp    ffff800000106c5f <do_page_fault+0x1bd>
ffff800000106c2d:	48 b8 ca a4 ff ff ff 	movabs $0xffffffffffffa4ca,%rax
ffff800000106c34:	ff ff ff 
ffff800000106c37:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c3b:	48 89 c2             	mov    %rax,%rdx
ffff800000106c3e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c43:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c48:	49 89 df             	mov    %rbx,%r15
ffff800000106c4b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c50:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106c57:	ff ff ff 
ffff800000106c5a:	48 01 d9             	add    %rbx,%rcx
ffff800000106c5d:	ff d1                	call   *%rcx
ffff800000106c5f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c63:	83 e0 08             	and    $0x8,%eax
ffff800000106c66:	48 85 c0             	test   %rax,%rax
ffff800000106c69:	74 32                	je     ffff800000106c9d <do_page_fault+0x1fb>
ffff800000106c6b:	48 b8 e6 a4 ff ff ff 	movabs $0xffffffffffffa4e6,%rax
ffff800000106c72:	ff ff ff 
ffff800000106c75:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c79:	48 89 c2             	mov    %rax,%rdx
ffff800000106c7c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c81:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c86:	49 89 df             	mov    %rbx,%r15
ffff800000106c89:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c8e:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106c95:	ff ff ff 
ffff800000106c98:	48 01 d9             	add    %rbx,%rcx
ffff800000106c9b:	ff d1                	call   *%rcx
ffff800000106c9d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ca1:	83 e0 10             	and    $0x10,%eax
ffff800000106ca4:	48 85 c0             	test   %rax,%rax
ffff800000106ca7:	74 32                	je     ffff800000106cdb <do_page_fault+0x239>
ffff800000106ca9:	48 b8 08 a5 ff ff ff 	movabs $0xffffffffffffa508,%rax
ffff800000106cb0:	ff ff ff 
ffff800000106cb3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cb7:	48 89 c2             	mov    %rax,%rdx
ffff800000106cba:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cbf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cc4:	49 89 df             	mov    %rbx,%r15
ffff800000106cc7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ccc:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106cd3:	ff ff ff 
ffff800000106cd6:	48 01 d9             	add    %rbx,%rcx
ffff800000106cd9:	ff d1                	call   *%rcx
ffff800000106cdb:	48 b8 27 a5 ff ff ff 	movabs $0xffffffffffffa527,%rax
ffff800000106ce2:	ff ff ff 
ffff800000106ce5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ce9:	48 89 c2             	mov    %rax,%rdx
ffff800000106cec:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cf1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cf6:	49 89 df             	mov    %rbx,%r15
ffff800000106cf9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cfe:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff800000106d05:	ff ff ff 
ffff800000106d08:	48 01 d9             	add    %rbx,%rcx
ffff800000106d0b:	ff d1                	call   *%rcx
ffff800000106d0d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106d11:	48 89 c1             	mov    %rax,%rcx
ffff800000106d14:	48 b8 29 a5 ff ff ff 	movabs $0xffffffffffffa529,%rax
ffff800000106d1b:	ff ff ff 
ffff800000106d1e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d22:	48 89 c2             	mov    %rax,%rdx
ffff800000106d25:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d2a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d2f:	49 89 df             	mov    %rbx,%r15
ffff800000106d32:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d37:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff800000106d3e:	ff ff ff 
ffff800000106d41:	49 01 d8             	add    %rbx,%r8
ffff800000106d44:	41 ff d0             	call   *%r8
ffff800000106d47:	90                   	nop
ffff800000106d48:	eb fd                	jmp    ffff800000106d47 <do_page_fault+0x2a5>

ffff800000106d4a <do_x87_FPU_error>:
ffff800000106d4a:	f3 0f 1e fa          	endbr64
ffff800000106d4e:	55                   	push   %rbp
ffff800000106d4f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d52:	41 57                	push   %r15
ffff800000106d54:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d58:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d58 <do_x87_FPU_error+0xe>
ffff800000106d5f:	49 bb 78 7c 00 00 00 	movabs $0x7c78,%r11
ffff800000106d66:	00 00 00 
ffff800000106d69:	4d 01 da             	add    %r11,%r10
ffff800000106d6c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d70:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d74:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d7b:	00 
ffff800000106d7c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d80:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d86:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d8e:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d91:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d95:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d99:	49 89 c9             	mov    %rcx,%r9
ffff800000106d9c:	49 89 d0             	mov    %rdx,%r8
ffff800000106d9f:	48 89 c1             	mov    %rax,%rcx
ffff800000106da2:	48 b8 38 a5 ff ff ff 	movabs $0xffffffffffffa538,%rax
ffff800000106da9:	ff ff ff 
ffff800000106dac:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106db0:	48 89 c2             	mov    %rax,%rdx
ffff800000106db3:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106db8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dbd:	4d 89 d7             	mov    %r10,%r15
ffff800000106dc0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dc5:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000106dcc:	ff ff ff 
ffff800000106dcf:	4d 01 d3             	add    %r10,%r11
ffff800000106dd2:	41 ff d3             	call   *%r11
ffff800000106dd5:	90                   	nop
ffff800000106dd6:	eb fd                	jmp    ffff800000106dd5 <do_x87_FPU_error+0x8b>

ffff800000106dd8 <do_alignment_check>:
ffff800000106dd8:	f3 0f 1e fa          	endbr64
ffff800000106ddc:	55                   	push   %rbp
ffff800000106ddd:	48 89 e5             	mov    %rsp,%rbp
ffff800000106de0:	41 57                	push   %r15
ffff800000106de2:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106de6:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106de6 <do_alignment_check+0xe>
ffff800000106ded:	49 bb ea 7b 00 00 00 	movabs $0x7bea,%r11
ffff800000106df4:	00 00 00 
ffff800000106df7:	4d 01 da             	add    %r11,%r10
ffff800000106dfa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106dfe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e02:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e09:	00 
ffff800000106e0a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e0e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e14:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e18:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e1c:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e1f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e23:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e27:	49 89 c9             	mov    %rcx,%r9
ffff800000106e2a:	49 89 d0             	mov    %rdx,%r8
ffff800000106e2d:	48 89 c1             	mov    %rax,%rcx
ffff800000106e30:	48 b8 80 a5 ff ff ff 	movabs $0xffffffffffffa580,%rax
ffff800000106e37:	ff ff ff 
ffff800000106e3a:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e3e:	48 89 c2             	mov    %rax,%rdx
ffff800000106e41:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e46:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e4b:	4d 89 d7             	mov    %r10,%r15
ffff800000106e4e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e53:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000106e5a:	ff ff ff 
ffff800000106e5d:	4d 01 d3             	add    %r10,%r11
ffff800000106e60:	41 ff d3             	call   *%r11
ffff800000106e63:	90                   	nop
ffff800000106e64:	eb fd                	jmp    ffff800000106e63 <do_alignment_check+0x8b>

ffff800000106e66 <do_machine_check>:
ffff800000106e66:	f3 0f 1e fa          	endbr64
ffff800000106e6a:	55                   	push   %rbp
ffff800000106e6b:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e6e:	41 57                	push   %r15
ffff800000106e70:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e74:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e74 <do_machine_check+0xe>
ffff800000106e7b:	49 bb 5c 7b 00 00 00 	movabs $0x7b5c,%r11
ffff800000106e82:	00 00 00 
ffff800000106e85:	4d 01 da             	add    %r11,%r10
ffff800000106e88:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e8c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e90:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e97:	00 
ffff800000106e98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e9c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ea2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ea6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106eaa:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ead:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106eb1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106eb5:	49 89 c9             	mov    %rcx,%r9
ffff800000106eb8:	49 89 d0             	mov    %rdx,%r8
ffff800000106ebb:	48 89 c1             	mov    %rax,%rcx
ffff800000106ebe:	48 b8 c8 a5 ff ff ff 	movabs $0xffffffffffffa5c8,%rax
ffff800000106ec5:	ff ff ff 
ffff800000106ec8:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106ecc:	48 89 c2             	mov    %rax,%rdx
ffff800000106ecf:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ed4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ed9:	4d 89 d7             	mov    %r10,%r15
ffff800000106edc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ee1:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000106ee8:	ff ff ff 
ffff800000106eeb:	4d 01 d3             	add    %r10,%r11
ffff800000106eee:	41 ff d3             	call   *%r11
ffff800000106ef1:	90                   	nop
ffff800000106ef2:	eb fd                	jmp    ffff800000106ef1 <do_machine_check+0x8b>

ffff800000106ef4 <do_SIMD_exception>:
ffff800000106ef4:	f3 0f 1e fa          	endbr64
ffff800000106ef8:	55                   	push   %rbp
ffff800000106ef9:	48 89 e5             	mov    %rsp,%rbp
ffff800000106efc:	41 57                	push   %r15
ffff800000106efe:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106f02:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106f02 <do_SIMD_exception+0xe>
ffff800000106f09:	49 bb ce 7a 00 00 00 	movabs $0x7ace,%r11
ffff800000106f10:	00 00 00 
ffff800000106f13:	4d 01 da             	add    %r11,%r10
ffff800000106f16:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f1a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f1e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f25:	00 
ffff800000106f26:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f2a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f30:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f38:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f3b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f43:	49 89 c9             	mov    %rcx,%r9
ffff800000106f46:	49 89 d0             	mov    %rdx,%r8
ffff800000106f49:	48 89 c1             	mov    %rax,%rcx
ffff800000106f4c:	48 b8 10 a6 ff ff ff 	movabs $0xffffffffffffa610,%rax
ffff800000106f53:	ff ff ff 
ffff800000106f56:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f5a:	48 89 c2             	mov    %rax,%rdx
ffff800000106f5d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f62:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f67:	4d 89 d7             	mov    %r10,%r15
ffff800000106f6a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f6f:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000106f76:	ff ff ff 
ffff800000106f79:	4d 01 d3             	add    %r10,%r11
ffff800000106f7c:	41 ff d3             	call   *%r11
ffff800000106f7f:	90                   	nop
ffff800000106f80:	eb fd                	jmp    ffff800000106f7f <do_SIMD_exception+0x8b>

ffff800000106f82 <do_virtualization_exception>:
ffff800000106f82:	f3 0f 1e fa          	endbr64
ffff800000106f86:	55                   	push   %rbp
ffff800000106f87:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f8a:	41 57                	push   %r15
ffff800000106f8c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106f90:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106f90 <do_virtualization_exception+0xe>
ffff800000106f97:	49 bb 40 7a 00 00 00 	movabs $0x7a40,%r11
ffff800000106f9e:	00 00 00 
ffff800000106fa1:	4d 01 da             	add    %r11,%r10
ffff800000106fa4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106fa8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106fac:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fb3:	00 
ffff800000106fb4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106fb8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106fbe:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106fc2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fc6:	48 8b 08             	mov    (%rax),%rcx
ffff800000106fc9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106fcd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fd1:	49 89 c9             	mov    %rcx,%r9
ffff800000106fd4:	49 89 d0             	mov    %rdx,%r8
ffff800000106fd7:	48 89 c1             	mov    %rax,%rcx
ffff800000106fda:	48 b8 58 a6 ff ff ff 	movabs $0xffffffffffffa658,%rax
ffff800000106fe1:	ff ff ff 
ffff800000106fe4:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106fe8:	48 89 c2             	mov    %rax,%rdx
ffff800000106feb:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ff0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ff5:	4d 89 d7             	mov    %r10,%r15
ffff800000106ff8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ffd:	49 bb 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r11
ffff800000107004:	ff ff ff 
ffff800000107007:	4d 01 d3             	add    %r10,%r11
ffff80000010700a:	41 ff d3             	call   *%r11
ffff80000010700d:	90                   	nop
ffff80000010700e:	eb fd                	jmp    ffff80000010700d <do_virtualization_exception+0x8b>

ffff800000107010 <sys_vector_init>:
ffff800000107010:	f3 0f 1e fa          	endbr64
ffff800000107014:	55                   	push   %rbp
ffff800000107015:	48 89 e5             	mov    %rsp,%rbp
ffff800000107018:	53                   	push   %rbx
ffff800000107019:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107019 <sys_vector_init+0x9>
ffff800000107020:	49 bb b7 79 00 00 00 	movabs $0x79b7,%r11
ffff800000107027:	00 00 00 
ffff80000010702a:	4c 01 db             	add    %r11,%rbx
ffff80000010702d:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff800000107034:	ff ff ff 
ffff800000107037:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010703b:	48 89 c2             	mov    %rax,%rdx
ffff80000010703e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107043:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000107048:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff80000010704f:	ff ff ff 
ffff800000107052:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107056:	ff d0                	call   *%rax
ffff800000107058:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010705f:	ff ff ff 
ffff800000107062:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107066:	48 89 c2             	mov    %rax,%rdx
ffff800000107069:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010706e:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107073:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff80000010707a:	ff ff ff 
ffff80000010707d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107081:	ff d0                	call   *%rax
ffff800000107083:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff80000010708a:	ff ff ff 
ffff80000010708d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107091:	48 89 c2             	mov    %rax,%rdx
ffff800000107094:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107099:	bf 02 00 00 00       	mov    $0x2,%edi
ffff80000010709e:	48 b8 1b 70 ff ff ff 	movabs $0xffffffffffff701b,%rax
ffff8000001070a5:	ff ff ff 
ffff8000001070a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070ac:	ff d0                	call   *%rax
ffff8000001070ae:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff8000001070b5:	ff ff ff 
ffff8000001070b8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001070bf:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070c4:	bf 03 00 00 00       	mov    $0x3,%edi
ffff8000001070c9:	48 b8 77 71 ff ff ff 	movabs $0xffffffffffff7177,%rax
ffff8000001070d0:	ff ff ff 
ffff8000001070d3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d7:	ff d0                	call   *%rax
ffff8000001070d9:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001070e0:	ff ff ff 
ffff8000001070e3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001070ea:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070ef:	bf 04 00 00 00       	mov    $0x4,%edi
ffff8000001070f4:	48 b8 77 71 ff ff ff 	movabs $0xffffffffffff7177,%rax
ffff8000001070fb:	ff ff ff 
ffff8000001070fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107102:	ff d0                	call   *%rax
ffff800000107104:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff80000010710b:	ff ff ff 
ffff80000010710e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107112:	48 89 c2             	mov    %rax,%rdx
ffff800000107115:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010711a:	bf 05 00 00 00       	mov    $0x5,%edi
ffff80000010711f:	48 b8 77 71 ff ff ff 	movabs $0xffffffffffff7177,%rax
ffff800000107126:	ff ff ff 
ffff800000107129:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010712d:	ff d0                	call   *%rax
ffff80000010712f:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107136:	ff ff ff 
ffff800000107139:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010713d:	48 89 c2             	mov    %rax,%rdx
ffff800000107140:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107145:	bf 06 00 00 00       	mov    $0x6,%edi
ffff80000010714a:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff800000107151:	ff ff ff 
ffff800000107154:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107158:	ff d0                	call   *%rax
ffff80000010715a:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff800000107161:	ff ff ff 
ffff800000107164:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107168:	48 89 c2             	mov    %rax,%rdx
ffff80000010716b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107170:	bf 07 00 00 00       	mov    $0x7,%edi
ffff800000107175:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff80000010717c:	ff ff ff 
ffff80000010717f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107183:	ff d0                	call   *%rax
ffff800000107185:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff80000010718c:	ff ff ff 
ffff80000010718f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107193:	48 89 c2             	mov    %rax,%rdx
ffff800000107196:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010719b:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001071a0:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001071a7:	ff ff ff 
ffff8000001071aa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071ae:	ff d0                	call   *%rax
ffff8000001071b0:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001071b7:	ff ff ff 
ffff8000001071ba:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071be:	48 89 c2             	mov    %rax,%rdx
ffff8000001071c1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071c6:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001071cb:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001071d2:	ff ff ff 
ffff8000001071d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071d9:	ff d0                	call   *%rax
ffff8000001071db:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff8000001071e2:	ff ff ff 
ffff8000001071e5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001071ec:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071f1:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff8000001071f6:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001071fd:	ff ff ff 
ffff800000107200:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107204:	ff d0                	call   *%rax
ffff800000107206:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff80000010720d:	ff ff ff 
ffff800000107210:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107214:	48 89 c2             	mov    %rax,%rdx
ffff800000107217:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010721c:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107221:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff800000107228:	ff ff ff 
ffff80000010722b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010722f:	ff d0                	call   *%rax
ffff800000107231:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107238:	ff ff ff 
ffff80000010723b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010723f:	48 89 c2             	mov    %rax,%rdx
ffff800000107242:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107247:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff80000010724c:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff800000107253:	ff ff ff 
ffff800000107256:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010725a:	ff d0                	call   *%rax
ffff80000010725c:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff800000107263:	ff ff ff 
ffff800000107266:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010726a:	48 89 c2             	mov    %rax,%rdx
ffff80000010726d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107272:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff800000107277:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff80000010727e:	ff ff ff 
ffff800000107281:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107285:	ff d0                	call   *%rax
ffff800000107287:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff80000010728e:	ff ff ff 
ffff800000107291:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107295:	48 89 c2             	mov    %rax,%rdx
ffff800000107298:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010729d:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001072a2:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001072a9:	ff ff ff 
ffff8000001072ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072b0:	ff d0                	call   *%rax
ffff8000001072b2:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff8000001072b9:	ff ff ff 
ffff8000001072bc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072c0:	48 89 c2             	mov    %rax,%rdx
ffff8000001072c3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072c8:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001072cd:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001072d4:	ff ff ff 
ffff8000001072d7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072db:	ff d0                	call   *%rax
ffff8000001072dd:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff8000001072e4:	ff ff ff 
ffff8000001072e7:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001072ee:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072f3:	bf 11 00 00 00       	mov    $0x11,%edi
ffff8000001072f8:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff8000001072ff:	ff ff ff 
ffff800000107302:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107306:	ff d0                	call   *%rax
ffff800000107308:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff80000010730f:	ff ff ff 
ffff800000107312:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107316:	48 89 c2             	mov    %rax,%rdx
ffff800000107319:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010731e:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107323:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff80000010732a:	ff ff ff 
ffff80000010732d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107331:	ff d0                	call   *%rax
ffff800000107333:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff80000010733a:	ff ff ff 
ffff80000010733d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107341:	48 89 c2             	mov    %rax,%rdx
ffff800000107344:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107349:	bf 13 00 00 00       	mov    $0x13,%edi
ffff80000010734e:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff800000107355:	ff ff ff 
ffff800000107358:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010735c:	ff d0                	call   *%rax
ffff80000010735e:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff800000107365:	ff ff ff 
ffff800000107368:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010736c:	48 89 c2             	mov    %rax,%rdx
ffff80000010736f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107374:	bf 14 00 00 00       	mov    $0x14,%edi
ffff800000107379:	48 b8 c9 70 ff ff ff 	movabs $0xffffffffffff70c9,%rax
ffff800000107380:	ff ff ff 
ffff800000107383:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107387:	ff d0                	call   *%rax
ffff800000107389:	90                   	nop
ffff80000010738a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010738e:	c9                   	leave
ffff80000010738f:	c3                   	ret

ffff800000107390 <RESTORE_ALL>:
ffff800000107390:	41 5f                	pop    %r15
ffff800000107392:	41 5e                	pop    %r14
ffff800000107394:	41 5d                	pop    %r13
ffff800000107396:	41 5c                	pop    %r12
ffff800000107398:	41 5b                	pop    %r11
ffff80000010739a:	41 5a                	pop    %r10
ffff80000010739c:	41 59                	pop    %r9
ffff80000010739e:	41 58                	pop    %r8
ffff8000001073a0:	5b                   	pop    %rbx
ffff8000001073a1:	59                   	pop    %rcx
ffff8000001073a2:	5a                   	pop    %rdx
ffff8000001073a3:	5e                   	pop    %rsi
ffff8000001073a4:	5f                   	pop    %rdi
ffff8000001073a5:	5d                   	pop    %rbp
ffff8000001073a6:	58                   	pop    %rax
ffff8000001073a7:	8e d8                	mov    %eax,%ds
ffff8000001073a9:	58                   	pop    %rax
ffff8000001073aa:	8e c0                	mov    %eax,%es
ffff8000001073ac:	58                   	pop    %rax
ffff8000001073ad:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001073b1:	48 cf                	iretq

ffff8000001073b3 <divide_error>:
ffff8000001073b3:	6a 00                	push   $0x0
ffff8000001073b5:	50                   	push   %rax
ffff8000001073b6:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105d26 <do_divide_error>
ffff8000001073bd:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073c1:	eb 00                	jmp    ffff8000001073c3 <error_code>

ffff8000001073c3 <error_code>:
ffff8000001073c3:	50                   	push   %rax
ffff8000001073c4:	8c c0                	mov    %es,%eax
ffff8000001073c6:	50                   	push   %rax
ffff8000001073c7:	8c d8                	mov    %ds,%eax
ffff8000001073c9:	50                   	push   %rax
ffff8000001073ca:	48 31 c0             	xor    %rax,%rax
ffff8000001073cd:	55                   	push   %rbp
ffff8000001073ce:	57                   	push   %rdi
ffff8000001073cf:	56                   	push   %rsi
ffff8000001073d0:	52                   	push   %rdx
ffff8000001073d1:	51                   	push   %rcx
ffff8000001073d2:	53                   	push   %rbx
ffff8000001073d3:	41 50                	push   %r8
ffff8000001073d5:	41 51                	push   %r9
ffff8000001073d7:	41 52                	push   %r10
ffff8000001073d9:	41 53                	push   %r11
ffff8000001073db:	41 54                	push   %r12
ffff8000001073dd:	41 55                	push   %r13
ffff8000001073df:	41 56                	push   %r14
ffff8000001073e1:	41 57                	push   %r15
ffff8000001073e3:	fc                   	cld
ffff8000001073e4:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff8000001073eb:	00 
ffff8000001073ec:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff8000001073f3:	00 
ffff8000001073f4:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff8000001073fb:	8e df                	mov    %edi,%ds
ffff8000001073fd:	8e c7                	mov    %edi,%es
ffff8000001073ff:	48 89 e7             	mov    %rsp,%rdi
ffff800000107402:	ff d2                	call   *%rdx
ffff800000107404:	eb 00                	jmp    ffff800000107406 <ret_from_intr>

ffff800000107406 <ret_from_intr>:
ffff800000107406:	eb 88                	jmp    ffff800000107390 <RESTORE_ALL>

ffff800000107408 <debug>:
ffff800000107408:	6a 00                	push   $0x0
ffff80000010740a:	50                   	push   %rax
ffff80000010740b:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105db4 <do_debug>
ffff800000107412:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107416:	eb ab                	jmp    ffff8000001073c3 <error_code>

ffff800000107418 <nmi>:
ffff800000107418:	50                   	push   %rax
ffff800000107419:	fc                   	cld
ffff80000010741a:	50                   	push   %rax
ffff80000010741b:	50                   	push   %rax
ffff80000010741c:	8c c0                	mov    %es,%eax
ffff80000010741e:	50                   	push   %rax
ffff80000010741f:	8c d8                	mov    %ds,%eax
ffff800000107421:	50                   	push   %rax
ffff800000107422:	48 31 c0             	xor    %rax,%rax
ffff800000107425:	55                   	push   %rbp
ffff800000107426:	57                   	push   %rdi
ffff800000107427:	56                   	push   %rsi
ffff800000107428:	52                   	push   %rdx
ffff800000107429:	51                   	push   %rcx
ffff80000010742a:	53                   	push   %rbx
ffff80000010742b:	41 50                	push   %r8
ffff80000010742d:	41 51                	push   %r9
ffff80000010742f:	41 52                	push   %r10
ffff800000107431:	41 53                	push   %r11
ffff800000107433:	41 54                	push   %r12
ffff800000107435:	41 55                	push   %r13
ffff800000107437:	41 56                	push   %r14
ffff800000107439:	41 57                	push   %r15
ffff80000010743b:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff800000107442:	8e da                	mov    %edx,%ds
ffff800000107444:	8e c2                	mov    %edx,%es
ffff800000107446:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff80000010744d:	48 89 e6             	mov    %rsp,%rsi
ffff800000107450:	e8 ed e9 ff ff       	call   ffff800000105e42 <do_nmi>
ffff800000107455:	e9 36 ff ff ff       	jmp    ffff800000107390 <RESTORE_ALL>

ffff80000010745a <invalid_TSS>:
ffff80000010745a:	50                   	push   %rax
ffff80000010745b:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff8000001062b2 <do_invalid_TSS>
ffff800000107462:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107466:	e9 58 ff ff ff       	jmp    ffff8000001073c3 <error_code>

ffff80000010746b <page_fault>:
ffff80000010746b:	50                   	push   %rax
ffff80000010746c:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106aa2 <do_page_fault>
ffff800000107473:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107477:	e9 47 ff ff ff       	jmp    ffff8000001073c3 <error_code>

ffff80000010747c <int3>:
ffff80000010747c:	6a 00                	push   $0x0
ffff80000010747e:	50                   	push   %rax
ffff80000010747f:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105ed0 <do_int3>
ffff800000107486:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010748a:	e9 34 ff ff ff       	jmp    ffff8000001073c3 <error_code>

ffff80000010748f <overflow>:
ffff80000010748f:	6a 00                	push   $0x0
ffff800000107491:	50                   	push   %rax
ffff800000107492:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105f5e <do_overflow>
ffff800000107499:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010749d:	e9 21 ff ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074a2 <bounds>:
ffff8000001074a2:	6a 00                	push   $0x0
ffff8000001074a4:	50                   	push   %rax
ffff8000001074a5:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105fec <do_bounds>
ffff8000001074ac:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074b0:	e9 0e ff ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074b5 <undefined_opcode>:
ffff8000001074b5:	6a 00                	push   $0x0
ffff8000001074b7:	50                   	push   %rax
ffff8000001074b8:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff80000010607a <do_undefined_opcode>
ffff8000001074bf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074c3:	e9 fb fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074c8 <dev_not_available>:
ffff8000001074c8:	6a 00                	push   $0x0
ffff8000001074ca:	50                   	push   %rax
ffff8000001074cb:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff800000106108 <do_dev_not_available>
ffff8000001074d2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074d6:	e9 e8 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074db <double_fault>:
ffff8000001074db:	50                   	push   %rax
ffff8000001074dc:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff800000106196 <do_double_fault>
ffff8000001074e3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074e7:	e9 d7 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074ec <coprocessor_segment_overrun>:
ffff8000001074ec:	6a 00                	push   $0x0
ffff8000001074ee:	50                   	push   %rax
ffff8000001074ef:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff800000106224 <do_coprocessor_segment_overrun>
ffff8000001074f6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074fa:	e9 c4 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff8000001074ff <segment_not_present>:
ffff8000001074ff:	50                   	push   %rax
ffff800000107500:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff8000001064ae <do_segment_not_present>
ffff800000107507:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010750b:	e9 b3 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107510 <stack_segment_fault>:
ffff800000107510:	50                   	push   %rax
ffff800000107511:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff8000001066aa <do_stack_segment_fault>
ffff800000107518:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010751c:	e9 a2 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107521 <general_protection>:
ffff800000107521:	50                   	push   %rax
ffff800000107522:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff8000001068a6 <do_general_protection>
ffff800000107529:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010752d:	e9 91 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107532 <x87_FPU_error>:
ffff800000107532:	6a 00                	push   $0x0
ffff800000107534:	50                   	push   %rax
ffff800000107535:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106d4a <do_x87_FPU_error>
ffff80000010753c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107540:	e9 7e fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107545 <alignment_check>:
ffff800000107545:	50                   	push   %rax
ffff800000107546:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106dd8 <do_alignment_check>
ffff80000010754d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107551:	e9 6d fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107556 <machine_check>:
ffff800000107556:	6a 00                	push   $0x0
ffff800000107558:	50                   	push   %rax
ffff800000107559:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106e66 <do_machine_check>
ffff800000107560:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107564:	e9 5a fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff800000107569 <SIMD_exception>:
ffff800000107569:	6a 00                	push   $0x0
ffff80000010756b:	50                   	push   %rax
ffff80000010756c:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106ef4 <do_SIMD_exception>
ffff800000107573:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107577:	e9 47 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff80000010757c <virtualization_exception>:
ffff80000010757c:	6a 00                	push   $0x0
ffff80000010757e:	50                   	push   %rax
ffff80000010757f:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106f82 <do_virtualization_exception>
ffff800000107586:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010758a:	e9 34 fe ff ff       	jmp    ffff8000001073c3 <error_code>

ffff80000010758f <Cmemset>:
ffff80000010758f:	f3 0f 1e fa          	endbr64
ffff800000107593:	55                   	push   %rbp
ffff800000107594:	48 89 e5             	mov    %rsp,%rbp
ffff800000107597:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107597 <Cmemset+0x8>
ffff80000010759e:	49 bb 39 74 00 00 00 	movabs $0x7439,%r11
ffff8000001075a5:	00 00 00 
ffff8000001075a8:	4c 01 d8             	add    %r11,%rax
ffff8000001075ab:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001075af:	89 f0                	mov    %esi,%eax
ffff8000001075b1:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff8000001075b5:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff8000001075b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075bc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001075c0:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff8000001075c4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001075c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075cc:	48 c1 e0 08          	shl    $0x8,%rax
ffff8000001075d0:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075d8:	48 c1 e0 10          	shl    $0x10,%rax
ffff8000001075dc:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075e4:	48 c1 e0 20          	shl    $0x20,%rax
ffff8000001075e8:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001075f0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001075f4:	eb 15                	jmp    ffff80000010760b <Cmemset+0x7c>
ffff8000001075f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075fa:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001075fe:	48 89 10             	mov    %rdx,(%rax)
ffff800000107601:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff800000107606:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff80000010760b:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff800000107610:	7f e4                	jg     ffff8000001075f6 <Cmemset+0x67>
ffff800000107612:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107616:	83 e0 04             	and    $0x4,%eax
ffff800000107619:	48 85 c0             	test   %rax,%rax
ffff80000010761c:	74 11                	je     ffff80000010762f <Cmemset+0xa0>
ffff80000010761e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107622:	89 c2                	mov    %eax,%edx
ffff800000107624:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107628:	89 10                	mov    %edx,(%rax)
ffff80000010762a:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff80000010762f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107633:	83 e0 02             	and    $0x2,%eax
ffff800000107636:	48 85 c0             	test   %rax,%rax
ffff800000107639:	74 12                	je     ffff80000010764d <Cmemset+0xbe>
ffff80000010763b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010763f:	89 c2                	mov    %eax,%edx
ffff800000107641:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107645:	66 89 10             	mov    %dx,(%rax)
ffff800000107648:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff80000010764d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107651:	83 e0 01             	and    $0x1,%eax
ffff800000107654:	48 85 c0             	test   %rax,%rax
ffff800000107657:	74 0a                	je     ffff800000107663 <Cmemset+0xd4>
ffff800000107659:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010765d:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff800000107661:	88 10                	mov    %dl,(%rax)
ffff800000107663:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107667:	5d                   	pop    %rbp
ffff800000107668:	c3                   	ret

ffff800000107669 <init_memory>:
ffff800000107669:	f3 0f 1e fa          	endbr64
ffff80000010766d:	55                   	push   %rbp
ffff80000010766e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107671:	41 57                	push   %r15
ffff800000107673:	53                   	push   %rbx
ffff800000107674:	48 83 ec 60          	sub    $0x60,%rsp
ffff800000107678:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107678 <init_memory+0xf>
ffff80000010767f:	49 bb 58 73 00 00 00 	movabs $0x7358,%r11
ffff800000107686:	00 00 00 
ffff800000107689:	4c 01 db             	add    %r11,%rbx
ffff80000010768c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107693:	00 
ffff800000107694:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff80000010769b:	00 
ffff80000010769c:	48 b8 a8 a6 ff ff ff 	movabs $0xffffffffffffa6a8,%rax
ffff8000001076a3:	ff ff ff 
ffff8000001076a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001076aa:	48 89 c2             	mov    %rax,%rdx
ffff8000001076ad:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001076b2:	bf ff 00 00 00       	mov    $0xff,%edi
ffff8000001076b7:	49 89 df             	mov    %rbx,%r15
ffff8000001076ba:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001076bf:	48 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%rcx
ffff8000001076c6:	ff ff ff 
ffff8000001076c9:	48 01 d9             	add    %rbx,%rcx
ffff8000001076cc:	ff d1                	call   *%rcx
ffff8000001076ce:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff8000001076d5:	80 ff ff 
ffff8000001076d8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001076dc:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001076e3:	e9 a2 01 00 00       	jmp    ffff80000010788a <init_memory+0x221>
ffff8000001076e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076ec:	8b 48 10             	mov    0x10(%rax),%ecx
ffff8000001076ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076f3:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff8000001076f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076fb:	48 8b 00             	mov    (%rax),%rax
ffff8000001076fe:	41 89 c9             	mov    %ecx,%r9d
ffff800000107701:	49 89 d0             	mov    %rdx,%r8
ffff800000107704:	48 89 c1             	mov    %rax,%rcx
ffff800000107707:	48 b8 20 a7 ff ff ff 	movabs $0xffffffffffffa720,%rax
ffff80000010770e:	ff ff ff 
ffff800000107711:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107715:	48 89 c2             	mov    %rax,%rdx
ffff800000107718:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010771d:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107722:	49 89 df             	mov    %rbx,%r15
ffff800000107725:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010772a:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000107731:	ff ff ff 
ffff800000107734:	49 01 da             	add    %rbx,%r10
ffff800000107737:	41 ff d2             	call   *%r10
ffff80000010773a:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000107741:	00 
ffff800000107742:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107746:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107749:	83 f8 01             	cmp    $0x1,%eax
ffff80000010774c:	75 0c                	jne    ffff80000010775a <init_memory+0xf1>
ffff80000010774e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107752:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107756:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff80000010775a:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107761:	00 00 00 
ffff800000107764:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107767:	48 63 d0             	movslq %eax,%rdx
ffff80000010776a:	48 01 d9             	add    %rbx,%rcx
ffff80000010776d:	48 89 d0             	mov    %rdx,%rax
ffff800000107770:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107774:	48 01 d0             	add    %rdx,%rax
ffff800000107777:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010777b:	48 01 c8             	add    %rcx,%rax
ffff80000010777e:	48 8b 10             	mov    (%rax),%rdx
ffff800000107781:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107785:	48 8b 00             	mov    (%rax),%rax
ffff800000107788:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff80000010778c:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107793:	00 00 00 
ffff800000107796:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107799:	48 63 d0             	movslq %eax,%rdx
ffff80000010779c:	48 01 de             	add    %rbx,%rsi
ffff80000010779f:	48 89 d0             	mov    %rdx,%rax
ffff8000001077a2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077a6:	48 01 d0             	add    %rdx,%rax
ffff8000001077a9:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077ad:	48 01 f0             	add    %rsi,%rax
ffff8000001077b0:	48 89 08             	mov    %rcx,(%rax)
ffff8000001077b3:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001077ba:	00 00 00 
ffff8000001077bd:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001077c0:	48 63 d0             	movslq %eax,%rdx
ffff8000001077c3:	48 89 d0             	mov    %rdx,%rax
ffff8000001077c6:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077ca:	48 01 d0             	add    %rdx,%rax
ffff8000001077cd:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077d1:	48 01 d8             	add    %rbx,%rax
ffff8000001077d4:	48 01 c8             	add    %rcx,%rax
ffff8000001077d7:	48 83 c0 08          	add    $0x8,%rax
ffff8000001077db:	48 8b 10             	mov    (%rax),%rdx
ffff8000001077de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077e2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001077e6:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001077ea:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff8000001077f1:	00 00 00 
ffff8000001077f4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001077f7:	48 63 d0             	movslq %eax,%rdx
ffff8000001077fa:	48 89 d0             	mov    %rdx,%rax
ffff8000001077fd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107801:	48 01 d0             	add    %rdx,%rax
ffff800000107804:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107808:	48 01 d8             	add    %rbx,%rax
ffff80000010780b:	48 01 f0             	add    %rsi,%rax
ffff80000010780e:	48 83 c0 08          	add    $0x8,%rax
ffff800000107812:	48 89 08             	mov    %rcx,(%rax)
ffff800000107815:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107819:	8b 48 10             	mov    0x10(%rax),%ecx
ffff80000010781c:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107823:	00 00 00 
ffff800000107826:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107829:	48 63 d0             	movslq %eax,%rdx
ffff80000010782c:	48 01 de             	add    %rbx,%rsi
ffff80000010782f:	48 89 d0             	mov    %rdx,%rax
ffff800000107832:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107836:	48 01 d0             	add    %rdx,%rax
ffff800000107839:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010783d:	48 01 f0             	add    %rsi,%rax
ffff800000107840:	48 83 c0 10          	add    $0x10,%rax
ffff800000107844:	89 08                	mov    %ecx,(%rax)
ffff800000107846:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107849:	48 98                	cltq
ffff80000010784b:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000107852:	00 00 00 
ffff800000107855:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff80000010785c:	00 
ffff80000010785d:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107862:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107866:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107869:	83 f8 04             	cmp    $0x4,%eax
ffff80000010786c:	77 26                	ja     ffff800000107894 <init_memory+0x22b>
ffff80000010786e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107872:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107876:	48 85 c0             	test   %rax,%rax
ffff800000107879:	74 19                	je     ffff800000107894 <init_memory+0x22b>
ffff80000010787b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010787f:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107882:	85 c0                	test   %eax,%eax
ffff800000107884:	74 0e                	je     ffff800000107894 <init_memory+0x22b>
ffff800000107886:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff80000010788a:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff80000010788e:	0f 8e 54 fe ff ff    	jle    ffff8000001076e8 <init_memory+0x7f>
ffff800000107894:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107898:	48 89 c1             	mov    %rax,%rcx
ffff80000010789b:	48 b8 50 a7 ff ff ff 	movabs $0xffffffffffffa750,%rax
ffff8000001078a2:	ff ff ff 
ffff8000001078a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001078ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001078b1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001078b6:	49 89 df             	mov    %rbx,%r15
ffff8000001078b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078be:	49 b8 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r8
ffff8000001078c5:	ff ff ff 
ffff8000001078c8:	49 01 d8             	add    %rbx,%r8
ffff8000001078cb:	41 ff d0             	call   *%r8
ffff8000001078ce:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001078d5:	00 
ffff8000001078d6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001078dd:	e9 ed 00 00 00       	jmp    ffff8000001079cf <init_memory+0x366>
ffff8000001078e2:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001078e9:	00 00 00 
ffff8000001078ec:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001078ef:	48 63 d0             	movslq %eax,%rdx
ffff8000001078f2:	48 01 d9             	add    %rbx,%rcx
ffff8000001078f5:	48 89 d0             	mov    %rdx,%rax
ffff8000001078f8:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001078fc:	48 01 d0             	add    %rdx,%rax
ffff8000001078ff:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107903:	48 01 c8             	add    %rcx,%rax
ffff800000107906:	48 83 c0 10          	add    $0x10,%rax
ffff80000010790a:	8b 00                	mov    (%rax),%eax
ffff80000010790c:	83 f8 01             	cmp    $0x1,%eax
ffff80000010790f:	0f 85 b2 00 00 00    	jne    ffff8000001079c7 <init_memory+0x35e>
ffff800000107915:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff80000010791c:	00 00 00 
ffff80000010791f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107922:	48 63 d0             	movslq %eax,%rdx
ffff800000107925:	48 01 d9             	add    %rbx,%rcx
ffff800000107928:	48 89 d0             	mov    %rdx,%rax
ffff80000010792b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010792f:	48 01 d0             	add    %rdx,%rax
ffff800000107932:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107936:	48 01 c8             	add    %rcx,%rax
ffff800000107939:	48 8b 00             	mov    (%rax),%rax
ffff80000010793c:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107942:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107948:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff80000010794c:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107953:	00 00 00 
ffff800000107956:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107959:	48 63 d0             	movslq %eax,%rdx
ffff80000010795c:	48 01 d9             	add    %rbx,%rcx
ffff80000010795f:	48 89 d0             	mov    %rdx,%rax
ffff800000107962:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107966:	48 01 d0             	add    %rdx,%rax
ffff800000107969:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010796d:	48 01 c8             	add    %rcx,%rax
ffff800000107970:	48 8b 08             	mov    (%rax),%rcx
ffff800000107973:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff80000010797a:	00 00 00 
ffff80000010797d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107980:	48 63 d0             	movslq %eax,%rdx
ffff800000107983:	48 89 d0             	mov    %rdx,%rax
ffff800000107986:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010798a:	48 01 d0             	add    %rdx,%rax
ffff80000010798d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107991:	48 01 d8             	add    %rbx,%rax
ffff800000107994:	48 01 f0             	add    %rsi,%rax
ffff800000107997:	48 83 c0 08          	add    $0x8,%rax
ffff80000010799b:	48 8b 00             	mov    (%rax),%rax
ffff80000010799e:	48 01 c8             	add    %rcx,%rax
ffff8000001079a1:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001079a7:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff8000001079ab:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001079af:	48 39 45 98          	cmp    %rax,-0x68(%rbp)
ffff8000001079b3:	73 15                	jae    ffff8000001079ca <init_memory+0x361>
ffff8000001079b5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001079b9:	48 2b 45 98          	sub    -0x68(%rbp),%rax
ffff8000001079bd:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001079c1:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff8000001079c5:	eb 04                	jmp    ffff8000001079cb <init_memory+0x362>
ffff8000001079c7:	90                   	nop
ffff8000001079c8:	eb 01                	jmp    ffff8000001079cb <init_memory+0x362>
ffff8000001079ca:	90                   	nop
ffff8000001079cb:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001079cf:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001079d2:	48 98                	cltq
ffff8000001079d4:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001079db:	00 00 00 
ffff8000001079de:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff8000001079e5:	00 
ffff8000001079e6:	48 39 c2             	cmp    %rax,%rdx
ffff8000001079e9:	0f 83 f3 fe ff ff    	jae    ffff8000001078e2 <init_memory+0x279>
ffff8000001079ef:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001079f3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001079f7:	49 89 d0             	mov    %rdx,%r8
ffff8000001079fa:	48 89 c1             	mov    %rax,%rcx
ffff8000001079fd:	48 b8 70 a7 ff ff ff 	movabs $0xffffffffffffa770,%rax
ffff800000107a04:	ff ff ff 
ffff800000107a07:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107a0b:	48 89 c2             	mov    %rax,%rdx
ffff800000107a0e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107a13:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107a18:	49 89 df             	mov    %rbx,%r15
ffff800000107a1b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a20:	49 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r9
ffff800000107a27:	ff ff ff 
ffff800000107a2a:	49 01 d9             	add    %rbx,%r9
ffff800000107a2d:	41 ff d1             	call   *%r9
ffff800000107a30:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107a37:	00 00 00 
ffff800000107a3a:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107a41:	00 
ffff800000107a42:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107a49:	00 00 00 
ffff800000107a4c:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107a50:	48 89 d0             	mov    %rdx,%rax
ffff800000107a53:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a57:	48 01 d0             	add    %rdx,%rax
ffff800000107a5a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a5e:	48 01 c8             	add    %rcx,%rax
ffff800000107a61:	48 8b 08             	mov    (%rax),%rcx
ffff800000107a64:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107a6b:	00 00 00 
ffff800000107a6e:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107a75:	00 
ffff800000107a76:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107a7d:	00 00 00 
ffff800000107a80:	48 89 d0             	mov    %rdx,%rax
ffff800000107a83:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a87:	48 01 d0             	add    %rdx,%rax
ffff800000107a8a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a8e:	48 01 d8             	add    %rbx,%rax
ffff800000107a91:	48 01 f0             	add    %rsi,%rax
ffff800000107a94:	48 83 c0 08          	add    $0x8,%rax
ffff800000107a98:	48 8b 00             	mov    (%rax),%rax
ffff800000107a9b:	48 01 c8             	add    %rcx,%rax
ffff800000107a9e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107aa2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107aa6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aaa:	49 89 d0             	mov    %rdx,%r8
ffff800000107aad:	48 89 c1             	mov    %rax,%rcx
ffff800000107ab0:	48 b8 a0 a7 ff ff ff 	movabs $0xffffffffffffa7a0,%rax
ffff800000107ab7:	ff ff ff 
ffff800000107aba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107abe:	48 89 c2             	mov    %rax,%rdx
ffff800000107ac1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107ac6:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107acb:	49 89 df             	mov    %rbx,%r15
ffff800000107ace:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107ad3:	49 b9 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r9
ffff800000107ada:	ff ff ff 
ffff800000107add:	49 01 d9             	add    %rbx,%r9
ffff800000107ae0:	41 ff d1             	call   *%r9
ffff800000107ae3:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107aea:	00 00 00 
ffff800000107aed:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107af4:	00 
ffff800000107af5:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107afb:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107b01:	48 89 c2             	mov    %rax,%rdx
ffff800000107b04:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b0b:	00 00 00 
ffff800000107b0e:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107b15:	00 
ffff800000107b16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b1a:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107b1e:	48 89 c2             	mov    %rax,%rdx
ffff800000107b21:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b28:	00 00 00 
ffff800000107b2b:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000107b32:	00 
ffff800000107b33:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b37:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107b3b:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000107b3f:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000107b43:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107b47:	48 89 c2             	mov    %rax,%rdx
ffff800000107b4a:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b51:	00 00 00 
ffff800000107b54:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000107b5b:	00 
ffff800000107b5c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b63:	00 00 00 
ffff800000107b66:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107b6d:	00 
ffff800000107b6e:	48 89 c2             	mov    %rax,%rdx
ffff800000107b71:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b78:	00 00 00 
ffff800000107b7b:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107b82:	00 
ffff800000107b83:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107b88:	48 89 c7             	mov    %rax,%rdi
ffff800000107b8b:	48 b8 bf 8b ff ff ff 	movabs $0xffffffffffff8bbf,%rax
ffff800000107b92:	ff ff ff 
ffff800000107b95:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b99:	ff d0                	call   *%rax
ffff800000107b9b:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ba2:	00 00 00 
ffff800000107ba5:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107bac:	00 
ffff800000107bad:	48 89 c2             	mov    %rax,%rdx
ffff800000107bb0:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bb7:	00 00 00 
ffff800000107bba:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107bc1:	00 
ffff800000107bc2:	48 01 d0             	add    %rdx,%rax
ffff800000107bc5:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107bcb:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107bd1:	48 89 c2             	mov    %rax,%rdx
ffff800000107bd4:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bdb:	00 00 00 
ffff800000107bde:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff800000107be5:	00 
ffff800000107be6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107bea:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107bee:	48 89 c2             	mov    %rax,%rdx
ffff800000107bf1:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bf8:	00 00 00 
ffff800000107bfb:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff800000107c02:	00 
ffff800000107c03:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c07:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107c0b:	48 89 c2             	mov    %rax,%rdx
ffff800000107c0e:	48 89 d0             	mov    %rdx,%rax
ffff800000107c11:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c15:	48 01 d0             	add    %rdx,%rax
ffff800000107c18:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107c1c:	48 83 c0 07          	add    $0x7,%rax
ffff800000107c20:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107c24:	48 89 c2             	mov    %rax,%rdx
ffff800000107c27:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c2e:	00 00 00 
ffff800000107c31:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000107c38:	00 
ffff800000107c39:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c40:	00 00 00 
ffff800000107c43:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107c4a:	00 
ffff800000107c4b:	48 89 c2             	mov    %rax,%rdx
ffff800000107c4e:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c55:	00 00 00 
ffff800000107c58:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107c5f:	00 
ffff800000107c60:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107c65:	48 89 c7             	mov    %rax,%rdi
ffff800000107c68:	48 b8 bf 8b ff ff ff 	movabs $0xffffffffffff8bbf,%rax
ffff800000107c6f:	ff ff ff 
ffff800000107c72:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107c76:	ff d0                	call   *%rax
ffff800000107c78:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c7f:	00 00 00 
ffff800000107c82:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107c89:	00 
ffff800000107c8a:	48 89 c2             	mov    %rax,%rdx
ffff800000107c8d:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c94:	00 00 00 
ffff800000107c97:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107c9e:	00 
ffff800000107c9f:	48 01 d0             	add    %rdx,%rax
ffff800000107ca2:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107ca8:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107cae:	48 89 c2             	mov    %rax,%rdx
ffff800000107cb1:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107cb8:	00 00 00 
ffff800000107cbb:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff800000107cc2:	00 
ffff800000107cc3:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107cca:	00 00 00 
ffff800000107ccd:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff800000107cd4:	00 00 00 00 00 
ffff800000107cd9:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ce0:	00 00 00 
ffff800000107ce3:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff800000107cea:	00 90 01 00 00 
ffff800000107cef:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107cf6:	00 00 00 
ffff800000107cf9:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000107d00:	00 
ffff800000107d01:	48 89 c2             	mov    %rax,%rdx
ffff800000107d04:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d0b:	00 00 00 
ffff800000107d0e:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000107d15:	00 
ffff800000107d16:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d1b:	48 89 c7             	mov    %rax,%rdi
ffff800000107d1e:	48 b8 bf 8b ff ff ff 	movabs $0xffffffffffff8bbf,%rax
ffff800000107d25:	ff ff ff 
ffff800000107d28:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d2c:	ff d0                	call   *%rax
ffff800000107d2e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107d35:	e9 f8 02 00 00       	jmp    ffff800000108032 <init_memory+0x9c9>
ffff800000107d3a:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107d41:	00 00 00 
ffff800000107d44:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107d47:	48 63 d0             	movslq %eax,%rdx
ffff800000107d4a:	48 01 d9             	add    %rbx,%rcx
ffff800000107d4d:	48 89 d0             	mov    %rdx,%rax
ffff800000107d50:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d54:	48 01 d0             	add    %rdx,%rax
ffff800000107d57:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d5b:	48 01 c8             	add    %rcx,%rax
ffff800000107d5e:	48 83 c0 10          	add    $0x10,%rax
ffff800000107d62:	8b 00                	mov    (%rax),%eax
ffff800000107d64:	83 f8 01             	cmp    $0x1,%eax
ffff800000107d67:	0f 85 bd 02 00 00    	jne    ffff80000010802a <init_memory+0x9c1>
ffff800000107d6d:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107d74:	00 00 00 
ffff800000107d77:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107d7a:	48 63 d0             	movslq %eax,%rdx
ffff800000107d7d:	48 01 d9             	add    %rbx,%rcx
ffff800000107d80:	48 89 d0             	mov    %rdx,%rax
ffff800000107d83:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d87:	48 01 d0             	add    %rdx,%rax
ffff800000107d8a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d8e:	48 01 c8             	add    %rcx,%rax
ffff800000107d91:	48 8b 00             	mov    (%rax),%rax
ffff800000107d94:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107d9a:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107da0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000107da4:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107dab:	00 00 00 
ffff800000107dae:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107db1:	48 63 d0             	movslq %eax,%rdx
ffff800000107db4:	48 01 d9             	add    %rbx,%rcx
ffff800000107db7:	48 89 d0             	mov    %rdx,%rax
ffff800000107dba:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107dbe:	48 01 d0             	add    %rdx,%rax
ffff800000107dc1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107dc5:	48 01 c8             	add    %rcx,%rax
ffff800000107dc8:	48 8b 08             	mov    (%rax),%rcx
ffff800000107dcb:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107dd2:	00 00 00 
ffff800000107dd5:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107dd8:	48 63 d0             	movslq %eax,%rdx
ffff800000107ddb:	48 89 d0             	mov    %rdx,%rax
ffff800000107dde:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107de2:	48 01 d0             	add    %rdx,%rax
ffff800000107de5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107de9:	48 01 d8             	add    %rbx,%rax
ffff800000107dec:	48 01 f0             	add    %rsi,%rax
ffff800000107def:	48 83 c0 08          	add    $0x8,%rax
ffff800000107df3:	48 8b 00             	mov    (%rax),%rax
ffff800000107df6:	48 01 c8             	add    %rcx,%rax
ffff800000107df9:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107dff:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000107e03:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000107e07:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
ffff800000107e0b:	0f 83 1c 02 00 00    	jae    ffff80000010802d <init_memory+0x9c4>
ffff800000107e11:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e18:	00 00 00 
ffff800000107e1b:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000107e22:	00 
ffff800000107e23:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e2a:	00 00 00 
ffff800000107e2d:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000107e34:	00 
ffff800000107e35:	48 89 d0             	mov    %rdx,%rax
ffff800000107e38:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e3c:	48 01 d0             	add    %rdx,%rax
ffff800000107e3f:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000107e43:	48 01 c8             	add    %rcx,%rax
ffff800000107e46:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000107e4a:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e51:	00 00 00 
ffff800000107e54:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000107e5b:	00 
ffff800000107e5c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107e60:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e67:	00 00 00 
ffff800000107e6a:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff800000107e71:	00 
ffff800000107e72:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107e76:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
ffff800000107e7a:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107e7e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107e82:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
ffff800000107e86:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107e8a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000107e8e:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
ffff800000107e92:	48 89 c2             	mov    %rax,%rdx
ffff800000107e95:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107e99:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff800000107e9d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107ea1:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000107ea8:	00 
ffff800000107ea9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000107ead:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
ffff800000107eb1:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107eb5:	48 89 c2             	mov    %rax,%rdx
ffff800000107eb8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107ebc:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff800000107ec0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107ec4:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff800000107ecb:	00 
ffff800000107ecc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107ed0:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff800000107ed7:	00 
ffff800000107ed8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107edc:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000107ee3:	00 00 00 
ffff800000107ee6:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000107eea:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107eee:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000107ef2:	48 2b 45 b0          	sub    -0x50(%rbp),%rax
ffff800000107ef6:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107efa:	48 89 c2             	mov    %rax,%rdx
ffff800000107efd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107f01:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000107f05:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107f0c:	00 00 00 
ffff800000107f0f:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000107f16:	00 
ffff800000107f17:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000107f1b:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107f1f:	48 89 c2             	mov    %rax,%rdx
ffff800000107f22:	48 89 d0             	mov    %rdx,%rax
ffff800000107f25:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f29:	48 01 d0             	add    %rdx,%rax
ffff800000107f2c:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107f30:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000107f34:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107f38:	48 89 10             	mov    %rdx,(%rax)
ffff800000107f3b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107f3f:	48 8b 00             	mov    (%rax),%rax
ffff800000107f42:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000107f46:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000107f4d:	e9 bf 00 00 00       	jmp    ffff800000108011 <init_memory+0x9a8>
ffff800000107f52:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f56:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000107f5a:	48 89 10             	mov    %rdx,(%rax)
ffff800000107f5d:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000107f60:	48 98                	cltq
ffff800000107f62:	48 c1 e0 15          	shl    $0x15,%rax
ffff800000107f66:	48 89 c2             	mov    %rax,%rdx
ffff800000107f69:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000107f6d:	48 01 c2             	add    %rax,%rdx
ffff800000107f70:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f74:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000107f78:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f7c:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000107f83:	00 
ffff800000107f84:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f88:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000107f8f:	00 
ffff800000107f90:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f94:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000107f9b:	00 
ffff800000107f9c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107fa3:	00 00 00 
ffff800000107fa6:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000107fad:	00 
ffff800000107fae:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fb2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107fb6:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107fba:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107fbe:	48 01 d0             	add    %rdx,%rax
ffff800000107fc1:	48 8b 10             	mov    (%rax),%rdx
ffff800000107fc4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fc8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107fcc:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107fd0:	83 e0 3f             	and    $0x3f,%eax
ffff800000107fd3:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107fd8:	89 c1                	mov    %eax,%ecx
ffff800000107fda:	48 d3 e6             	shl    %cl,%rsi
ffff800000107fdd:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107fe4:	00 00 00 
ffff800000107fe7:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff800000107fee:	00 
ffff800000107fef:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107ff3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107ff7:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107ffb:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107fff:	48 01 c8             	add    %rcx,%rax
ffff800000108002:	48 31 f2             	xor    %rsi,%rdx
ffff800000108005:	48 89 10             	mov    %rdx,(%rax)
ffff800000108008:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff80000010800c:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff800000108011:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108014:	48 63 d0             	movslq %eax,%rdx
ffff800000108017:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010801b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010801f:	48 39 c2             	cmp    %rax,%rdx
ffff800000108022:	0f 82 2a ff ff ff    	jb     ffff800000107f52 <init_memory+0x8e9>
ffff800000108028:	eb 04                	jmp    ffff80000010802e <init_memory+0x9c5>
ffff80000010802a:	90                   	nop
ffff80000010802b:	eb 01                	jmp    ffff80000010802e <init_memory+0x9c5>
ffff80000010802d:	90                   	nop
ffff80000010802e:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108032:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108035:	48 98                	cltq
ffff800000108037:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff80000010803e:	00 00 00 
ffff800000108041:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000108048:	00 
ffff800000108049:	48 39 c2             	cmp    %rax,%rdx
ffff80000010804c:	0f 83 e8 fc ff ff    	jae    ffff800000107d3a <init_memory+0x6d1>
ffff800000108052:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108059:	00 00 00 
ffff80000010805c:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108063:	00 
ffff800000108064:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff80000010806b:	00 00 00 
ffff80000010806e:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff800000108075:	00 
ffff800000108076:	48 89 10             	mov    %rdx,(%rax)
ffff800000108079:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108080:	00 00 00 
ffff800000108083:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010808a:	00 
ffff80000010808b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff800000108092:	00 
ffff800000108093:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010809a:	00 00 00 
ffff80000010809d:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080a4:	00 
ffff8000001080a5:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff8000001080ac:	00 
ffff8000001080ad:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080b4:	00 00 00 
ffff8000001080b7:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080be:	00 
ffff8000001080bf:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001080c6:	00 
ffff8000001080c7:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080ce:	00 00 00 
ffff8000001080d1:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080d8:	00 
ffff8000001080d9:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001080e0:	00 
ffff8000001080e1:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080e8:	00 00 00 
ffff8000001080eb:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff8000001080f2:	00 
ffff8000001080f3:	48 89 d0             	mov    %rdx,%rax
ffff8000001080f6:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001080fa:	48 01 d0             	add    %rdx,%rax
ffff8000001080fd:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108101:	48 83 c0 07          	add    $0x7,%rax
ffff800000108105:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108109:	48 89 c2             	mov    %rax,%rdx
ffff80000010810c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108113:	00 00 00 
ffff800000108116:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff80000010811d:	00 
ffff80000010811e:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108125:	00 00 00 
ffff800000108128:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff80000010812f:	00 
ffff800000108130:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108137:	00 00 00 
ffff80000010813a:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff800000108141:	00 
ffff800000108142:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108149:	00 00 00 
ffff80000010814c:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108153:	00 
ffff800000108154:	49 89 c9             	mov    %rcx,%r9
ffff800000108157:	49 89 d0             	mov    %rdx,%r8
ffff80000010815a:	48 89 c1             	mov    %rax,%rcx
ffff80000010815d:	48 b8 d0 a7 ff ff ff 	movabs $0xffffffffffffa7d0,%rax
ffff800000108164:	ff ff ff 
ffff800000108167:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010816b:	48 89 c2             	mov    %rax,%rdx
ffff80000010816e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108173:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108178:	49 89 df             	mov    %rbx,%r15
ffff80000010817b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108180:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000108187:	ff ff ff 
ffff80000010818a:	49 01 da             	add    %rbx,%r10
ffff80000010818d:	41 ff d2             	call   *%r10
ffff800000108190:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108197:	00 00 00 
ffff80000010819a:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff8000001081a1:	00 
ffff8000001081a2:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001081a9:	00 00 00 
ffff8000001081ac:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff8000001081b3:	00 
ffff8000001081b4:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001081bb:	00 00 00 
ffff8000001081be:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001081c5:	00 
ffff8000001081c6:	49 89 c9             	mov    %rcx,%r9
ffff8000001081c9:	49 89 d0             	mov    %rdx,%r8
ffff8000001081cc:	48 89 c1             	mov    %rax,%rcx
ffff8000001081cf:	48 b8 08 a8 ff ff ff 	movabs $0xffffffffffffa808,%rax
ffff8000001081d6:	ff ff ff 
ffff8000001081d9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001081dd:	48 89 c2             	mov    %rax,%rdx
ffff8000001081e0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001081e5:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001081ea:	49 89 df             	mov    %rbx,%r15
ffff8000001081ed:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001081f2:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff8000001081f9:	ff ff ff 
ffff8000001081fc:	49 01 da             	add    %rbx,%r10
ffff8000001081ff:	41 ff d2             	call   *%r10
ffff800000108202:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108209:	00 00 00 
ffff80000010820c:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff800000108213:	00 
ffff800000108214:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010821b:	00 00 00 
ffff80000010821e:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108225:	00 
ffff800000108226:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010822d:	00 00 00 
ffff800000108230:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108237:	00 
ffff800000108238:	49 89 c9             	mov    %rcx,%r9
ffff80000010823b:	49 89 d0             	mov    %rdx,%r8
ffff80000010823e:	48 89 c1             	mov    %rax,%rcx
ffff800000108241:	48 b8 48 a8 ff ff ff 	movabs $0xffffffffffffa848,%rax
ffff800000108248:	ff ff ff 
ffff80000010824b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010824f:	48 89 c2             	mov    %rax,%rdx
ffff800000108252:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108257:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010825c:	49 89 df             	mov    %rbx,%r15
ffff80000010825f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108264:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff80000010826b:	ff ff ff 
ffff80000010826e:	49 01 da             	add    %rbx,%r10
ffff800000108271:	41 ff d2             	call   *%r10
ffff800000108274:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010827b:	e9 c1 00 00 00       	jmp    ffff800000108341 <init_memory+0xcd8>
ffff800000108280:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108287:	00 00 00 
ffff80000010828a:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108291:	00 
ffff800000108292:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108295:	48 63 d0             	movslq %eax,%rdx
ffff800000108298:	48 89 d0             	mov    %rdx,%rax
ffff80000010829b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010829f:	48 01 d0             	add    %rdx,%rax
ffff8000001082a2:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001082a6:	48 01 c8             	add    %rcx,%rax
ffff8000001082a9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001082ad:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001082b1:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001082b5:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001082b9:	48 8b 10             	mov    (%rax),%rdx
ffff8000001082bc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001082c0:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff8000001082c4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001082c8:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff8000001082cc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001082d0:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001082d4:	51                   	push   %rcx
ffff8000001082d5:	52                   	push   %rdx
ffff8000001082d6:	49 89 f9             	mov    %rdi,%r9
ffff8000001082d9:	49 89 f0             	mov    %rsi,%r8
ffff8000001082dc:	48 89 c1             	mov    %rax,%rcx
ffff8000001082df:	48 b8 88 a8 ff ff ff 	movabs $0xffffffffffffa888,%rax
ffff8000001082e6:	ff ff ff 
ffff8000001082e9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001082ed:	48 89 c2             	mov    %rax,%rdx
ffff8000001082f0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001082f5:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001082fa:	49 89 df             	mov    %rbx,%r15
ffff8000001082fd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108302:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff800000108309:	ff ff ff 
ffff80000010830c:	49 01 da             	add    %rbx,%r10
ffff80000010830f:	41 ff d2             	call   *%r10
ffff800000108312:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108316:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010831a:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010831e:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
ffff800000108325:	00 00 00 
ffff800000108328:	48 39 c2             	cmp    %rax,%rdx
ffff80000010832b:	75 10                	jne    ffff80000010833d <init_memory+0xcd4>
ffff80000010832d:	48 ba 38 47 00 00 00 	movabs $0x4738,%rdx
ffff800000108334:	00 00 00 
ffff800000108337:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010833a:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff80000010833d:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108341:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108344:	48 63 d0             	movslq %eax,%rdx
ffff800000108347:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010834e:	00 00 00 
ffff800000108351:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108358:	00 
ffff800000108359:	48 39 c2             	cmp    %rax,%rdx
ffff80000010835c:	0f 82 1e ff ff ff    	jb     ffff800000108280 <init_memory+0xc17>
ffff800000108362:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108369:	00 00 00 
ffff80000010836c:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108373:	00 
ffff800000108374:	48 89 c2             	mov    %rax,%rdx
ffff800000108377:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010837e:	00 00 00 
ffff800000108381:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000108388:	00 
ffff800000108389:	48 01 d0             	add    %rdx,%rax
ffff80000010838c:	48 05 00 01 00 00    	add    $0x100,%rax
ffff800000108392:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108396:	48 89 c2             	mov    %rax,%rdx
ffff800000108399:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083a0:	00 00 00 
ffff8000001083a3:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff8000001083aa:	00 
ffff8000001083ab:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083b2:	00 00 00 
ffff8000001083b5:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff8000001083bc:	00 
ffff8000001083bd:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083c4:	00 00 00 
ffff8000001083c7:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff8000001083ce:	00 
ffff8000001083cf:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083d6:	00 00 00 
ffff8000001083d9:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff8000001083e0:	00 
ffff8000001083e1:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083e8:	00 00 00 
ffff8000001083eb:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff8000001083f2:	00 
ffff8000001083f3:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083fa:	00 00 00 
ffff8000001083fd:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108404:	00 
ffff800000108405:	51                   	push   %rcx
ffff800000108406:	52                   	push   %rdx
ffff800000108407:	49 89 f9             	mov    %rdi,%r9
ffff80000010840a:	49 89 f0             	mov    %rsi,%r8
ffff80000010840d:	48 89 c1             	mov    %rax,%rcx
ffff800000108410:	48 b8 00 a9 ff ff ff 	movabs $0xffffffffffffa900,%rax
ffff800000108417:	ff ff ff 
ffff80000010841a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010841e:	48 89 c2             	mov    %rax,%rdx
ffff800000108421:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108426:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010842b:	49 89 df             	mov    %rbx,%r15
ffff80000010842e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108433:	49 ba 45 5c ff ff ff 	movabs $0xffffffffffff5c45,%r10
ffff80000010843a:	ff ff ff 
ffff80000010843d:	49 01 da             	add    %rbx,%r10
ffff800000108440:	41 ff d2             	call   *%r10
ffff800000108443:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108447:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010844e:	00 00 00 
ffff800000108451:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff800000108458:	00 
ffff800000108459:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff800000108460:	80 00 00 
ffff800000108463:	48 01 d0             	add    %rdx,%rax
ffff800000108466:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010846a:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff80000010846d:	90                   	nop
ffff80000010846e:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff800000108472:	5b                   	pop    %rbx
ffff800000108473:	41 5f                	pop    %r15
ffff800000108475:	5d                   	pop    %rbp
ffff800000108476:	c3                   	ret
