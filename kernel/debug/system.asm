
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
ffff800000100169:	e8 0b 47 00 00       	call   ffff800000104879 <color_printk>
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
ffff8000001042f1:	48 ba bb 7c ff ff ff 	movabs $0xffffffffffff7cbb,%rdx
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
ffff8000001043af:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff8000001043e1:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000104413:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff80000010447c:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff8000001044cb:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff8000001044d2:	ff ff ff 
ffff8000001044d5:	49 01 d8             	add    %rbx,%r8
ffff8000001044d8:	41 ff d0             	call   *%r8
ffff8000001044db:	ba 91 00 00 00       	mov    $0x91,%edx
ffff8000001044e0:	be 40 00 00 00       	mov    $0x40,%esi
ffff8000001044e5:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001044ea:	49 89 df             	mov    %rbx,%r15
ffff8000001044ed:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001044f2:	48 b9 ce 95 ff ff ff 	movabs $0xffffffffffff95ce,%rcx
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
ffff800000104585:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
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
ffff80000010460b:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
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
ffff800000104664:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff8000001046b3:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff8000001046e6:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000104718:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff80000010471f:	ff ff ff 
ffff800000104722:	48 01 d9             	add    %rbx,%rcx
ffff800000104725:	ff d1                	call   *%rcx
ffff800000104727:	eb fe                	jmp    ffff800000104727 <Start_Kernel+0x5cd>

ffff800000104729 <Cstrlen>:
ffff800000104729:	f3 0f 1e fa          	endbr64 
ffff80000010472d:	55                   	push   %rbp
ffff80000010472e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104731:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104731 <Cstrlen+0x8>
ffff800000104738:	49 bb 7f ae 00 00 00 	movabs $0xae7f,%r11
ffff80000010473f:	00 00 00 
ffff800000104742:	4c 01 d8             	add    %r11,%rax
ffff800000104745:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104749:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010474d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104751:	eb 05                	jmp    ffff800000104758 <Cstrlen+0x2f>
ffff800000104753:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104758:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010475c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010475f:	84 c0                	test   %al,%al
ffff800000104761:	75 f0                	jne    ffff800000104753 <Cstrlen+0x2a>
ffff800000104763:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104767:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010476b:	5d                   	pop    %rbp
ffff80000010476c:	c3                   	ret    

ffff80000010476d <putchar>:
ffff80000010476d:	f3 0f 1e fa          	endbr64 
ffff800000104771:	55                   	push   %rbp
ffff800000104772:	48 89 e5             	mov    %rsp,%rbp
ffff800000104775:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104775 <putchar+0x8>
ffff80000010477c:	49 bb 3b ae 00 00 00 	movabs $0xae3b,%r11
ffff800000104783:	00 00 00 
ffff800000104786:	4c 01 d8             	add    %r11,%rax
ffff800000104789:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010478d:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104790:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104793:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104796:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010479a:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010479e:	8b 55 10             	mov    0x10(%rbp),%edx
ffff8000001047a1:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff8000001047a4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047ab:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001047b2:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff8000001047b9:	00 
ffff8000001047ba:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001047c1:	00 
ffff8000001047c2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001047c9:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001047cd:	48 63 d2             	movslq %edx,%rdx
ffff8000001047d0:	48 89 d1             	mov    %rdx,%rcx
ffff8000001047d3:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001047d7:	48 ba 30 bf ff ff ff 	movabs $0xffffffffffffbf30,%rdx
ffff8000001047de:	ff ff ff 
ffff8000001047e1:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001047e5:	48 01 c8             	add    %rcx,%rax
ffff8000001047e8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001047ec:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001047f3:	eb 7a                	jmp    ffff80000010486f <putchar+0x102>
ffff8000001047f5:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001047f8:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001047fb:	01 d0                	add    %edx,%eax
ffff8000001047fd:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff800000104801:	48 63 d0             	movslq %eax,%rdx
ffff800000104804:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104807:	48 98                	cltq   
ffff800000104809:	48 01 d0             	add    %rdx,%rax
ffff80000010480c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff800000104813:	00 
ffff800000104814:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104818:	48 01 d0             	add    %rdx,%rax
ffff80000010481b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff80000010481f:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff800000104826:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010482d:	eb 31                	jmp    ffff800000104860 <putchar+0xf3>
ffff80000010482f:	d1 7d e4             	sarl   -0x1c(%rbp)
ffff800000104832:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104836:	0f b6 00             	movzbl (%rax),%eax
ffff800000104839:	0f b6 c0             	movzbl %al,%eax
ffff80000010483c:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff80000010483f:	85 c0                	test   %eax,%eax
ffff800000104841:	74 0b                	je     ffff80000010484e <putchar+0xe1>
ffff800000104843:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104847:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff80000010484a:	89 10                	mov    %edx,(%rax)
ffff80000010484c:	eb 09                	jmp    ffff800000104857 <putchar+0xea>
ffff80000010484e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104852:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104855:	89 10                	mov    %edx,(%rax)
ffff800000104857:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010485c:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104860:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104864:	7e c9                	jle    ffff80000010482f <putchar+0xc2>
ffff800000104866:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010486b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff80000010486f:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104873:	7e 80                	jle    ffff8000001047f5 <putchar+0x88>
ffff800000104875:	90                   	nop
ffff800000104876:	90                   	nop
ffff800000104877:	5d                   	pop    %rbp
ffff800000104878:	c3                   	ret    

ffff800000104879 <color_printk>:
ffff800000104879:	f3 0f 1e fa          	endbr64 
ffff80000010487d:	55                   	push   %rbp
ffff80000010487e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104881:	53                   	push   %rbx
ffff800000104882:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104889:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104889 <color_printk+0x10>
ffff800000104890:	49 bb 27 ad 00 00 00 	movabs $0xad27,%r11
ffff800000104897:	00 00 00 
ffff80000010489a:	4c 01 db             	add    %r11,%rbx
ffff80000010489d:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff8000001048a3:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff8000001048a9:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff8000001048b0:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001048b7:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001048be:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001048c5:	84 c0                	test   %al,%al
ffff8000001048c7:	74 23                	je     ffff8000001048ec <color_printk+0x73>
ffff8000001048c9:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001048d0:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001048d4:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001048d8:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001048dc:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001048e0:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001048e4:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001048e8:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001048ec:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001048f3:	00 00 00 
ffff8000001048f6:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001048fd:	00 00 00 
ffff800000104900:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104907:	00 00 00 
ffff80000010490a:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff800000104911:	00 00 00 
ffff800000104914:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff80000010491b:	00 00 00 
ffff80000010491e:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104922:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff800000104929:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104930:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104937:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff80000010493e:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104945:	48 89 c6             	mov    %rax,%rsi
ffff800000104948:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010494f:	00 00 00 
ffff800000104952:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104956:	48 89 c7             	mov    %rax,%rdi
ffff800000104959:	48 b8 4b 5d ff ff ff 	movabs $0xffffffffffff5d4b,%rax
ffff800000104960:	ff ff ff 
ffff800000104963:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104967:	ff d0                	call   *%rax
ffff800000104969:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff80000010496f:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104976:	00 00 00 
ffff800000104979:	e9 83 04 00 00       	jmp    ffff800000104e01 <color_printk+0x588>
ffff80000010497e:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104985:	7e 0c                	jle    ffff800000104993 <color_printk+0x11a>
ffff800000104987:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010498e:	e9 47 02 00 00       	jmp    ffff800000104bda <color_printk+0x361>
ffff800000104993:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104999:	48 63 d0             	movslq %eax,%rdx
ffff80000010499c:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049a3:	00 00 00 
ffff8000001049a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049aa:	48 01 d0             	add    %rdx,%rax
ffff8000001049ad:	0f b6 00             	movzbl (%rax),%eax
ffff8000001049b0:	3c 0a                	cmp    $0xa,%al
ffff8000001049b2:	75 36                	jne    ffff8000001049ea <color_printk+0x171>
ffff8000001049b4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049bb:	00 00 00 
ffff8000001049be:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001049c2:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001049c5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049cc:	00 00 00 
ffff8000001049cf:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001049d3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049da:	00 00 00 
ffff8000001049dd:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001049e4:	00 
ffff8000001049e5:	e9 6c 03 00 00       	jmp    ffff800000104d56 <color_printk+0x4dd>
ffff8000001049ea:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001049f0:	48 63 d0             	movslq %eax,%rdx
ffff8000001049f3:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001049fa:	00 00 00 
ffff8000001049fd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a01:	48 01 d0             	add    %rdx,%rax
ffff800000104a04:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a07:	3c 08                	cmp    $0x8,%al
ffff800000104a09:	0f 85 78 01 00 00    	jne    ffff800000104b87 <color_printk+0x30e>
ffff800000104a0f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a16:	00 00 00 
ffff800000104a19:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a1d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a20:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a27:	00 00 00 
ffff800000104a2a:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a2e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a35:	00 00 00 
ffff800000104a38:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a3c:	85 c0                	test   %eax,%eax
ffff800000104a3e:	0f 89 b2 00 00 00    	jns    ffff800000104af6 <color_printk+0x27d>
ffff800000104a44:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a4b:	00 00 00 
ffff800000104a4e:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a51:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a58:	00 00 00 
ffff800000104a5b:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a5f:	99                   	cltd   
ffff800000104a60:	f7 fe                	idiv   %esi
ffff800000104a62:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a65:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a6c:	00 00 00 
ffff800000104a6f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104a73:	0f af c2             	imul   %edx,%eax
ffff800000104a76:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a7d:	00 00 00 
ffff800000104a80:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104a84:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a8b:	00 00 00 
ffff800000104a8e:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a92:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104a95:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a9c:	00 00 00 
ffff800000104a9f:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104aa3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104aaa:	00 00 00 
ffff800000104aad:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104ab1:	85 c0                	test   %eax,%eax
ffff800000104ab3:	79 41                	jns    ffff800000104af6 <color_printk+0x27d>
ffff800000104ab5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104abc:	00 00 00 
ffff800000104abf:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104ac3:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104aca:	00 00 00 
ffff800000104acd:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104ad1:	99                   	cltd   
ffff800000104ad2:	f7 ff                	idiv   %edi
ffff800000104ad4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ad7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ade:	00 00 00 
ffff800000104ae1:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104ae5:	0f af c2             	imul   %edx,%eax
ffff800000104ae8:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104aef:	00 00 00 
ffff800000104af2:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff800000104af6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104afd:	00 00 00 
ffff800000104b00:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104b04:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b0b:	00 00 00 
ffff800000104b0e:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b12:	89 d1                	mov    %edx,%ecx
ffff800000104b14:	0f af c8             	imul   %eax,%ecx
ffff800000104b17:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b1e:	00 00 00 
ffff800000104b21:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104b25:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b2c:	00 00 00 
ffff800000104b2f:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104b33:	0f af d0             	imul   %eax,%edx
ffff800000104b36:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b3d:	00 00 00 
ffff800000104b40:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104b43:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b4a:	00 00 00 
ffff800000104b4d:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104b52:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104b59:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104b5f:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104b63:	6a 20                	push   $0x20
ffff800000104b65:	45 89 c1             	mov    %r8d,%r9d
ffff800000104b68:	41 89 f8             	mov    %edi,%r8d
ffff800000104b6b:	48 89 c7             	mov    %rax,%rdi
ffff800000104b6e:	48 b8 bd 51 ff ff ff 	movabs $0xffffffffffff51bd,%rax
ffff800000104b75:	ff ff ff 
ffff800000104b78:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b7c:	ff d0                	call   *%rax
ffff800000104b7e:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104b82:	e9 cf 01 00 00       	jmp    ffff800000104d56 <color_printk+0x4dd>
ffff800000104b87:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104b8d:	48 63 d0             	movslq %eax,%rdx
ffff800000104b90:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104b97:	00 00 00 
ffff800000104b9a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104b9e:	48 01 d0             	add    %rdx,%rax
ffff800000104ba1:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ba4:	3c 09                	cmp    $0x9,%al
ffff800000104ba6:	0f 85 e5 00 00 00    	jne    ffff800000104c91 <color_printk+0x418>
ffff800000104bac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bb3:	00 00 00 
ffff800000104bb6:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104bba:	83 c0 08             	add    $0x8,%eax
ffff800000104bbd:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104bc0:	89 c2                	mov    %eax,%edx
ffff800000104bc2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bc9:	00 00 00 
ffff800000104bcc:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104bd0:	89 d0                	mov    %edx,%eax
ffff800000104bd2:	29 c8                	sub    %ecx,%eax
ffff800000104bd4:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
ffff800000104bda:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff800000104be1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104be8:	00 00 00 
ffff800000104beb:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104bef:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bf6:	00 00 00 
ffff800000104bf9:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104bfd:	89 d1                	mov    %edx,%ecx
ffff800000104bff:	0f af c8             	imul   %eax,%ecx
ffff800000104c02:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c09:	00 00 00 
ffff800000104c0c:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104c10:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c17:	00 00 00 
ffff800000104c1a:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104c1e:	0f af d0             	imul   %eax,%edx
ffff800000104c21:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c28:	00 00 00 
ffff800000104c2b:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104c2e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c35:	00 00 00 
ffff800000104c38:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104c3d:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104c44:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104c4a:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104c4e:	6a 20                	push   $0x20
ffff800000104c50:	45 89 c1             	mov    %r8d,%r9d
ffff800000104c53:	41 89 f8             	mov    %edi,%r8d
ffff800000104c56:	48 89 c7             	mov    %rax,%rdi
ffff800000104c59:	48 b8 bd 51 ff ff ff 	movabs $0xffffffffffff51bd,%rax
ffff800000104c60:	ff ff ff 
ffff800000104c63:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104c67:	ff d0                	call   *%rax
ffff800000104c69:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104c6d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c74:	00 00 00 
ffff800000104c77:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104c7b:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c7e:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c85:	00 00 00 
ffff800000104c88:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104c8c:	e9 c5 00 00 00       	jmp    ffff800000104d56 <color_printk+0x4dd>
ffff800000104c91:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104c97:	48 63 d0             	movslq %eax,%rdx
ffff800000104c9a:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104ca1:	00 00 00 
ffff800000104ca4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ca8:	48 01 d0             	add    %rdx,%rax
ffff800000104cab:	0f b6 00             	movzbl (%rax),%eax
ffff800000104cae:	0f b6 f8             	movzbl %al,%edi
ffff800000104cb1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cb8:	00 00 00 
ffff800000104cbb:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104cbf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cc6:	00 00 00 
ffff800000104cc9:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104ccd:	89 d1                	mov    %edx,%ecx
ffff800000104ccf:	0f af c8             	imul   %eax,%ecx
ffff800000104cd2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cd9:	00 00 00 
ffff800000104cdc:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104ce0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ce7:	00 00 00 
ffff800000104cea:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104cee:	0f af d0             	imul   %eax,%edx
ffff800000104cf1:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104cf8:	00 00 00 
ffff800000104cfb:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104cfe:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d05:	00 00 00 
ffff800000104d08:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104d0d:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104d14:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff800000104d1b:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104d1f:	57                   	push   %rdi
ffff800000104d20:	48 89 c7             	mov    %rax,%rdi
ffff800000104d23:	48 b8 bd 51 ff ff ff 	movabs $0xffffffffffff51bd,%rax
ffff800000104d2a:	ff ff ff 
ffff800000104d2d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104d31:	ff d0                	call   *%rax
ffff800000104d33:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104d37:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d3e:	00 00 00 
ffff800000104d41:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104d45:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d48:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d4f:	00 00 00 
ffff800000104d52:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104d56:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d5d:	00 00 00 
ffff800000104d60:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104d64:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d6b:	00 00 00 
ffff800000104d6e:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104d71:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104d78:	00 00 00 
ffff800000104d7b:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104d7f:	99                   	cltd   
ffff800000104d80:	f7 fe                	idiv   %esi
ffff800000104d82:	39 c1                	cmp    %eax,%ecx
ffff800000104d84:	7c 31                	jl     ffff800000104db7 <color_printk+0x53e>
ffff800000104d86:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d8d:	00 00 00 
ffff800000104d90:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104d94:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104d97:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104d9e:	00 00 00 
ffff800000104da1:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104da5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dac:	00 00 00 
ffff800000104daf:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104db6:	00 
ffff800000104db7:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dbe:	00 00 00 
ffff800000104dc1:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104dc5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104dcc:	00 00 00 
ffff800000104dcf:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104dd3:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104dda:	00 00 00 
ffff800000104ddd:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104de1:	99                   	cltd   
ffff800000104de2:	f7 ff                	idiv   %edi
ffff800000104de4:	39 c1                	cmp    %eax,%ecx
ffff800000104de6:	7c 12                	jl     ffff800000104dfa <color_printk+0x581>
ffff800000104de8:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104def:	00 00 00 
ffff800000104df2:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104df9:	00 
ffff800000104dfa:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104e01:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104e07:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104e0d:	0f 8c 6b fb ff ff    	jl     ffff80000010497e <color_printk+0x105>
ffff800000104e13:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104e1a:	0f 85 5e fb ff ff    	jne    ffff80000010497e <color_printk+0x105>
ffff800000104e20:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104e26:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104e2a:	c9                   	leave  
ffff800000104e2b:	c3                   	ret    

ffff800000104e2c <clear_screen>:
ffff800000104e2c:	f3 0f 1e fa          	endbr64 
ffff800000104e30:	55                   	push   %rbp
ffff800000104e31:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e34:	53                   	push   %rbx
ffff800000104e35:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104e39:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104e39 <clear_screen+0xd>
ffff800000104e40:	49 bb 77 a7 00 00 00 	movabs $0xa777,%r11
ffff800000104e47:	00 00 00 
ffff800000104e4a:	4c 01 db             	add    %r11,%rbx
ffff800000104e4d:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104e50:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104e53:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e5a:	00 00 00 
ffff800000104e5d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104e60:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e67:	00 00 00 
ffff800000104e6a:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104e6e:	99                   	cltd   
ffff800000104e6f:	f7 f9                	idiv   %ecx
ffff800000104e71:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104e74:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104e7b:	00 00 00 
ffff800000104e7e:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104e82:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104e89:	00 00 00 
ffff800000104e8c:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104e90:	99                   	cltd   
ffff800000104e91:	f7 fe                	idiv   %esi
ffff800000104e93:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104e96:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104e9d:	e9 83 00 00 00       	jmp    ffff800000104f25 <clear_screen+0xf9>
ffff800000104ea2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104ea9:	eb 6e                	jmp    ffff800000104f19 <clear_screen+0xed>
ffff800000104eab:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104eb2:	00 00 00 
ffff800000104eb5:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104eb9:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104ebd:	89 c1                	mov    %eax,%ecx
ffff800000104ebf:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ec6:	00 00 00 
ffff800000104ec9:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104ecd:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104ed1:	89 c2                	mov    %eax,%edx
ffff800000104ed3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104eda:	00 00 00 
ffff800000104edd:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104ee0:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ee7:	00 00 00 
ffff800000104eea:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104eef:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104ef3:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104ef6:	6a 20                	push   $0x20
ffff800000104ef8:	45 89 c1             	mov    %r8d,%r9d
ffff800000104efb:	41 89 f8             	mov    %edi,%r8d
ffff800000104efe:	48 89 c7             	mov    %rax,%rdi
ffff800000104f01:	48 b8 bd 51 ff ff ff 	movabs $0xffffffffffff51bd,%rax
ffff800000104f08:	ff ff ff 
ffff800000104f0b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f0f:	ff d0                	call   *%rax
ffff800000104f11:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104f15:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104f19:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104f1c:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104f1f:	7c 8a                	jl     ffff800000104eab <clear_screen+0x7f>
ffff800000104f21:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104f25:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104f28:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104f2b:	0f 8c 71 ff ff ff    	jl     ffff800000104ea2 <clear_screen+0x76>
ffff800000104f31:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f38:	00 00 00 
ffff800000104f3b:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104f42:	00 
ffff800000104f43:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104f4a:	00 00 00 
ffff800000104f4d:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104f54:	00 
ffff800000104f55:	90                   	nop
ffff800000104f56:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104f5a:	c9                   	leave  
ffff800000104f5b:	c3                   	ret    

ffff800000104f5c <skip_atoi2>:
ffff800000104f5c:	f3 0f 1e fa          	endbr64 
ffff800000104f60:	55                   	push   %rbp
ffff800000104f61:	48 89 e5             	mov    %rsp,%rbp
ffff800000104f64:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104f64 <skip_atoi2+0x8>
ffff800000104f6b:	49 bb 4c a6 00 00 00 	movabs $0xa64c,%r11
ffff800000104f72:	00 00 00 
ffff800000104f75:	4c 01 d8             	add    %r11,%rax
ffff800000104f78:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104f7c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104f83:	eb 39                	jmp    ffff800000104fbe <skip_atoi2+0x62>
ffff800000104f85:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f89:	48 8b 00             	mov    (%rax),%rax
ffff800000104f8c:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f8f:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104f92:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f96:	48 8b 00             	mov    (%rax),%rax
ffff800000104f99:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f9d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fa1:	48 89 10             	mov    %rdx,(%rax)
ffff800000104fa4:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104fa7:	89 d0                	mov    %edx,%eax
ffff800000104fa9:	c1 e0 02             	shl    $0x2,%eax
ffff800000104fac:	01 d0                	add    %edx,%eax
ffff800000104fae:	01 c0                	add    %eax,%eax
ffff800000104fb0:	89 c2                	mov    %eax,%edx
ffff800000104fb2:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104fb6:	83 e8 30             	sub    $0x30,%eax
ffff800000104fb9:	01 d0                	add    %edx,%eax
ffff800000104fbb:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104fbe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fc2:	48 8b 00             	mov    (%rax),%rax
ffff800000104fc5:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fc8:	3c 2f                	cmp    $0x2f,%al
ffff800000104fca:	7e 0e                	jle    ffff800000104fda <skip_atoi2+0x7e>
ffff800000104fcc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104fd0:	48 8b 00             	mov    (%rax),%rax
ffff800000104fd3:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fd6:	3c 39                	cmp    $0x39,%al
ffff800000104fd8:	7e ab                	jle    ffff800000104f85 <skip_atoi2+0x29>
ffff800000104fda:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104fdd:	5d                   	pop    %rbp
ffff800000104fde:	c3                   	ret    

ffff800000104fdf <skip_atoi>:
ffff800000104fdf:	f3 0f 1e fa          	endbr64 
ffff800000104fe3:	55                   	push   %rbp
ffff800000104fe4:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fe7:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104fe7 <skip_atoi+0x8>
ffff800000104fee:	49 bb c9 a5 00 00 00 	movabs $0xa5c9,%r11
ffff800000104ff5:	00 00 00 
ffff800000104ff8:	4c 01 d8             	add    %r11,%rax
ffff800000104ffb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104fff:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000105006:	eb 2c                	jmp    ffff800000105034 <skip_atoi+0x55>
ffff800000105008:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010500c:	48 8b 00             	mov    (%rax),%rax
ffff80000010500f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105013:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105017:	48 89 10             	mov    %rdx,(%rax)
ffff80000010501a:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff80000010501d:	89 d0                	mov    %edx,%eax
ffff80000010501f:	c1 e0 02             	shl    $0x2,%eax
ffff800000105022:	01 d0                	add    %edx,%eax
ffff800000105024:	01 c0                	add    %eax,%eax
ffff800000105026:	89 c2                	mov    %eax,%edx
ffff800000105028:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff80000010502c:	83 e8 30             	sub    $0x30,%eax
ffff80000010502f:	01 d0                	add    %edx,%eax
ffff800000105031:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000105034:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105038:	48 8b 00             	mov    (%rax),%rax
ffff80000010503b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010503e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000105041:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000105045:	7e 13                	jle    ffff80000010505a <skip_atoi+0x7b>
ffff800000105047:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010504b:	48 8b 00             	mov    (%rax),%rax
ffff80000010504e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105051:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000105054:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000105058:	7e ae                	jle    ffff800000105008 <skip_atoi+0x29>
ffff80000010505a:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff80000010505d:	5d                   	pop    %rbp
ffff80000010505e:	c3                   	ret    

