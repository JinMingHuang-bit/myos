
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 30 9d 00 00 	lgdt   0x9d30(%rip)        # ffff800000109d48 <GDT_END>
ffff800000100018:	0f 01 1d 33 ad 00 00 	lidt   0xad33(%rip)        # ffff80000010ad52 <IDT_END>
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
ffff800000100099:	48 8d 3d b2 9c 00 00 	lea    0x9cb2(%rip),%rdi        # ffff800000109d52 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 9e ac 00 00 	lea    0xac9e(%rip),%rdx        # ffff80000010ad5c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d c8 9b 00 00 	lea    0x9bc8(%rip),%rdi        # ffff800000109cc0 <GDT_Table>
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
ffff800000100161:	e8 8e 44 00 00       	call   ffff8000001045f4 <color_printk>
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
ffff80000010400f:	49 bb a8 ae 00 00 00 	movabs $0xaea8,%r11
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
ffff800000104140:	49 bb 77 ad 00 00 00 	movabs $0xad77,%r11
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
ffff800000104165:	48 83 ec 10          	sub    $0x10,%rsp
ffff800000104169:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104169 <Start_Kernel+0xf>
ffff800000104170:	49 bb 47 ad 00 00 00 	movabs $0xad47,%r11
ffff800000104177:	00 00 00 
ffff80000010417a:	4c 01 db             	add    %r11,%rbx
ffff80000010417d:	0f 20 e0             	mov    %cr4,%rax
ffff800000104180:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104184:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
ffff80000010418b:	00 
ffff80000010418c:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
ffff800000104193:	00 
ffff800000104194:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104198:	0f 22 e0             	mov    %rax,%cr4
ffff80000010419b:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff8000001041a2:	80 ff ff 
ffff8000001041a5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001041a9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041b0:	00 00 00 
ffff8000001041b3:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff8000001041ba:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041c1:	00 00 00 
ffff8000001041c4:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff8000001041cb:	00 
ffff8000001041cc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041d3:	00 00 00 
ffff8000001041d6:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001041dd:	00 
ffff8000001041de:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041e5:	00 00 00 
ffff8000001041e8:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001041ef:	00 
ffff8000001041f0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001041f7:	00 00 00 
ffff8000001041fa:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff800000104201:	00 
ffff800000104202:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104209:	00 00 00 
ffff80000010420c:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff800000104213:	00 
ffff800000104214:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010421b:	00 00 00 
ffff80000010421e:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff800000104223:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010422a:	00 00 00 
ffff80000010422d:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff800000104230:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104237:	00 00 00 
ffff80000010423a:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010423e:	0f af c2             	imul   %edx,%eax
ffff800000104241:	c1 e0 02             	shl    $0x2,%eax
ffff800000104244:	48 98                	cltq
ffff800000104246:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010424d:	00 00 00 
ffff800000104250:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff800000104255:	b8 40 00 00 00       	mov    $0x40,%eax
ffff80000010425a:	0f 00 d8             	ltr    %eax
ffff80000010425d:	68 00 7c 00 00       	push   $0x7c00
ffff800000104262:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104269:	ff 
ffff80000010426a:	68 00 7c 00 00       	push   $0x7c00
ffff80000010426f:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104276:	ff 
ffff800000104277:	68 00 7c 00 00       	push   $0x7c00
ffff80000010427c:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104283:	ff 
ffff800000104284:	68 00 7c 00 00       	push   $0x7c00
ffff800000104289:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104290:	ff 
ffff800000104291:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff800000104298:	80 ff ff 
ffff80000010429b:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff8000001042a2:	80 ff ff 
ffff8000001042a5:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042ac:	80 ff ff 
ffff8000001042af:	48 89 c1             	mov    %rax,%rcx
ffff8000001042b2:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042b9:	80 ff ff 
ffff8000001042bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001042bf:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042c6:	80 ff ff 
ffff8000001042c9:	48 89 c6             	mov    %rax,%rsi
ffff8000001042cc:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff8000001042d3:	80 ff ff 
ffff8000001042d6:	48 89 c7             	mov    %rax,%rdi
ffff8000001042d9:	48 b8 50 51 ff ff ff 	movabs $0xffffffffffff5150,%rax
ffff8000001042e0:	ff ff ff 
ffff8000001042e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042e7:	ff d0                	call   *%rax
ffff8000001042e9:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042ed:	49 89 df             	mov    %rbx,%r15
ffff8000001042f0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f5:	48 ba 3f 81 ff ff ff 	movabs $0xffffffffffff813f,%rdx
ffff8000001042fc:	ff ff ff 
ffff8000001042ff:	48 01 da             	add    %rbx,%rdx
ffff800000104302:	ff d2                	call   *%rdx
ffff800000104304:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff80000010430b:	ff ff ff 
ffff80000010430e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104312:	48 89 c2             	mov    %rax,%rdx
ffff800000104315:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010431c:	00 00 00 
ffff80000010431f:	48 89 94 03 d0 02 00 	mov    %rdx,0x2d0(%rbx,%rax,1)
ffff800000104326:	00 
ffff800000104327:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff80000010432e:	ff ff ff 
ffff800000104331:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104335:	48 89 c2             	mov    %rax,%rdx
ffff800000104338:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010433f:	00 00 00 
ffff800000104342:	48 89 94 03 d8 02 00 	mov    %rdx,0x2d8(%rbx,%rax,1)
ffff800000104349:	00 
ffff80000010434a:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff800000104351:	ff ff ff 
ffff800000104354:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104358:	48 89 c2             	mov    %rax,%rdx
ffff80000010435b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104362:	00 00 00 
ffff800000104365:	48 89 94 03 e0 02 00 	mov    %rdx,0x2e0(%rbx,%rax,1)
ffff80000010436c:	00 
ffff80000010436d:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff800000104374:	ff ff ff 
ffff800000104377:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010437b:	48 89 c2             	mov    %rax,%rdx
ffff80000010437e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104385:	00 00 00 
ffff800000104388:	48 89 94 03 e8 02 00 	mov    %rdx,0x2e8(%rbx,%rax,1)
ffff80000010438f:	00 
ffff800000104390:	48 b8 48 9a ff ff ff 	movabs $0xffffffffffff9a48,%rax
ffff800000104397:	ff ff ff 
ffff80000010439a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010439e:	48 89 c2             	mov    %rax,%rdx
ffff8000001043a1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043a6:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043ab:	49 89 df             	mov    %rbx,%r15
ffff8000001043ae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043b3:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001043ba:	ff ff ff 
ffff8000001043bd:	48 01 d9             	add    %rbx,%rcx
ffff8000001043c0:	ff d1                	call   *%rcx
ffff8000001043c2:	48 b8 59 9a ff ff ff 	movabs $0xffffffffffff9a59,%rax
ffff8000001043c9:	ff ff ff 
ffff8000001043cc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043d0:	48 89 c2             	mov    %rax,%rdx
ffff8000001043d3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043d8:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043dd:	49 89 df             	mov    %rbx,%r15
ffff8000001043e0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043e5:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001043ec:	ff ff ff 
ffff8000001043ef:	48 01 d9             	add    %rbx,%rcx
ffff8000001043f2:	ff d1                	call   *%rcx
ffff8000001043f4:	48 b8 68 9a ff ff ff 	movabs $0xffffffffffff9a68,%rax
ffff8000001043fb:	ff ff ff 
ffff8000001043fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104402:	48 89 c2             	mov    %rax,%rdx
ffff800000104405:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010440a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010440f:	49 89 df             	mov    %rbx,%r15
ffff800000104412:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104417:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010441e:	ff ff ff 
ffff800000104421:	48 01 d9             	add    %rbx,%rcx
ffff800000104424:	ff d1                	call   *%rcx
ffff800000104426:	49 89 df             	mov    %rbx,%r15
ffff800000104429:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010442e:	48 ba d7 89 ff ff ff 	movabs $0xffffffffffff89d7,%rdx
ffff800000104435:	ff ff ff 
ffff800000104438:	48 01 da             	add    %rbx,%rdx
ffff80000010443b:	ff d2                	call   *%rdx
ffff80000010443d:	48 b8 c0 9a ff ff ff 	movabs $0xffffffffffff9ac0,%rax
ffff800000104444:	ff ff ff 
ffff800000104447:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010444b:	48 89 c2             	mov    %rax,%rdx
ffff80000010444e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104453:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104458:	49 89 df             	mov    %rbx,%r15
ffff80000010445b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104460:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000104467:	ff ff ff 
ffff80000010446a:	48 01 d9             	add    %rbx,%rcx
ffff80000010446d:	ff d1                	call   *%rcx
ffff80000010446f:	48 b8 f8 9a ff ff ff 	movabs $0xffffffffffff9af8,%rax
ffff800000104476:	ff ff ff 
ffff800000104479:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010447d:	48 89 c2             	mov    %rax,%rdx
ffff800000104480:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104485:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010448a:	49 89 df             	mov    %rbx,%r15
ffff80000010448d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104492:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000104499:	ff ff ff 
ffff80000010449c:	48 01 d9             	add    %rbx,%rcx
ffff80000010449f:	ff d1                	call   *%rcx
ffff8000001044a1:	90                   	nop
ffff8000001044a2:	eb fd                	jmp    ffff8000001044a1 <Start_Kernel+0x347>

ffff8000001044a4 <Cstrlen>:
ffff8000001044a4:	f3 0f 1e fa          	endbr64
ffff8000001044a8:	55                   	push   %rbp
ffff8000001044a9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044ac:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044ac <Cstrlen+0x8>
ffff8000001044b3:	49 bb 04 aa 00 00 00 	movabs $0xaa04,%r11
ffff8000001044ba:	00 00 00 
ffff8000001044bd:	4c 01 d8             	add    %r11,%rax
ffff8000001044c0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001044c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044c8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001044cc:	eb 05                	jmp    ffff8000001044d3 <Cstrlen+0x2f>
ffff8000001044ce:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001044d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001044d7:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044da:	84 c0                	test   %al,%al
ffff8000001044dc:	75 f0                	jne    ffff8000001044ce <Cstrlen+0x2a>
ffff8000001044de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001044e2:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff8000001044e6:	5d                   	pop    %rbp
ffff8000001044e7:	c3                   	ret

ffff8000001044e8 <putchar>:
ffff8000001044e8:	f3 0f 1e fa          	endbr64
ffff8000001044ec:	55                   	push   %rbp
ffff8000001044ed:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044f0:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044f0 <putchar+0x8>
ffff8000001044f7:	49 bb c0 a9 00 00 00 	movabs $0xa9c0,%r11
ffff8000001044fe:	00 00 00 
ffff800000104501:	4c 01 d8             	add    %r11,%rax
ffff800000104504:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104508:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff80000010450b:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff80000010450e:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104511:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104515:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff800000104519:	8b 55 10             	mov    0x10(%rbp),%edx
ffff80000010451c:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff80000010451f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104526:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010452d:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104534:	00 
ffff800000104535:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010453c:	00 
ffff80000010453d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000104544:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff800000104548:	48 63 d2             	movslq %edx,%rdx
ffff80000010454b:	48 89 d1             	mov    %rdx,%rcx
ffff80000010454e:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000104552:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff800000104559:	ff ff ff 
ffff80000010455c:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104560:	48 01 c8             	add    %rcx,%rax
ffff800000104563:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104567:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010456e:	eb 7a                	jmp    ffff8000001045ea <putchar+0x102>
ffff800000104570:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff800000104573:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104576:	01 d0                	add    %edx,%eax
ffff800000104578:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff80000010457c:	48 63 d0             	movslq %eax,%rdx
ffff80000010457f:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104582:	48 98                	cltq
ffff800000104584:	48 01 d0             	add    %rdx,%rax
ffff800000104587:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff80000010458e:	00 
ffff80000010458f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104593:	48 01 d0             	add    %rdx,%rax
ffff800000104596:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff80000010459a:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001045a1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001045a8:	eb 31                	jmp    ffff8000001045db <putchar+0xf3>
ffff8000001045aa:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001045ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001045b1:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045b4:	0f b6 c0             	movzbl %al,%eax
ffff8000001045b7:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff8000001045ba:	85 c0                	test   %eax,%eax
ffff8000001045bc:	74 0b                	je     ffff8000001045c9 <putchar+0xe1>
ffff8000001045be:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045c2:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff8000001045c5:	89 10                	mov    %edx,(%rax)
ffff8000001045c7:	eb 09                	jmp    ffff8000001045d2 <putchar+0xea>
ffff8000001045c9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045cd:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff8000001045d0:	89 10                	mov    %edx,(%rax)
ffff8000001045d2:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff8000001045d7:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff8000001045db:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff8000001045df:	7e c9                	jle    ffff8000001045aa <putchar+0xc2>
ffff8000001045e1:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff8000001045e6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001045ea:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff8000001045ee:	7e 80                	jle    ffff800000104570 <putchar+0x88>
ffff8000001045f0:	90                   	nop
ffff8000001045f1:	90                   	nop
ffff8000001045f2:	5d                   	pop    %rbp
ffff8000001045f3:	c3                   	ret

ffff8000001045f4 <color_printk>:
ffff8000001045f4:	f3 0f 1e fa          	endbr64
ffff8000001045f8:	55                   	push   %rbp
ffff8000001045f9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001045fc:	53                   	push   %rbx
ffff8000001045fd:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104604:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104604 <color_printk+0x10>
ffff80000010460b:	49 bb ac a8 00 00 00 	movabs $0xa8ac,%r11
ffff800000104612:	00 00 00 
ffff800000104615:	4c 01 db             	add    %r11,%rbx
ffff800000104618:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff80000010461e:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104624:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff80000010462b:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104632:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff800000104639:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff800000104640:	84 c0                	test   %al,%al
ffff800000104642:	74 23                	je     ffff800000104667 <color_printk+0x73>
ffff800000104644:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff80000010464b:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff80000010464f:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff800000104653:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff800000104657:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff80000010465b:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff80000010465f:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff800000104663:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff800000104667:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff80000010466e:	00 00 00 
ffff800000104671:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104678:	00 00 00 
ffff80000010467b:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104682:	00 00 00 
ffff800000104685:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff80000010468c:	00 00 00 
ffff80000010468f:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff800000104696:	00 00 00 
ffff800000104699:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff80000010469d:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001046a4:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001046ab:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001046b2:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff8000001046b9:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff8000001046c0:	48 89 c6             	mov    %rax,%rsi
ffff8000001046c3:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046ca:	00 00 00 
ffff8000001046cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046d1:	48 89 c7             	mov    %rax,%rdi
ffff8000001046d4:	48 b8 c4 61 ff ff ff 	movabs $0xffffffffffff61c4,%rax
ffff8000001046db:	ff ff ff 
ffff8000001046de:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046e2:	ff d0                	call   *%rax
ffff8000001046e4:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff8000001046ea:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001046f1:	00 00 00 
ffff8000001046f4:	e9 81 04 00 00       	jmp    ffff800000104b7a <color_printk+0x586>
ffff8000001046f9:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104700:	7e 0c                	jle    ffff80000010470e <color_printk+0x11a>
ffff800000104702:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104709:	e9 45 02 00 00       	jmp    ffff800000104953 <color_printk+0x35f>
ffff80000010470e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104714:	48 63 d0             	movslq %eax,%rdx
ffff800000104717:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010471e:	00 00 00 
ffff800000104721:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104725:	48 01 d0             	add    %rdx,%rax
ffff800000104728:	0f b6 00             	movzbl (%rax),%eax
ffff80000010472b:	3c 0a                	cmp    $0xa,%al
ffff80000010472d:	75 36                	jne    ffff800000104765 <color_printk+0x171>
ffff80000010472f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104736:	00 00 00 
ffff800000104739:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010473d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104740:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104747:	00 00 00 
ffff80000010474a:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010474e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104755:	00 00 00 
ffff800000104758:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff80000010475f:	00 
ffff800000104760:	e9 6a 03 00 00       	jmp    ffff800000104acf <color_printk+0x4db>
ffff800000104765:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010476b:	48 63 d0             	movslq %eax,%rdx
ffff80000010476e:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104775:	00 00 00 
ffff800000104778:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010477c:	48 01 d0             	add    %rdx,%rax
ffff80000010477f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104782:	3c 08                	cmp    $0x8,%al
ffff800000104784:	0f 85 78 01 00 00    	jne    ffff800000104902 <color_printk+0x30e>
ffff80000010478a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104791:	00 00 00 
ffff800000104794:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104798:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010479b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047a2:	00 00 00 
ffff8000001047a5:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001047a9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047b0:	00 00 00 
ffff8000001047b3:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047b7:	85 c0                	test   %eax,%eax
ffff8000001047b9:	0f 89 b2 00 00 00    	jns    ffff800000104871 <color_printk+0x27d>
ffff8000001047bf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047c6:	00 00 00 
ffff8000001047c9:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff8000001047cc:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047d3:	00 00 00 
ffff8000001047d6:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff8000001047da:	99                   	cltd
ffff8000001047db:	f7 fe                	idiv   %esi
ffff8000001047dd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047e0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047e7:	00 00 00 
ffff8000001047ea:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047ee:	0f af c2             	imul   %edx,%eax
ffff8000001047f1:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047f8:	00 00 00 
ffff8000001047fb:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff8000001047ff:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104806:	00 00 00 
ffff800000104809:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010480d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104810:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104817:	00 00 00 
ffff80000010481a:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010481e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104825:	00 00 00 
ffff800000104828:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff80000010482c:	85 c0                	test   %eax,%eax
ffff80000010482e:	79 41                	jns    ffff800000104871 <color_printk+0x27d>
ffff800000104830:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104837:	00 00 00 
ffff80000010483a:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010483e:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104845:	00 00 00 
ffff800000104848:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff80000010484c:	99                   	cltd
ffff80000010484d:	f7 ff                	idiv   %edi
ffff80000010484f:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104852:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104859:	00 00 00 
ffff80000010485c:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104860:	0f af c2             	imul   %edx,%eax
ffff800000104863:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010486a:	00 00 00 
ffff80000010486d:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff800000104871:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104878:	00 00 00 
ffff80000010487b:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010487f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104886:	00 00 00 
ffff800000104889:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff80000010488d:	89 d1                	mov    %edx,%ecx
ffff80000010488f:	0f af c8             	imul   %eax,%ecx
ffff800000104892:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104899:	00 00 00 
ffff80000010489c:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048a0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a7:	00 00 00 
ffff8000001048aa:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048ae:	0f af d0             	imul   %eax,%edx
ffff8000001048b1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048b8:	00 00 00 
ffff8000001048bb:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001048be:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c5:	00 00 00 
ffff8000001048c8:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001048cd:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001048d4:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001048da:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001048de:	6a 20                	push   $0x20
ffff8000001048e0:	45 89 c1             	mov    %r8d,%r9d
ffff8000001048e3:	41 89 f8             	mov    %edi,%r8d
ffff8000001048e6:	48 89 c7             	mov    %rax,%rdi
ffff8000001048e9:	48 b8 38 56 ff ff ff 	movabs $0xffffffffffff5638,%rax
ffff8000001048f0:	ff ff ff 
ffff8000001048f3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001048f7:	ff d0                	call   *%rax
ffff8000001048f9:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001048fd:	e9 cd 01 00 00       	jmp    ffff800000104acf <color_printk+0x4db>
ffff800000104902:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104908:	48 63 d0             	movslq %eax,%rdx
ffff80000010490b:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104912:	00 00 00 
ffff800000104915:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104919:	48 01 d0             	add    %rdx,%rax
ffff80000010491c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010491f:	3c 09                	cmp    $0x9,%al
ffff800000104921:	0f 85 e3 00 00 00    	jne    ffff800000104a0a <color_printk+0x416>
ffff800000104927:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010492e:	00 00 00 
ffff800000104931:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104935:	83 c0 08             	add    $0x8,%eax
ffff800000104938:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010493b:	89 c2                	mov    %eax,%edx
ffff80000010493d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104944:	00 00 00 
ffff800000104947:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010494b:	29 c2                	sub    %eax,%edx
ffff80000010494d:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff800000104953:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff80000010495a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104961:	00 00 00 
ffff800000104964:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104968:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010496f:	00 00 00 
ffff800000104972:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104976:	89 d1                	mov    %edx,%ecx
ffff800000104978:	0f af c8             	imul   %eax,%ecx
ffff80000010497b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104982:	00 00 00 
ffff800000104985:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104989:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104990:	00 00 00 
ffff800000104993:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104997:	0f af d0             	imul   %eax,%edx
ffff80000010499a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049a1:	00 00 00 
ffff8000001049a4:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049a7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ae:	00 00 00 
ffff8000001049b1:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049b6:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001049bd:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001049c3:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049c7:	6a 20                	push   $0x20
ffff8000001049c9:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049cc:	41 89 f8             	mov    %edi,%r8d
ffff8000001049cf:	48 89 c7             	mov    %rax,%rdi
ffff8000001049d2:	48 b8 38 56 ff ff ff 	movabs $0xffffffffffff5638,%rax
ffff8000001049d9:	ff ff ff 
ffff8000001049dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049e0:	ff d0                	call   *%rax
ffff8000001049e2:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001049e6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ed:	00 00 00 
ffff8000001049f0:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001049f4:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001049f7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049fe:	00 00 00 
ffff800000104a01:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a05:	e9 c5 00 00 00       	jmp    ffff800000104acf <color_printk+0x4db>
ffff800000104a0a:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104a10:	48 63 d0             	movslq %eax,%rdx
ffff800000104a13:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104a1a:	00 00 00 
ffff800000104a1d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a21:	48 01 d0             	add    %rdx,%rax
ffff800000104a24:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a27:	0f b6 f8             	movzbl %al,%edi
ffff800000104a2a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a31:	00 00 00 
ffff800000104a34:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104a38:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a3f:	00 00 00 
ffff800000104a42:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104a46:	89 d1                	mov    %edx,%ecx
ffff800000104a48:	0f af c8             	imul   %eax,%ecx
ffff800000104a4b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a52:	00 00 00 
ffff800000104a55:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104a59:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a60:	00 00 00 
ffff800000104a63:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a67:	0f af d0             	imul   %eax,%edx
ffff800000104a6a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a71:	00 00 00 
ffff800000104a74:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104a77:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a7e:	00 00 00 
ffff800000104a81:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104a86:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104a8d:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104a94:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104a98:	57                   	push   %rdi
ffff800000104a99:	48 89 c7             	mov    %rax,%rdi
ffff800000104a9c:	48 b8 38 56 ff ff ff 	movabs $0xffffffffffff5638,%rax
ffff800000104aa3:	ff ff ff 
ffff800000104aa6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104aaa:	ff d0                	call   *%rax
ffff800000104aac:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104ab0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ab7:	00 00 00 
ffff800000104aba:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104abe:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104ac1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ac8:	00 00 00 
ffff800000104acb:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104acf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ad6:	00 00 00 
ffff800000104ad9:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104add:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ae4:	00 00 00 
ffff800000104ae7:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104aea:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104af1:	00 00 00 
ffff800000104af4:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104af8:	99                   	cltd
ffff800000104af9:	f7 fe                	idiv   %esi
ffff800000104afb:	39 c1                	cmp    %eax,%ecx
ffff800000104afd:	7c 31                	jl     ffff800000104b30 <color_printk+0x53c>
ffff800000104aff:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b06:	00 00 00 
ffff800000104b09:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104b0d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104b10:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b17:	00 00 00 
ffff800000104b1a:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104b1e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b25:	00 00 00 
ffff800000104b28:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104b2f:	00 
ffff800000104b30:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b37:	00 00 00 
ffff800000104b3a:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104b3e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b45:	00 00 00 
ffff800000104b48:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b4c:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b53:	00 00 00 
ffff800000104b56:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104b5a:	99                   	cltd
ffff800000104b5b:	f7 ff                	idiv   %edi
ffff800000104b5d:	39 c1                	cmp    %eax,%ecx
ffff800000104b5f:	7c 12                	jl     ffff800000104b73 <color_printk+0x57f>
ffff800000104b61:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b68:	00 00 00 
ffff800000104b6b:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104b72:	00 
ffff800000104b73:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104b7a:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b80:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104b86:	0f 8c 6d fb ff ff    	jl     ffff8000001046f9 <color_printk+0x105>
ffff800000104b8c:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104b93:	0f 85 60 fb ff ff    	jne    ffff8000001046f9 <color_printk+0x105>
ffff800000104b99:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104b9f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104ba3:	c9                   	leave
ffff800000104ba4:	c3                   	ret

