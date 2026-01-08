
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
ffff800000100161:	e8 8a 44 00 00       	call   ffff8000001045f0 <color_printk>
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
ffff8000001042d5:	48 b8 50 51 ff ff ff 	movabs $0xffffffffffff5150,%rax
ffff8000001042dc:	ff ff ff 
ffff8000001042df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042e3:	ff d0                	call   *%rax
ffff8000001042e5:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042e9:	49 89 df             	mov    %rbx,%r15
ffff8000001042ec:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f1:	48 ba 3b 81 ff ff ff 	movabs $0xffffffffffff813b,%rdx
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
ffff80000010438c:	48 b8 48 9a ff ff ff 	movabs $0xffffffffffff9a48,%rax
ffff800000104393:	ff ff ff 
ffff800000104396:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010439a:	48 89 c2             	mov    %rax,%rdx
ffff80000010439d:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043a2:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043a7:	49 89 df             	mov    %rbx,%r15
ffff8000001043aa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043af:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001043b6:	ff ff ff 
ffff8000001043b9:	48 01 d9             	add    %rbx,%rcx
ffff8000001043bc:	ff d1                	call   *%rcx
ffff8000001043be:	48 b8 59 9a ff ff ff 	movabs $0xffffffffffff9a59,%rax
ffff8000001043c5:	ff ff ff 
ffff8000001043c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043cc:	48 89 c2             	mov    %rax,%rdx
ffff8000001043cf:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043d4:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043d9:	49 89 df             	mov    %rbx,%r15
ffff8000001043dc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043e1:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001043e8:	ff ff ff 
ffff8000001043eb:	48 01 d9             	add    %rbx,%rcx
ffff8000001043ee:	ff d1                	call   *%rcx
ffff8000001043f0:	48 b8 68 9a ff ff ff 	movabs $0xffffffffffff9a68,%rax
ffff8000001043f7:	ff ff ff 
ffff8000001043fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043fe:	48 89 c2             	mov    %rax,%rdx
ffff800000104401:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104406:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010440b:	49 89 df             	mov    %rbx,%r15
ffff80000010440e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104413:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010441a:	ff ff ff 
ffff80000010441d:	48 01 d9             	add    %rbx,%rcx
ffff800000104420:	ff d1                	call   *%rcx
ffff800000104422:	49 89 df             	mov    %rbx,%r15
ffff800000104425:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010442a:	48 ba d3 89 ff ff ff 	movabs $0xffffffffffff89d3,%rdx
ffff800000104431:	ff ff ff 
ffff800000104434:	48 01 da             	add    %rbx,%rdx
ffff800000104437:	ff d2                	call   *%rdx
ffff800000104439:	48 b8 c0 9a ff ff ff 	movabs $0xffffffffffff9ac0,%rax
ffff800000104440:	ff ff ff 
ffff800000104443:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104447:	48 89 c2             	mov    %rax,%rdx
ffff80000010444a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010444f:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104454:	49 89 df             	mov    %rbx,%r15
ffff800000104457:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010445c:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000104463:	ff ff ff 
ffff800000104466:	48 01 d9             	add    %rbx,%rcx
ffff800000104469:	ff d1                	call   *%rcx
ffff80000010446b:	48 b8 f8 9a ff ff ff 	movabs $0xffffffffffff9af8,%rax
ffff800000104472:	ff ff ff 
ffff800000104475:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104479:	48 89 c2             	mov    %rax,%rdx
ffff80000010447c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104481:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104486:	49 89 df             	mov    %rbx,%r15
ffff800000104489:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010448e:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000104495:	ff ff ff 
ffff800000104498:	48 01 d9             	add    %rbx,%rcx
ffff80000010449b:	ff d1                	call   *%rcx
ffff80000010449d:	90                   	nop
ffff80000010449e:	eb fd                	jmp    ffff80000010449d <Start_Kernel+0x343>

ffff8000001044a0 <Cstrlen>:
ffff8000001044a0:	f3 0f 1e fa          	endbr64
ffff8000001044a4:	55                   	push   %rbp
ffff8000001044a5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044a8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044a8 <Cstrlen+0x8>
ffff8000001044af:	49 bb 08 aa 00 00 00 	movabs $0xaa08,%r11
ffff8000001044b6:	00 00 00 
ffff8000001044b9:	4c 01 d8             	add    %r11,%rax
ffff8000001044bc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001044c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001044c8:	eb 05                	jmp    ffff8000001044cf <Cstrlen+0x2f>
ffff8000001044ca:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001044cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001044d3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044d6:	84 c0                	test   %al,%al
ffff8000001044d8:	75 f0                	jne    ffff8000001044ca <Cstrlen+0x2a>
ffff8000001044da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001044de:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff8000001044e2:	5d                   	pop    %rbp
ffff8000001044e3:	c3                   	ret

ffff8000001044e4 <putchar>:
ffff8000001044e4:	f3 0f 1e fa          	endbr64
ffff8000001044e8:	55                   	push   %rbp
ffff8000001044e9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044ec:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044ec <putchar+0x8>
ffff8000001044f3:	49 bb c4 a9 00 00 00 	movabs $0xa9c4,%r11
ffff8000001044fa:	00 00 00 
ffff8000001044fd:	4c 01 d8             	add    %r11,%rax
ffff800000104500:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104504:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104507:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff80000010450a:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff80000010450d:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104511:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff800000104515:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104518:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff80000010451b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104522:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104529:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104530:	00 
ffff800000104531:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104538:	00 
ffff800000104539:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000104540:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff800000104544:	48 63 d2             	movslq %edx,%rdx
ffff800000104547:	48 89 d1             	mov    %rdx,%rcx
ffff80000010454a:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010454e:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff800000104555:	ff ff ff 
ffff800000104558:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff80000010455c:	48 01 c8             	add    %rcx,%rax
ffff80000010455f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104563:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010456a:	eb 7a                	jmp    ffff8000001045e6 <putchar+0x102>
ffff80000010456c:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff80000010456f:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104572:	01 d0                	add    %edx,%eax
ffff800000104574:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff800000104578:	48 63 d0             	movslq %eax,%rdx
ffff80000010457b:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010457e:	48 98                	cltq
ffff800000104580:	48 01 d0             	add    %rdx,%rax
ffff800000104583:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff80000010458a:	00 
ffff80000010458b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010458f:	48 01 d0             	add    %rdx,%rax
ffff800000104592:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104596:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff80000010459d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001045a4:	eb 31                	jmp    ffff8000001045d7 <putchar+0xf3>
ffff8000001045a6:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001045a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001045ad:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045b0:	0f b6 c0             	movzbl %al,%eax
ffff8000001045b3:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff8000001045b6:	85 c0                	test   %eax,%eax
ffff8000001045b8:	74 0b                	je     ffff8000001045c5 <putchar+0xe1>
ffff8000001045ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045be:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff8000001045c1:	89 10                	mov    %edx,(%rax)
ffff8000001045c3:	eb 09                	jmp    ffff8000001045ce <putchar+0xea>
ffff8000001045c5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001045c9:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff8000001045cc:	89 10                	mov    %edx,(%rax)
ffff8000001045ce:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff8000001045d3:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff8000001045d7:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff8000001045db:	7e c9                	jle    ffff8000001045a6 <putchar+0xc2>
ffff8000001045dd:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff8000001045e2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001045e6:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff8000001045ea:	7e 80                	jle    ffff80000010456c <putchar+0x88>
ffff8000001045ec:	90                   	nop
ffff8000001045ed:	90                   	nop
ffff8000001045ee:	5d                   	pop    %rbp
ffff8000001045ef:	c3                   	ret

ffff8000001045f0 <color_printk>:
ffff8000001045f0:	f3 0f 1e fa          	endbr64
ffff8000001045f4:	55                   	push   %rbp
ffff8000001045f5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001045f8:	53                   	push   %rbx
ffff8000001045f9:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104600:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104600 <color_printk+0x10>
ffff800000104607:	49 bb b0 a8 00 00 00 	movabs $0xa8b0,%r11
ffff80000010460e:	00 00 00 
ffff800000104611:	4c 01 db             	add    %r11,%rbx
ffff800000104614:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff80000010461a:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104620:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff800000104627:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff80000010462e:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff800000104635:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff80000010463c:	84 c0                	test   %al,%al
ffff80000010463e:	74 23                	je     ffff800000104663 <color_printk+0x73>
ffff800000104640:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff800000104647:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff80000010464b:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff80000010464f:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff800000104653:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff800000104657:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff80000010465b:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff80000010465f:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff800000104663:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff80000010466a:	00 00 00 
ffff80000010466d:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104674:	00 00 00 
ffff800000104677:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff80000010467e:	00 00 00 
ffff800000104681:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff800000104688:	00 00 00 
ffff80000010468b:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff800000104692:	00 00 00 
ffff800000104695:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104699:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001046a0:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001046a7:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001046ae:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff8000001046b5:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff8000001046bc:	48 89 c6             	mov    %rax,%rsi
ffff8000001046bf:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046c6:	00 00 00 
ffff8000001046c9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046cd:	48 89 c7             	mov    %rax,%rdi
ffff8000001046d0:	48 b8 c0 61 ff ff ff 	movabs $0xffffffffffff61c0,%rax
ffff8000001046d7:	ff ff ff 
ffff8000001046da:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046de:	ff d0                	call   *%rax
ffff8000001046e0:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff8000001046e6:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001046ed:	00 00 00 
ffff8000001046f0:	e9 81 04 00 00       	jmp    ffff800000104b76 <color_printk+0x586>
ffff8000001046f5:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff8000001046fc:	7e 0c                	jle    ffff80000010470a <color_printk+0x11a>
ffff8000001046fe:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104705:	e9 45 02 00 00       	jmp    ffff80000010494f <color_printk+0x35f>
ffff80000010470a:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104710:	48 63 d0             	movslq %eax,%rdx
ffff800000104713:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010471a:	00 00 00 
ffff80000010471d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104721:	48 01 d0             	add    %rdx,%rax
ffff800000104724:	0f b6 00             	movzbl (%rax),%eax
ffff800000104727:	3c 0a                	cmp    $0xa,%al
ffff800000104729:	75 36                	jne    ffff800000104761 <color_printk+0x171>
ffff80000010472b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104732:	00 00 00 
ffff800000104735:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104739:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010473c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104743:	00 00 00 
ffff800000104746:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010474a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104751:	00 00 00 
ffff800000104754:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff80000010475b:	00 
ffff80000010475c:	e9 6a 03 00 00       	jmp    ffff800000104acb <color_printk+0x4db>
ffff800000104761:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104767:	48 63 d0             	movslq %eax,%rdx
ffff80000010476a:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104771:	00 00 00 
ffff800000104774:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104778:	48 01 d0             	add    %rdx,%rax
ffff80000010477b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010477e:	3c 08                	cmp    $0x8,%al
ffff800000104780:	0f 85 78 01 00 00    	jne    ffff8000001048fe <color_printk+0x30e>
ffff800000104786:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010478d:	00 00 00 
ffff800000104790:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104794:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104797:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010479e:	00 00 00 
ffff8000001047a1:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001047a5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047ac:	00 00 00 
ffff8000001047af:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047b3:	85 c0                	test   %eax,%eax
ffff8000001047b5:	0f 89 b2 00 00 00    	jns    ffff80000010486d <color_printk+0x27d>
ffff8000001047bb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047c2:	00 00 00 
ffff8000001047c5:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff8000001047c8:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047cf:	00 00 00 
ffff8000001047d2:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff8000001047d6:	99                   	cltd
ffff8000001047d7:	f7 fe                	idiv   %esi
ffff8000001047d9:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047dc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047e3:	00 00 00 
ffff8000001047e6:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047ea:	0f af c2             	imul   %edx,%eax
ffff8000001047ed:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047f4:	00 00 00 
ffff8000001047f7:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff8000001047fb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104802:	00 00 00 
ffff800000104805:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104809:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010480c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104813:	00 00 00 
ffff800000104816:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff80000010481a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104821:	00 00 00 
ffff800000104824:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104828:	85 c0                	test   %eax,%eax
ffff80000010482a:	79 41                	jns    ffff80000010486d <color_printk+0x27d>
ffff80000010482c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104833:	00 00 00 
ffff800000104836:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010483a:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104841:	00 00 00 
ffff800000104844:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104848:	99                   	cltd
ffff800000104849:	f7 ff                	idiv   %edi
ffff80000010484b:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010484e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104855:	00 00 00 
ffff800000104858:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff80000010485c:	0f af c2             	imul   %edx,%eax
ffff80000010485f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104866:	00 00 00 
ffff800000104869:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff80000010486d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104874:	00 00 00 
ffff800000104877:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010487b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104882:	00 00 00 
ffff800000104885:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104889:	89 d1                	mov    %edx,%ecx
ffff80000010488b:	0f af c8             	imul   %eax,%ecx
ffff80000010488e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104895:	00 00 00 
ffff800000104898:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff80000010489c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a3:	00 00 00 
ffff8000001048a6:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048aa:	0f af d0             	imul   %eax,%edx
ffff8000001048ad:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048b4:	00 00 00 
ffff8000001048b7:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001048ba:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c1:	00 00 00 
ffff8000001048c4:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001048c9:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001048d0:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001048d6:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001048da:	6a 20                	push   $0x20
ffff8000001048dc:	45 89 c1             	mov    %r8d,%r9d
ffff8000001048df:	41 89 f8             	mov    %edi,%r8d
ffff8000001048e2:	48 89 c7             	mov    %rax,%rdi
ffff8000001048e5:	48 b8 34 56 ff ff ff 	movabs $0xffffffffffff5634,%rax
ffff8000001048ec:	ff ff ff 
ffff8000001048ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001048f3:	ff d0                	call   *%rax
ffff8000001048f5:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001048f9:	e9 cd 01 00 00       	jmp    ffff800000104acb <color_printk+0x4db>
ffff8000001048fe:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104904:	48 63 d0             	movslq %eax,%rdx
ffff800000104907:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010490e:	00 00 00 
ffff800000104911:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104915:	48 01 d0             	add    %rdx,%rax
ffff800000104918:	0f b6 00             	movzbl (%rax),%eax
ffff80000010491b:	3c 09                	cmp    $0x9,%al
ffff80000010491d:	0f 85 e3 00 00 00    	jne    ffff800000104a06 <color_printk+0x416>
ffff800000104923:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010492a:	00 00 00 
ffff80000010492d:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104931:	83 c0 08             	add    $0x8,%eax
ffff800000104934:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104937:	89 c2                	mov    %eax,%edx
ffff800000104939:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104940:	00 00 00 
ffff800000104943:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104947:	29 c2                	sub    %eax,%edx
ffff800000104949:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff80000010494f:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff800000104956:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010495d:	00 00 00 
ffff800000104960:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104964:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010496b:	00 00 00 
ffff80000010496e:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104972:	89 d1                	mov    %edx,%ecx
ffff800000104974:	0f af c8             	imul   %eax,%ecx
ffff800000104977:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010497e:	00 00 00 
ffff800000104981:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104985:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010498c:	00 00 00 
ffff80000010498f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104993:	0f af d0             	imul   %eax,%edx
ffff800000104996:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010499d:	00 00 00 
ffff8000001049a0:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049a3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049aa:	00 00 00 
ffff8000001049ad:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049b2:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001049b9:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001049bf:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049c3:	6a 20                	push   $0x20
ffff8000001049c5:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049c8:	41 89 f8             	mov    %edi,%r8d
ffff8000001049cb:	48 89 c7             	mov    %rax,%rdi
ffff8000001049ce:	48 b8 34 56 ff ff ff 	movabs $0xffffffffffff5634,%rax
ffff8000001049d5:	ff ff ff 
ffff8000001049d8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049dc:	ff d0                	call   *%rax
ffff8000001049de:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001049e2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049e9:	00 00 00 
ffff8000001049ec:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001049f0:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001049f3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049fa:	00 00 00 
ffff8000001049fd:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a01:	e9 c5 00 00 00       	jmp    ffff800000104acb <color_printk+0x4db>
ffff800000104a06:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104a0c:	48 63 d0             	movslq %eax,%rdx
ffff800000104a0f:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104a16:	00 00 00 
ffff800000104a19:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a1d:	48 01 d0             	add    %rdx,%rax
ffff800000104a20:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a23:	0f b6 f8             	movzbl %al,%edi
ffff800000104a26:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a2d:	00 00 00 
ffff800000104a30:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104a34:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a3b:	00 00 00 
ffff800000104a3e:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104a42:	89 d1                	mov    %edx,%ecx
ffff800000104a44:	0f af c8             	imul   %eax,%ecx
ffff800000104a47:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a4e:	00 00 00 
ffff800000104a51:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104a55:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a5c:	00 00 00 
ffff800000104a5f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a63:	0f af d0             	imul   %eax,%edx
ffff800000104a66:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a6d:	00 00 00 
ffff800000104a70:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104a73:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a7a:	00 00 00 
ffff800000104a7d:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104a82:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104a89:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104a90:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104a94:	57                   	push   %rdi
ffff800000104a95:	48 89 c7             	mov    %rax,%rdi
ffff800000104a98:	48 b8 34 56 ff ff ff 	movabs $0xffffffffffff5634,%rax
ffff800000104a9f:	ff ff ff 
ffff800000104aa2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104aa6:	ff d0                	call   *%rax
ffff800000104aa8:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104aac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ab3:	00 00 00 
ffff800000104ab6:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104aba:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104abd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ac4:	00 00 00 
ffff800000104ac7:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104acb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ad2:	00 00 00 
ffff800000104ad5:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104ad9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ae0:	00 00 00 
ffff800000104ae3:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104ae6:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104aed:	00 00 00 
ffff800000104af0:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104af4:	99                   	cltd
ffff800000104af5:	f7 fe                	idiv   %esi
ffff800000104af7:	39 c1                	cmp    %eax,%ecx
ffff800000104af9:	7c 31                	jl     ffff800000104b2c <color_printk+0x53c>
ffff800000104afb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b02:	00 00 00 
ffff800000104b05:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104b09:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104b0c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b13:	00 00 00 
ffff800000104b16:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104b1a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b21:	00 00 00 
ffff800000104b24:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104b2b:	00 
ffff800000104b2c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b33:	00 00 00 
ffff800000104b36:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104b3a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b41:	00 00 00 
ffff800000104b44:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b48:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b4f:	00 00 00 
ffff800000104b52:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104b56:	99                   	cltd
ffff800000104b57:	f7 ff                	idiv   %edi
ffff800000104b59:	39 c1                	cmp    %eax,%ecx
ffff800000104b5b:	7c 12                	jl     ffff800000104b6f <color_printk+0x57f>
ffff800000104b5d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b64:	00 00 00 
ffff800000104b67:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104b6e:	00 
ffff800000104b6f:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104b76:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b7c:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104b82:	0f 8c 6d fb ff ff    	jl     ffff8000001046f5 <color_printk+0x105>
ffff800000104b88:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104b8f:	0f 85 60 fb ff ff    	jne    ffff8000001046f5 <color_printk+0x105>
ffff800000104b95:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104b9b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104b9f:	c9                   	leave
ffff800000104ba0:	c3                   	ret

ffff800000104ba1 <clear_screen>:
ffff800000104ba1:	f3 0f 1e fa          	endbr64
ffff800000104ba5:	55                   	push   %rbp
ffff800000104ba6:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ba9:	53                   	push   %rbx
ffff800000104baa:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104bae:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104bae <clear_screen+0xd>
ffff800000104bb5:	49 bb 02 a3 00 00 00 	movabs $0xa302,%r11
ffff800000104bbc:	00 00 00 
ffff800000104bbf:	4c 01 db             	add    %r11,%rbx
ffff800000104bc2:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104bc5:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104bc8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bcf:	00 00 00 
ffff800000104bd2:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104bd5:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bdc:	00 00 00 
ffff800000104bdf:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104be3:	99                   	cltd
ffff800000104be4:	f7 f9                	idiv   %ecx
ffff800000104be6:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104be9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf0:	00 00 00 
ffff800000104bf3:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104bf7:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bfe:	00 00 00 
ffff800000104c01:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104c05:	99                   	cltd
ffff800000104c06:	f7 fe                	idiv   %esi
ffff800000104c08:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104c0b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104c12:	e9 83 00 00 00       	jmp    ffff800000104c9a <clear_screen+0xf9>
ffff800000104c17:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104c1e:	eb 6e                	jmp    ffff800000104c8e <clear_screen+0xed>
ffff800000104c20:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c27:	00 00 00 
ffff800000104c2a:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104c2e:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104c32:	89 c1                	mov    %eax,%ecx
ffff800000104c34:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c3b:	00 00 00 
ffff800000104c3e:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c42:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104c46:	89 c2                	mov    %eax,%edx
ffff800000104c48:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c4f:	00 00 00 
ffff800000104c52:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c55:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c5c:	00 00 00 
ffff800000104c5f:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c64:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104c68:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104c6b:	6a 20                	push   $0x20
ffff800000104c6d:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c70:	41 89 f8             	mov    %edi,%r8d
ffff800000104c73:	48 89 c7             	mov    %rax,%rdi
ffff800000104c76:	48 b8 34 56 ff ff ff 	movabs $0xffffffffffff5634,%rax
ffff800000104c7d:	ff ff ff 
ffff800000104c80:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c84:	ff d0                	call   *%rax
ffff800000104c86:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104c8a:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104c8e:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104c91:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104c94:	7c 8a                	jl     ffff800000104c20 <clear_screen+0x7f>
ffff800000104c96:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104c9a:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104c9d:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104ca0:	0f 8c 71 ff ff ff    	jl     ffff800000104c17 <clear_screen+0x76>
ffff800000104ca6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cad:	00 00 00 
ffff800000104cb0:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104cb7:	00 
ffff800000104cb8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cbf:	00 00 00 
ffff800000104cc2:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104cc9:	00 
ffff800000104cca:	90                   	nop
ffff800000104ccb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104ccf:	c9                   	leave
ffff800000104cd0:	c3                   	ret

ffff800000104cd1 <skip_atoi2>:
ffff800000104cd1:	f3 0f 1e fa          	endbr64
ffff800000104cd5:	55                   	push   %rbp
ffff800000104cd6:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cd9:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cd9 <skip_atoi2+0x8>
ffff800000104ce0:	49 bb d7 a1 00 00 00 	movabs $0xa1d7,%r11
ffff800000104ce7:	00 00 00 
ffff800000104cea:	4c 01 d8             	add    %r11,%rax
ffff800000104ced:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104cf1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104cf8:	eb 39                	jmp    ffff800000104d33 <skip_atoi2+0x62>
ffff800000104cfa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cfe:	48 8b 00             	mov    (%rax),%rax
ffff800000104d01:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d04:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d0b:	48 8b 00             	mov    (%rax),%rax
ffff800000104d0e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d16:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d19:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d1c:	89 d0                	mov    %edx,%eax
ffff800000104d1e:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d21:	01 d0                	add    %edx,%eax
ffff800000104d23:	01 c0                	add    %eax,%eax
ffff800000104d25:	89 c2                	mov    %eax,%edx
ffff800000104d27:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d2b:	83 e8 30             	sub    $0x30,%eax
ffff800000104d2e:	01 d0                	add    %edx,%eax
ffff800000104d30:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d37:	48 8b 00             	mov    (%rax),%rax
ffff800000104d3a:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d3d:	3c 2f                	cmp    $0x2f,%al
ffff800000104d3f:	7e 0e                	jle    ffff800000104d4f <skip_atoi2+0x7e>
ffff800000104d41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d45:	48 8b 00             	mov    (%rax),%rax
ffff800000104d48:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d4b:	3c 39                	cmp    $0x39,%al
ffff800000104d4d:	7e ab                	jle    ffff800000104cfa <skip_atoi2+0x29>
ffff800000104d4f:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d52:	5d                   	pop    %rbp
ffff800000104d53:	c3                   	ret