ffff80000010505f <number>:
ffff80000010505f:	f3 0f 1e fa          	endbr64 
ffff800000105063:	55                   	push   %rbp
ffff800000105064:	48 89 e5             	mov    %rsp,%rbp
ffff800000105067:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105067 <number+0x8>
ffff80000010506e:	49 bb 49 a5 00 00 00 	movabs $0xa549,%r11
ffff800000105075:	00 00 00 
ffff800000105078:	4c 01 d8             	add    %r11,%rax
ffff80000010507b:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff80000010507f:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105083:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000105086:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000105089:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff80000010508d:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000105091:	48 ba d0 9a ff ff ff 	movabs $0xffffffffffff9ad0,%rdx
ffff800000105098:	ff ff ff 
ffff80000010509b:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff80000010509f:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff8000001050a3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff8000001050aa:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff8000001050ad:	83 e2 40             	and    $0x40,%edx
ffff8000001050b0:	85 d2                	test   %edx,%edx
ffff8000001050b2:	74 12                	je     ffff8000001050c6 <number+0x67>
ffff8000001050b4:	48 ba f8 9a ff ff ff 	movabs $0xffffffffffff9af8,%rdx
ffff8000001050bb:	ff ff ff 
ffff8000001050be:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001050c2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001050c6:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050c9:	83 e0 10             	and    $0x10,%eax
ffff8000001050cc:	85 c0                	test   %eax,%eax
ffff8000001050ce:	74 04                	je     ffff8000001050d4 <number+0x75>
ffff8000001050d0:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff8000001050d4:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff8000001050d8:	7e 06                	jle    ffff8000001050e0 <number+0x81>
ffff8000001050da:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff8000001050de:	7e 0a                	jle    ffff8000001050ea <number+0x8b>
ffff8000001050e0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001050e5:	e9 0f 02 00 00       	jmp    ffff8000001052f9 <number+0x29a>
ffff8000001050ea:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001050ed:	83 e0 01             	and    $0x1,%eax
ffff8000001050f0:	85 c0                	test   %eax,%eax
ffff8000001050f2:	74 07                	je     ffff8000001050fb <number+0x9c>
ffff8000001050f4:	b8 30 00 00 00       	mov    $0x30,%eax
ffff8000001050f9:	eb 05                	jmp    ffff800000105100 <number+0xa1>
ffff8000001050fb:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000105100:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000105103:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000105107:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010510a:	83 e0 02             	and    $0x2,%eax
ffff80000010510d:	85 c0                	test   %eax,%eax
ffff80000010510f:	74 11                	je     ffff800000105122 <number+0xc3>
ffff800000105111:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000105116:	79 0a                	jns    ffff800000105122 <number+0xc3>
ffff800000105118:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff80000010511c:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000105120:	eb 1d                	jmp    ffff80000010513f <number+0xe0>
ffff800000105122:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105125:	83 e0 04             	and    $0x4,%eax
ffff800000105128:	85 c0                	test   %eax,%eax
ffff80000010512a:	75 0b                	jne    ffff800000105137 <number+0xd8>
ffff80000010512c:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010512f:	c1 e0 02             	shl    $0x2,%eax
ffff800000105132:	83 e0 20             	and    $0x20,%eax
ffff800000105135:	eb 05                	jmp    ffff80000010513c <number+0xdd>
ffff800000105137:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff80000010513c:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff80000010513f:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000105143:	74 04                	je     ffff800000105149 <number+0xea>
ffff800000105145:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105149:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff80000010514c:	83 e0 20             	and    $0x20,%eax
ffff80000010514f:	85 c0                	test   %eax,%eax
ffff800000105151:	74 16                	je     ffff800000105169 <number+0x10a>
ffff800000105153:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000105157:	75 06                	jne    ffff80000010515f <number+0x100>
ffff800000105159:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff80000010515d:	eb 0a                	jmp    ffff800000105169 <number+0x10a>
ffff80000010515f:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000105163:	75 04                	jne    ffff800000105169 <number+0x10a>
ffff800000105165:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000105169:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff80000010516e:	75 4b                	jne    ffff8000001051bb <number+0x15c>
ffff800000105170:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000105173:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000105176:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000105179:	48 98                	cltq   
ffff80000010517b:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000105180:	eb 40                	jmp    ffff8000001051c2 <number+0x163>
ffff800000105182:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000105185:	48 63 c8             	movslq %eax,%rcx
ffff800000105188:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010518c:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000105191:	48 f7 f1             	div    %rcx
ffff800000105194:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105198:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff80000010519b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff80000010519e:	48 63 d0             	movslq %eax,%rdx
ffff8000001051a1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001051a5:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001051a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051ac:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001051af:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001051b2:	0f b6 11             	movzbl (%rcx),%edx
ffff8000001051b5:	48 98                	cltq   
ffff8000001051b7:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001051bb:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff8000001051c0:	75 c0                	jne    ffff800000105182 <number+0x123>
ffff8000001051c2:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051c5:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff8000001051c8:	7e 06                	jle    ffff8000001051d0 <number+0x171>
ffff8000001051ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001051cd:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff8000001051d0:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff8000001051d3:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff8000001051d6:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff8000001051d9:	83 e0 11             	and    $0x11,%eax
ffff8000001051dc:	85 c0                	test   %eax,%eax
ffff8000001051de:	75 1e                	jne    ffff8000001051fe <number+0x19f>
ffff8000001051e0:	eb 0f                	jmp    ffff8000001051f1 <number+0x192>
ffff8000001051e2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001051e6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051ea:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001051ee:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051f1:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001051f4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051f7:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001051fa:	85 c0                	test   %eax,%eax
ffff8000001051fc:	7f e4                	jg     ffff8000001051e2 <number+0x183>
ffff8000001051fe:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000105202:	74 12                	je     ffff800000105216 <number+0x1b7>
ffff800000105204:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105208:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010520c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105210:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000105214:	88 10                	mov    %dl,(%rax)
ffff800000105216:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105219:	83 e0 20             	and    $0x20,%eax
ffff80000010521c:	85 c0                	test   %eax,%eax
ffff80000010521e:	74 45                	je     ffff800000105265 <number+0x206>
ffff800000105220:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000105224:	75 11                	jne    ffff800000105237 <number+0x1d8>
ffff800000105226:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010522a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010522e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105232:	c6 00 30             	movb   $0x30,(%rax)
ffff800000105235:	eb 2e                	jmp    ffff800000105265 <number+0x206>
ffff800000105237:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff80000010523b:	75 28                	jne    ffff800000105265 <number+0x206>
ffff80000010523d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105241:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105245:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105249:	c6 00 30             	movb   $0x30,(%rax)
ffff80000010524c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000105250:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000105254:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105258:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010525c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000105260:	0f b6 11             	movzbl (%rcx),%edx
ffff800000105263:	88 10                	mov    %dl,(%rax)
ffff800000105265:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000105268:	83 e0 10             	and    $0x10,%eax
ffff80000010526b:	85 c0                	test   %eax,%eax
ffff80000010526d:	75 32                	jne    ffff8000001052a1 <number+0x242>
ffff80000010526f:	eb 12                	jmp    ffff800000105283 <number+0x224>
ffff800000105271:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105275:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105279:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010527d:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000105281:	88 10                	mov    %dl,(%rax)
ffff800000105283:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000105286:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105289:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff80000010528c:	85 c0                	test   %eax,%eax
ffff80000010528e:	7f e1                	jg     ffff800000105271 <number+0x212>
ffff800000105290:	eb 0f                	jmp    ffff8000001052a1 <number+0x242>
ffff800000105292:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000105296:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010529a:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff80000010529e:	c6 00 30             	movb   $0x30,(%rax)
ffff8000001052a1:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff8000001052a4:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052a7:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff8000001052aa:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff8000001052ad:	7c e3                	jl     ffff800000105292 <number+0x233>
ffff8000001052af:	eb 19                	jmp    ffff8000001052ca <number+0x26b>
ffff8000001052b1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052b5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052b9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052bd:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001052c0:	48 63 d2             	movslq %edx,%rdx
ffff8000001052c3:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff8000001052c8:	88 10                	mov    %dl,(%rax)
ffff8000001052ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001052cd:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052d0:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff8000001052d3:	85 c0                	test   %eax,%eax
ffff8000001052d5:	7f da                	jg     ffff8000001052b1 <number+0x252>
ffff8000001052d7:	eb 0f                	jmp    ffff8000001052e8 <number+0x289>
ffff8000001052d9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052dd:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052e1:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff8000001052e5:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052e8:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff8000001052eb:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001052ee:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff8000001052f1:	85 c0                	test   %eax,%eax
ffff8000001052f3:	7f e4                	jg     ffff8000001052d9 <number+0x27a>
ffff8000001052f5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001052f9:	5d                   	pop    %rbp
ffff8000001052fa:	c3                   	ret    

