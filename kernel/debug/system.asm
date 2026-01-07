
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 f0 9c 00 00 	lgdt   0x9cf0(%rip)        # ffff800000109d08 <GDT_END>
ffff800000100018:	0f 01 1d f3 ac 00 00 	lidt   0xacf3(%rip)        # ffff80000010ad12 <IDT_END>
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
ffff800000100099:	48 8d 3d 72 9c 00 00 	lea    0x9c72(%rip),%rdi        # ffff800000109d12 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 5e ac 00 00 	lea    0xac5e(%rip),%rdx        # ffff80000010ad1c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d 88 9b 00 00 	lea    0x9b88(%rip),%rdi        # ffff800000109c80 <GDT_Table>
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
ffff800000100161:	e8 d8 44 00 00       	call   ffff80000010463e <color_printk>
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
ffff80000010400f:	49 bb 68 ae 00 00 00 	movabs $0xae68,%r11
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
ffff800000104140:	49 bb 37 ad 00 00 00 	movabs $0xad37,%r11
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
ffff800000104173:	49 bb 04 ad 00 00 00 	movabs $0xad04,%r11
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
ffff80000010419e:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001041a2:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001041a9:	ff ff ff 
ffff8000001041ac:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041b0:	50                   	push   %rax
ffff8000001041b1:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff8000001041b8:	ff ff ff 
ffff8000001041bb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041bf:	49 89 c1             	mov    %rax,%r9
ffff8000001041c2:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff8000001041c9:	ff ff ff 
ffff8000001041cc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041d0:	49 89 c0             	mov    %rax,%r8
ffff8000001041d3:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff8000001041da:	ff ff ff 
ffff8000001041dd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001041e1:	48 89 c1             	mov    %rax,%rcx
ffff8000001041e4:	48 b8 08 9a ff ff ff 	movabs $0xffffffffffff9a08,%rax
ffff8000001041eb:	ff ff ff 
ffff8000001041ee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041f2:	48 89 c2             	mov    %rax,%rdx
ffff8000001041f5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041fa:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041ff:	49 89 df             	mov    %rbx,%r15
ffff800000104202:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104207:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010420e:	ff ff ff 
ffff800000104211:	49 01 da             	add    %rbx,%r10
ffff800000104214:	41 ff d2             	call   *%r10
ffff800000104217:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010421b:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104222:	80 ff ff 
ffff800000104225:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000104229:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104230:	00 00 00 
ffff800000104233:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff80000010423a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104241:	00 00 00 
ffff800000104244:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff80000010424b:	00 
ffff80000010424c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104253:	00 00 00 
ffff800000104256:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff80000010425d:	00 
ffff80000010425e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104265:	00 00 00 
ffff800000104268:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff80000010426f:	00 
ffff800000104270:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104277:	00 00 00 
ffff80000010427a:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff800000104281:	00 
ffff800000104282:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104289:	00 00 00 
ffff80000010428c:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff800000104293:	00 
ffff800000104294:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010429b:	00 00 00 
ffff80000010429e:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff8000001042a3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001042aa:	00 00 00 
ffff8000001042ad:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff8000001042b0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001042b7:	00 00 00 
ffff8000001042ba:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001042be:	0f af c2             	imul   %edx,%eax
ffff8000001042c1:	c1 e0 02             	shl    $0x2,%eax
ffff8000001042c4:	48 98                	cltq
ffff8000001042c6:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001042cc:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff8000001042d1:	48 89 c2             	mov    %rax,%rdx
ffff8000001042d4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001042db:	00 00 00 
ffff8000001042de:	48 89 54 03 20       	mov    %rdx,0x20(%rbx,%rax,1)
ffff8000001042e3:	b8 40 00 00 00       	mov    $0x40,%eax
ffff8000001042e8:	0f 00 d8             	ltr    %eax
ffff8000001042eb:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042f0:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff8000001042f7:	ff 
ffff8000001042f8:	68 00 7c 00 00       	push   $0x7c00
ffff8000001042fd:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104304:	ff 
ffff800000104305:	68 00 7c 00 00       	push   $0x7c00
ffff80000010430a:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff800000104311:	ff 
ffff800000104312:	68 00 7c 00 00       	push   $0x7c00
ffff800000104317:	c7 44 24 04 00 80 ff 	movl   $0xffff8000,0x4(%rsp)
ffff80000010431e:	ff 
ffff80000010431f:	49 b9 00 7c 00 00 00 	movabs $0xffff800000007c00,%r9
ffff800000104326:	80 ff ff 
ffff800000104329:	49 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%r8
ffff800000104330:	80 ff ff 
ffff800000104333:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff80000010433a:	80 ff ff 
ffff80000010433d:	48 89 c1             	mov    %rax,%rcx
ffff800000104340:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104347:	80 ff ff 
ffff80000010434a:	48 89 c2             	mov    %rax,%rdx
ffff80000010434d:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104354:	80 ff ff 
ffff800000104357:	48 89 c6             	mov    %rax,%rsi
ffff80000010435a:	48 b8 00 7c 00 00 00 	movabs $0xffff800000007c00,%rax
ffff800000104361:	80 ff ff 
ffff800000104364:	48 89 c7             	mov    %rax,%rdi
ffff800000104367:	48 b8 90 51 ff ff ff 	movabs $0xffffffffffff5190,%rax
ffff80000010436e:	ff ff ff 
ffff800000104371:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104375:	ff d0                	call   *%rax
ffff800000104377:	48 83 c4 20          	add    $0x20,%rsp
ffff80000010437b:	49 89 df             	mov    %rbx,%r15
ffff80000010437e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104383:	48 ba c9 81 ff ff ff 	movabs $0xffffffffffff81c9,%rdx
ffff80000010438a:	ff ff ff 
ffff80000010438d:	48 01 da             	add    %rbx,%rdx
ffff800000104390:	ff d2                	call   *%rdx
ffff800000104392:	48 b8 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rax
ffff800000104399:	ff ff ff 
ffff80000010439c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001043a0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff8000001043a4:	48 b8 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rax
ffff8000001043ab:	ff ff ff 
ffff8000001043ae:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001043b2:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff8000001043b6:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff8000001043bd:	ff ff ff 
ffff8000001043c0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001043c4:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001043c8:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001043cf:	ff ff ff 
ffff8000001043d2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001043d6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001043da:	48 b8 42 9a ff ff ff 	movabs $0xffffffffffff9a42,%rax
ffff8000001043e1:	ff ff ff 
ffff8000001043e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001043eb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043f0:	bf ff ff ff 00       	mov    $0xffffff,%edi
ffff8000001043f5:	49 89 df             	mov    %rbx,%r15
ffff8000001043f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043fd:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000104404:	ff ff ff 
ffff800000104407:	48 01 d9             	add    %rbx,%rcx
ffff80000010440a:	ff d1                	call   *%rcx
ffff80000010440c:	48 b8 54 9a ff ff ff 	movabs $0xffffffffffff9a54,%rax
ffff800000104413:	ff ff ff 
ffff800000104416:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010441a:	48 89 c2             	mov    %rax,%rdx
ffff80000010441d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104422:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104427:	49 89 df             	mov    %rbx,%r15
ffff80000010442a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010442f:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000104436:	ff ff ff 
ffff800000104439:	48 01 d9             	add    %rbx,%rcx
ffff80000010443c:	ff d1                	call   *%rcx
ffff80000010443e:	48 b8 60 9a ff ff ff 	movabs $0xffffffffffff9a60,%rax
ffff800000104445:	ff ff ff 
ffff800000104448:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010444c:	48 89 c2             	mov    %rax,%rdx
ffff80000010444f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104454:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104459:	49 89 df             	mov    %rbx,%r15
ffff80000010445c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104461:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000104468:	ff ff ff 
ffff80000010446b:	48 01 d9             	add    %rbx,%rcx
ffff80000010446e:	ff d1                	call   *%rcx
ffff800000104470:	49 89 df             	mov    %rbx,%r15
ffff800000104473:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104478:	48 ba 4b 88 ff ff ff 	movabs $0xffffffffffff884b,%rdx
ffff80000010447f:	ff ff ff 
ffff800000104482:	48 01 da             	add    %rbx,%rdx
ffff800000104485:	ff d2                	call   *%rdx
ffff800000104487:	48 b8 b8 9a ff ff ff 	movabs $0xffffffffffff9ab8,%rax
ffff80000010448e:	ff ff ff 
ffff800000104491:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104495:	48 89 c2             	mov    %rax,%rdx
ffff800000104498:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010449d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001044a2:	49 89 df             	mov    %rbx,%r15
ffff8000001044a5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044aa:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001044b1:	ff ff ff 
ffff8000001044b4:	48 01 d9             	add    %rbx,%rcx
ffff8000001044b7:	ff d1                	call   *%rcx
ffff8000001044b9:	48 b8 f0 9a ff ff ff 	movabs $0xffffffffffff9af0,%rax
ffff8000001044c0:	ff ff ff 
ffff8000001044c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044c7:	48 89 c2             	mov    %rax,%rdx
ffff8000001044ca:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001044cf:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001044d4:	49 89 df             	mov    %rbx,%r15
ffff8000001044d7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044dc:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001044e3:	ff ff ff 
ffff8000001044e6:	48 01 d9             	add    %rbx,%rcx
ffff8000001044e9:	ff d1                	call   *%rcx
ffff8000001044eb:	90                   	nop
ffff8000001044ec:	eb fd                	jmp    ffff8000001044eb <Start_Kernel+0x391>

ffff8000001044ee <Cstrlen>:
ffff8000001044ee:	f3 0f 1e fa          	endbr64
ffff8000001044f2:	55                   	push   %rbp
ffff8000001044f3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001044f6:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001044f6 <Cstrlen+0x8>
ffff8000001044fd:	49 bb 7a a9 00 00 00 	movabs $0xa97a,%r11
ffff800000104504:	00 00 00 
ffff800000104507:	4c 01 d8             	add    %r11,%rax
ffff80000010450a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010450e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104512:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104516:	eb 05                	jmp    ffff80000010451d <Cstrlen+0x2f>
ffff800000104518:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff80000010451d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104521:	0f b6 00             	movzbl (%rax),%eax
ffff800000104524:	84 c0                	test   %al,%al
ffff800000104526:	75 f0                	jne    ffff800000104518 <Cstrlen+0x2a>
ffff800000104528:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010452c:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff800000104530:	5d                   	pop    %rbp
ffff800000104531:	c3                   	ret

ffff800000104532 <putchar>:
ffff800000104532:	f3 0f 1e fa          	endbr64
ffff800000104536:	55                   	push   %rbp
ffff800000104537:	48 89 e5             	mov    %rsp,%rbp
ffff80000010453a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010453a <putchar+0x8>
ffff800000104541:	49 bb 36 a9 00 00 00 	movabs $0xa936,%r11
ffff800000104548:	00 00 00 
ffff80000010454b:	4c 01 d8             	add    %r11,%rax
ffff80000010454e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104552:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104555:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104558:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff80000010455b:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010455f:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff800000104563:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104566:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104569:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104570:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104577:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff80000010457e:	00 
ffff80000010457f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104586:	00 
ffff800000104587:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff80000010458e:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff800000104592:	48 63 d2             	movslq %edx,%rdx
ffff800000104595:	48 89 d1             	mov    %rdx,%rcx
ffff800000104598:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010459c:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff8000001045a3:	ff ff ff 
ffff8000001045a6:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001045aa:	48 01 c8             	add    %rcx,%rax
ffff8000001045ad:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001045b1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001045b8:	eb 7a                	jmp    ffff800000104634 <putchar+0x102>
ffff8000001045ba:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001045bd:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001045c0:	01 d0                	add    %edx,%eax
ffff8000001045c2:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001045c6:	48 63 d0             	movslq %eax,%rdx
ffff8000001045c9:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001045cc:	48 98                	cltq
ffff8000001045ce:	48 01 d0             	add    %rdx,%rax
ffff8000001045d1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001045d8:	00 
ffff8000001045d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045dd:	48 01 d0             	add    %rdx,%rax
ffff8000001045e0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001045e4:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001045eb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001045f2:	eb 31                	jmp    ffff800000104625 <putchar+0xf3>
ffff8000001045f4:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001045f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001045fb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001045fe:	0f b6 c0             	movzbl %al,%eax
ffff800000104601:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104604:	85 c0                	test   %eax,%eax
ffff800000104606:	74 0b                	je     ffff800000104613 <putchar+0xe1>
ffff800000104608:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010460c:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff80000010460f:	89 10                	mov    %edx,(%rax)
ffff800000104611:	eb 09                	jmp    ffff80000010461c <putchar+0xea>
ffff800000104613:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104617:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff80000010461a:	89 10                	mov    %edx,(%rax)
ffff80000010461c:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff800000104621:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104625:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104629:	7e c9                	jle    ffff8000001045f4 <putchar+0xc2>
ffff80000010462b:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104630:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104634:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104638:	7e 80                	jle    ffff8000001045ba <putchar+0x88>
ffff80000010463a:	90                   	nop
ffff80000010463b:	90                   	nop
ffff80000010463c:	5d                   	pop    %rbp
ffff80000010463d:	c3                   	ret

ffff80000010463e <color_printk>:
ffff80000010463e:	f3 0f 1e fa          	endbr64
ffff800000104642:	55                   	push   %rbp
ffff800000104643:	48 89 e5             	mov    %rsp,%rbp
ffff800000104646:	53                   	push   %rbx
ffff800000104647:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff80000010464e:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010464e <color_printk+0x10>
ffff800000104655:	49 bb 22 a8 00 00 00 	movabs $0xa822,%r11
ffff80000010465c:	00 00 00 
ffff80000010465f:	4c 01 db             	add    %r11,%rbx
ffff800000104662:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104668:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff80000010466e:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff800000104675:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff80000010467c:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff800000104683:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff80000010468a:	84 c0                	test   %al,%al
ffff80000010468c:	74 23                	je     ffff8000001046b1 <color_printk+0x73>
ffff80000010468e:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff800000104695:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff800000104699:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff80000010469d:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001046a1:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001046a5:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001046a9:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001046ad:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001046b1:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001046b8:	00 00 00 
ffff8000001046bb:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001046c2:	00 00 00 
ffff8000001046c5:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001046cc:	00 00 00 
ffff8000001046cf:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001046d6:	00 00 00 
ffff8000001046d9:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001046e0:	00 00 00 
ffff8000001046e3:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001046e7:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001046ee:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001046f5:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001046fc:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff800000104703:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff80000010470a:	48 89 c6             	mov    %rax,%rsi
ffff80000010470d:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104714:	00 00 00 
ffff800000104717:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010471b:	48 89 c7             	mov    %rax,%rdi
ffff80000010471e:	48 b8 4e 62 ff ff ff 	movabs $0xffffffffffff624e,%rax
ffff800000104725:	ff ff ff 
ffff800000104728:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010472c:	ff d0                	call   *%rax
ffff80000010472e:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104734:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff80000010473b:	00 00 00 
ffff80000010473e:	e9 81 04 00 00       	jmp    ffff800000104bc4 <color_printk+0x586>
ffff800000104743:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff80000010474a:	7e 0c                	jle    ffff800000104758 <color_printk+0x11a>
ffff80000010474c:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104753:	e9 45 02 00 00       	jmp    ffff80000010499d <color_printk+0x35f>
ffff800000104758:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010475e:	48 63 d0             	movslq %eax,%rdx
ffff800000104761:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104768:	00 00 00 
ffff80000010476b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010476f:	48 01 d0             	add    %rdx,%rax
ffff800000104772:	0f b6 00             	movzbl (%rax),%eax
ffff800000104775:	3c 0a                	cmp    $0xa,%al
ffff800000104777:	75 36                	jne    ffff8000001047af <color_printk+0x171>
ffff800000104779:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104780:	00 00 00 
ffff800000104783:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104787:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010478a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104791:	00 00 00 
ffff800000104794:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104798:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010479f:	00 00 00 
ffff8000001047a2:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001047a9:	00 
ffff8000001047aa:	e9 6a 03 00 00       	jmp    ffff800000104b19 <color_printk+0x4db>
ffff8000001047af:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001047b5:	48 63 d0             	movslq %eax,%rdx
ffff8000001047b8:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001047bf:	00 00 00 
ffff8000001047c2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001047c6:	48 01 d0             	add    %rdx,%rax
ffff8000001047c9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001047cc:	3c 08                	cmp    $0x8,%al
ffff8000001047ce:	0f 85 78 01 00 00    	jne    ffff80000010494c <color_printk+0x30e>
ffff8000001047d4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047db:	00 00 00 
ffff8000001047de:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047e2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001047e5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047ec:	00 00 00 
ffff8000001047ef:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001047f3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047fa:	00 00 00 
ffff8000001047fd:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104801:	85 c0                	test   %eax,%eax
ffff800000104803:	0f 89 b2 00 00 00    	jns    ffff8000001048bb <color_printk+0x27d>
ffff800000104809:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104810:	00 00 00 
ffff800000104813:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104816:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010481d:	00 00 00 
ffff800000104820:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104824:	99                   	cltd
ffff800000104825:	f7 fe                	idiv   %esi
ffff800000104827:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010482a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104831:	00 00 00 
ffff800000104834:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104838:	0f af c2             	imul   %edx,%eax
ffff80000010483b:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104842:	00 00 00 
ffff800000104845:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104849:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104850:	00 00 00 
ffff800000104853:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104857:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010485a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104861:	00 00 00 
ffff800000104864:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104868:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010486f:	00 00 00 
ffff800000104872:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104876:	85 c0                	test   %eax,%eax
ffff800000104878:	79 41                	jns    ffff8000001048bb <color_printk+0x27d>
ffff80000010487a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104881:	00 00 00 
ffff800000104884:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104888:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010488f:	00 00 00 
ffff800000104892:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104896:	99                   	cltd
ffff800000104897:	f7 ff                	idiv   %edi
ffff800000104899:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010489c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048a3:	00 00 00 
ffff8000001048a6:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048aa:	0f af c2             	imul   %edx,%eax
ffff8000001048ad:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001048b4:	00 00 00 
ffff8000001048b7:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001048bb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048c2:	00 00 00 
ffff8000001048c5:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048c9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048d0:	00 00 00 
ffff8000001048d3:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048d7:	89 d1                	mov    %edx,%ecx
ffff8000001048d9:	0f af c8             	imul   %eax,%ecx
ffff8000001048dc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048e3:	00 00 00 
ffff8000001048e6:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048ea:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048f1:	00 00 00 
ffff8000001048f4:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048f8:	0f af d0             	imul   %eax,%edx
ffff8000001048fb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104902:	00 00 00 
ffff800000104905:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104908:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010490f:	00 00 00 
ffff800000104912:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104917:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff80000010491e:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104924:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104928:	6a 20                	push   $0x20
ffff80000010492a:	45 89 c1             	mov    %r8d,%r9d
ffff80000010492d:	41 89 f8             	mov    %edi,%r8d
ffff800000104930:	48 89 c7             	mov    %rax,%rdi
ffff800000104933:	48 b8 c2 56 ff ff ff 	movabs $0xffffffffffff56c2,%rax
ffff80000010493a:	ff ff ff 
ffff80000010493d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104941:	ff d0                	call   *%rax
ffff800000104943:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104947:	e9 cd 01 00 00       	jmp    ffff800000104b19 <color_printk+0x4db>
ffff80000010494c:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104952:	48 63 d0             	movslq %eax,%rdx
ffff800000104955:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010495c:	00 00 00 
ffff80000010495f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104963:	48 01 d0             	add    %rdx,%rax
ffff800000104966:	0f b6 00             	movzbl (%rax),%eax
ffff800000104969:	3c 09                	cmp    $0x9,%al
ffff80000010496b:	0f 85 e3 00 00 00    	jne    ffff800000104a54 <color_printk+0x416>
ffff800000104971:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104978:	00 00 00 
ffff80000010497b:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010497f:	83 c0 08             	add    $0x8,%eax
ffff800000104982:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104985:	89 c2                	mov    %eax,%edx
ffff800000104987:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010498e:	00 00 00 
ffff800000104991:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104995:	29 c2                	sub    %eax,%edx
ffff800000104997:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff80000010499d:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001049a4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ab:	00 00 00 
ffff8000001049ae:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001049b2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049b9:	00 00 00 
ffff8000001049bc:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001049c0:	89 d1                	mov    %edx,%ecx
ffff8000001049c2:	0f af c8             	imul   %eax,%ecx
ffff8000001049c5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049cc:	00 00 00 
ffff8000001049cf:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001049d3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049da:	00 00 00 
ffff8000001049dd:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049e1:	0f af d0             	imul   %eax,%edx
ffff8000001049e4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049eb:	00 00 00 
ffff8000001049ee:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049f1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049f8:	00 00 00 
ffff8000001049fb:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104a00:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104a07:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104a0d:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104a11:	6a 20                	push   $0x20
ffff800000104a13:	45 89 c1             	mov    %r8d,%r9d
ffff800000104a16:	41 89 f8             	mov    %edi,%r8d
ffff800000104a19:	48 89 c7             	mov    %rax,%rdi
ffff800000104a1c:	48 b8 c2 56 ff ff ff 	movabs $0xffffffffffff56c2,%rax
ffff800000104a23:	ff ff ff 
ffff800000104a26:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a2a:	ff d0                	call   *%rax
ffff800000104a2c:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104a30:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a37:	00 00 00 
ffff800000104a3a:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a3e:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a41:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a48:	00 00 00 
ffff800000104a4b:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a4f:	e9 c5 00 00 00       	jmp    ffff800000104b19 <color_printk+0x4db>
ffff800000104a54:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104a5a:	48 63 d0             	movslq %eax,%rdx
ffff800000104a5d:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104a64:	00 00 00 
ffff800000104a67:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a6b:	48 01 d0             	add    %rdx,%rax
ffff800000104a6e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a71:	0f b6 f8             	movzbl %al,%edi
ffff800000104a74:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a7b:	00 00 00 
ffff800000104a7e:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104a82:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a89:	00 00 00 
ffff800000104a8c:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104a90:	89 d1                	mov    %edx,%ecx
ffff800000104a92:	0f af c8             	imul   %eax,%ecx
ffff800000104a95:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a9c:	00 00 00 
ffff800000104a9f:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104aa3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aaa:	00 00 00 
ffff800000104aad:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ab1:	0f af d0             	imul   %eax,%edx
ffff800000104ab4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104abb:	00 00 00 
ffff800000104abe:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104ac1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ac8:	00 00 00 
ffff800000104acb:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104ad0:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104ad7:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104ade:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104ae2:	57                   	push   %rdi
ffff800000104ae3:	48 89 c7             	mov    %rax,%rdi
ffff800000104ae6:	48 b8 c2 56 ff ff ff 	movabs $0xffffffffffff56c2,%rax
ffff800000104aed:	ff ff ff 
ffff800000104af0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104af4:	ff d0                	call   *%rax
ffff800000104af6:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104afa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b01:	00 00 00 
ffff800000104b04:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104b08:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104b0b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b12:	00 00 00 
ffff800000104b15:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104b19:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b20:	00 00 00 
ffff800000104b23:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104b27:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b2e:	00 00 00 
ffff800000104b31:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b34:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b3b:	00 00 00 
ffff800000104b3e:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104b42:	99                   	cltd
ffff800000104b43:	f7 fe                	idiv   %esi
ffff800000104b45:	39 c1                	cmp    %eax,%ecx
ffff800000104b47:	7c 31                	jl     ffff800000104b7a <color_printk+0x53c>
ffff800000104b49:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b50:	00 00 00 
ffff800000104b53:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104b57:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104b5a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b61:	00 00 00 
ffff800000104b64:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104b68:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b6f:	00 00 00 
ffff800000104b72:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104b79:	00 
ffff800000104b7a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b81:	00 00 00 
ffff800000104b84:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104b88:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b8f:	00 00 00 
ffff800000104b92:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b96:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b9d:	00 00 00 
ffff800000104ba0:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104ba4:	99                   	cltd
ffff800000104ba5:	f7 ff                	idiv   %edi
ffff800000104ba7:	39 c1                	cmp    %eax,%ecx
ffff800000104ba9:	7c 12                	jl     ffff800000104bbd <color_printk+0x57f>
ffff800000104bab:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bb2:	00 00 00 
ffff800000104bb5:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104bbc:	00 
ffff800000104bbd:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104bc4:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104bca:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104bd0:	0f 8c 6d fb ff ff    	jl     ffff800000104743 <color_printk+0x105>
ffff800000104bd6:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104bdd:	0f 85 60 fb ff ff    	jne    ffff800000104743 <color_printk+0x105>
ffff800000104be3:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104be9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104bed:	c9                   	leave
ffff800000104bee:	c3                   	ret

