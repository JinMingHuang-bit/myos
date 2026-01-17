
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 30 a4 00 00 	lgdt   0xa430(%rip)        # ffff80000010a448 <GDT_END>
ffff800000100018:	0f 01 1d 33 b4 00 00 	lidt   0xb433(%rip)        # ffff80000010b452 <IDT_END>
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
ffff800000100099:	48 8d 3d b2 a3 00 00 	lea    0xa3b2(%rip),%rdi        # ffff80000010a452 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 9e b3 00 00 	lea    0xb39e(%rip),%rdx        # ffff80000010b45c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d c8 a2 00 00 	lea    0xa2c8(%rip),%rdi        # ffff80000010a3c0 <GDT_Table>
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
ffff800000100161:	e8 14 47 00 00       	call   ffff80000010487a <color_printk>
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
ffff80000010400f:	49 bb a8 b5 00 00 00 	movabs $0xb5a8,%r11
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

ffff800000104131 <Get_gdt>:
ffff800000104131:	f3 0f 1e fa          	endbr64
ffff800000104135:	55                   	push   %rbp
ffff800000104136:	48 89 e5             	mov    %rsp,%rbp
ffff800000104139:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104139 <Get_gdt+0x8>
ffff800000104140:	49 bb 77 b4 00 00 00 	movabs $0xb477,%r11
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
ffff800000104165:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000104169:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104169 <Start_Kernel+0xf>
ffff800000104170:	49 bb 47 b4 00 00 00 	movabs $0xb447,%r11
ffff800000104177:	00 00 00 
ffff80000010417a:	4c 01 db             	add    %r11,%rbx
ffff80000010417d:	0f 20 e0             	mov    %cr4,%rax
ffff800000104180:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000104184:	48 81 4d e0 00 02 00 	orq    $0x200,-0x20(%rbp)
ffff80000010418b:	00 
ffff80000010418c:	48 81 4d e0 00 04 00 	orq    $0x400,-0x20(%rbp)
ffff800000104193:	00 
ffff800000104194:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104198:	0f 22 e0             	mov    %rax,%cr4
ffff80000010419b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041a2:	00 00 00 
ffff8000001041a5:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff8000001041ac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041b3:	00 00 00 
ffff8000001041b6:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff8000001041bd:	00 
ffff8000001041be:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041c5:	00 00 00 
ffff8000001041c8:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001041cf:	00 
ffff8000001041d0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041d7:	00 00 00 
ffff8000001041da:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001041e1:	00 
ffff8000001041e2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041e9:	00 00 00 
ffff8000001041ec:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff8000001041f3:	00 
ffff8000001041f4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041fb:	00 00 00 
ffff8000001041fe:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff800000104205:	00 
ffff800000104206:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010420d:	00 00 00 
ffff800000104210:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104217:	80 ff ff 
ffff80000010421a:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff80000010421f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104226:	00 00 00 
ffff800000104229:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff80000010422c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104233:	00 00 00 
ffff800000104236:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010423a:	0f af c2             	imul   %edx,%eax
ffff80000010423d:	c1 e0 02             	shl    $0x2,%eax
ffff800000104240:	48 98                	cltq
ffff800000104242:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104249:	00 00 00 
ffff80000010424c:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff800000104251:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000104256:	0f 00 d8             	ltr    %eax
ffff800000104259:	68 00 7c 00 00       	push   $0x7c00
ffff80000010425e:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104265:	ff 
ffff800000104266:	68 00 7c 00 00       	push   $0x7c00
ffff80000010426b:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104272:	ff 
ffff800000104273:	68 00 7c 00 00       	push   $0x7c00
ffff800000104278:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010427f:	ff 
ffff800000104280:	68 00 7c 00 00       	push   $0x7c00
ffff800000104285:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010428c:	ff 
ffff80000010428d:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff800000104294:	80 ff ff 
ffff800000104297:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff80000010429e:	80 ff ff 
ffff8000001042a1:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042a8:	80 ff ff 
ffff8000001042ab:	48 89 c1             	mov    %rax,%rcx
ffff8000001042ae:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042b5:	80 ff ff 
ffff8000001042b8:	48 89 c2             	mov    %rax,%rdx
ffff8000001042bb:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042c2:	80 ff ff 
ffff8000001042c5:	48 89 c6             	mov    %rax,%rsi
ffff8000001042c8:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042cf:	80 ff ff 
ffff8000001042d2:	48 89 c7             	mov    %rax,%rdi
ffff8000001042d5:	48 b8 50 4a ff ff ff 	movabs $0xffffffffffff4a50,%rax
ffff8000001042dc:	ff ff ff 
ffff8000001042df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042e3:	ff d0                	call   *%rax
ffff8000001042e5:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042e9:	49 89 df             	mov    %rbx,%r15
ffff8000001042ec:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f1:	48 ba c5 7c ff ff ff 	movabs $0xffffffffffff7cc5,%rdx
ffff8000001042f8:	ff ff ff 
ffff8000001042fb:	48 01 da             	add    %rbx,%rdx
ffff8000001042fe:	ff d2                	call   *%rdx
ffff800000104300:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff800000104307:	ff ff ff 
ffff80000010430a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010430e:	48 89 c2             	mov    %rax,%rdx
ffff800000104311:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104318:	00 00 00 
ffff80000010431b:	48 89 94 03 d0 02 00 	mov    %rdx,0x2d0(%rbx,%rax,1)
ffff800000104322:	00 
ffff800000104323:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff80000010432a:	ff ff ff 
ffff80000010432d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104331:	48 89 c2             	mov    %rax,%rdx
ffff800000104334:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010433b:	00 00 00 
ffff80000010433e:	48 89 94 03 d8 02 00 	mov    %rdx,0x2d8(%rbx,%rax,1)
ffff800000104345:	00 
ffff800000104346:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff80000010434d:	ff ff ff 
ffff800000104350:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104354:	48 89 c2             	mov    %rax,%rdx
ffff800000104357:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010435e:	00 00 00 
ffff800000104361:	48 89 94 03 e0 02 00 	mov    %rdx,0x2e0(%rbx,%rax,1)
ffff800000104368:	00 
ffff800000104369:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff800000104370:	ff ff ff 
ffff800000104373:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104377:	48 89 c2             	mov    %rax,%rdx
ffff80000010437a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104381:	00 00 00 
ffff800000104384:	48 89 94 03 e8 02 00 	mov    %rdx,0x2e8(%rbx,%rax,1)
ffff80000010438b:	00 
ffff80000010438c:	48 b8 68 99 ff ff ff 	movabs $0xffffffffffff9968,%rax
ffff800000104393:	ff ff ff 
ffff800000104396:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010439a:	48 89 c2             	mov    %rax,%rdx
ffff80000010439d:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043a2:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043a7:	49 89 df             	mov    %rbx,%r15
ffff8000001043aa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043af:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001043b6:	ff ff ff 
ffff8000001043b9:	48 01 d9             	add    %rbx,%rcx
ffff8000001043bc:	ff d1                	call   *%rcx
ffff8000001043be:	48 b8 79 99 ff ff ff 	movabs $0xffffffffffff9979,%rax
ffff8000001043c5:	ff ff ff 
ffff8000001043c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043cc:	48 89 c2             	mov    %rax,%rdx
ffff8000001043cf:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043d4:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043d9:	49 89 df             	mov    %rbx,%r15
ffff8000001043dc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043e1:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001043e8:	ff ff ff 
ffff8000001043eb:	48 01 d9             	add    %rbx,%rcx
ffff8000001043ee:	ff d1                	call   *%rcx
ffff8000001043f0:	48 b8 88 99 ff ff ff 	movabs $0xffffffffffff9988,%rax
ffff8000001043f7:	ff ff ff 
ffff8000001043fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043fe:	48 89 c2             	mov    %rax,%rdx
ffff800000104401:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104406:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010440b:	49 89 df             	mov    %rbx,%r15
ffff80000010440e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104413:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff80000010441a:	ff ff ff 
ffff80000010441d:	48 01 d9             	add    %rbx,%rcx
ffff800000104420:	ff d1                	call   *%rcx
ffff800000104422:	49 89 df             	mov    %rbx,%r15
ffff800000104425:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010442a:	48 ba 5d 85 ff ff ff 	movabs $0xffffffffffff855d,%rdx
ffff800000104431:	ff ff ff 
ffff800000104434:	48 01 da             	add    %rbx,%rdx
ffff800000104437:	ff d2                	call   *%rdx
ffff800000104439:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff800000104440:	00 
ffff800000104441:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104448:	00 00 00 
ffff80000010444b:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000104452:	00 
ffff800000104453:	48 8b 00             	mov    (%rax),%rax
ffff800000104456:	48 89 c1             	mov    %rax,%rcx
ffff800000104459:	48 b8 e0 99 ff ff ff 	movabs $0xffffffffffff99e0,%rax
ffff800000104460:	ff ff ff 
ffff800000104463:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104467:	48 89 c2             	mov    %rax,%rdx
ffff80000010446a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010446f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000104474:	49 89 df             	mov    %rbx,%r15
ffff800000104477:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010447c:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000104483:	ff ff ff 
ffff800000104486:	49 01 d8             	add    %rbx,%r8
ffff800000104489:	41 ff d0             	call   *%r8
ffff80000010448c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104493:	00 00 00 
ffff800000104496:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010449d:	00 
ffff80000010449e:	48 83 c0 08          	add    $0x8,%rax
ffff8000001044a2:	48 8b 00             	mov    (%rax),%rax
ffff8000001044a5:	48 89 c1             	mov    %rax,%rcx
ffff8000001044a8:	48 b8 10 9a ff ff ff 	movabs $0xffffffffffff9a10,%rax
ffff8000001044af:	ff ff ff 
ffff8000001044b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044b6:	48 89 c2             	mov    %rax,%rdx
ffff8000001044b9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001044be:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001044c3:	49 89 df             	mov    %rbx,%r15
ffff8000001044c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044cb:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff8000001044d2:	ff ff ff 
ffff8000001044d5:	49 01 d8             	add    %rbx,%r8
ffff8000001044d8:	41 ff d0             	call   *%r8
ffff8000001044db:	ba 91 00 00 00       	mov    $0x91,%edx
ffff8000001044e0:	be 40 00 00 00       	mov    $0x40,%esi
ffff8000001044e5:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001044ea:	49 89 df             	mov    %rbx,%r15
ffff8000001044ed:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044f2:	48 b9 cc 95 ff ff ff 	movabs $0xffffffffffff95cc,%rcx
ffff8000001044f9:	ff ff ff 
ffff8000001044fc:	48 01 d9             	add    %rbx,%rcx
ffff8000001044ff:	ff d1                	call   *%rcx
ffff800000104501:	48 98                	cltq
ffff800000104503:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000104507:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010450e:	e9 0c 01 00 00       	jmp    ffff80000010461f <Start_Kernel+0x4c5>
ffff800000104513:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104516:	48 63 d0             	movslq %eax,%rdx
ffff800000104519:	48 89 d0             	mov    %rdx,%rax
ffff80000010451c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000104520:	48 01 d0             	add    %rdx,%rax
ffff800000104523:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000104527:	48 89 c2             	mov    %rax,%rdx
ffff80000010452a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010452e:	48 01 d0             	add    %rdx,%rax
ffff800000104531:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff800000104535:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104538:	48 63 d0             	movslq %eax,%rdx
ffff80000010453b:	48 89 d0             	mov    %rdx,%rax
ffff80000010453e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000104542:	48 01 d0             	add    %rdx,%rax
ffff800000104545:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000104549:	48 89 c2             	mov    %rax,%rdx
ffff80000010454c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104550:	48 01 d0             	add    %rdx,%rax
ffff800000104553:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104557:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010455a:	49 89 c9             	mov    %rcx,%r9
ffff80000010455d:	49 89 d0             	mov    %rdx,%r8
ffff800000104560:	89 c1                	mov    %eax,%ecx
ffff800000104562:	48 b8 40 9a ff ff ff 	movabs $0xffffffffffff9a40,%rax
ffff800000104569:	ff ff ff 
ffff80000010456c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104570:	48 89 c2             	mov    %rax,%rdx
ffff800000104573:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104578:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff80000010457d:	49 89 df             	mov    %rbx,%r15
ffff800000104580:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104585:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff80000010458c:	ff ff ff 
ffff80000010458f:	49 01 da             	add    %rbx,%r10
ffff800000104592:	41 ff d2             	call   *%r10
ffff800000104595:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000104599:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010459c:	48 63 d0             	movslq %eax,%rdx
ffff80000010459f:	48 89 d0             	mov    %rdx,%rax
ffff8000001045a2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001045a6:	48 01 d0             	add    %rdx,%rax
ffff8000001045a9:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001045ad:	48 89 c2             	mov    %rax,%rdx
ffff8000001045b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045b4:	48 01 d0             	add    %rdx,%rax
ffff8000001045b7:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001045bb:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001045be:	48 63 d0             	movslq %eax,%rdx
ffff8000001045c1:	48 89 d0             	mov    %rdx,%rax
ffff8000001045c4:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001045c8:	48 01 d0             	add    %rdx,%rax
ffff8000001045cb:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001045cf:	48 89 c2             	mov    %rax,%rdx
ffff8000001045d2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045d6:	48 01 d0             	add    %rdx,%rax
ffff8000001045d9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001045dd:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001045e0:	49 89 c9             	mov    %rcx,%r9
ffff8000001045e3:	49 89 d0             	mov    %rdx,%r8
ffff8000001045e6:	89 c1                	mov    %eax,%ecx
ffff8000001045e8:	48 b8 40 9a ff ff ff 	movabs $0xffffffffffff9a40,%rax
ffff8000001045ef:	ff ff ff 
ffff8000001045f2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001045f6:	48 89 c2             	mov    %rax,%rdx
ffff8000001045f9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001045fe:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000104603:	49 89 df             	mov    %rbx,%r15
ffff800000104606:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010460b:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000104612:	ff ff ff 
ffff800000104615:	49 01 da             	add    %rbx,%r10
ffff800000104618:	41 ff d2             	call   *%r10
ffff80000010461b:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff80000010461f:	83 7d ec 0f          	cmpl   $0xf,-0x14(%rbp)
ffff800000104623:	0f 8e ea fe ff ff    	jle    ffff800000104513 <Start_Kernel+0x3b9>
ffff800000104629:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104630:	00 00 00 
ffff800000104633:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010463a:	00 
ffff80000010463b:	48 8b 00             	mov    (%rax),%rax
ffff80000010463e:	48 89 c1             	mov    %rax,%rcx
ffff800000104641:	48 b8 e0 99 ff ff ff 	movabs $0xffffffffffff99e0,%rax
ffff800000104648:	ff ff ff 
ffff80000010464b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010464f:	48 89 c2             	mov    %rax,%rdx
ffff800000104652:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104657:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010465c:	49 89 df             	mov    %rbx,%r15
ffff80000010465f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104664:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff80000010466b:	ff ff ff 
ffff80000010466e:	49 01 d8             	add    %rbx,%r8
ffff800000104671:	41 ff d0             	call   *%r8
ffff800000104674:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010467b:	00 00 00 
ffff80000010467e:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000104685:	00 
ffff800000104686:	48 83 c0 08          	add    $0x8,%rax
ffff80000010468a:	48 8b 00             	mov    (%rax),%rax
ffff80000010468d:	48 89 c1             	mov    %rax,%rcx
ffff800000104690:	48 b8 10 9a ff ff ff 	movabs $0xffffffffffff9a10,%rax
ffff800000104697:	ff ff ff 
ffff80000010469a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010469e:	48 89 c2             	mov    %rax,%rdx
ffff8000001046a1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001046a6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001046ab:	49 89 df             	mov    %rbx,%r15
ffff8000001046ae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001046b3:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff8000001046ba:	ff ff ff 
ffff8000001046bd:	49 01 d8             	add    %rbx,%r8
ffff8000001046c0:	41 ff d0             	call   *%r8
ffff8000001046c3:	48 b8 70 9a ff ff ff 	movabs $0xffffffffffff9a70,%rax
ffff8000001046ca:	ff ff ff 
ffff8000001046cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046d1:	48 89 c2             	mov    %rax,%rdx
ffff8000001046d4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001046d9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001046de:	49 89 df             	mov    %rbx,%r15
ffff8000001046e1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001046e6:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001046ed:	ff ff ff 
ffff8000001046f0:	48 01 d9             	add    %rbx,%rcx
ffff8000001046f3:	ff d1                	call   *%rcx
ffff8000001046f5:	48 b8 a8 9a ff ff ff 	movabs $0xffffffffffff9aa8,%rax
ffff8000001046fc:	ff ff ff 
ffff8000001046ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104703:	48 89 c2             	mov    %rax,%rdx
ffff800000104706:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010470b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104710:	49 89 df             	mov    %rbx,%r15
ffff800000104713:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104718:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff80000010471f:	ff ff ff 
ffff800000104722:	48 01 d9             	add    %rbx,%rcx
ffff800000104725:	ff d1                	call   *%rcx
ffff800000104727:	90                   	nop
ffff800000104728:	eb fd                	jmp    ffff800000104727 <Start_Kernel+0x5cd>

ffff80000010472a <Cstrlen>:
ffff80000010472a:	f3 0f 1e fa          	endbr64
ffff80000010472e:	55                   	push   %rbp
ffff80000010472f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104732:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104732 <Cstrlen+0x8>
ffff800000104739:	49 bb 7e ae 00 00 00 	movabs $0xae7e,%r11
ffff800000104740:	00 00 00 
ffff800000104743:	4c 01 d8             	add    %r11,%rax
ffff800000104746:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010474a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010474e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104752:	eb 05                	jmp    ffff800000104759 <Cstrlen+0x2f>
ffff800000104754:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104759:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010475d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104760:	84 c0                	test   %al,%al
ffff800000104762:	75 f0                	jne    ffff800000104754 <Cstrlen+0x2a>
ffff800000104764:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104768:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010476c:	5d                   	pop    %rbp
ffff80000010476d:	c3                   	ret

ffff80000010476e <putchar>:
ffff80000010476e:	f3 0f 1e fa          	endbr64
ffff800000104772:	55                   	push   %rbp
ffff800000104773:	48 89 e5             	mov    %rsp,%rbp
ffff800000104776:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104776 <putchar+0x8>
ffff80000010477d:	49 bb 3a ae 00 00 00 	movabs $0xae3a,%r11
ffff800000104784:	00 00 00 
ffff800000104787:	4c 01 d8             	add    %r11,%rax
ffff80000010478a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010478e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104791:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104794:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104797:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010479b:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010479f:	8b 55 10             	mov    0x10(%rbp),%edx
ffff8000001047a2:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff8000001047a5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047ac:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001047b3:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff8000001047ba:	00 
ffff8000001047bb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001047c2:	00 
ffff8000001047c3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001047ca:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001047ce:	48 63 d2             	movslq %edx,%rdx
ffff8000001047d1:	48 89 d1             	mov    %rdx,%rcx
ffff8000001047d4:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001047d8:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff8000001047df:	ff ff ff 
ffff8000001047e2:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001047e6:	48 01 c8             	add    %rcx,%rax
ffff8000001047e9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001047ed:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047f4:	eb 7a                	jmp    ffff800000104870 <putchar+0x102>
ffff8000001047f6:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001047f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001047fc:	01 d0                	add    %edx,%eax
ffff8000001047fe:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff800000104802:	48 63 d0             	movslq %eax,%rdx
ffff800000104805:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104808:	48 98                	cltq
ffff80000010480a:	48 01 d0             	add    %rdx,%rax
ffff80000010480d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff800000104814:	00 
ffff800000104815:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104819:	48 01 d0             	add    %rdx,%rax
ffff80000010481c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104820:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff800000104827:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010482e:	eb 31                	jmp    ffff800000104861 <putchar+0xf3>
ffff800000104830:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff800000104833:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104837:	0f b6 00             	movzbl (%rax),%eax
ffff80000010483a:	0f b6 c0             	movzbl %al,%eax
ffff80000010483d:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104840:	85 c0                	test   %eax,%eax
ffff800000104842:	74 0b                	je     ffff80000010484f <putchar+0xe1>
ffff800000104844:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104848:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff80000010484b:	89 10                	mov    %edx,(%rax)
ffff80000010484d:	eb 09                	jmp    ffff800000104858 <putchar+0xea>
ffff80000010484f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104853:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104856:	89 10                	mov    %edx,(%rax)
ffff800000104858:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010485d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104861:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104865:	7e c9                	jle    ffff800000104830 <putchar+0xc2>
ffff800000104867:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010486c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104870:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104874:	7e 80                	jle    ffff8000001047f6 <putchar+0x88>
ffff800000104876:	90                   	nop
ffff800000104877:	90                   	nop
ffff800000104878:	5d                   	pop    %rbp
ffff800000104879:	c3                   	ret

ffff80000010487a <color_printk>:
ffff80000010487a:	f3 0f 1e fa          	endbr64
ffff80000010487e:	55                   	push   %rbp
ffff80000010487f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104882:	53                   	push   %rbx
ffff800000104883:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff80000010488a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010488a <color_printk+0x10>
ffff800000104891:	49 bb 26 ad 00 00 00 	movabs $0xad26,%r11
ffff800000104898:	00 00 00 
ffff80000010489b:	4c 01 db             	add    %r11,%rbx
ffff80000010489e:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff8000001048a4:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff8000001048aa:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff8000001048b1:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001048b8:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001048bf:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001048c6:	84 c0                	test   %al,%al
ffff8000001048c8:	74 23                	je     ffff8000001048ed <color_printk+0x73>
ffff8000001048ca:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001048d1:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001048d5:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001048d9:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001048dd:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001048e1:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001048e5:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001048e9:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001048ed:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001048f4:	00 00 00 
ffff8000001048f7:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001048fe:	00 00 00 
ffff800000104901:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104908:	00 00 00 
ffff80000010490b:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff800000104912:	00 00 00 
ffff800000104915:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff80000010491c:	00 00 00 
ffff80000010491f:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104923:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff80000010492a:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104931:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104938:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff80000010493f:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104946:	48 89 c6             	mov    %rax,%rsi
ffff800000104949:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104950:	00 00 00 
ffff800000104953:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104957:	48 89 c7             	mov    %rax,%rdi
ffff80000010495a:	48 b8 4a 5d ff ff ff 	movabs $0xffffffffffff5d4a,%rax
ffff800000104961:	ff ff ff 
ffff800000104964:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104968:	ff d0                	call   *%rax
ffff80000010496a:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104970:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104977:	00 00 00 
ffff80000010497a:	e9 81 04 00 00       	jmp    ffff800000104e00 <color_printk+0x586>
ffff80000010497f:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104986:	7e 0c                	jle    ffff800000104994 <color_printk+0x11a>
ffff800000104988:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010498f:	e9 45 02 00 00       	jmp    ffff800000104bd9 <color_printk+0x35f>
ffff800000104994:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010499a:	48 63 d0             	movslq %eax,%rdx
ffff80000010499d:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049a4:	00 00 00 
ffff8000001049a7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049ab:	48 01 d0             	add    %rdx,%rax
ffff8000001049ae:	0f b6 00             	movzbl (%rax),%eax
ffff8000001049b1:	3c 0a                	cmp    $0xa,%al
ffff8000001049b3:	75 36                	jne    ffff8000001049eb <color_printk+0x171>
ffff8000001049b5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049bc:	00 00 00 
ffff8000001049bf:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001049c3:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001049c6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049cd:	00 00 00 
ffff8000001049d0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001049d4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049db:	00 00 00 
ffff8000001049de:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001049e5:	00 
ffff8000001049e6:	e9 6a 03 00 00       	jmp    ffff800000104d55 <color_printk+0x4db>
ffff8000001049eb:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001049f1:	48 63 d0             	movslq %eax,%rdx
ffff8000001049f4:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049fb:	00 00 00 
ffff8000001049fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a02:	48 01 d0             	add    %rdx,%rax
ffff800000104a05:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a08:	3c 08                	cmp    $0x8,%al
ffff800000104a0a:	0f 85 78 01 00 00    	jne    ffff800000104b88 <color_printk+0x30e>
ffff800000104a10:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a17:	00 00 00 
ffff800000104a1a:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a1e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a21:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a28:	00 00 00 
ffff800000104a2b:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a2f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a36:	00 00 00 
ffff800000104a39:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a3d:	85 c0                	test   %eax,%eax
ffff800000104a3f:	0f 89 b2 00 00 00    	jns    ffff800000104af7 <color_printk+0x27d>
ffff800000104a45:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a4c:	00 00 00 
ffff800000104a4f:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a52:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a59:	00 00 00 
ffff800000104a5c:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a60:	99                   	cltd
ffff800000104a61:	f7 fe                	idiv   %esi
ffff800000104a63:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a66:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a6d:	00 00 00 
ffff800000104a70:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a74:	0f af c2             	imul   %edx,%eax
ffff800000104a77:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a7e:	00 00 00 
ffff800000104a81:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104a85:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a8c:	00 00 00 
ffff800000104a8f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a93:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a96:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a9d:	00 00 00 
ffff800000104aa0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104aa4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aab:	00 00 00 
ffff800000104aae:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104ab2:	85 c0                	test   %eax,%eax
ffff800000104ab4:	79 41                	jns    ffff800000104af7 <color_printk+0x27d>
ffff800000104ab6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104abd:	00 00 00 
ffff800000104ac0:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104ac4:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104acb:	00 00 00 
ffff800000104ace:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104ad2:	99                   	cltd
ffff800000104ad3:	f7 ff                	idiv   %edi
ffff800000104ad5:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ad8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104adf:	00 00 00 
ffff800000104ae2:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104ae6:	0f af c2             	imul   %edx,%eax
ffff800000104ae9:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104af0:	00 00 00 
ffff800000104af3:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff800000104af7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104afe:	00 00 00 
ffff800000104b01:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104b05:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b0c:	00 00 00 
ffff800000104b0f:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b13:	89 d1                	mov    %edx,%ecx
ffff800000104b15:	0f af c8             	imul   %eax,%ecx
ffff800000104b18:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b1f:	00 00 00 
ffff800000104b22:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104b26:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b2d:	00 00 00 
ffff800000104b30:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104b34:	0f af d0             	imul   %eax,%edx
ffff800000104b37:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b3e:	00 00 00 
ffff800000104b41:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104b44:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b4b:	00 00 00 
ffff800000104b4e:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104b53:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104b5a:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104b60:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104b64:	6a 20                	push   $0x20
ffff800000104b66:	45 89 c1             	mov    %r8d,%r9d
ffff800000104b69:	41 89 f8             	mov    %edi,%r8d
ffff800000104b6c:	48 89 c7             	mov    %rax,%rdi
ffff800000104b6f:	48 b8 be 51 ff ff ff 	movabs $0xffffffffffff51be,%rax
ffff800000104b76:	ff ff ff 
ffff800000104b79:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b7d:	ff d0                	call   *%rax
ffff800000104b7f:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104b83:	e9 cd 01 00 00       	jmp    ffff800000104d55 <color_printk+0x4db>
ffff800000104b88:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b8e:	48 63 d0             	movslq %eax,%rdx
ffff800000104b91:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104b98:	00 00 00 
ffff800000104b9b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b9f:	48 01 d0             	add    %rdx,%rax
ffff800000104ba2:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ba5:	3c 09                	cmp    $0x9,%al
ffff800000104ba7:	0f 85 e3 00 00 00    	jne    ffff800000104c90 <color_printk+0x416>
ffff800000104bad:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bb4:	00 00 00 
ffff800000104bb7:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104bbb:	83 c0 08             	add    $0x8,%eax
ffff800000104bbe:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104bc1:	89 c2                	mov    %eax,%edx
ffff800000104bc3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bca:	00 00 00 
ffff800000104bcd:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104bd1:	29 c2                	sub    %eax,%edx
ffff800000104bd3:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff800000104bd9:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff800000104be0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104be7:	00 00 00 
ffff800000104bea:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104bee:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf5:	00 00 00 
ffff800000104bf8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104bfc:	89 d1                	mov    %edx,%ecx
ffff800000104bfe:	0f af c8             	imul   %eax,%ecx
ffff800000104c01:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c08:	00 00 00 
ffff800000104c0b:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104c0f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c16:	00 00 00 
ffff800000104c19:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c1d:	0f af d0             	imul   %eax,%edx
ffff800000104c20:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c27:	00 00 00 
ffff800000104c2a:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c2d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c34:	00 00 00 
ffff800000104c37:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c3c:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104c43:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104c49:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104c4d:	6a 20                	push   $0x20
ffff800000104c4f:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c52:	41 89 f8             	mov    %edi,%r8d
ffff800000104c55:	48 89 c7             	mov    %rax,%rdi
ffff800000104c58:	48 b8 be 51 ff ff ff 	movabs $0xffffffffffff51be,%rax
ffff800000104c5f:	ff ff ff 
ffff800000104c62:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c66:	ff d0                	call   *%rax
ffff800000104c68:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104c6c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c73:	00 00 00 
ffff800000104c76:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104c7a:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c7d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c84:	00 00 00 
ffff800000104c87:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104c8b:	e9 c5 00 00 00       	jmp    ffff800000104d55 <color_printk+0x4db>
ffff800000104c90:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104c96:	48 63 d0             	movslq %eax,%rdx
ffff800000104c99:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104ca0:	00 00 00 
ffff800000104ca3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ca7:	48 01 d0             	add    %rdx,%rax
ffff800000104caa:	0f b6 00             	movzbl (%rax),%eax
ffff800000104cad:	0f b6 f8             	movzbl %al,%edi
ffff800000104cb0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cb7:	00 00 00 
ffff800000104cba:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104cbe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cc5:	00 00 00 
ffff800000104cc8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104ccc:	89 d1                	mov    %edx,%ecx
ffff800000104cce:	0f af c8             	imul   %eax,%ecx
ffff800000104cd1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cd8:	00 00 00 
ffff800000104cdb:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104cdf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ce6:	00 00 00 
ffff800000104ce9:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ced:	0f af d0             	imul   %eax,%edx
ffff800000104cf0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cf7:	00 00 00 
ffff800000104cfa:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104cfd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d04:	00 00 00 
ffff800000104d07:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104d0c:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104d13:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104d1a:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104d1e:	57                   	push   %rdi
ffff800000104d1f:	48 89 c7             	mov    %rax,%rdi
ffff800000104d22:	48 b8 be 51 ff ff ff 	movabs $0xffffffffffff51be,%rax
ffff800000104d29:	ff ff ff 
ffff800000104d2c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d30:	ff d0                	call   *%rax
ffff800000104d32:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104d36:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d3d:	00 00 00 
ffff800000104d40:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104d44:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d47:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d4e:	00 00 00 
ffff800000104d51:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104d55:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d5c:	00 00 00 
ffff800000104d5f:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104d63:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d6a:	00 00 00 
ffff800000104d6d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104d70:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104d77:	00 00 00 
ffff800000104d7a:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104d7e:	99                   	cltd
ffff800000104d7f:	f7 fe                	idiv   %esi
ffff800000104d81:	39 c1                	cmp    %eax,%ecx
ffff800000104d83:	7c 31                	jl     ffff800000104db6 <color_printk+0x53c>
ffff800000104d85:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d8c:	00 00 00 
ffff800000104d8f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104d93:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d96:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d9d:	00 00 00 
ffff800000104da0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104da4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dab:	00 00 00 
ffff800000104dae:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104db5:	00 
ffff800000104db6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dbd:	00 00 00 
ffff800000104dc0:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104dc4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dcb:	00 00 00 
ffff800000104dce:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104dd2:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104dd9:	00 00 00 
ffff800000104ddc:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104de0:	99                   	cltd
ffff800000104de1:	f7 ff                	idiv   %edi
ffff800000104de3:	39 c1                	cmp    %eax,%ecx
ffff800000104de5:	7c 12                	jl     ffff800000104df9 <color_printk+0x57f>
ffff800000104de7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dee:	00 00 00 
ffff800000104df1:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104df8:	00 
ffff800000104df9:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104e00:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104e06:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104e0c:	0f 8c 6d fb ff ff    	jl     ffff80000010497f <color_printk+0x105>
ffff800000104e12:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104e19:	0f 85 60 fb ff ff    	jne    ffff80000010497f <color_printk+0x105>
ffff800000104e1f:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104e25:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104e29:	c9                   	leave
ffff800000104e2a:	c3                   	ret