ffff8000001052fb <vsprintf>:
ffff8000001052fb:	f3 0f 1e fa          	endbr64 
ffff8000001052ff:	55                   	push   %rbp
ffff800000105300:	48 89 e5             	mov    %rsp,%rbp
ffff800000105303:	53                   	push   %rbx
ffff800000105304:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000105308:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000105308 <vsprintf+0xd>
ffff80000010530f:	49 bb a8 a2 00 00 00 	movabs $0xa2a8,%r11
ffff800000105316:	00 00 00 
ffff800000105319:	4c 01 db             	add    %r11,%rbx
ffff80000010531c:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000105320:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000105324:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000105328:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010532c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105330:	e9 f8 08 00 00       	jmp    ffff800000105c2d <vsprintf+0x932>
ffff800000105335:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105339:	0f b6 00             	movzbl (%rax),%eax
ffff80000010533c:	3c 25                	cmp    $0x25,%al
ffff80000010533e:	74 1a                	je     ffff80000010535a <vsprintf+0x5f>
ffff800000105340:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105344:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105348:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010534c:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105350:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105353:	88 10                	mov    %dl,(%rax)
ffff800000105355:	e9 c7 08 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff80000010535a:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000105361:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105365:	48 83 c0 01          	add    $0x1,%rax
ffff800000105369:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010536d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105371:	0f b6 00             	movzbl (%rax),%eax
ffff800000105374:	0f be c0             	movsbl %al,%eax
ffff800000105377:	83 e8 20             	sub    $0x20,%eax
ffff80000010537a:	83 f8 10             	cmp    $0x10,%eax
ffff80000010537d:	77 40                	ja     ffff8000001053bf <vsprintf+0xc4>
ffff80000010537f:	89 c0                	mov    %eax,%eax
ffff800000105381:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105388:	00 
ffff800000105389:	48 8d 05 40 3d 00 00 	lea    0x3d40(%rip),%rax        # ffff8000001090d0 <.LC1+0x28>
ffff800000105390:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105394:	48 8d 15 35 3d 00 00 	lea    0x3d35(%rip),%rdx        # ffff8000001090d0 <.LC1+0x28>
ffff80000010539b:	48 01 d0             	add    %rdx,%rax
ffff80000010539e:	3e ff e0             	notrack jmp *%rax
ffff8000001053a1:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff8000001053a5:	eb ba                	jmp    ffff800000105361 <vsprintf+0x66>
ffff8000001053a7:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff8000001053ab:	eb b4                	jmp    ffff800000105361 <vsprintf+0x66>
ffff8000001053ad:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff8000001053b1:	eb ae                	jmp    ffff800000105361 <vsprintf+0x66>
ffff8000001053b3:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff8000001053b7:	eb a8                	jmp    ffff800000105361 <vsprintf+0x66>
ffff8000001053b9:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff8000001053bd:	eb a2                	jmp    ffff800000105361 <vsprintf+0x66>
ffff8000001053bf:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff8000001053c6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053ca:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053cd:	3c 2f                	cmp    $0x2f,%al
ffff8000001053cf:	7e 27                	jle    ffff8000001053f8 <vsprintf+0xfd>
ffff8000001053d1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053d5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053d8:	3c 39                	cmp    $0x39,%al
ffff8000001053da:	7f 1c                	jg     ffff8000001053f8 <vsprintf+0xfd>
ffff8000001053dc:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001053e0:	48 89 c7             	mov    %rax,%rdi
ffff8000001053e3:	48 b8 2f 5a ff ff ff 	movabs $0xffffffffffff5a2f,%rax
ffff8000001053ea:	ff ff ff 
ffff8000001053ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053f1:	ff d0                	call   *%rax
ffff8000001053f3:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001053f6:	eb 6c                	jmp    ffff800000105464 <vsprintf+0x169>
ffff8000001053f8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001053fc:	0f b6 00             	movzbl (%rax),%eax
ffff8000001053ff:	3c 2a                	cmp    $0x2a,%al
ffff800000105401:	75 61                	jne    ffff800000105464 <vsprintf+0x169>
ffff800000105403:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105407:	48 83 c0 01          	add    $0x1,%rax
ffff80000010540b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010540f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105413:	8b 00                	mov    (%rax),%eax
ffff800000105415:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105418:	77 24                	ja     ffff80000010543e <vsprintf+0x143>
ffff80000010541a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010541e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105422:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105426:	8b 00                	mov    (%rax),%eax
ffff800000105428:	89 c0                	mov    %eax,%eax
ffff80000010542a:	48 01 d0             	add    %rdx,%rax
ffff80000010542d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105431:	8b 12                	mov    (%rdx),%edx
ffff800000105433:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105436:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010543a:	89 0a                	mov    %ecx,(%rdx)
ffff80000010543c:	eb 14                	jmp    ffff800000105452 <vsprintf+0x157>
ffff80000010543e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105442:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105446:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010544a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010544e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105452:	8b 00                	mov    (%rax),%eax
ffff800000105454:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000105457:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010545b:	79 07                	jns    ffff800000105464 <vsprintf+0x169>
ffff80000010545d:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000105460:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105464:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff80000010546b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010546f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105472:	3c 2e                	cmp    $0x2e,%al
ffff800000105474:	0f 85 aa 00 00 00    	jne    ffff800000105524 <vsprintf+0x229>
ffff80000010547a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010547e:	48 83 c0 01          	add    $0x1,%rax
ffff800000105482:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105486:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010548a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010548d:	3c 2f                	cmp    $0x2f,%al
ffff80000010548f:	7e 27                	jle    ffff8000001054b8 <vsprintf+0x1bd>
ffff800000105491:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105495:	0f b6 00             	movzbl (%rax),%eax
ffff800000105498:	3c 39                	cmp    $0x39,%al
ffff80000010549a:	7f 1c                	jg     ffff8000001054b8 <vsprintf+0x1bd>
ffff80000010549c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001054a0:	48 89 c7             	mov    %rax,%rdi
ffff8000001054a3:	48 b8 2f 5a ff ff ff 	movabs $0xffffffffffff5a2f,%rax
ffff8000001054aa:	ff ff ff 
ffff8000001054ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054b1:	ff d0                	call   *%rax
ffff8000001054b3:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001054b6:	eb 5f                	jmp    ffff800000105517 <vsprintf+0x21c>
ffff8000001054b8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054bc:	0f b6 00             	movzbl (%rax),%eax
ffff8000001054bf:	3c 2a                	cmp    $0x2a,%al
ffff8000001054c1:	75 54                	jne    ffff800000105517 <vsprintf+0x21c>
ffff8000001054c3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001054c7:	48 83 c0 01          	add    $0x1,%rax
ffff8000001054cb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001054cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d3:	8b 00                	mov    (%rax),%eax
ffff8000001054d5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054d8:	77 24                	ja     ffff8000001054fe <vsprintf+0x203>
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
ffff8000001054fc:	eb 14                	jmp    ffff800000105512 <vsprintf+0x217>
ffff8000001054fe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105502:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105506:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010550a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010550e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105512:	8b 00                	mov    (%rax),%eax
ffff800000105514:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105517:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010551b:	79 07                	jns    ffff800000105524 <vsprintf+0x229>
ffff80000010551d:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105524:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff80000010552b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010552f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105532:	3c 68                	cmp    $0x68,%al
ffff800000105534:	74 21                	je     ffff800000105557 <vsprintf+0x25c>
ffff800000105536:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010553a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010553d:	3c 6c                	cmp    $0x6c,%al
ffff80000010553f:	74 16                	je     ffff800000105557 <vsprintf+0x25c>
ffff800000105541:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105545:	0f b6 00             	movzbl (%rax),%eax
ffff800000105548:	3c 4c                	cmp    $0x4c,%al
ffff80000010554a:	74 0b                	je     ffff800000105557 <vsprintf+0x25c>
ffff80000010554c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105550:	0f b6 00             	movzbl (%rax),%eax
ffff800000105553:	3c 7a                	cmp    $0x7a,%al
ffff800000105555:	75 19                	jne    ffff800000105570 <vsprintf+0x275>
ffff800000105557:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010555b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010555e:	0f be c0             	movsbl %al,%eax
ffff800000105561:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105564:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105568:	48 83 c0 01          	add    $0x1,%rax
ffff80000010556c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105570:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105574:	0f b6 00             	movzbl (%rax),%eax
ffff800000105577:	0f be c0             	movsbl %al,%eax
ffff80000010557a:	83 e8 25             	sub    $0x25,%eax
ffff80000010557d:	83 f8 53             	cmp    $0x53,%eax
ffff800000105580:	0f 87 5d 06 00 00    	ja     ffff800000105be3 <vsprintf+0x8e8>
ffff800000105586:	89 c0                	mov    %eax,%eax
ffff800000105588:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010558f:	00 
ffff800000105590:	48 8d 05 c1 3b 00 00 	lea    0x3bc1(%rip),%rax        # ffff800000109158 <.LC1+0xb0>
ffff800000105597:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010559b:	48 8d 15 b6 3b 00 00 	lea    0x3bb6(%rip),%rdx        # ffff800000109158 <.LC1+0xb0>
ffff8000001055a2:	48 01 d0             	add    %rdx,%rax
ffff8000001055a5:	3e ff e0             	notrack jmp *%rax
ffff8000001055a8:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001055ab:	83 e0 10             	and    $0x10,%eax
ffff8000001055ae:	85 c0                	test   %eax,%eax
ffff8000001055b0:	75 1b                	jne    ffff8000001055cd <vsprintf+0x2d2>
ffff8000001055b2:	eb 0f                	jmp    ffff8000001055c3 <vsprintf+0x2c8>
ffff8000001055b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055b8:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001055bc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001055c0:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001055c3:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001055c7:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001055cb:	7f e7                	jg     ffff8000001055b4 <vsprintf+0x2b9>
ffff8000001055cd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d1:	8b 00                	mov    (%rax),%eax
ffff8000001055d3:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055d6:	77 24                	ja     ffff8000001055fc <vsprintf+0x301>
ffff8000001055d8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055dc:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055e0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055e4:	8b 00                	mov    (%rax),%eax
ffff8000001055e6:	89 c0                	mov    %eax,%eax
ffff8000001055e8:	48 01 d0             	add    %rdx,%rax
ffff8000001055eb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ef:	8b 12                	mov    (%rdx),%edx
ffff8000001055f1:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055f4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055f8:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055fa:	eb 14                	jmp    ffff800000105610 <vsprintf+0x315>
ffff8000001055fc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105600:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105604:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105608:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010560c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105610:	8b 08                	mov    (%rax),%ecx
ffff800000105612:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105616:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010561a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010561e:	89 ca                	mov    %ecx,%edx
ffff800000105620:	88 10                	mov    %dl,(%rax)
ffff800000105622:	eb 0f                	jmp    ffff800000105633 <vsprintf+0x338>
ffff800000105624:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105628:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010562c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105630:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105633:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105637:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010563b:	7f e7                	jg     ffff800000105624 <vsprintf+0x329>
ffff80000010563d:	e9 df 05 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105642:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105646:	8b 00                	mov    (%rax),%eax
ffff800000105648:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010564b:	77 24                	ja     ffff800000105671 <vsprintf+0x376>
ffff80000010564d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105651:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105655:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105659:	8b 00                	mov    (%rax),%eax
ffff80000010565b:	89 c0                	mov    %eax,%eax
ffff80000010565d:	48 01 d0             	add    %rdx,%rax
ffff800000105660:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105664:	8b 12                	mov    (%rdx),%edx
ffff800000105666:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105669:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010566d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010566f:	eb 14                	jmp    ffff800000105685 <vsprintf+0x38a>
ffff800000105671:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105675:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105679:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010567d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105681:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105685:	48 8b 00             	mov    (%rax),%rax
ffff800000105688:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010568c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105691:	75 08                	jne    ffff80000010569b <vsprintf+0x3a0>
ffff800000105693:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010569a:	00 
ffff80000010569b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010569f:	48 89 c7             	mov    %rax,%rdi
ffff8000001056a2:	48 b8 79 51 ff ff ff 	movabs $0xffffffffffff5179,%rax
ffff8000001056a9:	ff ff ff 
ffff8000001056ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056b0:	ff d0                	call   *%rax
ffff8000001056b2:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056b5:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001056b9:	79 08                	jns    ffff8000001056c3 <vsprintf+0x3c8>
ffff8000001056bb:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056be:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001056c1:	eb 0e                	jmp    ffff8000001056d1 <vsprintf+0x3d6>
ffff8000001056c3:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001056c6:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001056c9:	7e 06                	jle    ffff8000001056d1 <vsprintf+0x3d6>
ffff8000001056cb:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001056ce:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001056d1:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001056d4:	83 e0 10             	and    $0x10,%eax
ffff8000001056d7:	85 c0                	test   %eax,%eax
ffff8000001056d9:	75 1f                	jne    ffff8000001056fa <vsprintf+0x3ff>
ffff8000001056db:	eb 0f                	jmp    ffff8000001056ec <vsprintf+0x3f1>
ffff8000001056dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056e1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056e5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056e9:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001056ec:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001056ef:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001056f2:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001056f5:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001056f8:	7c e3                	jl     ffff8000001056dd <vsprintf+0x3e2>
ffff8000001056fa:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff800000105701:	eb 21                	jmp    ffff800000105724 <vsprintf+0x429>
ffff800000105703:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105707:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff80000010570b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010570f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105713:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105717:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010571b:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010571e:	88 10                	mov    %dl,(%rax)
ffff800000105720:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105724:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105727:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff80000010572a:	7c d7                	jl     ffff800000105703 <vsprintf+0x408>
ffff80000010572c:	eb 0f                	jmp    ffff80000010573d <vsprintf+0x442>
ffff80000010572e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105732:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105736:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010573a:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010573d:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105740:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105743:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105746:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105749:	7c e3                	jl     ffff80000010572e <vsprintf+0x433>
ffff80000010574b:	e9 d1 04 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105750:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105754:	0f 85 82 00 00 00    	jne    ffff8000001057dc <vsprintf+0x4e1>
ffff80000010575a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010575e:	8b 00                	mov    (%rax),%eax
ffff800000105760:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105763:	77 24                	ja     ffff800000105789 <vsprintf+0x48e>
ffff800000105765:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105769:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010576d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105771:	8b 00                	mov    (%rax),%eax
ffff800000105773:	89 c0                	mov    %eax,%eax
ffff800000105775:	48 01 d0             	add    %rdx,%rax
ffff800000105778:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010577c:	8b 12                	mov    (%rdx),%edx
ffff80000010577e:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105781:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105785:	89 0a                	mov    %ecx,(%rdx)
ffff800000105787:	eb 14                	jmp    ffff80000010579d <vsprintf+0x4a2>
ffff800000105789:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010578d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105791:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105795:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105799:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010579d:	48 8b 00             	mov    (%rax),%rax
ffff8000001057a0:	48 89 c7             	mov    %rax,%rdi
ffff8000001057a3:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001057a6:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057a9:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057b0:	41 89 f1             	mov    %esi,%r9d
ffff8000001057b3:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057b6:	89 d1                	mov    %edx,%ecx
ffff8000001057b8:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001057bd:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057c0:	48 89 c7             	mov    %rax,%rdi
ffff8000001057c3:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff8000001057ca:	ff ff ff 
ffff8000001057cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057d1:	ff d0                	call   *%rax
ffff8000001057d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057d7:	e9 45 04 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff8000001057dc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e0:	8b 00                	mov    (%rax),%eax
ffff8000001057e2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057e5:	77 24                	ja     ffff80000010580b <vsprintf+0x510>
ffff8000001057e7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057eb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057ef:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057f3:	8b 00                	mov    (%rax),%eax
ffff8000001057f5:	89 c0                	mov    %eax,%eax
ffff8000001057f7:	48 01 d0             	add    %rdx,%rax
ffff8000001057fa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057fe:	8b 12                	mov    (%rdx),%edx
ffff800000105800:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105803:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105807:	89 0a                	mov    %ecx,(%rdx)
ffff800000105809:	eb 14                	jmp    ffff80000010581f <vsprintf+0x524>
ffff80000010580b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010580f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105813:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105817:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010581b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010581f:	8b 00                	mov    (%rax),%eax
ffff800000105821:	89 c7                	mov    %eax,%edi
ffff800000105823:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105826:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105829:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010582c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105830:	41 89 f1             	mov    %esi,%r9d
ffff800000105833:	41 89 c8             	mov    %ecx,%r8d
ffff800000105836:	89 d1                	mov    %edx,%ecx
ffff800000105838:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010583d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105840:	48 89 c7             	mov    %rax,%rdi
ffff800000105843:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff80000010584a:	ff ff ff 
ffff80000010584d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105851:	ff d0                	call   *%rax
ffff800000105853:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105857:	e9 c5 03 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff80000010585c:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff800000105860:	75 0b                	jne    ffff80000010586d <vsprintf+0x572>
ffff800000105862:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105869:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010586d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105871:	8b 00                	mov    (%rax),%eax
ffff800000105873:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105876:	77 24                	ja     ffff80000010589c <vsprintf+0x5a1>
ffff800000105878:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010587c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105880:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105884:	8b 00                	mov    (%rax),%eax
ffff800000105886:	89 c0                	mov    %eax,%eax
ffff800000105888:	48 01 d0             	add    %rdx,%rax
ffff80000010588b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010588f:	8b 12                	mov    (%rdx),%edx
ffff800000105891:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105894:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105898:	89 0a                	mov    %ecx,(%rdx)
ffff80000010589a:	eb 14                	jmp    ffff8000001058b0 <vsprintf+0x5b5>
ffff80000010589c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001058a0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001058a4:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001058a8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001058ac:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001058b0:	48 8b 00             	mov    (%rax),%rax
ffff8000001058b3:	48 89 c7             	mov    %rax,%rdi
ffff8000001058b6:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001058b9:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001058bc:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001058bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c3:	41 89 f1             	mov    %esi,%r9d
ffff8000001058c6:	41 89 c8             	mov    %ecx,%r8d
ffff8000001058c9:	89 d1                	mov    %edx,%ecx
ffff8000001058cb:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001058d0:	48 89 fe             	mov    %rdi,%rsi
ffff8000001058d3:	48 89 c7             	mov    %rax,%rdi
ffff8000001058d6:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff8000001058dd:	ff ff ff 
ffff8000001058e0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058e4:	ff d0                	call   *%rax
ffff8000001058e6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058ea:	e9 32 03 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff8000001058ef:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001058f3:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001058f7:	0f 85 82 00 00 00    	jne    ffff80000010597f <vsprintf+0x684>
ffff8000001058fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105901:	8b 00                	mov    (%rax),%eax
ffff800000105903:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105906:	77 24                	ja     ffff80000010592c <vsprintf+0x631>
ffff800000105908:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010590c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105910:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105914:	8b 00                	mov    (%rax),%eax
ffff800000105916:	89 c0                	mov    %eax,%eax
ffff800000105918:	48 01 d0             	add    %rdx,%rax
ffff80000010591b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010591f:	8b 12                	mov    (%rdx),%edx
ffff800000105921:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105924:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105928:	89 0a                	mov    %ecx,(%rdx)
ffff80000010592a:	eb 14                	jmp    ffff800000105940 <vsprintf+0x645>
ffff80000010592c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105930:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105934:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105938:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010593c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105940:	48 8b 00             	mov    (%rax),%rax
ffff800000105943:	48 89 c7             	mov    %rax,%rdi
ffff800000105946:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105949:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010594c:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010594f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105953:	41 89 f1             	mov    %esi,%r9d
ffff800000105956:	41 89 c8             	mov    %ecx,%r8d
ffff800000105959:	89 d1                	mov    %edx,%ecx
ffff80000010595b:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105960:	48 89 fe             	mov    %rdi,%rsi
ffff800000105963:	48 89 c7             	mov    %rax,%rdi
ffff800000105966:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff80000010596d:	ff ff ff 
ffff800000105970:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105974:	ff d0                	call   *%rax
ffff800000105976:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010597a:	e9 a2 02 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff80000010597f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105983:	8b 00                	mov    (%rax),%eax
ffff800000105985:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105988:	77 24                	ja     ffff8000001059ae <vsprintf+0x6b3>
ffff80000010598a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010598e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105992:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105996:	8b 00                	mov    (%rax),%eax
ffff800000105998:	89 c0                	mov    %eax,%eax
ffff80000010599a:	48 01 d0             	add    %rdx,%rax
ffff80000010599d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059a1:	8b 12                	mov    (%rdx),%edx
ffff8000001059a3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001059a6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059aa:	89 0a                	mov    %ecx,(%rdx)
ffff8000001059ac:	eb 14                	jmp    ffff8000001059c2 <vsprintf+0x6c7>
ffff8000001059ae:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001059b2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001059b6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001059ba:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001059be:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001059c2:	8b 00                	mov    (%rax),%eax
ffff8000001059c4:	89 c7                	mov    %eax,%edi
ffff8000001059c6:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001059c9:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001059cc:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001059cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059d3:	41 89 f1             	mov    %esi,%r9d
ffff8000001059d6:	41 89 c8             	mov    %ecx,%r8d
ffff8000001059d9:	89 d1                	mov    %edx,%ecx
ffff8000001059db:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001059e0:	48 89 fe             	mov    %rdi,%rsi
ffff8000001059e3:	48 89 c7             	mov    %rax,%rdi
ffff8000001059e6:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff8000001059ed:	ff ff ff 
ffff8000001059f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059f4:	ff d0                	call   *%rax
ffff8000001059f6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001059fa:	e9 22 02 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff8000001059ff:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff800000105a03:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105a07:	0f 85 82 00 00 00    	jne    ffff800000105a8f <vsprintf+0x794>
ffff800000105a0d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a11:	8b 00                	mov    (%rax),%eax
ffff800000105a13:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a16:	77 24                	ja     ffff800000105a3c <vsprintf+0x741>
ffff800000105a18:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a1c:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105a20:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a24:	8b 00                	mov    (%rax),%eax
ffff800000105a26:	89 c0                	mov    %eax,%eax
ffff800000105a28:	48 01 d0             	add    %rdx,%rax
ffff800000105a2b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a2f:	8b 12                	mov    (%rdx),%edx
ffff800000105a31:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105a34:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a38:	89 0a                	mov    %ecx,(%rdx)
ffff800000105a3a:	eb 14                	jmp    ffff800000105a50 <vsprintf+0x755>
ffff800000105a3c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a40:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105a44:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105a48:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105a4c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105a50:	48 8b 00             	mov    (%rax),%rax
ffff800000105a53:	48 89 c7             	mov    %rax,%rdi
ffff800000105a56:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105a59:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105a5c:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105a5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a63:	41 89 f1             	mov    %esi,%r9d
ffff800000105a66:	41 89 c8             	mov    %ecx,%r8d
ffff800000105a69:	89 d1                	mov    %edx,%ecx
ffff800000105a6b:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105a70:	48 89 fe             	mov    %rdi,%rsi
ffff800000105a73:	48 89 c7             	mov    %rax,%rdi
ffff800000105a76:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff800000105a7d:	ff ff ff 
ffff800000105a80:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a84:	ff d0                	call   *%rax
ffff800000105a86:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105a8a:	e9 92 01 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105a8f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a93:	8b 00                	mov    (%rax),%eax
ffff800000105a95:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105a98:	77 24                	ja     ffff800000105abe <vsprintf+0x7c3>
ffff800000105a9a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105a9e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105aa2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105aa6:	8b 00                	mov    (%rax),%eax
ffff800000105aa8:	89 c0                	mov    %eax,%eax
ffff800000105aaa:	48 01 d0             	add    %rdx,%rax
ffff800000105aad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ab1:	8b 12                	mov    (%rdx),%edx
ffff800000105ab3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105ab6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105aba:	89 0a                	mov    %ecx,(%rdx)
ffff800000105abc:	eb 14                	jmp    ffff800000105ad2 <vsprintf+0x7d7>
ffff800000105abe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105ac2:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105ac6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105aca:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ace:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105ad2:	8b 00                	mov    (%rax),%eax
ffff800000105ad4:	89 c7                	mov    %eax,%edi
ffff800000105ad6:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105ad9:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105adc:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105adf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ae3:	41 89 f1             	mov    %esi,%r9d
ffff800000105ae6:	41 89 c8             	mov    %ecx,%r8d
ffff800000105ae9:	89 d1                	mov    %edx,%ecx
ffff800000105aeb:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105af0:	48 89 fe             	mov    %rdi,%rsi
ffff800000105af3:	48 89 c7             	mov    %rax,%rdi
ffff800000105af6:	48 b8 af 5a ff ff ff 	movabs $0xffffffffffff5aaf,%rax
ffff800000105afd:	ff ff ff 
ffff800000105b00:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b04:	ff d0                	call   *%rax
ffff800000105b06:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b0a:	e9 12 01 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105b0f:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105b13:	75 61                	jne    ffff800000105b76 <vsprintf+0x87b>
ffff800000105b15:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b19:	8b 00                	mov    (%rax),%eax
ffff800000105b1b:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b1e:	77 24                	ja     ffff800000105b44 <vsprintf+0x849>
ffff800000105b20:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b24:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b28:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b2c:	8b 00                	mov    (%rax),%eax
ffff800000105b2e:	89 c0                	mov    %eax,%eax
ffff800000105b30:	48 01 d0             	add    %rdx,%rax
ffff800000105b33:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b37:	8b 12                	mov    (%rdx),%edx
ffff800000105b39:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b3c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b40:	89 0a                	mov    %ecx,(%rdx)
ffff800000105b42:	eb 14                	jmp    ffff800000105b58 <vsprintf+0x85d>
ffff800000105b44:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b48:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105b4c:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105b50:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b54:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105b58:	48 8b 00             	mov    (%rax),%rax
ffff800000105b5b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105b5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b63:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105b67:	48 89 c2             	mov    %rax,%rdx
ffff800000105b6a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105b6e:	48 89 10             	mov    %rdx,(%rax)
ffff800000105b71:	e9 ab 00 00 00       	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105b76:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b7a:	8b 00                	mov    (%rax),%eax
ffff800000105b7c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105b7f:	77 24                	ja     ffff800000105ba5 <vsprintf+0x8aa>
ffff800000105b81:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b85:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105b89:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105b8d:	8b 00                	mov    (%rax),%eax
ffff800000105b8f:	89 c0                	mov    %eax,%eax
ffff800000105b91:	48 01 d0             	add    %rdx,%rax
ffff800000105b94:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105b98:	8b 12                	mov    (%rdx),%edx
ffff800000105b9a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105b9d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105ba1:	89 0a                	mov    %ecx,(%rdx)
ffff800000105ba3:	eb 14                	jmp    ffff800000105bb9 <vsprintf+0x8be>
ffff800000105ba5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105ba9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105bad:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105bb1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105bb5:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105bb9:	48 8b 00             	mov    (%rax),%rax
ffff800000105bbc:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105bc0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bc4:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105bc8:	89 c2                	mov    %eax,%edx
ffff800000105bca:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105bce:	89 10                	mov    %edx,(%rax)
ffff800000105bd0:	eb 4f                	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105bd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bd6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105bda:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bde:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105be1:	eb 3e                	jmp    ffff800000105c21 <vsprintf+0x926>
ffff800000105be3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105be7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105beb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105bef:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105bf2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105bf6:	0f b6 00             	movzbl (%rax),%eax
ffff800000105bf9:	84 c0                	test   %al,%al
ffff800000105bfb:	74 17                	je     ffff800000105c14 <vsprintf+0x919>
ffff800000105bfd:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105c01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c05:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105c09:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105c0d:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105c10:	88 10                	mov    %dl,(%rax)
ffff800000105c12:	eb 0c                	jmp    ffff800000105c20 <vsprintf+0x925>
ffff800000105c14:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c18:	48 83 e8 01          	sub    $0x1,%rax
ffff800000105c1c:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c20:	90                   	nop
ffff800000105c21:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c25:	48 83 c0 01          	add    $0x1,%rax
ffff800000105c29:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105c2d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105c31:	0f b6 00             	movzbl (%rax),%eax
ffff800000105c34:	84 c0                	test   %al,%al
ffff800000105c36:	0f 85 f9 f6 ff ff    	jne    ffff800000105335 <vsprintf+0x3a>
ffff800000105c3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c40:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105c43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c47:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105c4b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105c4f:	c9                   	leave  
ffff800000105c50:	c3                   	ret    

ffff800000105c51 <set_intr_gate>:
ffff800000105c51:	f3 0f 1e fa          	endbr64 
ffff800000105c55:	55                   	push   %rbp
ffff800000105c56:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c59:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105c59 <set_intr_gate+0x8>
ffff800000105c60:	49 bb 57 99 00 00 00 	movabs $0x9957,%r11
ffff800000105c67:	00 00 00 
ffff800000105c6a:	4c 01 d8             	add    %r11,%rax
ffff800000105c6d:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105c70:	89 f1                	mov    %esi,%ecx
ffff800000105c72:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105c76:	89 ca                	mov    %ecx,%edx
ffff800000105c78:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105c7b:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c7e:	48 89 d1             	mov    %rdx,%rcx
ffff800000105c81:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105c85:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105c8c:	ff ff ff 
ffff800000105c8f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c93:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105c97:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105c9a:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105c9e:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105ca2:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105ca9:	ff ff ff 
ffff800000105cac:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105cb0:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105cb4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105cb8:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105cbe:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105cc2:	48 89 c2             	mov    %rax,%rdx
ffff800000105cc5:	44 89 c0             	mov    %r8d,%eax
ffff800000105cc8:	66 89 d0             	mov    %dx,%ax
ffff800000105ccb:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105ccf:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105cd6:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105cda:	48 01 c8             	add    %rcx,%rax
ffff800000105cdd:	48 31 c9             	xor    %rcx,%rcx
ffff800000105ce0:	89 d1                	mov    %edx,%ecx
ffff800000105ce2:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105ce6:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105cea:	48 01 c8             	add    %rcx,%rax
ffff800000105ced:	48 89 06             	mov    %rax,(%rsi)
ffff800000105cf0:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105cf4:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105cf7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105cfb:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105cff:	90                   	nop
ffff800000105d00:	5d                   	pop    %rbp
ffff800000105d01:	c3                   	ret    

ffff800000105d02 <set_trap_gate>:
ffff800000105d02:	f3 0f 1e fa          	endbr64 
ffff800000105d06:	55                   	push   %rbp
ffff800000105d07:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d0a:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105d0a <set_trap_gate+0x8>
ffff800000105d11:	49 bb a6 98 00 00 00 	movabs $0x98a6,%r11
ffff800000105d18:	00 00 00 
ffff800000105d1b:	4c 01 d8             	add    %r11,%rax
ffff800000105d1e:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105d21:	89 f1                	mov    %esi,%ecx
ffff800000105d23:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105d27:	89 ca                	mov    %ecx,%edx
ffff800000105d29:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105d2c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d2f:	48 89 d1             	mov    %rdx,%rcx
ffff800000105d32:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105d36:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d3d:	ff ff ff 
ffff800000105d40:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105d44:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105d48:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105d4b:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105d4f:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105d53:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105d5a:	ff ff ff 
ffff800000105d5d:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105d61:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105d65:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105d69:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105d6f:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105d73:	48 89 c2             	mov    %rax,%rdx
ffff800000105d76:	44 89 c0             	mov    %r8d,%eax
ffff800000105d79:	66 89 d0             	mov    %dx,%ax
ffff800000105d7c:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105d80:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105d87:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105d8b:	48 01 c8             	add    %rcx,%rax
ffff800000105d8e:	48 31 c9             	xor    %rcx,%rcx
ffff800000105d91:	89 d1                	mov    %edx,%ecx
ffff800000105d93:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105d97:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105d9b:	48 01 c8             	add    %rcx,%rax
ffff800000105d9e:	48 89 06             	mov    %rax,(%rsi)
ffff800000105da1:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105da5:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105da8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105dac:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105db0:	90                   	nop
ffff800000105db1:	5d                   	pop    %rbp
ffff800000105db2:	c3                   	ret    

ffff800000105db3 <set_system_gate>:
ffff800000105db3:	f3 0f 1e fa          	endbr64 
ffff800000105db7:	55                   	push   %rbp
ffff800000105db8:	48 89 e5             	mov    %rsp,%rbp
ffff800000105dbb:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105dbb <set_system_gate+0x8>
ffff800000105dc2:	49 bb f5 97 00 00 00 	movabs $0x97f5,%r11
ffff800000105dc9:	00 00 00 
ffff800000105dcc:	4c 01 d8             	add    %r11,%rax
ffff800000105dcf:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105dd2:	89 f1                	mov    %esi,%ecx
ffff800000105dd4:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105dd8:	89 ca                	mov    %ecx,%edx
ffff800000105dda:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105ddd:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105de0:	48 89 d1             	mov    %rdx,%rcx
ffff800000105de3:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105de7:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105dee:	ff ff ff 
ffff800000105df1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105df5:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105df9:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105dfc:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105e00:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105e04:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105e0b:	ff ff ff 
ffff800000105e0e:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105e12:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105e16:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105e1a:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105e20:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105e24:	48 89 c2             	mov    %rax,%rdx
ffff800000105e27:	44 89 c0             	mov    %r8d,%eax
ffff800000105e2a:	66 89 d0             	mov    %dx,%ax
ffff800000105e2d:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105e31:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105e38:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105e3c:	48 01 c8             	add    %rcx,%rax
ffff800000105e3f:	48 31 c9             	xor    %rcx,%rcx
ffff800000105e42:	89 d1                	mov    %edx,%ecx
ffff800000105e44:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105e48:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105e4c:	48 01 c8             	add    %rcx,%rax
ffff800000105e4f:	48 89 06             	mov    %rax,(%rsi)
ffff800000105e52:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105e56:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105e59:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105e5d:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105e61:	90                   	nop
ffff800000105e62:	5d                   	pop    %rbp
ffff800000105e63:	c3                   	ret    
ffff800000105e64:	f3 0f 1e fa          	endbr64 
ffff800000105e68:	55                   	push   %rbp
ffff800000105e69:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e6c:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105e6c <set_system_gate+0xb9>
ffff800000105e73:	49 bb 44 97 00 00 00 	movabs $0x9744,%r11
ffff800000105e7a:	00 00 00 
ffff800000105e7d:	4c 01 d8             	add    %r11,%rax
ffff800000105e80:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105e84:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105e88:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105e8c:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105e90:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105e94:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105e98:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105e9f:	ff ff ff 
ffff800000105ea2:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ea6:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105eaa:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105eae:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105eb1:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105eb8:	ff ff ff 
ffff800000105ebb:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ebf:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105ec3:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105ec7:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105eca:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105ed1:	ff ff ff 
ffff800000105ed4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ed8:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105edc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105ee0:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105ee3:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105eea:	ff ff ff 
ffff800000105eed:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ef1:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105ef5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105ef9:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105efc:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f03:	ff ff ff 
ffff800000105f06:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f0a:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105f0e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105f12:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f15:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f1c:	ff ff ff 
ffff800000105f1f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f23:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105f27:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105f2b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f2e:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f35:	ff ff ff 
ffff800000105f38:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f3c:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105f40:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105f44:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f47:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f4e:	ff ff ff 
ffff800000105f51:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f55:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105f59:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105f5d:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f60:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f67:	ff ff ff 
ffff800000105f6a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105f6e:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105f72:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105f76:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105f79:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105f80:	ff ff ff 
ffff800000105f83:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105f87:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105f8b:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105f8f:	48 89 10             	mov    %rdx,(%rax)
ffff800000105f92:	90                   	nop
ffff800000105f93:	5d                   	pop    %rbp
ffff800000105f94:	c3                   	ret    

ffff800000105f95 <do_divide_error>:
ffff800000105f95:	f3 0f 1e fa          	endbr64 
ffff800000105f99:	55                   	push   %rbp
ffff800000105f9a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f9d:	41 57                	push   %r15
ffff800000105f9f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fa3:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fa3 <do_divide_error+0xe>
ffff800000105faa:	49 bb 0d 96 00 00 00 	movabs $0x960d,%r11
ffff800000105fb1:	00 00 00 
ffff800000105fb4:	4d 01 da             	add    %r11,%r10
ffff800000105fb7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fbb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fbf:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fc6:	00 
ffff800000105fc7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fcb:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fd1:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fd5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fd9:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fdc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fe0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fe4:	49 89 c9             	mov    %rcx,%r9
ffff800000105fe7:	49 89 d0             	mov    %rdx,%r8
ffff800000105fea:	48 89 c1             	mov    %rax,%rcx
ffff800000105fed:	48 b8 48 9e ff ff ff 	movabs $0xffffffffffff9e48,%rax
ffff800000105ff4:	ff ff ff 
ffff800000105ff7:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105ffb:	48 89 c2             	mov    %rax,%rdx
ffff800000105ffe:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106003:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106008:	4d 89 d7             	mov    %r10,%r15
ffff80000010600b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106010:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff800000106017:	ff ff ff 
ffff80000010601a:	4d 01 d3             	add    %r10,%r11
ffff80000010601d:	41 ff d3             	call   *%r11
ffff800000106020:	eb fe                	jmp    ffff800000106020 <do_divide_error+0x8b>