ffff800000104bef <clear_screen>:
ffff800000104bef:	f3 0f 1e fa          	endbr64
ffff800000104bf3:	55                   	push   %rbp
ffff800000104bf4:	48 89 e5             	mov    %rsp,%rbp
ffff800000104bf7:	53                   	push   %rbx
ffff800000104bf8:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104bfc:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104bfc <clear_screen+0xd>
ffff800000104c03:	49 bb 74 a2 00 00 00 	movabs $0xa274,%r11
ffff800000104c0a:	00 00 00 
ffff800000104c0d:	4c 01 db             	add    %r11,%rbx
ffff800000104c10:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104c13:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104c16:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c1d:	00 00 00 
ffff800000104c20:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104c23:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c2a:	00 00 00 
ffff800000104c2d:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104c31:	99                   	cltd
ffff800000104c32:	f7 f9                	idiv   %ecx
ffff800000104c34:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104c37:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c3e:	00 00 00 
ffff800000104c41:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104c45:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c4c:	00 00 00 
ffff800000104c4f:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104c53:	99                   	cltd
ffff800000104c54:	f7 fe                	idiv   %esi
ffff800000104c56:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104c59:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104c60:	e9 83 00 00 00       	jmp    ffff800000104ce8 <clear_screen+0xf9>
ffff800000104c65:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104c6c:	eb 6e                	jmp    ffff800000104cdc <clear_screen+0xed>
ffff800000104c6e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c75:	00 00 00 
ffff800000104c78:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104c7c:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104c80:	89 c1                	mov    %eax,%ecx
ffff800000104c82:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c89:	00 00 00 
ffff800000104c8c:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c90:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104c94:	89 c2                	mov    %eax,%edx
ffff800000104c96:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c9d:	00 00 00 
ffff800000104ca0:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104ca3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104caa:	00 00 00 
ffff800000104cad:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104cb2:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104cb6:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104cb9:	6a 20                	push   $0x20
ffff800000104cbb:	45 89 c1             	mov    %r8d,%r9d
ffff800000104cbe:	41 89 f8             	mov    %edi,%r8d
ffff800000104cc1:	48 89 c7             	mov    %rax,%rdi
ffff800000104cc4:	48 b8 c2 56 ff ff ff 	movabs $0xffffffffffff56c2,%rax
ffff800000104ccb:	ff ff ff 
ffff800000104cce:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104cd2:	ff d0                	call   *%rax
ffff800000104cd4:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104cd8:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104cdc:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104cdf:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104ce2:	7c 8a                	jl     ffff800000104c6e <clear_screen+0x7f>
ffff800000104ce4:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104ce8:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104ceb:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104cee:	0f 8c 71 ff ff ff    	jl     ffff800000104c65 <clear_screen+0x76>
ffff800000104cf4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cfb:	00 00 00 
ffff800000104cfe:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104d05:	00 
ffff800000104d06:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d0d:	00 00 00 
ffff800000104d10:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104d17:	00 
ffff800000104d18:	90                   	nop
ffff800000104d19:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104d1d:	c9                   	leave
ffff800000104d1e:	c3                   	ret

ffff800000104d1f <skip_atoi2>:
ffff800000104d1f:	f3 0f 1e fa          	endbr64
ffff800000104d23:	55                   	push   %rbp
ffff800000104d24:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d27:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d27 <skip_atoi2+0x8>
ffff800000104d2e:	49 bb 49 a1 00 00 00 	movabs $0xa149,%r11
ffff800000104d35:	00 00 00 
ffff800000104d38:	4c 01 d8             	add    %r11,%rax
ffff800000104d3b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d3f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104d46:	eb 39                	jmp    ffff800000104d81 <skip_atoi2+0x62>
ffff800000104d48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d4c:	48 8b 00             	mov    (%rax),%rax
ffff800000104d4f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d52:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d59:	48 8b 00             	mov    (%rax),%rax
ffff800000104d5c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d60:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d64:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d67:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104d6a:	89 d0                	mov    %edx,%eax
ffff800000104d6c:	c1 e0 02             	shl    $0x2,%eax
ffff800000104d6f:	01 d0                	add    %edx,%eax
ffff800000104d71:	01 c0                	add    %eax,%eax
ffff800000104d73:	89 c2                	mov    %eax,%edx
ffff800000104d75:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104d79:	83 e8 30             	sub    $0x30,%eax
ffff800000104d7c:	01 d0                	add    %edx,%eax
ffff800000104d7e:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104d81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d85:	48 8b 00             	mov    (%rax),%rax
ffff800000104d88:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d8b:	3c 2f                	cmp    $0x2f,%al
ffff800000104d8d:	7e 0e                	jle    ffff800000104d9d <skip_atoi2+0x7e>
ffff800000104d8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d93:	48 8b 00             	mov    (%rax),%rax
ffff800000104d96:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d99:	3c 39                	cmp    $0x39,%al
ffff800000104d9b:	7e ab                	jle    ffff800000104d48 <skip_atoi2+0x29>
ffff800000104d9d:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104da0:	5d                   	pop    %rbp
ffff800000104da1:	c3                   	ret

ffff800000104da2 <skip_atoi>:
ffff800000104da2:	f3 0f 1e fa          	endbr64
ffff800000104da6:	55                   	push   %rbp
ffff800000104da7:	48 89 e5             	mov    %rsp,%rbp
ffff800000104daa:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104daa <skip_atoi+0x8>
ffff800000104db1:	49 bb c6 a0 00 00 00 	movabs $0xa0c6,%r11
ffff800000104db8:	00 00 00 
ffff800000104dbb:	4c 01 d8             	add    %r11,%rax
ffff800000104dbe:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104dc2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104dc9:	eb 2c                	jmp    ffff800000104df7 <skip_atoi+0x55>
ffff800000104dcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dcf:	48 8b 00             	mov    (%rax),%rax
ffff800000104dd2:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104dd6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dda:	48 89 10             	mov    %rdx,(%rax)
ffff800000104ddd:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104de0:	89 d0                	mov    %edx,%eax
ffff800000104de2:	c1 e0 02             	shl    $0x2,%eax
ffff800000104de5:	01 d0                	add    %edx,%eax
ffff800000104de7:	01 c0                	add    %eax,%eax
ffff800000104de9:	89 c2                	mov    %eax,%edx
ffff800000104deb:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104def:	83 e8 30             	sub    $0x30,%eax
ffff800000104df2:	01 d0                	add    %edx,%eax
ffff800000104df4:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104df7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104dfb:	48 8b 00             	mov    (%rax),%rax
ffff800000104dfe:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e01:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104e04:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104e08:	7e 13                	jle    ffff800000104e1d <skip_atoi+0x7b>
ffff800000104e0a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104e0e:	48 8b 00             	mov    (%rax),%rax
ffff800000104e11:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e14:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104e17:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104e1b:	7e ae                	jle    ffff800000104dcb <skip_atoi+0x29>
ffff800000104e1d:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104e20:	5d                   	pop    %rbp
ffff800000104e21:	c3                   	ret

ffff800000104e22 <number>:
ffff800000104e22:	f3 0f 1e fa          	endbr64
ffff800000104e26:	55                   	push   %rbp
ffff800000104e27:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e2a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104e2a <number+0x8>
ffff800000104e31:	49 bb 46 a0 00 00 00 	movabs $0xa046,%r11
ffff800000104e38:	00 00 00 
ffff800000104e3b:	4c 01 d8             	add    %r11,%rax
ffff800000104e3e:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104e42:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104e46:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104e49:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104e4c:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104e50:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104e54:	48 ba 18 9b ff ff ff 	movabs $0xffffffffffff9b18,%rdx
ffff800000104e5b:	ff ff ff 
ffff800000104e5e:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104e62:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104e66:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104e6d:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104e70:	83 e2 40             	and    $0x40,%edx
ffff800000104e73:	85 d2                	test   %edx,%edx
ffff800000104e75:	74 12                	je     ffff800000104e89 <number+0x67>
ffff800000104e77:	48 ba 40 9b ff ff ff 	movabs $0xffffffffffff9b40,%rdx
ffff800000104e7e:	ff ff ff 
ffff800000104e81:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104e85:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104e89:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e8c:	83 e0 10             	and    $0x10,%eax
ffff800000104e8f:	85 c0                	test   %eax,%eax
ffff800000104e91:	74 04                	je     ffff800000104e97 <number+0x75>
ffff800000104e93:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104e97:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104e9b:	7e 06                	jle    ffff800000104ea3 <number+0x81>
ffff800000104e9d:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104ea1:	7e 0a                	jle    ffff800000104ead <number+0x8b>
ffff800000104ea3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104ea8:	e9 0f 02 00 00       	jmp    ffff8000001050bc <number+0x29a>
ffff800000104ead:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104eb0:	83 e0 01             	and    $0x1,%eax
ffff800000104eb3:	85 c0                	test   %eax,%eax
ffff800000104eb5:	74 07                	je     ffff800000104ebe <number+0x9c>
ffff800000104eb7:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104ebc:	eb 05                	jmp    ffff800000104ec3 <number+0xa1>
ffff800000104ebe:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104ec3:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104ec6:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104eca:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ecd:	83 e0 02             	and    $0x2,%eax
ffff800000104ed0:	85 c0                	test   %eax,%eax
ffff800000104ed2:	74 11                	je     ffff800000104ee5 <number+0xc3>
ffff800000104ed4:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104ed9:	79 0a                	jns    ffff800000104ee5 <number+0xc3>
ffff800000104edb:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104edf:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104ee3:	eb 1d                	jmp    ffff800000104f02 <number+0xe0>
ffff800000104ee5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ee8:	83 e0 04             	and    $0x4,%eax
ffff800000104eeb:	85 c0                	test   %eax,%eax
ffff800000104eed:	75 0b                	jne    ffff800000104efa <number+0xd8>
ffff800000104eef:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ef2:	c1 e0 02             	shl    $0x2,%eax
ffff800000104ef5:	83 e0 20             	and    $0x20,%eax
ffff800000104ef8:	eb 05                	jmp    ffff800000104eff <number+0xdd>
ffff800000104efa:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104eff:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104f02:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104f06:	74 04                	je     ffff800000104f0c <number+0xea>
ffff800000104f08:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104f0c:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f0f:	83 e0 20             	and    $0x20,%eax
ffff800000104f12:	85 c0                	test   %eax,%eax
ffff800000104f14:	74 16                	je     ffff800000104f2c <number+0x10a>
ffff800000104f16:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104f1a:	75 06                	jne    ffff800000104f22 <number+0x100>
ffff800000104f1c:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104f20:	eb 0a                	jmp    ffff800000104f2c <number+0x10a>
ffff800000104f22:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104f26:	75 04                	jne    ffff800000104f2c <number+0x10a>
ffff800000104f28:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104f2c:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f31:	75 4b                	jne    ffff800000104f7e <number+0x15c>
ffff800000104f33:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f36:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f39:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f3c:	48 98                	cltq
ffff800000104f3e:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104f43:	eb 40                	jmp    ffff800000104f85 <number+0x163>
ffff800000104f45:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104f48:	48 63 c8             	movslq %eax,%rcx
ffff800000104f4b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f4f:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104f54:	48 f7 f1             	div    %rcx
ffff800000104f57:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f5b:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104f5e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104f61:	48 63 d0             	movslq %eax,%rdx
ffff800000104f64:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f68:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104f6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f6f:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104f72:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f75:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f78:	48 98                	cltq
ffff800000104f7a:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104f7e:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104f83:	75 c0                	jne    ffff800000104f45 <number+0x123>
ffff800000104f85:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f88:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104f8b:	7e 06                	jle    ffff800000104f93 <number+0x171>
ffff800000104f8d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f90:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104f93:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f96:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104f99:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f9c:	83 e0 11             	and    $0x11,%eax
ffff800000104f9f:	85 c0                	test   %eax,%eax
ffff800000104fa1:	75 1e                	jne    ffff800000104fc1 <number+0x19f>
ffff800000104fa3:	eb 0f                	jmp    ffff800000104fb4 <number+0x192>
ffff800000104fa5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fa9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fad:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fb1:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104fb4:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104fb7:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fba:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104fbd:	85 c0                	test   %eax,%eax
ffff800000104fbf:	7f e4                	jg     ffff800000104fa5 <number+0x183>
ffff800000104fc1:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104fc5:	74 12                	je     ffff800000104fd9 <number+0x1b7>
ffff800000104fc7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fcb:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fcf:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fd3:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104fd7:	88 10                	mov    %dl,(%rax)
ffff800000104fd9:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104fdc:	83 e0 20             	and    $0x20,%eax
ffff800000104fdf:	85 c0                	test   %eax,%eax
ffff800000104fe1:	74 45                	je     ffff800000105028 <number+0x206>
ffff800000104fe3:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104fe7:	75 11                	jne    ffff800000104ffa <number+0x1d8>
ffff800000104fe9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fed:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ff1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ff5:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104ff8:	eb 2e                	jmp    ffff800000105028 <number+0x206>
ffff800000104ffa:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104ffe:	75 28                	jne    ffff800000105028 <number+0x206>
ffff800000105000:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105004:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105008:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010500c:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010500f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000105013:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000105017:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010501b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010501f:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105023:	0f b6 11             	movzbl (%rcx),%edx
ffff800000105026:	88 10                	mov    %dl,(%rax)
ffff800000105028:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010502b:	83 e0 10             	and    $0x10,%eax
ffff80000010502e:	85 c0                	test   %eax,%eax
ffff800000105030:	75 32                	jne    ffff800000105064 <number+0x242>
ffff800000105032:	eb 12                	jmp    ffff800000105046 <number+0x224>
ffff800000105034:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105038:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010503c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105040:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000105044:	88 10                	mov    %dl,(%rax)
ffff800000105046:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105049:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010504c:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff80000010504f:	85 c0                	test   %eax,%eax
ffff800000105051:	7f e1                	jg     ffff800000105034 <number+0x212>
ffff800000105053:	eb 0f                	jmp    ffff800000105064 <number+0x242>
ffff800000105055:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105059:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010505d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105061:	c6 00 30             	movb   $0x30,(%rax)
ffff800000105064:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000105067:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010506a:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff80000010506d:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000105070:	7c e3                	jl     ffff800000105055 <number+0x233>
ffff800000105072:	eb 19                	jmp    ffff80000010508d <number+0x26b>
ffff800000105074:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105078:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010507c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105080:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105083:	48 63 d2             	movslq %edx,%rdx
ffff800000105086:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff80000010508b:	88 10                	mov    %dl,(%rax)
ffff80000010508d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105090:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105093:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000105096:	85 c0                	test   %eax,%eax
ffff800000105098:	7f da                	jg     ffff800000105074 <number+0x252>
ffff80000010509a:	eb 0f                	jmp    ffff8000001050ab <number+0x289>
ffff80000010509c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050a0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001050a4:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001050a8:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001050ab:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001050ae:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001050b1:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001050b4:	85 c0                	test   %eax,%eax
ffff8000001050b6:	7f e4                	jg     ffff80000010509c <number+0x27a>
ffff8000001050b8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050bc:	5d                   	pop    %rbp
ffff8000001050bd:	c3                   	ret

