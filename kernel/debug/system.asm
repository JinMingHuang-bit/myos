
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
ffff800000100059:	48 8e d8             	mov    %rax,%ds
ffff80000010005c:	48 8e c0             	mov    %rax,%es
ffff80000010005f:	48 8e e8             	mov    %rax,%gs
ffff800000100062:	48 8e d0             	mov    %rax,%ss
ffff800000100065:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
ffff80000010006c:	80 ff ff 

ffff80000010006f <setup_IDT>:
ffff80000010006f:	48 8d 15 a6 00 00 00 	lea    0xa6(%rip),%rdx        # ffff80000010011c <ignore_int>
ffff800000100076:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
ffff80000010007d:	66 89 d0             	mov    %dx,%ax
ffff800000100080:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
ffff800000100087:	8e 00 00 
ffff80000010008a:	48 01 c8             	add    %rcx,%rax
ffff80000010008d:	89 d1                	mov    %edx,%ecx
ffff80000010008f:	c1 e9 10             	shr    $0x10,%ecx
ffff800000100092:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000100096:	48 01 c8             	add    %rcx,%rax
ffff800000100099:	48 c1 ea 20          	shr    $0x20,%rdx
ffff80000010009d:	48 8d 3d ae a3 00 00 	lea    0xa3ae(%rip),%rdi        # ffff80000010a452 <IDT_Table>
ffff8000001000a4:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000ab <rp_sidt>:
ffff8000001000ab:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000ae:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000b2:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b6:	48 ff c9             	dec    %rcx
ffff8000001000b9:	75 f0                	jne    ffff8000001000ab <rp_sidt>

ffff8000001000bb <setup_TSS64>:
ffff8000001000bb:	48 8d 15 9a b3 00 00 	lea    0xb39a(%rip),%rdx        # ffff80000010b45c <TSS64_Table>
ffff8000001000c2:	48 31 c0             	xor    %rax,%rax
ffff8000001000c5:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000c8:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
ffff8000001000cf:	48 c1 e0 28          	shl    $0x28,%rax
ffff8000001000d3:	89 d1                	mov    %edx,%ecx
ffff8000001000d5:	c1 e9 18             	shr    $0x18,%ecx
ffff8000001000d8:	48 c1 e1 38          	shl    $0x38,%rcx
ffff8000001000dc:	48 01 c8             	add    %rcx,%rax
ffff8000001000df:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000e2:	89 d1                	mov    %edx,%ecx
ffff8000001000e4:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
ffff8000001000ea:	48 c1 e1 10          	shl    $0x10,%rcx
ffff8000001000ee:	48 01 c8             	add    %rcx,%rax
ffff8000001000f1:	48 83 c0 67          	add    $0x67,%rax
ffff8000001000f5:	48 8d 3d c4 a2 00 00 	lea    0xa2c4(%rip),%rdi        # ffff80000010a3c0 <GDT_Table>
ffff8000001000fc:	48 89 47 40          	mov    %rax,0x40(%rdi)
ffff800000100100:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000100104:	48 89 57 48          	mov    %rdx,0x48(%rdi)
ffff800000100108:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100114 <go_to_kernel>
ffff80000010010f:	6a 08                	push   $0x8
ffff800000100111:	50                   	push   %rax
ffff800000100112:	48 cb                	lretq  

ffff800000100114 <go_to_kernel>:
ffff800000100114:	5a                   	pop    %rdx
ffff800000100115:	41 10 00             	adc    %al,(%r8)
ffff800000100118:	00                   	.byte 0x0
ffff800000100119:	80 ff ff             	cmp    $0xff,%bh

ffff80000010011c <ignore_int>:
ffff80000010011c:	fc                   	cld    
ffff80000010011d:	50                   	push   %rax
ffff80000010011e:	53                   	push   %rbx
ffff80000010011f:	51                   	push   %rcx
ffff800000100120:	52                   	push   %rdx
ffff800000100121:	55                   	push   %rbp
ffff800000100122:	57                   	push   %rdi
ffff800000100123:	56                   	push   %rsi
ffff800000100124:	41 50                	push   %r8
ffff800000100126:	41 51                	push   %r9
ffff800000100128:	41 52                	push   %r10
ffff80000010012a:	41 53                	push   %r11
ffff80000010012c:	41 54                	push   %r12
ffff80000010012e:	41 55                	push   %r13
ffff800000100130:	41 56                	push   %r14
ffff800000100132:	41 57                	push   %r15
ffff800000100134:	48 8c c0             	mov    %es,%rax
ffff800000100137:	50                   	push   %rax
ffff800000100138:	48 8c d8             	mov    %ds,%rax
ffff80000010013b:	50                   	push   %rax
ffff80000010013c:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100143:	48 8e d8             	mov    %rax,%ds
ffff800000100146:	48 8e c0             	mov    %rax,%es
ffff800000100149:	48 8d 05 45 00 00 00 	lea    0x45(%rip),%rax        # ffff800000100195 <int_msg>
ffff800000100150:	50                   	push   %rax
ffff800000100151:	48 89 c2             	mov    %rax,%rdx
ffff800000100154:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
ffff80000010015b:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
ffff800000100162:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
ffff800000100169:	e8 04 47 00 00       	call   ffff800000104872 <color_printk>
ffff80000010016e:	48 83 c4 08          	add    $0x8,%rsp

ffff800000100172 <Loop>:
ffff800000100172:	eb fe                	jmp    ffff800000100172 <Loop>
ffff800000100174:	58                   	pop    %rax
ffff800000100175:	48 8e d8             	mov    %rax,%ds
ffff800000100178:	58                   	pop    %rax
ffff800000100179:	48 8e c0             	mov    %rax,%es
ffff80000010017c:	41 5f                	pop    %r15
ffff80000010017e:	41 5e                	pop    %r14
ffff800000100180:	41 5d                	pop    %r13
ffff800000100182:	41 5c                	pop    %r12
ffff800000100184:	41 5b                	pop    %r11
ffff800000100186:	41 5a                	pop    %r10
ffff800000100188:	41 59                	pop    %r9
ffff80000010018a:	41 58                	pop    %r8
ffff80000010018c:	5e                   	pop    %rsi
ffff80000010018d:	5f                   	pop    %rdi
ffff80000010018e:	5d                   	pop    %rbp
ffff80000010018f:	5a                   	pop    %rdx
ffff800000100190:	59                   	pop    %rcx
ffff800000100191:	5b                   	pop    %rbx
ffff800000100192:	58                   	pop    %rax
ffff800000100193:	48 cf                	iretq  

ffff800000100195 <int_msg>:
ffff800000100195:	55                   	push   %rbp
ffff800000100196:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000100197:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
ffff80000010019b:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff80000010019e:	74 65                	je     ffff800000100205 <int_msg+0x70>
ffff8000001001a0:	72 72                	jb     ffff800000100214 <int_msg+0x7f>
ffff8000001001a2:	75 70                	jne    ffff800000100214 <int_msg+0x7f>
ffff8000001001a4:	74 20                	je     ffff8000001001c6 <int_msg+0x31>
ffff8000001001a6:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001a7:	72 20                	jb     ffff8000001001c9 <int_msg+0x34>
ffff8000001001a9:	66 61                	data16 (bad) 
ffff8000001001ab:	75 6c                	jne    ffff800000100219 <int_msg+0x84>
ffff8000001001ad:	74 20                	je     ffff8000001001cf <int_msg+0x3a>
ffff8000001001af:	61                   	(bad)  
ffff8000001001b0:	74 20                	je     ffff8000001001d2 <int_msg+0x3d>
ffff8000001001b2:	52                   	push   %rdx
ffff8000001001b3:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
ffff8000001001ba:	79 6f                	jns    ffff80000010022b <int_msg+0x96>
ffff8000001001bc:	75 20                	jne    ffff8000001001de <int_msg+0x49>
ffff8000001001be:	73 65                	jae    ffff800000100225 <int_msg+0x90>
ffff8000001001c0:	72 69                	jb     ffff80000010022b <int_msg+0x96>
ffff8000001001c2:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001c3:	75 73                	jne    ffff800000100238 <int_msg+0xa3>
ffff8000001001c5:	3f                   	(bad)  
ffff8000001001c6:	0a 00                	or     (%rax),%al
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
ffff800000104256:	0f 00 d8             	ltr    %ax
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
ffff8000001042f1:	48 ba b4 7c ff ff ff 	movabs $0xffffffffffff7cb4,%rdx
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
ffff80000010438c:	48 b8 60 99 ff ff ff 	movabs $0xffffffffffff9960,%rax
ffff800000104393:	ff ff ff 
ffff800000104396:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010439a:	48 89 c2             	mov    %rax,%rdx
ffff80000010439d:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043a2:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043a7:	49 89 df             	mov    %rbx,%r15
ffff8000001043aa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043af:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001043b6:	ff ff ff 
ffff8000001043b9:	48 01 d9             	add    %rbx,%rcx
ffff8000001043bc:	ff d1                	call   *%rcx
ffff8000001043be:	48 b8 71 99 ff ff ff 	movabs $0xffffffffffff9971,%rax
ffff8000001043c5:	ff ff ff 
ffff8000001043c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043cc:	48 89 c2             	mov    %rax,%rdx
ffff8000001043cf:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043d4:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043d9:	49 89 df             	mov    %rbx,%r15
ffff8000001043dc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043e1:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001043e8:	ff ff ff 
ffff8000001043eb:	48 01 d9             	add    %rbx,%rcx
ffff8000001043ee:	ff d1                	call   *%rcx
ffff8000001043f0:	48 b8 80 99 ff ff ff 	movabs $0xffffffffffff9980,%rax
ffff8000001043f7:	ff ff ff 
ffff8000001043fa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043fe:	48 89 c2             	mov    %rax,%rdx
ffff800000104401:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104406:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010440b:	49 89 df             	mov    %rbx,%r15
ffff80000010440e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104413:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff80000010441a:	ff ff ff 
ffff80000010441d:	48 01 d9             	add    %rbx,%rcx
ffff800000104420:	ff d1                	call   *%rcx
ffff800000104422:	49 89 df             	mov    %rbx,%r15
ffff800000104425:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010442a:	48 ba 56 85 ff ff ff 	movabs $0xffffffffffff8556,%rdx
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
ffff800000104459:	48 b8 d8 99 ff ff ff 	movabs $0xffffffffffff99d8,%rax
ffff800000104460:	ff ff ff 
ffff800000104463:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104467:	48 89 c2             	mov    %rax,%rdx
ffff80000010446a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010446f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000104474:	49 89 df             	mov    %rbx,%r15
ffff800000104477:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010447c:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
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
ffff8000001044a8:	48 b8 08 9a ff ff ff 	movabs $0xffffffffffff9a08,%rax
ffff8000001044af:	ff ff ff 
ffff8000001044b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044b6:	48 89 c2             	mov    %rax,%rdx
ffff8000001044b9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001044be:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001044c3:	49 89 df             	mov    %rbx,%r15
ffff8000001044c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044cb:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff8000001044d2:	ff ff ff 
ffff8000001044d5:	49 01 d8             	add    %rbx,%r8
ffff8000001044d8:	41 ff d0             	call   *%r8
ffff8000001044db:	ba 91 00 00 00       	mov    $0x91,%edx
ffff8000001044e0:	be 40 00 00 00       	mov    $0x40,%esi
ffff8000001044e5:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001044ea:	49 89 df             	mov    %rbx,%r15
ffff8000001044ed:	48 b8 c7 95 ff ff ff 	movabs $0xffffffffffff95c7,%rax
ffff8000001044f4:	ff ff ff 
ffff8000001044f7:	48 01 d8             	add    %rbx,%rax
ffff8000001044fa:	ff d0                	call   *%rax
ffff8000001044fc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000104500:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104507:	e9 0c 01 00 00       	jmp    ffff800000104618 <Start_Kernel+0x4be>
ffff80000010450c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010450f:	48 63 d0             	movslq %eax,%rdx
ffff800000104512:	48 89 d0             	mov    %rdx,%rax
ffff800000104515:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000104519:	48 01 d0             	add    %rdx,%rax
ffff80000010451c:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000104520:	48 89 c2             	mov    %rax,%rdx
ffff800000104523:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104527:	48 01 d0             	add    %rdx,%rax
ffff80000010452a:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff80000010452e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104531:	48 63 d0             	movslq %eax,%rdx
ffff800000104534:	48 89 d0             	mov    %rdx,%rax
ffff800000104537:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010453b:	48 01 d0             	add    %rdx,%rax
ffff80000010453e:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000104542:	48 89 c2             	mov    %rax,%rdx
ffff800000104545:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104549:	48 01 d0             	add    %rdx,%rax
ffff80000010454c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104550:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104553:	49 89 c9             	mov    %rcx,%r9
ffff800000104556:	49 89 d0             	mov    %rdx,%r8
ffff800000104559:	89 c1                	mov    %eax,%ecx
ffff80000010455b:	48 b8 38 9a ff ff ff 	movabs $0xffffffffffff9a38,%rax
ffff800000104562:	ff ff ff 
ffff800000104565:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104569:	48 89 c2             	mov    %rax,%rdx
ffff80000010456c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104571:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000104576:	49 89 df             	mov    %rbx,%r15
ffff800000104579:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010457e:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000104585:	ff ff ff 
ffff800000104588:	49 01 da             	add    %rbx,%r10
ffff80000010458b:	41 ff d2             	call   *%r10
ffff80000010458e:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000104592:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104595:	48 63 d0             	movslq %eax,%rdx
ffff800000104598:	48 89 d0             	mov    %rdx,%rax
ffff80000010459b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010459f:	48 01 d0             	add    %rdx,%rax
ffff8000001045a2:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001045a6:	48 89 c2             	mov    %rax,%rdx
ffff8000001045a9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045ad:	48 01 d0             	add    %rdx,%rax
ffff8000001045b0:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001045b4:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001045b7:	48 63 d0             	movslq %eax,%rdx
ffff8000001045ba:	48 89 d0             	mov    %rdx,%rax
ffff8000001045bd:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001045c1:	48 01 d0             	add    %rdx,%rax
ffff8000001045c4:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001045c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001045cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045cf:	48 01 d0             	add    %rdx,%rax
ffff8000001045d2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001045d6:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001045d9:	49 89 c9             	mov    %rcx,%r9
ffff8000001045dc:	49 89 d0             	mov    %rdx,%r8
ffff8000001045df:	89 c1                	mov    %eax,%ecx
ffff8000001045e1:	48 b8 38 9a ff ff ff 	movabs $0xffffffffffff9a38,%rax
ffff8000001045e8:	ff ff ff 
ffff8000001045eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001045ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001045f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001045f7:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff8000001045fc:	49 89 df             	mov    %rbx,%r15
ffff8000001045ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104604:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff80000010460b:	ff ff ff 
ffff80000010460e:	49 01 da             	add    %rbx,%r10
ffff800000104611:	41 ff d2             	call   *%r10
ffff800000104614:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000104618:	83 7d ec 0f          	cmpl   $0xf,-0x14(%rbp)
ffff80000010461c:	0f 8e ea fe ff ff    	jle    ffff80000010450c <Start_Kernel+0x3b2>
ffff800000104622:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104629:	00 00 00 
ffff80000010462c:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000104633:	00 
ffff800000104634:	48 8b 00             	mov    (%rax),%rax
ffff800000104637:	48 89 c1             	mov    %rax,%rcx
ffff80000010463a:	48 b8 d8 99 ff ff ff 	movabs $0xffffffffffff99d8,%rax
ffff800000104641:	ff ff ff 
ffff800000104644:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104648:	48 89 c2             	mov    %rax,%rdx
ffff80000010464b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104650:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000104655:	49 89 df             	mov    %rbx,%r15
ffff800000104658:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010465d:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000104664:	ff ff ff 
ffff800000104667:	49 01 d8             	add    %rbx,%r8
ffff80000010466a:	41 ff d0             	call   *%r8
ffff80000010466d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000104674:	00 00 00 
ffff800000104677:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010467e:	00 
ffff80000010467f:	48 83 c0 08          	add    $0x8,%rax
ffff800000104683:	48 8b 00             	mov    (%rax),%rax
ffff800000104686:	48 89 c1             	mov    %rax,%rcx
ffff800000104689:	48 b8 08 9a ff ff ff 	movabs $0xffffffffffff9a08,%rax
ffff800000104690:	ff ff ff 
ffff800000104693:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104697:	48 89 c2             	mov    %rax,%rdx
ffff80000010469a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010469f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001046a4:	49 89 df             	mov    %rbx,%r15
ffff8000001046a7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001046ac:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff8000001046b3:	ff ff ff 
ffff8000001046b6:	49 01 d8             	add    %rbx,%r8
ffff8000001046b9:	41 ff d0             	call   *%r8
ffff8000001046bc:	48 b8 68 9a ff ff ff 	movabs $0xffffffffffff9a68,%rax
ffff8000001046c3:	ff ff ff 
ffff8000001046c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046ca:	48 89 c2             	mov    %rax,%rdx
ffff8000001046cd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001046d2:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001046d7:	49 89 df             	mov    %rbx,%r15
ffff8000001046da:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001046df:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001046e6:	ff ff ff 
ffff8000001046e9:	48 01 d9             	add    %rbx,%rcx
ffff8000001046ec:	ff d1                	call   *%rcx
ffff8000001046ee:	48 b8 a0 9a ff ff ff 	movabs $0xffffffffffff9aa0,%rax
ffff8000001046f5:	ff ff ff 
ffff8000001046f8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046fc:	48 89 c2             	mov    %rax,%rdx
ffff8000001046ff:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104704:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104709:	49 89 df             	mov    %rbx,%r15
ffff80000010470c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104711:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000104718:	ff ff ff 
ffff80000010471b:	48 01 d9             	add    %rbx,%rcx
ffff80000010471e:	ff d1                	call   *%rcx
ffff800000104720:	eb fe                	jmp    ffff800000104720 <Start_Kernel+0x5c6>

ffff800000104722 <Cstrlen>:
ffff800000104722:	f3 0f 1e fa          	endbr64 
ffff800000104726:	55                   	push   %rbp
ffff800000104727:	48 89 e5             	mov    %rsp,%rbp
ffff80000010472a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010472a <Cstrlen+0x8>
ffff800000104731:	49 bb 86 ae 00 00 00 	movabs $0xae86,%r11
ffff800000104738:	00 00 00 
ffff80000010473b:	4c 01 d8             	add    %r11,%rax
ffff80000010473e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104742:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104746:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010474a:	eb 05                	jmp    ffff800000104751 <Cstrlen+0x2f>
ffff80000010474c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104751:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104755:	0f b6 00             	movzbl (%rax),%eax
ffff800000104758:	84 c0                	test   %al,%al
ffff80000010475a:	75 f0                	jne    ffff80000010474c <Cstrlen+0x2a>
ffff80000010475c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104760:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff800000104764:	5d                   	pop    %rbp
ffff800000104765:	c3                   	ret    

ffff800000104766 <putchar>:
ffff800000104766:	f3 0f 1e fa          	endbr64 
ffff80000010476a:	55                   	push   %rbp
ffff80000010476b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010476e:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010476e <putchar+0x8>
ffff800000104775:	49 bb 42 ae 00 00 00 	movabs $0xae42,%r11
ffff80000010477c:	00 00 00 
ffff80000010477f:	4c 01 d8             	add    %r11,%rax
ffff800000104782:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104786:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104789:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff80000010478c:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff80000010478f:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104793:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff800000104797:	8b 55 10             	mov    0x10(%rbp),%edx
ffff80000010479a:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff80000010479d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047a4:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001047ab:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff8000001047b2:	00 
ffff8000001047b3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001047ba:	00 
ffff8000001047bb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001047c2:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001047c6:	48 63 d2             	movslq %edx,%rdx
ffff8000001047c9:	48 89 d1             	mov    %rdx,%rcx
ffff8000001047cc:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001047d0:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff8000001047d7:	ff ff ff 
ffff8000001047da:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001047de:	48 01 c8             	add    %rcx,%rax
ffff8000001047e1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001047e5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047ec:	eb 7a                	jmp    ffff800000104868 <putchar+0x102>
ffff8000001047ee:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001047f1:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001047f4:	01 d0                	add    %edx,%eax
ffff8000001047f6:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001047fa:	48 63 d0             	movslq %eax,%rdx
ffff8000001047fd:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104800:	48 98                	cltq   
ffff800000104802:	48 01 d0             	add    %rdx,%rax
ffff800000104805:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff80000010480c:	00 
ffff80000010480d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104811:	48 01 d0             	add    %rdx,%rax
ffff800000104814:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104818:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff80000010481f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104826:	eb 31                	jmp    ffff800000104859 <putchar+0xf3>
ffff800000104828:	d1 7d e4             	sarl   -0x1c(%rbp)
ffff80000010482b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010482f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104832:	0f b6 c0             	movzbl %al,%eax
ffff800000104835:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104838:	85 c0                	test   %eax,%eax
ffff80000010483a:	74 0b                	je     ffff800000104847 <putchar+0xe1>
ffff80000010483c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104840:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff800000104843:	89 10                	mov    %edx,(%rax)
ffff800000104845:	eb 09                	jmp    ffff800000104850 <putchar+0xea>
ffff800000104847:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010484b:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff80000010484e:	89 10                	mov    %edx,(%rax)
ffff800000104850:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff800000104855:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104859:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff80000010485d:	7e c9                	jle    ffff800000104828 <putchar+0xc2>
ffff80000010485f:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104864:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104868:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff80000010486c:	7e 80                	jle    ffff8000001047ee <putchar+0x88>
ffff80000010486e:	90                   	nop
ffff80000010486f:	90                   	nop
ffff800000104870:	5d                   	pop    %rbp
ffff800000104871:	c3                   	ret    

ffff800000104872 <color_printk>:
ffff800000104872:	f3 0f 1e fa          	endbr64 
ffff800000104876:	55                   	push   %rbp
ffff800000104877:	48 89 e5             	mov    %rsp,%rbp
ffff80000010487a:	53                   	push   %rbx
ffff80000010487b:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104882:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104882 <color_printk+0x10>
ffff800000104889:	49 bb 2e ad 00 00 00 	movabs $0xad2e,%r11
ffff800000104890:	00 00 00 
ffff800000104893:	4c 01 db             	add    %r11,%rbx
ffff800000104896:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff80000010489c:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff8000001048a2:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff8000001048a9:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001048b0:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001048b7:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001048be:	84 c0                	test   %al,%al
ffff8000001048c0:	74 23                	je     ffff8000001048e5 <color_printk+0x73>
ffff8000001048c2:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001048c9:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001048cd:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001048d1:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001048d5:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001048d9:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001048dd:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001048e1:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001048e5:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001048ec:	00 00 00 
ffff8000001048ef:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001048f6:	00 00 00 
ffff8000001048f9:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104900:	00 00 00 
ffff800000104903:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff80000010490a:	00 00 00 
ffff80000010490d:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff800000104914:	00 00 00 
ffff800000104917:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff80000010491b:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff800000104922:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104929:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104930:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff800000104937:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff80000010493e:	48 89 c6             	mov    %rax,%rsi
ffff800000104941:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104948:	00 00 00 
ffff80000010494b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010494f:	48 89 c7             	mov    %rax,%rdi
ffff800000104952:	48 b8 44 5d ff ff ff 	movabs $0xffffffffffff5d44,%rax
ffff800000104959:	ff ff ff 
ffff80000010495c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104960:	ff d0                	call   *%rax
ffff800000104962:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104968:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff80000010496f:	00 00 00 
ffff800000104972:	e9 83 04 00 00       	jmp    ffff800000104dfa <color_printk+0x588>
ffff800000104977:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff80000010497e:	7e 0c                	jle    ffff80000010498c <color_printk+0x11a>
ffff800000104980:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104987:	e9 47 02 00 00       	jmp    ffff800000104bd3 <color_printk+0x361>
ffff80000010498c:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104992:	48 63 d0             	movslq %eax,%rdx
ffff800000104995:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010499c:	00 00 00 
ffff80000010499f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049a3:	48 01 d0             	add    %rdx,%rax
ffff8000001049a6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001049a9:	3c 0a                	cmp    $0xa,%al
ffff8000001049ab:	75 36                	jne    ffff8000001049e3 <color_printk+0x171>
ffff8000001049ad:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049b4:	00 00 00 
ffff8000001049b7:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001049bb:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001049be:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049c5:	00 00 00 
ffff8000001049c8:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001049cc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049d3:	00 00 00 
ffff8000001049d6:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001049dd:	00 
ffff8000001049de:	e9 6c 03 00 00       	jmp    ffff800000104d4f <color_printk+0x4dd>
ffff8000001049e3:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001049e9:	48 63 d0             	movslq %eax,%rdx
ffff8000001049ec:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049f3:	00 00 00 
ffff8000001049f6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049fa:	48 01 d0             	add    %rdx,%rax
ffff8000001049fd:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a00:	3c 08                	cmp    $0x8,%al
ffff800000104a02:	0f 85 78 01 00 00    	jne    ffff800000104b80 <color_printk+0x30e>
ffff800000104a08:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a0f:	00 00 00 
ffff800000104a12:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a16:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a19:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a20:	00 00 00 
ffff800000104a23:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a27:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a2e:	00 00 00 
ffff800000104a31:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a35:	85 c0                	test   %eax,%eax
ffff800000104a37:	0f 89 b2 00 00 00    	jns    ffff800000104aef <color_printk+0x27d>
ffff800000104a3d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a44:	00 00 00 
ffff800000104a47:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a4a:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a51:	00 00 00 
ffff800000104a54:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a58:	99                   	cltd   
ffff800000104a59:	f7 fe                	idiv   %esi
ffff800000104a5b:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a5e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a65:	00 00 00 
ffff800000104a68:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a6c:	0f af c2             	imul   %edx,%eax
ffff800000104a6f:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a76:	00 00 00 
ffff800000104a79:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104a7d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a84:	00 00 00 
ffff800000104a87:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a8b:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a8e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a95:	00 00 00 
ffff800000104a98:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104a9c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aa3:	00 00 00 
ffff800000104aa6:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104aaa:	85 c0                	test   %eax,%eax
ffff800000104aac:	79 41                	jns    ffff800000104aef <color_printk+0x27d>
ffff800000104aae:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ab5:	00 00 00 
ffff800000104ab8:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104abc:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104ac3:	00 00 00 
ffff800000104ac6:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104aca:	99                   	cltd   
ffff800000104acb:	f7 ff                	idiv   %edi
ffff800000104acd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ad0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ad7:	00 00 00 
ffff800000104ada:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104ade:	0f af c2             	imul   %edx,%eax
ffff800000104ae1:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104ae8:	00 00 00 
ffff800000104aeb:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff800000104aef:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104af6:	00 00 00 
ffff800000104af9:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104afd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b04:	00 00 00 
ffff800000104b07:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b0b:	89 d1                	mov    %edx,%ecx
ffff800000104b0d:	0f af c8             	imul   %eax,%ecx
ffff800000104b10:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b17:	00 00 00 
ffff800000104b1a:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104b1e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b25:	00 00 00 
ffff800000104b28:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104b2c:	0f af d0             	imul   %eax,%edx
ffff800000104b2f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b36:	00 00 00 
ffff800000104b39:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104b3c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b43:	00 00 00 
ffff800000104b46:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104b4b:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104b52:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104b58:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104b5c:	6a 20                	push   $0x20
ffff800000104b5e:	45 89 c1             	mov    %r8d,%r9d
ffff800000104b61:	41 89 f8             	mov    %edi,%r8d
ffff800000104b64:	48 89 c7             	mov    %rax,%rdi
ffff800000104b67:	48 b8 b6 51 ff ff ff 	movabs $0xffffffffffff51b6,%rax
ffff800000104b6e:	ff ff ff 
ffff800000104b71:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b75:	ff d0                	call   *%rax
ffff800000104b77:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104b7b:	e9 cf 01 00 00       	jmp    ffff800000104d4f <color_printk+0x4dd>
ffff800000104b80:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b86:	48 63 d0             	movslq %eax,%rdx
ffff800000104b89:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104b90:	00 00 00 
ffff800000104b93:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b97:	48 01 d0             	add    %rdx,%rax
ffff800000104b9a:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b9d:	3c 09                	cmp    $0x9,%al
ffff800000104b9f:	0f 85 e5 00 00 00    	jne    ffff800000104c8a <color_printk+0x418>
ffff800000104ba5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bac:	00 00 00 
ffff800000104baf:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104bb3:	83 c0 08             	add    $0x8,%eax
ffff800000104bb6:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104bb9:	89 c2                	mov    %eax,%edx
ffff800000104bbb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bc2:	00 00 00 
ffff800000104bc5:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104bc9:	89 d0                	mov    %edx,%eax
ffff800000104bcb:	29 c8                	sub    %ecx,%eax
ffff800000104bcd:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
ffff800000104bd3:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff800000104bda:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104be1:	00 00 00 
ffff800000104be4:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104be8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bef:	00 00 00 
ffff800000104bf2:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104bf6:	89 d1                	mov    %edx,%ecx
ffff800000104bf8:	0f af c8             	imul   %eax,%ecx
ffff800000104bfb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c02:	00 00 00 
ffff800000104c05:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104c09:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c10:	00 00 00 
ffff800000104c13:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c17:	0f af d0             	imul   %eax,%edx
ffff800000104c1a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c21:	00 00 00 
ffff800000104c24:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c27:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c2e:	00 00 00 
ffff800000104c31:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c36:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104c3d:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104c43:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104c47:	6a 20                	push   $0x20
ffff800000104c49:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c4c:	41 89 f8             	mov    %edi,%r8d
ffff800000104c4f:	48 89 c7             	mov    %rax,%rdi
ffff800000104c52:	48 b8 b6 51 ff ff ff 	movabs $0xffffffffffff51b6,%rax
ffff800000104c59:	ff ff ff 
ffff800000104c5c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c60:	ff d0                	call   *%rax
ffff800000104c62:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104c66:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c6d:	00 00 00 
ffff800000104c70:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104c74:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c77:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c7e:	00 00 00 
ffff800000104c81:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104c85:	e9 c5 00 00 00       	jmp    ffff800000104d4f <color_printk+0x4dd>
ffff800000104c8a:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104c90:	48 63 d0             	movslq %eax,%rdx
ffff800000104c93:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104c9a:	00 00 00 
ffff800000104c9d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ca1:	48 01 d0             	add    %rdx,%rax
ffff800000104ca4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ca7:	0f b6 f8             	movzbl %al,%edi
ffff800000104caa:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cb1:	00 00 00 
ffff800000104cb4:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104cb8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cbf:	00 00 00 
ffff800000104cc2:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104cc6:	89 d1                	mov    %edx,%ecx
ffff800000104cc8:	0f af c8             	imul   %eax,%ecx
ffff800000104ccb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cd2:	00 00 00 
ffff800000104cd5:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104cd9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ce0:	00 00 00 
ffff800000104ce3:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ce7:	0f af d0             	imul   %eax,%edx
ffff800000104cea:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cf1:	00 00 00 
ffff800000104cf4:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104cf7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cfe:	00 00 00 
ffff800000104d01:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104d06:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104d0d:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104d14:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104d18:	57                   	push   %rdi
ffff800000104d19:	48 89 c7             	mov    %rax,%rdi
ffff800000104d1c:	48 b8 b6 51 ff ff ff 	movabs $0xffffffffffff51b6,%rax
ffff800000104d23:	ff ff ff 
ffff800000104d26:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d2a:	ff d0                	call   *%rax
ffff800000104d2c:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104d30:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d37:	00 00 00 
ffff800000104d3a:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104d3e:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d41:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d48:	00 00 00 
ffff800000104d4b:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104d4f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d56:	00 00 00 
ffff800000104d59:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104d5d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d64:	00 00 00 
ffff800000104d67:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104d6a:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104d71:	00 00 00 
ffff800000104d74:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104d78:	99                   	cltd   
ffff800000104d79:	f7 fe                	idiv   %esi
ffff800000104d7b:	39 c1                	cmp    %eax,%ecx
ffff800000104d7d:	7c 31                	jl     ffff800000104db0 <color_printk+0x53e>
ffff800000104d7f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d86:	00 00 00 
ffff800000104d89:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104d8d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d90:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d97:	00 00 00 
ffff800000104d9a:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104d9e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104da5:	00 00 00 
ffff800000104da8:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104daf:	00 
ffff800000104db0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104db7:	00 00 00 
ffff800000104dba:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104dbe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dc5:	00 00 00 
ffff800000104dc8:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104dcc:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104dd3:	00 00 00 
ffff800000104dd6:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104dda:	99                   	cltd   
ffff800000104ddb:	f7 ff                	idiv   %edi
ffff800000104ddd:	39 c1                	cmp    %eax,%ecx
ffff800000104ddf:	7c 12                	jl     ffff800000104df3 <color_printk+0x581>
ffff800000104de1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104de8:	00 00 00 
ffff800000104deb:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104df2:	00 
ffff800000104df3:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104dfa:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104e00:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104e06:	0f 8c 6b fb ff ff    	jl     ffff800000104977 <color_printk+0x105>
ffff800000104e0c:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104e13:	0f 85 5e fb ff ff    	jne    ffff800000104977 <color_printk+0x105>
ffff800000104e19:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104e1f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104e23:	c9                   	leave  
ffff800000104e24:	c3                   	ret    