ffff800000104e2b <clear_screen>:
ffff800000104e2b:	f3 0f 1e fa          	endbr64
ffff800000104e2f:	55                   	push   %rbp
ffff800000104e30:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e33:	53                   	push   %rbx
ffff800000104e34:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104e38:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104e38 <clear_screen+0xd>
ffff800000104e3f:	49 bb 78 a7 00 00 00 	movabs $0xa778,%r11
ffff800000104e46:	00 00 00 
ffff800000104e49:	4c 01 db             	add    %r11,%rbx
ffff800000104e4c:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104e4f:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104e52:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e59:	00 00 00 
ffff800000104e5c:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104e5f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e66:	00 00 00 
ffff800000104e69:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104e6d:	99                   	cltd
ffff800000104e6e:	f7 f9                	idiv   %ecx
ffff800000104e70:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104e73:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e7a:	00 00 00 
ffff800000104e7d:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104e81:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e88:	00 00 00 
ffff800000104e8b:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104e8f:	99                   	cltd
ffff800000104e90:	f7 fe                	idiv   %esi
ffff800000104e92:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104e95:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104e9c:	e9 83 00 00 00       	jmp    ffff800000104f24 <clear_screen+0xf9>
ffff800000104ea1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104ea8:	eb 6e                	jmp    ffff800000104f18 <clear_screen+0xed>
ffff800000104eaa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104eb1:	00 00 00 
ffff800000104eb4:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104eb8:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104ebc:	89 c1                	mov    %eax,%ecx
ffff800000104ebe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ec5:	00 00 00 
ffff800000104ec8:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ecc:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104ed0:	89 c2                	mov    %eax,%edx
ffff800000104ed2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ed9:	00 00 00 
ffff800000104edc:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104edf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ee6:	00 00 00 
ffff800000104ee9:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104eee:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104ef2:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104ef5:	6a 20                	push   $0x20
ffff800000104ef7:	45 89 c1             	mov    %r8d,%r9d
ffff800000104efa:	41 89 f8             	mov    %edi,%r8d
ffff800000104efd:	48 89 c7             	mov    %rax,%rdi
ffff800000104f00:	48 b8 be 51 ff ff ff 	movabs $0xffffffffffff51be,%rax
ffff800000104f07:	ff ff ff 
ffff800000104f0a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f0e:	ff d0                	call   *%rax
ffff800000104f10:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104f14:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104f18:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104f1b:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104f1e:	7c 8a                	jl     ffff800000104eaa <clear_screen+0x7f>
ffff800000104f20:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104f24:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104f27:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104f2a:	0f 8c 71 ff ff ff    	jl     ffff800000104ea1 <clear_screen+0x76>
ffff800000104f30:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f37:	00 00 00 
ffff800000104f3a:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104f41:	00 
ffff800000104f42:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f49:	00 00 00 
ffff800000104f4c:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104f53:	00 
ffff800000104f54:	90                   	nop
ffff800000104f55:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104f59:	c9                   	leave
ffff800000104f5a:	c3                   	ret

ffff800000104f5b <skip_atoi2>:
ffff800000104f5b:	f3 0f 1e fa          	endbr64
ffff800000104f5f:	55                   	push   %rbp
ffff800000104f60:	48 89 e5             	mov    %rsp,%rbp
ffff800000104f63:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104f63 <skip_atoi2+0x8>
ffff800000104f6a:	49 bb 4d a6 00 00 00 	movabs $0xa64d,%r11
ffff800000104f71:	00 00 00 
ffff800000104f74:	4c 01 d8             	add    %r11,%rax
ffff800000104f77:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104f7b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104f82:	eb 39                	jmp    ffff800000104fbd <skip_atoi2+0x62>
ffff800000104f84:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f88:	48 8b 00             	mov    (%rax),%rax
ffff800000104f8b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f8e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104f91:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f95:	48 8b 00             	mov    (%rax),%rax
ffff800000104f98:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fa0:	48 89 10             	mov    %rdx,(%rax)
ffff800000104fa3:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104fa6:	89 d0                	mov    %edx,%eax
ffff800000104fa8:	c1 e0 02             	shl    $0x2,%eax
ffff800000104fab:	01 d0                	add    %edx,%eax
ffff800000104fad:	01 c0                	add    %eax,%eax
ffff800000104faf:	89 c2                	mov    %eax,%edx
ffff800000104fb1:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104fb5:	83 e8 30             	sub    $0x30,%eax
ffff800000104fb8:	01 d0                	add    %edx,%eax
ffff800000104fba:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104fbd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fc1:	48 8b 00             	mov    (%rax),%rax
ffff800000104fc4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fc7:	3c 2f                	cmp    $0x2f,%al
ffff800000104fc9:	7e 0e                	jle    ffff800000104fd9 <skip_atoi2+0x7e>
ffff800000104fcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fcf:	48 8b 00             	mov    (%rax),%rax
ffff800000104fd2:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fd5:	3c 39                	cmp    $0x39,%al
ffff800000104fd7:	7e ab                	jle    ffff800000104f84 <skip_atoi2+0x29>
ffff800000104fd9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104fdc:	5d                   	pop    %rbp
ffff800000104fdd:	c3                   	ret

ffff800000104fde <skip_atoi>:
ffff800000104fde:	f3 0f 1e fa          	endbr64
ffff800000104fe2:	55                   	push   %rbp
ffff800000104fe3:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fe6:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104fe6 <skip_atoi+0x8>
ffff800000104fed:	49 bb ca a5 00 00 00 	movabs $0xa5ca,%r11
ffff800000104ff4:	00 00 00 
ffff800000104ff7:	4c 01 d8             	add    %r11,%rax
ffff800000104ffa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104ffe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000105005:	eb 2c                	jmp    ffff800000105033 <skip_atoi+0x55>
ffff800000105007:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010500b:	48 8b 00             	mov    (%rax),%rax
ffff80000010500e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105012:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105016:	48 89 10             	mov    %rdx,(%rax)
ffff800000105019:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff80000010501c:	89 d0                	mov    %edx,%eax
ffff80000010501e:	c1 e0 02             	shl    $0x2,%eax
ffff800000105021:	01 d0                	add    %edx,%eax
ffff800000105023:	01 c0                	add    %eax,%eax
ffff800000105025:	89 c2                	mov    %eax,%edx
ffff800000105027:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff80000010502b:	83 e8 30             	sub    $0x30,%eax
ffff80000010502e:	01 d0                	add    %edx,%eax
ffff800000105030:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000105033:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105037:	48 8b 00             	mov    (%rax),%rax
ffff80000010503a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010503d:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000105040:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000105044:	7e 13                	jle    ffff800000105059 <skip_atoi+0x7b>
ffff800000105046:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010504a:	48 8b 00             	mov    (%rax),%rax
ffff80000010504d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105050:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000105053:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000105057:	7e ae                	jle    ffff800000105007 <skip_atoi+0x29>
ffff800000105059:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff80000010505c:	5d                   	pop    %rbp
ffff80000010505d:	c3                   	ret

ffff80000010505e <number>:
ffff80000010505e:	f3 0f 1e fa          	endbr64
ffff800000105062:	55                   	push   %rbp
ffff800000105063:	48 89 e5             	mov    %rsp,%rbp
ffff800000105066:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105066 <number+0x8>
ffff80000010506d:	49 bb 4a a5 00 00 00 	movabs $0xa54a,%r11
ffff800000105074:	00 00 00 
ffff800000105077:	4c 01 d8             	add    %r11,%rax
ffff80000010507a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff80000010507e:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105082:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000105085:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000105088:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff80000010508c:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000105090:	48 ba d0 9a ff ff ff 	movabs $0xffffffffffff9ad0,%rdx
ffff800000105097:	ff ff ff 
ffff80000010509a:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff80000010509e:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff8000001050a2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001050a9:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff8000001050ac:	83 e2 40             	and    $0x40,%edx
ffff8000001050af:	85 d2                	test   %edx,%edx
ffff8000001050b1:	74 12                	je     ffff8000001050c5 <number+0x67>
ffff8000001050b3:	48 ba f8 9a ff ff ff 	movabs $0xffffffffffff9af8,%rdx
ffff8000001050ba:	ff ff ff 
ffff8000001050bd:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001050c1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001050c5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050c8:	83 e0 10             	and    $0x10,%eax
ffff8000001050cb:	85 c0                	test   %eax,%eax
ffff8000001050cd:	74 04                	je     ffff8000001050d3 <number+0x75>
ffff8000001050cf:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff8000001050d3:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff8000001050d7:	7e 06                	jle    ffff8000001050df <number+0x81>
ffff8000001050d9:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff8000001050dd:	7e 0a                	jle    ffff8000001050e9 <number+0x8b>
ffff8000001050df:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001050e4:	e9 0f 02 00 00       	jmp    ffff8000001052f8 <number+0x29a>
ffff8000001050e9:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050ec:	83 e0 01             	and    $0x1,%eax
ffff8000001050ef:	85 c0                	test   %eax,%eax
ffff8000001050f1:	74 07                	je     ffff8000001050fa <number+0x9c>
ffff8000001050f3:	b8 30 00 00 00       	mov    $0x30,%eax
ffff8000001050f8:	eb 05                	jmp    ffff8000001050ff <number+0xa1>
ffff8000001050fa:	b8 20 00 00 00       	mov    $0x20,%eax
ffff8000001050ff:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000105102:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000105106:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105109:	83 e0 02             	and    $0x2,%eax
ffff80000010510c:	85 c0                	test   %eax,%eax
ffff80000010510e:	74 11                	je     ffff800000105121 <number+0xc3>
ffff800000105110:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000105115:	79 0a                	jns    ffff800000105121 <number+0xc3>
ffff800000105117:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff80000010511b:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff80000010511f:	eb 1d                	jmp    ffff80000010513e <number+0xe0>
ffff800000105121:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105124:	83 e0 04             	and    $0x4,%eax
ffff800000105127:	85 c0                	test   %eax,%eax
ffff800000105129:	75 0b                	jne    ffff800000105136 <number+0xd8>
ffff80000010512b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010512e:	c1 e0 02             	shl    $0x2,%eax
ffff800000105131:	83 e0 20             	and    $0x20,%eax
ffff800000105134:	eb 05                	jmp    ffff80000010513b <number+0xdd>
ffff800000105136:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff80000010513b:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff80000010513e:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000105142:	74 04                	je     ffff800000105148 <number+0xea>
ffff800000105144:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105148:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010514b:	83 e0 20             	and    $0x20,%eax
ffff80000010514e:	85 c0                	test   %eax,%eax
ffff800000105150:	74 16                	je     ffff800000105168 <number+0x10a>
ffff800000105152:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000105156:	75 06                	jne    ffff80000010515e <number+0x100>
ffff800000105158:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff80000010515c:	eb 0a                	jmp    ffff800000105168 <number+0x10a>
ffff80000010515e:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000105162:	75 04                	jne    ffff800000105168 <number+0x10a>
ffff800000105164:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105168:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff80000010516d:	75 4b                	jne    ffff8000001051ba <number+0x15c>
ffff80000010516f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105172:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000105175:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000105178:	48 98                	cltq
ffff80000010517a:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff80000010517f:	eb 40                	jmp    ffff8000001051c1 <number+0x163>
ffff800000105181:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000105184:	48 63 c8             	movslq %eax,%rcx
ffff800000105187:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010518b:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000105190:	48 f7 f1             	div    %rcx
ffff800000105193:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105197:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff80000010519a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff80000010519d:	48 63 d0             	movslq %eax,%rdx
ffff8000001051a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001051a4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001051a8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051ab:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001051ae:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001051b1:	0f b6 11             	movzbl (%rcx),%edx
ffff8000001051b4:	48 98                	cltq
ffff8000001051b6:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001051ba:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff8000001051bf:	75 c0                	jne    ffff800000105181 <number+0x123>
ffff8000001051c1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051c4:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff8000001051c7:	7e 06                	jle    ffff8000001051cf <number+0x171>
ffff8000001051c9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051cc:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff8000001051cf:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff8000001051d2:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff8000001051d5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001051d8:	83 e0 11             	and    $0x11,%eax
ffff8000001051db:	85 c0                	test   %eax,%eax
ffff8000001051dd:	75 1e                	jne    ffff8000001051fd <number+0x19f>
ffff8000001051df:	eb 0f                	jmp    ffff8000001051f0 <number+0x192>
ffff8000001051e1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001051e5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051e9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001051ed:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051f0:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001051f3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051f6:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001051f9:	85 c0                	test   %eax,%eax
ffff8000001051fb:	7f e4                	jg     ffff8000001051e1 <number+0x183>
ffff8000001051fd:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000105201:	74 12                	je     ffff800000105215 <number+0x1b7>
ffff800000105203:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105207:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010520b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010520f:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000105213:	88 10                	mov    %dl,(%rax)
ffff800000105215:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105218:	83 e0 20             	and    $0x20,%eax
ffff80000010521b:	85 c0                	test   %eax,%eax
ffff80000010521d:	74 45                	je     ffff800000105264 <number+0x206>
ffff80000010521f:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000105223:	75 11                	jne    ffff800000105236 <number+0x1d8>
ffff800000105225:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105229:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010522d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105231:	c6 00 30             	movb   $0x30,(%rax)
ffff800000105234:	eb 2e                	jmp    ffff800000105264 <number+0x206>
ffff800000105236:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff80000010523a:	75 28                	jne    ffff800000105264 <number+0x206>
ffff80000010523c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105240:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105244:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105248:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010524b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010524f:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000105253:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105257:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010525b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010525f:	0f b6 11             	movzbl (%rcx),%edx
ffff800000105262:	88 10                	mov    %dl,(%rax)
ffff800000105264:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105267:	83 e0 10             	and    $0x10,%eax
ffff80000010526a:	85 c0                	test   %eax,%eax
ffff80000010526c:	75 32                	jne    ffff8000001052a0 <number+0x242>
ffff80000010526e:	eb 12                	jmp    ffff800000105282 <number+0x224>
ffff800000105270:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105274:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105278:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010527c:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000105280:	88 10                	mov    %dl,(%rax)
ffff800000105282:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105285:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105288:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff80000010528b:	85 c0                	test   %eax,%eax
ffff80000010528d:	7f e1                	jg     ffff800000105270 <number+0x212>
ffff80000010528f:	eb 0f                	jmp    ffff8000001052a0 <number+0x242>
ffff800000105291:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105295:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105299:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010529d:	c6 00 30             	movb   $0x30,(%rax)
ffff8000001052a0:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff8000001052a3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052a6:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff8000001052a9:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff8000001052ac:	7c e3                	jl     ffff800000105291 <number+0x233>
ffff8000001052ae:	eb 19                	jmp    ffff8000001052c9 <number+0x26b>
ffff8000001052b0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052b4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052b8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052bc:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001052bf:	48 63 d2             	movslq %edx,%rdx
ffff8000001052c2:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff8000001052c7:	88 10                	mov    %dl,(%rax)
ffff8000001052c9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001052cc:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052cf:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001052d2:	85 c0                	test   %eax,%eax
ffff8000001052d4:	7f da                	jg     ffff8000001052b0 <number+0x252>
ffff8000001052d6:	eb 0f                	jmp    ffff8000001052e7 <number+0x289>
ffff8000001052d8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052dc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052e0:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052e4:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052e7:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001052ea:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052ed:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001052f0:	85 c0                	test   %eax,%eax
ffff8000001052f2:	7f e4                	jg     ffff8000001052d8 <number+0x27a>
ffff8000001052f4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052f8:	5d                   	pop    %rbp
ffff8000001052f9:	c3                   	ret