ffff8000001050be <vsprintf>:
ffff8000001050be:	f3 0f 1e fa          	endbr64
ffff8000001050c2:	55                   	push   %rbp
ffff8000001050c3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050c6:	53                   	push   %rbx
ffff8000001050c7:	48 83 ec 68          	sub    $0x68,%rsp
ffff8000001050cb:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001050cb <vsprintf+0xd>
ffff8000001050d2:	49 bb a5 9d 00 00 00 	movabs $0x9da5,%r11
ffff8000001050d9:	00 00 00 
ffff8000001050dc:	4c 01 db             	add    %r11,%rbx
ffff8000001050df:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff8000001050e3:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff8000001050e7:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff8000001050eb:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001050ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001050f3:	e9 f8 08 00 00       	jmp    ffff8000001059f0 <vsprintf+0x932>
ffff8000001050f8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050fc:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050ff:	3c 25                	cmp    $0x25,%al
ffff800000105101:	74 1a                	je     ffff80000010511d <vsprintf+0x5f>
ffff800000105103:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105107:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010510b:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010510f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105113:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105116:	88 10                	mov    %dl,(%rax)
ffff800000105118:	e9 c7 08 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff80000010511d:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000105124:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105128:	48 83 c0 01          	add    $0x1,%rax
ffff80000010512c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105130:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105134:	0f b6 00             	movzbl (%rax),%eax
ffff800000105137:	0f be c0             	movsbl %al,%eax
ffff80000010513a:	83 e8 20             	sub    $0x20,%eax
ffff80000010513d:	83 f8 10             	cmp    $0x10,%eax
ffff800000105140:	77 40                	ja     ffff800000105182 <vsprintf+0xc4>
ffff800000105142:	89 c0                	mov    %eax,%eax
ffff800000105144:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010514b:	00 
ffff80000010514c:	48 8d 05 85 38 00 00 	lea    0x3885(%rip),%rax        # ffff8000001089d8 <.LC1+0x28>
ffff800000105153:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105157:	48 8d 15 7a 38 00 00 	lea    0x387a(%rip),%rdx        # ffff8000001089d8 <.LC1+0x28>
ffff80000010515e:	48 01 d0             	add    %rdx,%rax
ffff800000105161:	3e ff e0             	notrack jmp *%rax
ffff800000105164:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105168:	eb ba                	jmp    ffff800000105124 <vsprintf+0x66>
ffff80000010516a:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff80000010516e:	eb b4                	jmp    ffff800000105124 <vsprintf+0x66>
ffff800000105170:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000105174:	eb ae                	jmp    ffff800000105124 <vsprintf+0x66>
ffff800000105176:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff80000010517a:	eb a8                	jmp    ffff800000105124 <vsprintf+0x66>
ffff80000010517c:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105180:	eb a2                	jmp    ffff800000105124 <vsprintf+0x66>
ffff800000105182:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000105189:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010518d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105190:	3c 2f                	cmp    $0x2f,%al
ffff800000105192:	7e 27                	jle    ffff8000001051bb <vsprintf+0xfd>
ffff800000105194:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105198:	0f b6 00             	movzbl (%rax),%eax
ffff80000010519b:	3c 39                	cmp    $0x39,%al
ffff80000010519d:	7f 1c                	jg     ffff8000001051bb <vsprintf+0xfd>
ffff80000010519f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001051a3:	48 89 c7             	mov    %rax,%rdi
ffff8000001051a6:	48 b8 32 5f ff ff ff 	movabs $0xffffffffffff5f32,%rax
ffff8000001051ad:	ff ff ff 
ffff8000001051b0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051b4:	ff d0                	call   *%rax
ffff8000001051b6:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001051b9:	eb 6c                	jmp    ffff800000105227 <vsprintf+0x169>
ffff8000001051bb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051bf:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051c2:	3c 2a                	cmp    $0x2a,%al
ffff8000001051c4:	75 61                	jne    ffff800000105227 <vsprintf+0x169>
ffff8000001051c6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051ca:	48 83 c0 01          	add    $0x1,%rax
ffff8000001051ce:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001051d2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051d6:	8b 00                	mov    (%rax),%eax
ffff8000001051d8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001051db:	77 24                	ja     ffff800000105201 <vsprintf+0x143>
ffff8000001051dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051e1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001051e5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051e9:	8b 00                	mov    (%rax),%eax
ffff8000001051eb:	89 c0                	mov    %eax,%eax
ffff8000001051ed:	48 01 d0             	add    %rdx,%rax
ffff8000001051f0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051f4:	8b 12                	mov    (%rdx),%edx
ffff8000001051f6:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051fd:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051ff:	eb 14                	jmp    ffff800000105215 <vsprintf+0x157>
ffff800000105201:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105205:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105209:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010520d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105211:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105215:	8b 00                	mov    (%rax),%eax
ffff800000105217:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff80000010521a:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010521e:	79 07                	jns    ffff800000105227 <vsprintf+0x169>
ffff800000105220:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000105223:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105227:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff80000010522e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105232:	0f b6 00             	movzbl (%rax),%eax
ffff800000105235:	3c 2e                	cmp    $0x2e,%al
ffff800000105237:	0f 85 aa 00 00 00    	jne    ffff8000001052e7 <vsprintf+0x229>
ffff80000010523d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105241:	48 83 c0 01          	add    $0x1,%rax
ffff800000105245:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105249:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010524d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105250:	3c 2f                	cmp    $0x2f,%al
ffff800000105252:	7e 27                	jle    ffff80000010527b <vsprintf+0x1bd>
ffff800000105254:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105258:	0f b6 00             	movzbl (%rax),%eax
ffff80000010525b:	3c 39                	cmp    $0x39,%al
ffff80000010525d:	7f 1c                	jg     ffff80000010527b <vsprintf+0x1bd>
ffff80000010525f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105263:	48 89 c7             	mov    %rax,%rdi
ffff800000105266:	48 b8 32 5f ff ff ff 	movabs $0xffffffffffff5f32,%rax
ffff80000010526d:	ff ff ff 
ffff800000105270:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105274:	ff d0                	call   *%rax
ffff800000105276:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105279:	eb 5f                	jmp    ffff8000001052da <vsprintf+0x21c>
ffff80000010527b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010527f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105282:	3c 2a                	cmp    $0x2a,%al
ffff800000105284:	75 54                	jne    ffff8000001052da <vsprintf+0x21c>
ffff800000105286:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010528a:	48 83 c0 01          	add    $0x1,%rax
ffff80000010528e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105292:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105296:	8b 00                	mov    (%rax),%eax
ffff800000105298:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010529b:	77 24                	ja     ffff8000001052c1 <vsprintf+0x203>
ffff80000010529d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052a5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a9:	8b 00                	mov    (%rax),%eax
ffff8000001052ab:	89 c0                	mov    %eax,%eax
ffff8000001052ad:	48 01 d0             	add    %rdx,%rax
ffff8000001052b0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052b4:	8b 12                	mov    (%rdx),%edx
ffff8000001052b6:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052b9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052bd:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052bf:	eb 14                	jmp    ffff8000001052d5 <vsprintf+0x217>
ffff8000001052c1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052c5:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052c9:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052cd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052d1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052d5:	8b 00                	mov    (%rax),%eax
ffff8000001052d7:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001052da:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001052de:	79 07                	jns    ffff8000001052e7 <vsprintf+0x229>
ffff8000001052e0:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001052e7:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001052ee:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052f2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001052f5:	3c 68                	cmp    $0x68,%al
ffff8000001052f7:	74 21                	je     ffff80000010531a <vsprintf+0x25c>
ffff8000001052f9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001052fd:	0f b6 00             	movzbl (%rax),%eax
ffff800000105300:	3c 6c                	cmp    $0x6c,%al
ffff800000105302:	74 16                	je     ffff80000010531a <vsprintf+0x25c>
ffff800000105304:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105308:	0f b6 00             	movzbl (%rax),%eax
ffff80000010530b:	3c 4c                	cmp    $0x4c,%al
ffff80000010530d:	74 0b                	je     ffff80000010531a <vsprintf+0x25c>
ffff80000010530f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105313:	0f b6 00             	movzbl (%rax),%eax
ffff800000105316:	3c 7a                	cmp    $0x7a,%al
ffff800000105318:	75 19                	jne    ffff800000105333 <vsprintf+0x275>
ffff80000010531a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010531e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105321:	0f be c0             	movsbl %al,%eax
ffff800000105324:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105327:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010532b:	48 83 c0 01          	add    $0x1,%rax
ffff80000010532f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105333:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105337:	0f b6 00             	movzbl (%rax),%eax
ffff80000010533a:	0f be c0             	movsbl %al,%eax
ffff80000010533d:	83 e8 25             	sub    $0x25,%eax
ffff800000105340:	83 f8 53             	cmp    $0x53,%eax
ffff800000105343:	0f 87 5d 06 00 00    	ja     ffff8000001059a6 <vsprintf+0x8e8>
ffff800000105349:	89 c0                	mov    %eax,%eax
ffff80000010534b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105352:	00 
ffff800000105353:	48 8d 05 06 37 00 00 	lea    0x3706(%rip),%rax        # ffff800000108a60 <.LC1+0xb0>
ffff80000010535a:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010535e:	48 8d 15 fb 36 00 00 	lea    0x36fb(%rip),%rdx        # ffff800000108a60 <.LC1+0xb0>
ffff800000105365:	48 01 d0             	add    %rdx,%rax
ffff800000105368:	3e ff e0             	notrack jmp *%rax
ffff80000010536b:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010536e:	83 e0 10             	and    $0x10,%eax
ffff800000105371:	85 c0                	test   %eax,%eax
ffff800000105373:	75 1b                	jne    ffff800000105390 <vsprintf+0x2d2>
ffff800000105375:	eb 0f                	jmp    ffff800000105386 <vsprintf+0x2c8>
ffff800000105377:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010537b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010537f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105383:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105386:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff80000010538a:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010538e:	7f e7                	jg     ffff800000105377 <vsprintf+0x2b9>
ffff800000105390:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105394:	8b 00                	mov    (%rax),%eax
ffff800000105396:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105399:	77 24                	ja     ffff8000001053bf <vsprintf+0x301>
ffff80000010539b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010539f:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053a3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053a7:	8b 00                	mov    (%rax),%eax
ffff8000001053a9:	89 c0                	mov    %eax,%eax
ffff8000001053ab:	48 01 d0             	add    %rdx,%rax
ffff8000001053ae:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053b2:	8b 12                	mov    (%rdx),%edx
ffff8000001053b4:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001053b7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053bb:	89 0a                	mov    %ecx,(%rdx)
ffff8000001053bd:	eb 14                	jmp    ffff8000001053d3 <vsprintf+0x315>
ffff8000001053bf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053c3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053c7:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053cb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053cf:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053d3:	8b 08                	mov    (%rax),%ecx
ffff8000001053d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053d9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053dd:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053e1:	89 ca                	mov    %ecx,%edx
ffff8000001053e3:	88 10                	mov    %dl,(%rax)
ffff8000001053e5:	eb 0f                	jmp    ffff8000001053f6 <vsprintf+0x338>
ffff8000001053e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053eb:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053ef:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053f3:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053f6:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001053fa:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001053fe:	7f e7                	jg     ffff8000001053e7 <vsprintf+0x329>
ffff800000105400:	e9 df 05 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105405:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105409:	8b 00                	mov    (%rax),%eax
ffff80000010540b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010540e:	77 24                	ja     ffff800000105434 <vsprintf+0x376>
ffff800000105410:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105414:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105418:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010541c:	8b 00                	mov    (%rax),%eax
ffff80000010541e:	89 c0                	mov    %eax,%eax
ffff800000105420:	48 01 d0             	add    %rdx,%rax
ffff800000105423:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105427:	8b 12                	mov    (%rdx),%edx
ffff800000105429:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010542c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105430:	89 0a                	mov    %ecx,(%rdx)
ffff800000105432:	eb 14                	jmp    ffff800000105448 <vsprintf+0x38a>
ffff800000105434:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105438:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010543c:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105440:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105444:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105448:	48 8b 00             	mov    (%rax),%rax
ffff80000010544b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010544f:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105454:	75 08                	jne    ffff80000010545e <vsprintf+0x3a0>
ffff800000105456:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010545d:	00 
ffff80000010545e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105462:	48 89 c7             	mov    %rax,%rdi
ffff800000105465:	48 b8 7e 56 ff ff ff 	movabs $0xffffffffffff567e,%rax
ffff80000010546c:	ff ff ff 
ffff80000010546f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105473:	ff d0                	call   *%rax
ffff800000105475:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105478:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010547c:	79 08                	jns    ffff800000105486 <vsprintf+0x3c8>
ffff80000010547e:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105481:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105484:	eb 0e                	jmp    ffff800000105494 <vsprintf+0x3d6>
ffff800000105486:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105489:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff80000010548c:	7e 06                	jle    ffff800000105494 <vsprintf+0x3d6>
ffff80000010548e:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000105491:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105494:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105497:	83 e0 10             	and    $0x10,%eax
ffff80000010549a:	85 c0                	test   %eax,%eax
ffff80000010549c:	75 1f                	jne    ffff8000001054bd <vsprintf+0x3ff>
ffff80000010549e:	eb 0f                	jmp    ffff8000001054af <vsprintf+0x3f1>
ffff8000001054a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054a4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001054a8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054ac:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001054af:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001054b2:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001054b5:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001054b8:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001054bb:	7c e3                	jl     ffff8000001054a0 <vsprintf+0x3e2>
ffff8000001054bd:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001054c4:	eb 21                	jmp    ffff8000001054e7 <vsprintf+0x429>
ffff8000001054c6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001054ca:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001054ce:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001054d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054d6:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001054da:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001054de:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001054e1:	88 10                	mov    %dl,(%rax)
ffff8000001054e3:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff8000001054e7:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001054ea:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001054ed:	7c d7                	jl     ffff8000001054c6 <vsprintf+0x408>
ffff8000001054ef:	eb 0f                	jmp    ffff800000105500 <vsprintf+0x442>
ffff8000001054f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054f5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001054f9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054fd:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105500:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105503:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105506:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105509:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff80000010550c:	7c e3                	jl     ffff8000001054f1 <vsprintf+0x433>
ffff80000010550e:	e9 d1 04 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105513:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105517:	0f 85 82 00 00 00    	jne    ffff80000010559f <vsprintf+0x4e1>
ffff80000010551d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105521:	8b 00                	mov    (%rax),%eax
ffff800000105523:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105526:	77 24                	ja     ffff80000010554c <vsprintf+0x48e>
ffff800000105528:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010552c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105530:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105534:	8b 00                	mov    (%rax),%eax
ffff800000105536:	89 c0                	mov    %eax,%eax
ffff800000105538:	48 01 d0             	add    %rdx,%rax
ffff80000010553b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010553f:	8b 12                	mov    (%rdx),%edx
ffff800000105541:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105544:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105548:	89 0a                	mov    %ecx,(%rdx)
ffff80000010554a:	eb 14                	jmp    ffff800000105560 <vsprintf+0x4a2>
ffff80000010554c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105550:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105554:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105558:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010555c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105560:	48 8b 00             	mov    (%rax),%rax
ffff800000105563:	48 89 c7             	mov    %rax,%rdi
ffff800000105566:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105569:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010556c:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010556f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105573:	41 89 f1             	mov    %esi,%r9d
ffff800000105576:	41 89 c8             	mov    %ecx,%r8d
ffff800000105579:	89 d1                	mov    %edx,%ecx
ffff80000010557b:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105580:	48 89 fe             	mov    %rdi,%rsi
ffff800000105583:	48 89 c7             	mov    %rax,%rdi
ffff800000105586:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff80000010558d:	ff ff ff 
ffff800000105590:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105594:	ff d0                	call   *%rax
ffff800000105596:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010559a:	e9 45 04 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff80000010559f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055a3:	8b 00                	mov    (%rax),%eax
ffff8000001055a5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055a8:	77 24                	ja     ffff8000001055ce <vsprintf+0x510>
ffff8000001055aa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ae:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055b2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055b6:	8b 00                	mov    (%rax),%eax
ffff8000001055b8:	89 c0                	mov    %eax,%eax
ffff8000001055ba:	48 01 d0             	add    %rdx,%rax
ffff8000001055bd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055c1:	8b 12                	mov    (%rdx),%edx
ffff8000001055c3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055c6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ca:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055cc:	eb 14                	jmp    ffff8000001055e2 <vsprintf+0x524>
ffff8000001055ce:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055d6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055da:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055de:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055e2:	8b 00                	mov    (%rax),%eax
ffff8000001055e4:	89 c7                	mov    %eax,%edi
ffff8000001055e6:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001055e9:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055ec:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055f3:	41 89 f1             	mov    %esi,%r9d
ffff8000001055f6:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055f9:	89 d1                	mov    %edx,%ecx
ffff8000001055fb:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105600:	48 89 fe             	mov    %rdi,%rsi
ffff800000105603:	48 89 c7             	mov    %rax,%rdi
ffff800000105606:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff80000010560d:	ff ff ff 
ffff800000105610:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105614:	ff d0                	call   *%rax
ffff800000105616:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010561a:	e9 c5 03 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff80000010561f:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff800000105623:	75 0b                	jne    ffff800000105630 <vsprintf+0x572>
ffff800000105625:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff80000010562c:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105630:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105634:	8b 00                	mov    (%rax),%eax
ffff800000105636:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105639:	77 24                	ja     ffff80000010565f <vsprintf+0x5a1>
ffff80000010563b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010563f:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105643:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105647:	8b 00                	mov    (%rax),%eax
ffff800000105649:	89 c0                	mov    %eax,%eax
ffff80000010564b:	48 01 d0             	add    %rdx,%rax
ffff80000010564e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105652:	8b 12                	mov    (%rdx),%edx
ffff800000105654:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105657:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010565b:	89 0a                	mov    %ecx,(%rdx)
ffff80000010565d:	eb 14                	jmp    ffff800000105673 <vsprintf+0x5b5>
ffff80000010565f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105663:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105667:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010566b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010566f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105673:	48 8b 00             	mov    (%rax),%rax
ffff800000105676:	48 89 c7             	mov    %rax,%rdi
ffff800000105679:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010567c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010567f:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105682:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105686:	41 89 f1             	mov    %esi,%r9d
ffff800000105689:	41 89 c8             	mov    %ecx,%r8d
ffff80000010568c:	89 d1                	mov    %edx,%ecx
ffff80000010568e:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105693:	48 89 fe             	mov    %rdi,%rsi
ffff800000105696:	48 89 c7             	mov    %rax,%rdi
ffff800000105699:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff8000001056a0:	ff ff ff 
ffff8000001056a3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056a7:	ff d0                	call   *%rax
ffff8000001056a9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056ad:	e9 32 03 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff8000001056b2:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001056b6:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001056ba:	0f 85 82 00 00 00    	jne    ffff800000105742 <vsprintf+0x684>
ffff8000001056c0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056c4:	8b 00                	mov    (%rax),%eax
ffff8000001056c6:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056c9:	77 24                	ja     ffff8000001056ef <vsprintf+0x631>
ffff8000001056cb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056cf:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001056d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056d7:	8b 00                	mov    (%rax),%eax
ffff8000001056d9:	89 c0                	mov    %eax,%eax
ffff8000001056db:	48 01 d0             	add    %rdx,%rax
ffff8000001056de:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056e2:	8b 12                	mov    (%rdx),%edx
ffff8000001056e4:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001056e7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056eb:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056ed:	eb 14                	jmp    ffff800000105703 <vsprintf+0x645>
ffff8000001056ef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056f3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056f7:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056fb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056ff:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105703:	48 8b 00             	mov    (%rax),%rax
ffff800000105706:	48 89 c7             	mov    %rax,%rdi
ffff800000105709:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010570c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010570f:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105712:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105716:	41 89 f1             	mov    %esi,%r9d
ffff800000105719:	41 89 c8             	mov    %ecx,%r8d
ffff80000010571c:	89 d1                	mov    %edx,%ecx
ffff80000010571e:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105723:	48 89 fe             	mov    %rdi,%rsi
ffff800000105726:	48 89 c7             	mov    %rax,%rdi
ffff800000105729:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff800000105730:	ff ff ff 
ffff800000105733:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105737:	ff d0                	call   *%rax
ffff800000105739:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010573d:	e9 a2 02 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105742:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105746:	8b 00                	mov    (%rax),%eax
ffff800000105748:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010574b:	77 24                	ja     ffff800000105771 <vsprintf+0x6b3>
ffff80000010574d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105751:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105755:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105759:	8b 00                	mov    (%rax),%eax
ffff80000010575b:	89 c0                	mov    %eax,%eax
ffff80000010575d:	48 01 d0             	add    %rdx,%rax
ffff800000105760:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105764:	8b 12                	mov    (%rdx),%edx
ffff800000105766:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105769:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010576d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010576f:	eb 14                	jmp    ffff800000105785 <vsprintf+0x6c7>
ffff800000105771:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105775:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105779:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010577d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105781:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105785:	8b 00                	mov    (%rax),%eax
ffff800000105787:	89 c7                	mov    %eax,%edi
ffff800000105789:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010578c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010578f:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105792:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105796:	41 89 f1             	mov    %esi,%r9d
ffff800000105799:	41 89 c8             	mov    %ecx,%r8d
ffff80000010579c:	89 d1                	mov    %edx,%ecx
ffff80000010579e:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001057a3:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057a6:	48 89 c7             	mov    %rax,%rdi
ffff8000001057a9:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff8000001057b0:	ff ff ff 
ffff8000001057b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057b7:	ff d0                	call   *%rax
ffff8000001057b9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057bd:	e9 22 02 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff8000001057c2:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001057c6:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001057ca:	0f 85 82 00 00 00    	jne    ffff800000105852 <vsprintf+0x794>
ffff8000001057d0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057d4:	8b 00                	mov    (%rax),%eax
ffff8000001057d6:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057d9:	77 24                	ja     ffff8000001057ff <vsprintf+0x741>
ffff8000001057db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057df:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057e3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e7:	8b 00                	mov    (%rax),%eax
ffff8000001057e9:	89 c0                	mov    %eax,%eax
ffff8000001057eb:	48 01 d0             	add    %rdx,%rax
ffff8000001057ee:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057f2:	8b 12                	mov    (%rdx),%edx
ffff8000001057f4:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057f7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057fb:	89 0a                	mov    %ecx,(%rdx)
ffff8000001057fd:	eb 14                	jmp    ffff800000105813 <vsprintf+0x755>
ffff8000001057ff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105803:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105807:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010580b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010580f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105813:	48 8b 00             	mov    (%rax),%rax
ffff800000105816:	48 89 c7             	mov    %rax,%rdi
ffff800000105819:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010581c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010581f:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105822:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105826:	41 89 f1             	mov    %esi,%r9d
ffff800000105829:	41 89 c8             	mov    %ecx,%r8d
ffff80000010582c:	89 d1                	mov    %edx,%ecx
ffff80000010582e:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105833:	48 89 fe             	mov    %rdi,%rsi
ffff800000105836:	48 89 c7             	mov    %rax,%rdi
ffff800000105839:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff800000105840:	ff ff ff 
ffff800000105843:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105847:	ff d0                	call   *%rax
ffff800000105849:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010584d:	e9 92 01 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105852:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105856:	8b 00                	mov    (%rax),%eax
ffff800000105858:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010585b:	77 24                	ja     ffff800000105881 <vsprintf+0x7c3>
ffff80000010585d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105861:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105865:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105869:	8b 00                	mov    (%rax),%eax
ffff80000010586b:	89 c0                	mov    %eax,%eax
ffff80000010586d:	48 01 d0             	add    %rdx,%rax
ffff800000105870:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105874:	8b 12                	mov    (%rdx),%edx
ffff800000105876:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105879:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010587d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010587f:	eb 14                	jmp    ffff800000105895 <vsprintf+0x7d7>
ffff800000105881:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105885:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105889:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010588d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105891:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105895:	8b 00                	mov    (%rax),%eax
ffff800000105897:	89 c7                	mov    %eax,%edi
ffff800000105899:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010589c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010589f:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001058a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058a6:	41 89 f1             	mov    %esi,%r9d
ffff8000001058a9:	41 89 c8             	mov    %ecx,%r8d
ffff8000001058ac:	89 d1                	mov    %edx,%ecx
ffff8000001058ae:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001058b3:	48 89 fe             	mov    %rdi,%rsi
ffff8000001058b6:	48 89 c7             	mov    %rax,%rdi
ffff8000001058b9:	48 b8 b2 5f ff ff ff 	movabs $0xffffffffffff5fb2,%rax
ffff8000001058c0:	ff ff ff 
ffff8000001058c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058c7:	ff d0                	call   *%rax
ffff8000001058c9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058cd:	e9 12 01 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff8000001058d2:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001058d6:	75 61                	jne    ffff800000105939 <vsprintf+0x87b>
ffff8000001058d8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058dc:	8b 00                	mov    (%rax),%eax
ffff8000001058de:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001058e1:	77 24                	ja     ffff800000105907 <vsprintf+0x849>
ffff8000001058e3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058e7:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001058eb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058ef:	8b 00                	mov    (%rax),%eax
ffff8000001058f1:	89 c0                	mov    %eax,%eax
ffff8000001058f3:	48 01 d0             	add    %rdx,%rax
ffff8000001058f6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058fa:	8b 12                	mov    (%rdx),%edx
ffff8000001058fc:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001058ff:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105903:	89 0a                	mov    %ecx,(%rdx)
ffff800000105905:	eb 14                	jmp    ffff80000010591b <vsprintf+0x85d>
ffff800000105907:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010590b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010590f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105913:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105917:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010591b:	48 8b 00             	mov    (%rax),%rax
ffff80000010591e:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105922:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105926:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010592a:	48 89 c2             	mov    %rax,%rdx
ffff80000010592d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105931:	48 89 10             	mov    %rdx,(%rax)
ffff800000105934:	e9 ab 00 00 00       	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105939:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010593d:	8b 00                	mov    (%rax),%eax
ffff80000010593f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105942:	77 24                	ja     ffff800000105968 <vsprintf+0x8aa>
ffff800000105944:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105948:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010594c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105950:	8b 00                	mov    (%rax),%eax
ffff800000105952:	89 c0                	mov    %eax,%eax
ffff800000105954:	48 01 d0             	add    %rdx,%rax
ffff800000105957:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010595b:	8b 12                	mov    (%rdx),%edx
ffff80000010595d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105960:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105964:	89 0a                	mov    %ecx,(%rdx)
ffff800000105966:	eb 14                	jmp    ffff80000010597c <vsprintf+0x8be>
ffff800000105968:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010596c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105970:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105974:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105978:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010597c:	48 8b 00             	mov    (%rax),%rax
ffff80000010597f:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105983:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105987:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010598b:	89 c2                	mov    %eax,%edx
ffff80000010598d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105991:	89 10                	mov    %edx,(%rax)
ffff800000105993:	eb 4f                	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff800000105995:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105999:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010599d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001059a1:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001059a4:	eb 3e                	jmp    ffff8000001059e4 <vsprintf+0x926>
ffff8000001059a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059aa:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001059ae:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001059b2:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001059b5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059b9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001059bc:	84 c0                	test   %al,%al
ffff8000001059be:	74 17                	je     ffff8000001059d7 <vsprintf+0x919>
ffff8000001059c0:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001059c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059c8:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001059cc:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001059d0:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001059d3:	88 10                	mov    %dl,(%rax)
ffff8000001059d5:	eb 0c                	jmp    ffff8000001059e3 <vsprintf+0x925>
ffff8000001059d7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059db:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001059df:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059e3:	90                   	nop
ffff8000001059e4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059e8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001059ec:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001059f0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001059f4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001059f7:	84 c0                	test   %al,%al
ffff8000001059f9:	0f 85 f9 f6 ff ff    	jne    ffff8000001050f8 <vsprintf+0x3a>
ffff8000001059ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a03:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105a06:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a0a:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105a0e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105a12:	c9                   	leave
ffff800000105a13:	c3                   	ret

ffff800000105a14 <set_intr_gate>:
ffff800000105a14:	f3 0f 1e fa          	endbr64
ffff800000105a18:	55                   	push   %rbp
ffff800000105a19:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a1c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a1c <set_intr_gate+0x8>
ffff800000105a23:	49 bb 54 94 00 00 00 	movabs $0x9454,%r11
ffff800000105a2a:	00 00 00 
ffff800000105a2d:	4c 01 d8             	add    %r11,%rax
ffff800000105a30:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a33:	89 f1                	mov    %esi,%ecx
ffff800000105a35:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a39:	89 ca                	mov    %ecx,%edx
ffff800000105a3b:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a3e:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a41:	48 89 d1             	mov    %rdx,%rcx
ffff800000105a44:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105a48:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a4f:	ff ff ff 
ffff800000105a52:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a56:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a5a:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a5d:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a61:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a65:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105a6c:	ff ff ff 
ffff800000105a6f:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a73:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a77:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a7b:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a81:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a85:	44 89 c0             	mov    %r8d,%eax
ffff800000105a88:	66 89 d0             	mov    %dx,%ax
ffff800000105a8b:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a8f:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105a96:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a9a:	48 01 c8             	add    %rcx,%rax
ffff800000105a9d:	48 31 c9             	xor    %rcx,%rcx
ffff800000105aa0:	89 d1                	mov    %edx,%ecx
ffff800000105aa2:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105aa6:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105aaa:	48 01 c8             	add    %rcx,%rax
ffff800000105aad:	48 89 06             	mov    %rax,(%rsi)
ffff800000105ab0:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105ab4:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105ab7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105abb:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105abf:	90                   	nop
ffff800000105ac0:	5d                   	pop    %rbp
ffff800000105ac1:	c3                   	ret

ffff800000105ac2 <set_trap_gate>:
ffff800000105ac2:	f3 0f 1e fa          	endbr64
ffff800000105ac6:	55                   	push   %rbp
ffff800000105ac7:	48 89 e5             	mov    %rsp,%rbp
ffff800000105aca:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105aca <set_trap_gate+0x8>
ffff800000105ad1:	49 bb a6 93 00 00 00 	movabs $0x93a6,%r11
ffff800000105ad8:	00 00 00 
ffff800000105adb:	4c 01 d8             	add    %r11,%rax
ffff800000105ade:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105ae1:	89 f1                	mov    %esi,%ecx
ffff800000105ae3:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105ae7:	89 ca                	mov    %ecx,%edx
ffff800000105ae9:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105aec:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105aef:	48 89 d1             	mov    %rdx,%rcx
ffff800000105af2:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105af6:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105afd:	ff ff ff 
ffff800000105b00:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b04:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105b08:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b0b:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105b0f:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105b13:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b1a:	ff ff ff 
ffff800000105b1d:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105b21:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105b25:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105b29:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105b2f:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105b33:	44 89 c0             	mov    %r8d,%eax
ffff800000105b36:	66 89 d0             	mov    %dx,%ax
ffff800000105b39:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105b3d:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105b44:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105b48:	48 01 c8             	add    %rcx,%rax
ffff800000105b4b:	48 31 c9             	xor    %rcx,%rcx
ffff800000105b4e:	89 d1                	mov    %edx,%ecx
ffff800000105b50:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b54:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b58:	48 01 c8             	add    %rcx,%rax
ffff800000105b5b:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b5e:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b62:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b65:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b69:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b6d:	90                   	nop
ffff800000105b6e:	5d                   	pop    %rbp
ffff800000105b6f:	c3                   	ret

ffff800000105b70 <set_system_gate>:
ffff800000105b70:	f3 0f 1e fa          	endbr64
ffff800000105b74:	55                   	push   %rbp
ffff800000105b75:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b78:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b78 <set_system_gate+0x8>
ffff800000105b7f:	49 bb f8 92 00 00 00 	movabs $0x92f8,%r11
ffff800000105b86:	00 00 00 
ffff800000105b89:	4c 01 d8             	add    %r11,%rax
ffff800000105b8c:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105b8f:	89 f1                	mov    %esi,%ecx
ffff800000105b91:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105b95:	89 ca                	mov    %ecx,%edx
ffff800000105b97:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105b9a:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105b9d:	48 89 d1             	mov    %rdx,%rcx
ffff800000105ba0:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105ba4:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105bab:	ff ff ff 
ffff800000105bae:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bb2:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105bb6:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105bb9:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105bbd:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105bc1:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105bc8:	ff ff ff 
ffff800000105bcb:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105bcf:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105bd3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105bd7:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105bdd:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105be1:	44 89 c0             	mov    %r8d,%eax
ffff800000105be4:	66 89 d0             	mov    %dx,%ax
ffff800000105be7:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105beb:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105bf2:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105bf6:	48 01 c8             	add    %rcx,%rax
ffff800000105bf9:	48 31 c9             	xor    %rcx,%rcx
ffff800000105bfc:	89 d1                	mov    %edx,%ecx
ffff800000105bfe:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105c02:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105c06:	48 01 c8             	add    %rcx,%rax
ffff800000105c09:	48 89 06             	mov    %rax,(%rsi)
ffff800000105c0c:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105c10:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105c13:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105c17:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105c1b:	90                   	nop
ffff800000105c1c:	5d                   	pop    %rbp
ffff800000105c1d:	c3                   	ret
ffff800000105c1e:	f3 0f 1e fa          	endbr64
ffff800000105c22:	55                   	push   %rbp
ffff800000105c23:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c26:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105c26 <set_system_gate+0xb6>
ffff800000105c2d:	49 bb 4a 92 00 00 00 	movabs $0x924a,%r11
ffff800000105c34:	00 00 00 
ffff800000105c37:	4c 01 d8             	add    %r11,%rax
ffff800000105c3a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105c3e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105c42:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105c46:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105c4a:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105c4e:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105c52:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c59:	ff ff ff 
ffff800000105c5c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c60:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105c64:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105c68:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c6b:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c72:	ff ff ff 
ffff800000105c75:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c79:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105c7d:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105c81:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c84:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105c8b:	ff ff ff 
ffff800000105c8e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c92:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105c96:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105c9a:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c9d:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ca4:	ff ff ff 
ffff800000105ca7:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cab:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105caf:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105cb3:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105cb6:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cbd:	ff ff ff 
ffff800000105cc0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cc4:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105cc8:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105ccc:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ccf:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cd6:	ff ff ff 
ffff800000105cd9:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cdd:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105ce1:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105ce5:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ce8:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105cef:	ff ff ff 
ffff800000105cf2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105cf6:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105cfa:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105cfe:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105d01:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105d08:	ff ff ff 
ffff800000105d0b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105d0f:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105d13:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105d17:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105d1a:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105d21:	ff ff ff 
ffff800000105d24:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105d28:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105d2c:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105d30:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105d33:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105d3a:	ff ff ff 
ffff800000105d3d:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105d41:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105d45:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105d49:	48 89 10             	mov    %rdx,(%rax)
ffff800000105d4c:	90                   	nop
ffff800000105d4d:	5d                   	pop    %rbp
ffff800000105d4e:	c3                   	ret