ffff800000104d54 <skip_atoi>:
ffff800000104d54:	f3 0f 1e fa          	endbr64
ffff800000104d58:	55                   	push   %rbp
ffff800000104d59:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d5c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d5c <skip_atoi+0x8>
ffff800000104d63:	49 bb 54 a1 00 00 00 	movabs $0xa154,%r11
ffff800000104d6a:	00 00 00 
ffff800000104d6d:	4c 01 d8             	add    %r11,%rax
ffff800000104d70:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d74:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104d7b:	eb 2c                	jmp    ffff800000104da9 <skip_atoi+0x55>
ffff800000104d7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d81:	48 8b 00             	mov    (%rax),%rax
ffff800000104d84:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d88:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d8c:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d8f:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d92:	89 d0                	mov    %edx,%eax
ffff800000104d94:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d97:	01 d0                	add    %edx,%eax
ffff800000104d99:	01 c0                	add    %eax,%eax
ffff800000104d9b:	89 c2                	mov    %eax,%edx
ffff800000104d9d:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104da1:	83 e8 30             	sub    $0x30,%eax
ffff800000104da4:	01 d0                	add    %edx,%eax
ffff800000104da6:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104da9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dad:	48 8b 00             	mov    (%rax),%rax
ffff800000104db0:	0f b6 00             	movzbl (%rax),%eax
ffff800000104db3:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104db6:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104dba:	7e 13                	jle    ffff800000104dcf <skip_atoi+0x7b>
ffff800000104dbc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dc0:	48 8b 00             	mov    (%rax),%rax
ffff800000104dc3:	0f b6 00             	movzbl (%rax),%eax
ffff800000104dc6:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104dc9:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104dcd:	7e ae                	jle    ffff800000104d7d <skip_atoi+0x29>
ffff800000104dcf:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104dd2:	5d                   	pop    %rbp
ffff800000104dd3:	c3                   	ret

ffff800000104dd4 <number>:
ffff800000104dd4:	f3 0f 1e fa          	endbr64
ffff800000104dd8:	55                   	push   %rbp
ffff800000104dd9:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ddc:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104ddc <number+0x8>
ffff800000104de3:	49 bb d4 a0 00 00 00 	movabs $0xa0d4,%r11
ffff800000104dea:	00 00 00 
ffff800000104ded:	4c 01 d8             	add    %r11,%rax
ffff800000104df0:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104df4:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104df8:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104dfb:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104dfe:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104e02:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104e06:	48 ba 20 9b ff ff ff 	movabs $0xffffffffffff9b20,%rdx
ffff800000104e0d:	ff ff ff 
ffff800000104e10:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104e14:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104e18:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104e1f:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104e22:	83 e2 40             	and    $0x40,%edx
ffff800000104e25:	85 d2                	test   %edx,%edx
ffff800000104e27:	74 12                	je     ffff800000104e3b <number+0x67>
ffff800000104e29:	48 ba 48 9b ff ff ff 	movabs $0xffffffffffff9b48,%rdx
ffff800000104e30:	ff ff ff 
ffff800000104e33:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104e37:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104e3b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e3e:	83 e0 10             	and    $0x10,%eax
ffff800000104e41:	85 c0                	test   %eax,%eax
ffff800000104e43:	74 04                	je     ffff800000104e49 <number+0x75>
ffff800000104e45:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104e49:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104e4d:	7e 06                	jle    ffff800000104e55 <number+0x81>
ffff800000104e4f:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104e53:	7e 0a                	jle    ffff800000104e5f <number+0x8b>
ffff800000104e55:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104e5a:	e9 0f 02 00 00       	jmp    ffff80000010506e <number+0x29a>
ffff800000104e5f:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e62:	83 e0 01             	and    $0x1,%eax
ffff800000104e65:	85 c0                	test   %eax,%eax
ffff800000104e67:	74 07                	je     ffff800000104e70 <number+0x9c>
ffff800000104e69:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104e6e:	eb 05                	jmp    ffff800000104e75 <number+0xa1>
ffff800000104e70:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104e75:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104e78:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104e7c:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e7f:	83 e0 02             	and    $0x2,%eax
ffff800000104e82:	85 c0                	test   %eax,%eax
ffff800000104e84:	74 11                	je     ffff800000104e97 <number+0xc3>
ffff800000104e86:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e8b:	79 0a                	jns    ffff800000104e97 <number+0xc3>
ffff800000104e8d:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104e91:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104e95:	eb 1d                	jmp    ffff800000104eb4 <number+0xe0>
ffff800000104e97:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e9a:	83 e0 04             	and    $0x4,%eax
ffff800000104e9d:	85 c0                	test   %eax,%eax
ffff800000104e9f:	75 0b                	jne    ffff800000104eac <number+0xd8>
ffff800000104ea1:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ea4:	c1 e0 02             	shl    $0x2,%eax
ffff800000104ea7:	83 e0 20             	and    $0x20,%eax
ffff800000104eaa:	eb 05                	jmp    ffff800000104eb1 <number+0xdd>
ffff800000104eac:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104eb1:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104eb4:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104eb8:	74 04                	je     ffff800000104ebe <number+0xea>
ffff800000104eba:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104ebe:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ec1:	83 e0 20             	and    $0x20,%eax
ffff800000104ec4:	85 c0                	test   %eax,%eax
ffff800000104ec6:	74 16                	je     ffff800000104ede <number+0x10a>
ffff800000104ec8:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104ecc:	75 06                	jne    ffff800000104ed4 <number+0x100>
ffff800000104ece:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104ed2:	eb 0a                	jmp    ffff800000104ede <number+0x10a>
ffff800000104ed4:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104ed8:	75 04                	jne    ffff800000104ede <number+0x10a>
ffff800000104eda:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104ede:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104ee3:	75 4b                	jne    ffff800000104f30 <number+0x15c>
ffff800000104ee5:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ee8:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104eeb:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104eee:	48 98                	cltq
ffff800000104ef0:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104ef5:	eb 40                	jmp    ffff800000104f37 <number+0x163>
ffff800000104ef7:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104efa:	48 63 c8             	movslq %eax,%rcx
ffff800000104efd:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f01:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104f06:	48 f7 f1             	div    %rcx
ffff800000104f09:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f0d:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104f10:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104f13:	48 63 d0             	movslq %eax,%rdx
ffff800000104f16:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f1a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104f1e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f21:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f24:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f27:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f2a:	48 98                	cltq
ffff800000104f2c:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104f30:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f35:	75 c0                	jne    ffff800000104ef7 <number+0x123>
ffff800000104f37:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f3a:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104f3d:	7e 06                	jle    ffff800000104f45 <number+0x171>
ffff800000104f3f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f42:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104f45:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f48:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104f4b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f4e:	83 e0 11             	and    $0x11,%eax
ffff800000104f51:	85 c0                	test   %eax,%eax
ffff800000104f53:	75 1e                	jne    ffff800000104f73 <number+0x19f>
ffff800000104f55:	eb 0f                	jmp    ffff800000104f66 <number+0x192>
ffff800000104f57:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f5b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f5f:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f63:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104f66:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f69:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f6c:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f6f:	85 c0                	test   %eax,%eax
ffff800000104f71:	7f e4                	jg     ffff800000104f57 <number+0x183>
ffff800000104f73:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104f77:	74 12                	je     ffff800000104f8b <number+0x1b7>
ffff800000104f79:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f7d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f81:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f85:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104f89:	88 10                	mov    %dl,(%rax)
ffff800000104f8b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f8e:	83 e0 20             	and    $0x20,%eax
ffff800000104f91:	85 c0                	test   %eax,%eax
ffff800000104f93:	74 45                	je     ffff800000104fda <number+0x206>
ffff800000104f95:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104f99:	75 11                	jne    ffff800000104fac <number+0x1d8>
ffff800000104f9b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f9f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fa3:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fa7:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104faa:	eb 2e                	jmp    ffff800000104fda <number+0x206>
ffff800000104fac:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104fb0:	75 28                	jne    ffff800000104fda <number+0x206>
ffff800000104fb2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fb6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fba:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fbe:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104fc1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104fc5:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104fc9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fcd:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fd1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fd5:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104fd8:	88 10                	mov    %dl,(%rax)
ffff800000104fda:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104fdd:	83 e0 10             	and    $0x10,%eax
ffff800000104fe0:	85 c0                	test   %eax,%eax
ffff800000104fe2:	75 32                	jne    ffff800000105016 <number+0x242>
ffff800000104fe4:	eb 12                	jmp    ffff800000104ff8 <number+0x224>
ffff800000104fe6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fea:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fee:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ff2:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104ff6:	88 10                	mov    %dl,(%rax)
ffff800000104ff8:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104ffb:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ffe:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000105001:	85 c0                	test   %eax,%eax
ffff800000105003:	7f e1                	jg     ffff800000104fe6 <number+0x212>
ffff800000105005:	eb 0f                	jmp    ffff800000105016 <number+0x242>
ffff800000105007:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010500b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010500f:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105013:	c6 00 30             	movb   $0x30,(%rax)
ffff800000105016:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000105019:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010501c:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff80000010501f:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000105022:	7c e3                	jl     ffff800000105007 <number+0x233>
ffff800000105024:	eb 19                	jmp    ffff80000010503f <number+0x26b>
ffff800000105026:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010502a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010502e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105032:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105035:	48 63 d2             	movslq %edx,%rdx
ffff800000105038:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff80000010503d:	88 10                	mov    %dl,(%rax)
ffff80000010503f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105042:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105045:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000105048:	85 c0                	test   %eax,%eax
ffff80000010504a:	7f da                	jg     ffff800000105026 <number+0x252>
ffff80000010504c:	eb 0f                	jmp    ffff80000010505d <number+0x289>
ffff80000010504e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105052:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105056:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010505a:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010505d:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105060:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105063:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000105066:	85 c0                	test   %eax,%eax
ffff800000105068:	7f e4                	jg     ffff80000010504e <number+0x27a>
ffff80000010506a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010506e:	5d                   	pop    %rbp
ffff80000010506f:	c3                   	ret