ffff8000001052fa <vsprintf>:
ffff8000001052fa:	f3 0f 1e fa          	endbr64
ffff8000001052fe:	55                   	push   %rbp
ffff8000001052ff:	48 89 e5             	mov    %rsp,%rbp
ffff800000105302:	53                   	push   %rbx
ffff800000105303:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000105307:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000105307 <vsprintf+0xd>
ffff80000010530e:	49 bb a9 a2 00 00 00 	movabs $0xa2a9,%r11
ffff800000105315:	00 00 00 
ffff800000105318:	4c 01 db             	add    %r11,%rbx
ffff80000010531b:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff80000010531f:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105323:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000105327:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010532b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010532f:	e9 f8 08 00 00       	jmp    ffff800000105c2c <vsprintf+0x932>
ffff800000105334:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105338:	0f b6 00             	movzbl (%rax),%eax
ffff80000010533b:	3c 25                	cmp    $0x25,%al
ffff80000010533d:	74 1a                	je     ffff800000105359 <vsprintf+0x5f>
ffff80000010533f:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105343:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105347:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010534b:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010534f:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105352:	88 10                	mov    %dl,(%rax)
ffff800000105354:	e9 c7 08 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105359:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000105360:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105364:	48 83 c0 01          	add    $0x1,%rax
ffff800000105368:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010536c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105370:	0f b6 00             	movzbl (%rax),%eax
ffff800000105373:	0f be c0             	movsbl %al,%eax
ffff800000105376:	83 e8 20             	sub    $0x20,%eax
ffff800000105379:	83 f8 10             	cmp    $0x10,%eax
ffff80000010537c:	77 40                	ja     ffff8000001053be <vsprintf+0xc4>
ffff80000010537e:	89 c0                	mov    %eax,%eax
ffff800000105380:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105387:	00 
ffff800000105388:	48 8d 05 41 3d 00 00 	lea    0x3d41(%rip),%rax        # ffff8000001090d0 <.LC1+0x28>
ffff80000010538f:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105393:	48 8d 15 36 3d 00 00 	lea    0x3d36(%rip),%rdx        # ffff8000001090d0 <.LC1+0x28>
ffff80000010539a:	48 01 d0             	add    %rdx,%rax
ffff80000010539d:	3e ff e0             	notrack jmp *%rax
ffff8000001053a0:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001053a4:	eb ba                	jmp    ffff800000105360 <vsprintf+0x66>
ffff8000001053a6:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff8000001053aa:	eb b4                	jmp    ffff800000105360 <vsprintf+0x66>
ffff8000001053ac:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff8000001053b0:	eb ae                	jmp    ffff800000105360 <vsprintf+0x66>
ffff8000001053b2:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff8000001053b6:	eb a8                	jmp    ffff800000105360 <vsprintf+0x66>
ffff8000001053b8:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001053bc:	eb a2                	jmp    ffff800000105360 <vsprintf+0x66>
ffff8000001053be:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff8000001053c5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053c9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053cc:	3c 2f                	cmp    $0x2f,%al
ffff8000001053ce:	7e 27                	jle    ffff8000001053f7 <vsprintf+0xfd>
ffff8000001053d0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053d4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053d7:	3c 39                	cmp    $0x39,%al
ffff8000001053d9:	7f 1c                	jg     ffff8000001053f7 <vsprintf+0xfd>
ffff8000001053db:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001053df:	48 89 c7             	mov    %rax,%rdi
ffff8000001053e2:	48 b8 2e 5a ff ff ff 	movabs $0xffffffffffff5a2e,%rax
ffff8000001053e9:	ff ff ff 
ffff8000001053ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053f0:	ff d0                	call   *%rax
ffff8000001053f2:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001053f5:	eb 6c                	jmp    ffff800000105463 <vsprintf+0x169>
ffff8000001053f7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053fb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053fe:	3c 2a                	cmp    $0x2a,%al
ffff800000105400:	75 61                	jne    ffff800000105463 <vsprintf+0x169>
ffff800000105402:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105406:	48 83 c0 01          	add    $0x1,%rax
ffff80000010540a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010540e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105412:	8b 00                	mov    (%rax),%eax
ffff800000105414:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105417:	77 24                	ja     ffff80000010543d <vsprintf+0x143>
ffff800000105419:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010541d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105421:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105425:	8b 00                	mov    (%rax),%eax
ffff800000105427:	89 c0                	mov    %eax,%eax
ffff800000105429:	48 01 d0             	add    %rdx,%rax
ffff80000010542c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105430:	8b 12                	mov    (%rdx),%edx
ffff800000105432:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105435:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105439:	89 0a                	mov    %ecx,(%rdx)
ffff80000010543b:	eb 14                	jmp    ffff800000105451 <vsprintf+0x157>
ffff80000010543d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105441:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105445:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105449:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010544d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105451:	8b 00                	mov    (%rax),%eax
ffff800000105453:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105456:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010545a:	79 07                	jns    ffff800000105463 <vsprintf+0x169>
ffff80000010545c:	f7 5d d8             	negl   -0x28(%rbp)
ffff80000010545f:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105463:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff80000010546a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010546e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105471:	3c 2e                	cmp    $0x2e,%al
ffff800000105473:	0f 85 aa 00 00 00    	jne    ffff800000105523 <vsprintf+0x229>
ffff800000105479:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010547d:	48 83 c0 01          	add    $0x1,%rax
ffff800000105481:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105485:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105489:	0f b6 00             	movzbl (%rax),%eax
ffff80000010548c:	3c 2f                	cmp    $0x2f,%al
ffff80000010548e:	7e 27                	jle    ffff8000001054b7 <vsprintf+0x1bd>
ffff800000105490:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105494:	0f b6 00             	movzbl (%rax),%eax
ffff800000105497:	3c 39                	cmp    $0x39,%al
ffff800000105499:	7f 1c                	jg     ffff8000001054b7 <vsprintf+0x1bd>
ffff80000010549b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff80000010549f:	48 89 c7             	mov    %rax,%rdi
ffff8000001054a2:	48 b8 2e 5a ff ff ff 	movabs $0xffffffffffff5a2e,%rax
ffff8000001054a9:	ff ff ff 
ffff8000001054ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054b0:	ff d0                	call   *%rax
ffff8000001054b2:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001054b5:	eb 5f                	jmp    ffff800000105516 <vsprintf+0x21c>
ffff8000001054b7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054bb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001054be:	3c 2a                	cmp    $0x2a,%al
ffff8000001054c0:	75 54                	jne    ffff800000105516 <vsprintf+0x21c>
ffff8000001054c2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054c6:	48 83 c0 01          	add    $0x1,%rax
ffff8000001054ca:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001054ce:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d2:	8b 00                	mov    (%rax),%eax
ffff8000001054d4:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054d7:	77 24                	ja     ffff8000001054fd <vsprintf+0x203>
ffff8000001054d9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054dd:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054e1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054e5:	8b 00                	mov    (%rax),%eax
ffff8000001054e7:	89 c0                	mov    %eax,%eax
ffff8000001054e9:	48 01 d0             	add    %rdx,%rax
ffff8000001054ec:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f0:	8b 12                	mov    (%rdx),%edx
ffff8000001054f2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054f5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f9:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054fb:	eb 14                	jmp    ffff800000105511 <vsprintf+0x217>
ffff8000001054fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105501:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105505:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105509:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010550d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105511:	8b 00                	mov    (%rax),%eax
ffff800000105513:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105516:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010551a:	79 07                	jns    ffff800000105523 <vsprintf+0x229>
ffff80000010551c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105523:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff80000010552a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010552e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105531:	3c 68                	cmp    $0x68,%al
ffff800000105533:	74 21                	je     ffff800000105556 <vsprintf+0x25c>
ffff800000105535:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105539:	0f b6 00             	movzbl (%rax),%eax
ffff80000010553c:	3c 6c                	cmp    $0x6c,%al
ffff80000010553e:	74 16                	je     ffff800000105556 <vsprintf+0x25c>
ffff800000105540:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105544:	0f b6 00             	movzbl (%rax),%eax
ffff800000105547:	3c 4c                	cmp    $0x4c,%al
ffff800000105549:	74 0b                	je     ffff800000105556 <vsprintf+0x25c>
ffff80000010554b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010554f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105552:	3c 7a                	cmp    $0x7a,%al
ffff800000105554:	75 19                	jne    ffff80000010556f <vsprintf+0x275>
ffff800000105556:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010555a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010555d:	0f be c0             	movsbl %al,%eax
ffff800000105560:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105563:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105567:	48 83 c0 01          	add    $0x1,%rax
ffff80000010556b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010556f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105573:	0f b6 00             	movzbl (%rax),%eax
ffff800000105576:	0f be c0             	movsbl %al,%eax
ffff800000105579:	83 e8 25             	sub    $0x25,%eax
ffff80000010557c:	83 f8 53             	cmp    $0x53,%eax
ffff80000010557f:	0f 87 5d 06 00 00    	ja     ffff800000105be2 <vsprintf+0x8e8>
ffff800000105585:	89 c0                	mov    %eax,%eax
ffff800000105587:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010558e:	00 
ffff80000010558f:	48 8d 05 c2 3b 00 00 	lea    0x3bc2(%rip),%rax        # ffff800000109158 <.LC1+0xb0>
ffff800000105596:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010559a:	48 8d 15 b7 3b 00 00 	lea    0x3bb7(%rip),%rdx        # ffff800000109158 <.LC1+0xb0>
ffff8000001055a1:	48 01 d0             	add    %rdx,%rax
ffff8000001055a4:	3e ff e0             	notrack jmp *%rax
ffff8000001055a7:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001055aa:	83 e0 10             	and    $0x10,%eax
ffff8000001055ad:	85 c0                	test   %eax,%eax
ffff8000001055af:	75 1b                	jne    ffff8000001055cc <vsprintf+0x2d2>
ffff8000001055b1:	eb 0f                	jmp    ffff8000001055c2 <vsprintf+0x2c8>
ffff8000001055b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055b7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001055bb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001055bf:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001055c2:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001055c6:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001055ca:	7f e7                	jg     ffff8000001055b3 <vsprintf+0x2b9>
ffff8000001055cc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d0:	8b 00                	mov    (%rax),%eax
ffff8000001055d2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055d5:	77 24                	ja     ffff8000001055fb <vsprintf+0x301>
ffff8000001055d7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055db:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055df:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055e3:	8b 00                	mov    (%rax),%eax
ffff8000001055e5:	89 c0                	mov    %eax,%eax
ffff8000001055e7:	48 01 d0             	add    %rdx,%rax
ffff8000001055ea:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ee:	8b 12                	mov    (%rdx),%edx
ffff8000001055f0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055f3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055f7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055f9:	eb 14                	jmp    ffff80000010560f <vsprintf+0x315>
ffff8000001055fb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ff:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105603:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105607:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010560b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010560f:	8b 08                	mov    (%rax),%ecx
ffff800000105611:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105615:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105619:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010561d:	89 ca                	mov    %ecx,%edx
ffff80000010561f:	88 10                	mov    %dl,(%rax)
ffff800000105621:	eb 0f                	jmp    ffff800000105632 <vsprintf+0x338>
ffff800000105623:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105627:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010562b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010562f:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105632:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105636:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010563a:	7f e7                	jg     ffff800000105623 <vsprintf+0x329>
ffff80000010563c:	e9 df 05 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105641:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105645:	8b 00                	mov    (%rax),%eax
ffff800000105647:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010564a:	77 24                	ja     ffff800000105670 <vsprintf+0x376>
ffff80000010564c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105650:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105654:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105658:	8b 00                	mov    (%rax),%eax
ffff80000010565a:	89 c0                	mov    %eax,%eax
ffff80000010565c:	48 01 d0             	add    %rdx,%rax
ffff80000010565f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105663:	8b 12                	mov    (%rdx),%edx
ffff800000105665:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105668:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010566c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010566e:	eb 14                	jmp    ffff800000105684 <vsprintf+0x38a>
ffff800000105670:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105674:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105678:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010567c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105680:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105684:	48 8b 00             	mov    (%rax),%rax
ffff800000105687:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010568b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105690:	75 08                	jne    ffff80000010569a <vsprintf+0x3a0>
ffff800000105692:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105699:	00 
ffff80000010569a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010569e:	48 89 c7             	mov    %rax,%rdi
ffff8000001056a1:	48 b8 7a 51 ff ff ff 	movabs $0xffffffffffff517a,%rax
ffff8000001056a8:	ff ff ff 
ffff8000001056ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056af:	ff d0                	call   *%rax
ffff8000001056b1:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056b4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001056b8:	79 08                	jns    ffff8000001056c2 <vsprintf+0x3c8>
ffff8000001056ba:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056bd:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001056c0:	eb 0e                	jmp    ffff8000001056d0 <vsprintf+0x3d6>
ffff8000001056c2:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056c5:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001056c8:	7e 06                	jle    ffff8000001056d0 <vsprintf+0x3d6>
ffff8000001056ca:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001056cd:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056d0:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001056d3:	83 e0 10             	and    $0x10,%eax
ffff8000001056d6:	85 c0                	test   %eax,%eax
ffff8000001056d8:	75 1f                	jne    ffff8000001056f9 <vsprintf+0x3ff>
ffff8000001056da:	eb 0f                	jmp    ffff8000001056eb <vsprintf+0x3f1>
ffff8000001056dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056e0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056e4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056e8:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001056eb:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001056ee:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001056f1:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001056f4:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001056f7:	7c e3                	jl     ffff8000001056dc <vsprintf+0x3e2>
ffff8000001056f9:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff800000105700:	eb 21                	jmp    ffff800000105723 <vsprintf+0x429>
ffff800000105702:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105706:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff80000010570a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010570e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105712:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105716:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010571a:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010571d:	88 10                	mov    %dl,(%rax)
ffff80000010571f:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105723:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105726:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105729:	7c d7                	jl     ffff800000105702 <vsprintf+0x408>
ffff80000010572b:	eb 0f                	jmp    ffff80000010573c <vsprintf+0x442>
ffff80000010572d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105731:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105735:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105739:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010573c:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff80000010573f:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105742:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105745:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105748:	7c e3                	jl     ffff80000010572d <vsprintf+0x433>
ffff80000010574a:	e9 d1 04 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff80000010574f:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105753:	0f 85 82 00 00 00    	jne    ffff8000001057db <vsprintf+0x4e1>
ffff800000105759:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010575d:	8b 00                	mov    (%rax),%eax
ffff80000010575f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105762:	77 24                	ja     ffff800000105788 <vsprintf+0x48e>
ffff800000105764:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105768:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010576c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105770:	8b 00                	mov    (%rax),%eax
ffff800000105772:	89 c0                	mov    %eax,%eax
ffff800000105774:	48 01 d0             	add    %rdx,%rax
ffff800000105777:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010577b:	8b 12                	mov    (%rdx),%edx
ffff80000010577d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105780:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105784:	89 0a                	mov    %ecx,(%rdx)
ffff800000105786:	eb 14                	jmp    ffff80000010579c <vsprintf+0x4a2>
ffff800000105788:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010578c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105790:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105794:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105798:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010579c:	48 8b 00             	mov    (%rax),%rax
ffff80000010579f:	48 89 c7             	mov    %rax,%rdi
ffff8000001057a2:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057a5:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057a8:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057af:	41 89 f1             	mov    %esi,%r9d
ffff8000001057b2:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057b5:	89 d1                	mov    %edx,%ecx
ffff8000001057b7:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001057bc:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057bf:	48 89 c7             	mov    %rax,%rdi
ffff8000001057c2:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff8000001057c9:	ff ff ff 
ffff8000001057cc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057d0:	ff d0                	call   *%rax
ffff8000001057d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057d6:	e9 45 04 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff8000001057db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057df:	8b 00                	mov    (%rax),%eax
ffff8000001057e1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057e4:	77 24                	ja     ffff80000010580a <vsprintf+0x510>
ffff8000001057e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057ea:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057ee:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057f2:	8b 00                	mov    (%rax),%eax
ffff8000001057f4:	89 c0                	mov    %eax,%eax
ffff8000001057f6:	48 01 d0             	add    %rdx,%rax
ffff8000001057f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057fd:	8b 12                	mov    (%rdx),%edx
ffff8000001057ff:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105802:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105806:	89 0a                	mov    %ecx,(%rdx)
ffff800000105808:	eb 14                	jmp    ffff80000010581e <vsprintf+0x524>
ffff80000010580a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010580e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105812:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105816:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010581a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010581e:	8b 00                	mov    (%rax),%eax
ffff800000105820:	89 c7                	mov    %eax,%edi
ffff800000105822:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105825:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105828:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010582b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010582f:	41 89 f1             	mov    %esi,%r9d
ffff800000105832:	41 89 c8             	mov    %ecx,%r8d
ffff800000105835:	89 d1                	mov    %edx,%ecx
ffff800000105837:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010583c:	48 89 fe             	mov    %rdi,%rsi
ffff80000010583f:	48 89 c7             	mov    %rax,%rdi
ffff800000105842:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff800000105849:	ff ff ff 
ffff80000010584c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105850:	ff d0                	call   *%rax
ffff800000105852:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105856:	e9 c5 03 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff80000010585b:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010585f:	75 0b                	jne    ffff80000010586c <vsprintf+0x572>
ffff800000105861:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105868:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010586c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105870:	8b 00                	mov    (%rax),%eax
ffff800000105872:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105875:	77 24                	ja     ffff80000010589b <vsprintf+0x5a1>
ffff800000105877:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010587b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010587f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105883:	8b 00                	mov    (%rax),%eax
ffff800000105885:	89 c0                	mov    %eax,%eax
ffff800000105887:	48 01 d0             	add    %rdx,%rax
ffff80000010588a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010588e:	8b 12                	mov    (%rdx),%edx
ffff800000105890:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105893:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105897:	89 0a                	mov    %ecx,(%rdx)
ffff800000105899:	eb 14                	jmp    ffff8000001058af <vsprintf+0x5b5>
ffff80000010589b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010589f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058a3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058a7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058ab:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058af:	48 8b 00             	mov    (%rax),%rax
ffff8000001058b2:	48 89 c7             	mov    %rax,%rdi
ffff8000001058b5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001058b8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001058bb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001058be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c2:	41 89 f1             	mov    %esi,%r9d
ffff8000001058c5:	41 89 c8             	mov    %ecx,%r8d
ffff8000001058c8:	89 d1                	mov    %edx,%ecx
ffff8000001058ca:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001058cf:	48 89 fe             	mov    %rdi,%rsi
ffff8000001058d2:	48 89 c7             	mov    %rax,%rdi
ffff8000001058d5:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff8000001058dc:	ff ff ff 
ffff8000001058df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058e3:	ff d0                	call   *%rax
ffff8000001058e5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058e9:	e9 32 03 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff8000001058ee:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001058f2:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001058f6:	0f 85 82 00 00 00    	jne    ffff80000010597e <vsprintf+0x684>
ffff8000001058fc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105900:	8b 00                	mov    (%rax),%eax
ffff800000105902:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105905:	77 24                	ja     ffff80000010592b <vsprintf+0x631>
ffff800000105907:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010590b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010590f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105913:	8b 00                	mov    (%rax),%eax
ffff800000105915:	89 c0                	mov    %eax,%eax
ffff800000105917:	48 01 d0             	add    %rdx,%rax
ffff80000010591a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010591e:	8b 12                	mov    (%rdx),%edx
ffff800000105920:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105923:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105927:	89 0a                	mov    %ecx,(%rdx)
ffff800000105929:	eb 14                	jmp    ffff80000010593f <vsprintf+0x645>
ffff80000010592b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010592f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105933:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105937:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010593b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010593f:	48 8b 00             	mov    (%rax),%rax
ffff800000105942:	48 89 c7             	mov    %rax,%rdi
ffff800000105945:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105948:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010594b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010594e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105952:	41 89 f1             	mov    %esi,%r9d
ffff800000105955:	41 89 c8             	mov    %ecx,%r8d
ffff800000105958:	89 d1                	mov    %edx,%ecx
ffff80000010595a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010595f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105962:	48 89 c7             	mov    %rax,%rdi
ffff800000105965:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff80000010596c:	ff ff ff 
ffff80000010596f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105973:	ff d0                	call   *%rax
ffff800000105975:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105979:	e9 a2 02 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff80000010597e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105982:	8b 00                	mov    (%rax),%eax
ffff800000105984:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105987:	77 24                	ja     ffff8000001059ad <vsprintf+0x6b3>
ffff800000105989:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010598d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105991:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105995:	8b 00                	mov    (%rax),%eax
ffff800000105997:	89 c0                	mov    %eax,%eax
ffff800000105999:	48 01 d0             	add    %rdx,%rax
ffff80000010599c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059a0:	8b 12                	mov    (%rdx),%edx
ffff8000001059a2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001059a5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059a9:	89 0a                	mov    %ecx,(%rdx)
ffff8000001059ab:	eb 14                	jmp    ffff8000001059c1 <vsprintf+0x6c7>
ffff8000001059ad:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001059b1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001059b5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001059b9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059bd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001059c1:	8b 00                	mov    (%rax),%eax
ffff8000001059c3:	89 c7                	mov    %eax,%edi
ffff8000001059c5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001059c8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001059cb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001059ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059d2:	41 89 f1             	mov    %esi,%r9d
ffff8000001059d5:	41 89 c8             	mov    %ecx,%r8d
ffff8000001059d8:	89 d1                	mov    %edx,%ecx
ffff8000001059da:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001059df:	48 89 fe             	mov    %rdi,%rsi
ffff8000001059e2:	48 89 c7             	mov    %rax,%rdi
ffff8000001059e5:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff8000001059ec:	ff ff ff 
ffff8000001059ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059f3:	ff d0                	call   *%rax
ffff8000001059f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001059f9:	e9 22 02 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff8000001059fe:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff800000105a02:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105a06:	0f 85 82 00 00 00    	jne    ffff800000105a8e <vsprintf+0x794>
ffff800000105a0c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a10:	8b 00                	mov    (%rax),%eax
ffff800000105a12:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a15:	77 24                	ja     ffff800000105a3b <vsprintf+0x741>
ffff800000105a17:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a1b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105a1f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a23:	8b 00                	mov    (%rax),%eax
ffff800000105a25:	89 c0                	mov    %eax,%eax
ffff800000105a27:	48 01 d0             	add    %rdx,%rax
ffff800000105a2a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a2e:	8b 12                	mov    (%rdx),%edx
ffff800000105a30:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105a33:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a37:	89 0a                	mov    %ecx,(%rdx)
ffff800000105a39:	eb 14                	jmp    ffff800000105a4f <vsprintf+0x755>
ffff800000105a3b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a3f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105a43:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105a47:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a4b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105a4f:	48 8b 00             	mov    (%rax),%rax
ffff800000105a52:	48 89 c7             	mov    %rax,%rdi
ffff800000105a55:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105a58:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105a5b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105a5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a62:	41 89 f1             	mov    %esi,%r9d
ffff800000105a65:	41 89 c8             	mov    %ecx,%r8d
ffff800000105a68:	89 d1                	mov    %edx,%ecx
ffff800000105a6a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105a6f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105a72:	48 89 c7             	mov    %rax,%rdi
ffff800000105a75:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff800000105a7c:	ff ff ff 
ffff800000105a7f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a83:	ff d0                	call   *%rax
ffff800000105a85:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105a89:	e9 92 01 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105a8e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a92:	8b 00                	mov    (%rax),%eax
ffff800000105a94:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a97:	77 24                	ja     ffff800000105abd <vsprintf+0x7c3>
ffff800000105a99:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a9d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105aa1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105aa5:	8b 00                	mov    (%rax),%eax
ffff800000105aa7:	89 c0                	mov    %eax,%eax
ffff800000105aa9:	48 01 d0             	add    %rdx,%rax
ffff800000105aac:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ab0:	8b 12                	mov    (%rdx),%edx
ffff800000105ab2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105ab5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ab9:	89 0a                	mov    %ecx,(%rdx)
ffff800000105abb:	eb 14                	jmp    ffff800000105ad1 <vsprintf+0x7d7>
ffff800000105abd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105ac1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105ac5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105ac9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105acd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105ad1:	8b 00                	mov    (%rax),%eax
ffff800000105ad3:	89 c7                	mov    %eax,%edi
ffff800000105ad5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105ad8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105adb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105ade:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ae2:	41 89 f1             	mov    %esi,%r9d
ffff800000105ae5:	41 89 c8             	mov    %ecx,%r8d
ffff800000105ae8:	89 d1                	mov    %edx,%ecx
ffff800000105aea:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105aef:	48 89 fe             	mov    %rdi,%rsi
ffff800000105af2:	48 89 c7             	mov    %rax,%rdi
ffff800000105af5:	48 b8 ae 5a ff ff ff 	movabs $0xffffffffffff5aae,%rax
ffff800000105afc:	ff ff ff 
ffff800000105aff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b03:	ff d0                	call   *%rax
ffff800000105b05:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b09:	e9 12 01 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105b0e:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105b12:	75 61                	jne    ffff800000105b75 <vsprintf+0x87b>
ffff800000105b14:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b18:	8b 00                	mov    (%rax),%eax
ffff800000105b1a:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b1d:	77 24                	ja     ffff800000105b43 <vsprintf+0x849>
ffff800000105b1f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b23:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b27:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b2b:	8b 00                	mov    (%rax),%eax
ffff800000105b2d:	89 c0                	mov    %eax,%eax
ffff800000105b2f:	48 01 d0             	add    %rdx,%rax
ffff800000105b32:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b36:	8b 12                	mov    (%rdx),%edx
ffff800000105b38:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b3b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b3f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105b41:	eb 14                	jmp    ffff800000105b57 <vsprintf+0x85d>
ffff800000105b43:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b47:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105b4b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105b4f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b53:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105b57:	48 8b 00             	mov    (%rax),%rax
ffff800000105b5a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105b5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b62:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105b66:	48 89 c2             	mov    %rax,%rdx
ffff800000105b69:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105b6d:	48 89 10             	mov    %rdx,(%rax)
ffff800000105b70:	e9 ab 00 00 00       	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105b75:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b79:	8b 00                	mov    (%rax),%eax
ffff800000105b7b:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b7e:	77 24                	ja     ffff800000105ba4 <vsprintf+0x8aa>
ffff800000105b80:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b84:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b88:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b8c:	8b 00                	mov    (%rax),%eax
ffff800000105b8e:	89 c0                	mov    %eax,%eax
ffff800000105b90:	48 01 d0             	add    %rdx,%rax
ffff800000105b93:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b97:	8b 12                	mov    (%rdx),%edx
ffff800000105b99:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b9c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ba0:	89 0a                	mov    %ecx,(%rdx)
ffff800000105ba2:	eb 14                	jmp    ffff800000105bb8 <vsprintf+0x8be>
ffff800000105ba4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105ba8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105bac:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105bb0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105bb4:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105bb8:	48 8b 00             	mov    (%rax),%rax
ffff800000105bbb:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105bbf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bc3:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105bc7:	89 c2                	mov    %eax,%edx
ffff800000105bc9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105bcd:	89 10                	mov    %edx,(%rax)
ffff800000105bcf:	eb 4f                	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105bd1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bd5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105bd9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bdd:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105be0:	eb 3e                	jmp    ffff800000105c20 <vsprintf+0x926>
ffff800000105be2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105be6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105bea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bee:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105bf1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105bf5:	0f b6 00             	movzbl (%rax),%eax
ffff800000105bf8:	84 c0                	test   %al,%al
ffff800000105bfa:	74 17                	je     ffff800000105c13 <vsprintf+0x919>
ffff800000105bfc:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105c00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c04:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105c08:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105c0c:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105c0f:	88 10                	mov    %dl,(%rax)
ffff800000105c11:	eb 0c                	jmp    ffff800000105c1f <vsprintf+0x925>
ffff800000105c13:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c17:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105c1b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c1f:	90                   	nop
ffff800000105c20:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c24:	48 83 c0 01          	add    $0x1,%rax
ffff800000105c28:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c2c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c30:	0f b6 00             	movzbl (%rax),%eax
ffff800000105c33:	84 c0                	test   %al,%al
ffff800000105c35:	0f 85 f9 f6 ff ff    	jne    ffff800000105334 <vsprintf+0x3a>
ffff800000105c3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c3f:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105c42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c46:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105c4a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105c4e:	c9                   	leave
ffff800000105c4f:	c3                   	ret

ffff800000105c50 <set_intr_gate>:
ffff800000105c50:	f3 0f 1e fa          	endbr64
ffff800000105c54:	55                   	push   %rbp
ffff800000105c55:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c58:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105c58 <set_intr_gate+0x8>
ffff800000105c5f:	49 bb 58 99 00 00 00 	movabs $0x9958,%r11
ffff800000105c66:	00 00 00 
ffff800000105c69:	4c 01 d8             	add    %r11,%rax
ffff800000105c6c:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105c6f:	89 f1                	mov    %esi,%ecx
ffff800000105c71:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105c75:	89 ca                	mov    %ecx,%edx
ffff800000105c77:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105c7a:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c7d:	48 89 d1             	mov    %rdx,%rcx
ffff800000105c80:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105c84:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105c8b:	ff ff ff 
ffff800000105c8e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c92:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105c96:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c99:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105c9d:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105ca1:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ca8:	ff ff ff 
ffff800000105cab:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105caf:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105cb3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105cb7:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105cbd:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105cc1:	44 89 c0             	mov    %r8d,%eax
ffff800000105cc4:	66 89 d0             	mov    %dx,%ax
ffff800000105cc7:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105ccb:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105cd2:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105cd6:	48 01 c8             	add    %rcx,%rax
ffff800000105cd9:	48 31 c9             	xor    %rcx,%rcx
ffff800000105cdc:	89 d1                	mov    %edx,%ecx
ffff800000105cde:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105ce2:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105ce6:	48 01 c8             	add    %rcx,%rax
ffff800000105ce9:	48 89 06             	mov    %rax,(%rsi)
ffff800000105cec:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105cf0:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105cf3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105cf7:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105cfb:	90                   	nop
ffff800000105cfc:	5d                   	pop    %rbp
ffff800000105cfd:	c3                   	ret

ffff800000105cfe <set_trap_gate>:
ffff800000105cfe:	f3 0f 1e fa          	endbr64
ffff800000105d02:	55                   	push   %rbp
ffff800000105d03:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d06:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105d06 <set_trap_gate+0x8>
ffff800000105d0d:	49 bb aa 98 00 00 00 	movabs $0x98aa,%r11
ffff800000105d14:	00 00 00 
ffff800000105d17:	4c 01 d8             	add    %r11,%rax
ffff800000105d1a:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105d1d:	89 f1                	mov    %esi,%ecx
ffff800000105d1f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105d23:	89 ca                	mov    %ecx,%edx
ffff800000105d25:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105d28:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d2b:	48 89 d1             	mov    %rdx,%rcx
ffff800000105d2e:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105d32:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d39:	ff ff ff 
ffff800000105d3c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105d40:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105d44:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d47:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105d4b:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105d4f:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d56:	ff ff ff 
ffff800000105d59:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105d5d:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105d61:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105d65:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105d6b:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105d6f:	44 89 c0             	mov    %r8d,%eax
ffff800000105d72:	66 89 d0             	mov    %dx,%ax
ffff800000105d75:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105d79:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105d80:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105d84:	48 01 c8             	add    %rcx,%rax
ffff800000105d87:	48 31 c9             	xor    %rcx,%rcx
ffff800000105d8a:	89 d1                	mov    %edx,%ecx
ffff800000105d8c:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105d90:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105d94:	48 01 c8             	add    %rcx,%rax
ffff800000105d97:	48 89 06             	mov    %rax,(%rsi)
ffff800000105d9a:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105d9e:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105da1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105da5:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105da9:	90                   	nop
ffff800000105daa:	5d                   	pop    %rbp
ffff800000105dab:	c3                   	ret