ffff800000106022 <do_debug>:
ffff800000106022:	f3 0f 1e fa          	endbr64 
ffff800000106026:	55                   	push   %rbp
ffff800000106027:	48 89 e5             	mov    %rsp,%rbp
ffff80000010602a:	41 57                	push   %r15
ffff80000010602c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106030:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106030 <do_debug+0xe>
ffff800000106037:	49 bb 80 95 00 00 00 	movabs $0x9580,%r11
ffff80000010603e:	00 00 00 
ffff800000106041:	4d 01 da             	add    %r11,%r10
ffff800000106044:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106048:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010604c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106053:	00 
ffff800000106054:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106058:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010605e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106062:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106066:	48 8b 08             	mov    (%rax),%rcx
ffff800000106069:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010606d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106071:	49 89 c9             	mov    %rcx,%r9
ffff800000106074:	49 89 d0             	mov    %rdx,%r8
ffff800000106077:	48 89 c1             	mov    %rax,%rcx
ffff80000010607a:	48 b8 88 9e ff ff ff 	movabs $0xffffffffffff9e88,%rax
ffff800000106081:	ff ff ff 
ffff800000106084:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106088:	48 89 c2             	mov    %rax,%rdx
ffff80000010608b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106090:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106095:	4d 89 d7             	mov    %r10,%r15
ffff800000106098:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010609d:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001060a4:	ff ff ff 
ffff8000001060a7:	4d 01 d3             	add    %r10,%r11
ffff8000001060aa:	41 ff d3             	call   *%r11
ffff8000001060ad:	eb fe                	jmp    ffff8000001060ad <do_debug+0x8b>

ffff8000001060af <do_nmi>:
ffff8000001060af:	f3 0f 1e fa          	endbr64 
ffff8000001060b3:	55                   	push   %rbp
ffff8000001060b4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060b7:	41 57                	push   %r15
ffff8000001060b9:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060bd:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060bd <do_nmi+0xe>
ffff8000001060c4:	49 bb f3 94 00 00 00 	movabs $0x94f3,%r11
ffff8000001060cb:	00 00 00 
ffff8000001060ce:	4d 01 da             	add    %r11,%r10
ffff8000001060d1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060d5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060d9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060e0:	00 
ffff8000001060e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060e5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060eb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060f3:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060f6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060fa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060fe:	49 89 c9             	mov    %rcx,%r9
ffff800000106101:	49 89 d0             	mov    %rdx,%r8
ffff800000106104:	48 89 c1             	mov    %rax,%rcx
ffff800000106107:	48 b8 c0 9e ff ff ff 	movabs $0xffffffffffff9ec0,%rax
ffff80000010610e:	ff ff ff 
ffff800000106111:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106115:	48 89 c2             	mov    %rax,%rdx
ffff800000106118:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010611d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106122:	4d 89 d7             	mov    %r10,%r15
ffff800000106125:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010612a:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff800000106131:	ff ff ff 
ffff800000106134:	4d 01 d3             	add    %r10,%r11
ffff800000106137:	41 ff d3             	call   *%r11
ffff80000010613a:	eb fe                	jmp    ffff80000010613a <do_nmi+0x8b>

ffff80000010613c <do_int3>:
ffff80000010613c:	f3 0f 1e fa          	endbr64 
ffff800000106140:	55                   	push   %rbp
ffff800000106141:	48 89 e5             	mov    %rsp,%rbp
ffff800000106144:	41 57                	push   %r15
ffff800000106146:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010614a:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010614a <do_int3+0xe>
ffff800000106151:	49 bb 66 94 00 00 00 	movabs $0x9466,%r11
ffff800000106158:	00 00 00 
ffff80000010615b:	4d 01 da             	add    %r11,%r10
ffff80000010615e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106162:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106166:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010616d:	00 
ffff80000010616e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106172:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106178:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010617c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106180:	48 8b 08             	mov    (%rax),%rcx
ffff800000106183:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106187:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010618b:	49 89 c9             	mov    %rcx,%r9
ffff80000010618e:	49 89 d0             	mov    %rdx,%r8
ffff800000106191:	48 89 c1             	mov    %rax,%rcx
ffff800000106194:	48 b8 f8 9e ff ff ff 	movabs $0xffffffffffff9ef8,%rax
ffff80000010619b:	ff ff ff 
ffff80000010619e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061a2:	48 89 c2             	mov    %rax,%rdx
ffff8000001061a5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061aa:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061af:	4d 89 d7             	mov    %r10,%r15
ffff8000001061b2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061b7:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001061be:	ff ff ff 
ffff8000001061c1:	4d 01 d3             	add    %r10,%r11
ffff8000001061c4:	41 ff d3             	call   *%r11
ffff8000001061c7:	eb fe                	jmp    ffff8000001061c7 <do_int3+0x8b>

ffff8000001061c9 <do_overflow>:
ffff8000001061c9:	f3 0f 1e fa          	endbr64 
ffff8000001061cd:	55                   	push   %rbp
ffff8000001061ce:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061d1:	41 57                	push   %r15
ffff8000001061d3:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061d7:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001061d7 <do_overflow+0xe>
ffff8000001061de:	49 bb d9 93 00 00 00 	movabs $0x93d9,%r11
ffff8000001061e5:	00 00 00 
ffff8000001061e8:	4d 01 da             	add    %r11,%r10
ffff8000001061eb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001061ef:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001061f3:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001061fa:	00 
ffff8000001061fb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061ff:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106205:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106209:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010620d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106210:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106214:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106218:	49 89 c9             	mov    %rcx,%r9
ffff80000010621b:	49 89 d0             	mov    %rdx,%r8
ffff80000010621e:	48 89 c1             	mov    %rax,%rcx
ffff800000106221:	48 b8 30 9f ff ff ff 	movabs $0xffffffffffff9f30,%rax
ffff800000106228:	ff ff ff 
ffff80000010622b:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010622f:	48 89 c2             	mov    %rax,%rdx
ffff800000106232:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106237:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010623c:	4d 89 d7             	mov    %r10,%r15
ffff80000010623f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106244:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff80000010624b:	ff ff ff 
ffff80000010624e:	4d 01 d3             	add    %r10,%r11
ffff800000106251:	41 ff d3             	call   *%r11
ffff800000106254:	eb fe                	jmp    ffff800000106254 <do_overflow+0x8b>

ffff800000106256 <do_bounds>:
ffff800000106256:	f3 0f 1e fa          	endbr64 
ffff80000010625a:	55                   	push   %rbp
ffff80000010625b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010625e:	41 57                	push   %r15
ffff800000106260:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106264:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106264 <do_bounds+0xe>
ffff80000010626b:	49 bb 4c 93 00 00 00 	movabs $0x934c,%r11
ffff800000106272:	00 00 00 
ffff800000106275:	4d 01 da             	add    %r11,%r10
ffff800000106278:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010627c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106280:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106287:	00 
ffff800000106288:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010628c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106292:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106296:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010629a:	48 8b 08             	mov    (%rax),%rcx
ffff80000010629d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062a1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062a5:	49 89 c9             	mov    %rcx,%r9
ffff8000001062a8:	49 89 d0             	mov    %rdx,%r8
ffff8000001062ab:	48 89 c1             	mov    %rax,%rcx
ffff8000001062ae:	48 b8 70 9f ff ff ff 	movabs $0xffffffffffff9f70,%rax
ffff8000001062b5:	ff ff ff 
ffff8000001062b8:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001062bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001062bf:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062c4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062c9:	4d 89 d7             	mov    %r10,%r15
ffff8000001062cc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062d1:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001062d8:	ff ff ff 
ffff8000001062db:	4d 01 d3             	add    %r10,%r11
ffff8000001062de:	41 ff d3             	call   *%r11
ffff8000001062e1:	eb fe                	jmp    ffff8000001062e1 <do_bounds+0x8b>

ffff8000001062e3 <do_undefined_opcode>:
ffff8000001062e3:	f3 0f 1e fa          	endbr64 
ffff8000001062e7:	55                   	push   %rbp
ffff8000001062e8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062eb:	41 57                	push   %r15
ffff8000001062ed:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062f1:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001062f1 <do_undefined_opcode+0xe>
ffff8000001062f8:	49 bb bf 92 00 00 00 	movabs $0x92bf,%r11
ffff8000001062ff:	00 00 00 
ffff800000106302:	4d 01 da             	add    %r11,%r10
ffff800000106305:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106309:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010630d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106314:	00 
ffff800000106315:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106319:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010631f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106323:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106327:	48 8b 08             	mov    (%rax),%rcx
ffff80000010632a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010632e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106332:	49 89 c9             	mov    %rcx,%r9
ffff800000106335:	49 89 d0             	mov    %rdx,%r8
ffff800000106338:	48 89 c1             	mov    %rax,%rcx
ffff80000010633b:	48 b8 b0 9f ff ff ff 	movabs $0xffffffffffff9fb0,%rax
ffff800000106342:	ff ff ff 
ffff800000106345:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106349:	48 89 c2             	mov    %rax,%rdx
ffff80000010634c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106351:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106356:	4d 89 d7             	mov    %r10,%r15
ffff800000106359:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010635e:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff800000106365:	ff ff ff 
ffff800000106368:	4d 01 d3             	add    %r10,%r11
ffff80000010636b:	41 ff d3             	call   *%r11
ffff80000010636e:	eb fe                	jmp    ffff80000010636e <do_undefined_opcode+0x8b>

ffff800000106370 <do_dev_not_available>:
ffff800000106370:	f3 0f 1e fa          	endbr64 
ffff800000106374:	55                   	push   %rbp
ffff800000106375:	48 89 e5             	mov    %rsp,%rbp
ffff800000106378:	41 57                	push   %r15
ffff80000010637a:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010637e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010637e <do_dev_not_available+0xe>
ffff800000106385:	49 bb 32 92 00 00 00 	movabs $0x9232,%r11
ffff80000010638c:	00 00 00 
ffff80000010638f:	4d 01 da             	add    %r11,%r10
ffff800000106392:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106396:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010639a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001063a1:	00 
ffff8000001063a2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001063a6:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063ac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001063b4:	48 8b 08             	mov    (%rax),%rcx
ffff8000001063b7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063bb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063bf:	49 89 c9             	mov    %rcx,%r9
ffff8000001063c2:	49 89 d0             	mov    %rdx,%r8
ffff8000001063c5:	48 89 c1             	mov    %rax,%rcx
ffff8000001063c8:	48 b8 f8 9f ff ff ff 	movabs $0xffffffffffff9ff8,%rax
ffff8000001063cf:	ff ff ff 
ffff8000001063d2:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001063d6:	48 89 c2             	mov    %rax,%rdx
ffff8000001063d9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063de:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063e3:	4d 89 d7             	mov    %r10,%r15
ffff8000001063e6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063eb:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001063f2:	ff ff ff 
ffff8000001063f5:	4d 01 d3             	add    %r10,%r11
ffff8000001063f8:	41 ff d3             	call   *%r11
ffff8000001063fb:	eb fe                	jmp    ffff8000001063fb <do_dev_not_available+0x8b>

ffff8000001063fd <do_double_fault>:
ffff8000001063fd:	f3 0f 1e fa          	endbr64 
ffff800000106401:	55                   	push   %rbp
ffff800000106402:	48 89 e5             	mov    %rsp,%rbp
ffff800000106405:	41 57                	push   %r15
ffff800000106407:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010640b:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010640b <do_double_fault+0xe>
ffff800000106412:	49 bb a5 91 00 00 00 	movabs $0x91a5,%r11
ffff800000106419:	00 00 00 
ffff80000010641c:	4d 01 da             	add    %r11,%r10
ffff80000010641f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106423:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106427:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010642e:	00 
ffff80000010642f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106433:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106439:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010643d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106441:	48 8b 08             	mov    (%rax),%rcx
ffff800000106444:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106448:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010644c:	49 89 c9             	mov    %rcx,%r9
ffff80000010644f:	49 89 d0             	mov    %rdx,%r8
ffff800000106452:	48 89 c1             	mov    %rax,%rcx
ffff800000106455:	48 b8 40 a0 ff ff ff 	movabs $0xffffffffffffa040,%rax
ffff80000010645c:	ff ff ff 
ffff80000010645f:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106463:	48 89 c2             	mov    %rax,%rdx
ffff800000106466:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010646b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106470:	4d 89 d7             	mov    %r10,%r15
ffff800000106473:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106478:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff80000010647f:	ff ff ff 
ffff800000106482:	4d 01 d3             	add    %r10,%r11
ffff800000106485:	41 ff d3             	call   *%r11
ffff800000106488:	eb fe                	jmp    ffff800000106488 <do_double_fault+0x8b>

ffff80000010648a <do_coprocessor_segment_overrun>:
ffff80000010648a:	f3 0f 1e fa          	endbr64 
ffff80000010648e:	55                   	push   %rbp
ffff80000010648f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106492:	41 57                	push   %r15
ffff800000106494:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106498:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106498 <do_coprocessor_segment_overrun+0xe>
ffff80000010649f:	49 bb 18 91 00 00 00 	movabs $0x9118,%r11
ffff8000001064a6:	00 00 00 
ffff8000001064a9:	4d 01 da             	add    %r11,%r10
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
ffff8000001064e2:	48 b8 80 a0 ff ff ff 	movabs $0xffffffffffffa080,%rax
ffff8000001064e9:	ff ff ff 
ffff8000001064ec:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001064f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001064f3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064fd:	4d 89 d7             	mov    %r10,%r15
ffff800000106500:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106505:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff80000010650c:	ff ff ff 
ffff80000010650f:	4d 01 d3             	add    %r10,%r11
ffff800000106512:	41 ff d3             	call   *%r11
ffff800000106515:	eb fe                	jmp    ffff800000106515 <do_coprocessor_segment_overrun+0x8b>

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
ffff800000106593:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
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
ffff8000001065d2:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000106610:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000106644:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff80000010668e:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff8000001066c2:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000106700:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000106707:	ff ff ff 
ffff80000010670a:	49 01 d8             	add    %rbx,%r8
ffff80000010670d:	41 ff d0             	call   *%r8
ffff800000106710:	eb fe                	jmp    ffff800000106710 <do_invalid_TSS+0x1f9>

ffff800000106712 <do_segment_not_present>:
ffff800000106712:	f3 0f 1e fa          	endbr64 
ffff800000106716:	55                   	push   %rbp
ffff800000106717:	48 89 e5             	mov    %rsp,%rbp
ffff80000010671a:	41 57                	push   %r15
ffff80000010671c:	53                   	push   %rbx
ffff80000010671d:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106721:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106721 <do_segment_not_present+0xf>
ffff800000106728:	49 bb 8f 8e 00 00 00 	movabs $0x8e8f,%r11
ffff80000010672f:	00 00 00 
ffff800000106732:	4c 01 db             	add    %r11,%rbx
ffff800000106735:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106739:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010673d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106744:	00 
ffff800000106745:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106749:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010674f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106753:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106757:	48 8b 08             	mov    (%rax),%rcx
ffff80000010675a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010675e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106762:	49 89 c9             	mov    %rcx,%r9
ffff800000106765:	49 89 d0             	mov    %rdx,%r8
ffff800000106768:	48 89 c1             	mov    %rax,%rcx
ffff80000010676b:	48 b8 80 a2 ff ff ff 	movabs $0xffffffffffffa280,%rax
ffff800000106772:	ff ff ff 
ffff800000106775:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106779:	48 89 c2             	mov    %rax,%rdx
ffff80000010677c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106781:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106786:	49 89 df             	mov    %rbx,%r15
ffff800000106789:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010678e:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff800000106795:	ff ff ff 
ffff800000106798:	49 01 da             	add    %rbx,%r10
ffff80000010679b:	41 ff d2             	call   *%r10
ffff80000010679e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067a2:	83 e0 01             	and    $0x1,%eax
ffff8000001067a5:	48 85 c0             	test   %rax,%rax
ffff8000001067a8:	74 32                	je     ffff8000001067dc <do_segment_not_present+0xca>
ffff8000001067aa:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff8000001067b1:	ff ff ff 
ffff8000001067b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067b8:	48 89 c2             	mov    %rax,%rdx
ffff8000001067bb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067c0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067c5:	49 89 df             	mov    %rbx,%r15
ffff8000001067c8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067cd:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff8000001067d4:	ff ff ff 
ffff8000001067d7:	48 01 d9             	add    %rbx,%rcx
ffff8000001067da:	ff d1                	call   *%rcx
ffff8000001067dc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067e0:	83 e0 02             	and    $0x2,%eax
ffff8000001067e3:	48 85 c0             	test   %rax,%rax
ffff8000001067e6:	74 34                	je     ffff80000010681c <do_segment_not_present+0x10a>
ffff8000001067e8:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff8000001067ef:	ff ff ff 
ffff8000001067f2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067f6:	48 89 c2             	mov    %rax,%rdx
ffff8000001067f9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067fe:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106803:	49 89 df             	mov    %rbx,%r15
ffff800000106806:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010680b:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106812:	ff ff ff 
ffff800000106815:	48 01 d9             	add    %rbx,%rcx
ffff800000106818:	ff d1                	call   *%rcx
ffff80000010681a:	eb 32                	jmp    ffff80000010684e <do_segment_not_present+0x13c>
ffff80000010681c:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106823:	ff ff ff 
ffff800000106826:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010682a:	48 89 c2             	mov    %rax,%rdx
ffff80000010682d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106832:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106837:	49 89 df             	mov    %rbx,%r15
ffff80000010683a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010683f:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106846:	ff ff ff 
ffff800000106849:	48 01 d9             	add    %rbx,%rcx
ffff80000010684c:	ff d1                	call   *%rcx
ffff80000010684e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106852:	83 e0 02             	and    $0x2,%eax
ffff800000106855:	48 85 c0             	test   %rax,%rax
ffff800000106858:	75 72                	jne    ffff8000001068cc <do_segment_not_present+0x1ba>
ffff80000010685a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010685e:	83 e0 04             	and    $0x4,%eax
ffff800000106861:	48 85 c0             	test   %rax,%rax
ffff800000106864:	74 34                	je     ffff80000010689a <do_segment_not_present+0x188>
ffff800000106866:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff80000010686d:	ff ff ff 
ffff800000106870:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106874:	48 89 c2             	mov    %rax,%rdx
ffff800000106877:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010687c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106881:	49 89 df             	mov    %rbx,%r15
ffff800000106884:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106889:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106890:	ff ff ff 
ffff800000106893:	48 01 d9             	add    %rbx,%rcx
ffff800000106896:	ff d1                	call   *%rcx
ffff800000106898:	eb 32                	jmp    ffff8000001068cc <do_segment_not_present+0x1ba>
ffff80000010689a:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff8000001068a1:	ff ff ff 
ffff8000001068a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068a8:	48 89 c2             	mov    %rax,%rdx
ffff8000001068ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068b0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068b5:	49 89 df             	mov    %rbx,%r15
ffff8000001068b8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068bd:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff8000001068c4:	ff ff ff 
ffff8000001068c7:	48 01 d9             	add    %rbx,%rcx
ffff8000001068ca:	ff d1                	call   *%rcx
ffff8000001068cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068d0:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001068d5:	48 89 c1             	mov    %rax,%rcx
ffff8000001068d8:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff8000001068df:	ff ff ff 
ffff8000001068e2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e6:	48 89 c2             	mov    %rax,%rdx
ffff8000001068e9:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068ee:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068f3:	49 89 df             	mov    %rbx,%r15
ffff8000001068f6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068fb:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000106902:	ff ff ff 
ffff800000106905:	49 01 d8             	add    %rbx,%r8
ffff800000106908:	41 ff d0             	call   *%r8
ffff80000010690b:	eb fe                	jmp    ffff80000010690b <do_segment_not_present+0x1f9>

ffff80000010690d <do_stack_segment_fault>:
ffff80000010690d:	f3 0f 1e fa          	endbr64 
ffff800000106911:	55                   	push   %rbp
ffff800000106912:	48 89 e5             	mov    %rsp,%rbp
ffff800000106915:	41 57                	push   %r15
ffff800000106917:	53                   	push   %rbx
ffff800000106918:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010691c:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010691c <do_stack_segment_fault+0xf>
ffff800000106923:	49 bb 94 8c 00 00 00 	movabs $0x8c94,%r11
ffff80000010692a:	00 00 00 
ffff80000010692d:	4c 01 db             	add    %r11,%rbx
ffff800000106930:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106934:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106938:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010693f:	00 
ffff800000106940:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106944:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010694a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010694e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106952:	48 8b 08             	mov    (%rax),%rcx
ffff800000106955:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106959:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010695d:	49 89 c9             	mov    %rcx,%r9
ffff800000106960:	49 89 d0             	mov    %rdx,%r8
ffff800000106963:	48 89 c1             	mov    %rax,%rcx
ffff800000106966:	48 b8 c8 a2 ff ff ff 	movabs $0xffffffffffffa2c8,%rax
ffff80000010696d:	ff ff ff 
ffff800000106970:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106974:	48 89 c2             	mov    %rax,%rdx
ffff800000106977:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010697c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106981:	49 89 df             	mov    %rbx,%r15
ffff800000106984:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106989:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff800000106990:	ff ff ff 
ffff800000106993:	49 01 da             	add    %rbx,%r10
ffff800000106996:	41 ff d2             	call   *%r10
ffff800000106999:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010699d:	83 e0 01             	and    $0x1,%eax
ffff8000001069a0:	48 85 c0             	test   %rax,%rax
ffff8000001069a3:	74 32                	je     ffff8000001069d7 <do_stack_segment_fault+0xca>
ffff8000001069a5:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff8000001069ac:	ff ff ff 
ffff8000001069af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069b3:	48 89 c2             	mov    %rax,%rdx
ffff8000001069b6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069bb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069c0:	49 89 df             	mov    %rbx,%r15
ffff8000001069c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069c8:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff8000001069cf:	ff ff ff 
ffff8000001069d2:	48 01 d9             	add    %rbx,%rcx
ffff8000001069d5:	ff d1                	call   *%rcx
ffff8000001069d7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069db:	83 e0 02             	and    $0x2,%eax
ffff8000001069de:	48 85 c0             	test   %rax,%rax
ffff8000001069e1:	74 34                	je     ffff800000106a17 <do_stack_segment_fault+0x10a>
ffff8000001069e3:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff8000001069ea:	ff ff ff 
ffff8000001069ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069f1:	48 89 c2             	mov    %rax,%rdx
ffff8000001069f4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069f9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069fe:	49 89 df             	mov    %rbx,%r15
ffff800000106a01:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a06:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106a0d:	ff ff ff 
ffff800000106a10:	48 01 d9             	add    %rbx,%rcx
ffff800000106a13:	ff d1                	call   *%rcx
ffff800000106a15:	eb 32                	jmp    ffff800000106a49 <do_stack_segment_fault+0x13c>
ffff800000106a17:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106a1e:	ff ff ff 
ffff800000106a21:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a25:	48 89 c2             	mov    %rax,%rdx
ffff800000106a28:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a2d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a32:	49 89 df             	mov    %rbx,%r15
ffff800000106a35:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a3a:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106a41:	ff ff ff 
ffff800000106a44:	48 01 d9             	add    %rbx,%rcx
ffff800000106a47:	ff d1                	call   *%rcx
ffff800000106a49:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a4d:	83 e0 02             	and    $0x2,%eax
ffff800000106a50:	48 85 c0             	test   %rax,%rax
ffff800000106a53:	75 72                	jne    ffff800000106ac7 <do_stack_segment_fault+0x1ba>
ffff800000106a55:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a59:	83 e0 04             	and    $0x4,%eax
ffff800000106a5c:	48 85 c0             	test   %rax,%rax
ffff800000106a5f:	74 34                	je     ffff800000106a95 <do_stack_segment_fault+0x188>
ffff800000106a61:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106a68:	ff ff ff 
ffff800000106a6b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a6f:	48 89 c2             	mov    %rax,%rdx
ffff800000106a72:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a77:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a7c:	49 89 df             	mov    %rbx,%r15
ffff800000106a7f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a84:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106a8b:	ff ff ff 
ffff800000106a8e:	48 01 d9             	add    %rbx,%rcx
ffff800000106a91:	ff d1                	call   *%rcx
ffff800000106a93:	eb 32                	jmp    ffff800000106ac7 <do_stack_segment_fault+0x1ba>
ffff800000106a95:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff800000106a9c:	ff ff ff 
ffff800000106a9f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106aa3:	48 89 c2             	mov    %rax,%rdx
ffff800000106aa6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106aab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ab0:	49 89 df             	mov    %rbx,%r15
ffff800000106ab3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ab8:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106abf:	ff ff ff 
ffff800000106ac2:	48 01 d9             	add    %rbx,%rcx
ffff800000106ac5:	ff d1                	call   *%rcx
ffff800000106ac7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106acb:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106ad0:	48 89 c1             	mov    %rax,%rcx
ffff800000106ad3:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff800000106ada:	ff ff ff 
ffff800000106add:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ae1:	48 89 c2             	mov    %rax,%rdx
ffff800000106ae4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ae9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106aee:	49 89 df             	mov    %rbx,%r15
ffff800000106af1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106af6:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000106afd:	ff ff ff 
ffff800000106b00:	49 01 d8             	add    %rbx,%r8
ffff800000106b03:	41 ff d0             	call   *%r8
ffff800000106b06:	eb fe                	jmp    ffff800000106b06 <do_stack_segment_fault+0x1f9>