ffff800000104e25 <clear_screen>:
ffff800000104e25:	f3 0f 1e fa          	endbr64 
ffff800000104e29:	55                   	push   %rbp
ffff800000104e2a:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e2d:	53                   	push   %rbx
ffff800000104e2e:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104e32:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104e32 <clear_screen+0xd>
ffff800000104e39:	49 bb 7e a7 00 00 00 	movabs $0xa77e,%r11
ffff800000104e40:	00 00 00 
ffff800000104e43:	4c 01 db             	add    %r11,%rbx
ffff800000104e46:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104e49:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104e4c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e53:	00 00 00 
ffff800000104e56:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104e59:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e60:	00 00 00 
ffff800000104e63:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104e67:	99                   	cltd   
ffff800000104e68:	f7 f9                	idiv   %ecx
ffff800000104e6a:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104e6d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e74:	00 00 00 
ffff800000104e77:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104e7b:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e82:	00 00 00 
ffff800000104e85:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104e89:	99                   	cltd   
ffff800000104e8a:	f7 fe                	idiv   %esi
ffff800000104e8c:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104e8f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104e96:	e9 83 00 00 00       	jmp    ffff800000104f1e <clear_screen+0xf9>
ffff800000104e9b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104ea2:	eb 6e                	jmp    ffff800000104f12 <clear_screen+0xed>
ffff800000104ea4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104eab:	00 00 00 
ffff800000104eae:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104eb2:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104eb6:	89 c1                	mov    %eax,%ecx
ffff800000104eb8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ebf:	00 00 00 
ffff800000104ec2:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ec6:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104eca:	89 c2                	mov    %eax,%edx
ffff800000104ecc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ed3:	00 00 00 
ffff800000104ed6:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104ed9:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ee0:	00 00 00 
ffff800000104ee3:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104ee8:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104eec:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104eef:	6a 20                	push   $0x20
ffff800000104ef1:	45 89 c1             	mov    %r8d,%r9d
ffff800000104ef4:	41 89 f8             	mov    %edi,%r8d
ffff800000104ef7:	48 89 c7             	mov    %rax,%rdi
ffff800000104efa:	48 b8 b6 51 ff ff ff 	movabs $0xffffffffffff51b6,%rax
ffff800000104f01:	ff ff ff 
ffff800000104f04:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f08:	ff d0                	call   *%rax
ffff800000104f0a:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104f0e:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104f12:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104f15:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104f18:	7c 8a                	jl     ffff800000104ea4 <clear_screen+0x7f>
ffff800000104f1a:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104f1e:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104f21:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104f24:	0f 8c 71 ff ff ff    	jl     ffff800000104e9b <clear_screen+0x76>
ffff800000104f2a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f31:	00 00 00 
ffff800000104f34:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104f3b:	00 
ffff800000104f3c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f43:	00 00 00 
ffff800000104f46:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104f4d:	00 
ffff800000104f4e:	90                   	nop
ffff800000104f4f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104f53:	c9                   	leave  
ffff800000104f54:	c3                   	ret    

ffff800000104f55 <skip_atoi2>:
ffff800000104f55:	f3 0f 1e fa          	endbr64 
ffff800000104f59:	55                   	push   %rbp
ffff800000104f5a:	48 89 e5             	mov    %rsp,%rbp
ffff800000104f5d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104f5d <skip_atoi2+0x8>
ffff800000104f64:	49 bb 53 a6 00 00 00 	movabs $0xa653,%r11
ffff800000104f6b:	00 00 00 
ffff800000104f6e:	4c 01 d8             	add    %r11,%rax
ffff800000104f71:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104f75:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104f7c:	eb 39                	jmp    ffff800000104fb7 <skip_atoi2+0x62>
ffff800000104f7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f82:	48 8b 00             	mov    (%rax),%rax
ffff800000104f85:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f88:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104f8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f8f:	48 8b 00             	mov    (%rax),%rax
ffff800000104f92:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f96:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f9a:	48 89 10             	mov    %rdx,(%rax)
ffff800000104f9d:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104fa0:	89 d0                	mov    %edx,%eax
ffff800000104fa2:	c1 e0 02             	shl    $0x2,%eax
ffff800000104fa5:	01 d0                	add    %edx,%eax
ffff800000104fa7:	01 c0                	add    %eax,%eax
ffff800000104fa9:	89 c2                	mov    %eax,%edx
ffff800000104fab:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104faf:	83 e8 30             	sub    $0x30,%eax
ffff800000104fb2:	01 d0                	add    %edx,%eax
ffff800000104fb4:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104fb7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fbb:	48 8b 00             	mov    (%rax),%rax
ffff800000104fbe:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fc1:	3c 2f                	cmp    $0x2f,%al
ffff800000104fc3:	7e 0e                	jle    ffff800000104fd3 <skip_atoi2+0x7e>
ffff800000104fc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fc9:	48 8b 00             	mov    (%rax),%rax
ffff800000104fcc:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fcf:	3c 39                	cmp    $0x39,%al
ffff800000104fd1:	7e ab                	jle    ffff800000104f7e <skip_atoi2+0x29>
ffff800000104fd3:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104fd6:	5d                   	pop    %rbp
ffff800000104fd7:	c3                   	ret    

ffff800000104fd8 <skip_atoi>:
ffff800000104fd8:	f3 0f 1e fa          	endbr64 
ffff800000104fdc:	55                   	push   %rbp
ffff800000104fdd:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fe0:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104fe0 <skip_atoi+0x8>
ffff800000104fe7:	49 bb d0 a5 00 00 00 	movabs $0xa5d0,%r11
ffff800000104fee:	00 00 00 
ffff800000104ff1:	4c 01 d8             	add    %r11,%rax
ffff800000104ff4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104ff8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104fff:	eb 2c                	jmp    ffff80000010502d <skip_atoi+0x55>
ffff800000105001:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105005:	48 8b 00             	mov    (%rax),%rax
ffff800000105008:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010500c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105010:	48 89 10             	mov    %rdx,(%rax)
ffff800000105013:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000105016:	89 d0                	mov    %edx,%eax
ffff800000105018:	c1 e0 02             	shl    $0x2,%eax
ffff80000010501b:	01 d0                	add    %edx,%eax
ffff80000010501d:	01 c0                	add    %eax,%eax
ffff80000010501f:	89 c2                	mov    %eax,%edx
ffff800000105021:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000105025:	83 e8 30             	sub    $0x30,%eax
ffff800000105028:	01 d0                	add    %edx,%eax
ffff80000010502a:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff80000010502d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105031:	48 8b 00             	mov    (%rax),%rax
ffff800000105034:	0f b6 00             	movzbl (%rax),%eax
ffff800000105037:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff80000010503a:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff80000010503e:	7e 13                	jle    ffff800000105053 <skip_atoi+0x7b>
ffff800000105040:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105044:	48 8b 00             	mov    (%rax),%rax
ffff800000105047:	0f b6 00             	movzbl (%rax),%eax
ffff80000010504a:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff80000010504d:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000105051:	7e ae                	jle    ffff800000105001 <skip_atoi+0x29>
ffff800000105053:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000105056:	5d                   	pop    %rbp
ffff800000105057:	c3                   	ret    

ffff800000105058 <number>:
ffff800000105058:	f3 0f 1e fa          	endbr64 
ffff80000010505c:	55                   	push   %rbp
ffff80000010505d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105060:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105060 <number+0x8>
ffff800000105067:	49 bb 50 a5 00 00 00 	movabs $0xa550,%r11
ffff80000010506e:	00 00 00 
ffff800000105071:	4c 01 d8             	add    %r11,%rax
ffff800000105074:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105078:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff80000010507c:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff80000010507f:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000105082:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000105086:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff80000010508a:	48 ba c8 9a ff ff ff 	movabs $0xffffffffffff9ac8,%rdx
ffff800000105091:	ff ff ff 
ffff800000105094:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000105098:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff80000010509c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001050a3:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff8000001050a6:	83 e2 40             	and    $0x40,%edx
ffff8000001050a9:	85 d2                	test   %edx,%edx
ffff8000001050ab:	74 12                	je     ffff8000001050bf <number+0x67>
ffff8000001050ad:	48 ba f0 9a ff ff ff 	movabs $0xffffffffffff9af0,%rdx
ffff8000001050b4:	ff ff ff 
ffff8000001050b7:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001050bb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001050bf:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050c2:	83 e0 10             	and    $0x10,%eax
ffff8000001050c5:	85 c0                	test   %eax,%eax
ffff8000001050c7:	74 04                	je     ffff8000001050cd <number+0x75>
ffff8000001050c9:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff8000001050cd:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff8000001050d1:	7e 06                	jle    ffff8000001050d9 <number+0x81>
ffff8000001050d3:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff8000001050d7:	7e 0a                	jle    ffff8000001050e3 <number+0x8b>
ffff8000001050d9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001050de:	e9 0f 02 00 00       	jmp    ffff8000001052f2 <number+0x29a>
ffff8000001050e3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050e6:	83 e0 01             	and    $0x1,%eax
ffff8000001050e9:	85 c0                	test   %eax,%eax
ffff8000001050eb:	74 07                	je     ffff8000001050f4 <number+0x9c>
ffff8000001050ed:	b8 30 00 00 00       	mov    $0x30,%eax
ffff8000001050f2:	eb 05                	jmp    ffff8000001050f9 <number+0xa1>
ffff8000001050f4:	b8 20 00 00 00       	mov    $0x20,%eax
ffff8000001050f9:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff8000001050fc:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000105100:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105103:	83 e0 02             	and    $0x2,%eax
ffff800000105106:	85 c0                	test   %eax,%eax
ffff800000105108:	74 11                	je     ffff80000010511b <number+0xc3>
ffff80000010510a:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff80000010510f:	79 0a                	jns    ffff80000010511b <number+0xc3>
ffff800000105111:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000105115:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000105119:	eb 1d                	jmp    ffff800000105138 <number+0xe0>
ffff80000010511b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010511e:	83 e0 04             	and    $0x4,%eax
ffff800000105121:	85 c0                	test   %eax,%eax
ffff800000105123:	75 0b                	jne    ffff800000105130 <number+0xd8>
ffff800000105125:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105128:	c1 e0 02             	shl    $0x2,%eax
ffff80000010512b:	83 e0 20             	and    $0x20,%eax
ffff80000010512e:	eb 05                	jmp    ffff800000105135 <number+0xdd>
ffff800000105130:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000105135:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000105138:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff80000010513c:	74 04                	je     ffff800000105142 <number+0xea>
ffff80000010513e:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105142:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105145:	83 e0 20             	and    $0x20,%eax
ffff800000105148:	85 c0                	test   %eax,%eax
ffff80000010514a:	74 16                	je     ffff800000105162 <number+0x10a>
ffff80000010514c:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000105150:	75 06                	jne    ffff800000105158 <number+0x100>
ffff800000105152:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000105156:	eb 0a                	jmp    ffff800000105162 <number+0x10a>
ffff800000105158:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff80000010515c:	75 04                	jne    ffff800000105162 <number+0x10a>
ffff80000010515e:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105162:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000105167:	75 4b                	jne    ffff8000001051b4 <number+0x15c>
ffff800000105169:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010516c:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010516f:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000105172:	48 98                	cltq   
ffff800000105174:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000105179:	eb 40                	jmp    ffff8000001051bb <number+0x163>
ffff80000010517b:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff80000010517e:	48 63 c8             	movslq %eax,%rcx
ffff800000105181:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105185:	ba 00 00 00 00       	mov    $0x0,%edx
ffff80000010518a:	48 f7 f1             	div    %rcx
ffff80000010518d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105191:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000105194:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000105197:	48 63 d0             	movslq %eax,%rdx
ffff80000010519a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010519e:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001051a2:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051a5:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001051a8:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001051ab:	0f b6 11             	movzbl (%rcx),%edx
ffff8000001051ae:	48 98                	cltq   
ffff8000001051b0:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001051b4:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff8000001051b9:	75 c0                	jne    ffff80000010517b <number+0x123>
ffff8000001051bb:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051be:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff8000001051c1:	7e 06                	jle    ffff8000001051c9 <number+0x171>
ffff8000001051c3:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051c6:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff8000001051c9:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff8000001051cc:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff8000001051cf:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001051d2:	83 e0 11             	and    $0x11,%eax
ffff8000001051d5:	85 c0                	test   %eax,%eax
ffff8000001051d7:	75 1e                	jne    ffff8000001051f7 <number+0x19f>
ffff8000001051d9:	eb 0f                	jmp    ffff8000001051ea <number+0x192>
ffff8000001051db:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001051df:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051e3:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001051e7:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051ea:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001051ed:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051f0:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001051f3:	85 c0                	test   %eax,%eax
ffff8000001051f5:	7f e4                	jg     ffff8000001051db <number+0x183>
ffff8000001051f7:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff8000001051fb:	74 12                	je     ffff80000010520f <number+0x1b7>
ffff8000001051fd:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105201:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105205:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105209:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff80000010520d:	88 10                	mov    %dl,(%rax)
ffff80000010520f:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105212:	83 e0 20             	and    $0x20,%eax
ffff800000105215:	85 c0                	test   %eax,%eax
ffff800000105217:	74 45                	je     ffff80000010525e <number+0x206>
ffff800000105219:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff80000010521d:	75 11                	jne    ffff800000105230 <number+0x1d8>
ffff80000010521f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105223:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105227:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010522b:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010522e:	eb 2e                	jmp    ffff80000010525e <number+0x206>
ffff800000105230:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000105234:	75 28                	jne    ffff80000010525e <number+0x206>
ffff800000105236:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010523a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010523e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105242:	c6 00 30             	movb   $0x30,(%rax)
ffff800000105245:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000105249:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff80000010524d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105251:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105255:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105259:	0f b6 11             	movzbl (%rcx),%edx
ffff80000010525c:	88 10                	mov    %dl,(%rax)
ffff80000010525e:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105261:	83 e0 10             	and    $0x10,%eax
ffff800000105264:	85 c0                	test   %eax,%eax
ffff800000105266:	75 32                	jne    ffff80000010529a <number+0x242>
ffff800000105268:	eb 12                	jmp    ffff80000010527c <number+0x224>
ffff80000010526a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010526e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105272:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105276:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff80000010527a:	88 10                	mov    %dl,(%rax)
ffff80000010527c:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff80000010527f:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105282:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000105285:	85 c0                	test   %eax,%eax
ffff800000105287:	7f e1                	jg     ffff80000010526a <number+0x212>
ffff800000105289:	eb 0f                	jmp    ffff80000010529a <number+0x242>
ffff80000010528b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010528f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105293:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105297:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010529a:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff80000010529d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052a0:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff8000001052a3:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff8000001052a6:	7c e3                	jl     ffff80000010528b <number+0x233>
ffff8000001052a8:	eb 19                	jmp    ffff8000001052c3 <number+0x26b>
ffff8000001052aa:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052ae:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052b2:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052b6:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001052b9:	48 63 d2             	movslq %edx,%rdx
ffff8000001052bc:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff8000001052c1:	88 10                	mov    %dl,(%rax)
ffff8000001052c3:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001052c6:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052c9:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001052cc:	85 c0                	test   %eax,%eax
ffff8000001052ce:	7f da                	jg     ffff8000001052aa <number+0x252>
ffff8000001052d0:	eb 0f                	jmp    ffff8000001052e1 <number+0x289>
ffff8000001052d2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052d6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052da:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052de:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052e1:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001052e4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052e7:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001052ea:	85 c0                	test   %eax,%eax
ffff8000001052ec:	7f e4                	jg     ffff8000001052d2 <number+0x27a>
ffff8000001052ee:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052f2:	5d                   	pop    %rbp
ffff8000001052f3:	c3                   	ret    