ffff800000104ba5 <clear_screen>:
ffff800000104ba5:	f3 0f 1e fa          	endbr64
ffff800000104ba9:	55                   	push   %rbp
ffff800000104baa:	48 89 e5             	mov    %rsp,%rbp
ffff800000104bad:	53                   	push   %rbx
ffff800000104bae:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104bb2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104bb2 <clear_screen+0xd>
ffff800000104bb9:	49 bb fe a2 00 00 00 	movabs $0xa2fe,%r11
ffff800000104bc0:	00 00 00 
ffff800000104bc3:	4c 01 db             	add    %r11,%rbx
ffff800000104bc6:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104bc9:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104bcc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bd3:	00 00 00 
ffff800000104bd6:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104bd9:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104be0:	00 00 00 
ffff800000104be3:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104be7:	99                   	cltd
ffff800000104be8:	f7 f9                	idiv   %ecx
ffff800000104bea:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104bed:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf4:	00 00 00 
ffff800000104bf7:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104bfb:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c02:	00 00 00 
ffff800000104c05:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104c09:	99                   	cltd
ffff800000104c0a:	f7 fe                	idiv   %esi
ffff800000104c0c:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104c0f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104c16:	e9 83 00 00 00       	jmp    ffff800000104c9e <clear_screen+0xf9>
ffff800000104c1b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104c22:	eb 6e                	jmp    ffff800000104c92 <clear_screen+0xed>
ffff800000104c24:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c2b:	00 00 00 
ffff800000104c2e:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104c32:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104c36:	89 c1                	mov    %eax,%ecx
ffff800000104c38:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c3f:	00 00 00 
ffff800000104c42:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c46:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104c4a:	89 c2                	mov    %eax,%edx
ffff800000104c4c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c53:	00 00 00 
ffff800000104c56:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c59:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c60:	00 00 00 
ffff800000104c63:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c68:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104c6c:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104c6f:	6a 20                	push   $0x20
ffff800000104c71:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c74:	41 89 f8             	mov    %edi,%r8d
ffff800000104c77:	48 89 c7             	mov    %rax,%rdi
ffff800000104c7a:	48 b8 38 56 ff ff ff 	movabs $0xffffffffffff5638,%rax
ffff800000104c81:	ff ff ff 
ffff800000104c84:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c88:	ff d0                	call   *%rax
ffff800000104c8a:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104c8e:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104c92:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104c95:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104c98:	7c 8a                	jl     ffff800000104c24 <clear_screen+0x7f>
ffff800000104c9a:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104c9e:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104ca1:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104ca4:	0f 8c 71 ff ff ff    	jl     ffff800000104c1b <clear_screen+0x76>
ffff800000104caa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cb1:	00 00 00 
ffff800000104cb4:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104cbb:	00 
ffff800000104cbc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cc3:	00 00 00 
ffff800000104cc6:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104ccd:	00 
ffff800000104cce:	90                   	nop
ffff800000104ccf:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104cd3:	c9                   	leave
ffff800000104cd4:	c3                   	ret

ffff800000104cd5 <skip_atoi2>:
ffff800000104cd5:	f3 0f 1e fa          	endbr64
ffff800000104cd9:	55                   	push   %rbp
ffff800000104cda:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cdd:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cdd <skip_atoi2+0x8>
ffff800000104ce4:	49 bb d3 a1 00 00 00 	movabs $0xa1d3,%r11
ffff800000104ceb:	00 00 00 
ffff800000104cee:	4c 01 d8             	add    %r11,%rax
ffff800000104cf1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104cf5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104cfc:	eb 39                	jmp    ffff800000104d37 <skip_atoi2+0x62>
ffff800000104cfe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d02:	48 8b 00             	mov    (%rax),%rax
ffff800000104d05:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d08:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d0f:	48 8b 00             	mov    (%rax),%rax
ffff800000104d12:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d1a:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d1d:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d20:	89 d0                	mov    %edx,%eax
ffff800000104d22:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d25:	01 d0                	add    %edx,%eax
ffff800000104d27:	01 c0                	add    %eax,%eax
ffff800000104d29:	89 c2                	mov    %eax,%edx
ffff800000104d2b:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d2f:	83 e8 30             	sub    $0x30,%eax
ffff800000104d32:	01 d0                	add    %edx,%eax
ffff800000104d34:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d3b:	48 8b 00             	mov    (%rax),%rax
ffff800000104d3e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d41:	3c 2f                	cmp    $0x2f,%al
ffff800000104d43:	7e 0e                	jle    ffff800000104d53 <skip_atoi2+0x7e>
ffff800000104d45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d49:	48 8b 00             	mov    (%rax),%rax
ffff800000104d4c:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d4f:	3c 39                	cmp    $0x39,%al
ffff800000104d51:	7e ab                	jle    ffff800000104cfe <skip_atoi2+0x29>
ffff800000104d53:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d56:	5d                   	pop    %rbp
ffff800000104d57:	c3                   	ret

ffff800000104d58 <skip_atoi>:
ffff800000104d58:	f3 0f 1e fa          	endbr64
ffff800000104d5c:	55                   	push   %rbp
ffff800000104d5d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d60:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d60 <skip_atoi+0x8>
ffff800000104d67:	49 bb 50 a1 00 00 00 	movabs $0xa150,%r11
ffff800000104d6e:	00 00 00 
ffff800000104d71:	4c 01 d8             	add    %r11,%rax
ffff800000104d74:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d78:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104d7f:	eb 2c                	jmp    ffff800000104dad <skip_atoi+0x55>
ffff800000104d81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d85:	48 8b 00             	mov    (%rax),%rax
ffff800000104d88:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d90:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d93:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d96:	89 d0                	mov    %edx,%eax
ffff800000104d98:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d9b:	01 d0                	add    %edx,%eax
ffff800000104d9d:	01 c0                	add    %eax,%eax
ffff800000104d9f:	89 c2                	mov    %eax,%edx
ffff800000104da1:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104da5:	83 e8 30             	sub    $0x30,%eax
ffff800000104da8:	01 d0                	add    %edx,%eax
ffff800000104daa:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104dad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104db1:	48 8b 00             	mov    (%rax),%rax
ffff800000104db4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104db7:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104dba:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104dbe:	7e 13                	jle    ffff800000104dd3 <skip_atoi+0x7b>
ffff800000104dc0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dc4:	48 8b 00             	mov    (%rax),%rax
ffff800000104dc7:	0f b6 00             	movzbl (%rax),%eax
ffff800000104dca:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104dcd:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104dd1:	7e ae                	jle    ffff800000104d81 <skip_atoi+0x29>
ffff800000104dd3:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104dd6:	5d                   	pop    %rbp
ffff800000104dd7:	c3                   	ret

ffff800000104dd8 <number>:
ffff800000104dd8:	f3 0f 1e fa          	endbr64
ffff800000104ddc:	55                   	push   %rbp
ffff800000104ddd:	48 89 e5             	mov    %rsp,%rbp
ffff800000104de0:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104de0 <number+0x8>
ffff800000104de7:	49 bb d0 a0 00 00 00 	movabs $0xa0d0,%r11
ffff800000104dee:	00 00 00 
ffff800000104df1:	4c 01 d8             	add    %r11,%rax
ffff800000104df4:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104df8:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104dfc:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104dff:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104e02:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104e06:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104e0a:	48 ba 20 9b ff ff ff 	movabs $0xffffffffffff9b20,%rdx
ffff800000104e11:	ff ff ff 
ffff800000104e14:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104e18:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104e1c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104e23:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104e26:	83 e2 40             	and    $0x40,%edx
ffff800000104e29:	85 d2                	test   %edx,%edx
ffff800000104e2b:	74 12                	je     ffff800000104e3f <number+0x67>
ffff800000104e2d:	48 ba 48 9b ff ff ff 	movabs $0xffffffffffff9b48,%rdx
ffff800000104e34:	ff ff ff 
ffff800000104e37:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104e3b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104e3f:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e42:	83 e0 10             	and    $0x10,%eax
ffff800000104e45:	85 c0                	test   %eax,%eax
ffff800000104e47:	74 04                	je     ffff800000104e4d <number+0x75>
ffff800000104e49:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104e4d:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104e51:	7e 06                	jle    ffff800000104e59 <number+0x81>
ffff800000104e53:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104e57:	7e 0a                	jle    ffff800000104e63 <number+0x8b>
ffff800000104e59:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104e5e:	e9 0f 02 00 00       	jmp    ffff800000105072 <number+0x29a>
ffff800000104e63:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e66:	83 e0 01             	and    $0x1,%eax
ffff800000104e69:	85 c0                	test   %eax,%eax
ffff800000104e6b:	74 07                	je     ffff800000104e74 <number+0x9c>
ffff800000104e6d:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104e72:	eb 05                	jmp    ffff800000104e79 <number+0xa1>
ffff800000104e74:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104e79:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104e7c:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104e80:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e83:	83 e0 02             	and    $0x2,%eax
ffff800000104e86:	85 c0                	test   %eax,%eax
ffff800000104e88:	74 11                	je     ffff800000104e9b <number+0xc3>
ffff800000104e8a:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e8f:	79 0a                	jns    ffff800000104e9b <number+0xc3>
ffff800000104e91:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104e95:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104e99:	eb 1d                	jmp    ffff800000104eb8 <number+0xe0>
ffff800000104e9b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e9e:	83 e0 04             	and    $0x4,%eax
ffff800000104ea1:	85 c0                	test   %eax,%eax
ffff800000104ea3:	75 0b                	jne    ffff800000104eb0 <number+0xd8>
ffff800000104ea5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ea8:	c1 e0 02             	shl    $0x2,%eax
ffff800000104eab:	83 e0 20             	and    $0x20,%eax
ffff800000104eae:	eb 05                	jmp    ffff800000104eb5 <number+0xdd>
ffff800000104eb0:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104eb5:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104eb8:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104ebc:	74 04                	je     ffff800000104ec2 <number+0xea>
ffff800000104ebe:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104ec2:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ec5:	83 e0 20             	and    $0x20,%eax
ffff800000104ec8:	85 c0                	test   %eax,%eax
ffff800000104eca:	74 16                	je     ffff800000104ee2 <number+0x10a>
ffff800000104ecc:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104ed0:	75 06                	jne    ffff800000104ed8 <number+0x100>
ffff800000104ed2:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104ed6:	eb 0a                	jmp    ffff800000104ee2 <number+0x10a>
ffff800000104ed8:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104edc:	75 04                	jne    ffff800000104ee2 <number+0x10a>
ffff800000104ede:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104ee2:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104ee7:	75 4b                	jne    ffff800000104f34 <number+0x15c>
ffff800000104ee9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104eec:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104eef:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104ef2:	48 98                	cltq
ffff800000104ef4:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104ef9:	eb 40                	jmp    ffff800000104f3b <number+0x163>
ffff800000104efb:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104efe:	48 63 c8             	movslq %eax,%rcx
ffff800000104f01:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f05:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104f0a:	48 f7 f1             	div    %rcx
ffff800000104f0d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f11:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104f14:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104f17:	48 63 d0             	movslq %eax,%rdx
ffff800000104f1a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f1e:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104f22:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f25:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f28:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f2b:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f2e:	48 98                	cltq
ffff800000104f30:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104f34:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f39:	75 c0                	jne    ffff800000104efb <number+0x123>
ffff800000104f3b:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f3e:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104f41:	7e 06                	jle    ffff800000104f49 <number+0x171>
ffff800000104f43:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f46:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104f49:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f4c:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104f4f:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f52:	83 e0 11             	and    $0x11,%eax
ffff800000104f55:	85 c0                	test   %eax,%eax
ffff800000104f57:	75 1e                	jne    ffff800000104f77 <number+0x19f>
ffff800000104f59:	eb 0f                	jmp    ffff800000104f6a <number+0x192>
ffff800000104f5b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f5f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f63:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f67:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104f6a:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f6d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f70:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f73:	85 c0                	test   %eax,%eax
ffff800000104f75:	7f e4                	jg     ffff800000104f5b <number+0x183>
ffff800000104f77:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104f7b:	74 12                	je     ffff800000104f8f <number+0x1b7>
ffff800000104f7d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f81:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f85:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f89:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104f8d:	88 10                	mov    %dl,(%rax)
ffff800000104f8f:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f92:	83 e0 20             	and    $0x20,%eax
ffff800000104f95:	85 c0                	test   %eax,%eax
ffff800000104f97:	74 45                	je     ffff800000104fde <number+0x206>
ffff800000104f99:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104f9d:	75 11                	jne    ffff800000104fb0 <number+0x1d8>
ffff800000104f9f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fa3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fa7:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fab:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fae:	eb 2e                	jmp    ffff800000104fde <number+0x206>
ffff800000104fb0:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104fb4:	75 28                	jne    ffff800000104fde <number+0x206>
ffff800000104fb6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fba:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fbe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fc2:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fc5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104fc9:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104fcd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fd1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fd5:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fd9:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104fdc:	88 10                	mov    %dl,(%rax)
ffff800000104fde:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104fe1:	83 e0 10             	and    $0x10,%eax
ffff800000104fe4:	85 c0                	test   %eax,%eax
ffff800000104fe6:	75 32                	jne    ffff80000010501a <number+0x242>
ffff800000104fe8:	eb 12                	jmp    ffff800000104ffc <number+0x224>
ffff800000104fea:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fee:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ff2:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ff6:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104ffa:	88 10                	mov    %dl,(%rax)
ffff800000104ffc:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104fff:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105002:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000105005:	85 c0                	test   %eax,%eax
ffff800000105007:	7f e1                	jg     ffff800000104fea <number+0x212>
ffff800000105009:	eb 0f                	jmp    ffff80000010501a <number+0x242>
ffff80000010500b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010500f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105013:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105017:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010501a:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff80000010501d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105020:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000105023:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000105026:	7c e3                	jl     ffff80000010500b <number+0x233>
ffff800000105028:	eb 19                	jmp    ffff800000105043 <number+0x26b>
ffff80000010502a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010502e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105032:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105036:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105039:	48 63 d2             	movslq %edx,%rdx
ffff80000010503c:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000105041:	88 10                	mov    %dl,(%rax)
ffff800000105043:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105046:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105049:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff80000010504c:	85 c0                	test   %eax,%eax
ffff80000010504e:	7f da                	jg     ffff80000010502a <number+0x252>
ffff800000105050:	eb 0f                	jmp    ffff800000105061 <number+0x289>
ffff800000105052:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105056:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010505a:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010505e:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105061:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105064:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105067:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff80000010506a:	85 c0                	test   %eax,%eax
ffff80000010506c:	7f e4                	jg     ffff800000105052 <number+0x27a>
ffff80000010506e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105072:	5d                   	pop    %rbp
ffff800000105073:	c3                   	ret