ffff800000105dac <set_system_gate>:
ffff800000105dac:	f3 0f 1e fa          	endbr64
ffff800000105db0:	55                   	push   %rbp
ffff800000105db1:	48 89 e5             	mov    %rsp,%rbp
ffff800000105db4:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105db4 <set_system_gate+0x8>
ffff800000105dbb:	49 bb fc 97 00 00 00 	movabs $0x97fc,%r11
ffff800000105dc2:	00 00 00 
ffff800000105dc5:	4c 01 d8             	add    %r11,%rax
ffff800000105dc8:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105dcb:	89 f1                	mov    %esi,%ecx
ffff800000105dcd:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105dd1:	89 ca                	mov    %ecx,%edx
ffff800000105dd3:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105dd6:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105dd9:	48 89 d1             	mov    %rdx,%rcx
ffff800000105ddc:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105de0:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105de7:	ff ff ff 
ffff800000105dea:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105dee:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105df2:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105df5:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105df9:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105dfd:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105e04:	ff ff ff 
ffff800000105e07:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105e0b:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105e0f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105e13:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105e19:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105e1d:	44 89 c0             	mov    %r8d,%eax
ffff800000105e20:	66 89 d0             	mov    %dx,%ax
ffff800000105e23:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105e27:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105e2e:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105e32:	48 01 c8             	add    %rcx,%rax
ffff800000105e35:	48 31 c9             	xor    %rcx,%rcx
ffff800000105e38:	89 d1                	mov    %edx,%ecx
ffff800000105e3a:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105e3e:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105e42:	48 01 c8             	add    %rcx,%rax
ffff800000105e45:	48 89 06             	mov    %rax,(%rsi)
ffff800000105e48:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105e4c:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105e4f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105e53:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105e57:	90                   	nop
ffff800000105e58:	5d                   	pop    %rbp
ffff800000105e59:	c3                   	ret
ffff800000105e5a:	f3 0f 1e fa          	endbr64
ffff800000105e5e:	55                   	push   %rbp
ffff800000105e5f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e62:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105e62 <set_system_gate+0xb6>
ffff800000105e69:	49 bb 4e 97 00 00 00 	movabs $0x974e,%r11
ffff800000105e70:	00 00 00 
ffff800000105e73:	4c 01 d8             	add    %r11,%rax
ffff800000105e76:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105e7a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105e7e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105e82:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105e86:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105e8a:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105e8e:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105e95:	ff ff ff 
ffff800000105e98:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105e9c:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105ea0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105ea4:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ea7:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105eae:	ff ff ff 
ffff800000105eb1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105eb5:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105eb9:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105ebd:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ec0:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ec7:	ff ff ff 
ffff800000105eca:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ece:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105ed2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105ed6:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ed9:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ee0:	ff ff ff 
ffff800000105ee3:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ee7:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105eeb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105eef:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ef2:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ef9:	ff ff ff 
ffff800000105efc:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f00:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105f04:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105f08:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f0b:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f12:	ff ff ff 
ffff800000105f15:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f19:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105f1d:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105f21:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f24:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f2b:	ff ff ff 
ffff800000105f2e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f32:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105f36:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105f3a:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f3d:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f44:	ff ff ff 
ffff800000105f47:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f4b:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105f4f:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105f53:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f56:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f5d:	ff ff ff 
ffff800000105f60:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f64:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105f68:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105f6c:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f6f:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f76:	ff ff ff 
ffff800000105f79:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105f7d:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105f81:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105f85:	48 89 10             	mov    %rdx,(%rax)
ffff800000105f88:	90                   	nop
ffff800000105f89:	5d                   	pop    %rbp
ffff800000105f8a:	c3                   	ret

ffff800000105f8b <do_divide_error>:
ffff800000105f8b:	f3 0f 1e fa          	endbr64
ffff800000105f8f:	55                   	push   %rbp
ffff800000105f90:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f93:	41 57                	push   %r15
ffff800000105f95:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f99:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f99 <do_divide_error+0xe>
ffff800000105fa0:	49 bb 17 96 00 00 00 	movabs $0x9617,%r11
ffff800000105fa7:	00 00 00 
ffff800000105faa:	4d 01 da             	add    %r11,%r10
ffff800000105fad:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fb1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fb5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fbc:	00 
ffff800000105fbd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fc1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fc7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fcf:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fd2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fd6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fda:	49 89 c9             	mov    %rcx,%r9
ffff800000105fdd:	49 89 d0             	mov    %rdx,%r8
ffff800000105fe0:	48 89 c1             	mov    %rax,%rcx
ffff800000105fe3:	48 b8 48 9e ff ff ff 	movabs $0xffffffffffff9e48,%rax
ffff800000105fea:	ff ff ff 
ffff800000105fed:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ff1:	48 89 c2             	mov    %rax,%rdx
ffff800000105ff4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105ff9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105ffe:	4d 89 d7             	mov    %r10,%r15
ffff800000106001:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106006:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff80000010600d:	ff ff ff 
ffff800000106010:	4d 01 d3             	add    %r10,%r11
ffff800000106013:	41 ff d3             	call   *%r11
ffff800000106016:	90                   	nop
ffff800000106017:	eb fd                	jmp    ffff800000106016 <do_divide_error+0x8b>

ffff800000106019 <do_debug>:
ffff800000106019:	f3 0f 1e fa          	endbr64
ffff80000010601d:	55                   	push   %rbp
ffff80000010601e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106021:	41 57                	push   %r15
ffff800000106023:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106027:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106027 <do_debug+0xe>
ffff80000010602e:	49 bb 89 95 00 00 00 	movabs $0x9589,%r11
ffff800000106035:	00 00 00 
ffff800000106038:	4d 01 da             	add    %r11,%r10
ffff80000010603b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010603f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106043:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010604a:	00 
ffff80000010604b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010604f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106055:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106059:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010605d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106060:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106064:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106068:	49 89 c9             	mov    %rcx,%r9
ffff80000010606b:	49 89 d0             	mov    %rdx,%r8
ffff80000010606e:	48 89 c1             	mov    %rax,%rcx
ffff800000106071:	48 b8 88 9e ff ff ff 	movabs $0xffffffffffff9e88,%rax
ffff800000106078:	ff ff ff 
ffff80000010607b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010607f:	48 89 c2             	mov    %rax,%rdx
ffff800000106082:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106087:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010608c:	4d 89 d7             	mov    %r10,%r15
ffff80000010608f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106094:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff80000010609b:	ff ff ff 
ffff80000010609e:	4d 01 d3             	add    %r10,%r11
ffff8000001060a1:	41 ff d3             	call   *%r11
ffff8000001060a4:	90                   	nop
ffff8000001060a5:	eb fd                	jmp    ffff8000001060a4 <do_debug+0x8b>

ffff8000001060a7 <do_nmi>:
ffff8000001060a7:	f3 0f 1e fa          	endbr64
ffff8000001060ab:	55                   	push   %rbp
ffff8000001060ac:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060af:	41 57                	push   %r15
ffff8000001060b1:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060b5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060b5 <do_nmi+0xe>
ffff8000001060bc:	49 bb fb 94 00 00 00 	movabs $0x94fb,%r11
ffff8000001060c3:	00 00 00 
ffff8000001060c6:	4d 01 da             	add    %r11,%r10
ffff8000001060c9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060cd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060d1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060d8:	00 
ffff8000001060d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060dd:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060eb:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060ee:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060f2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060f6:	49 89 c9             	mov    %rcx,%r9
ffff8000001060f9:	49 89 d0             	mov    %rdx,%r8
ffff8000001060fc:	48 89 c1             	mov    %rax,%rcx
ffff8000001060ff:	48 b8 c0 9e ff ff ff 	movabs $0xffffffffffff9ec0,%rax
ffff800000106106:	ff ff ff 
ffff800000106109:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010610d:	48 89 c2             	mov    %rax,%rdx
ffff800000106110:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106115:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010611a:	4d 89 d7             	mov    %r10,%r15
ffff80000010611d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106122:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff800000106129:	ff ff ff 
ffff80000010612c:	4d 01 d3             	add    %r10,%r11
ffff80000010612f:	41 ff d3             	call   *%r11
ffff800000106132:	90                   	nop
ffff800000106133:	eb fd                	jmp    ffff800000106132 <do_nmi+0x8b>

ffff800000106135 <do_int3>:
ffff800000106135:	f3 0f 1e fa          	endbr64
ffff800000106139:	55                   	push   %rbp
ffff80000010613a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010613d:	41 57                	push   %r15
ffff80000010613f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106143:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106143 <do_int3+0xe>
ffff80000010614a:	49 bb 6d 94 00 00 00 	movabs $0x946d,%r11
ffff800000106151:	00 00 00 
ffff800000106154:	4d 01 da             	add    %r11,%r10
ffff800000106157:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010615b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010615f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106166:	00 
ffff800000106167:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010616b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106171:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106175:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106179:	48 8b 08             	mov    (%rax),%rcx
ffff80000010617c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106180:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106184:	49 89 c9             	mov    %rcx,%r9
ffff800000106187:	49 89 d0             	mov    %rdx,%r8
ffff80000010618a:	48 89 c1             	mov    %rax,%rcx
ffff80000010618d:	48 b8 f8 9e ff ff ff 	movabs $0xffffffffffff9ef8,%rax
ffff800000106194:	ff ff ff 
ffff800000106197:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010619b:	48 89 c2             	mov    %rax,%rdx
ffff80000010619e:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061a3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061a8:	4d 89 d7             	mov    %r10,%r15
ffff8000001061ab:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061b0:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff8000001061b7:	ff ff ff 
ffff8000001061ba:	4d 01 d3             	add    %r10,%r11
ffff8000001061bd:	41 ff d3             	call   *%r11
ffff8000001061c0:	90                   	nop
ffff8000001061c1:	eb fd                	jmp    ffff8000001061c0 <do_int3+0x8b>

ffff8000001061c3 <do_overflow>:
ffff8000001061c3:	f3 0f 1e fa          	endbr64
ffff8000001061c7:	55                   	push   %rbp
ffff8000001061c8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061cb:	41 57                	push   %r15
ffff8000001061cd:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061d1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001061d1 <do_overflow+0xe>
ffff8000001061d8:	49 bb df 93 00 00 00 	movabs $0x93df,%r11
ffff8000001061df:	00 00 00 
ffff8000001061e2:	4d 01 da             	add    %r11,%r10
ffff8000001061e5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061e9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061ed:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061f4:	00 
ffff8000001061f5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061f9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061ff:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106203:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106207:	48 8b 08             	mov    (%rax),%rcx
ffff80000010620a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010620e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106212:	49 89 c9             	mov    %rcx,%r9
ffff800000106215:	49 89 d0             	mov    %rdx,%r8
ffff800000106218:	48 89 c1             	mov    %rax,%rcx
ffff80000010621b:	48 b8 30 9f ff ff ff 	movabs $0xffffffffffff9f30,%rax
ffff800000106222:	ff ff ff 
ffff800000106225:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106229:	48 89 c2             	mov    %rax,%rdx
ffff80000010622c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106231:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106236:	4d 89 d7             	mov    %r10,%r15
ffff800000106239:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010623e:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff800000106245:	ff ff ff 
ffff800000106248:	4d 01 d3             	add    %r10,%r11
ffff80000010624b:	41 ff d3             	call   *%r11
ffff80000010624e:	90                   	nop
ffff80000010624f:	eb fd                	jmp    ffff80000010624e <do_overflow+0x8b>

ffff800000106251 <do_bounds>:
ffff800000106251:	f3 0f 1e fa          	endbr64
ffff800000106255:	55                   	push   %rbp
ffff800000106256:	48 89 e5             	mov    %rsp,%rbp
ffff800000106259:	41 57                	push   %r15
ffff80000010625b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010625f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010625f <do_bounds+0xe>
ffff800000106266:	49 bb 51 93 00 00 00 	movabs $0x9351,%r11
ffff80000010626d:	00 00 00 
ffff800000106270:	4d 01 da             	add    %r11,%r10
ffff800000106273:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106277:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010627b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106282:	00 
ffff800000106283:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106287:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010628d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106291:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106295:	48 8b 08             	mov    (%rax),%rcx
ffff800000106298:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010629c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062a0:	49 89 c9             	mov    %rcx,%r9
ffff8000001062a3:	49 89 d0             	mov    %rdx,%r8
ffff8000001062a6:	48 89 c1             	mov    %rax,%rcx
ffff8000001062a9:	48 b8 70 9f ff ff ff 	movabs $0xffffffffffff9f70,%rax
ffff8000001062b0:	ff ff ff 
ffff8000001062b3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001062b7:	48 89 c2             	mov    %rax,%rdx
ffff8000001062ba:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062bf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062c4:	4d 89 d7             	mov    %r10,%r15
ffff8000001062c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062cc:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff8000001062d3:	ff ff ff 
ffff8000001062d6:	4d 01 d3             	add    %r10,%r11
ffff8000001062d9:	41 ff d3             	call   *%r11
ffff8000001062dc:	90                   	nop
ffff8000001062dd:	eb fd                	jmp    ffff8000001062dc <do_bounds+0x8b>

ffff8000001062df <do_undefined_opcode>:
ffff8000001062df:	f3 0f 1e fa          	endbr64
ffff8000001062e3:	55                   	push   %rbp
ffff8000001062e4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062e7:	41 57                	push   %r15
ffff8000001062e9:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062ed:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001062ed <do_undefined_opcode+0xe>
ffff8000001062f4:	49 bb c3 92 00 00 00 	movabs $0x92c3,%r11
ffff8000001062fb:	00 00 00 
ffff8000001062fe:	4d 01 da             	add    %r11,%r10
ffff800000106301:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106305:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106309:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106310:	00 
ffff800000106311:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106315:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010631b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010631f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106323:	48 8b 08             	mov    (%rax),%rcx
ffff800000106326:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010632a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010632e:	49 89 c9             	mov    %rcx,%r9
ffff800000106331:	49 89 d0             	mov    %rdx,%r8
ffff800000106334:	48 89 c1             	mov    %rax,%rcx
ffff800000106337:	48 b8 b0 9f ff ff ff 	movabs $0xffffffffffff9fb0,%rax
ffff80000010633e:	ff ff ff 
ffff800000106341:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106345:	48 89 c2             	mov    %rax,%rdx
ffff800000106348:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010634d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106352:	4d 89 d7             	mov    %r10,%r15
ffff800000106355:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010635a:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff800000106361:	ff ff ff 
ffff800000106364:	4d 01 d3             	add    %r10,%r11
ffff800000106367:	41 ff d3             	call   *%r11
ffff80000010636a:	90                   	nop
ffff80000010636b:	eb fd                	jmp    ffff80000010636a <do_undefined_opcode+0x8b>

ffff80000010636d <do_dev_not_available>:
ffff80000010636d:	f3 0f 1e fa          	endbr64
ffff800000106371:	55                   	push   %rbp
ffff800000106372:	48 89 e5             	mov    %rsp,%rbp
ffff800000106375:	41 57                	push   %r15
ffff800000106377:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010637b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010637b <do_dev_not_available+0xe>
ffff800000106382:	49 bb 35 92 00 00 00 	movabs $0x9235,%r11
ffff800000106389:	00 00 00 
ffff80000010638c:	4d 01 da             	add    %r11,%r10
ffff80000010638f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106393:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106397:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010639e:	00 
ffff80000010639f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001063a3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063a9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001063b1:	48 8b 08             	mov    (%rax),%rcx
ffff8000001063b4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063b8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063bc:	49 89 c9             	mov    %rcx,%r9
ffff8000001063bf:	49 89 d0             	mov    %rdx,%r8
ffff8000001063c2:	48 89 c1             	mov    %rax,%rcx
ffff8000001063c5:	48 b8 f8 9f ff ff ff 	movabs $0xffffffffffff9ff8,%rax
ffff8000001063cc:	ff ff ff 
ffff8000001063cf:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001063d3:	48 89 c2             	mov    %rax,%rdx
ffff8000001063d6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063db:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063e0:	4d 89 d7             	mov    %r10,%r15
ffff8000001063e3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063e8:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff8000001063ef:	ff ff ff 
ffff8000001063f2:	4d 01 d3             	add    %r10,%r11
ffff8000001063f5:	41 ff d3             	call   *%r11
ffff8000001063f8:	90                   	nop
ffff8000001063f9:	eb fd                	jmp    ffff8000001063f8 <do_dev_not_available+0x8b>

ffff8000001063fb <do_double_fault>:
ffff8000001063fb:	f3 0f 1e fa          	endbr64
ffff8000001063ff:	55                   	push   %rbp
ffff800000106400:	48 89 e5             	mov    %rsp,%rbp
ffff800000106403:	41 57                	push   %r15
ffff800000106405:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106409:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106409 <do_double_fault+0xe>
ffff800000106410:	49 bb a7 91 00 00 00 	movabs $0x91a7,%r11
ffff800000106417:	00 00 00 
ffff80000010641a:	4d 01 da             	add    %r11,%r10
ffff80000010641d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106421:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106425:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010642c:	00 
ffff80000010642d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106431:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106437:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010643b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010643f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106442:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106446:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010644a:	49 89 c9             	mov    %rcx,%r9
ffff80000010644d:	49 89 d0             	mov    %rdx,%r8
ffff800000106450:	48 89 c1             	mov    %rax,%rcx
ffff800000106453:	48 b8 40 a0 ff ff ff 	movabs $0xffffffffffffa040,%rax
ffff80000010645a:	ff ff ff 
ffff80000010645d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106461:	48 89 c2             	mov    %rax,%rdx
ffff800000106464:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106469:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010646e:	4d 89 d7             	mov    %r10,%r15
ffff800000106471:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106476:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff80000010647d:	ff ff ff 
ffff800000106480:	4d 01 d3             	add    %r10,%r11
ffff800000106483:	41 ff d3             	call   *%r11
ffff800000106486:	90                   	nop
ffff800000106487:	eb fd                	jmp    ffff800000106486 <do_double_fault+0x8b>

ffff800000106489 <do_coprocessor_segment_overrun>:
ffff800000106489:	f3 0f 1e fa          	endbr64
ffff80000010648d:	55                   	push   %rbp
ffff80000010648e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106491:	41 57                	push   %r15
ffff800000106493:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106497:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106497 <do_coprocessor_segment_overrun+0xe>
ffff80000010649e:	49 bb 19 91 00 00 00 	movabs $0x9119,%r11
ffff8000001064a5:	00 00 00 
ffff8000001064a8:	4d 01 da             	add    %r11,%r10
ffff8000001064ab:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064af:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064b3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064ba:	00 
ffff8000001064bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064bf:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064c5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064cd:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064d0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064d4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064d8:	49 89 c9             	mov    %rcx,%r9
ffff8000001064db:	49 89 d0             	mov    %rdx,%r8
ffff8000001064de:	48 89 c1             	mov    %rax,%rcx
ffff8000001064e1:	48 b8 80 a0 ff ff ff 	movabs $0xffffffffffffa080,%rax
ffff8000001064e8:	ff ff ff 
ffff8000001064eb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001064ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001064f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064fc:	4d 89 d7             	mov    %r10,%r15
ffff8000001064ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106504:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff80000010650b:	ff ff ff 
ffff80000010650e:	4d 01 d3             	add    %r10,%r11
ffff800000106511:	41 ff d3             	call   *%r11
ffff800000106514:	90                   	nop
ffff800000106515:	eb fd                	jmp    ffff800000106514 <do_coprocessor_segment_overrun+0x8b>

ffff800000106517 <do_invalid_TSS>:
ffff800000106517:	f3 0f 1e fa          	endbr64
ffff80000010651b:	55                   	push   %rbp
ffff80000010651c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010651f:	41 57                	push   %r15
ffff800000106521:	53                   	push   %rbx
ffff800000106522:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106526:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106526 <do_invalid_TSS+0xf>
ffff80000010652d:	49 bb 8a 90 00 00 00 	movabs $0x908a,%r11
ffff800000106534:	00 00 00 
ffff800000106537:	4c 01 db             	add    %r11,%rbx
ffff80000010653a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010653e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106542:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106549:	00 
ffff80000010654a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010654e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106554:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106558:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010655c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010655f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106563:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106567:	49 89 c9             	mov    %rcx,%r9
ffff80000010656a:	49 89 d0             	mov    %rdx,%r8
ffff80000010656d:	48 89 c1             	mov    %rax,%rcx
ffff800000106570:	48 b8 d0 a0 ff ff ff 	movabs $0xffffffffffffa0d0,%rax
ffff800000106577:	ff ff ff 
ffff80000010657a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010657e:	48 89 c2             	mov    %rax,%rdx
ffff800000106581:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106586:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010658b:	49 89 df             	mov    %rbx,%r15
ffff80000010658e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106593:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff80000010659a:	ff ff ff 
ffff80000010659d:	49 01 da             	add    %rbx,%r10
ffff8000001065a0:	41 ff d2             	call   *%r10
ffff8000001065a3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065a7:	83 e0 01             	and    $0x1,%eax
ffff8000001065aa:	48 85 c0             	test   %rax,%rax
ffff8000001065ad:	74 32                	je     ffff8000001065e1 <do_invalid_TSS+0xca>
ffff8000001065af:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff8000001065b6:	ff ff ff 
ffff8000001065b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065bd:	48 89 c2             	mov    %rax,%rdx
ffff8000001065c0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065c5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065ca:	49 89 df             	mov    %rbx,%r15
ffff8000001065cd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065d2:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001065d9:	ff ff ff 
ffff8000001065dc:	48 01 d9             	add    %rbx,%rcx
ffff8000001065df:	ff d1                	call   *%rcx
ffff8000001065e1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065e5:	83 e0 02             	and    $0x2,%eax
ffff8000001065e8:	48 85 c0             	test   %rax,%rax
ffff8000001065eb:	74 34                	je     ffff800000106621 <do_invalid_TSS+0x10a>
ffff8000001065ed:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff8000001065f4:	ff ff ff 
ffff8000001065f7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065fb:	48 89 c2             	mov    %rax,%rdx
ffff8000001065fe:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106603:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106608:	49 89 df             	mov    %rbx,%r15
ffff80000010660b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106610:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106617:	ff ff ff 
ffff80000010661a:	48 01 d9             	add    %rbx,%rcx
ffff80000010661d:	ff d1                	call   *%rcx
ffff80000010661f:	eb 32                	jmp    ffff800000106653 <do_invalid_TSS+0x13c>
ffff800000106621:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106628:	ff ff ff 
ffff80000010662b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010662f:	48 89 c2             	mov    %rax,%rdx
ffff800000106632:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106637:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010663c:	49 89 df             	mov    %rbx,%r15
ffff80000010663f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106644:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff80000010664b:	ff ff ff 
ffff80000010664e:	48 01 d9             	add    %rbx,%rcx
ffff800000106651:	ff d1                	call   *%rcx
ffff800000106653:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106657:	83 e0 02             	and    $0x2,%eax
ffff80000010665a:	48 85 c0             	test   %rax,%rax
ffff80000010665d:	75 72                	jne    ffff8000001066d1 <do_invalid_TSS+0x1ba>
ffff80000010665f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106663:	83 e0 04             	and    $0x4,%eax
ffff800000106666:	48 85 c0             	test   %rax,%rax
ffff800000106669:	74 34                	je     ffff80000010669f <do_invalid_TSS+0x188>
ffff80000010666b:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106672:	ff ff ff 
ffff800000106675:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106679:	48 89 c2             	mov    %rax,%rdx
ffff80000010667c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106681:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106686:	49 89 df             	mov    %rbx,%r15
ffff800000106689:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010668e:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106695:	ff ff ff 
ffff800000106698:	48 01 d9             	add    %rbx,%rcx
ffff80000010669b:	ff d1                	call   *%rcx
ffff80000010669d:	eb 32                	jmp    ffff8000001066d1 <do_invalid_TSS+0x1ba>
ffff80000010669f:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff8000001066a6:	ff ff ff 
ffff8000001066a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066ad:	48 89 c2             	mov    %rax,%rdx
ffff8000001066b0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066b5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066ba:	49 89 df             	mov    %rbx,%r15
ffff8000001066bd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066c2:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001066c9:	ff ff ff 
ffff8000001066cc:	48 01 d9             	add    %rbx,%rcx
ffff8000001066cf:	ff d1                	call   *%rcx
ffff8000001066d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066d5:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001066da:	48 89 c1             	mov    %rax,%rcx
ffff8000001066dd:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff8000001066e4:	ff ff ff 
ffff8000001066e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001066ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066f3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066f8:	49 89 df             	mov    %rbx,%r15
ffff8000001066fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106700:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000106707:	ff ff ff 
ffff80000010670a:	49 01 d8             	add    %rbx,%r8
ffff80000010670d:	41 ff d0             	call   *%r8
ffff800000106710:	90                   	nop
ffff800000106711:	eb fd                	jmp    ffff800000106710 <do_invalid_TSS+0x1f9>

ffff800000106713 <do_segment_not_present>:
ffff800000106713:	f3 0f 1e fa          	endbr64
ffff800000106717:	55                   	push   %rbp
ffff800000106718:	48 89 e5             	mov    %rsp,%rbp
ffff80000010671b:	41 57                	push   %r15
ffff80000010671d:	53                   	push   %rbx
ffff80000010671e:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106722:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106722 <do_segment_not_present+0xf>
ffff800000106729:	49 bb 8e 8e 00 00 00 	movabs $0x8e8e,%r11
ffff800000106730:	00 00 00 
ffff800000106733:	4c 01 db             	add    %r11,%rbx
ffff800000106736:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010673a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010673e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106745:	00 
ffff800000106746:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010674a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106750:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106754:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106758:	48 8b 08             	mov    (%rax),%rcx
ffff80000010675b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010675f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106763:	49 89 c9             	mov    %rcx,%r9
ffff800000106766:	49 89 d0             	mov    %rdx,%r8
ffff800000106769:	48 89 c1             	mov    %rax,%rcx
ffff80000010676c:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106773:	ff ff ff 
ffff800000106776:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010677a:	48 89 c2             	mov    %rax,%rdx
ffff80000010677d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106782:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106787:	49 89 df             	mov    %rbx,%r15
ffff80000010678a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010678f:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000106796:	ff ff ff 
ffff800000106799:	49 01 da             	add    %rbx,%r10
ffff80000010679c:	41 ff d2             	call   *%r10
ffff80000010679f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067a3:	83 e0 01             	and    $0x1,%eax
ffff8000001067a6:	48 85 c0             	test   %rax,%rax
ffff8000001067a9:	74 32                	je     ffff8000001067dd <do_segment_not_present+0xca>
ffff8000001067ab:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff8000001067b2:	ff ff ff 
ffff8000001067b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067b9:	48 89 c2             	mov    %rax,%rdx
ffff8000001067bc:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067c1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067c6:	49 89 df             	mov    %rbx,%r15
ffff8000001067c9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067ce:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001067d5:	ff ff ff 
ffff8000001067d8:	48 01 d9             	add    %rbx,%rcx
ffff8000001067db:	ff d1                	call   *%rcx
ffff8000001067dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067e1:	83 e0 02             	and    $0x2,%eax
ffff8000001067e4:	48 85 c0             	test   %rax,%rax
ffff8000001067e7:	74 34                	je     ffff80000010681d <do_segment_not_present+0x10a>
ffff8000001067e9:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff8000001067f0:	ff ff ff 
ffff8000001067f3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067f7:	48 89 c2             	mov    %rax,%rdx
ffff8000001067fa:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067ff:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106804:	49 89 df             	mov    %rbx,%r15
ffff800000106807:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010680c:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106813:	ff ff ff 
ffff800000106816:	48 01 d9             	add    %rbx,%rcx
ffff800000106819:	ff d1                	call   *%rcx
ffff80000010681b:	eb 32                	jmp    ffff80000010684f <do_segment_not_present+0x13c>
ffff80000010681d:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106824:	ff ff ff 
ffff800000106827:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010682b:	48 89 c2             	mov    %rax,%rdx
ffff80000010682e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106833:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106838:	49 89 df             	mov    %rbx,%r15
ffff80000010683b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106840:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106847:	ff ff ff 
ffff80000010684a:	48 01 d9             	add    %rbx,%rcx
ffff80000010684d:	ff d1                	call   *%rcx
ffff80000010684f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106853:	83 e0 02             	and    $0x2,%eax
ffff800000106856:	48 85 c0             	test   %rax,%rax
ffff800000106859:	75 72                	jne    ffff8000001068cd <do_segment_not_present+0x1ba>
ffff80000010685b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010685f:	83 e0 04             	and    $0x4,%eax
ffff800000106862:	48 85 c0             	test   %rax,%rax
ffff800000106865:	74 34                	je     ffff80000010689b <do_segment_not_present+0x188>
ffff800000106867:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff80000010686e:	ff ff ff 
ffff800000106871:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106875:	48 89 c2             	mov    %rax,%rdx
ffff800000106878:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010687d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106882:	49 89 df             	mov    %rbx,%r15
ffff800000106885:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010688a:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106891:	ff ff ff 
ffff800000106894:	48 01 d9             	add    %rbx,%rcx
ffff800000106897:	ff d1                	call   *%rcx
ffff800000106899:	eb 32                	jmp    ffff8000001068cd <do_segment_not_present+0x1ba>
ffff80000010689b:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff8000001068a2:	ff ff ff 
ffff8000001068a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001068ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068b1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068b6:	49 89 df             	mov    %rbx,%r15
ffff8000001068b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068be:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001068c5:	ff ff ff 
ffff8000001068c8:	48 01 d9             	add    %rbx,%rcx
ffff8000001068cb:	ff d1                	call   *%rcx
ffff8000001068cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068d1:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001068d6:	48 89 c1             	mov    %rax,%rcx
ffff8000001068d9:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff8000001068e0:	ff ff ff 
ffff8000001068e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001068ea:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068ef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068f4:	49 89 df             	mov    %rbx,%r15
ffff8000001068f7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068fc:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000106903:	ff ff ff 
ffff800000106906:	49 01 d8             	add    %rbx,%r8
ffff800000106909:	41 ff d0             	call   *%r8
ffff80000010690c:	90                   	nop
ffff80000010690d:	eb fd                	jmp    ffff80000010690c <do_segment_not_present+0x1f9>