ffff800000105070 <vsprintf>:
ffff800000105070:	f3 0f 1e fa          	endbr64
ffff800000105074:	55                   	push   %rbp
ffff800000105075:	48 89 e5             	mov    %rsp,%rbp
ffff800000105078:	53                   	push   %rbx
ffff800000105079:	48 83 ec 68          	sub    $0x68,%rsp
ffff80000010507d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010507d <vsprintf+0xd>
ffff800000105084:	49 bb 33 9e 00 00 00 	movabs $0x9e33,%r11
ffff80000010508b:	00 00 00 
ffff80000010508e:	4c 01 db             	add    %r11,%rbx
ffff800000105091:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105095:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105099:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff80000010509d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050a1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001050a5:	e9 f8 08 00 00       	jmp    ffff8000001059a2 <vsprintf+0x932>
ffff8000001050aa:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050ae:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050b1:	3c 25                	cmp    $0x25,%al
ffff8000001050b3:	74 1a                	je     ffff8000001050cf <vsprintf+0x5f>
ffff8000001050b5:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001050b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050bd:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001050c1:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001050c5:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001050c8:	88 10                	mov    %dl,(%rax)
ffff8000001050ca:	e9 c7 08 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001050cf:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff8000001050d6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050da:	48 83 c0 01          	add    $0x1,%rax
ffff8000001050de:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001050e2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050e6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050e9:	0f be c0             	movsbl %al,%eax
ffff8000001050ec:	83 e8 20             	sub    $0x20,%eax
ffff8000001050ef:	83 f8 10             	cmp    $0x10,%eax
ffff8000001050f2:	77 40                	ja     ffff800000105134 <vsprintf+0xc4>
ffff8000001050f4:	89 c0                	mov    %eax,%eax
ffff8000001050f6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff8000001050fd:	00 
ffff8000001050fe:	48 8d 05 1b 39 00 00 	lea    0x391b(%rip),%rax        # ffff800000108a20 <.LC1+0x28>
ffff800000105105:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105109:	48 8d 15 10 39 00 00 	lea    0x3910(%rip),%rdx        # ffff800000108a20 <.LC1+0x28>
ffff800000105110:	48 01 d0             	add    %rdx,%rax
ffff800000105113:	3e ff e0             	notrack jmp *%rax
ffff800000105116:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010511a:	eb ba                	jmp    ffff8000001050d6 <vsprintf+0x66>
ffff80000010511c:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000105120:	eb b4                	jmp    ffff8000001050d6 <vsprintf+0x66>
ffff800000105122:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000105126:	eb ae                	jmp    ffff8000001050d6 <vsprintf+0x66>
ffff800000105128:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff80000010512c:	eb a8                	jmp    ffff8000001050d6 <vsprintf+0x66>
ffff80000010512e:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105132:	eb a2                	jmp    ffff8000001050d6 <vsprintf+0x66>
ffff800000105134:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff80000010513b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010513f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105142:	3c 2f                	cmp    $0x2f,%al
ffff800000105144:	7e 27                	jle    ffff80000010516d <vsprintf+0xfd>
ffff800000105146:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010514a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010514d:	3c 39                	cmp    $0x39,%al
ffff80000010514f:	7f 1c                	jg     ffff80000010516d <vsprintf+0xfd>
ffff800000105151:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105155:	48 89 c7             	mov    %rax,%rdi
ffff800000105158:	48 b8 a4 5e ff ff ff 	movabs $0xffffffffffff5ea4,%rax
ffff80000010515f:	ff ff ff 
ffff800000105162:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105166:	ff d0                	call   *%rax
ffff800000105168:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff80000010516b:	eb 6c                	jmp    ffff8000001051d9 <vsprintf+0x169>
ffff80000010516d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105171:	0f b6 00             	movzbl (%rax),%eax
ffff800000105174:	3c 2a                	cmp    $0x2a,%al
ffff800000105176:	75 61                	jne    ffff8000001051d9 <vsprintf+0x169>
ffff800000105178:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010517c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105180:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105184:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105188:	8b 00                	mov    (%rax),%eax
ffff80000010518a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010518d:	77 24                	ja     ffff8000001051b3 <vsprintf+0x143>
ffff80000010518f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105193:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105197:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010519b:	8b 00                	mov    (%rax),%eax
ffff80000010519d:	89 c0                	mov    %eax,%eax
ffff80000010519f:	48 01 d0             	add    %rdx,%rax
ffff8000001051a2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051a6:	8b 12                	mov    (%rdx),%edx
ffff8000001051a8:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051ab:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051af:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051b1:	eb 14                	jmp    ffff8000001051c7 <vsprintf+0x157>
ffff8000001051b3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051b7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051bb:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051bf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051c3:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051c7:	8b 00                	mov    (%rax),%eax
ffff8000001051c9:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001051cc:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001051d0:	79 07                	jns    ffff8000001051d9 <vsprintf+0x169>
ffff8000001051d2:	f7 5d d8             	negl   -0x28(%rbp)
ffff8000001051d5:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001051d9:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff8000001051e0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051e4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051e7:	3c 2e                	cmp    $0x2e,%al
ffff8000001051e9:	0f 85 aa 00 00 00    	jne    ffff800000105299 <vsprintf+0x229>
ffff8000001051ef:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051f3:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051f7:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051fb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051ff:	0f b6 00             	movzbl (%rax),%eax
ffff800000105202:	3c 2f                	cmp    $0x2f,%al
ffff800000105204:	7e 27                	jle    ffff80000010522d <vsprintf+0x1bd>
ffff800000105206:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010520a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010520d:	3c 39                	cmp    $0x39,%al
ffff80000010520f:	7f 1c                	jg     ffff80000010522d <vsprintf+0x1bd>
ffff800000105211:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105215:	48 89 c7             	mov    %rax,%rdi
ffff800000105218:	48 b8 a4 5e ff ff ff 	movabs $0xffffffffffff5ea4,%rax
ffff80000010521f:	ff ff ff 
ffff800000105222:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105226:	ff d0                	call   *%rax
ffff800000105228:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010522b:	eb 5f                	jmp    ffff80000010528c <vsprintf+0x21c>
ffff80000010522d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105231:	0f b6 00             	movzbl (%rax),%eax
ffff800000105234:	3c 2a                	cmp    $0x2a,%al
ffff800000105236:	75 54                	jne    ffff80000010528c <vsprintf+0x21c>
ffff800000105238:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010523c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105240:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105244:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105248:	8b 00                	mov    (%rax),%eax
ffff80000010524a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010524d:	77 24                	ja     ffff800000105273 <vsprintf+0x203>
ffff80000010524f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105253:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105257:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010525b:	8b 00                	mov    (%rax),%eax
ffff80000010525d:	89 c0                	mov    %eax,%eax
ffff80000010525f:	48 01 d0             	add    %rdx,%rax
ffff800000105262:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105266:	8b 12                	mov    (%rdx),%edx
ffff800000105268:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010526b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010526f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105271:	eb 14                	jmp    ffff800000105287 <vsprintf+0x217>
ffff800000105273:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105277:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010527b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010527f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105283:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105287:	8b 00                	mov    (%rax),%eax
ffff800000105289:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010528c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105290:	79 07                	jns    ffff800000105299 <vsprintf+0x229>
ffff800000105292:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105299:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001052a0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052a4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052a7:	3c 68                	cmp    $0x68,%al
ffff8000001052a9:	74 21                	je     ffff8000001052cc <vsprintf+0x25c>
ffff8000001052ab:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052af:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052b2:	3c 6c                	cmp    $0x6c,%al
ffff8000001052b4:	74 16                	je     ffff8000001052cc <vsprintf+0x25c>
ffff8000001052b6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052ba:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052bd:	3c 4c                	cmp    $0x4c,%al
ffff8000001052bf:	74 0b                	je     ffff8000001052cc <vsprintf+0x25c>
ffff8000001052c1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052c5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052c8:	3c 7a                	cmp    $0x7a,%al
ffff8000001052ca:	75 19                	jne    ffff8000001052e5 <vsprintf+0x275>
ffff8000001052cc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052d0:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052d3:	0f be c0             	movsbl %al,%eax
ffff8000001052d6:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff8000001052d9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052dd:	48 83 c0 01          	add    $0x1,%rax
ffff8000001052e1:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001052e5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052e9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052ec:	0f be c0             	movsbl %al,%eax
ffff8000001052ef:	83 e8 25             	sub    $0x25,%eax
ffff8000001052f2:	83 f8 53             	cmp    $0x53,%eax
ffff8000001052f5:	0f 87 5d 06 00 00    	ja     ffff800000105958 <vsprintf+0x8e8>
ffff8000001052fb:	89 c0                	mov    %eax,%eax
ffff8000001052fd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105304:	00 
ffff800000105305:	48 8d 05 9c 37 00 00 	lea    0x379c(%rip),%rax        # ffff800000108aa8 <.LC1+0xb0>
ffff80000010530c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105310:	48 8d 15 91 37 00 00 	lea    0x3791(%rip),%rdx        # ffff800000108aa8 <.LC1+0xb0>
ffff800000105317:	48 01 d0             	add    %rdx,%rax
ffff80000010531a:	3e ff e0             	notrack jmp *%rax
ffff80000010531d:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105320:	83 e0 10             	and    $0x10,%eax
ffff800000105323:	85 c0                	test   %eax,%eax
ffff800000105325:	75 1b                	jne    ffff800000105342 <vsprintf+0x2d2>
ffff800000105327:	eb 0f                	jmp    ffff800000105338 <vsprintf+0x2c8>
ffff800000105329:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010532d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105331:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105335:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105338:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff80000010533c:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105340:	7f e7                	jg     ffff800000105329 <vsprintf+0x2b9>
ffff800000105342:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105346:	8b 00                	mov    (%rax),%eax
ffff800000105348:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010534b:	77 24                	ja     ffff800000105371 <vsprintf+0x301>
ffff80000010534d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105351:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105355:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105359:	8b 00                	mov    (%rax),%eax
ffff80000010535b:	89 c0                	mov    %eax,%eax
ffff80000010535d:	48 01 d0             	add    %rdx,%rax
ffff800000105360:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105364:	8b 12                	mov    (%rdx),%edx
ffff800000105366:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105369:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010536d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010536f:	eb 14                	jmp    ffff800000105385 <vsprintf+0x315>
ffff800000105371:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105375:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105379:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010537d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105381:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105385:	8b 08                	mov    (%rax),%ecx
ffff800000105387:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010538b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010538f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105393:	89 ca                	mov    %ecx,%edx
ffff800000105395:	88 10                	mov    %dl,(%rax)
ffff800000105397:	eb 0f                	jmp    ffff8000001053a8 <vsprintf+0x338>
ffff800000105399:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010539d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053a1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053a5:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053a8:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001053ac:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001053b0:	7f e7                	jg     ffff800000105399 <vsprintf+0x329>
ffff8000001053b2:	e9 df 05 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001053b7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053bb:	8b 00                	mov    (%rax),%eax
ffff8000001053bd:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001053c0:	77 24                	ja     ffff8000001053e6 <vsprintf+0x376>
ffff8000001053c2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053c6:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053ca:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053ce:	8b 00                	mov    (%rax),%eax
ffff8000001053d0:	89 c0                	mov    %eax,%eax
ffff8000001053d2:	48 01 d0             	add    %rdx,%rax
ffff8000001053d5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053d9:	8b 12                	mov    (%rdx),%edx
ffff8000001053db:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001053de:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053e2:	89 0a                	mov    %ecx,(%rdx)
ffff8000001053e4:	eb 14                	jmp    ffff8000001053fa <vsprintf+0x38a>
ffff8000001053e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053ea:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053ee:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053f2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053f6:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053fa:	48 8b 00             	mov    (%rax),%rax
ffff8000001053fd:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105401:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105406:	75 08                	jne    ffff800000105410 <vsprintf+0x3a0>
ffff800000105408:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010540f:	00 
ffff800000105410:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105414:	48 89 c7             	mov    %rax,%rdi
ffff800000105417:	48 b8 f0 55 ff ff ff 	movabs $0xffffffffffff55f0,%rax
ffff80000010541e:	ff ff ff 
ffff800000105421:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105425:	ff d0                	call   *%rax
ffff800000105427:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff80000010542a:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010542e:	79 08                	jns    ffff800000105438 <vsprintf+0x3c8>
ffff800000105430:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105433:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105436:	eb 0e                	jmp    ffff800000105446 <vsprintf+0x3d6>
ffff800000105438:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010543b:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff80000010543e:	7e 06                	jle    ffff800000105446 <vsprintf+0x3d6>
ffff800000105440:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000105443:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105446:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105449:	83 e0 10             	and    $0x10,%eax
ffff80000010544c:	85 c0                	test   %eax,%eax
ffff80000010544e:	75 1f                	jne    ffff80000010546f <vsprintf+0x3ff>
ffff800000105450:	eb 0f                	jmp    ffff800000105461 <vsprintf+0x3f1>
ffff800000105452:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105456:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010545a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010545e:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105461:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105464:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105467:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010546a:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff80000010546d:	7c e3                	jl     ffff800000105452 <vsprintf+0x3e2>
ffff80000010546f:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff800000105476:	eb 21                	jmp    ffff800000105499 <vsprintf+0x429>
ffff800000105478:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010547c:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000105480:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105484:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105488:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010548c:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105490:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105493:	88 10                	mov    %dl,(%rax)
ffff800000105495:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105499:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff80000010549c:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff80000010549f:	7c d7                	jl     ffff800000105478 <vsprintf+0x408>
ffff8000001054a1:	eb 0f                	jmp    ffff8000001054b2 <vsprintf+0x442>
ffff8000001054a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054a7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001054ab:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054af:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001054b2:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001054b5:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001054b8:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001054bb:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001054be:	7c e3                	jl     ffff8000001054a3 <vsprintf+0x433>
ffff8000001054c0:	e9 d1 04 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001054c5:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001054c9:	0f 85 82 00 00 00    	jne    ffff800000105551 <vsprintf+0x4e1>
ffff8000001054cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d3:	8b 00                	mov    (%rax),%eax
ffff8000001054d5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054d8:	77 24                	ja     ffff8000001054fe <vsprintf+0x48e>
ffff8000001054da:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054de:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054e6:	8b 00                	mov    (%rax),%eax
ffff8000001054e8:	89 c0                	mov    %eax,%eax
ffff8000001054ea:	48 01 d0             	add    %rdx,%rax
ffff8000001054ed:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f1:	8b 12                	mov    (%rdx),%edx
ffff8000001054f3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054f6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054fa:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054fc:	eb 14                	jmp    ffff800000105512 <vsprintf+0x4a2>
ffff8000001054fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105502:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105506:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010550a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010550e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105512:	48 8b 00             	mov    (%rax),%rax
ffff800000105515:	48 89 c7             	mov    %rax,%rdi
ffff800000105518:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010551b:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010551e:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105521:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105525:	41 89 f1             	mov    %esi,%r9d
ffff800000105528:	41 89 c8             	mov    %ecx,%r8d
ffff80000010552b:	89 d1                	mov    %edx,%ecx
ffff80000010552d:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105532:	48 89 fe             	mov    %rdi,%rsi
ffff800000105535:	48 89 c7             	mov    %rax,%rdi
ffff800000105538:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff80000010553f:	ff ff ff 
ffff800000105542:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105546:	ff d0                	call   *%rax
ffff800000105548:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010554c:	e9 45 04 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105551:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105555:	8b 00                	mov    (%rax),%eax
ffff800000105557:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010555a:	77 24                	ja     ffff800000105580 <vsprintf+0x510>
ffff80000010555c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105560:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105564:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105568:	8b 00                	mov    (%rax),%eax
ffff80000010556a:	89 c0                	mov    %eax,%eax
ffff80000010556c:	48 01 d0             	add    %rdx,%rax
ffff80000010556f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105573:	8b 12                	mov    (%rdx),%edx
ffff800000105575:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105578:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010557c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010557e:	eb 14                	jmp    ffff800000105594 <vsprintf+0x524>
ffff800000105580:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105584:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105588:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010558c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105590:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105594:	8b 00                	mov    (%rax),%eax
ffff800000105596:	89 c7                	mov    %eax,%edi
ffff800000105598:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010559b:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010559e:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055a5:	41 89 f1             	mov    %esi,%r9d
ffff8000001055a8:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055ab:	89 d1                	mov    %edx,%ecx
ffff8000001055ad:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001055b2:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055b5:	48 89 c7             	mov    %rax,%rdi
ffff8000001055b8:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff8000001055bf:	ff ff ff 
ffff8000001055c2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055c6:	ff d0                	call   *%rax
ffff8000001055c8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055cc:	e9 c5 03 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001055d1:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff8000001055d5:	75 0b                	jne    ffff8000001055e2 <vsprintf+0x572>
ffff8000001055d7:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff8000001055de:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001055e2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055e6:	8b 00                	mov    (%rax),%eax
ffff8000001055e8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055eb:	77 24                	ja     ffff800000105611 <vsprintf+0x5a1>
ffff8000001055ed:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055f5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f9:	8b 00                	mov    (%rax),%eax
ffff8000001055fb:	89 c0                	mov    %eax,%eax
ffff8000001055fd:	48 01 d0             	add    %rdx,%rax
ffff800000105600:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105604:	8b 12                	mov    (%rdx),%edx
ffff800000105606:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105609:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010560d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010560f:	eb 14                	jmp    ffff800000105625 <vsprintf+0x5b5>
ffff800000105611:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105615:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105619:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010561d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105621:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105625:	48 8b 00             	mov    (%rax),%rax
ffff800000105628:	48 89 c7             	mov    %rax,%rdi
ffff80000010562b:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010562e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105631:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105634:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105638:	41 89 f1             	mov    %esi,%r9d
ffff80000010563b:	41 89 c8             	mov    %ecx,%r8d
ffff80000010563e:	89 d1                	mov    %edx,%ecx
ffff800000105640:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105645:	48 89 fe             	mov    %rdi,%rsi
ffff800000105648:	48 89 c7             	mov    %rax,%rdi
ffff80000010564b:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff800000105652:	ff ff ff 
ffff800000105655:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105659:	ff d0                	call   *%rax
ffff80000010565b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010565f:	e9 32 03 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105664:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff800000105668:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010566c:	0f 85 82 00 00 00    	jne    ffff8000001056f4 <vsprintf+0x684>
ffff800000105672:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105676:	8b 00                	mov    (%rax),%eax
ffff800000105678:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010567b:	77 24                	ja     ffff8000001056a1 <vsprintf+0x631>
ffff80000010567d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105681:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105685:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105689:	8b 00                	mov    (%rax),%eax
ffff80000010568b:	89 c0                	mov    %eax,%eax
ffff80000010568d:	48 01 d0             	add    %rdx,%rax
ffff800000105690:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105694:	8b 12                	mov    (%rdx),%edx
ffff800000105696:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105699:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010569d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010569f:	eb 14                	jmp    ffff8000001056b5 <vsprintf+0x645>
ffff8000001056a1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056a5:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056a9:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056ad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056b1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056b5:	48 8b 00             	mov    (%rax),%rax
ffff8000001056b8:	48 89 c7             	mov    %rax,%rdi
ffff8000001056bb:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001056be:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001056c1:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001056c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056c8:	41 89 f1             	mov    %esi,%r9d
ffff8000001056cb:	41 89 c8             	mov    %ecx,%r8d
ffff8000001056ce:	89 d1                	mov    %edx,%ecx
ffff8000001056d0:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056d5:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056d8:	48 89 c7             	mov    %rax,%rdi
ffff8000001056db:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff8000001056e2:	ff ff ff 
ffff8000001056e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056e9:	ff d0                	call   *%rax
ffff8000001056eb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056ef:	e9 a2 02 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001056f4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056f8:	8b 00                	mov    (%rax),%eax
ffff8000001056fa:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056fd:	77 24                	ja     ffff800000105723 <vsprintf+0x6b3>
ffff8000001056ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105703:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105707:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010570b:	8b 00                	mov    (%rax),%eax
ffff80000010570d:	89 c0                	mov    %eax,%eax
ffff80000010570f:	48 01 d0             	add    %rdx,%rax
ffff800000105712:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105716:	8b 12                	mov    (%rdx),%edx
ffff800000105718:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010571b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010571f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105721:	eb 14                	jmp    ffff800000105737 <vsprintf+0x6c7>
ffff800000105723:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105727:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010572b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010572f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105733:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105737:	8b 00                	mov    (%rax),%eax
ffff800000105739:	89 c7                	mov    %eax,%edi
ffff80000010573b:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010573e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105741:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105744:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105748:	41 89 f1             	mov    %esi,%r9d
ffff80000010574b:	41 89 c8             	mov    %ecx,%r8d
ffff80000010574e:	89 d1                	mov    %edx,%ecx
ffff800000105750:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105755:	48 89 fe             	mov    %rdi,%rsi
ffff800000105758:	48 89 c7             	mov    %rax,%rdi
ffff80000010575b:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff800000105762:	ff ff ff 
ffff800000105765:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105769:	ff d0                	call   *%rax
ffff80000010576b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010576f:	e9 22 02 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105774:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff800000105778:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010577c:	0f 85 82 00 00 00    	jne    ffff800000105804 <vsprintf+0x794>
ffff800000105782:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105786:	8b 00                	mov    (%rax),%eax
ffff800000105788:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010578b:	77 24                	ja     ffff8000001057b1 <vsprintf+0x741>
ffff80000010578d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105791:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105795:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105799:	8b 00                	mov    (%rax),%eax
ffff80000010579b:	89 c0                	mov    %eax,%eax
ffff80000010579d:	48 01 d0             	add    %rdx,%rax
ffff8000001057a0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057a4:	8b 12                	mov    (%rdx),%edx
ffff8000001057a6:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057a9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057ad:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057af:	eb 14                	jmp    ffff8000001057c5 <vsprintf+0x755>
ffff8000001057b1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057b5:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001057b9:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001057bd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057c1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001057c5:	48 8b 00             	mov    (%rax),%rax
ffff8000001057c8:	48 89 c7             	mov    %rax,%rdi
ffff8000001057cb:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057ce:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057d1:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057d8:	41 89 f1             	mov    %esi,%r9d
ffff8000001057db:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057de:	89 d1                	mov    %edx,%ecx
ffff8000001057e0:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057e5:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057e8:	48 89 c7             	mov    %rax,%rdi
ffff8000001057eb:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff8000001057f2:	ff ff ff 
ffff8000001057f5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057f9:	ff d0                	call   *%rax
ffff8000001057fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057ff:	e9 92 01 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105804:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105808:	8b 00                	mov    (%rax),%eax
ffff80000010580a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010580d:	77 24                	ja     ffff800000105833 <vsprintf+0x7c3>
ffff80000010580f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105813:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105817:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010581b:	8b 00                	mov    (%rax),%eax
ffff80000010581d:	89 c0                	mov    %eax,%eax
ffff80000010581f:	48 01 d0             	add    %rdx,%rax
ffff800000105822:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105826:	8b 12                	mov    (%rdx),%edx
ffff800000105828:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010582b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010582f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105831:	eb 14                	jmp    ffff800000105847 <vsprintf+0x7d7>
ffff800000105833:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105837:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010583b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010583f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105843:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105847:	8b 00                	mov    (%rax),%eax
ffff800000105849:	89 c7                	mov    %eax,%edi
ffff80000010584b:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010584e:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105851:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105858:	41 89 f1             	mov    %esi,%r9d
ffff80000010585b:	41 89 c8             	mov    %ecx,%r8d
ffff80000010585e:	89 d1                	mov    %edx,%ecx
ffff800000105860:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105865:	48 89 fe             	mov    %rdi,%rsi
ffff800000105868:	48 89 c7             	mov    %rax,%rdi
ffff80000010586b:	48 b8 24 5f ff ff ff 	movabs $0xffffffffffff5f24,%rax
ffff800000105872:	ff ff ff 
ffff800000105875:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105879:	ff d0                	call   *%rax
ffff80000010587b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010587f:	e9 12 01 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105884:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105888:	75 61                	jne    ffff8000001058eb <vsprintf+0x87b>
ffff80000010588a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010588e:	8b 00                	mov    (%rax),%eax
ffff800000105890:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105893:	77 24                	ja     ffff8000001058b9 <vsprintf+0x849>
ffff800000105895:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105899:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010589d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058a1:	8b 00                	mov    (%rax),%eax
ffff8000001058a3:	89 c0                	mov    %eax,%eax
ffff8000001058a5:	48 01 d0             	add    %rdx,%rax
ffff8000001058a8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058ac:	8b 12                	mov    (%rdx),%edx
ffff8000001058ae:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001058b1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058b5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001058b7:	eb 14                	jmp    ffff8000001058cd <vsprintf+0x85d>
ffff8000001058b9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058bd:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058c1:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058c5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058c9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058cd:	48 8b 00             	mov    (%rax),%rax
ffff8000001058d0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001058d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058d8:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001058dc:	48 89 c2             	mov    %rax,%rdx
ffff8000001058df:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001058e3:	48 89 10             	mov    %rdx,(%rax)
ffff8000001058e6:	e9 ab 00 00 00       	jmp    ffff800000105996 <vsprintf+0x926>
ffff8000001058eb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058ef:	8b 00                	mov    (%rax),%eax
ffff8000001058f1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001058f4:	77 24                	ja     ffff80000010591a <vsprintf+0x8aa>
ffff8000001058f6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058fa:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001058fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105902:	8b 00                	mov    (%rax),%eax
ffff800000105904:	89 c0                	mov    %eax,%eax
ffff800000105906:	48 01 d0             	add    %rdx,%rax
ffff800000105909:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010590d:	8b 12                	mov    (%rdx),%edx
ffff80000010590f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105912:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105916:	89 0a                	mov    %ecx,(%rdx)
ffff800000105918:	eb 14                	jmp    ffff80000010592e <vsprintf+0x8be>
ffff80000010591a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010591e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105922:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105926:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010592a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010592e:	48 8b 00             	mov    (%rax),%rax
ffff800000105931:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105935:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105939:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010593d:	89 c2                	mov    %eax,%edx
ffff80000010593f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105943:	89 10                	mov    %edx,(%rax)
ffff800000105945:	eb 4f                	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105947:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010594b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010594f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105953:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105956:	eb 3e                	jmp    ffff800000105996 <vsprintf+0x926>
ffff800000105958:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010595c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105960:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105964:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105967:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010596b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010596e:	84 c0                	test   %al,%al
ffff800000105970:	74 17                	je     ffff800000105989 <vsprintf+0x919>
ffff800000105972:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105976:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010597a:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010597e:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105982:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105985:	88 10                	mov    %dl,(%rax)
ffff800000105987:	eb 0c                	jmp    ffff800000105995 <vsprintf+0x925>
ffff800000105989:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010598d:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105991:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105995:	90                   	nop
ffff800000105996:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010599a:	48 83 c0 01          	add    $0x1,%rax
ffff80000010599e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059a2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059a6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001059a9:	84 c0                	test   %al,%al
ffff8000001059ab:	0f 85 f9 f6 ff ff    	jne    ffff8000001050aa <vsprintf+0x3a>
ffff8000001059b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059b5:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001059b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059bc:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001059c0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001059c4:	c9                   	leave
ffff8000001059c5:	c3                   	ret

ffff8000001059c6 <set_intr_gate>:
ffff8000001059c6:	f3 0f 1e fa          	endbr64
ffff8000001059ca:	55                   	push   %rbp
ffff8000001059cb:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059ce:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059ce <set_intr_gate+0x8>
ffff8000001059d5:	49 bb e2 94 00 00 00 	movabs $0x94e2,%r11
ffff8000001059dc:	00 00 00 
ffff8000001059df:	4c 01 d8             	add    %r11,%rax
ffff8000001059e2:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff8000001059e5:	89 f1                	mov    %esi,%ecx
ffff8000001059e7:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001059eb:	89 ca                	mov    %ecx,%edx
ffff8000001059ed:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff8000001059f0:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001059f3:	48 89 d1             	mov    %rdx,%rcx
ffff8000001059f6:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001059fa:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a01:	ff ff ff 
ffff800000105a04:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a08:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a0c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a0f:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a13:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a17:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a1e:	ff ff ff 
ffff800000105a21:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a25:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a29:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a2d:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a33:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a37:	44 89 c0             	mov    %r8d,%eax
ffff800000105a3a:	66 89 d0             	mov    %dx,%ax
ffff800000105a3d:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a41:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105a48:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a4c:	48 01 c8             	add    %rcx,%rax
ffff800000105a4f:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a52:	89 d1                	mov    %edx,%ecx
ffff800000105a54:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a58:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a5c:	48 01 c8             	add    %rcx,%rax
ffff800000105a5f:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a62:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a66:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a69:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a6d:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a71:	90                   	nop
ffff800000105a72:	5d                   	pop    %rbp
ffff800000105a73:	c3                   	ret

ffff800000105a74 <set_trap_gate>:
ffff800000105a74:	f3 0f 1e fa          	endbr64
ffff800000105a78:	55                   	push   %rbp
ffff800000105a79:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a7c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a7c <set_trap_gate+0x8>
ffff800000105a83:	49 bb 34 94 00 00 00 	movabs $0x9434,%r11
ffff800000105a8a:	00 00 00 
ffff800000105a8d:	4c 01 d8             	add    %r11,%rax
ffff800000105a90:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a93:	89 f1                	mov    %esi,%ecx
ffff800000105a95:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a99:	89 ca                	mov    %ecx,%edx
ffff800000105a9b:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a9e:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105aa1:	48 89 d1             	mov    %rdx,%rcx
ffff800000105aa4:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105aa8:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105aaf:	ff ff ff 
ffff800000105ab2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ab6:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105aba:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105abd:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105ac1:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105ac5:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105acc:	ff ff ff 
ffff800000105acf:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ad3:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105ad7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105adb:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105ae1:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105ae5:	44 89 c0             	mov    %r8d,%eax
ffff800000105ae8:	66 89 d0             	mov    %dx,%ax
ffff800000105aeb:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105aef:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105af6:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105afa:	48 01 c8             	add    %rcx,%rax
ffff800000105afd:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b00:	89 d1                	mov    %edx,%ecx
ffff800000105b02:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b06:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b0a:	48 01 c8             	add    %rcx,%rax
ffff800000105b0d:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b10:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b14:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b17:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b1b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b1f:	90                   	nop
ffff800000105b20:	5d                   	pop    %rbp
ffff800000105b21:	c3                   	ret

ffff800000105b22 <set_system_gate>:
ffff800000105b22:	f3 0f 1e fa          	endbr64
ffff800000105b26:	55                   	push   %rbp
ffff800000105b27:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b2a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b2a <set_system_gate+0x8>
ffff800000105b31:	49 bb 86 93 00 00 00 	movabs $0x9386,%r11
ffff800000105b38:	00 00 00 
ffff800000105b3b:	4c 01 d8             	add    %r11,%rax
ffff800000105b3e:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105b41:	89 f1                	mov    %esi,%ecx
ffff800000105b43:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105b47:	89 ca                	mov    %ecx,%edx
ffff800000105b49:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105b4c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b4f:	48 89 d1             	mov    %rdx,%rcx
ffff800000105b52:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105b56:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b5d:	ff ff ff 
ffff800000105b60:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b64:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105b68:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b6b:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105b6f:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105b73:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b7a:	ff ff ff 
ffff800000105b7d:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105b81:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105b85:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105b89:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105b8f:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105b93:	44 89 c0             	mov    %r8d,%eax
ffff800000105b96:	66 89 d0             	mov    %dx,%ax
ffff800000105b99:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105b9d:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105ba4:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105ba8:	48 01 c8             	add    %rcx,%rax
ffff800000105bab:	48 31 c9             	xor    %rcx,%rcx
ffff800000105bae:	89 d1                	mov    %edx,%ecx
ffff800000105bb0:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105bb4:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105bb8:	48 01 c8             	add    %rcx,%rax
ffff800000105bbb:	48 89 06             	mov    %rax,(%rsi)
ffff800000105bbe:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105bc2:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105bc5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105bc9:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105bcd:	90                   	nop
ffff800000105bce:	5d                   	pop    %rbp
ffff800000105bcf:	c3                   	ret
ffff800000105bd0:	f3 0f 1e fa          	endbr64
ffff800000105bd4:	55                   	push   %rbp
ffff800000105bd5:	48 89 e5             	mov    %rsp,%rbp
ffff800000105bd8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105bd8 <set_system_gate+0xb6>
ffff800000105bdf:	49 bb d8 92 00 00 00 	movabs $0x92d8,%r11
ffff800000105be6:	00 00 00 
ffff800000105be9:	4c 01 d8             	add    %r11,%rax
ffff800000105bec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105bf0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105bf4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bf8:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105bfc:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105c00:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105c04:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c0b:	ff ff ff 
ffff800000105c0e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c12:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105c16:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105c1a:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c1d:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c24:	ff ff ff 
ffff800000105c27:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c2b:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105c2f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105c33:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c36:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c3d:	ff ff ff 
ffff800000105c40:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c44:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105c48:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105c4c:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c4f:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c56:	ff ff ff 
ffff800000105c59:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c5d:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105c61:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105c65:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c68:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c6f:	ff ff ff 
ffff800000105c72:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c76:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105c7a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105c7e:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c81:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c88:	ff ff ff 
ffff800000105c8b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c8f:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105c93:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105c97:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c9a:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ca1:	ff ff ff 
ffff800000105ca4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ca8:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105cac:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105cb0:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cb3:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cba:	ff ff ff 
ffff800000105cbd:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cc1:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105cc5:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105cc9:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ccc:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cd3:	ff ff ff 
ffff800000105cd6:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cda:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105cde:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105ce2:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ce5:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cec:	ff ff ff 
ffff800000105cef:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105cf3:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105cf7:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105cfb:	48 89 10             	mov    %rdx,(%rax)
ffff800000105cfe:	90                   	nop
ffff800000105cff:	5d                   	pop    %rbp
ffff800000105d00:	c3                   	ret

ffff800000105d01 <do_divide_error>:
ffff800000105d01:	f3 0f 1e fa          	endbr64
ffff800000105d05:	55                   	push   %rbp
ffff800000105d06:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d09:	41 57                	push   %r15
ffff800000105d0b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d0f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d0f <do_divide_error+0xe>
ffff800000105d16:	49 bb a1 91 00 00 00 	movabs $0x91a1,%r11
ffff800000105d1d:	00 00 00 
ffff800000105d20:	4d 01 da             	add    %r11,%r10
ffff800000105d23:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d27:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d2b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d32:	00 
ffff800000105d33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d37:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d3d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d45:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d48:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d4c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d50:	49 89 c9             	mov    %rcx,%r9
ffff800000105d53:	49 89 d0             	mov    %rdx,%r8
ffff800000105d56:	48 89 c1             	mov    %rax,%rcx
ffff800000105d59:	48 b8 98 9e ff ff ff 	movabs $0xffffffffffff9e98,%rax
ffff800000105d60:	ff ff ff 
ffff800000105d63:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d67:	48 89 c2             	mov    %rax,%rdx
ffff800000105d6a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d6f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d74:	4d 89 d7             	mov    %r10,%r15
ffff800000105d77:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d7c:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000105d83:	ff ff ff 
ffff800000105d86:	4d 01 d3             	add    %r10,%r11
ffff800000105d89:	41 ff d3             	call   *%r11
ffff800000105d8c:	90                   	nop
ffff800000105d8d:	eb fd                	jmp    ffff800000105d8c <do_divide_error+0x8b>

ffff800000105d8f <do_debug>:
ffff800000105d8f:	f3 0f 1e fa          	endbr64
ffff800000105d93:	55                   	push   %rbp
ffff800000105d94:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d97:	41 57                	push   %r15
ffff800000105d99:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d9d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d9d <do_debug+0xe>
ffff800000105da4:	49 bb 13 91 00 00 00 	movabs $0x9113,%r11
ffff800000105dab:	00 00 00 
ffff800000105dae:	4d 01 da             	add    %r11,%r10
ffff800000105db1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105db5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105db9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105dc0:	00 
ffff800000105dc1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105dc5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105dcb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105dcf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105dd3:	48 8b 08             	mov    (%rax),%rcx
ffff800000105dd6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105dda:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dde:	49 89 c9             	mov    %rcx,%r9
ffff800000105de1:	49 89 d0             	mov    %rdx,%r8
ffff800000105de4:	48 89 c1             	mov    %rax,%rcx
ffff800000105de7:	48 b8 d8 9e ff ff ff 	movabs $0xffffffffffff9ed8,%rax
ffff800000105dee:	ff ff ff 
ffff800000105df1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105df5:	48 89 c2             	mov    %rax,%rdx
ffff800000105df8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105dfd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e02:	4d 89 d7             	mov    %r10,%r15
ffff800000105e05:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e0a:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000105e11:	ff ff ff 
ffff800000105e14:	4d 01 d3             	add    %r10,%r11
ffff800000105e17:	41 ff d3             	call   *%r11
ffff800000105e1a:	90                   	nop
ffff800000105e1b:	eb fd                	jmp    ffff800000105e1a <do_debug+0x8b>