ffff800000105d4f <do_divide_error>:
ffff800000105d4f:	f3 0f 1e fa          	endbr64
ffff800000105d53:	55                   	push   %rbp
ffff800000105d54:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d57:	41 57                	push   %r15
ffff800000105d59:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d5d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d5d <do_divide_error+0xe>
ffff800000105d64:	49 bb 13 91 00 00 00 	movabs $0x9113,%r11
ffff800000105d6b:	00 00 00 
ffff800000105d6e:	4d 01 da             	add    %r11,%r10
ffff800000105d71:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d75:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d79:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d80:	00 
ffff800000105d81:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d85:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d8b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d93:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d96:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d9a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d9e:	49 89 c9             	mov    %rcx,%r9
ffff800000105da1:	49 89 d0             	mov    %rdx,%r8
ffff800000105da4:	48 89 c1             	mov    %rax,%rcx
ffff800000105da7:	48 b8 90 9e ff ff ff 	movabs $0xffffffffffff9e90,%rax
ffff800000105dae:	ff ff ff 
ffff800000105db1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105db5:	48 89 c2             	mov    %rax,%rdx
ffff800000105db8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105dbd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105dc2:	4d 89 d7             	mov    %r10,%r15
ffff800000105dc5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105dca:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000105dd1:	ff ff ff 
ffff800000105dd4:	4d 01 d3             	add    %r10,%r11
ffff800000105dd7:	41 ff d3             	call   *%r11
ffff800000105dda:	90                   	nop
ffff800000105ddb:	eb fd                	jmp    ffff800000105dda <do_divide_error+0x8b>

ffff800000105ddd <do_debug>:
ffff800000105ddd:	f3 0f 1e fa          	endbr64
ffff800000105de1:	55                   	push   %rbp
ffff800000105de2:	48 89 e5             	mov    %rsp,%rbp
ffff800000105de5:	41 57                	push   %r15
ffff800000105de7:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105deb:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105deb <do_debug+0xe>
ffff800000105df2:	49 bb 85 90 00 00 00 	movabs $0x9085,%r11
ffff800000105df9:	00 00 00 
ffff800000105dfc:	4d 01 da             	add    %r11,%r10
ffff800000105dff:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e03:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e07:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e0e:	00 
ffff800000105e0f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e13:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e19:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e21:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e24:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e28:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e2c:	49 89 c9             	mov    %rcx,%r9
ffff800000105e2f:	49 89 d0             	mov    %rdx,%r8
ffff800000105e32:	48 89 c1             	mov    %rax,%rcx
ffff800000105e35:	48 b8 d0 9e ff ff ff 	movabs $0xffffffffffff9ed0,%rax
ffff800000105e3c:	ff ff ff 
ffff800000105e3f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e43:	48 89 c2             	mov    %rax,%rdx
ffff800000105e46:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e4b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e50:	4d 89 d7             	mov    %r10,%r15
ffff800000105e53:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e58:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000105e5f:	ff ff ff 
ffff800000105e62:	4d 01 d3             	add    %r10,%r11
ffff800000105e65:	41 ff d3             	call   *%r11
ffff800000105e68:	90                   	nop
ffff800000105e69:	eb fd                	jmp    ffff800000105e68 <do_debug+0x8b>

ffff800000105e6b <do_nmi>:
ffff800000105e6b:	f3 0f 1e fa          	endbr64
ffff800000105e6f:	55                   	push   %rbp
ffff800000105e70:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e73:	41 57                	push   %r15
ffff800000105e75:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e79:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e79 <do_nmi+0xe>
ffff800000105e80:	49 bb f7 8f 00 00 00 	movabs $0x8ff7,%r11
ffff800000105e87:	00 00 00 
ffff800000105e8a:	4d 01 da             	add    %r11,%r10
ffff800000105e8d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e91:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e95:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e9c:	00 
ffff800000105e9d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ea1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ea7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105eab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105eaf:	48 8b 08             	mov    (%rax),%rcx
ffff800000105eb2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105eb6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105eba:	49 89 c9             	mov    %rcx,%r9
ffff800000105ebd:	49 89 d0             	mov    %rdx,%r8
ffff800000105ec0:	48 89 c1             	mov    %rax,%rcx
ffff800000105ec3:	48 b8 08 9f ff ff ff 	movabs $0xffffffffffff9f08,%rax
ffff800000105eca:	ff ff ff 
ffff800000105ecd:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ed1:	48 89 c2             	mov    %rax,%rdx
ffff800000105ed4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105ed9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105ede:	4d 89 d7             	mov    %r10,%r15
ffff800000105ee1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ee6:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000105eed:	ff ff ff 
ffff800000105ef0:	4d 01 d3             	add    %r10,%r11
ffff800000105ef3:	41 ff d3             	call   *%r11
ffff800000105ef6:	90                   	nop
ffff800000105ef7:	eb fd                	jmp    ffff800000105ef6 <do_nmi+0x8b>

ffff800000105ef9 <do_int3>:
ffff800000105ef9:	f3 0f 1e fa          	endbr64
ffff800000105efd:	55                   	push   %rbp
ffff800000105efe:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f01:	41 57                	push   %r15
ffff800000105f03:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f07:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f07 <do_int3+0xe>
ffff800000105f0e:	49 bb 69 8f 00 00 00 	movabs $0x8f69,%r11
ffff800000105f15:	00 00 00 
ffff800000105f18:	4d 01 da             	add    %r11,%r10
ffff800000105f1b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f1f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f23:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f2a:	00 
ffff800000105f2b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f2f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f35:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f39:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f3d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f40:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f44:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f48:	49 89 c9             	mov    %rcx,%r9
ffff800000105f4b:	49 89 d0             	mov    %rdx,%r8
ffff800000105f4e:	48 89 c1             	mov    %rax,%rcx
ffff800000105f51:	48 b8 40 9f ff ff ff 	movabs $0xffffffffffff9f40,%rax
ffff800000105f58:	ff ff ff 
ffff800000105f5b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f5f:	48 89 c2             	mov    %rax,%rdx
ffff800000105f62:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f67:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f6c:	4d 89 d7             	mov    %r10,%r15
ffff800000105f6f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f74:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000105f7b:	ff ff ff 
ffff800000105f7e:	4d 01 d3             	add    %r10,%r11
ffff800000105f81:	41 ff d3             	call   *%r11
ffff800000105f84:	90                   	nop
ffff800000105f85:	eb fd                	jmp    ffff800000105f84 <do_int3+0x8b>

ffff800000105f87 <do_overflow>:
ffff800000105f87:	f3 0f 1e fa          	endbr64
ffff800000105f8b:	55                   	push   %rbp
ffff800000105f8c:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f8f:	41 57                	push   %r15
ffff800000105f91:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f95:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f95 <do_overflow+0xe>
ffff800000105f9c:	49 bb db 8e 00 00 00 	movabs $0x8edb,%r11
ffff800000105fa3:	00 00 00 
ffff800000105fa6:	4d 01 da             	add    %r11,%r10
ffff800000105fa9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fad:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fb1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fb8:	00 
ffff800000105fb9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fbd:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fc3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fc7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fcb:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fce:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fd2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fd6:	49 89 c9             	mov    %rcx,%r9
ffff800000105fd9:	49 89 d0             	mov    %rdx,%r8
ffff800000105fdc:	48 89 c1             	mov    %rax,%rcx
ffff800000105fdf:	48 b8 78 9f ff ff ff 	movabs $0xffffffffffff9f78,%rax
ffff800000105fe6:	ff ff ff 
ffff800000105fe9:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105fed:	48 89 c2             	mov    %rax,%rdx
ffff800000105ff0:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105ff5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105ffa:	4d 89 d7             	mov    %r10,%r15
ffff800000105ffd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106002:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106009:	ff ff ff 
ffff80000010600c:	4d 01 d3             	add    %r10,%r11
ffff80000010600f:	41 ff d3             	call   *%r11
ffff800000106012:	90                   	nop
ffff800000106013:	eb fd                	jmp    ffff800000106012 <do_overflow+0x8b>

ffff800000106015 <do_bounds>:
ffff800000106015:	f3 0f 1e fa          	endbr64
ffff800000106019:	55                   	push   %rbp
ffff80000010601a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010601d:	41 57                	push   %r15
ffff80000010601f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106023:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106023 <do_bounds+0xe>
ffff80000010602a:	49 bb 4d 8e 00 00 00 	movabs $0x8e4d,%r11
ffff800000106031:	00 00 00 
ffff800000106034:	4d 01 da             	add    %r11,%r10
ffff800000106037:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010603b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010603f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106046:	00 
ffff800000106047:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010604b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106051:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106055:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106059:	48 8b 08             	mov    (%rax),%rcx
ffff80000010605c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106060:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106064:	49 89 c9             	mov    %rcx,%r9
ffff800000106067:	49 89 d0             	mov    %rdx,%r8
ffff80000010606a:	48 89 c1             	mov    %rax,%rcx
ffff80000010606d:	48 b8 b8 9f ff ff ff 	movabs $0xffffffffffff9fb8,%rax
ffff800000106074:	ff ff ff 
ffff800000106077:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010607b:	48 89 c2             	mov    %rax,%rdx
ffff80000010607e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106083:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106088:	4d 89 d7             	mov    %r10,%r15
ffff80000010608b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106090:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106097:	ff ff ff 
ffff80000010609a:	4d 01 d3             	add    %r10,%r11
ffff80000010609d:	41 ff d3             	call   *%r11
ffff8000001060a0:	90                   	nop
ffff8000001060a1:	eb fd                	jmp    ffff8000001060a0 <do_bounds+0x8b>

ffff8000001060a3 <do_undefined_opcode>:
ffff8000001060a3:	f3 0f 1e fa          	endbr64
ffff8000001060a7:	55                   	push   %rbp
ffff8000001060a8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060ab:	41 57                	push   %r15
ffff8000001060ad:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060b1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060b1 <do_undefined_opcode+0xe>
ffff8000001060b8:	49 bb bf 8d 00 00 00 	movabs $0x8dbf,%r11
ffff8000001060bf:	00 00 00 
ffff8000001060c2:	4d 01 da             	add    %r11,%r10
ffff8000001060c5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060c9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060cd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060d4:	00 
ffff8000001060d5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060d9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060df:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060e7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060ea:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060ee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060f2:	49 89 c9             	mov    %rcx,%r9
ffff8000001060f5:	49 89 d0             	mov    %rdx,%r8
ffff8000001060f8:	48 89 c1             	mov    %rax,%rcx
ffff8000001060fb:	48 b8 f8 9f ff ff ff 	movabs $0xffffffffffff9ff8,%rax
ffff800000106102:	ff ff ff 
ffff800000106105:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106109:	48 89 c2             	mov    %rax,%rdx
ffff80000010610c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106111:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106116:	4d 89 d7             	mov    %r10,%r15
ffff800000106119:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010611e:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106125:	ff ff ff 
ffff800000106128:	4d 01 d3             	add    %r10,%r11
ffff80000010612b:	41 ff d3             	call   *%r11
ffff80000010612e:	90                   	nop
ffff80000010612f:	eb fd                	jmp    ffff80000010612e <do_undefined_opcode+0x8b>

ffff800000106131 <do_dev_not_available>:
ffff800000106131:	f3 0f 1e fa          	endbr64
ffff800000106135:	55                   	push   %rbp
ffff800000106136:	48 89 e5             	mov    %rsp,%rbp
ffff800000106139:	41 57                	push   %r15
ffff80000010613b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010613f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010613f <do_dev_not_available+0xe>
ffff800000106146:	49 bb 31 8d 00 00 00 	movabs $0x8d31,%r11
ffff80000010614d:	00 00 00 
ffff800000106150:	4d 01 da             	add    %r11,%r10
ffff800000106153:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106157:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010615b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106162:	00 
ffff800000106163:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106167:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010616d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106171:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106175:	48 8b 08             	mov    (%rax),%rcx
ffff800000106178:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010617c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106180:	49 89 c9             	mov    %rcx,%r9
ffff800000106183:	49 89 d0             	mov    %rdx,%r8
ffff800000106186:	48 89 c1             	mov    %rax,%rcx
ffff800000106189:	48 b8 40 a0 ff ff ff 	movabs $0xffffffffffffa040,%rax
ffff800000106190:	ff ff ff 
ffff800000106193:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106197:	48 89 c2             	mov    %rax,%rdx
ffff80000010619a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010619f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061a4:	4d 89 d7             	mov    %r10,%r15
ffff8000001061a7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061ac:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff8000001061b3:	ff ff ff 
ffff8000001061b6:	4d 01 d3             	add    %r10,%r11
ffff8000001061b9:	41 ff d3             	call   *%r11
ffff8000001061bc:	90                   	nop
ffff8000001061bd:	eb fd                	jmp    ffff8000001061bc <do_dev_not_available+0x8b>

ffff8000001061bf <do_double_fault>:
ffff8000001061bf:	f3 0f 1e fa          	endbr64
ffff8000001061c3:	55                   	push   %rbp
ffff8000001061c4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061c7:	41 57                	push   %r15
ffff8000001061c9:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061cd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001061cd <do_double_fault+0xe>
ffff8000001061d4:	49 bb a3 8c 00 00 00 	movabs $0x8ca3,%r11
ffff8000001061db:	00 00 00 
ffff8000001061de:	4d 01 da             	add    %r11,%r10
ffff8000001061e1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061e5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061e9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061f0:	00 
ffff8000001061f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061f5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061fb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106203:	48 8b 08             	mov    (%rax),%rcx
ffff800000106206:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010620a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010620e:	49 89 c9             	mov    %rcx,%r9
ffff800000106211:	49 89 d0             	mov    %rdx,%r8
ffff800000106214:	48 89 c1             	mov    %rax,%rcx
ffff800000106217:	48 b8 88 a0 ff ff ff 	movabs $0xffffffffffffa088,%rax
ffff80000010621e:	ff ff ff 
ffff800000106221:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106225:	48 89 c2             	mov    %rax,%rdx
ffff800000106228:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010622d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106232:	4d 89 d7             	mov    %r10,%r15
ffff800000106235:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010623a:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106241:	ff ff ff 
ffff800000106244:	4d 01 d3             	add    %r10,%r11
ffff800000106247:	41 ff d3             	call   *%r11
ffff80000010624a:	90                   	nop
ffff80000010624b:	eb fd                	jmp    ffff80000010624a <do_double_fault+0x8b>

ffff80000010624d <do_coprocessor_segment_overrun>:
ffff80000010624d:	f3 0f 1e fa          	endbr64
ffff800000106251:	55                   	push   %rbp
ffff800000106252:	48 89 e5             	mov    %rsp,%rbp
ffff800000106255:	41 57                	push   %r15
ffff800000106257:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010625b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010625b <do_coprocessor_segment_overrun+0xe>
ffff800000106262:	49 bb 15 8c 00 00 00 	movabs $0x8c15,%r11
ffff800000106269:	00 00 00 
ffff80000010626c:	4d 01 da             	add    %r11,%r10
ffff80000010626f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106273:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106277:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010627e:	00 
ffff80000010627f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106283:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106289:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010628d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106291:	48 8b 08             	mov    (%rax),%rcx
ffff800000106294:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106298:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010629c:	49 89 c9             	mov    %rcx,%r9
ffff80000010629f:	49 89 d0             	mov    %rdx,%r8
ffff8000001062a2:	48 89 c1             	mov    %rax,%rcx
ffff8000001062a5:	48 b8 c8 a0 ff ff ff 	movabs $0xffffffffffffa0c8,%rax
ffff8000001062ac:	ff ff ff 
ffff8000001062af:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001062b3:	48 89 c2             	mov    %rax,%rdx
ffff8000001062b6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062bb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062c0:	4d 89 d7             	mov    %r10,%r15
ffff8000001062c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062c8:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff8000001062cf:	ff ff ff 
ffff8000001062d2:	4d 01 d3             	add    %r10,%r11
ffff8000001062d5:	41 ff d3             	call   *%r11
ffff8000001062d8:	90                   	nop
ffff8000001062d9:	eb fd                	jmp    ffff8000001062d8 <do_coprocessor_segment_overrun+0x8b>

ffff8000001062db <do_invalid_TSS>:
ffff8000001062db:	f3 0f 1e fa          	endbr64
ffff8000001062df:	55                   	push   %rbp
ffff8000001062e0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062e3:	41 57                	push   %r15
ffff8000001062e5:	53                   	push   %rbx
ffff8000001062e6:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001062ea:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001062ea <do_invalid_TSS+0xf>
ffff8000001062f1:	49 bb 86 8b 00 00 00 	movabs $0x8b86,%r11
ffff8000001062f8:	00 00 00 
ffff8000001062fb:	4c 01 db             	add    %r11,%rbx
ffff8000001062fe:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106302:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106306:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010630d:	00 
ffff80000010630e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106312:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106318:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010631c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106320:	48 8b 08             	mov    (%rax),%rcx
ffff800000106323:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106327:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010632b:	49 89 c9             	mov    %rcx,%r9
ffff80000010632e:	49 89 d0             	mov    %rdx,%r8
ffff800000106331:	48 89 c1             	mov    %rax,%rcx
ffff800000106334:	48 b8 18 a1 ff ff ff 	movabs $0xffffffffffffa118,%rax
ffff80000010633b:	ff ff ff 
ffff80000010633e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106342:	48 89 c2             	mov    %rax,%rdx
ffff800000106345:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010634a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010634f:	49 89 df             	mov    %rbx,%r15
ffff800000106352:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106357:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010635e:	ff ff ff 
ffff800000106361:	49 01 da             	add    %rbx,%r10
ffff800000106364:	41 ff d2             	call   *%r10
ffff800000106367:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010636b:	83 e0 01             	and    $0x1,%eax
ffff80000010636e:	48 85 c0             	test   %rax,%rax
ffff800000106371:	74 32                	je     ffff8000001063a5 <do_invalid_TSS+0xca>
ffff800000106373:	48 b8 58 a1 ff ff ff 	movabs $0xffffffffffffa158,%rax
ffff80000010637a:	ff ff ff 
ffff80000010637d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106381:	48 89 c2             	mov    %rax,%rdx
ffff800000106384:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106389:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010638e:	49 89 df             	mov    %rbx,%r15
ffff800000106391:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106396:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff80000010639d:	ff ff ff 
ffff8000001063a0:	48 01 d9             	add    %rbx,%rcx
ffff8000001063a3:	ff d1                	call   *%rcx
ffff8000001063a5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063a9:	83 e0 02             	and    $0x2,%eax
ffff8000001063ac:	48 85 c0             	test   %rax,%rax
ffff8000001063af:	74 34                	je     ffff8000001063e5 <do_invalid_TSS+0x10a>
ffff8000001063b1:	48 b8 d8 a1 ff ff ff 	movabs $0xffffffffffffa1d8,%rax
ffff8000001063b8:	ff ff ff 
ffff8000001063bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001063c2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063c7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063cc:	49 89 df             	mov    %rbx,%r15
ffff8000001063cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063d4:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001063db:	ff ff ff 
ffff8000001063de:	48 01 d9             	add    %rbx,%rcx
ffff8000001063e1:	ff d1                	call   *%rcx
ffff8000001063e3:	eb 32                	jmp    ffff800000106417 <do_invalid_TSS+0x13c>
ffff8000001063e5:	48 b8 08 a2 ff ff ff 	movabs $0xffffffffffffa208,%rax
ffff8000001063ec:	ff ff ff 
ffff8000001063ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063f3:	48 89 c2             	mov    %rax,%rdx
ffff8000001063f6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063fb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106400:	49 89 df             	mov    %rbx,%r15
ffff800000106403:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106408:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff80000010640f:	ff ff ff 
ffff800000106412:	48 01 d9             	add    %rbx,%rcx
ffff800000106415:	ff d1                	call   *%rcx
ffff800000106417:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010641b:	83 e0 02             	and    $0x2,%eax
ffff80000010641e:	48 85 c0             	test   %rax,%rax
ffff800000106421:	75 72                	jne    ffff800000106495 <do_invalid_TSS+0x1ba>
ffff800000106423:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106427:	83 e0 04             	and    $0x4,%eax
ffff80000010642a:	48 85 c0             	test   %rax,%rax
ffff80000010642d:	74 34                	je     ffff800000106463 <do_invalid_TSS+0x188>
ffff80000010642f:	48 b8 40 a2 ff ff ff 	movabs $0xffffffffffffa240,%rax
ffff800000106436:	ff ff ff 
ffff800000106439:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010643d:	48 89 c2             	mov    %rax,%rdx
ffff800000106440:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106445:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010644a:	49 89 df             	mov    %rbx,%r15
ffff80000010644d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106452:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106459:	ff ff ff 
ffff80000010645c:	48 01 d9             	add    %rbx,%rcx
ffff80000010645f:	ff d1                	call   *%rcx
ffff800000106461:	eb 32                	jmp    ffff800000106495 <do_invalid_TSS+0x1ba>
ffff800000106463:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff80000010646a:	ff ff ff 
ffff80000010646d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106471:	48 89 c2             	mov    %rax,%rdx
ffff800000106474:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106479:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010647e:	49 89 df             	mov    %rbx,%r15
ffff800000106481:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106486:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff80000010648d:	ff ff ff 
ffff800000106490:	48 01 d9             	add    %rbx,%rcx
ffff800000106493:	ff d1                	call   *%rcx
ffff800000106495:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106499:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010649e:	48 89 c1             	mov    %rax,%rcx
ffff8000001064a1:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001064a8:	ff ff ff 
ffff8000001064ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064af:	48 89 c2             	mov    %rax,%rdx
ffff8000001064b2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064b7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064bc:	49 89 df             	mov    %rbx,%r15
ffff8000001064bf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064c4:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff8000001064cb:	ff ff ff 
ffff8000001064ce:	49 01 d8             	add    %rbx,%r8
ffff8000001064d1:	41 ff d0             	call   *%r8
ffff8000001064d4:	90                   	nop
ffff8000001064d5:	eb fd                	jmp    ffff8000001064d4 <do_invalid_TSS+0x1f9>