ffff800000105074 <vsprintf>:
ffff800000105074:	f3 0f 1e fa          	endbr64
ffff800000105078:	55                   	push   %rbp
ffff800000105079:	48 89 e5             	mov    %rsp,%rbp
ffff80000010507c:	53                   	push   %rbx
ffff80000010507d:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000105081:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000105081 <vsprintf+0xd>
ffff800000105088:	49 bb 2f 9e 00 00 00 	movabs $0x9e2f,%r11
ffff80000010508f:	00 00 00 
ffff800000105092:	4c 01 db             	add    %r11,%rbx
ffff800000105095:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105099:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff80000010509d:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff8000001050a1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001050a9:	e9 f8 08 00 00       	jmp    ffff8000001059a6 <vsprintf+0x932>
ffff8000001050ae:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050b2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050b5:	3c 25                	cmp    $0x25,%al
ffff8000001050b7:	74 1a                	je     ffff8000001050d3 <vsprintf+0x5f>
ffff8000001050b9:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001050bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050c1:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001050c5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001050c9:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001050cc:	88 10                	mov    %dl,(%rax)
ffff8000001050ce:	e9 c7 08 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001050d3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff8000001050da:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050de:	48 83 c0 01          	add    $0x1,%rax
ffff8000001050e2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001050e6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050ea:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050ed:	0f be c0             	movsbl %al,%eax
ffff8000001050f0:	83 e8 20             	sub    $0x20,%eax
ffff8000001050f3:	83 f8 10             	cmp    $0x10,%eax
ffff8000001050f6:	77 40                	ja     ffff800000105138 <vsprintf+0xc4>
ffff8000001050f8:	89 c0                	mov    %eax,%eax
ffff8000001050fa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105101:	00 
ffff800000105102:	48 8d 05 17 39 00 00 	lea    0x3917(%rip),%rax        # ffff800000108a20 <.LC1+0x28>
ffff800000105109:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010510d:	48 8d 15 0c 39 00 00 	lea    0x390c(%rip),%rdx        # ffff800000108a20 <.LC1+0x28>
ffff800000105114:	48 01 d0             	add    %rdx,%rax
ffff800000105117:	3e ff e0             	notrack jmp *%rax
ffff80000010511a:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010511e:	eb ba                	jmp    ffff8000001050da <vsprintf+0x66>
ffff800000105120:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000105124:	eb b4                	jmp    ffff8000001050da <vsprintf+0x66>
ffff800000105126:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff80000010512a:	eb ae                	jmp    ffff8000001050da <vsprintf+0x66>
ffff80000010512c:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000105130:	eb a8                	jmp    ffff8000001050da <vsprintf+0x66>
ffff800000105132:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105136:	eb a2                	jmp    ffff8000001050da <vsprintf+0x66>
ffff800000105138:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff80000010513f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105143:	0f b6 00             	movzbl (%rax),%eax
ffff800000105146:	3c 2f                	cmp    $0x2f,%al
ffff800000105148:	7e 27                	jle    ffff800000105171 <vsprintf+0xfd>
ffff80000010514a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010514e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105151:	3c 39                	cmp    $0x39,%al
ffff800000105153:	7f 1c                	jg     ffff800000105171 <vsprintf+0xfd>
ffff800000105155:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105159:	48 89 c7             	mov    %rax,%rdi
ffff80000010515c:	48 b8 a8 5e ff ff ff 	movabs $0xffffffffffff5ea8,%rax
ffff800000105163:	ff ff ff 
ffff800000105166:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010516a:	ff d0                	call   *%rax
ffff80000010516c:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff80000010516f:	eb 6c                	jmp    ffff8000001051dd <vsprintf+0x169>
ffff800000105171:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105175:	0f b6 00             	movzbl (%rax),%eax
ffff800000105178:	3c 2a                	cmp    $0x2a,%al
ffff80000010517a:	75 61                	jne    ffff8000001051dd <vsprintf+0x169>
ffff80000010517c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105180:	48 83 c0 01          	add    $0x1,%rax
ffff800000105184:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105188:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010518c:	8b 00                	mov    (%rax),%eax
ffff80000010518e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105191:	77 24                	ja     ffff8000001051b7 <vsprintf+0x143>
ffff800000105193:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105197:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010519b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010519f:	8b 00                	mov    (%rax),%eax
ffff8000001051a1:	89 c0                	mov    %eax,%eax
ffff8000001051a3:	48 01 d0             	add    %rdx,%rax
ffff8000001051a6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051aa:	8b 12                	mov    (%rdx),%edx
ffff8000001051ac:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051af:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051b3:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051b5:	eb 14                	jmp    ffff8000001051cb <vsprintf+0x157>
ffff8000001051b7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051bb:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051bf:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051c3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051c7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051cb:	8b 00                	mov    (%rax),%eax
ffff8000001051cd:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001051d0:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001051d4:	79 07                	jns    ffff8000001051dd <vsprintf+0x169>
ffff8000001051d6:	f7 5d d8             	negl   -0x28(%rbp)
ffff8000001051d9:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001051dd:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff8000001051e4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051e8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051eb:	3c 2e                	cmp    $0x2e,%al
ffff8000001051ed:	0f 85 aa 00 00 00    	jne    ffff80000010529d <vsprintf+0x229>
ffff8000001051f3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051f7:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051fb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051ff:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105203:	0f b6 00             	movzbl (%rax),%eax
ffff800000105206:	3c 2f                	cmp    $0x2f,%al
ffff800000105208:	7e 27                	jle    ffff800000105231 <vsprintf+0x1bd>
ffff80000010520a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010520e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105211:	3c 39                	cmp    $0x39,%al
ffff800000105213:	7f 1c                	jg     ffff800000105231 <vsprintf+0x1bd>
ffff800000105215:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105219:	48 89 c7             	mov    %rax,%rdi
ffff80000010521c:	48 b8 a8 5e ff ff ff 	movabs $0xffffffffffff5ea8,%rax
ffff800000105223:	ff ff ff 
ffff800000105226:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010522a:	ff d0                	call   *%rax
ffff80000010522c:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010522f:	eb 5f                	jmp    ffff800000105290 <vsprintf+0x21c>
ffff800000105231:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105235:	0f b6 00             	movzbl (%rax),%eax
ffff800000105238:	3c 2a                	cmp    $0x2a,%al
ffff80000010523a:	75 54                	jne    ffff800000105290 <vsprintf+0x21c>
ffff80000010523c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105240:	48 83 c0 01          	add    $0x1,%rax
ffff800000105244:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105248:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010524c:	8b 00                	mov    (%rax),%eax
ffff80000010524e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105251:	77 24                	ja     ffff800000105277 <vsprintf+0x203>
ffff800000105253:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105257:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010525b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010525f:	8b 00                	mov    (%rax),%eax
ffff800000105261:	89 c0                	mov    %eax,%eax
ffff800000105263:	48 01 d0             	add    %rdx,%rax
ffff800000105266:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010526a:	8b 12                	mov    (%rdx),%edx
ffff80000010526c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010526f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105273:	89 0a                	mov    %ecx,(%rdx)
ffff800000105275:	eb 14                	jmp    ffff80000010528b <vsprintf+0x217>
ffff800000105277:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010527b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010527f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105283:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105287:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010528b:	8b 00                	mov    (%rax),%eax
ffff80000010528d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105290:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105294:	79 07                	jns    ffff80000010529d <vsprintf+0x229>
ffff800000105296:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff80000010529d:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001052a4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052a8:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052ab:	3c 68                	cmp    $0x68,%al
ffff8000001052ad:	74 21                	je     ffff8000001052d0 <vsprintf+0x25c>
ffff8000001052af:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052b3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052b6:	3c 6c                	cmp    $0x6c,%al
ffff8000001052b8:	74 16                	je     ffff8000001052d0 <vsprintf+0x25c>
ffff8000001052ba:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052be:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052c1:	3c 4c                	cmp    $0x4c,%al
ffff8000001052c3:	74 0b                	je     ffff8000001052d0 <vsprintf+0x25c>
ffff8000001052c5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052c9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052cc:	3c 7a                	cmp    $0x7a,%al
ffff8000001052ce:	75 19                	jne    ffff8000001052e9 <vsprintf+0x275>
ffff8000001052d0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052d4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052d7:	0f be c0             	movsbl %al,%eax
ffff8000001052da:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff8000001052dd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052e1:	48 83 c0 01          	add    $0x1,%rax
ffff8000001052e5:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001052e9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052ed:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052f0:	0f be c0             	movsbl %al,%eax
ffff8000001052f3:	83 e8 25             	sub    $0x25,%eax
ffff8000001052f6:	83 f8 53             	cmp    $0x53,%eax
ffff8000001052f9:	0f 87 5d 06 00 00    	ja     ffff80000010595c <vsprintf+0x8e8>
ffff8000001052ff:	89 c0                	mov    %eax,%eax
ffff800000105301:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105308:	00 
ffff800000105309:	48 8d 05 98 37 00 00 	lea    0x3798(%rip),%rax        # ffff800000108aa8 <.LC1+0xb0>
ffff800000105310:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105314:	48 8d 15 8d 37 00 00 	lea    0x378d(%rip),%rdx        # ffff800000108aa8 <.LC1+0xb0>
ffff80000010531b:	48 01 d0             	add    %rdx,%rax
ffff80000010531e:	3e ff e0             	notrack jmp *%rax
ffff800000105321:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105324:	83 e0 10             	and    $0x10,%eax
ffff800000105327:	85 c0                	test   %eax,%eax
ffff800000105329:	75 1b                	jne    ffff800000105346 <vsprintf+0x2d2>
ffff80000010532b:	eb 0f                	jmp    ffff80000010533c <vsprintf+0x2c8>
ffff80000010532d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105331:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105335:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105339:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010533c:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105340:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105344:	7f e7                	jg     ffff80000010532d <vsprintf+0x2b9>
ffff800000105346:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010534a:	8b 00                	mov    (%rax),%eax
ffff80000010534c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010534f:	77 24                	ja     ffff800000105375 <vsprintf+0x301>
ffff800000105351:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105355:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105359:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010535d:	8b 00                	mov    (%rax),%eax
ffff80000010535f:	89 c0                	mov    %eax,%eax
ffff800000105361:	48 01 d0             	add    %rdx,%rax
ffff800000105364:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105368:	8b 12                	mov    (%rdx),%edx
ffff80000010536a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010536d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105371:	89 0a                	mov    %ecx,(%rdx)
ffff800000105373:	eb 14                	jmp    ffff800000105389 <vsprintf+0x315>
ffff800000105375:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105379:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010537d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105381:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105385:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105389:	8b 08                	mov    (%rax),%ecx
ffff80000010538b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010538f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105393:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105397:	89 ca                	mov    %ecx,%edx
ffff800000105399:	88 10                	mov    %dl,(%rax)
ffff80000010539b:	eb 0f                	jmp    ffff8000001053ac <vsprintf+0x338>
ffff80000010539d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053a1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053a5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053a9:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053ac:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001053b0:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001053b4:	7f e7                	jg     ffff80000010539d <vsprintf+0x329>
ffff8000001053b6:	e9 df 05 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001053bb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053bf:	8b 00                	mov    (%rax),%eax
ffff8000001053c1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001053c4:	77 24                	ja     ffff8000001053ea <vsprintf+0x376>
ffff8000001053c6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053ca:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053ce:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053d2:	8b 00                	mov    (%rax),%eax
ffff8000001053d4:	89 c0                	mov    %eax,%eax
ffff8000001053d6:	48 01 d0             	add    %rdx,%rax
ffff8000001053d9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053dd:	8b 12                	mov    (%rdx),%edx
ffff8000001053df:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001053e2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053e6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001053e8:	eb 14                	jmp    ffff8000001053fe <vsprintf+0x38a>
ffff8000001053ea:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053ee:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053f2:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053f6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053fa:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053fe:	48 8b 00             	mov    (%rax),%rax
ffff800000105401:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105405:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010540a:	75 08                	jne    ffff800000105414 <vsprintf+0x3a0>
ffff80000010540c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105413:	00 
ffff800000105414:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105418:	48 89 c7             	mov    %rax,%rdi
ffff80000010541b:	48 b8 f4 55 ff ff ff 	movabs $0xffffffffffff55f4,%rax
ffff800000105422:	ff ff ff 
ffff800000105425:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105429:	ff d0                	call   *%rax
ffff80000010542b:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010542e:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105432:	79 08                	jns    ffff80000010543c <vsprintf+0x3c8>
ffff800000105434:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105437:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010543a:	eb 0e                	jmp    ffff80000010544a <vsprintf+0x3d6>
ffff80000010543c:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010543f:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000105442:	7e 06                	jle    ffff80000010544a <vsprintf+0x3d6>
ffff800000105444:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000105447:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010544a:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010544d:	83 e0 10             	and    $0x10,%eax
ffff800000105450:	85 c0                	test   %eax,%eax
ffff800000105452:	75 1f                	jne    ffff800000105473 <vsprintf+0x3ff>
ffff800000105454:	eb 0f                	jmp    ffff800000105465 <vsprintf+0x3f1>
ffff800000105456:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010545a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010545e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105462:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105465:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105468:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010546b:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010546e:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105471:	7c e3                	jl     ffff800000105456 <vsprintf+0x3e2>
ffff800000105473:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff80000010547a:	eb 21                	jmp    ffff80000010549d <vsprintf+0x429>
ffff80000010547c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105480:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000105484:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105488:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010548c:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105490:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105494:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105497:	88 10                	mov    %dl,(%rax)
ffff800000105499:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff80000010549d:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001054a0:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001054a3:	7c d7                	jl     ffff80000010547c <vsprintf+0x408>
ffff8000001054a5:	eb 0f                	jmp    ffff8000001054b6 <vsprintf+0x442>
ffff8000001054a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054ab:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001054af:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054b3:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001054b6:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001054b9:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001054bc:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001054bf:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001054c2:	7c e3                	jl     ffff8000001054a7 <vsprintf+0x433>
ffff8000001054c4:	e9 d1 04 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001054c9:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001054cd:	0f 85 82 00 00 00    	jne    ffff800000105555 <vsprintf+0x4e1>
ffff8000001054d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d7:	8b 00                	mov    (%rax),%eax
ffff8000001054d9:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054dc:	77 24                	ja     ffff800000105502 <vsprintf+0x48e>
ffff8000001054de:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054e2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054ea:	8b 00                	mov    (%rax),%eax
ffff8000001054ec:	89 c0                	mov    %eax,%eax
ffff8000001054ee:	48 01 d0             	add    %rdx,%rax
ffff8000001054f1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f5:	8b 12                	mov    (%rdx),%edx
ffff8000001054f7:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054fa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054fe:	89 0a                	mov    %ecx,(%rdx)
ffff800000105500:	eb 14                	jmp    ffff800000105516 <vsprintf+0x4a2>
ffff800000105502:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105506:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010550a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010550e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105512:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105516:	48 8b 00             	mov    (%rax),%rax
ffff800000105519:	48 89 c7             	mov    %rax,%rdi
ffff80000010551c:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010551f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105522:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105525:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105529:	41 89 f1             	mov    %esi,%r9d
ffff80000010552c:	41 89 c8             	mov    %ecx,%r8d
ffff80000010552f:	89 d1                	mov    %edx,%ecx
ffff800000105531:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105536:	48 89 fe             	mov    %rdi,%rsi
ffff800000105539:	48 89 c7             	mov    %rax,%rdi
ffff80000010553c:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff800000105543:	ff ff ff 
ffff800000105546:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010554a:	ff d0                	call   *%rax
ffff80000010554c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105550:	e9 45 04 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff800000105555:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105559:	8b 00                	mov    (%rax),%eax
ffff80000010555b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010555e:	77 24                	ja     ffff800000105584 <vsprintf+0x510>
ffff800000105560:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105564:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105568:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010556c:	8b 00                	mov    (%rax),%eax
ffff80000010556e:	89 c0                	mov    %eax,%eax
ffff800000105570:	48 01 d0             	add    %rdx,%rax
ffff800000105573:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105577:	8b 12                	mov    (%rdx),%edx
ffff800000105579:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010557c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105580:	89 0a                	mov    %ecx,(%rdx)
ffff800000105582:	eb 14                	jmp    ffff800000105598 <vsprintf+0x524>
ffff800000105584:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105588:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010558c:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105590:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105594:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105598:	8b 00                	mov    (%rax),%eax
ffff80000010559a:	89 c7                	mov    %eax,%edi
ffff80000010559c:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010559f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055a2:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055a9:	41 89 f1             	mov    %esi,%r9d
ffff8000001055ac:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055af:	89 d1                	mov    %edx,%ecx
ffff8000001055b1:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001055b6:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055b9:	48 89 c7             	mov    %rax,%rdi
ffff8000001055bc:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff8000001055c3:	ff ff ff 
ffff8000001055c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055ca:	ff d0                	call   *%rax
ffff8000001055cc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055d0:	e9 c5 03 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001055d5:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff8000001055d9:	75 0b                	jne    ffff8000001055e6 <vsprintf+0x572>
ffff8000001055db:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff8000001055e2:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001055e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ea:	8b 00                	mov    (%rax),%eax
ffff8000001055ec:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055ef:	77 24                	ja     ffff800000105615 <vsprintf+0x5a1>
ffff8000001055f1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f5:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055f9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055fd:	8b 00                	mov    (%rax),%eax
ffff8000001055ff:	89 c0                	mov    %eax,%eax
ffff800000105601:	48 01 d0             	add    %rdx,%rax
ffff800000105604:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105608:	8b 12                	mov    (%rdx),%edx
ffff80000010560a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010560d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105611:	89 0a                	mov    %ecx,(%rdx)
ffff800000105613:	eb 14                	jmp    ffff800000105629 <vsprintf+0x5b5>
ffff800000105615:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105619:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010561d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105621:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105625:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105629:	48 8b 00             	mov    (%rax),%rax
ffff80000010562c:	48 89 c7             	mov    %rax,%rdi
ffff80000010562f:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105632:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105635:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105638:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010563c:	41 89 f1             	mov    %esi,%r9d
ffff80000010563f:	41 89 c8             	mov    %ecx,%r8d
ffff800000105642:	89 d1                	mov    %edx,%ecx
ffff800000105644:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105649:	48 89 fe             	mov    %rdi,%rsi
ffff80000010564c:	48 89 c7             	mov    %rax,%rdi
ffff80000010564f:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff800000105656:	ff ff ff 
ffff800000105659:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010565d:	ff d0                	call   *%rax
ffff80000010565f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105663:	e9 32 03 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff800000105668:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff80000010566c:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105670:	0f 85 82 00 00 00    	jne    ffff8000001056f8 <vsprintf+0x684>
ffff800000105676:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010567a:	8b 00                	mov    (%rax),%eax
ffff80000010567c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010567f:	77 24                	ja     ffff8000001056a5 <vsprintf+0x631>
ffff800000105681:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105685:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105689:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010568d:	8b 00                	mov    (%rax),%eax
ffff80000010568f:	89 c0                	mov    %eax,%eax
ffff800000105691:	48 01 d0             	add    %rdx,%rax
ffff800000105694:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105698:	8b 12                	mov    (%rdx),%edx
ffff80000010569a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010569d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056a1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056a3:	eb 14                	jmp    ffff8000001056b9 <vsprintf+0x645>
ffff8000001056a5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056a9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056ad:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056b1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056b5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056b9:	48 8b 00             	mov    (%rax),%rax
ffff8000001056bc:	48 89 c7             	mov    %rax,%rdi
ffff8000001056bf:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001056c2:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001056c5:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001056c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056cc:	41 89 f1             	mov    %esi,%r9d
ffff8000001056cf:	41 89 c8             	mov    %ecx,%r8d
ffff8000001056d2:	89 d1                	mov    %edx,%ecx
ffff8000001056d4:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056d9:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056dc:	48 89 c7             	mov    %rax,%rdi
ffff8000001056df:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff8000001056e6:	ff ff ff 
ffff8000001056e9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056ed:	ff d0                	call   *%rax
ffff8000001056ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056f3:	e9 a2 02 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001056f8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056fc:	8b 00                	mov    (%rax),%eax
ffff8000001056fe:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105701:	77 24                	ja     ffff800000105727 <vsprintf+0x6b3>
ffff800000105703:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105707:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010570b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010570f:	8b 00                	mov    (%rax),%eax
ffff800000105711:	89 c0                	mov    %eax,%eax
ffff800000105713:	48 01 d0             	add    %rdx,%rax
ffff800000105716:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010571a:	8b 12                	mov    (%rdx),%edx
ffff80000010571c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010571f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105723:	89 0a                	mov    %ecx,(%rdx)
ffff800000105725:	eb 14                	jmp    ffff80000010573b <vsprintf+0x6c7>
ffff800000105727:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010572b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010572f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105733:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105737:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010573b:	8b 00                	mov    (%rax),%eax
ffff80000010573d:	89 c7                	mov    %eax,%edi
ffff80000010573f:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105742:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105745:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105748:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010574c:	41 89 f1             	mov    %esi,%r9d
ffff80000010574f:	41 89 c8             	mov    %ecx,%r8d
ffff800000105752:	89 d1                	mov    %edx,%ecx
ffff800000105754:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105759:	48 89 fe             	mov    %rdi,%rsi
ffff80000010575c:	48 89 c7             	mov    %rax,%rdi
ffff80000010575f:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff800000105766:	ff ff ff 
ffff800000105769:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010576d:	ff d0                	call   *%rax
ffff80000010576f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105773:	e9 22 02 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff800000105778:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff80000010577c:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105780:	0f 85 82 00 00 00    	jne    ffff800000105808 <vsprintf+0x794>
ffff800000105786:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010578a:	8b 00                	mov    (%rax),%eax
ffff80000010578c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010578f:	77 24                	ja     ffff8000001057b5 <vsprintf+0x741>
ffff800000105791:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105795:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105799:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010579d:	8b 00                	mov    (%rax),%eax
ffff80000010579f:	89 c0                	mov    %eax,%eax
ffff8000001057a1:	48 01 d0             	add    %rdx,%rax
ffff8000001057a4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057a8:	8b 12                	mov    (%rdx),%edx
ffff8000001057aa:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057ad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057b1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057b3:	eb 14                	jmp    ffff8000001057c9 <vsprintf+0x755>
ffff8000001057b5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057b9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001057bd:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001057c1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057c5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001057c9:	48 8b 00             	mov    (%rax),%rax
ffff8000001057cc:	48 89 c7             	mov    %rax,%rdi
ffff8000001057cf:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057d2:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057d5:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057dc:	41 89 f1             	mov    %esi,%r9d
ffff8000001057df:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057e2:	89 d1                	mov    %edx,%ecx
ffff8000001057e4:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057e9:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057ec:	48 89 c7             	mov    %rax,%rdi
ffff8000001057ef:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff8000001057f6:	ff ff ff 
ffff8000001057f9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057fd:	ff d0                	call   *%rax
ffff8000001057ff:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105803:	e9 92 01 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff800000105808:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010580c:	8b 00                	mov    (%rax),%eax
ffff80000010580e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105811:	77 24                	ja     ffff800000105837 <vsprintf+0x7c3>
ffff800000105813:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105817:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010581b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010581f:	8b 00                	mov    (%rax),%eax
ffff800000105821:	89 c0                	mov    %eax,%eax
ffff800000105823:	48 01 d0             	add    %rdx,%rax
ffff800000105826:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010582a:	8b 12                	mov    (%rdx),%edx
ffff80000010582c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010582f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105833:	89 0a                	mov    %ecx,(%rdx)
ffff800000105835:	eb 14                	jmp    ffff80000010584b <vsprintf+0x7d7>
ffff800000105837:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010583b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010583f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105843:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105847:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010584b:	8b 00                	mov    (%rax),%eax
ffff80000010584d:	89 c7                	mov    %eax,%edi
ffff80000010584f:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105852:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105855:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105858:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010585c:	41 89 f1             	mov    %esi,%r9d
ffff80000010585f:	41 89 c8             	mov    %ecx,%r8d
ffff800000105862:	89 d1                	mov    %edx,%ecx
ffff800000105864:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105869:	48 89 fe             	mov    %rdi,%rsi
ffff80000010586c:	48 89 c7             	mov    %rax,%rdi
ffff80000010586f:	48 b8 28 5f ff ff ff 	movabs $0xffffffffffff5f28,%rax
ffff800000105876:	ff ff ff 
ffff800000105879:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010587d:	ff d0                	call   *%rax
ffff80000010587f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105883:	e9 12 01 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff800000105888:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010588c:	75 61                	jne    ffff8000001058ef <vsprintf+0x87b>
ffff80000010588e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105892:	8b 00                	mov    (%rax),%eax
ffff800000105894:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105897:	77 24                	ja     ffff8000001058bd <vsprintf+0x849>
ffff800000105899:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010589d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001058a1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058a5:	8b 00                	mov    (%rax),%eax
ffff8000001058a7:	89 c0                	mov    %eax,%eax
ffff8000001058a9:	48 01 d0             	add    %rdx,%rax
ffff8000001058ac:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058b0:	8b 12                	mov    (%rdx),%edx
ffff8000001058b2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001058b5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058b9:	89 0a                	mov    %ecx,(%rdx)
ffff8000001058bb:	eb 14                	jmp    ffff8000001058d1 <vsprintf+0x85d>
ffff8000001058bd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058c1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058c5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058c9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058cd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058d1:	48 8b 00             	mov    (%rax),%rax
ffff8000001058d4:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001058d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058dc:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001058e0:	48 89 c2             	mov    %rax,%rdx
ffff8000001058e3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001058e7:	48 89 10             	mov    %rdx,(%rax)
ffff8000001058ea:	e9 ab 00 00 00       	jmp    ffff80000010599a <vsprintf+0x926>
ffff8000001058ef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058f3:	8b 00                	mov    (%rax),%eax
ffff8000001058f5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001058f8:	77 24                	ja     ffff80000010591e <vsprintf+0x8aa>
ffff8000001058fa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058fe:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105902:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105906:	8b 00                	mov    (%rax),%eax
ffff800000105908:	89 c0                	mov    %eax,%eax
ffff80000010590a:	48 01 d0             	add    %rdx,%rax
ffff80000010590d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105911:	8b 12                	mov    (%rdx),%edx
ffff800000105913:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105916:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010591a:	89 0a                	mov    %ecx,(%rdx)
ffff80000010591c:	eb 14                	jmp    ffff800000105932 <vsprintf+0x8be>
ffff80000010591e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105922:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105926:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010592a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010592e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105932:	48 8b 00             	mov    (%rax),%rax
ffff800000105935:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105939:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010593d:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105941:	89 c2                	mov    %eax,%edx
ffff800000105943:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105947:	89 10                	mov    %edx,(%rax)
ffff800000105949:	eb 4f                	jmp    ffff80000010599a <vsprintf+0x926>
ffff80000010594b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010594f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105953:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105957:	c6 00 25             	movb   $0x25,(%rax)
ffff80000010595a:	eb 3e                	jmp    ffff80000010599a <vsprintf+0x926>
ffff80000010595c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105960:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105964:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105968:	c6 00 25             	movb   $0x25,(%rax)
ffff80000010596b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010596f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105972:	84 c0                	test   %al,%al
ffff800000105974:	74 17                	je     ffff80000010598d <vsprintf+0x919>
ffff800000105976:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010597a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010597e:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105982:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105986:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105989:	88 10                	mov    %dl,(%rax)
ffff80000010598b:	eb 0c                	jmp    ffff800000105999 <vsprintf+0x925>
ffff80000010598d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105991:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105995:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105999:	90                   	nop
ffff80000010599a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010599e:	48 83 c0 01          	add    $0x1,%rax
ffff8000001059a2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059a6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059aa:	0f b6 00             	movzbl (%rax),%eax
ffff8000001059ad:	84 c0                	test   %al,%al
ffff8000001059af:	0f 85 f9 f6 ff ff    	jne    ffff8000001050ae <vsprintf+0x3a>
ffff8000001059b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059b9:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001059bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059c0:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001059c4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001059c8:	c9                   	leave
ffff8000001059c9:	c3                   	ret

ffff8000001059ca <set_intr_gate>:
ffff8000001059ca:	f3 0f 1e fa          	endbr64
ffff8000001059ce:	55                   	push   %rbp
ffff8000001059cf:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059d2:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059d2 <set_intr_gate+0x8>
ffff8000001059d9:	49 bb de 94 00 00 00 	movabs $0x94de,%r11
ffff8000001059e0:	00 00 00 
ffff8000001059e3:	4c 01 d8             	add    %r11,%rax
ffff8000001059e6:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff8000001059e9:	89 f1                	mov    %esi,%ecx
ffff8000001059eb:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001059ef:	89 ca                	mov    %ecx,%edx
ffff8000001059f1:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff8000001059f4:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001059f7:	48 89 d1             	mov    %rdx,%rcx
ffff8000001059fa:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001059fe:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a05:	ff ff ff 
ffff800000105a08:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a0c:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a10:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a13:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a17:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a1b:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a22:	ff ff ff 
ffff800000105a25:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a29:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a2d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a31:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a37:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a3b:	44 89 c0             	mov    %r8d,%eax
ffff800000105a3e:	66 89 d0             	mov    %dx,%ax
ffff800000105a41:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a45:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105a4c:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a50:	48 01 c8             	add    %rcx,%rax
ffff800000105a53:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a56:	89 d1                	mov    %edx,%ecx
ffff800000105a58:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a5c:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a60:	48 01 c8             	add    %rcx,%rax
ffff800000105a63:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a66:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a6a:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a6d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a71:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a75:	90                   	nop
ffff800000105a76:	5d                   	pop    %rbp
ffff800000105a77:	c3                   	ret

ffff800000105a78 <set_trap_gate>:
ffff800000105a78:	f3 0f 1e fa          	endbr64
ffff800000105a7c:	55                   	push   %rbp
ffff800000105a7d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a80:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a80 <set_trap_gate+0x8>
ffff800000105a87:	49 bb 30 94 00 00 00 	movabs $0x9430,%r11
ffff800000105a8e:	00 00 00 
ffff800000105a91:	4c 01 d8             	add    %r11,%rax
ffff800000105a94:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a97:	89 f1                	mov    %esi,%ecx
ffff800000105a99:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a9d:	89 ca                	mov    %ecx,%edx
ffff800000105a9f:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105aa2:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105aa5:	48 89 d1             	mov    %rdx,%rcx
ffff800000105aa8:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105aac:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ab3:	ff ff ff 
ffff800000105ab6:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105aba:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105abe:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105ac1:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105ac5:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105ac9:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ad0:	ff ff ff 
ffff800000105ad3:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ad7:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105adb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105adf:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105ae5:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105ae9:	44 89 c0             	mov    %r8d,%eax
ffff800000105aec:	66 89 d0             	mov    %dx,%ax
ffff800000105aef:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105af3:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105afa:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105afe:	48 01 c8             	add    %rcx,%rax
ffff800000105b01:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b04:	89 d1                	mov    %edx,%ecx
ffff800000105b06:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b0a:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b0e:	48 01 c8             	add    %rcx,%rax
ffff800000105b11:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b14:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b18:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b1b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b1f:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b23:	90                   	nop
ffff800000105b24:	5d                   	pop    %rbp
ffff800000105b25:	c3                   	ret

ffff800000105b26 <set_system_gate>:
ffff800000105b26:	f3 0f 1e fa          	endbr64
ffff800000105b2a:	55                   	push   %rbp
ffff800000105b2b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b2e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b2e <set_system_gate+0x8>
ffff800000105b35:	49 bb 82 93 00 00 00 	movabs $0x9382,%r11
ffff800000105b3c:	00 00 00 
ffff800000105b3f:	4c 01 d8             	add    %r11,%rax
ffff800000105b42:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105b45:	89 f1                	mov    %esi,%ecx
ffff800000105b47:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105b4b:	89 ca                	mov    %ecx,%edx
ffff800000105b4d:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105b50:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b53:	48 89 d1             	mov    %rdx,%rcx
ffff800000105b56:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105b5a:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b61:	ff ff ff 
ffff800000105b64:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b68:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105b6c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b6f:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105b73:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105b77:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b7e:	ff ff ff 
ffff800000105b81:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105b85:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105b89:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105b8d:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105b93:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105b97:	44 89 c0             	mov    %r8d,%eax
ffff800000105b9a:	66 89 d0             	mov    %dx,%ax
ffff800000105b9d:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105ba1:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105ba8:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105bac:	48 01 c8             	add    %rcx,%rax
ffff800000105baf:	48 31 c9             	xor    %rcx,%rcx
ffff800000105bb2:	89 d1                	mov    %edx,%ecx
ffff800000105bb4:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105bb8:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105bbc:	48 01 c8             	add    %rcx,%rax
ffff800000105bbf:	48 89 06             	mov    %rax,(%rsi)
ffff800000105bc2:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105bc6:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105bc9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105bcd:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105bd1:	90                   	nop
ffff800000105bd2:	5d                   	pop    %rbp
ffff800000105bd3:	c3                   	ret
ffff800000105bd4:	f3 0f 1e fa          	endbr64
ffff800000105bd8:	55                   	push   %rbp
ffff800000105bd9:	48 89 e5             	mov    %rsp,%rbp
ffff800000105bdc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105bdc <set_system_gate+0xb6>
ffff800000105be3:	49 bb d4 92 00 00 00 	movabs $0x92d4,%r11
ffff800000105bea:	00 00 00 
ffff800000105bed:	4c 01 d8             	add    %r11,%rax
ffff800000105bf0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105bf4:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105bf8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bfc:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105c00:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105c04:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105c08:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c0f:	ff ff ff 
ffff800000105c12:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c16:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105c1a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105c1e:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c21:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c28:	ff ff ff 
ffff800000105c2b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c2f:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105c33:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105c37:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c3a:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c41:	ff ff ff 
ffff800000105c44:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c48:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105c4c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105c50:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c53:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c5a:	ff ff ff 
ffff800000105c5d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c61:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105c65:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105c69:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c6c:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c73:	ff ff ff 
ffff800000105c76:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c7a:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105c7e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105c82:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c85:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c8c:	ff ff ff 
ffff800000105c8f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c93:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105c97:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105c9b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c9e:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ca5:	ff ff ff 
ffff800000105ca8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cac:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105cb0:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105cb4:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cb7:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cbe:	ff ff ff 
ffff800000105cc1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cc5:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105cc9:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105ccd:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cd0:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cd7:	ff ff ff 
ffff800000105cda:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cde:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105ce2:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105ce6:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ce9:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cf0:	ff ff ff 
ffff800000105cf3:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105cf7:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105cfb:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105cff:	48 89 10             	mov    %rdx,(%rax)
ffff800000105d02:	90                   	nop
ffff800000105d03:	5d                   	pop    %rbp
ffff800000105d04:	c3                   	ret