ffff800000105e1d <do_nmi>:
ffff800000105e1d:	f3 0f 1e fa          	endbr64
ffff800000105e21:	55                   	push   %rbp
ffff800000105e22:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e25:	41 57                	push   %r15
ffff800000105e27:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e2b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e2b <do_nmi+0xe>
ffff800000105e32:	49 bb 85 90 00 00 00 	movabs $0x9085,%r11
ffff800000105e39:	00 00 00 
ffff800000105e3c:	4d 01 da             	add    %r11,%r10
ffff800000105e3f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e43:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e47:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e4e:	00 
ffff800000105e4f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e53:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e59:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e61:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e64:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e68:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e6c:	49 89 c9             	mov    %rcx,%r9
ffff800000105e6f:	49 89 d0             	mov    %rdx,%r8
ffff800000105e72:	48 89 c1             	mov    %rax,%rcx
ffff800000105e75:	48 b8 10 9f ff ff ff 	movabs $0xffffffffffff9f10,%rax
ffff800000105e7c:	ff ff ff 
ffff800000105e7f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e83:	48 89 c2             	mov    %rax,%rdx
ffff800000105e86:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e8b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e90:	4d 89 d7             	mov    %r10,%r15
ffff800000105e93:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e98:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000105e9f:	ff ff ff 
ffff800000105ea2:	4d 01 d3             	add    %r10,%r11
ffff800000105ea5:	41 ff d3             	call   *%r11
ffff800000105ea8:	90                   	nop
ffff800000105ea9:	eb fd                	jmp    ffff800000105ea8 <do_nmi+0x8b>

ffff800000105eab <do_int3>:
ffff800000105eab:	f3 0f 1e fa          	endbr64
ffff800000105eaf:	55                   	push   %rbp
ffff800000105eb0:	48 89 e5             	mov    %rsp,%rbp
ffff800000105eb3:	41 57                	push   %r15
ffff800000105eb5:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105eb9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105eb9 <do_int3+0xe>
ffff800000105ec0:	49 bb f7 8f 00 00 00 	movabs $0x8ff7,%r11
ffff800000105ec7:	00 00 00 
ffff800000105eca:	4d 01 da             	add    %r11,%r10
ffff800000105ecd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ed1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ed5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105edc:	00 
ffff800000105edd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ee1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ee7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105eeb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105eef:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ef2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ef6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105efa:	49 89 c9             	mov    %rcx,%r9
ffff800000105efd:	49 89 d0             	mov    %rdx,%r8
ffff800000105f00:	48 89 c1             	mov    %rax,%rcx
ffff800000105f03:	48 b8 48 9f ff ff ff 	movabs $0xffffffffffff9f48,%rax
ffff800000105f0a:	ff ff ff 
ffff800000105f0d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f11:	48 89 c2             	mov    %rax,%rdx
ffff800000105f14:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f19:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f1e:	4d 89 d7             	mov    %r10,%r15
ffff800000105f21:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f26:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000105f2d:	ff ff ff 
ffff800000105f30:	4d 01 d3             	add    %r10,%r11
ffff800000105f33:	41 ff d3             	call   *%r11
ffff800000105f36:	90                   	nop
ffff800000105f37:	eb fd                	jmp    ffff800000105f36 <do_int3+0x8b>

ffff800000105f39 <do_overflow>:
ffff800000105f39:	f3 0f 1e fa          	endbr64
ffff800000105f3d:	55                   	push   %rbp
ffff800000105f3e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f41:	41 57                	push   %r15
ffff800000105f43:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f47:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f47 <do_overflow+0xe>
ffff800000105f4e:	49 bb 69 8f 00 00 00 	movabs $0x8f69,%r11
ffff800000105f55:	00 00 00 
ffff800000105f58:	4d 01 da             	add    %r11,%r10
ffff800000105f5b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f5f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f63:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f6a:	00 
ffff800000105f6b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f6f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f75:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f79:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f7d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f80:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f84:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f88:	49 89 c9             	mov    %rcx,%r9
ffff800000105f8b:	49 89 d0             	mov    %rdx,%r8
ffff800000105f8e:	48 89 c1             	mov    %rax,%rcx
ffff800000105f91:	48 b8 80 9f ff ff ff 	movabs $0xffffffffffff9f80,%rax
ffff800000105f98:	ff ff ff 
ffff800000105f9b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f9f:	48 89 c2             	mov    %rax,%rdx
ffff800000105fa2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105fa7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105fac:	4d 89 d7             	mov    %r10,%r15
ffff800000105faf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fb4:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000105fbb:	ff ff ff 
ffff800000105fbe:	4d 01 d3             	add    %r10,%r11
ffff800000105fc1:	41 ff d3             	call   *%r11
ffff800000105fc4:	90                   	nop
ffff800000105fc5:	eb fd                	jmp    ffff800000105fc4 <do_overflow+0x8b>

ffff800000105fc7 <do_bounds>:
ffff800000105fc7:	f3 0f 1e fa          	endbr64
ffff800000105fcb:	55                   	push   %rbp
ffff800000105fcc:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fcf:	41 57                	push   %r15
ffff800000105fd1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fd5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fd5 <do_bounds+0xe>
ffff800000105fdc:	49 bb db 8e 00 00 00 	movabs $0x8edb,%r11
ffff800000105fe3:	00 00 00 
ffff800000105fe6:	4d 01 da             	add    %r11,%r10
ffff800000105fe9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fed:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ff1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ff8:	00 
ffff800000105ff9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ffd:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106003:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106007:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010600b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010600e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106012:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106016:	49 89 c9             	mov    %rcx,%r9
ffff800000106019:	49 89 d0             	mov    %rdx,%r8
ffff80000010601c:	48 89 c1             	mov    %rax,%rcx
ffff80000010601f:	48 b8 c0 9f ff ff ff 	movabs $0xffffffffffff9fc0,%rax
ffff800000106026:	ff ff ff 
ffff800000106029:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010602d:	48 89 c2             	mov    %rax,%rdx
ffff800000106030:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106035:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010603a:	4d 89 d7             	mov    %r10,%r15
ffff80000010603d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106042:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106049:	ff ff ff 
ffff80000010604c:	4d 01 d3             	add    %r10,%r11
ffff80000010604f:	41 ff d3             	call   *%r11
ffff800000106052:	90                   	nop
ffff800000106053:	eb fd                	jmp    ffff800000106052 <do_bounds+0x8b>

ffff800000106055 <do_undefined_opcode>:
ffff800000106055:	f3 0f 1e fa          	endbr64
ffff800000106059:	55                   	push   %rbp
ffff80000010605a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010605d:	41 57                	push   %r15
ffff80000010605f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106063:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106063 <do_undefined_opcode+0xe>
ffff80000010606a:	49 bb 4d 8e 00 00 00 	movabs $0x8e4d,%r11
ffff800000106071:	00 00 00 
ffff800000106074:	4d 01 da             	add    %r11,%r10
ffff800000106077:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010607b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010607f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106086:	00 
ffff800000106087:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010608b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106091:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106095:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106099:	48 8b 08             	mov    (%rax),%rcx
ffff80000010609c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060a4:	49 89 c9             	mov    %rcx,%r9
ffff8000001060a7:	49 89 d0             	mov    %rdx,%r8
ffff8000001060aa:	48 89 c1             	mov    %rax,%rcx
ffff8000001060ad:	48 b8 00 a0 ff ff ff 	movabs $0xffffffffffffa000,%rax
ffff8000001060b4:	ff ff ff 
ffff8000001060b7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001060bb:	48 89 c2             	mov    %rax,%rdx
ffff8000001060be:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060c3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060c8:	4d 89 d7             	mov    %r10,%r15
ffff8000001060cb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060d0:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff8000001060d7:	ff ff ff 
ffff8000001060da:	4d 01 d3             	add    %r10,%r11
ffff8000001060dd:	41 ff d3             	call   *%r11
ffff8000001060e0:	90                   	nop
ffff8000001060e1:	eb fd                	jmp    ffff8000001060e0 <do_undefined_opcode+0x8b>

ffff8000001060e3 <do_dev_not_available>:
ffff8000001060e3:	f3 0f 1e fa          	endbr64
ffff8000001060e7:	55                   	push   %rbp
ffff8000001060e8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060eb:	41 57                	push   %r15
ffff8000001060ed:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060f1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060f1 <do_dev_not_available+0xe>
ffff8000001060f8:	49 bb bf 8d 00 00 00 	movabs $0x8dbf,%r11
ffff8000001060ff:	00 00 00 
ffff800000106102:	4d 01 da             	add    %r11,%r10
ffff800000106105:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106109:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010610d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106114:	00 
ffff800000106115:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106119:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010611f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106123:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106127:	48 8b 08             	mov    (%rax),%rcx
ffff80000010612a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010612e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106132:	49 89 c9             	mov    %rcx,%r9
ffff800000106135:	49 89 d0             	mov    %rdx,%r8
ffff800000106138:	48 89 c1             	mov    %rax,%rcx
ffff80000010613b:	48 b8 48 a0 ff ff ff 	movabs $0xffffffffffffa048,%rax
ffff800000106142:	ff ff ff 
ffff800000106145:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106149:	48 89 c2             	mov    %rax,%rdx
ffff80000010614c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106151:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106156:	4d 89 d7             	mov    %r10,%r15
ffff800000106159:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010615e:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106165:	ff ff ff 
ffff800000106168:	4d 01 d3             	add    %r10,%r11
ffff80000010616b:	41 ff d3             	call   *%r11
ffff80000010616e:	90                   	nop
ffff80000010616f:	eb fd                	jmp    ffff80000010616e <do_dev_not_available+0x8b>

ffff800000106171 <do_double_fault>:
ffff800000106171:	f3 0f 1e fa          	endbr64
ffff800000106175:	55                   	push   %rbp
ffff800000106176:	48 89 e5             	mov    %rsp,%rbp
ffff800000106179:	41 57                	push   %r15
ffff80000010617b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010617f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010617f <do_double_fault+0xe>
ffff800000106186:	49 bb 31 8d 00 00 00 	movabs $0x8d31,%r11
ffff80000010618d:	00 00 00 
ffff800000106190:	4d 01 da             	add    %r11,%r10
ffff800000106193:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106197:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010619b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061a2:	00 
ffff8000001061a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061a7:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061b5:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061b8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061bc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061c0:	49 89 c9             	mov    %rcx,%r9
ffff8000001061c3:	49 89 d0             	mov    %rdx,%r8
ffff8000001061c6:	48 89 c1             	mov    %rax,%rcx
ffff8000001061c9:	48 b8 90 a0 ff ff ff 	movabs $0xffffffffffffa090,%rax
ffff8000001061d0:	ff ff ff 
ffff8000001061d3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061d7:	48 89 c2             	mov    %rax,%rdx
ffff8000001061da:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061df:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061e4:	4d 89 d7             	mov    %r10,%r15
ffff8000001061e7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061ec:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff8000001061f3:	ff ff ff 
ffff8000001061f6:	4d 01 d3             	add    %r10,%r11
ffff8000001061f9:	41 ff d3             	call   *%r11
ffff8000001061fc:	90                   	nop
ffff8000001061fd:	eb fd                	jmp    ffff8000001061fc <do_double_fault+0x8b>

ffff8000001061ff <do_coprocessor_segment_overrun>:
ffff8000001061ff:	f3 0f 1e fa          	endbr64
ffff800000106203:	55                   	push   %rbp
ffff800000106204:	48 89 e5             	mov    %rsp,%rbp
ffff800000106207:	41 57                	push   %r15
ffff800000106209:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010620d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010620d <do_coprocessor_segment_overrun+0xe>
ffff800000106214:	49 bb a3 8c 00 00 00 	movabs $0x8ca3,%r11
ffff80000010621b:	00 00 00 
ffff80000010621e:	4d 01 da             	add    %r11,%r10
ffff800000106221:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106225:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106229:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106230:	00 
ffff800000106231:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106235:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010623b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010623f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106243:	48 8b 08             	mov    (%rax),%rcx
ffff800000106246:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010624a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010624e:	49 89 c9             	mov    %rcx,%r9
ffff800000106251:	49 89 d0             	mov    %rdx,%r8
ffff800000106254:	48 89 c1             	mov    %rax,%rcx
ffff800000106257:	48 b8 d0 a0 ff ff ff 	movabs $0xffffffffffffa0d0,%rax
ffff80000010625e:	ff ff ff 
ffff800000106261:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106265:	48 89 c2             	mov    %rax,%rdx
ffff800000106268:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010626d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106272:	4d 89 d7             	mov    %r10,%r15
ffff800000106275:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010627a:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106281:	ff ff ff 
ffff800000106284:	4d 01 d3             	add    %r10,%r11
ffff800000106287:	41 ff d3             	call   *%r11
ffff80000010628a:	90                   	nop
ffff80000010628b:	eb fd                	jmp    ffff80000010628a <do_coprocessor_segment_overrun+0x8b>

ffff80000010628d <do_invalid_TSS>:
ffff80000010628d:	f3 0f 1e fa          	endbr64
ffff800000106291:	55                   	push   %rbp
ffff800000106292:	48 89 e5             	mov    %rsp,%rbp
ffff800000106295:	41 57                	push   %r15
ffff800000106297:	53                   	push   %rbx
ffff800000106298:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010629c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010629c <do_invalid_TSS+0xf>
ffff8000001062a3:	49 bb 14 8c 00 00 00 	movabs $0x8c14,%r11
ffff8000001062aa:	00 00 00 
ffff8000001062ad:	4c 01 db             	add    %r11,%rbx
ffff8000001062b0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001062b4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001062b8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001062bf:	00 
ffff8000001062c0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062c4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062ca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001062ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001062d2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062d5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062dd:	49 89 c9             	mov    %rcx,%r9
ffff8000001062e0:	49 89 d0             	mov    %rdx,%r8
ffff8000001062e3:	48 89 c1             	mov    %rax,%rcx
ffff8000001062e6:	48 b8 20 a1 ff ff ff 	movabs $0xffffffffffffa120,%rax
ffff8000001062ed:	ff ff ff 
ffff8000001062f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062f4:	48 89 c2             	mov    %rax,%rdx
ffff8000001062f7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062fc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106301:	49 89 df             	mov    %rbx,%r15
ffff800000106304:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106309:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff800000106310:	ff ff ff 
ffff800000106313:	49 01 da             	add    %rbx,%r10
ffff800000106316:	41 ff d2             	call   *%r10
ffff800000106319:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010631d:	83 e0 01             	and    $0x1,%eax
ffff800000106320:	48 85 c0             	test   %rax,%rax
ffff800000106323:	74 32                	je     ffff800000106357 <do_invalid_TSS+0xca>
ffff800000106325:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff80000010632c:	ff ff ff 
ffff80000010632f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106333:	48 89 c2             	mov    %rax,%rdx
ffff800000106336:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010633b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106340:	49 89 df             	mov    %rbx,%r15
ffff800000106343:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106348:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010634f:	ff ff ff 
ffff800000106352:	48 01 d9             	add    %rbx,%rcx
ffff800000106355:	ff d1                	call   *%rcx
ffff800000106357:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010635b:	83 e0 02             	and    $0x2,%eax
ffff80000010635e:	48 85 c0             	test   %rax,%rax
ffff800000106361:	74 34                	je     ffff800000106397 <do_invalid_TSS+0x10a>
ffff800000106363:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff80000010636a:	ff ff ff 
ffff80000010636d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106371:	48 89 c2             	mov    %rax,%rdx
ffff800000106374:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106379:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010637e:	49 89 df             	mov    %rbx,%r15
ffff800000106381:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106386:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010638d:	ff ff ff 
ffff800000106390:	48 01 d9             	add    %rbx,%rcx
ffff800000106393:	ff d1                	call   *%rcx
ffff800000106395:	eb 32                	jmp    ffff8000001063c9 <do_invalid_TSS+0x13c>
ffff800000106397:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff80000010639e:	ff ff ff 
ffff8000001063a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063a5:	48 89 c2             	mov    %rax,%rdx
ffff8000001063a8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063ad:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063b2:	49 89 df             	mov    %rbx,%r15
ffff8000001063b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063ba:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001063c1:	ff ff ff 
ffff8000001063c4:	48 01 d9             	add    %rbx,%rcx
ffff8000001063c7:	ff d1                	call   *%rcx
ffff8000001063c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063cd:	83 e0 02             	and    $0x2,%eax
ffff8000001063d0:	48 85 c0             	test   %rax,%rax
ffff8000001063d3:	75 72                	jne    ffff800000106447 <do_invalid_TSS+0x1ba>
ffff8000001063d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063d9:	83 e0 04             	and    $0x4,%eax
ffff8000001063dc:	48 85 c0             	test   %rax,%rax
ffff8000001063df:	74 34                	je     ffff800000106415 <do_invalid_TSS+0x188>
ffff8000001063e1:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001063e8:	ff ff ff 
ffff8000001063eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001063f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063fc:	49 89 df             	mov    %rbx,%r15
ffff8000001063ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106404:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010640b:	ff ff ff 
ffff80000010640e:	48 01 d9             	add    %rbx,%rcx
ffff800000106411:	ff d1                	call   *%rcx
ffff800000106413:	eb 32                	jmp    ffff800000106447 <do_invalid_TSS+0x1ba>
ffff800000106415:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff80000010641c:	ff ff ff 
ffff80000010641f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106423:	48 89 c2             	mov    %rax,%rdx
ffff800000106426:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010642b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106430:	49 89 df             	mov    %rbx,%r15
ffff800000106433:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106438:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010643f:	ff ff ff 
ffff800000106442:	48 01 d9             	add    %rbx,%rcx
ffff800000106445:	ff d1                	call   *%rcx
ffff800000106447:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010644b:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106450:	48 89 c1             	mov    %rax,%rcx
ffff800000106453:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff80000010645a:	ff ff ff 
ffff80000010645d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106461:	48 89 c2             	mov    %rax,%rdx
ffff800000106464:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106469:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010646e:	49 89 df             	mov    %rbx,%r15
ffff800000106471:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106476:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff80000010647d:	ff ff ff 
ffff800000106480:	49 01 d8             	add    %rbx,%r8
ffff800000106483:	41 ff d0             	call   *%r8
ffff800000106486:	90                   	nop
ffff800000106487:	eb fd                	jmp    ffff800000106486 <do_invalid_TSS+0x1f9>

ffff800000106489 <do_segment_not_present>:
ffff800000106489:	f3 0f 1e fa          	endbr64
ffff80000010648d:	55                   	push   %rbp
ffff80000010648e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106491:	41 57                	push   %r15
ffff800000106493:	53                   	push   %rbx
ffff800000106494:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106498:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106498 <do_segment_not_present+0xf>
ffff80000010649f:	49 bb 18 8a 00 00 00 	movabs $0x8a18,%r11
ffff8000001064a6:	00 00 00 
ffff8000001064a9:	4c 01 db             	add    %r11,%rbx
ffff8000001064ac:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064b0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064b4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064bb:	00 
ffff8000001064bc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064c0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064c6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064ca:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064ce:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064d1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064d9:	49 89 c9             	mov    %rcx,%r9
ffff8000001064dc:	49 89 d0             	mov    %rdx,%r8
ffff8000001064df:	48 89 c1             	mov    %rax,%rcx
ffff8000001064e2:	48 b8 d0 a2 ff ff ff 	movabs $0xffffffffffffa2d0,%rax
ffff8000001064e9:	ff ff ff 
ffff8000001064ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001064f3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064fd:	49 89 df             	mov    %rbx,%r15
ffff800000106500:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106505:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff80000010650c:	ff ff ff 
ffff80000010650f:	49 01 da             	add    %rbx,%r10
ffff800000106512:	41 ff d2             	call   *%r10
ffff800000106515:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106519:	83 e0 01             	and    $0x1,%eax
ffff80000010651c:	48 85 c0             	test   %rax,%rax
ffff80000010651f:	74 32                	je     ffff800000106553 <do_segment_not_present+0xca>
ffff800000106521:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106528:	ff ff ff 
ffff80000010652b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010652f:	48 89 c2             	mov    %rax,%rdx
ffff800000106532:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106537:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010653c:	49 89 df             	mov    %rbx,%r15
ffff80000010653f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106544:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010654b:	ff ff ff 
ffff80000010654e:	48 01 d9             	add    %rbx,%rcx
ffff800000106551:	ff d1                	call   *%rcx
ffff800000106553:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106557:	83 e0 02             	and    $0x2,%eax
ffff80000010655a:	48 85 c0             	test   %rax,%rax
ffff80000010655d:	74 34                	je     ffff800000106593 <do_segment_not_present+0x10a>
ffff80000010655f:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff800000106566:	ff ff ff 
ffff800000106569:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010656d:	48 89 c2             	mov    %rax,%rdx
ffff800000106570:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106575:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010657a:	49 89 df             	mov    %rbx,%r15
ffff80000010657d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106582:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106589:	ff ff ff 
ffff80000010658c:	48 01 d9             	add    %rbx,%rcx
ffff80000010658f:	ff d1                	call   *%rcx
ffff800000106591:	eb 32                	jmp    ffff8000001065c5 <do_segment_not_present+0x13c>
ffff800000106593:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff80000010659a:	ff ff ff 
ffff80000010659d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065a1:	48 89 c2             	mov    %rax,%rdx
ffff8000001065a4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065a9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065ae:	49 89 df             	mov    %rbx,%r15
ffff8000001065b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065b6:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001065bd:	ff ff ff 
ffff8000001065c0:	48 01 d9             	add    %rbx,%rcx
ffff8000001065c3:	ff d1                	call   *%rcx
ffff8000001065c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065c9:	83 e0 02             	and    $0x2,%eax
ffff8000001065cc:	48 85 c0             	test   %rax,%rax
ffff8000001065cf:	75 72                	jne    ffff800000106643 <do_segment_not_present+0x1ba>
ffff8000001065d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065d5:	83 e0 04             	and    $0x4,%eax
ffff8000001065d8:	48 85 c0             	test   %rax,%rax
ffff8000001065db:	74 34                	je     ffff800000106611 <do_segment_not_present+0x188>
ffff8000001065dd:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001065e4:	ff ff ff 
ffff8000001065e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001065ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065f3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065f8:	49 89 df             	mov    %rbx,%r15
ffff8000001065fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106600:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106607:	ff ff ff 
ffff80000010660a:	48 01 d9             	add    %rbx,%rcx
ffff80000010660d:	ff d1                	call   *%rcx
ffff80000010660f:	eb 32                	jmp    ffff800000106643 <do_segment_not_present+0x1ba>
ffff800000106611:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106618:	ff ff ff 
ffff80000010661b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010661f:	48 89 c2             	mov    %rax,%rdx
ffff800000106622:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106627:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010662c:	49 89 df             	mov    %rbx,%r15
ffff80000010662f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106634:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff80000010663b:	ff ff ff 
ffff80000010663e:	48 01 d9             	add    %rbx,%rcx
ffff800000106641:	ff d1                	call   *%rcx
ffff800000106643:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106647:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010664c:	48 89 c1             	mov    %rax,%rcx
ffff80000010664f:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff800000106656:	ff ff ff 
ffff800000106659:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010665d:	48 89 c2             	mov    %rax,%rdx
ffff800000106660:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106665:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010666a:	49 89 df             	mov    %rbx,%r15
ffff80000010666d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106672:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000106679:	ff ff ff 
ffff80000010667c:	49 01 d8             	add    %rbx,%r8
ffff80000010667f:	41 ff d0             	call   *%r8
ffff800000106682:	90                   	nop
ffff800000106683:	eb fd                	jmp    ffff800000106682 <do_segment_not_present+0x1f9>