ffff80000010690f <do_stack_segment_fault>:
ffff80000010690f:	f3 0f 1e fa          	endbr64
ffff800000106913:	55                   	push   %rbp
ffff800000106914:	48 89 e5             	mov    %rsp,%rbp
ffff800000106917:	41 57                	push   %r15
ffff800000106919:	53                   	push   %rbx
ffff80000010691a:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010691e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010691e <do_stack_segment_fault+0xf>
ffff800000106925:	49 bb 92 8c 00 00 00 	movabs $0x8c92,%r11
ffff80000010692c:	00 00 00 
ffff80000010692f:	4c 01 db             	add    %r11,%rbx
ffff800000106932:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106936:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010693a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106941:	00 
ffff800000106942:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106946:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010694c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106950:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106954:	48 8b 08             	mov    (%rax),%rcx
ffff800000106957:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010695b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010695f:	49 89 c9             	mov    %rcx,%r9
ffff800000106962:	49 89 d0             	mov    %rdx,%r8
ffff800000106965:	48 89 c1             	mov    %rax,%rcx
ffff800000106968:	48 b8 c8 a2 ff ff ff 	movabs $0xffffffffffffa2c8,%rax
ffff80000010696f:	ff ff ff 
ffff800000106972:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106976:	48 89 c2             	mov    %rax,%rdx
ffff800000106979:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010697e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106983:	49 89 df             	mov    %rbx,%r15
ffff800000106986:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010698b:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000106992:	ff ff ff 
ffff800000106995:	49 01 da             	add    %rbx,%r10
ffff800000106998:	41 ff d2             	call   *%r10
ffff80000010699b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010699f:	83 e0 01             	and    $0x1,%eax
ffff8000001069a2:	48 85 c0             	test   %rax,%rax
ffff8000001069a5:	74 32                	je     ffff8000001069d9 <do_stack_segment_fault+0xca>
ffff8000001069a7:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff8000001069ae:	ff ff ff 
ffff8000001069b1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069b5:	48 89 c2             	mov    %rax,%rdx
ffff8000001069b8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069bd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069c2:	49 89 df             	mov    %rbx,%r15
ffff8000001069c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069ca:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff8000001069d1:	ff ff ff 
ffff8000001069d4:	48 01 d9             	add    %rbx,%rcx
ffff8000001069d7:	ff d1                	call   *%rcx
ffff8000001069d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069dd:	83 e0 02             	and    $0x2,%eax
ffff8000001069e0:	48 85 c0             	test   %rax,%rax
ffff8000001069e3:	74 34                	je     ffff800000106a19 <do_stack_segment_fault+0x10a>
ffff8000001069e5:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff8000001069ec:	ff ff ff 
ffff8000001069ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069f3:	48 89 c2             	mov    %rax,%rdx
ffff8000001069f6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069fb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a00:	49 89 df             	mov    %rbx,%r15
ffff800000106a03:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a08:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106a0f:	ff ff ff 
ffff800000106a12:	48 01 d9             	add    %rbx,%rcx
ffff800000106a15:	ff d1                	call   *%rcx
ffff800000106a17:	eb 32                	jmp    ffff800000106a4b <do_stack_segment_fault+0x13c>
ffff800000106a19:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106a20:	ff ff ff 
ffff800000106a23:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a27:	48 89 c2             	mov    %rax,%rdx
ffff800000106a2a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a2f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a34:	49 89 df             	mov    %rbx,%r15
ffff800000106a37:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a3c:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106a43:	ff ff ff 
ffff800000106a46:	48 01 d9             	add    %rbx,%rcx
ffff800000106a49:	ff d1                	call   *%rcx
ffff800000106a4b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a4f:	83 e0 02             	and    $0x2,%eax
ffff800000106a52:	48 85 c0             	test   %rax,%rax
ffff800000106a55:	75 72                	jne    ffff800000106ac9 <do_stack_segment_fault+0x1ba>
ffff800000106a57:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a5b:	83 e0 04             	and    $0x4,%eax
ffff800000106a5e:	48 85 c0             	test   %rax,%rax
ffff800000106a61:	74 34                	je     ffff800000106a97 <do_stack_segment_fault+0x188>
ffff800000106a63:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106a6a:	ff ff ff 
ffff800000106a6d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a71:	48 89 c2             	mov    %rax,%rdx
ffff800000106a74:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a79:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a7e:	49 89 df             	mov    %rbx,%r15
ffff800000106a81:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a86:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106a8d:	ff ff ff 
ffff800000106a90:	48 01 d9             	add    %rbx,%rcx
ffff800000106a93:	ff d1                	call   *%rcx
ffff800000106a95:	eb 32                	jmp    ffff800000106ac9 <do_stack_segment_fault+0x1ba>
ffff800000106a97:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff800000106a9e:	ff ff ff 
ffff800000106aa1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106aa5:	48 89 c2             	mov    %rax,%rdx
ffff800000106aa8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ab2:	49 89 df             	mov    %rbx,%r15
ffff800000106ab5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106aba:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106ac1:	ff ff ff 
ffff800000106ac4:	48 01 d9             	add    %rbx,%rcx
ffff800000106ac7:	ff d1                	call   *%rcx
ffff800000106ac9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106acd:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106ad2:	48 89 c1             	mov    %rax,%rcx
ffff800000106ad5:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff800000106adc:	ff ff ff 
ffff800000106adf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ae3:	48 89 c2             	mov    %rax,%rdx
ffff800000106ae6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aeb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106af0:	49 89 df             	mov    %rbx,%r15
ffff800000106af3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106af8:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000106aff:	ff ff ff 
ffff800000106b02:	49 01 d8             	add    %rbx,%r8
ffff800000106b05:	41 ff d0             	call   *%r8
ffff800000106b08:	90                   	nop
ffff800000106b09:	eb fd                	jmp    ffff800000106b08 <do_stack_segment_fault+0x1f9>

ffff800000106b0b <do_general_protection>:
ffff800000106b0b:	f3 0f 1e fa          	endbr64
ffff800000106b0f:	55                   	push   %rbp
ffff800000106b10:	48 89 e5             	mov    %rsp,%rbp
ffff800000106b13:	41 57                	push   %r15
ffff800000106b15:	53                   	push   %rbx
ffff800000106b16:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106b1a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106b1a <do_general_protection+0xf>
ffff800000106b21:	49 bb 96 8a 00 00 00 	movabs $0x8a96,%r11
ffff800000106b28:	00 00 00 
ffff800000106b2b:	4c 01 db             	add    %r11,%rbx
ffff800000106b2e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106b32:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106b36:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106b3d:	00 
ffff800000106b3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b42:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106b48:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b50:	48 8b 08             	mov    (%rax),%rcx
ffff800000106b53:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b57:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b5b:	49 89 c9             	mov    %rcx,%r9
ffff800000106b5e:	49 89 d0             	mov    %rdx,%r8
ffff800000106b61:	48 89 c1             	mov    %rax,%rcx
ffff800000106b64:	48 b8 10 a3 ff ff ff 	movabs $0xffffffffffffa310,%rax
ffff800000106b6b:	ff ff ff 
ffff800000106b6e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b72:	48 89 c2             	mov    %rax,%rdx
ffff800000106b75:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b7a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b7f:	49 89 df             	mov    %rbx,%r15
ffff800000106b82:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b87:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000106b8e:	ff ff ff 
ffff800000106b91:	49 01 da             	add    %rbx,%r10
ffff800000106b94:	41 ff d2             	call   *%r10
ffff800000106b97:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b9b:	83 e0 01             	and    $0x1,%eax
ffff800000106b9e:	48 85 c0             	test   %rax,%rax
ffff800000106ba1:	74 32                	je     ffff800000106bd5 <do_general_protection+0xca>
ffff800000106ba3:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff800000106baa:	ff ff ff 
ffff800000106bad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bb1:	48 89 c2             	mov    %rax,%rdx
ffff800000106bb4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bb9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bbe:	49 89 df             	mov    %rbx,%r15
ffff800000106bc1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bc6:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106bcd:	ff ff ff 
ffff800000106bd0:	48 01 d9             	add    %rbx,%rcx
ffff800000106bd3:	ff d1                	call   *%rcx
ffff800000106bd5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bd9:	83 e0 02             	and    $0x2,%eax
ffff800000106bdc:	48 85 c0             	test   %rax,%rax
ffff800000106bdf:	74 34                	je     ffff800000106c15 <do_general_protection+0x10a>
ffff800000106be1:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff800000106be8:	ff ff ff 
ffff800000106beb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bef:	48 89 c2             	mov    %rax,%rdx
ffff800000106bf2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bf7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bfc:	49 89 df             	mov    %rbx,%r15
ffff800000106bff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c04:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106c0b:	ff ff ff 
ffff800000106c0e:	48 01 d9             	add    %rbx,%rcx
ffff800000106c11:	ff d1                	call   *%rcx
ffff800000106c13:	eb 32                	jmp    ffff800000106c47 <do_general_protection+0x13c>
ffff800000106c15:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106c1c:	ff ff ff 
ffff800000106c1f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c23:	48 89 c2             	mov    %rax,%rdx
ffff800000106c26:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c2b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c30:	49 89 df             	mov    %rbx,%r15
ffff800000106c33:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c38:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106c3f:	ff ff ff 
ffff800000106c42:	48 01 d9             	add    %rbx,%rcx
ffff800000106c45:	ff d1                	call   *%rcx
ffff800000106c47:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c4b:	83 e0 02             	and    $0x2,%eax
ffff800000106c4e:	48 85 c0             	test   %rax,%rax
ffff800000106c51:	75 72                	jne    ffff800000106cc5 <do_general_protection+0x1ba>
ffff800000106c53:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c57:	83 e0 04             	and    $0x4,%eax
ffff800000106c5a:	48 85 c0             	test   %rax,%rax
ffff800000106c5d:	74 34                	je     ffff800000106c93 <do_general_protection+0x188>
ffff800000106c5f:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106c66:	ff ff ff 
ffff800000106c69:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c6d:	48 89 c2             	mov    %rax,%rdx
ffff800000106c70:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c75:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c7a:	49 89 df             	mov    %rbx,%r15
ffff800000106c7d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c82:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106c89:	ff ff ff 
ffff800000106c8c:	48 01 d9             	add    %rbx,%rcx
ffff800000106c8f:	ff d1                	call   *%rcx
ffff800000106c91:	eb 32                	jmp    ffff800000106cc5 <do_general_protection+0x1ba>
ffff800000106c93:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff800000106c9a:	ff ff ff 
ffff800000106c9d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ca1:	48 89 c2             	mov    %rax,%rdx
ffff800000106ca4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ca9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cae:	49 89 df             	mov    %rbx,%r15
ffff800000106cb1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cb6:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106cbd:	ff ff ff 
ffff800000106cc0:	48 01 d9             	add    %rbx,%rcx
ffff800000106cc3:	ff d1                	call   *%rcx
ffff800000106cc5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cc9:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106cce:	48 89 c1             	mov    %rax,%rcx
ffff800000106cd1:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff800000106cd8:	ff ff ff 
ffff800000106cdb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cdf:	48 89 c2             	mov    %rax,%rdx
ffff800000106ce2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ce7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cec:	49 89 df             	mov    %rbx,%r15
ffff800000106cef:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cf4:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000106cfb:	ff ff ff 
ffff800000106cfe:	49 01 d8             	add    %rbx,%r8
ffff800000106d01:	41 ff d0             	call   *%r8
ffff800000106d04:	90                   	nop
ffff800000106d05:	eb fd                	jmp    ffff800000106d04 <do_general_protection+0x1f9>

ffff800000106d07 <do_page_fault>:
ffff800000106d07:	f3 0f 1e fa          	endbr64
ffff800000106d0b:	55                   	push   %rbp
ffff800000106d0c:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d0f:	41 57                	push   %r15
ffff800000106d11:	53                   	push   %rbx
ffff800000106d12:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106d16:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106d16 <do_page_fault+0xf>
ffff800000106d1d:	49 bb 9a 88 00 00 00 	movabs $0x889a,%r11
ffff800000106d24:	00 00 00 
ffff800000106d27:	4c 01 db             	add    %r11,%rbx
ffff800000106d2a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d2e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d32:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d39:	00 
ffff800000106d3a:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106d41:	00 
ffff800000106d42:	0f 20 d0             	mov    %cr2,%rax
ffff800000106d45:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106d49:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d4d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d53:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d5b:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d5e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d62:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d66:	49 89 c9             	mov    %rcx,%r9
ffff800000106d69:	49 89 d0             	mov    %rdx,%r8
ffff800000106d6c:	48 89 c1             	mov    %rax,%rcx
ffff800000106d6f:	48 b8 58 a3 ff ff ff 	movabs $0xffffffffffffa358,%rax
ffff800000106d76:	ff ff ff 
ffff800000106d79:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d7d:	48 89 c2             	mov    %rax,%rdx
ffff800000106d80:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d85:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d8a:	49 89 df             	mov    %rbx,%r15
ffff800000106d8d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d92:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000106d99:	ff ff ff 
ffff800000106d9c:	49 01 da             	add    %rbx,%r10
ffff800000106d9f:	41 ff d2             	call   *%r10
ffff800000106da2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106da6:	83 e0 01             	and    $0x1,%eax
ffff800000106da9:	48 85 c0             	test   %rax,%rax
ffff800000106dac:	75 32                	jne    ffff800000106de0 <do_page_fault+0xd9>
ffff800000106dae:	48 b8 96 a3 ff ff ff 	movabs $0xffffffffffffa396,%rax
ffff800000106db5:	ff ff ff 
ffff800000106db8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106dbc:	48 89 c2             	mov    %rax,%rdx
ffff800000106dbf:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106dc4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dc9:	49 89 df             	mov    %rbx,%r15
ffff800000106dcc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dd1:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106dd8:	ff ff ff 
ffff800000106ddb:	48 01 d9             	add    %rbx,%rcx
ffff800000106dde:	ff d1                	call   *%rcx
ffff800000106de0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106de4:	83 e0 02             	and    $0x2,%eax
ffff800000106de7:	48 85 c0             	test   %rax,%rax
ffff800000106dea:	74 34                	je     ffff800000106e20 <do_page_fault+0x119>
ffff800000106dec:	48 b8 a9 a3 ff ff ff 	movabs $0xffffffffffffa3a9,%rax
ffff800000106df3:	ff ff ff 
ffff800000106df6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106dfa:	48 89 c2             	mov    %rax,%rdx
ffff800000106dfd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e02:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e07:	49 89 df             	mov    %rbx,%r15
ffff800000106e0a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e0f:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106e16:	ff ff ff 
ffff800000106e19:	48 01 d9             	add    %rbx,%rcx
ffff800000106e1c:	ff d1                	call   *%rcx
ffff800000106e1e:	eb 32                	jmp    ffff800000106e52 <do_page_fault+0x14b>
ffff800000106e20:	48 b8 bd a3 ff ff ff 	movabs $0xffffffffffffa3bd,%rax
ffff800000106e27:	ff ff ff 
ffff800000106e2a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e2e:	48 89 c2             	mov    %rax,%rdx
ffff800000106e31:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e36:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e3b:	49 89 df             	mov    %rbx,%r15
ffff800000106e3e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e43:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106e4a:	ff ff ff 
ffff800000106e4d:	48 01 d9             	add    %rbx,%rcx
ffff800000106e50:	ff d1                	call   *%rcx
ffff800000106e52:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e56:	83 e0 04             	and    $0x4,%eax
ffff800000106e59:	48 85 c0             	test   %rax,%rax
ffff800000106e5c:	74 34                	je     ffff800000106e92 <do_page_fault+0x18b>
ffff800000106e5e:	48 b8 d0 a3 ff ff ff 	movabs $0xffffffffffffa3d0,%rax
ffff800000106e65:	ff ff ff 
ffff800000106e68:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e6c:	48 89 c2             	mov    %rax,%rdx
ffff800000106e6f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e74:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e79:	49 89 df             	mov    %rbx,%r15
ffff800000106e7c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e81:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106e88:	ff ff ff 
ffff800000106e8b:	48 01 d9             	add    %rbx,%rcx
ffff800000106e8e:	ff d1                	call   *%rcx
ffff800000106e90:	eb 32                	jmp    ffff800000106ec4 <do_page_fault+0x1bd>
ffff800000106e92:	48 b8 e2 a3 ff ff ff 	movabs $0xffffffffffffa3e2,%rax
ffff800000106e99:	ff ff ff 
ffff800000106e9c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ea0:	48 89 c2             	mov    %rax,%rdx
ffff800000106ea3:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ea8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ead:	49 89 df             	mov    %rbx,%r15
ffff800000106eb0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eb5:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106ebc:	ff ff ff 
ffff800000106ebf:	48 01 d9             	add    %rbx,%rcx
ffff800000106ec2:	ff d1                	call   *%rcx
ffff800000106ec4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ec8:	83 e0 08             	and    $0x8,%eax
ffff800000106ecb:	48 85 c0             	test   %rax,%rax
ffff800000106ece:	74 32                	je     ffff800000106f02 <do_page_fault+0x1fb>
ffff800000106ed0:	48 b8 fe a3 ff ff ff 	movabs $0xffffffffffffa3fe,%rax
ffff800000106ed7:	ff ff ff 
ffff800000106eda:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ede:	48 89 c2             	mov    %rax,%rdx
ffff800000106ee1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ee6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106eeb:	49 89 df             	mov    %rbx,%r15
ffff800000106eee:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ef3:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106efa:	ff ff ff 
ffff800000106efd:	48 01 d9             	add    %rbx,%rcx
ffff800000106f00:	ff d1                	call   *%rcx
ffff800000106f02:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f06:	83 e0 10             	and    $0x10,%eax
ffff800000106f09:	48 85 c0             	test   %rax,%rax
ffff800000106f0c:	74 32                	je     ffff800000106f40 <do_page_fault+0x239>
ffff800000106f0e:	48 b8 20 a4 ff ff ff 	movabs $0xffffffffffffa420,%rax
ffff800000106f15:	ff ff ff 
ffff800000106f18:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f1c:	48 89 c2             	mov    %rax,%rdx
ffff800000106f1f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f24:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f29:	49 89 df             	mov    %rbx,%r15
ffff800000106f2c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f31:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106f38:	ff ff ff 
ffff800000106f3b:	48 01 d9             	add    %rbx,%rcx
ffff800000106f3e:	ff d1                	call   *%rcx
ffff800000106f40:	48 b8 3f a4 ff ff ff 	movabs $0xffffffffffffa43f,%rax
ffff800000106f47:	ff ff ff 
ffff800000106f4a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f4e:	48 89 c2             	mov    %rax,%rdx
ffff800000106f51:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f56:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f5b:	49 89 df             	mov    %rbx,%r15
ffff800000106f5e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f63:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000106f6a:	ff ff ff 
ffff800000106f6d:	48 01 d9             	add    %rbx,%rcx
ffff800000106f70:	ff d1                	call   *%rcx
ffff800000106f72:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106f76:	48 89 c1             	mov    %rax,%rcx
ffff800000106f79:	48 b8 41 a4 ff ff ff 	movabs $0xffffffffffffa441,%rax
ffff800000106f80:	ff ff ff 
ffff800000106f83:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f87:	48 89 c2             	mov    %rax,%rdx
ffff800000106f8a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f8f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f94:	49 89 df             	mov    %rbx,%r15
ffff800000106f97:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f9c:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000106fa3:	ff ff ff 
ffff800000106fa6:	49 01 d8             	add    %rbx,%r8
ffff800000106fa9:	41 ff d0             	call   *%r8
ffff800000106fac:	90                   	nop
ffff800000106fad:	eb fd                	jmp    ffff800000106fac <do_page_fault+0x2a5>

ffff800000106faf <do_x87_FPU_error>:
ffff800000106faf:	f3 0f 1e fa          	endbr64
ffff800000106fb3:	55                   	push   %rbp
ffff800000106fb4:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fb7:	41 57                	push   %r15
ffff800000106fb9:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106fbd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106fbd <do_x87_FPU_error+0xe>
ffff800000106fc4:	49 bb f3 85 00 00 00 	movabs $0x85f3,%r11
ffff800000106fcb:	00 00 00 
ffff800000106fce:	4d 01 da             	add    %r11,%r10
ffff800000106fd1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106fd5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106fd9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fe0:	00 
ffff800000106fe1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106fe5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106feb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106fef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ff3:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ff6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ffa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ffe:	49 89 c9             	mov    %rcx,%r9
ffff800000107001:	49 89 d0             	mov    %rdx,%r8
ffff800000107004:	48 89 c1             	mov    %rax,%rcx
ffff800000107007:	48 b8 50 a4 ff ff ff 	movabs $0xffffffffffffa450,%rax
ffff80000010700e:	ff ff ff 
ffff800000107011:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107015:	48 89 c2             	mov    %rax,%rdx
ffff800000107018:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010701d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000107022:	4d 89 d7             	mov    %r10,%r15
ffff800000107025:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010702a:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff800000107031:	ff ff ff 
ffff800000107034:	4d 01 d3             	add    %r10,%r11
ffff800000107037:	41 ff d3             	call   *%r11
ffff80000010703a:	90                   	nop
ffff80000010703b:	eb fd                	jmp    ffff80000010703a <do_x87_FPU_error+0x8b>

ffff80000010703d <do_alignment_check>:
ffff80000010703d:	f3 0f 1e fa          	endbr64
ffff800000107041:	55                   	push   %rbp
ffff800000107042:	48 89 e5             	mov    %rsp,%rbp
ffff800000107045:	41 57                	push   %r15
ffff800000107047:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010704b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010704b <do_alignment_check+0xe>
ffff800000107052:	49 bb 65 85 00 00 00 	movabs $0x8565,%r11
ffff800000107059:	00 00 00 
ffff80000010705c:	4d 01 da             	add    %r11,%r10
ffff80000010705f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107063:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107067:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010706e:	00 
ffff80000010706f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107073:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107079:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010707d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107081:	48 8b 08             	mov    (%rax),%rcx
ffff800000107084:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107088:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010708c:	49 89 c9             	mov    %rcx,%r9
ffff80000010708f:	49 89 d0             	mov    %rdx,%r8
ffff800000107092:	48 89 c1             	mov    %rax,%rcx
ffff800000107095:	48 b8 98 a4 ff ff ff 	movabs $0xffffffffffffa498,%rax
ffff80000010709c:	ff ff ff 
ffff80000010709f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001070a3:	48 89 c2             	mov    %rax,%rdx
ffff8000001070a6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001070ab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001070b0:	4d 89 d7             	mov    %r10,%r15
ffff8000001070b3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001070b8:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff8000001070bf:	ff ff ff 
ffff8000001070c2:	4d 01 d3             	add    %r10,%r11
ffff8000001070c5:	41 ff d3             	call   *%r11
ffff8000001070c8:	90                   	nop
ffff8000001070c9:	eb fd                	jmp    ffff8000001070c8 <do_alignment_check+0x8b>

ffff8000001070cb <do_machine_check>:
ffff8000001070cb:	f3 0f 1e fa          	endbr64
ffff8000001070cf:	55                   	push   %rbp
ffff8000001070d0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001070d3:	41 57                	push   %r15
ffff8000001070d5:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001070d9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001070d9 <do_machine_check+0xe>
ffff8000001070e0:	49 bb d7 84 00 00 00 	movabs $0x84d7,%r11
ffff8000001070e7:	00 00 00 
ffff8000001070ea:	4d 01 da             	add    %r11,%r10
ffff8000001070ed:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001070f1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001070f5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001070fc:	00 
ffff8000001070fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107101:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107107:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010710b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010710f:	48 8b 08             	mov    (%rax),%rcx
ffff800000107112:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107116:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010711a:	49 89 c9             	mov    %rcx,%r9
ffff80000010711d:	49 89 d0             	mov    %rdx,%r8
ffff800000107120:	48 89 c1             	mov    %rax,%rcx
ffff800000107123:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff80000010712a:	ff ff ff 
ffff80000010712d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107131:	48 89 c2             	mov    %rax,%rdx
ffff800000107134:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107139:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010713e:	4d 89 d7             	mov    %r10,%r15
ffff800000107141:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107146:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff80000010714d:	ff ff ff 
ffff800000107150:	4d 01 d3             	add    %r10,%r11
ffff800000107153:	41 ff d3             	call   *%r11
ffff800000107156:	90                   	nop
ffff800000107157:	eb fd                	jmp    ffff800000107156 <do_machine_check+0x8b>