ffff8000001052f4 <vsprintf>:
ffff8000001052f4:	f3 0f 1e fa          	endbr64 
ffff8000001052f8:	55                   	push   %rbp
ffff8000001052f9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001052fc:	53                   	push   %rbx
ffff8000001052fd:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000105301:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000105301 <vsprintf+0xd>
ffff800000105308:	49 bb af a2 00 00 00 	movabs $0xa2af,%r11
ffff80000010530f:	00 00 00 
ffff800000105312:	4c 01 db             	add    %r11,%rbx
ffff800000105315:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105319:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff80000010531d:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000105321:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105325:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105329:	e9 f8 08 00 00       	jmp    ffff800000105c26 <vsprintf+0x932>
ffff80000010532e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105332:	0f b6 00             	movzbl (%rax),%eax
ffff800000105335:	3c 25                	cmp    $0x25,%al
ffff800000105337:	74 1a                	je     ffff800000105353 <vsprintf+0x5f>
ffff800000105339:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010533d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105341:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105345:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105349:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010534c:	88 10                	mov    %dl,(%rax)
ffff80000010534e:	e9 c7 08 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105353:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff80000010535a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010535e:	48 83 c0 01          	add    $0x1,%rax
ffff800000105362:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105366:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010536a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010536d:	0f be c0             	movsbl %al,%eax
ffff800000105370:	83 e8 20             	sub    $0x20,%eax
ffff800000105373:	83 f8 10             	cmp    $0x10,%eax
ffff800000105376:	77 40                	ja     ffff8000001053b8 <vsprintf+0xc4>
ffff800000105378:	89 c0                	mov    %eax,%eax
ffff80000010537a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105381:	00 
ffff800000105382:	48 8d 05 3f 3d 00 00 	lea    0x3d3f(%rip),%rax        # ffff8000001090c8 <.LC1+0x28>
ffff800000105389:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010538d:	48 8d 15 34 3d 00 00 	lea    0x3d34(%rip),%rdx        # ffff8000001090c8 <.LC1+0x28>
ffff800000105394:	48 01 d0             	add    %rdx,%rax
ffff800000105397:	3e ff e0             	notrack jmp *%rax
ffff80000010539a:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010539e:	eb ba                	jmp    ffff80000010535a <vsprintf+0x66>
ffff8000001053a0:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff8000001053a4:	eb b4                	jmp    ffff80000010535a <vsprintf+0x66>
ffff8000001053a6:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff8000001053aa:	eb ae                	jmp    ffff80000010535a <vsprintf+0x66>
ffff8000001053ac:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff8000001053b0:	eb a8                	jmp    ffff80000010535a <vsprintf+0x66>
ffff8000001053b2:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001053b6:	eb a2                	jmp    ffff80000010535a <vsprintf+0x66>
ffff8000001053b8:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff8000001053bf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053c3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053c6:	3c 2f                	cmp    $0x2f,%al
ffff8000001053c8:	7e 27                	jle    ffff8000001053f1 <vsprintf+0xfd>
ffff8000001053ca:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053ce:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053d1:	3c 39                	cmp    $0x39,%al
ffff8000001053d3:	7f 1c                	jg     ffff8000001053f1 <vsprintf+0xfd>
ffff8000001053d5:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001053d9:	48 89 c7             	mov    %rax,%rdi
ffff8000001053dc:	48 b8 28 5a ff ff ff 	movabs $0xffffffffffff5a28,%rax
ffff8000001053e3:	ff ff ff 
ffff8000001053e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053ea:	ff d0                	call   *%rax
ffff8000001053ec:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001053ef:	eb 6c                	jmp    ffff80000010545d <vsprintf+0x169>
ffff8000001053f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053f5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053f8:	3c 2a                	cmp    $0x2a,%al
ffff8000001053fa:	75 61                	jne    ffff80000010545d <vsprintf+0x169>
ffff8000001053fc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105400:	48 83 c0 01          	add    $0x1,%rax
ffff800000105404:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105408:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010540c:	8b 00                	mov    (%rax),%eax
ffff80000010540e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105411:	77 24                	ja     ffff800000105437 <vsprintf+0x143>
ffff800000105413:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105417:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010541b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010541f:	8b 00                	mov    (%rax),%eax
ffff800000105421:	89 c0                	mov    %eax,%eax
ffff800000105423:	48 01 d0             	add    %rdx,%rax
ffff800000105426:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010542a:	8b 12                	mov    (%rdx),%edx
ffff80000010542c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010542f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105433:	89 0a                	mov    %ecx,(%rdx)
ffff800000105435:	eb 14                	jmp    ffff80000010544b <vsprintf+0x157>
ffff800000105437:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010543b:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010543f:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105443:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105447:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010544b:	8b 00                	mov    (%rax),%eax
ffff80000010544d:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105450:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105454:	79 07                	jns    ffff80000010545d <vsprintf+0x169>
ffff800000105456:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000105459:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff80000010545d:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000105464:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105468:	0f b6 00             	movzbl (%rax),%eax
ffff80000010546b:	3c 2e                	cmp    $0x2e,%al
ffff80000010546d:	0f 85 aa 00 00 00    	jne    ffff80000010551d <vsprintf+0x229>
ffff800000105473:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105477:	48 83 c0 01          	add    $0x1,%rax
ffff80000010547b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010547f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105483:	0f b6 00             	movzbl (%rax),%eax
ffff800000105486:	3c 2f                	cmp    $0x2f,%al
ffff800000105488:	7e 27                	jle    ffff8000001054b1 <vsprintf+0x1bd>
ffff80000010548a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010548e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105491:	3c 39                	cmp    $0x39,%al
ffff800000105493:	7f 1c                	jg     ffff8000001054b1 <vsprintf+0x1bd>
ffff800000105495:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105499:	48 89 c7             	mov    %rax,%rdi
ffff80000010549c:	48 b8 28 5a ff ff ff 	movabs $0xffffffffffff5a28,%rax
ffff8000001054a3:	ff ff ff 
ffff8000001054a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054aa:	ff d0                	call   *%rax
ffff8000001054ac:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001054af:	eb 5f                	jmp    ffff800000105510 <vsprintf+0x21c>
ffff8000001054b1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054b5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001054b8:	3c 2a                	cmp    $0x2a,%al
ffff8000001054ba:	75 54                	jne    ffff800000105510 <vsprintf+0x21c>
ffff8000001054bc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054c0:	48 83 c0 01          	add    $0x1,%rax
ffff8000001054c4:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001054c8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054cc:	8b 00                	mov    (%rax),%eax
ffff8000001054ce:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054d1:	77 24                	ja     ffff8000001054f7 <vsprintf+0x203>
ffff8000001054d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d7:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054df:	8b 00                	mov    (%rax),%eax
ffff8000001054e1:	89 c0                	mov    %eax,%eax
ffff8000001054e3:	48 01 d0             	add    %rdx,%rax
ffff8000001054e6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054ea:	8b 12                	mov    (%rdx),%edx
ffff8000001054ec:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054ef:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054f3:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054f5:	eb 14                	jmp    ffff80000010550b <vsprintf+0x217>
ffff8000001054f7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054fb:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054ff:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105503:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105507:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010550b:	8b 00                	mov    (%rax),%eax
ffff80000010550d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105510:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105514:	79 07                	jns    ffff80000010551d <vsprintf+0x229>
ffff800000105516:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff80000010551d:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff800000105524:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105528:	0f b6 00             	movzbl (%rax),%eax
ffff80000010552b:	3c 68                	cmp    $0x68,%al
ffff80000010552d:	74 21                	je     ffff800000105550 <vsprintf+0x25c>
ffff80000010552f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105533:	0f b6 00             	movzbl (%rax),%eax
ffff800000105536:	3c 6c                	cmp    $0x6c,%al
ffff800000105538:	74 16                	je     ffff800000105550 <vsprintf+0x25c>
ffff80000010553a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010553e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105541:	3c 4c                	cmp    $0x4c,%al
ffff800000105543:	74 0b                	je     ffff800000105550 <vsprintf+0x25c>
ffff800000105545:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105549:	0f b6 00             	movzbl (%rax),%eax
ffff80000010554c:	3c 7a                	cmp    $0x7a,%al
ffff80000010554e:	75 19                	jne    ffff800000105569 <vsprintf+0x275>
ffff800000105550:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105554:	0f b6 00             	movzbl (%rax),%eax
ffff800000105557:	0f be c0             	movsbl %al,%eax
ffff80000010555a:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff80000010555d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105561:	48 83 c0 01          	add    $0x1,%rax
ffff800000105565:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105569:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010556d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105570:	0f be c0             	movsbl %al,%eax
ffff800000105573:	83 e8 25             	sub    $0x25,%eax
ffff800000105576:	83 f8 53             	cmp    $0x53,%eax
ffff800000105579:	0f 87 5d 06 00 00    	ja     ffff800000105bdc <vsprintf+0x8e8>
ffff80000010557f:	89 c0                	mov    %eax,%eax
ffff800000105581:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105588:	00 
ffff800000105589:	48 8d 05 c0 3b 00 00 	lea    0x3bc0(%rip),%rax        # ffff800000109150 <.LC1+0xb0>
ffff800000105590:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105594:	48 8d 15 b5 3b 00 00 	lea    0x3bb5(%rip),%rdx        # ffff800000109150 <.LC1+0xb0>
ffff80000010559b:	48 01 d0             	add    %rdx,%rax
ffff80000010559e:	3e ff e0             	notrack jmp *%rax
ffff8000001055a1:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001055a4:	83 e0 10             	and    $0x10,%eax
ffff8000001055a7:	85 c0                	test   %eax,%eax
ffff8000001055a9:	75 1b                	jne    ffff8000001055c6 <vsprintf+0x2d2>
ffff8000001055ab:	eb 0f                	jmp    ffff8000001055bc <vsprintf+0x2c8>
ffff8000001055ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055b1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001055b5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001055b9:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001055bc:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001055c0:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001055c4:	7f e7                	jg     ffff8000001055ad <vsprintf+0x2b9>
ffff8000001055c6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055ca:	8b 00                	mov    (%rax),%eax
ffff8000001055cc:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055cf:	77 24                	ja     ffff8000001055f5 <vsprintf+0x301>
ffff8000001055d1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d5:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055d9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055dd:	8b 00                	mov    (%rax),%eax
ffff8000001055df:	89 c0                	mov    %eax,%eax
ffff8000001055e1:	48 01 d0             	add    %rdx,%rax
ffff8000001055e4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055e8:	8b 12                	mov    (%rdx),%edx
ffff8000001055ea:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055ed:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055f1:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055f3:	eb 14                	jmp    ffff800000105609 <vsprintf+0x315>
ffff8000001055f5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055fd:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105601:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105605:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105609:	8b 08                	mov    (%rax),%ecx
ffff80000010560b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010560f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105613:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105617:	89 ca                	mov    %ecx,%edx
ffff800000105619:	88 10                	mov    %dl,(%rax)
ffff80000010561b:	eb 0f                	jmp    ffff80000010562c <vsprintf+0x338>
ffff80000010561d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105621:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105625:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105629:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010562c:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105630:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105634:	7f e7                	jg     ffff80000010561d <vsprintf+0x329>
ffff800000105636:	e9 df 05 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff80000010563b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010563f:	8b 00                	mov    (%rax),%eax
ffff800000105641:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105644:	77 24                	ja     ffff80000010566a <vsprintf+0x376>
ffff800000105646:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010564a:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010564e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105652:	8b 00                	mov    (%rax),%eax
ffff800000105654:	89 c0                	mov    %eax,%eax
ffff800000105656:	48 01 d0             	add    %rdx,%rax
ffff800000105659:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010565d:	8b 12                	mov    (%rdx),%edx
ffff80000010565f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105662:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105666:	89 0a                	mov    %ecx,(%rdx)
ffff800000105668:	eb 14                	jmp    ffff80000010567e <vsprintf+0x38a>
ffff80000010566a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010566e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105672:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105676:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010567a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010567e:	48 8b 00             	mov    (%rax),%rax
ffff800000105681:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105685:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010568a:	75 08                	jne    ffff800000105694 <vsprintf+0x3a0>
ffff80000010568c:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105693:	00 
ffff800000105694:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105698:	48 89 c7             	mov    %rax,%rdi
ffff80000010569b:	48 b8 72 51 ff ff ff 	movabs $0xffffffffffff5172,%rax
ffff8000001056a2:	ff ff ff 
ffff8000001056a5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056a9:	ff d0                	call   *%rax
ffff8000001056ab:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056ae:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001056b2:	79 08                	jns    ffff8000001056bc <vsprintf+0x3c8>
ffff8000001056b4:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056b7:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001056ba:	eb 0e                	jmp    ffff8000001056ca <vsprintf+0x3d6>
ffff8000001056bc:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056bf:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001056c2:	7e 06                	jle    ffff8000001056ca <vsprintf+0x3d6>
ffff8000001056c4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001056c7:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056ca:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001056cd:	83 e0 10             	and    $0x10,%eax
ffff8000001056d0:	85 c0                	test   %eax,%eax
ffff8000001056d2:	75 1f                	jne    ffff8000001056f3 <vsprintf+0x3ff>
ffff8000001056d4:	eb 0f                	jmp    ffff8000001056e5 <vsprintf+0x3f1>
ffff8000001056d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056da:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056de:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056e2:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001056e5:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001056e8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001056eb:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001056ee:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001056f1:	7c e3                	jl     ffff8000001056d6 <vsprintf+0x3e2>
ffff8000001056f3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001056fa:	eb 21                	jmp    ffff80000010571d <vsprintf+0x429>
ffff8000001056fc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105700:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000105704:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105708:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010570c:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105710:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105714:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105717:	88 10                	mov    %dl,(%rax)
ffff800000105719:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff80000010571d:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105720:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105723:	7c d7                	jl     ffff8000001056fc <vsprintf+0x408>
ffff800000105725:	eb 0f                	jmp    ffff800000105736 <vsprintf+0x442>
ffff800000105727:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010572b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010572f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105733:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105736:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105739:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010573c:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010573f:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105742:	7c e3                	jl     ffff800000105727 <vsprintf+0x433>
ffff800000105744:	e9 d1 04 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105749:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff80000010574d:	0f 85 82 00 00 00    	jne    ffff8000001057d5 <vsprintf+0x4e1>
ffff800000105753:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105757:	8b 00                	mov    (%rax),%eax
ffff800000105759:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010575c:	77 24                	ja     ffff800000105782 <vsprintf+0x48e>
ffff80000010575e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105762:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105766:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010576a:	8b 00                	mov    (%rax),%eax
ffff80000010576c:	89 c0                	mov    %eax,%eax
ffff80000010576e:	48 01 d0             	add    %rdx,%rax
ffff800000105771:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105775:	8b 12                	mov    (%rdx),%edx
ffff800000105777:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010577a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010577e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105780:	eb 14                	jmp    ffff800000105796 <vsprintf+0x4a2>
ffff800000105782:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105786:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010578a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010578e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105792:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105796:	48 8b 00             	mov    (%rax),%rax
ffff800000105799:	48 89 c7             	mov    %rax,%rdi
ffff80000010579c:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010579f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057a2:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057a9:	41 89 f1             	mov    %esi,%r9d
ffff8000001057ac:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057af:	89 d1                	mov    %edx,%ecx
ffff8000001057b1:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001057b6:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057b9:	48 89 c7             	mov    %rax,%rdi
ffff8000001057bc:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff8000001057c3:	ff ff ff 
ffff8000001057c6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057ca:	ff d0                	call   *%rax
ffff8000001057cc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057d0:	e9 45 04 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff8000001057d5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057d9:	8b 00                	mov    (%rax),%eax
ffff8000001057db:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057de:	77 24                	ja     ffff800000105804 <vsprintf+0x510>
ffff8000001057e0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e4:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057e8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057ec:	8b 00                	mov    (%rax),%eax
ffff8000001057ee:	89 c0                	mov    %eax,%eax
ffff8000001057f0:	48 01 d0             	add    %rdx,%rax
ffff8000001057f3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057f7:	8b 12                	mov    (%rdx),%edx
ffff8000001057f9:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001057fc:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105800:	89 0a                	mov    %ecx,(%rdx)
ffff800000105802:	eb 14                	jmp    ffff800000105818 <vsprintf+0x524>
ffff800000105804:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105808:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010580c:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105810:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105814:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105818:	8b 00                	mov    (%rax),%eax
ffff80000010581a:	89 c7                	mov    %eax,%edi
ffff80000010581c:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010581f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105822:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105825:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105829:	41 89 f1             	mov    %esi,%r9d
ffff80000010582c:	41 89 c8             	mov    %ecx,%r8d
ffff80000010582f:	89 d1                	mov    %edx,%ecx
ffff800000105831:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105836:	48 89 fe             	mov    %rdi,%rsi
ffff800000105839:	48 89 c7             	mov    %rax,%rdi
ffff80000010583c:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff800000105843:	ff ff ff 
ffff800000105846:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010584a:	ff d0                	call   *%rax
ffff80000010584c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105850:	e9 c5 03 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105855:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff800000105859:	75 0b                	jne    ffff800000105866 <vsprintf+0x572>
ffff80000010585b:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105862:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105866:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010586a:	8b 00                	mov    (%rax),%eax
ffff80000010586c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010586f:	77 24                	ja     ffff800000105895 <vsprintf+0x5a1>
ffff800000105871:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105875:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105879:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010587d:	8b 00                	mov    (%rax),%eax
ffff80000010587f:	89 c0                	mov    %eax,%eax
ffff800000105881:	48 01 d0             	add    %rdx,%rax
ffff800000105884:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105888:	8b 12                	mov    (%rdx),%edx
ffff80000010588a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010588d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105891:	89 0a                	mov    %ecx,(%rdx)
ffff800000105893:	eb 14                	jmp    ffff8000001058a9 <vsprintf+0x5b5>
ffff800000105895:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105899:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010589d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058a1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058a5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058a9:	48 8b 00             	mov    (%rax),%rax
ffff8000001058ac:	48 89 c7             	mov    %rax,%rdi
ffff8000001058af:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001058b2:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001058b5:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001058b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058bc:	41 89 f1             	mov    %esi,%r9d
ffff8000001058bf:	41 89 c8             	mov    %ecx,%r8d
ffff8000001058c2:	89 d1                	mov    %edx,%ecx
ffff8000001058c4:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001058c9:	48 89 fe             	mov    %rdi,%rsi
ffff8000001058cc:	48 89 c7             	mov    %rax,%rdi
ffff8000001058cf:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff8000001058d6:	ff ff ff 
ffff8000001058d9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058dd:	ff d0                	call   *%rax
ffff8000001058df:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058e3:	e9 32 03 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff8000001058e8:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001058ec:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001058f0:	0f 85 82 00 00 00    	jne    ffff800000105978 <vsprintf+0x684>
ffff8000001058f6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058fa:	8b 00                	mov    (%rax),%eax
ffff8000001058fc:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001058ff:	77 24                	ja     ffff800000105925 <vsprintf+0x631>
ffff800000105901:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105905:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105909:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010590d:	8b 00                	mov    (%rax),%eax
ffff80000010590f:	89 c0                	mov    %eax,%eax
ffff800000105911:	48 01 d0             	add    %rdx,%rax
ffff800000105914:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105918:	8b 12                	mov    (%rdx),%edx
ffff80000010591a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010591d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105921:	89 0a                	mov    %ecx,(%rdx)
ffff800000105923:	eb 14                	jmp    ffff800000105939 <vsprintf+0x645>
ffff800000105925:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105929:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010592d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105931:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105935:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105939:	48 8b 00             	mov    (%rax),%rax
ffff80000010593c:	48 89 c7             	mov    %rax,%rdi
ffff80000010593f:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105942:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105945:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105948:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010594c:	41 89 f1             	mov    %esi,%r9d
ffff80000010594f:	41 89 c8             	mov    %ecx,%r8d
ffff800000105952:	89 d1                	mov    %edx,%ecx
ffff800000105954:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105959:	48 89 fe             	mov    %rdi,%rsi
ffff80000010595c:	48 89 c7             	mov    %rax,%rdi
ffff80000010595f:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff800000105966:	ff ff ff 
ffff800000105969:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010596d:	ff d0                	call   *%rax
ffff80000010596f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105973:	e9 a2 02 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105978:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010597c:	8b 00                	mov    (%rax),%eax
ffff80000010597e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105981:	77 24                	ja     ffff8000001059a7 <vsprintf+0x6b3>
ffff800000105983:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105987:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010598b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010598f:	8b 00                	mov    (%rax),%eax
ffff800000105991:	89 c0                	mov    %eax,%eax
ffff800000105993:	48 01 d0             	add    %rdx,%rax
ffff800000105996:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010599a:	8b 12                	mov    (%rdx),%edx
ffff80000010599c:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010599f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059a3:	89 0a                	mov    %ecx,(%rdx)
ffff8000001059a5:	eb 14                	jmp    ffff8000001059bb <vsprintf+0x6c7>
ffff8000001059a7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001059ab:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001059af:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001059b3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059b7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001059bb:	8b 00                	mov    (%rax),%eax
ffff8000001059bd:	89 c7                	mov    %eax,%edi
ffff8000001059bf:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001059c2:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001059c5:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001059c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059cc:	41 89 f1             	mov    %esi,%r9d
ffff8000001059cf:	41 89 c8             	mov    %ecx,%r8d
ffff8000001059d2:	89 d1                	mov    %edx,%ecx
ffff8000001059d4:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001059d9:	48 89 fe             	mov    %rdi,%rsi
ffff8000001059dc:	48 89 c7             	mov    %rax,%rdi
ffff8000001059df:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff8000001059e6:	ff ff ff 
ffff8000001059e9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059ed:	ff d0                	call   *%rax
ffff8000001059ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001059f3:	e9 22 02 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff8000001059f8:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001059fc:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105a00:	0f 85 82 00 00 00    	jne    ffff800000105a88 <vsprintf+0x794>
ffff800000105a06:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a0a:	8b 00                	mov    (%rax),%eax
ffff800000105a0c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a0f:	77 24                	ja     ffff800000105a35 <vsprintf+0x741>
ffff800000105a11:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a15:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105a19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a1d:	8b 00                	mov    (%rax),%eax
ffff800000105a1f:	89 c0                	mov    %eax,%eax
ffff800000105a21:	48 01 d0             	add    %rdx,%rax
ffff800000105a24:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a28:	8b 12                	mov    (%rdx),%edx
ffff800000105a2a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105a2d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a31:	89 0a                	mov    %ecx,(%rdx)
ffff800000105a33:	eb 14                	jmp    ffff800000105a49 <vsprintf+0x755>
ffff800000105a35:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a39:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105a3d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105a41:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a45:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105a49:	48 8b 00             	mov    (%rax),%rax
ffff800000105a4c:	48 89 c7             	mov    %rax,%rdi
ffff800000105a4f:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105a52:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105a55:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105a58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a5c:	41 89 f1             	mov    %esi,%r9d
ffff800000105a5f:	41 89 c8             	mov    %ecx,%r8d
ffff800000105a62:	89 d1                	mov    %edx,%ecx
ffff800000105a64:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105a69:	48 89 fe             	mov    %rdi,%rsi
ffff800000105a6c:	48 89 c7             	mov    %rax,%rdi
ffff800000105a6f:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff800000105a76:	ff ff ff 
ffff800000105a79:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a7d:	ff d0                	call   *%rax
ffff800000105a7f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105a83:	e9 92 01 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105a88:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a8c:	8b 00                	mov    (%rax),%eax
ffff800000105a8e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a91:	77 24                	ja     ffff800000105ab7 <vsprintf+0x7c3>
ffff800000105a93:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a97:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105a9b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a9f:	8b 00                	mov    (%rax),%eax
ffff800000105aa1:	89 c0                	mov    %eax,%eax
ffff800000105aa3:	48 01 d0             	add    %rdx,%rax
ffff800000105aa6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105aaa:	8b 12                	mov    (%rdx),%edx
ffff800000105aac:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105aaf:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ab3:	89 0a                	mov    %ecx,(%rdx)
ffff800000105ab5:	eb 14                	jmp    ffff800000105acb <vsprintf+0x7d7>
ffff800000105ab7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105abb:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105abf:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105ac3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ac7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105acb:	8b 00                	mov    (%rax),%eax
ffff800000105acd:	89 c7                	mov    %eax,%edi
ffff800000105acf:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105ad2:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105ad5:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105ad8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105adc:	41 89 f1             	mov    %esi,%r9d
ffff800000105adf:	41 89 c8             	mov    %ecx,%r8d
ffff800000105ae2:	89 d1                	mov    %edx,%ecx
ffff800000105ae4:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105ae9:	48 89 fe             	mov    %rdi,%rsi
ffff800000105aec:	48 89 c7             	mov    %rax,%rdi
ffff800000105aef:	48 b8 a8 5a ff ff ff 	movabs $0xffffffffffff5aa8,%rax
ffff800000105af6:	ff ff ff 
ffff800000105af9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105afd:	ff d0                	call   *%rax
ffff800000105aff:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b03:	e9 12 01 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105b08:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105b0c:	75 61                	jne    ffff800000105b6f <vsprintf+0x87b>
ffff800000105b0e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b12:	8b 00                	mov    (%rax),%eax
ffff800000105b14:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b17:	77 24                	ja     ffff800000105b3d <vsprintf+0x849>
ffff800000105b19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b1d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b21:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b25:	8b 00                	mov    (%rax),%eax
ffff800000105b27:	89 c0                	mov    %eax,%eax
ffff800000105b29:	48 01 d0             	add    %rdx,%rax
ffff800000105b2c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b30:	8b 12                	mov    (%rdx),%edx
ffff800000105b32:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b35:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b39:	89 0a                	mov    %ecx,(%rdx)
ffff800000105b3b:	eb 14                	jmp    ffff800000105b51 <vsprintf+0x85d>
ffff800000105b3d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b41:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105b45:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105b49:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b4d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105b51:	48 8b 00             	mov    (%rax),%rax
ffff800000105b54:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105b58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b5c:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105b60:	48 89 c2             	mov    %rax,%rdx
ffff800000105b63:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105b67:	48 89 10             	mov    %rdx,(%rax)
ffff800000105b6a:	e9 ab 00 00 00       	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105b6f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b73:	8b 00                	mov    (%rax),%eax
ffff800000105b75:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b78:	77 24                	ja     ffff800000105b9e <vsprintf+0x8aa>
ffff800000105b7a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b7e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b82:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b86:	8b 00                	mov    (%rax),%eax
ffff800000105b88:	89 c0                	mov    %eax,%eax
ffff800000105b8a:	48 01 d0             	add    %rdx,%rax
ffff800000105b8d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b91:	8b 12                	mov    (%rdx),%edx
ffff800000105b93:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b96:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b9a:	89 0a                	mov    %ecx,(%rdx)
ffff800000105b9c:	eb 14                	jmp    ffff800000105bb2 <vsprintf+0x8be>
ffff800000105b9e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105ba2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105ba6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105baa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105bae:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105bb2:	48 8b 00             	mov    (%rax),%rax
ffff800000105bb5:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105bb9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bbd:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105bc1:	89 c2                	mov    %eax,%edx
ffff800000105bc3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105bc7:	89 10                	mov    %edx,(%rax)
ffff800000105bc9:	eb 4f                	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105bcb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bcf:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105bd3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bd7:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105bda:	eb 3e                	jmp    ffff800000105c1a <vsprintf+0x926>
ffff800000105bdc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105be0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105be4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105be8:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105beb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105bef:	0f b6 00             	movzbl (%rax),%eax
ffff800000105bf2:	84 c0                	test   %al,%al
ffff800000105bf4:	74 17                	je     ffff800000105c0d <vsprintf+0x919>
ffff800000105bf6:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105bfa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bfe:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105c02:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105c06:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105c09:	88 10                	mov    %dl,(%rax)
ffff800000105c0b:	eb 0c                	jmp    ffff800000105c19 <vsprintf+0x925>
ffff800000105c0d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c11:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105c15:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c19:	90                   	nop
ffff800000105c1a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c1e:	48 83 c0 01          	add    $0x1,%rax
ffff800000105c22:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c26:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c2a:	0f b6 00             	movzbl (%rax),%eax
ffff800000105c2d:	84 c0                	test   %al,%al
ffff800000105c2f:	0f 85 f9 f6 ff ff    	jne    ffff80000010532e <vsprintf+0x3a>
ffff800000105c35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c39:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105c3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c40:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105c44:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105c48:	c9                   	leave  
ffff800000105c49:	c3                   	ret    

ffff800000105c4a <set_intr_gate>:
ffff800000105c4a:	f3 0f 1e fa          	endbr64 
ffff800000105c4e:	55                   	push   %rbp
ffff800000105c4f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c52:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105c52 <set_intr_gate+0x8>
ffff800000105c59:	49 bb 5e 99 00 00 00 	movabs $0x995e,%r11
ffff800000105c60:	00 00 00 
ffff800000105c63:	4c 01 d8             	add    %r11,%rax
ffff800000105c66:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105c69:	89 f1                	mov    %esi,%ecx
ffff800000105c6b:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105c6f:	89 ca                	mov    %ecx,%edx
ffff800000105c71:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105c74:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c77:	48 89 d1             	mov    %rdx,%rcx
ffff800000105c7a:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105c7e:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105c85:	ff ff ff 
ffff800000105c88:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c8c:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105c90:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c93:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105c97:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105c9b:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ca2:	ff ff ff 
ffff800000105ca5:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ca9:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105cad:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105cb1:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105cb7:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105cbb:	48 89 c2             	mov    %rax,%rdx
ffff800000105cbe:	44 89 c0             	mov    %r8d,%eax
ffff800000105cc1:	66 89 d0             	mov    %dx,%ax
ffff800000105cc4:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105cc8:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105ccf:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105cd3:	48 01 c8             	add    %rcx,%rax
ffff800000105cd6:	48 31 c9             	xor    %rcx,%rcx
ffff800000105cd9:	89 d1                	mov    %edx,%ecx
ffff800000105cdb:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105cdf:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105ce3:	48 01 c8             	add    %rcx,%rax
ffff800000105ce6:	48 89 06             	mov    %rax,(%rsi)
ffff800000105ce9:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105ced:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105cf0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105cf4:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105cf8:	90                   	nop
ffff800000105cf9:	5d                   	pop    %rbp
ffff800000105cfa:	c3                   	ret    

ffff800000105cfb <set_trap_gate>:
ffff800000105cfb:	f3 0f 1e fa          	endbr64 
ffff800000105cff:	55                   	push   %rbp
ffff800000105d00:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d03:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105d03 <set_trap_gate+0x8>
ffff800000105d0a:	49 bb ad 98 00 00 00 	movabs $0x98ad,%r11
ffff800000105d11:	00 00 00 
ffff800000105d14:	4c 01 d8             	add    %r11,%rax
ffff800000105d17:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105d1a:	89 f1                	mov    %esi,%ecx
ffff800000105d1c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105d20:	89 ca                	mov    %ecx,%edx
ffff800000105d22:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105d25:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d28:	48 89 d1             	mov    %rdx,%rcx
ffff800000105d2b:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105d2f:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d36:	ff ff ff 
ffff800000105d39:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105d3d:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105d41:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d44:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105d48:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105d4c:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d53:	ff ff ff 
ffff800000105d56:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105d5a:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105d5e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105d62:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105d68:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105d6c:	48 89 c2             	mov    %rax,%rdx
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
ffff800000105e0f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105e13:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105e19:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105e1d:	48 89 c2             	mov    %rax,%rdx
ffff800000105e20:	44 89 c0             	mov    %r8d,%eax
ffff800000105e23:	66 89 d0             	mov    %dx,%ax
ffff800000105e26:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105e2a:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105e31:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105e35:	48 01 c8             	add    %rcx,%rax
ffff800000105e38:	48 31 c9             	xor    %rcx,%rcx
ffff800000105e3b:	89 d1                	mov    %edx,%ecx
ffff800000105e3d:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105e41:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105e45:	48 01 c8             	add    %rcx,%rax
ffff800000105e48:	48 89 06             	mov    %rax,(%rsi)
ffff800000105e4b:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105e4f:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105e52:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105e56:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105e5a:	90                   	nop
ffff800000105e5b:	5d                   	pop    %rbp
ffff800000105e5c:	c3                   	ret    
ffff800000105e5d:	f3 0f 1e fa          	endbr64 
ffff800000105e61:	55                   	push   %rbp
ffff800000105e62:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e65:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105e65 <set_system_gate+0xb9>
ffff800000105e6c:	49 bb 4b 97 00 00 00 	movabs $0x974b,%r11
ffff800000105e73:	00 00 00 
ffff800000105e76:	4c 01 d8             	add    %r11,%rax
ffff800000105e79:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105e7d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105e81:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105e85:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105e89:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105e8d:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105e91:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105e98:	ff ff ff 
ffff800000105e9b:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105e9f:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105ea3:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105ea7:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105eaa:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105eb1:	ff ff ff 
ffff800000105eb4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105eb8:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105ebc:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105ec0:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ec3:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105eca:	ff ff ff 
ffff800000105ecd:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ed1:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105ed5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105ed9:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105edc:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ee3:	ff ff ff 
ffff800000105ee6:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105eea:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105eee:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105ef2:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ef5:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105efc:	ff ff ff 
ffff800000105eff:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f03:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105f07:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105f0b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f0e:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f15:	ff ff ff 
ffff800000105f18:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f1c:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105f20:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105f24:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f27:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f2e:	ff ff ff 
ffff800000105f31:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f35:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105f39:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105f3d:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f40:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f47:	ff ff ff 
ffff800000105f4a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f4e:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105f52:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105f56:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f59:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f60:	ff ff ff 
ffff800000105f63:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f67:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105f6b:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105f6f:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f72:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f79:	ff ff ff 
ffff800000105f7c:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105f80:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105f84:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105f88:	48 89 10             	mov    %rdx,(%rax)
ffff800000105f8b:	90                   	nop
ffff800000105f8c:	5d                   	pop    %rbp
ffff800000105f8d:	c3                   	ret    