ffff800000106685 <do_stack_segment_fault>:
ffff800000106685:	f3 0f 1e fa          	endbr64
ffff800000106689:	55                   	push   %rbp
ffff80000010668a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010668d:	41 57                	push   %r15
ffff80000010668f:	53                   	push   %rbx
ffff800000106690:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106694:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106694 <do_stack_segment_fault+0xf>
ffff80000010669b:	49 bb 1c 88 00 00 00 	movabs $0x881c,%r11
ffff8000001066a2:	00 00 00 
ffff8000001066a5:	4c 01 db             	add    %r11,%rbx
ffff8000001066a8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066ac:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066b0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001066b7:	00 
ffff8000001066b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001066bc:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001066c2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001066c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001066ca:	48 8b 08             	mov    (%rax),%rcx
ffff8000001066cd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001066d1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066d5:	49 89 c9             	mov    %rcx,%r9
ffff8000001066d8:	49 89 d0             	mov    %rdx,%r8
ffff8000001066db:	48 89 c1             	mov    %rax,%rcx
ffff8000001066de:	48 b8 18 a3 ff ff ff 	movabs $0xffffffffffffa318,%rax
ffff8000001066e5:	ff ff ff 
ffff8000001066e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001066ef:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066f4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066f9:	49 89 df             	mov    %rbx,%r15
ffff8000001066fc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106701:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff800000106708:	ff ff ff 
ffff80000010670b:	49 01 da             	add    %rbx,%r10
ffff80000010670e:	41 ff d2             	call   *%r10
ffff800000106711:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106715:	83 e0 01             	and    $0x1,%eax
ffff800000106718:	48 85 c0             	test   %rax,%rax
ffff80000010671b:	74 32                	je     ffff80000010674f <do_stack_segment_fault+0xca>
ffff80000010671d:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106724:	ff ff ff 
ffff800000106727:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010672b:	48 89 c2             	mov    %rax,%rdx
ffff80000010672e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106733:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106738:	49 89 df             	mov    %rbx,%r15
ffff80000010673b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106740:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106747:	ff ff ff 
ffff80000010674a:	48 01 d9             	add    %rbx,%rcx
ffff80000010674d:	ff d1                	call   *%rcx
ffff80000010674f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106753:	83 e0 02             	and    $0x2,%eax
ffff800000106756:	48 85 c0             	test   %rax,%rax
ffff800000106759:	74 34                	je     ffff80000010678f <do_stack_segment_fault+0x10a>
ffff80000010675b:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff800000106762:	ff ff ff 
ffff800000106765:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106769:	48 89 c2             	mov    %rax,%rdx
ffff80000010676c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106771:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106776:	49 89 df             	mov    %rbx,%r15
ffff800000106779:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010677e:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106785:	ff ff ff 
ffff800000106788:	48 01 d9             	add    %rbx,%rcx
ffff80000010678b:	ff d1                	call   *%rcx
ffff80000010678d:	eb 32                	jmp    ffff8000001067c1 <do_stack_segment_fault+0x13c>
ffff80000010678f:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff800000106796:	ff ff ff 
ffff800000106799:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010679d:	48 89 c2             	mov    %rax,%rdx
ffff8000001067a0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067a5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067aa:	49 89 df             	mov    %rbx,%r15
ffff8000001067ad:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067b2:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001067b9:	ff ff ff 
ffff8000001067bc:	48 01 d9             	add    %rbx,%rcx
ffff8000001067bf:	ff d1                	call   *%rcx
ffff8000001067c1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067c5:	83 e0 02             	and    $0x2,%eax
ffff8000001067c8:	48 85 c0             	test   %rax,%rax
ffff8000001067cb:	75 72                	jne    ffff80000010683f <do_stack_segment_fault+0x1ba>
ffff8000001067cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067d1:	83 e0 04             	and    $0x4,%eax
ffff8000001067d4:	48 85 c0             	test   %rax,%rax
ffff8000001067d7:	74 34                	je     ffff80000010680d <do_stack_segment_fault+0x188>
ffff8000001067d9:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001067e0:	ff ff ff 
ffff8000001067e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ea:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067ef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067f4:	49 89 df             	mov    %rbx,%r15
ffff8000001067f7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067fc:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106803:	ff ff ff 
ffff800000106806:	48 01 d9             	add    %rbx,%rcx
ffff800000106809:	ff d1                	call   *%rcx
ffff80000010680b:	eb 32                	jmp    ffff80000010683f <do_stack_segment_fault+0x1ba>
ffff80000010680d:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106814:	ff ff ff 
ffff800000106817:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010681b:	48 89 c2             	mov    %rax,%rdx
ffff80000010681e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106823:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106828:	49 89 df             	mov    %rbx,%r15
ffff80000010682b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106830:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106837:	ff ff ff 
ffff80000010683a:	48 01 d9             	add    %rbx,%rcx
ffff80000010683d:	ff d1                	call   *%rcx
ffff80000010683f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106843:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106848:	48 89 c1             	mov    %rax,%rcx
ffff80000010684b:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff800000106852:	ff ff ff 
ffff800000106855:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106859:	48 89 c2             	mov    %rax,%rdx
ffff80000010685c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106861:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106866:	49 89 df             	mov    %rbx,%r15
ffff800000106869:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010686e:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000106875:	ff ff ff 
ffff800000106878:	49 01 d8             	add    %rbx,%r8
ffff80000010687b:	41 ff d0             	call   *%r8
ffff80000010687e:	90                   	nop
ffff80000010687f:	eb fd                	jmp    ffff80000010687e <do_stack_segment_fault+0x1f9>

ffff800000106881 <do_general_protection>:
ffff800000106881:	f3 0f 1e fa          	endbr64
ffff800000106885:	55                   	push   %rbp
ffff800000106886:	48 89 e5             	mov    %rsp,%rbp
ffff800000106889:	41 57                	push   %r15
ffff80000010688b:	53                   	push   %rbx
ffff80000010688c:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106890:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106890 <do_general_protection+0xf>
ffff800000106897:	49 bb 20 86 00 00 00 	movabs $0x8620,%r11
ffff80000010689e:	00 00 00 
ffff8000001068a1:	4c 01 db             	add    %r11,%rbx
ffff8000001068a4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001068a8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001068ac:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001068b3:	00 
ffff8000001068b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001068b8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001068be:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001068c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001068c6:	48 8b 08             	mov    (%rax),%rcx
ffff8000001068c9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001068cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068d1:	49 89 c9             	mov    %rcx,%r9
ffff8000001068d4:	49 89 d0             	mov    %rdx,%r8
ffff8000001068d7:	48 89 c1             	mov    %rax,%rcx
ffff8000001068da:	48 b8 60 a3 ff ff ff 	movabs $0xffffffffffffa360,%rax
ffff8000001068e1:	ff ff ff 
ffff8000001068e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001068eb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068f0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068f5:	49 89 df             	mov    %rbx,%r15
ffff8000001068f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068fd:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff800000106904:	ff ff ff 
ffff800000106907:	49 01 da             	add    %rbx,%r10
ffff80000010690a:	41 ff d2             	call   *%r10
ffff80000010690d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106911:	83 e0 01             	and    $0x1,%eax
ffff800000106914:	48 85 c0             	test   %rax,%rax
ffff800000106917:	74 32                	je     ffff80000010694b <do_general_protection+0xca>
ffff800000106919:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000106920:	ff ff ff 
ffff800000106923:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106927:	48 89 c2             	mov    %rax,%rdx
ffff80000010692a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010692f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106934:	49 89 df             	mov    %rbx,%r15
ffff800000106937:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010693c:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106943:	ff ff ff 
ffff800000106946:	48 01 d9             	add    %rbx,%rcx
ffff800000106949:	ff d1                	call   *%rcx
ffff80000010694b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010694f:	83 e0 02             	and    $0x2,%eax
ffff800000106952:	48 85 c0             	test   %rax,%rax
ffff800000106955:	74 34                	je     ffff80000010698b <do_general_protection+0x10a>
ffff800000106957:	48 b8 e0 a1 ff ff ff 	movabs $0xffffffffffffa1e0,%rax
ffff80000010695e:	ff ff ff 
ffff800000106961:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106965:	48 89 c2             	mov    %rax,%rdx
ffff800000106968:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010696d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106972:	49 89 df             	mov    %rbx,%r15
ffff800000106975:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010697a:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106981:	ff ff ff 
ffff800000106984:	48 01 d9             	add    %rbx,%rcx
ffff800000106987:	ff d1                	call   *%rcx
ffff800000106989:	eb 32                	jmp    ffff8000001069bd <do_general_protection+0x13c>
ffff80000010698b:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff800000106992:	ff ff ff 
ffff800000106995:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106999:	48 89 c2             	mov    %rax,%rdx
ffff80000010699c:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069a1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069a6:	49 89 df             	mov    %rbx,%r15
ffff8000001069a9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069ae:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001069b5:	ff ff ff 
ffff8000001069b8:	48 01 d9             	add    %rbx,%rcx
ffff8000001069bb:	ff d1                	call   *%rcx
ffff8000001069bd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069c1:	83 e0 02             	and    $0x2,%eax
ffff8000001069c4:	48 85 c0             	test   %rax,%rax
ffff8000001069c7:	75 72                	jne    ffff800000106a3b <do_general_protection+0x1ba>
ffff8000001069c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069cd:	83 e0 04             	and    $0x4,%eax
ffff8000001069d0:	48 85 c0             	test   %rax,%rax
ffff8000001069d3:	74 34                	je     ffff800000106a09 <do_general_protection+0x188>
ffff8000001069d5:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff8000001069dc:	ff ff ff 
ffff8000001069df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069e3:	48 89 c2             	mov    %rax,%rdx
ffff8000001069e6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069eb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069f0:	49 89 df             	mov    %rbx,%r15
ffff8000001069f3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069f8:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001069ff:	ff ff ff 
ffff800000106a02:	48 01 d9             	add    %rbx,%rcx
ffff800000106a05:	ff d1                	call   *%rcx
ffff800000106a07:	eb 32                	jmp    ffff800000106a3b <do_general_protection+0x1ba>
ffff800000106a09:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106a10:	ff ff ff 
ffff800000106a13:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a17:	48 89 c2             	mov    %rax,%rdx
ffff800000106a1a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a1f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a24:	49 89 df             	mov    %rbx,%r15
ffff800000106a27:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a2c:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106a33:	ff ff ff 
ffff800000106a36:	48 01 d9             	add    %rbx,%rcx
ffff800000106a39:	ff d1                	call   *%rcx
ffff800000106a3b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a3f:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106a44:	48 89 c1             	mov    %rax,%rcx
ffff800000106a47:	48 b8 b0 a2 ff ff ff 	movabs $0xffffffffffffa2b0,%rax
ffff800000106a4e:	ff ff ff 
ffff800000106a51:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a55:	48 89 c2             	mov    %rax,%rdx
ffff800000106a58:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a5d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a62:	49 89 df             	mov    %rbx,%r15
ffff800000106a65:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a6a:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000106a71:	ff ff ff 
ffff800000106a74:	49 01 d8             	add    %rbx,%r8
ffff800000106a77:	41 ff d0             	call   *%r8
ffff800000106a7a:	90                   	nop
ffff800000106a7b:	eb fd                	jmp    ffff800000106a7a <do_general_protection+0x1f9>

ffff800000106a7d <do_page_fault>:
ffff800000106a7d:	f3 0f 1e fa          	endbr64
ffff800000106a81:	55                   	push   %rbp
ffff800000106a82:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a85:	41 57                	push   %r15
ffff800000106a87:	53                   	push   %rbx
ffff800000106a88:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106a8c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106a8c <do_page_fault+0xf>
ffff800000106a93:	49 bb 24 84 00 00 00 	movabs $0x8424,%r11
ffff800000106a9a:	00 00 00 
ffff800000106a9d:	4c 01 db             	add    %r11,%rbx
ffff800000106aa0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106aa4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106aa8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106aaf:	00 
ffff800000106ab0:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106ab7:	00 
ffff800000106ab8:	0f 20 d0             	mov    %cr2,%rax
ffff800000106abb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106abf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ac3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ac9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106acd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ad1:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ad4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ad8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106adc:	49 89 c9             	mov    %rcx,%r9
ffff800000106adf:	49 89 d0             	mov    %rdx,%r8
ffff800000106ae2:	48 89 c1             	mov    %rax,%rcx
ffff800000106ae5:	48 b8 a8 a3 ff ff ff 	movabs $0xffffffffffffa3a8,%rax
ffff800000106aec:	ff ff ff 
ffff800000106aef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106af3:	48 89 c2             	mov    %rax,%rdx
ffff800000106af6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106afb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b00:	49 89 df             	mov    %rbx,%r15
ffff800000106b03:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b08:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff800000106b0f:	ff ff ff 
ffff800000106b12:	49 01 da             	add    %rbx,%r10
ffff800000106b15:	41 ff d2             	call   *%r10
ffff800000106b18:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b1c:	83 e0 01             	and    $0x1,%eax
ffff800000106b1f:	48 85 c0             	test   %rax,%rax
ffff800000106b22:	75 32                	jne    ffff800000106b56 <do_page_fault+0xd9>
ffff800000106b24:	48 b8 e6 a3 ff ff ff 	movabs $0xffffffffffffa3e6,%rax
ffff800000106b2b:	ff ff ff 
ffff800000106b2e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b32:	48 89 c2             	mov    %rax,%rdx
ffff800000106b35:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b3a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b3f:	49 89 df             	mov    %rbx,%r15
ffff800000106b42:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b47:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106b4e:	ff ff ff 
ffff800000106b51:	48 01 d9             	add    %rbx,%rcx
ffff800000106b54:	ff d1                	call   *%rcx
ffff800000106b56:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b5a:	83 e0 02             	and    $0x2,%eax
ffff800000106b5d:	48 85 c0             	test   %rax,%rax
ffff800000106b60:	74 34                	je     ffff800000106b96 <do_page_fault+0x119>
ffff800000106b62:	48 b8 f9 a3 ff ff ff 	movabs $0xffffffffffffa3f9,%rax
ffff800000106b69:	ff ff ff 
ffff800000106b6c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b70:	48 89 c2             	mov    %rax,%rdx
ffff800000106b73:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b78:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b7d:	49 89 df             	mov    %rbx,%r15
ffff800000106b80:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b85:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106b8c:	ff ff ff 
ffff800000106b8f:	48 01 d9             	add    %rbx,%rcx
ffff800000106b92:	ff d1                	call   *%rcx
ffff800000106b94:	eb 32                	jmp    ffff800000106bc8 <do_page_fault+0x14b>
ffff800000106b96:	48 b8 0d a4 ff ff ff 	movabs $0xffffffffffffa40d,%rax
ffff800000106b9d:	ff ff ff 
ffff800000106ba0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ba4:	48 89 c2             	mov    %rax,%rdx
ffff800000106ba7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bac:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bb1:	49 89 df             	mov    %rbx,%r15
ffff800000106bb4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bb9:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106bc0:	ff ff ff 
ffff800000106bc3:	48 01 d9             	add    %rbx,%rcx
ffff800000106bc6:	ff d1                	call   *%rcx
ffff800000106bc8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bcc:	83 e0 04             	and    $0x4,%eax
ffff800000106bcf:	48 85 c0             	test   %rax,%rax
ffff800000106bd2:	74 34                	je     ffff800000106c08 <do_page_fault+0x18b>
ffff800000106bd4:	48 b8 20 a4 ff ff ff 	movabs $0xffffffffffffa420,%rax
ffff800000106bdb:	ff ff ff 
ffff800000106bde:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106be2:	48 89 c2             	mov    %rax,%rdx
ffff800000106be5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bea:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bef:	49 89 df             	mov    %rbx,%r15
ffff800000106bf2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bf7:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106bfe:	ff ff ff 
ffff800000106c01:	48 01 d9             	add    %rbx,%rcx
ffff800000106c04:	ff d1                	call   *%rcx
ffff800000106c06:	eb 32                	jmp    ffff800000106c3a <do_page_fault+0x1bd>
ffff800000106c08:	48 b8 32 a4 ff ff ff 	movabs $0xffffffffffffa432,%rax
ffff800000106c0f:	ff ff ff 
ffff800000106c12:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c16:	48 89 c2             	mov    %rax,%rdx
ffff800000106c19:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c1e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c23:	49 89 df             	mov    %rbx,%r15
ffff800000106c26:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c2b:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106c32:	ff ff ff 
ffff800000106c35:	48 01 d9             	add    %rbx,%rcx
ffff800000106c38:	ff d1                	call   *%rcx
ffff800000106c3a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c3e:	83 e0 08             	and    $0x8,%eax
ffff800000106c41:	48 85 c0             	test   %rax,%rax
ffff800000106c44:	74 32                	je     ffff800000106c78 <do_page_fault+0x1fb>
ffff800000106c46:	48 b8 4e a4 ff ff ff 	movabs $0xffffffffffffa44e,%rax
ffff800000106c4d:	ff ff ff 
ffff800000106c50:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c54:	48 89 c2             	mov    %rax,%rdx
ffff800000106c57:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c5c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c61:	49 89 df             	mov    %rbx,%r15
ffff800000106c64:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c69:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106c70:	ff ff ff 
ffff800000106c73:	48 01 d9             	add    %rbx,%rcx
ffff800000106c76:	ff d1                	call   *%rcx
ffff800000106c78:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c7c:	83 e0 10             	and    $0x10,%eax
ffff800000106c7f:	48 85 c0             	test   %rax,%rax
ffff800000106c82:	74 32                	je     ffff800000106cb6 <do_page_fault+0x239>
ffff800000106c84:	48 b8 70 a4 ff ff ff 	movabs $0xffffffffffffa470,%rax
ffff800000106c8b:	ff ff ff 
ffff800000106c8e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c92:	48 89 c2             	mov    %rax,%rdx
ffff800000106c95:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c9a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c9f:	49 89 df             	mov    %rbx,%r15
ffff800000106ca2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ca7:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106cae:	ff ff ff 
ffff800000106cb1:	48 01 d9             	add    %rbx,%rcx
ffff800000106cb4:	ff d1                	call   *%rcx
ffff800000106cb6:	48 b8 8f a4 ff ff ff 	movabs $0xffffffffffffa48f,%rax
ffff800000106cbd:	ff ff ff 
ffff800000106cc0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cc4:	48 89 c2             	mov    %rax,%rdx
ffff800000106cc7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ccc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cd1:	49 89 df             	mov    %rbx,%r15
ffff800000106cd4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cd9:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff800000106ce0:	ff ff ff 
ffff800000106ce3:	48 01 d9             	add    %rbx,%rcx
ffff800000106ce6:	ff d1                	call   *%rcx
ffff800000106ce8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cec:	48 89 c1             	mov    %rax,%rcx
ffff800000106cef:	48 b8 91 a4 ff ff ff 	movabs $0xffffffffffffa491,%rax
ffff800000106cf6:	ff ff ff 
ffff800000106cf9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cfd:	48 89 c2             	mov    %rax,%rdx
ffff800000106d00:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d05:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d0a:	49 89 df             	mov    %rbx,%r15
ffff800000106d0d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d12:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000106d19:	ff ff ff 
ffff800000106d1c:	49 01 d8             	add    %rbx,%r8
ffff800000106d1f:	41 ff d0             	call   *%r8
ffff800000106d22:	90                   	nop
ffff800000106d23:	eb fd                	jmp    ffff800000106d22 <do_page_fault+0x2a5>

ffff800000106d25 <do_x87_FPU_error>:
ffff800000106d25:	f3 0f 1e fa          	endbr64
ffff800000106d29:	55                   	push   %rbp
ffff800000106d2a:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d2d:	41 57                	push   %r15
ffff800000106d2f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d33:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d33 <do_x87_FPU_error+0xe>
ffff800000106d3a:	49 bb 7d 81 00 00 00 	movabs $0x817d,%r11
ffff800000106d41:	00 00 00 
ffff800000106d44:	4d 01 da             	add    %r11,%r10
ffff800000106d47:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d4b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d4f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d56:	00 
ffff800000106d57:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d5b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d61:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d65:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d69:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d6c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d70:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d74:	49 89 c9             	mov    %rcx,%r9
ffff800000106d77:	49 89 d0             	mov    %rdx,%r8
ffff800000106d7a:	48 89 c1             	mov    %rax,%rcx
ffff800000106d7d:	48 b8 a0 a4 ff ff ff 	movabs $0xffffffffffffa4a0,%rax
ffff800000106d84:	ff ff ff 
ffff800000106d87:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d8b:	48 89 c2             	mov    %rax,%rdx
ffff800000106d8e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d93:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d98:	4d 89 d7             	mov    %r10,%r15
ffff800000106d9b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106da0:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106da7:	ff ff ff 
ffff800000106daa:	4d 01 d3             	add    %r10,%r11
ffff800000106dad:	41 ff d3             	call   *%r11
ffff800000106db0:	90                   	nop
ffff800000106db1:	eb fd                	jmp    ffff800000106db0 <do_x87_FPU_error+0x8b>

ffff800000106db3 <do_alignment_check>:
ffff800000106db3:	f3 0f 1e fa          	endbr64
ffff800000106db7:	55                   	push   %rbp
ffff800000106db8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106dbb:	41 57                	push   %r15
ffff800000106dbd:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106dc1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106dc1 <do_alignment_check+0xe>
ffff800000106dc8:	49 bb ef 80 00 00 00 	movabs $0x80ef,%r11
ffff800000106dcf:	00 00 00 
ffff800000106dd2:	4d 01 da             	add    %r11,%r10
ffff800000106dd5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106dd9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ddd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106de4:	00 
ffff800000106de5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106de9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106def:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106df3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106df7:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dfa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106dfe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e02:	49 89 c9             	mov    %rcx,%r9
ffff800000106e05:	49 89 d0             	mov    %rdx,%r8
ffff800000106e08:	48 89 c1             	mov    %rax,%rcx
ffff800000106e0b:	48 b8 e8 a4 ff ff ff 	movabs $0xffffffffffffa4e8,%rax
ffff800000106e12:	ff ff ff 
ffff800000106e15:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e19:	48 89 c2             	mov    %rax,%rdx
ffff800000106e1c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e21:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e26:	4d 89 d7             	mov    %r10,%r15
ffff800000106e29:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e2e:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106e35:	ff ff ff 
ffff800000106e38:	4d 01 d3             	add    %r10,%r11
ffff800000106e3b:	41 ff d3             	call   *%r11
ffff800000106e3e:	90                   	nop
ffff800000106e3f:	eb fd                	jmp    ffff800000106e3e <do_alignment_check+0x8b>

ffff800000106e41 <do_machine_check>:
ffff800000106e41:	f3 0f 1e fa          	endbr64
ffff800000106e45:	55                   	push   %rbp
ffff800000106e46:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e49:	41 57                	push   %r15
ffff800000106e4b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e4f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e4f <do_machine_check+0xe>
ffff800000106e56:	49 bb 61 80 00 00 00 	movabs $0x8061,%r11
ffff800000106e5d:	00 00 00 
ffff800000106e60:	4d 01 da             	add    %r11,%r10
ffff800000106e63:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e67:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e6b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e72:	00 
ffff800000106e73:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e77:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e7d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e85:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e88:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e8c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e90:	49 89 c9             	mov    %rcx,%r9
ffff800000106e93:	49 89 d0             	mov    %rdx,%r8
ffff800000106e96:	48 89 c1             	mov    %rax,%rcx
ffff800000106e99:	48 b8 30 a5 ff ff ff 	movabs $0xffffffffffffa530,%rax
ffff800000106ea0:	ff ff ff 
ffff800000106ea3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106ea7:	48 89 c2             	mov    %rax,%rdx
ffff800000106eaa:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106eaf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106eb4:	4d 89 d7             	mov    %r10,%r15
ffff800000106eb7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ebc:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106ec3:	ff ff ff 
ffff800000106ec6:	4d 01 d3             	add    %r10,%r11
ffff800000106ec9:	41 ff d3             	call   *%r11
ffff800000106ecc:	90                   	nop
ffff800000106ecd:	eb fd                	jmp    ffff800000106ecc <do_machine_check+0x8b>