ffff8000001064d7 <do_segment_not_present>:
ffff8000001064d7:	f3 0f 1e fa          	endbr64
ffff8000001064db:	55                   	push   %rbp
ffff8000001064dc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001064df:	41 57                	push   %r15
ffff8000001064e1:	53                   	push   %rbx
ffff8000001064e2:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001064e6:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001064e6 <do_segment_not_present+0xf>
ffff8000001064ed:	49 bb 8a 89 00 00 00 	movabs $0x898a,%r11
ffff8000001064f4:	00 00 00 
ffff8000001064f7:	4c 01 db             	add    %r11,%rbx
ffff8000001064fa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064fe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106502:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106509:	00 
ffff80000010650a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010650e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106514:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106518:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010651c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010651f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106523:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106527:	49 89 c9             	mov    %rcx,%r9
ffff80000010652a:	49 89 d0             	mov    %rdx,%r8
ffff80000010652d:	48 89 c1             	mov    %rax,%rcx
ffff800000106530:	48 b8 c8 a2 ff ff ff 	movabs $0xffffffffffffa2c8,%rax
ffff800000106537:	ff ff ff 
ffff80000010653a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010653e:	48 89 c2             	mov    %rax,%rdx
ffff800000106541:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106546:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010654b:	49 89 df             	mov    %rbx,%r15
ffff80000010654e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106553:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010655a:	ff ff ff 
ffff80000010655d:	49 01 da             	add    %rbx,%r10
ffff800000106560:	41 ff d2             	call   *%r10
ffff800000106563:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106567:	83 e0 01             	and    $0x1,%eax
ffff80000010656a:	48 85 c0             	test   %rax,%rax
ffff80000010656d:	74 32                	je     ffff8000001065a1 <do_segment_not_present+0xca>
ffff80000010656f:	48 b8 58 a1 ff ff ff 	movabs $0xffffffffffffa158,%rax
ffff800000106576:	ff ff ff 
ffff800000106579:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010657d:	48 89 c2             	mov    %rax,%rdx
ffff800000106580:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106585:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010658a:	49 89 df             	mov    %rbx,%r15
ffff80000010658d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106592:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106599:	ff ff ff 
ffff80000010659c:	48 01 d9             	add    %rbx,%rcx
ffff80000010659f:	ff d1                	call   *%rcx
ffff8000001065a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065a5:	83 e0 02             	and    $0x2,%eax
ffff8000001065a8:	48 85 c0             	test   %rax,%rax
ffff8000001065ab:	74 34                	je     ffff8000001065e1 <do_segment_not_present+0x10a>
ffff8000001065ad:	48 b8 d8 a1 ff ff ff 	movabs $0xffffffffffffa1d8,%rax
ffff8000001065b4:	ff ff ff 
ffff8000001065b7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065bb:	48 89 c2             	mov    %rax,%rdx
ffff8000001065be:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065c3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065c8:	49 89 df             	mov    %rbx,%r15
ffff8000001065cb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065d0:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001065d7:	ff ff ff 
ffff8000001065da:	48 01 d9             	add    %rbx,%rcx
ffff8000001065dd:	ff d1                	call   *%rcx
ffff8000001065df:	eb 32                	jmp    ffff800000106613 <do_segment_not_present+0x13c>
ffff8000001065e1:	48 b8 08 a2 ff ff ff 	movabs $0xffffffffffffa208,%rax
ffff8000001065e8:	ff ff ff 
ffff8000001065eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001065f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065fc:	49 89 df             	mov    %rbx,%r15
ffff8000001065ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106604:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff80000010660b:	ff ff ff 
ffff80000010660e:	48 01 d9             	add    %rbx,%rcx
ffff800000106611:	ff d1                	call   *%rcx
ffff800000106613:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106617:	83 e0 02             	and    $0x2,%eax
ffff80000010661a:	48 85 c0             	test   %rax,%rax
ffff80000010661d:	75 72                	jne    ffff800000106691 <do_segment_not_present+0x1ba>
ffff80000010661f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106623:	83 e0 04             	and    $0x4,%eax
ffff800000106626:	48 85 c0             	test   %rax,%rax
ffff800000106629:	74 34                	je     ffff80000010665f <do_segment_not_present+0x188>
ffff80000010662b:	48 b8 40 a2 ff ff ff 	movabs $0xffffffffffffa240,%rax
ffff800000106632:	ff ff ff 
ffff800000106635:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106639:	48 89 c2             	mov    %rax,%rdx
ffff80000010663c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106641:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106646:	49 89 df             	mov    %rbx,%r15
ffff800000106649:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010664e:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106655:	ff ff ff 
ffff800000106658:	48 01 d9             	add    %rbx,%rcx
ffff80000010665b:	ff d1                	call   *%rcx
ffff80000010665d:	eb 32                	jmp    ffff800000106691 <do_segment_not_present+0x1ba>
ffff80000010665f:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff800000106666:	ff ff ff 
ffff800000106669:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010666d:	48 89 c2             	mov    %rax,%rdx
ffff800000106670:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106675:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010667a:	49 89 df             	mov    %rbx,%r15
ffff80000010667d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106682:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106689:	ff ff ff 
ffff80000010668c:	48 01 d9             	add    %rbx,%rcx
ffff80000010668f:	ff d1                	call   *%rcx
ffff800000106691:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106695:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010669a:	48 89 c1             	mov    %rax,%rcx
ffff80000010669d:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001066a4:	ff ff ff 
ffff8000001066a7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066ab:	48 89 c2             	mov    %rax,%rdx
ffff8000001066ae:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066b3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066b8:	49 89 df             	mov    %rbx,%r15
ffff8000001066bb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066c0:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff8000001066c7:	ff ff ff 
ffff8000001066ca:	49 01 d8             	add    %rbx,%r8
ffff8000001066cd:	41 ff d0             	call   *%r8
ffff8000001066d0:	90                   	nop
ffff8000001066d1:	eb fd                	jmp    ffff8000001066d0 <do_segment_not_present+0x1f9>

ffff8000001066d3 <do_stack_segment_fault>:
ffff8000001066d3:	f3 0f 1e fa          	endbr64
ffff8000001066d7:	55                   	push   %rbp
ffff8000001066d8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001066db:	41 57                	push   %r15
ffff8000001066dd:	53                   	push   %rbx
ffff8000001066de:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001066e2:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001066e2 <do_stack_segment_fault+0xf>
ffff8000001066e9:	49 bb 8e 87 00 00 00 	movabs $0x878e,%r11
ffff8000001066f0:	00 00 00 
ffff8000001066f3:	4c 01 db             	add    %r11,%rbx
ffff8000001066f6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066fa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066fe:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106705:	00 
ffff800000106706:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010670a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106710:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106714:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106718:	48 8b 08             	mov    (%rax),%rcx
ffff80000010671b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010671f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106723:	49 89 c9             	mov    %rcx,%r9
ffff800000106726:	49 89 d0             	mov    %rdx,%r8
ffff800000106729:	48 89 c1             	mov    %rax,%rcx
ffff80000010672c:	48 b8 10 a3 ff ff ff 	movabs $0xffffffffffffa310,%rax
ffff800000106733:	ff ff ff 
ffff800000106736:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010673a:	48 89 c2             	mov    %rax,%rdx
ffff80000010673d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106742:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106747:	49 89 df             	mov    %rbx,%r15
ffff80000010674a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010674f:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff800000106756:	ff ff ff 
ffff800000106759:	49 01 da             	add    %rbx,%r10
ffff80000010675c:	41 ff d2             	call   *%r10
ffff80000010675f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106763:	83 e0 01             	and    $0x1,%eax
ffff800000106766:	48 85 c0             	test   %rax,%rax
ffff800000106769:	74 32                	je     ffff80000010679d <do_stack_segment_fault+0xca>
ffff80000010676b:	48 b8 58 a1 ff ff ff 	movabs $0xffffffffffffa158,%rax
ffff800000106772:	ff ff ff 
ffff800000106775:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106779:	48 89 c2             	mov    %rax,%rdx
ffff80000010677c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106781:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106786:	49 89 df             	mov    %rbx,%r15
ffff800000106789:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010678e:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106795:	ff ff ff 
ffff800000106798:	48 01 d9             	add    %rbx,%rcx
ffff80000010679b:	ff d1                	call   *%rcx
ffff80000010679d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067a1:	83 e0 02             	and    $0x2,%eax
ffff8000001067a4:	48 85 c0             	test   %rax,%rax
ffff8000001067a7:	74 34                	je     ffff8000001067dd <do_stack_segment_fault+0x10a>
ffff8000001067a9:	48 b8 d8 a1 ff ff ff 	movabs $0xffffffffffffa1d8,%rax
ffff8000001067b0:	ff ff ff 
ffff8000001067b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067b7:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ba:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067bf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067c4:	49 89 df             	mov    %rbx,%r15
ffff8000001067c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067cc:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001067d3:	ff ff ff 
ffff8000001067d6:	48 01 d9             	add    %rbx,%rcx
ffff8000001067d9:	ff d1                	call   *%rcx
ffff8000001067db:	eb 32                	jmp    ffff80000010680f <do_stack_segment_fault+0x13c>
ffff8000001067dd:	48 b8 08 a2 ff ff ff 	movabs $0xffffffffffffa208,%rax
ffff8000001067e4:	ff ff ff 
ffff8000001067e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067f3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067f8:	49 89 df             	mov    %rbx,%r15
ffff8000001067fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106800:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106807:	ff ff ff 
ffff80000010680a:	48 01 d9             	add    %rbx,%rcx
ffff80000010680d:	ff d1                	call   *%rcx
ffff80000010680f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106813:	83 e0 02             	and    $0x2,%eax
ffff800000106816:	48 85 c0             	test   %rax,%rax
ffff800000106819:	75 72                	jne    ffff80000010688d <do_stack_segment_fault+0x1ba>
ffff80000010681b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010681f:	83 e0 04             	and    $0x4,%eax
ffff800000106822:	48 85 c0             	test   %rax,%rax
ffff800000106825:	74 34                	je     ffff80000010685b <do_stack_segment_fault+0x188>
ffff800000106827:	48 b8 40 a2 ff ff ff 	movabs $0xffffffffffffa240,%rax
ffff80000010682e:	ff ff ff 
ffff800000106831:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106835:	48 89 c2             	mov    %rax,%rdx
ffff800000106838:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010683d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106842:	49 89 df             	mov    %rbx,%r15
ffff800000106845:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010684a:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106851:	ff ff ff 
ffff800000106854:	48 01 d9             	add    %rbx,%rcx
ffff800000106857:	ff d1                	call   *%rcx
ffff800000106859:	eb 32                	jmp    ffff80000010688d <do_stack_segment_fault+0x1ba>
ffff80000010685b:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff800000106862:	ff ff ff 
ffff800000106865:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106869:	48 89 c2             	mov    %rax,%rdx
ffff80000010686c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106871:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106876:	49 89 df             	mov    %rbx,%r15
ffff800000106879:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010687e:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106885:	ff ff ff 
ffff800000106888:	48 01 d9             	add    %rbx,%rcx
ffff80000010688b:	ff d1                	call   *%rcx
ffff80000010688d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106891:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106896:	48 89 c1             	mov    %rax,%rcx
ffff800000106899:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff8000001068a0:	ff ff ff 
ffff8000001068a3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068a7:	48 89 c2             	mov    %rax,%rdx
ffff8000001068aa:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068af:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068b4:	49 89 df             	mov    %rbx,%r15
ffff8000001068b7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068bc:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff8000001068c3:	ff ff ff 
ffff8000001068c6:	49 01 d8             	add    %rbx,%r8
ffff8000001068c9:	41 ff d0             	call   *%r8
ffff8000001068cc:	90                   	nop
ffff8000001068cd:	eb fd                	jmp    ffff8000001068cc <do_stack_segment_fault+0x1f9>

ffff8000001068cf <do_general_protection>:
ffff8000001068cf:	f3 0f 1e fa          	endbr64
ffff8000001068d3:	55                   	push   %rbp
ffff8000001068d4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001068d7:	41 57                	push   %r15
ffff8000001068d9:	53                   	push   %rbx
ffff8000001068da:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001068de:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001068de <do_general_protection+0xf>
ffff8000001068e5:	49 bb 92 85 00 00 00 	movabs $0x8592,%r11
ffff8000001068ec:	00 00 00 
ffff8000001068ef:	4c 01 db             	add    %r11,%rbx
ffff8000001068f2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001068f6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001068fa:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106901:	00 
ffff800000106902:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106906:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010690c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106910:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106914:	48 8b 08             	mov    (%rax),%rcx
ffff800000106917:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010691b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010691f:	49 89 c9             	mov    %rcx,%r9
ffff800000106922:	49 89 d0             	mov    %rdx,%r8
ffff800000106925:	48 89 c1             	mov    %rax,%rcx
ffff800000106928:	48 b8 58 a3 ff ff ff 	movabs $0xffffffffffffa358,%rax
ffff80000010692f:	ff ff ff 
ffff800000106932:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106936:	48 89 c2             	mov    %rax,%rdx
ffff800000106939:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010693e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106943:	49 89 df             	mov    %rbx,%r15
ffff800000106946:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010694b:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff800000106952:	ff ff ff 
ffff800000106955:	49 01 da             	add    %rbx,%r10
ffff800000106958:	41 ff d2             	call   *%r10
ffff80000010695b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010695f:	83 e0 01             	and    $0x1,%eax
ffff800000106962:	48 85 c0             	test   %rax,%rax
ffff800000106965:	74 32                	je     ffff800000106999 <do_general_protection+0xca>
ffff800000106967:	48 b8 58 a1 ff ff ff 	movabs $0xffffffffffffa158,%rax
ffff80000010696e:	ff ff ff 
ffff800000106971:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106975:	48 89 c2             	mov    %rax,%rdx
ffff800000106978:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010697d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106982:	49 89 df             	mov    %rbx,%r15
ffff800000106985:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010698a:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106991:	ff ff ff 
ffff800000106994:	48 01 d9             	add    %rbx,%rcx
ffff800000106997:	ff d1                	call   *%rcx
ffff800000106999:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010699d:	83 e0 02             	and    $0x2,%eax
ffff8000001069a0:	48 85 c0             	test   %rax,%rax
ffff8000001069a3:	74 34                	je     ffff8000001069d9 <do_general_protection+0x10a>
ffff8000001069a5:	48 b8 d8 a1 ff ff ff 	movabs $0xffffffffffffa1d8,%rax
ffff8000001069ac:	ff ff ff 
ffff8000001069af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069b3:	48 89 c2             	mov    %rax,%rdx
ffff8000001069b6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069bb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069c0:	49 89 df             	mov    %rbx,%r15
ffff8000001069c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069c8:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff8000001069cf:	ff ff ff 
ffff8000001069d2:	48 01 d9             	add    %rbx,%rcx
ffff8000001069d5:	ff d1                	call   *%rcx
ffff8000001069d7:	eb 32                	jmp    ffff800000106a0b <do_general_protection+0x13c>
ffff8000001069d9:	48 b8 08 a2 ff ff ff 	movabs $0xffffffffffffa208,%rax
ffff8000001069e0:	ff ff ff 
ffff8000001069e3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001069ea:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069ef:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069f4:	49 89 df             	mov    %rbx,%r15
ffff8000001069f7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069fc:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106a03:	ff ff ff 
ffff800000106a06:	48 01 d9             	add    %rbx,%rcx
ffff800000106a09:	ff d1                	call   *%rcx
ffff800000106a0b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a0f:	83 e0 02             	and    $0x2,%eax
ffff800000106a12:	48 85 c0             	test   %rax,%rax
ffff800000106a15:	75 72                	jne    ffff800000106a89 <do_general_protection+0x1ba>
ffff800000106a17:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a1b:	83 e0 04             	and    $0x4,%eax
ffff800000106a1e:	48 85 c0             	test   %rax,%rax
ffff800000106a21:	74 34                	je     ffff800000106a57 <do_general_protection+0x188>
ffff800000106a23:	48 b8 40 a2 ff ff ff 	movabs $0xffffffffffffa240,%rax
ffff800000106a2a:	ff ff ff 
ffff800000106a2d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a31:	48 89 c2             	mov    %rax,%rdx
ffff800000106a34:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a39:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a3e:	49 89 df             	mov    %rbx,%r15
ffff800000106a41:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a46:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106a4d:	ff ff ff 
ffff800000106a50:	48 01 d9             	add    %rbx,%rcx
ffff800000106a53:	ff d1                	call   *%rcx
ffff800000106a55:	eb 32                	jmp    ffff800000106a89 <do_general_protection+0x1ba>
ffff800000106a57:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff800000106a5e:	ff ff ff 
ffff800000106a61:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a65:	48 89 c2             	mov    %rax,%rdx
ffff800000106a68:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a6d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a72:	49 89 df             	mov    %rbx,%r15
ffff800000106a75:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a7a:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106a81:	ff ff ff 
ffff800000106a84:	48 01 d9             	add    %rbx,%rcx
ffff800000106a87:	ff d1                	call   *%rcx
ffff800000106a89:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a8d:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106a92:	48 89 c1             	mov    %rax,%rcx
ffff800000106a95:	48 b8 a8 a2 ff ff ff 	movabs $0xffffffffffffa2a8,%rax
ffff800000106a9c:	ff ff ff 
ffff800000106a9f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106aa3:	48 89 c2             	mov    %rax,%rdx
ffff800000106aa6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ab0:	49 89 df             	mov    %rbx,%r15
ffff800000106ab3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ab8:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff800000106abf:	ff ff ff 
ffff800000106ac2:	49 01 d8             	add    %rbx,%r8
ffff800000106ac5:	41 ff d0             	call   *%r8
ffff800000106ac8:	90                   	nop
ffff800000106ac9:	eb fd                	jmp    ffff800000106ac8 <do_general_protection+0x1f9>

ffff800000106acb <do_page_fault>:
ffff800000106acb:	f3 0f 1e fa          	endbr64
ffff800000106acf:	55                   	push   %rbp
ffff800000106ad0:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ad3:	41 57                	push   %r15
ffff800000106ad5:	53                   	push   %rbx
ffff800000106ad6:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106ada:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106ada <do_page_fault+0xf>
ffff800000106ae1:	49 bb 96 83 00 00 00 	movabs $0x8396,%r11
ffff800000106ae8:	00 00 00 
ffff800000106aeb:	4c 01 db             	add    %r11,%rbx
ffff800000106aee:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106af2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106af6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106afd:	00 
ffff800000106afe:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106b05:	00 
ffff800000106b06:	0f 20 d0             	mov    %cr2,%rax
ffff800000106b09:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106b0d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b11:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106b17:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b1f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106b22:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b26:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b2a:	49 89 c9             	mov    %rcx,%r9
ffff800000106b2d:	49 89 d0             	mov    %rdx,%r8
ffff800000106b30:	48 89 c1             	mov    %rax,%rcx
ffff800000106b33:	48 b8 a0 a3 ff ff ff 	movabs $0xffffffffffffa3a0,%rax
ffff800000106b3a:	ff ff ff 
ffff800000106b3d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b41:	48 89 c2             	mov    %rax,%rdx
ffff800000106b44:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b49:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b4e:	49 89 df             	mov    %rbx,%r15
ffff800000106b51:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b56:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff800000106b5d:	ff ff ff 
ffff800000106b60:	49 01 da             	add    %rbx,%r10
ffff800000106b63:	41 ff d2             	call   *%r10
ffff800000106b66:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b6a:	83 e0 01             	and    $0x1,%eax
ffff800000106b6d:	48 85 c0             	test   %rax,%rax
ffff800000106b70:	75 32                	jne    ffff800000106ba4 <do_page_fault+0xd9>
ffff800000106b72:	48 b8 de a3 ff ff ff 	movabs $0xffffffffffffa3de,%rax
ffff800000106b79:	ff ff ff 
ffff800000106b7c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b80:	48 89 c2             	mov    %rax,%rdx
ffff800000106b83:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b88:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b8d:	49 89 df             	mov    %rbx,%r15
ffff800000106b90:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b95:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106b9c:	ff ff ff 
ffff800000106b9f:	48 01 d9             	add    %rbx,%rcx
ffff800000106ba2:	ff d1                	call   *%rcx
ffff800000106ba4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ba8:	83 e0 02             	and    $0x2,%eax
ffff800000106bab:	48 85 c0             	test   %rax,%rax
ffff800000106bae:	74 34                	je     ffff800000106be4 <do_page_fault+0x119>
ffff800000106bb0:	48 b8 f1 a3 ff ff ff 	movabs $0xffffffffffffa3f1,%rax
ffff800000106bb7:	ff ff ff 
ffff800000106bba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bbe:	48 89 c2             	mov    %rax,%rdx
ffff800000106bc1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bc6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bcb:	49 89 df             	mov    %rbx,%r15
ffff800000106bce:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bd3:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106bda:	ff ff ff 
ffff800000106bdd:	48 01 d9             	add    %rbx,%rcx
ffff800000106be0:	ff d1                	call   *%rcx
ffff800000106be2:	eb 32                	jmp    ffff800000106c16 <do_page_fault+0x14b>
ffff800000106be4:	48 b8 05 a4 ff ff ff 	movabs $0xffffffffffffa405,%rax
ffff800000106beb:	ff ff ff 
ffff800000106bee:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bf2:	48 89 c2             	mov    %rax,%rdx
ffff800000106bf5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bfa:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bff:	49 89 df             	mov    %rbx,%r15
ffff800000106c02:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c07:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106c0e:	ff ff ff 
ffff800000106c11:	48 01 d9             	add    %rbx,%rcx
ffff800000106c14:	ff d1                	call   *%rcx
ffff800000106c16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c1a:	83 e0 04             	and    $0x4,%eax
ffff800000106c1d:	48 85 c0             	test   %rax,%rax
ffff800000106c20:	74 34                	je     ffff800000106c56 <do_page_fault+0x18b>
ffff800000106c22:	48 b8 18 a4 ff ff ff 	movabs $0xffffffffffffa418,%rax
ffff800000106c29:	ff ff ff 
ffff800000106c2c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c30:	48 89 c2             	mov    %rax,%rdx
ffff800000106c33:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c38:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c3d:	49 89 df             	mov    %rbx,%r15
ffff800000106c40:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c45:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106c4c:	ff ff ff 
ffff800000106c4f:	48 01 d9             	add    %rbx,%rcx
ffff800000106c52:	ff d1                	call   *%rcx
ffff800000106c54:	eb 32                	jmp    ffff800000106c88 <do_page_fault+0x1bd>
ffff800000106c56:	48 b8 2a a4 ff ff ff 	movabs $0xffffffffffffa42a,%rax
ffff800000106c5d:	ff ff ff 
ffff800000106c60:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c64:	48 89 c2             	mov    %rax,%rdx
ffff800000106c67:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c6c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c71:	49 89 df             	mov    %rbx,%r15
ffff800000106c74:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c79:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106c80:	ff ff ff 
ffff800000106c83:	48 01 d9             	add    %rbx,%rcx
ffff800000106c86:	ff d1                	call   *%rcx
ffff800000106c88:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c8c:	83 e0 08             	and    $0x8,%eax
ffff800000106c8f:	48 85 c0             	test   %rax,%rax
ffff800000106c92:	74 32                	je     ffff800000106cc6 <do_page_fault+0x1fb>
ffff800000106c94:	48 b8 46 a4 ff ff ff 	movabs $0xffffffffffffa446,%rax
ffff800000106c9b:	ff ff ff 
ffff800000106c9e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ca2:	48 89 c2             	mov    %rax,%rdx
ffff800000106ca5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106caa:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106caf:	49 89 df             	mov    %rbx,%r15
ffff800000106cb2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cb7:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106cbe:	ff ff ff 
ffff800000106cc1:	48 01 d9             	add    %rbx,%rcx
ffff800000106cc4:	ff d1                	call   *%rcx
ffff800000106cc6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cca:	83 e0 10             	and    $0x10,%eax
ffff800000106ccd:	48 85 c0             	test   %rax,%rax
ffff800000106cd0:	74 32                	je     ffff800000106d04 <do_page_fault+0x239>
ffff800000106cd2:	48 b8 68 a4 ff ff ff 	movabs $0xffffffffffffa468,%rax
ffff800000106cd9:	ff ff ff 
ffff800000106cdc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ce0:	48 89 c2             	mov    %rax,%rdx
ffff800000106ce3:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ce8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ced:	49 89 df             	mov    %rbx,%r15
ffff800000106cf0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cf5:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106cfc:	ff ff ff 
ffff800000106cff:	48 01 d9             	add    %rbx,%rcx
ffff800000106d02:	ff d1                	call   *%rcx
ffff800000106d04:	48 b8 87 a4 ff ff ff 	movabs $0xffffffffffffa487,%rax
ffff800000106d0b:	ff ff ff 
ffff800000106d0e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d12:	48 89 c2             	mov    %rax,%rdx
ffff800000106d15:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d1a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d1f:	49 89 df             	mov    %rbx,%r15
ffff800000106d22:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d27:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000106d2e:	ff ff ff 
ffff800000106d31:	48 01 d9             	add    %rbx,%rcx
ffff800000106d34:	ff d1                	call   *%rcx
ffff800000106d36:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106d3a:	48 89 c1             	mov    %rax,%rcx
ffff800000106d3d:	48 b8 89 a4 ff ff ff 	movabs $0xffffffffffffa489,%rax
ffff800000106d44:	ff ff ff 
ffff800000106d47:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d4b:	48 89 c2             	mov    %rax,%rdx
ffff800000106d4e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d53:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d58:	49 89 df             	mov    %rbx,%r15
ffff800000106d5b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d60:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff800000106d67:	ff ff ff 
ffff800000106d6a:	49 01 d8             	add    %rbx,%r8
ffff800000106d6d:	41 ff d0             	call   *%r8
ffff800000106d70:	90                   	nop
ffff800000106d71:	eb fd                	jmp    ffff800000106d70 <do_page_fault+0x2a5>