ffff800000105f8e <do_divide_error>:
ffff800000105f8e:	f3 0f 1e fa          	endbr64 
ffff800000105f92:	55                   	push   %rbp
ffff800000105f93:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f96:	41 57                	push   %r15
ffff800000105f98:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f9c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f9c <do_divide_error+0xe>
ffff800000105fa3:	49 bb 14 96 00 00 00 	movabs $0x9614,%r11
ffff800000105faa:	00 00 00 
ffff800000105fad:	4d 01 da             	add    %r11,%r10
ffff800000105fb0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fb4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fb8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fbf:	00 
ffff800000105fc0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fc4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fd2:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fd5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fd9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fdd:	49 89 c9             	mov    %rcx,%r9
ffff800000105fe0:	49 89 d0             	mov    %rdx,%r8
ffff800000105fe3:	48 89 c1             	mov    %rax,%rcx
ffff800000105fe6:	48 b8 40 9e ff ff ff 	movabs $0xffffffffffff9e40,%rax
ffff800000105fed:	ff ff ff 
ffff800000105ff0:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ff4:	48 89 c2             	mov    %rax,%rdx
ffff800000105ff7:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105ffc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106001:	4d 89 d7             	mov    %r10,%r15
ffff800000106004:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106009:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000106010:	ff ff ff 
ffff800000106013:	4d 01 d3             	add    %r10,%r11
ffff800000106016:	41 ff d3             	call   *%r11
ffff800000106019:	eb fe                	jmp    ffff800000106019 <do_divide_error+0x8b>

ffff80000010601b <do_debug>:
ffff80000010601b:	f3 0f 1e fa          	endbr64 
ffff80000010601f:	55                   	push   %rbp
ffff800000106020:	48 89 e5             	mov    %rsp,%rbp
ffff800000106023:	41 57                	push   %r15
ffff800000106025:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106029:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106029 <do_debug+0xe>
ffff800000106030:	49 bb 87 95 00 00 00 	movabs $0x9587,%r11
ffff800000106037:	00 00 00 
ffff80000010603a:	4d 01 da             	add    %r11,%r10
ffff80000010603d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106041:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106045:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010604c:	00 
ffff80000010604d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106051:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106057:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010605b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010605f:	48 8b 08             	mov    (%rax),%rcx
ffff800000106062:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106066:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010606a:	49 89 c9             	mov    %rcx,%r9
ffff80000010606d:	49 89 d0             	mov    %rdx,%r8
ffff800000106070:	48 89 c1             	mov    %rax,%rcx
ffff800000106073:	48 b8 80 9e ff ff ff 	movabs $0xffffffffffff9e80,%rax
ffff80000010607a:	ff ff ff 
ffff80000010607d:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106081:	48 89 c2             	mov    %rax,%rdx
ffff800000106084:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106089:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010608e:	4d 89 d7             	mov    %r10,%r15
ffff800000106091:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106096:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff80000010609d:	ff ff ff 
ffff8000001060a0:	4d 01 d3             	add    %r10,%r11
ffff8000001060a3:	41 ff d3             	call   *%r11
ffff8000001060a6:	eb fe                	jmp    ffff8000001060a6 <do_debug+0x8b>

ffff8000001060a8 <do_nmi>:
ffff8000001060a8:	f3 0f 1e fa          	endbr64 
ffff8000001060ac:	55                   	push   %rbp
ffff8000001060ad:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060b0:	41 57                	push   %r15
ffff8000001060b2:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060b6:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060b6 <do_nmi+0xe>
ffff8000001060bd:	49 bb fa 94 00 00 00 	movabs $0x94fa,%r11
ffff8000001060c4:	00 00 00 
ffff8000001060c7:	4d 01 da             	add    %r11,%r10
ffff8000001060ca:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060ce:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060d2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060d9:	00 
ffff8000001060da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060de:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060e4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060ec:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060ef:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060f3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060f7:	49 89 c9             	mov    %rcx,%r9
ffff8000001060fa:	49 89 d0             	mov    %rdx,%r8
ffff8000001060fd:	48 89 c1             	mov    %rax,%rcx
ffff800000106100:	48 b8 b8 9e ff ff ff 	movabs $0xffffffffffff9eb8,%rax
ffff800000106107:	ff ff ff 
ffff80000010610a:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010610e:	48 89 c2             	mov    %rax,%rdx
ffff800000106111:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106116:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010611b:	4d 89 d7             	mov    %r10,%r15
ffff80000010611e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106123:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff80000010612a:	ff ff ff 
ffff80000010612d:	4d 01 d3             	add    %r10,%r11
ffff800000106130:	41 ff d3             	call   *%r11
ffff800000106133:	eb fe                	jmp    ffff800000106133 <do_nmi+0x8b>

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
ffff80000010618d:	48 b8 f0 9e ff ff ff 	movabs $0xffffffffffff9ef0,%rax
ffff800000106194:	ff ff ff 
ffff800000106197:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010619b:	48 89 c2             	mov    %rax,%rdx
ffff80000010619e:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061a3:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061a8:	4d 89 d7             	mov    %r10,%r15
ffff8000001061ab:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061b0:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff8000001061b7:	ff ff ff 
ffff8000001061ba:	4d 01 d3             	add    %r10,%r11
ffff8000001061bd:	41 ff d3             	call   *%r11
ffff8000001061c0:	eb fe                	jmp    ffff8000001061c0 <do_int3+0x8b>

ffff8000001061c2 <do_overflow>:
ffff8000001061c2:	f3 0f 1e fa          	endbr64 
ffff8000001061c6:	55                   	push   %rbp
ffff8000001061c7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061ca:	41 57                	push   %r15
ffff8000001061cc:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061d0:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001061d0 <do_overflow+0xe>
ffff8000001061d7:	49 bb e0 93 00 00 00 	movabs $0x93e0,%r11
ffff8000001061de:	00 00 00 
ffff8000001061e1:	4d 01 da             	add    %r11,%r10
ffff8000001061e4:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061e8:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061ec:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061f3:	00 
ffff8000001061f4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061f8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061fe:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106202:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106206:	48 8b 08             	mov    (%rax),%rcx
ffff800000106209:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010620d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106211:	49 89 c9             	mov    %rcx,%r9
ffff800000106214:	49 89 d0             	mov    %rdx,%r8
ffff800000106217:	48 89 c1             	mov    %rax,%rcx
ffff80000010621a:	48 b8 28 9f ff ff ff 	movabs $0xffffffffffff9f28,%rax
ffff800000106221:	ff ff ff 
ffff800000106224:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106228:	48 89 c2             	mov    %rax,%rdx
ffff80000010622b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106230:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106235:	4d 89 d7             	mov    %r10,%r15
ffff800000106238:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010623d:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000106244:	ff ff ff 
ffff800000106247:	4d 01 d3             	add    %r10,%r11
ffff80000010624a:	41 ff d3             	call   *%r11
ffff80000010624d:	eb fe                	jmp    ffff80000010624d <do_overflow+0x8b>

ffff80000010624f <do_bounds>:
ffff80000010624f:	f3 0f 1e fa          	endbr64 
ffff800000106253:	55                   	push   %rbp
ffff800000106254:	48 89 e5             	mov    %rsp,%rbp
ffff800000106257:	41 57                	push   %r15
ffff800000106259:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010625d:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010625d <do_bounds+0xe>
ffff800000106264:	49 bb 53 93 00 00 00 	movabs $0x9353,%r11
ffff80000010626b:	00 00 00 
ffff80000010626e:	4d 01 da             	add    %r11,%r10
ffff800000106271:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106275:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106279:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106280:	00 
ffff800000106281:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106285:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010628b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010628f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106293:	48 8b 08             	mov    (%rax),%rcx
ffff800000106296:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010629a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010629e:	49 89 c9             	mov    %rcx,%r9
ffff8000001062a1:	49 89 d0             	mov    %rdx,%r8
ffff8000001062a4:	48 89 c1             	mov    %rax,%rcx
ffff8000001062a7:	48 b8 68 9f ff ff ff 	movabs $0xffffffffffff9f68,%rax
ffff8000001062ae:	ff ff ff 
ffff8000001062b1:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001062b5:	48 89 c2             	mov    %rax,%rdx
ffff8000001062b8:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062bd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062c2:	4d 89 d7             	mov    %r10,%r15
ffff8000001062c5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062ca:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff8000001062d1:	ff ff ff 
ffff8000001062d4:	4d 01 d3             	add    %r10,%r11
ffff8000001062d7:	41 ff d3             	call   *%r11
ffff8000001062da:	eb fe                	jmp    ffff8000001062da <do_bounds+0x8b>

ffff8000001062dc <do_undefined_opcode>:
ffff8000001062dc:	f3 0f 1e fa          	endbr64 
ffff8000001062e0:	55                   	push   %rbp
ffff8000001062e1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062e4:	41 57                	push   %r15
ffff8000001062e6:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062ea:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001062ea <do_undefined_opcode+0xe>
ffff8000001062f1:	49 bb c6 92 00 00 00 	movabs $0x92c6,%r11
ffff8000001062f8:	00 00 00 
ffff8000001062fb:	4d 01 da             	add    %r11,%r10
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
ffff800000106334:	48 b8 a8 9f ff ff ff 	movabs $0xffffffffffff9fa8,%rax
ffff80000010633b:	ff ff ff 
ffff80000010633e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106342:	48 89 c2             	mov    %rax,%rdx
ffff800000106345:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010634a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010634f:	4d 89 d7             	mov    %r10,%r15
ffff800000106352:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106357:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff80000010635e:	ff ff ff 
ffff800000106361:	4d 01 d3             	add    %r10,%r11
ffff800000106364:	41 ff d3             	call   *%r11
ffff800000106367:	eb fe                	jmp    ffff800000106367 <do_undefined_opcode+0x8b>

ffff800000106369 <do_dev_not_available>:
ffff800000106369:	f3 0f 1e fa          	endbr64 
ffff80000010636d:	55                   	push   %rbp
ffff80000010636e:	48 89 e5             	mov    %rsp,%rbp
ffff800000106371:	41 57                	push   %r15
ffff800000106373:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106377:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106377 <do_dev_not_available+0xe>
ffff80000010637e:	49 bb 39 92 00 00 00 	movabs $0x9239,%r11
ffff800000106385:	00 00 00 
ffff800000106388:	4d 01 da             	add    %r11,%r10
ffff80000010638b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010638f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106393:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010639a:	00 
ffff80000010639b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010639f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001063ad:	48 8b 08             	mov    (%rax),%rcx
ffff8000001063b0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063b4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063b8:	49 89 c9             	mov    %rcx,%r9
ffff8000001063bb:	49 89 d0             	mov    %rdx,%r8
ffff8000001063be:	48 89 c1             	mov    %rax,%rcx
ffff8000001063c1:	48 b8 f0 9f ff ff ff 	movabs $0xffffffffffff9ff0,%rax
ffff8000001063c8:	ff ff ff 
ffff8000001063cb:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001063cf:	48 89 c2             	mov    %rax,%rdx
ffff8000001063d2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063d7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063dc:	4d 89 d7             	mov    %r10,%r15
ffff8000001063df:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063e4:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff8000001063eb:	ff ff ff 
ffff8000001063ee:	4d 01 d3             	add    %r10,%r11
ffff8000001063f1:	41 ff d3             	call   *%r11
ffff8000001063f4:	eb fe                	jmp    ffff8000001063f4 <do_dev_not_available+0x8b>

ffff8000001063f6 <do_double_fault>:
ffff8000001063f6:	f3 0f 1e fa          	endbr64 
ffff8000001063fa:	55                   	push   %rbp
ffff8000001063fb:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063fe:	41 57                	push   %r15
ffff800000106400:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106404:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106404 <do_double_fault+0xe>
ffff80000010640b:	49 bb ac 91 00 00 00 	movabs $0x91ac,%r11
ffff800000106412:	00 00 00 
ffff800000106415:	4d 01 da             	add    %r11,%r10
ffff800000106418:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010641c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106420:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106427:	00 
ffff800000106428:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010642c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106432:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106436:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010643a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010643d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106441:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106445:	49 89 c9             	mov    %rcx,%r9
ffff800000106448:	49 89 d0             	mov    %rdx,%r8
ffff80000010644b:	48 89 c1             	mov    %rax,%rcx
ffff80000010644e:	48 b8 38 a0 ff ff ff 	movabs $0xffffffffffffa038,%rax
ffff800000106455:	ff ff ff 
ffff800000106458:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010645c:	48 89 c2             	mov    %rax,%rdx
ffff80000010645f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106464:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106469:	4d 89 d7             	mov    %r10,%r15
ffff80000010646c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106471:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000106478:	ff ff ff 
ffff80000010647b:	4d 01 d3             	add    %r10,%r11
ffff80000010647e:	41 ff d3             	call   *%r11
ffff800000106481:	eb fe                	jmp    ffff800000106481 <do_double_fault+0x8b>

ffff800000106483 <do_coprocessor_segment_overrun>:
ffff800000106483:	f3 0f 1e fa          	endbr64 
ffff800000106487:	55                   	push   %rbp
ffff800000106488:	48 89 e5             	mov    %rsp,%rbp
ffff80000010648b:	41 57                	push   %r15
ffff80000010648d:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106491:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106491 <do_coprocessor_segment_overrun+0xe>
ffff800000106498:	49 bb 1f 91 00 00 00 	movabs $0x911f,%r11
ffff80000010649f:	00 00 00 
ffff8000001064a2:	4d 01 da             	add    %r11,%r10
ffff8000001064a5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001064a9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001064ad:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001064b4:	00 
ffff8000001064b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001064b9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001064bf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064c7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064ca:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064ce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064d2:	49 89 c9             	mov    %rcx,%r9
ffff8000001064d5:	49 89 d0             	mov    %rdx,%r8
ffff8000001064d8:	48 89 c1             	mov    %rax,%rcx
ffff8000001064db:	48 b8 78 a0 ff ff ff 	movabs $0xffffffffffffa078,%rax
ffff8000001064e2:	ff ff ff 
ffff8000001064e5:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001064e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001064ec:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f1:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064f6:	4d 89 d7             	mov    %r10,%r15
ffff8000001064f9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064fe:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000106505:	ff ff ff 
ffff800000106508:	4d 01 d3             	add    %r10,%r11
ffff80000010650b:	41 ff d3             	call   *%r11
ffff80000010650e:	eb fe                	jmp    ffff80000010650e <do_coprocessor_segment_overrun+0x8b>

ffff800000106510 <do_invalid_TSS>:
ffff800000106510:	f3 0f 1e fa          	endbr64 
ffff800000106514:	55                   	push   %rbp
ffff800000106515:	48 89 e5             	mov    %rsp,%rbp
ffff800000106518:	41 57                	push   %r15
ffff80000010651a:	53                   	push   %rbx
ffff80000010651b:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010651f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010651f <do_invalid_TSS+0xf>
ffff800000106526:	49 bb 91 90 00 00 00 	movabs $0x9091,%r11
ffff80000010652d:	00 00 00 
ffff800000106530:	4c 01 db             	add    %r11,%rbx
ffff800000106533:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106537:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010653b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106542:	00 
ffff800000106543:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106547:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010654d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106551:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106555:	48 8b 08             	mov    (%rax),%rcx
ffff800000106558:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010655c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106560:	49 89 c9             	mov    %rcx,%r9
ffff800000106563:	49 89 d0             	mov    %rdx,%r8
ffff800000106566:	48 89 c1             	mov    %rax,%rcx
ffff800000106569:	48 b8 c8 a0 ff ff ff 	movabs $0xffffffffffffa0c8,%rax
ffff800000106570:	ff ff ff 
ffff800000106573:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106577:	48 89 c2             	mov    %rax,%rdx
ffff80000010657a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010657f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106584:	49 89 df             	mov    %rbx,%r15
ffff800000106587:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010658c:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000106593:	ff ff ff 
ffff800000106596:	49 01 da             	add    %rbx,%r10
ffff800000106599:	41 ff d2             	call   *%r10
ffff80000010659c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065a0:	83 e0 01             	and    $0x1,%eax
ffff8000001065a3:	48 85 c0             	test   %rax,%rax
ffff8000001065a6:	74 32                	je     ffff8000001065da <do_invalid_TSS+0xca>
ffff8000001065a8:	48 b8 08 a1 ff ff ff 	movabs $0xffffffffffffa108,%rax
ffff8000001065af:	ff ff ff 
ffff8000001065b2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065b6:	48 89 c2             	mov    %rax,%rdx
ffff8000001065b9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065be:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065c3:	49 89 df             	mov    %rbx,%r15
ffff8000001065c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065cb:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001065d2:	ff ff ff 
ffff8000001065d5:	48 01 d9             	add    %rbx,%rcx
ffff8000001065d8:	ff d1                	call   *%rcx
ffff8000001065da:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065de:	83 e0 02             	and    $0x2,%eax
ffff8000001065e1:	48 85 c0             	test   %rax,%rax
ffff8000001065e4:	74 34                	je     ffff80000010661a <do_invalid_TSS+0x10a>
ffff8000001065e6:	48 b8 88 a1 ff ff ff 	movabs $0xffffffffffffa188,%rax
ffff8000001065ed:	ff ff ff 
ffff8000001065f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065f4:	48 89 c2             	mov    %rax,%rdx
ffff8000001065f7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065fc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106601:	49 89 df             	mov    %rbx,%r15
ffff800000106604:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106609:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106610:	ff ff ff 
ffff800000106613:	48 01 d9             	add    %rbx,%rcx
ffff800000106616:	ff d1                	call   *%rcx
ffff800000106618:	eb 32                	jmp    ffff80000010664c <do_invalid_TSS+0x13c>
ffff80000010661a:	48 b8 b8 a1 ff ff ff 	movabs $0xffffffffffffa1b8,%rax
ffff800000106621:	ff ff ff 
ffff800000106624:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106628:	48 89 c2             	mov    %rax,%rdx
ffff80000010662b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106630:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106635:	49 89 df             	mov    %rbx,%r15
ffff800000106638:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010663d:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106644:	ff ff ff 
ffff800000106647:	48 01 d9             	add    %rbx,%rcx
ffff80000010664a:	ff d1                	call   *%rcx
ffff80000010664c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106650:	83 e0 02             	and    $0x2,%eax
ffff800000106653:	48 85 c0             	test   %rax,%rax
ffff800000106656:	75 72                	jne    ffff8000001066ca <do_invalid_TSS+0x1ba>
ffff800000106658:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010665c:	83 e0 04             	and    $0x4,%eax
ffff80000010665f:	48 85 c0             	test   %rax,%rax
ffff800000106662:	74 34                	je     ffff800000106698 <do_invalid_TSS+0x188>
ffff800000106664:	48 b8 f0 a1 ff ff ff 	movabs $0xffffffffffffa1f0,%rax
ffff80000010666b:	ff ff ff 
ffff80000010666e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106672:	48 89 c2             	mov    %rax,%rdx
ffff800000106675:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010667a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010667f:	49 89 df             	mov    %rbx,%r15
ffff800000106682:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106687:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff80000010668e:	ff ff ff 
ffff800000106691:	48 01 d9             	add    %rbx,%rcx
ffff800000106694:	ff d1                	call   *%rcx
ffff800000106696:	eb 32                	jmp    ffff8000001066ca <do_invalid_TSS+0x1ba>
ffff800000106698:	48 b8 28 a2 ff ff ff 	movabs $0xffffffffffffa228,%rax
ffff80000010669f:	ff ff ff 
ffff8000001066a2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066a6:	48 89 c2             	mov    %rax,%rdx
ffff8000001066a9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066ae:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066b3:	49 89 df             	mov    %rbx,%r15
ffff8000001066b6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066bb:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001066c2:	ff ff ff 
ffff8000001066c5:	48 01 d9             	add    %rbx,%rcx
ffff8000001066c8:	ff d1                	call   *%rcx
ffff8000001066ca:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066ce:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001066d3:	48 89 c1             	mov    %rax,%rcx
ffff8000001066d6:	48 b8 58 a2 ff ff ff 	movabs $0xffffffffffffa258,%rax
ffff8000001066dd:	ff ff ff 
ffff8000001066e0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066e4:	48 89 c2             	mov    %rax,%rdx
ffff8000001066e7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066ec:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066f1:	49 89 df             	mov    %rbx,%r15
ffff8000001066f4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066f9:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000106700:	ff ff ff 
ffff800000106703:	49 01 d8             	add    %rbx,%r8
ffff800000106706:	41 ff d0             	call   *%r8
ffff800000106709:	eb fe                	jmp    ffff800000106709 <do_invalid_TSS+0x1f9>

ffff80000010670b <do_segment_not_present>:
ffff80000010670b:	f3 0f 1e fa          	endbr64 
ffff80000010670f:	55                   	push   %rbp
ffff800000106710:	48 89 e5             	mov    %rsp,%rbp
ffff800000106713:	41 57                	push   %r15
ffff800000106715:	53                   	push   %rbx
ffff800000106716:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010671a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010671a <do_segment_not_present+0xf>
ffff800000106721:	49 bb 96 8e 00 00 00 	movabs $0x8e96,%r11
ffff800000106728:	00 00 00 
ffff80000010672b:	4c 01 db             	add    %r11,%rbx
ffff80000010672e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106732:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106736:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010673d:	00 
ffff80000010673e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106742:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106748:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010674c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106750:	48 8b 08             	mov    (%rax),%rcx
ffff800000106753:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106757:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010675b:	49 89 c9             	mov    %rcx,%r9
ffff80000010675e:	49 89 d0             	mov    %rdx,%r8
ffff800000106761:	48 89 c1             	mov    %rax,%rcx
ffff800000106764:	48 b8 78 a2 ff ff ff 	movabs $0xffffffffffffa278,%rax
ffff80000010676b:	ff ff ff 
ffff80000010676e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106772:	48 89 c2             	mov    %rax,%rdx
ffff800000106775:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010677a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010677f:	49 89 df             	mov    %rbx,%r15
ffff800000106782:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106787:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff80000010678e:	ff ff ff 
ffff800000106791:	49 01 da             	add    %rbx,%r10
ffff800000106794:	41 ff d2             	call   *%r10
ffff800000106797:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010679b:	83 e0 01             	and    $0x1,%eax
ffff80000010679e:	48 85 c0             	test   %rax,%rax
ffff8000001067a1:	74 32                	je     ffff8000001067d5 <do_segment_not_present+0xca>
ffff8000001067a3:	48 b8 08 a1 ff ff ff 	movabs $0xffffffffffffa108,%rax
ffff8000001067aa:	ff ff ff 
ffff8000001067ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067b1:	48 89 c2             	mov    %rax,%rdx
ffff8000001067b4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067b9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067be:	49 89 df             	mov    %rbx,%r15
ffff8000001067c1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067c6:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001067cd:	ff ff ff 
ffff8000001067d0:	48 01 d9             	add    %rbx,%rcx
ffff8000001067d3:	ff d1                	call   *%rcx
ffff8000001067d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067d9:	83 e0 02             	and    $0x2,%eax
ffff8000001067dc:	48 85 c0             	test   %rax,%rax
ffff8000001067df:	74 34                	je     ffff800000106815 <do_segment_not_present+0x10a>
ffff8000001067e1:	48 b8 88 a1 ff ff ff 	movabs $0xffffffffffffa188,%rax
ffff8000001067e8:	ff ff ff 
ffff8000001067eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067ef:	48 89 c2             	mov    %rax,%rdx
ffff8000001067f2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067f7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067fc:	49 89 df             	mov    %rbx,%r15
ffff8000001067ff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106804:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff80000010680b:	ff ff ff 
ffff80000010680e:	48 01 d9             	add    %rbx,%rcx
ffff800000106811:	ff d1                	call   *%rcx
ffff800000106813:	eb 32                	jmp    ffff800000106847 <do_segment_not_present+0x13c>
ffff800000106815:	48 b8 b8 a1 ff ff ff 	movabs $0xffffffffffffa1b8,%rax
ffff80000010681c:	ff ff ff 
ffff80000010681f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106823:	48 89 c2             	mov    %rax,%rdx
ffff800000106826:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010682b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106830:	49 89 df             	mov    %rbx,%r15
ffff800000106833:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106838:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff80000010683f:	ff ff ff 
ffff800000106842:	48 01 d9             	add    %rbx,%rcx
ffff800000106845:	ff d1                	call   *%rcx
ffff800000106847:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010684b:	83 e0 02             	and    $0x2,%eax
ffff80000010684e:	48 85 c0             	test   %rax,%rax
ffff800000106851:	75 72                	jne    ffff8000001068c5 <do_segment_not_present+0x1ba>
ffff800000106853:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106857:	83 e0 04             	and    $0x4,%eax
ffff80000010685a:	48 85 c0             	test   %rax,%rax
ffff80000010685d:	74 34                	je     ffff800000106893 <do_segment_not_present+0x188>
ffff80000010685f:	48 b8 f0 a1 ff ff ff 	movabs $0xffffffffffffa1f0,%rax
ffff800000106866:	ff ff ff 
ffff800000106869:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010686d:	48 89 c2             	mov    %rax,%rdx
ffff800000106870:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106875:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010687a:	49 89 df             	mov    %rbx,%r15
ffff80000010687d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106882:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106889:	ff ff ff 
ffff80000010688c:	48 01 d9             	add    %rbx,%rcx
ffff80000010688f:	ff d1                	call   *%rcx
ffff800000106891:	eb 32                	jmp    ffff8000001068c5 <do_segment_not_present+0x1ba>
ffff800000106893:	48 b8 28 a2 ff ff ff 	movabs $0xffffffffffffa228,%rax
ffff80000010689a:	ff ff ff 
ffff80000010689d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068a1:	48 89 c2             	mov    %rax,%rdx
ffff8000001068a4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068a9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068ae:	49 89 df             	mov    %rbx,%r15
ffff8000001068b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068b6:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001068bd:	ff ff ff 
ffff8000001068c0:	48 01 d9             	add    %rbx,%rcx
ffff8000001068c3:	ff d1                	call   *%rcx
ffff8000001068c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068c9:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001068ce:	48 89 c1             	mov    %rax,%rcx
ffff8000001068d1:	48 b8 58 a2 ff ff ff 	movabs $0xffffffffffffa258,%rax
ffff8000001068d8:	ff ff ff 
ffff8000001068db:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068df:	48 89 c2             	mov    %rax,%rdx
ffff8000001068e2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068e7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068ec:	49 89 df             	mov    %rbx,%r15
ffff8000001068ef:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068f4:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff8000001068fb:	ff ff ff 
ffff8000001068fe:	49 01 d8             	add    %rbx,%r8
ffff800000106901:	41 ff d0             	call   *%r8
ffff800000106904:	eb fe                	jmp    ffff800000106904 <do_segment_not_present+0x1f9>