ffff800000106ecf <do_SIMD_exception>:
ffff800000106ecf:	f3 0f 1e fa          	endbr64
ffff800000106ed3:	55                   	push   %rbp
ffff800000106ed4:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ed7:	41 57                	push   %r15
ffff800000106ed9:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106edd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106edd <do_SIMD_exception+0xe>
ffff800000106ee4:	49 bb d3 7f 00 00 00 	movabs $0x7fd3,%r11
ffff800000106eeb:	00 00 00 
ffff800000106eee:	4d 01 da             	add    %r11,%r10
ffff800000106ef1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ef5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ef9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f00:	00 
ffff800000106f01:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f05:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f0b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f13:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f16:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f1a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f1e:	49 89 c9             	mov    %rcx,%r9
ffff800000106f21:	49 89 d0             	mov    %rdx,%r8
ffff800000106f24:	48 89 c1             	mov    %rax,%rcx
ffff800000106f27:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff800000106f2e:	ff ff ff 
ffff800000106f31:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f35:	48 89 c2             	mov    %rax,%rdx
ffff800000106f38:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f3d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f42:	4d 89 d7             	mov    %r10,%r15
ffff800000106f45:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f4a:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106f51:	ff ff ff 
ffff800000106f54:	4d 01 d3             	add    %r10,%r11
ffff800000106f57:	41 ff d3             	call   *%r11
ffff800000106f5a:	90                   	nop
ffff800000106f5b:	eb fd                	jmp    ffff800000106f5a <do_SIMD_exception+0x8b>

ffff800000106f5d <do_virtualization_exception>:
ffff800000106f5d:	f3 0f 1e fa          	endbr64
ffff800000106f61:	55                   	push   %rbp
ffff800000106f62:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f65:	41 57                	push   %r15
ffff800000106f67:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106f6b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106f6b <do_virtualization_exception+0xe>
ffff800000106f72:	49 bb 45 7f 00 00 00 	movabs $0x7f45,%r11
ffff800000106f79:	00 00 00 
ffff800000106f7c:	4d 01 da             	add    %r11,%r10
ffff800000106f7f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f83:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f87:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f8e:	00 
ffff800000106f8f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f93:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f99:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f9d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fa1:	48 8b 08             	mov    (%rax),%rcx
ffff800000106fa4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106fa8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106fac:	49 89 c9             	mov    %rcx,%r9
ffff800000106faf:	49 89 d0             	mov    %rdx,%r8
ffff800000106fb2:	48 89 c1             	mov    %rax,%rcx
ffff800000106fb5:	48 b8 c0 a5 ff ff ff 	movabs $0xffffffffffffa5c0,%rax
ffff800000106fbc:	ff ff ff 
ffff800000106fbf:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106fc3:	48 89 c2             	mov    %rax,%rdx
ffff800000106fc6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106fcb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106fd0:	4d 89 d7             	mov    %r10,%r15
ffff800000106fd3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106fd8:	49 bb 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r11
ffff800000106fdf:	ff ff ff 
ffff800000106fe2:	4d 01 d3             	add    %r10,%r11
ffff800000106fe5:	41 ff d3             	call   *%r11
ffff800000106fe8:	90                   	nop
ffff800000106fe9:	eb fd                	jmp    ffff800000106fe8 <do_virtualization_exception+0x8b>

ffff800000106feb <sys_vector_init>:
ffff800000106feb:	f3 0f 1e fa          	endbr64
ffff800000106fef:	55                   	push   %rbp
ffff800000106ff0:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ff3:	53                   	push   %rbx
ffff800000106ff4:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106ff4 <sys_vector_init+0x9>
ffff800000106ffb:	49 bb bc 7e 00 00 00 	movabs $0x7ebc,%r11
ffff800000107002:	00 00 00 
ffff800000107005:	4c 01 db             	add    %r11,%rbx
ffff800000107008:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff80000010700f:	ff ff ff 
ffff800000107012:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107016:	48 89 c2             	mov    %rax,%rdx
ffff800000107019:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010701e:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000107023:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff80000010702a:	ff ff ff 
ffff80000010702d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107031:	ff d0                	call   *%rax
ffff800000107033:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010703a:	ff ff ff 
ffff80000010703d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107041:	48 89 c2             	mov    %rax,%rdx
ffff800000107044:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107049:	bf 01 00 00 00       	mov    $0x1,%edi
ffff80000010704e:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107055:	ff ff ff 
ffff800000107058:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010705c:	ff d0                	call   *%rax
ffff80000010705e:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000107065:	ff ff ff 
ffff800000107068:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010706c:	48 89 c2             	mov    %rax,%rdx
ffff80000010706f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107074:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000107079:	48 b8 16 6b ff ff ff 	movabs $0xffffffffffff6b16,%rax
ffff800000107080:	ff ff ff 
ffff800000107083:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107087:	ff d0                	call   *%rax
ffff800000107089:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000107090:	ff ff ff 
ffff800000107093:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107097:	48 89 c2             	mov    %rax,%rdx
ffff80000010709a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010709f:	bf 03 00 00 00       	mov    $0x3,%edi
ffff8000001070a4:	48 b8 72 6c ff ff ff 	movabs $0xffffffffffff6c72,%rax
ffff8000001070ab:	ff ff ff 
ffff8000001070ae:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070b2:	ff d0                	call   *%rax
ffff8000001070b4:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001070bb:	ff ff ff 
ffff8000001070be:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070c2:	48 89 c2             	mov    %rax,%rdx
ffff8000001070c5:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070ca:	bf 04 00 00 00       	mov    $0x4,%edi
ffff8000001070cf:	48 b8 72 6c ff ff ff 	movabs $0xffffffffffff6c72,%rax
ffff8000001070d6:	ff ff ff 
ffff8000001070d9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070dd:	ff d0                	call   *%rax
ffff8000001070df:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff8000001070e6:	ff ff ff 
ffff8000001070e9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070ed:	48 89 c2             	mov    %rax,%rdx
ffff8000001070f0:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070f5:	bf 05 00 00 00       	mov    $0x5,%edi
ffff8000001070fa:	48 b8 72 6c ff ff ff 	movabs $0xffffffffffff6c72,%rax
ffff800000107101:	ff ff ff 
ffff800000107104:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107108:	ff d0                	call   *%rax
ffff80000010710a:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107111:	ff ff ff 
ffff800000107114:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107118:	48 89 c2             	mov    %rax,%rdx
ffff80000010711b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107120:	bf 06 00 00 00       	mov    $0x6,%edi
ffff800000107125:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff80000010712c:	ff ff ff 
ffff80000010712f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107133:	ff d0                	call   *%rax
ffff800000107135:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff80000010713c:	ff ff ff 
ffff80000010713f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107143:	48 89 c2             	mov    %rax,%rdx
ffff800000107146:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010714b:	bf 07 00 00 00       	mov    $0x7,%edi
ffff800000107150:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107157:	ff ff ff 
ffff80000010715a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010715e:	ff d0                	call   *%rax
ffff800000107160:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff800000107167:	ff ff ff 
ffff80000010716a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010716e:	48 89 c2             	mov    %rax,%rdx
ffff800000107171:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107176:	bf 08 00 00 00       	mov    $0x8,%edi
ffff80000010717b:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107182:	ff ff ff 
ffff800000107185:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107189:	ff d0                	call   *%rax
ffff80000010718b:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff800000107192:	ff ff ff 
ffff800000107195:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107199:	48 89 c2             	mov    %rax,%rdx
ffff80000010719c:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071a1:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001071a6:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff8000001071ad:	ff ff ff 
ffff8000001071b0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071b4:	ff d0                	call   *%rax
ffff8000001071b6:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff8000001071bd:	ff ff ff 
ffff8000001071c0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071c4:	48 89 c2             	mov    %rax,%rdx
ffff8000001071c7:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071cc:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff8000001071d1:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff8000001071d8:	ff ff ff 
ffff8000001071db:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071df:	ff d0                	call   *%rax
ffff8000001071e1:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff8000001071e8:	ff ff ff 
ffff8000001071eb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001071f2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071f7:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff8000001071fc:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107203:	ff ff ff 
ffff800000107206:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010720a:	ff d0                	call   *%rax
ffff80000010720c:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107213:	ff ff ff 
ffff800000107216:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010721a:	48 89 c2             	mov    %rax,%rdx
ffff80000010721d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107222:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff800000107227:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff80000010722e:	ff ff ff 
ffff800000107231:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107235:	ff d0                	call   *%rax
ffff800000107237:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff80000010723e:	ff ff ff 
ffff800000107241:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107245:	48 89 c2             	mov    %rax,%rdx
ffff800000107248:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010724d:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff800000107252:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107259:	ff ff ff 
ffff80000010725c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107260:	ff d0                	call   *%rax
ffff800000107262:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff800000107269:	ff ff ff 
ffff80000010726c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107270:	48 89 c2             	mov    %rax,%rdx
ffff800000107273:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107278:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff80000010727d:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107284:	ff ff ff 
ffff800000107287:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010728b:	ff d0                	call   *%rax
ffff80000010728d:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff800000107294:	ff ff ff 
ffff800000107297:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010729b:	48 89 c2             	mov    %rax,%rdx
ffff80000010729e:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072a3:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001072a8:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff8000001072af:	ff ff ff 
ffff8000001072b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072b6:	ff d0                	call   *%rax
ffff8000001072b8:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff8000001072bf:	ff ff ff 
ffff8000001072c2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072c6:	48 89 c2             	mov    %rax,%rdx
ffff8000001072c9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072ce:	bf 11 00 00 00       	mov    $0x11,%edi
ffff8000001072d3:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff8000001072da:	ff ff ff 
ffff8000001072dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072e1:	ff d0                	call   *%rax
ffff8000001072e3:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff8000001072ea:	ff ff ff 
ffff8000001072ed:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072f1:	48 89 c2             	mov    %rax,%rdx
ffff8000001072f4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072f9:	bf 12 00 00 00       	mov    $0x12,%edi
ffff8000001072fe:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107305:	ff ff ff 
ffff800000107308:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010730c:	ff d0                	call   *%rax
ffff80000010730e:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff800000107315:	ff ff ff 
ffff800000107318:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010731c:	48 89 c2             	mov    %rax,%rdx
ffff80000010731f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107324:	bf 13 00 00 00       	mov    $0x13,%edi
ffff800000107329:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff800000107330:	ff ff ff 
ffff800000107333:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107337:	ff d0                	call   *%rax
ffff800000107339:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff800000107340:	ff ff ff 
ffff800000107343:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107347:	48 89 c2             	mov    %rax,%rdx
ffff80000010734a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010734f:	bf 14 00 00 00       	mov    $0x14,%edi
ffff800000107354:	48 b8 c4 6b ff ff ff 	movabs $0xffffffffffff6bc4,%rax
ffff80000010735b:	ff ff ff 
ffff80000010735e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107362:	ff d0                	call   *%rax
ffff800000107364:	90                   	nop
ffff800000107365:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000107369:	c9                   	leave
ffff80000010736a:	c3                   	ret

ffff80000010736b <RESTORE_ALL>:
ffff80000010736b:	41 5f                	pop    %r15
ffff80000010736d:	41 5e                	pop    %r14
ffff80000010736f:	41 5d                	pop    %r13
ffff800000107371:	41 5c                	pop    %r12
ffff800000107373:	41 5b                	pop    %r11
ffff800000107375:	41 5a                	pop    %r10
ffff800000107377:	41 59                	pop    %r9
ffff800000107379:	41 58                	pop    %r8
ffff80000010737b:	5b                   	pop    %rbx
ffff80000010737c:	59                   	pop    %rcx
ffff80000010737d:	5a                   	pop    %rdx
ffff80000010737e:	5e                   	pop    %rsi
ffff80000010737f:	5f                   	pop    %rdi
ffff800000107380:	5d                   	pop    %rbp
ffff800000107381:	58                   	pop    %rax
ffff800000107382:	8e d8                	mov    %eax,%ds
ffff800000107384:	58                   	pop    %rax
ffff800000107385:	8e c0                	mov    %eax,%es
ffff800000107387:	58                   	pop    %rax
ffff800000107388:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010738c:	48 cf                	iretq

ffff80000010738e <divide_error>:
ffff80000010738e:	6a 00                	push   $0x0
ffff800000107390:	50                   	push   %rax
ffff800000107391:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105d01 <do_divide_error>
ffff800000107398:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010739c:	eb 00                	jmp    ffff80000010739e <error_code>

ffff80000010739e <error_code>:
ffff80000010739e:	50                   	push   %rax
ffff80000010739f:	8c c0                	mov    %es,%eax
ffff8000001073a1:	50                   	push   %rax
ffff8000001073a2:	8c d8                	mov    %ds,%eax
ffff8000001073a4:	50                   	push   %rax
ffff8000001073a5:	48 31 c0             	xor    %rax,%rax
ffff8000001073a8:	55                   	push   %rbp
ffff8000001073a9:	57                   	push   %rdi
ffff8000001073aa:	56                   	push   %rsi
ffff8000001073ab:	52                   	push   %rdx
ffff8000001073ac:	51                   	push   %rcx
ffff8000001073ad:	53                   	push   %rbx
ffff8000001073ae:	41 50                	push   %r8
ffff8000001073b0:	41 51                	push   %r9
ffff8000001073b2:	41 52                	push   %r10
ffff8000001073b4:	41 53                	push   %r11
ffff8000001073b6:	41 54                	push   %r12
ffff8000001073b8:	41 55                	push   %r13
ffff8000001073ba:	41 56                	push   %r14
ffff8000001073bc:	41 57                	push   %r15
ffff8000001073be:	fc                   	cld
ffff8000001073bf:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff8000001073c6:	00 
ffff8000001073c7:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff8000001073ce:	00 
ffff8000001073cf:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff8000001073d6:	8e df                	mov    %edi,%ds
ffff8000001073d8:	8e c7                	mov    %edi,%es
ffff8000001073da:	48 89 e7             	mov    %rsp,%rdi
ffff8000001073dd:	ff d2                	call   *%rdx
ffff8000001073df:	eb 00                	jmp    ffff8000001073e1 <ret_from_intr>

ffff8000001073e1 <ret_from_intr>:
ffff8000001073e1:	eb 88                	jmp    ffff80000010736b <RESTORE_ALL>

ffff8000001073e3 <debug>:
ffff8000001073e3:	6a 00                	push   $0x0
ffff8000001073e5:	50                   	push   %rax
ffff8000001073e6:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105d8f <do_debug>
ffff8000001073ed:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073f1:	eb ab                	jmp    ffff80000010739e <error_code>

ffff8000001073f3 <nmi>:
ffff8000001073f3:	50                   	push   %rax
ffff8000001073f4:	fc                   	cld
ffff8000001073f5:	50                   	push   %rax
ffff8000001073f6:	50                   	push   %rax
ffff8000001073f7:	8c c0                	mov    %es,%eax
ffff8000001073f9:	50                   	push   %rax
ffff8000001073fa:	8c d8                	mov    %ds,%eax
ffff8000001073fc:	50                   	push   %rax
ffff8000001073fd:	48 31 c0             	xor    %rax,%rax
ffff800000107400:	55                   	push   %rbp
ffff800000107401:	57                   	push   %rdi
ffff800000107402:	56                   	push   %rsi
ffff800000107403:	52                   	push   %rdx
ffff800000107404:	51                   	push   %rcx
ffff800000107405:	53                   	push   %rbx
ffff800000107406:	41 50                	push   %r8
ffff800000107408:	41 51                	push   %r9
ffff80000010740a:	41 52                	push   %r10
ffff80000010740c:	41 53                	push   %r11
ffff80000010740e:	41 54                	push   %r12
ffff800000107410:	41 55                	push   %r13
ffff800000107412:	41 56                	push   %r14
ffff800000107414:	41 57                	push   %r15
ffff800000107416:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff80000010741d:	8e da                	mov    %edx,%ds
ffff80000010741f:	8e c2                	mov    %edx,%es
ffff800000107421:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff800000107428:	48 89 e6             	mov    %rsp,%rsi
ffff80000010742b:	e8 ed e9 ff ff       	call   ffff800000105e1d <do_nmi>
ffff800000107430:	e9 36 ff ff ff       	jmp    ffff80000010736b <RESTORE_ALL>

ffff800000107435 <invalid_TSS>:
ffff800000107435:	50                   	push   %rax
ffff800000107436:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff80000010628d <do_invalid_TSS>
ffff80000010743d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107441:	e9 58 ff ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107446 <page_fault>:
ffff800000107446:	50                   	push   %rax
ffff800000107447:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106a7d <do_page_fault>
ffff80000010744e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107452:	e9 47 ff ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107457 <int3>:
ffff800000107457:	6a 00                	push   $0x0
ffff800000107459:	50                   	push   %rax
ffff80000010745a:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105eab <do_int3>
ffff800000107461:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107465:	e9 34 ff ff ff       	jmp    ffff80000010739e <error_code>

ffff80000010746a <overflow>:
ffff80000010746a:	6a 00                	push   $0x0
ffff80000010746c:	50                   	push   %rax
ffff80000010746d:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105f39 <do_overflow>
ffff800000107474:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107478:	e9 21 ff ff ff       	jmp    ffff80000010739e <error_code>

ffff80000010747d <bounds>:
ffff80000010747d:	6a 00                	push   $0x0
ffff80000010747f:	50                   	push   %rax
ffff800000107480:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105fc7 <do_bounds>
ffff800000107487:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010748b:	e9 0e ff ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107490 <undefined_opcode>:
ffff800000107490:	6a 00                	push   $0x0
ffff800000107492:	50                   	push   %rax
ffff800000107493:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff800000106055 <do_undefined_opcode>
ffff80000010749a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010749e:	e9 fb fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074a3 <dev_not_available>:
ffff8000001074a3:	6a 00                	push   $0x0
ffff8000001074a5:	50                   	push   %rax
ffff8000001074a6:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff8000001060e3 <do_dev_not_available>
ffff8000001074ad:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074b1:	e9 e8 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074b6 <double_fault>:
ffff8000001074b6:	50                   	push   %rax
ffff8000001074b7:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff800000106171 <do_double_fault>
ffff8000001074be:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074c2:	e9 d7 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074c7 <coprocessor_segment_overrun>:
ffff8000001074c7:	6a 00                	push   $0x0
ffff8000001074c9:	50                   	push   %rax
ffff8000001074ca:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff8000001061ff <do_coprocessor_segment_overrun>
ffff8000001074d1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074d5:	e9 c4 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074da <segment_not_present>:
ffff8000001074da:	50                   	push   %rax
ffff8000001074db:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff800000106489 <do_segment_not_present>
ffff8000001074e2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074e6:	e9 b3 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074eb <stack_segment_fault>:
ffff8000001074eb:	50                   	push   %rax
ffff8000001074ec:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff800000106685 <do_stack_segment_fault>
ffff8000001074f3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074f7:	e9 a2 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff8000001074fc <general_protection>:
ffff8000001074fc:	50                   	push   %rax
ffff8000001074fd:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff800000106881 <do_general_protection>
ffff800000107504:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107508:	e9 91 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff80000010750d <x87_FPU_error>:
ffff80000010750d:	6a 00                	push   $0x0
ffff80000010750f:	50                   	push   %rax
ffff800000107510:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106d25 <do_x87_FPU_error>
ffff800000107517:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010751b:	e9 7e fe ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107520 <alignment_check>:
ffff800000107520:	50                   	push   %rax
ffff800000107521:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106db3 <do_alignment_check>
ffff800000107528:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010752c:	e9 6d fe ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107531 <machine_check>:
ffff800000107531:	6a 00                	push   $0x0
ffff800000107533:	50                   	push   %rax
ffff800000107534:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106e41 <do_machine_check>
ffff80000010753b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010753f:	e9 5a fe ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107544 <SIMD_exception>:
ffff800000107544:	6a 00                	push   $0x0
ffff800000107546:	50                   	push   %rax
ffff800000107547:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106ecf <do_SIMD_exception>
ffff80000010754e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107552:	e9 47 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff800000107557 <virtualization_exception>:
ffff800000107557:	6a 00                	push   $0x0
ffff800000107559:	50                   	push   %rax
ffff80000010755a:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106f5d <do_virtualization_exception>
ffff800000107561:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107565:	e9 34 fe ff ff       	jmp    ffff80000010739e <error_code>

ffff80000010756a <Cmemset>:
ffff80000010756a:	f3 0f 1e fa          	endbr64
ffff80000010756e:	55                   	push   %rbp
ffff80000010756f:	48 89 e5             	mov    %rsp,%rbp
ffff800000107572:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107572 <Cmemset+0x8>
ffff800000107579:	49 bb 3e 79 00 00 00 	movabs $0x793e,%r11
ffff800000107580:	00 00 00 
ffff800000107583:	4c 01 d8             	add    %r11,%rax
ffff800000107586:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010758a:	89 f0                	mov    %esi,%eax
ffff80000010758c:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff800000107590:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff800000107593:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107597:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010759b:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff80000010759f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001075a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075a7:	48 c1 e0 08          	shl    $0x8,%rax
ffff8000001075ab:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075b3:	48 c1 e0 10          	shl    $0x10,%rax
ffff8000001075b7:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075bf:	48 c1 e0 20          	shl    $0x20,%rax
ffff8000001075c3:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff8000001075c7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001075cb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001075cf:	eb 15                	jmp    ffff8000001075e6 <Cmemset+0x7c>
ffff8000001075d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075d5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001075d9:	48 89 10             	mov    %rdx,(%rax)
ffff8000001075dc:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff8000001075e1:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff8000001075e6:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff8000001075eb:	7f e4                	jg     ffff8000001075d1 <Cmemset+0x67>
ffff8000001075ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001075f1:	83 e0 04             	and    $0x4,%eax
ffff8000001075f4:	48 85 c0             	test   %rax,%rax
ffff8000001075f7:	74 11                	je     ffff80000010760a <Cmemset+0xa0>
ffff8000001075f9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075fd:	89 c2                	mov    %eax,%edx
ffff8000001075ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107603:	89 10                	mov    %edx,(%rax)
ffff800000107605:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff80000010760a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010760e:	83 e0 02             	and    $0x2,%eax
ffff800000107611:	48 85 c0             	test   %rax,%rax
ffff800000107614:	74 12                	je     ffff800000107628 <Cmemset+0xbe>
ffff800000107616:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010761a:	89 c2                	mov    %eax,%edx
ffff80000010761c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107620:	66 89 10             	mov    %dx,(%rax)
ffff800000107623:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff800000107628:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010762c:	83 e0 01             	and    $0x1,%eax
ffff80000010762f:	48 85 c0             	test   %rax,%rax
ffff800000107632:	74 0a                	je     ffff80000010763e <Cmemset+0xd4>
ffff800000107634:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107638:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff80000010763c:	88 10                	mov    %dl,(%rax)
ffff80000010763e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107642:	5d                   	pop    %rbp
ffff800000107643:	c3                   	ret

ffff800000107644 <Get_gdt>:
ffff800000107644:	f3 0f 1e fa          	endbr64
ffff800000107648:	55                   	push   %rbp
ffff800000107649:	48 89 e5             	mov    %rsp,%rbp
ffff80000010764c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010764c <Get_gdt+0x8>
ffff800000107653:	49 bb 64 78 00 00 00 	movabs $0x7864,%r11
ffff80000010765a:	00 00 00 
ffff80000010765d:	4c 01 d8             	add    %r11,%rax
ffff800000107660:	0f 20 d8             	mov    %cr3,%rax
ffff800000107663:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107667:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010766b:	5d                   	pop    %rbp
ffff80000010766c:	c3                   	ret