ffff800000105d05 <do_divide_error>:
ffff800000105d05:	f3 0f 1e fa          	endbr64
ffff800000105d09:	55                   	push   %rbp
ffff800000105d0a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d0d:	41 57                	push   %r15
ffff800000105d0f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d13:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d13 <do_divide_error+0xe>
ffff800000105d1a:	49 bb 9d 91 00 00 00 	movabs $0x919d,%r11
ffff800000105d21:	00 00 00 
ffff800000105d24:	4d 01 da             	add    %r11,%r10
ffff800000105d27:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d2b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d2f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d36:	00 
ffff800000105d37:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d3b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d41:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d49:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d4c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d50:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d54:	49 89 c9             	mov    %rcx,%r9
ffff800000105d57:	49 89 d0             	mov    %rdx,%r8
ffff800000105d5a:	48 89 c1             	mov    %rax,%rcx
ffff800000105d5d:	48 b8 98 9e ff ff ff 	movabs $0xffffffffffff9e98,%rax
ffff800000105d64:	ff ff ff 
ffff800000105d67:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d6b:	48 89 c2             	mov    %rax,%rdx
ffff800000105d6e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d73:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d78:	4d 89 d7             	mov    %r10,%r15
ffff800000105d7b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d80:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000105d87:	ff ff ff 
ffff800000105d8a:	4d 01 d3             	add    %r10,%r11
ffff800000105d8d:	41 ff d3             	call   *%r11
ffff800000105d90:	90                   	nop
ffff800000105d91:	eb fd                	jmp    ffff800000105d90 <do_divide_error+0x8b>

ffff800000105d93 <do_debug>:
ffff800000105d93:	f3 0f 1e fa          	endbr64
ffff800000105d97:	55                   	push   %rbp
ffff800000105d98:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d9b:	41 57                	push   %r15
ffff800000105d9d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105da1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105da1 <do_debug+0xe>
ffff800000105da8:	49 bb 0f 91 00 00 00 	movabs $0x910f,%r11
ffff800000105daf:	00 00 00 
ffff800000105db2:	4d 01 da             	add    %r11,%r10
ffff800000105db5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105db9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105dbd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105dc4:	00 
ffff800000105dc5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105dc9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105dcf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105dd3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105dd7:	48 8b 08             	mov    (%rax),%rcx
ffff800000105dda:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105dde:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105de2:	49 89 c9             	mov    %rcx,%r9
ffff800000105de5:	49 89 d0             	mov    %rdx,%r8
ffff800000105de8:	48 89 c1             	mov    %rax,%rcx
ffff800000105deb:	48 b8 d8 9e ff ff ff 	movabs $0xffffffffffff9ed8,%rax
ffff800000105df2:	ff ff ff 
ffff800000105df5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105df9:	48 89 c2             	mov    %rax,%rdx
ffff800000105dfc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e01:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e06:	4d 89 d7             	mov    %r10,%r15
ffff800000105e09:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e0e:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000105e15:	ff ff ff 
ffff800000105e18:	4d 01 d3             	add    %r10,%r11
ffff800000105e1b:	41 ff d3             	call   *%r11
ffff800000105e1e:	90                   	nop
ffff800000105e1f:	eb fd                	jmp    ffff800000105e1e <do_debug+0x8b>

ffff800000105e21 <do_nmi>:
ffff800000105e21:	f3 0f 1e fa          	endbr64
ffff800000105e25:	55                   	push   %rbp
ffff800000105e26:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e29:	41 57                	push   %r15
ffff800000105e2b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e2f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e2f <do_nmi+0xe>
ffff800000105e36:	49 bb 81 90 00 00 00 	movabs $0x9081,%r11
ffff800000105e3d:	00 00 00 
ffff800000105e40:	4d 01 da             	add    %r11,%r10
ffff800000105e43:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e47:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e4b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e52:	00 
ffff800000105e53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e57:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e5d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e65:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e68:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e6c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e70:	49 89 c9             	mov    %rcx,%r9
ffff800000105e73:	49 89 d0             	mov    %rdx,%r8
ffff800000105e76:	48 89 c1             	mov    %rax,%rcx
ffff800000105e79:	48 b8 10 9f ff ff ff 	movabs $0xffffffffffff9f10,%rax
ffff800000105e80:	ff ff ff 
ffff800000105e83:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e87:	48 89 c2             	mov    %rax,%rdx
ffff800000105e8a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e8f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e94:	4d 89 d7             	mov    %r10,%r15
ffff800000105e97:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e9c:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000105ea3:	ff ff ff 
ffff800000105ea6:	4d 01 d3             	add    %r10,%r11
ffff800000105ea9:	41 ff d3             	call   *%r11
ffff800000105eac:	90                   	nop
ffff800000105ead:	eb fd                	jmp    ffff800000105eac <do_nmi+0x8b>

ffff800000105eaf <do_int3>:
ffff800000105eaf:	f3 0f 1e fa          	endbr64
ffff800000105eb3:	55                   	push   %rbp
ffff800000105eb4:	48 89 e5             	mov    %rsp,%rbp
ffff800000105eb7:	41 57                	push   %r15
ffff800000105eb9:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ebd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105ebd <do_int3+0xe>
ffff800000105ec4:	49 bb f3 8f 00 00 00 	movabs $0x8ff3,%r11
ffff800000105ecb:	00 00 00 
ffff800000105ece:	4d 01 da             	add    %r11,%r10
ffff800000105ed1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ed5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ed9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ee0:	00 
ffff800000105ee1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ee5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105eeb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105eef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ef3:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ef6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105efa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105efe:	49 89 c9             	mov    %rcx,%r9
ffff800000105f01:	49 89 d0             	mov    %rdx,%r8
ffff800000105f04:	48 89 c1             	mov    %rax,%rcx
ffff800000105f07:	48 b8 48 9f ff ff ff 	movabs $0xffffffffffff9f48,%rax
ffff800000105f0e:	ff ff ff 
ffff800000105f11:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f15:	48 89 c2             	mov    %rax,%rdx
ffff800000105f18:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f1d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f22:	4d 89 d7             	mov    %r10,%r15
ffff800000105f25:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f2a:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000105f31:	ff ff ff 
ffff800000105f34:	4d 01 d3             	add    %r10,%r11
ffff800000105f37:	41 ff d3             	call   *%r11
ffff800000105f3a:	90                   	nop
ffff800000105f3b:	eb fd                	jmp    ffff800000105f3a <do_int3+0x8b>

ffff800000105f3d <do_overflow>:
ffff800000105f3d:	f3 0f 1e fa          	endbr64
ffff800000105f41:	55                   	push   %rbp
ffff800000105f42:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f45:	41 57                	push   %r15
ffff800000105f47:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f4b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f4b <do_overflow+0xe>
ffff800000105f52:	49 bb 65 8f 00 00 00 	movabs $0x8f65,%r11
ffff800000105f59:	00 00 00 
ffff800000105f5c:	4d 01 da             	add    %r11,%r10
ffff800000105f5f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f63:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f67:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f6e:	00 
ffff800000105f6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f73:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f79:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f81:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f84:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f88:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f8c:	49 89 c9             	mov    %rcx,%r9
ffff800000105f8f:	49 89 d0             	mov    %rdx,%r8
ffff800000105f92:	48 89 c1             	mov    %rax,%rcx
ffff800000105f95:	48 b8 80 9f ff ff ff 	movabs $0xffffffffffff9f80,%rax
ffff800000105f9c:	ff ff ff 
ffff800000105f9f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105fa3:	48 89 c2             	mov    %rax,%rdx
ffff800000105fa6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105fab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105fb0:	4d 89 d7             	mov    %r10,%r15
ffff800000105fb3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fb8:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000105fbf:	ff ff ff 
ffff800000105fc2:	4d 01 d3             	add    %r10,%r11
ffff800000105fc5:	41 ff d3             	call   *%r11
ffff800000105fc8:	90                   	nop
ffff800000105fc9:	eb fd                	jmp    ffff800000105fc8 <do_overflow+0x8b>

ffff800000105fcb <do_bounds>:
ffff800000105fcb:	f3 0f 1e fa          	endbr64
ffff800000105fcf:	55                   	push   %rbp
ffff800000105fd0:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fd3:	41 57                	push   %r15
ffff800000105fd5:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fd9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fd9 <do_bounds+0xe>
ffff800000105fe0:	49 bb d7 8e 00 00 00 	movabs $0x8ed7,%r11
ffff800000105fe7:	00 00 00 
ffff800000105fea:	4d 01 da             	add    %r11,%r10
ffff800000105fed:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ff1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ff5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ffc:	00 
ffff800000105ffd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106001:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106007:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010600b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010600f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106012:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106016:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010601a:	49 89 c9             	mov    %rcx,%r9
ffff80000010601d:	49 89 d0             	mov    %rdx,%r8
ffff800000106020:	48 89 c1             	mov    %rax,%rcx
ffff800000106023:	48 b8 c0 9f ff ff ff 	movabs $0xffffffffffff9fc0,%rax
ffff80000010602a:	ff ff ff 
ffff80000010602d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106031:	48 89 c2             	mov    %rax,%rdx
ffff800000106034:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106039:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010603e:	4d 89 d7             	mov    %r10,%r15
ffff800000106041:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106046:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff80000010604d:	ff ff ff 
ffff800000106050:	4d 01 d3             	add    %r10,%r11
ffff800000106053:	41 ff d3             	call   *%r11
ffff800000106056:	90                   	nop
ffff800000106057:	eb fd                	jmp    ffff800000106056 <do_bounds+0x8b>

ffff800000106059 <do_undefined_opcode>:
ffff800000106059:	f3 0f 1e fa          	endbr64
ffff80000010605d:	55                   	push   %rbp
ffff80000010605e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106061:	41 57                	push   %r15
ffff800000106063:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106067:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106067 <do_undefined_opcode+0xe>
ffff80000010606e:	49 bb 49 8e 00 00 00 	movabs $0x8e49,%r11
ffff800000106075:	00 00 00 
ffff800000106078:	4d 01 da             	add    %r11,%r10
ffff80000010607b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010607f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106083:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010608a:	00 
ffff80000010608b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010608f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106095:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106099:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010609d:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060a0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060a4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060a8:	49 89 c9             	mov    %rcx,%r9
ffff8000001060ab:	49 89 d0             	mov    %rdx,%r8
ffff8000001060ae:	48 89 c1             	mov    %rax,%rcx
ffff8000001060b1:	48 b8 00 a0 ff ff ff 	movabs $0xffffffffffffa000,%rax
ffff8000001060b8:	ff ff ff 
ffff8000001060bb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001060bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001060c2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060c7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060cc:	4d 89 d7             	mov    %r10,%r15
ffff8000001060cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060d4:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff8000001060db:	ff ff ff 
ffff8000001060de:	4d 01 d3             	add    %r10,%r11
ffff8000001060e1:	41 ff d3             	call   *%r11
ffff8000001060e4:	90                   	nop
ffff8000001060e5:	eb fd                	jmp    ffff8000001060e4 <do_undefined_opcode+0x8b>

ffff8000001060e7 <do_dev_not_available>:
ffff8000001060e7:	f3 0f 1e fa          	endbr64
ffff8000001060eb:	55                   	push   %rbp
ffff8000001060ec:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060ef:	41 57                	push   %r15
ffff8000001060f1:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060f5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060f5 <do_dev_not_available+0xe>
ffff8000001060fc:	49 bb bb 8d 00 00 00 	movabs $0x8dbb,%r11
ffff800000106103:	00 00 00 
ffff800000106106:	4d 01 da             	add    %r11,%r10
ffff800000106109:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010610d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106111:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106118:	00 
ffff800000106119:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010611d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106123:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106127:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010612b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010612e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106132:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106136:	49 89 c9             	mov    %rcx,%r9
ffff800000106139:	49 89 d0             	mov    %rdx,%r8
ffff80000010613c:	48 89 c1             	mov    %rax,%rcx
ffff80000010613f:	48 b8 48 a0 ff ff ff 	movabs $0xffffffffffffa048,%rax
ffff800000106146:	ff ff ff 
ffff800000106149:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010614d:	48 89 c2             	mov    %rax,%rdx
ffff800000106150:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106155:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010615a:	4d 89 d7             	mov    %r10,%r15
ffff80000010615d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106162:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106169:	ff ff ff 
ffff80000010616c:	4d 01 d3             	add    %r10,%r11
ffff80000010616f:	41 ff d3             	call   *%r11
ffff800000106172:	90                   	nop
ffff800000106173:	eb fd                	jmp    ffff800000106172 <do_dev_not_available+0x8b>

ffff800000106175 <do_double_fault>:
ffff800000106175:	f3 0f 1e fa          	endbr64
ffff800000106179:	55                   	push   %rbp
ffff80000010617a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010617d:	41 57                	push   %r15
ffff80000010617f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106183:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106183 <do_double_fault+0xe>
ffff80000010618a:	49 bb 2d 8d 00 00 00 	movabs $0x8d2d,%r11
ffff800000106191:	00 00 00 
ffff800000106194:	4d 01 da             	add    %r11,%r10
ffff800000106197:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010619b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010619f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061a6:	00 
ffff8000001061a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061ab:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061b1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061b9:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061bc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061c0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061c4:	49 89 c9             	mov    %rcx,%r9
ffff8000001061c7:	49 89 d0             	mov    %rdx,%r8
ffff8000001061ca:	48 89 c1             	mov    %rax,%rcx
ffff8000001061cd:	48 b8 90 a0 ff ff ff 	movabs $0xffffffffffffa090,%rax
ffff8000001061d4:	ff ff ff 
ffff8000001061d7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061db:	48 89 c2             	mov    %rax,%rdx
ffff8000001061de:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061e3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061e8:	4d 89 d7             	mov    %r10,%r15
ffff8000001061eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061f0:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff8000001061f7:	ff ff ff 
ffff8000001061fa:	4d 01 d3             	add    %r10,%r11
ffff8000001061fd:	41 ff d3             	call   *%r11
ffff800000106200:	90                   	nop
ffff800000106201:	eb fd                	jmp    ffff800000106200 <do_double_fault+0x8b>

ffff800000106203 <do_coprocessor_segment_overrun>:
ffff800000106203:	f3 0f 1e fa          	endbr64
ffff800000106207:	55                   	push   %rbp
ffff800000106208:	48 89 e5             	mov    %rsp,%rbp
ffff80000010620b:	41 57                	push   %r15
ffff80000010620d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106211:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106211 <do_coprocessor_segment_overrun+0xe>
ffff800000106218:	49 bb 9f 8c 00 00 00 	movabs $0x8c9f,%r11
ffff80000010621f:	00 00 00 
ffff800000106222:	4d 01 da             	add    %r11,%r10
ffff800000106225:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106229:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010622d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106234:	00 
ffff800000106235:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106239:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010623f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106243:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106247:	48 8b 08             	mov    (%rax),%rcx
ffff80000010624a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010624e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106252:	49 89 c9             	mov    %rcx,%r9
ffff800000106255:	49 89 d0             	mov    %rdx,%r8
ffff800000106258:	48 89 c1             	mov    %rax,%rcx
ffff80000010625b:	48 b8 d0 a0 ff ff ff 	movabs $0xffffffffffffa0d0,%rax
ffff800000106262:	ff ff ff 
ffff800000106265:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106269:	48 89 c2             	mov    %rax,%rdx
ffff80000010626c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106271:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106276:	4d 89 d7             	mov    %r10,%r15
ffff800000106279:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010627e:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106285:	ff ff ff 
ffff800000106288:	4d 01 d3             	add    %r10,%r11
ffff80000010628b:	41 ff d3             	call   *%r11
ffff80000010628e:	90                   	nop
ffff80000010628f:	eb fd                	jmp    ffff80000010628e <do_coprocessor_segment_overrun+0x8b>

ffff800000106291 <do_invalid_TSS>:
ffff800000106291:	f3 0f 1e fa          	endbr64
ffff800000106295:	55                   	push   %rbp
ffff800000106296:	48 89 e5             	mov    %rsp,%rbp
ffff800000106299:	41 57                	push   %r15
ffff80000010629b:	53                   	push   %rbx
ffff80000010629c:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001062a0:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001062a0 <do_invalid_TSS+0xf>
ffff8000001062a7:	49 bb 10 8c 00 00 00 	movabs $0x8c10,%r11
ffff8000001062ae:	00 00 00 
ffff8000001062b1:	4c 01 db             	add    %r11,%rbx
ffff8000001062b4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001062b8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001062bc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001062c3:	00 
ffff8000001062c4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062c8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062ce:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001062d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001062d6:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062d9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062e1:	49 89 c9             	mov    %rcx,%r9
ffff8000001062e4:	49 89 d0             	mov    %rdx,%r8
ffff8000001062e7:	48 89 c1             	mov    %rax,%rcx
ffff8000001062ea:	48 b8 20 a1 ff ff ff 	movabs $0xffffffffffffa120,%rax
ffff8000001062f1:	ff ff ff 
ffff8000001062f4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062f8:	48 89 c2             	mov    %rax,%rdx
ffff8000001062fb:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106300:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106305:	49 89 df             	mov    %rbx,%r15
ffff800000106308:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010630d:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000106314:	ff ff ff 
ffff800000106317:	49 01 da             	add    %rbx,%r10
ffff80000010631a:	41 ff d2             	call   *%r10
ffff80000010631d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106321:	83 e0 01             	and    $0x1,%eax
ffff800000106324:	48 85 c0             	test   %rax,%rax
ffff800000106327:	74 32                	je     ffff80000010635b <do_invalid_TSS+0xca>
ffff800000106329:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106330:	ff ff ff 
ffff800000106333:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106337:	48 89 c2             	mov    %rax,%rdx
ffff80000010633a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010633f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106344:	49 89 df             	mov    %rbx,%r15
ffff800000106347:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010634c:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106353:	ff ff ff 
ffff800000106356:	48 01 d9             	add    %rbx,%rcx
ffff800000106359:	ff d1                	call   *%rcx
ffff80000010635b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010635f:	83 e0 02             	and    $0x2,%eax
ffff800000106362:	48 85 c0             	test   %rax,%rax
ffff800000106365:	74 34                	je     ffff80000010639b <do_invalid_TSS+0x10a>
ffff800000106367:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff80000010636e:	ff ff ff 
ffff800000106371:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106375:	48 89 c2             	mov    %rax,%rdx
ffff800000106378:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010637d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106382:	49 89 df             	mov    %rbx,%r15
ffff800000106385:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010638a:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106391:	ff ff ff 
ffff800000106394:	48 01 d9             	add    %rbx,%rcx
ffff800000106397:	ff d1                	call   *%rcx
ffff800000106399:	eb 32                	jmp    ffff8000001063cd <do_invalid_TSS+0x13c>
ffff80000010639b:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff8000001063a2:	ff ff ff 
ffff8000001063a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001063ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063b1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063b6:	49 89 df             	mov    %rbx,%r15
ffff8000001063b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063be:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001063c5:	ff ff ff 
ffff8000001063c8:	48 01 d9             	add    %rbx,%rcx
ffff8000001063cb:	ff d1                	call   *%rcx
ffff8000001063cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063d1:	83 e0 02             	and    $0x2,%eax
ffff8000001063d4:	48 85 c0             	test   %rax,%rax
ffff8000001063d7:	75 72                	jne    ffff80000010644b <do_invalid_TSS+0x1ba>
ffff8000001063d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063dd:	83 e0 04             	and    $0x4,%eax
ffff8000001063e0:	48 85 c0             	test   %rax,%rax
ffff8000001063e3:	74 34                	je     ffff800000106419 <do_invalid_TSS+0x188>
ffff8000001063e5:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001063ec:	ff ff ff 
ffff8000001063ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063f3:	48 89 c2             	mov    %rax,%rdx
ffff8000001063f6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063fb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106400:	49 89 df             	mov    %rbx,%r15
ffff800000106403:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106408:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010640f:	ff ff ff 
ffff800000106412:	48 01 d9             	add    %rbx,%rcx
ffff800000106415:	ff d1                	call   *%rcx
ffff800000106417:	eb 32                	jmp    ffff80000010644b <do_invalid_TSS+0x1ba>
ffff800000106419:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106420:	ff ff ff 
ffff800000106423:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106427:	48 89 c2             	mov    %rax,%rdx
ffff80000010642a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010642f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106434:	49 89 df             	mov    %rbx,%r15
ffff800000106437:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010643c:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106443:	ff ff ff 
ffff800000106446:	48 01 d9             	add    %rbx,%rcx
ffff800000106449:	ff d1                	call   *%rcx
ffff80000010644b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010644f:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106454:	48 89 c1             	mov    %rax,%rcx
ffff800000106457:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff80000010645e:	ff ff ff 
ffff800000106461:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106465:	48 89 c2             	mov    %rax,%rdx
ffff800000106468:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010646d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106472:	49 89 df             	mov    %rbx,%r15
ffff800000106475:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010647a:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000106481:	ff ff ff 
ffff800000106484:	49 01 d8             	add    %rbx,%r8
ffff800000106487:	41 ff d0             	call   *%r8
ffff80000010648a:	90                   	nop
ffff80000010648b:	eb fd                	jmp    ffff80000010648a <do_invalid_TSS+0x1f9>