ffff800000106b08 <do_general_protection>:
ffff800000106b08:	f3 0f 1e fa          	endbr64 
ffff800000106b0c:	55                   	push   %rbp
ffff800000106b0d:	48 89 e5             	mov    %rsp,%rbp
ffff800000106b10:	41 57                	push   %r15
ffff800000106b12:	53                   	push   %rbx
ffff800000106b13:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106b17:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106b17 <do_general_protection+0xf>
ffff800000106b1e:	49 bb 99 8a 00 00 00 	movabs $0x8a99,%r11
ffff800000106b25:	00 00 00 
ffff800000106b28:	4c 01 db             	add    %r11,%rbx
ffff800000106b2b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106b2f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106b33:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106b3a:	00 
ffff800000106b3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b3f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106b45:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b4d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106b50:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b54:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b58:	49 89 c9             	mov    %rcx,%r9
ffff800000106b5b:	49 89 d0             	mov    %rdx,%r8
ffff800000106b5e:	48 89 c1             	mov    %rax,%rcx
ffff800000106b61:	48 b8 10 a3 ff ff ff 	movabs $0xffffffffffffa310,%rax
ffff800000106b68:	ff ff ff 
ffff800000106b6b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b6f:	48 89 c2             	mov    %rax,%rdx
ffff800000106b72:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b77:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b7c:	49 89 df             	mov    %rbx,%r15
ffff800000106b7f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b84:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff800000106b8b:	ff ff ff 
ffff800000106b8e:	49 01 da             	add    %rbx,%r10
ffff800000106b91:	41 ff d2             	call   *%r10
ffff800000106b94:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b98:	83 e0 01             	and    $0x1,%eax
ffff800000106b9b:	48 85 c0             	test   %rax,%rax
ffff800000106b9e:	74 32                	je     ffff800000106bd2 <do_general_protection+0xca>
ffff800000106ba0:	48 b8 10 a1 ff ff ff 	movabs $0xffffffffffffa110,%rax
ffff800000106ba7:	ff ff ff 
ffff800000106baa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bae:	48 89 c2             	mov    %rax,%rdx
ffff800000106bb1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bb6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bbb:	49 89 df             	mov    %rbx,%r15
ffff800000106bbe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bc3:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106bca:	ff ff ff 
ffff800000106bcd:	48 01 d9             	add    %rbx,%rcx
ffff800000106bd0:	ff d1                	call   *%rcx
ffff800000106bd2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bd6:	83 e0 02             	and    $0x2,%eax
ffff800000106bd9:	48 85 c0             	test   %rax,%rax
ffff800000106bdc:	74 34                	je     ffff800000106c12 <do_general_protection+0x10a>
ffff800000106bde:	48 b8 90 a1 ff ff ff 	movabs $0xffffffffffffa190,%rax
ffff800000106be5:	ff ff ff 
ffff800000106be8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bec:	48 89 c2             	mov    %rax,%rdx
ffff800000106bef:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bf4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bf9:	49 89 df             	mov    %rbx,%r15
ffff800000106bfc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c01:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106c08:	ff ff ff 
ffff800000106c0b:	48 01 d9             	add    %rbx,%rcx
ffff800000106c0e:	ff d1                	call   *%rcx
ffff800000106c10:	eb 32                	jmp    ffff800000106c44 <do_general_protection+0x13c>
ffff800000106c12:	48 b8 c0 a1 ff ff ff 	movabs $0xffffffffffffa1c0,%rax
ffff800000106c19:	ff ff ff 
ffff800000106c1c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c20:	48 89 c2             	mov    %rax,%rdx
ffff800000106c23:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c28:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c2d:	49 89 df             	mov    %rbx,%r15
ffff800000106c30:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c35:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106c3c:	ff ff ff 
ffff800000106c3f:	48 01 d9             	add    %rbx,%rcx
ffff800000106c42:	ff d1                	call   *%rcx
ffff800000106c44:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c48:	83 e0 02             	and    $0x2,%eax
ffff800000106c4b:	48 85 c0             	test   %rax,%rax
ffff800000106c4e:	75 72                	jne    ffff800000106cc2 <do_general_protection+0x1ba>
ffff800000106c50:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c54:	83 e0 04             	and    $0x4,%eax
ffff800000106c57:	48 85 c0             	test   %rax,%rax
ffff800000106c5a:	74 34                	je     ffff800000106c90 <do_general_protection+0x188>
ffff800000106c5c:	48 b8 f8 a1 ff ff ff 	movabs $0xffffffffffffa1f8,%rax
ffff800000106c63:	ff ff ff 
ffff800000106c66:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c6a:	48 89 c2             	mov    %rax,%rdx
ffff800000106c6d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c72:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c77:	49 89 df             	mov    %rbx,%r15
ffff800000106c7a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c7f:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106c86:	ff ff ff 
ffff800000106c89:	48 01 d9             	add    %rbx,%rcx
ffff800000106c8c:	ff d1                	call   *%rcx
ffff800000106c8e:	eb 32                	jmp    ffff800000106cc2 <do_general_protection+0x1ba>
ffff800000106c90:	48 b8 30 a2 ff ff ff 	movabs $0xffffffffffffa230,%rax
ffff800000106c97:	ff ff ff 
ffff800000106c9a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c9e:	48 89 c2             	mov    %rax,%rdx
ffff800000106ca1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ca6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106cab:	49 89 df             	mov    %rbx,%r15
ffff800000106cae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cb3:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106cba:	ff ff ff 
ffff800000106cbd:	48 01 d9             	add    %rbx,%rcx
ffff800000106cc0:	ff d1                	call   *%rcx
ffff800000106cc2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cc6:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106ccb:	48 89 c1             	mov    %rax,%rcx
ffff800000106cce:	48 b8 60 a2 ff ff ff 	movabs $0xffffffffffffa260,%rax
ffff800000106cd5:	ff ff ff 
ffff800000106cd8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106cdc:	48 89 c2             	mov    %rax,%rdx
ffff800000106cdf:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ce4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ce9:	49 89 df             	mov    %rbx,%r15
ffff800000106cec:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cf1:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000106cf8:	ff ff ff 
ffff800000106cfb:	49 01 d8             	add    %rbx,%r8
ffff800000106cfe:	41 ff d0             	call   *%r8
ffff800000106d01:	eb fe                	jmp    ffff800000106d01 <do_general_protection+0x1f9>

ffff800000106d03 <do_page_fault>:
ffff800000106d03:	f3 0f 1e fa          	endbr64 
ffff800000106d07:	55                   	push   %rbp
ffff800000106d08:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d0b:	41 57                	push   %r15
ffff800000106d0d:	53                   	push   %rbx
ffff800000106d0e:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106d12:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106d12 <do_page_fault+0xf>
ffff800000106d19:	49 bb 9e 88 00 00 00 	movabs $0x889e,%r11
ffff800000106d20:	00 00 00 
ffff800000106d23:	4c 01 db             	add    %r11,%rbx
ffff800000106d26:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d2a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d2e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d35:	00 
ffff800000106d36:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106d3d:	00 
ffff800000106d3e:	0f 20 d0             	mov    %cr2,%rax
ffff800000106d41:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106d45:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d49:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d4f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d53:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d57:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d5a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d5e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d62:	49 89 c9             	mov    %rcx,%r9
ffff800000106d65:	49 89 d0             	mov    %rdx,%r8
ffff800000106d68:	48 89 c1             	mov    %rax,%rcx
ffff800000106d6b:	48 b8 58 a3 ff ff ff 	movabs $0xffffffffffffa358,%rax
ffff800000106d72:	ff ff ff 
ffff800000106d75:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d79:	48 89 c2             	mov    %rax,%rdx
ffff800000106d7c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d81:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d86:	49 89 df             	mov    %rbx,%r15
ffff800000106d89:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d8e:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff800000106d95:	ff ff ff 
ffff800000106d98:	49 01 da             	add    %rbx,%r10
ffff800000106d9b:	41 ff d2             	call   *%r10
ffff800000106d9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106da2:	83 e0 01             	and    $0x1,%eax
ffff800000106da5:	48 85 c0             	test   %rax,%rax
ffff800000106da8:	75 32                	jne    ffff800000106ddc <do_page_fault+0xd9>
ffff800000106daa:	48 b8 96 a3 ff ff ff 	movabs $0xffffffffffffa396,%rax
ffff800000106db1:	ff ff ff 
ffff800000106db4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106db8:	48 89 c2             	mov    %rax,%rdx
ffff800000106dbb:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106dc0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106dc5:	49 89 df             	mov    %rbx,%r15
ffff800000106dc8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dcd:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106dd4:	ff ff ff 
ffff800000106dd7:	48 01 d9             	add    %rbx,%rcx
ffff800000106dda:	ff d1                	call   *%rcx
ffff800000106ddc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106de0:	83 e0 02             	and    $0x2,%eax
ffff800000106de3:	48 85 c0             	test   %rax,%rax
ffff800000106de6:	74 34                	je     ffff800000106e1c <do_page_fault+0x119>
ffff800000106de8:	48 b8 a9 a3 ff ff ff 	movabs $0xffffffffffffa3a9,%rax
ffff800000106def:	ff ff ff 
ffff800000106df2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106df6:	48 89 c2             	mov    %rax,%rdx
ffff800000106df9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106dfe:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e03:	49 89 df             	mov    %rbx,%r15
ffff800000106e06:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e0b:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106e12:	ff ff ff 
ffff800000106e15:	48 01 d9             	add    %rbx,%rcx
ffff800000106e18:	ff d1                	call   *%rcx
ffff800000106e1a:	eb 32                	jmp    ffff800000106e4e <do_page_fault+0x14b>
ffff800000106e1c:	48 b8 bd a3 ff ff ff 	movabs $0xffffffffffffa3bd,%rax
ffff800000106e23:	ff ff ff 
ffff800000106e26:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e2a:	48 89 c2             	mov    %rax,%rdx
ffff800000106e2d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e32:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e37:	49 89 df             	mov    %rbx,%r15
ffff800000106e3a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e3f:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106e46:	ff ff ff 
ffff800000106e49:	48 01 d9             	add    %rbx,%rcx
ffff800000106e4c:	ff d1                	call   *%rcx
ffff800000106e4e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e52:	83 e0 04             	and    $0x4,%eax
ffff800000106e55:	48 85 c0             	test   %rax,%rax
ffff800000106e58:	74 34                	je     ffff800000106e8e <do_page_fault+0x18b>
ffff800000106e5a:	48 b8 d0 a3 ff ff ff 	movabs $0xffffffffffffa3d0,%rax
ffff800000106e61:	ff ff ff 
ffff800000106e64:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e68:	48 89 c2             	mov    %rax,%rdx
ffff800000106e6b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e70:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e75:	49 89 df             	mov    %rbx,%r15
ffff800000106e78:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e7d:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106e84:	ff ff ff 
ffff800000106e87:	48 01 d9             	add    %rbx,%rcx
ffff800000106e8a:	ff d1                	call   *%rcx
ffff800000106e8c:	eb 32                	jmp    ffff800000106ec0 <do_page_fault+0x1bd>
ffff800000106e8e:	48 b8 e2 a3 ff ff ff 	movabs $0xffffffffffffa3e2,%rax
ffff800000106e95:	ff ff ff 
ffff800000106e98:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e9c:	48 89 c2             	mov    %rax,%rdx
ffff800000106e9f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ea4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ea9:	49 89 df             	mov    %rbx,%r15
ffff800000106eac:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eb1:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106eb8:	ff ff ff 
ffff800000106ebb:	48 01 d9             	add    %rbx,%rcx
ffff800000106ebe:	ff d1                	call   *%rcx
ffff800000106ec0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ec4:	83 e0 08             	and    $0x8,%eax
ffff800000106ec7:	48 85 c0             	test   %rax,%rax
ffff800000106eca:	74 32                	je     ffff800000106efe <do_page_fault+0x1fb>
ffff800000106ecc:	48 b8 fe a3 ff ff ff 	movabs $0xffffffffffffa3fe,%rax
ffff800000106ed3:	ff ff ff 
ffff800000106ed6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106eda:	48 89 c2             	mov    %rax,%rdx
ffff800000106edd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ee2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ee7:	49 89 df             	mov    %rbx,%r15
ffff800000106eea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eef:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106ef6:	ff ff ff 
ffff800000106ef9:	48 01 d9             	add    %rbx,%rcx
ffff800000106efc:	ff d1                	call   *%rcx
ffff800000106efe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f02:	83 e0 10             	and    $0x10,%eax
ffff800000106f05:	48 85 c0             	test   %rax,%rax
ffff800000106f08:	74 32                	je     ffff800000106f3c <do_page_fault+0x239>
ffff800000106f0a:	48 b8 20 a4 ff ff ff 	movabs $0xffffffffffffa420,%rax
ffff800000106f11:	ff ff ff 
ffff800000106f14:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f18:	48 89 c2             	mov    %rax,%rdx
ffff800000106f1b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f20:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f25:	49 89 df             	mov    %rbx,%r15
ffff800000106f28:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f2d:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106f34:	ff ff ff 
ffff800000106f37:	48 01 d9             	add    %rbx,%rcx
ffff800000106f3a:	ff d1                	call   *%rcx
ffff800000106f3c:	48 b8 3f a4 ff ff ff 	movabs $0xffffffffffffa43f,%rax
ffff800000106f43:	ff ff ff 
ffff800000106f46:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f4a:	48 89 c2             	mov    %rax,%rdx
ffff800000106f4d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f52:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f57:	49 89 df             	mov    %rbx,%r15
ffff800000106f5a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f5f:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000106f66:	ff ff ff 
ffff800000106f69:	48 01 d9             	add    %rbx,%rcx
ffff800000106f6c:	ff d1                	call   *%rcx
ffff800000106f6e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106f72:	48 89 c1             	mov    %rax,%rcx
ffff800000106f75:	48 b8 41 a4 ff ff ff 	movabs $0xffffffffffffa441,%rax
ffff800000106f7c:	ff ff ff 
ffff800000106f7f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f83:	48 89 c2             	mov    %rax,%rdx
ffff800000106f86:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f8b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f90:	49 89 df             	mov    %rbx,%r15
ffff800000106f93:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f98:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000106f9f:	ff ff ff 
ffff800000106fa2:	49 01 d8             	add    %rbx,%r8
ffff800000106fa5:	41 ff d0             	call   *%r8
ffff800000106fa8:	eb fe                	jmp    ffff800000106fa8 <do_page_fault+0x2a5>

ffff800000106faa <do_x87_FPU_error>:
ffff800000106faa:	f3 0f 1e fa          	endbr64 
ffff800000106fae:	55                   	push   %rbp
ffff800000106faf:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fb2:	41 57                	push   %r15
ffff800000106fb4:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106fb8:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106fb8 <do_x87_FPU_error+0xe>
ffff800000106fbf:	49 bb f8 85 00 00 00 	movabs $0x85f8,%r11
ffff800000106fc6:	00 00 00 
ffff800000106fc9:	4d 01 da             	add    %r11,%r10
ffff800000106fcc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106fd0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106fd4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106fdb:	00 
ffff800000106fdc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106fe0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106fe6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106fea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fee:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ff1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ff5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ff9:	49 89 c9             	mov    %rcx,%r9
ffff800000106ffc:	49 89 d0             	mov    %rdx,%r8
ffff800000106fff:	48 89 c1             	mov    %rax,%rcx
ffff800000107002:	48 b8 50 a4 ff ff ff 	movabs $0xffffffffffffa450,%rax
ffff800000107009:	ff ff ff 
ffff80000010700c:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107010:	48 89 c2             	mov    %rax,%rdx
ffff800000107013:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107018:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010701d:	4d 89 d7             	mov    %r10,%r15
ffff800000107020:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107025:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff80000010702c:	ff ff ff 
ffff80000010702f:	4d 01 d3             	add    %r10,%r11
ffff800000107032:	41 ff d3             	call   *%r11
ffff800000107035:	eb fe                	jmp    ffff800000107035 <do_x87_FPU_error+0x8b>

ffff800000107037 <do_alignment_check>:
ffff800000107037:	f3 0f 1e fa          	endbr64 
ffff80000010703b:	55                   	push   %rbp
ffff80000010703c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010703f:	41 57                	push   %r15
ffff800000107041:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107045:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000107045 <do_alignment_check+0xe>
ffff80000010704c:	49 bb 6b 85 00 00 00 	movabs $0x856b,%r11
ffff800000107053:	00 00 00 
ffff800000107056:	4d 01 da             	add    %r11,%r10
ffff800000107059:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010705d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107061:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107068:	00 
ffff800000107069:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010706d:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107073:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107077:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010707b:	48 8b 08             	mov    (%rax),%rcx
ffff80000010707e:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107082:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107086:	49 89 c9             	mov    %rcx,%r9
ffff800000107089:	49 89 d0             	mov    %rdx,%r8
ffff80000010708c:	48 89 c1             	mov    %rax,%rcx
ffff80000010708f:	48 b8 98 a4 ff ff ff 	movabs $0xffffffffffffa498,%rax
ffff800000107096:	ff ff ff 
ffff800000107099:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010709d:	48 89 c2             	mov    %rax,%rdx
ffff8000001070a0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001070a5:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001070aa:	4d 89 d7             	mov    %r10,%r15
ffff8000001070ad:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001070b2:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001070b9:	ff ff ff 
ffff8000001070bc:	4d 01 d3             	add    %r10,%r11
ffff8000001070bf:	41 ff d3             	call   *%r11
ffff8000001070c2:	eb fe                	jmp    ffff8000001070c2 <do_alignment_check+0x8b>

ffff8000001070c4 <do_machine_check>:
ffff8000001070c4:	f3 0f 1e fa          	endbr64 
ffff8000001070c8:	55                   	push   %rbp
ffff8000001070c9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001070cc:	41 57                	push   %r15
ffff8000001070ce:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001070d2:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001070d2 <do_machine_check+0xe>
ffff8000001070d9:	49 bb de 84 00 00 00 	movabs $0x84de,%r11
ffff8000001070e0:	00 00 00 
ffff8000001070e3:	4d 01 da             	add    %r11,%r10
ffff8000001070e6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001070ea:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001070ee:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001070f5:	00 
ffff8000001070f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001070fa:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000107100:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107104:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107108:	48 8b 08             	mov    (%rax),%rcx
ffff80000010710b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010710f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107113:	49 89 c9             	mov    %rcx,%r9
ffff800000107116:	49 89 d0             	mov    %rdx,%r8
ffff800000107119:	48 89 c1             	mov    %rax,%rcx
ffff80000010711c:	48 b8 e0 a4 ff ff ff 	movabs $0xffffffffffffa4e0,%rax
ffff800000107123:	ff ff ff 
ffff800000107126:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010712a:	48 89 c2             	mov    %rax,%rdx
ffff80000010712d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107132:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000107137:	4d 89 d7             	mov    %r10,%r15
ffff80000010713a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010713f:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff800000107146:	ff ff ff 
ffff800000107149:	4d 01 d3             	add    %r10,%r11
ffff80000010714c:	41 ff d3             	call   *%r11
ffff80000010714f:	eb fe                	jmp    ffff80000010714f <do_machine_check+0x8b>

ffff800000107151 <do_SIMD_exception>:
ffff800000107151:	f3 0f 1e fa          	endbr64 
ffff800000107155:	55                   	push   %rbp
ffff800000107156:	48 89 e5             	mov    %rsp,%rbp
ffff800000107159:	41 57                	push   %r15
ffff80000010715b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010715f:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010715f <do_SIMD_exception+0xe>
ffff800000107166:	49 bb 51 84 00 00 00 	movabs $0x8451,%r11
ffff80000010716d:	00 00 00 
ffff800000107170:	4d 01 da             	add    %r11,%r10
ffff800000107173:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107177:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010717b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107182:	00 
ffff800000107183:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107187:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010718d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107191:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107195:	48 8b 08             	mov    (%rax),%rcx
ffff800000107198:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010719c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001071a0:	49 89 c9             	mov    %rcx,%r9
ffff8000001071a3:	49 89 d0             	mov    %rdx,%r8
ffff8000001071a6:	48 89 c1             	mov    %rax,%rcx
ffff8000001071a9:	48 b8 28 a5 ff ff ff 	movabs $0xffffffffffffa528,%rax
ffff8000001071b0:	ff ff ff 
ffff8000001071b3:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001071b7:	48 89 c2             	mov    %rax,%rdx
ffff8000001071ba:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001071bf:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001071c4:	4d 89 d7             	mov    %r10,%r15
ffff8000001071c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001071cc:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff8000001071d3:	ff ff ff 
ffff8000001071d6:	4d 01 d3             	add    %r10,%r11
ffff8000001071d9:	41 ff d3             	call   *%r11
ffff8000001071dc:	eb fe                	jmp    ffff8000001071dc <do_SIMD_exception+0x8b>