ffff80000010766d <page_init>:
ffff80000010766d:	f3 0f 1e fa          	endbr64
ffff800000107671:	55                   	push   %rbp
ffff800000107672:	48 89 e5             	mov    %rsp,%rbp
ffff800000107675:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000107675 <page_init+0x8>
ffff80000010767c:	49 bb 3b 78 00 00 00 	movabs $0x783b,%r11
ffff800000107683:	00 00 00 
ffff800000107686:	4c 01 d8             	add    %r11,%rax
ffff800000107689:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010768d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107691:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107695:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107699:	48 85 d2             	test   %rdx,%rdx
ffff80000010769c:	0f 85 d0 00 00 00    	jne    ffff800000107772 <page_init+0x105>
ffff8000001076a2:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001076a9:	00 00 00 
ffff8000001076ac:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff8000001076b3:	00 
ffff8000001076b4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001076b8:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001076bc:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff8000001076c0:	48 c1 e2 03          	shl    $0x3,%rdx
ffff8000001076c4:	48 01 ca             	add    %rcx,%rdx
ffff8000001076c7:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001076ca:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001076ce:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001076d2:	48 c1 ea 15          	shr    $0x15,%rdx
ffff8000001076d6:	83 e2 3f             	and    $0x3f,%edx
ffff8000001076d9:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001076de:	89 d1                	mov    %edx,%ecx
ffff8000001076e0:	48 d3 e7             	shl    %cl,%rdi
ffff8000001076e3:	48 89 f9             	mov    %rdi,%rcx
ffff8000001076e6:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001076ed:	00 00 00 
ffff8000001076f0:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff8000001076f7:	00 
ffff8000001076f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076fc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107700:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107704:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107708:	48 01 d0             	add    %rdx,%rax
ffff80000010770b:	48 09 ce             	or     %rcx,%rsi
ffff80000010770e:	48 89 f2             	mov    %rsi,%rdx
ffff800000107711:	48 89 10             	mov    %rdx,(%rax)
ffff800000107714:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107718:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010771c:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107720:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107724:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000107728:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010772c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107730:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107734:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107738:	48 8b 00             	mov    (%rax),%rax
ffff80000010773b:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff80000010773f:	48 83 c2 01          	add    $0x1,%rdx
ffff800000107743:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107747:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010774b:	48 8b 00             	mov    (%rax),%rax
ffff80000010774e:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000107752:	48 83 ea 01          	sub    $0x1,%rdx
ffff800000107756:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff80000010775a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010775e:	48 8b 00             	mov    (%rax),%rax
ffff800000107761:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff800000107765:	48 83 c2 01          	add    $0x1,%rdx
ffff800000107769:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff80000010776d:	e9 0a 01 00 00       	jmp    ffff80000010787c <page_init+0x20f>
ffff800000107772:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107776:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010777a:	83 e2 04             	and    $0x4,%edx
ffff80000010777d:	48 85 d2             	test   %rdx,%rdx
ffff800000107780:	75 2e                	jne    ffff8000001077b0 <page_init+0x143>
ffff800000107782:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107786:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010778a:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107790:	48 85 d2             	test   %rdx,%rdx
ffff800000107793:	75 1b                	jne    ffff8000001077b0 <page_init+0x143>
ffff800000107795:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107799:	83 e2 04             	and    $0x4,%edx
ffff80000010779c:	48 85 d2             	test   %rdx,%rdx
ffff80000010779f:	75 0f                	jne    ffff8000001077b0 <page_init+0x143>
ffff8000001077a1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff8000001077a5:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff8000001077ab:	48 85 d2             	test   %rdx,%rdx
ffff8000001077ae:	74 43                	je     ffff8000001077f3 <page_init+0x186>
ffff8000001077b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077b4:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001077b8:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff8000001077bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001077bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077c3:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001077c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077cb:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001077cf:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001077d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077d7:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001077db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001077df:	48 8b 00             	mov    (%rax),%rax
ffff8000001077e2:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001077e6:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001077ea:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001077ee:	e9 89 00 00 00       	jmp    ffff80000010787c <page_init+0x20f>
ffff8000001077f3:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001077fa:	00 00 00 
ffff8000001077fd:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107804:	00 
ffff800000107805:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107809:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff80000010780d:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107811:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107815:	48 01 ca             	add    %rcx,%rdx
ffff800000107818:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010781b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010781f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107823:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107827:	83 e2 3f             	and    $0x3f,%edx
ffff80000010782a:	bf 01 00 00 00       	mov    $0x1,%edi
ffff80000010782f:	89 d1                	mov    %edx,%ecx
ffff800000107831:	48 d3 e7             	shl    %cl,%rdi
ffff800000107834:	48 89 f9             	mov    %rdi,%rcx
ffff800000107837:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010783e:	00 00 00 
ffff800000107841:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff800000107848:	00 
ffff800000107849:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010784d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107851:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107855:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107859:	48 01 d0             	add    %rdx,%rax
ffff80000010785c:	48 09 ce             	or     %rcx,%rsi
ffff80000010785f:	48 89 f2             	mov    %rsi,%rdx
ffff800000107862:	48 89 10             	mov    %rdx,(%rax)
ffff800000107865:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107869:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010786d:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107871:	48 89 c2             	mov    %rax,%rdx
ffff800000107874:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107878:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010787c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107881:	5d                   	pop    %rbp
ffff800000107882:	c3                   	ret