ffff80000010648d <do_segment_not_present>:
ffff80000010648d:	f3 0f 1e fa          	endbr64
ffff800000106491:	55                   	push   %rbp
ffff800000106492:	48 89 e5             	mov    %rsp,%rbp
ffff800000106495:	41 57                	push   %r15
ffff800000106497:	53                   	push   %rbx
ffff800000106498:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010649c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010649c <do_segment_not_present+0xf>
ffff8000001064a3:	49 bb 14 8a 00 00 00 	movabs $0x8a14,%r11
ffff8000001064aa:	00 00 00 
ffff8000001064ad:	4c 01 db             	add    %r11,%rbx
ffff8000001064b0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064b4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064b8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064bf:	00 
ffff8000001064c0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064c4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064ca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064d2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064d5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064dd:	49 89 c9             	mov    %rcx,%r9
ffff8000001064e0:	49 89 d0             	mov    %rdx,%r8
ffff8000001064e3:	48 89 c1             	mov    %rax,%rcx
ffff8000001064e6:	48 b8 d0 a2 ff ff ff 	movabs $0xffffffffffffa2d0,%rax
ffff8000001064ed:	ff ff ff 
ffff8000001064f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064f4:	48 89 c2             	mov    %rax,%rdx
ffff8000001064f7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064fc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106501:	49 89 df             	mov    %rbx,%r15
ffff800000106504:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106509:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000106510:	ff ff ff 
ffff800000106513:	49 01 da             	add    %rbx,%r10
ffff800000106516:	41 ff d2             	call   *%r10
ffff800000106519:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010651d:	83 e0 01             	and    $0x1,%eax
ffff800000106520:	48 85 c0             	test   %rax,%rax
ffff800000106523:	74 32                	je     ffff800000106557 <do_segment_not_present+0xca>
ffff800000106525:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff80000010652c:	ff ff ff 
ffff80000010652f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106533:	48 89 c2             	mov    %rax,%rdx
ffff800000106536:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010653b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106540:	49 89 df             	mov    %rbx,%r15
ffff800000106543:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106548:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010654f:	ff ff ff 
ffff800000106552:	48 01 d9             	add    %rbx,%rcx
ffff800000106555:	ff d1                	call   *%rcx
ffff800000106557:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010655b:	83 e0 02             	and    $0x2,%eax
ffff80000010655e:	48 85 c0             	test   %rax,%rax
ffff800000106561:	74 34                	je     ffff800000106597 <do_segment_not_present+0x10a>
ffff800000106563:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff80000010656a:	ff ff ff 
ffff80000010656d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106571:	48 89 c2             	mov    %rax,%rdx
ffff800000106574:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106579:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010657e:	49 89 df             	mov    %rbx,%r15
ffff800000106581:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106586:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010658d:	ff ff ff 
ffff800000106590:	48 01 d9             	add    %rbx,%rcx
ffff800000106593:	ff d1                	call   *%rcx
ffff800000106595:	eb 32                	jmp    ffff8000001065c9 <do_segment_not_present+0x13c>
ffff800000106597:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff80000010659e:	ff ff ff 
ffff8000001065a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065a5:	48 89 c2             	mov    %rax,%rdx
ffff8000001065a8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065ad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065b2:	49 89 df             	mov    %rbx,%r15
ffff8000001065b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065ba:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001065c1:	ff ff ff 
ffff8000001065c4:	48 01 d9             	add    %rbx,%rcx
ffff8000001065c7:	ff d1                	call   *%rcx
ffff8000001065c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065cd:	83 e0 02             	and    $0x2,%eax
ffff8000001065d0:	48 85 c0             	test   %rax,%rax
ffff8000001065d3:	75 72                	jne    ffff800000106647 <do_segment_not_present+0x1ba>
ffff8000001065d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065d9:	83 e0 04             	and    $0x4,%eax
ffff8000001065dc:	48 85 c0             	test   %rax,%rax
ffff8000001065df:	74 34                	je     ffff800000106615 <do_segment_not_present+0x188>
ffff8000001065e1:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001065e8:	ff ff ff 
ffff8000001065eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001065f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065fc:	49 89 df             	mov    %rbx,%r15
ffff8000001065ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106604:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010660b:	ff ff ff 
ffff80000010660e:	48 01 d9             	add    %rbx,%rcx
ffff800000106611:	ff d1                	call   *%rcx
ffff800000106613:	eb 32                	jmp    ffff800000106647 <do_segment_not_present+0x1ba>
ffff800000106615:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff80000010661c:	ff ff ff 
ffff80000010661f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106623:	48 89 c2             	mov    %rax,%rdx
ffff800000106626:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010662b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106630:	49 89 df             	mov    %rbx,%r15
ffff800000106633:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106638:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010663f:	ff ff ff 
ffff800000106642:	48 01 d9             	add    %rbx,%rcx
ffff800000106645:	ff d1                	call   *%rcx
ffff800000106647:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010664b:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106650:	48 89 c1             	mov    %rax,%rcx
ffff800000106653:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff80000010665a:	ff ff ff 
ffff80000010665d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106661:	48 89 c2             	mov    %rax,%rdx
ffff800000106664:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106669:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010666e:	49 89 df             	mov    %rbx,%r15
ffff800000106671:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106676:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff80000010667d:	ff ff ff 
ffff800000106680:	49 01 d8             	add    %rbx,%r8
ffff800000106683:	41 ff d0             	call   *%r8
ffff800000106686:	90                   	nop
ffff800000106687:	eb fd                	jmp    ffff800000106686 <do_segment_not_present+0x1f9>

ffff800000106689 <do_stack_segment_fault>:
ffff800000106689:	f3 0f 1e fa          	endbr64
ffff80000010668d:	55                   	push   %rbp
ffff80000010668e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106691:	41 57                	push   %r15
ffff800000106693:	53                   	push   %rbx
ffff800000106694:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106698:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106698 <do_stack_segment_fault+0xf>
ffff80000010669f:	49 bb 18 88 00 00 00 	movabs $0x8818,%r11
ffff8000001066a6:	00 00 00 
ffff8000001066a9:	4c 01 db             	add    %r11,%rbx
ffff8000001066ac:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066b0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066b4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001066bb:	00 
ffff8000001066bc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001066c0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001066c6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001066ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001066ce:	48 8b 08             	mov    (%rax),%rcx
ffff8000001066d1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001066d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066d9:	49 89 c9             	mov    %rcx,%r9
ffff8000001066dc:	49 89 d0             	mov    %rdx,%r8
ffff8000001066df:	48 89 c1             	mov    %rax,%rcx
ffff8000001066e2:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff8000001066e9:	ff ff ff 
ffff8000001066ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001066f3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066f8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066fd:	49 89 df             	mov    %rbx,%r15
ffff800000106700:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106705:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff80000010670c:	ff ff ff 
ffff80000010670f:	49 01 da             	add    %rbx,%r10
ffff800000106712:	41 ff d2             	call   *%r10
ffff800000106715:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106719:	83 e0 01             	and    $0x1,%eax
ffff80000010671c:	48 85 c0             	test   %rax,%rax
ffff80000010671f:	74 32                	je     ffff800000106753 <do_stack_segment_fault+0xca>
ffff800000106721:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106728:	ff ff ff 
ffff80000010672b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010672f:	48 89 c2             	mov    %rax,%rdx
ffff800000106732:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106737:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010673c:	49 89 df             	mov    %rbx,%r15
ffff80000010673f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106744:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010674b:	ff ff ff 
ffff80000010674e:	48 01 d9             	add    %rbx,%rcx
ffff800000106751:	ff d1                	call   *%rcx
ffff800000106753:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106757:	83 e0 02             	and    $0x2,%eax
ffff80000010675a:	48 85 c0             	test   %rax,%rax
ffff80000010675d:	74 34                	je     ffff800000106793 <do_stack_segment_fault+0x10a>
ffff80000010675f:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff800000106766:	ff ff ff 
ffff800000106769:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010676d:	48 89 c2             	mov    %rax,%rdx
ffff800000106770:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106775:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010677a:	49 89 df             	mov    %rbx,%r15
ffff80000010677d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106782:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106789:	ff ff ff 
ffff80000010678c:	48 01 d9             	add    %rbx,%rcx
ffff80000010678f:	ff d1                	call   *%rcx
ffff800000106791:	eb 32                	jmp    ffff8000001067c5 <do_stack_segment_fault+0x13c>
ffff800000106793:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff80000010679a:	ff ff ff 
ffff80000010679d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067a1:	48 89 c2             	mov    %rax,%rdx
ffff8000001067a4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067a9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067ae:	49 89 df             	mov    %rbx,%r15
ffff8000001067b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067b6:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001067bd:	ff ff ff 
ffff8000001067c0:	48 01 d9             	add    %rbx,%rcx
ffff8000001067c3:	ff d1                	call   *%rcx
ffff8000001067c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067c9:	83 e0 02             	and    $0x2,%eax
ffff8000001067cc:	48 85 c0             	test   %rax,%rax
ffff8000001067cf:	75 72                	jne    ffff800000106843 <do_stack_segment_fault+0x1ba>
ffff8000001067d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067d5:	83 e0 04             	and    $0x4,%eax
ffff8000001067d8:	48 85 c0             	test   %rax,%rax
ffff8000001067db:	74 34                	je     ffff800000106811 <do_stack_segment_fault+0x188>
ffff8000001067dd:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001067e4:	ff ff ff 
ffff8000001067e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067f3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067f8:	49 89 df             	mov    %rbx,%r15
ffff8000001067fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106800:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106807:	ff ff ff 
ffff80000010680a:	48 01 d9             	add    %rbx,%rcx
ffff80000010680d:	ff d1                	call   *%rcx
ffff80000010680f:	eb 32                	jmp    ffff800000106843 <do_stack_segment_fault+0x1ba>
ffff800000106811:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106818:	ff ff ff 
ffff80000010681b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010681f:	48 89 c2             	mov    %rax,%rdx
ffff800000106822:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106827:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010682c:	49 89 df             	mov    %rbx,%r15
ffff80000010682f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106834:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff80000010683b:	ff ff ff 
ffff80000010683e:	48 01 d9             	add    %rbx,%rcx
ffff800000106841:	ff d1                	call   *%rcx
ffff800000106843:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106847:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010684c:	48 89 c1             	mov    %rax,%rcx
ffff80000010684f:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff800000106856:	ff ff ff 
ffff800000106859:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010685d:	48 89 c2             	mov    %rax,%rdx
ffff800000106860:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106865:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010686a:	49 89 df             	mov    %rbx,%r15
ffff80000010686d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106872:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000106879:	ff ff ff 
ffff80000010687c:	49 01 d8             	add    %rbx,%r8
ffff80000010687f:	41 ff d0             	call   *%r8
ffff800000106882:	90                   	nop
ffff800000106883:	eb fd                	jmp    ffff800000106882 <do_stack_segment_fault+0x1f9>

ffff800000106885 <do_general_protection>:
ffff800000106885:	f3 0f 1e fa          	endbr64
ffff800000106889:	55                   	push   %rbp
ffff80000010688a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010688d:	41 57                	push   %r15
ffff80000010688f:	53                   	push   %rbx
ffff800000106890:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106894:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106894 <do_general_protection+0xf>
ffff80000010689b:	49 bb 1c 86 00 00 00 	movabs $0x861c,%r11
ffff8000001068a2:	00 00 00 
ffff8000001068a5:	4c 01 db             	add    %r11,%rbx
ffff8000001068a8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001068ac:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001068b0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001068b7:	00 
ffff8000001068b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001068bc:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001068c2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001068c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001068ca:	48 8b 08             	mov    (%rax),%rcx
ffff8000001068cd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001068d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068d5:	49 89 c9             	mov    %rcx,%r9
ffff8000001068d8:	49 89 d0             	mov    %rdx,%r8
ffff8000001068db:	48 89 c1             	mov    %rax,%rcx
ffff8000001068de:	48 b8 60 a3 ff ff ff 	movabs $0xffffffffffffa360,%rax
ffff8000001068e5:	ff ff ff 
ffff8000001068e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001068ef:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068f4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068f9:	49 89 df             	mov    %rbx,%r15
ffff8000001068fc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106901:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000106908:	ff ff ff 
ffff80000010690b:	49 01 da             	add    %rbx,%r10
ffff80000010690e:	41 ff d2             	call   *%r10
ffff800000106911:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106915:	83 e0 01             	and    $0x1,%eax
ffff800000106918:	48 85 c0             	test   %rax,%rax
ffff80000010691b:	74 32                	je     ffff80000010694f <do_general_protection+0xca>
ffff80000010691d:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106924:	ff ff ff 
ffff800000106927:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010692b:	48 89 c2             	mov    %rax,%rdx
ffff80000010692e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106933:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106938:	49 89 df             	mov    %rbx,%r15
ffff80000010693b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106940:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106947:	ff ff ff 
ffff80000010694a:	48 01 d9             	add    %rbx,%rcx
ffff80000010694d:	ff d1                	call   *%rcx
ffff80000010694f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106953:	83 e0 02             	and    $0x2,%eax
ffff800000106956:	48 85 c0             	test   %rax,%rax
ffff800000106959:	74 34                	je     ffff80000010698f <do_general_protection+0x10a>
ffff80000010695b:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff800000106962:	ff ff ff 
ffff800000106965:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106969:	48 89 c2             	mov    %rax,%rdx
ffff80000010696c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106971:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106976:	49 89 df             	mov    %rbx,%r15
ffff800000106979:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010697e:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106985:	ff ff ff 
ffff800000106988:	48 01 d9             	add    %rbx,%rcx
ffff80000010698b:	ff d1                	call   *%rcx
ffff80000010698d:	eb 32                	jmp    ffff8000001069c1 <do_general_protection+0x13c>
ffff80000010698f:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff800000106996:	ff ff ff 
ffff800000106999:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010699d:	48 89 c2             	mov    %rax,%rdx
ffff8000001069a0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069a5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069aa:	49 89 df             	mov    %rbx,%r15
ffff8000001069ad:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069b2:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001069b9:	ff ff ff 
ffff8000001069bc:	48 01 d9             	add    %rbx,%rcx
ffff8000001069bf:	ff d1                	call   *%rcx
ffff8000001069c1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069c5:	83 e0 02             	and    $0x2,%eax
ffff8000001069c8:	48 85 c0             	test   %rax,%rax
ffff8000001069cb:	75 72                	jne    ffff800000106a3f <do_general_protection+0x1ba>
ffff8000001069cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069d1:	83 e0 04             	and    $0x4,%eax
ffff8000001069d4:	48 85 c0             	test   %rax,%rax
ffff8000001069d7:	74 34                	je     ffff800000106a0d <do_general_protection+0x188>
ffff8000001069d9:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001069e0:	ff ff ff 
ffff8000001069e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001069ea:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069ef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069f4:	49 89 df             	mov    %rbx,%r15
ffff8000001069f7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069fc:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106a03:	ff ff ff 
ffff800000106a06:	48 01 d9             	add    %rbx,%rcx
ffff800000106a09:	ff d1                	call   *%rcx
ffff800000106a0b:	eb 32                	jmp    ffff800000106a3f <do_general_protection+0x1ba>
ffff800000106a0d:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106a14:	ff ff ff 
ffff800000106a17:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a1b:	48 89 c2             	mov    %rax,%rdx
ffff800000106a1e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a23:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a28:	49 89 df             	mov    %rbx,%r15
ffff800000106a2b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a30:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106a37:	ff ff ff 
ffff800000106a3a:	48 01 d9             	add    %rbx,%rcx
ffff800000106a3d:	ff d1                	call   *%rcx
ffff800000106a3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a43:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106a48:	48 89 c1             	mov    %rax,%rcx
ffff800000106a4b:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff800000106a52:	ff ff ff 
ffff800000106a55:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a59:	48 89 c2             	mov    %rax,%rdx
ffff800000106a5c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a61:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a66:	49 89 df             	mov    %rbx,%r15
ffff800000106a69:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a6e:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000106a75:	ff ff ff 
ffff800000106a78:	49 01 d8             	add    %rbx,%r8
ffff800000106a7b:	41 ff d0             	call   *%r8
ffff800000106a7e:	90                   	nop
ffff800000106a7f:	eb fd                	jmp    ffff800000106a7e <do_general_protection+0x1f9>

ffff800000106a81 <do_page_fault>:
ffff800000106a81:	f3 0f 1e fa          	endbr64
ffff800000106a85:	55                   	push   %rbp
ffff800000106a86:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a89:	41 57                	push   %r15
ffff800000106a8b:	53                   	push   %rbx
ffff800000106a8c:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106a90:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106a90 <do_page_fault+0xf>
ffff800000106a97:	49 bb 20 84 00 00 00 	movabs $0x8420,%r11
ffff800000106a9e:	00 00 00 
ffff800000106aa1:	4c 01 db             	add    %r11,%rbx
ffff800000106aa4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106aa8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106aac:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ab3:	00 
ffff800000106ab4:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106abb:	00 
ffff800000106abc:	0f 20 d0             	mov    %cr2,%rax
ffff800000106abf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106ac3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ac7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106acd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ad1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ad5:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ad8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106adc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ae0:	49 89 c9             	mov    %rcx,%r9
ffff800000106ae3:	49 89 d0             	mov    %rdx,%r8
ffff800000106ae6:	48 89 c1             	mov    %rax,%rcx
ffff800000106ae9:	48 b8 a8 a3 ff ff ff 	movabs $0xffffffffffffa3a8,%rax
ffff800000106af0:	ff ff ff 
ffff800000106af3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106af7:	48 89 c2             	mov    %rax,%rdx
ffff800000106afa:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aff:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b04:	49 89 df             	mov    %rbx,%r15
ffff800000106b07:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b0c:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000106b13:	ff ff ff 
ffff800000106b16:	49 01 da             	add    %rbx,%r10
ffff800000106b19:	41 ff d2             	call   *%r10
ffff800000106b1c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b20:	83 e0 01             	and    $0x1,%eax
ffff800000106b23:	48 85 c0             	test   %rax,%rax
ffff800000106b26:	75 32                	jne    ffff800000106b5a <do_page_fault+0xd9>
ffff800000106b28:	48 b8 e6 a3 ff ff ff 	movabs $0xffffffffffffa3e6,%rax
ffff800000106b2f:	ff ff ff 
ffff800000106b32:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b36:	48 89 c2             	mov    %rax,%rdx
ffff800000106b39:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b3e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b43:	49 89 df             	mov    %rbx,%r15
ffff800000106b46:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b4b:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106b52:	ff ff ff 
ffff800000106b55:	48 01 d9             	add    %rbx,%rcx
ffff800000106b58:	ff d1                	call   *%rcx
ffff800000106b5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b5e:	83 e0 02             	and    $0x2,%eax
ffff800000106b61:	48 85 c0             	test   %rax,%rax
ffff800000106b64:	74 34                	je     ffff800000106b9a <do_page_fault+0x119>
ffff800000106b66:	48 b8 f9 a3 ff ff ff 	movabs $0xffffffffffffa3f9,%rax
ffff800000106b6d:	ff ff ff 
ffff800000106b70:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b74:	48 89 c2             	mov    %rax,%rdx
ffff800000106b77:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b7c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b81:	49 89 df             	mov    %rbx,%r15
ffff800000106b84:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b89:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106b90:	ff ff ff 
ffff800000106b93:	48 01 d9             	add    %rbx,%rcx
ffff800000106b96:	ff d1                	call   *%rcx
ffff800000106b98:	eb 32                	jmp    ffff800000106bcc <do_page_fault+0x14b>
ffff800000106b9a:	48 b8 0d a4 ff ff ff 	movabs $0xffffffffffffa40d,%rax
ffff800000106ba1:	ff ff ff 
ffff800000106ba4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ba8:	48 89 c2             	mov    %rax,%rdx
ffff800000106bab:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bb0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bb5:	49 89 df             	mov    %rbx,%r15
ffff800000106bb8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bbd:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106bc4:	ff ff ff 
ffff800000106bc7:	48 01 d9             	add    %rbx,%rcx
ffff800000106bca:	ff d1                	call   *%rcx
ffff800000106bcc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bd0:	83 e0 04             	and    $0x4,%eax
ffff800000106bd3:	48 85 c0             	test   %rax,%rax
ffff800000106bd6:	74 34                	je     ffff800000106c0c <do_page_fault+0x18b>
ffff800000106bd8:	48 b8 20 a4 ff ff ff 	movabs $0xffffffffffffa420,%rax
ffff800000106bdf:	ff ff ff 
ffff800000106be2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106be6:	48 89 c2             	mov    %rax,%rdx
ffff800000106be9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bee:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bf3:	49 89 df             	mov    %rbx,%r15
ffff800000106bf6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bfb:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106c02:	ff ff ff 
ffff800000106c05:	48 01 d9             	add    %rbx,%rcx
ffff800000106c08:	ff d1                	call   *%rcx
ffff800000106c0a:	eb 32                	jmp    ffff800000106c3e <do_page_fault+0x1bd>
ffff800000106c0c:	48 b8 32 a4 ff ff ff 	movabs $0xffffffffffffa432,%rax
ffff800000106c13:	ff ff ff 
ffff800000106c16:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c1a:	48 89 c2             	mov    %rax,%rdx
ffff800000106c1d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c22:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c27:	49 89 df             	mov    %rbx,%r15
ffff800000106c2a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c2f:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106c36:	ff ff ff 
ffff800000106c39:	48 01 d9             	add    %rbx,%rcx
ffff800000106c3c:	ff d1                	call   *%rcx
ffff800000106c3e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c42:	83 e0 08             	and    $0x8,%eax
ffff800000106c45:	48 85 c0             	test   %rax,%rax
ffff800000106c48:	74 32                	je     ffff800000106c7c <do_page_fault+0x1fb>
ffff800000106c4a:	48 b8 4e a4 ff ff ff 	movabs $0xffffffffffffa44e,%rax
ffff800000106c51:	ff ff ff 
ffff800000106c54:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c58:	48 89 c2             	mov    %rax,%rdx
ffff800000106c5b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c60:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c65:	49 89 df             	mov    %rbx,%r15
ffff800000106c68:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c6d:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106c74:	ff ff ff 
ffff800000106c77:	48 01 d9             	add    %rbx,%rcx
ffff800000106c7a:	ff d1                	call   *%rcx
ffff800000106c7c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c80:	83 e0 10             	and    $0x10,%eax
ffff800000106c83:	48 85 c0             	test   %rax,%rax
ffff800000106c86:	74 32                	je     ffff800000106cba <do_page_fault+0x239>
ffff800000106c88:	48 b8 70 a4 ff ff ff 	movabs $0xffffffffffffa470,%rax
ffff800000106c8f:	ff ff ff 
ffff800000106c92:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c96:	48 89 c2             	mov    %rax,%rdx
ffff800000106c99:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c9e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ca3:	49 89 df             	mov    %rbx,%r15
ffff800000106ca6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cab:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106cb2:	ff ff ff 
ffff800000106cb5:	48 01 d9             	add    %rbx,%rcx
ffff800000106cb8:	ff d1                	call   *%rcx
ffff800000106cba:	48 b8 8f a4 ff ff ff 	movabs $0xffffffffffffa48f,%rax
ffff800000106cc1:	ff ff ff 
ffff800000106cc4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cc8:	48 89 c2             	mov    %rax,%rdx
ffff800000106ccb:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cd0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cd5:	49 89 df             	mov    %rbx,%r15
ffff800000106cd8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cdd:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff800000106ce4:	ff ff ff 
ffff800000106ce7:	48 01 d9             	add    %rbx,%rcx
ffff800000106cea:	ff d1                	call   *%rcx
ffff800000106cec:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cf0:	48 89 c1             	mov    %rax,%rcx
ffff800000106cf3:	48 b8 91 a4 ff ff ff 	movabs $0xffffffffffffa491,%rax
ffff800000106cfa:	ff ff ff 
ffff800000106cfd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d01:	48 89 c2             	mov    %rax,%rdx
ffff800000106d04:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d09:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d0e:	49 89 df             	mov    %rbx,%r15
ffff800000106d11:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d16:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000106d1d:	ff ff ff 
ffff800000106d20:	49 01 d8             	add    %rbx,%r8
ffff800000106d23:	41 ff d0             	call   *%r8
ffff800000106d26:	90                   	nop
ffff800000106d27:	eb fd                	jmp    ffff800000106d26 <do_page_fault+0x2a5>

ffff800000106d29 <do_x87_FPU_error>:
ffff800000106d29:	f3 0f 1e fa          	endbr64
ffff800000106d2d:	55                   	push   %rbp
ffff800000106d2e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d31:	41 57                	push   %r15
ffff800000106d33:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d37:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d37 <do_x87_FPU_error+0xe>
ffff800000106d3e:	49 bb 79 81 00 00 00 	movabs $0x8179,%r11
ffff800000106d45:	00 00 00 
ffff800000106d48:	4d 01 da             	add    %r11,%r10
ffff800000106d4b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d4f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d53:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d5a:	00 
ffff800000106d5b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d5f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d65:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d6d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d70:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d74:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d78:	49 89 c9             	mov    %rcx,%r9
ffff800000106d7b:	49 89 d0             	mov    %rdx,%r8
ffff800000106d7e:	48 89 c1             	mov    %rax,%rcx
ffff800000106d81:	48 b8 a0 a4 ff ff ff 	movabs $0xffffffffffffa4a0,%rax
ffff800000106d88:	ff ff ff 
ffff800000106d8b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d8f:	48 89 c2             	mov    %rax,%rdx
ffff800000106d92:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d97:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d9c:	4d 89 d7             	mov    %r10,%r15
ffff800000106d9f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106da4:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106dab:	ff ff ff 
ffff800000106dae:	4d 01 d3             	add    %r10,%r11
ffff800000106db1:	41 ff d3             	call   *%r11
ffff800000106db4:	90                   	nop
ffff800000106db5:	eb fd                	jmp    ffff800000106db4 <do_x87_FPU_error+0x8b>

ffff800000106db7 <do_alignment_check>:
ffff800000106db7:	f3 0f 1e fa          	endbr64
ffff800000106dbb:	55                   	push   %rbp
ffff800000106dbc:	48 89 e5             	mov    %rsp,%rbp
ffff800000106dbf:	41 57                	push   %r15
ffff800000106dc1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106dc5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106dc5 <do_alignment_check+0xe>
ffff800000106dcc:	49 bb eb 80 00 00 00 	movabs $0x80eb,%r11
ffff800000106dd3:	00 00 00 
ffff800000106dd6:	4d 01 da             	add    %r11,%r10
ffff800000106dd9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ddd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106de1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106de8:	00 
ffff800000106de9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ded:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106df3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106df7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106dfb:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dfe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e02:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e06:	49 89 c9             	mov    %rcx,%r9
ffff800000106e09:	49 89 d0             	mov    %rdx,%r8
ffff800000106e0c:	48 89 c1             	mov    %rax,%rcx
ffff800000106e0f:	48 b8 e8 a4 ff ff ff 	movabs $0xffffffffffffa4e8,%rax
ffff800000106e16:	ff ff ff 
ffff800000106e19:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e1d:	48 89 c2             	mov    %rax,%rdx
ffff800000106e20:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e25:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e2a:	4d 89 d7             	mov    %r10,%r15
ffff800000106e2d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e32:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106e39:	ff ff ff 
ffff800000106e3c:	4d 01 d3             	add    %r10,%r11
ffff800000106e3f:	41 ff d3             	call   *%r11
ffff800000106e42:	90                   	nop
ffff800000106e43:	eb fd                	jmp    ffff800000106e42 <do_alignment_check+0x8b>