ffff800000106906 <do_stack_segment_fault>:
ffff800000106906:	f3 0f 1e fa          	endbr64 
ffff80000010690a:	55                   	push   %rbp
ffff80000010690b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010690e:	41 57                	push   %r15
ffff800000106910:	53                   	push   %rbx
ffff800000106911:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106915:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106915 <do_stack_segment_fault+0xf>
ffff80000010691c:	49 bb 9b 8c 00 00 00 	movabs $0x8c9b,%r11
ffff800000106923:	00 00 00 
ffff800000106926:	4c 01 db             	add    %r11,%rbx
ffff800000106929:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010692d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106931:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106938:	00 
ffff800000106939:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010693d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106943:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106947:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010694b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010694e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106952:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106956:	49 89 c9             	mov    %rcx,%r9
ffff800000106959:	49 89 d0             	mov    %rdx,%r8
ffff80000010695c:	48 89 c1             	mov    %rax,%rcx
ffff80000010695f:	48 b8 c0 a2 ff ff ff 	movabs $0xffffffffffffa2c0,%rax
ffff800000106966:	ff ff ff 
ffff800000106969:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010696d:	48 89 c2             	mov    %rax,%rdx
ffff800000106970:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106975:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010697a:	49 89 df             	mov    %rbx,%r15
ffff80000010697d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106982:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000106989:	ff ff ff 
ffff80000010698c:	49 01 da             	add    %rbx,%r10
ffff80000010698f:	41 ff d2             	call   *%r10
ffff800000106992:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106996:	83 e0 01             	and    $0x1,%eax
ffff800000106999:	48 85 c0             	test   %rax,%rax
ffff80000010699c:	74 32                	je     ffff8000001069d0 <do_stack_segment_fault+0xca>
ffff80000010699e:	48 b8 08 a1 ff ff ff 	movabs $0xffffffffffffa108,%rax
ffff8000001069a5:	ff ff ff 
ffff8000001069a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069ac:	48 89 c2             	mov    %rax,%rdx
ffff8000001069af:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069b4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069b9:	49 89 df             	mov    %rbx,%r15
ffff8000001069bc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069c1:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff8000001069c8:	ff ff ff 
ffff8000001069cb:	48 01 d9             	add    %rbx,%rcx
ffff8000001069ce:	ff d1                	call   *%rcx
ffff8000001069d0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069d4:	83 e0 02             	and    $0x2,%eax
ffff8000001069d7:	48 85 c0             	test   %rax,%rax
ffff8000001069da:	74 34                	je     ffff800000106a10 <do_stack_segment_fault+0x10a>
ffff8000001069dc:	48 b8 88 a1 ff ff ff 	movabs $0xffffffffffffa188,%rax
ffff8000001069e3:	ff ff ff 
ffff8000001069e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069ea:	48 89 c2             	mov    %rax,%rdx
ffff8000001069ed:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069f2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069f7:	49 89 df             	mov    %rbx,%r15
ffff8000001069fa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069ff:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106a06:	ff ff ff 
ffff800000106a09:	48 01 d9             	add    %rbx,%rcx
ffff800000106a0c:	ff d1                	call   *%rcx
ffff800000106a0e:	eb 32                	jmp    ffff800000106a42 <do_stack_segment_fault+0x13c>
ffff800000106a10:	48 b8 b8 a1 ff ff ff 	movabs $0xffffffffffffa1b8,%rax
ffff800000106a17:	ff ff ff 
ffff800000106a1a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a1e:	48 89 c2             	mov    %rax,%rdx
ffff800000106a21:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a26:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a2b:	49 89 df             	mov    %rbx,%r15
ffff800000106a2e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a33:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106a3a:	ff ff ff 
ffff800000106a3d:	48 01 d9             	add    %rbx,%rcx
ffff800000106a40:	ff d1                	call   *%rcx
ffff800000106a42:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a46:	83 e0 02             	and    $0x2,%eax
ffff800000106a49:	48 85 c0             	test   %rax,%rax
ffff800000106a4c:	75 72                	jne    ffff800000106ac0 <do_stack_segment_fault+0x1ba>
ffff800000106a4e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a52:	83 e0 04             	and    $0x4,%eax
ffff800000106a55:	48 85 c0             	test   %rax,%rax
ffff800000106a58:	74 34                	je     ffff800000106a8e <do_stack_segment_fault+0x188>
ffff800000106a5a:	48 b8 f0 a1 ff ff ff 	movabs $0xffffffffffffa1f0,%rax
ffff800000106a61:	ff ff ff 
ffff800000106a64:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a68:	48 89 c2             	mov    %rax,%rdx
ffff800000106a6b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a70:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a75:	49 89 df             	mov    %rbx,%r15
ffff800000106a78:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a7d:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106a84:	ff ff ff 
ffff800000106a87:	48 01 d9             	add    %rbx,%rcx
ffff800000106a8a:	ff d1                	call   *%rcx
ffff800000106a8c:	eb 32                	jmp    ffff800000106ac0 <do_stack_segment_fault+0x1ba>
ffff800000106a8e:	48 b8 28 a2 ff ff ff 	movabs $0xffffffffffffa228,%rax
ffff800000106a95:	ff ff ff 
ffff800000106a98:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a9c:	48 89 c2             	mov    %rax,%rdx
ffff800000106a9f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aa4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106aa9:	49 89 df             	mov    %rbx,%r15
ffff800000106aac:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ab1:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106ab8:	ff ff ff 
ffff800000106abb:	48 01 d9             	add    %rbx,%rcx
ffff800000106abe:	ff d1                	call   *%rcx
ffff800000106ac0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ac4:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106ac9:	48 89 c1             	mov    %rax,%rcx
ffff800000106acc:	48 b8 58 a2 ff ff ff 	movabs $0xffffffffffffa258,%rax
ffff800000106ad3:	ff ff ff 
ffff800000106ad6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ada:	48 89 c2             	mov    %rax,%rdx
ffff800000106add:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ae2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ae7:	49 89 df             	mov    %rbx,%r15
ffff800000106aea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106aef:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000106af6:	ff ff ff 
ffff800000106af9:	49 01 d8             	add    %rbx,%r8
ffff800000106afc:	41 ff d0             	call   *%r8
ffff800000106aff:	eb fe                	jmp    ffff800000106aff <do_stack_segment_fault+0x1f9>

ffff800000106b01 <do_general_protection>:
ffff800000106b01:	f3 0f 1e fa          	endbr64 
ffff800000106b05:	55                   	push   %rbp
ffff800000106b06:	48 89 e5             	mov    %rsp,%rbp
ffff800000106b09:	41 57                	push   %r15
ffff800000106b0b:	53                   	push   %rbx
ffff800000106b0c:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106b10:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106b10 <do_general_protection+0xf>
ffff800000106b17:	49 bb a0 8a 00 00 00 	movabs $0x8aa0,%r11
ffff800000106b1e:	00 00 00 
ffff800000106b21:	4c 01 db             	add    %r11,%rbx
ffff800000106b24:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106b28:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106b2c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106b33:	00 
ffff800000106b34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b38:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106b3e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b46:	48 8b 08             	mov    (%rax),%rcx
ffff800000106b49:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b51:	49 89 c9             	mov    %rcx,%r9
ffff800000106b54:	49 89 d0             	mov    %rdx,%r8
ffff800000106b57:	48 89 c1             	mov    %rax,%rcx
ffff800000106b5a:	48 b8 08 a3 ff ff ff 	movabs $0xffffffffffffa308,%rax
ffff800000106b61:	ff ff ff 
ffff800000106b64:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b68:	48 89 c2             	mov    %rax,%rdx
ffff800000106b6b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b70:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b75:	49 89 df             	mov    %rbx,%r15
ffff800000106b78:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b7d:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000106b84:	ff ff ff 
ffff800000106b87:	49 01 da             	add    %rbx,%r10
ffff800000106b8a:	41 ff d2             	call   *%r10
ffff800000106b8d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b91:	83 e0 01             	and    $0x1,%eax
ffff800000106b94:	48 85 c0             	test   %rax,%rax
ffff800000106b97:	74 32                	je     ffff800000106bcb <do_general_protection+0xca>
ffff800000106b99:	48 b8 08 a1 ff ff ff 	movabs $0xffffffffffffa108,%rax
ffff800000106ba0:	ff ff ff 
ffff800000106ba3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ba7:	48 89 c2             	mov    %rax,%rdx
ffff800000106baa:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106baf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bb4:	49 89 df             	mov    %rbx,%r15
ffff800000106bb7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bbc:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106bc3:	ff ff ff 
ffff800000106bc6:	48 01 d9             	add    %rbx,%rcx
ffff800000106bc9:	ff d1                	call   *%rcx
ffff800000106bcb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bcf:	83 e0 02             	and    $0x2,%eax
ffff800000106bd2:	48 85 c0             	test   %rax,%rax
ffff800000106bd5:	74 34                	je     ffff800000106c0b <do_general_protection+0x10a>
ffff800000106bd7:	48 b8 88 a1 ff ff ff 	movabs $0xffffffffffffa188,%rax
ffff800000106bde:	ff ff ff 
ffff800000106be1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106be5:	48 89 c2             	mov    %rax,%rdx
ffff800000106be8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bed:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bf2:	49 89 df             	mov    %rbx,%r15
ffff800000106bf5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bfa:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106c01:	ff ff ff 
ffff800000106c04:	48 01 d9             	add    %rbx,%rcx
ffff800000106c07:	ff d1                	call   *%rcx
ffff800000106c09:	eb 32                	jmp    ffff800000106c3d <do_general_protection+0x13c>
ffff800000106c0b:	48 b8 b8 a1 ff ff ff 	movabs $0xffffffffffffa1b8,%rax
ffff800000106c12:	ff ff ff 
ffff800000106c15:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c19:	48 89 c2             	mov    %rax,%rdx
ffff800000106c1c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c21:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c26:	49 89 df             	mov    %rbx,%r15
ffff800000106c29:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c2e:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106c35:	ff ff ff 
ffff800000106c38:	48 01 d9             	add    %rbx,%rcx
ffff800000106c3b:	ff d1                	call   *%rcx
ffff800000106c3d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c41:	83 e0 02             	and    $0x2,%eax
ffff800000106c44:	48 85 c0             	test   %rax,%rax
ffff800000106c47:	75 72                	jne    ffff800000106cbb <do_general_protection+0x1ba>
ffff800000106c49:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c4d:	83 e0 04             	and    $0x4,%eax
ffff800000106c50:	48 85 c0             	test   %rax,%rax
ffff800000106c53:	74 34                	je     ffff800000106c89 <do_general_protection+0x188>
ffff800000106c55:	48 b8 f0 a1 ff ff ff 	movabs $0xffffffffffffa1f0,%rax
ffff800000106c5c:	ff ff ff 
ffff800000106c5f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c63:	48 89 c2             	mov    %rax,%rdx
ffff800000106c66:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c6b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c70:	49 89 df             	mov    %rbx,%r15
ffff800000106c73:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c78:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106c7f:	ff ff ff 
ffff800000106c82:	48 01 d9             	add    %rbx,%rcx
ffff800000106c85:	ff d1                	call   *%rcx
ffff800000106c87:	eb 32                	jmp    ffff800000106cbb <do_general_protection+0x1ba>
ffff800000106c89:	48 b8 28 a2 ff ff ff 	movabs $0xffffffffffffa228,%rax
ffff800000106c90:	ff ff ff 
ffff800000106c93:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c97:	48 89 c2             	mov    %rax,%rdx
ffff800000106c9a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c9f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ca4:	49 89 df             	mov    %rbx,%r15
ffff800000106ca7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cac:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106cb3:	ff ff ff 
ffff800000106cb6:	48 01 d9             	add    %rbx,%rcx
ffff800000106cb9:	ff d1                	call   *%rcx
ffff800000106cbb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cbf:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106cc4:	48 89 c1             	mov    %rax,%rcx
ffff800000106cc7:	48 b8 58 a2 ff ff ff 	movabs $0xffffffffffffa258,%rax
ffff800000106cce:	ff ff ff 
ffff800000106cd1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cd5:	48 89 c2             	mov    %rax,%rdx
ffff800000106cd8:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106cdd:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ce2:	49 89 df             	mov    %rbx,%r15
ffff800000106ce5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cea:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000106cf1:	ff ff ff 
ffff800000106cf4:	49 01 d8             	add    %rbx,%r8
ffff800000106cf7:	41 ff d0             	call   *%r8
ffff800000106cfa:	eb fe                	jmp    ffff800000106cfa <do_general_protection+0x1f9>

ffff800000106cfc <do_page_fault>:
ffff800000106cfc:	f3 0f 1e fa          	endbr64 
ffff800000106d00:	55                   	push   %rbp
ffff800000106d01:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d04:	41 57                	push   %r15
ffff800000106d06:	53                   	push   %rbx
ffff800000106d07:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106d0b:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106d0b <do_page_fault+0xf>
ffff800000106d12:	49 bb a5 88 00 00 00 	movabs $0x88a5,%r11
ffff800000106d19:	00 00 00 
ffff800000106d1c:	4c 01 db             	add    %r11,%rbx
ffff800000106d1f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d23:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d27:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d2e:	00 
ffff800000106d2f:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106d36:	00 
ffff800000106d37:	0f 20 d0             	mov    %cr2,%rax
ffff800000106d3a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106d3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d42:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d48:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d50:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d53:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d57:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d5b:	49 89 c9             	mov    %rcx,%r9
ffff800000106d5e:	49 89 d0             	mov    %rdx,%r8
ffff800000106d61:	48 89 c1             	mov    %rax,%rcx
ffff800000106d64:	48 b8 50 a3 ff ff ff 	movabs $0xffffffffffffa350,%rax
ffff800000106d6b:	ff ff ff 
ffff800000106d6e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d72:	48 89 c2             	mov    %rax,%rdx
ffff800000106d75:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d7a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d7f:	49 89 df             	mov    %rbx,%r15
ffff800000106d82:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d87:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000106d8e:	ff ff ff 
ffff800000106d91:	49 01 da             	add    %rbx,%r10
ffff800000106d94:	41 ff d2             	call   *%r10
ffff800000106d97:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d9b:	83 e0 01             	and    $0x1,%eax
ffff800000106d9e:	48 85 c0             	test   %rax,%rax
ffff800000106da1:	75 32                	jne    ffff800000106dd5 <do_page_fault+0xd9>
ffff800000106da3:	48 b8 8e a3 ff ff ff 	movabs $0xffffffffffffa38e,%rax
ffff800000106daa:	ff ff ff 
ffff800000106dad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106db1:	48 89 c2             	mov    %rax,%rdx
ffff800000106db4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106db9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dbe:	49 89 df             	mov    %rbx,%r15
ffff800000106dc1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dc6:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106dcd:	ff ff ff 
ffff800000106dd0:	48 01 d9             	add    %rbx,%rcx
ffff800000106dd3:	ff d1                	call   *%rcx
ffff800000106dd5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106dd9:	83 e0 02             	and    $0x2,%eax
ffff800000106ddc:	48 85 c0             	test   %rax,%rax
ffff800000106ddf:	74 34                	je     ffff800000106e15 <do_page_fault+0x119>
ffff800000106de1:	48 b8 a1 a3 ff ff ff 	movabs $0xffffffffffffa3a1,%rax
ffff800000106de8:	ff ff ff 
ffff800000106deb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106def:	48 89 c2             	mov    %rax,%rdx
ffff800000106df2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106df7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dfc:	49 89 df             	mov    %rbx,%r15
ffff800000106dff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e04:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106e0b:	ff ff ff 
ffff800000106e0e:	48 01 d9             	add    %rbx,%rcx
ffff800000106e11:	ff d1                	call   *%rcx
ffff800000106e13:	eb 32                	jmp    ffff800000106e47 <do_page_fault+0x14b>
ffff800000106e15:	48 b8 b5 a3 ff ff ff 	movabs $0xffffffffffffa3b5,%rax
ffff800000106e1c:	ff ff ff 
ffff800000106e1f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e23:	48 89 c2             	mov    %rax,%rdx
ffff800000106e26:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e2b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e30:	49 89 df             	mov    %rbx,%r15
ffff800000106e33:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e38:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106e3f:	ff ff ff 
ffff800000106e42:	48 01 d9             	add    %rbx,%rcx
ffff800000106e45:	ff d1                	call   *%rcx
ffff800000106e47:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e4b:	83 e0 04             	and    $0x4,%eax
ffff800000106e4e:	48 85 c0             	test   %rax,%rax
ffff800000106e51:	74 34                	je     ffff800000106e87 <do_page_fault+0x18b>
ffff800000106e53:	48 b8 c8 a3 ff ff ff 	movabs $0xffffffffffffa3c8,%rax
ffff800000106e5a:	ff ff ff 
ffff800000106e5d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e61:	48 89 c2             	mov    %rax,%rdx
ffff800000106e64:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e69:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e6e:	49 89 df             	mov    %rbx,%r15
ffff800000106e71:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e76:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106e7d:	ff ff ff 
ffff800000106e80:	48 01 d9             	add    %rbx,%rcx
ffff800000106e83:	ff d1                	call   *%rcx
ffff800000106e85:	eb 32                	jmp    ffff800000106eb9 <do_page_fault+0x1bd>
ffff800000106e87:	48 b8 da a3 ff ff ff 	movabs $0xffffffffffffa3da,%rax
ffff800000106e8e:	ff ff ff 
ffff800000106e91:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e95:	48 89 c2             	mov    %rax,%rdx
ffff800000106e98:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e9d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ea2:	49 89 df             	mov    %rbx,%r15
ffff800000106ea5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eaa:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106eb1:	ff ff ff 
ffff800000106eb4:	48 01 d9             	add    %rbx,%rcx
ffff800000106eb7:	ff d1                	call   *%rcx
ffff800000106eb9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ebd:	83 e0 08             	and    $0x8,%eax
ffff800000106ec0:	48 85 c0             	test   %rax,%rax
ffff800000106ec3:	74 32                	je     ffff800000106ef7 <do_page_fault+0x1fb>
ffff800000106ec5:	48 b8 f6 a3 ff ff ff 	movabs $0xffffffffffffa3f6,%rax
ffff800000106ecc:	ff ff ff 
ffff800000106ecf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ed3:	48 89 c2             	mov    %rax,%rdx
ffff800000106ed6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106edb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ee0:	49 89 df             	mov    %rbx,%r15
ffff800000106ee3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ee8:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106eef:	ff ff ff 
ffff800000106ef2:	48 01 d9             	add    %rbx,%rcx
ffff800000106ef5:	ff d1                	call   *%rcx
ffff800000106ef7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106efb:	83 e0 10             	and    $0x10,%eax
ffff800000106efe:	48 85 c0             	test   %rax,%rax
ffff800000106f01:	74 32                	je     ffff800000106f35 <do_page_fault+0x239>
ffff800000106f03:	48 b8 18 a4 ff ff ff 	movabs $0xffffffffffffa418,%rax
ffff800000106f0a:	ff ff ff 
ffff800000106f0d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f11:	48 89 c2             	mov    %rax,%rdx
ffff800000106f14:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f19:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f1e:	49 89 df             	mov    %rbx,%r15
ffff800000106f21:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f26:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106f2d:	ff ff ff 
ffff800000106f30:	48 01 d9             	add    %rbx,%rcx
ffff800000106f33:	ff d1                	call   *%rcx
ffff800000106f35:	48 b8 37 a4 ff ff ff 	movabs $0xffffffffffffa437,%rax
ffff800000106f3c:	ff ff ff 
ffff800000106f3f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f43:	48 89 c2             	mov    %rax,%rdx
ffff800000106f46:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f4b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f50:	49 89 df             	mov    %rbx,%r15
ffff800000106f53:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f58:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000106f5f:	ff ff ff 
ffff800000106f62:	48 01 d9             	add    %rbx,%rcx
ffff800000106f65:	ff d1                	call   *%rcx
ffff800000106f67:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106f6b:	48 89 c1             	mov    %rax,%rcx
ffff800000106f6e:	48 b8 39 a4 ff ff ff 	movabs $0xffffffffffffa439,%rax
ffff800000106f75:	ff ff ff 
ffff800000106f78:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f7c:	48 89 c2             	mov    %rax,%rdx
ffff800000106f7f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f84:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f89:	49 89 df             	mov    %rbx,%r15
ffff800000106f8c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f91:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000106f98:	ff ff ff 
ffff800000106f9b:	49 01 d8             	add    %rbx,%r8
ffff800000106f9e:	41 ff d0             	call   *%r8
ffff800000106fa1:	eb fe                	jmp    ffff800000106fa1 <do_page_fault+0x2a5>

ffff800000106fa3 <do_x87_FPU_error>:
ffff800000106fa3:	f3 0f 1e fa          	endbr64 
ffff800000106fa7:	55                   	push   %rbp
ffff800000106fa8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fab:	41 57                	push   %r15
ffff800000106fad:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106fb1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106fb1 <do_x87_FPU_error+0xe>
ffff800000106fb8:	49 bb ff 85 00 00 00 	movabs $0x85ff,%r11
ffff800000106fbf:	00 00 00 
ffff800000106fc2:	4d 01 da             	add    %r11,%r10
ffff800000106fc5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106fc9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106fcd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fd4:	00 
ffff800000106fd5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106fd9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106fdf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106fe3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fe7:	48 8b 08             	mov    (%rax),%rcx
ffff800000106fea:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106fee:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ff2:	49 89 c9             	mov    %rcx,%r9
ffff800000106ff5:	49 89 d0             	mov    %rdx,%r8
ffff800000106ff8:	48 89 c1             	mov    %rax,%rcx
ffff800000106ffb:	48 b8 48 a4 ff ff ff 	movabs $0xffffffffffffa448,%rax
ffff800000107002:	ff ff ff 
ffff800000107005:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107009:	48 89 c2             	mov    %rax,%rdx
ffff80000010700c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107011:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000107016:	4d 89 d7             	mov    %r10,%r15
ffff800000107019:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010701e:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000107025:	ff ff ff 
ffff800000107028:	4d 01 d3             	add    %r10,%r11
ffff80000010702b:	41 ff d3             	call   *%r11
ffff80000010702e:	eb fe                	jmp    ffff80000010702e <do_x87_FPU_error+0x8b>

ffff800000107030 <do_alignment_check>:
ffff800000107030:	f3 0f 1e fa          	endbr64 
ffff800000107034:	55                   	push   %rbp
ffff800000107035:	48 89 e5             	mov    %rsp,%rbp
ffff800000107038:	41 57                	push   %r15
ffff80000010703a:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010703e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010703e <do_alignment_check+0xe>
ffff800000107045:	49 bb 72 85 00 00 00 	movabs $0x8572,%r11
ffff80000010704c:	00 00 00 
ffff80000010704f:	4d 01 da             	add    %r11,%r10
ffff800000107052:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107056:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010705a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107061:	00 
ffff800000107062:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107066:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010706c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107070:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107074:	48 8b 08             	mov    (%rax),%rcx
ffff800000107077:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010707b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010707f:	49 89 c9             	mov    %rcx,%r9
ffff800000107082:	49 89 d0             	mov    %rdx,%r8
ffff800000107085:	48 89 c1             	mov    %rax,%rcx
ffff800000107088:	48 b8 90 a4 ff ff ff 	movabs $0xffffffffffffa490,%rax
ffff80000010708f:	ff ff ff 
ffff800000107092:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107096:	48 89 c2             	mov    %rax,%rdx
ffff800000107099:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010709e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001070a3:	4d 89 d7             	mov    %r10,%r15
ffff8000001070a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001070ab:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff8000001070b2:	ff ff ff 
ffff8000001070b5:	4d 01 d3             	add    %r10,%r11
ffff8000001070b8:	41 ff d3             	call   *%r11
ffff8000001070bb:	eb fe                	jmp    ffff8000001070bb <do_alignment_check+0x8b>

ffff8000001070bd <do_machine_check>:
ffff8000001070bd:	f3 0f 1e fa          	endbr64 
ffff8000001070c1:	55                   	push   %rbp
ffff8000001070c2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001070c5:	41 57                	push   %r15
ffff8000001070c7:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001070cb:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001070cb <do_machine_check+0xe>
ffff8000001070d2:	49 bb e5 84 00 00 00 	movabs $0x84e5,%r11
ffff8000001070d9:	00 00 00 
ffff8000001070dc:	4d 01 da             	add    %r11,%r10
ffff8000001070df:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001070e3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001070e7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001070ee:	00 
ffff8000001070ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001070f3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001070f9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001070fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107101:	48 8b 08             	mov    (%rax),%rcx
ffff800000107104:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107108:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010710c:	49 89 c9             	mov    %rcx,%r9
ffff80000010710f:	49 89 d0             	mov    %rdx,%r8
ffff800000107112:	48 89 c1             	mov    %rax,%rcx
ffff800000107115:	48 b8 d8 a4 ff ff ff 	movabs $0xffffffffffffa4d8,%rax
ffff80000010711c:	ff ff ff 
ffff80000010711f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107123:	48 89 c2             	mov    %rax,%rdx
ffff800000107126:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010712b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000107130:	4d 89 d7             	mov    %r10,%r15
ffff800000107133:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107138:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff80000010713f:	ff ff ff 
ffff800000107142:	4d 01 d3             	add    %r10,%r11
ffff800000107145:	41 ff d3             	call   *%r11
ffff800000107148:	eb fe                	jmp    ffff800000107148 <do_machine_check+0x8b>

ffff80000010714a <do_SIMD_exception>:
ffff80000010714a:	f3 0f 1e fa          	endbr64 
ffff80000010714e:	55                   	push   %rbp
ffff80000010714f:	48 89 e5             	mov    %rsp,%rbp
ffff800000107152:	41 57                	push   %r15
ffff800000107154:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107158:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000107158 <do_SIMD_exception+0xe>
ffff80000010715f:	49 bb 58 84 00 00 00 	movabs $0x8458,%r11
ffff800000107166:	00 00 00 
ffff800000107169:	4d 01 da             	add    %r11,%r10
ffff80000010716c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107170:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107174:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010717b:	00 
ffff80000010717c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107180:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107186:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010718a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010718e:	48 8b 08             	mov    (%rax),%rcx
ffff800000107191:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107195:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107199:	49 89 c9             	mov    %rcx,%r9
ffff80000010719c:	49 89 d0             	mov    %rdx,%r8
ffff80000010719f:	48 89 c1             	mov    %rax,%rcx
ffff8000001071a2:	48 b8 20 a5 ff ff ff 	movabs $0xffffffffffffa520,%rax
ffff8000001071a9:	ff ff ff 
ffff8000001071ac:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001071b0:	48 89 c2             	mov    %rax,%rdx
ffff8000001071b3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001071b8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001071bd:	4d 89 d7             	mov    %r10,%r15
ffff8000001071c0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001071c5:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff8000001071cc:	ff ff ff 
ffff8000001071cf:	4d 01 d3             	add    %r10,%r11
ffff8000001071d2:	41 ff d3             	call   *%r11
ffff8000001071d5:	eb fe                	jmp    ffff8000001071d5 <do_SIMD_exception+0x8b>

ffff8000001071d7 <do_virtualization_exception>:
ffff8000001071d7:	f3 0f 1e fa          	endbr64 
ffff8000001071db:	55                   	push   %rbp
ffff8000001071dc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001071df:	41 57                	push   %r15
ffff8000001071e1:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001071e5:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001071e5 <do_virtualization_exception+0xe>
ffff8000001071ec:	49 bb cb 83 00 00 00 	movabs $0x83cb,%r11
ffff8000001071f3:	00 00 00 
ffff8000001071f6:	4d 01 da             	add    %r11,%r10
ffff8000001071f9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001071fd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107201:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107208:	00 
ffff800000107209:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010720d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107213:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107217:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010721b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010721e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107222:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107226:	49 89 c9             	mov    %rcx,%r9
ffff800000107229:	49 89 d0             	mov    %rdx,%r8
ffff80000010722c:	48 89 c1             	mov    %rax,%rcx
ffff80000010722f:	48 b8 68 a5 ff ff ff 	movabs $0xffffffffffffa568,%rax
ffff800000107236:	ff ff ff 
ffff800000107239:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010723d:	48 89 c2             	mov    %rax,%rdx
ffff800000107240:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107245:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010724a:	4d 89 d7             	mov    %r10,%r15
ffff80000010724d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107252:	49 bb c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r11
ffff800000107259:	ff ff ff 
ffff80000010725c:	4d 01 d3             	add    %r10,%r11
ffff80000010725f:	41 ff d3             	call   *%r11
ffff800000107262:	eb fe                	jmp    ffff800000107262 <do_virtualization_exception+0x8b>