ffff800000106d73 <do_x87_FPU_error>:
ffff800000106d73:	f3 0f 1e fa          	endbr64
ffff800000106d77:	55                   	push   %rbp
ffff800000106d78:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d7b:	41 57                	push   %r15
ffff800000106d7d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d81:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d81 <do_x87_FPU_error+0xe>
ffff800000106d88:	49 bb ef 80 00 00 00 	movabs $0x80ef,%r11
ffff800000106d8f:	00 00 00 
ffff800000106d92:	4d 01 da             	add    %r11,%r10
ffff800000106d95:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d99:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d9d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106da4:	00 
ffff800000106da5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106da9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106daf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106db3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106db7:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dba:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106dbe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106dc2:	49 89 c9             	mov    %rcx,%r9
ffff800000106dc5:	49 89 d0             	mov    %rdx,%r8
ffff800000106dc8:	48 89 c1             	mov    %rax,%rcx
ffff800000106dcb:	48 b8 98 a4 ff ff ff 	movabs $0xffffffffffffa498,%rax
ffff800000106dd2:	ff ff ff 
ffff800000106dd5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106dd9:	48 89 c2             	mov    %rax,%rdx
ffff800000106ddc:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106de1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106de6:	4d 89 d7             	mov    %r10,%r15
ffff800000106de9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dee:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106df5:	ff ff ff 
ffff800000106df8:	4d 01 d3             	add    %r10,%r11
ffff800000106dfb:	41 ff d3             	call   *%r11
ffff800000106dfe:	90                   	nop
ffff800000106dff:	eb fd                	jmp    ffff800000106dfe <do_x87_FPU_error+0x8b>

ffff800000106e01 <do_alignment_check>:
ffff800000106e01:	f3 0f 1e fa          	endbr64
ffff800000106e05:	55                   	push   %rbp
ffff800000106e06:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e09:	41 57                	push   %r15
ffff800000106e0b:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e0f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e0f <do_alignment_check+0xe>
ffff800000106e16:	49 bb 61 80 00 00 00 	movabs $0x8061,%r11
ffff800000106e1d:	00 00 00 
ffff800000106e20:	4d 01 da             	add    %r11,%r10
ffff800000106e23:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e27:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e2b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e32:	00 
ffff800000106e33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e37:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e3d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e45:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e48:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e4c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e50:	49 89 c9             	mov    %rcx,%r9
ffff800000106e53:	49 89 d0             	mov    %rdx,%r8
ffff800000106e56:	48 89 c1             	mov    %rax,%rcx
ffff800000106e59:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff800000106e60:	ff ff ff 
ffff800000106e63:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e67:	48 89 c2             	mov    %rax,%rdx
ffff800000106e6a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e6f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e74:	4d 89 d7             	mov    %r10,%r15
ffff800000106e77:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e7c:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106e83:	ff ff ff 
ffff800000106e86:	4d 01 d3             	add    %r10,%r11
ffff800000106e89:	41 ff d3             	call   *%r11
ffff800000106e8c:	90                   	nop
ffff800000106e8d:	eb fd                	jmp    ffff800000106e8c <do_alignment_check+0x8b>

ffff800000106e8f <do_machine_check>:
ffff800000106e8f:	f3 0f 1e fa          	endbr64
ffff800000106e93:	55                   	push   %rbp
ffff800000106e94:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e97:	41 57                	push   %r15
ffff800000106e99:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e9d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e9d <do_machine_check+0xe>
ffff800000106ea4:	49 bb d3 7f 00 00 00 	movabs $0x7fd3,%r11
ffff800000106eab:	00 00 00 
ffff800000106eae:	4d 01 da             	add    %r11,%r10
ffff800000106eb1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106eb5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106eb9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ec0:	00 
ffff800000106ec1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ec5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ecb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106ecf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ed3:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ed6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106eda:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ede:	49 89 c9             	mov    %rcx,%r9
ffff800000106ee1:	49 89 d0             	mov    %rdx,%r8
ffff800000106ee4:	48 89 c1             	mov    %rax,%rcx
ffff800000106ee7:	48 b8 28 a5 ff ff ff 	movabs $0xffffffffffffa528,%rax
ffff800000106eee:	ff ff ff 
ffff800000106ef1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106ef5:	48 89 c2             	mov    %rax,%rdx
ffff800000106ef8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106efd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f02:	4d 89 d7             	mov    %r10,%r15
ffff800000106f05:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f0a:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106f11:	ff ff ff 
ffff800000106f14:	4d 01 d3             	add    %r10,%r11
ffff800000106f17:	41 ff d3             	call   *%r11
ffff800000106f1a:	90                   	nop
ffff800000106f1b:	eb fd                	jmp    ffff800000106f1a <do_machine_check+0x8b>

ffff800000106f1d <do_SIMD_exception>:
ffff800000106f1d:	f3 0f 1e fa          	endbr64
ffff800000106f21:	55                   	push   %rbp
ffff800000106f22:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f25:	41 57                	push   %r15
ffff800000106f27:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106f2b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106f2b <do_SIMD_exception+0xe>
ffff800000106f32:	49 bb 45 7f 00 00 00 	movabs $0x7f45,%r11
ffff800000106f39:	00 00 00 
ffff800000106f3c:	4d 01 da             	add    %r11,%r10
ffff800000106f3f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f43:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f47:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f4e:	00 
ffff800000106f4f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f53:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f59:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f61:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f64:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f68:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f6c:	49 89 c9             	mov    %rcx,%r9
ffff800000106f6f:	49 89 d0             	mov    %rdx,%r8
ffff800000106f72:	48 89 c1             	mov    %rax,%rcx
ffff800000106f75:	48 b8 70 a5 ff ff ff 	movabs $0xffffffffffffa570,%rax
ffff800000106f7c:	ff ff ff 
ffff800000106f7f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f83:	48 89 c2             	mov    %rax,%rdx
ffff800000106f86:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f8b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f90:	4d 89 d7             	mov    %r10,%r15
ffff800000106f93:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f98:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff800000106f9f:	ff ff ff 
ffff800000106fa2:	4d 01 d3             	add    %r10,%r11
ffff800000106fa5:	41 ff d3             	call   *%r11
ffff800000106fa8:	90                   	nop
ffff800000106fa9:	eb fd                	jmp    ffff800000106fa8 <do_SIMD_exception+0x8b>

ffff800000106fab <do_virtualization_exception>:
ffff800000106fab:	f3 0f 1e fa          	endbr64
ffff800000106faf:	55                   	push   %rbp
ffff800000106fb0:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fb3:	41 57                	push   %r15
ffff800000106fb5:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106fb9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106fb9 <do_virtualization_exception+0xe>
ffff800000106fc0:	49 bb b7 7e 00 00 00 	movabs $0x7eb7,%r11
ffff800000106fc7:	00 00 00 
ffff800000106fca:	4d 01 da             	add    %r11,%r10
ffff800000106fcd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106fd1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106fd5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fdc:	00 
ffff800000106fdd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106fe1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106fe7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106feb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fef:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ff2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ff6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ffa:	49 89 c9             	mov    %rcx,%r9
ffff800000106ffd:	49 89 d0             	mov    %rdx,%r8
ffff800000107000:	48 89 c1             	mov    %rax,%rcx
ffff800000107003:	48 b8 b8 a5 ff ff ff 	movabs $0xffffffffffffa5b8,%rax
ffff80000010700a:	ff ff ff 
ffff80000010700d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107011:	48 89 c2             	mov    %rax,%rdx
ffff800000107014:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107019:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010701e:	4d 89 d7             	mov    %r10,%r15
ffff800000107021:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107026:	49 bb ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r11
ffff80000010702d:	ff ff ff 
ffff800000107030:	4d 01 d3             	add    %r10,%r11
ffff800000107033:	41 ff d3             	call   *%r11
ffff800000107036:	90                   	nop
ffff800000107037:	eb fd                	jmp    ffff800000107036 <do_virtualization_exception+0x8b>

ffff800000107039 <sys_vector_init>:
ffff800000107039:	f3 0f 1e fa          	endbr64
ffff80000010703d:	55                   	push   %rbp
ffff80000010703e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107041:	53                   	push   %rbx
ffff800000107042:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107042 <sys_vector_init+0x9>
ffff800000107049:	49 bb 2e 7e 00 00 00 	movabs $0x7e2e,%r11
ffff800000107050:	00 00 00 
ffff800000107053:	4c 01 db             	add    %r11,%rbx
ffff800000107056:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff80000010705d:	ff ff ff 
ffff800000107060:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107064:	48 89 c2             	mov    %rax,%rdx
ffff800000107067:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010706c:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000107071:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff800000107078:	ff ff ff 
ffff80000010707b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010707f:	ff d0                	call   *%rax
ffff800000107081:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000107088:	ff ff ff 
ffff80000010708b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010708f:	48 89 c2             	mov    %rax,%rdx
ffff800000107092:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107097:	bf 01 00 00 00       	mov    $0x1,%edi
ffff80000010709c:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001070a3:	ff ff ff 
ffff8000001070a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070aa:	ff d0                	call   *%rax
ffff8000001070ac:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff8000001070b3:	ff ff ff 
ffff8000001070b6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070ba:	48 89 c2             	mov    %rax,%rdx
ffff8000001070bd:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070c2:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001070c7:	48 b8 a4 6b ff ff ff 	movabs $0xffffffffffff6ba4,%rax
ffff8000001070ce:	ff ff ff 
ffff8000001070d1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d5:	ff d0                	call   *%rax
ffff8000001070d7:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff8000001070de:	ff ff ff 
ffff8000001070e1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070e5:	48 89 c2             	mov    %rax,%rdx
ffff8000001070e8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070ed:	bf 03 00 00 00       	mov    $0x3,%edi
ffff8000001070f2:	48 b8 00 6d ff ff ff 	movabs $0xffffffffffff6d00,%rax
ffff8000001070f9:	ff ff ff 
ffff8000001070fc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107100:	ff d0                	call   *%rax
ffff800000107102:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107109:	ff ff ff 
ffff80000010710c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107110:	48 89 c2             	mov    %rax,%rdx
ffff800000107113:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107118:	bf 04 00 00 00       	mov    $0x4,%edi
ffff80000010711d:	48 b8 00 6d ff ff ff 	movabs $0xffffffffffff6d00,%rax
ffff800000107124:	ff ff ff 
ffff800000107127:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010712b:	ff d0                	call   *%rax
ffff80000010712d:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff800000107134:	ff ff ff 
ffff800000107137:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010713b:	48 89 c2             	mov    %rax,%rdx
ffff80000010713e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107143:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107148:	48 b8 00 6d ff ff ff 	movabs $0xffffffffffff6d00,%rax
ffff80000010714f:	ff ff ff 
ffff800000107152:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107156:	ff d0                	call   *%rax
ffff800000107158:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff80000010715f:	ff ff ff 
ffff800000107162:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107166:	48 89 c2             	mov    %rax,%rdx
ffff800000107169:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010716e:	bf 06 00 00 00       	mov    $0x6,%edi
ffff800000107173:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff80000010717a:	ff ff ff 
ffff80000010717d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107181:	ff d0                	call   *%rax
ffff800000107183:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff80000010718a:	ff ff ff 
ffff80000010718d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107191:	48 89 c2             	mov    %rax,%rdx
ffff800000107194:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107199:	bf 07 00 00 00       	mov    $0x7,%edi
ffff80000010719e:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001071a5:	ff ff ff 
ffff8000001071a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071ac:	ff d0                	call   *%rax
ffff8000001071ae:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff8000001071b5:	ff ff ff 
ffff8000001071b8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001071bf:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071c4:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001071c9:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001071d0:	ff ff ff 
ffff8000001071d3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071d7:	ff d0                	call   *%rax
ffff8000001071d9:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001071e0:	ff ff ff 
ffff8000001071e3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001071ea:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071ef:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001071f4:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001071fb:	ff ff ff 
ffff8000001071fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107202:	ff d0                	call   *%rax
ffff800000107204:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff80000010720b:	ff ff ff 
ffff80000010720e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107212:	48 89 c2             	mov    %rax,%rdx
ffff800000107215:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010721a:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff80000010721f:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff800000107226:	ff ff ff 
ffff800000107229:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010722d:	ff d0                	call   *%rax
ffff80000010722f:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107236:	ff ff ff 
ffff800000107239:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010723d:	48 89 c2             	mov    %rax,%rdx
ffff800000107240:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107245:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff80000010724a:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff800000107251:	ff ff ff 
ffff800000107254:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107258:	ff d0                	call   *%rax
ffff80000010725a:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107261:	ff ff ff 
ffff800000107264:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107268:	48 89 c2             	mov    %rax,%rdx
ffff80000010726b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107270:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff800000107275:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff80000010727c:	ff ff ff 
ffff80000010727f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107283:	ff d0                	call   *%rax
ffff800000107285:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff80000010728c:	ff ff ff 
ffff80000010728f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107293:	48 89 c2             	mov    %rax,%rdx
ffff800000107296:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010729b:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001072a0:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001072a7:	ff ff ff 
ffff8000001072aa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072ae:	ff d0                	call   *%rax
ffff8000001072b0:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001072b7:	ff ff ff 
ffff8000001072ba:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072be:	48 89 c2             	mov    %rax,%rdx
ffff8000001072c1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072c6:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001072cb:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001072d2:	ff ff ff 
ffff8000001072d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072d9:	ff d0                	call   *%rax
ffff8000001072db:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff8000001072e2:	ff ff ff 
ffff8000001072e5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001072ec:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072f1:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001072f6:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001072fd:	ff ff ff 
ffff800000107300:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107304:	ff d0                	call   *%rax
ffff800000107306:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff80000010730d:	ff ff ff 
ffff800000107310:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107314:	48 89 c2             	mov    %rax,%rdx
ffff800000107317:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010731c:	bf 11 00 00 00       	mov    $0x11,%edi
ffff800000107321:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff800000107328:	ff ff ff 
ffff80000010732b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010732f:	ff d0                	call   *%rax
ffff800000107331:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107338:	ff ff ff 
ffff80000010733b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010733f:	48 89 c2             	mov    %rax,%rdx
ffff800000107342:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107347:	bf 12 00 00 00       	mov    $0x12,%edi
ffff80000010734c:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff800000107353:	ff ff ff 
ffff800000107356:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010735a:	ff d0                	call   *%rax
ffff80000010735c:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff800000107363:	ff ff ff 
ffff800000107366:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010736a:	48 89 c2             	mov    %rax,%rdx
ffff80000010736d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107372:	bf 13 00 00 00       	mov    $0x13,%edi
ffff800000107377:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff80000010737e:	ff ff ff 
ffff800000107381:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107385:	ff d0                	call   *%rax
ffff800000107387:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff80000010738e:	ff ff ff 
ffff800000107391:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107395:	48 89 c2             	mov    %rax,%rdx
ffff800000107398:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010739d:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001073a2:	48 b8 52 6c ff ff ff 	movabs $0xffffffffffff6c52,%rax
ffff8000001073a9:	ff ff ff 
ffff8000001073ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073b0:	ff d0                	call   *%rax
ffff8000001073b2:	90                   	nop
ffff8000001073b3:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001073b7:	c9                   	leave
ffff8000001073b8:	c3                   	ret

ffff8000001073b9 <RESTORE_ALL>:
ffff8000001073b9:	41 5f                	pop    %r15
ffff8000001073bb:	41 5e                	pop    %r14
ffff8000001073bd:	41 5d                	pop    %r13
ffff8000001073bf:	41 5c                	pop    %r12
ffff8000001073c1:	41 5b                	pop    %r11
ffff8000001073c3:	41 5a                	pop    %r10
ffff8000001073c5:	41 59                	pop    %r9
ffff8000001073c7:	41 58                	pop    %r8
ffff8000001073c9:	5b                   	pop    %rbx
ffff8000001073ca:	59                   	pop    %rcx
ffff8000001073cb:	5a                   	pop    %rdx
ffff8000001073cc:	5e                   	pop    %rsi
ffff8000001073cd:	5f                   	pop    %rdi
ffff8000001073ce:	5d                   	pop    %rbp
ffff8000001073cf:	58                   	pop    %rax
ffff8000001073d0:	8e d8                	mov    %eax,%ds
ffff8000001073d2:	58                   	pop    %rax
ffff8000001073d3:	8e c0                	mov    %eax,%es
ffff8000001073d5:	58                   	pop    %rax
ffff8000001073d6:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001073da:	48 cf                	iretq

ffff8000001073dc <divide_error>:
ffff8000001073dc:	6a 00                	push   $0x0
ffff8000001073de:	50                   	push   %rax
ffff8000001073df:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105d4f <do_divide_error>
ffff8000001073e6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073ea:	eb 00                	jmp    ffff8000001073ec <error_code>

ffff8000001073ec <error_code>:
ffff8000001073ec:	50                   	push   %rax
ffff8000001073ed:	8c c0                	mov    %es,%eax
ffff8000001073ef:	50                   	push   %rax
ffff8000001073f0:	8c d8                	mov    %ds,%eax
ffff8000001073f2:	50                   	push   %rax
ffff8000001073f3:	48 31 c0             	xor    %rax,%rax
ffff8000001073f6:	55                   	push   %rbp
ffff8000001073f7:	57                   	push   %rdi
ffff8000001073f8:	56                   	push   %rsi
ffff8000001073f9:	52                   	push   %rdx
ffff8000001073fa:	51                   	push   %rcx
ffff8000001073fb:	53                   	push   %rbx
ffff8000001073fc:	41 50                	push   %r8
ffff8000001073fe:	41 51                	push   %r9
ffff800000107400:	41 52                	push   %r10
ffff800000107402:	41 53                	push   %r11
ffff800000107404:	41 54                	push   %r12
ffff800000107406:	41 55                	push   %r13
ffff800000107408:	41 56                	push   %r14
ffff80000010740a:	41 57                	push   %r15
ffff80000010740c:	fc                   	cld
ffff80000010740d:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000107414:	00 
ffff800000107415:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff80000010741c:	00 
ffff80000010741d:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000107424:	8e df                	mov    %edi,%ds
ffff800000107426:	8e c7                	mov    %edi,%es
ffff800000107428:	48 89 e7             	mov    %rsp,%rdi
ffff80000010742b:	ff d2                	call   *%rdx
ffff80000010742d:	eb 00                	jmp    ffff80000010742f <ret_from_intr>

ffff80000010742f <ret_from_intr>:
ffff80000010742f:	eb 88                	jmp    ffff8000001073b9 <RESTORE_ALL>

ffff800000107431 <debug>:
ffff800000107431:	6a 00                	push   $0x0
ffff800000107433:	50                   	push   %rax
ffff800000107434:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105ddd <do_debug>
ffff80000010743b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010743f:	eb ab                	jmp    ffff8000001073ec <error_code>

ffff800000107441 <nmi>:
ffff800000107441:	50                   	push   %rax
ffff800000107442:	fc                   	cld
ffff800000107443:	50                   	push   %rax
ffff800000107444:	50                   	push   %rax
ffff800000107445:	8c c0                	mov    %es,%eax
ffff800000107447:	50                   	push   %rax
ffff800000107448:	8c d8                	mov    %ds,%eax
ffff80000010744a:	50                   	push   %rax
ffff80000010744b:	48 31 c0             	xor    %rax,%rax
ffff80000010744e:	55                   	push   %rbp
ffff80000010744f:	57                   	push   %rdi
ffff800000107450:	56                   	push   %rsi
ffff800000107451:	52                   	push   %rdx
ffff800000107452:	51                   	push   %rcx
ffff800000107453:	53                   	push   %rbx
ffff800000107454:	41 50                	push   %r8
ffff800000107456:	41 51                	push   %r9
ffff800000107458:	41 52                	push   %r10
ffff80000010745a:	41 53                	push   %r11
ffff80000010745c:	41 54                	push   %r12
ffff80000010745e:	41 55                	push   %r13
ffff800000107460:	41 56                	push   %r14
ffff800000107462:	41 57                	push   %r15
ffff800000107464:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff80000010746b:	8e da                	mov    %edx,%ds
ffff80000010746d:	8e c2                	mov    %edx,%es
ffff80000010746f:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff800000107476:	48 89 e6             	mov    %rsp,%rsi
ffff800000107479:	e8 ed e9 ff ff       	call   ffff800000105e6b <do_nmi>
ffff80000010747e:	e9 36 ff ff ff       	jmp    ffff8000001073b9 <RESTORE_ALL>

ffff800000107483 <invalid_TSS>:
ffff800000107483:	50                   	push   %rax
ffff800000107484:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff8000001062db <do_invalid_TSS>
ffff80000010748b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010748f:	e9 58 ff ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107494 <page_fault>:
ffff800000107494:	50                   	push   %rax
ffff800000107495:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff800000106acb <do_page_fault>
ffff80000010749c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074a0:	e9 47 ff ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001074a5 <int3>:
ffff8000001074a5:	6a 00                	push   $0x0
ffff8000001074a7:	50                   	push   %rax
ffff8000001074a8:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105ef9 <do_int3>
ffff8000001074af:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074b3:	e9 34 ff ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001074b8 <overflow>:
ffff8000001074b8:	6a 00                	push   $0x0
ffff8000001074ba:	50                   	push   %rax
ffff8000001074bb:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105f87 <do_overflow>
ffff8000001074c2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074c6:	e9 21 ff ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001074cb <bounds>:
ffff8000001074cb:	6a 00                	push   $0x0
ffff8000001074cd:	50                   	push   %rax
ffff8000001074ce:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000106015 <do_bounds>
ffff8000001074d5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074d9:	e9 0e ff ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001074de <undefined_opcode>:
ffff8000001074de:	6a 00                	push   $0x0
ffff8000001074e0:	50                   	push   %rax
ffff8000001074e1:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff8000001060a3 <do_undefined_opcode>
ffff8000001074e8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ec:	e9 fb fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001074f1 <dev_not_available>:
ffff8000001074f1:	6a 00                	push   $0x0
ffff8000001074f3:	50                   	push   %rax
ffff8000001074f4:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff800000106131 <do_dev_not_available>
ffff8000001074fb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074ff:	e9 e8 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107504 <double_fault>:
ffff800000107504:	50                   	push   %rax
ffff800000107505:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff8000001061bf <do_double_fault>
ffff80000010750c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107510:	e9 d7 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107515 <coprocessor_segment_overrun>:
ffff800000107515:	6a 00                	push   $0x0
ffff800000107517:	50                   	push   %rax
ffff800000107518:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff80000010624d <do_coprocessor_segment_overrun>
ffff80000010751f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107523:	e9 c4 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107528 <segment_not_present>:
ffff800000107528:	50                   	push   %rax
ffff800000107529:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff8000001064d7 <do_segment_not_present>
ffff800000107530:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107534:	e9 b3 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107539 <stack_segment_fault>:
ffff800000107539:	50                   	push   %rax
ffff80000010753a:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff8000001066d3 <do_stack_segment_fault>
ffff800000107541:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107545:	e9 a2 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff80000010754a <general_protection>:
ffff80000010754a:	50                   	push   %rax
ffff80000010754b:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff8000001068cf <do_general_protection>
ffff800000107552:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107556:	e9 91 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff80000010755b <x87_FPU_error>:
ffff80000010755b:	6a 00                	push   $0x0
ffff80000010755d:	50                   	push   %rax
ffff80000010755e:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106d73 <do_x87_FPU_error>
ffff800000107565:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107569:	e9 7e fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff80000010756e <alignment_check>:
ffff80000010756e:	50                   	push   %rax
ffff80000010756f:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106e01 <do_alignment_check>
ffff800000107576:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010757a:	e9 6d fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff80000010757f <machine_check>:
ffff80000010757f:	6a 00                	push   $0x0
ffff800000107581:	50                   	push   %rax
ffff800000107582:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106e8f <do_machine_check>
ffff800000107589:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010758d:	e9 5a fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff800000107592 <SIMD_exception>:
ffff800000107592:	6a 00                	push   $0x0
ffff800000107594:	50                   	push   %rax
ffff800000107595:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106f1d <do_SIMD_exception>
ffff80000010759c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001075a0:	e9 47 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001075a5 <virtualization_exception>:
ffff8000001075a5:	6a 00                	push   $0x0
ffff8000001075a7:	50                   	push   %rax
ffff8000001075a8:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106fab <do_virtualization_exception>
ffff8000001075af:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001075b3:	e9 34 fe ff ff       	jmp    ffff8000001073ec <error_code>

ffff8000001075b8 <Get_gdt>:
ffff8000001075b8:	f3 0f 1e fa          	endbr64
ffff8000001075bc:	55                   	push   %rbp
ffff8000001075bd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075c0:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001075c0 <Get_gdt+0x8>
ffff8000001075c7:	49 bb b0 78 00 00 00 	movabs $0x78b0,%r11
ffff8000001075ce:	00 00 00 
ffff8000001075d1:	4c 01 d8             	add    %r11,%rax
ffff8000001075d4:	0f 20 d8             	mov    %cr3,%rax
ffff8000001075d7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001075db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001075df:	5d                   	pop    %rbp
ffff8000001075e0:	c3                   	ret