ffff800000106e45 <do_machine_check>:
ffff800000106e45:	f3 0f 1e fa          	endbr64
ffff800000106e49:	55                   	push   %rbp
ffff800000106e4a:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e4d:	41 57                	push   %r15
ffff800000106e4f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e53:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e53 <do_machine_check+0xe>
ffff800000106e5a:	49 bb 5d 80 00 00 00 	movabs $0x805d,%r11
ffff800000106e61:	00 00 00 
ffff800000106e64:	4d 01 da             	add    %r11,%r10
ffff800000106e67:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e6b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e6f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e76:	00 
ffff800000106e77:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e7b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e81:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e85:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e89:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e8c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e90:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e94:	49 89 c9             	mov    %rcx,%r9
ffff800000106e97:	49 89 d0             	mov    %rdx,%r8
ffff800000106e9a:	48 89 c1             	mov    %rax,%rcx
ffff800000106e9d:	48 b8 30 a5 ff ff ff 	movabs $0xffffffffffffa530,%rax
ffff800000106ea4:	ff ff ff 
ffff800000106ea7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106eab:	48 89 c2             	mov    %rax,%rdx
ffff800000106eae:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106eb3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106eb8:	4d 89 d7             	mov    %r10,%r15
ffff800000106ebb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ec0:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106ec7:	ff ff ff 
ffff800000106eca:	4d 01 d3             	add    %r10,%r11
ffff800000106ecd:	41 ff d3             	call   *%r11
ffff800000106ed0:	90                   	nop
ffff800000106ed1:	eb fd                	jmp    ffff800000106ed0 <do_machine_check+0x8b>

ffff800000106ed3 <do_SIMD_exception>:
ffff800000106ed3:	f3 0f 1e fa          	endbr64
ffff800000106ed7:	55                   	push   %rbp
ffff800000106ed8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106edb:	41 57                	push   %r15
ffff800000106edd:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106ee1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106ee1 <do_SIMD_exception+0xe>
ffff800000106ee8:	49 bb cf 7f 00 00 00 	movabs $0x7fcf,%r11
ffff800000106eef:	00 00 00 
ffff800000106ef2:	4d 01 da             	add    %r11,%r10
ffff800000106ef5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ef9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106efd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f04:	00 
ffff800000106f05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f09:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f0f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f13:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f17:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f1a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f1e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f22:	49 89 c9             	mov    %rcx,%r9
ffff800000106f25:	49 89 d0             	mov    %rdx,%r8
ffff800000106f28:	48 89 c1             	mov    %rax,%rcx
ffff800000106f2b:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff800000106f32:	ff ff ff 
ffff800000106f35:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f39:	48 89 c2             	mov    %rax,%rdx
ffff800000106f3c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f41:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f46:	4d 89 d7             	mov    %r10,%r15
ffff800000106f49:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f4e:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106f55:	ff ff ff 
ffff800000106f58:	4d 01 d3             	add    %r10,%r11
ffff800000106f5b:	41 ff d3             	call   *%r11
ffff800000106f5e:	90                   	nop
ffff800000106f5f:	eb fd                	jmp    ffff800000106f5e <do_SIMD_exception+0x8b>

ffff800000106f61 <do_virtualization_exception>:
ffff800000106f61:	f3 0f 1e fa          	endbr64
ffff800000106f65:	55                   	push   %rbp
ffff800000106f66:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f69:	41 57                	push   %r15
ffff800000106f6b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106f6f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106f6f <do_virtualization_exception+0xe>
ffff800000106f76:	49 bb 41 7f 00 00 00 	movabs $0x7f41,%r11
ffff800000106f7d:	00 00 00 
ffff800000106f80:	4d 01 da             	add    %r11,%r10
ffff800000106f83:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f87:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f8b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f92:	00 
ffff800000106f93:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f97:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f9d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106fa1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fa5:	48 8b 08             	mov    (%rax),%rcx
ffff800000106fa8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106fac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fb0:	49 89 c9             	mov    %rcx,%r9
ffff800000106fb3:	49 89 d0             	mov    %rdx,%r8
ffff800000106fb6:	48 89 c1             	mov    %rax,%rcx
ffff800000106fb9:	48 b8 c0 a5 ff ff ff 	movabs $0xffffffffffffa5c0,%rax
ffff800000106fc0:	ff ff ff 
ffff800000106fc3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106fc7:	48 89 c2             	mov    %rax,%rdx
ffff800000106fca:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106fcf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106fd4:	4d 89 d7             	mov    %r10,%r15
ffff800000106fd7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106fdc:	49 bb 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r11
ffff800000106fe3:	ff ff ff 
ffff800000106fe6:	4d 01 d3             	add    %r10,%r11
ffff800000106fe9:	41 ff d3             	call   *%r11
ffff800000106fec:	90                   	nop
ffff800000106fed:	eb fd                	jmp    ffff800000106fec <do_virtualization_exception+0x8b>

ffff800000106fef <sys_vector_init>:
ffff800000106fef:	f3 0f 1e fa          	endbr64
ffff800000106ff3:	55                   	push   %rbp
ffff800000106ff4:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ff7:	53                   	push   %rbx
ffff800000106ff8:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106ff8 <sys_vector_init+0x9>
ffff800000106fff:	49 bb b8 7e 00 00 00 	movabs $0x7eb8,%r11
ffff800000107006:	00 00 00 
ffff800000107009:	4c 01 db             	add    %r11,%rbx
ffff80000010700c:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff800000107013:	ff ff ff 
ffff800000107016:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010701a:	48 89 c2             	mov    %rax,%rdx
ffff80000010701d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107022:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000107027:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff80000010702e:	ff ff ff 
ffff800000107031:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107035:	ff d0                	call   *%rax
ffff800000107037:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010703e:	ff ff ff 
ffff800000107041:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107045:	48 89 c2             	mov    %rax,%rdx
ffff800000107048:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010704d:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107052:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107059:	ff ff ff 
ffff80000010705c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107060:	ff d0                	call   *%rax
ffff800000107062:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000107069:	ff ff ff 
ffff80000010706c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107070:	48 89 c2             	mov    %rax,%rdx
ffff800000107073:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107078:	bf 02 00 00 00       	mov    $0x2,%edi
ffff80000010707d:	48 b8 1a 6b ff ff ff 	movabs $0xffffffffffff6b1a,%rax
ffff800000107084:	ff ff ff 
ffff800000107087:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010708b:	ff d0                	call   *%rax
ffff80000010708d:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000107094:	ff ff ff 
ffff800000107097:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010709b:	48 89 c2             	mov    %rax,%rdx
ffff80000010709e:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070a3:	bf 03 00 00 00       	mov    $0x3,%edi
ffff8000001070a8:	48 b8 76 6c ff ff ff 	movabs $0xffffffffffff6c76,%rax
ffff8000001070af:	ff ff ff 
ffff8000001070b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070b6:	ff d0                	call   *%rax
ffff8000001070b8:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001070bf:	ff ff ff 
ffff8000001070c2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070c6:	48 89 c2             	mov    %rax,%rdx
ffff8000001070c9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070ce:	bf 04 00 00 00       	mov    $0x4,%edi
ffff8000001070d3:	48 b8 76 6c ff ff ff 	movabs $0xffffffffffff6c76,%rax
ffff8000001070da:	ff ff ff 
ffff8000001070dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070e1:	ff d0                	call   *%rax
ffff8000001070e3:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff8000001070ea:	ff ff ff 
ffff8000001070ed:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070f1:	48 89 c2             	mov    %rax,%rdx
ffff8000001070f4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070f9:	bf 05 00 00 00       	mov    $0x5,%edi
ffff8000001070fe:	48 b8 76 6c ff ff ff 	movabs $0xffffffffffff6c76,%rax
ffff800000107105:	ff ff ff 
ffff800000107108:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010710c:	ff d0                	call   *%rax
ffff80000010710e:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107115:	ff ff ff 
ffff800000107118:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010711c:	48 89 c2             	mov    %rax,%rdx
ffff80000010711f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107124:	bf 06 00 00 00       	mov    $0x6,%edi
ffff800000107129:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107130:	ff ff ff 
ffff800000107133:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107137:	ff d0                	call   *%rax
ffff800000107139:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff800000107140:	ff ff ff 
ffff800000107143:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107147:	48 89 c2             	mov    %rax,%rdx
ffff80000010714a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010714f:	bf 07 00 00 00       	mov    $0x7,%edi
ffff800000107154:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff80000010715b:	ff ff ff 
ffff80000010715e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107162:	ff d0                	call   *%rax
ffff800000107164:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff80000010716b:	ff ff ff 
ffff80000010716e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107172:	48 89 c2             	mov    %rax,%rdx
ffff800000107175:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010717a:	bf 08 00 00 00       	mov    $0x8,%edi
ffff80000010717f:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107186:	ff ff ff 
ffff800000107189:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010718d:	ff d0                	call   *%rax
ffff80000010718f:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff800000107196:	ff ff ff 
ffff800000107199:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010719d:	48 89 c2             	mov    %rax,%rdx
ffff8000001071a0:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071a5:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001071aa:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff8000001071b1:	ff ff ff 
ffff8000001071b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071b8:	ff d0                	call   *%rax
ffff8000001071ba:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff8000001071c1:	ff ff ff 
ffff8000001071c4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001071cb:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071d0:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff8000001071d5:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff8000001071dc:	ff ff ff 
ffff8000001071df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071e3:	ff d0                	call   *%rax
ffff8000001071e5:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001071ec:	ff ff ff 
ffff8000001071ef:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071f3:	48 89 c2             	mov    %rax,%rdx
ffff8000001071f6:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071fb:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107200:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107207:	ff ff ff 
ffff80000010720a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010720e:	ff d0                	call   *%rax
ffff800000107210:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107217:	ff ff ff 
ffff80000010721a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010721e:	48 89 c2             	mov    %rax,%rdx
ffff800000107221:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107226:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff80000010722b:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107232:	ff ff ff 
ffff800000107235:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107239:	ff d0                	call   *%rax
ffff80000010723b:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff800000107242:	ff ff ff 
ffff800000107245:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107249:	48 89 c2             	mov    %rax,%rdx
ffff80000010724c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107251:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff800000107256:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff80000010725d:	ff ff ff 
ffff800000107260:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107264:	ff d0                	call   *%rax
ffff800000107266:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff80000010726d:	ff ff ff 
ffff800000107270:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107274:	48 89 c2             	mov    %rax,%rdx
ffff800000107277:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010727c:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff800000107281:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107288:	ff ff ff 
ffff80000010728b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010728f:	ff d0                	call   *%rax
ffff800000107291:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff800000107298:	ff ff ff 
ffff80000010729b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010729f:	48 89 c2             	mov    %rax,%rdx
ffff8000001072a2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072a7:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001072ac:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff8000001072b3:	ff ff ff 
ffff8000001072b6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072ba:	ff d0                	call   *%rax
ffff8000001072bc:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff8000001072c3:	ff ff ff 
ffff8000001072c6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072ca:	48 89 c2             	mov    %rax,%rdx
ffff8000001072cd:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072d2:	bf 11 00 00 00       	mov    $0x11,%edi
ffff8000001072d7:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff8000001072de:	ff ff ff 
ffff8000001072e1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072e5:	ff d0                	call   *%rax
ffff8000001072e7:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff8000001072ee:	ff ff ff 
ffff8000001072f1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072f5:	48 89 c2             	mov    %rax,%rdx
ffff8000001072f8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072fd:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107302:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107309:	ff ff ff 
ffff80000010730c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107310:	ff d0                	call   *%rax
ffff800000107312:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff800000107319:	ff ff ff 
ffff80000010731c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107320:	48 89 c2             	mov    %rax,%rdx
ffff800000107323:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107328:	bf 13 00 00 00       	mov    $0x13,%edi
ffff80000010732d:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff800000107334:	ff ff ff 
ffff800000107337:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010733b:	ff d0                	call   *%rax
ffff80000010733d:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff800000107344:	ff ff ff 
ffff800000107347:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010734b:	48 89 c2             	mov    %rax,%rdx
ffff80000010734e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107353:	bf 14 00 00 00       	mov    $0x14,%edi
ffff800000107358:	48 b8 c8 6b ff ff ff 	movabs $0xffffffffffff6bc8,%rax
ffff80000010735f:	ff ff ff 
ffff800000107362:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107366:	ff d0                	call   *%rax
ffff800000107368:	90                   	nop
ffff800000107369:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010736d:	c9                   	leave
ffff80000010736e:	c3                   	ret

ffff80000010736f <RESTORE_ALL>:
ffff80000010736f:	41 5f                	pop    %r15
ffff800000107371:	41 5e                	pop    %r14
ffff800000107373:	41 5d                	pop    %r13
ffff800000107375:	41 5c                	pop    %r12
ffff800000107377:	41 5b                	pop    %r11
ffff800000107379:	41 5a                	pop    %r10
ffff80000010737b:	41 59                	pop    %r9
ffff80000010737d:	41 58                	pop    %r8
ffff80000010737f:	5b                   	pop    %rbx
ffff800000107380:	59                   	pop    %rcx
ffff800000107381:	5a                   	pop    %rdx
ffff800000107382:	5e                   	pop    %rsi
ffff800000107383:	5f                   	pop    %rdi
ffff800000107384:	5d                   	pop    %rbp
ffff800000107385:	58                   	pop    %rax
ffff800000107386:	8e d8                	mov    %eax,%ds
ffff800000107388:	58                   	pop    %rax
ffff800000107389:	8e c0                	mov    %eax,%es
ffff80000010738b:	58                   	pop    %rax
ffff80000010738c:	48 83 c4 10          	add    $0x10,%rsp
ffff800000107390:	48 cf                	iretq

ffff800000107392 <divide_error>:
ffff800000107392:	6a 00                	push   $0x0
ffff800000107394:	50                   	push   %rax
ffff800000107395:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105d05 <do_divide_error>
ffff80000010739c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073a0:	eb 00                	jmp    ffff8000001073a2 <error_code>

ffff8000001073a2 <error_code>:
ffff8000001073a2:	50                   	push   %rax
ffff8000001073a3:	8c c0                	mov    %es,%eax
ffff8000001073a5:	50                   	push   %rax
ffff8000001073a6:	8c d8                	mov    %ds,%eax
ffff8000001073a8:	50                   	push   %rax
ffff8000001073a9:	48 31 c0             	xor    %rax,%rax
ffff8000001073ac:	55                   	push   %rbp
ffff8000001073ad:	57                   	push   %rdi
ffff8000001073ae:	56                   	push   %rsi
ffff8000001073af:	52                   	push   %rdx
ffff8000001073b0:	51                   	push   %rcx
ffff8000001073b1:	53                   	push   %rbx
ffff8000001073b2:	41 50                	push   %r8
ffff8000001073b4:	41 51                	push   %r9
ffff8000001073b6:	41 52                	push   %r10
ffff8000001073b8:	41 53                	push   %r11
ffff8000001073ba:	41 54                	push   %r12
ffff8000001073bc:	41 55                	push   %r13
ffff8000001073be:	41 56                	push   %r14
ffff8000001073c0:	41 57                	push   %r15
ffff8000001073c2:	fc                   	cld
ffff8000001073c3:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff8000001073ca:	00 
ffff8000001073cb:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff8000001073d2:	00 
ffff8000001073d3:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff8000001073da:	8e df                	mov    %edi,%ds
ffff8000001073dc:	8e c7                	mov    %edi,%es
ffff8000001073de:	48 89 e7             	mov    %rsp,%rdi
ffff8000001073e1:	ff d2                	call   *%rdx
ffff8000001073e3:	eb 00                	jmp    ffff8000001073e5 <ret_from_intr>

ffff8000001073e5 <ret_from_intr>:
ffff8000001073e5:	eb 88                	jmp    ffff80000010736f <RESTORE_ALL>

ffff8000001073e7 <debug>:
ffff8000001073e7:	6a 00                	push   $0x0
ffff8000001073e9:	50                   	push   %rax
ffff8000001073ea:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105d93 <do_debug>
ffff8000001073f1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073f5:	eb ab                	jmp    ffff8000001073a2 <error_code>

ffff8000001073f7 <nmi>:
ffff8000001073f7:	50                   	push   %rax
ffff8000001073f8:	fc                   	cld
ffff8000001073f9:	50                   	push   %rax
ffff8000001073fa:	50                   	push   %rax
ffff8000001073fb:	8c c0                	mov    %es,%eax
ffff8000001073fd:	50                   	push   %rax
ffff8000001073fe:	8c d8                	mov    %ds,%eax
ffff800000107400:	50                   	push   %rax
ffff800000107401:	48 31 c0             	xor    %rax,%rax
ffff800000107404:	55                   	push   %rbp
ffff800000107405:	57                   	push   %rdi
ffff800000107406:	56                   	push   %rsi
ffff800000107407:	52                   	push   %rdx
ffff800000107408:	51                   	push   %rcx
ffff800000107409:	53                   	push   %rbx
ffff80000010740a:	41 50                	push   %r8
ffff80000010740c:	41 51                	push   %r9
ffff80000010740e:	41 52                	push   %r10
ffff800000107410:	41 53                	push   %r11
ffff800000107412:	41 54                	push   %r12
ffff800000107414:	41 55                	push   %r13
ffff800000107416:	41 56                	push   %r14
ffff800000107418:	41 57                	push   %r15
ffff80000010741a:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff800000107421:	8e da                	mov    %edx,%ds
ffff800000107423:	8e c2                	mov    %edx,%es
ffff800000107425:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff80000010742c:	48 89 e6             	mov    %rsp,%rsi
ffff80000010742f:	e8 ed e9 ff ff       	call   ffff800000105e21 <do_nmi>
ffff800000107434:	e9 36 ff ff ff       	jmp    ffff80000010736f <RESTORE_ALL>

ffff800000107439 <invalid_TSS>:
ffff800000107439:	50                   	push   %rax
ffff80000010743a:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff800000106291 <do_invalid_TSS>
ffff800000107441:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107445:	e9 58 ff ff ff       	jmp    ffff8000001073a2 <error_code>

ffff80000010744a <page_fault>:
ffff80000010744a:	50                   	push   %rax
ffff80000010744b:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106a81 <do_page_fault>
ffff800000107452:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107456:	e9 47 ff ff ff       	jmp    ffff8000001073a2 <error_code>

ffff80000010745b <int3>:
ffff80000010745b:	6a 00                	push   $0x0
ffff80000010745d:	50                   	push   %rax
ffff80000010745e:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105eaf <do_int3>
ffff800000107465:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107469:	e9 34 ff ff ff       	jmp    ffff8000001073a2 <error_code>

ffff80000010746e <overflow>:
ffff80000010746e:	6a 00                	push   $0x0
ffff800000107470:	50                   	push   %rax
ffff800000107471:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105f3d <do_overflow>
ffff800000107478:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010747c:	e9 21 ff ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107481 <bounds>:
ffff800000107481:	6a 00                	push   $0x0
ffff800000107483:	50                   	push   %rax
ffff800000107484:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105fcb <do_bounds>
ffff80000010748b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010748f:	e9 0e ff ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107494 <undefined_opcode>:
ffff800000107494:	6a 00                	push   $0x0
ffff800000107496:	50                   	push   %rax
ffff800000107497:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff800000106059 <do_undefined_opcode>
ffff80000010749e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074a2:	e9 fb fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff8000001074a7 <dev_not_available>:
ffff8000001074a7:	6a 00                	push   $0x0
ffff8000001074a9:	50                   	push   %rax
ffff8000001074aa:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff8000001060e7 <do_dev_not_available>
ffff8000001074b1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074b5:	e9 e8 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff8000001074ba <double_fault>:
ffff8000001074ba:	50                   	push   %rax
ffff8000001074bb:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff800000106175 <do_double_fault>
ffff8000001074c2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074c6:	e9 d7 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff8000001074cb <coprocessor_segment_overrun>:
ffff8000001074cb:	6a 00                	push   $0x0
ffff8000001074cd:	50                   	push   %rax
ffff8000001074ce:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff800000106203 <do_coprocessor_segment_overrun>
ffff8000001074d5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074d9:	e9 c4 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff8000001074de <segment_not_present>:
ffff8000001074de:	50                   	push   %rax
ffff8000001074df:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff80000010648d <do_segment_not_present>
ffff8000001074e6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ea:	e9 b3 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff8000001074ef <stack_segment_fault>:
ffff8000001074ef:	50                   	push   %rax
ffff8000001074f0:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff800000106689 <do_stack_segment_fault>
ffff8000001074f7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074fb:	e9 a2 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107500 <general_protection>:
ffff800000107500:	50                   	push   %rax
ffff800000107501:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff800000106885 <do_general_protection>
ffff800000107508:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010750c:	e9 91 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107511 <x87_FPU_error>:
ffff800000107511:	6a 00                	push   $0x0
ffff800000107513:	50                   	push   %rax
ffff800000107514:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106d29 <do_x87_FPU_error>
ffff80000010751b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010751f:	e9 7e fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107524 <alignment_check>:
ffff800000107524:	50                   	push   %rax
ffff800000107525:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106db7 <do_alignment_check>
ffff80000010752c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107530:	e9 6d fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107535 <machine_check>:
ffff800000107535:	6a 00                	push   $0x0
ffff800000107537:	50                   	push   %rax
ffff800000107538:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106e45 <do_machine_check>
ffff80000010753f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107543:	e9 5a fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff800000107548 <SIMD_exception>:
ffff800000107548:	6a 00                	push   $0x0
ffff80000010754a:	50                   	push   %rax
ffff80000010754b:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106ed3 <do_SIMD_exception>
ffff800000107552:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107556:	e9 47 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff80000010755b <virtualization_exception>:
ffff80000010755b:	6a 00                	push   $0x0
ffff80000010755d:	50                   	push   %rax
ffff80000010755e:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106f61 <do_virtualization_exception>
ffff800000107565:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107569:	e9 34 fe ff ff       	jmp    ffff8000001073a2 <error_code>

ffff80000010756e <Cmemset>:
ffff80000010756e:	f3 0f 1e fa          	endbr64
ffff800000107572:	55                   	push   %rbp
ffff800000107573:	48 89 e5             	mov    %rsp,%rbp
ffff800000107576:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107576 <Cmemset+0x8>
ffff80000010757d:	49 bb 3a 79 00 00 00 	movabs $0x793a,%r11
ffff800000107584:	00 00 00 
ffff800000107587:	4c 01 d8             	add    %r11,%rax
ffff80000010758a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010758e:	89 f0                	mov    %esi,%eax
ffff800000107590:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff800000107594:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff800000107597:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010759b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010759f:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff8000001075a3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001075a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075ab:	48 c1 e0 08          	shl    $0x8,%rax
ffff8000001075af:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075b7:	48 c1 e0 10          	shl    $0x10,%rax
ffff8000001075bb:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075c3:	48 c1 e0 20          	shl    $0x20,%rax
ffff8000001075c7:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075cb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001075cf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001075d3:	eb 15                	jmp    ffff8000001075ea <Cmemset+0x7c>
ffff8000001075d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075d9:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001075dd:	48 89 10             	mov    %rdx,(%rax)
ffff8000001075e0:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff8000001075e5:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff8000001075ea:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff8000001075ef:	7f e4                	jg     ffff8000001075d5 <Cmemset+0x67>
ffff8000001075f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001075f5:	83 e0 04             	and    $0x4,%eax
ffff8000001075f8:	48 85 c0             	test   %rax,%rax
ffff8000001075fb:	74 11                	je     ffff80000010760e <Cmemset+0xa0>
ffff8000001075fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107601:	89 c2                	mov    %eax,%edx
ffff800000107603:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107607:	89 10                	mov    %edx,(%rax)
ffff800000107609:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff80000010760e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107612:	83 e0 02             	and    $0x2,%eax
ffff800000107615:	48 85 c0             	test   %rax,%rax
ffff800000107618:	74 12                	je     ffff80000010762c <Cmemset+0xbe>
ffff80000010761a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010761e:	89 c2                	mov    %eax,%edx
ffff800000107620:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107624:	66 89 10             	mov    %dx,(%rax)
ffff800000107627:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff80000010762c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107630:	83 e0 01             	and    $0x1,%eax
ffff800000107633:	48 85 c0             	test   %rax,%rax
ffff800000107636:	74 0a                	je     ffff800000107642 <Cmemset+0xd4>
ffff800000107638:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010763c:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff800000107640:	88 10                	mov    %dl,(%rax)
ffff800000107642:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107646:	5d                   	pop    %rbp
ffff800000107647:	c3                   	ret