ffff800000107159 <do_SIMD_exception>:
ffff800000107159:	f3 0f 1e fa          	endbr64
ffff80000010715d:	55                   	push   %rbp
ffff80000010715e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107161:	41 57                	push   %r15
ffff800000107163:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107167:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000107167 <do_SIMD_exception+0xe>
ffff80000010716e:	49 bb 49 84 00 00 00 	movabs $0x8449,%r11
ffff800000107175:	00 00 00 
ffff800000107178:	4d 01 da             	add    %r11,%r10
ffff80000010717b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010717f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107183:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010718a:	00 
ffff80000010718b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010718f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107195:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107199:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010719d:	48 8b 08             	mov    (%rax),%rcx
ffff8000001071a0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001071a4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001071a8:	49 89 c9             	mov    %rcx,%r9
ffff8000001071ab:	49 89 d0             	mov    %rdx,%r8
ffff8000001071ae:	48 89 c1             	mov    %rax,%rcx
ffff8000001071b1:	48 b8 28 a5 ff ff ff 	movabs $0xffffffffffffa528,%rax
ffff8000001071b8:	ff ff ff 
ffff8000001071bb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001071bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001071c2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001071c7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001071cc:	4d 89 d7             	mov    %r10,%r15
ffff8000001071cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001071d4:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff8000001071db:	ff ff ff 
ffff8000001071de:	4d 01 d3             	add    %r10,%r11
ffff8000001071e1:	41 ff d3             	call   *%r11
ffff8000001071e4:	90                   	nop
ffff8000001071e5:	eb fd                	jmp    ffff8000001071e4 <do_SIMD_exception+0x8b>

ffff8000001071e7 <do_virtualization_exception>:
ffff8000001071e7:	f3 0f 1e fa          	endbr64
ffff8000001071eb:	55                   	push   %rbp
ffff8000001071ec:	48 89 e5             	mov    %rsp,%rbp
ffff8000001071ef:	41 57                	push   %r15
ffff8000001071f1:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001071f5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001071f5 <do_virtualization_exception+0xe>
ffff8000001071fc:	49 bb bb 83 00 00 00 	movabs $0x83bb,%r11
ffff800000107203:	00 00 00 
ffff800000107206:	4d 01 da             	add    %r11,%r10
ffff800000107209:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010720d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107211:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107218:	00 
ffff800000107219:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010721d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107223:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107227:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010722b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010722e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107232:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107236:	49 89 c9             	mov    %rcx,%r9
ffff800000107239:	49 89 d0             	mov    %rdx,%r8
ffff80000010723c:	48 89 c1             	mov    %rax,%rcx
ffff80000010723f:	48 b8 70 a5 ff ff ff 	movabs $0xffffffffffffa570,%rax
ffff800000107246:	ff ff ff 
ffff800000107249:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010724d:	48 89 c2             	mov    %rax,%rdx
ffff800000107250:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107255:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010725a:	4d 89 d7             	mov    %r10,%r15
ffff80000010725d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107262:	49 bb ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r11
ffff800000107269:	ff ff ff 
ffff80000010726c:	4d 01 d3             	add    %r10,%r11
ffff80000010726f:	41 ff d3             	call   *%r11
ffff800000107272:	90                   	nop
ffff800000107273:	eb fd                	jmp    ffff800000107272 <do_virtualization_exception+0x8b>

ffff800000107275 <sys_vector_init>:
ffff800000107275:	f3 0f 1e fa          	endbr64
ffff800000107279:	55                   	push   %rbp
ffff80000010727a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010727d:	53                   	push   %rbx
ffff80000010727e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010727e <sys_vector_init+0x9>
ffff800000107285:	49 bb 32 83 00 00 00 	movabs $0x8332,%r11
ffff80000010728c:	00 00 00 
ffff80000010728f:	4c 01 db             	add    %r11,%rbx
ffff800000107292:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff800000107299:	ff ff ff 
ffff80000010729c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072a0:	48 89 c2             	mov    %rax,%rdx
ffff8000001072a3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072a8:	bf 00 00 00 00       	mov    $0x0,%edi
ffff8000001072ad:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001072b4:	ff ff ff 
ffff8000001072b7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072bb:	ff d0                	call   *%rax
ffff8000001072bd:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001072c4:	ff ff ff 
ffff8000001072c7:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072cb:	48 89 c2             	mov    %rax,%rdx
ffff8000001072ce:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072d3:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001072d8:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001072df:	ff ff ff 
ffff8000001072e2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072e6:	ff d0                	call   *%rax
ffff8000001072e8:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff8000001072ef:	ff ff ff 
ffff8000001072f2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072f6:	48 89 c2             	mov    %rax,%rdx
ffff8000001072f9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072fe:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000107303:	48 b8 a0 66 ff ff ff 	movabs $0xffffffffffff66a0,%rax
ffff80000010730a:	ff ff ff 
ffff80000010730d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107311:	ff d0                	call   *%rax
ffff800000107313:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff80000010731a:	ff ff ff 
ffff80000010731d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107321:	48 89 c2             	mov    %rax,%rdx
ffff800000107324:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107329:	bf 03 00 00 00       	mov    $0x3,%edi
ffff80000010732e:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff800000107335:	ff ff ff 
ffff800000107338:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010733c:	ff d0                	call   *%rax
ffff80000010733e:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107345:	ff ff ff 
ffff800000107348:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010734c:	48 89 c2             	mov    %rax,%rdx
ffff80000010734f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107354:	bf 04 00 00 00       	mov    $0x4,%edi
ffff800000107359:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff800000107360:	ff ff ff 
ffff800000107363:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107367:	ff d0                	call   *%rax
ffff800000107369:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff800000107370:	ff ff ff 
ffff800000107373:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107377:	48 89 c2             	mov    %rax,%rdx
ffff80000010737a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010737f:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107384:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff80000010738b:	ff ff ff 
ffff80000010738e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107392:	ff d0                	call   *%rax
ffff800000107394:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff80000010739b:	ff ff ff 
ffff80000010739e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073a2:	48 89 c2             	mov    %rax,%rdx
ffff8000001073a5:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073aa:	bf 06 00 00 00       	mov    $0x6,%edi
ffff8000001073af:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001073b6:	ff ff ff 
ffff8000001073b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073bd:	ff d0                	call   *%rax
ffff8000001073bf:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff8000001073c6:	ff ff ff 
ffff8000001073c9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073cd:	48 89 c2             	mov    %rax,%rdx
ffff8000001073d0:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073d5:	bf 07 00 00 00       	mov    $0x7,%edi
ffff8000001073da:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001073e1:	ff ff ff 
ffff8000001073e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073e8:	ff d0                	call   *%rax
ffff8000001073ea:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff8000001073f1:	ff ff ff 
ffff8000001073f4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073f8:	48 89 c2             	mov    %rax,%rdx
ffff8000001073fb:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107400:	bf 08 00 00 00       	mov    $0x8,%edi
ffff800000107405:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff80000010740c:	ff ff ff 
ffff80000010740f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107413:	ff d0                	call   *%rax
ffff800000107415:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff80000010741c:	ff ff ff 
ffff80000010741f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107423:	48 89 c2             	mov    %rax,%rdx
ffff800000107426:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010742b:	bf 09 00 00 00       	mov    $0x9,%edi
ffff800000107430:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff800000107437:	ff ff ff 
ffff80000010743a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010743e:	ff d0                	call   *%rax
ffff800000107440:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107447:	ff ff ff 
ffff80000010744a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010744e:	48 89 c2             	mov    %rax,%rdx
ffff800000107451:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107456:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff80000010745b:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff800000107462:	ff ff ff 
ffff800000107465:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107469:	ff d0                	call   *%rax
ffff80000010746b:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107472:	ff ff ff 
ffff800000107475:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107479:	48 89 c2             	mov    %rax,%rdx
ffff80000010747c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107481:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107486:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff80000010748d:	ff ff ff 
ffff800000107490:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107494:	ff d0                	call   *%rax
ffff800000107496:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff80000010749d:	ff ff ff 
ffff8000001074a0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074a4:	48 89 c2             	mov    %rax,%rdx
ffff8000001074a7:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074ac:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff8000001074b1:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001074b8:	ff ff ff 
ffff8000001074bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074bf:	ff d0                	call   *%rax
ffff8000001074c1:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff8000001074c8:	ff ff ff 
ffff8000001074cb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074cf:	48 89 c2             	mov    %rax,%rdx
ffff8000001074d2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074d7:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001074dc:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001074e3:	ff ff ff 
ffff8000001074e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074ea:	ff d0                	call   *%rax
ffff8000001074ec:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001074f3:	ff ff ff 
ffff8000001074f6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074fa:	48 89 c2             	mov    %rax,%rdx
ffff8000001074fd:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107502:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff800000107507:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff80000010750e:	ff ff ff 
ffff800000107511:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107515:	ff d0                	call   *%rax
ffff800000107517:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff80000010751e:	ff ff ff 
ffff800000107521:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107525:	48 89 c2             	mov    %rax,%rdx
ffff800000107528:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010752d:	bf 10 00 00 00       	mov    $0x10,%edi
ffff800000107532:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff800000107539:	ff ff ff 
ffff80000010753c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107540:	ff d0                	call   *%rax
ffff800000107542:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff800000107549:	ff ff ff 
ffff80000010754c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107550:	48 89 c2             	mov    %rax,%rdx
ffff800000107553:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107558:	bf 11 00 00 00       	mov    $0x11,%edi
ffff80000010755d:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff800000107564:	ff ff ff 
ffff800000107567:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010756b:	ff d0                	call   *%rax
ffff80000010756d:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107574:	ff ff ff 
ffff800000107577:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010757b:	48 89 c2             	mov    %rax,%rdx
ffff80000010757e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107583:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107588:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff80000010758f:	ff ff ff 
ffff800000107592:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107596:	ff d0                	call   *%rax
ffff800000107598:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff80000010759f:	ff ff ff 
ffff8000001075a2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001075a6:	48 89 c2             	mov    %rax,%rdx
ffff8000001075a9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075ae:	bf 13 00 00 00       	mov    $0x13,%edi
ffff8000001075b3:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001075ba:	ff ff ff 
ffff8000001075bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075c1:	ff d0                	call   *%rax
ffff8000001075c3:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001075ca:	ff ff ff 
ffff8000001075cd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001075d1:	48 89 c2             	mov    %rax,%rdx
ffff8000001075d4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075d9:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001075de:	48 b8 4e 67 ff ff ff 	movabs $0xffffffffffff674e,%rax
ffff8000001075e5:	ff ff ff 
ffff8000001075e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075ec:	ff d0                	call   *%rax
ffff8000001075ee:	90                   	nop
ffff8000001075ef:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001075f3:	c9                   	leave
ffff8000001075f4:	c3                   	ret

ffff8000001075f5 <RESTORE_ALL>:
ffff8000001075f5:	41 5f                	pop    %r15
ffff8000001075f7:	41 5e                	pop    %r14
ffff8000001075f9:	41 5d                	pop    %r13
ffff8000001075fb:	41 5c                	pop    %r12
ffff8000001075fd:	41 5b                	pop    %r11
ffff8000001075ff:	41 5a                	pop    %r10
ffff800000107601:	41 59                	pop    %r9
ffff800000107603:	41 58                	pop    %r8
ffff800000107605:	5b                   	pop    %rbx
ffff800000107606:	59                   	pop    %rcx
ffff800000107607:	5a                   	pop    %rdx
ffff800000107608:	5e                   	pop    %rsi
ffff800000107609:	5f                   	pop    %rdi
ffff80000010760a:	5d                   	pop    %rbp
ffff80000010760b:	58                   	pop    %rax
ffff80000010760c:	8e d8                	mov    %eax,%ds
ffff80000010760e:	58                   	pop    %rax
ffff80000010760f:	8e c0                	mov    %eax,%es
ffff800000107611:	58                   	pop    %rax
ffff800000107612:	48 83 c4 10          	add    $0x10,%rsp
ffff800000107616:	48 cf                	iretq

ffff800000107618 <divide_error>:
ffff800000107618:	6a 00                	push   $0x0
ffff80000010761a:	50                   	push   %rax
ffff80000010761b:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105f8b <do_divide_error>
ffff800000107622:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107626:	eb 00                	jmp    ffff800000107628 <error_code>

ffff800000107628 <error_code>:
ffff800000107628:	50                   	push   %rax
ffff800000107629:	8c c0                	mov    %es,%eax
ffff80000010762b:	50                   	push   %rax
ffff80000010762c:	8c d8                	mov    %ds,%eax
ffff80000010762e:	50                   	push   %rax
ffff80000010762f:	48 31 c0             	xor    %rax,%rax
ffff800000107632:	55                   	push   %rbp
ffff800000107633:	57                   	push   %rdi
ffff800000107634:	56                   	push   %rsi
ffff800000107635:	52                   	push   %rdx
ffff800000107636:	51                   	push   %rcx
ffff800000107637:	53                   	push   %rbx
ffff800000107638:	41 50                	push   %r8
ffff80000010763a:	41 51                	push   %r9
ffff80000010763c:	41 52                	push   %r10
ffff80000010763e:	41 53                	push   %r11
ffff800000107640:	41 54                	push   %r12
ffff800000107642:	41 55                	push   %r13
ffff800000107644:	41 56                	push   %r14
ffff800000107646:	41 57                	push   %r15
ffff800000107648:	fc                   	cld
ffff800000107649:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000107650:	00 
ffff800000107651:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000107658:	00 
ffff800000107659:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000107660:	8e df                	mov    %edi,%ds
ffff800000107662:	8e c7                	mov    %edi,%es
ffff800000107664:	48 89 e7             	mov    %rsp,%rdi
ffff800000107667:	ff d2                	call   *%rdx
ffff800000107669:	eb 00                	jmp    ffff80000010766b <ret_from_intr>

ffff80000010766b <ret_from_intr>:
ffff80000010766b:	eb 88                	jmp    ffff8000001075f5 <RESTORE_ALL>

ffff80000010766d <debug>:
ffff80000010766d:	6a 00                	push   $0x0
ffff80000010766f:	50                   	push   %rax
ffff800000107670:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000106019 <do_debug>
ffff800000107677:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010767b:	eb ab                	jmp    ffff800000107628 <error_code>

ffff80000010767d <nmi>:
ffff80000010767d:	50                   	push   %rax
ffff80000010767e:	fc                   	cld
ffff80000010767f:	50                   	push   %rax
ffff800000107680:	50                   	push   %rax
ffff800000107681:	8c c0                	mov    %es,%eax
ffff800000107683:	50                   	push   %rax
ffff800000107684:	8c d8                	mov    %ds,%eax
ffff800000107686:	50                   	push   %rax
ffff800000107687:	48 31 c0             	xor    %rax,%rax
ffff80000010768a:	55                   	push   %rbp
ffff80000010768b:	57                   	push   %rdi
ffff80000010768c:	56                   	push   %rsi
ffff80000010768d:	52                   	push   %rdx
ffff80000010768e:	51                   	push   %rcx
ffff80000010768f:	53                   	push   %rbx
ffff800000107690:	41 50                	push   %r8
ffff800000107692:	41 51                	push   %r9
ffff800000107694:	41 52                	push   %r10
ffff800000107696:	41 53                	push   %r11
ffff800000107698:	41 54                	push   %r12
ffff80000010769a:	41 55                	push   %r13
ffff80000010769c:	41 56                	push   %r14
ffff80000010769e:	41 57                	push   %r15
ffff8000001076a0:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff8000001076a7:	8e da                	mov    %edx,%ds
ffff8000001076a9:	8e c2                	mov    %edx,%es
ffff8000001076ab:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff8000001076b2:	48 89 e6             	mov    %rsp,%rsi
ffff8000001076b5:	e8 ed e9 ff ff       	call   ffff8000001060a7 <do_nmi>
ffff8000001076ba:	e9 36 ff ff ff       	jmp    ffff8000001075f5 <RESTORE_ALL>

ffff8000001076bf <invalid_TSS>:
ffff8000001076bf:	50                   	push   %rax
ffff8000001076c0:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff800000106517 <do_invalid_TSS>
ffff8000001076c7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076cb:	e9 58 ff ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001076d0 <page_fault>:
ffff8000001076d0:	50                   	push   %rax
ffff8000001076d1:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106d07 <do_page_fault>
ffff8000001076d8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076dc:	e9 47 ff ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001076e1 <int3>:
ffff8000001076e1:	6a 00                	push   $0x0
ffff8000001076e3:	50                   	push   %rax
ffff8000001076e4:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000106135 <do_int3>
ffff8000001076eb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076ef:	e9 34 ff ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001076f4 <overflow>:
ffff8000001076f4:	6a 00                	push   $0x0
ffff8000001076f6:	50                   	push   %rax
ffff8000001076f7:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff8000001061c3 <do_overflow>
ffff8000001076fe:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107702:	e9 21 ff ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107707 <bounds>:
ffff800000107707:	6a 00                	push   $0x0
ffff800000107709:	50                   	push   %rax
ffff80000010770a:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000106251 <do_bounds>
ffff800000107711:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107715:	e9 0e ff ff ff       	jmp    ffff800000107628 <error_code>

ffff80000010771a <undefined_opcode>:
ffff80000010771a:	6a 00                	push   $0x0
ffff80000010771c:	50                   	push   %rax
ffff80000010771d:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff8000001062df <do_undefined_opcode>
ffff800000107724:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107728:	e9 fb fe ff ff       	jmp    ffff800000107628 <error_code>

ffff80000010772d <dev_not_available>:
ffff80000010772d:	6a 00                	push   $0x0
ffff80000010772f:	50                   	push   %rax
ffff800000107730:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff80000010636d <do_dev_not_available>
ffff800000107737:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010773b:	e9 e8 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107740 <double_fault>:
ffff800000107740:	50                   	push   %rax
ffff800000107741:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff8000001063fb <do_double_fault>
ffff800000107748:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010774c:	e9 d7 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107751 <coprocessor_segment_overrun>:
ffff800000107751:	6a 00                	push   $0x0
ffff800000107753:	50                   	push   %rax
ffff800000107754:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff800000106489 <do_coprocessor_segment_overrun>
ffff80000010775b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010775f:	e9 c4 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107764 <segment_not_present>:
ffff800000107764:	50                   	push   %rax
ffff800000107765:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff800000106713 <do_segment_not_present>
ffff80000010776c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107770:	e9 b3 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107775 <stack_segment_fault>:
ffff800000107775:	50                   	push   %rax
ffff800000107776:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff80000010690f <do_stack_segment_fault>
ffff80000010777d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107781:	e9 a2 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107786 <general_protection>:
ffff800000107786:	50                   	push   %rax
ffff800000107787:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff800000106b0b <do_general_protection>
ffff80000010778e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107792:	e9 91 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff800000107797 <x87_FPU_error>:
ffff800000107797:	6a 00                	push   $0x0
ffff800000107799:	50                   	push   %rax
ffff80000010779a:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106faf <do_x87_FPU_error>
ffff8000001077a1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077a5:	e9 7e fe ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001077aa <alignment_check>:
ffff8000001077aa:	50                   	push   %rax
ffff8000001077ab:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff80000010703d <do_alignment_check>
ffff8000001077b2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077b6:	e9 6d fe ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001077bb <machine_check>:
ffff8000001077bb:	6a 00                	push   $0x0
ffff8000001077bd:	50                   	push   %rax
ffff8000001077be:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff8000001070cb <do_machine_check>
ffff8000001077c5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077c9:	e9 5a fe ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001077ce <SIMD_exception>:
ffff8000001077ce:	6a 00                	push   $0x0
ffff8000001077d0:	50                   	push   %rax
ffff8000001077d1:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000107159 <do_SIMD_exception>
ffff8000001077d8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077dc:	e9 47 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001077e1 <virtualization_exception>:
ffff8000001077e1:	6a 00                	push   $0x0
ffff8000001077e3:	50                   	push   %rax
ffff8000001077e4:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff8000001071e7 <do_virtualization_exception>
ffff8000001077eb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077ef:	e9 34 fe ff ff       	jmp    ffff800000107628 <error_code>

ffff8000001077f4 <Cmemset>:
ffff8000001077f4:	f3 0f 1e fa          	endbr64
ffff8000001077f8:	55                   	push   %rbp
ffff8000001077f9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001077fc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001077fc <Cmemset+0x8>
ffff800000107803:	49 bb b4 7d 00 00 00 	movabs $0x7db4,%r11
ffff80000010780a:	00 00 00 
ffff80000010780d:	4c 01 d8             	add    %r11,%rax
ffff800000107810:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107814:	89 f0                	mov    %esi,%eax
ffff800000107816:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff80000010781a:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff80000010781d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107821:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107825:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff800000107829:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010782d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107831:	48 c1 e0 08          	shl    $0x8,%rax
ffff800000107835:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107839:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010783d:	48 c1 e0 10          	shl    $0x10,%rax
ffff800000107841:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107845:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107849:	48 c1 e0 20          	shl    $0x20,%rax
ffff80000010784d:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107851:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107855:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107859:	eb 15                	jmp    ffff800000107870 <Cmemset+0x7c>
ffff80000010785b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010785f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107863:	48 89 10             	mov    %rdx,(%rax)
ffff800000107866:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff80000010786b:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff800000107870:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff800000107875:	7f e4                	jg     ffff80000010785b <Cmemset+0x67>
ffff800000107877:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010787b:	83 e0 04             	and    $0x4,%eax
ffff80000010787e:	48 85 c0             	test   %rax,%rax
ffff800000107881:	74 11                	je     ffff800000107894 <Cmemset+0xa0>
ffff800000107883:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107887:	89 c2                	mov    %eax,%edx
ffff800000107889:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010788d:	89 10                	mov    %edx,(%rax)
ffff80000010788f:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff800000107894:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107898:	83 e0 02             	and    $0x2,%eax
ffff80000010789b:	48 85 c0             	test   %rax,%rax
ffff80000010789e:	74 12                	je     ffff8000001078b2 <Cmemset+0xbe>
ffff8000001078a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078a4:	89 c2                	mov    %eax,%edx
ffff8000001078a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078aa:	66 89 10             	mov    %dx,(%rax)
ffff8000001078ad:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff8000001078b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001078b6:	83 e0 01             	and    $0x1,%eax
ffff8000001078b9:	48 85 c0             	test   %rax,%rax
ffff8000001078bc:	74 0a                	je     ffff8000001078c8 <Cmemset+0xd4>
ffff8000001078be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078c2:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff8000001078c6:	88 10                	mov    %dl,(%rax)
ffff8000001078c8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078cc:	5d                   	pop    %rbp
ffff8000001078cd:	c3                   	ret

ffff8000001078ce <Get_gdt>:
ffff8000001078ce:	f3 0f 1e fa          	endbr64
ffff8000001078d2:	55                   	push   %rbp
ffff8000001078d3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001078d6:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001078d6 <Get_gdt+0x8>
ffff8000001078dd:	49 bb da 7c 00 00 00 	movabs $0x7cda,%r11
ffff8000001078e4:	00 00 00 
ffff8000001078e7:	4c 01 d8             	add    %r11,%rax
ffff8000001078ea:	0f 20 d8             	mov    %cr3,%rax
ffff8000001078ed:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001078f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078f5:	5d                   	pop    %rbp
ffff8000001078f6:	c3                   	ret

ffff8000001078f7 <page_init>:
ffff8000001078f7:	f3 0f 1e fa          	endbr64
ffff8000001078fb:	55                   	push   %rbp
ffff8000001078fc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001078ff:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001078ff <page_init+0x8>
ffff800000107906:	49 bb b1 7c 00 00 00 	movabs $0x7cb1,%r11
ffff80000010790d:	00 00 00 
ffff800000107910:	4c 01 d8             	add    %r11,%rax
ffff800000107913:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107917:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff80000010791b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010791f:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107923:	48 85 d2             	test   %rdx,%rdx
ffff800000107926:	0f 85 d0 00 00 00    	jne    ffff8000001079fc <page_init+0x105>
ffff80000010792c:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107933:	00 00 00 
ffff800000107936:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff80000010793d:	00 
ffff80000010793e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107942:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107946:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff80000010794a:	48 c1 e2 03          	shl    $0x3,%rdx
ffff80000010794e:	48 01 ca             	add    %rcx,%rdx
ffff800000107951:	48 8b 32             	mov    (%rdx),%rsi
ffff800000107954:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107958:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff80000010795c:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107960:	83 e2 3f             	and    $0x3f,%edx
ffff800000107963:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107968:	89 d1                	mov    %edx,%ecx
ffff80000010796a:	48 d3 e7             	shl    %cl,%rdi
ffff80000010796d:	48 89 f9             	mov    %rdi,%rcx
ffff800000107970:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107977:	00 00 00 
ffff80000010797a:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff800000107981:	00 
ffff800000107982:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107986:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010798a:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010798e:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107992:	48 01 d0             	add    %rdx,%rax
ffff800000107995:	48 09 ce             	or     %rcx,%rsi
ffff800000107998:	48 89 f2             	mov    %rsi,%rdx
ffff80000010799b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010799e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079a2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001079a6:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001079aa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079ae:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001079b2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001079b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079ba:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001079be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079c2:	48 8b 00             	mov    (%rax),%rax
ffff8000001079c5:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff8000001079c9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001079cd:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff8000001079d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079d5:	48 8b 00             	mov    (%rax),%rax
ffff8000001079d8:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff8000001079dc:	48 83 ea 01          	sub    $0x1,%rdx
ffff8000001079e0:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff8000001079e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079e8:	48 8b 00             	mov    (%rax),%rax
ffff8000001079eb:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001079ef:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001079f3:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001079f7:	e9 0a 01 00 00       	jmp    ffff800000107b06 <page_init+0x20f>
ffff8000001079fc:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107a00:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107a04:	83 e2 04             	and    $0x4,%edx
ffff800000107a07:	48 85 d2             	test   %rdx,%rdx
ffff800000107a0a:	75 2e                	jne    ffff800000107a3a <page_init+0x143>
ffff800000107a0c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107a10:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107a14:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107a1a:	48 85 d2             	test   %rdx,%rdx
ffff800000107a1d:	75 1b                	jne    ffff800000107a3a <page_init+0x143>
ffff800000107a1f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107a23:	83 e2 04             	and    $0x4,%edx
ffff800000107a26:	48 85 d2             	test   %rdx,%rdx
ffff800000107a29:	75 0f                	jne    ffff800000107a3a <page_init+0x143>
ffff800000107a2b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107a2f:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107a35:	48 85 d2             	test   %rdx,%rdx
ffff800000107a38:	74 43                	je     ffff800000107a7d <page_init+0x186>
ffff800000107a3a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a3e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107a42:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107a46:	48 89 c2             	mov    %rax,%rdx
ffff800000107a49:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a4d:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107a51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a55:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000107a59:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107a5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a61:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107a65:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a69:	48 8b 00             	mov    (%rax),%rax
ffff800000107a6c:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff800000107a70:	48 83 c2 01          	add    $0x1,%rdx
ffff800000107a74:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff800000107a78:	e9 89 00 00 00       	jmp    ffff800000107b06 <page_init+0x20f>
ffff800000107a7d:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107a84:	00 00 00 
ffff800000107a87:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107a8e:	00 
ffff800000107a8f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107a93:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107a97:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107a9b:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107a9f:	48 01 ca             	add    %rcx,%rdx
ffff800000107aa2:	48 8b 32             	mov    (%rdx),%rsi
ffff800000107aa5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107aa9:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107aad:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107ab1:	83 e2 3f             	and    $0x3f,%edx
ffff800000107ab4:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107ab9:	89 d1                	mov    %edx,%ecx
ffff800000107abb:	48 d3 e7             	shl    %cl,%rdi
ffff800000107abe:	48 89 f9             	mov    %rdi,%rcx
ffff800000107ac1:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107ac8:	00 00 00 
ffff800000107acb:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff800000107ad2:	00 
ffff800000107ad3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107ad7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107adb:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107adf:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107ae3:	48 01 d0             	add    %rdx,%rax
ffff800000107ae6:	48 09 ce             	or     %rcx,%rsi
ffff800000107ae9:	48 89 f2             	mov    %rsi,%rdx
ffff800000107aec:	48 89 10             	mov    %rdx,(%rax)
ffff800000107aef:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107af3:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107af7:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107afb:	48 89 c2             	mov    %rax,%rdx
ffff800000107afe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107b02:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107b06:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b0b:	5d                   	pop    %rbp
ffff800000107b0c:	c3                   	ret