ffff800000107264 <sys_vector_init>:
ffff800000107264:	f3 0f 1e fa          	endbr64 
ffff800000107268:	55                   	push   %rbp
ffff800000107269:	48 89 e5             	mov    %rsp,%rbp
ffff80000010726c:	53                   	push   %rbx
ffff80000010726d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010726d <sys_vector_init+0x9>
ffff800000107274:	49 bb 43 83 00 00 00 	movabs $0x8343,%r11
ffff80000010727b:	00 00 00 
ffff80000010727e:	4c 01 db             	add    %r11,%rbx
ffff800000107281:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff800000107288:	ff ff ff 
ffff80000010728b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010728f:	48 89 c2             	mov    %rax,%rdx
ffff800000107292:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107297:	bf 00 00 00 00       	mov    $0x0,%edi
ffff80000010729c:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001072a3:	ff ff ff 
ffff8000001072a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072aa:	ff d0                	call   *%rax
ffff8000001072ac:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001072b3:	ff ff ff 
ffff8000001072b6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072ba:	48 89 c2             	mov    %rax,%rdx
ffff8000001072bd:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072c2:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001072c7:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001072ce:	ff ff ff 
ffff8000001072d1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072d5:	ff d0                	call   *%rax
ffff8000001072d7:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff8000001072de:	ff ff ff 
ffff8000001072e1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072e5:	48 89 c2             	mov    %rax,%rdx
ffff8000001072e8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072ed:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001072f2:	48 b8 9a 66 ff ff ff 	movabs $0xffffffffffff669a,%rax
ffff8000001072f9:	ff ff ff 
ffff8000001072fc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107300:	ff d0                	call   *%rax
ffff800000107302:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000107309:	ff ff ff 
ffff80000010730c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107310:	48 89 c2             	mov    %rax,%rdx
ffff800000107313:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107318:	bf 03 00 00 00       	mov    $0x3,%edi
ffff80000010731d:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff800000107324:	ff ff ff 
ffff800000107327:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010732b:	ff d0                	call   *%rax
ffff80000010732d:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107334:	ff ff ff 
ffff800000107337:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010733b:	48 89 c2             	mov    %rax,%rdx
ffff80000010733e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107343:	bf 04 00 00 00       	mov    $0x4,%edi
ffff800000107348:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff80000010734f:	ff ff ff 
ffff800000107352:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107356:	ff d0                	call   *%rax
ffff800000107358:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff80000010735f:	ff ff ff 
ffff800000107362:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107366:	48 89 c2             	mov    %rax,%rdx
ffff800000107369:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010736e:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107373:	48 b8 fc 67 ff ff ff 	movabs $0xffffffffffff67fc,%rax
ffff80000010737a:	ff ff ff 
ffff80000010737d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107381:	ff d0                	call   *%rax
ffff800000107383:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff80000010738a:	ff ff ff 
ffff80000010738d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107391:	48 89 c2             	mov    %rax,%rdx
ffff800000107394:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107399:	bf 06 00 00 00       	mov    $0x6,%edi
ffff80000010739e:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001073a5:	ff ff ff 
ffff8000001073a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073ac:	ff d0                	call   *%rax
ffff8000001073ae:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff8000001073b5:	ff ff ff 
ffff8000001073b8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001073bf:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073c4:	bf 07 00 00 00       	mov    $0x7,%edi
ffff8000001073c9:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001073d0:	ff ff ff 
ffff8000001073d3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073d7:	ff d0                	call   *%rax
ffff8000001073d9:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff8000001073e0:	ff ff ff 
ffff8000001073e3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073e7:	48 89 c2             	mov    %rax,%rdx
ffff8000001073ea:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073ef:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001073f4:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001073fb:	ff ff ff 
ffff8000001073fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107402:	ff d0                	call   *%rax
ffff800000107404:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff80000010740b:	ff ff ff 
ffff80000010740e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107412:	48 89 c2             	mov    %rax,%rdx
ffff800000107415:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010741a:	bf 09 00 00 00       	mov    $0x9,%edi
ffff80000010741f:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff800000107426:	ff ff ff 
ffff800000107429:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010742d:	ff d0                	call   *%rax
ffff80000010742f:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107436:	ff ff ff 
ffff800000107439:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010743d:	48 89 c2             	mov    %rax,%rdx
ffff800000107440:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107445:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff80000010744a:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff800000107451:	ff ff ff 
ffff800000107454:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107458:	ff d0                	call   *%rax
ffff80000010745a:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107461:	ff ff ff 
ffff800000107464:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107468:	48 89 c2             	mov    %rax,%rdx
ffff80000010746b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107470:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff800000107475:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff80000010747c:	ff ff ff 
ffff80000010747f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107483:	ff d0                	call   *%rax
ffff800000107485:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff80000010748c:	ff ff ff 
ffff80000010748f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107493:	48 89 c2             	mov    %rax,%rdx
ffff800000107496:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010749b:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff8000001074a0:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001074a7:	ff ff ff 
ffff8000001074aa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074ae:	ff d0                	call   *%rax
ffff8000001074b0:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff8000001074b7:	ff ff ff 
ffff8000001074ba:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074be:	48 89 c2             	mov    %rax,%rdx
ffff8000001074c1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074c6:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001074cb:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001074d2:	ff ff ff 
ffff8000001074d5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074d9:	ff d0                	call   *%rax
ffff8000001074db:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001074e2:	ff ff ff 
ffff8000001074e5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001074ec:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074f1:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001074f6:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001074fd:	ff ff ff 
ffff800000107500:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107504:	ff d0                	call   *%rax
ffff800000107506:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff80000010750d:	ff ff ff 
ffff800000107510:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107514:	48 89 c2             	mov    %rax,%rdx
ffff800000107517:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010751c:	bf 10 00 00 00       	mov    $0x10,%edi
ffff800000107521:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff800000107528:	ff ff ff 
ffff80000010752b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010752f:	ff d0                	call   *%rax
ffff800000107531:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff800000107538:	ff ff ff 
ffff80000010753b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010753f:	48 89 c2             	mov    %rax,%rdx
ffff800000107542:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107547:	bf 11 00 00 00       	mov    $0x11,%edi
ffff80000010754c:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff800000107553:	ff ff ff 
ffff800000107556:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010755a:	ff d0                	call   *%rax
ffff80000010755c:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107563:	ff ff ff 
ffff800000107566:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010756a:	48 89 c2             	mov    %rax,%rdx
ffff80000010756d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107572:	bf 12 00 00 00       	mov    $0x12,%edi
ffff800000107577:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff80000010757e:	ff ff ff 
ffff800000107581:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107585:	ff d0                	call   *%rax
ffff800000107587:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff80000010758e:	ff ff ff 
ffff800000107591:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107595:	48 89 c2             	mov    %rax,%rdx
ffff800000107598:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010759d:	bf 13 00 00 00       	mov    $0x13,%edi
ffff8000001075a2:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001075a9:	ff ff ff 
ffff8000001075ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075b0:	ff d0                	call   *%rax
ffff8000001075b2:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001075b9:	ff ff ff 
ffff8000001075bc:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001075c0:	48 89 c2             	mov    %rax,%rdx
ffff8000001075c3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075c8:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001075cd:	48 b8 4b 67 ff ff ff 	movabs $0xffffffffffff674b,%rax
ffff8000001075d4:	ff ff ff 
ffff8000001075d7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075db:	ff d0                	call   *%rax
ffff8000001075dd:	90                   	nop
ffff8000001075de:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001075e2:	c9                   	leave  
ffff8000001075e3:	c3                   	ret    

ffff8000001075e4 <RESTORE_ALL>:
ffff8000001075e4:	41 5f                	pop    %r15
ffff8000001075e6:	41 5e                	pop    %r14
ffff8000001075e8:	41 5d                	pop    %r13
ffff8000001075ea:	41 5c                	pop    %r12
ffff8000001075ec:	41 5b                	pop    %r11
ffff8000001075ee:	41 5a                	pop    %r10
ffff8000001075f0:	41 59                	pop    %r9
ffff8000001075f2:	41 58                	pop    %r8
ffff8000001075f4:	5b                   	pop    %rbx
ffff8000001075f5:	59                   	pop    %rcx
ffff8000001075f6:	5a                   	pop    %rdx
ffff8000001075f7:	5e                   	pop    %rsi
ffff8000001075f8:	5f                   	pop    %rdi
ffff8000001075f9:	5d                   	pop    %rbp
ffff8000001075fa:	58                   	pop    %rax
ffff8000001075fb:	48 8e d8             	mov    %rax,%ds
ffff8000001075fe:	58                   	pop    %rax
ffff8000001075ff:	48 8e c0             	mov    %rax,%es
ffff800000107602:	58                   	pop    %rax
ffff800000107603:	48 83 c4 10          	add    $0x10,%rsp
ffff800000107607:	48 cf                	iretq  

ffff800000107609 <divide_error>:
ffff800000107609:	6a 00                	push   $0x0
ffff80000010760b:	50                   	push   %rax
ffff80000010760c:	48 8d 05 7b e9 ff ff 	lea    -0x1685(%rip),%rax        # ffff800000105f8e <do_divide_error>
ffff800000107613:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107617:	eb 00                	jmp    ffff800000107619 <error_code>

ffff800000107619 <error_code>:
ffff800000107619:	50                   	push   %rax
ffff80000010761a:	48 8c c0             	mov    %es,%rax
ffff80000010761d:	50                   	push   %rax
ffff80000010761e:	48 8c d8             	mov    %ds,%rax
ffff800000107621:	50                   	push   %rax
ffff800000107622:	48 31 c0             	xor    %rax,%rax
ffff800000107625:	55                   	push   %rbp
ffff800000107626:	57                   	push   %rdi
ffff800000107627:	56                   	push   %rsi
ffff800000107628:	52                   	push   %rdx
ffff800000107629:	51                   	push   %rcx
ffff80000010762a:	53                   	push   %rbx
ffff80000010762b:	41 50                	push   %r8
ffff80000010762d:	41 51                	push   %r9
ffff80000010762f:	41 52                	push   %r10
ffff800000107631:	41 53                	push   %r11
ffff800000107633:	41 54                	push   %r12
ffff800000107635:	41 55                	push   %r13
ffff800000107637:	41 56                	push   %r14
ffff800000107639:	41 57                	push   %r15
ffff80000010763b:	fc                   	cld    
ffff80000010763c:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000107643:	00 
ffff800000107644:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff80000010764b:	00 
ffff80000010764c:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000107653:	48 8e df             	mov    %rdi,%ds
ffff800000107656:	48 8e c7             	mov    %rdi,%es
ffff800000107659:	48 89 e7             	mov    %rsp,%rdi
ffff80000010765c:	ff d2                	call   *%rdx
ffff80000010765e:	eb 00                	jmp    ffff800000107660 <ret_from_intr>

ffff800000107660 <ret_from_intr>:
ffff800000107660:	eb 82                	jmp    ffff8000001075e4 <RESTORE_ALL>

ffff800000107662 <debug>:
ffff800000107662:	6a 00                	push   $0x0
ffff800000107664:	50                   	push   %rax
ffff800000107665:	48 8d 05 af e9 ff ff 	lea    -0x1651(%rip),%rax        # ffff80000010601b <do_debug>
ffff80000010766c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107670:	eb a7                	jmp    ffff800000107619 <error_code>

ffff800000107672 <nmi>:
ffff800000107672:	50                   	push   %rax
ffff800000107673:	fc                   	cld    
ffff800000107674:	50                   	push   %rax
ffff800000107675:	50                   	push   %rax
ffff800000107676:	48 8c c0             	mov    %es,%rax
ffff800000107679:	50                   	push   %rax
ffff80000010767a:	48 8c d8             	mov    %ds,%rax
ffff80000010767d:	50                   	push   %rax
ffff80000010767e:	48 31 c0             	xor    %rax,%rax
ffff800000107681:	55                   	push   %rbp
ffff800000107682:	57                   	push   %rdi
ffff800000107683:	56                   	push   %rsi
ffff800000107684:	52                   	push   %rdx
ffff800000107685:	51                   	push   %rcx
ffff800000107686:	53                   	push   %rbx
ffff800000107687:	41 50                	push   %r8
ffff800000107689:	41 51                	push   %r9
ffff80000010768b:	41 52                	push   %r10
ffff80000010768d:	41 53                	push   %r11
ffff80000010768f:	41 54                	push   %r12
ffff800000107691:	41 55                	push   %r13
ffff800000107693:	41 56                	push   %r14
ffff800000107695:	41 57                	push   %r15
ffff800000107697:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff80000010769e:	48 8e da             	mov    %rdx,%ds
ffff8000001076a1:	48 8e c2             	mov    %rdx,%es
ffff8000001076a4:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff8000001076ab:	48 89 e6             	mov    %rsp,%rsi
ffff8000001076ae:	e8 f5 e9 ff ff       	call   ffff8000001060a8 <do_nmi>
ffff8000001076b3:	e9 2c ff ff ff       	jmp    ffff8000001075e4 <RESTORE_ALL>

ffff8000001076b8 <invalid_TSS>:
ffff8000001076b8:	50                   	push   %rax
ffff8000001076b9:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff800000106510 <do_invalid_TSS>
ffff8000001076c0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076c4:	e9 50 ff ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001076c9 <page_fault>:
ffff8000001076c9:	50                   	push   %rax
ffff8000001076ca:	48 8d 05 2b f6 ff ff 	lea    -0x9d5(%rip),%rax        # ffff800000106cfc <do_page_fault>
ffff8000001076d1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076d5:	e9 3f ff ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001076da <int3>:
ffff8000001076da:	6a 00                	push   $0x0
ffff8000001076dc:	50                   	push   %rax
ffff8000001076dd:	48 8d 05 51 ea ff ff 	lea    -0x15af(%rip),%rax        # ffff800000106135 <do_int3>
ffff8000001076e4:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076e8:	e9 2c ff ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001076ed <overflow>:
ffff8000001076ed:	6a 00                	push   $0x0
ffff8000001076ef:	50                   	push   %rax
ffff8000001076f0:	48 8d 05 cb ea ff ff 	lea    -0x1535(%rip),%rax        # ffff8000001061c2 <do_overflow>
ffff8000001076f7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076fb:	e9 19 ff ff ff       	jmp    ffff800000107619 <error_code>

ffff800000107700 <bounds>:
ffff800000107700:	6a 00                	push   $0x0
ffff800000107702:	50                   	push   %rax
ffff800000107703:	48 8d 05 45 eb ff ff 	lea    -0x14bb(%rip),%rax        # ffff80000010624f <do_bounds>
ffff80000010770a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010770e:	e9 06 ff ff ff       	jmp    ffff800000107619 <error_code>

ffff800000107713 <undefined_opcode>:
ffff800000107713:	6a 00                	push   $0x0
ffff800000107715:	50                   	push   %rax
ffff800000107716:	48 8d 05 bf eb ff ff 	lea    -0x1441(%rip),%rax        # ffff8000001062dc <do_undefined_opcode>
ffff80000010771d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107721:	e9 f3 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff800000107726 <dev_not_available>:
ffff800000107726:	6a 00                	push   $0x0
ffff800000107728:	50                   	push   %rax
ffff800000107729:	48 8d 05 39 ec ff ff 	lea    -0x13c7(%rip),%rax        # ffff800000106369 <do_dev_not_available>
ffff800000107730:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107734:	e9 e0 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff800000107739 <double_fault>:
ffff800000107739:	50                   	push   %rax
ffff80000010773a:	48 8d 05 b5 ec ff ff 	lea    -0x134b(%rip),%rax        # ffff8000001063f6 <do_double_fault>
ffff800000107741:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107745:	e9 cf fe ff ff       	jmp    ffff800000107619 <error_code>

ffff80000010774a <coprocessor_segment_overrun>:
ffff80000010774a:	6a 00                	push   $0x0
ffff80000010774c:	50                   	push   %rax
ffff80000010774d:	48 8d 05 2f ed ff ff 	lea    -0x12d1(%rip),%rax        # ffff800000106483 <do_coprocessor_segment_overrun>
ffff800000107754:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107758:	e9 bc fe ff ff       	jmp    ffff800000107619 <error_code>

ffff80000010775d <segment_not_present>:
ffff80000010775d:	50                   	push   %rax
ffff80000010775e:	48 8d 05 a6 ef ff ff 	lea    -0x105a(%rip),%rax        # ffff80000010670b <do_segment_not_present>
ffff800000107765:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107769:	e9 ab fe ff ff       	jmp    ffff800000107619 <error_code>

ffff80000010776e <stack_segment_fault>:
ffff80000010776e:	50                   	push   %rax
ffff80000010776f:	48 8d 05 90 f1 ff ff 	lea    -0xe70(%rip),%rax        # ffff800000106906 <do_stack_segment_fault>
ffff800000107776:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010777a:	e9 9a fe ff ff       	jmp    ffff800000107619 <error_code>

ffff80000010777f <general_protection>:
ffff80000010777f:	50                   	push   %rax
ffff800000107780:	48 8d 05 7a f3 ff ff 	lea    -0xc86(%rip),%rax        # ffff800000106b01 <do_general_protection>
ffff800000107787:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010778b:	e9 89 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff800000107790 <x87_FPU_error>:
ffff800000107790:	6a 00                	push   $0x0
ffff800000107792:	50                   	push   %rax
ffff800000107793:	48 8d 05 09 f8 ff ff 	lea    -0x7f7(%rip),%rax        # ffff800000106fa3 <do_x87_FPU_error>
ffff80000010779a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010779e:	e9 76 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001077a3 <alignment_check>:
ffff8000001077a3:	50                   	push   %rax
ffff8000001077a4:	48 8d 05 85 f8 ff ff 	lea    -0x77b(%rip),%rax        # ffff800000107030 <do_alignment_check>
ffff8000001077ab:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077af:	e9 65 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001077b4 <machine_check>:
ffff8000001077b4:	6a 00                	push   $0x0
ffff8000001077b6:	50                   	push   %rax
ffff8000001077b7:	48 8d 05 ff f8 ff ff 	lea    -0x701(%rip),%rax        # ffff8000001070bd <do_machine_check>
ffff8000001077be:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077c2:	e9 52 fe ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001077c7 <SIMD_exception>:
ffff8000001077c7:	6a 00                	push   $0x0
ffff8000001077c9:	50                   	push   %rax
ffff8000001077ca:	48 8d 05 79 f9 ff ff 	lea    -0x687(%rip),%rax        # ffff80000010714a <do_SIMD_exception>
ffff8000001077d1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077d5:	e9 3f fe ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001077da <virtualization_exception>:
ffff8000001077da:	6a 00                	push   $0x0
ffff8000001077dc:	50                   	push   %rax
ffff8000001077dd:	48 8d 05 f3 f9 ff ff 	lea    -0x60d(%rip),%rax        # ffff8000001071d7 <do_virtualization_exception>
ffff8000001077e4:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077e8:	e9 2c fe ff ff       	jmp    ffff800000107619 <error_code>

ffff8000001077ed <Cmemset>:
ffff8000001077ed:	f3 0f 1e fa          	endbr64 
ffff8000001077f1:	55                   	push   %rbp
ffff8000001077f2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001077f5:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001077f5 <Cmemset+0x8>
ffff8000001077fc:	49 bb bb 7d 00 00 00 	movabs $0x7dbb,%r11
ffff800000107803:	00 00 00 
ffff800000107806:	4c 01 d8             	add    %r11,%rax
ffff800000107809:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010780d:	89 f0                	mov    %esi,%eax
ffff80000010780f:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
ffff800000107813:	88 45 d4             	mov    %al,-0x2c(%rbp)
ffff800000107816:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010781a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010781e:	0f b6 45 d4          	movzbl -0x2c(%rbp),%eax
ffff800000107822:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107826:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010782a:	48 c1 e0 08          	shl    $0x8,%rax
ffff80000010782e:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff800000107832:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107836:	48 c1 e0 10          	shl    $0x10,%rax
ffff80000010783a:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff80000010783e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107842:	48 c1 e0 20          	shl    $0x20,%rax
ffff800000107846:	48 09 45 e8          	or     %rax,-0x18(%rbp)
ffff80000010784a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010784e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107852:	eb 15                	jmp    ffff800000107869 <Cmemset+0x7c>
ffff800000107854:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107858:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010785c:	48 89 10             	mov    %rdx,(%rax)
ffff80000010785f:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
ffff800000107864:	48 83 6d f0 08       	subq   $0x8,-0x10(%rbp)
ffff800000107869:	48 83 7d f0 07       	cmpq   $0x7,-0x10(%rbp)
ffff80000010786e:	7f e4                	jg     ffff800000107854 <Cmemset+0x67>
ffff800000107870:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107874:	83 e0 04             	and    $0x4,%eax
ffff800000107877:	48 85 c0             	test   %rax,%rax
ffff80000010787a:	74 11                	je     ffff80000010788d <Cmemset+0xa0>
ffff80000010787c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107880:	89 c2                	mov    %eax,%edx
ffff800000107882:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107886:	89 10                	mov    %edx,(%rax)
ffff800000107888:	48 83 45 f8 04       	addq   $0x4,-0x8(%rbp)
ffff80000010788d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107891:	83 e0 02             	and    $0x2,%eax
ffff800000107894:	48 85 c0             	test   %rax,%rax
ffff800000107897:	74 12                	je     ffff8000001078ab <Cmemset+0xbe>
ffff800000107899:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010789d:	89 c2                	mov    %eax,%edx
ffff80000010789f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078a3:	66 89 10             	mov    %dx,(%rax)
ffff8000001078a6:	48 83 45 f8 02       	addq   $0x2,-0x8(%rbp)
ffff8000001078ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001078af:	83 e0 01             	and    $0x1,%eax
ffff8000001078b2:	48 85 c0             	test   %rax,%rax
ffff8000001078b5:	74 0a                	je     ffff8000001078c1 <Cmemset+0xd4>
ffff8000001078b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078bb:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
ffff8000001078bf:	88 10                	mov    %dl,(%rax)
ffff8000001078c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001078c5:	5d                   	pop    %rbp
ffff8000001078c6:	c3                   	ret    

ffff8000001078c7 <Get_gdt>:
ffff8000001078c7:	f3 0f 1e fa          	endbr64 
ffff8000001078cb:	55                   	push   %rbp
ffff8000001078cc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001078cf:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001078cf <Get_gdt+0x8>
ffff8000001078d6:	49 bb e1 7c 00 00 00 	movabs $0x7ce1,%r11
ffff8000001078dd:	00 00 00 
ffff8000001078e0:	4c 01 d8             	add    %r11,%rax
ffff8000001078e3:	0f 20 d8             	mov    %cr3,%rax
ffff8000001078e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001078ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001078ee:	5d                   	pop    %rbp
ffff8000001078ef:	c3                   	ret    

ffff8000001078f0 <page_init>:
ffff8000001078f0:	f3 0f 1e fa          	endbr64 
ffff8000001078f4:	55                   	push   %rbp
ffff8000001078f5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001078f8:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001078f8 <page_init+0x8>
ffff8000001078ff:	49 bb b8 7c 00 00 00 	movabs $0x7cb8,%r11
ffff800000107906:	00 00 00 
ffff800000107909:	4c 01 d8             	add    %r11,%rax
ffff80000010790c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107910:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107914:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107918:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff80000010791c:	48 85 d2             	test   %rdx,%rdx
ffff80000010791f:	0f 85 d0 00 00 00    	jne    ffff8000001079f5 <page_init+0x105>
ffff800000107925:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010792c:	00 00 00 
ffff80000010792f:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107936:	00 
ffff800000107937:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff80000010793b:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff80000010793f:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107943:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107947:	48 01 ca             	add    %rcx,%rdx
ffff80000010794a:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010794d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107951:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107955:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107959:	83 e2 3f             	and    $0x3f,%edx
ffff80000010795c:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107961:	89 d1                	mov    %edx,%ecx
ffff800000107963:	48 d3 e7             	shl    %cl,%rdi
ffff800000107966:	48 89 f9             	mov    %rdi,%rcx
ffff800000107969:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107970:	00 00 00 
ffff800000107973:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff80000010797a:	00 
ffff80000010797b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010797f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107983:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107987:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010798b:	48 01 d0             	add    %rdx,%rax
ffff80000010798e:	48 09 ce             	or     %rcx,%rsi
ffff800000107991:	48 89 f2             	mov    %rsi,%rdx
ffff800000107994:	48 89 10             	mov    %rdx,(%rax)
ffff800000107997:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010799b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff80000010799f:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001079a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079a7:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001079ab:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001079af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079b3:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff8000001079b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079bb:	48 8b 00             	mov    (%rax),%rax
ffff8000001079be:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff8000001079c2:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001079c6:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff8000001079ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079ce:	48 8b 00             	mov    (%rax),%rax
ffff8000001079d1:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff8000001079d5:	48 83 ea 01          	sub    $0x1,%rdx
ffff8000001079d9:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff8000001079dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001079e1:	48 8b 00             	mov    (%rax),%rax
ffff8000001079e4:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff8000001079e8:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001079ec:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff8000001079f0:	e9 0a 01 00 00       	jmp    ffff800000107aff <page_init+0x20f>
ffff8000001079f5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001079f9:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff8000001079fd:	83 e2 04             	and    $0x4,%edx
ffff800000107a00:	48 85 d2             	test   %rdx,%rdx
ffff800000107a03:	75 2e                	jne    ffff800000107a33 <page_init+0x143>
ffff800000107a05:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107a09:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107a0d:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107a13:	48 85 d2             	test   %rdx,%rdx
ffff800000107a16:	75 1b                	jne    ffff800000107a33 <page_init+0x143>
ffff800000107a18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107a1c:	83 e2 04             	and    $0x4,%edx
ffff800000107a1f:	48 85 d2             	test   %rdx,%rdx
ffff800000107a22:	75 0f                	jne    ffff800000107a33 <page_init+0x143>
ffff800000107a24:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000107a28:	81 e2 00 01 00 00    	and    $0x100,%edx
ffff800000107a2e:	48 85 d2             	test   %rdx,%rdx
ffff800000107a31:	74 43                	je     ffff800000107a76 <page_init+0x186>
ffff800000107a33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a37:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107a3b:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107a3f:	48 89 c2             	mov    %rax,%rdx
ffff800000107a42:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a46:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107a4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a4e:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000107a52:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107a56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a5a:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107a5e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107a62:	48 8b 00             	mov    (%rax),%rax
ffff800000107a65:	48 8b 50 48          	mov    0x48(%rax),%rdx
ffff800000107a69:	48 83 c2 01          	add    $0x1,%rdx
ffff800000107a6d:	48 89 50 48          	mov    %rdx,0x48(%rax)
ffff800000107a71:	e9 89 00 00 00       	jmp    ffff800000107aff <page_init+0x20f>
ffff800000107a76:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107a7d:	00 00 00 
ffff800000107a80:	48 8b 8c 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rcx
ffff800000107a87:	00 
ffff800000107a88:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107a8c:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107a90:	48 c1 ea 1b          	shr    $0x1b,%rdx
ffff800000107a94:	48 c1 e2 03          	shl    $0x3,%rdx
ffff800000107a98:	48 01 ca             	add    %rcx,%rdx
ffff800000107a9b:	48 8b 32             	mov    (%rdx),%rsi
ffff800000107a9e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107aa2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
ffff800000107aa6:	48 c1 ea 15          	shr    $0x15,%rdx
ffff800000107aaa:	83 e2 3f             	and    $0x3f,%edx
ffff800000107aad:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000107ab2:	89 d1                	mov    %edx,%ecx
ffff800000107ab4:	48 d3 e7             	shl    %cl,%rdi
ffff800000107ab7:	48 89 f9             	mov    %rdi,%rcx
ffff800000107aba:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107ac1:	00 00 00 
ffff800000107ac4:	48 8b 94 10 88 02 00 	mov    0x288(%rax,%rdx,1),%rdx
ffff800000107acb:	00 
ffff800000107acc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107ad0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107ad4:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000107ad8:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000107adc:	48 01 d0             	add    %rdx,%rax
ffff800000107adf:	48 09 ce             	or     %rcx,%rsi
ffff800000107ae2:	48 89 f2             	mov    %rsi,%rdx
ffff800000107ae5:	48 89 10             	mov    %rdx,(%rax)
ffff800000107ae8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107aec:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107af0:	48 0b 45 f0          	or     -0x10(%rbp),%rax
ffff800000107af4:	48 89 c2             	mov    %rax,%rdx
ffff800000107af7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107afb:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107aff:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b04:	5d                   	pop    %rbp
ffff800000107b05:	c3                   	ret    