ffff8000001071de <do_virtualization_exception>:
ffff8000001071de:	f3 0f 1e fa          	endbr64 
ffff8000001071e2:	55                   	push   %rbp
ffff8000001071e3:	48 89 e5             	mov    %rsp,%rbp
ffff8000001071e6:	41 57                	push   %r15
ffff8000001071e8:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001071ec:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001071ec <do_virtualization_exception+0xe>
ffff8000001071f3:	49 bb c4 83 00 00 00 	movabs $0x83c4,%r11
ffff8000001071fa:	00 00 00 
ffff8000001071fd:	4d 01 da             	add    %r11,%r10
ffff800000107200:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107204:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107208:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010720f:	00 
ffff800000107210:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107214:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010721a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010721e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107222:	48 8b 08             	mov    (%rax),%rcx
ffff800000107225:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107229:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010722d:	49 89 c9             	mov    %rcx,%r9
ffff800000107230:	49 89 d0             	mov    %rdx,%r8
ffff800000107233:	48 89 c1             	mov    %rax,%rcx
ffff800000107236:	48 b8 70 a5 ff ff ff 	movabs $0xffffffffffffa570,%rax
ffff80000010723d:	ff ff ff 
ffff800000107240:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000107244:	48 89 c2             	mov    %rax,%rdx
ffff800000107247:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010724c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000107251:	4d 89 d7             	mov    %r10,%r15
ffff800000107254:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107259:	49 bb c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r11
ffff800000107260:	ff ff ff 
ffff800000107263:	4d 01 d3             	add    %r10,%r11
ffff800000107266:	41 ff d3             	call   *%r11
ffff800000107269:	eb fe                	jmp    ffff800000107269 <do_virtualization_exception+0x8b>

ffff80000010726b <sys_vector_init>:
ffff80000010726b:	f3 0f 1e fa          	endbr64 
ffff80000010726f:	55                   	push   %rbp
ffff800000107270:	48 89 e5             	mov    %rsp,%rbp
ffff800000107273:	53                   	push   %rbx
ffff800000107274:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000107274 <sys_vector_init+0x9>
ffff80000010727b:	49 bb 3c 83 00 00 00 	movabs $0x833c,%r11
ffff800000107282:	00 00 00 
ffff800000107285:	4c 01 db             	add    %r11,%rbx
ffff800000107288:	48 b8 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rax
ffff80000010728f:	ff ff ff 
ffff800000107292:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107296:	48 89 c2             	mov    %rax,%rdx
ffff800000107299:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010729e:	bf 00 00 00 00       	mov    $0x0,%edi
ffff8000001072a3:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001072aa:	ff ff ff 
ffff8000001072ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072b1:	ff d0                	call   *%rax
ffff8000001072b3:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001072ba:	ff ff ff 
ffff8000001072bd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072c1:	48 89 c2             	mov    %rax,%rdx
ffff8000001072c4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072c9:	bf 01 00 00 00       	mov    $0x1,%edi
ffff8000001072ce:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001072d5:	ff ff ff 
ffff8000001072d8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072dc:	ff d0                	call   *%rax
ffff8000001072de:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff8000001072e5:	ff ff ff 
ffff8000001072e8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001072ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001072ef:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001072f4:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001072f9:	48 b8 a1 66 ff ff ff 	movabs $0xffffffffffff66a1,%rax
ffff800000107300:	ff ff ff 
ffff800000107303:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107307:	ff d0                	call   *%rax
ffff800000107309:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000107310:	ff ff ff 
ffff800000107313:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107317:	48 89 c2             	mov    %rax,%rdx
ffff80000010731a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010731f:	bf 03 00 00 00       	mov    $0x3,%edi
ffff800000107324:	48 b8 03 68 ff ff ff 	movabs $0xffffffffffff6803,%rax
ffff80000010732b:	ff ff ff 
ffff80000010732e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107332:	ff d0                	call   *%rax
ffff800000107334:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010733b:	ff ff ff 
ffff80000010733e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107342:	48 89 c2             	mov    %rax,%rdx
ffff800000107345:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010734a:	bf 04 00 00 00       	mov    $0x4,%edi
ffff80000010734f:	48 b8 03 68 ff ff ff 	movabs $0xffffffffffff6803,%rax
ffff800000107356:	ff ff ff 
ffff800000107359:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010735d:	ff d0                	call   *%rax
ffff80000010735f:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff800000107366:	ff ff ff 
ffff800000107369:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010736d:	48 89 c2             	mov    %rax,%rdx
ffff800000107370:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107375:	bf 05 00 00 00       	mov    $0x5,%edi
ffff80000010737a:	48 b8 03 68 ff ff ff 	movabs $0xffffffffffff6803,%rax
ffff800000107381:	ff ff ff 
ffff800000107384:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107388:	ff d0                	call   *%rax
ffff80000010738a:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107391:	ff ff ff 
ffff800000107394:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107398:	48 89 c2             	mov    %rax,%rdx
ffff80000010739b:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073a0:	bf 06 00 00 00       	mov    $0x6,%edi
ffff8000001073a5:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001073ac:	ff ff ff 
ffff8000001073af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073b3:	ff d0                	call   *%rax
ffff8000001073b5:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff8000001073bc:	ff ff ff 
ffff8000001073bf:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073c3:	48 89 c2             	mov    %rax,%rdx
ffff8000001073c6:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073cb:	bf 07 00 00 00       	mov    $0x7,%edi
ffff8000001073d0:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001073d7:	ff ff ff 
ffff8000001073da:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073de:	ff d0                	call   *%rax
ffff8000001073e0:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff8000001073e7:	ff ff ff 
ffff8000001073ea:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073ee:	48 89 c2             	mov    %rax,%rdx
ffff8000001073f1:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001073f6:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001073fb:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff800000107402:	ff ff ff 
ffff800000107405:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107409:	ff d0                	call   *%rax
ffff80000010740b:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff800000107412:	ff ff ff 
ffff800000107415:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107419:	48 89 c2             	mov    %rax,%rdx
ffff80000010741c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107421:	bf 09 00 00 00       	mov    $0x9,%edi
ffff800000107426:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff80000010742d:	ff ff ff 
ffff800000107430:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107434:	ff d0                	call   *%rax
ffff800000107436:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff80000010743d:	ff ff ff 
ffff800000107440:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107444:	48 89 c2             	mov    %rax,%rdx
ffff800000107447:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010744c:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff800000107451:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff800000107458:	ff ff ff 
ffff80000010745b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010745f:	ff d0                	call   *%rax
ffff800000107461:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107468:	ff ff ff 
ffff80000010746b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010746f:	48 89 c2             	mov    %rax,%rdx
ffff800000107472:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107477:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff80000010747c:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff800000107483:	ff ff ff 
ffff800000107486:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010748a:	ff d0                	call   *%rax
ffff80000010748c:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107493:	ff ff ff 
ffff800000107496:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010749a:	48 89 c2             	mov    %rax,%rdx
ffff80000010749d:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074a2:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff8000001074a7:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001074ae:	ff ff ff 
ffff8000001074b1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074b5:	ff d0                	call   *%rax
ffff8000001074b7:	48 b8 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rax
ffff8000001074be:	ff ff ff 
ffff8000001074c1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074c5:	48 89 c2             	mov    %rax,%rdx
ffff8000001074c8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074cd:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001074d2:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001074d9:	ff ff ff 
ffff8000001074dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074e0:	ff d0                	call   *%rax
ffff8000001074e2:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001074e9:	ff ff ff 
ffff8000001074ec:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001074f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001074f3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001074f8:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001074fd:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff800000107504:	ff ff ff 
ffff800000107507:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010750b:	ff d0                	call   *%rax
ffff80000010750d:	48 b8 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rax
ffff800000107514:	ff ff ff 
ffff800000107517:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010751b:	48 89 c2             	mov    %rax,%rdx
ffff80000010751e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107523:	bf 10 00 00 00       	mov    $0x10,%edi
ffff800000107528:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff80000010752f:	ff ff ff 
ffff800000107532:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107536:	ff d0                	call   *%rax
ffff800000107538:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff80000010753f:	ff ff ff 
ffff800000107542:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107546:	48 89 c2             	mov    %rax,%rdx
ffff800000107549:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010754e:	bf 11 00 00 00       	mov    $0x11,%edi
ffff800000107553:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff80000010755a:	ff ff ff 
ffff80000010755d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107561:	ff d0                	call   *%rax
ffff800000107563:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff80000010756a:	ff ff ff 
ffff80000010756d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107571:	48 89 c2             	mov    %rax,%rdx
ffff800000107574:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107579:	bf 12 00 00 00       	mov    $0x12,%edi
ffff80000010757e:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff800000107585:	ff ff ff 
ffff800000107588:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010758c:	ff d0                	call   *%rax
ffff80000010758e:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff800000107595:	ff ff ff 
ffff800000107598:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010759c:	48 89 c2             	mov    %rax,%rdx
ffff80000010759f:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075a4:	bf 13 00 00 00       	mov    $0x13,%edi
ffff8000001075a9:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001075b0:	ff ff ff 
ffff8000001075b3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075b7:	ff d0                	call   *%rax
ffff8000001075b9:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001075c0:	ff ff ff 
ffff8000001075c3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001075c7:	48 89 c2             	mov    %rax,%rdx
ffff8000001075ca:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001075cf:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001075d4:	48 b8 52 67 ff ff ff 	movabs $0xffffffffffff6752,%rax
ffff8000001075db:	ff ff ff 
ffff8000001075de:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075e2:	ff d0                	call   *%rax
ffff8000001075e4:	90                   	nop
ffff8000001075e5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001075e9:	c9                   	leave  
ffff8000001075ea:	c3                   	ret    

ffff8000001075eb <RESTORE_ALL>:
ffff8000001075eb:	41 5f                	pop    %r15
ffff8000001075ed:	41 5e                	pop    %r14
ffff8000001075ef:	41 5d                	pop    %r13
ffff8000001075f1:	41 5c                	pop    %r12
ffff8000001075f3:	41 5b                	pop    %r11
ffff8000001075f5:	41 5a                	pop    %r10
ffff8000001075f7:	41 59                	pop    %r9
ffff8000001075f9:	41 58                	pop    %r8
ffff8000001075fb:	5b                   	pop    %rbx
ffff8000001075fc:	59                   	pop    %rcx
ffff8000001075fd:	5a                   	pop    %rdx
ffff8000001075fe:	5e                   	pop    %rsi
ffff8000001075ff:	5f                   	pop    %rdi
ffff800000107600:	5d                   	pop    %rbp
ffff800000107601:	58                   	pop    %rax
ffff800000107602:	48 8e d8             	mov    %rax,%ds
ffff800000107605:	58                   	pop    %rax
ffff800000107606:	48 8e c0             	mov    %rax,%es
ffff800000107609:	58                   	pop    %rax
ffff80000010760a:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010760e:	48 cf                	iretq  

ffff800000107610 <divide_error>:
ffff800000107610:	6a 00                	push   $0x0
ffff800000107612:	50                   	push   %rax
ffff800000107613:	48 8d 05 7b e9 ff ff 	lea    -0x1685(%rip),%rax        # ffff800000105f95 <do_divide_error>
ffff80000010761a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010761e:	eb 00                	jmp    ffff800000107620 <error_code>

ffff800000107620 <error_code>:
ffff800000107620:	50                   	push   %rax
ffff800000107621:	48 8c c0             	mov    %es,%rax
ffff800000107624:	50                   	push   %rax
ffff800000107625:	48 8c d8             	mov    %ds,%rax
ffff800000107628:	50                   	push   %rax
ffff800000107629:	48 31 c0             	xor    %rax,%rax
ffff80000010762c:	55                   	push   %rbp
ffff80000010762d:	57                   	push   %rdi
ffff80000010762e:	56                   	push   %rsi
ffff80000010762f:	52                   	push   %rdx
ffff800000107630:	51                   	push   %rcx
ffff800000107631:	53                   	push   %rbx
ffff800000107632:	41 50                	push   %r8
ffff800000107634:	41 51                	push   %r9
ffff800000107636:	41 52                	push   %r10
ffff800000107638:	41 53                	push   %r11
ffff80000010763a:	41 54                	push   %r12
ffff80000010763c:	41 55                	push   %r13
ffff80000010763e:	41 56                	push   %r14
ffff800000107640:	41 57                	push   %r15
ffff800000107642:	fc                   	cld    
ffff800000107643:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff80000010764a:	00 
ffff80000010764b:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000107652:	00 
ffff800000107653:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff80000010765a:	48 8e df             	mov    %rdi,%ds
ffff80000010765d:	48 8e c7             	mov    %rdi,%es
ffff800000107660:	48 89 e7             	mov    %rsp,%rdi
ffff800000107663:	ff d2                	call   *%rdx
ffff800000107665:	eb 00                	jmp    ffff800000107667 <ret_from_intr>

ffff800000107667 <ret_from_intr>:
ffff800000107667:	eb 82                	jmp    ffff8000001075eb <RESTORE_ALL>

ffff800000107669 <debug>:
ffff800000107669:	6a 00                	push   $0x0
ffff80000010766b:	50                   	push   %rax
ffff80000010766c:	48 8d 05 af e9 ff ff 	lea    -0x1651(%rip),%rax        # ffff800000106022 <do_debug>
ffff800000107673:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107677:	eb a7                	jmp    ffff800000107620 <error_code>

ffff800000107679 <nmi>:
ffff800000107679:	50                   	push   %rax
ffff80000010767a:	fc                   	cld    
ffff80000010767b:	50                   	push   %rax
ffff80000010767c:	50                   	push   %rax
ffff80000010767d:	48 8c c0             	mov    %es,%rax
ffff800000107680:	50                   	push   %rax
ffff800000107681:	48 8c d8             	mov    %ds,%rax
ffff800000107684:	50                   	push   %rax
ffff800000107685:	48 31 c0             	xor    %rax,%rax
ffff800000107688:	55                   	push   %rbp
ffff800000107689:	57                   	push   %rdi
ffff80000010768a:	56                   	push   %rsi
ffff80000010768b:	52                   	push   %rdx
ffff80000010768c:	51                   	push   %rcx
ffff80000010768d:	53                   	push   %rbx
ffff80000010768e:	41 50                	push   %r8
ffff800000107690:	41 51                	push   %r9
ffff800000107692:	41 52                	push   %r10
ffff800000107694:	41 53                	push   %r11
ffff800000107696:	41 54                	push   %r12
ffff800000107698:	41 55                	push   %r13
ffff80000010769a:	41 56                	push   %r14
ffff80000010769c:	41 57                	push   %r15
ffff80000010769e:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff8000001076a5:	48 8e da             	mov    %rdx,%ds
ffff8000001076a8:	48 8e c2             	mov    %rdx,%es
ffff8000001076ab:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff8000001076b2:	48 89 e6             	mov    %rsp,%rsi
ffff8000001076b5:	e8 f5 e9 ff ff       	call   ffff8000001060af <do_nmi>
ffff8000001076ba:	e9 2c ff ff ff       	jmp    ffff8000001075eb <RESTORE_ALL>

ffff8000001076bf <invalid_TSS>:
ffff8000001076bf:	50                   	push   %rax
ffff8000001076c0:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff800000106517 <do_invalid_TSS>
ffff8000001076c7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076cb:	e9 50 ff ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001076d0 <page_fault>:
ffff8000001076d0:	50                   	push   %rax
ffff8000001076d1:	48 8d 05 2b f6 ff ff 	lea    -0x9d5(%rip),%rax        # ffff800000106d03 <do_page_fault>
ffff8000001076d8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076dc:	e9 3f ff ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001076e1 <int3>:
ffff8000001076e1:	6a 00                	push   $0x0
ffff8000001076e3:	50                   	push   %rax
ffff8000001076e4:	48 8d 05 51 ea ff ff 	lea    -0x15af(%rip),%rax        # ffff80000010613c <do_int3>
ffff8000001076eb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001076ef:	e9 2c ff ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001076f4 <overflow>:
ffff8000001076f4:	6a 00                	push   $0x0
ffff8000001076f6:	50                   	push   %rax
ffff8000001076f7:	48 8d 05 cb ea ff ff 	lea    -0x1535(%rip),%rax        # ffff8000001061c9 <do_overflow>
ffff8000001076fe:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107702:	e9 19 ff ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107707 <bounds>:
ffff800000107707:	6a 00                	push   $0x0
ffff800000107709:	50                   	push   %rax
ffff80000010770a:	48 8d 05 45 eb ff ff 	lea    -0x14bb(%rip),%rax        # ffff800000106256 <do_bounds>
ffff800000107711:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107715:	e9 06 ff ff ff       	jmp    ffff800000107620 <error_code>

ffff80000010771a <undefined_opcode>:
ffff80000010771a:	6a 00                	push   $0x0
ffff80000010771c:	50                   	push   %rax
ffff80000010771d:	48 8d 05 bf eb ff ff 	lea    -0x1441(%rip),%rax        # ffff8000001062e3 <do_undefined_opcode>
ffff800000107724:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107728:	e9 f3 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff80000010772d <dev_not_available>:
ffff80000010772d:	6a 00                	push   $0x0
ffff80000010772f:	50                   	push   %rax
ffff800000107730:	48 8d 05 39 ec ff ff 	lea    -0x13c7(%rip),%rax        # ffff800000106370 <do_dev_not_available>
ffff800000107737:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010773b:	e9 e0 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107740 <double_fault>:
ffff800000107740:	50                   	push   %rax
ffff800000107741:	48 8d 05 b5 ec ff ff 	lea    -0x134b(%rip),%rax        # ffff8000001063fd <do_double_fault>
ffff800000107748:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010774c:	e9 cf fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107751 <coprocessor_segment_overrun>:
ffff800000107751:	6a 00                	push   $0x0
ffff800000107753:	50                   	push   %rax
ffff800000107754:	48 8d 05 2f ed ff ff 	lea    -0x12d1(%rip),%rax        # ffff80000010648a <do_coprocessor_segment_overrun>
ffff80000010775b:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010775f:	e9 bc fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107764 <segment_not_present>:
ffff800000107764:	50                   	push   %rax
ffff800000107765:	48 8d 05 a6 ef ff ff 	lea    -0x105a(%rip),%rax        # ffff800000106712 <do_segment_not_present>
ffff80000010776c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107770:	e9 ab fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107775 <stack_segment_fault>:
ffff800000107775:	50                   	push   %rax
ffff800000107776:	48 8d 05 90 f1 ff ff 	lea    -0xe70(%rip),%rax        # ffff80000010690d <do_stack_segment_fault>
ffff80000010777d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107781:	e9 9a fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107786 <general_protection>:
ffff800000107786:	50                   	push   %rax
ffff800000107787:	48 8d 05 7a f3 ff ff 	lea    -0xc86(%rip),%rax        # ffff800000106b08 <do_general_protection>
ffff80000010778e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107792:	e9 89 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff800000107797 <x87_FPU_error>:
ffff800000107797:	6a 00                	push   $0x0
ffff800000107799:	50                   	push   %rax
ffff80000010779a:	48 8d 05 09 f8 ff ff 	lea    -0x7f7(%rip),%rax        # ffff800000106faa <do_x87_FPU_error>
ffff8000001077a1:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077a5:	e9 76 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001077aa <alignment_check>:
ffff8000001077aa:	50                   	push   %rax
ffff8000001077ab:	48 8d 05 85 f8 ff ff 	lea    -0x77b(%rip),%rax        # ffff800000107037 <do_alignment_check>
ffff8000001077b2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077b6:	e9 65 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001077bb <machine_check>:
ffff8000001077bb:	6a 00                	push   $0x0
ffff8000001077bd:	50                   	push   %rax
ffff8000001077be:	48 8d 05 ff f8 ff ff 	lea    -0x701(%rip),%rax        # ffff8000001070c4 <do_machine_check>
ffff8000001077c5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077c9:	e9 52 fe ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001077ce <SIMD_exception>:
ffff8000001077ce:	6a 00                	push   $0x0
ffff8000001077d0:	50                   	push   %rax
ffff8000001077d1:	48 8d 05 79 f9 ff ff 	lea    -0x687(%rip),%rax        # ffff800000107151 <do_SIMD_exception>
ffff8000001077d8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077dc:	e9 3f fe ff ff       	jmp    ffff800000107620 <error_code>