ffff800000107648 <Get_gdt>:
ffff800000107648:	f3 0f 1e fa          	endbr64
ffff80000010764c:	55                   	push   %rbp
ffff80000010764d:	48 89 e5             	mov    %rsp,%rbp
ffff800000107650:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107650 <Get_gdt+0x8>
ffff800000107657:	49 bb 60 78 00 00 00 	movabs $0x7860,%r11
ffff80000010765e:	00 00 00 
ffff800000107661:	4c 01 d8             	add    %r11,%rax
ffff800000107664:	0f 20 d8             	mov    %cr3,%rax
ffff800000107667:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010766b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010766f:	5d                   	pop    %rbp
ffff800000107670:	c3                   	ret

ffff800000107671 <page_init>:
ffff800000107671:	f3 0f 1e fa          	endbr64
ffff800000107675:	55                   	push   %rbp
ffff800000107676:	48 89 e5             	mov    %rsp,%rbp
ffff800000107679:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107679 <page_init+0x8>
ffff800000107680:	49 bb 37 78 00 00 00 	movabs $0x7837,%r11
ffff800000107687:	00 00 00 
ffff80000010768a:	4c 01 d8             	add    %r11,%rax
ffff80000010768d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107691:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107695:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107699:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010769d:	48 85 d2             	test   %rdx,%rdx
ffff8000001076a0:	0f 85 d0 00 00 00    	jne    ffff800000107776 <page_init+0x105>
ffff8000001076a6:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001076ad:	00 00 00 
ffff8000001076b0:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff8000001076b7:	00 
ffff8000001076b8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001076bc:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001076c0:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff8000001076c4:	48 c1 e2 03          	shl    $0x3,%rdx
ffff8000001076c8:	48 01 ca             	add    %rcx,%rdx
ffff8000001076cb:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001076ce:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001076d2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001076d6:	48 c1 ea 15          	shr    $0x15,%rdx
ffff8000001076da:	83 e2 3f             	and    $0x3f,%edx
ffff8000001076dd:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001076e2:	89 d1                	mov    %edx,%ecx
ffff8000001076e4:	48 d3 e7             	shl    %cl,%rdi
ffff8000001076e7:	48 89 f9             	mov    %rdi,%rcx
ffff8000001076ea:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001076f1:	00 00 00 
ffff8000001076f4:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff8000001076fb:	00 
ffff8000001076fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107700:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107704:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107708:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010770c:	48 01 d0             	add    %rdx,%rax
ffff80000010770f:	48 09 ce             	or     %rcx,%rsi
ffff800000107712:	48 89 f2             	mov    %rsi,%rdx
ffff800000107715:	48 89 10             	mov    %rdx,(%rax)
ffff800000107718:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010771c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107720:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107724:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107728:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff80000010772c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107730:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107734:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107738:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010773c:	48 8b 00             	mov    (%rax),%rax
ffff80000010773f:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff800000107743:	48 83 c2 01          	add    $0x1,%rdx
ffff800000107747:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff80000010774b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010774f:	48 8b 00             	mov    (%rax),%rax
ffff800000107752:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000107756:	48 83 ea 01          	sub    $0x1,%rdx
ffff80000010775a:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff80000010775e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107762:	48 8b 00             	mov    (%rax),%rax
ffff800000107765:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff800000107769:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010776d:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff800000107771:	e9 0a 01 00 00       	jmp    ffff800000107880 <page_init+0x20f>
ffff800000107776:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010777a:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010777e:	83 e2 04             	and    $0x4,%edx
ffff800000107781:	48 85 d2             	test   %rdx,%rdx
ffff800000107784:	75 2e                	jne    ffff8000001077b4 <page_init+0x143>
ffff800000107786:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010778a:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010778e:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107794:	48 85 d2             	test   %rdx,%rdx
ffff800000107797:	75 1b                	jne    ffff8000001077b4 <page_init+0x143>
ffff800000107799:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010779d:	83 e2 04             	and    $0x4,%edx
ffff8000001077a0:	48 85 d2             	test   %rdx,%rdx
ffff8000001077a3:	75 0f                	jne    ffff8000001077b4 <page_init+0x143>
ffff8000001077a5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001077a9:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff8000001077af:	48 85 d2             	test   %rdx,%rdx
ffff8000001077b2:	74 43                	je     ffff8000001077f7 <page_init+0x186>
ffff8000001077b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077b8:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001077bc:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff8000001077c0:	48 89 c2             	mov    %rax,%rdx
ffff8000001077c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077c7:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001077cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077cf:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001077d3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001077d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077db:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001077df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077e3:	48 8b 00             	mov    (%rax),%rax
ffff8000001077e6:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001077ea:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001077ee:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001077f2:	e9 89 00 00 00       	jmp    ffff800000107880 <page_init+0x20f>
ffff8000001077f7:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001077fe:	00 00 00 
ffff800000107801:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107808:	00 
ffff800000107809:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010780d:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107811:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107815:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107819:	48 01 ca             	add    %rcx,%rdx
ffff80000010781c:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010781f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107823:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107827:	48 c1 ea 15          	shr    $0x15,%rdx
ffff80000010782b:	83 e2 3f             	and    $0x3f,%edx
ffff80000010782e:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107833:	89 d1                	mov    %edx,%ecx
ffff800000107835:	48 d3 e7             	shl    %cl,%rdi
ffff800000107838:	48 89 f9             	mov    %rdi,%rcx
ffff80000010783b:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107842:	00 00 00 
ffff800000107845:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff80000010784c:	00 
ffff80000010784d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107851:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107855:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107859:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010785d:	48 01 d0             	add    %rdx,%rax
ffff800000107860:	48 09 ce             	or     %rcx,%rsi
ffff800000107863:	48 89 f2             	mov    %rsi,%rdx
ffff800000107866:	48 89 10             	mov    %rdx,(%rax)
ffff800000107869:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010786d:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107871:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107875:	48 89 c2             	mov    %rax,%rdx
ffff800000107878:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010787c:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107880:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107885:	5d                   	pop    %rbp
ffff800000107886:	c3                   	ret