ffff800000107b06 <init_memory>:
ffff800000107b06:	f3 0f 1e fa          	endbr64 
ffff800000107b0a:	55                   	push   %rbp
ffff800000107b0b:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b0e:	41 57                	push   %r15
ffff800000107b10:	53                   	push   %rbx
ffff800000107b11:	48 83 ec 70          	sub    $0x70,%rsp
ffff800000107b15:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107b15 <init_memory+0xf>
ffff800000107b1c:	49 bb 9b 7a 00 00 00 	movabs $0x7a9b,%r11
ffff800000107b23:	00 00 00 
ffff800000107b26:	4c 01 db             	add    %r11,%rbx
ffff800000107b29:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107b30:	00 
ffff800000107b31:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
ffff800000107b38:	00 
ffff800000107b39:	48 b8 b8 a5 ff ff ff 	movabs $0xffffffffffffa5b8,%rax
ffff800000107b40:	ff ff ff 
ffff800000107b43:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107b47:	48 89 c2             	mov    %rax,%rdx
ffff800000107b4a:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107b4f:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107b54:	49 89 df             	mov    %rbx,%r15
ffff800000107b57:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b5c:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000107b63:	ff ff ff 
ffff800000107b66:	48 01 d9             	add    %rbx,%rcx
ffff800000107b69:	ff d1                	call   *%rcx
ffff800000107b6b:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107b72:	80 ff ff 
ffff800000107b75:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107b79:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000107b80:	e9 a2 01 00 00       	jmp    ffff800000107d27 <init_memory+0x221>
ffff800000107b85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b89:	8b 48 10             	mov    0x10(%rax),%ecx
ffff800000107b8c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b90:	48 8b 50 08          	mov    0x8(%rax),%rdx
ffff800000107b94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107b98:	48 8b 00             	mov    (%rax),%rax
ffff800000107b9b:	41 89 c9             	mov    %ecx,%r9d
ffff800000107b9e:	49 89 d0             	mov    %rdx,%r8
ffff800000107ba1:	48 89 c1             	mov    %rax,%rcx
ffff800000107ba4:	48 b8 30 a6 ff ff ff 	movabs $0xffffffffffffa630,%rax
ffff800000107bab:	ff ff ff 
ffff800000107bae:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107bb2:	48 89 c2             	mov    %rax,%rdx
ffff800000107bb5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107bba:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107bbf:	49 89 df             	mov    %rbx,%r15
ffff800000107bc2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107bc7:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000107bce:	ff ff ff 
ffff800000107bd1:	49 01 da             	add    %rbx,%r10
ffff800000107bd4:	41 ff d2             	call   *%r10
ffff800000107bd7:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000107bde:	00 
ffff800000107bdf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107be3:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107be6:	83 f8 01             	cmp    $0x1,%eax
ffff800000107be9:	75 0c                	jne    ffff800000107bf7 <init_memory+0xf1>
ffff800000107beb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107bef:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107bf3:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107bf7:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107bfe:	00 00 00 
ffff800000107c01:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c04:	48 63 d0             	movslq %eax,%rdx
ffff800000107c07:	48 01 d9             	add    %rbx,%rcx
ffff800000107c0a:	48 89 d0             	mov    %rdx,%rax
ffff800000107c0d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c11:	48 01 d0             	add    %rdx,%rax
ffff800000107c14:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c18:	48 01 c8             	add    %rcx,%rax
ffff800000107c1b:	48 8b 10             	mov    (%rax),%rdx
ffff800000107c1e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c22:	48 8b 00             	mov    (%rax),%rax
ffff800000107c25:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107c29:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c30:	00 00 00 
ffff800000107c33:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c36:	48 63 d0             	movslq %eax,%rdx
ffff800000107c39:	48 01 de             	add    %rbx,%rsi
ffff800000107c3c:	48 89 d0             	mov    %rdx,%rax
ffff800000107c3f:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c43:	48 01 d0             	add    %rdx,%rax
ffff800000107c46:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c4a:	48 01 f0             	add    %rsi,%rax
ffff800000107c4d:	48 89 08             	mov    %rcx,(%rax)
ffff800000107c50:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107c57:	00 00 00 
ffff800000107c5a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c5d:	48 63 d0             	movslq %eax,%rdx
ffff800000107c60:	48 89 d0             	mov    %rdx,%rax
ffff800000107c63:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c67:	48 01 d0             	add    %rdx,%rax
ffff800000107c6a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c6e:	48 01 d8             	add    %rbx,%rax
ffff800000107c71:	48 01 c8             	add    %rcx,%rax
ffff800000107c74:	48 83 c0 08          	add    $0x8,%rax
ffff800000107c78:	48 8b 10             	mov    (%rax),%rdx
ffff800000107c7b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c7f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107c83:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000107c87:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107c8e:	00 00 00 
ffff800000107c91:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107c94:	48 63 d0             	movslq %eax,%rdx
ffff800000107c97:	48 89 d0             	mov    %rdx,%rax
ffff800000107c9a:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107c9e:	48 01 d0             	add    %rdx,%rax
ffff800000107ca1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ca5:	48 01 d8             	add    %rbx,%rax
ffff800000107ca8:	48 01 f0             	add    %rsi,%rax
ffff800000107cab:	48 83 c0 08          	add    $0x8,%rax
ffff800000107caf:	48 89 08             	mov    %rcx,(%rax)
ffff800000107cb2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107cb6:	8b 50 10             	mov    0x10(%rax),%edx
ffff800000107cb9:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107cc0:	00 00 00 
ffff800000107cc3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107cc6:	48 63 c8             	movslq %eax,%rcx
ffff800000107cc9:	48 01 de             	add    %rbx,%rsi
ffff800000107ccc:	48 89 c8             	mov    %rcx,%rax
ffff800000107ccf:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cd3:	48 01 c8             	add    %rcx,%rax
ffff800000107cd6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cda:	48 01 f0             	add    %rsi,%rax
ffff800000107cdd:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ce1:	89 10                	mov    %edx,(%rax)
ffff800000107ce3:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107ce6:	48 98                	cltq   
ffff800000107ce8:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000107cef:	00 00 00 
ffff800000107cf2:	48 89 84 13 80 02 00 	mov    %rax,0x280(%rbx,%rdx,1)
ffff800000107cf9:	00 
ffff800000107cfa:	48 83 45 d8 14       	addq   $0x14,-0x28(%rbp)
ffff800000107cff:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d03:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107d06:	83 f8 04             	cmp    $0x4,%eax
ffff800000107d09:	77 26                	ja     ffff800000107d31 <init_memory+0x22b>
ffff800000107d0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d0f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107d13:	48 85 c0             	test   %rax,%rax
ffff800000107d16:	74 19                	je     ffff800000107d31 <init_memory+0x22b>
ffff800000107d18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d1c:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107d1f:	85 c0                	test   %eax,%eax
ffff800000107d21:	74 0e                	je     ffff800000107d31 <init_memory+0x22b>
ffff800000107d23:	83 45 d4 01          	addl   $0x1,-0x2c(%rbp)
ffff800000107d27:	83 7d d4 1f          	cmpl   $0x1f,-0x2c(%rbp)
ffff800000107d2b:	0f 8e 54 fe ff ff    	jle    ffff800000107b85 <init_memory+0x7f>
ffff800000107d31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d35:	48 89 c1             	mov    %rax,%rcx
ffff800000107d38:	48 b8 60 a6 ff ff ff 	movabs $0xffffffffffffa660,%rax
ffff800000107d3f:	ff ff ff 
ffff800000107d42:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d46:	48 89 c2             	mov    %rax,%rdx
ffff800000107d49:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d4e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107d53:	49 89 df             	mov    %rbx,%r15
ffff800000107d56:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107d5b:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000107d62:	ff ff ff 
ffff800000107d65:	49 01 d8             	add    %rbx,%r8
ffff800000107d68:	41 ff d0             	call   *%r8
ffff800000107d6b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107d6f:	48 89 c1             	mov    %rax,%rcx
ffff800000107d72:	48 b8 7f a6 ff ff ff 	movabs $0xffffffffffffa67f,%rax
ffff800000107d79:	ff ff ff 
ffff800000107d7c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107d80:	48 89 c2             	mov    %rax,%rdx
ffff800000107d83:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d88:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107d8d:	49 89 df             	mov    %rbx,%r15
ffff800000107d90:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107d95:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000107d9c:	ff ff ff 
ffff800000107d9f:	49 01 d8             	add    %rbx,%r8
ffff800000107da2:	41 ff d0             	call   *%r8
ffff800000107da5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107da9:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000107dad:	89 45 bc             	mov    %eax,-0x44(%rbp)
ffff800000107db0:	8b 45 bc             	mov    -0x44(%rbp),%eax
ffff800000107db3:	89 c1                	mov    %eax,%ecx
ffff800000107db5:	48 b8 99 a6 ff ff ff 	movabs $0xffffffffffffa699,%rax
ffff800000107dbc:	ff ff ff 
ffff800000107dbf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107dc3:	48 89 c2             	mov    %rax,%rdx
ffff800000107dc6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107dcb:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107dd0:	49 89 df             	mov    %rbx,%r15
ffff800000107dd3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107dd8:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000107ddf:	ff ff ff 
ffff800000107de2:	49 01 d8             	add    %rbx,%r8
ffff800000107de5:	41 ff d0             	call   *%r8
ffff800000107de8:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000107def:	00 
ffff800000107df0:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000107df7:	e9 ed 00 00 00       	jmp    ffff800000107ee9 <init_memory+0x3e3>
ffff800000107dfc:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e03:	00 00 00 
ffff800000107e06:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e09:	48 63 d0             	movslq %eax,%rdx
ffff800000107e0c:	48 01 d9             	add    %rbx,%rcx
ffff800000107e0f:	48 89 d0             	mov    %rdx,%rax
ffff800000107e12:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e16:	48 01 d0             	add    %rdx,%rax
ffff800000107e19:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e1d:	48 01 c8             	add    %rcx,%rax
ffff800000107e20:	48 83 c0 10          	add    $0x10,%rax
ffff800000107e24:	8b 00                	mov    (%rax),%eax
ffff800000107e26:	83 f8 01             	cmp    $0x1,%eax
ffff800000107e29:	0f 85 b2 00 00 00    	jne    ffff800000107ee1 <init_memory+0x3db>
ffff800000107e2f:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e36:	00 00 00 
ffff800000107e39:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e3c:	48 63 d0             	movslq %eax,%rdx
ffff800000107e3f:	48 01 d9             	add    %rbx,%rcx
ffff800000107e42:	48 89 d0             	mov    %rdx,%rax
ffff800000107e45:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e49:	48 01 d0             	add    %rdx,%rax
ffff800000107e4c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e50:	48 01 c8             	add    %rcx,%rax
ffff800000107e53:	48 8b 00             	mov    (%rax),%rax
ffff800000107e56:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000107e5c:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107e62:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000107e66:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000107e6d:	00 00 00 
ffff800000107e70:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e73:	48 63 d0             	movslq %eax,%rdx
ffff800000107e76:	48 01 d9             	add    %rbx,%rcx
ffff800000107e79:	48 89 d0             	mov    %rdx,%rax
ffff800000107e7c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e80:	48 01 d0             	add    %rdx,%rax
ffff800000107e83:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107e87:	48 01 c8             	add    %rcx,%rax
ffff800000107e8a:	48 8b 08             	mov    (%rax),%rcx
ffff800000107e8d:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107e94:	00 00 00 
ffff800000107e97:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107e9a:	48 63 d0             	movslq %eax,%rdx
ffff800000107e9d:	48 89 d0             	mov    %rdx,%rax
ffff800000107ea0:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ea4:	48 01 d0             	add    %rdx,%rax
ffff800000107ea7:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107eab:	48 01 d8             	add    %rbx,%rax
ffff800000107eae:	48 01 f0             	add    %rsi,%rax
ffff800000107eb1:	48 83 c0 08          	add    $0x8,%rax
ffff800000107eb5:	48 8b 00             	mov    (%rax),%rax
ffff800000107eb8:	48 01 c8             	add    %rcx,%rax
ffff800000107ebb:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000107ec1:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000107ec5:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107ec9:	48 3b 45 88          	cmp    -0x78(%rbp),%rax
ffff800000107ecd:	76 15                	jbe    ffff800000107ee4 <init_memory+0x3de>
ffff800000107ecf:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000107ed3:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000107ed7:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107edb:	48 01 45 e0          	add    %rax,-0x20(%rbp)
ffff800000107edf:	eb 04                	jmp    ffff800000107ee5 <init_memory+0x3df>
ffff800000107ee1:	90                   	nop
ffff800000107ee2:	eb 01                	jmp    ffff800000107ee5 <init_memory+0x3df>
ffff800000107ee4:	90                   	nop
ffff800000107ee5:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000107ee9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107eec:	48 63 d0             	movslq %eax,%rdx
ffff800000107eef:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107ef6:	00 00 00 
ffff800000107ef9:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
ffff800000107f00:	00 
ffff800000107f01:	48 39 c2             	cmp    %rax,%rdx
ffff800000107f04:	0f 86 f2 fe ff ff    	jbe    ffff800000107dfc <init_memory+0x2f6>
ffff800000107f0a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107f0e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107f12:	49 89 d0             	mov    %rdx,%r8
ffff800000107f15:	48 89 c1             	mov    %rax,%rcx
ffff800000107f18:	48 b8 b8 a6 ff ff ff 	movabs $0xffffffffffffa6b8,%rax
ffff800000107f1f:	ff ff ff 
ffff800000107f22:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107f26:	48 89 c2             	mov    %rax,%rdx
ffff800000107f29:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107f2e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107f33:	49 89 df             	mov    %rbx,%r15
ffff800000107f36:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107f3b:	49 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r9
ffff800000107f42:	ff ff ff 
ffff800000107f45:	49 01 d9             	add    %rbx,%r9
ffff800000107f48:	41 ff d1             	call   *%r9
ffff800000107f4b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f52:	00 00 00 
ffff800000107f55:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f5c:	00 
ffff800000107f5d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f64:	00 00 00 
ffff800000107f67:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107f6b:	48 89 d0             	mov    %rdx,%rax
ffff800000107f6e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f72:	48 01 d0             	add    %rdx,%rax
ffff800000107f75:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f79:	48 01 c8             	add    %rcx,%rax
ffff800000107f7c:	48 8b 08             	mov    (%rax),%rcx
ffff800000107f7f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f86:	00 00 00 
ffff800000107f89:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f90:	00 
ffff800000107f91:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107f98:	00 00 00 
ffff800000107f9b:	48 89 d0             	mov    %rdx,%rax
ffff800000107f9e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fa2:	48 01 d0             	add    %rdx,%rax
ffff800000107fa5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fa9:	48 01 d8             	add    %rbx,%rax
ffff800000107fac:	48 01 f0             	add    %rsi,%rax
ffff800000107faf:	48 83 c0 08          	add    $0x8,%rax
ffff800000107fb3:	48 8b 00             	mov    (%rax),%rax
ffff800000107fb6:	48 01 c8             	add    %rcx,%rax
ffff800000107fb9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107fbd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fc4:	00 00 00 
ffff800000107fc7:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107fce:	00 
ffff800000107fcf:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107fd5:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107fdb:	48 89 c2             	mov    %rax,%rdx
ffff800000107fde:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fe5:	00 00 00 
ffff800000107fe8:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107fef:	00 
ffff800000107ff0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ff4:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107ff8:	48 89 c2             	mov    %rax,%rdx
ffff800000107ffb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108002:	00 00 00 
ffff800000108005:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff80000010800c:	00 
ffff80000010800d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108011:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108015:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000108019:	48 c1 e8 03          	shr    $0x3,%rax
ffff80000010801d:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108021:	48 89 c2             	mov    %rax,%rdx
ffff800000108024:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010802b:	00 00 00 
ffff80000010802e:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff800000108035:	00 
ffff800000108036:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010803d:	00 00 00 
ffff800000108040:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff800000108047:	00 
ffff800000108048:	48 89 c2             	mov    %rax,%rdx
ffff80000010804b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108052:	00 00 00 
ffff800000108055:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010805c:	00 
ffff80000010805d:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000108062:	48 89 c7             	mov    %rax,%rdi
ffff800000108065:	48 b8 3d 82 ff ff ff 	movabs $0xffffffffffff823d,%rax
ffff80000010806c:	ff ff ff 
ffff80000010806f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108073:	ff d0                	call   *%rax
ffff800000108075:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010807c:	00 00 00 
ffff80000010807f:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108086:	00 
ffff800000108087:	48 89 c2             	mov    %rax,%rdx
ffff80000010808a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108091:	00 00 00 
ffff800000108094:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff80000010809b:	00 
ffff80000010809c:	48 01 d0             	add    %rdx,%rax
ffff80000010809f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001080a5:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff8000001080ab:	48 89 c2             	mov    %rax,%rdx
ffff8000001080ae:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080b5:	00 00 00 
ffff8000001080b8:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff8000001080bf:	00 
ffff8000001080c0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080c4:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001080cb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080d2:	00 00 00 
ffff8000001080d5:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff8000001080dc:	00 
ffff8000001080dd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080e1:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080e5:	48 89 c2             	mov    %rax,%rdx
ffff8000001080e8:	48 89 d0             	mov    %rdx,%rax
ffff8000001080eb:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001080ef:	48 01 d0             	add    %rdx,%rax
ffff8000001080f2:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001080f6:	48 83 c0 07          	add    $0x7,%rax
ffff8000001080fa:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001080fe:	48 89 c2             	mov    %rax,%rdx
ffff800000108101:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108108:	00 00 00 
ffff80000010810b:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000108112:	00 
ffff800000108113:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010811a:	00 00 00 
ffff80000010811d:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000108124:	00 
ffff800000108125:	48 89 c2             	mov    %rax,%rdx
ffff800000108128:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010812f:	00 00 00 
ffff800000108132:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108139:	00 
ffff80000010813a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010813f:	48 89 c7             	mov    %rax,%rdi
ffff800000108142:	48 b8 3d 82 ff ff ff 	movabs $0xffffffffffff823d,%rax
ffff800000108149:	ff ff ff 
ffff80000010814c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108150:	ff d0                	call   *%rax
ffff800000108152:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108159:	00 00 00 
ffff80000010815c:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108163:	00 
ffff800000108164:	48 89 c2             	mov    %rax,%rdx
ffff800000108167:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010816e:	00 00 00 
ffff800000108171:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff800000108178:	00 
ffff800000108179:	48 01 d0             	add    %rdx,%rax
ffff80000010817c:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000108182:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000108188:	48 89 c2             	mov    %rax,%rdx
ffff80000010818b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108192:	00 00 00 
ffff800000108195:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff80000010819c:	00 
ffff80000010819d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081a4:	00 00 00 
ffff8000001081a7:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff8000001081ae:	00 00 00 00 00 
ffff8000001081b3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081ba:	00 00 00 
ffff8000001081bd:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff8000001081c4:	00 90 01 00 00 
ffff8000001081c9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081d0:	00 00 00 
ffff8000001081d3:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff8000001081da:	00 
ffff8000001081db:	48 89 c2             	mov    %rax,%rdx
ffff8000001081de:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081e5:	00 00 00 
ffff8000001081e8:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001081ef:	00 
ffff8000001081f0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001081f5:	48 89 c7             	mov    %rax,%rdi
ffff8000001081f8:	48 b8 3d 82 ff ff ff 	movabs $0xffffffffffff823d,%rax
ffff8000001081ff:	ff ff ff 
ffff800000108202:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108206:	ff d0                	call   *%rax
ffff800000108208:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010820f:	e9 f8 02 00 00       	jmp    ffff80000010850c <init_memory+0xa06>
ffff800000108214:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010821b:	00 00 00 
ffff80000010821e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108221:	48 63 d0             	movslq %eax,%rdx
ffff800000108224:	48 01 d9             	add    %rbx,%rcx
ffff800000108227:	48 89 d0             	mov    %rdx,%rax
ffff80000010822a:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010822e:	48 01 d0             	add    %rdx,%rax
ffff800000108231:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108235:	48 01 c8             	add    %rcx,%rax
ffff800000108238:	48 83 c0 10          	add    $0x10,%rax
ffff80000010823c:	8b 00                	mov    (%rax),%eax
ffff80000010823e:	83 f8 01             	cmp    $0x1,%eax
ffff800000108241:	0f 85 bd 02 00 00    	jne    ffff800000108504 <init_memory+0x9fe>
ffff800000108247:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010824e:	00 00 00 
ffff800000108251:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108254:	48 63 d0             	movslq %eax,%rdx
ffff800000108257:	48 01 d9             	add    %rbx,%rcx
ffff80000010825a:	48 89 d0             	mov    %rdx,%rax
ffff80000010825d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108261:	48 01 d0             	add    %rdx,%rax
ffff800000108264:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108268:	48 01 c8             	add    %rcx,%rax
ffff80000010826b:	48 8b 00             	mov    (%rax),%rax
ffff80000010826e:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff800000108274:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff80000010827a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010827e:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108285:	00 00 00 
ffff800000108288:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010828b:	48 63 d0             	movslq %eax,%rdx
ffff80000010828e:	48 01 d9             	add    %rbx,%rcx
ffff800000108291:	48 89 d0             	mov    %rdx,%rax
ffff800000108294:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108298:	48 01 d0             	add    %rdx,%rax
ffff80000010829b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010829f:	48 01 c8             	add    %rcx,%rax
ffff8000001082a2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001082a5:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001082ac:	00 00 00 
ffff8000001082af:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001082b2:	48 63 d0             	movslq %eax,%rdx
ffff8000001082b5:	48 89 d0             	mov    %rdx,%rax
ffff8000001082b8:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082bc:	48 01 d0             	add    %rdx,%rax
ffff8000001082bf:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082c3:	48 01 d8             	add    %rbx,%rax
ffff8000001082c6:	48 01 f0             	add    %rsi,%rax
ffff8000001082c9:	48 83 c0 08          	add    $0x8,%rax
ffff8000001082cd:	48 8b 00             	mov    (%rax),%rax
ffff8000001082d0:	48 01 c8             	add    %rcx,%rax
ffff8000001082d3:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001082d9:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff8000001082dd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001082e1:	48 3b 45 a0          	cmp    -0x60(%rbp),%rax
ffff8000001082e5:	0f 86 1c 02 00 00    	jbe    ffff800000108507 <init_memory+0xa01>
ffff8000001082eb:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082f2:	00 00 00 
ffff8000001082f5:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff8000001082fc:	00 
ffff8000001082fd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108304:	00 00 00 
ffff800000108307:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff80000010830e:	00 
ffff80000010830f:	48 89 d0             	mov    %rdx,%rax
ffff800000108312:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108316:	48 01 d0             	add    %rdx,%rax
ffff800000108319:	48 c1 e0 04          	shl    $0x4,%rax
ffff80000010831d:	48 01 c8             	add    %rcx,%rax
ffff800000108320:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff800000108324:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010832b:	00 00 00 
ffff80000010832e:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108335:	00 
ffff800000108336:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010833a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108341:	00 00 00 
ffff800000108344:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff80000010834b:	00 
ffff80000010834c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108350:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000108354:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000108358:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010835c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000108360:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000108364:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108368:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff80000010836c:	48 89 c2             	mov    %rax,%rdx
ffff80000010836f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108373:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff800000108377:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010837b:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000108382:	00 
ffff800000108383:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108387:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff80000010838b:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010838f:	48 89 c2             	mov    %rax,%rdx
ffff800000108392:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108396:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff80000010839a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010839e:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff8000001083a5:	00 
ffff8000001083a6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083aa:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff8000001083b1:	00 
ffff8000001083b2:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083b6:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001083bd:	00 00 00 
ffff8000001083c0:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001083c4:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001083c8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001083cc:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff8000001083d0:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001083d4:	48 89 c2             	mov    %rax,%rdx
ffff8000001083d7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083db:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff8000001083df:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083e6:	00 00 00 
ffff8000001083e9:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001083f0:	00 
ffff8000001083f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001083f5:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001083f9:	48 89 c2             	mov    %rax,%rdx
ffff8000001083fc:	48 89 d0             	mov    %rdx,%rax
ffff8000001083ff:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108403:	48 01 d0             	add    %rdx,%rax
ffff800000108406:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010840a:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff80000010840e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108412:	48 89 10             	mov    %rdx,(%rax)
ffff800000108415:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108419:	48 8b 00             	mov    (%rax),%rax
ffff80000010841c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000108420:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108427:	e9 bf 00 00 00       	jmp    ffff8000001084eb <init_memory+0x9e5>
ffff80000010842c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108430:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000108434:	48 89 10             	mov    %rdx,(%rax)
ffff800000108437:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010843a:	48 98                	cltq   
ffff80000010843c:	48 c1 e0 15          	shl    $0x15,%rax
ffff800000108440:	48 89 c2             	mov    %rax,%rdx
ffff800000108443:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000108447:	48 01 c2             	add    %rax,%rdx
ffff80000010844a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010844e:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000108452:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108456:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff80000010845d:	00 
ffff80000010845e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108462:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000108469:	00 
ffff80000010846a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010846e:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff800000108475:	00 
ffff800000108476:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010847d:	00 00 00 
ffff800000108480:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108487:	00 
ffff800000108488:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010848c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108490:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff800000108494:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108498:	48 01 d0             	add    %rdx,%rax
ffff80000010849b:	48 8b 10             	mov    (%rax),%rdx
ffff80000010849e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084a2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084a6:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001084aa:	83 e0 3f             	and    $0x3f,%eax
ffff8000001084ad:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001084b2:	89 c1                	mov    %eax,%ecx
ffff8000001084b4:	48 d3 e6             	shl    %cl,%rsi
ffff8000001084b7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001084be:	00 00 00 
ffff8000001084c1:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff8000001084c8:	00 
ffff8000001084c9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084cd:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084d1:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff8000001084d5:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001084d9:	48 01 c8             	add    %rcx,%rax
ffff8000001084dc:	48 31 f2             	xor    %rsi,%rdx
ffff8000001084df:	48 89 10             	mov    %rdx,(%rax)
ffff8000001084e2:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001084e6:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff8000001084eb:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001084ee:	48 63 d0             	movslq %eax,%rdx
ffff8000001084f1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001084f5:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084f9:	48 39 c2             	cmp    %rax,%rdx
ffff8000001084fc:	0f 82 2a ff ff ff    	jb     ffff80000010842c <init_memory+0x926>
ffff800000108502:	eb 04                	jmp    ffff800000108508 <init_memory+0xa02>
ffff800000108504:	90                   	nop
ffff800000108505:	eb 01                	jmp    ffff800000108508 <init_memory+0xa02>
ffff800000108507:	90                   	nop
ffff800000108508:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff80000010850c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010850f:	48 63 d0             	movslq %eax,%rdx
ffff800000108512:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108519:	00 00 00 
ffff80000010851c:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
ffff800000108523:	00 
ffff800000108524:	48 39 c2             	cmp    %rax,%rdx
ffff800000108527:	0f 86 e7 fc ff ff    	jbe    ffff800000108214 <init_memory+0x70e>
ffff80000010852d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108534:	00 00 00 
ffff800000108537:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010853e:	00 
ffff80000010853f:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff800000108546:	00 00 00 
ffff800000108549:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff800000108550:	00 
ffff800000108551:	48 89 10             	mov    %rdx,(%rax)
ffff800000108554:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010855b:	00 00 00 
ffff80000010855e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108565:	00 
ffff800000108566:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff80000010856d:	00 
ffff80000010856e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108575:	00 00 00 
ffff800000108578:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010857f:	00 
ffff800000108580:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108587:	00 
ffff800000108588:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010858f:	00 00 00 
ffff800000108592:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108599:	00 
ffff80000010859a:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001085a1:	00 
ffff8000001085a2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085a9:	00 00 00 
ffff8000001085ac:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001085b3:	00 
ffff8000001085b4:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001085bb:	00 
ffff8000001085bc:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085c3:	00 00 00 
ffff8000001085c6:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff8000001085cd:	00 
ffff8000001085ce:	48 89 d0             	mov    %rdx,%rax
ffff8000001085d1:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001085d5:	48 01 d0             	add    %rdx,%rax
ffff8000001085d8:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001085dc:	48 83 c0 07          	add    $0x7,%rax
ffff8000001085e0:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001085e4:	48 89 c2             	mov    %rax,%rdx
ffff8000001085e7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085ee:	00 00 00 
ffff8000001085f1:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff8000001085f8:	00 
ffff8000001085f9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108600:	00 00 00 
ffff800000108603:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff80000010860a:	00 
ffff80000010860b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108612:	00 00 00 
ffff800000108615:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff80000010861c:	00 
ffff80000010861d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108624:	00 00 00 
ffff800000108627:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010862e:	00 
ffff80000010862f:	49 89 c9             	mov    %rcx,%r9
ffff800000108632:	49 89 d0             	mov    %rdx,%r8
ffff800000108635:	48 89 c1             	mov    %rax,%rcx
ffff800000108638:	48 b8 e8 a6 ff ff ff 	movabs $0xffffffffffffa6e8,%rax
ffff80000010863f:	ff ff ff 
ffff800000108642:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108646:	48 89 c2             	mov    %rax,%rdx
ffff800000108649:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010864e:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108653:	49 89 df             	mov    %rbx,%r15
ffff800000108656:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010865b:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000108662:	ff ff ff 
ffff800000108665:	49 01 da             	add    %rbx,%r10
ffff800000108668:	41 ff d2             	call   *%r10
ffff80000010866b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108672:	00 00 00 
ffff800000108675:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff80000010867c:	00 
ffff80000010867d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108684:	00 00 00 
ffff800000108687:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff80000010868e:	00 
ffff80000010868f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108696:	00 00 00 
ffff800000108699:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001086a0:	00 
ffff8000001086a1:	49 89 c9             	mov    %rcx,%r9
ffff8000001086a4:	49 89 d0             	mov    %rdx,%r8
ffff8000001086a7:	48 89 c1             	mov    %rax,%rcx
ffff8000001086aa:	48 b8 20 a7 ff ff ff 	movabs $0xffffffffffffa720,%rax
ffff8000001086b1:	ff ff ff 
ffff8000001086b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001086b8:	48 89 c2             	mov    %rax,%rdx
ffff8000001086bb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001086c0:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001086c5:	49 89 df             	mov    %rbx,%r15
ffff8000001086c8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001086cd:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff8000001086d4:	ff ff ff 
ffff8000001086d7:	49 01 da             	add    %rbx,%r10
ffff8000001086da:	41 ff d2             	call   *%r10
ffff8000001086dd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086e4:	00 00 00 
ffff8000001086e7:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff8000001086ee:	00 
ffff8000001086ef:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086f6:	00 00 00 
ffff8000001086f9:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108700:	00 
ffff800000108701:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108708:	00 00 00 
ffff80000010870b:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108712:	00 
ffff800000108713:	49 89 c9             	mov    %rcx,%r9
ffff800000108716:	49 89 d0             	mov    %rdx,%r8
ffff800000108719:	48 89 c1             	mov    %rax,%rcx
ffff80000010871c:	48 b8 60 a7 ff ff ff 	movabs $0xffffffffffffa760,%rax
ffff800000108723:	ff ff ff 
ffff800000108726:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010872a:	48 89 c2             	mov    %rax,%rdx
ffff80000010872d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108732:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108737:	49 89 df             	mov    %rbx,%r15
ffff80000010873a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010873f:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000108746:	ff ff ff 
ffff800000108749:	49 01 da             	add    %rbx,%r10
ffff80000010874c:	41 ff d2             	call   *%r10
ffff80000010874f:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108756:	00 00 00 
ffff800000108759:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108760:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff800000108767:	00 00 00 
ffff80000010876a:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108771:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108778:	e9 c1 00 00 00       	jmp    ffff80000010883e <init_memory+0xd38>
ffff80000010877d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108784:	00 00 00 
ffff800000108787:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff80000010878e:	00 
ffff80000010878f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108792:	48 63 d0             	movslq %eax,%rdx
ffff800000108795:	48 89 d0             	mov    %rdx,%rax
ffff800000108798:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010879c:	48 01 d0             	add    %rdx,%rax
ffff80000010879f:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001087a3:	48 01 c8             	add    %rcx,%rax
ffff8000001087a6:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001087aa:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087ae:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001087b2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087b6:	48 8b 10             	mov    (%rax),%rdx
ffff8000001087b9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087bd:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff8000001087c1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087c5:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff8000001087c9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087cd:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001087d1:	51                   	push   %rcx
ffff8000001087d2:	52                   	push   %rdx
ffff8000001087d3:	49 89 f9             	mov    %rdi,%r9
ffff8000001087d6:	49 89 f0             	mov    %rsi,%r8
ffff8000001087d9:	48 89 c1             	mov    %rax,%rcx
ffff8000001087dc:	48 b8 a0 a7 ff ff ff 	movabs $0xffffffffffffa7a0,%rax
ffff8000001087e3:	ff ff ff 
ffff8000001087e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001087ea:	48 89 c2             	mov    %rax,%rdx
ffff8000001087ed:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001087f2:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001087f7:	49 89 df             	mov    %rbx,%r15
ffff8000001087fa:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001087ff:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000108806:	ff ff ff 
ffff800000108809:	49 01 da             	add    %rbx,%r10
ffff80000010880c:	41 ff d2             	call   *%r10
ffff80000010880f:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108813:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000108817:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010881b:	48 ba 00 00 00 00 01 	movabs $0x100000000,%rdx
ffff800000108822:	00 00 00 
ffff800000108825:	48 39 d0             	cmp    %rdx,%rax
ffff800000108828:	75 10                	jne    ffff80000010883a <init_memory+0xd34>
ffff80000010882a:	48 ba 78 10 00 00 00 	movabs $0x1078,%rdx
ffff800000108831:	00 00 00 
ffff800000108834:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108837:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff80000010883a:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff80000010883e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108841:	48 63 d0             	movslq %eax,%rdx
ffff800000108844:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010884b:	00 00 00 
ffff80000010884e:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108855:	00 
ffff800000108856:	48 39 c2             	cmp    %rax,%rdx
ffff800000108859:	0f 82 1e ff ff ff    	jb     ffff80000010877d <init_memory+0xc77>
ffff80000010885f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108866:	00 00 00 
ffff800000108869:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108870:	00 
ffff800000108871:	48 89 c2             	mov    %rax,%rdx
ffff800000108874:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010887b:	00 00 00 
ffff80000010887e:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff800000108885:	00 
ffff800000108886:	48 01 d0             	add    %rdx,%rax
ffff800000108889:	48 05 00 01 00 00    	add    $0x100,%rax
ffff80000010888f:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108893:	48 89 c2             	mov    %rax,%rdx
ffff800000108896:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010889d:	00 00 00 
ffff8000001088a0:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff8000001088a7:	00 
ffff8000001088a8:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088af:	00 00 00 
ffff8000001088b2:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff8000001088b9:	00 
ffff8000001088ba:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088c1:	00 00 00 
ffff8000001088c4:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff8000001088cb:	00 
ffff8000001088cc:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088d3:	00 00 00 
ffff8000001088d6:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff8000001088dd:	00 
ffff8000001088de:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088e5:	00 00 00 
ffff8000001088e8:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff8000001088ef:	00 
ffff8000001088f0:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088f7:	00 00 00 
ffff8000001088fa:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108901:	00 
ffff800000108902:	51                   	push   %rcx
ffff800000108903:	52                   	push   %rdx
ffff800000108904:	49 89 f9             	mov    %rdi,%r9
ffff800000108907:	49 89 f0             	mov    %rsi,%r8
ffff80000010890a:	48 89 c1             	mov    %rax,%rcx
ffff80000010890d:	48 b8 18 a8 ff ff ff 	movabs $0xffffffffffffa818,%rax
ffff800000108914:	ff ff ff 
ffff800000108917:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010891b:	48 89 c2             	mov    %rax,%rdx
ffff80000010891e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108923:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000108928:	49 89 df             	mov    %rbx,%r15
ffff80000010892b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108930:	49 ba c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r10
ffff800000108937:	ff ff ff 
ffff80000010893a:	49 01 da             	add    %rbx,%r10
ffff80000010893d:	41 ff d2             	call   *%r10
ffff800000108940:	48 83 c4 10          	add    $0x10,%rsp
ffff800000108944:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010894b:	00 00 00 
ffff80000010894e:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff800000108955:	00 
ffff800000108956:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff80000010895d:	80 00 00 
ffff800000108960:	48 01 d0             	add    %rdx,%rax
ffff800000108963:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108967:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff80000010896a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108971:	eb 45                	jmp    ffff8000001089b8 <init_memory+0xeb2>
ffff800000108973:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010897a:	00 00 00 
ffff80000010897d:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108984:	00 
ffff800000108985:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108988:	48 63 d0             	movslq %eax,%rdx
ffff80000010898b:	48 89 d0             	mov    %rdx,%rax
ffff80000010898e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108992:	48 01 d0             	add    %rdx,%rax
ffff800000108995:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108999:	48 01 c8             	add    %rcx,%rax
ffff80000010899c:	be 93 00 00 00       	mov    $0x93,%esi
ffff8000001089a1:	48 89 c7             	mov    %rax,%rdi
ffff8000001089a4:	48 b8 40 83 ff ff ff 	movabs $0xffffffffffff8340,%rax
ffff8000001089ab:	ff ff ff 
ffff8000001089ae:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001089b2:	ff d0                	call   *%rax
ffff8000001089b4:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001089b8:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001089bb:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff8000001089be:	7e b3                	jle    ffff800000108973 <init_memory+0xe6d>
ffff8000001089c0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001089c5:	48 ba 17 83 ff ff ff 	movabs $0xffffffffffff8317,%rdx
ffff8000001089cc:	ff ff ff 
ffff8000001089cf:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001089d3:	ff d2                	call   *%rdx
ffff8000001089d5:	48 ba 80 10 00 00 00 	movabs $0x1080,%rdx
ffff8000001089dc:	00 00 00 
ffff8000001089df:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff8000001089e3:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff8000001089ea:	00 00 00 
ffff8000001089ed:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001089f1:	48 89 c1             	mov    %rax,%rcx
ffff8000001089f4:	48 b8 74 a8 ff ff ff 	movabs $0xffffffffffffa874,%rax
ffff8000001089fb:	ff ff ff 
ffff8000001089fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a02:	48 89 c2             	mov    %rax,%rdx
ffff800000108a05:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a0a:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a0f:	49 89 df             	mov    %rbx,%r15
ffff800000108a12:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a17:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000108a1e:	ff ff ff 
ffff800000108a21:	49 01 d8             	add    %rbx,%r8
ffff800000108a24:	41 ff d0             	call   *%r8
ffff800000108a27:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a2e:	00 00 00 
ffff800000108a31:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a35:	48 89 c2             	mov    %rax,%rdx
ffff800000108a38:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a3f:	80 ff ff 
ffff800000108a42:	48 01 d0             	add    %rdx,%rax
ffff800000108a45:	48 8b 00             	mov    (%rax),%rax
ffff800000108a48:	48 89 c1             	mov    %rax,%rcx
ffff800000108a4b:	48 b8 89 a8 ff ff ff 	movabs $0xffffffffffffa889,%rax
ffff800000108a52:	ff ff ff 
ffff800000108a55:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a59:	48 89 c2             	mov    %rax,%rdx
ffff800000108a5c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a61:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a66:	49 89 df             	mov    %rbx,%r15
ffff800000108a69:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a6e:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000108a75:	ff ff ff 
ffff800000108a78:	49 01 d8             	add    %rbx,%r8
ffff800000108a7b:	41 ff d0             	call   *%r8
ffff800000108a7e:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a85:	00 00 00 
ffff800000108a88:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a8c:	48 89 c2             	mov    %rax,%rdx
ffff800000108a8f:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a96:	80 ff ff 
ffff800000108a99:	48 01 d0             	add    %rdx,%rax
ffff800000108a9c:	48 8b 00             	mov    (%rax),%rax
ffff800000108a9f:	b0 00                	mov    $0x0,%al
ffff800000108aa1:	48 89 c2             	mov    %rax,%rdx
ffff800000108aa4:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108aab:	80 ff ff 
ffff800000108aae:	48 01 d0             	add    %rdx,%rax
ffff800000108ab1:	48 8b 00             	mov    (%rax),%rax
ffff800000108ab4:	b0 00                	mov    $0x0,%al
ffff800000108ab6:	48 89 c1             	mov    %rax,%rcx
ffff800000108ab9:	48 b8 9f a8 ff ff ff 	movabs $0xffffffffffffa89f,%rax
ffff800000108ac0:	ff ff ff 
ffff800000108ac3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108ac7:	48 89 c2             	mov    %rax,%rdx
ffff800000108aca:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108acf:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108ad4:	49 89 df             	mov    %rbx,%r15
ffff800000108ad7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108adc:	49 b8 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%r8
ffff800000108ae3:	ff ff ff 
ffff800000108ae6:	49 01 d8             	add    %rbx,%r8
ffff800000108ae9:	41 ff d0             	call   *%r8
ffff800000108aec:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108af3:	eb 36                	jmp    ffff800000108b2b <init_memory+0x1025>
ffff800000108af5:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108af8:	48 98                	cltq   
ffff800000108afa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000108b01:	00 
ffff800000108b02:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108b09:	00 00 00 
ffff800000108b0c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108b10:	48 01 c2             	add    %rax,%rdx
ffff800000108b13:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108b1a:	80 ff ff 
ffff800000108b1d:	48 01 d0             	add    %rdx,%rax
ffff800000108b20:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108b27:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108b2b:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff800000108b2f:	7e c4                	jle    ffff800000108af5 <init_memory+0xfef>
ffff800000108b31:	48 b8 b6 a8 ff ff ff 	movabs $0xffffffffffffa8b6,%rax
ffff800000108b38:	ff ff ff 
ffff800000108b3b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108b3f:	48 89 c2             	mov    %rax,%rdx
ffff800000108b42:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108b47:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108b4c:	49 89 df             	mov    %rbx,%r15
ffff800000108b4f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108b54:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000108b5b:	ff ff ff 
ffff800000108b5e:	48 01 d9             	add    %rbx,%rcx
ffff800000108b61:	ff d1                	call   *%rcx
ffff800000108b63:	0f 20 d8             	mov    %cr3,%rax
ffff800000108b66:	0f 22 d8             	mov    %rax,%cr3
ffff800000108b69:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108b6d:	90                   	nop
ffff800000108b6e:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff800000108b72:	5b                   	pop    %rbx
ffff800000108b73:	41 5f                	pop    %r15
ffff800000108b75:	5d                   	pop    %rbp
ffff800000108b76:	c3                   	ret    