ffff8000001077e1 <virtualization_exception>:
ffff8000001077e1:	6a 00                	push   $0x0
ffff8000001077e3:	50                   	push   %rax
ffff8000001077e4:	48 8d 05 f3 f9 ff ff 	lea    -0x60d(%rip),%rax        # ffff8000001071de <do_virtualization_exception>
ffff8000001077eb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001077ef:	e9 2c fe ff ff       	jmp    ffff800000107620 <error_code>

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
ffff800000107b63:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
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
ffff800000107bce:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
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
ffff800000107cbd:	8b 50 10             	mov    0x10(%rax),%edx
ffff800000107cc0:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107cc7:	00 00 00 
ffff800000107cca:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107ccd:	48 63 c8             	movslq %eax,%rcx
ffff800000107cd0:	48 01 de             	add    %rbx,%rsi
ffff800000107cd3:	48 89 c8             	mov    %rcx,%rax
ffff800000107cd6:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107cda:	48 01 c8             	add    %rcx,%rax
ffff800000107cdd:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107ce1:	48 01 f0             	add    %rsi,%rax
ffff800000107ce4:	48 83 c0 10          	add    $0x10,%rax
ffff800000107ce8:	89 10                	mov    %edx,(%rax)
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
ffff800000107d62:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff800000107d9c:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff800000107ddf:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
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
ffff800000107ed0:	48 3b 45 88          	cmp    -0x78(%rbp),%rax
ffff800000107ed4:	76 15                	jbe    ffff800000107eeb <init_memory+0x3de>
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
ffff800000107ef3:	48 63 d0             	movslq %eax,%rdx
ffff800000107ef6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107efd:	00 00 00 
ffff800000107f00:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
ffff800000107f07:	00 
ffff800000107f08:	48 39 c2             	cmp    %rax,%rdx
ffff800000107f0b:	0f 86 f2 fe ff ff    	jbe    ffff800000107e03 <init_memory+0x2f6>
ffff800000107f11:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107f15:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107f19:	49 89 d0             	mov    %rdx,%r8
ffff800000107f1c:	48 89 c1             	mov    %rax,%rcx
ffff800000107f1f:	48 b8 c0 a6 ff ff ff 	movabs $0xffffffffffffa6c0,%rax
ffff800000107f26:	ff ff ff 
ffff800000107f29:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107f2d:	48 89 c2             	mov    %rax,%rdx
ffff800000107f30:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107f35:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107f3a:	49 89 df             	mov    %rbx,%r15
ffff800000107f3d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107f42:	49 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r9
ffff800000107f49:	ff ff ff 
ffff800000107f4c:	49 01 d9             	add    %rbx,%r9
ffff800000107f4f:	41 ff d1             	call   *%r9
ffff800000107f52:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f59:	00 00 00 
ffff800000107f5c:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f63:	00 
ffff800000107f64:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f6b:	00 00 00 
ffff800000107f6e:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
ffff800000107f72:	48 89 d0             	mov    %rdx,%rax
ffff800000107f75:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f79:	48 01 d0             	add    %rdx,%rax
ffff800000107f7c:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107f80:	48 01 c8             	add    %rcx,%rax
ffff800000107f83:	48 8b 08             	mov    (%rax),%rcx
ffff800000107f86:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107f8d:	00 00 00 
ffff800000107f90:	48 8b 94 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rdx
ffff800000107f97:	00 
ffff800000107f98:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff800000107f9f:	00 00 00 
ffff800000107fa2:	48 89 d0             	mov    %rdx,%rax
ffff800000107fa5:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fa9:	48 01 d0             	add    %rdx,%rax
ffff800000107fac:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000107fb0:	48 01 d8             	add    %rbx,%rax
ffff800000107fb3:	48 01 f0             	add    %rsi,%rax
ffff800000107fb6:	48 83 c0 08          	add    $0x8,%rax
ffff800000107fba:	48 8b 00             	mov    (%rax),%rax
ffff800000107fbd:	48 01 c8             	add    %rcx,%rax
ffff800000107fc0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107fc4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fcb:	00 00 00 
ffff800000107fce:	48 8b 84 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rax
ffff800000107fd5:	00 
ffff800000107fd6:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107fdc:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107fe2:	48 89 c2             	mov    %rax,%rdx
ffff800000107fe5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000107fec:	00 00 00 
ffff800000107fef:	48 89 94 03 88 02 00 	mov    %rdx,0x288(%rbx,%rax,1)
ffff800000107ff6:	00 
ffff800000107ff7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ffb:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000107fff:	48 89 c2             	mov    %rax,%rdx
ffff800000108002:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108009:	00 00 00 
ffff80000010800c:	48 89 94 03 90 02 00 	mov    %rdx,0x290(%rbx,%rax,1)
ffff800000108013:	00 
ffff800000108014:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108018:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010801c:	48 83 c0 3f          	add    $0x3f,%rax
ffff800000108020:	48 c1 e8 03          	shr    $0x3,%rax
ffff800000108024:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108028:	48 89 c2             	mov    %rax,%rdx
ffff80000010802b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108032:	00 00 00 
ffff800000108035:	48 89 94 03 98 02 00 	mov    %rdx,0x298(%rbx,%rax,1)
ffff80000010803c:	00 
ffff80000010803d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108044:	00 00 00 
ffff800000108047:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff80000010804e:	00 
ffff80000010804f:	48 89 c2             	mov    %rax,%rdx
ffff800000108052:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108059:	00 00 00 
ffff80000010805c:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108063:	00 
ffff800000108064:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000108069:	48 89 c7             	mov    %rax,%rdi
ffff80000010806c:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff800000108073:	ff ff ff 
ffff800000108076:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010807a:	ff d0                	call   *%rax
ffff80000010807c:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108083:	00 00 00 
ffff800000108086:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff80000010808d:	00 
ffff80000010808e:	48 89 c2             	mov    %rax,%rdx
ffff800000108091:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108098:	00 00 00 
ffff80000010809b:	48 8b 84 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rax
ffff8000001080a2:	00 
ffff8000001080a3:	48 01 d0             	add    %rdx,%rax
ffff8000001080a6:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff8000001080ac:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff8000001080b2:	48 89 c2             	mov    %rax,%rdx
ffff8000001080b5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080bc:	00 00 00 
ffff8000001080bf:	48 89 94 03 a0 02 00 	mov    %rdx,0x2a0(%rbx,%rax,1)
ffff8000001080c6:	00 
ffff8000001080c7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080cb:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080cf:	48 89 c2             	mov    %rax,%rdx
ffff8000001080d2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001080d9:	00 00 00 
ffff8000001080dc:	48 89 94 03 a8 02 00 	mov    %rdx,0x2a8(%rbx,%rax,1)
ffff8000001080e3:	00 
ffff8000001080e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080e8:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001080ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001080ef:	48 89 d0             	mov    %rdx,%rax
ffff8000001080f2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001080f6:	48 01 d0             	add    %rdx,%rax
ffff8000001080f9:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001080fd:	48 83 c0 07          	add    $0x7,%rax
ffff800000108101:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff800000108105:	48 89 c2             	mov    %rax,%rdx
ffff800000108108:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010810f:	00 00 00 
ffff800000108112:	48 89 94 03 b0 02 00 	mov    %rdx,0x2b0(%rbx,%rax,1)
ffff800000108119:	00 
ffff80000010811a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108121:	00 00 00 
ffff800000108124:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff80000010812b:	00 
ffff80000010812c:	48 89 c2             	mov    %rax,%rdx
ffff80000010812f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108136:	00 00 00 
ffff800000108139:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108140:	00 
ffff800000108141:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108146:	48 89 c7             	mov    %rax,%rdi
ffff800000108149:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff800000108150:	ff ff ff 
ffff800000108153:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108157:	ff d0                	call   *%rax
ffff800000108159:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108160:	00 00 00 
ffff800000108163:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010816a:	00 
ffff80000010816b:	48 89 c2             	mov    %rax,%rdx
ffff80000010816e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108175:	00 00 00 
ffff800000108178:	48 8b 84 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rax
ffff80000010817f:	00 
ffff800000108180:	48 01 d0             	add    %rdx,%rax
ffff800000108183:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000108189:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff80000010818f:	48 89 c2             	mov    %rax,%rdx
ffff800000108192:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108199:	00 00 00 
ffff80000010819c:	48 89 94 03 b8 02 00 	mov    %rdx,0x2b8(%rbx,%rax,1)
ffff8000001081a3:	00 
ffff8000001081a4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081ab:	00 00 00 
ffff8000001081ae:	48 c7 84 03 c0 02 00 	movq   $0x0,0x2c0(%rbx,%rax,1)
ffff8000001081b5:	00 00 00 00 00 
ffff8000001081ba:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081c1:	00 00 00 
ffff8000001081c4:	48 c7 84 03 c8 02 00 	movq   $0x190,0x2c8(%rbx,%rax,1)
ffff8000001081cb:	00 90 01 00 00 
ffff8000001081d0:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081d7:	00 00 00 
ffff8000001081da:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff8000001081e1:	00 
ffff8000001081e2:	48 89 c2             	mov    %rax,%rdx
ffff8000001081e5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001081ec:	00 00 00 
ffff8000001081ef:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff8000001081f6:	00 
ffff8000001081f7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001081fc:	48 89 c7             	mov    %rax,%rdi
ffff8000001081ff:	48 b8 44 82 ff ff ff 	movabs $0xffffffffffff8244,%rax
ffff800000108206:	ff ff ff 
ffff800000108209:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010820d:	ff d0                	call   *%rax
ffff80000010820f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108216:	e9 f8 02 00 00       	jmp    ffff800000108513 <init_memory+0xa06>
ffff80000010821b:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108222:	00 00 00 
ffff800000108225:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108228:	48 63 d0             	movslq %eax,%rdx
ffff80000010822b:	48 01 d9             	add    %rbx,%rcx
ffff80000010822e:	48 89 d0             	mov    %rdx,%rax
ffff800000108231:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108235:	48 01 d0             	add    %rdx,%rax
ffff800000108238:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010823c:	48 01 c8             	add    %rcx,%rax
ffff80000010823f:	48 83 c0 10          	add    $0x10,%rax
ffff800000108243:	8b 00                	mov    (%rax),%eax
ffff800000108245:	83 f8 01             	cmp    $0x1,%eax
ffff800000108248:	0f 85 bd 02 00 00    	jne    ffff80000010850b <init_memory+0x9fe>
ffff80000010824e:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff800000108255:	00 00 00 
ffff800000108258:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010825b:	48 63 d0             	movslq %eax,%rdx
ffff80000010825e:	48 01 d9             	add    %rbx,%rcx
ffff800000108261:	48 89 d0             	mov    %rdx,%rax
ffff800000108264:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108268:	48 01 d0             	add    %rdx,%rax
ffff80000010826b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010826f:	48 01 c8             	add    %rcx,%rax
ffff800000108272:	48 8b 00             	mov    (%rax),%rax
ffff800000108275:	48 05 ff ff 1f 00    	add    $0x1fffff,%rax
ffff80000010827b:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff800000108281:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000108285:	48 b9 90 10 00 00 00 	movabs $0x1090,%rcx
ffff80000010828c:	00 00 00 
ffff80000010828f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108292:	48 63 d0             	movslq %eax,%rdx
ffff800000108295:	48 01 d9             	add    %rbx,%rcx
ffff800000108298:	48 89 d0             	mov    %rdx,%rax
ffff80000010829b:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010829f:	48 01 d0             	add    %rdx,%rax
ffff8000001082a2:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082a6:	48 01 c8             	add    %rcx,%rax
ffff8000001082a9:	48 8b 08             	mov    (%rax),%rcx
ffff8000001082ac:	48 be 90 10 00 00 00 	movabs $0x1090,%rsi
ffff8000001082b3:	00 00 00 
ffff8000001082b6:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001082b9:	48 63 d0             	movslq %eax,%rdx
ffff8000001082bc:	48 89 d0             	mov    %rdx,%rax
ffff8000001082bf:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082c3:	48 01 d0             	add    %rdx,%rax
ffff8000001082c6:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001082ca:	48 01 d8             	add    %rbx,%rax
ffff8000001082cd:	48 01 f0             	add    %rsi,%rax
ffff8000001082d0:	48 83 c0 08          	add    $0x8,%rax
ffff8000001082d4:	48 8b 00             	mov    (%rax),%rax
ffff8000001082d7:	48 01 c8             	add    %rcx,%rax
ffff8000001082da:	48 25 00 00 e0 ff    	and    $0xffffffffffe00000,%rax
ffff8000001082e0:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff8000001082e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001082e8:	48 3b 45 a0          	cmp    -0x60(%rbp),%rax
ffff8000001082ec:	0f 86 1c 02 00 00    	jbe    ffff80000010850e <init_memory+0xa01>
ffff8000001082f2:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001082f9:	00 00 00 
ffff8000001082fc:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108303:	00 
ffff800000108304:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010830b:	00 00 00 
ffff80000010830e:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108315:	00 
ffff800000108316:	48 89 d0             	mov    %rdx,%rax
ffff800000108319:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010831d:	48 01 d0             	add    %rdx,%rax
ffff800000108320:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108324:	48 01 c8             	add    %rcx,%rax
ffff800000108327:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff80000010832b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108332:	00 00 00 
ffff800000108335:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff80000010833c:	00 
ffff80000010833d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000108341:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108348:	00 00 00 
ffff80000010834b:	48 89 94 03 c0 02 00 	mov    %rdx,0x2c0(%rbx,%rax,1)
ffff800000108352:	00 
ffff800000108353:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108357:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff80000010835b:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010835f:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108363:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000108367:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff80000010836b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010836f:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108373:	48 89 c2             	mov    %rax,%rdx
ffff800000108376:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010837a:	48 89 50 20          	mov    %rdx,0x20(%rax)
ffff80000010837e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108382:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000108389:	00 
ffff80000010838a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010838e:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff800000108392:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108396:	48 89 c2             	mov    %rax,%rdx
ffff800000108399:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff80000010839d:	48 89 50 40          	mov    %rdx,0x40(%rax)
ffff8000001083a1:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083a5:	48 c7 40 48 00 00 00 	movq   $0x0,0x48(%rax)
ffff8000001083ac:	00 
ffff8000001083ad:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083b1:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff8000001083b8:	00 
ffff8000001083b9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083bd:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff8000001083c4:	00 00 00 
ffff8000001083c7:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001083cb:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001083cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001083d3:	48 2b 45 a0          	sub    -0x60(%rbp),%rax
ffff8000001083d7:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001083db:	48 89 c2             	mov    %rax,%rdx
ffff8000001083de:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001083e2:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff8000001083e6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001083ed:	00 00 00 
ffff8000001083f0:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff8000001083f7:	00 
ffff8000001083f8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001083fc:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108400:	48 89 c2             	mov    %rax,%rdx
ffff800000108403:	48 89 d0             	mov    %rdx,%rax
ffff800000108406:	48 c1 e0 02          	shl    $0x2,%rax
ffff80000010840a:	48 01 d0             	add    %rdx,%rax
ffff80000010840d:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108411:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000108415:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108419:	48 89 10             	mov    %rdx,(%rax)
ffff80000010841c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108420:	48 8b 00             	mov    (%rax),%rax
ffff800000108423:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000108427:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff80000010842e:	e9 bf 00 00 00       	jmp    ffff8000001084f2 <init_memory+0x9e5>
ffff800000108433:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108437:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010843b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010843e:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108441:	48 98                	cltq   
ffff800000108443:	48 c1 e0 15          	shl    $0x15,%rax
ffff800000108447:	48 89 c2             	mov    %rax,%rdx
ffff80000010844a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010844e:	48 01 c2             	add    %rax,%rdx
ffff800000108451:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108455:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000108459:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010845d:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff800000108464:	00 
ffff800000108465:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108469:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000108470:	00 
ffff800000108471:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108475:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff80000010847c:	00 
ffff80000010847d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108484:	00 00 00 
ffff800000108487:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff80000010848e:	00 
ffff80000010848f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108493:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108497:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff80000010849b:	48 c1 e0 03          	shl    $0x3,%rax
ffff80000010849f:	48 01 d0             	add    %rdx,%rax
ffff8000001084a2:	48 8b 10             	mov    (%rax),%rdx
ffff8000001084a5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084a9:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084ad:	48 c1 e8 15          	shr    $0x15,%rax
ffff8000001084b1:	83 e0 3f             	and    $0x3f,%eax
ffff8000001084b4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001084b9:	89 c1                	mov    %eax,%ecx
ffff8000001084bb:	48 d3 e6             	shl    %cl,%rsi
ffff8000001084be:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001084c5:	00 00 00 
ffff8000001084c8:	48 8b 8c 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rcx
ffff8000001084cf:	00 
ffff8000001084d0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001084d4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001084d8:	48 c1 e8 1b          	shr    $0x1b,%rax
ffff8000001084dc:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001084e0:	48 01 c8             	add    %rcx,%rax
ffff8000001084e3:	48 31 f2             	xor    %rsi,%rdx
ffff8000001084e6:	48 89 10             	mov    %rdx,(%rax)
ffff8000001084e9:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001084ed:	48 83 45 c8 28       	addq   $0x28,-0x38(%rbp)
ffff8000001084f2:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001084f5:	48 63 d0             	movslq %eax,%rdx
ffff8000001084f8:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff8000001084fc:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000108500:	48 39 c2             	cmp    %rax,%rdx
ffff800000108503:	0f 82 2a ff ff ff    	jb     ffff800000108433 <init_memory+0x926>
ffff800000108509:	eb 04                	jmp    ffff80000010850f <init_memory+0xa02>
ffff80000010850b:	90                   	nop
ffff80000010850c:	eb 01                	jmp    ffff80000010850f <init_memory+0xa02>
ffff80000010850e:	90                   	nop
ffff80000010850f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108513:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108516:	48 63 d0             	movslq %eax,%rdx
ffff800000108519:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108520:	00 00 00 
ffff800000108523:	48 8b 84 03 80 02 00 	mov    0x280(%rbx,%rax,1),%rax
ffff80000010852a:	00 
ffff80000010852b:	48 39 c2             	cmp    %rax,%rdx
ffff80000010852e:	0f 86 e7 fc ff ff    	jbe    ffff80000010821b <init_memory+0x70e>
ffff800000108534:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010853b:	00 00 00 
ffff80000010853e:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108545:	00 
ffff800000108546:	48 ba 90 10 00 00 00 	movabs $0x1090,%rdx
ffff80000010854d:	00 00 00 
ffff800000108550:	48 8b 94 13 b8 02 00 	mov    0x2b8(%rbx,%rdx,1),%rdx
ffff800000108557:	00 
ffff800000108558:	48 89 10             	mov    %rdx,(%rax)
ffff80000010855b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108562:	00 00 00 
ffff800000108565:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff80000010856c:	00 
ffff80000010856d:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff800000108574:	00 
ffff800000108575:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010857c:	00 00 00 
ffff80000010857f:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff800000108586:	00 
ffff800000108587:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff80000010858e:	00 
ffff80000010858f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108596:	00 00 00 
ffff800000108599:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001085a0:	00 
ffff8000001085a1:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff8000001085a8:	00 
ffff8000001085a9:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085b0:	00 00 00 
ffff8000001085b3:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001085ba:	00 
ffff8000001085bb:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff8000001085c2:	00 
ffff8000001085c3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085ca:	00 00 00 
ffff8000001085cd:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff8000001085d4:	00 
ffff8000001085d5:	48 89 d0             	mov    %rdx,%rax
ffff8000001085d8:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001085dc:	48 01 d0             	add    %rdx,%rax
ffff8000001085df:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001085e3:	48 83 c0 07          	add    $0x7,%rax
ffff8000001085e7:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff8000001085eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001085ee:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001085f5:	00 00 00 
ffff8000001085f8:	48 89 94 03 c8 02 00 	mov    %rdx,0x2c8(%rbx,%rax,1)
ffff8000001085ff:	00 
ffff800000108600:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108607:	00 00 00 
ffff80000010860a:	48 8b 8c 03 98 02 00 	mov    0x298(%rbx,%rax,1),%rcx
ffff800000108611:	00 
ffff800000108612:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108619:	00 00 00 
ffff80000010861c:	48 8b 94 03 90 02 00 	mov    0x290(%rbx,%rax,1),%rdx
ffff800000108623:	00 
ffff800000108624:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010862b:	00 00 00 
ffff80000010862e:	48 8b 84 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rax
ffff800000108635:	00 
ffff800000108636:	49 89 c9             	mov    %rcx,%r9
ffff800000108639:	49 89 d0             	mov    %rdx,%r8
ffff80000010863c:	48 89 c1             	mov    %rax,%rcx
ffff80000010863f:	48 b8 f0 a6 ff ff ff 	movabs $0xffffffffffffa6f0,%rax
ffff800000108646:	ff ff ff 
ffff800000108649:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010864d:	48 89 c2             	mov    %rax,%rdx
ffff800000108650:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108655:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010865a:	49 89 df             	mov    %rbx,%r15
ffff80000010865d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108662:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff800000108669:	ff ff ff 
ffff80000010866c:	49 01 da             	add    %rbx,%r10
ffff80000010866f:	41 ff d2             	call   *%r10
ffff800000108672:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108679:	00 00 00 
ffff80000010867c:	48 8b 8c 03 b0 02 00 	mov    0x2b0(%rbx,%rax,1),%rcx
ffff800000108683:	00 
ffff800000108684:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010868b:	00 00 00 
ffff80000010868e:	48 8b 94 03 a8 02 00 	mov    0x2a8(%rbx,%rax,1),%rdx
ffff800000108695:	00 
ffff800000108696:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010869d:	00 00 00 
ffff8000001086a0:	48 8b 84 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rax
ffff8000001086a7:	00 
ffff8000001086a8:	49 89 c9             	mov    %rcx,%r9
ffff8000001086ab:	49 89 d0             	mov    %rdx,%r8
ffff8000001086ae:	48 89 c1             	mov    %rax,%rcx
ffff8000001086b1:	48 b8 28 a7 ff ff ff 	movabs $0xffffffffffffa728,%rax
ffff8000001086b8:	ff ff ff 
ffff8000001086bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001086bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001086c2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001086c7:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001086cc:	49 89 df             	mov    %rbx,%r15
ffff8000001086cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001086d4:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff8000001086db:	ff ff ff 
ffff8000001086de:	49 01 da             	add    %rbx,%r10
ffff8000001086e1:	41 ff d2             	call   *%r10
ffff8000001086e4:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086eb:	00 00 00 
ffff8000001086ee:	48 8b 8c 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rcx
ffff8000001086f5:	00 
ffff8000001086f6:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001086fd:	00 00 00 
ffff800000108700:	48 8b 94 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rdx
ffff800000108707:	00 
ffff800000108708:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010870f:	00 00 00 
ffff800000108712:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108719:	00 
ffff80000010871a:	49 89 c9             	mov    %rcx,%r9
ffff80000010871d:	49 89 d0             	mov    %rdx,%r8
ffff800000108720:	48 89 c1             	mov    %rax,%rcx
ffff800000108723:	48 b8 68 a7 ff ff ff 	movabs $0xffffffffffffa768,%rax
ffff80000010872a:	ff ff ff 
ffff80000010872d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108731:	48 89 c2             	mov    %rax,%rdx
ffff800000108734:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108739:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010873e:	49 89 df             	mov    %rbx,%r15
ffff800000108741:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108746:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff80000010874d:	ff ff ff 
ffff800000108750:	49 01 da             	add    %rbx,%r10
ffff800000108753:	41 ff d2             	call   *%r10
ffff800000108756:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff80000010875d:	00 00 00 
ffff800000108760:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108767:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff80000010876e:	00 00 00 
ffff800000108771:	c7 04 03 00 00 00 00 	movl   $0x0,(%rbx,%rax,1)
ffff800000108778:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010877f:	e9 c1 00 00 00       	jmp    ffff800000108845 <init_memory+0xd38>
ffff800000108784:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010878b:	00 00 00 
ffff80000010878e:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108795:	00 
ffff800000108796:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108799:	48 63 d0             	movslq %eax,%rdx
ffff80000010879c:	48 89 d0             	mov    %rdx,%rax
ffff80000010879f:	48 c1 e0 02          	shl    $0x2,%rax
ffff8000001087a3:	48 01 d0             	add    %rdx,%rax
ffff8000001087a6:	48 c1 e0 04          	shl    $0x4,%rax
ffff8000001087aa:	48 01 c8             	add    %rcx,%rax
ffff8000001087ad:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001087b1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087b5:	48 8b 48 08          	mov    0x8(%rax),%rcx
ffff8000001087b9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087bd:	48 8b 10             	mov    (%rax),%rdx
ffff8000001087c0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087c4:	48 8b 78 20          	mov    0x20(%rax),%rdi
ffff8000001087c8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087cc:	48 8b 70 18          	mov    0x18(%rax),%rsi
ffff8000001087d0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001087d4:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001087d8:	51                   	push   %rcx
ffff8000001087d9:	52                   	push   %rdx
ffff8000001087da:	49 89 f9             	mov    %rdi,%r9
ffff8000001087dd:	49 89 f0             	mov    %rsi,%r8
ffff8000001087e0:	48 89 c1             	mov    %rax,%rcx
ffff8000001087e3:	48 b8 a8 a7 ff ff ff 	movabs $0xffffffffffffa7a8,%rax
ffff8000001087ea:	ff ff ff 
ffff8000001087ed:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001087f1:	48 89 c2             	mov    %rax,%rdx
ffff8000001087f4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001087f9:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff8000001087fe:	49 89 df             	mov    %rbx,%r15
ffff800000108801:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108806:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff80000010880d:	ff ff ff 
ffff800000108810:	49 01 da             	add    %rbx,%r10
ffff800000108813:	41 ff d2             	call   *%r10
ffff800000108816:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010881a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010881e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108822:	48 ba 00 00 00 00 01 	movabs $0x100000000,%rdx
ffff800000108829:	00 00 00 
ffff80000010882c:	48 39 d0             	cmp    %rdx,%rax
ffff80000010882f:	75 10                	jne    ffff800000108841 <init_memory+0xd34>
ffff800000108831:	48 ba 78 10 00 00 00 	movabs $0x1078,%rdx
ffff800000108838:	00 00 00 
ffff80000010883b:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010883e:	89 04 13             	mov    %eax,(%rbx,%rdx,1)
ffff800000108841:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108845:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108848:	48 63 d0             	movslq %eax,%rdx
ffff80000010884b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108852:	00 00 00 
ffff800000108855:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff80000010885c:	00 
ffff80000010885d:	48 39 c2             	cmp    %rax,%rdx
ffff800000108860:	0f 82 1e ff ff ff    	jb     ffff800000108784 <init_memory+0xc77>
ffff800000108866:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff80000010886d:	00 00 00 
ffff800000108870:	48 8b 84 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rax
ffff800000108877:	00 
ffff800000108878:	48 89 c2             	mov    %rax,%rdx
ffff80000010887b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108882:	00 00 00 
ffff800000108885:	48 8b 84 03 c8 02 00 	mov    0x2c8(%rbx,%rax,1),%rax
ffff80000010888c:	00 
ffff80000010888d:	48 01 d0             	add    %rdx,%rax
ffff800000108890:	48 05 00 01 00 00    	add    $0x100,%rax
ffff800000108896:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
ffff80000010889a:	48 89 c2             	mov    %rax,%rdx
ffff80000010889d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088a4:	00 00 00 
ffff8000001088a7:	48 89 94 03 f0 02 00 	mov    %rdx,0x2f0(%rbx,%rax,1)
ffff8000001088ae:	00 
ffff8000001088af:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088b6:	00 00 00 
ffff8000001088b9:	48 8b 8c 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rcx
ffff8000001088c0:	00 
ffff8000001088c1:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088c8:	00 00 00 
ffff8000001088cb:	48 8b 94 03 e8 02 00 	mov    0x2e8(%rbx,%rax,1),%rdx
ffff8000001088d2:	00 
ffff8000001088d3:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088da:	00 00 00 
ffff8000001088dd:	48 8b bc 03 e0 02 00 	mov    0x2e0(%rbx,%rax,1),%rdi
ffff8000001088e4:	00 
ffff8000001088e5:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088ec:	00 00 00 
ffff8000001088ef:	48 8b b4 03 d8 02 00 	mov    0x2d8(%rbx,%rax,1),%rsi
ffff8000001088f6:	00 
ffff8000001088f7:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff8000001088fe:	00 00 00 
ffff800000108901:	48 8b 84 03 d0 02 00 	mov    0x2d0(%rbx,%rax,1),%rax
ffff800000108908:	00 
ffff800000108909:	51                   	push   %rcx
ffff80000010890a:	52                   	push   %rdx
ffff80000010890b:	49 89 f9             	mov    %rdi,%r9
ffff80000010890e:	49 89 f0             	mov    %rsi,%r8
ffff800000108911:	48 89 c1             	mov    %rax,%rcx
ffff800000108914:	48 b8 20 a8 ff ff ff 	movabs $0xffffffffffffa820,%rax
ffff80000010891b:	ff ff ff 
ffff80000010891e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108922:	48 89 c2             	mov    %rax,%rdx
ffff800000108925:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010892a:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010892f:	49 89 df             	mov    %rbx,%r15
ffff800000108932:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108937:	49 ba c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r10
ffff80000010893e:	ff ff ff 
ffff800000108941:	49 01 da             	add    %rbx,%r10
ffff800000108944:	41 ff d2             	call   *%r10
ffff800000108947:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010894b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108952:	00 00 00 
ffff800000108955:	48 8b 84 03 f0 02 00 	mov    0x2f0(%rbx,%rax,1),%rax
ffff80000010895c:	00 
ffff80000010895d:	48 ba 00 00 00 00 00 	movabs $0x800000000000,%rdx
ffff800000108964:	80 00 00 
ffff800000108967:	48 01 d0             	add    %rdx,%rax
ffff80000010896a:	48 c1 e8 15          	shr    $0x15,%rax
ffff80000010896e:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000108971:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108978:	eb 45                	jmp    ffff8000001089bf <init_memory+0xeb2>
ffff80000010897a:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108981:	00 00 00 
ffff800000108984:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff80000010898b:	00 
ffff80000010898c:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff80000010898f:	48 63 d0             	movslq %eax,%rdx
ffff800000108992:	48 89 d0             	mov    %rdx,%rax
ffff800000108995:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108999:	48 01 d0             	add    %rdx,%rax
ffff80000010899c:	48 c1 e0 03          	shl    $0x3,%rax
ffff8000001089a0:	48 01 c8             	add    %rcx,%rax
ffff8000001089a3:	be 93 00 00 00       	mov    $0x93,%esi
ffff8000001089a8:	48 89 c7             	mov    %rax,%rdi
ffff8000001089ab:	48 b8 47 83 ff ff ff 	movabs $0xffffffffffff8347,%rax
ffff8000001089b2:	ff ff ff 
ffff8000001089b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001089b9:	ff d0                	call   *%rax
ffff8000001089bb:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
ffff8000001089bf:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff8000001089c2:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff8000001089c5:	7e b3                	jle    ffff80000010897a <init_memory+0xe6d>
ffff8000001089c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001089cc:	48 ba 1e 83 ff ff ff 	movabs $0xffffffffffff831e,%rdx
ffff8000001089d3:	ff ff ff 
ffff8000001089d6:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff8000001089da:	ff d2                	call   *%rdx
ffff8000001089dc:	48 ba 80 10 00 00 00 	movabs $0x1080,%rdx
ffff8000001089e3:	00 00 00 
ffff8000001089e6:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff8000001089ea:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff8000001089f1:	00 00 00 
ffff8000001089f4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001089f8:	48 89 c1             	mov    %rax,%rcx
ffff8000001089fb:	48 b8 7c a8 ff ff ff 	movabs $0xffffffffffffa87c,%rax
ffff800000108a02:	ff ff ff 
ffff800000108a05:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a09:	48 89 c2             	mov    %rax,%rdx
ffff800000108a0c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a11:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a16:	49 89 df             	mov    %rbx,%r15
ffff800000108a19:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a1e:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000108a25:	ff ff ff 
ffff800000108a28:	49 01 d8             	add    %rbx,%r8
ffff800000108a2b:	41 ff d0             	call   *%r8
ffff800000108a2e:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a35:	00 00 00 
ffff800000108a38:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a3c:	48 89 c2             	mov    %rax,%rdx
ffff800000108a3f:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a46:	80 ff ff 
ffff800000108a49:	48 01 d0             	add    %rdx,%rax
ffff800000108a4c:	48 8b 00             	mov    (%rax),%rax
ffff800000108a4f:	48 89 c1             	mov    %rax,%rcx
ffff800000108a52:	48 b8 91 a8 ff ff ff 	movabs $0xffffffffffffa891,%rax
ffff800000108a59:	ff ff ff 
ffff800000108a5c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108a60:	48 89 c2             	mov    %rax,%rdx
ffff800000108a63:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108a68:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108a6d:	49 89 df             	mov    %rbx,%r15
ffff800000108a70:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108a75:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000108a7c:	ff ff ff 
ffff800000108a7f:	49 01 d8             	add    %rbx,%r8
ffff800000108a82:	41 ff d0             	call   *%r8
ffff800000108a85:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108a8c:	00 00 00 
ffff800000108a8f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108a93:	48 89 c2             	mov    %rax,%rdx
ffff800000108a96:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108a9d:	80 ff ff 
ffff800000108aa0:	48 01 d0             	add    %rdx,%rax
ffff800000108aa3:	48 8b 00             	mov    (%rax),%rax
ffff800000108aa6:	b0 00                	mov    $0x0,%al
ffff800000108aa8:	48 89 c2             	mov    %rax,%rdx
ffff800000108aab:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108ab2:	80 ff ff 
ffff800000108ab5:	48 01 d0             	add    %rdx,%rax
ffff800000108ab8:	48 8b 00             	mov    (%rax),%rax
ffff800000108abb:	b0 00                	mov    $0x0,%al
ffff800000108abd:	48 89 c1             	mov    %rax,%rcx
ffff800000108ac0:	48 b8 a7 a8 ff ff ff 	movabs $0xffffffffffffa8a7,%rax
ffff800000108ac7:	ff ff ff 
ffff800000108aca:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108ace:	48 89 c2             	mov    %rax,%rdx
ffff800000108ad1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108ad6:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108adb:	49 89 df             	mov    %rbx,%r15
ffff800000108ade:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108ae3:	49 b8 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%r8
ffff800000108aea:	ff ff ff 
ffff800000108aed:	49 01 d8             	add    %rbx,%r8
ffff800000108af0:	41 ff d0             	call   *%r8
ffff800000108af3:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000108afa:	eb 36                	jmp    ffff800000108b32 <init_memory+0x1025>
ffff800000108afc:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108aff:	48 98                	cltq   
ffff800000108b01:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000108b08:	00 
ffff800000108b09:	48 b8 80 10 00 00 00 	movabs $0x1080,%rax
ffff800000108b10:	00 00 00 
ffff800000108b13:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000108b17:	48 01 c2             	add    %rax,%rdx
ffff800000108b1a:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000108b21:	80 ff ff 
ffff800000108b24:	48 01 d0             	add    %rdx,%rax
ffff800000108b27:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108b2e:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108b32:	83 7d ec 09          	cmpl   $0x9,-0x14(%rbp)
ffff800000108b36:	7e c4                	jle    ffff800000108afc <init_memory+0xfef>
ffff800000108b38:	48 b8 be a8 ff ff ff 	movabs $0xffffffffffffa8be,%rax
ffff800000108b3f:	ff ff ff 
ffff800000108b42:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108b46:	48 89 c2             	mov    %rax,%rdx
ffff800000108b49:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108b4e:	bf ff ff 00 00       	mov    $0xffff,%edi
ffff800000108b53:	49 89 df             	mov    %rbx,%r15
ffff800000108b56:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108b5b:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000108b62:	ff ff ff 
ffff800000108b65:	48 01 d9             	add    %rbx,%rcx
ffff800000108b68:	ff d1                	call   *%rcx
ffff800000108b6a:	0f 20 d8             	mov    %cr3,%rax
ffff800000108b6d:	0f 22 d8             	mov    %rax,%cr3
ffff800000108b70:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108b74:	90                   	nop
ffff800000108b75:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff800000108b79:	5b                   	pop    %rbx
ffff800000108b7a:	41 5f                	pop    %r15
ffff800000108b7c:	5d                   	pop    %rbp
ffff800000108b7d:	c3                   	ret    