ffff800000107b0d <init_memory>:
ffff800000107b0d:	f3 0f 1e fa          	endbr64
ffff800000107b11:	55                   	push   %rbp
ffff800000107b12:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b15:	41 57                	push   %r15
ffff800000107b17:	53                   	push   %rbx
ffff800000107b18:	48 83 ec 70          	sub    $0x70,%rsp
ffff800000107b1c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107b1c <init_memory+0xf>
ffff800000107b23:	49 bb 94 7a 00 00 00 	movabs $0x7a94,%r11
ffff800000107b2a:	00 00 00 
ffff800000107b2d:	4c 01 db             	add    %r11,%rbx
ffff800000107b30:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107b37:	00 
ffff800000107b38:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff800000107b3f:	00 
ffff800000107b40:	48 b8 c0 a5 ff ff ff 	movabs $0xffffffffffffa5c0,%rax
ffff800000107b47:	ff ff ff 
ffff800000107b4a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b4e:	48 89 c2             	mov    %rax,%rdx
ffff800000107b51:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b56:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107b5b:	49 89 df             	mov    %rbx,%r15
ffff800000107b5e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b63:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000107b6a:	ff ff ff 
ffff800000107b6d:	48 01 d9             	add    %rbx,%rcx
ffff800000107b70:	ff d1                	call   *%rcx
ffff800000107b72:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107b79:	80 ff ff 
ffff800000107b7c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107b80:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000107b87:	e9 a2 01 00 00       	jmp    ffff800000107d2e <init_memory+0x221>
ffff800000107b8c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b90:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107b93:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b97:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107b9b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b9f:	48 8b 00             	mov    (%rax),%rax
ffff800000107ba2:	41 89 c9             	mov    %ecx,%r9d
ffff800000107ba5:	49 89 d0             	mov    %rdx,%r8
ffff800000107ba8:	48 89 c1             	mov    %rax,%rcx
ffff800000107bab:	48 b8 38 a6 ff ff ff 	movabs $0xffffffffffffa638,%rax
ffff800000107bb2:	ff ff ff 
ffff800000107bb5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107bb9:	48 89 c2             	mov    %rax,%rdx
ffff800000107bbc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107bc1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107bc6:	49 89 df             	mov    %rbx,%r15
ffff800000107bc9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107bce:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000107bd5:	ff ff ff 
ffff800000107bd8:	49 01 da             	add    %rbx,%r10
ffff800000107bdb:	41 ff d2             	call   *%r10
ffff800000107bde:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000107be5:	00 
ffff800000107be6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107bea:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107bed:	83 f8 01             	cmp    $0x1,%eax
ffff800000107bf0:	75 0c                	jne    ffff800000107bfe <init_memory+0xf1>
ffff800000107bf2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107bf6:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107bfa:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107bfe:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107c05:	00 00 00 
ffff800000107c08:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c0b:	48 63 d0             	movslq %eax,%rdx
ffff800000107c0e:	48 01 d9             	add    %rbx,%rcx
ffff800000107c11:	48 89 d0             	mov    %rdx,%rax
ffff800000107c14:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c18:	48 01 d0             	add    %rdx,%rax
ffff800000107c1b:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c1f:	48 01 c8             	add    %rcx,%rax
ffff800000107c22:	48 8b 10             	mov    (%rax),%rdx
ffff800000107c25:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c29:	48 8b 00             	mov    (%rax),%rax
ffff800000107c2c:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107c30:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c37:	00 00 00 
ffff800000107c3a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c3d:	48 63 d0             	movslq %eax,%rdx
ffff800000107c40:	48 01 de             	add    %rbx,%rsi
ffff800000107c43:	48 89 d0             	mov    %rdx,%rax
ffff800000107c46:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c4a:	48 01 d0             	add    %rdx,%rax
ffff800000107c4d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c51:	48 01 f0             	add    %rsi,%rax
ffff800000107c54:	48 89 08             	mov    %rcx,(%rax)
ffff800000107c57:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107c5e:	00 00 00 
ffff800000107c61:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c64:	48 63 d0             	movslq %eax,%rdx
ffff800000107c67:	48 89 d0             	mov    %rdx,%rax
ffff800000107c6a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c6e:	48 01 d0             	add    %rdx,%rax
ffff800000107c71:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c75:	48 01 d8             	add    %rbx,%rax
ffff800000107c78:	48 01 c8             	add    %rcx,%rax
ffff800000107c7b:	48 83 c0 08          	add    $0x8,%rax
ffff800000107c7f:	48 8b 10             	mov    (%rax),%rdx
ffff800000107c82:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c86:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107c8a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107c8e:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c95:	00 00 00 
ffff800000107c98:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c9b:	48 63 d0             	movslq %eax,%rdx
ffff800000107c9e:	48 89 d0             	mov    %rdx,%rax
ffff800000107ca1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ca5:	48 01 d0             	add    %rdx,%rax
ffff800000107ca8:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cac:	48 01 d8             	add    %rbx,%rax
ffff800000107caf:	48 01 f0             	add    %rsi,%rax
ffff800000107cb2:	48 83 c0 08          	add    $0x8,%rax
ffff800000107cb6:	48 89 08             	mov    %rcx,(%rax)
ffff800000107cb9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107cbd:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107cc0:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107cc7:	00 00 00 
ffff800000107cca:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107ccd:	48 63 d0             	movslq %eax,%rdx
ffff800000107cd0:	48 01 de             	add    %rbx,%rsi
ffff800000107cd3:	48 89 d0             	mov    %rdx,%rax
ffff800000107cd6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cda:	48 01 d0             	add    %rdx,%rax
ffff800000107cdd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ce1:	48 01 f0             	add    %rsi,%rax
ffff800000107ce4:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ce8:	89 08                	mov    %ecx,(%rax)
ffff800000107cea:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107ced:	48 98                	cltq
ffff800000107cef:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107cf6:	00 00 00 
ffff800000107cf9:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff800000107d00:	00 
ffff800000107d01:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107d06:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d0a:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107d0d:	83 f8 04             	cmp    $0x4,%eax
ffff800000107d10:	77 26                	ja     ffff800000107d38 <init_memory+0x22b>
ffff800000107d12:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d16:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107d1a:	48 85 c0             	test   %rax,%rax
ffff800000107d1d:	74 19                	je     ffff800000107d38 <init_memory+0x22b>
ffff800000107d1f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d23:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107d26:	85 c0                	test   %eax,%eax
ffff800000107d28:	74 0e                	je     ffff800000107d38 <init_memory+0x22b>
ffff800000107d2a:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff800000107d2e:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff800000107d32:	0f 8e 54 fe ff ff    	jle    ffff800000107b8c <init_memory+0x7f>
ffff800000107d38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d3c:	48 89 c1             	mov    %rax,%rcx
ffff800000107d3f:	48 b8 68 a6 ff ff ff 	movabs $0xffffffffffffa668,%rax
ffff800000107d46:	ff ff ff 
ffff800000107d49:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d4d:	48 89 c2             	mov    %rax,%rdx
ffff800000107d50:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d55:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107d5a:	49 89 df             	mov    %rbx,%r15
ffff800000107d5d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107d62:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000107d69:	ff ff ff 
ffff800000107d6c:	49 01 d8             	add    %rbx,%r8
ffff800000107d6f:	41 ff d0             	call   *%r8
ffff800000107d72:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d76:	48 89 c1             	mov    %rax,%rcx
ffff800000107d79:	48 b8 87 a6 ff ff ff 	movabs $0xffffffffffffa687,%rax
ffff800000107d80:	ff ff ff 
ffff800000107d83:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d87:	48 89 c2             	mov    %rax,%rdx
ffff800000107d8a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d8f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107d94:	49 89 df             	mov    %rbx,%r15
ffff800000107d97:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107d9c:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000107da3:	ff ff ff 
ffff800000107da6:	49 01 d8             	add    %rbx,%r8
ffff800000107da9:	41 ff d0             	call   *%r8
ffff800000107dac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107db0:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000107db4:	89 45 bc             	mov    %eax,-0x44(%rbp)
ffff800000107db7:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff800000107dba:	89 c1                	mov    %eax,%ecx
ffff800000107dbc:	48 b8 a1 a6 ff ff ff 	movabs $0xffffffffffffa6a1,%rax
ffff800000107dc3:	ff ff ff 
ffff800000107dc6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107dca:	48 89 c2             	mov    %rax,%rdx
ffff800000107dcd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107dd2:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107dd7:	49 89 df             	mov    %rbx,%r15
ffff800000107dda:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107ddf:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000107de6:	ff ff ff 
ffff800000107de9:	49 01 d8             	add    %rbx,%r8
ffff800000107dec:	41 ff d0             	call   *%r8
ffff800000107def:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107df6:	00 
ffff800000107df7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107dfe:	e9 ed 00 00 00       	jmp    ffff800000107ef0 <init_memory+0x3e3>
ffff800000107e03:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e0a:	00 00 00 
ffff800000107e0d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e10:	48 63 d0             	movslq %eax,%rdx
ffff800000107e13:	48 01 d9             	add    %rbx,%rcx
ffff800000107e16:	48 89 d0             	mov    %rdx,%rax
ffff800000107e19:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e1d:	48 01 d0             	add    %rdx,%rax
ffff800000107e20:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e24:	48 01 c8             	add    %rcx,%rax
ffff800000107e27:	48 83 c0 10          	add    $0x10,%rax
ffff800000107e2b:	8b 00                	mov    (%rax),%eax
ffff800000107e2d:	83 f8 01             	cmp    $0x1,%eax
ffff800000107e30:	0f 85 b2 00 00 00    	jne    ffff800000107ee8 <init_memory+0x3db>
ffff800000107e36:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e3d:	00 00 00 
ffff800000107e40:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e43:	48 63 d0             	movslq %eax,%rdx
ffff800000107e46:	48 01 d9             	add    %rbx,%rcx
ffff800000107e49:	48 89 d0             	mov    %rdx,%rax
ffff800000107e4c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e50:	48 01 d0             	add    %rdx,%rax
ffff800000107e53:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e57:	48 01 c8             	add    %rcx,%rax
ffff800000107e5a:	48 8b 00             	mov    (%rax),%rax
ffff800000107e5d:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107e63:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107e69:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000107e6d:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e74:	00 00 00 
ffff800000107e77:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e7a:	48 63 d0             	movslq %eax,%rdx
ffff800000107e7d:	48 01 d9             	add    %rbx,%rcx
ffff800000107e80:	48 89 d0             	mov    %rdx,%rax
ffff800000107e83:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e87:	48 01 d0             	add    %rdx,%rax
ffff800000107e8a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e8e:	48 01 c8             	add    %rcx,%rax
ffff800000107e91:	48 8b 08             	mov    (%rax),%rcx
ffff800000107e94:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107e9b:	00 00 00 
ffff800000107e9e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107ea1:	48 63 d0             	movslq %eax,%rdx
ffff800000107ea4:	48 89 d0             	mov    %rdx,%rax
ffff800000107ea7:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107eab:	48 01 d0             	add    %rdx,%rax
ffff800000107eae:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107eb2:	48 01 d8             	add    %rbx,%rax
ffff800000107eb5:	48 01 f0             	add    %rsi,%rax
ffff800000107eb8:	48 83 c0 08          	add    $0x8,%rax
ffff800000107ebc:	48 8b 00             	mov    (%rax),%rax
ffff800000107ebf:	48 01 c8             	add    %rcx,%rax
ffff800000107ec2:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107ec8:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000107ecc:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107ed0:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
ffff800000107ed4:	73 15                	jae    ffff800000107eeb <init_memory+0x3de>
ffff800000107ed6:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107eda:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000107ede:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107ee2:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107ee6:	eb 04                	jmp    ffff800000107eec <init_memory+0x3df>
ffff800000107ee8:	90                   	nop
ffff800000107ee9:	eb 01                	jmp    ffff800000107eec <init_memory+0x3df>
ffff800000107eeb:	90                   	nop
ffff800000107eec:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107ef0:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107ef3:	48 98                	cltq
ffff800000107ef5:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107efc:	00 00 00 
ffff800000107eff:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000107f06:	00 
ffff800000107f07:	48 39 c2             	cmp    %rax,%rdx
ffff800000107f0a:	0f 83 f3 fe ff ff    	jae    ffff800000107e03 <init_memory+0x2f6>
ffff800000107f10:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107f14:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107f18:	49 89 d0             	mov    %rdx,%r8
ffff800000107f1b:	48 89 c1             	mov    %rax,%rcx
ffff800000107f1e:	48 b8 c0 a6 ff ff ff 	movabs $0xffffffffffffa6c0,%rax
ffff800000107f25:	ff ff ff 
ffff800000107f28:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107f2c:	48 89 c2             	mov    %rax,%rdx
ffff800000107f2f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107f34:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107f39:	49 89 df             	mov    %rbx,%r15
ffff800000107f3c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107f41:	49 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r9
ffff800000107f48:	ff ff ff 
ffff800000107f4b:	49 01 d9             	add    %rbx,%r9
ffff800000107f4e:	41 ff d1             	call   *%r9
ffff800000107f51:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f58:	00 00 00 
ffff800000107f5b:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f62:	00 
ffff800000107f63:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f6a:	00 00 00 
ffff800000107f6d:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107f71:	48 89 d0             	mov    %rdx,%rax
ffff800000107f74:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f78:	48 01 d0             	add    %rdx,%rax
ffff800000107f7b:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f7f:	48 01 c8             	add    %rcx,%rax
ffff800000107f82:	48 8b 08             	mov    (%rax),%rcx
ffff800000107f85:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f8c:	00 00 00 
ffff800000107f8f:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f96:	00 
ffff800000107f97:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107f9e:	00 00 00 
ffff800000107fa1:	48 89 d0             	mov    %rdx,%rax
ffff800000107fa4:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fa8:	48 01 d0             	add    %rdx,%rax
ffff800000107fab:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107faf:	48 01 d8             	add    %rbx,%rax
ffff800000107fb2:	48 01 f0             	add    %rsi,%rax
ffff800000107fb5:	48 83 c0 08          	add    $0x8,%rax
ffff800000107fb9:	48 8b 00             	mov    (%rax),%rax
ffff800000107fbc:	48 01 c8             	add    %rcx,%rax
ffff800000107fbf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107fc3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fca:	00 00 00 
ffff800000107fcd:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107fd4:	00 
ffff800000107fd5:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107fdb:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107fe1:	48 89 c2             	mov    %rax,%rdx
ffff800000107fe4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107feb:	00 00 00 
ffff800000107fee:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107ff5:	00 
ffff800000107ff6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ffa:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107ffe:	48 89 c2             	mov    %rax,%rdx
ffff800000108001:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108008:	00 00 00 
ffff80000010800b:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000108012:	00 
ffff800000108013:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108017:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010801b:	48 83 c0 3f          	add    $0x3f,%rax
ffff80000010801f:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000108023:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108027:	48 89 c2             	mov    %rax,%rdx
ffff80000010802a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108031:	00 00 00 
ffff800000108034:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff80000010803b:	00 
ffff80000010803c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108043:	00 00 00 
ffff800000108046:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff80000010804d:	00 
ffff80000010804e:	48 89 c2             	mov    %rax,%rdx
ffff800000108051:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108058:	00 00 00 
ffff80000010805b:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108062:	00 
ffff800000108063:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000108068:	48 89 c7             	mov    %rax,%rdi
ffff80000010806b:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff800000108072:	ff ff ff 
ffff800000108075:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108079:	ff d0                	call   *%rax
ffff80000010807b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108082:	00 00 00 
ffff800000108085:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010808c:	00 
ffff80000010808d:	48 89 c2             	mov    %rax,%rdx
ffff800000108090:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108097:	00 00 00 
ffff80000010809a:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff8000001080a1:	00 
ffff8000001080a2:	48 01 d0             	add    %rdx,%rax
ffff8000001080a5:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001080ab:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff8000001080b1:	48 89 c2             	mov    %rax,%rdx
ffff8000001080b4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080bb:	00 00 00 
ffff8000001080be:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff8000001080c5:	00 
ffff8000001080c6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080ca:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080ce:	48 89 c2             	mov    %rax,%rdx
ffff8000001080d1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080d8:	00 00 00 
ffff8000001080db:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff8000001080e2:	00 
ffff8000001080e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080e7:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001080ee:	48 89 d0             	mov    %rdx,%rax
ffff8000001080f1:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001080f5:	48 01 d0             	add    %rdx,%rax
ffff8000001080f8:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001080fc:	48 83 c0 07          	add    $0x7,%rax
ffff800000108100:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108104:	48 89 c2             	mov    %rax,%rdx
ffff800000108107:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010810e:	00 00 00 
ffff800000108111:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000108118:	00 
ffff800000108119:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108120:	00 00 00 
ffff800000108123:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff80000010812a:	00 
ffff80000010812b:	48 89 c2             	mov    %rax,%rdx
ffff80000010812e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108135:	00 00 00 
ffff800000108138:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010813f:	00 
ffff800000108140:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108145:	48 89 c7             	mov    %rax,%rdi
ffff800000108148:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff80000010814f:	ff ff ff 
ffff800000108152:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108156:	ff d0                	call   *%rax
ffff800000108158:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010815f:	00 00 00 
ffff800000108162:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108169:	00 
ffff80000010816a:	48 89 c2             	mov    %rax,%rdx
ffff80000010816d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108174:	00 00 00 
ffff800000108177:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff80000010817e:	00 
ffff80000010817f:	48 01 d0             	add    %rdx,%rax
ffff800000108182:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000108188:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff80000010818e:	48 89 c2             	mov    %rax,%rdx
ffff800000108191:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108198:	00 00 00 
ffff80000010819b:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff8000001081a2:	00 
ffff8000001081a3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081aa:	00 00 00 
ffff8000001081ad:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff8000001081b4:	00 00 00 00 00 
ffff8000001081b9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081c0:	00 00 00 
ffff8000001081c3:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff8000001081ca:	00 90 01 00 00 
ffff8000001081cf:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081d6:	00 00 00 
ffff8000001081d9:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff8000001081e0:	00 
ffff8000001081e1:	48 89 c2             	mov    %rax,%rdx
ffff8000001081e4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081eb:	00 00 00 
ffff8000001081ee:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001081f5:	00 
ffff8000001081f6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001081fb:	48 89 c7             	mov    %rax,%rdi
ffff8000001081fe:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff800000108205:	ff ff ff 
ffff800000108208:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010820c:	ff d0                	call   *%rax
ffff80000010820e:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108215:	e9 f8 02 00 00       	jmp    ffff800000108512 <init_memory+0xa05>
ffff80000010821a:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108221:	00 00 00 
ffff800000108224:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108227:	48 63 d0             	movslq %eax,%rdx
ffff80000010822a:	48 01 d9             	add    %rbx,%rcx
ffff80000010822d:	48 89 d0             	mov    %rdx,%rax
ffff800000108230:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108234:	48 01 d0             	add    %rdx,%rax
ffff800000108237:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010823b:	48 01 c8             	add    %rcx,%rax
ffff80000010823e:	48 83 c0 10          	add    $0x10,%rax
ffff800000108242:	8b 00                	mov    (%rax),%eax
ffff800000108244:	83 f8 01             	cmp    $0x1,%eax
ffff800000108247:	0f 85 bd 02 00 00    	jne    ffff80000010850a <init_memory+0x9fd>
ffff80000010824d:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108254:	00 00 00 
ffff800000108257:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010825a:	48 63 d0             	movslq %eax,%rdx
ffff80000010825d:	48 01 d9             	add    %rbx,%rcx
ffff800000108260:	48 89 d0             	mov    %rdx,%rax
ffff800000108263:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108267:	48 01 d0             	add    %rdx,%rax
ffff80000010826a:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010826e:	48 01 c8             	add    %rcx,%rax
ffff800000108271:	48 8b 00             	mov    (%rax),%rax
ffff800000108274:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff80000010827a:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000108280:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000108284:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010828b:	00 00 00 
ffff80000010828e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108291:	48 63 d0             	movslq %eax,%rdx
ffff800000108294:	48 01 d9             	add    %rbx,%rcx
ffff800000108297:	48 89 d0             	mov    %rdx,%rax
ffff80000010829a:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010829e:	48 01 d0             	add    %rdx,%rax
ffff8000001082a1:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082a5:	48 01 c8             	add    %rcx,%rax
ffff8000001082a8:	48 8b 08             	mov    (%rax),%rcx
ffff8000001082ab:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001082b2:	00 00 00 
ffff8000001082b5:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001082b8:	48 63 d0             	movslq %eax,%rdx
ffff8000001082bb:	48 89 d0             	mov    %rdx,%rax
ffff8000001082be:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082c2:	48 01 d0             	add    %rdx,%rax
ffff8000001082c5:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082c9:	48 01 d8             	add    %rbx,%rax
ffff8000001082cc:	48 01 f0             	add    %rsi,%rax
ffff8000001082cf:	48 83 c0 08          	add    $0x8,%rax
ffff8000001082d3:	48 8b 00             	mov    (%rax),%rax
ffff8000001082d6:	48 01 c8             	add    %rcx,%rax
ffff8000001082d9:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001082df:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff8000001082e3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001082e7:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
ffff8000001082eb:	0f 83 1c 02 00 00    	jae    ffff80000010850d <init_memory+0xa00>
ffff8000001082f1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082f8:	00 00 00 
ffff8000001082fb:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108302:	00 
ffff800000108303:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010830a:	00 00 00 
ffff80000010830d:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108314:	00 
ffff800000108315:	48 89 d0             	mov    %rdx,%rax
ffff800000108318:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010831c:	48 01 d0             	add    %rdx,%rax
ffff80000010831f:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108323:	48 01 c8             	add    %rcx,%rax
ffff800000108326:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff80000010832a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108331:	00 00 00 
ffff800000108334:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff80000010833b:	00 
ffff80000010833c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000108340:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108347:	00 00 00 
ffff80000010834a:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff800000108351:	00 
ffff800000108352:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108356:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010835a:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010835e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108362:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000108366:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff80000010836a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010836e:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108372:	48 89 c2             	mov    %rax,%rdx
ffff800000108375:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108379:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff80000010837d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108381:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000108388:	00 
ffff800000108389:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010838d:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108391:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108395:	48 89 c2             	mov    %rax,%rdx
ffff800000108398:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010839c:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff8000001083a0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083a4:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff8000001083ab:	00 
ffff8000001083ac:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083b0:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff8000001083b7:	00 
ffff8000001083b8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083bc:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001083c3:	00 00 00 
ffff8000001083c6:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001083ca:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001083ce:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001083d2:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff8000001083d6:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001083da:	48 89 c2             	mov    %rax,%rdx
ffff8000001083dd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083e1:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff8000001083e5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083ec:	00 00 00 
ffff8000001083ef:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001083f6:	00 
ffff8000001083f7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001083fb:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001083ff:	48 89 c2             	mov    %rax,%rdx
ffff800000108402:	48 89 d0             	mov    %rdx,%rax
ffff800000108405:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108409:	48 01 d0             	add    %rdx,%rax
ffff80000010840c:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108410:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000108414:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108418:	48 89 10             	mov    %rdx,(%rax)
ffff80000010841b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010841f:	48 8b 00             	mov    (%rax),%rax
ffff800000108422:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000108426:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff80000010842d:	e9 bf 00 00 00       	jmp    ffff8000001084f1 <init_memory+0x9e4>
ffff800000108432:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108436:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010843a:	48 89 10             	mov    %rdx,(%rax)
ffff80000010843d:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108440:	48 98                	cltq
ffff800000108442:	48 c1 e0 15          	shl    $0x15,%rax
ffff800000108446:	48 89 c2             	mov    %rax,%rdx
ffff800000108449:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010844d:	48 01 c2             	add    %rax,%rdx
ffff800000108450:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108454:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000108458:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010845c:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108463:	00 
ffff800000108464:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108468:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff80000010846f:	00 
ffff800000108470:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108474:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff80000010847b:	00 
ffff80000010847c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108483:	00 00 00 
ffff800000108486:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff80000010848d:	00 
ffff80000010848e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108492:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108496:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010849a:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010849e:	48 01 d0             	add    %rdx,%rax
ffff8000001084a1:	48 8b 10             	mov    (%rax),%rdx
ffff8000001084a4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084a8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084ac:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001084b0:	83 e0 3f             	and    $0x3f,%eax
ffff8000001084b3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001084b8:	89 c1                	mov    %eax,%ecx
ffff8000001084ba:	48 d3 e6             	shl    %cl,%rsi
ffff8000001084bd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001084c4:	00 00 00 
ffff8000001084c7:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff8000001084ce:	00 
ffff8000001084cf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084d3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084d7:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff8000001084db:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001084df:	48 01 c8             	add    %rcx,%rax
ffff8000001084e2:	48 31 f2             	xor    %rsi,%rdx
ffff8000001084e5:	48 89 10             	mov    %rdx,(%rax)
ffff8000001084e8:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001084ec:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff8000001084f1:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001084f4:	48 63 d0             	movslq %eax,%rdx
ffff8000001084f7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001084fb:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084ff:	48 39 c2             	cmp    %rax,%rdx
ffff800000108502:	0f 82 2a ff ff ff    	jb     ffff800000108432 <init_memory+0x925>
ffff800000108508:	eb 04                	jmp    ffff80000010850e <init_memory+0xa01>
ffff80000010850a:	90                   	nop
ffff80000010850b:	eb 01                	jmp    ffff80000010850e <init_memory+0xa01>
ffff80000010850d:	90                   	nop
ffff80000010850e:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108512:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108515:	48 98                	cltq
ffff800000108517:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010851e:	00 00 00 
ffff800000108521:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000108528:	00 
ffff800000108529:	48 39 c2             	cmp    %rax,%rdx
ffff80000010852c:	0f 83 e8 fc ff ff    	jae    ffff80000010821a <init_memory+0x70d>
ffff800000108532:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108539:	00 00 00 
ffff80000010853c:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108543:	00 
ffff800000108544:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010854b:	00 00 00 
ffff80000010854e:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff800000108555:	00 
ffff800000108556:	48 89 10             	mov    %rdx,(%rax)
ffff800000108559:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108560:	00 00 00 
ffff800000108563:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010856a:	00 
ffff80000010856b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff800000108572:	00 
ffff800000108573:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010857a:	00 00 00 
ffff80000010857d:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108584:	00 
ffff800000108585:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff80000010858c:	00 
ffff80000010858d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108594:	00 00 00 
ffff800000108597:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010859e:	00 
ffff80000010859f:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001085a6:	00 
ffff8000001085a7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085ae:	00 00 00 
ffff8000001085b1:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001085b8:	00 
ffff8000001085b9:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001085c0:	00 
ffff8000001085c1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085c8:	00 00 00 
ffff8000001085cb:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff8000001085d2:	00 
ffff8000001085d3:	48 89 d0             	mov    %rdx,%rax
ffff8000001085d6:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001085da:	48 01 d0             	add    %rdx,%rax
ffff8000001085dd:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001085e1:	48 83 c0 07          	add    $0x7,%rax
ffff8000001085e5:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001085e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001085ec:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085f3:	00 00 00 
ffff8000001085f6:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff8000001085fd:	00 
ffff8000001085fe:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108605:	00 00 00 
ffff800000108608:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff80000010860f:	00 
ffff800000108610:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108617:	00 00 00 
ffff80000010861a:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff800000108621:	00 
ffff800000108622:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108629:	00 00 00 
ffff80000010862c:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108633:	00 
ffff800000108634:	49 89 c9             	mov    %rcx,%r9
ffff800000108637:	49 89 d0             	mov    %rdx,%r8
ffff80000010863a:	48 89 c1             	mov    %rax,%rcx
ffff80000010863d:	48 b8 f0 a6 ff ff ff 	movabs $0xffffffffffffa6f0,%rax
ffff800000108644:	ff ff ff 
ffff800000108647:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010864b:	48 89 c2             	mov    %rax,%rdx
ffff80000010864e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108653:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108658:	49 89 df             	mov    %rbx,%r15
ffff80000010865b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108660:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff800000108667:	ff ff ff 
ffff80000010866a:	49 01 da             	add    %rbx,%r10
ffff80000010866d:	41 ff d2             	call   *%r10
ffff800000108670:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108677:	00 00 00 
ffff80000010867a:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff800000108681:	00 
ffff800000108682:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108689:	00 00 00 
ffff80000010868c:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff800000108693:	00 
ffff800000108694:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010869b:	00 00 00 
ffff80000010869e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001086a5:	00 
ffff8000001086a6:	49 89 c9             	mov    %rcx,%r9
ffff8000001086a9:	49 89 d0             	mov    %rdx,%r8
ffff8000001086ac:	48 89 c1             	mov    %rax,%rcx
ffff8000001086af:	48 b8 28 a7 ff ff ff 	movabs $0xffffffffffffa728,%rax
ffff8000001086b6:	ff ff ff 
ffff8000001086b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001086bd:	48 89 c2             	mov    %rax,%rdx
ffff8000001086c0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001086c5:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001086ca:	49 89 df             	mov    %rbx,%r15
ffff8000001086cd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001086d2:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff8000001086d9:	ff ff ff 
ffff8000001086dc:	49 01 da             	add    %rbx,%r10
ffff8000001086df:	41 ff d2             	call   *%r10
ffff8000001086e2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086e9:	00 00 00 
ffff8000001086ec:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff8000001086f3:	00 
ffff8000001086f4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086fb:	00 00 00 
ffff8000001086fe:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108705:	00 
ffff800000108706:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010870d:	00 00 00 
ffff800000108710:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108717:	00 
ffff800000108718:	49 89 c9             	mov    %rcx,%r9
ffff80000010871b:	49 89 d0             	mov    %rdx,%r8
ffff80000010871e:	48 89 c1             	mov    %rax,%rcx
ffff800000108721:	48 b8 68 a7 ff ff ff 	movabs $0xffffffffffffa768,%rax
ffff800000108728:	ff ff ff 
ffff80000010872b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010872f:	48 89 c2             	mov    %rax,%rdx
ffff800000108732:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108737:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010873c:	49 89 df             	mov    %rbx,%r15
ffff80000010873f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108744:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff80000010874b:	ff ff ff 
ffff80000010874e:	49 01 da             	add    %rbx,%r10
ffff800000108751:	41 ff d2             	call   *%r10
ffff800000108754:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010875b:	00 00 00 
ffff80000010875e:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108765:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff80000010876c:	00 00 00 
ffff80000010876f:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108776:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010877d:	e9 c1 00 00 00       	jmp    ffff800000108843 <init_memory+0xd36>
ffff800000108782:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108789:	00 00 00 
ffff80000010878c:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108793:	00 
ffff800000108794:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108797:	48 63 d0             	movslq %eax,%rdx
ffff80000010879a:	48 89 d0             	mov    %rdx,%rax
ffff80000010879d:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001087a1:	48 01 d0             	add    %rdx,%rax
ffff8000001087a4:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001087a8:	48 01 c8             	add    %rcx,%rax
ffff8000001087ab:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001087af:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087b3:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001087b7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087bb:	48 8b 10             	mov    (%rax),%rdx
ffff8000001087be:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087c2:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff8000001087c6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087ca:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff8000001087ce:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087d2:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001087d6:	51                   	push   %rcx
ffff8000001087d7:	52                   	push   %rdx
ffff8000001087d8:	49 89 f9             	mov    %rdi,%r9
ffff8000001087db:	49 89 f0             	mov    %rsi,%r8
ffff8000001087de:	48 89 c1             	mov    %rax,%rcx
ffff8000001087e1:	48 b8 a8 a7 ff ff ff 	movabs $0xffffffffffffa7a8,%rax
ffff8000001087e8:	ff ff ff 
ffff8000001087eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001087ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001087f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001087f7:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001087fc:	49 89 df             	mov    %rbx,%r15
ffff8000001087ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108804:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff80000010880b:	ff ff ff 
ffff80000010880e:	49 01 da             	add    %rbx,%r10
ffff800000108811:	41 ff d2             	call   *%r10
ffff800000108814:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108818:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010881c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000108820:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
ffff800000108827:	00 00 00 
ffff80000010882a:	48 39 c2             	cmp    %rax,%rdx
ffff80000010882d:	75 10                	jne    ffff80000010883f <init_memory+0xd32>
ffff80000010882f:	48 ba 78 10 00 00 00 	movabs $0x1078,%rdx
ffff800000108836:	00 00 00 
ffff800000108839:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010883c:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff80000010883f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108843:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108846:	48 63 d0             	movslq %eax,%rdx
ffff800000108849:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108850:	00 00 00 
ffff800000108853:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff80000010885a:	00 
ffff80000010885b:	48 39 c2             	cmp    %rax,%rdx
ffff80000010885e:	0f 82 1e ff ff ff    	jb     ffff800000108782 <init_memory+0xc75>
ffff800000108864:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010886b:	00 00 00 
ffff80000010886e:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108875:	00 
ffff800000108876:	48 89 c2             	mov    %rax,%rdx
ffff800000108879:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108880:	00 00 00 
ffff800000108883:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff80000010888a:	00 
ffff80000010888b:	48 01 d0             	add    %rdx,%rax
ffff80000010888e:	48 05 00 01 00 00    	add    $0x100,%rax
ffff800000108894:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108898:	48 89 c2             	mov    %rax,%rdx
ffff80000010889b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088a2:	00 00 00 
ffff8000001088a5:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff8000001088ac:	00 
ffff8000001088ad:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088b4:	00 00 00 
ffff8000001088b7:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff8000001088be:	00 
ffff8000001088bf:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088c6:	00 00 00 
ffff8000001088c9:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff8000001088d0:	00 
ffff8000001088d1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088d8:	00 00 00 
ffff8000001088db:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff8000001088e2:	00 
ffff8000001088e3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088ea:	00 00 00 
ffff8000001088ed:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff8000001088f4:	00 
ffff8000001088f5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088fc:	00 00 00 
ffff8000001088ff:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108906:	00 
ffff800000108907:	51                   	push   %rcx
ffff800000108908:	52                   	push   %rdx
ffff800000108909:	49 89 f9             	mov    %rdi,%r9
ffff80000010890c:	49 89 f0             	mov    %rsi,%r8
ffff80000010890f:	48 89 c1             	mov    %rax,%rcx
ffff800000108912:	48 b8 20 a8 ff ff ff 	movabs $0xffffffffffffa820,%rax
ffff800000108919:	ff ff ff 
ffff80000010891c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108920:	48 89 c2             	mov    %rax,%rdx
ffff800000108923:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108928:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010892d:	49 89 df             	mov    %rbx,%r15
ffff800000108930:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108935:	49 ba ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r10
ffff80000010893c:	ff ff ff 
ffff80000010893f:	49 01 da             	add    %rbx,%r10
ffff800000108942:	41 ff d2             	call   *%r10
ffff800000108945:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108949:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108950:	00 00 00 
ffff800000108953:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff80000010895a:	00 
ffff80000010895b:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff800000108962:	80 00 00 
ffff800000108965:	48 01 d0             	add    %rdx,%rax
ffff800000108968:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010896c:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff80000010896f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108976:	eb 45                	jmp    ffff8000001089bd <init_memory+0xeb0>
ffff800000108978:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010897f:	00 00 00 
ffff800000108982:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108989:	00 
ffff80000010898a:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010898d:	48 63 d0             	movslq %eax,%rdx
ffff800000108990:	48 89 d0             	mov    %rdx,%rax
ffff800000108993:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108997:	48 01 d0             	add    %rdx,%rax
ffff80000010899a:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010899e:	48 01 c8             	add    %rcx,%rax
ffff8000001089a1:	be 93 00 00 00       	mov    $0x93,%esi
ffff8000001089a6:	48 89 c7             	mov    %rax,%rdi
ffff8000001089a9:	48 b8 47 83 ff ff ff 	movabs $0xffffffffffff8347,%rax
ffff8000001089b0:	ff ff ff 
ffff8000001089b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001089b7:	ff d0                	call   *%rax
ffff8000001089b9:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001089bd:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001089c0:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff8000001089c3:	7e b3                	jle    ffff800000108978 <init_memory+0xe6b>
ffff8000001089c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001089ca:	48 ba 1e 83 ff ff ff 	movabs $0xffffffffffff831e,%rdx
ffff8000001089d1:	ff ff ff 
ffff8000001089d4:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001089d8:	ff d2                	call   *%rdx
ffff8000001089da:	48 ba 80 10 00 00 00 	movabs $0x1080,%rdx
ffff8000001089e1:	00 00 00 
ffff8000001089e4:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff8000001089e8:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff8000001089ef:	00 00 00 
ffff8000001089f2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001089f6:	48 89 c1             	mov    %rax,%rcx
ffff8000001089f9:	48 b8 7c a8 ff ff ff 	movabs $0xffffffffffffa87c,%rax
ffff800000108a00:	ff ff ff 
ffff800000108a03:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a07:	48 89 c2             	mov    %rax,%rdx
ffff800000108a0a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a0f:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a14:	49 89 df             	mov    %rbx,%r15
ffff800000108a17:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a1c:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000108a23:	ff ff ff 
ffff800000108a26:	49 01 d8             	add    %rbx,%r8
ffff800000108a29:	41 ff d0             	call   *%r8
ffff800000108a2c:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a33:	00 00 00 
ffff800000108a36:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a3a:	48 89 c2             	mov    %rax,%rdx
ffff800000108a3d:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a44:	80 ff ff 
ffff800000108a47:	48 01 d0             	add    %rdx,%rax
ffff800000108a4a:	48 8b 00             	mov    (%rax),%rax
ffff800000108a4d:	48 89 c1             	mov    %rax,%rcx
ffff800000108a50:	48 b8 91 a8 ff ff ff 	movabs $0xffffffffffffa891,%rax
ffff800000108a57:	ff ff ff 
ffff800000108a5a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a5e:	48 89 c2             	mov    %rax,%rdx
ffff800000108a61:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a66:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a6b:	49 89 df             	mov    %rbx,%r15
ffff800000108a6e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a73:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000108a7a:	ff ff ff 
ffff800000108a7d:	49 01 d8             	add    %rbx,%r8
ffff800000108a80:	41 ff d0             	call   *%r8
ffff800000108a83:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a8a:	00 00 00 
ffff800000108a8d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a91:	48 89 c2             	mov    %rax,%rdx
ffff800000108a94:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a9b:	80 ff ff 
ffff800000108a9e:	48 01 d0             	add    %rdx,%rax
ffff800000108aa1:	48 8b 00             	mov    (%rax),%rax
ffff800000108aa4:	b0 00                	mov    $0x0,%al
ffff800000108aa6:	48 89 c2             	mov    %rax,%rdx
ffff800000108aa9:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108ab0:	80 ff ff 
ffff800000108ab3:	48 01 d0             	add    %rdx,%rax
ffff800000108ab6:	48 8b 00             	mov    (%rax),%rax
ffff800000108ab9:	b0 00                	mov    $0x0,%al
ffff800000108abb:	48 89 c1             	mov    %rax,%rcx
ffff800000108abe:	48 b8 a7 a8 ff ff ff 	movabs $0xffffffffffffa8a7,%rax
ffff800000108ac5:	ff ff ff 
ffff800000108ac8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108acc:	48 89 c2             	mov    %rax,%rdx
ffff800000108acf:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108ad4:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108ad9:	49 89 df             	mov    %rbx,%r15
ffff800000108adc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108ae1:	49 b8 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%r8
ffff800000108ae8:	ff ff ff 
ffff800000108aeb:	49 01 d8             	add    %rbx,%r8
ffff800000108aee:	41 ff d0             	call   *%r8
ffff800000108af1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108af8:	eb 36                	jmp    ffff800000108b30 <init_memory+0x1023>
ffff800000108afa:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108afd:	48 98                	cltq
ffff800000108aff:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000108b06:	00 
ffff800000108b07:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108b0e:	00 00 00 
ffff800000108b11:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108b15:	48 01 c2             	add    %rax,%rdx
ffff800000108b18:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108b1f:	80 ff ff 
ffff800000108b22:	48 01 d0             	add    %rdx,%rax
ffff800000108b25:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108b2c:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108b30:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff800000108b34:	7e c4                	jle    ffff800000108afa <init_memory+0xfed>
ffff800000108b36:	48 b8 be a8 ff ff ff 	movabs $0xffffffffffffa8be,%rax
ffff800000108b3d:	ff ff ff 
ffff800000108b40:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108b44:	48 89 c2             	mov    %rax,%rdx
ffff800000108b47:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108b4c:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108b51:	49 89 df             	mov    %rbx,%r15
ffff800000108b54:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108b59:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000108b60:	ff ff ff 
ffff800000108b63:	48 01 d9             	add    %rbx,%rcx
ffff800000108b66:	ff d1                	call   *%rcx
ffff800000108b68:	0f 20 d8             	mov    %cr3,%rax
ffff800000108b6b:	0f 22 d8             	mov    %rax,%cr3
ffff800000108b6e:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108b72:	90                   	nop
ffff800000108b73:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff800000108b77:	5b                   	pop    %rbx
ffff800000108b78:	41 5f                	pop    %r15
ffff800000108b7a:	5d                   	pop    %rbp
ffff800000108b7b:	c3                   	ret