ffff800000108b77 <alloc_page>:
ffff800000108b77:	f3 0f 1e fa          	endbr64 
ffff800000108b7b:	55                   	push   %rbp
ffff800000108b7c:	48 89 e5             	mov    %rsp,%rbp
ffff800000108b7f:	41 57                	push   %r15
ffff800000108b81:	53                   	push   %rbx
ffff800000108b82:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000108b86:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000108b86 <alloc_page+0xf>
ffff800000108b8d:	49 bb 2a 6a 00 00 00 	movabs $0x6a2a,%r11
ffff800000108b94:	00 00 00 
ffff800000108b97:	4c 01 db             	add    %r11,%rbx
ffff800000108b9a:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
ffff800000108ba0:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
ffff800000108ba6:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
ffff800000108bad:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000108bb4:	00 
ffff800000108bb5:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bbc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000108bc3:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bca:	74 5b                	je     ffff800000108c27 <alloc_page+0xb0>
ffff800000108bcc:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bd3:	7f 7c                	jg     ffff800000108c51 <alloc_page+0xda>
ffff800000108bd5:	83 bd 7c ff ff ff 01 	cmpl   $0x1,-0x84(%rbp)
ffff800000108bdc:	74 0b                	je     ffff800000108be9 <alloc_page+0x72>
ffff800000108bde:	83 bd 7c ff ff ff 02 	cmpl   $0x2,-0x84(%rbp)
ffff800000108be5:	74 1e                	je     ffff800000108c05 <alloc_page+0x8e>
ffff800000108be7:	eb 68                	jmp    ffff800000108c51 <alloc_page+0xda>
ffff800000108be9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bf0:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108bf7:	00 00 00 
ffff800000108bfa:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108bfd:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c00:	e9 88 00 00 00       	jmp    ffff800000108c8d <alloc_page+0x116>
ffff800000108c05:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108c0c:	00 00 00 
ffff800000108c0f:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c12:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c15:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff800000108c1c:	00 00 00 
ffff800000108c1f:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c22:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c25:	eb 66                	jmp    ffff800000108c8d <alloc_page+0x116>
ffff800000108c27:	48 b8 78 10 00 00 00 	movabs $0x1078,%rax
ffff800000108c2e:	00 00 00 
ffff800000108c31:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c34:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c37:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108c3e:	00 00 00 
ffff800000108c41:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108c48:	00 
ffff800000108c49:	83 e8 01             	sub    $0x1,%eax
ffff800000108c4c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c4f:	eb 3c                	jmp    ffff800000108c8d <alloc_page+0x116>
ffff800000108c51:	48 b8 c0 a8 ff ff ff 	movabs $0xffffffffffffa8c0,%rax
ffff800000108c58:	ff ff ff 
ffff800000108c5b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108c5f:	48 89 c2             	mov    %rax,%rdx
ffff800000108c62:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108c67:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000108c6c:	49 89 df             	mov    %rbx,%r15
ffff800000108c6f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c74:	48 b9 c2 52 ff ff ff 	movabs $0xffffffffffff52c2,%rcx
ffff800000108c7b:	ff ff ff 
ffff800000108c7e:	48 01 d9             	add    %rbx,%rcx
ffff800000108c81:	ff d1                	call   *%rcx
ffff800000108c83:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c88:	e9 79 02 00 00       	jmp    ffff800000108f06 <alloc_page+0x38f>
ffff800000108c8d:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108c90:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000108c93:	e9 5d 02 00 00       	jmp    ffff800000108ef5 <alloc_page+0x37e>
ffff800000108c98:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108c9f:	00 00 00 
ffff800000108ca2:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108ca9:	00 
ffff800000108caa:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108cad:	48 63 d0             	movslq %eax,%rdx
ffff800000108cb0:	48 89 d0             	mov    %rdx,%rax
ffff800000108cb3:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cb7:	48 01 d0             	add    %rdx,%rax
ffff800000108cba:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108cbe:	48 01 c8             	add    %rcx,%rax
ffff800000108cc1:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000108cc5:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108ccb:	48 98                	cltq   
ffff800000108ccd:	48 39 c2             	cmp    %rax,%rdx
ffff800000108cd0:	0f 82 1a 02 00 00    	jb     ffff800000108ef0 <alloc_page+0x379>
ffff800000108cd6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108cdd:	00 00 00 
ffff800000108ce0:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108ce7:	00 
ffff800000108ce8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108ceb:	48 63 d0             	movslq %eax,%rdx
ffff800000108cee:	48 89 d0             	mov    %rdx,%rax
ffff800000108cf1:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cf5:	48 01 d0             	add    %rdx,%rax
ffff800000108cf8:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108cfc:	48 01 c8             	add    %rcx,%rax
ffff800000108cff:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000108d03:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d07:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108d0b:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d0f:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108d13:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d17:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000108d1b:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d1f:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000108d23:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d27:	48 8b 40 20          	mov    0x20(%rax),%rax
ffff800000108d2b:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d2f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000108d33:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d37:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d3a:	48 89 c2             	mov    %rax,%rdx
ffff800000108d3d:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108d42:	48 29 d0             	sub    %rdx,%rax
ffff800000108d45:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000108d49:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d4d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000108d51:	e9 8a 01 00 00       	jmp    ffff800000108ee0 <alloc_page+0x369>
ffff800000108d56:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108d5d:	00 00 00 
ffff800000108d60:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108d67:	00 
ffff800000108d68:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108d6c:	48 c1 e8 06          	shr    $0x6,%rax
ffff800000108d70:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108d74:	48 01 d0             	add    %rdx,%rax
ffff800000108d77:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff800000108d7b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108d7f:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d82:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000108d86:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000108d8a:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000108d8e:	e9 1f 01 00 00       	jmp    ffff800000108eb2 <alloc_page+0x33b>
ffff800000108d93:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108d97:	48 8b 00             	mov    (%rax),%rax
ffff800000108d9a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000108d9e:	89 d1                	mov    %edx,%ecx
ffff800000108da0:	48 d3 e8             	shr    %cl,%rax
ffff800000108da3:	48 89 c6             	mov    %rax,%rsi
ffff800000108da6:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108daa:	48 83 c0 08          	add    $0x8,%rax
ffff800000108dae:	48 8b 10             	mov    (%rax),%rdx
ffff800000108db1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108db5:	89 c1                	mov    %eax,%ecx
ffff800000108db7:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108dbc:	29 c8                	sub    %ecx,%eax
ffff800000108dbe:	89 c1                	mov    %eax,%ecx
ffff800000108dc0:	48 d3 e2             	shl    %cl,%rdx
ffff800000108dc3:	48 89 d0             	mov    %rdx,%rax
ffff800000108dc6:	48 09 c6             	or     %rax,%rsi
ffff800000108dc9:	48 89 f2             	mov    %rsi,%rdx
ffff800000108dcc:	83 bd 78 ff ff ff 40 	cmpl   $0x40,-0x88(%rbp)
ffff800000108dd3:	74 19                	je     ffff800000108dee <alloc_page+0x277>
ffff800000108dd5:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108ddb:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000108de0:	89 c1                	mov    %eax,%ecx
ffff800000108de2:	48 d3 e6             	shl    %cl,%rsi
ffff800000108de5:	48 89 f0             	mov    %rsi,%rax
ffff800000108de8:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108dec:	eb 07                	jmp    ffff800000108df5 <alloc_page+0x27e>
ffff800000108dee:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
ffff800000108df5:	48 21 d0             	and    %rdx,%rax
ffff800000108df8:	48 85 c0             	test   %rax,%rax
ffff800000108dfb:	0f 85 ac 00 00 00    	jne    ffff800000108ead <alloc_page+0x336>
ffff800000108e01:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000108e05:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108e09:	48 01 d0             	add    %rdx,%rax
ffff800000108e0c:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108e10:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000108e14:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
ffff800000108e1b:	00 
ffff800000108e1c:	eb 58                	jmp    ffff800000108e76 <alloc_page+0x2ff>
ffff800000108e1e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e25:	00 00 00 
ffff800000108e28:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e2f:	00 
ffff800000108e30:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108e34:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108e38:	48 01 c2             	add    %rax,%rdx
ffff800000108e3b:	48 89 d0             	mov    %rdx,%rax
ffff800000108e3e:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108e42:	48 01 d0             	add    %rdx,%rax
ffff800000108e45:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108e49:	48 01 c8             	add    %rcx,%rax
ffff800000108e4c:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000108e50:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000108e57:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000108e5b:	48 89 d6             	mov    %rdx,%rsi
ffff800000108e5e:	48 89 c7             	mov    %rax,%rdi
ffff800000108e61:	48 b8 40 83 ff ff ff 	movabs $0xffffffffffff8340,%rax
ffff800000108e68:	ff ff ff 
ffff800000108e6b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108e6f:	ff d0                	call   *%rax
ffff800000108e71:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff800000108e76:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108e7c:	48 98                	cltq   
ffff800000108e7e:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
ffff800000108e82:	72 9a                	jb     ffff800000108e1e <alloc_page+0x2a7>
ffff800000108e84:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e8b:	00 00 00 
ffff800000108e8e:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e95:	00 
ffff800000108e96:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108e9a:	48 89 d0             	mov    %rdx,%rax
ffff800000108e9d:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108ea1:	48 01 d0             	add    %rdx,%rax
ffff800000108ea4:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108ea8:	48 01 c8             	add    %rcx,%rax
ffff800000108eab:	eb 59                	jmp    ffff800000108f06 <alloc_page+0x38f>
ffff800000108ead:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff800000108eb2:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108eb7:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000108ebb:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff800000108ebf:	0f 82 ce fe ff ff    	jb     ffff800000108d93 <alloc_page+0x21c>
ffff800000108ec5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108ec9:	83 e0 3f             	and    $0x3f,%eax
ffff800000108ecc:	48 85 c0             	test   %rax,%rax
ffff800000108ecf:	74 06                	je     ffff800000108ed7 <alloc_page+0x360>
ffff800000108ed1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108ed5:	eb 05                	jmp    ffff800000108edc <alloc_page+0x365>
ffff800000108ed7:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108edc:	48 01 45 d8          	add    %rax,-0x28(%rbp)
ffff800000108ee0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108ee4:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
ffff800000108ee8:	0f 86 68 fe ff ff    	jbe    ffff800000108d56 <alloc_page+0x1df>
ffff800000108eee:	eb 01                	jmp    ffff800000108ef1 <alloc_page+0x37a>
ffff800000108ef0:	90                   	nop
ffff800000108ef1:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108ef5:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108ef8:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
ffff800000108efb:	0f 8e 97 fd ff ff    	jle    ffff800000108c98 <alloc_page+0x121>
ffff800000108f01:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108f06:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff800000108f0a:	5b                   	pop    %rbx
ffff800000108f0b:	41 5f                	pop    %r15
ffff800000108f0d:	5d                   	pop    %rbp
ffff800000108f0e:	c3                   	ret    