ffff8000001075e1 <Cmemset>:
ffff8000001075e1:	f3 0f 1e fa          	endbr64
ffff8000001075e5:	55                   	push   %rbp
ffff8000001075e6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075e9:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001075e9 <Cmemset+0x8>
ffff8000001075f0:	49 bb 87 78 00 00 00 	movabs $0x7887,%r11
ffff8000001075f7:	00 00 00 
ffff8000001075fa:	4c 01 d8             	add    %r11,%rax
ffff8000001075fd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107601:	89 f0                	mov    %esi,%eax
ffff800000107603:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff800000107607:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff80000010760a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010760e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107612:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff800000107616:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010761a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010761e:	48 c1 e0 08          	shl    $0x8,%rax
ffff800000107622:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107626:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010762a:	48 c1 e0 10          	shl    $0x10,%rax
ffff80000010762e:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107632:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107636:	48 c1 e0 20          	shl    $0x20,%rax
ffff80000010763a:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff80000010763e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107642:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107646:	eb 15                	jmp    ffff80000010765d <Cmemset+0x7c>
ffff800000107648:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010764c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107650:	48 89 10             	mov    %rdx,(%rax)
ffff800000107653:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff800000107658:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff80000010765d:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff800000107662:	7f e4                	jg     ffff800000107648 <Cmemset+0x67>
ffff800000107664:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107668:	83 e0 04             	and    $0x4,%eax
ffff80000010766b:	48 85 c0             	test   %rax,%rax
ffff80000010766e:	74 11                	je     ffff800000107681 <Cmemset+0xa0>
ffff800000107670:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107674:	89 c2                	mov    %eax,%edx
ffff800000107676:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010767a:	89 10                	mov    %edx,(%rax)
ffff80000010767c:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff800000107681:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107685:	83 e0 02             	and    $0x2,%eax
ffff800000107688:	48 85 c0             	test   %rax,%rax
ffff80000010768b:	74 12                	je     ffff80000010769f <Cmemset+0xbe>
ffff80000010768d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107691:	89 c2                	mov    %eax,%edx
ffff800000107693:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107697:	66 89 10             	mov    %dx,(%rax)
ffff80000010769a:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff80000010769f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001076a3:	83 e0 01             	and    $0x1,%eax
ffff8000001076a6:	48 85 c0             	test   %rax,%rax
ffff8000001076a9:	74 0a                	je     ffff8000001076b5 <Cmemset+0xd4>
ffff8000001076ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001076af:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff8000001076b3:	88 10                	mov    %dl,(%rax)
ffff8000001076b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076b9:	5d                   	pop    %rbp
ffff8000001076ba:	c3                   	ret

ffff8000001076bb <init_memory>:
ffff8000001076bb:	f3 0f 1e fa          	endbr64
ffff8000001076bf:	55                   	push   %rbp
ffff8000001076c0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001076c3:	41 57                	push   %r15
ffff8000001076c5:	53                   	push   %rbx
ffff8000001076c6:	48 83 ec 70          	sub    $0x70,%rsp
ffff8000001076ca:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001076ca <init_memory+0xf>
ffff8000001076d1:	49 bb a6 77 00 00 00 	movabs $0x77a6,%r11
ffff8000001076d8:	00 00 00 
ffff8000001076db:	4c 01 db             	add    %r11,%rbx
ffff8000001076de:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001076e5:	00 
ffff8000001076e6:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff8000001076ed:	00 
ffff8000001076ee:	48 b8 08 a6 ff ff ff 	movabs $0xffffffffffffa608,%rax
ffff8000001076f5:	ff ff ff 
ffff8000001076f8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001076fc:	48 89 c2             	mov    %rax,%rdx
ffff8000001076ff:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107704:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107709:	49 89 df             	mov    %rbx,%r15
ffff80000010770c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107711:	48 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%rcx
ffff800000107718:	ff ff ff 
ffff80000010771b:	48 01 d9             	add    %rbx,%rcx
ffff80000010771e:	ff d1                	call   *%rcx
ffff800000107720:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107727:	80 ff ff 
ffff80000010772a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff80000010772e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000107735:	e9 a2 01 00 00       	jmp    ffff8000001078dc <init_memory+0x221>
ffff80000010773a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010773e:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107741:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107745:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107749:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010774d:	48 8b 00             	mov    (%rax),%rax
ffff800000107750:	41 89 c9             	mov    %ecx,%r9d
ffff800000107753:	49 89 d0             	mov    %rdx,%r8
ffff800000107756:	48 89 c1             	mov    %rax,%rcx
ffff800000107759:	48 b8 80 a6 ff ff ff 	movabs $0xffffffffffffa680,%rax
ffff800000107760:	ff ff ff 
ffff800000107763:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107767:	48 89 c2             	mov    %rax,%rdx
ffff80000010776a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010776f:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107774:	49 89 df             	mov    %rbx,%r15
ffff800000107777:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010777c:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff800000107783:	ff ff ff 
ffff800000107786:	49 01 da             	add    %rbx,%r10
ffff800000107789:	41 ff d2             	call   *%r10
ffff80000010778c:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000107793:	00 
ffff800000107794:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107798:	8b 40 10             	mov    0x10(%rax),%eax
ffff80000010779b:	83 f8 01             	cmp    $0x1,%eax
ffff80000010779e:	75 0c                	jne    ffff8000001077ac <init_memory+0xf1>
ffff8000001077a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077a4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001077a8:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff8000001077ac:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001077b3:	00 00 00 
ffff8000001077b6:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001077b9:	48 63 d0             	movslq %eax,%rdx
ffff8000001077bc:	48 01 d9             	add    %rbx,%rcx
ffff8000001077bf:	48 89 d0             	mov    %rdx,%rax
ffff8000001077c2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077c6:	48 01 d0             	add    %rdx,%rax
ffff8000001077c9:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077cd:	48 01 c8             	add    %rcx,%rax
ffff8000001077d0:	48 8b 10             	mov    (%rax),%rdx
ffff8000001077d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077d7:	48 8b 00             	mov    (%rax),%rax
ffff8000001077da:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001077de:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff8000001077e5:	00 00 00 
ffff8000001077e8:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001077eb:	48 63 d0             	movslq %eax,%rdx
ffff8000001077ee:	48 01 de             	add    %rbx,%rsi
ffff8000001077f1:	48 89 d0             	mov    %rdx,%rax
ffff8000001077f4:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077f8:	48 01 d0             	add    %rdx,%rax
ffff8000001077fb:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001077ff:	48 01 f0             	add    %rsi,%rax
ffff800000107802:	48 89 08             	mov    %rcx,(%rax)
ffff800000107805:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff80000010780c:	00 00 00 
ffff80000010780f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107812:	48 63 d0             	movslq %eax,%rdx
ffff800000107815:	48 89 d0             	mov    %rdx,%rax
ffff800000107818:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010781c:	48 01 d0             	add    %rdx,%rax
ffff80000010781f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107823:	48 01 d8             	add    %rbx,%rax
ffff800000107826:	48 01 c8             	add    %rcx,%rax
ffff800000107829:	48 83 c0 08          	add    $0x8,%rax
ffff80000010782d:	48 8b 10             	mov    (%rax),%rdx
ffff800000107830:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107834:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107838:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff80000010783c:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107843:	00 00 00 
ffff800000107846:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107849:	48 63 d0             	movslq %eax,%rdx
ffff80000010784c:	48 89 d0             	mov    %rdx,%rax
ffff80000010784f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107853:	48 01 d0             	add    %rdx,%rax
ffff800000107856:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010785a:	48 01 d8             	add    %rbx,%rax
ffff80000010785d:	48 01 f0             	add    %rsi,%rax
ffff800000107860:	48 83 c0 08          	add    $0x8,%rax
ffff800000107864:	48 89 08             	mov    %rcx,(%rax)
ffff800000107867:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010786b:	8b 48 10             	mov    0x10(%rax),%ecx
ffff80000010786e:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107875:	00 00 00 
ffff800000107878:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010787b:	48 63 d0             	movslq %eax,%rdx
ffff80000010787e:	48 01 de             	add    %rbx,%rsi
ffff800000107881:	48 89 d0             	mov    %rdx,%rax
ffff800000107884:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107888:	48 01 d0             	add    %rdx,%rax
ffff80000010788b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010788f:	48 01 f0             	add    %rsi,%rax
ffff800000107892:	48 83 c0 10          	add    $0x10,%rax
ffff800000107896:	89 08                	mov    %ecx,(%rax)
ffff800000107898:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010789b:	48 98                	cltq
ffff80000010789d:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001078a4:	00 00 00 
ffff8000001078a7:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff8000001078ae:	00 
ffff8000001078af:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff8000001078b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078b8:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001078bb:	83 f8 04             	cmp    $0x4,%eax
ffff8000001078be:	77 26                	ja     ffff8000001078e6 <init_memory+0x22b>
ffff8000001078c0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078c4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001078c8:	48 85 c0             	test   %rax,%rax
ffff8000001078cb:	74 19                	je     ffff8000001078e6 <init_memory+0x22b>
ffff8000001078cd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078d1:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001078d4:	85 c0                	test   %eax,%eax
ffff8000001078d6:	74 0e                	je     ffff8000001078e6 <init_memory+0x22b>
ffff8000001078d8:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff8000001078dc:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff8000001078e0:	0f 8e 54 fe ff ff    	jle    ffff80000010773a <init_memory+0x7f>
ffff8000001078e6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001078ea:	48 89 c1             	mov    %rax,%rcx
ffff8000001078ed:	48 b8 b0 a6 ff ff ff 	movabs $0xffffffffffffa6b0,%rax
ffff8000001078f4:	ff ff ff 
ffff8000001078f7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001078fb:	48 89 c2             	mov    %rax,%rdx
ffff8000001078fe:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107903:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107908:	49 89 df             	mov    %rbx,%r15
ffff80000010790b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107910:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff800000107917:	ff ff ff 
ffff80000010791a:	49 01 d8             	add    %rbx,%r8
ffff80000010791d:	41 ff d0             	call   *%r8
ffff800000107920:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107927:	00 
ffff800000107928:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010792f:	e9 ed 00 00 00       	jmp    ffff800000107a21 <init_memory+0x366>
ffff800000107934:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff80000010793b:	00 00 00 
ffff80000010793e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107941:	48 63 d0             	movslq %eax,%rdx
ffff800000107944:	48 01 d9             	add    %rbx,%rcx
ffff800000107947:	48 89 d0             	mov    %rdx,%rax
ffff80000010794a:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010794e:	48 01 d0             	add    %rdx,%rax
ffff800000107951:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107955:	48 01 c8             	add    %rcx,%rax
ffff800000107958:	48 83 c0 10          	add    $0x10,%rax
ffff80000010795c:	8b 00                	mov    (%rax),%eax
ffff80000010795e:	83 f8 01             	cmp    $0x1,%eax
ffff800000107961:	0f 85 b2 00 00 00    	jne    ffff800000107a19 <init_memory+0x35e>
ffff800000107967:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff80000010796e:	00 00 00 
ffff800000107971:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107974:	48 63 d0             	movslq %eax,%rdx
ffff800000107977:	48 01 d9             	add    %rbx,%rcx
ffff80000010797a:	48 89 d0             	mov    %rdx,%rax
ffff80000010797d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107981:	48 01 d0             	add    %rdx,%rax
ffff800000107984:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107988:	48 01 c8             	add    %rcx,%rax
ffff80000010798b:	48 8b 00             	mov    (%rax),%rax
ffff80000010798e:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107994:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff80000010799a:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff80000010799e:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff8000001079a5:	00 00 00 
ffff8000001079a8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001079ab:	48 63 d0             	movslq %eax,%rdx
ffff8000001079ae:	48 01 d9             	add    %rbx,%rcx
ffff8000001079b1:	48 89 d0             	mov    %rdx,%rax
ffff8000001079b4:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079b8:	48 01 d0             	add    %rdx,%rax
ffff8000001079bb:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079bf:	48 01 c8             	add    %rcx,%rax
ffff8000001079c2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001079c5:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff8000001079cc:	00 00 00 
ffff8000001079cf:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001079d2:	48 63 d0             	movslq %eax,%rdx
ffff8000001079d5:	48 89 d0             	mov    %rdx,%rax
ffff8000001079d8:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079dc:	48 01 d0             	add    %rdx,%rax
ffff8000001079df:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001079e3:	48 01 d8             	add    %rbx,%rax
ffff8000001079e6:	48 01 f0             	add    %rsi,%rax
ffff8000001079e9:	48 83 c0 08          	add    $0x8,%rax
ffff8000001079ed:	48 8b 00             	mov    (%rax),%rax
ffff8000001079f0:	48 01 c8             	add    %rcx,%rax
ffff8000001079f3:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001079f9:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff8000001079fd:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107a01:	48 39 45 88          	cmp    %rax,-0x78(%rbp)
ffff800000107a05:	73 15                	jae    ffff800000107a1c <init_memory+0x361>
ffff800000107a07:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107a0b:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000107a0f:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107a13:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107a17:	eb 04                	jmp    ffff800000107a1d <init_memory+0x362>
ffff800000107a19:	90                   	nop
ffff800000107a1a:	eb 01                	jmp    ffff800000107a1d <init_memory+0x362>
ffff800000107a1c:	90                   	nop
ffff800000107a1d:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107a21:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107a24:	48 98                	cltq
ffff800000107a26:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000107a2d:	00 00 00 
ffff800000107a30:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff800000107a37:	00 
ffff800000107a38:	48 39 c2             	cmp    %rax,%rdx
ffff800000107a3b:	0f 83 f3 fe ff ff    	jae    ffff800000107934 <init_memory+0x279>
ffff800000107a41:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107a45:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a49:	49 89 d0             	mov    %rdx,%r8
ffff800000107a4c:	48 89 c1             	mov    %rax,%rcx
ffff800000107a4f:	48 b8 d0 a6 ff ff ff 	movabs $0xffffffffffffa6d0,%rax
ffff800000107a56:	ff ff ff 
ffff800000107a59:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107a5d:	48 89 c2             	mov    %rax,%rdx
ffff800000107a60:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107a65:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107a6a:	49 89 df             	mov    %rbx,%r15
ffff800000107a6d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a72:	49 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r9
ffff800000107a79:	ff ff ff 
ffff800000107a7c:	49 01 d9             	add    %rbx,%r9
ffff800000107a7f:	41 ff d1             	call   *%r9
ffff800000107a82:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107a89:	00 00 00 
ffff800000107a8c:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107a93:	00 
ffff800000107a94:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107a9b:	00 00 00 
ffff800000107a9e:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107aa2:	48 89 d0             	mov    %rdx,%rax
ffff800000107aa5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107aa9:	48 01 d0             	add    %rdx,%rax
ffff800000107aac:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ab0:	48 01 c8             	add    %rcx,%rax
ffff800000107ab3:	48 8b 08             	mov    (%rax),%rcx
ffff800000107ab6:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107abd:	00 00 00 
ffff800000107ac0:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107ac7:	00 
ffff800000107ac8:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107acf:	00 00 00 
ffff800000107ad2:	48 89 d0             	mov    %rdx,%rax
ffff800000107ad5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ad9:	48 01 d0             	add    %rdx,%rax
ffff800000107adc:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ae0:	48 01 d8             	add    %rbx,%rax
ffff800000107ae3:	48 01 f0             	add    %rsi,%rax
ffff800000107ae6:	48 83 c0 08          	add    $0x8,%rax
ffff800000107aea:	48 8b 00             	mov    (%rax),%rax
ffff800000107aed:	48 01 c8             	add    %rcx,%rax
ffff800000107af0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107af4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107af8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107afc:	49 89 d0             	mov    %rdx,%r8
ffff800000107aff:	48 89 c1             	mov    %rax,%rcx
ffff800000107b02:	48 b8 00 a7 ff ff ff 	movabs $0xffffffffffffa700,%rax
ffff800000107b09:	ff ff ff 
ffff800000107b0c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b10:	48 89 c2             	mov    %rax,%rdx
ffff800000107b13:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b18:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107b1d:	49 89 df             	mov    %rbx,%r15
ffff800000107b20:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b25:	49 b9 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r9
ffff800000107b2c:	ff ff ff 
ffff800000107b2f:	49 01 d9             	add    %rbx,%r9
ffff800000107b32:	41 ff d1             	call   *%r9
ffff800000107b35:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b3c:	00 00 00 
ffff800000107b3f:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107b46:	00 
ffff800000107b47:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107b4d:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107b53:	48 89 c2             	mov    %rax,%rdx
ffff800000107b56:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b5d:	00 00 00 
ffff800000107b60:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107b67:	00 
ffff800000107b68:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b6c:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107b70:	48 89 c2             	mov    %rax,%rdx
ffff800000107b73:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107b7a:	00 00 00 
ffff800000107b7d:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000107b84:	00 
ffff800000107b85:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b89:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107b8d:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000107b91:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000107b95:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107b99:	48 89 c2             	mov    %rax,%rdx
ffff800000107b9c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ba3:	00 00 00 
ffff800000107ba6:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000107bad:	00 
ffff800000107bae:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bb5:	00 00 00 
ffff800000107bb8:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107bbf:	00 
ffff800000107bc0:	48 89 c2             	mov    %rax,%rdx
ffff800000107bc3:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bca:	00 00 00 
ffff800000107bcd:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107bd4:	00 
ffff800000107bd5:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000107bda:	48 89 c7             	mov    %rax,%rdi
ffff800000107bdd:	48 b8 71 87 ff ff ff 	movabs $0xffffffffffff8771,%rax
ffff800000107be4:	ff ff ff 
ffff800000107be7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107beb:	ff d0                	call   *%rax
ffff800000107bed:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107bf4:	00 00 00 
ffff800000107bf7:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000107bfe:	00 
ffff800000107bff:	48 89 c2             	mov    %rax,%rdx
ffff800000107c02:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c09:	00 00 00 
ffff800000107c0c:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000107c13:	00 
ffff800000107c14:	48 01 d0             	add    %rdx,%rax
ffff800000107c17:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107c1d:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107c23:	48 89 c2             	mov    %rax,%rdx
ffff800000107c26:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c2d:	00 00 00 
ffff800000107c30:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff800000107c37:	00 
ffff800000107c38:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c3c:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107c40:	48 89 c2             	mov    %rax,%rdx
ffff800000107c43:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c4a:	00 00 00 
ffff800000107c4d:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff800000107c54:	00 
ffff800000107c55:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c59:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107c5d:	48 89 c2             	mov    %rax,%rdx
ffff800000107c60:	48 89 d0             	mov    %rdx,%rax
ffff800000107c63:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c67:	48 01 d0             	add    %rdx,%rax
ffff800000107c6a:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107c6e:	48 83 c0 07          	add    $0x7,%rax
ffff800000107c72:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000107c76:	48 89 c2             	mov    %rax,%rdx
ffff800000107c79:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c80:	00 00 00 
ffff800000107c83:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000107c8a:	00 
ffff800000107c8b:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107c92:	00 00 00 
ffff800000107c95:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107c9c:	00 
ffff800000107c9d:	48 89 c2             	mov    %rax,%rdx
ffff800000107ca0:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ca7:	00 00 00 
ffff800000107caa:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107cb1:	00 
ffff800000107cb2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107cb7:	48 89 c7             	mov    %rax,%rdi
ffff800000107cba:	48 b8 71 87 ff ff ff 	movabs $0xffffffffffff8771,%rax
ffff800000107cc1:	ff ff ff 
ffff800000107cc4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107cc8:	ff d0                	call   *%rax
ffff800000107cca:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107cd1:	00 00 00 
ffff800000107cd4:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000107cdb:	00 
ffff800000107cdc:	48 89 c2             	mov    %rax,%rdx
ffff800000107cdf:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ce6:	00 00 00 
ffff800000107ce9:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000107cf0:	00 
ffff800000107cf1:	48 01 d0             	add    %rdx,%rax
ffff800000107cf4:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107cfa:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107d00:	48 89 c2             	mov    %rax,%rdx
ffff800000107d03:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d0a:	00 00 00 
ffff800000107d0d:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff800000107d14:	00 
ffff800000107d15:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d1c:	00 00 00 
ffff800000107d1f:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff800000107d26:	00 00 00 00 00 
ffff800000107d2b:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d32:	00 00 00 
ffff800000107d35:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff800000107d3c:	00 90 01 00 00 
ffff800000107d41:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d48:	00 00 00 
ffff800000107d4b:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000107d52:	00 
ffff800000107d53:	48 89 c2             	mov    %rax,%rdx
ffff800000107d56:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107d5d:	00 00 00 
ffff800000107d60:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000107d67:	00 
ffff800000107d68:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d6d:	48 89 c7             	mov    %rax,%rdi
ffff800000107d70:	48 b8 71 87 ff ff ff 	movabs $0xffffffffffff8771,%rax
ffff800000107d77:	ff ff ff 
ffff800000107d7a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d7e:	ff d0                	call   *%rax
ffff800000107d80:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107d87:	e9 f8 02 00 00       	jmp    ffff800000108084 <init_memory+0x9c9>
ffff800000107d8c:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107d93:	00 00 00 
ffff800000107d96:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107d99:	48 63 d0             	movslq %eax,%rdx
ffff800000107d9c:	48 01 d9             	add    %rbx,%rcx
ffff800000107d9f:	48 89 d0             	mov    %rdx,%rax
ffff800000107da2:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107da6:	48 01 d0             	add    %rdx,%rax
ffff800000107da9:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107dad:	48 01 c8             	add    %rcx,%rax
ffff800000107db0:	48 83 c0 10          	add    $0x10,%rax
ffff800000107db4:	8b 00                	mov    (%rax),%eax
ffff800000107db6:	83 f8 01             	cmp    $0x1,%eax
ffff800000107db9:	0f 85 bd 02 00 00    	jne    ffff80000010807c <init_memory+0x9c1>
ffff800000107dbf:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107dc6:	00 00 00 
ffff800000107dc9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107dcc:	48 63 d0             	movslq %eax,%rdx
ffff800000107dcf:	48 01 d9             	add    %rbx,%rcx
ffff800000107dd2:	48 89 d0             	mov    %rdx,%rax
ffff800000107dd5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107dd9:	48 01 d0             	add    %rdx,%rax
ffff800000107ddc:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107de0:	48 01 c8             	add    %rcx,%rax
ffff800000107de3:	48 8b 00             	mov    (%rax),%rax
ffff800000107de6:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107dec:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107df2:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000107df6:	48 b9 70 10 00 00 00 	movabs $0x1070,%rcx
ffff800000107dfd:	00 00 00 
ffff800000107e00:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e03:	48 63 d0             	movslq %eax,%rdx
ffff800000107e06:	48 01 d9             	add    %rbx,%rcx
ffff800000107e09:	48 89 d0             	mov    %rdx,%rax
ffff800000107e0c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e10:	48 01 d0             	add    %rdx,%rax
ffff800000107e13:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e17:	48 01 c8             	add    %rcx,%rax
ffff800000107e1a:	48 8b 08             	mov    (%rax),%rcx
ffff800000107e1d:	48 be 70 10 00 00 00 	movabs $0x1070,%rsi
ffff800000107e24:	00 00 00 
ffff800000107e27:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e2a:	48 63 d0             	movslq %eax,%rdx
ffff800000107e2d:	48 89 d0             	mov    %rdx,%rax
ffff800000107e30:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e34:	48 01 d0             	add    %rdx,%rax
ffff800000107e37:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e3b:	48 01 d8             	add    %rbx,%rax
ffff800000107e3e:	48 01 f0             	add    %rsi,%rax
ffff800000107e41:	48 83 c0 08          	add    $0x8,%rax
ffff800000107e45:	48 8b 00             	mov    (%rax),%rax
ffff800000107e48:	48 01 c8             	add    %rcx,%rax
ffff800000107e4b:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107e51:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000107e55:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107e59:	48 39 45 a0          	cmp    %rax,-0x60(%rbp)
ffff800000107e5d:	0f 83 1c 02 00 00    	jae    ffff80000010807f <init_memory+0x9c4>
ffff800000107e63:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e6a:	00 00 00 
ffff800000107e6d:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000107e74:	00 
ffff800000107e75:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107e7c:	00 00 00 
ffff800000107e7f:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000107e86:	00 
ffff800000107e87:	48 89 d0             	mov    %rdx,%rax
ffff800000107e8a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e8e:	48 01 d0             	add    %rdx,%rax
ffff800000107e91:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000107e95:	48 01 c8             	add    %rcx,%rax
ffff800000107e98:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff800000107e9c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ea3:	00 00 00 
ffff800000107ea6:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000107ead:	00 
ffff800000107eae:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107eb2:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107eb9:	00 00 00 
ffff800000107ebc:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff800000107ec3:	00 
ffff800000107ec4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107ec8:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000107ecc:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107ed0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107ed4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000107ed8:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107edc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107ee0:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000107ee4:	48 89 c2             	mov    %rax,%rdx
ffff800000107ee7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107eeb:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff800000107eef:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107ef3:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000107efa:	00 
ffff800000107efb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107eff:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000107f03:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107f07:	48 89 c2             	mov    %rax,%rdx
ffff800000107f0a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f0e:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff800000107f12:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f16:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff800000107f1d:	00 
ffff800000107f1e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f22:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff800000107f29:	00 
ffff800000107f2a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f2e:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000107f35:	00 00 00 
ffff800000107f38:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000107f3c:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107f40:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000107f44:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000107f48:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107f4c:	48 89 c2             	mov    %rax,%rdx
ffff800000107f4f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f53:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000107f57:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107f5e:	00 00 00 
ffff800000107f61:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000107f68:	00 
ffff800000107f69:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107f6d:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107f71:	48 89 c2             	mov    %rax,%rdx
ffff800000107f74:	48 89 d0             	mov    %rdx,%rax
ffff800000107f77:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f7b:	48 01 d0             	add    %rdx,%rax
ffff800000107f7e:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107f82:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000107f86:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f8a:	48 89 10             	mov    %rdx,(%rax)
ffff800000107f8d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000107f91:	48 8b 00             	mov    (%rax),%rax
ffff800000107f94:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000107f98:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000107f9f:	e9 bf 00 00 00       	jmp    ffff800000108063 <init_memory+0x9a8>
ffff800000107fa4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fa8:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000107fac:	48 89 10             	mov    %rdx,(%rax)
ffff800000107faf:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000107fb2:	48 98                	cltq
ffff800000107fb4:	48 c1 e0 15          	shl    $0x15,%rax
ffff800000107fb8:	48 89 c2             	mov    %rax,%rdx
ffff800000107fbb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000107fbf:	48 01 c2             	add    %rax,%rdx
ffff800000107fc2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fc6:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000107fca:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fce:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000107fd5:	00 
ffff800000107fd6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fda:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000107fe1:	00 
ffff800000107fe2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fe6:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000107fed:	00 
ffff800000107fee:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000107ff5:	00 00 00 
ffff800000107ff8:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000107fff:	00 
ffff800000108000:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108004:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108008:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010800c:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108010:	48 01 d0             	add    %rdx,%rax
ffff800000108013:	48 8b 10             	mov    (%rax),%rdx
ffff800000108016:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010801a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010801e:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108022:	83 e0 3f             	and    $0x3f,%eax
ffff800000108025:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010802a:	89 c1                	mov    %eax,%ecx
ffff80000010802c:	48 d3 e6             	shl    %cl,%rsi
ffff80000010802f:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108036:	00 00 00 
ffff800000108039:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff800000108040:	00 
ffff800000108041:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108045:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108049:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010804d:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108051:	48 01 c8             	add    %rcx,%rax
ffff800000108054:	48 31 f2             	xor    %rsi,%rdx
ffff800000108057:	48 89 10             	mov    %rdx,(%rax)
ffff80000010805a:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff80000010805e:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff800000108063:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108066:	48 63 d0             	movslq %eax,%rdx
ffff800000108069:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010806d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108071:	48 39 c2             	cmp    %rax,%rdx
ffff800000108074:	0f 82 2a ff ff ff    	jb     ffff800000107fa4 <init_memory+0x8e9>
ffff80000010807a:	eb 04                	jmp    ffff800000108080 <init_memory+0x9c5>
ffff80000010807c:	90                   	nop
ffff80000010807d:	eb 01                	jmp    ffff800000108080 <init_memory+0x9c5>
ffff80000010807f:	90                   	nop
ffff800000108080:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108084:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108087:	48 98                	cltq
ffff800000108089:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000108090:	00 00 00 
ffff800000108093:	48 8b 94 13 80 02 00 	mov    0x280(%rbx,%rdx,1),%rdx
ffff80000010809a:	00 
ffff80000010809b:	48 39 c2             	cmp    %rax,%rdx
ffff80000010809e:	0f 83 e8 fc ff ff    	jae    ffff800000107d8c <init_memory+0x6d1>
ffff8000001080a4:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080ab:	00 00 00 
ffff8000001080ae:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080b5:	00 
ffff8000001080b6:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001080bd:	00 00 00 
ffff8000001080c0:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff8000001080c7:	00 
ffff8000001080c8:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080cb:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080d2:	00 00 00 
ffff8000001080d5:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080dc:	00 
ffff8000001080dd:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff8000001080e4:	00 
ffff8000001080e5:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001080ec:	00 00 00 
ffff8000001080ef:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001080f6:	00 
ffff8000001080f7:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff8000001080fe:	00 
ffff8000001080ff:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108106:	00 00 00 
ffff800000108109:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108110:	00 
ffff800000108111:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000108118:	00 
ffff800000108119:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108120:	00 00 00 
ffff800000108123:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010812a:	00 
ffff80000010812b:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000108132:	00 
ffff800000108133:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010813a:	00 00 00 
ffff80000010813d:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108144:	00 
ffff800000108145:	48 89 d0             	mov    %rdx,%rax
ffff800000108148:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010814c:	48 01 d0             	add    %rdx,%rax
ffff80000010814f:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108153:	48 83 c0 07          	add    $0x7,%rax
ffff800000108157:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff80000010815b:	48 89 c2             	mov    %rax,%rdx
ffff80000010815e:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108165:	00 00 00 
ffff800000108168:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff80000010816f:	00 
ffff800000108170:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108177:	00 00 00 
ffff80000010817a:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff800000108181:	00 
ffff800000108182:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108189:	00 00 00 
ffff80000010818c:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff800000108193:	00 
ffff800000108194:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010819b:	00 00 00 
ffff80000010819e:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff8000001081a5:	00 
ffff8000001081a6:	49 89 c9             	mov    %rcx,%r9
ffff8000001081a9:	49 89 d0             	mov    %rdx,%r8
ffff8000001081ac:	48 89 c1             	mov    %rax,%rcx
ffff8000001081af:	48 b8 30 a7 ff ff ff 	movabs $0xffffffffffffa730,%rax
ffff8000001081b6:	ff ff ff 
ffff8000001081b9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001081bd:	48 89 c2             	mov    %rax,%rdx
ffff8000001081c0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001081c5:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001081ca:	49 89 df             	mov    %rbx,%r15
ffff8000001081cd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001081d2:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff8000001081d9:	ff ff ff 
ffff8000001081dc:	49 01 da             	add    %rbx,%r10
ffff8000001081df:	41 ff d2             	call   *%r10
ffff8000001081e2:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001081e9:	00 00 00 
ffff8000001081ec:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff8000001081f3:	00 
ffff8000001081f4:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001081fb:	00 00 00 
ffff8000001081fe:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff800000108205:	00 
ffff800000108206:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010820d:	00 00 00 
ffff800000108210:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108217:	00 
ffff800000108218:	49 89 c9             	mov    %rcx,%r9
ffff80000010821b:	49 89 d0             	mov    %rdx,%r8
ffff80000010821e:	48 89 c1             	mov    %rax,%rcx
ffff800000108221:	48 b8 68 a7 ff ff ff 	movabs $0xffffffffffffa768,%rax
ffff800000108228:	ff ff ff 
ffff80000010822b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010822f:	48 89 c2             	mov    %rax,%rdx
ffff800000108232:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108237:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010823c:	49 89 df             	mov    %rbx,%r15
ffff80000010823f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108244:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010824b:	ff ff ff 
ffff80000010824e:	49 01 da             	add    %rbx,%r10
ffff800000108251:	41 ff d2             	call   *%r10
ffff800000108254:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010825b:	00 00 00 
ffff80000010825e:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff800000108265:	00 
ffff800000108266:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010826d:	00 00 00 
ffff800000108270:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108277:	00 
ffff800000108278:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010827f:	00 00 00 
ffff800000108282:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108289:	00 
ffff80000010828a:	49 89 c9             	mov    %rcx,%r9
ffff80000010828d:	49 89 d0             	mov    %rdx,%r8
ffff800000108290:	48 89 c1             	mov    %rax,%rcx
ffff800000108293:	48 b8 a8 a7 ff ff ff 	movabs $0xffffffffffffa7a8,%rax
ffff80000010829a:	ff ff ff 
ffff80000010829d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001082a1:	48 89 c2             	mov    %rax,%rdx
ffff8000001082a4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001082a9:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001082ae:	49 89 df             	mov    %rbx,%r15
ffff8000001082b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001082b6:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff8000001082bd:	ff ff ff 
ffff8000001082c0:	49 01 da             	add    %rbx,%r10
ffff8000001082c3:	41 ff d2             	call   *%r10
ffff8000001082c6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001082cd:	e9 c1 00 00 00       	jmp    ffff800000108393 <init_memory+0xcd8>
ffff8000001082d2:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001082d9:	00 00 00 
ffff8000001082dc:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff8000001082e3:	00 
ffff8000001082e4:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001082e7:	48 63 d0             	movslq %eax,%rdx
ffff8000001082ea:	48 89 d0             	mov    %rdx,%rax
ffff8000001082ed:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082f1:	48 01 d0             	add    %rdx,%rax
ffff8000001082f4:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001082f8:	48 01 c8             	add    %rcx,%rax
ffff8000001082fb:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001082ff:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108303:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff800000108307:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010830b:	48 8b 10             	mov    (%rax),%rdx
ffff80000010830e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108312:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff800000108316:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010831a:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff80000010831e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108322:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108326:	51                   	push   %rcx
ffff800000108327:	52                   	push   %rdx
ffff800000108328:	49 89 f9             	mov    %rdi,%r9
ffff80000010832b:	49 89 f0             	mov    %rsi,%r8
ffff80000010832e:	48 89 c1             	mov    %rax,%rcx
ffff800000108331:	48 b8 e8 a7 ff ff ff 	movabs $0xffffffffffffa7e8,%rax
ffff800000108338:	ff ff ff 
ffff80000010833b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010833f:	48 89 c2             	mov    %rax,%rdx
ffff800000108342:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108347:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010834c:	49 89 df             	mov    %rbx,%r15
ffff80000010834f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108354:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010835b:	ff ff ff 
ffff80000010835e:	49 01 da             	add    %rbx,%r10
ffff800000108361:	41 ff d2             	call   *%r10
ffff800000108364:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108368:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010836c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000108370:	48 b8 00 00 00 00 01 	movabs $0x100000000,%rax
ffff800000108377:	00 00 00 
ffff80000010837a:	48 39 c2             	cmp    %rax,%rdx
ffff80000010837d:	75 10                	jne    ffff80000010838f <init_memory+0xcd4>
ffff80000010837f:	48 ba 38 47 00 00 00 	movabs $0x4738,%rdx
ffff800000108386:	00 00 00 
ffff800000108389:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010838c:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff80000010838f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108393:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108396:	48 63 d0             	movslq %eax,%rdx
ffff800000108399:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083a0:	00 00 00 
ffff8000001083a3:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff8000001083aa:	00 
ffff8000001083ab:	48 39 c2             	cmp    %rax,%rdx
ffff8000001083ae:	0f 82 1e ff ff ff    	jb     ffff8000001082d2 <init_memory+0xc17>
ffff8000001083b4:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083bb:	00 00 00 
ffff8000001083be:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001083c5:	00 
ffff8000001083c6:	48 89 c2             	mov    %rax,%rdx
ffff8000001083c9:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083d0:	00 00 00 
ffff8000001083d3:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff8000001083da:	00 
ffff8000001083db:	48 01 d0             	add    %rdx,%rax
ffff8000001083de:	48 05 00 01 00 00    	add    $0x100,%rax
ffff8000001083e4:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001083e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001083eb:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001083f2:	00 00 00 
ffff8000001083f5:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff8000001083fc:	00 
ffff8000001083fd:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108404:	00 00 00 
ffff800000108407:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff80000010840e:	00 
ffff80000010840f:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108416:	00 00 00 
ffff800000108419:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff800000108420:	00 
ffff800000108421:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108428:	00 00 00 
ffff80000010842b:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff800000108432:	00 
ffff800000108433:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010843a:	00 00 00 
ffff80000010843d:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff800000108444:	00 
ffff800000108445:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010844c:	00 00 00 
ffff80000010844f:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108456:	00 
ffff800000108457:	51                   	push   %rcx
ffff800000108458:	52                   	push   %rdx
ffff800000108459:	49 89 f9             	mov    %rdi,%r9
ffff80000010845c:	49 89 f0             	mov    %rsi,%r8
ffff80000010845f:	48 89 c1             	mov    %rax,%rcx
ffff800000108462:	48 b8 60 a8 ff ff ff 	movabs $0xffffffffffffa860,%rax
ffff800000108469:	ff ff ff 
ffff80000010846c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108470:	48 89 c2             	mov    %rax,%rdx
ffff800000108473:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108478:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010847d:	49 89 df             	mov    %rbx,%r15
ffff800000108480:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108485:	49 ba ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r10
ffff80000010848c:	ff ff ff 
ffff80000010848f:	49 01 da             	add    %rbx,%r10
ffff800000108492:	41 ff d2             	call   *%r10
ffff800000108495:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108499:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001084a0:	00 00 00 
ffff8000001084a3:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff8000001084aa:	00 
ffff8000001084ab:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff8000001084b2:	80 00 00 
ffff8000001084b5:	48 01 d0             	add    %rdx,%rax
ffff8000001084b8:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001084bc:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff8000001084bf:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff8000001084c6:	eb 45                	jmp    ffff80000010850d <init_memory+0xe52>
ffff8000001084c8:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff8000001084cf:	00 00 00 
ffff8000001084d2:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001084d9:	00 
ffff8000001084da:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001084dd:	48 63 d0             	movslq %eax,%rdx
ffff8000001084e0:	48 89 d0             	mov    %rdx,%rax
ffff8000001084e3:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001084e7:	48 01 d0             	add    %rdx,%rax
ffff8000001084ea:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001084ee:	48 01 c8             	add    %rcx,%rax
ffff8000001084f1:	be 93 00 00 00       	mov    $0x93,%esi
ffff8000001084f6:	48 89 c7             	mov    %rax,%rdi
ffff8000001084f9:	48 b8 f2 97 ff ff ff 	movabs $0xffffffffffff97f2,%rax
ffff800000108500:	ff ff ff 
ffff800000108503:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108507:	ff d0                	call   *%rax
ffff800000108509:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff80000010850d:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108510:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000108513:	7e b3                	jle    ffff8000001084c8 <init_memory+0xe0d>
ffff800000108515:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010851a:	48 ba 48 87 ff ff ff 	movabs $0xffffffffffff8748,%rdx
ffff800000108521:	ff ff ff 
ffff800000108524:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000108528:	ff d2                	call   *%rdx
ffff80000010852a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010852e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108532:	48 89 c1             	mov    %rax,%rcx
ffff800000108535:	48 b8 bc a8 ff ff ff 	movabs $0xffffffffffffa8bc,%rax
ffff80000010853c:	ff ff ff 
ffff80000010853f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108543:	48 89 c2             	mov    %rax,%rdx
ffff800000108546:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010854b:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108550:	49 89 df             	mov    %rbx,%r15
ffff800000108553:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108558:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff80000010855f:	ff ff ff 
ffff800000108562:	49 01 d8             	add    %rbx,%r8
ffff800000108565:	41 ff d0             	call   *%r8
ffff800000108568:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff80000010856f:	80 ff ff 
ffff800000108572:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108576:	48 01 d0             	add    %rdx,%rax
ffff800000108579:	48 8b 00             	mov    (%rax),%rax
ffff80000010857c:	48 89 c1             	mov    %rax,%rcx
ffff80000010857f:	48 b8 d1 a8 ff ff ff 	movabs $0xffffffffffffa8d1,%rax
ffff800000108586:	ff ff ff 
ffff800000108589:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010858d:	48 89 c2             	mov    %rax,%rdx
ffff800000108590:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108595:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff80000010859a:	49 89 df             	mov    %rbx,%r15
ffff80000010859d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001085a2:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff8000001085a9:	ff ff ff 
ffff8000001085ac:	49 01 d8             	add    %rbx,%r8
ffff8000001085af:	41 ff d0             	call   *%r8
ffff8000001085b2:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff8000001085b9:	80 ff ff 
ffff8000001085bc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001085c0:	48 01 d0             	add    %rdx,%rax
ffff8000001085c3:	48 8b 00             	mov    (%rax),%rax
ffff8000001085c6:	b0 00                	mov    $0x0,%al
ffff8000001085c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001085cb:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001085d2:	80 ff ff 
ffff8000001085d5:	48 01 d0             	add    %rdx,%rax
ffff8000001085d8:	48 8b 00             	mov    (%rax),%rax
ffff8000001085db:	b0 00                	mov    $0x0,%al
ffff8000001085dd:	48 89 c1             	mov    %rax,%rcx
ffff8000001085e0:	48 b8 e7 a8 ff ff ff 	movabs $0xffffffffffffa8e7,%rax
ffff8000001085e7:	ff ff ff 
ffff8000001085ea:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001085ee:	48 89 c2             	mov    %rax,%rdx
ffff8000001085f1:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001085f6:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001085fb:	49 89 df             	mov    %rbx,%r15
ffff8000001085fe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108603:	49 b8 ce 57 ff ff ff 	movabs $0xffffffffffff57ce,%r8
ffff80000010860a:	ff ff ff 
ffff80000010860d:	49 01 d8             	add    %rbx,%r8
ffff800000108610:	41 ff d0             	call   *%r8
ffff800000108613:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010861a:	eb 2c                	jmp    ffff800000108648 <init_memory+0xf8d>
ffff80000010861c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010861f:	48 98                	cltq
ffff800000108621:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000108628:	00 
ffff800000108629:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010862d:	48 01 c2             	add    %rax,%rdx
ffff800000108630:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108637:	80 ff ff 
ffff80000010863a:	48 01 d0             	add    %rdx,%rax
ffff80000010863d:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108644:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108648:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff80000010864c:	7e ce                	jle    ffff80000010861c <init_memory+0xf61>
ffff80000010864e:	0f 20 d8             	mov    %cr3,%rax
ffff800000108651:	0f 22 d8             	mov    %rax,%cr3
ffff800000108654:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108658:	90                   	nop
ffff800000108659:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff80000010865d:	5b                   	pop    %rbx
ffff80000010865e:	41 5f                	pop    %r15
ffff800000108660:	5d                   	pop    %rbp
ffff800000108661:	c3                   	ret