ffff800000108b7c <alloc_page>:
ffff800000108b7c:	f3 0f 1e fa          	endbr64
ffff800000108b80:	55                   	push   %rbp
ffff800000108b81:	48 89 e5             	mov    %rsp,%rbp
ffff800000108b84:	41 57                	push   %r15
ffff800000108b86:	53                   	push   %rbx
ffff800000108b87:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000108b8b:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000108b8b <alloc_page+0xf>
ffff800000108b92:	49 bb 25 6a 00 00 00 	movabs $0x6a25,%r11
ffff800000108b99:	00 00 00 
ffff800000108b9c:	4c 01 db             	add    %r11,%rbx
ffff800000108b9f:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
ffff800000108ba5:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
ffff800000108bab:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
ffff800000108bb2:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000108bb9:	00 
ffff800000108bba:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bc1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000108bc8:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bcf:	74 5b                	je     ffff800000108c2c <alloc_page+0xb0>
ffff800000108bd1:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bd8:	7f 7c                	jg     ffff800000108c56 <alloc_page+0xda>
ffff800000108bda:	83 bd 7c ff ff ff 01 	cmpl   $0x1,-0x84(%rbp)
ffff800000108be1:	74 0b                	je     ffff800000108bee <alloc_page+0x72>
ffff800000108be3:	83 bd 7c ff ff ff 02 	cmpl   $0x2,-0x84(%rbp)
ffff800000108bea:	74 1e                	je     ffff800000108c0a <alloc_page+0x8e>
ffff800000108bec:	eb 68                	jmp    ffff800000108c56 <alloc_page+0xda>
ffff800000108bee:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bf5:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108bfc:	00 00 00 
ffff800000108bff:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c02:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c05:	e9 88 00 00 00       	jmp    ffff800000108c92 <alloc_page+0x116>
ffff800000108c0a:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108c11:	00 00 00 
ffff800000108c14:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c17:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c1a:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff800000108c21:	00 00 00 
ffff800000108c24:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c27:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c2a:	eb 66                	jmp    ffff800000108c92 <alloc_page+0x116>
ffff800000108c2c:	48 b8 78 10 00 00 00 	movabs $0x1078,%rax
ffff800000108c33:	00 00 00 
ffff800000108c36:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c39:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c3c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108c43:	00 00 00 
ffff800000108c46:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108c4d:	00 
ffff800000108c4e:	83 e8 01             	sub    $0x1,%eax
ffff800000108c51:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c54:	eb 3c                	jmp    ffff800000108c92 <alloc_page+0x116>
ffff800000108c56:	48 b8 c8 a8 ff ff ff 	movabs $0xffffffffffffa8c8,%rax
ffff800000108c5d:	ff ff ff 
ffff800000108c60:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108c64:	48 89 c2             	mov    %rax,%rdx
ffff800000108c67:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108c6c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000108c71:	49 89 df             	mov    %rbx,%r15
ffff800000108c74:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c79:	48 b9 ca 52 ff ff ff 	movabs $0xffffffffffff52ca,%rcx
ffff800000108c80:	ff ff ff 
ffff800000108c83:	48 01 d9             	add    %rbx,%rcx
ffff800000108c86:	ff d1                	call   *%rcx
ffff800000108c88:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c8d:	e9 79 02 00 00       	jmp    ffff800000108f0b <alloc_page+0x38f>
ffff800000108c92:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108c95:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000108c98:	e9 5d 02 00 00       	jmp    ffff800000108efa <alloc_page+0x37e>
ffff800000108c9d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108ca4:	00 00 00 
ffff800000108ca7:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108cae:	00 
ffff800000108caf:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108cb2:	48 63 d0             	movslq %eax,%rdx
ffff800000108cb5:	48 89 d0             	mov    %rdx,%rax
ffff800000108cb8:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cbc:	48 01 d0             	add    %rdx,%rax
ffff800000108cbf:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108cc3:	48 01 c8             	add    %rcx,%rax
ffff800000108cc6:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000108cca:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108cd0:	48 98                	cltq
ffff800000108cd2:	48 39 c2             	cmp    %rax,%rdx
ffff800000108cd5:	0f 82 1a 02 00 00    	jb     ffff800000108ef5 <alloc_page+0x379>
ffff800000108cdb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108ce2:	00 00 00 
ffff800000108ce5:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108cec:	00 
ffff800000108ced:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108cf0:	48 63 d0             	movslq %eax,%rdx
ffff800000108cf3:	48 89 d0             	mov    %rdx,%rax
ffff800000108cf6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cfa:	48 01 d0             	add    %rdx,%rax
ffff800000108cfd:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108d01:	48 01 c8             	add    %rcx,%rax
ffff800000108d04:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000108d08:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d0c:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108d10:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d14:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108d18:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d1c:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000108d20:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d24:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000108d28:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d2c:	48 8b 40 20          	mov    0x20(%rax),%rax
ffff800000108d30:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d34:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000108d38:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d3c:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d3f:	48 89 c2             	mov    %rax,%rdx
ffff800000108d42:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108d47:	48 29 d0             	sub    %rdx,%rax
ffff800000108d4a:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000108d4e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d52:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000108d56:	e9 8a 01 00 00       	jmp    ffff800000108ee5 <alloc_page+0x369>
ffff800000108d5b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108d62:	00 00 00 
ffff800000108d65:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108d6c:	00 
ffff800000108d6d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000108d71:	48 c1 ea 06          	shr    $0x6,%rdx
ffff800000108d75:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000108d79:	48 01 d0             	add    %rdx,%rax
ffff800000108d7c:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff800000108d80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108d84:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d87:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000108d8b:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000108d8f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000108d93:	e9 1f 01 00 00       	jmp    ffff800000108eb7 <alloc_page+0x33b>
ffff800000108d98:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108d9c:	48 8b 00             	mov    (%rax),%rax
ffff800000108d9f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000108da3:	89 d1                	mov    %edx,%ecx
ffff800000108da5:	48 d3 e8             	shr    %cl,%rax
ffff800000108da8:	48 89 c6             	mov    %rax,%rsi
ffff800000108dab:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108daf:	48 83 c0 08          	add    $0x8,%rax
ffff800000108db3:	48 8b 10             	mov    (%rax),%rdx
ffff800000108db6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108dba:	89 c1                	mov    %eax,%ecx
ffff800000108dbc:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108dc1:	29 c8                	sub    %ecx,%eax
ffff800000108dc3:	89 c1                	mov    %eax,%ecx
ffff800000108dc5:	48 d3 e2             	shl    %cl,%rdx
ffff800000108dc8:	48 89 d0             	mov    %rdx,%rax
ffff800000108dcb:	48 09 c6             	or     %rax,%rsi
ffff800000108dce:	48 89 f2             	mov    %rsi,%rdx
ffff800000108dd1:	83 bd 78 ff ff ff 40 	cmpl   $0x40,-0x88(%rbp)
ffff800000108dd8:	74 19                	je     ffff800000108df3 <alloc_page+0x277>
ffff800000108dda:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108de0:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000108de5:	89 c1                	mov    %eax,%ecx
ffff800000108de7:	48 d3 e6             	shl    %cl,%rsi
ffff800000108dea:	48 89 f0             	mov    %rsi,%rax
ffff800000108ded:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108df1:	eb 07                	jmp    ffff800000108dfa <alloc_page+0x27e>
ffff800000108df3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
ffff800000108dfa:	48 21 d0             	and    %rdx,%rax
ffff800000108dfd:	48 85 c0             	test   %rax,%rax
ffff800000108e00:	0f 85 ac 00 00 00    	jne    ffff800000108eb2 <alloc_page+0x336>
ffff800000108e06:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000108e0a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108e0e:	48 01 d0             	add    %rdx,%rax
ffff800000108e11:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108e15:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000108e19:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
ffff800000108e20:	00 
ffff800000108e21:	eb 58                	jmp    ffff800000108e7b <alloc_page+0x2ff>
ffff800000108e23:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e2a:	00 00 00 
ffff800000108e2d:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e34:	00 
ffff800000108e35:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108e39:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108e3d:	48 01 c2             	add    %rax,%rdx
ffff800000108e40:	48 89 d0             	mov    %rdx,%rax
ffff800000108e43:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108e47:	48 01 d0             	add    %rdx,%rax
ffff800000108e4a:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108e4e:	48 01 c8             	add    %rcx,%rax
ffff800000108e51:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000108e55:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000108e5c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000108e60:	48 89 d6             	mov    %rdx,%rsi
ffff800000108e63:	48 89 c7             	mov    %rax,%rdi
ffff800000108e66:	48 b8 47 83 ff ff ff 	movabs $0xffffffffffff8347,%rax
ffff800000108e6d:	ff ff ff 
ffff800000108e70:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108e74:	ff d0                	call   *%rax
ffff800000108e76:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff800000108e7b:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108e81:	48 98                	cltq
ffff800000108e83:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
ffff800000108e87:	72 9a                	jb     ffff800000108e23 <alloc_page+0x2a7>
ffff800000108e89:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e90:	00 00 00 
ffff800000108e93:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e9a:	00 
ffff800000108e9b:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108e9f:	48 89 d0             	mov    %rdx,%rax
ffff800000108ea2:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108ea6:	48 01 d0             	add    %rdx,%rax
ffff800000108ea9:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108ead:	48 01 c8             	add    %rcx,%rax
ffff800000108eb0:	eb 59                	jmp    ffff800000108f0b <alloc_page+0x38f>
ffff800000108eb2:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff800000108eb7:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108ebc:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000108ec0:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff800000108ec4:	0f 82 ce fe ff ff    	jb     ffff800000108d98 <alloc_page+0x21c>
ffff800000108eca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108ece:	83 e0 3f             	and    $0x3f,%eax
ffff800000108ed1:	48 85 c0             	test   %rax,%rax
ffff800000108ed4:	74 06                	je     ffff800000108edc <alloc_page+0x360>
ffff800000108ed6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108eda:	eb 05                	jmp    ffff800000108ee1 <alloc_page+0x365>
ffff800000108edc:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108ee1:	48 01 45 d8          	add    %rax,-0x28(%rbp)
ffff800000108ee5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108ee9:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
ffff800000108eed:	0f 83 68 fe ff ff    	jae    ffff800000108d5b <alloc_page+0x1df>
ffff800000108ef3:	eb 01                	jmp    ffff800000108ef6 <alloc_page+0x37a>
ffff800000108ef5:	90                   	nop
ffff800000108ef6:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108efa:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108efd:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
ffff800000108f00:	0f 8e 97 fd ff ff    	jle    ffff800000108c9d <alloc_page+0x121>
ffff800000108f06:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108f0b:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff800000108f0f:	5b                   	pop    %rbx
ffff800000108f10:	41 5f                	pop    %r15
ffff800000108f12:	5d                   	pop    %rbp
ffff800000108f13:	c3                   	ret