ffff800000107883 <init_memory>:
ffff800000107883:	f3 0f 1e fa          	endbr64
ffff800000107887:	55                   	push   %rbp
ffff800000107888:	48 89 e5             	mov    %rsp,%rbp
ffff80000010788b:	41 57                	push   %r15
ffff80000010788d:	53                   	push   %rbx
ffff80000010788e:	48 83 ec 70          	sub    $0x70,%rsp
ffff800000107892:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107892 <init_memory+0xf>
ffff800000107899:	49 bb 1e 76 00 00 00 	movabs $0x761e,%r11
ffff8000001078a0:	00 00 00 
ffff8000001078a3:	4c 01 db             	add    %r11,%rbx
ffff8000001078a6:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001078ad:	00 
ffff8000001078ae:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff8000001078b5:	00 
ffff8000001078b6:	48 b8 10 a6 ff ff ff 	movabs $0xffffffffffffa610,%rax
ffff8000001078bd:	ff ff ff 
ffff8000001078c0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078c4:	48 89 c2             	mov    %rax,%rdx
ffff8000001078c7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001078cc:	bf ff 00 00 00       	mov    $0xff,%edi
ffff8000001078d1:	49 89 df             	mov    %rbx,%r15
ffff8000001078d4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078d9:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001078e0:	ff ff ff 
ffff8000001078e3:	48 01 d9             	add    %rbx,%rcx
ffff8000001078e6:	ff d1                	call   *%rcx
ffff8000001078e8:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff8000001078ef:	80 ff ff 
ffff8000001078f2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001078f6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001078fd:	e9 a2 01 00 00       	jmp    ffff800000107aa4 <init_memory+0x221>
ffff800000107902:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107906:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107909:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010790d:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107911:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107915:	48 8b 00             	mov    (%rax),%rax
ffff800000107918:	41 89 c9             	mov    %ecx,%r9d
ffff80000010791b:	49 89 d0             	mov    %rdx,%r8
ffff80000010791e:	48 89 c1             	mov    %rax,%rcx
ffff800000107921:	48 b8 88 a6 ff ff ff 	movabs $0xffffffffffffa688,%rax
ffff800000107928:	ff ff ff 
ffff80000010792b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010792f:	48 89 c2             	mov    %rax,%rdx
ffff800000107932:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107937:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010793c:	49 89 df             	mov    %rbx,%r15
ffff80000010793f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107944:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff80000010794b:	ff ff ff 
ffff80000010794e:	49 01 da             	add    %rbx,%r10
ffff800000107951:	41 ff d2             	call   *%r10
ffff800000107954:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff80000010795b:	00 
ffff80000010795c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107960:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107963:	83 f8 01             	cmp    $0x1,%eax
ffff800000107966:	75 0c                	jne    ffff800000107974 <init_memory+0xf1>
ffff800000107968:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010796c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107970:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107974:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010797b:	00 00 00 
ffff80000010797e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107981:	48 63 d0             	movslq %eax,%rdx
ffff800000107984:	48 01 d9             	add    %rbx,%rcx
ffff800000107987:	48 89 d0             	mov    %rdx,%rax
ffff80000010798a:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010798e:	48 01 d0             	add    %rdx,%rax
ffff800000107991:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107995:	48 01 c8             	add    %rcx,%rax
ffff800000107998:	48 8b 10             	mov    (%rax),%rdx
ffff80000010799b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010799f:	48 8b 00             	mov    (%rax),%rax
ffff8000001079a2:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001079a6:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001079ad:	00 00 00 
ffff8000001079b0:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079b3:	48 63 d0             	movslq %eax,%rdx
ffff8000001079b6:	48 01 de             	add    %rbx,%rsi
ffff8000001079b9:	48 89 d0             	mov    %rdx,%rax
ffff8000001079bc:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079c0:	48 01 d0             	add    %rdx,%rax
ffff8000001079c3:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079c7:	48 01 f0             	add    %rsi,%rax
ffff8000001079ca:	48 89 08             	mov    %rcx,(%rax)
ffff8000001079cd:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff8000001079d4:	00 00 00 
ffff8000001079d7:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001079da:	48 63 d0             	movslq %eax,%rdx
ffff8000001079dd:	48 89 d0             	mov    %rdx,%rax
ffff8000001079e0:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079e4:	48 01 d0             	add    %rdx,%rax
ffff8000001079e7:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079eb:	48 01 d8             	add    %rbx,%rax
ffff8000001079ee:	48 01 c8             	add    %rcx,%rax
ffff8000001079f1:	48 83 c0 08          	add    $0x8,%rax
ffff8000001079f5:	48 8b 10             	mov    (%rax),%rdx
ffff8000001079f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001079fc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107a00:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107a04:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107a0b:	00 00 00 
ffff800000107a0e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a11:	48 63 d0             	movslq %eax,%rdx
ffff800000107a14:	48 89 d0             	mov    %rdx,%rax
ffff800000107a17:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a1b:	48 01 d0             	add    %rdx,%rax
ffff800000107a1e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a22:	48 01 d8             	add    %rbx,%rax
ffff800000107a25:	48 01 f0             	add    %rsi,%rax
ffff800000107a28:	48 83 c0 08          	add    $0x8,%rax
ffff800000107a2c:	48 89 08             	mov    %rcx,(%rax)
ffff800000107a2f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a33:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107a36:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107a3d:	00 00 00 
ffff800000107a40:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a43:	48 63 d0             	movslq %eax,%rdx
ffff800000107a46:	48 01 de             	add    %rbx,%rsi
ffff800000107a49:	48 89 d0             	mov    %rdx,%rax
ffff800000107a4c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a50:	48 01 d0             	add    %rdx,%rax
ffff800000107a53:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107a57:	48 01 f0             	add    %rsi,%rax
ffff800000107a5a:	48 83 c0 10          	add    $0x10,%rax
ffff800000107a5e:	89 08                	mov    %ecx,(%rax)
ffff800000107a60:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107a63:	48 98                	cltq
ffff800000107a65:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107a6c:	00 00 00 
ffff800000107a6f:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff800000107a76:	00 
ffff800000107a77:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107a7c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a80:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107a83:	83 f8 04             	cmp    $0x4,%eax
ffff800000107a86:	77 26                	ja     ffff800000107aae <init_memory+0x22b>
ffff800000107a88:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a8c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107a90:	48 85 c0             	test   %rax,%rax
ffff800000107a93:	74 19                	je     ffff800000107aae <init_memory+0x22b>
ffff800000107a95:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a99:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107a9c:	85 c0                	test   %eax,%eax
ffff800000107a9e:	74 0e                	je     ffff800000107aae <init_memory+0x22b>
ffff800000107aa0:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff800000107aa4:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff800000107aa8:	0f 8e 54 fe ff ff    	jle    ffff800000107902 <init_memory+0x7f>
ffff800000107aae:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ab2:	48 89 c1             	mov    %rax,%rcx
ffff800000107ab5:	48 b8 b8 a6 ff ff ff 	movabs $0xffffffffffffa6b8,%rax
ffff800000107abc:	ff ff ff 
ffff800000107abf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ac3:	48 89 c2             	mov    %rax,%rdx
ffff800000107ac6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107acb:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107ad0:	49 89 df             	mov    %rbx,%r15
ffff800000107ad3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107ad8:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000107adf:	ff ff ff 
ffff800000107ae2:	49 01 d8             	add    %rbx,%r8
ffff800000107ae5:	41 ff d0             	call   *%r8
ffff800000107ae8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aec:	48 89 c1             	mov    %rax,%rcx
ffff800000107aef:	48 b8 d7 a6 ff ff ff 	movabs $0xffffffffffffa6d7,%rax
ffff800000107af6:	ff ff ff 
ffff800000107af9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107afd:	48 89 c2             	mov    %rax,%rdx
ffff800000107b00:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b05:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107b0a:	49 89 df             	mov    %rbx,%r15
ffff800000107b0d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b12:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000107b19:	ff ff ff 
ffff800000107b1c:	49 01 d8             	add    %rbx,%r8
ffff800000107b1f:	41 ff d0             	call   *%r8
ffff800000107b22:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b26:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000107b2a:	89 45 bc             	mov    %eax,-0x44(%rbp)
ffff800000107b2d:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff800000107b30:	89 c1                	mov    %eax,%ecx
ffff800000107b32:	48 b8 f1 a6 ff ff ff 	movabs $0xffffffffffffa6f1,%rax
ffff800000107b39:	ff ff ff 
ffff800000107b3c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b40:	48 89 c2             	mov    %rax,%rdx
ffff800000107b43:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b48:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107b4d:	49 89 df             	mov    %rbx,%r15
ffff800000107b50:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b55:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000107b5c:	ff ff ff 
ffff800000107b5f:	49 01 d8             	add    %rbx,%r8
ffff800000107b62:	41 ff d0             	call   *%r8
ffff800000107b65:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107b6c:	00 
ffff800000107b6d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107b74:	e9 ed 00 00 00       	jmp    ffff800000107c66 <init_memory+0x3e3>
ffff800000107b79:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107b80:	00 00 00 
ffff800000107b83:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107b86:	48 63 d0             	movslq %eax,%rdx
ffff800000107b89:	48 01 d9             	add    %rbx,%rcx
ffff800000107b8c:	48 89 d0             	mov    %rdx,%rax
ffff800000107b8f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b93:	48 01 d0             	add    %rdx,%rax
ffff800000107b96:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107b9a:	48 01 c8             	add    %rcx,%rax
ffff800000107b9d:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ba1:	8b 00                	mov    (%rax),%eax
ffff800000107ba3:	83 f8 01             	cmp    $0x1,%eax
ffff800000107ba6:	0f 85 b2 00 00 00    	jne    ffff800000107c5e <init_memory+0x3db>
ffff800000107bac:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107bb3:	00 00 00 
ffff800000107bb6:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107bb9:	48 63 d0             	movslq %eax,%rdx
ffff800000107bbc:	48 01 d9             	add    %rbx,%rcx
ffff800000107bbf:	48 89 d0             	mov    %rdx,%rax
ffff800000107bc2:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bc6:	48 01 d0             	add    %rdx,%rax
ffff800000107bc9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bcd:	48 01 c8             	add    %rcx,%rax
ffff800000107bd0:	48 8b 00             	mov    (%rax),%rax
ffff800000107bd3:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107bd9:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107bdf:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000107be3:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107bea:	00 00 00 
ffff800000107bed:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107bf0:	48 63 d0             	movslq %eax,%rdx
ffff800000107bf3:	48 01 d9             	add    %rbx,%rcx
ffff800000107bf6:	48 89 d0             	mov    %rdx,%rax
ffff800000107bf9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107bfd:	48 01 d0             	add    %rdx,%rax
ffff800000107c00:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c04:	48 01 c8             	add    %rcx,%rax
ffff800000107c07:	48 8b 08             	mov    (%rax),%rcx
ffff800000107c0a:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c11:	00 00 00 
ffff800000107c14:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107c17:	48 63 d0             	movslq %eax,%rdx
ffff800000107c1a:	48 89 d0             	mov    %rdx,%rax
ffff800000107c1d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c21:	48 01 d0             	add    %rdx,%rax
ffff800000107c24:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c28:	48 01 d8             	add    %rbx,%rax
ffff800000107c2b:	48 01 f0             	add    %rsi,%rax
ffff800000107c2e:	48 83 c0 08          	add    $0x8,%rax
ffff800000107c32:	48 8b 00             	mov    (%rax),%rax
ffff800000107c35:	48 01 c8             	add    %rcx,%rax
ffff800000107c38:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107c3e:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000107c42:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107c46:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
ffff800000107c4a:	73 15                	jae    ffff800000107c61 <init_memory+0x3de>
ffff800000107c4c:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107c50:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000107c54:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107c58:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107c5c:	eb 04                	jmp    ffff800000107c62 <init_memory+0x3df>
ffff800000107c5e:	90                   	nop
ffff800000107c5f:	eb 01                	jmp    ffff800000107c62 <init_memory+0x3df>
ffff800000107c61:	90                   	nop
ffff800000107c62:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107c66:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107c69:	48 98                	cltq
ffff800000107c6b:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107c72:	00 00 00 
ffff800000107c75:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000107c7c:	00 
ffff800000107c7d:	48 39 c2             	cmp    %rax,%rdx
ffff800000107c80:	0f 83 f3 fe ff ff    	jae    ffff800000107b79 <init_memory+0x2f6>
ffff800000107c86:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107c8a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c8e:	49 89 d0             	mov    %rdx,%r8
ffff800000107c91:	48 89 c1             	mov    %rax,%rcx
ffff800000107c94:	48 b8 10 a7 ff ff ff 	movabs $0xffffffffffffa710,%rax
ffff800000107c9b:	ff ff ff 
ffff800000107c9e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ca2:	48 89 c2             	mov    %rax,%rdx
ffff800000107ca5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107caa:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107caf:	49 89 df             	mov    %rbx,%r15
ffff800000107cb2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107cb7:	49 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r9
ffff800000107cbe:	ff ff ff 
ffff800000107cc1:	49 01 d9             	add    %rbx,%r9
ffff800000107cc4:	41 ff d1             	call   *%r9
ffff800000107cc7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107cce:	00 00 00 
ffff800000107cd1:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107cd8:	00 
ffff800000107cd9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ce0:	00 00 00 
ffff800000107ce3:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107ce7:	48 89 d0             	mov    %rdx,%rax
ffff800000107cea:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cee:	48 01 d0             	add    %rdx,%rax
ffff800000107cf1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cf5:	48 01 c8             	add    %rcx,%rax
ffff800000107cf8:	48 8b 08             	mov    (%rax),%rcx
ffff800000107cfb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d02:	00 00 00 
ffff800000107d05:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107d0c:	00 
ffff800000107d0d:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107d14:	00 00 00 
ffff800000107d17:	48 89 d0             	mov    %rdx,%rax
ffff800000107d1a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d1e:	48 01 d0             	add    %rdx,%rax
ffff800000107d21:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107d25:	48 01 d8             	add    %rbx,%rax
ffff800000107d28:	48 01 f0             	add    %rsi,%rax
ffff800000107d2b:	48 83 c0 08          	add    $0x8,%rax
ffff800000107d2f:	48 8b 00             	mov    (%rax),%rax
ffff800000107d32:	48 01 c8             	add    %rcx,%rax
ffff800000107d35:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107d39:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d40:	00 00 00 
ffff800000107d43:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107d4a:	00 
ffff800000107d4b:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107d51:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107d57:	48 89 c2             	mov    %rax,%rdx
ffff800000107d5a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d61:	00 00 00 
ffff800000107d64:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107d6b:	00 
ffff800000107d6c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d70:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107d74:	48 89 c2             	mov    %rax,%rdx
ffff800000107d77:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107d7e:	00 00 00 
ffff800000107d81:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000107d88:	00 
ffff800000107d89:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d8d:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107d91:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000107d95:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000107d99:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107d9d:	48 89 c2             	mov    %rax,%rdx
ffff800000107da0:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107da7:	00 00 00 
ffff800000107daa:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000107db1:	00 
ffff800000107db2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107db9:	00 00 00 
ffff800000107dbc:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107dc3:	00 
ffff800000107dc4:	48 89 c2             	mov    %rax,%rdx
ffff800000107dc7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107dce:	00 00 00 
ffff800000107dd1:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107dd8:	00 
ffff800000107dd9:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107dde:	48 89 c7             	mov    %rax,%rdi
ffff800000107de1:	48 b8 ba 86 ff ff ff 	movabs $0xffffffffffff86ba,%rax
ffff800000107de8:	ff ff ff 
ffff800000107deb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107def:	ff d0                	call   *%rax
ffff800000107df1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107df8:	00 00 00 
ffff800000107dfb:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107e02:	00 
ffff800000107e03:	48 89 c2             	mov    %rax,%rdx
ffff800000107e06:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e0d:	00 00 00 
ffff800000107e10:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107e17:	00 
ffff800000107e18:	48 01 d0             	add    %rdx,%rax
ffff800000107e1b:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107e21:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107e27:	48 89 c2             	mov    %rax,%rdx
ffff800000107e2a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e31:	00 00 00 
ffff800000107e34:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff800000107e3b:	00 
ffff800000107e3c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107e40:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107e44:	48 89 c2             	mov    %rax,%rdx
ffff800000107e47:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e4e:	00 00 00 
ffff800000107e51:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff800000107e58:	00 
ffff800000107e59:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107e5d:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107e61:	48 89 c2             	mov    %rax,%rdx
ffff800000107e64:	48 89 d0             	mov    %rdx,%rax
ffff800000107e67:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e6b:	48 01 d0             	add    %rdx,%rax
ffff800000107e6e:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107e72:	48 83 c0 07          	add    $0x7,%rax
ffff800000107e76:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107e7a:	48 89 c2             	mov    %rax,%rdx
ffff800000107e7d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e84:	00 00 00 
ffff800000107e87:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000107e8e:	00 
ffff800000107e8f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107e96:	00 00 00 
ffff800000107e99:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107ea0:	00 
ffff800000107ea1:	48 89 c2             	mov    %rax,%rdx
ffff800000107ea4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107eab:	00 00 00 
ffff800000107eae:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107eb5:	00 
ffff800000107eb6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107ebb:	48 89 c7             	mov    %rax,%rdi
ffff800000107ebe:	48 b8 ba 86 ff ff ff 	movabs $0xffffffffffff86ba,%rax
ffff800000107ec5:	ff ff ff 
ffff800000107ec8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ecc:	ff d0                	call   *%rax
ffff800000107ece:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ed5:	00 00 00 
ffff800000107ed8:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107edf:	00 
ffff800000107ee0:	48 89 c2             	mov    %rax,%rdx
ffff800000107ee3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107eea:	00 00 00 
ffff800000107eed:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107ef4:	00 
ffff800000107ef5:	48 01 d0             	add    %rdx,%rax
ffff800000107ef8:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107efe:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107f04:	48 89 c2             	mov    %rax,%rdx
ffff800000107f07:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f0e:	00 00 00 
ffff800000107f11:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff800000107f18:	00 
ffff800000107f19:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f20:	00 00 00 
ffff800000107f23:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff800000107f2a:	00 00 00 00 00 
ffff800000107f2f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f36:	00 00 00 
ffff800000107f39:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff800000107f40:	00 90 01 00 00 
ffff800000107f45:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f4c:	00 00 00 
ffff800000107f4f:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000107f56:	00 
ffff800000107f57:	48 89 c2             	mov    %rax,%rdx
ffff800000107f5a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f61:	00 00 00 
ffff800000107f64:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000107f6b:	00 
ffff800000107f6c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107f71:	48 89 c7             	mov    %rax,%rdi
ffff800000107f74:	48 b8 ba 86 ff ff ff 	movabs $0xffffffffffff86ba,%rax
ffff800000107f7b:	ff ff ff 
ffff800000107f7e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107f82:	ff d0                	call   *%rax
ffff800000107f84:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107f8b:	e9 f8 02 00 00       	jmp    ffff800000108288 <init_memory+0xa05>
ffff800000107f90:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107f97:	00 00 00 
ffff800000107f9a:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107f9d:	48 63 d0             	movslq %eax,%rdx
ffff800000107fa0:	48 01 d9             	add    %rbx,%rcx
ffff800000107fa3:	48 89 d0             	mov    %rdx,%rax
ffff800000107fa6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107faa:	48 01 d0             	add    %rdx,%rax
ffff800000107fad:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fb1:	48 01 c8             	add    %rcx,%rax
ffff800000107fb4:	48 83 c0 10          	add    $0x10,%rax
ffff800000107fb8:	8b 00                	mov    (%rax),%eax
ffff800000107fba:	83 f8 01             	cmp    $0x1,%eax
ffff800000107fbd:	0f 85 bd 02 00 00    	jne    ffff800000108280 <init_memory+0x9fd>
ffff800000107fc3:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107fca:	00 00 00 
ffff800000107fcd:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107fd0:	48 63 d0             	movslq %eax,%rdx
ffff800000107fd3:	48 01 d9             	add    %rbx,%rcx
ffff800000107fd6:	48 89 d0             	mov    %rdx,%rax
ffff800000107fd9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fdd:	48 01 d0             	add    %rdx,%rax
ffff800000107fe0:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fe4:	48 01 c8             	add    %rcx,%rax
ffff800000107fe7:	48 8b 00             	mov    (%rax),%rax
ffff800000107fea:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107ff0:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107ff6:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000107ffa:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108001:	00 00 00 
ffff800000108004:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108007:	48 63 d0             	movslq %eax,%rdx
ffff80000010800a:	48 01 d9             	add    %rbx,%rcx
ffff80000010800d:	48 89 d0             	mov    %rdx,%rax
ffff800000108010:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108014:	48 01 d0             	add    %rdx,%rax
ffff800000108017:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010801b:	48 01 c8             	add    %rcx,%rax
ffff80000010801e:	48 8b 08             	mov    (%rax),%rcx
ffff800000108021:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000108028:	00 00 00 
ffff80000010802b:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010802e:	48 63 d0             	movslq %eax,%rdx
ffff800000108031:	48 89 d0             	mov    %rdx,%rax
ffff800000108034:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108038:	48 01 d0             	add    %rdx,%rax
ffff80000010803b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010803f:	48 01 d8             	add    %rbx,%rax
ffff800000108042:	48 01 f0             	add    %rsi,%rax
ffff800000108045:	48 83 c0 08          	add    $0x8,%rax
ffff800000108049:	48 8b 00             	mov    (%rax),%rax
ffff80000010804c:	48 01 c8             	add    %rcx,%rax
ffff80000010804f:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000108055:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000108059:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010805d:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
ffff800000108061:	0f 83 1c 02 00 00    	jae    ffff800000108283 <init_memory+0xa00>
ffff800000108067:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010806e:	00 00 00 
ffff800000108071:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108078:	00 
ffff800000108079:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108080:	00 00 00 
ffff800000108083:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010808a:	00 
ffff80000010808b:	48 89 d0             	mov    %rdx,%rax
ffff80000010808e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108092:	48 01 d0             	add    %rdx,%rax
ffff800000108095:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108099:	48 01 c8             	add    %rcx,%rax
ffff80000010809c:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff8000001080a0:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080a7:	00 00 00 
ffff8000001080aa:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff8000001080b1:	00 
ffff8000001080b2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001080b6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080bd:	00 00 00 
ffff8000001080c0:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff8000001080c7:	00 
ffff8000001080c8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080cc:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001080d0:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001080d4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080d8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001080dc:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001080e0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001080e4:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff8000001080e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001080eb:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080ef:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff8000001080f3:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001080f7:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff8000001080fe:	00 
ffff8000001080ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108103:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108107:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010810b:	48 89 c2             	mov    %rax,%rdx
ffff80000010810e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108112:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff800000108116:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010811a:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff800000108121:	00 
ffff800000108122:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108126:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff80000010812d:	00 
ffff80000010812e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108132:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000108139:	00 00 00 
ffff80000010813c:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000108140:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108144:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108148:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff80000010814c:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108150:	48 89 c2             	mov    %rax,%rdx
ffff800000108153:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108157:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff80000010815b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108162:	00 00 00 
ffff800000108165:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff80000010816c:	00 
ffff80000010816d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000108171:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108175:	48 89 c2             	mov    %rax,%rdx
ffff800000108178:	48 89 d0             	mov    %rdx,%rax
ffff80000010817b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010817f:	48 01 d0             	add    %rdx,%rax
ffff800000108182:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108186:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff80000010818a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010818e:	48 89 10             	mov    %rdx,(%rax)
ffff800000108191:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108195:	48 8b 00             	mov    (%rax),%rax
ffff800000108198:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff80000010819c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001081a3:	e9 bf 00 00 00       	jmp    ffff800000108267 <init_memory+0x9e4>
ffff8000001081a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ac:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001081b0:	48 89 10             	mov    %rdx,(%rax)
ffff8000001081b3:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001081b6:	48 98                	cltq
ffff8000001081b8:	48 c1 e0 15          	shl    $0x15,%rax
ffff8000001081bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001081bf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001081c3:	48 01 c2             	add    %rax,%rdx
ffff8000001081c6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ca:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff8000001081ce:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081d2:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff8000001081d9:	00 
ffff8000001081da:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081de:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001081e5:	00 
ffff8000001081e6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ea:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001081f1:	00 
ffff8000001081f2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081f9:	00 00 00 
ffff8000001081fc:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108203:	00 
ffff800000108204:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108208:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010820c:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108210:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108214:	48 01 d0             	add    %rdx,%rax
ffff800000108217:	48 8b 10             	mov    (%rax),%rdx
ffff80000010821a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010821e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108222:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108226:	83 e0 3f             	and    $0x3f,%eax
ffff800000108229:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010822e:	89 c1                	mov    %eax,%ecx
ffff800000108230:	48 d3 e6             	shl    %cl,%rsi
ffff800000108233:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010823a:	00 00 00 
ffff80000010823d:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff800000108244:	00 
ffff800000108245:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108249:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010824d:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108251:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108255:	48 01 c8             	add    %rcx,%rax
ffff800000108258:	48 31 f2             	xor    %rsi,%rdx
ffff80000010825b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010825e:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff800000108262:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff800000108267:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010826a:	48 63 d0             	movslq %eax,%rdx
ffff80000010826d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108271:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108275:	48 39 c2             	cmp    %rax,%rdx
ffff800000108278:	0f 82 2a ff ff ff    	jb     ffff8000001081a8 <init_memory+0x925>
ffff80000010827e:	eb 04                	jmp    ffff800000108284 <init_memory+0xa01>
ffff800000108280:	90                   	nop
ffff800000108281:	eb 01                	jmp    ffff800000108284 <init_memory+0xa01>
ffff800000108283:	90                   	nop
ffff800000108284:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108288:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010828b:	48 98                	cltq
ffff80000010828d:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000108294:	00 00 00 
ffff800000108297:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff80000010829e:	00 
ffff80000010829f:	48 39 c2             	cmp    %rax,%rdx
ffff8000001082a2:	0f 83 e8 fc ff ff    	jae    ffff800000107f90 <init_memory+0x70d>
ffff8000001082a8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082af:	00 00 00 
ffff8000001082b2:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082b9:	00 
ffff8000001082ba:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001082c1:	00 00 00 
ffff8000001082c4:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff8000001082cb:	00 
ffff8000001082cc:	48 89 10             	mov    %rdx,(%rax)
ffff8000001082cf:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082d6:	00 00 00 
ffff8000001082d9:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082e0:	00 
ffff8000001082e1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff8000001082e8:	00 
ffff8000001082e9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082f0:	00 00 00 
ffff8000001082f3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001082fa:	00 
ffff8000001082fb:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108302:	00 
ffff800000108303:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010830a:	00 00 00 
ffff80000010830d:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108314:	00 
ffff800000108315:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff80000010831c:	00 
ffff80000010831d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108324:	00 00 00 
ffff800000108327:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010832e:	00 
ffff80000010832f:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000108336:	00 
ffff800000108337:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010833e:	00 00 00 
ffff800000108341:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108348:	00 
ffff800000108349:	48 89 d0             	mov    %rdx,%rax
ffff80000010834c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108350:	48 01 d0             	add    %rdx,%rax
ffff800000108353:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108357:	48 83 c0 07          	add    $0x7,%rax
ffff80000010835b:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff80000010835f:	48 89 c2             	mov    %rax,%rdx
ffff800000108362:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108369:	00 00 00 
ffff80000010836c:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff800000108373:	00 
ffff800000108374:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010837b:	00 00 00 
ffff80000010837e:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff800000108385:	00 
ffff800000108386:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010838d:	00 00 00 
ffff800000108390:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff800000108397:	00 
ffff800000108398:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010839f:	00 00 00 
ffff8000001083a2:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff8000001083a9:	00 
ffff8000001083aa:	49 89 c9             	mov    %rcx,%r9
ffff8000001083ad:	49 89 d0             	mov    %rdx,%r8
ffff8000001083b0:	48 89 c1             	mov    %rax,%rcx
ffff8000001083b3:	48 b8 40 a7 ff ff ff 	movabs $0xffffffffffffa740,%rax
ffff8000001083ba:	ff ff ff 
ffff8000001083bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001083c1:	48 89 c2             	mov    %rax,%rdx
ffff8000001083c4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001083c9:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001083ce:	49 89 df             	mov    %rbx,%r15
ffff8000001083d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001083d6:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff8000001083dd:	ff ff ff 
ffff8000001083e0:	49 01 da             	add    %rbx,%r10
ffff8000001083e3:	41 ff d2             	call   *%r10
ffff8000001083e6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083ed:	00 00 00 
ffff8000001083f0:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff8000001083f7:	00 
ffff8000001083f8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083ff:	00 00 00 
ffff800000108402:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff800000108409:	00 
ffff80000010840a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108411:	00 00 00 
ffff800000108414:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010841b:	00 
ffff80000010841c:	49 89 c9             	mov    %rcx,%r9
ffff80000010841f:	49 89 d0             	mov    %rdx,%r8
ffff800000108422:	48 89 c1             	mov    %rax,%rcx
ffff800000108425:	48 b8 78 a7 ff ff ff 	movabs $0xffffffffffffa778,%rax
ffff80000010842c:	ff ff ff 
ffff80000010842f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108433:	48 89 c2             	mov    %rax,%rdx
ffff800000108436:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010843b:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108440:	49 89 df             	mov    %rbx,%r15
ffff800000108443:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108448:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff80000010844f:	ff ff ff 
ffff800000108452:	49 01 da             	add    %rbx,%r10
ffff800000108455:	41 ff d2             	call   *%r10
ffff800000108458:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010845f:	00 00 00 
ffff800000108462:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff800000108469:	00 
ffff80000010846a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108471:	00 00 00 
ffff800000108474:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010847b:	00 
ffff80000010847c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108483:	00 00 00 
ffff800000108486:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff80000010848d:	00 
ffff80000010848e:	49 89 c9             	mov    %rcx,%r9
ffff800000108491:	49 89 d0             	mov    %rdx,%r8
ffff800000108494:	48 89 c1             	mov    %rax,%rcx
ffff800000108497:	48 b8 b8 a7 ff ff ff 	movabs $0xffffffffffffa7b8,%rax
ffff80000010849e:	ff ff ff 
ffff8000001084a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001084a5:	48 89 c2             	mov    %rax,%rdx
ffff8000001084a8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001084ad:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001084b2:	49 89 df             	mov    %rbx,%r15
ffff8000001084b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001084ba:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff8000001084c1:	ff ff ff 
ffff8000001084c4:	49 01 da             	add    %rbx,%r10
ffff8000001084c7:	41 ff d2             	call   *%r10
ffff8000001084ca:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001084d1:	00 00 00 
ffff8000001084d4:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff8000001084db:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff8000001084e2:	00 00 00 
ffff8000001084e5:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff8000001084ec:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001084f3:	e9 c1 00 00 00       	jmp    ffff8000001085b9 <init_memory+0xd36>
ffff8000001084f8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001084ff:	00 00 00 
ffff800000108502:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108509:	00 
ffff80000010850a:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010850d:	48 63 d0             	movslq %eax,%rdx
ffff800000108510:	48 89 d0             	mov    %rdx,%rax
ffff800000108513:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108517:	48 01 d0             	add    %rdx,%rax
ffff80000010851a:	48 c1 e0 04          	shl    $0x4,%rax
ffff80000010851e:	48 01 c8             	add    %rcx,%rax
ffff800000108521:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000108525:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108529:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff80000010852d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108531:	48 8b 10             	mov    (%rax),%rdx
ffff800000108534:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108538:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff80000010853c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108540:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff800000108544:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108548:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010854c:	51                   	push   %rcx
ffff80000010854d:	52                   	push   %rdx
ffff80000010854e:	49 89 f9             	mov    %rdi,%r9
ffff800000108551:	49 89 f0             	mov    %rsi,%r8
ffff800000108554:	48 89 c1             	mov    %rax,%rcx
ffff800000108557:	48 b8 f8 a7 ff ff ff 	movabs $0xffffffffffffa7f8,%rax
ffff80000010855e:	ff ff ff 
ffff800000108561:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108565:	48 89 c2             	mov    %rax,%rdx
ffff800000108568:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010856d:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108572:	49 89 df             	mov    %rbx,%r15
ffff800000108575:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010857a:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff800000108581:	ff ff ff 
ffff800000108584:	49 01 da             	add    %rbx,%r10
ffff800000108587:	41 ff d2             	call   *%r10
ffff80000010858a:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010858e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108592:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000108596:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
ffff80000010859d:	00 00 00 
ffff8000001085a0:	48 39 c2             	cmp    %rax,%rdx
ffff8000001085a3:	75 10                	jne    ffff8000001085b5 <init_memory+0xd32>
ffff8000001085a5:	48 ba 78 10 00 00 00 	movabs $0x1078,%rdx
ffff8000001085ac:	00 00 00 
ffff8000001085af:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001085b2:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff8000001085b5:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001085b9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001085bc:	48 63 d0             	movslq %eax,%rdx
ffff8000001085bf:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085c6:	00 00 00 
ffff8000001085c9:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff8000001085d0:	00 
ffff8000001085d1:	48 39 c2             	cmp    %rax,%rdx
ffff8000001085d4:	0f 82 1e ff ff ff    	jb     ffff8000001084f8 <init_memory+0xc75>
ffff8000001085da:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085e1:	00 00 00 
ffff8000001085e4:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001085eb:	00 
ffff8000001085ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001085ef:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085f6:	00 00 00 
ffff8000001085f9:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000108600:	00 
ffff800000108601:	48 01 d0             	add    %rdx,%rax
ffff800000108604:	48 05 00 01 00 00    	add    $0x100,%rax
ffff80000010860a:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff80000010860e:	48 89 c2             	mov    %rax,%rdx
ffff800000108611:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108618:	00 00 00 
ffff80000010861b:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff800000108622:	00 
ffff800000108623:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010862a:	00 00 00 
ffff80000010862d:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff800000108634:	00 
ffff800000108635:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010863c:	00 00 00 
ffff80000010863f:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff800000108646:	00 
ffff800000108647:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010864e:	00 00 00 
ffff800000108651:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff800000108658:	00 
ffff800000108659:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108660:	00 00 00 
ffff800000108663:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff80000010866a:	00 
ffff80000010866b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108672:	00 00 00 
ffff800000108675:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff80000010867c:	00 
ffff80000010867d:	51                   	push   %rcx
ffff80000010867e:	52                   	push   %rdx
ffff80000010867f:	49 89 f9             	mov    %rdi,%r9
ffff800000108682:	49 89 f0             	mov    %rsi,%r8
ffff800000108685:	48 89 c1             	mov    %rax,%rcx
ffff800000108688:	48 b8 70 a8 ff ff ff 	movabs $0xffffffffffffa870,%rax
ffff80000010868f:	ff ff ff 
ffff800000108692:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108696:	48 89 c2             	mov    %rax,%rdx
ffff800000108699:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010869e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001086a3:	49 89 df             	mov    %rbx,%r15
ffff8000001086a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001086ab:	49 ba 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r10
ffff8000001086b2:	ff ff ff 
ffff8000001086b5:	49 01 da             	add    %rbx,%r10
ffff8000001086b8:	41 ff d2             	call   *%r10
ffff8000001086bb:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001086bf:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086c6:	00 00 00 
ffff8000001086c9:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff8000001086d0:	00 
ffff8000001086d1:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff8000001086d8:	80 00 00 
ffff8000001086db:	48 01 d0             	add    %rdx,%rax
ffff8000001086de:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001086e2:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff8000001086e5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001086ec:	eb 45                	jmp    ffff800000108733 <init_memory+0xeb0>
ffff8000001086ee:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086f5:	00 00 00 
ffff8000001086f8:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001086ff:	00 
ffff800000108700:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108703:	48 63 d0             	movslq %eax,%rdx
ffff800000108706:	48 89 d0             	mov    %rdx,%rax
ffff800000108709:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010870d:	48 01 d0             	add    %rdx,%rax
ffff800000108710:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108714:	48 01 c8             	add    %rcx,%rax
ffff800000108717:	be 93 00 00 00       	mov    $0x93,%esi
ffff80000010871c:	48 89 c7             	mov    %rax,%rdi
ffff80000010871f:	48 b8 bd 87 ff ff ff 	movabs $0xffffffffffff87bd,%rax
ffff800000108726:	ff ff ff 
ffff800000108729:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010872d:	ff d0                	call   *%rax
ffff80000010872f:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff800000108733:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108736:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000108739:	7e b3                	jle    ffff8000001086ee <init_memory+0xe6b>
ffff80000010873b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108740:	48 ba 94 87 ff ff ff 	movabs $0xffffffffffff8794,%rdx
ffff800000108747:	ff ff ff 
ffff80000010874a:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff80000010874e:	ff d2                	call   *%rdx
ffff800000108750:	48 ba 80 10 00 00 00 	movabs $0x1080,%rdx
ffff800000108757:	00 00 00 
ffff80000010875a:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff80000010875e:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108765:	00 00 00 
ffff800000108768:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010876c:	48 89 c1             	mov    %rax,%rcx
ffff80000010876f:	48 b8 cc a8 ff ff ff 	movabs $0xffffffffffffa8cc,%rax
ffff800000108776:	ff ff ff 
ffff800000108779:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010877d:	48 89 c2             	mov    %rax,%rdx
ffff800000108780:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108785:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff80000010878a:	49 89 df             	mov    %rbx,%r15
ffff80000010878d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108792:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff800000108799:	ff ff ff 
ffff80000010879c:	49 01 d8             	add    %rbx,%r8
ffff80000010879f:	41 ff d0             	call   *%r8
ffff8000001087a2:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff8000001087a9:	00 00 00 
ffff8000001087ac:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001087b0:	48 89 c2             	mov    %rax,%rdx
ffff8000001087b3:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001087ba:	80 ff ff 
ffff8000001087bd:	48 01 d0             	add    %rdx,%rax
ffff8000001087c0:	48 8b 00             	mov    (%rax),%rax
ffff8000001087c3:	48 89 c1             	mov    %rax,%rcx
ffff8000001087c6:	48 b8 e1 a8 ff ff ff 	movabs $0xffffffffffffa8e1,%rax
ffff8000001087cd:	ff ff ff 
ffff8000001087d0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001087d4:	48 89 c2             	mov    %rax,%rdx
ffff8000001087d7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001087dc:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001087e1:	49 89 df             	mov    %rbx,%r15
ffff8000001087e4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001087e9:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff8000001087f0:	ff ff ff 
ffff8000001087f3:	49 01 d8             	add    %rbx,%r8
ffff8000001087f6:	41 ff d0             	call   *%r8
ffff8000001087f9:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108800:	00 00 00 
ffff800000108803:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108807:	48 89 c2             	mov    %rax,%rdx
ffff80000010880a:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108811:	80 ff ff 
ffff800000108814:	48 01 d0             	add    %rdx,%rax
ffff800000108817:	48 8b 00             	mov    (%rax),%rax
ffff80000010881a:	b0 00                	mov    $0x0,%al
ffff80000010881c:	48 89 c2             	mov    %rax,%rdx
ffff80000010881f:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108826:	80 ff ff 
ffff800000108829:	48 01 d0             	add    %rdx,%rax
ffff80000010882c:	48 8b 00             	mov    (%rax),%rax
ffff80000010882f:	b0 00                	mov    $0x0,%al
ffff800000108831:	48 89 c1             	mov    %rax,%rcx
ffff800000108834:	48 b8 f7 a8 ff ff ff 	movabs $0xffffffffffffa8f7,%rax
ffff80000010883b:	ff ff ff 
ffff80000010883e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108842:	48 89 c2             	mov    %rax,%rdx
ffff800000108845:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010884a:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff80000010884f:	49 89 df             	mov    %rbx,%r15
ffff800000108852:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108857:	49 b8 40 57 ff ff ff 	movabs $0xffffffffffff5740,%r8
ffff80000010885e:	ff ff ff 
ffff800000108861:	49 01 d8             	add    %rbx,%r8
ffff800000108864:	41 ff d0             	call   *%r8
ffff800000108867:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010886e:	eb 36                	jmp    ffff8000001088a6 <init_memory+0x1023>
ffff800000108870:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108873:	48 98                	cltq
ffff800000108875:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010887c:	00 
ffff80000010887d:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108884:	00 00 00 
ffff800000108887:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010888b:	48 01 c2             	add    %rax,%rdx
ffff80000010888e:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108895:	80 ff ff 
ffff800000108898:	48 01 d0             	add    %rdx,%rax
ffff80000010889b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001088a2:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff8000001088a6:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff8000001088aa:	7e c4                	jle    ffff800000108870 <init_memory+0xfed>
ffff8000001088ac:	48 b8 0e a9 ff ff ff 	movabs $0xffffffffffffa90e,%rax
ffff8000001088b3:	ff ff ff 
ffff8000001088b6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001088ba:	48 89 c2             	mov    %rax,%rdx
ffff8000001088bd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001088c2:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001088c7:	49 89 df             	mov    %rbx,%r15
ffff8000001088ca:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001088cf:	48 b9 40 57 ff ff ff 	movabs $0xffffffffffff5740,%rcx
ffff8000001088d6:	ff ff ff 
ffff8000001088d9:	48 01 d9             	add    %rbx,%rcx
ffff8000001088dc:	ff d1                	call   *%rcx
ffff8000001088de:	0f 20 d8             	mov    %cr3,%rax
ffff8000001088e1:	0f 22 d8             	mov    %rax,%cr3
ffff8000001088e4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff8000001088e8:	90                   	nop
ffff8000001088e9:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff8000001088ed:	5b                   	pop    %rbx
ffff8000001088ee:	41 5f                	pop    %r15
ffff8000001088f0:	5d                   	pop    %rbp
ffff8000001088f1:	c3                   	ret