ffff800000108662 <page_init>:
ffff800000108662:	f3 0f 1e fa          	endbr64
ffff800000108666:	55                   	push   %rbp
ffff800000108667:	48 89 e5             	mov    %rsp,%rbp
ffff80000010866a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010866a <page_init+0x8>
ffff800000108671:	49 bb 06 68 00 00 00 	movabs $0x6806,%r11
ffff800000108678:	00 00 00 
ffff80000010867b:	4c 01 d8             	add    %r11,%rax
ffff80000010867e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000108682:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000108686:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010868a:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010868e:	48 85 d2             	test   %rdx,%rdx
ffff800000108691:	0f 85 d0 00 00 00    	jne    ffff800000108767 <page_init+0x105>
ffff800000108697:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff80000010869e:	00 00 00 
ffff8000001086a1:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff8000001086a8:	00 
ffff8000001086a9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001086ad:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001086b1:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff8000001086b5:	48 c1 e2 03          	shl    $0x3,%rdx
ffff8000001086b9:	48 01 ca             	add    %rcx,%rdx
ffff8000001086bc:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001086bf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001086c3:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff8000001086c7:	48 c1 ea 15          	shr    $0x15,%rdx
ffff8000001086cb:	83 e2 3f             	and    $0x3f,%edx
ffff8000001086ce:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001086d3:	89 d1                	mov    %edx,%ecx
ffff8000001086d5:	48 d3 e7             	shl    %cl,%rdi
ffff8000001086d8:	48 89 f9             	mov    %rdi,%rcx
ffff8000001086db:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001086e2:	00 00 00 
ffff8000001086e5:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff8000001086ec:	00 
ffff8000001086ed:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001086f1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001086f5:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff8000001086f9:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001086fd:	48 01 d0             	add    %rdx,%rax
ffff800000108700:	48 09 ce             	or     %rcx,%rsi
ffff800000108703:	48 89 f2             	mov    %rsi,%rdx
ffff800000108706:	48 89 10             	mov    %rdx,(%rax)
ffff800000108709:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010870d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000108711:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000108715:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108719:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff80000010871d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000108721:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108725:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000108729:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010872d:	48 8b 00             	mov    (%rax),%rax
ffff800000108730:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff800000108734:	48 83 c2 01          	add    $0x1,%rdx
ffff800000108738:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff80000010873c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108740:	48 8b 00             	mov    (%rax),%rax
ffff800000108743:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000108747:	48 83 ea 01          	sub    $0x1,%rdx
ffff80000010874b:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff80000010874f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108753:	48 8b 00             	mov    (%rax),%rax
ffff800000108756:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff80000010875a:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010875e:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff800000108762:	e9 0a 01 00 00       	jmp    ffff800000108871 <page_init+0x20f>
ffff800000108767:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010876b:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010876f:	83 e2 04             	and    $0x4,%edx
ffff800000108772:	48 85 d2             	test   %rdx,%rdx
ffff800000108775:	75 2e                	jne    ffff8000001087a5 <page_init+0x143>
ffff800000108777:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010877b:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010877f:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000108785:	48 85 d2             	test   %rdx,%rdx
ffff800000108788:	75 1b                	jne    ffff8000001087a5 <page_init+0x143>
ffff80000010878a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010878e:	83 e2 04             	and    $0x4,%edx
ffff800000108791:	48 85 d2             	test   %rdx,%rdx
ffff800000108794:	75 0f                	jne    ffff8000001087a5 <page_init+0x143>
ffff800000108796:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010879a:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff8000001087a0:	48 85 d2             	test   %rdx,%rdx
ffff8000001087a3:	74 43                	je     ffff8000001087e8 <page_init+0x186>
ffff8000001087a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001087a9:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001087ad:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff8000001087b1:	48 89 c2             	mov    %rax,%rdx
ffff8000001087b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001087b8:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001087bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001087c0:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001087c4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001087c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001087cc:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001087d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001087d4:	48 8b 00             	mov    (%rax),%rax
ffff8000001087d7:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001087db:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001087df:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001087e3:	e9 89 00 00 00       	jmp    ffff800000108871 <page_init+0x20f>
ffff8000001087e8:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff8000001087ef:	00 00 00 
ffff8000001087f2:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff8000001087f9:	00 
ffff8000001087fa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001087fe:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000108802:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000108806:	48 c1 e2 03          	shl    $0x3,%rdx
ffff80000010880a:	48 01 ca             	add    %rcx,%rdx
ffff80000010880d:	48 8b 32             	mov    (%rdx),%rsi
ffff800000108810:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000108814:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000108818:	48 c1 ea 15          	shr    $0x15,%rdx
ffff80000010881c:	83 e2 3f             	and    $0x3f,%edx
ffff80000010881f:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000108824:	89 d1                	mov    %edx,%ecx
ffff800000108826:	48 d3 e7             	shl    %cl,%rdi
ffff800000108829:	48 89 f9             	mov    %rdi,%rcx
ffff80000010882c:	48 ba 70 10 00 00 00 	movabs $0x1070,%rdx
ffff800000108833:	00 00 00 
ffff800000108836:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff80000010883d:	00 
ffff80000010883e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108842:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108846:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010884a:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010884e:	48 01 d0             	add    %rdx,%rax
ffff800000108851:	48 09 ce             	or     %rcx,%rsi
ffff800000108854:	48 89 f2             	mov    %rsi,%rdx
ffff800000108857:	48 89 10             	mov    %rdx,(%rax)
ffff80000010885a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010885e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108862:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000108866:	48 89 c2             	mov    %rax,%rdx
ffff800000108869:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010886d:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000108871:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108876:	5d                   	pop    %rbp
ffff800000108877:	c3                   	ret