ffff800000107887 <init_memory>:
ffff800000107887:	f3 0f 1e fa          	endbr64
ffff80000010788b:	55                   	push   %rbp
ffff80000010788c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010788f:	41 57                	push   %r15
ffff800000107891:	53                   	push   %rbx
ffff800000107892:	48 83 ec 70          	sub    $0x70,%rsp
ffff800000107896:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107896 <init_memory+0xf>
ffff80000010789d:	49 bb 1a 76 00 00 00 	movabs $0x761a,%r11
ffff8000001078a4:	00 00 00 
ffff8000001078a7:	4c 01 db             	add    %r11,%rbx
ffff8000001078aa:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001078b1:	00 
ffff8000001078b2:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff8000001078b9:	00 
ffff8000001078ba:	48 b8 10 a6 ff ff ff 	movabs $0xffffffffffffa610,%rax
ffff8000001078c1:	ff ff ff 
ffff8000001078c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001078cb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001078d0:	bf ff 00 00 00       	mov    $0xff,%edi
ffff8000001078d5:	49 89 df             	mov    %rbx,%r15
ffff8000001078d8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078dd:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001078e4:	ff ff ff 
ffff8000001078e7:	48 01 d9             	add    %rbx,%rcx
ffff8000001078ea:	ff d1                	call   *%rcx
ffff8000001078ec:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff8000001078f3:	80 ff ff 
ffff8000001078f6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001078fa:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000107901:	e9 a2 01 00 00       	jmp    ffff800000107aa8 <init_memory+0x221>
ffff800000107906:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010790a:	8b 48 10             	mov    0x10(%rax),%ecx
ffff80000010790d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107911:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107915:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107919:	48 8b 00             	mov    (%rax),%rax
ffff80000010791c:	41 89 c9             	mov    %ecx,%r9d
ffff80000010791f:	49 89 d0             	mov    %rdx,%r8
ffff800000107922:	48 89 c1             	mov    %rax,%rcx
ffff800000107925:	48 b8 88 a6 ff ff ff 	movabs $0xffffffffffffa688,%rax
ffff80000010792c:	ff ff ff 
ffff80000010792f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107933:	48 89 c2             	mov    %rax,%rdx
ffff800000107936:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010793b:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107940:	49 89 df             	mov    %rbx,%r15
ffff800000107943:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107948:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff80000010794f:	ff ff ff 
ffff800000107952:	49 01 da             	add    %rbx,%r10
ffff800000107955:	41 ff d2             	call   *%r10
ffff800000107958:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff80000010795f:	00 
ffff800000107960:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107964:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107967:	83 f8 01             	cmp    $0x1,%eax
ffff80000010796a:	75 0c                	jne    ffff800000107978 <init_memory+0xf1>
ffff80000010796c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107970:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107974:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107978:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010797f:	00 00 00 
ffff800000107982:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107985:	48 63 d0             	movslq %eax,%rdx
ffff800000107988:	48 01 d9             	add    %rbx,%rcx
ffff80000010798b:	48 89 d0             	mov    %rdx,%rax
ffff80000010798e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107992:	48 01 d0             	add    %rdx,%rax
ffff800000107995:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107999:	48 01 c8             	add    %rcx,%rax
ffff80000010799c:	48 8b 10             	mov    (%rax),%rdx
ffff80000010799f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001079a3:	48 8b 00             	mov    (%rax),%rax
ffff8000001079a6:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001079aa:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001079b1:	00 00 00 
ffff8000001079b4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079b7:	48 63 d0             	movslq %eax,%rdx
ffff8000001079ba:	48 01 de             	add    %rbx,%rsi
ffff8000001079bd:	48 89 d0             	mov    %rdx,%rax
ffff8000001079c0:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079c4:	48 01 d0             	add    %rdx,%rax
ffff8000001079c7:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079cb:	48 01 f0             	add    %rsi,%rax
ffff8000001079ce:	48 89 08             	mov    %rcx,(%rax)
ffff8000001079d1:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff8000001079d8:	00 00 00 
ffff8000001079db:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079de:	48 63 d0             	movslq %eax,%rdx
ffff8000001079e1:	48 89 d0             	mov    %rdx,%rax
ffff8000001079e4:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079e8:	48 01 d0             	add    %rdx,%rax
ffff8000001079eb:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079ef:	48 01 d8             	add    %rbx,%rax
ffff8000001079f2:	48 01 c8             	add    %rcx,%rax
ffff8000001079f5:	48 83 c0 08          	add    $0x8,%rax
ffff8000001079f9:	48 8b 10             	mov    (%rax),%rdx
ffff8000001079fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a00:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107a04:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107a08:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107a0f:	00 00 00 
ffff800000107a12:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a15:	48 63 d0             	movslq %eax,%rdx
ffff800000107a18:	48 89 d0             	mov    %rdx,%rax
ffff800000107a1b:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a1f:	48 01 d0             	add    %rdx,%rax
ffff800000107a22:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a26:	48 01 d8             	add    %rbx,%rax
ffff800000107a29:	48 01 f0             	add    %rsi,%rax
ffff800000107a2c:	48 83 c0 08          	add    $0x8,%rax
ffff800000107a30:	48 89 08             	mov    %rcx,(%rax)
ffff800000107a33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a37:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107a3a:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107a41:	00 00 00 
ffff800000107a44:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a47:	48 63 d0             	movslq %eax,%rdx
ffff800000107a4a:	48 01 de             	add    %rbx,%rsi
ffff800000107a4d:	48 89 d0             	mov    %rdx,%rax
ffff800000107a50:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a54:	48 01 d0             	add    %rdx,%rax
ffff800000107a57:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a5b:	48 01 f0             	add    %rsi,%rax
ffff800000107a5e:	48 83 c0 10          	add    $0x10,%rax
ffff800000107a62:	89 08                	mov    %ecx,(%rax)
ffff800000107a64:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a67:	48 98                	cltq
ffff800000107a69:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107a70:	00 00 00 
ffff800000107a73:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff800000107a7a:	00 
ffff800000107a7b:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107a80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a84:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107a87:	83 f8 04             	cmp    $0x4,%eax
ffff800000107a8a:	77 26                	ja     ffff800000107ab2 <init_memory+0x22b>
ffff800000107a8c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a90:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107a94:	48 85 c0             	test   %rax,%rax
ffff800000107a97:	74 19                	je     ffff800000107ab2 <init_memory+0x22b>
ffff800000107a99:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a9d:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107aa0:	85 c0                	test   %eax,%eax
ffff800000107aa2:	74 0e                	je     ffff800000107ab2 <init_memory+0x22b>
ffff800000107aa4:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff800000107aa8:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff800000107aac:	0f 8e 54 fe ff ff    	jle    ffff800000107906 <init_memory+0x7f>
ffff800000107ab2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ab6:	48 89 c1             	mov    %rax,%rcx
ffff800000107ab9:	48 b8 b8 a6 ff ff ff 	movabs $0xffffffffffffa6b8,%rax
ffff800000107ac0:	ff ff ff 
ffff800000107ac3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ac7:	48 89 c2             	mov    %rax,%rdx
ffff800000107aca:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107acf:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107ad4:	49 89 df             	mov    %rbx,%r15
ffff800000107ad7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107adc:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000107ae3:	ff ff ff 
ffff800000107ae6:	49 01 d8             	add    %rbx,%r8
ffff800000107ae9:	41 ff d0             	call   *%r8
ffff800000107aec:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107af0:	48 89 c1             	mov    %rax,%rcx
ffff800000107af3:	48 b8 d7 a6 ff ff ff 	movabs $0xffffffffffffa6d7,%rax
ffff800000107afa:	ff ff ff 
ffff800000107afd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b01:	48 89 c2             	mov    %rax,%rdx
ffff800000107b04:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b09:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107b0e:	49 89 df             	mov    %rbx,%r15
ffff800000107b11:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b16:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000107b1d:	ff ff ff 
ffff800000107b20:	49 01 d8             	add    %rbx,%r8
ffff800000107b23:	41 ff d0             	call   *%r8
ffff800000107b26:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b2a:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000107b2e:	89 45 bc             	mov    %eax,-0x44(%rbp)
ffff800000107b31:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff800000107b34:	89 c1                	mov    %eax,%ecx
ffff800000107b36:	48 b8 f1 a6 ff ff ff 	movabs $0xffffffffffffa6f1,%rax
ffff800000107b3d:	ff ff ff 
ffff800000107b40:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b44:	48 89 c2             	mov    %rax,%rdx
ffff800000107b47:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b4c:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107b51:	49 89 df             	mov    %rbx,%r15
ffff800000107b54:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b59:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000107b60:	ff ff ff 
ffff800000107b63:	49 01 d8             	add    %rbx,%r8
ffff800000107b66:	41 ff d0             	call   *%r8
ffff800000107b69:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107b70:	00 
ffff800000107b71:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107b78:	e9 ed 00 00 00       	jmp    ffff800000107c6a <init_memory+0x3e3>
ffff800000107b7d:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107b84:	00 00 00 
ffff800000107b87:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107b8a:	48 63 d0             	movslq %eax,%rdx
ffff800000107b8d:	48 01 d9             	add    %rbx,%rcx
ffff800000107b90:	48 89 d0             	mov    %rdx,%rax
ffff800000107b93:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b97:	48 01 d0             	add    %rdx,%rax
ffff800000107b9a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b9e:	48 01 c8             	add    %rcx,%rax
ffff800000107ba1:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ba5:	8b 00                	mov    (%rax),%eax
ffff800000107ba7:	83 f8 01             	cmp    $0x1,%eax
ffff800000107baa:	0f 85 b2 00 00 00    	jne    ffff800000107c62 <init_memory+0x3db>
ffff800000107bb0:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107bb7:	00 00 00 
ffff800000107bba:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107bbd:	48 63 d0             	movslq %eax,%rdx
ffff800000107bc0:	48 01 d9             	add    %rbx,%rcx
ffff800000107bc3:	48 89 d0             	mov    %rdx,%rax
ffff800000107bc6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bca:	48 01 d0             	add    %rdx,%rax
ffff800000107bcd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bd1:	48 01 c8             	add    %rcx,%rax
ffff800000107bd4:	48 8b 00             	mov    (%rax),%rax
ffff800000107bd7:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107bdd:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107be3:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000107be7:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107bee:	00 00 00 
ffff800000107bf1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107bf4:	48 63 d0             	movslq %eax,%rdx
ffff800000107bf7:	48 01 d9             	add    %rbx,%rcx
ffff800000107bfa:	48 89 d0             	mov    %rdx,%rax
ffff800000107bfd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c01:	48 01 d0             	add    %rdx,%rax
ffff800000107c04:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c08:	48 01 c8             	add    %rcx,%rax
ffff800000107c0b:	48 8b 08             	mov    (%rax),%rcx
ffff800000107c0e:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c15:	00 00 00 
ffff800000107c18:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107c1b:	48 63 d0             	movslq %eax,%rdx
ffff800000107c1e:	48 89 d0             	mov    %rdx,%rax
ffff800000107c21:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c25:	48 01 d0             	add    %rdx,%rax
ffff800000107c28:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c2c:	48 01 d8             	add    %rbx,%rax
ffff800000107c2f:	48 01 f0             	add    %rsi,%rax
ffff800000107c32:	48 83 c0 08          	add    $0x8,%rax
ffff800000107c36:	48 8b 00             	mov    (%rax),%rax
ffff800000107c39:	48 01 c8             	add    %rcx,%rax
ffff800000107c3c:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107c42:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000107c46:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107c4a:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
ffff800000107c4e:	73 15                	jae    ffff800000107c65 <init_memory+0x3de>
ffff800000107c50:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107c54:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000107c58:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107c5c:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107c60:	eb 04                	jmp    ffff800000107c66 <init_memory+0x3df>
ffff800000107c62:	90                   	nop
ffff800000107c63:	eb 01                	jmp    ffff800000107c66 <init_memory+0x3df>
ffff800000107c65:	90                   	nop
ffff800000107c66:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107c6a:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107c6d:	48 98                	cltq
ffff800000107c6f:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107c76:	00 00 00 
ffff800000107c79:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000107c80:	00 
ffff800000107c81:	48 39 c2             	cmp    %rax,%rdx
ffff800000107c84:	0f 83 f3 fe ff ff    	jae    ffff800000107b7d <init_memory+0x2f6>
ffff800000107c8a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107c8e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c92:	49 89 d0             	mov    %rdx,%r8
ffff800000107c95:	48 89 c1             	mov    %rax,%rcx
ffff800000107c98:	48 b8 10 a7 ff ff ff 	movabs $0xffffffffffffa710,%rax
ffff800000107c9f:	ff ff ff 
ffff800000107ca2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ca6:	48 89 c2             	mov    %rax,%rdx
ffff800000107ca9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107cae:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107cb3:	49 89 df             	mov    %rbx,%r15
ffff800000107cb6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107cbb:	49 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r9
ffff800000107cc2:	ff ff ff 
ffff800000107cc5:	49 01 d9             	add    %rbx,%r9
ffff800000107cc8:	41 ff d1             	call   *%r9
ffff800000107ccb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107cd2:	00 00 00 
ffff800000107cd5:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107cdc:	00 
ffff800000107cdd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ce4:	00 00 00 
ffff800000107ce7:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107ceb:	48 89 d0             	mov    %rdx,%rax
ffff800000107cee:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cf2:	48 01 d0             	add    %rdx,%rax
ffff800000107cf5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cf9:	48 01 c8             	add    %rcx,%rax
ffff800000107cfc:	48 8b 08             	mov    (%rax),%rcx
ffff800000107cff:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d06:	00 00 00 
ffff800000107d09:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107d10:	00 
ffff800000107d11:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107d18:	00 00 00 
ffff800000107d1b:	48 89 d0             	mov    %rdx,%rax
ffff800000107d1e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d22:	48 01 d0             	add    %rdx,%rax
ffff800000107d25:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d29:	48 01 d8             	add    %rbx,%rax
ffff800000107d2c:	48 01 f0             	add    %rsi,%rax
ffff800000107d2f:	48 83 c0 08          	add    $0x8,%rax
ffff800000107d33:	48 8b 00             	mov    (%rax),%rax
ffff800000107d36:	48 01 c8             	add    %rcx,%rax
ffff800000107d39:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107d3d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d44:	00 00 00 
ffff800000107d47:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107d4e:	00 
ffff800000107d4f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107d55:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107d5b:	48 89 c2             	mov    %rax,%rdx
ffff800000107d5e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d65:	00 00 00 
ffff800000107d68:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107d6f:	00 
ffff800000107d70:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d74:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107d78:	48 89 c2             	mov    %rax,%rdx
ffff800000107d7b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d82:	00 00 00 
ffff800000107d85:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000107d8c:	00 
ffff800000107d8d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d91:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107d95:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000107d99:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000107d9d:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107da1:	48 89 c2             	mov    %rax,%rdx
ffff800000107da4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dab:	00 00 00 
ffff800000107dae:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000107db5:	00 
ffff800000107db6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dbd:	00 00 00 
ffff800000107dc0:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107dc7:	00 
ffff800000107dc8:	48 89 c2             	mov    %rax,%rdx
ffff800000107dcb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dd2:	00 00 00 
ffff800000107dd5:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107ddc:	00 
ffff800000107ddd:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107de2:	48 89 c7             	mov    %rax,%rdi
ffff800000107de5:	48 b8 be 86 ff ff ff 	movabs $0xffffffffffff86be,%rax
ffff800000107dec:	ff ff ff 
ffff800000107def:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107df3:	ff d0                	call   *%rax
ffff800000107df5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dfc:	00 00 00 
ffff800000107dff:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107e06:	00 
ffff800000107e07:	48 89 c2             	mov    %rax,%rdx
ffff800000107e0a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e11:	00 00 00 
ffff800000107e14:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107e1b:	00 
ffff800000107e1c:	48 01 d0             	add    %rdx,%rax
ffff800000107e1f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107e25:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107e2b:	48 89 c2             	mov    %rax,%rdx
ffff800000107e2e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e35:	00 00 00 
ffff800000107e38:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff800000107e3f:	00 
ffff800000107e40:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107e44:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107e48:	48 89 c2             	mov    %rax,%rdx
ffff800000107e4b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e52:	00 00 00 
ffff800000107e55:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff800000107e5c:	00 
ffff800000107e5d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107e61:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107e65:	48 89 c2             	mov    %rax,%rdx
ffff800000107e68:	48 89 d0             	mov    %rdx,%rax
ffff800000107e6b:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e6f:	48 01 d0             	add    %rdx,%rax
ffff800000107e72:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107e76:	48 83 c0 07          	add    $0x7,%rax
ffff800000107e7a:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107e7e:	48 89 c2             	mov    %rax,%rdx
ffff800000107e81:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e88:	00 00 00 
ffff800000107e8b:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000107e92:	00 
ffff800000107e93:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e9a:	00 00 00 
ffff800000107e9d:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107ea4:	00 
ffff800000107ea5:	48 89 c2             	mov    %rax,%rdx
ffff800000107ea8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107eaf:	00 00 00 
ffff800000107eb2:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107eb9:	00 
ffff800000107eba:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107ebf:	48 89 c7             	mov    %rax,%rdi
ffff800000107ec2:	48 b8 be 86 ff ff ff 	movabs $0xffffffffffff86be,%rax
ffff800000107ec9:	ff ff ff 
ffff800000107ecc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ed0:	ff d0                	call   *%rax
ffff800000107ed2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ed9:	00 00 00 
ffff800000107edc:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107ee3:	00 
ffff800000107ee4:	48 89 c2             	mov    %rax,%rdx
ffff800000107ee7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107eee:	00 00 00 
ffff800000107ef1:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107ef8:	00 
ffff800000107ef9:	48 01 d0             	add    %rdx,%rax
ffff800000107efc:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107f02:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107f08:	48 89 c2             	mov    %rax,%rdx
ffff800000107f0b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f12:	00 00 00 
ffff800000107f15:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff800000107f1c:	00 
ffff800000107f1d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f24:	00 00 00 
ffff800000107f27:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff800000107f2e:	00 00 00 00 00 
ffff800000107f33:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f3a:	00 00 00 
ffff800000107f3d:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff800000107f44:	00 90 01 00 00 
ffff800000107f49:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f50:	00 00 00 
ffff800000107f53:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000107f5a:	00 
ffff800000107f5b:	48 89 c2             	mov    %rax,%rdx
ffff800000107f5e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f65:	00 00 00 
ffff800000107f68:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000107f6f:	00 
ffff800000107f70:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107f75:	48 89 c7             	mov    %rax,%rdi
ffff800000107f78:	48 b8 be 86 ff ff ff 	movabs $0xffffffffffff86be,%rax
ffff800000107f7f:	ff ff ff 
ffff800000107f82:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107f86:	ff d0                	call   *%rax
ffff800000107f88:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107f8f:	e9 f8 02 00 00       	jmp    ffff80000010828c <init_memory+0xa05>
ffff800000107f94:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107f9b:	00 00 00 
ffff800000107f9e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107fa1:	48 63 d0             	movslq %eax,%rdx
ffff800000107fa4:	48 01 d9             	add    %rbx,%rcx
ffff800000107fa7:	48 89 d0             	mov    %rdx,%rax
ffff800000107faa:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fae:	48 01 d0             	add    %rdx,%rax
ffff800000107fb1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fb5:	48 01 c8             	add    %rcx,%rax
ffff800000107fb8:	48 83 c0 10          	add    $0x10,%rax
ffff800000107fbc:	8b 00                	mov    (%rax),%eax
ffff800000107fbe:	83 f8 01             	cmp    $0x1,%eax
ffff800000107fc1:	0f 85 bd 02 00 00    	jne    ffff800000108284 <init_memory+0x9fd>
ffff800000107fc7:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107fce:	00 00 00 
ffff800000107fd1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107fd4:	48 63 d0             	movslq %eax,%rdx
ffff800000107fd7:	48 01 d9             	add    %rbx,%rcx
ffff800000107fda:	48 89 d0             	mov    %rdx,%rax
ffff800000107fdd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fe1:	48 01 d0             	add    %rdx,%rax
ffff800000107fe4:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fe8:	48 01 c8             	add    %rcx,%rax
ffff800000107feb:	48 8b 00             	mov    (%rax),%rax
ffff800000107fee:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107ff4:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107ffa:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000107ffe:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108005:	00 00 00 
ffff800000108008:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010800b:	48 63 d0             	movslq %eax,%rdx
ffff80000010800e:	48 01 d9             	add    %rbx,%rcx
ffff800000108011:	48 89 d0             	mov    %rdx,%rax
ffff800000108014:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108018:	48 01 d0             	add    %rdx,%rax
ffff80000010801b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010801f:	48 01 c8             	add    %rcx,%rax
ffff800000108022:	48 8b 08             	mov    (%rax),%rcx
ffff800000108025:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff80000010802c:	00 00 00 
ffff80000010802f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108032:	48 63 d0             	movslq %eax,%rdx
ffff800000108035:	48 89 d0             	mov    %rdx,%rax
ffff800000108038:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010803c:	48 01 d0             	add    %rdx,%rax
ffff80000010803f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108043:	48 01 d8             	add    %rbx,%rax
ffff800000108046:	48 01 f0             	add    %rsi,%rax
ffff800000108049:	48 83 c0 08          	add    $0x8,%rax
ffff80000010804d:	48 8b 00             	mov    (%rax),%rax
ffff800000108050:	48 01 c8             	add    %rcx,%rax
ffff800000108053:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000108059:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff80000010805d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108061:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
ffff800000108065:	0f 83 1c 02 00 00    	jae    ffff800000108287 <init_memory+0xa00>
ffff80000010806b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108072:	00 00 00 
ffff800000108075:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff80000010807c:	00 
ffff80000010807d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108084:	00 00 00 
ffff800000108087:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010808e:	00 
ffff80000010808f:	48 89 d0             	mov    %rdx,%rax
ffff800000108092:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108096:	48 01 d0             	add    %rdx,%rax
ffff800000108099:	48 c1 e0 04          	shl    $0x4,%rax
ffff80000010809d:	48 01 c8             	add    %rcx,%rax
ffff8000001080a0:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff8000001080a4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080ab:	00 00 00 
ffff8000001080ae:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff8000001080b5:	00 
ffff8000001080b6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001080ba:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080c1:	00 00 00 
ffff8000001080c4:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff8000001080cb:	00 
ffff8000001080cc:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080d0:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001080d4:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001080d8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080dc:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001080e0:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001080e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001080e8:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff8000001080ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001080ef:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080f3:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff8000001080f7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080fb:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000108102:	00 
ffff800000108103:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108107:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff80000010810b:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010810f:	48 89 c2             	mov    %rax,%rdx
ffff800000108112:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108116:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff80000010811a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010811e:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff800000108125:	00 
ffff800000108126:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010812a:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff800000108131:	00 
ffff800000108132:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108136:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010813d:	00 00 00 
ffff800000108140:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000108144:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108148:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010814c:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108150:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108154:	48 89 c2             	mov    %rax,%rdx
ffff800000108157:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010815b:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff80000010815f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108166:	00 00 00 
ffff800000108169:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108170:	00 
ffff800000108171:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000108175:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108179:	48 89 c2             	mov    %rax,%rdx
ffff80000010817c:	48 89 d0             	mov    %rdx,%rax
ffff80000010817f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108183:	48 01 d0             	add    %rdx,%rax
ffff800000108186:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010818a:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff80000010818e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108192:	48 89 10             	mov    %rdx,(%rax)
ffff800000108195:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108199:	48 8b 00             	mov    (%rax),%rax
ffff80000010819c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001081a0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001081a7:	e9 bf 00 00 00       	jmp    ffff80000010826b <init_memory+0x9e4>
ffff8000001081ac:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081b0:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001081b4:	48 89 10             	mov    %rdx,(%rax)
ffff8000001081b7:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001081ba:	48 98                	cltq
ffff8000001081bc:	48 c1 e0 15          	shl    $0x15,%rax
ffff8000001081c0:	48 89 c2             	mov    %rax,%rdx
ffff8000001081c3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001081c7:	48 01 c2             	add    %rax,%rdx
ffff8000001081ca:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ce:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff8000001081d2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081d6:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff8000001081dd:	00 
ffff8000001081de:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081e2:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001081e9:	00 
ffff8000001081ea:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ee:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001081f5:	00 
ffff8000001081f6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081fd:	00 00 00 
ffff800000108200:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108207:	00 
ffff800000108208:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010820c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108210:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108214:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108218:	48 01 d0             	add    %rdx,%rax
ffff80000010821b:	48 8b 10             	mov    (%rax),%rdx
ffff80000010821e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108222:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108226:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010822a:	83 e0 3f             	and    $0x3f,%eax
ffff80000010822d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000108232:	89 c1                	mov    %eax,%ecx
ffff800000108234:	48 d3 e6             	shl    %cl,%rsi
ffff800000108237:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010823e:	00 00 00 
ffff800000108241:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff800000108248:	00 
ffff800000108249:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010824d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108251:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108255:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108259:	48 01 c8             	add    %rcx,%rax
ffff80000010825c:	48 31 f2             	xor    %rsi,%rdx
ffff80000010825f:	48 89 10             	mov    %rdx,(%rax)
ffff800000108262:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff800000108266:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff80000010826b:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010826e:	48 63 d0             	movslq %eax,%rdx
ffff800000108271:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108275:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108279:	48 39 c2             	cmp    %rax,%rdx
ffff80000010827c:	0f 82 2a ff ff ff    	jb     ffff8000001081ac <init_memory+0x925>
ffff800000108282:	eb 04                	jmp    ffff800000108288 <init_memory+0xa01>
ffff800000108284:	90                   	nop
ffff800000108285:	eb 01                	jmp    ffff800000108288 <init_memory+0xa01>
ffff800000108287:	90                   	nop
ffff800000108288:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff80000010828c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010828f:	48 98                	cltq
ffff800000108291:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000108298:	00 00 00 
ffff80000010829b:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff8000001082a2:	00 
ffff8000001082a3:	48 39 c2             	cmp    %rax,%rdx
ffff8000001082a6:	0f 83 e8 fc ff ff    	jae    ffff800000107f94 <init_memory+0x70d>
ffff8000001082ac:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082b3:	00 00 00 
ffff8000001082b6:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082bd:	00 
ffff8000001082be:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001082c5:	00 00 00 
ffff8000001082c8:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff8000001082cf:	00 
ffff8000001082d0:	48 89 10             	mov    %rdx,(%rax)
ffff8000001082d3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082da:	00 00 00 
ffff8000001082dd:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082e4:	00 
ffff8000001082e5:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff8000001082ec:	00 
ffff8000001082ed:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082f4:	00 00 00 
ffff8000001082f7:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082fe:	00 
ffff8000001082ff:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108306:	00 
ffff800000108307:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010830e:	00 00 00 
ffff800000108311:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108318:	00 
ffff800000108319:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000108320:	00 
ffff800000108321:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108328:	00 00 00 
ffff80000010832b:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108332:	00 
ffff800000108333:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff80000010833a:	00 
ffff80000010833b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108342:	00 00 00 
ffff800000108345:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010834c:	00 
ffff80000010834d:	48 89 d0             	mov    %rdx,%rax
ffff800000108350:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108354:	48 01 d0             	add    %rdx,%rax
ffff800000108357:	48 c1 e0 04          	shl    $0x4,%rax
ffff80000010835b:	48 83 c0 07          	add    $0x7,%rax
ffff80000010835f:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108363:	48 89 c2             	mov    %rax,%rdx
ffff800000108366:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010836d:	00 00 00 
ffff800000108370:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff800000108377:	00 
ffff800000108378:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010837f:	00 00 00 
ffff800000108382:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff800000108389:	00 
ffff80000010838a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108391:	00 00 00 
ffff800000108394:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff80000010839b:	00 
ffff80000010839c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083a3:	00 00 00 
ffff8000001083a6:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff8000001083ad:	00 
ffff8000001083ae:	49 89 c9             	mov    %rcx,%r9
ffff8000001083b1:	49 89 d0             	mov    %rdx,%r8
ffff8000001083b4:	48 89 c1             	mov    %rax,%rcx
ffff8000001083b7:	48 b8 40 a7 ff ff ff 	movabs $0xffffffffffffa740,%rax
ffff8000001083be:	ff ff ff 
ffff8000001083c1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001083c5:	48 89 c2             	mov    %rax,%rdx
ffff8000001083c8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001083cd:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001083d2:	49 89 df             	mov    %rbx,%r15
ffff8000001083d5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001083da:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff8000001083e1:	ff ff ff 
ffff8000001083e4:	49 01 da             	add    %rbx,%r10
ffff8000001083e7:	41 ff d2             	call   *%r10
ffff8000001083ea:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083f1:	00 00 00 
ffff8000001083f4:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff8000001083fb:	00 
ffff8000001083fc:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108403:	00 00 00 
ffff800000108406:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff80000010840d:	00 
ffff80000010840e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108415:	00 00 00 
ffff800000108418:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010841f:	00 
ffff800000108420:	49 89 c9             	mov    %rcx,%r9
ffff800000108423:	49 89 d0             	mov    %rdx,%r8
ffff800000108426:	48 89 c1             	mov    %rax,%rcx
ffff800000108429:	48 b8 78 a7 ff ff ff 	movabs $0xffffffffffffa778,%rax
ffff800000108430:	ff ff ff 
ffff800000108433:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108437:	48 89 c2             	mov    %rax,%rdx
ffff80000010843a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010843f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108444:	49 89 df             	mov    %rbx,%r15
ffff800000108447:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010844c:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000108453:	ff ff ff 
ffff800000108456:	49 01 da             	add    %rbx,%r10
ffff800000108459:	41 ff d2             	call   *%r10
ffff80000010845c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108463:	00 00 00 
ffff800000108466:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff80000010846d:	00 
ffff80000010846e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108475:	00 00 00 
ffff800000108478:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010847f:	00 
ffff800000108480:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108487:	00 00 00 
ffff80000010848a:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108491:	00 
ffff800000108492:	49 89 c9             	mov    %rcx,%r9
ffff800000108495:	49 89 d0             	mov    %rdx,%r8
ffff800000108498:	48 89 c1             	mov    %rax,%rcx
ffff80000010849b:	48 b8 b8 a7 ff ff ff 	movabs $0xffffffffffffa7b8,%rax
ffff8000001084a2:	ff ff ff 
ffff8000001084a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001084a9:	48 89 c2             	mov    %rax,%rdx
ffff8000001084ac:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001084b1:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001084b6:	49 89 df             	mov    %rbx,%r15
ffff8000001084b9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001084be:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff8000001084c5:	ff ff ff 
ffff8000001084c8:	49 01 da             	add    %rbx,%r10
ffff8000001084cb:	41 ff d2             	call   *%r10
ffff8000001084ce:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001084d5:	00 00 00 
ffff8000001084d8:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff8000001084df:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff8000001084e6:	00 00 00 
ffff8000001084e9:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff8000001084f0:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001084f7:	e9 c1 00 00 00       	jmp    ffff8000001085bd <init_memory+0xd36>
ffff8000001084fc:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108503:	00 00 00 
ffff800000108506:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff80000010850d:	00 
ffff80000010850e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108511:	48 63 d0             	movslq %eax,%rdx
ffff800000108514:	48 89 d0             	mov    %rdx,%rax
ffff800000108517:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010851b:	48 01 d0             	add    %rdx,%rax
ffff80000010851e:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108522:	48 01 c8             	add    %rcx,%rax
ffff800000108525:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000108529:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010852d:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff800000108531:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108535:	48 8b 10             	mov    (%rax),%rdx
ffff800000108538:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010853c:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff800000108540:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108544:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff800000108548:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010854c:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108550:	51                   	push   %rcx
ffff800000108551:	52                   	push   %rdx
ffff800000108552:	49 89 f9             	mov    %rdi,%r9
ffff800000108555:	49 89 f0             	mov    %rsi,%r8
ffff800000108558:	48 89 c1             	mov    %rax,%rcx
ffff80000010855b:	48 b8 f8 a7 ff ff ff 	movabs $0xffffffffffffa7f8,%rax
ffff800000108562:	ff ff ff 
ffff800000108565:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108569:	48 89 c2             	mov    %rax,%rdx
ffff80000010856c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108571:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108576:	49 89 df             	mov    %rbx,%r15
ffff800000108579:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010857e:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff800000108585:	ff ff ff 
ffff800000108588:	49 01 da             	add    %rbx,%r10
ffff80000010858b:	41 ff d2             	call   *%r10
ffff80000010858e:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108592:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108596:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010859a:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
ffff8000001085a1:	00 00 00 
ffff8000001085a4:	48 39 c2             	cmp    %rax,%rdx
ffff8000001085a7:	75 10                	jne    ffff8000001085b9 <init_memory+0xd32>
ffff8000001085a9:	48 ba 78 10 00 00 00 	movabs $0x1078,%rdx
ffff8000001085b0:	00 00 00 
ffff8000001085b3:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001085b6:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff8000001085b9:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001085bd:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001085c0:	48 63 d0             	movslq %eax,%rdx
ffff8000001085c3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085ca:	00 00 00 
ffff8000001085cd:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff8000001085d4:	00 
ffff8000001085d5:	48 39 c2             	cmp    %rax,%rdx
ffff8000001085d8:	0f 82 1e ff ff ff    	jb     ffff8000001084fc <init_memory+0xc75>
ffff8000001085de:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085e5:	00 00 00 
ffff8000001085e8:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001085ef:	00 
ffff8000001085f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001085f3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085fa:	00 00 00 
ffff8000001085fd:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000108604:	00 
ffff800000108605:	48 01 d0             	add    %rdx,%rax
ffff800000108608:	48 05 00 01 00 00    	add    $0x100,%rax
ffff80000010860e:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108612:	48 89 c2             	mov    %rax,%rdx
ffff800000108615:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010861c:	00 00 00 
ffff80000010861f:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff800000108626:	00 
ffff800000108627:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010862e:	00 00 00 
ffff800000108631:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff800000108638:	00 
ffff800000108639:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108640:	00 00 00 
ffff800000108643:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff80000010864a:	00 
ffff80000010864b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108652:	00 00 00 
ffff800000108655:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff80000010865c:	00 
ffff80000010865d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108664:	00 00 00 
ffff800000108667:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff80000010866e:	00 
ffff80000010866f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108676:	00 00 00 
ffff800000108679:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108680:	00 
ffff800000108681:	51                   	push   %rcx
ffff800000108682:	52                   	push   %rdx
ffff800000108683:	49 89 f9             	mov    %rdi,%r9
ffff800000108686:	49 89 f0             	mov    %rsi,%r8
ffff800000108689:	48 89 c1             	mov    %rax,%rcx
ffff80000010868c:	48 b8 70 a8 ff ff ff 	movabs $0xffffffffffffa870,%rax
ffff800000108693:	ff ff ff 
ffff800000108696:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010869a:	48 89 c2             	mov    %rax,%rdx
ffff80000010869d:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001086a2:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001086a7:	49 89 df             	mov    %rbx,%r15
ffff8000001086aa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001086af:	49 ba 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r10
ffff8000001086b6:	ff ff ff 
ffff8000001086b9:	49 01 da             	add    %rbx,%r10
ffff8000001086bc:	41 ff d2             	call   *%r10
ffff8000001086bf:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001086c3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086ca:	00 00 00 
ffff8000001086cd:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff8000001086d4:	00 
ffff8000001086d5:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff8000001086dc:	80 00 00 
ffff8000001086df:	48 01 d0             	add    %rdx,%rax
ffff8000001086e2:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001086e6:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff8000001086e9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001086f0:	eb 45                	jmp    ffff800000108737 <init_memory+0xeb0>
ffff8000001086f2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086f9:	00 00 00 
ffff8000001086fc:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108703:	00 
ffff800000108704:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108707:	48 63 d0             	movslq %eax,%rdx
ffff80000010870a:	48 89 d0             	mov    %rdx,%rax
ffff80000010870d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108711:	48 01 d0             	add    %rdx,%rax
ffff800000108714:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108718:	48 01 c8             	add    %rcx,%rax
ffff80000010871b:	be 93 00 00 00       	mov    $0x93,%esi
ffff800000108720:	48 89 c7             	mov    %rax,%rdi
ffff800000108723:	48 b8 c1 87 ff ff ff 	movabs $0xffffffffffff87c1,%rax
ffff80000010872a:	ff ff ff 
ffff80000010872d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108731:	ff d0                	call   *%rax
ffff800000108733:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff800000108737:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010873a:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff80000010873d:	7e b3                	jle    ffff8000001086f2 <init_memory+0xe6b>
ffff80000010873f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108744:	48 ba 98 87 ff ff ff 	movabs $0xffffffffffff8798,%rdx
ffff80000010874b:	ff ff ff 
ffff80000010874e:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000108752:	ff d2                	call   *%rdx
ffff800000108754:	48 ba 80 10 00 00 00 	movabs $0x1080,%rdx
ffff80000010875b:	00 00 00 
ffff80000010875e:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000108762:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108769:	00 00 00 
ffff80000010876c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108770:	48 89 c1             	mov    %rax,%rcx
ffff800000108773:	48 b8 cc a8 ff ff ff 	movabs $0xffffffffffffa8cc,%rax
ffff80000010877a:	ff ff ff 
ffff80000010877d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108781:	48 89 c2             	mov    %rax,%rdx
ffff800000108784:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108789:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff80000010878e:	49 89 df             	mov    %rbx,%r15
ffff800000108791:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108796:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff80000010879d:	ff ff ff 
ffff8000001087a0:	49 01 d8             	add    %rbx,%r8
ffff8000001087a3:	41 ff d0             	call   *%r8
ffff8000001087a6:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff8000001087ad:	00 00 00 
ffff8000001087b0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001087b4:	48 89 c2             	mov    %rax,%rdx
ffff8000001087b7:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001087be:	80 ff ff 
ffff8000001087c1:	48 01 d0             	add    %rdx,%rax
ffff8000001087c4:	48 8b 00             	mov    (%rax),%rax
ffff8000001087c7:	48 89 c1             	mov    %rax,%rcx
ffff8000001087ca:	48 b8 e1 a8 ff ff ff 	movabs $0xffffffffffffa8e1,%rax
ffff8000001087d1:	ff ff ff 
ffff8000001087d4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001087d8:	48 89 c2             	mov    %rax,%rdx
ffff8000001087db:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001087e0:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001087e5:	49 89 df             	mov    %rbx,%r15
ffff8000001087e8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001087ed:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff8000001087f4:	ff ff ff 
ffff8000001087f7:	49 01 d8             	add    %rbx,%r8
ffff8000001087fa:	41 ff d0             	call   *%r8
ffff8000001087fd:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108804:	00 00 00 
ffff800000108807:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010880b:	48 89 c2             	mov    %rax,%rdx
ffff80000010880e:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108815:	80 ff ff 
ffff800000108818:	48 01 d0             	add    %rdx,%rax
ffff80000010881b:	48 8b 00             	mov    (%rax),%rax
ffff80000010881e:	b0 00                	mov    $0x0,%al
ffff800000108820:	48 89 c2             	mov    %rax,%rdx
ffff800000108823:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff80000010882a:	80 ff ff 
ffff80000010882d:	48 01 d0             	add    %rdx,%rax
ffff800000108830:	48 8b 00             	mov    (%rax),%rax
ffff800000108833:	b0 00                	mov    $0x0,%al
ffff800000108835:	48 89 c1             	mov    %rax,%rcx
ffff800000108838:	48 b8 f7 a8 ff ff ff 	movabs $0xffffffffffffa8f7,%rax
ffff80000010883f:	ff ff ff 
ffff800000108842:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108846:	48 89 c2             	mov    %rax,%rdx
ffff800000108849:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010884e:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108853:	49 89 df             	mov    %rbx,%r15
ffff800000108856:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010885b:	49 b8 44 57 ff ff ff 	movabs $0xffffffffffff5744,%r8
ffff800000108862:	ff ff ff 
ffff800000108865:	49 01 d8             	add    %rbx,%r8
ffff800000108868:	41 ff d0             	call   *%r8
ffff80000010886b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108872:	eb 36                	jmp    ffff8000001088aa <init_memory+0x1023>
ffff800000108874:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108877:	48 98                	cltq
ffff800000108879:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000108880:	00 
ffff800000108881:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108888:	00 00 00 
ffff80000010888b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010888f:	48 01 c2             	add    %rax,%rdx
ffff800000108892:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108899:	80 ff ff 
ffff80000010889c:	48 01 d0             	add    %rdx,%rax
ffff80000010889f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001088a6:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001088aa:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff8000001088ae:	7e c4                	jle    ffff800000108874 <init_memory+0xfed>
ffff8000001088b0:	48 b8 0e a9 ff ff ff 	movabs $0xffffffffffffa90e,%rax
ffff8000001088b7:	ff ff ff 
ffff8000001088ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001088be:	48 89 c2             	mov    %rax,%rdx
ffff8000001088c1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001088c6:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001088cb:	49 89 df             	mov    %rbx,%r15
ffff8000001088ce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001088d3:	48 b9 44 57 ff ff ff 	movabs $0xffffffffffff5744,%rcx
ffff8000001088da:	ff ff ff 
ffff8000001088dd:	48 01 d9             	add    %rbx,%rcx
ffff8000001088e0:	ff d1                	call   *%rcx
ffff8000001088e2:	0f 20 d8             	mov    %cr3,%rax
ffff8000001088e5:	0f 22 d8             	mov    %rax,%cr3
ffff8000001088e8:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff8000001088ec:	90                   	nop
ffff8000001088ed:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff8000001088f1:	5b                   	pop    %rbx
ffff8000001088f2:	41 5f                	pop    %r15
ffff8000001088f4:	5d                   	pop    %rbp
ffff8000001088f5:	c3                   	ret