ffff800000108b7e <alloc_page>:
ffff800000108b7e:	f3 0f 1e fa          	endbr64 
ffff800000108b82:	55                   	push   %rbp
ffff800000108b83:	48 89 e5             	mov    %rsp,%rbp
ffff800000108b86:	41 57                	push   %r15
ffff800000108b88:	53                   	push   %rbx
ffff800000108b89:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000108b8d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000108b8d <alloc_page+0xf>
ffff800000108b94:	49 bb 23 6a 00 00 00 	movabs $0x6a23,%r11
ffff800000108b9b:	00 00 00 
ffff800000108b9e:	4c 01 db             	add    %r11,%rbx
ffff800000108ba1:	89 bd 7c ff ff ff    	mov    %edi,-0x84(%rbp)
ffff800000108ba7:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
ffff800000108bad:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
ffff800000108bb4:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
ffff800000108bbb:	00 
ffff800000108bbc:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bc3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000108bca:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bd1:	74 5b                	je     ffff800000108c2e <alloc_page+0xb0>
ffff800000108bd3:	83 bd 7c ff ff ff 04 	cmpl   $0x4,-0x84(%rbp)
ffff800000108bda:	7f 7c                	jg     ffff800000108c58 <alloc_page+0xda>
ffff800000108bdc:	83 bd 7c ff ff ff 01 	cmpl   $0x1,-0x84(%rbp)
ffff800000108be3:	74 0b                	je     ffff800000108bf0 <alloc_page+0x72>
ffff800000108be5:	83 bd 7c ff ff ff 02 	cmpl   $0x2,-0x84(%rbp)
ffff800000108bec:	74 1e                	je     ffff800000108c0c <alloc_page+0x8e>
ffff800000108bee:	eb 68                	jmp    ffff800000108c58 <alloc_page+0xda>
ffff800000108bf0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
ffff800000108bf7:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108bfe:	00 00 00 
ffff800000108c01:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c04:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c07:	e9 88 00 00 00       	jmp    ffff800000108c94 <alloc_page+0x116>
ffff800000108c0c:	48 b8 70 10 00 00 00 	movabs $0x1070,%rax
ffff800000108c13:	00 00 00 
ffff800000108c16:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c19:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c1c:	48 b8 74 10 00 00 00 	movabs $0x1074,%rax
ffff800000108c23:	00 00 00 
ffff800000108c26:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c29:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c2c:	eb 66                	jmp    ffff800000108c94 <alloc_page+0x116>
ffff800000108c2e:	48 b8 78 10 00 00 00 	movabs $0x1078,%rax
ffff800000108c35:	00 00 00 
ffff800000108c38:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000108c3b:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000108c3e:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108c45:	00 00 00 
ffff800000108c48:	48 8b 84 03 c0 02 00 	mov    0x2c0(%rbx,%rax,1),%rax
ffff800000108c4f:	00 
ffff800000108c50:	83 e8 01             	sub    $0x1,%eax
ffff800000108c53:	89 45 e4             	mov    %eax,-0x1c(%rbp)
ffff800000108c56:	eb 3c                	jmp    ffff800000108c94 <alloc_page+0x116>
ffff800000108c58:	48 b8 c8 a8 ff ff ff 	movabs $0xffffffffffffa8c8,%rax
ffff800000108c5f:	ff ff ff 
ffff800000108c62:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108c66:	48 89 c2             	mov    %rax,%rdx
ffff800000108c69:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000108c6e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000108c73:	49 89 df             	mov    %rbx,%r15
ffff800000108c76:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c7b:	48 b9 c9 52 ff ff ff 	movabs $0xffffffffffff52c9,%rcx
ffff800000108c82:	ff ff ff 
ffff800000108c85:	48 01 d9             	add    %rbx,%rcx
ffff800000108c88:	ff d1                	call   *%rcx
ffff800000108c8a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108c8f:	e9 79 02 00 00       	jmp    ffff800000108f0d <alloc_page+0x38f>
ffff800000108c94:	8b 45 e8             	mov    -0x18(%rbp),%eax
ffff800000108c97:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000108c9a:	e9 5d 02 00 00       	jmp    ffff800000108efc <alloc_page+0x37e>
ffff800000108c9f:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108ca6:	00 00 00 
ffff800000108ca9:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108cb0:	00 
ffff800000108cb1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108cb4:	48 63 d0             	movslq %eax,%rdx
ffff800000108cb7:	48 89 d0             	mov    %rdx,%rax
ffff800000108cba:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cbe:	48 01 d0             	add    %rdx,%rax
ffff800000108cc1:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108cc5:	48 01 c8             	add    %rcx,%rax
ffff800000108cc8:	48 8b 50 40          	mov    0x40(%rax),%rdx
ffff800000108ccc:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108cd2:	48 98                	cltq   
ffff800000108cd4:	48 39 c2             	cmp    %rax,%rdx
ffff800000108cd7:	0f 82 1a 02 00 00    	jb     ffff800000108ef7 <alloc_page+0x379>
ffff800000108cdd:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108ce4:	00 00 00 
ffff800000108ce7:	48 8b 8c 03 b8 02 00 	mov    0x2b8(%rbx,%rax,1),%rcx
ffff800000108cee:	00 
ffff800000108cef:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108cf2:	48 63 d0             	movslq %eax,%rdx
ffff800000108cf5:	48 89 d0             	mov    %rdx,%rax
ffff800000108cf8:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108cfc:	48 01 d0             	add    %rdx,%rax
ffff800000108cff:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000108d03:	48 01 c8             	add    %rcx,%rax
ffff800000108d06:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000108d0a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d0e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108d12:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d16:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
ffff800000108d1a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d1e:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000108d22:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d26:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff800000108d2a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000108d2e:	48 8b 40 20          	mov    0x20(%rax),%rax
ffff800000108d32:	48 c1 e8 15          	shr    $0x15,%rax
ffff800000108d36:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000108d3a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d3e:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d41:	48 89 c2             	mov    %rax,%rdx
ffff800000108d44:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108d49:	48 29 d0             	sub    %rdx,%rax
ffff800000108d4c:	48 89 45 98          	mov    %rax,-0x68(%rbp)
ffff800000108d50:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
ffff800000108d54:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000108d58:	e9 8a 01 00 00       	jmp    ffff800000108ee7 <alloc_page+0x369>
ffff800000108d5d:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108d64:	00 00 00 
ffff800000108d67:	48 8b 94 03 88 02 00 	mov    0x288(%rbx,%rax,1),%rdx
ffff800000108d6e:	00 
ffff800000108d6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108d73:	48 c1 e8 06          	shr    $0x6,%rax
ffff800000108d77:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108d7b:	48 01 d0             	add    %rdx,%rax
ffff800000108d7e:	48 89 45 90          	mov    %rax,-0x70(%rbp)
ffff800000108d82:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108d86:	83 e0 3f             	and    $0x3f,%eax
ffff800000108d89:	48 89 45 88          	mov    %rax,-0x78(%rbp)
ffff800000108d8d:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000108d91:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000108d95:	e9 1f 01 00 00       	jmp    ffff800000108eb9 <alloc_page+0x33b>
ffff800000108d9a:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108d9e:	48 8b 00             	mov    (%rax),%rax
ffff800000108da1:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000108da5:	89 d1                	mov    %edx,%ecx
ffff800000108da7:	48 d3 e8             	shr    %cl,%rax
ffff800000108daa:	48 89 c6             	mov    %rax,%rsi
ffff800000108dad:	48 8b 45 90          	mov    -0x70(%rbp),%rax
ffff800000108db1:	48 83 c0 08          	add    $0x8,%rax
ffff800000108db5:	48 8b 10             	mov    (%rax),%rdx
ffff800000108db8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108dbc:	89 c1                	mov    %eax,%ecx
ffff800000108dbe:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108dc3:	29 c8                	sub    %ecx,%eax
ffff800000108dc5:	89 c1                	mov    %eax,%ecx
ffff800000108dc7:	48 d3 e2             	shl    %cl,%rdx
ffff800000108dca:	48 89 d0             	mov    %rdx,%rax
ffff800000108dcd:	48 09 c6             	or     %rax,%rsi
ffff800000108dd0:	48 89 f2             	mov    %rsi,%rdx
ffff800000108dd3:	83 bd 78 ff ff ff 40 	cmpl   $0x40,-0x88(%rbp)
ffff800000108dda:	74 19                	je     ffff800000108df5 <alloc_page+0x277>
ffff800000108ddc:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108de2:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000108de7:	89 c1                	mov    %eax,%ecx
ffff800000108de9:	48 d3 e6             	shl    %cl,%rsi
ffff800000108dec:	48 89 f0             	mov    %rsi,%rax
ffff800000108def:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108df3:	eb 07                	jmp    ffff800000108dfc <alloc_page+0x27e>
ffff800000108df5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
ffff800000108dfc:	48 21 d0             	and    %rdx,%rax
ffff800000108dff:	48 85 c0             	test   %rax,%rax
ffff800000108e02:	0f 85 ac 00 00 00    	jne    ffff800000108eb4 <alloc_page+0x336>
ffff800000108e08:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000108e0c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108e10:	48 01 d0             	add    %rdx,%rax
ffff800000108e13:	48 83 e8 01          	sub    $0x1,%rax
ffff800000108e17:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000108e1b:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
ffff800000108e22:	00 
ffff800000108e23:	eb 58                	jmp    ffff800000108e7d <alloc_page+0x2ff>
ffff800000108e25:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e2c:	00 00 00 
ffff800000108e2f:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e36:	00 
ffff800000108e37:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108e3b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108e3f:	48 01 c2             	add    %rax,%rdx
ffff800000108e42:	48 89 d0             	mov    %rdx,%rax
ffff800000108e45:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108e49:	48 01 d0             	add    %rdx,%rax
ffff800000108e4c:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108e50:	48 01 c8             	add    %rcx,%rax
ffff800000108e53:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff800000108e57:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
ffff800000108e5e:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff800000108e62:	48 89 d6             	mov    %rdx,%rsi
ffff800000108e65:	48 89 c7             	mov    %rax,%rdi
ffff800000108e68:	48 b8 47 83 ff ff ff 	movabs $0xffffffffffff8347,%rax
ffff800000108e6f:	ff ff ff 
ffff800000108e72:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000108e76:	ff d0                	call   *%rax
ffff800000108e78:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff800000108e7d:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
ffff800000108e83:	48 98                	cltq   
ffff800000108e85:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
ffff800000108e89:	72 9a                	jb     ffff800000108e25 <alloc_page+0x2a7>
ffff800000108e8b:	48 b8 90 10 00 00 00 	movabs $0x1090,%rax
ffff800000108e92:	00 00 00 
ffff800000108e95:	48 8b 8c 03 a0 02 00 	mov    0x2a0(%rbx,%rax,1),%rcx
ffff800000108e9c:	00 
ffff800000108e9d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108ea1:	48 89 d0             	mov    %rdx,%rax
ffff800000108ea4:	48 c1 e0 02          	shl    $0x2,%rax
ffff800000108ea8:	48 01 d0             	add    %rdx,%rax
ffff800000108eab:	48 c1 e0 03          	shl    $0x3,%rax
ffff800000108eaf:	48 01 c8             	add    %rcx,%rax
ffff800000108eb2:	eb 59                	jmp    ffff800000108f0d <alloc_page+0x38f>
ffff800000108eb4:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff800000108eb9:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108ebe:	48 2b 45 88          	sub    -0x78(%rbp),%rax
ffff800000108ec2:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff800000108ec6:	0f 82 ce fe ff ff    	jb     ffff800000108d9a <alloc_page+0x21c>
ffff800000108ecc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108ed0:	83 e0 3f             	and    $0x3f,%eax
ffff800000108ed3:	48 85 c0             	test   %rax,%rax
ffff800000108ed6:	74 06                	je     ffff800000108ede <alloc_page+0x360>
ffff800000108ed8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000108edc:	eb 05                	jmp    ffff800000108ee3 <alloc_page+0x365>
ffff800000108ede:	b8 40 00 00 00       	mov    $0x40,%eax
ffff800000108ee3:	48 01 45 d8          	add    %rax,-0x28(%rbp)
ffff800000108ee7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108eeb:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
ffff800000108eef:	0f 86 68 fe ff ff    	jbe    ffff800000108d5d <alloc_page+0x1df>
ffff800000108ef5:	eb 01                	jmp    ffff800000108ef8 <alloc_page+0x37a>
ffff800000108ef7:	90                   	nop
ffff800000108ef8:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
ffff800000108efc:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000108eff:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
ffff800000108f02:	0f 8e 97 fd ff ff    	jle    ffff800000108c9f <alloc_page+0x121>
ffff800000108f08:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108f0d:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff800000108f11:	5b                   	pop    %rbx
ffff800000108f12:	41 5f                	pop    %r15
ffff800000108f14:	5d                   	pop    %rbp
ffff800000108f15:	c3                   	ret    
