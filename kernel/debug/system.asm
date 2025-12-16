
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 d0 87 00 00 	lgdt   0x87d0(%rip)        # ffff8000001087e8 <GDT_END>
ffff800000100018:	0f 01 1d d3 97 00 00 	lidt   0x97d3(%rip)        # ffff8000001097f2 <IDT_END>
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
ffff800000100099:	48 8d 3d 52 87 00 00 	lea    0x8752(%rip),%rdi        # ffff8000001087f2 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 3e 97 00 00 	lea    0x973e(%rip),%rdx        # ffff8000001097fc <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d 68 86 00 00 	lea    0x8668(%rip),%rdi        # ffff800000108760 <GDT_Table>
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
ffff800000100161:	e8 d9 43 00 00       	call   ffff80000010453f <color_printk>
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
ffff80000010400f:	49 bb 28 99 00 00 00 	movabs $0x9928,%r11
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
ffff80000010413c:	48 83 ec 10          	sub    $0x10,%rsp
ffff800000104140:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104140 <Start_Kernel+0xf>
ffff800000104147:	49 bb f0 97 00 00 00 	movabs $0x97f0,%r11
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
ffff8000001042b0:	48 b8 d0 66 ff ff ff 	movabs $0xffffffffffff66d0,%rax
ffff8000001042b7:	ff ff ff 
ffff8000001042ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042be:	ff d0                	call   *%rax
ffff8000001042c0:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001042c4:	49 89 df             	mov    %rbx,%r15
ffff8000001042c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042cc:	48 ba 0a 96 ff ff ff 	movabs $0xffffffffffff960a,%rdx
ffff8000001042d3:	ff ff ff 
ffff8000001042d6:	48 01 da             	add    %rbx,%rdx
ffff8000001042d9:	ff d2                	call   *%rdx
ffff8000001042db:	48 b8 10 9d ff ff ff 	movabs $0xffffffffffff9d10,%rax
ffff8000001042e2:	ff ff ff 
ffff8000001042e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001042e9:	48 89 c2             	mov    %rax,%rdx
ffff8000001042ec:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001042f1:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001042f6:	49 89 df             	mov    %rbx,%r15
ffff8000001042f9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042fe:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000104305:	ff ff ff 
ffff800000104308:	48 01 d9             	add    %rbx,%rcx
ffff80000010430b:	ff d1                	call   *%rcx
ffff80000010430d:	48 b8 21 9d ff ff ff 	movabs $0xffffffffffff9d21,%rax
ffff800000104314:	ff ff ff 
ffff800000104317:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010431b:	48 89 c2             	mov    %rax,%rdx
ffff80000010431e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104323:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104328:	49 89 df             	mov    %rbx,%r15
ffff80000010432b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104330:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000104337:	ff ff ff 
ffff80000010433a:	48 01 d9             	add    %rbx,%rcx
ffff80000010433d:	ff d1                	call   *%rcx
ffff80000010433f:	48 b8 30 9d ff ff ff 	movabs $0xffffffffffff9d30,%rax
ffff800000104346:	ff ff ff 
ffff800000104349:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010434d:	48 89 c2             	mov    %rax,%rdx
ffff800000104350:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104355:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010435a:	49 89 df             	mov    %rbx,%r15
ffff80000010435d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104362:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000104369:	ff ff ff 
ffff80000010436c:	48 01 d9             	add    %rbx,%rcx
ffff80000010436f:	ff d1                	call   *%rcx
ffff800000104371:	49 89 df             	mov    %rbx,%r15
ffff800000104374:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104379:	48 ba 89 9b ff ff ff 	movabs $0xffffffffffff9b89,%rdx
ffff800000104380:	ff ff ff 
ffff800000104383:	48 01 da             	add    %rbx,%rdx
ffff800000104386:	ff d2                	call   *%rdx
ffff800000104388:	48 b8 88 9d ff ff ff 	movabs $0xffffffffffff9d88,%rax
ffff80000010438f:	ff ff ff 
ffff800000104392:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104396:	48 89 c2             	mov    %rax,%rdx
ffff800000104399:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010439e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043a3:	49 89 df             	mov    %rbx,%r15
ffff8000001043a6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043ab:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001043b2:	ff ff ff 
ffff8000001043b5:	48 01 d9             	add    %rbx,%rcx
ffff8000001043b8:	ff d1                	call   *%rcx
ffff8000001043ba:	48 b8 c0 9d ff ff ff 	movabs $0xffffffffffff9dc0,%rax
ffff8000001043c1:	ff ff ff 
ffff8000001043c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001043c8:	48 89 c2             	mov    %rax,%rdx
ffff8000001043cb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001043d0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001043d5:	49 89 df             	mov    %rbx,%r15
ffff8000001043d8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001043dd:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001043e4:	ff ff ff 
ffff8000001043e7:	48 01 d9             	add    %rbx,%rcx
ffff8000001043ea:	ff d1                	call   *%rcx
ffff8000001043ec:	90                   	nop
ffff8000001043ed:	eb fd                	jmp    ffff8000001043ec <Start_Kernel+0x2bb>

ffff8000001043ef <Cstrlen>:
ffff8000001043ef:	f3 0f 1e fa          	endbr64
ffff8000001043f3:	55                   	push   %rbp
ffff8000001043f4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001043f7:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001043f7 <Cstrlen+0x8>
ffff8000001043fe:	49 bb 39 95 00 00 00 	movabs $0x9539,%r11
ffff800000104405:	00 00 00 
ffff800000104408:	4c 01 d8             	add    %r11,%rax
ffff80000010440b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010440f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104413:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104417:	eb 05                	jmp    ffff80000010441e <Cstrlen+0x2f>
ffff800000104419:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff80000010441e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104422:	0f b6 00             	movzbl (%rax),%eax
ffff800000104425:	84 c0                	test   %al,%al
ffff800000104427:	75 f0                	jne    ffff800000104419 <Cstrlen+0x2a>
ffff800000104429:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010442d:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff800000104431:	5d                   	pop    %rbp
ffff800000104432:	c3                   	ret

ffff800000104433 <putchar>:
ffff800000104433:	f3 0f 1e fa          	endbr64
ffff800000104437:	55                   	push   %rbp
ffff800000104438:	48 89 e5             	mov    %rsp,%rbp
ffff80000010443b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010443b <putchar+0x8>
ffff800000104442:	49 bb f5 94 00 00 00 	movabs $0x94f5,%r11
ffff800000104449:	00 00 00 
ffff80000010444c:	4c 01 d8             	add    %r11,%rax
ffff80000010444f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000104453:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104456:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104459:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff80000010445c:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104460:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff800000104464:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104467:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff80000010446a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104471:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104478:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff80000010447f:	00 
ffff800000104480:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104487:	00 
ffff800000104488:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff80000010448f:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff800000104493:	48 63 d2             	movslq %edx,%rdx
ffff800000104496:	48 89 d1             	mov    %rdx,%rcx
ffff800000104499:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010449d:	48 ba 50 bf ff ff ff 	movabs $0xffffffffffffbf50,%rdx
ffff8000001044a4:	ff ff ff 
ffff8000001044a7:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001044ab:	48 01 c8             	add    %rcx,%rax
ffff8000001044ae:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001044b2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001044b9:	eb 7a                	jmp    ffff800000104535 <putchar+0x102>
ffff8000001044bb:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001044be:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001044c1:	01 d0                	add    %edx,%eax
ffff8000001044c3:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001044c7:	48 63 d0             	movslq %eax,%rdx
ffff8000001044ca:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001044cd:	48 98                	cltq
ffff8000001044cf:	48 01 d0             	add    %rdx,%rax
ffff8000001044d2:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001044d9:	00 
ffff8000001044da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001044de:	48 01 d0             	add    %rdx,%rax
ffff8000001044e1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001044e5:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001044ec:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001044f3:	eb 31                	jmp    ffff800000104526 <putchar+0xf3>
ffff8000001044f5:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001044f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001044fc:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044ff:	0f b6 c0             	movzbl %al,%eax
ffff800000104502:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104505:	85 c0                	test   %eax,%eax
ffff800000104507:	74 0b                	je     ffff800000104514 <putchar+0xe1>
ffff800000104509:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010450d:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff800000104510:	89 10                	mov    %edx,(%rax)
ffff800000104512:	eb 09                	jmp    ffff80000010451d <putchar+0xea>
ffff800000104514:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104518:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff80000010451b:	89 10                	mov    %edx,(%rax)
ffff80000010451d:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff800000104522:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104526:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff80000010452a:	7e c9                	jle    ffff8000001044f5 <putchar+0xc2>
ffff80000010452c:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff800000104531:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104535:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104539:	7e 80                	jle    ffff8000001044bb <putchar+0x88>
ffff80000010453b:	90                   	nop
ffff80000010453c:	90                   	nop
ffff80000010453d:	5d                   	pop    %rbp
ffff80000010453e:	c3                   	ret

ffff80000010453f <color_printk>:
ffff80000010453f:	f3 0f 1e fa          	endbr64
ffff800000104543:	55                   	push   %rbp
ffff800000104544:	48 89 e5             	mov    %rsp,%rbp
ffff800000104547:	53                   	push   %rbx
ffff800000104548:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff80000010454f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010454f <color_printk+0x10>
ffff800000104556:	49 bb e1 93 00 00 00 	movabs $0x93e1,%r11
ffff80000010455d:	00 00 00 
ffff800000104560:	4c 01 db             	add    %r11,%rbx
ffff800000104563:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104569:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff80000010456f:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff800000104576:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff80000010457d:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff800000104584:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff80000010458b:	84 c0                	test   %al,%al
ffff80000010458d:	74 23                	je     ffff8000001045b2 <color_printk+0x73>
ffff80000010458f:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff800000104596:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff80000010459a:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff80000010459e:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001045a2:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001045a6:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001045aa:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001045ae:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001045b2:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001045b9:	00 00 00 
ffff8000001045bc:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001045c3:	00 00 00 
ffff8000001045c6:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001045cd:	00 00 00 
ffff8000001045d0:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001045d7:	00 00 00 
ffff8000001045da:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001045e1:	00 00 00 
ffff8000001045e4:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001045e8:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001045ef:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001045f6:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001045fd:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff800000104604:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff80000010460b:	48 89 c6             	mov    %rax,%rsi
ffff80000010460e:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104615:	00 00 00 
ffff800000104618:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010461c:	48 89 c7             	mov    %rax,%rdi
ffff80000010461f:	48 b8 8f 76 ff ff ff 	movabs $0xffffffffffff768f,%rax
ffff800000104626:	ff ff ff 
ffff800000104629:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010462d:	ff d0                	call   *%rax
ffff80000010462f:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104635:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff80000010463c:	00 00 00 
ffff80000010463f:	e9 81 04 00 00       	jmp    ffff800000104ac5 <color_printk+0x586>
ffff800000104644:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff80000010464b:	7e 0c                	jle    ffff800000104659 <color_printk+0x11a>
ffff80000010464d:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff800000104654:	e9 45 02 00 00       	jmp    ffff80000010489e <color_printk+0x35f>
ffff800000104659:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010465f:	48 63 d0             	movslq %eax,%rdx
ffff800000104662:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104669:	00 00 00 
ffff80000010466c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104670:	48 01 d0             	add    %rdx,%rax
ffff800000104673:	0f b6 00             	movzbl (%rax),%eax
ffff800000104676:	3c 0a                	cmp    $0xa,%al
ffff800000104678:	75 36                	jne    ffff8000001046b0 <color_printk+0x171>
ffff80000010467a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104681:	00 00 00 
ffff800000104684:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104688:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010468b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104692:	00 00 00 
ffff800000104695:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104699:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046a0:	00 00 00 
ffff8000001046a3:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001046aa:	00 
ffff8000001046ab:	e9 6a 03 00 00       	jmp    ffff800000104a1a <color_printk+0x4db>
ffff8000001046b0:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001046b6:	48 63 d0             	movslq %eax,%rdx
ffff8000001046b9:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001046c0:	00 00 00 
ffff8000001046c3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046c7:	48 01 d0             	add    %rdx,%rax
ffff8000001046ca:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046cd:	3c 08                	cmp    $0x8,%al
ffff8000001046cf:	0f 85 78 01 00 00    	jne    ffff80000010484d <color_printk+0x30e>
ffff8000001046d5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046dc:	00 00 00 
ffff8000001046df:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046e3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001046e6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046ed:	00 00 00 
ffff8000001046f0:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001046f4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001046fb:	00 00 00 
ffff8000001046fe:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104702:	85 c0                	test   %eax,%eax
ffff800000104704:	0f 89 b2 00 00 00    	jns    ffff8000001047bc <color_printk+0x27d>
ffff80000010470a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104711:	00 00 00 
ffff800000104714:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104717:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff80000010471e:	00 00 00 
ffff800000104721:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104725:	99                   	cltd
ffff800000104726:	f7 fe                	idiv   %esi
ffff800000104728:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010472b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104732:	00 00 00 
ffff800000104735:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104739:	0f af c2             	imul   %edx,%eax
ffff80000010473c:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104743:	00 00 00 
ffff800000104746:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff80000010474a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104751:	00 00 00 
ffff800000104754:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104758:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010475b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104762:	00 00 00 
ffff800000104765:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104769:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104770:	00 00 00 
ffff800000104773:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104777:	85 c0                	test   %eax,%eax
ffff800000104779:	79 41                	jns    ffff8000001047bc <color_printk+0x27d>
ffff80000010477b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104782:	00 00 00 
ffff800000104785:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104789:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104790:	00 00 00 
ffff800000104793:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104797:	99                   	cltd
ffff800000104798:	f7 ff                	idiv   %edi
ffff80000010479a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010479d:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047a4:	00 00 00 
ffff8000001047a7:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047ab:	0f af c2             	imul   %edx,%eax
ffff8000001047ae:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001047b5:	00 00 00 
ffff8000001047b8:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001047bc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047c3:	00 00 00 
ffff8000001047c6:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001047ca:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047d1:	00 00 00 
ffff8000001047d4:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047d8:	89 d1                	mov    %edx,%ecx
ffff8000001047da:	0f af c8             	imul   %eax,%ecx
ffff8000001047dd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047e4:	00 00 00 
ffff8000001047e7:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001047eb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001047f2:	00 00 00 
ffff8000001047f5:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047f9:	0f af d0             	imul   %eax,%edx
ffff8000001047fc:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104803:	00 00 00 
ffff800000104806:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104809:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104810:	00 00 00 
ffff800000104813:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104818:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff80000010481f:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104825:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104829:	6a 20                	push   $0x20
ffff80000010482b:	45 89 c1             	mov    %r8d,%r9d
ffff80000010482e:	41 89 f8             	mov    %edi,%r8d
ffff800000104831:	48 89 c7             	mov    %rax,%rdi
ffff800000104834:	48 b8 03 6b ff ff ff 	movabs $0xffffffffffff6b03,%rax
ffff80000010483b:	ff ff ff 
ffff80000010483e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104842:	ff d0                	call   *%rax
ffff800000104844:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104848:	e9 cd 01 00 00       	jmp    ffff800000104a1a <color_printk+0x4db>
ffff80000010484d:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104853:	48 63 d0             	movslq %eax,%rdx
ffff800000104856:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff80000010485d:	00 00 00 
ffff800000104860:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104864:	48 01 d0             	add    %rdx,%rax
ffff800000104867:	0f b6 00             	movzbl (%rax),%eax
ffff80000010486a:	3c 09                	cmp    $0x9,%al
ffff80000010486c:	0f 85 e3 00 00 00    	jne    ffff800000104955 <color_printk+0x416>
ffff800000104872:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104879:	00 00 00 
ffff80000010487c:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104880:	83 c0 08             	add    $0x8,%eax
ffff800000104883:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104886:	89 c2                	mov    %eax,%edx
ffff800000104888:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010488f:	00 00 00 
ffff800000104892:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104896:	29 c2                	sub    %eax,%edx
ffff800000104898:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff80000010489e:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001048a5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048ac:	00 00 00 
ffff8000001048af:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001048b3:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048ba:	00 00 00 
ffff8000001048bd:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001048c1:	89 d1                	mov    %edx,%ecx
ffff8000001048c3:	0f af c8             	imul   %eax,%ecx
ffff8000001048c6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048cd:	00 00 00 
ffff8000001048d0:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001048d4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048db:	00 00 00 
ffff8000001048de:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001048e2:	0f af d0             	imul   %eax,%edx
ffff8000001048e5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048ec:	00 00 00 
ffff8000001048ef:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001048f2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001048f9:	00 00 00 
ffff8000001048fc:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104901:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104908:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff80000010490e:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104912:	6a 20                	push   $0x20
ffff800000104914:	45 89 c1             	mov    %r8d,%r9d
ffff800000104917:	41 89 f8             	mov    %edi,%r8d
ffff80000010491a:	48 89 c7             	mov    %rax,%rdi
ffff80000010491d:	48 b8 03 6b ff ff ff 	movabs $0xffffffffffff6b03,%rax
ffff800000104924:	ff ff ff 
ffff800000104927:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010492b:	ff d0                	call   *%rax
ffff80000010492d:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104931:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104938:	00 00 00 
ffff80000010493b:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010493f:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104942:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104949:	00 00 00 
ffff80000010494c:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104950:	e9 c5 00 00 00       	jmp    ffff800000104a1a <color_printk+0x4db>
ffff800000104955:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010495b:	48 63 d0             	movslq %eax,%rdx
ffff80000010495e:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000104965:	00 00 00 
ffff800000104968:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010496c:	48 01 d0             	add    %rdx,%rax
ffff80000010496f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104972:	0f b6 f8             	movzbl %al,%edi
ffff800000104975:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010497c:	00 00 00 
ffff80000010497f:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104983:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010498a:	00 00 00 
ffff80000010498d:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104991:	89 d1                	mov    %edx,%ecx
ffff800000104993:	0f af c8             	imul   %eax,%ecx
ffff800000104996:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff80000010499d:	00 00 00 
ffff8000001049a0:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001049a4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049ab:	00 00 00 
ffff8000001049ae:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049b2:	0f af d0             	imul   %eax,%edx
ffff8000001049b5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049bc:	00 00 00 
ffff8000001049bf:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049c2:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001049c9:	00 00 00 
ffff8000001049cc:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049d1:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff8000001049d8:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff8000001049df:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001049e3:	57                   	push   %rdi
ffff8000001049e4:	48 89 c7             	mov    %rax,%rdi
ffff8000001049e7:	48 b8 03 6b ff ff ff 	movabs $0xffffffffffff6b03,%rax
ffff8000001049ee:	ff ff ff 
ffff8000001049f1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049f5:	ff d0                	call   *%rax
ffff8000001049f7:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001049fb:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a02:	00 00 00 
ffff800000104a05:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104a09:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a0c:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a13:	00 00 00 
ffff800000104a16:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104a1a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a21:	00 00 00 
ffff800000104a24:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104a28:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a2f:	00 00 00 
ffff800000104a32:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104a35:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a3c:	00 00 00 
ffff800000104a3f:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104a43:	99                   	cltd
ffff800000104a44:	f7 fe                	idiv   %esi
ffff800000104a46:	39 c1                	cmp    %eax,%ecx
ffff800000104a48:	7c 31                	jl     ffff800000104a7b <color_printk+0x53c>
ffff800000104a4a:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a51:	00 00 00 
ffff800000104a54:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104a58:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104a5b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a62:	00 00 00 
ffff800000104a65:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104a69:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a70:	00 00 00 
ffff800000104a73:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104a7a:	00 
ffff800000104a7b:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a82:	00 00 00 
ffff800000104a85:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104a89:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104a90:	00 00 00 
ffff800000104a93:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104a97:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104a9e:	00 00 00 
ffff800000104aa1:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104aa5:	99                   	cltd
ffff800000104aa6:	f7 ff                	idiv   %edi
ffff800000104aa8:	39 c1                	cmp    %eax,%ecx
ffff800000104aaa:	7c 12                	jl     ffff800000104abe <color_printk+0x57f>
ffff800000104aac:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104ab3:	00 00 00 
ffff800000104ab6:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104abd:	00 
ffff800000104abe:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104ac5:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104acb:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff800000104ad1:	0f 8c 6d fb ff ff    	jl     ffff800000104644 <color_printk+0x105>
ffff800000104ad7:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104ade:	0f 85 60 fb ff ff    	jne    ffff800000104644 <color_printk+0x105>
ffff800000104ae4:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104aea:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104aee:	c9                   	leave
ffff800000104aef:	c3                   	ret

ffff800000104af0 <clear_screen>:
ffff800000104af0:	f3 0f 1e fa          	endbr64
ffff800000104af4:	55                   	push   %rbp
ffff800000104af5:	48 89 e5             	mov    %rsp,%rbp
ffff800000104af8:	53                   	push   %rbx
ffff800000104af9:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104afd:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104afd <clear_screen+0xd>
ffff800000104b04:	49 bb 33 8e 00 00 00 	movabs $0x8e33,%r11
ffff800000104b0b:	00 00 00 
ffff800000104b0e:	4c 01 db             	add    %r11,%rbx
ffff800000104b11:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff800000104b14:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104b17:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b1e:	00 00 00 
ffff800000104b21:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104b24:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b2b:	00 00 00 
ffff800000104b2e:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff800000104b32:	99                   	cltd
ffff800000104b33:	f7 f9                	idiv   %ecx
ffff800000104b35:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104b38:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b3f:	00 00 00 
ffff800000104b42:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104b46:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b4d:	00 00 00 
ffff800000104b50:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff800000104b54:	99                   	cltd
ffff800000104b55:	f7 fe                	idiv   %esi
ffff800000104b57:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104b5a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff800000104b61:	e9 83 00 00 00       	jmp    ffff800000104be9 <clear_screen+0xf9>
ffff800000104b66:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104b6d:	eb 6e                	jmp    ffff800000104bdd <clear_screen+0xed>
ffff800000104b6f:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b76:	00 00 00 
ffff800000104b79:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104b7d:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff800000104b81:	89 c1                	mov    %eax,%ecx
ffff800000104b83:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b8a:	00 00 00 
ffff800000104b8d:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104b91:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104b95:	89 c2                	mov    %eax,%edx
ffff800000104b97:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104b9e:	00 00 00 
ffff800000104ba1:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104ba4:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bab:	00 00 00 
ffff800000104bae:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104bb3:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff800000104bb7:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff800000104bba:	6a 20                	push   $0x20
ffff800000104bbc:	45 89 c1             	mov    %r8d,%r9d
ffff800000104bbf:	41 89 f8             	mov    %edi,%r8d
ffff800000104bc2:	48 89 c7             	mov    %rax,%rdi
ffff800000104bc5:	48 b8 03 6b ff ff ff 	movabs $0xffffffffffff6b03,%rax
ffff800000104bcc:	ff ff ff 
ffff800000104bcf:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104bd3:	ff d0                	call   *%rax
ffff800000104bd5:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104bd9:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104bdd:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104be0:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104be3:	7c 8a                	jl     ffff800000104b6f <clear_screen+0x7f>
ffff800000104be5:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104be9:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104bec:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104bef:	0f 8c 71 ff ff ff    	jl     ffff800000104b66 <clear_screen+0x76>
ffff800000104bf5:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104bfc:	00 00 00 
ffff800000104bff:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104c06:	00 
ffff800000104c07:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff800000104c0e:	00 00 00 
ffff800000104c11:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104c18:	00 
ffff800000104c19:	90                   	nop
ffff800000104c1a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104c1e:	c9                   	leave
ffff800000104c1f:	c3                   	ret

ffff800000104c20 <skip_atoi2>:
ffff800000104c20:	f3 0f 1e fa          	endbr64
ffff800000104c24:	55                   	push   %rbp
ffff800000104c25:	48 89 e5             	mov    %rsp,%rbp
ffff800000104c28:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104c28 <skip_atoi2+0x8>
ffff800000104c2f:	49 bb 08 8d 00 00 00 	movabs $0x8d08,%r11
ffff800000104c36:	00 00 00 
ffff800000104c39:	4c 01 d8             	add    %r11,%rax
ffff800000104c3c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104c40:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c47:	eb 39                	jmp    ffff800000104c82 <skip_atoi2+0x62>
ffff800000104c49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c4d:	48 8b 00             	mov    (%rax),%rax
ffff800000104c50:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c53:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104c56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c5a:	48 8b 00             	mov    (%rax),%rax
ffff800000104c5d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104c61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c65:	48 89 10             	mov    %rdx,(%rax)
ffff800000104c68:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c6b:	89 d0                	mov    %edx,%eax
ffff800000104c6d:	c1 e0 02             	shl    $0x2,%eax
ffff800000104c70:	01 d0                	add    %edx,%eax
ffff800000104c72:	01 c0                	add    %eax,%eax
ffff800000104c74:	89 c2                	mov    %eax,%edx
ffff800000104c76:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104c7a:	83 e8 30             	sub    $0x30,%eax
ffff800000104c7d:	01 d0                	add    %edx,%eax
ffff800000104c7f:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104c82:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c86:	48 8b 00             	mov    (%rax),%rax
ffff800000104c89:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c8c:	3c 2f                	cmp    $0x2f,%al
ffff800000104c8e:	7e 0e                	jle    ffff800000104c9e <skip_atoi2+0x7e>
ffff800000104c90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104c94:	48 8b 00             	mov    (%rax),%rax
ffff800000104c97:	0f b6 00             	movzbl (%rax),%eax
ffff800000104c9a:	3c 39                	cmp    $0x39,%al
ffff800000104c9c:	7e ab                	jle    ffff800000104c49 <skip_atoi2+0x29>
ffff800000104c9e:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104ca1:	5d                   	pop    %rbp
ffff800000104ca2:	c3                   	ret

ffff800000104ca3 <skip_atoi>:
ffff800000104ca3:	f3 0f 1e fa          	endbr64
ffff800000104ca7:	55                   	push   %rbp
ffff800000104ca8:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cab:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104cab <skip_atoi+0x8>
ffff800000104cb2:	49 bb 85 8c 00 00 00 	movabs $0x8c85,%r11
ffff800000104cb9:	00 00 00 
ffff800000104cbc:	4c 01 d8             	add    %r11,%rax
ffff800000104cbf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104cc3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104cca:	eb 2c                	jmp    ffff800000104cf8 <skip_atoi+0x55>
ffff800000104ccc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cd0:	48 8b 00             	mov    (%rax),%rax
ffff800000104cd3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cdb:	48 89 10             	mov    %rdx,(%rax)
ffff800000104cde:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104ce1:	89 d0                	mov    %edx,%eax
ffff800000104ce3:	c1 e0 02             	shl    $0x2,%eax
ffff800000104ce6:	01 d0                	add    %edx,%eax
ffff800000104ce8:	01 c0                	add    %eax,%eax
ffff800000104cea:	89 c2                	mov    %eax,%edx
ffff800000104cec:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104cf0:	83 e8 30             	sub    $0x30,%eax
ffff800000104cf3:	01 d0                	add    %edx,%eax
ffff800000104cf5:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104cf8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104cfc:	48 8b 00             	mov    (%rax),%rax
ffff800000104cff:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d02:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d05:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104d09:	7e 13                	jle    ffff800000104d1e <skip_atoi+0x7b>
ffff800000104d0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104d0f:	48 8b 00             	mov    (%rax),%rax
ffff800000104d12:	0f b6 00             	movzbl (%rax),%eax
ffff800000104d15:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104d18:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104d1c:	7e ae                	jle    ffff800000104ccc <skip_atoi+0x29>
ffff800000104d1e:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104d21:	5d                   	pop    %rbp
ffff800000104d22:	c3                   	ret

ffff800000104d23 <number>:
ffff800000104d23:	f3 0f 1e fa          	endbr64
ffff800000104d27:	55                   	push   %rbp
ffff800000104d28:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d2b:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104d2b <number+0x8>
ffff800000104d32:	49 bb 05 8c 00 00 00 	movabs $0x8c05,%r11
ffff800000104d39:	00 00 00 
ffff800000104d3c:	4c 01 d8             	add    %r11,%rax
ffff800000104d3f:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104d43:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104d47:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104d4a:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104d4d:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104d51:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104d55:	48 ba e8 9d ff ff ff 	movabs $0xffffffffffff9de8,%rdx
ffff800000104d5c:	ff ff ff 
ffff800000104d5f:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104d63:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104d67:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104d6e:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104d71:	83 e2 40             	and    $0x40,%edx
ffff800000104d74:	85 d2                	test   %edx,%edx
ffff800000104d76:	74 12                	je     ffff800000104d8a <number+0x67>
ffff800000104d78:	48 ba 10 9e ff ff ff 	movabs $0xffffffffffff9e10,%rdx
ffff800000104d7f:	ff ff ff 
ffff800000104d82:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104d86:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104d8a:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d8d:	83 e0 10             	and    $0x10,%eax
ffff800000104d90:	85 c0                	test   %eax,%eax
ffff800000104d92:	74 04                	je     ffff800000104d98 <number+0x75>
ffff800000104d94:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104d98:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104d9c:	7e 06                	jle    ffff800000104da4 <number+0x81>
ffff800000104d9e:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104da2:	7e 0a                	jle    ffff800000104dae <number+0x8b>
ffff800000104da4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104da9:	e9 0f 02 00 00       	jmp    ffff800000104fbd <number+0x29a>
ffff800000104dae:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104db1:	83 e0 01             	and    $0x1,%eax
ffff800000104db4:	85 c0                	test   %eax,%eax
ffff800000104db6:	74 07                	je     ffff800000104dbf <number+0x9c>
ffff800000104db8:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104dbd:	eb 05                	jmp    ffff800000104dc4 <number+0xa1>
ffff800000104dbf:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104dc4:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104dc7:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104dcb:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104dce:	83 e0 02             	and    $0x2,%eax
ffff800000104dd1:	85 c0                	test   %eax,%eax
ffff800000104dd3:	74 11                	je     ffff800000104de6 <number+0xc3>
ffff800000104dd5:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104dda:	79 0a                	jns    ffff800000104de6 <number+0xc3>
ffff800000104ddc:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104de0:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104de4:	eb 1d                	jmp    ffff800000104e03 <number+0xe0>
ffff800000104de6:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104de9:	83 e0 04             	and    $0x4,%eax
ffff800000104dec:	85 c0                	test   %eax,%eax
ffff800000104dee:	75 0b                	jne    ffff800000104dfb <number+0xd8>
ffff800000104df0:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104df3:	c1 e0 02             	shl    $0x2,%eax
ffff800000104df6:	83 e0 20             	and    $0x20,%eax
ffff800000104df9:	eb 05                	jmp    ffff800000104e00 <number+0xdd>
ffff800000104dfb:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104e00:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104e03:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104e07:	74 04                	je     ffff800000104e0d <number+0xea>
ffff800000104e09:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e0d:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e10:	83 e0 20             	and    $0x20,%eax
ffff800000104e13:	85 c0                	test   %eax,%eax
ffff800000104e15:	74 16                	je     ffff800000104e2d <number+0x10a>
ffff800000104e17:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104e1b:	75 06                	jne    ffff800000104e23 <number+0x100>
ffff800000104e1d:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104e21:	eb 0a                	jmp    ffff800000104e2d <number+0x10a>
ffff800000104e23:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104e27:	75 04                	jne    ffff800000104e2d <number+0x10a>
ffff800000104e29:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104e2d:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e32:	75 4b                	jne    ffff800000104e7f <number+0x15c>
ffff800000104e34:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e37:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e3a:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e3d:	48 98                	cltq
ffff800000104e3f:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104e44:	eb 40                	jmp    ffff800000104e86 <number+0x163>
ffff800000104e46:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104e49:	48 63 c8             	movslq %eax,%rcx
ffff800000104e4c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e50:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104e55:	48 f7 f1             	div    %rcx
ffff800000104e58:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e5c:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104e5f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104e62:	48 63 d0             	movslq %eax,%rdx
ffff800000104e65:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104e69:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104e6d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e70:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104e73:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104e76:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104e79:	48 98                	cltq
ffff800000104e7b:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104e7f:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104e84:	75 c0                	jne    ffff800000104e46 <number+0x123>
ffff800000104e86:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e89:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104e8c:	7e 06                	jle    ffff800000104e94 <number+0x171>
ffff800000104e8e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104e91:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104e94:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104e97:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104e9a:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104e9d:	83 e0 11             	and    $0x11,%eax
ffff800000104ea0:	85 c0                	test   %eax,%eax
ffff800000104ea2:	75 1e                	jne    ffff800000104ec2 <number+0x19f>
ffff800000104ea4:	eb 0f                	jmp    ffff800000104eb5 <number+0x192>
ffff800000104ea6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104eaa:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104eae:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104eb2:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104eb5:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104eb8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ebb:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104ebe:	85 c0                	test   %eax,%eax
ffff800000104ec0:	7f e4                	jg     ffff800000104ea6 <number+0x183>
ffff800000104ec2:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104ec6:	74 12                	je     ffff800000104eda <number+0x1b7>
ffff800000104ec8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ecc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ed0:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ed4:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104ed8:	88 10                	mov    %dl,(%rax)
ffff800000104eda:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104edd:	83 e0 20             	and    $0x20,%eax
ffff800000104ee0:	85 c0                	test   %eax,%eax
ffff800000104ee2:	74 45                	je     ffff800000104f29 <number+0x206>
ffff800000104ee4:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104ee8:	75 11                	jne    ffff800000104efb <number+0x1d8>
ffff800000104eea:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104eee:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ef2:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ef6:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104ef9:	eb 2e                	jmp    ffff800000104f29 <number+0x206>
ffff800000104efb:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104eff:	75 28                	jne    ffff800000104f29 <number+0x206>
ffff800000104f01:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f05:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f09:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f0d:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104f14:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104f18:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f1c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f20:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f24:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104f27:	88 10                	mov    %dl,(%rax)
ffff800000104f29:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104f2c:	83 e0 10             	and    $0x10,%eax
ffff800000104f2f:	85 c0                	test   %eax,%eax
ffff800000104f31:	75 32                	jne    ffff800000104f65 <number+0x242>
ffff800000104f33:	eb 12                	jmp    ffff800000104f47 <number+0x224>
ffff800000104f35:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f39:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f3d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f41:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104f45:	88 10                	mov    %dl,(%rax)
ffff800000104f47:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104f4a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f4d:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104f50:	85 c0                	test   %eax,%eax
ffff800000104f52:	7f e1                	jg     ffff800000104f35 <number+0x212>
ffff800000104f54:	eb 0f                	jmp    ffff800000104f65 <number+0x242>
ffff800000104f56:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f5a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f5e:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f62:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104f65:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104f68:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f6b:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104f6e:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104f71:	7c e3                	jl     ffff800000104f56 <number+0x233>
ffff800000104f73:	eb 19                	jmp    ffff800000104f8e <number+0x26b>
ffff800000104f75:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104f79:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104f7d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104f81:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104f84:	48 63 d2             	movslq %edx,%rdx
ffff800000104f87:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104f8c:	88 10                	mov    %dl,(%rax)
ffff800000104f8e:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104f91:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104f94:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104f97:	85 c0                	test   %eax,%eax
ffff800000104f99:	7f da                	jg     ffff800000104f75 <number+0x252>
ffff800000104f9b:	eb 0f                	jmp    ffff800000104fac <number+0x289>
ffff800000104f9d:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fa1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104fa5:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104fa9:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104fac:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104faf:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104fb2:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104fb5:	85 c0                	test   %eax,%eax
ffff800000104fb7:	7f e4                	jg     ffff800000104f9d <number+0x27a>
ffff800000104fb9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104fbd:	5d                   	pop    %rbp
ffff800000104fbe:	c3                   	ret

ffff800000104fbf <vsprintf>:
ffff800000104fbf:	f3 0f 1e fa          	endbr64
ffff800000104fc3:	55                   	push   %rbp
ffff800000104fc4:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fc7:	53                   	push   %rbx
ffff800000104fc8:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104fcc:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104fcc <vsprintf+0xd>
ffff800000104fd3:	49 bb 64 89 00 00 00 	movabs $0x8964,%r11
ffff800000104fda:	00 00 00 
ffff800000104fdd:	4c 01 db             	add    %r11,%rbx
ffff800000104fe0:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104fe4:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104fe8:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000104fec:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ff0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104ff4:	e9 f8 08 00 00       	jmp    ffff8000001058f1 <vsprintf+0x932>
ffff800000104ff9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ffd:	0f b6 00             	movzbl (%rax),%eax
ffff800000105000:	3c 25                	cmp    $0x25,%al
ffff800000105002:	74 1a                	je     ffff80000010501e <vsprintf+0x5f>
ffff800000105004:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105008:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010500c:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105010:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000105014:	0f b6 12             	movzbl (%rdx),%edx
ffff800000105017:	88 10                	mov    %dl,(%rax)
ffff800000105019:	e9 c7 08 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff80000010501e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000105025:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105029:	48 83 c0 01          	add    $0x1,%rax
ffff80000010502d:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105031:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105035:	0f b6 00             	movzbl (%rax),%eax
ffff800000105038:	0f be c0             	movsbl %al,%eax
ffff80000010503b:	83 e8 20             	sub    $0x20,%eax
ffff80000010503e:	83 f8 10             	cmp    $0x10,%eax
ffff800000105041:	77 40                	ja     ffff800000105083 <vsprintf+0xc4>
ffff800000105043:	89 c0                	mov    %eax,%eax
ffff800000105045:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010504c:	00 
ffff80000010504d:	48 8d 05 14 27 00 00 	lea    0x2714(%rip),%rax        # ffff800000107768 <.LC1+0x28>
ffff800000105054:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105058:	48 8d 15 09 27 00 00 	lea    0x2709(%rip),%rdx        # ffff800000107768 <.LC1+0x28>
ffff80000010505f:	48 01 d0             	add    %rdx,%rax
ffff800000105062:	3e ff e0             	notrack jmp *%rax
ffff800000105065:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105069:	eb ba                	jmp    ffff800000105025 <vsprintf+0x66>
ffff80000010506b:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff80000010506f:	eb b4                	jmp    ffff800000105025 <vsprintf+0x66>
ffff800000105071:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000105075:	eb ae                	jmp    ffff800000105025 <vsprintf+0x66>
ffff800000105077:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff80000010507b:	eb a8                	jmp    ffff800000105025 <vsprintf+0x66>
ffff80000010507d:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105081:	eb a2                	jmp    ffff800000105025 <vsprintf+0x66>
ffff800000105083:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff80000010508a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010508e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105091:	3c 2f                	cmp    $0x2f,%al
ffff800000105093:	7e 27                	jle    ffff8000001050bc <vsprintf+0xfd>
ffff800000105095:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105099:	0f b6 00             	movzbl (%rax),%eax
ffff80000010509c:	3c 39                	cmp    $0x39,%al
ffff80000010509e:	7f 1c                	jg     ffff8000001050bc <vsprintf+0xfd>
ffff8000001050a0:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff8000001050a4:	48 89 c7             	mov    %rax,%rdi
ffff8000001050a7:	48 b8 73 73 ff ff ff 	movabs $0xffffffffffff7373,%rax
ffff8000001050ae:	ff ff ff 
ffff8000001050b1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050b5:	ff d0                	call   *%rax
ffff8000001050b7:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff8000001050ba:	eb 6c                	jmp    ffff800000105128 <vsprintf+0x169>
ffff8000001050bc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050c0:	0f b6 00             	movzbl (%rax),%eax
ffff8000001050c3:	3c 2a                	cmp    $0x2a,%al
ffff8000001050c5:	75 61                	jne    ffff800000105128 <vsprintf+0x169>
ffff8000001050c7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001050cb:	48 83 c0 01          	add    $0x1,%rax
ffff8000001050cf:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001050d3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050d7:	8b 00                	mov    (%rax),%eax
ffff8000001050d9:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050dc:	77 24                	ja     ffff800000105102 <vsprintf+0x143>
ffff8000001050de:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050e2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001050e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050ea:	8b 00                	mov    (%rax),%eax
ffff8000001050ec:	89 c0                	mov    %eax,%eax
ffff8000001050ee:	48 01 d0             	add    %rdx,%rax
ffff8000001050f1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050f5:	8b 12                	mov    (%rdx),%edx
ffff8000001050f7:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001050fa:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050fe:	89 0a                	mov    %ecx,(%rdx)
ffff800000105100:	eb 14                	jmp    ffff800000105116 <vsprintf+0x157>
ffff800000105102:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105106:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010510a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010510e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105112:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105116:	8b 00                	mov    (%rax),%eax
ffff800000105118:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff80000010511b:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010511f:	79 07                	jns    ffff800000105128 <vsprintf+0x169>
ffff800000105121:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000105124:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000105128:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff80000010512f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105133:	0f b6 00             	movzbl (%rax),%eax
ffff800000105136:	3c 2e                	cmp    $0x2e,%al
ffff800000105138:	0f 85 aa 00 00 00    	jne    ffff8000001051e8 <vsprintf+0x229>
ffff80000010513e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105142:	48 83 c0 01          	add    $0x1,%rax
ffff800000105146:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010514a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010514e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105151:	3c 2f                	cmp    $0x2f,%al
ffff800000105153:	7e 27                	jle    ffff80000010517c <vsprintf+0x1bd>
ffff800000105155:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105159:	0f b6 00             	movzbl (%rax),%eax
ffff80000010515c:	3c 39                	cmp    $0x39,%al
ffff80000010515e:	7f 1c                	jg     ffff80000010517c <vsprintf+0x1bd>
ffff800000105160:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000105164:	48 89 c7             	mov    %rax,%rdi
ffff800000105167:	48 b8 73 73 ff ff ff 	movabs $0xffffffffffff7373,%rax
ffff80000010516e:	ff ff ff 
ffff800000105171:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105175:	ff d0                	call   *%rax
ffff800000105177:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010517a:	eb 5f                	jmp    ffff8000001051db <vsprintf+0x21c>
ffff80000010517c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105180:	0f b6 00             	movzbl (%rax),%eax
ffff800000105183:	3c 2a                	cmp    $0x2a,%al
ffff800000105185:	75 54                	jne    ffff8000001051db <vsprintf+0x21c>
ffff800000105187:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010518b:	48 83 c0 01          	add    $0x1,%rax
ffff80000010518f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105193:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105197:	8b 00                	mov    (%rax),%eax
ffff800000105199:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010519c:	77 24                	ja     ffff8000001051c2 <vsprintf+0x203>
ffff80000010519e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051a2:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001051a6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051aa:	8b 00                	mov    (%rax),%eax
ffff8000001051ac:	89 c0                	mov    %eax,%eax
ffff8000001051ae:	48 01 d0             	add    %rdx,%rax
ffff8000001051b1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051b5:	8b 12                	mov    (%rdx),%edx
ffff8000001051b7:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001051ba:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051be:	89 0a                	mov    %ecx,(%rdx)
ffff8000001051c0:	eb 14                	jmp    ffff8000001051d6 <vsprintf+0x217>
ffff8000001051c2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001051c6:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001051ca:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001051ce:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001051d2:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001051d6:	8b 00                	mov    (%rax),%eax
ffff8000001051d8:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001051db:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001051df:	79 07                	jns    ffff8000001051e8 <vsprintf+0x229>
ffff8000001051e1:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff8000001051e8:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff8000001051ef:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051f3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001051f6:	3c 68                	cmp    $0x68,%al
ffff8000001051f8:	74 21                	je     ffff80000010521b <vsprintf+0x25c>
ffff8000001051fa:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001051fe:	0f b6 00             	movzbl (%rax),%eax
ffff800000105201:	3c 6c                	cmp    $0x6c,%al
ffff800000105203:	74 16                	je     ffff80000010521b <vsprintf+0x25c>
ffff800000105205:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105209:	0f b6 00             	movzbl (%rax),%eax
ffff80000010520c:	3c 4c                	cmp    $0x4c,%al
ffff80000010520e:	74 0b                	je     ffff80000010521b <vsprintf+0x25c>
ffff800000105210:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105214:	0f b6 00             	movzbl (%rax),%eax
ffff800000105217:	3c 7a                	cmp    $0x7a,%al
ffff800000105219:	75 19                	jne    ffff800000105234 <vsprintf+0x275>
ffff80000010521b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010521f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105222:	0f be c0             	movsbl %al,%eax
ffff800000105225:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105228:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010522c:	48 83 c0 01          	add    $0x1,%rax
ffff800000105230:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000105234:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105238:	0f b6 00             	movzbl (%rax),%eax
ffff80000010523b:	0f be c0             	movsbl %al,%eax
ffff80000010523e:	83 e8 25             	sub    $0x25,%eax
ffff800000105241:	83 f8 53             	cmp    $0x53,%eax
ffff800000105244:	0f 87 5d 06 00 00    	ja     ffff8000001058a7 <vsprintf+0x8e8>
ffff80000010524a:	89 c0                	mov    %eax,%eax
ffff80000010524c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000105253:	00 
ffff800000105254:	48 8d 05 95 25 00 00 	lea    0x2595(%rip),%rax        # ffff8000001077f0 <.LC1+0xb0>
ffff80000010525b:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010525f:	48 8d 15 8a 25 00 00 	lea    0x258a(%rip),%rdx        # ffff8000001077f0 <.LC1+0xb0>
ffff800000105266:	48 01 d0             	add    %rdx,%rax
ffff800000105269:	3e ff e0             	notrack jmp *%rax
ffff80000010526c:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010526f:	83 e0 10             	and    $0x10,%eax
ffff800000105272:	85 c0                	test   %eax,%eax
ffff800000105274:	75 1b                	jne    ffff800000105291 <vsprintf+0x2d2>
ffff800000105276:	eb 0f                	jmp    ffff800000105287 <vsprintf+0x2c8>
ffff800000105278:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010527c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105280:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105284:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105287:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff80000010528b:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010528f:	7f e7                	jg     ffff800000105278 <vsprintf+0x2b9>
ffff800000105291:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105295:	8b 00                	mov    (%rax),%eax
ffff800000105297:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010529a:	77 24                	ja     ffff8000001052c0 <vsprintf+0x301>
ffff80000010529c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a0:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052a4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a8:	8b 00                	mov    (%rax),%eax
ffff8000001052aa:	89 c0                	mov    %eax,%eax
ffff8000001052ac:	48 01 d0             	add    %rdx,%rax
ffff8000001052af:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052b3:	8b 12                	mov    (%rdx),%edx
ffff8000001052b5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052b8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052bc:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052be:	eb 14                	jmp    ffff8000001052d4 <vsprintf+0x315>
ffff8000001052c0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052c4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052c8:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052cc:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052d0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052d4:	8b 08                	mov    (%rax),%ecx
ffff8000001052d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052da:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052de:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052e2:	89 ca                	mov    %ecx,%edx
ffff8000001052e4:	88 10                	mov    %dl,(%rax)
ffff8000001052e6:	eb 0f                	jmp    ffff8000001052f7 <vsprintf+0x338>
ffff8000001052e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052ec:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001052f0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001052f4:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001052f7:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001052fb:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001052ff:	7f e7                	jg     ffff8000001052e8 <vsprintf+0x329>
ffff800000105301:	e9 df 05 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105306:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010530a:	8b 00                	mov    (%rax),%eax
ffff80000010530c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010530f:	77 24                	ja     ffff800000105335 <vsprintf+0x376>
ffff800000105311:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105315:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105319:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010531d:	8b 00                	mov    (%rax),%eax
ffff80000010531f:	89 c0                	mov    %eax,%eax
ffff800000105321:	48 01 d0             	add    %rdx,%rax
ffff800000105324:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105328:	8b 12                	mov    (%rdx),%edx
ffff80000010532a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010532d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105331:	89 0a                	mov    %ecx,(%rdx)
ffff800000105333:	eb 14                	jmp    ffff800000105349 <vsprintf+0x38a>
ffff800000105335:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105339:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010533d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105341:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105345:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105349:	48 8b 00             	mov    (%rax),%rax
ffff80000010534c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105350:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105355:	75 08                	jne    ffff80000010535f <vsprintf+0x3a0>
ffff800000105357:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff80000010535e:	00 
ffff80000010535f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105363:	48 89 c7             	mov    %rax,%rdi
ffff800000105366:	48 b8 bf 6a ff ff ff 	movabs $0xffffffffffff6abf,%rax
ffff80000010536d:	ff ff ff 
ffff800000105370:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105374:	ff d0                	call   *%rax
ffff800000105376:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105379:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010537d:	79 08                	jns    ffff800000105387 <vsprintf+0x3c8>
ffff80000010537f:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105382:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105385:	eb 0e                	jmp    ffff800000105395 <vsprintf+0x3d6>
ffff800000105387:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010538a:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff80000010538d:	7e 06                	jle    ffff800000105395 <vsprintf+0x3d6>
ffff80000010538f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000105392:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105395:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105398:	83 e0 10             	and    $0x10,%eax
ffff80000010539b:	85 c0                	test   %eax,%eax
ffff80000010539d:	75 1f                	jne    ffff8000001053be <vsprintf+0x3ff>
ffff80000010539f:	eb 0f                	jmp    ffff8000001053b0 <vsprintf+0x3f1>
ffff8000001053a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053a5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053a9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053ad:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001053b0:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001053b3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001053b6:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001053b9:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001053bc:	7c e3                	jl     ffff8000001053a1 <vsprintf+0x3e2>
ffff8000001053be:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001053c5:	eb 21                	jmp    ffff8000001053e8 <vsprintf+0x429>
ffff8000001053c7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001053cb:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001053cf:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001053d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053d7:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001053db:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001053df:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001053e2:	88 10                	mov    %dl,(%rax)
ffff8000001053e4:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff8000001053e8:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001053eb:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001053ee:	7c d7                	jl     ffff8000001053c7 <vsprintf+0x408>
ffff8000001053f0:	eb 0f                	jmp    ffff800000105401 <vsprintf+0x442>
ffff8000001053f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053f6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001053fa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001053fe:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105401:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000105404:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105407:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff80000010540a:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff80000010540d:	7c e3                	jl     ffff8000001053f2 <vsprintf+0x433>
ffff80000010540f:	e9 d1 04 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105414:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105418:	0f 85 82 00 00 00    	jne    ffff8000001054a0 <vsprintf+0x4e1>
ffff80000010541e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105422:	8b 00                	mov    (%rax),%eax
ffff800000105424:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105427:	77 24                	ja     ffff80000010544d <vsprintf+0x48e>
ffff800000105429:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010542d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105431:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105435:	8b 00                	mov    (%rax),%eax
ffff800000105437:	89 c0                	mov    %eax,%eax
ffff800000105439:	48 01 d0             	add    %rdx,%rax
ffff80000010543c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105440:	8b 12                	mov    (%rdx),%edx
ffff800000105442:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105445:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105449:	89 0a                	mov    %ecx,(%rdx)
ffff80000010544b:	eb 14                	jmp    ffff800000105461 <vsprintf+0x4a2>
ffff80000010544d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105451:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105455:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105459:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010545d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105461:	48 8b 00             	mov    (%rax),%rax
ffff800000105464:	48 89 c7             	mov    %rax,%rdi
ffff800000105467:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010546a:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010546d:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105470:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105474:	41 89 f1             	mov    %esi,%r9d
ffff800000105477:	41 89 c8             	mov    %ecx,%r8d
ffff80000010547a:	89 d1                	mov    %edx,%ecx
ffff80000010547c:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105481:	48 89 fe             	mov    %rdi,%rsi
ffff800000105484:	48 89 c7             	mov    %rax,%rdi
ffff800000105487:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff80000010548e:	ff ff ff 
ffff800000105491:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105495:	ff d0                	call   *%rax
ffff800000105497:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010549b:	e9 45 04 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff8000001054a0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054a4:	8b 00                	mov    (%rax),%eax
ffff8000001054a6:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054a9:	77 24                	ja     ffff8000001054cf <vsprintf+0x510>
ffff8000001054ab:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054af:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054b3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054b7:	8b 00                	mov    (%rax),%eax
ffff8000001054b9:	89 c0                	mov    %eax,%eax
ffff8000001054bb:	48 01 d0             	add    %rdx,%rax
ffff8000001054be:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054c2:	8b 12                	mov    (%rdx),%edx
ffff8000001054c4:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054c7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054cb:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054cd:	eb 14                	jmp    ffff8000001054e3 <vsprintf+0x524>
ffff8000001054cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054d7:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001054db:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054df:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054e3:	8b 00                	mov    (%rax),%eax
ffff8000001054e5:	89 c7                	mov    %eax,%edi
ffff8000001054e7:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001054ea:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001054ed:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001054f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054f4:	41 89 f1             	mov    %esi,%r9d
ffff8000001054f7:	41 89 c8             	mov    %ecx,%r8d
ffff8000001054fa:	89 d1                	mov    %edx,%ecx
ffff8000001054fc:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000105501:	48 89 fe             	mov    %rdi,%rsi
ffff800000105504:	48 89 c7             	mov    %rax,%rdi
ffff800000105507:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff80000010550e:	ff ff ff 
ffff800000105511:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105515:	ff d0                	call   *%rax
ffff800000105517:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010551b:	e9 c5 03 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105520:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff800000105524:	75 0b                	jne    ffff800000105531 <vsprintf+0x572>
ffff800000105526:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff80000010552d:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000105531:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105535:	8b 00                	mov    (%rax),%eax
ffff800000105537:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010553a:	77 24                	ja     ffff800000105560 <vsprintf+0x5a1>
ffff80000010553c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105540:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105544:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105548:	8b 00                	mov    (%rax),%eax
ffff80000010554a:	89 c0                	mov    %eax,%eax
ffff80000010554c:	48 01 d0             	add    %rdx,%rax
ffff80000010554f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105553:	8b 12                	mov    (%rdx),%edx
ffff800000105555:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105558:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010555c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010555e:	eb 14                	jmp    ffff800000105574 <vsprintf+0x5b5>
ffff800000105560:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105564:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105568:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010556c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105570:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105574:	48 8b 00             	mov    (%rax),%rax
ffff800000105577:	48 89 c7             	mov    %rax,%rdi
ffff80000010557a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010557d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105580:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105583:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105587:	41 89 f1             	mov    %esi,%r9d
ffff80000010558a:	41 89 c8             	mov    %ecx,%r8d
ffff80000010558d:	89 d1                	mov    %edx,%ecx
ffff80000010558f:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105594:	48 89 fe             	mov    %rdi,%rsi
ffff800000105597:	48 89 c7             	mov    %rax,%rdi
ffff80000010559a:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff8000001055a1:	ff ff ff 
ffff8000001055a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055a8:	ff d0                	call   *%rax
ffff8000001055aa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055ae:	e9 32 03 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff8000001055b3:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001055b7:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055bb:	0f 85 82 00 00 00    	jne    ffff800000105643 <vsprintf+0x684>
ffff8000001055c1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055c5:	8b 00                	mov    (%rax),%eax
ffff8000001055c7:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055ca:	77 24                	ja     ffff8000001055f0 <vsprintf+0x631>
ffff8000001055cc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d0:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055d4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d8:	8b 00                	mov    (%rax),%eax
ffff8000001055da:	89 c0                	mov    %eax,%eax
ffff8000001055dc:	48 01 d0             	add    %rdx,%rax
ffff8000001055df:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055e3:	8b 12                	mov    (%rdx),%edx
ffff8000001055e5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055e8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ec:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055ee:	eb 14                	jmp    ffff800000105604 <vsprintf+0x645>
ffff8000001055f0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055f8:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055fc:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105600:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105604:	48 8b 00             	mov    (%rax),%rax
ffff800000105607:	48 89 c7             	mov    %rax,%rdi
ffff80000010560a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010560d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105610:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105613:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105617:	41 89 f1             	mov    %esi,%r9d
ffff80000010561a:	41 89 c8             	mov    %ecx,%r8d
ffff80000010561d:	89 d1                	mov    %edx,%ecx
ffff80000010561f:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000105624:	48 89 fe             	mov    %rdi,%rsi
ffff800000105627:	48 89 c7             	mov    %rax,%rdi
ffff80000010562a:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff800000105631:	ff ff ff 
ffff800000105634:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105638:	ff d0                	call   *%rax
ffff80000010563a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010563e:	e9 a2 02 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105643:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105647:	8b 00                	mov    (%rax),%eax
ffff800000105649:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010564c:	77 24                	ja     ffff800000105672 <vsprintf+0x6b3>
ffff80000010564e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105652:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105656:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010565a:	8b 00                	mov    (%rax),%eax
ffff80000010565c:	89 c0                	mov    %eax,%eax
ffff80000010565e:	48 01 d0             	add    %rdx,%rax
ffff800000105661:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105665:	8b 12                	mov    (%rdx),%edx
ffff800000105667:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010566a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010566e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105670:	eb 14                	jmp    ffff800000105686 <vsprintf+0x6c7>
ffff800000105672:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105676:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010567a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010567e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105682:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105686:	8b 00                	mov    (%rax),%eax
ffff800000105688:	89 c7                	mov    %eax,%edi
ffff80000010568a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010568d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105690:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105693:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105697:	41 89 f1             	mov    %esi,%r9d
ffff80000010569a:	41 89 c8             	mov    %ecx,%r8d
ffff80000010569d:	89 d1                	mov    %edx,%ecx
ffff80000010569f:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001056a4:	48 89 fe             	mov    %rdi,%rsi
ffff8000001056a7:	48 89 c7             	mov    %rax,%rdi
ffff8000001056aa:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff8000001056b1:	ff ff ff 
ffff8000001056b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001056b8:	ff d0                	call   *%rax
ffff8000001056ba:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001056be:	e9 22 02 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff8000001056c3:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001056c7:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001056cb:	0f 85 82 00 00 00    	jne    ffff800000105753 <vsprintf+0x794>
ffff8000001056d1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056d5:	8b 00                	mov    (%rax),%eax
ffff8000001056d7:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001056da:	77 24                	ja     ffff800000105700 <vsprintf+0x741>
ffff8000001056dc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056e0:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001056e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056e8:	8b 00                	mov    (%rax),%eax
ffff8000001056ea:	89 c0                	mov    %eax,%eax
ffff8000001056ec:	48 01 d0             	add    %rdx,%rax
ffff8000001056ef:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056f3:	8b 12                	mov    (%rdx),%edx
ffff8000001056f5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001056f8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056fc:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056fe:	eb 14                	jmp    ffff800000105714 <vsprintf+0x755>
ffff800000105700:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105704:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105708:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010570c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105710:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105714:	48 8b 00             	mov    (%rax),%rax
ffff800000105717:	48 89 c7             	mov    %rax,%rdi
ffff80000010571a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010571d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105720:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105723:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105727:	41 89 f1             	mov    %esi,%r9d
ffff80000010572a:	41 89 c8             	mov    %ecx,%r8d
ffff80000010572d:	89 d1                	mov    %edx,%ecx
ffff80000010572f:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000105734:	48 89 fe             	mov    %rdi,%rsi
ffff800000105737:	48 89 c7             	mov    %rax,%rdi
ffff80000010573a:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff800000105741:	ff ff ff 
ffff800000105744:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105748:	ff d0                	call   *%rax
ffff80000010574a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010574e:	e9 92 01 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105753:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105757:	8b 00                	mov    (%rax),%eax
ffff800000105759:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010575c:	77 24                	ja     ffff800000105782 <vsprintf+0x7c3>
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
ffff800000105780:	eb 14                	jmp    ffff800000105796 <vsprintf+0x7d7>
ffff800000105782:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105786:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010578a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010578e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105792:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105796:	8b 00                	mov    (%rax),%eax
ffff800000105798:	89 c7                	mov    %eax,%edi
ffff80000010579a:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff80000010579d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001057a0:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001057a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001057a7:	41 89 f1             	mov    %esi,%r9d
ffff8000001057aa:	41 89 c8             	mov    %ecx,%r8d
ffff8000001057ad:	89 d1                	mov    %edx,%ecx
ffff8000001057af:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001057b4:	48 89 fe             	mov    %rdi,%rsi
ffff8000001057b7:	48 89 c7             	mov    %rax,%rdi
ffff8000001057ba:	48 b8 f3 73 ff ff ff 	movabs $0xffffffffffff73f3,%rax
ffff8000001057c1:	ff ff ff 
ffff8000001057c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057c8:	ff d0                	call   *%rax
ffff8000001057ca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001057ce:	e9 12 01 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff8000001057d3:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001057d7:	75 61                	jne    ffff80000010583a <vsprintf+0x87b>
ffff8000001057d9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057dd:	8b 00                	mov    (%rax),%eax
ffff8000001057df:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001057e2:	77 24                	ja     ffff800000105808 <vsprintf+0x849>
ffff8000001057e4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057e8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001057ec:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001057f0:	8b 00                	mov    (%rax),%eax
ffff8000001057f2:	89 c0                	mov    %eax,%eax
ffff8000001057f4:	48 01 d0             	add    %rdx,%rax
ffff8000001057f7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001057fb:	8b 12                	mov    (%rdx),%edx
ffff8000001057fd:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105800:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105804:	89 0a                	mov    %ecx,(%rdx)
ffff800000105806:	eb 14                	jmp    ffff80000010581c <vsprintf+0x85d>
ffff800000105808:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010580c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105810:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105814:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105818:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010581c:	48 8b 00             	mov    (%rax),%rax
ffff80000010581f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000105823:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105827:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010582b:	48 89 c2             	mov    %rax,%rdx
ffff80000010582e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000105832:	48 89 10             	mov    %rdx,(%rax)
ffff800000105835:	e9 ab 00 00 00       	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff80000010583a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010583e:	8b 00                	mov    (%rax),%eax
ffff800000105840:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105843:	77 24                	ja     ffff800000105869 <vsprintf+0x8aa>
ffff800000105845:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105849:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010584d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105851:	8b 00                	mov    (%rax),%eax
ffff800000105853:	89 c0                	mov    %eax,%eax
ffff800000105855:	48 01 d0             	add    %rdx,%rax
ffff800000105858:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010585c:	8b 12                	mov    (%rdx),%edx
ffff80000010585e:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105861:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105865:	89 0a                	mov    %ecx,(%rdx)
ffff800000105867:	eb 14                	jmp    ffff80000010587d <vsprintf+0x8be>
ffff800000105869:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010586d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105871:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105875:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105879:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010587d:	48 8b 00             	mov    (%rax),%rax
ffff800000105880:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000105884:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105888:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010588c:	89 c2                	mov    %eax,%edx
ffff80000010588e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000105892:	89 10                	mov    %edx,(%rax)
ffff800000105894:	eb 4f                	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff800000105896:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010589a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010589e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058a2:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058a5:	eb 3e                	jmp    ffff8000001058e5 <vsprintf+0x926>
ffff8000001058a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058ab:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001058af:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001058b3:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001058b6:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058ba:	0f b6 00             	movzbl (%rax),%eax
ffff8000001058bd:	84 c0                	test   %al,%al
ffff8000001058bf:	74 17                	je     ffff8000001058d8 <vsprintf+0x919>
ffff8000001058c1:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001058c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058c9:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001058cd:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001058d1:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001058d4:	88 10                	mov    %dl,(%rax)
ffff8000001058d6:	eb 0c                	jmp    ffff8000001058e4 <vsprintf+0x925>
ffff8000001058d8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058dc:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001058e0:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001058e4:	90                   	nop
ffff8000001058e5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058e9:	48 83 c0 01          	add    $0x1,%rax
ffff8000001058ed:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001058f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001058f5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001058f8:	84 c0                	test   %al,%al
ffff8000001058fa:	0f 85 f9 f6 ff ff    	jne    ffff800000104ff9 <vsprintf+0x3a>
ffff800000105900:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105904:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105907:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010590b:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010590f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000105913:	c9                   	leave
ffff800000105914:	c3                   	ret

ffff800000105915 <set_intr_gate>:
ffff800000105915:	f3 0f 1e fa          	endbr64
ffff800000105919:	55                   	push   %rbp
ffff80000010591a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010591d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010591d <set_intr_gate+0x8>
ffff800000105924:	49 bb 13 80 00 00 00 	movabs $0x8013,%r11
ffff80000010592b:	00 00 00 
ffff80000010592e:	4c 01 d8             	add    %r11,%rax
ffff800000105931:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105934:	89 f1                	mov    %esi,%ecx
ffff800000105936:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff80000010593a:	89 ca                	mov    %ecx,%edx
ffff80000010593c:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff80000010593f:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105942:	48 89 d1             	mov    %rdx,%rcx
ffff800000105945:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105949:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105950:	ff ff ff 
ffff800000105953:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105957:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff80000010595b:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff80000010595e:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105962:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105966:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff80000010596d:	ff ff ff 
ffff800000105970:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105974:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105978:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010597c:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105982:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105986:	44 89 c0             	mov    %r8d,%eax
ffff800000105989:	66 89 d0             	mov    %dx,%ax
ffff80000010598c:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105990:	48 81 c1 00 8e 00 00 	add    $0x8e00,%rcx
ffff800000105997:	48 c1 e1 20          	shl    $0x20,%rcx
ffff80000010599b:	48 01 c8             	add    %rcx,%rax
ffff80000010599e:	48 31 c9             	xor    %rcx,%rcx
ffff8000001059a1:	89 d1                	mov    %edx,%ecx
ffff8000001059a3:	48 c1 e9 10          	shr    $0x10,%rcx
ffff8000001059a7:	48 c1 e1 30          	shl    $0x30,%rcx
ffff8000001059ab:	48 01 c8             	add    %rcx,%rax
ffff8000001059ae:	48 89 06             	mov    %rax,(%rsi)
ffff8000001059b1:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001059b5:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001059b8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001059bc:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff8000001059c0:	90                   	nop
ffff8000001059c1:	5d                   	pop    %rbp
ffff8000001059c2:	c3                   	ret

ffff8000001059c3 <set_trap_gate>:
ffff8000001059c3:	f3 0f 1e fa          	endbr64
ffff8000001059c7:	55                   	push   %rbp
ffff8000001059c8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059cb:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001059cb <set_trap_gate+0x8>
ffff8000001059d2:	49 bb 65 7f 00 00 00 	movabs $0x7f65,%r11
ffff8000001059d9:	00 00 00 
ffff8000001059dc:	4c 01 d8             	add    %r11,%rax
ffff8000001059df:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff8000001059e2:	89 f1                	mov    %esi,%ecx
ffff8000001059e4:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff8000001059e8:	89 ca                	mov    %ecx,%edx
ffff8000001059ea:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff8000001059ed:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff8000001059f0:	48 89 d1             	mov    %rdx,%rcx
ffff8000001059f3:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001059f7:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff8000001059fe:	ff ff ff 
ffff800000105a01:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105a05:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105a09:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a0c:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105a10:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105a14:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105a1b:	ff ff ff 
ffff800000105a1e:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105a22:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105a26:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105a2a:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105a30:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105a34:	44 89 c0             	mov    %r8d,%eax
ffff800000105a37:	66 89 d0             	mov    %dx,%ax
ffff800000105a3a:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105a3e:	48 81 c1 00 8f 00 00 	add    $0x8f00,%rcx
ffff800000105a45:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105a49:	48 01 c8             	add    %rcx,%rax
ffff800000105a4c:	48 31 c9             	xor    %rcx,%rcx
ffff800000105a4f:	89 d1                	mov    %edx,%ecx
ffff800000105a51:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105a55:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105a59:	48 01 c8             	add    %rcx,%rax
ffff800000105a5c:	48 89 06             	mov    %rax,(%rsi)
ffff800000105a5f:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105a63:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105a66:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105a6a:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105a6e:	90                   	nop
ffff800000105a6f:	5d                   	pop    %rbp
ffff800000105a70:	c3                   	ret

ffff800000105a71 <set_system_gate>:
ffff800000105a71:	f3 0f 1e fa          	endbr64
ffff800000105a75:	55                   	push   %rbp
ffff800000105a76:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a79:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105a79 <set_system_gate+0x8>
ffff800000105a80:	49 bb b7 7e 00 00 00 	movabs $0x7eb7,%r11
ffff800000105a87:	00 00 00 
ffff800000105a8a:	4c 01 d8             	add    %r11,%rax
ffff800000105a8d:	89 7d ec             	mov    %edi,-0x14(%rbp)
ffff800000105a90:	89 f1                	mov    %esi,%ecx
ffff800000105a92:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
ffff800000105a96:	89 ca                	mov    %ecx,%edx
ffff800000105a98:	88 55 e8             	mov    %dl,-0x18(%rbp)
ffff800000105a9b:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105a9e:	48 89 d1             	mov    %rdx,%rcx
ffff800000105aa1:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000105aa5:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105aac:	ff ff ff 
ffff800000105aaf:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105ab3:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
ffff800000105ab7:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000105aba:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000105abe:	48 8d 4a 08          	lea    0x8(%rdx),%rcx
ffff800000105ac2:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000105ac9:	ff ff ff 
ffff800000105acc:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105ad0:	48 8d 3c 01          	lea    (%rcx,%rax,1),%rdi
ffff800000105ad4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105ad8:	41 b8 00 00 08 00    	mov    $0x80000,%r8d
ffff800000105ade:	0f b6 4d e8          	movzbl -0x18(%rbp),%ecx
ffff800000105ae2:	44 89 c0             	mov    %r8d,%eax
ffff800000105ae5:	66 89 d0             	mov    %dx,%ax
ffff800000105ae8:	48 83 e1 07          	and    $0x7,%rcx
ffff800000105aec:	48 81 c1 00 ef 00 00 	add    $0xef00,%rcx
ffff800000105af3:	48 c1 e1 20          	shl    $0x20,%rcx
ffff800000105af7:	48 01 c8             	add    %rcx,%rax
ffff800000105afa:	48 31 c9             	xor    %rcx,%rcx
ffff800000105afd:	89 d1                	mov    %edx,%ecx
ffff800000105aff:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000105b03:	48 c1 e1 30          	shl    $0x30,%rcx
ffff800000105b07:	48 01 c8             	add    %rcx,%rax
ffff800000105b0a:	48 89 06             	mov    %rax,(%rsi)
ffff800000105b0d:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000105b11:	48 89 17             	mov    %rdx,(%rdi)
ffff800000105b14:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000105b18:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000105b1c:	90                   	nop
ffff800000105b1d:	5d                   	pop    %rbp
ffff800000105b1e:	c3                   	ret
ffff800000105b1f:	f3 0f 1e fa          	endbr64
ffff800000105b23:	55                   	push   %rbp
ffff800000105b24:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b27:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000105b27 <set_system_gate+0xb6>
ffff800000105b2e:	49 bb 09 7e 00 00 00 	movabs $0x7e09,%r11
ffff800000105b35:	00 00 00 
ffff800000105b38:	4c 01 d8             	add    %r11,%rax
ffff800000105b3b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105b3f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000105b43:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105b47:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
ffff800000105b4b:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
ffff800000105b4f:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
ffff800000105b53:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b5a:	ff ff ff 
ffff800000105b5d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b61:	48 8d 52 04          	lea    0x4(%rdx),%rdx
ffff800000105b65:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000105b69:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b6c:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b73:	ff ff ff 
ffff800000105b76:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b7a:	48 8d 52 0c          	lea    0xc(%rdx),%rdx
ffff800000105b7e:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000105b82:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b85:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105b8c:	ff ff ff 
ffff800000105b8f:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105b93:	48 8d 52 14          	lea    0x14(%rdx),%rdx
ffff800000105b97:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105b9b:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105b9e:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105ba5:	ff ff ff 
ffff800000105ba8:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bac:	48 8d 52 24          	lea    0x24(%rdx),%rdx
ffff800000105bb0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff800000105bb4:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bb7:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bbe:	ff ff ff 
ffff800000105bc1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bc5:	48 8d 52 2c          	lea    0x2c(%rdx),%rdx
ffff800000105bc9:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
ffff800000105bcd:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105bd0:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bd7:	ff ff ff 
ffff800000105bda:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bde:	48 8d 52 34          	lea    0x34(%rdx),%rdx
ffff800000105be2:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
ffff800000105be6:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105be9:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105bf0:	ff ff ff 
ffff800000105bf3:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105bf7:	48 8d 52 3c          	lea    0x3c(%rdx),%rdx
ffff800000105bfb:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
ffff800000105bff:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c02:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c09:	ff ff ff 
ffff800000105c0c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c10:	48 8d 52 44          	lea    0x44(%rdx),%rdx
ffff800000105c14:	48 8b 4d 18          	mov    0x18(%rbp),%rcx
ffff800000105c18:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c1b:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c22:	ff ff ff 
ffff800000105c25:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105c29:	48 8d 52 4c          	lea    0x4c(%rdx),%rdx
ffff800000105c2d:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
ffff800000105c31:	48 89 0a             	mov    %rcx,(%rdx)
ffff800000105c34:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff800000105c3b:	ff ff ff 
ffff800000105c3e:	48 8b 04 10          	mov    (%rax,%rdx,1),%rax
ffff800000105c42:	48 8d 40 54          	lea    0x54(%rax),%rax
ffff800000105c46:	48 8b 55 28          	mov    0x28(%rbp),%rdx
ffff800000105c4a:	48 89 10             	mov    %rdx,(%rax)
ffff800000105c4d:	90                   	nop
ffff800000105c4e:	5d                   	pop    %rbp
ffff800000105c4f:	c3                   	ret

ffff800000105c50 <do_divide_error>:
ffff800000105c50:	f3 0f 1e fa          	endbr64
ffff800000105c54:	55                   	push   %rbp
ffff800000105c55:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c58:	41 57                	push   %r15
ffff800000105c5a:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105c5e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105c5e <do_divide_error+0xe>
ffff800000105c65:	49 bb d2 7c 00 00 00 	movabs $0x7cd2,%r11
ffff800000105c6c:	00 00 00 
ffff800000105c6f:	4d 01 da             	add    %r11,%r10
ffff800000105c72:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c76:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c7a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c81:	00 
ffff800000105c82:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105c86:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105c8c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105c90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c94:	48 8b 08             	mov    (%rax),%rcx
ffff800000105c97:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105c9b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c9f:	49 89 c9             	mov    %rcx,%r9
ffff800000105ca2:	49 89 d0             	mov    %rdx,%r8
ffff800000105ca5:	48 89 c1             	mov    %rax,%rcx
ffff800000105ca8:	48 b8 60 a1 ff ff ff 	movabs $0xffffffffffffa160,%rax
ffff800000105caf:	ff ff ff 
ffff800000105cb2:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105cb6:	48 89 c2             	mov    %rax,%rdx
ffff800000105cb9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105cbe:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105cc3:	4d 89 d7             	mov    %r10,%r15
ffff800000105cc6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ccb:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105cd2:	ff ff ff 
ffff800000105cd5:	4d 01 d3             	add    %r10,%r11
ffff800000105cd8:	41 ff d3             	call   *%r11
ffff800000105cdb:	90                   	nop
ffff800000105cdc:	eb fd                	jmp    ffff800000105cdb <do_divide_error+0x8b>

ffff800000105cde <do_debug>:
ffff800000105cde:	f3 0f 1e fa          	endbr64
ffff800000105ce2:	55                   	push   %rbp
ffff800000105ce3:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ce6:	41 57                	push   %r15
ffff800000105ce8:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105cec:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105cec <do_debug+0xe>
ffff800000105cf3:	49 bb 44 7c 00 00 00 	movabs $0x7c44,%r11
ffff800000105cfa:	00 00 00 
ffff800000105cfd:	4d 01 da             	add    %r11,%r10
ffff800000105d00:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d04:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d08:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d0f:	00 
ffff800000105d10:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d14:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d1a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d1e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d22:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d25:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d29:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d2d:	49 89 c9             	mov    %rcx,%r9
ffff800000105d30:	49 89 d0             	mov    %rdx,%r8
ffff800000105d33:	48 89 c1             	mov    %rax,%rcx
ffff800000105d36:	48 b8 a0 a1 ff ff ff 	movabs $0xffffffffffffa1a0,%rax
ffff800000105d3d:	ff ff ff 
ffff800000105d40:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105d44:	48 89 c2             	mov    %rax,%rdx
ffff800000105d47:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105d4c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105d51:	4d 89 d7             	mov    %r10,%r15
ffff800000105d54:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d59:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105d60:	ff ff ff 
ffff800000105d63:	4d 01 d3             	add    %r10,%r11
ffff800000105d66:	41 ff d3             	call   *%r11
ffff800000105d69:	90                   	nop
ffff800000105d6a:	eb fd                	jmp    ffff800000105d69 <do_debug+0x8b>

ffff800000105d6c <do_nmi>:
ffff800000105d6c:	f3 0f 1e fa          	endbr64
ffff800000105d70:	55                   	push   %rbp
ffff800000105d71:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d74:	41 57                	push   %r15
ffff800000105d76:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105d7a:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105d7a <do_nmi+0xe>
ffff800000105d81:	49 bb b6 7b 00 00 00 	movabs $0x7bb6,%r11
ffff800000105d88:	00 00 00 
ffff800000105d8b:	4d 01 da             	add    %r11,%r10
ffff800000105d8e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d92:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d96:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d9d:	00 
ffff800000105d9e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105da2:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105da8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105dac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105db0:	48 8b 08             	mov    (%rax),%rcx
ffff800000105db3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105db7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dbb:	49 89 c9             	mov    %rcx,%r9
ffff800000105dbe:	49 89 d0             	mov    %rdx,%r8
ffff800000105dc1:	48 89 c1             	mov    %rax,%rcx
ffff800000105dc4:	48 b8 d8 a1 ff ff ff 	movabs $0xffffffffffffa1d8,%rax
ffff800000105dcb:	ff ff ff 
ffff800000105dce:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105dd2:	48 89 c2             	mov    %rax,%rdx
ffff800000105dd5:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105dda:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105ddf:	4d 89 d7             	mov    %r10,%r15
ffff800000105de2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105de7:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105dee:	ff ff ff 
ffff800000105df1:	4d 01 d3             	add    %r10,%r11
ffff800000105df4:	41 ff d3             	call   *%r11
ffff800000105df7:	90                   	nop
ffff800000105df8:	eb fd                	jmp    ffff800000105df7 <do_nmi+0x8b>

ffff800000105dfa <do_int3>:
ffff800000105dfa:	f3 0f 1e fa          	endbr64
ffff800000105dfe:	55                   	push   %rbp
ffff800000105dff:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e02:	41 57                	push   %r15
ffff800000105e04:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e08:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e08 <do_int3+0xe>
ffff800000105e0f:	49 bb 28 7b 00 00 00 	movabs $0x7b28,%r11
ffff800000105e16:	00 00 00 
ffff800000105e19:	4d 01 da             	add    %r11,%r10
ffff800000105e1c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105e20:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105e24:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105e2b:	00 
ffff800000105e2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105e30:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105e36:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105e3a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e3e:	48 8b 08             	mov    (%rax),%rcx
ffff800000105e41:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105e45:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e49:	49 89 c9             	mov    %rcx,%r9
ffff800000105e4c:	49 89 d0             	mov    %rdx,%r8
ffff800000105e4f:	48 89 c1             	mov    %rax,%rcx
ffff800000105e52:	48 b8 10 a2 ff ff ff 	movabs $0xffffffffffffa210,%rax
ffff800000105e59:	ff ff ff 
ffff800000105e5c:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105e60:	48 89 c2             	mov    %rax,%rdx
ffff800000105e63:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105e68:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105e6d:	4d 89 d7             	mov    %r10,%r15
ffff800000105e70:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e75:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105e7c:	ff ff ff 
ffff800000105e7f:	4d 01 d3             	add    %r10,%r11
ffff800000105e82:	41 ff d3             	call   *%r11
ffff800000105e85:	90                   	nop
ffff800000105e86:	eb fd                	jmp    ffff800000105e85 <do_int3+0x8b>

ffff800000105e88 <do_overflow>:
ffff800000105e88:	f3 0f 1e fa          	endbr64
ffff800000105e8c:	55                   	push   %rbp
ffff800000105e8d:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e90:	41 57                	push   %r15
ffff800000105e92:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105e96:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105e96 <do_overflow+0xe>
ffff800000105e9d:	49 bb 9a 7a 00 00 00 	movabs $0x7a9a,%r11
ffff800000105ea4:	00 00 00 
ffff800000105ea7:	4d 01 da             	add    %r11,%r10
ffff800000105eaa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105eae:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105eb2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105eb9:	00 
ffff800000105eba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ebe:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ec4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ec8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ecc:	48 8b 08             	mov    (%rax),%rcx
ffff800000105ecf:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105ed3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ed7:	49 89 c9             	mov    %rcx,%r9
ffff800000105eda:	49 89 d0             	mov    %rdx,%r8
ffff800000105edd:	48 89 c1             	mov    %rax,%rcx
ffff800000105ee0:	48 b8 48 a2 ff ff ff 	movabs $0xffffffffffffa248,%rax
ffff800000105ee7:	ff ff ff 
ffff800000105eea:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105eee:	48 89 c2             	mov    %rax,%rdx
ffff800000105ef1:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105ef6:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105efb:	4d 89 d7             	mov    %r10,%r15
ffff800000105efe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f03:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105f0a:	ff ff ff 
ffff800000105f0d:	4d 01 d3             	add    %r10,%r11
ffff800000105f10:	41 ff d3             	call   *%r11
ffff800000105f13:	90                   	nop
ffff800000105f14:	eb fd                	jmp    ffff800000105f13 <do_overflow+0x8b>

ffff800000105f16 <do_bounds>:
ffff800000105f16:	f3 0f 1e fa          	endbr64
ffff800000105f1a:	55                   	push   %rbp
ffff800000105f1b:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f1e:	41 57                	push   %r15
ffff800000105f20:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f24:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105f24 <do_bounds+0xe>
ffff800000105f2b:	49 bb 0c 7a 00 00 00 	movabs $0x7a0c,%r11
ffff800000105f32:	00 00 00 
ffff800000105f35:	4d 01 da             	add    %r11,%r10
ffff800000105f38:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f3c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105f40:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105f47:	00 
ffff800000105f48:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105f4c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105f52:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f5a:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f5d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f61:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f65:	49 89 c9             	mov    %rcx,%r9
ffff800000105f68:	49 89 d0             	mov    %rdx,%r8
ffff800000105f6b:	48 89 c1             	mov    %rax,%rcx
ffff800000105f6e:	48 b8 88 a2 ff ff ff 	movabs $0xffffffffffffa288,%rax
ffff800000105f75:	ff ff ff 
ffff800000105f78:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000105f7c:	48 89 c2             	mov    %rax,%rdx
ffff800000105f7f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000105f84:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000105f89:	4d 89 d7             	mov    %r10,%r15
ffff800000105f8c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f91:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000105f98:	ff ff ff 
ffff800000105f9b:	4d 01 d3             	add    %r10,%r11
ffff800000105f9e:	41 ff d3             	call   *%r11
ffff800000105fa1:	90                   	nop
ffff800000105fa2:	eb fd                	jmp    ffff800000105fa1 <do_bounds+0x8b>

ffff800000105fa4 <do_undefined_opcode>:
ffff800000105fa4:	f3 0f 1e fa          	endbr64
ffff800000105fa8:	55                   	push   %rbp
ffff800000105fa9:	48 89 e5             	mov    %rsp,%rbp
ffff800000105fac:	41 57                	push   %r15
ffff800000105fae:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105fb2:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000105fb2 <do_undefined_opcode+0xe>
ffff800000105fb9:	49 bb 7e 79 00 00 00 	movabs $0x797e,%r11
ffff800000105fc0:	00 00 00 
ffff800000105fc3:	4d 01 da             	add    %r11,%r10
ffff800000105fc6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105fca:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fce:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fd5:	00 
ffff800000105fd6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fda:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fe0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fe4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fe8:	48 8b 08             	mov    (%rax),%rcx
ffff800000105feb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105ff3:	49 89 c9             	mov    %rcx,%r9
ffff800000105ff6:	49 89 d0             	mov    %rdx,%r8
ffff800000105ff9:	48 89 c1             	mov    %rax,%rcx
ffff800000105ffc:	48 b8 c8 a2 ff ff ff 	movabs $0xffffffffffffa2c8,%rax
ffff800000106003:	ff ff ff 
ffff800000106006:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff80000010600a:	48 89 c2             	mov    %rax,%rdx
ffff80000010600d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106012:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106017:	4d 89 d7             	mov    %r10,%r15
ffff80000010601a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010601f:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106026:	ff ff ff 
ffff800000106029:	4d 01 d3             	add    %r10,%r11
ffff80000010602c:	41 ff d3             	call   *%r11
ffff80000010602f:	90                   	nop
ffff800000106030:	eb fd                	jmp    ffff80000010602f <do_undefined_opcode+0x8b>

ffff800000106032 <do_dev_not_available>:
ffff800000106032:	f3 0f 1e fa          	endbr64
ffff800000106036:	55                   	push   %rbp
ffff800000106037:	48 89 e5             	mov    %rsp,%rbp
ffff80000010603a:	41 57                	push   %r15
ffff80000010603c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106040:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106040 <do_dev_not_available+0xe>
ffff800000106047:	49 bb f0 78 00 00 00 	movabs $0x78f0,%r11
ffff80000010604e:	00 00 00 
ffff800000106051:	4d 01 da             	add    %r11,%r10
ffff800000106054:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106058:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010605c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106063:	00 
ffff800000106064:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106068:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010606e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106072:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106076:	48 8b 08             	mov    (%rax),%rcx
ffff800000106079:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010607d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106081:	49 89 c9             	mov    %rcx,%r9
ffff800000106084:	49 89 d0             	mov    %rdx,%r8
ffff800000106087:	48 89 c1             	mov    %rax,%rcx
ffff80000010608a:	48 b8 10 a3 ff ff ff 	movabs $0xffffffffffffa310,%rax
ffff800000106091:	ff ff ff 
ffff800000106094:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106098:	48 89 c2             	mov    %rax,%rdx
ffff80000010609b:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001060a0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001060a5:	4d 89 d7             	mov    %r10,%r15
ffff8000001060a8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060ad:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff8000001060b4:	ff ff ff 
ffff8000001060b7:	4d 01 d3             	add    %r10,%r11
ffff8000001060ba:	41 ff d3             	call   *%r11
ffff8000001060bd:	90                   	nop
ffff8000001060be:	eb fd                	jmp    ffff8000001060bd <do_dev_not_available+0x8b>

ffff8000001060c0 <do_double_fault>:
ffff8000001060c0:	f3 0f 1e fa          	endbr64
ffff8000001060c4:	55                   	push   %rbp
ffff8000001060c5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060c8:	41 57                	push   %r15
ffff8000001060ca:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060ce:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001060ce <do_double_fault+0xe>
ffff8000001060d5:	49 bb 62 78 00 00 00 	movabs $0x7862,%r11
ffff8000001060dc:	00 00 00 
ffff8000001060df:	4d 01 da             	add    %r11,%r10
ffff8000001060e2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001060e6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001060ea:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060f1:	00 
ffff8000001060f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060f6:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060fc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106100:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106104:	48 8b 08             	mov    (%rax),%rcx
ffff800000106107:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010610b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010610f:	49 89 c9             	mov    %rcx,%r9
ffff800000106112:	49 89 d0             	mov    %rdx,%r8
ffff800000106115:	48 89 c1             	mov    %rax,%rcx
ffff800000106118:	48 b8 58 a3 ff ff ff 	movabs $0xffffffffffffa358,%rax
ffff80000010611f:	ff ff ff 
ffff800000106122:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106126:	48 89 c2             	mov    %rax,%rdx
ffff800000106129:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010612e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106133:	4d 89 d7             	mov    %r10,%r15
ffff800000106136:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010613b:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106142:	ff ff ff 
ffff800000106145:	4d 01 d3             	add    %r10,%r11
ffff800000106148:	41 ff d3             	call   *%r11
ffff80000010614b:	90                   	nop
ffff80000010614c:	eb fd                	jmp    ffff80000010614b <do_double_fault+0x8b>

ffff80000010614e <do_coprocessor_segment_overrun>:
ffff80000010614e:	f3 0f 1e fa          	endbr64
ffff800000106152:	55                   	push   %rbp
ffff800000106153:	48 89 e5             	mov    %rsp,%rbp
ffff800000106156:	41 57                	push   %r15
ffff800000106158:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010615c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff80000010615c <do_coprocessor_segment_overrun+0xe>
ffff800000106163:	49 bb d4 77 00 00 00 	movabs $0x77d4,%r11
ffff80000010616a:	00 00 00 
ffff80000010616d:	4d 01 da             	add    %r11,%r10
ffff800000106170:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106174:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106178:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010617f:	00 
ffff800000106180:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106184:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010618a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010618e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106192:	48 8b 08             	mov    (%rax),%rcx
ffff800000106195:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106199:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010619d:	49 89 c9             	mov    %rcx,%r9
ffff8000001061a0:	49 89 d0             	mov    %rdx,%r8
ffff8000001061a3:	48 89 c1             	mov    %rax,%rcx
ffff8000001061a6:	48 b8 98 a3 ff ff ff 	movabs $0xffffffffffffa398,%rax
ffff8000001061ad:	ff ff ff 
ffff8000001061b0:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff8000001061b4:	48 89 c2             	mov    %rax,%rdx
ffff8000001061b7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001061bc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001061c1:	4d 89 d7             	mov    %r10,%r15
ffff8000001061c4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061c9:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff8000001061d0:	ff ff ff 
ffff8000001061d3:	4d 01 d3             	add    %r10,%r11
ffff8000001061d6:	41 ff d3             	call   *%r11
ffff8000001061d9:	90                   	nop
ffff8000001061da:	eb fd                	jmp    ffff8000001061d9 <do_coprocessor_segment_overrun+0x8b>

ffff8000001061dc <do_invalid_TSS>:
ffff8000001061dc:	f3 0f 1e fa          	endbr64
ffff8000001061e0:	55                   	push   %rbp
ffff8000001061e1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061e4:	41 57                	push   %r15
ffff8000001061e6:	53                   	push   %rbx
ffff8000001061e7:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001061eb:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001061eb <do_invalid_TSS+0xf>
ffff8000001061f2:	49 bb 45 77 00 00 00 	movabs $0x7745,%r11
ffff8000001061f9:	00 00 00 
ffff8000001061fc:	4c 01 db             	add    %r11,%rbx
ffff8000001061ff:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106203:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106207:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010620e:	00 
ffff80000010620f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106213:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106219:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010621d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106221:	48 8b 08             	mov    (%rax),%rcx
ffff800000106224:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106228:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010622c:	49 89 c9             	mov    %rcx,%r9
ffff80000010622f:	49 89 d0             	mov    %rdx,%r8
ffff800000106232:	48 89 c1             	mov    %rax,%rcx
ffff800000106235:	48 b8 e8 a3 ff ff ff 	movabs $0xffffffffffffa3e8,%rax
ffff80000010623c:	ff ff ff 
ffff80000010623f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106243:	48 89 c2             	mov    %rax,%rdx
ffff800000106246:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010624b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106250:	49 89 df             	mov    %rbx,%r15
ffff800000106253:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106258:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff80000010625f:	ff ff ff 
ffff800000106262:	49 01 da             	add    %rbx,%r10
ffff800000106265:	41 ff d2             	call   *%r10
ffff800000106268:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010626c:	83 e0 01             	and    $0x1,%eax
ffff80000010626f:	48 85 c0             	test   %rax,%rax
ffff800000106272:	74 32                	je     ffff8000001062a6 <do_invalid_TSS+0xca>
ffff800000106274:	48 b8 28 a4 ff ff ff 	movabs $0xffffffffffffa428,%rax
ffff80000010627b:	ff ff ff 
ffff80000010627e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106282:	48 89 c2             	mov    %rax,%rdx
ffff800000106285:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010628a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010628f:	49 89 df             	mov    %rbx,%r15
ffff800000106292:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106297:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010629e:	ff ff ff 
ffff8000001062a1:	48 01 d9             	add    %rbx,%rcx
ffff8000001062a4:	ff d1                	call   *%rcx
ffff8000001062a6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062aa:	83 e0 02             	and    $0x2,%eax
ffff8000001062ad:	48 85 c0             	test   %rax,%rax
ffff8000001062b0:	74 34                	je     ffff8000001062e6 <do_invalid_TSS+0x10a>
ffff8000001062b2:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001062b9:	ff ff ff 
ffff8000001062bc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062c0:	48 89 c2             	mov    %rax,%rdx
ffff8000001062c3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062c8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001062cd:	49 89 df             	mov    %rbx,%r15
ffff8000001062d0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062d5:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001062dc:	ff ff ff 
ffff8000001062df:	48 01 d9             	add    %rbx,%rcx
ffff8000001062e2:	ff d1                	call   *%rcx
ffff8000001062e4:	eb 32                	jmp    ffff800000106318 <do_invalid_TSS+0x13c>
ffff8000001062e6:	48 b8 d8 a4 ff ff ff 	movabs $0xffffffffffffa4d8,%rax
ffff8000001062ed:	ff ff ff 
ffff8000001062f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001062f4:	48 89 c2             	mov    %rax,%rdx
ffff8000001062f7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001062fc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106301:	49 89 df             	mov    %rbx,%r15
ffff800000106304:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106309:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106310:	ff ff ff 
ffff800000106313:	48 01 d9             	add    %rbx,%rcx
ffff800000106316:	ff d1                	call   *%rcx
ffff800000106318:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010631c:	83 e0 02             	and    $0x2,%eax
ffff80000010631f:	48 85 c0             	test   %rax,%rax
ffff800000106322:	75 72                	jne    ffff800000106396 <do_invalid_TSS+0x1ba>
ffff800000106324:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106328:	83 e0 04             	and    $0x4,%eax
ffff80000010632b:	48 85 c0             	test   %rax,%rax
ffff80000010632e:	74 34                	je     ffff800000106364 <do_invalid_TSS+0x188>
ffff800000106330:	48 b8 10 a5 ff ff ff 	movabs $0xffffffffffffa510,%rax
ffff800000106337:	ff ff ff 
ffff80000010633a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010633e:	48 89 c2             	mov    %rax,%rdx
ffff800000106341:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106346:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010634b:	49 89 df             	mov    %rbx,%r15
ffff80000010634e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106353:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010635a:	ff ff ff 
ffff80000010635d:	48 01 d9             	add    %rbx,%rcx
ffff800000106360:	ff d1                	call   *%rcx
ffff800000106362:	eb 32                	jmp    ffff800000106396 <do_invalid_TSS+0x1ba>
ffff800000106364:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff80000010636b:	ff ff ff 
ffff80000010636e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106372:	48 89 c2             	mov    %rax,%rdx
ffff800000106375:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010637a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010637f:	49 89 df             	mov    %rbx,%r15
ffff800000106382:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106387:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010638e:	ff ff ff 
ffff800000106391:	48 01 d9             	add    %rbx,%rcx
ffff800000106394:	ff d1                	call   *%rcx
ffff800000106396:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010639a:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010639f:	48 89 c1             	mov    %rax,%rcx
ffff8000001063a2:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff8000001063a9:	ff ff ff 
ffff8000001063ac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001063b0:	48 89 c2             	mov    %rax,%rdx
ffff8000001063b3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001063b8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001063bd:	49 89 df             	mov    %rbx,%r15
ffff8000001063c0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063c5:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff8000001063cc:	ff ff ff 
ffff8000001063cf:	49 01 d8             	add    %rbx,%r8
ffff8000001063d2:	41 ff d0             	call   *%r8
ffff8000001063d5:	90                   	nop
ffff8000001063d6:	eb fd                	jmp    ffff8000001063d5 <do_invalid_TSS+0x1f9>

ffff8000001063d8 <do_segment_not_present>:
ffff8000001063d8:	f3 0f 1e fa          	endbr64
ffff8000001063dc:	55                   	push   %rbp
ffff8000001063dd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063e0:	41 57                	push   %r15
ffff8000001063e2:	53                   	push   %rbx
ffff8000001063e3:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001063e7:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001063e7 <do_segment_not_present+0xf>
ffff8000001063ee:	49 bb 49 75 00 00 00 	movabs $0x7549,%r11
ffff8000001063f5:	00 00 00 
ffff8000001063f8:	4c 01 db             	add    %r11,%rbx
ffff8000001063fb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001063ff:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106403:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010640a:	00 
ffff80000010640b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010640f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106415:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106419:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010641d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106420:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106424:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106428:	49 89 c9             	mov    %rcx,%r9
ffff80000010642b:	49 89 d0             	mov    %rdx,%r8
ffff80000010642e:	48 89 c1             	mov    %rax,%rcx
ffff800000106431:	48 b8 98 a5 ff ff ff 	movabs $0xffffffffffffa598,%rax
ffff800000106438:	ff ff ff 
ffff80000010643b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010643f:	48 89 c2             	mov    %rax,%rdx
ffff800000106442:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106447:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010644c:	49 89 df             	mov    %rbx,%r15
ffff80000010644f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106454:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff80000010645b:	ff ff ff 
ffff80000010645e:	49 01 da             	add    %rbx,%r10
ffff800000106461:	41 ff d2             	call   *%r10
ffff800000106464:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106468:	83 e0 01             	and    $0x1,%eax
ffff80000010646b:	48 85 c0             	test   %rax,%rax
ffff80000010646e:	74 32                	je     ffff8000001064a2 <do_segment_not_present+0xca>
ffff800000106470:	48 b8 28 a4 ff ff ff 	movabs $0xffffffffffffa428,%rax
ffff800000106477:	ff ff ff 
ffff80000010647a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010647e:	48 89 c2             	mov    %rax,%rdx
ffff800000106481:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106486:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010648b:	49 89 df             	mov    %rbx,%r15
ffff80000010648e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106493:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010649a:	ff ff ff 
ffff80000010649d:	48 01 d9             	add    %rbx,%rcx
ffff8000001064a0:	ff d1                	call   *%rcx
ffff8000001064a2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064a6:	83 e0 02             	and    $0x2,%eax
ffff8000001064a9:	48 85 c0             	test   %rax,%rax
ffff8000001064ac:	74 34                	je     ffff8000001064e2 <do_segment_not_present+0x10a>
ffff8000001064ae:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001064b5:	ff ff ff 
ffff8000001064b8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064bc:	48 89 c2             	mov    %rax,%rdx
ffff8000001064bf:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064c4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064c9:	49 89 df             	mov    %rbx,%r15
ffff8000001064cc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064d1:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001064d8:	ff ff ff 
ffff8000001064db:	48 01 d9             	add    %rbx,%rcx
ffff8000001064de:	ff d1                	call   *%rcx
ffff8000001064e0:	eb 32                	jmp    ffff800000106514 <do_segment_not_present+0x13c>
ffff8000001064e2:	48 b8 d8 a4 ff ff ff 	movabs $0xffffffffffffa4d8,%rax
ffff8000001064e9:	ff ff ff 
ffff8000001064ec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001064f0:	48 89 c2             	mov    %rax,%rdx
ffff8000001064f3:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001064f8:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001064fd:	49 89 df             	mov    %rbx,%r15
ffff800000106500:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106505:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010650c:	ff ff ff 
ffff80000010650f:	48 01 d9             	add    %rbx,%rcx
ffff800000106512:	ff d1                	call   *%rcx
ffff800000106514:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106518:	83 e0 02             	and    $0x2,%eax
ffff80000010651b:	48 85 c0             	test   %rax,%rax
ffff80000010651e:	75 72                	jne    ffff800000106592 <do_segment_not_present+0x1ba>
ffff800000106520:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106524:	83 e0 04             	and    $0x4,%eax
ffff800000106527:	48 85 c0             	test   %rax,%rax
ffff80000010652a:	74 34                	je     ffff800000106560 <do_segment_not_present+0x188>
ffff80000010652c:	48 b8 10 a5 ff ff ff 	movabs $0xffffffffffffa510,%rax
ffff800000106533:	ff ff ff 
ffff800000106536:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010653a:	48 89 c2             	mov    %rax,%rdx
ffff80000010653d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106542:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106547:	49 89 df             	mov    %rbx,%r15
ffff80000010654a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010654f:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106556:	ff ff ff 
ffff800000106559:	48 01 d9             	add    %rbx,%rcx
ffff80000010655c:	ff d1                	call   *%rcx
ffff80000010655e:	eb 32                	jmp    ffff800000106592 <do_segment_not_present+0x1ba>
ffff800000106560:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff800000106567:	ff ff ff 
ffff80000010656a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010656e:	48 89 c2             	mov    %rax,%rdx
ffff800000106571:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106576:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010657b:	49 89 df             	mov    %rbx,%r15
ffff80000010657e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106583:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010658a:	ff ff ff 
ffff80000010658d:	48 01 d9             	add    %rbx,%rcx
ffff800000106590:	ff d1                	call   *%rcx
ffff800000106592:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106596:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010659b:	48 89 c1             	mov    %rax,%rcx
ffff80000010659e:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff8000001065a5:	ff ff ff 
ffff8000001065a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001065ac:	48 89 c2             	mov    %rax,%rdx
ffff8000001065af:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001065b4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001065b9:	49 89 df             	mov    %rbx,%r15
ffff8000001065bc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065c1:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff8000001065c8:	ff ff ff 
ffff8000001065cb:	49 01 d8             	add    %rbx,%r8
ffff8000001065ce:	41 ff d0             	call   *%r8
ffff8000001065d1:	90                   	nop
ffff8000001065d2:	eb fd                	jmp    ffff8000001065d1 <do_segment_not_present+0x1f9>

ffff8000001065d4 <do_stack_segment_fault>:
ffff8000001065d4:	f3 0f 1e fa          	endbr64
ffff8000001065d8:	55                   	push   %rbp
ffff8000001065d9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001065dc:	41 57                	push   %r15
ffff8000001065de:	53                   	push   %rbx
ffff8000001065df:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001065e3:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001065e3 <do_stack_segment_fault+0xf>
ffff8000001065ea:	49 bb 4d 73 00 00 00 	movabs $0x734d,%r11
ffff8000001065f1:	00 00 00 
ffff8000001065f4:	4c 01 db             	add    %r11,%rbx
ffff8000001065f7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001065fb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001065ff:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106606:	00 
ffff800000106607:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010660b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106611:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106615:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106619:	48 8b 08             	mov    (%rax),%rcx
ffff80000010661c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106620:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106624:	49 89 c9             	mov    %rcx,%r9
ffff800000106627:	49 89 d0             	mov    %rdx,%r8
ffff80000010662a:	48 89 c1             	mov    %rax,%rcx
ffff80000010662d:	48 b8 e0 a5 ff ff ff 	movabs $0xffffffffffffa5e0,%rax
ffff800000106634:	ff ff ff 
ffff800000106637:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010663b:	48 89 c2             	mov    %rax,%rdx
ffff80000010663e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106643:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106648:	49 89 df             	mov    %rbx,%r15
ffff80000010664b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106650:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff800000106657:	ff ff ff 
ffff80000010665a:	49 01 da             	add    %rbx,%r10
ffff80000010665d:	41 ff d2             	call   *%r10
ffff800000106660:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106664:	83 e0 01             	and    $0x1,%eax
ffff800000106667:	48 85 c0             	test   %rax,%rax
ffff80000010666a:	74 32                	je     ffff80000010669e <do_stack_segment_fault+0xca>
ffff80000010666c:	48 b8 28 a4 ff ff ff 	movabs $0xffffffffffffa428,%rax
ffff800000106673:	ff ff ff 
ffff800000106676:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010667a:	48 89 c2             	mov    %rax,%rdx
ffff80000010667d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106682:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106687:	49 89 df             	mov    %rbx,%r15
ffff80000010668a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010668f:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106696:	ff ff ff 
ffff800000106699:	48 01 d9             	add    %rbx,%rcx
ffff80000010669c:	ff d1                	call   *%rcx
ffff80000010669e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066a2:	83 e0 02             	and    $0x2,%eax
ffff8000001066a5:	48 85 c0             	test   %rax,%rax
ffff8000001066a8:	74 34                	je     ffff8000001066de <do_stack_segment_fault+0x10a>
ffff8000001066aa:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001066b1:	ff ff ff 
ffff8000001066b4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066b8:	48 89 c2             	mov    %rax,%rdx
ffff8000001066bb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066c0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066c5:	49 89 df             	mov    %rbx,%r15
ffff8000001066c8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066cd:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001066d4:	ff ff ff 
ffff8000001066d7:	48 01 d9             	add    %rbx,%rcx
ffff8000001066da:	ff d1                	call   *%rcx
ffff8000001066dc:	eb 32                	jmp    ffff800000106710 <do_stack_segment_fault+0x13c>
ffff8000001066de:	48 b8 d8 a4 ff ff ff 	movabs $0xffffffffffffa4d8,%rax
ffff8000001066e5:	ff ff ff 
ffff8000001066e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001066ec:	48 89 c2             	mov    %rax,%rdx
ffff8000001066ef:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001066f4:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001066f9:	49 89 df             	mov    %rbx,%r15
ffff8000001066fc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106701:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106708:	ff ff ff 
ffff80000010670b:	48 01 d9             	add    %rbx,%rcx
ffff80000010670e:	ff d1                	call   *%rcx
ffff800000106710:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106714:	83 e0 02             	and    $0x2,%eax
ffff800000106717:	48 85 c0             	test   %rax,%rax
ffff80000010671a:	75 72                	jne    ffff80000010678e <do_stack_segment_fault+0x1ba>
ffff80000010671c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106720:	83 e0 04             	and    $0x4,%eax
ffff800000106723:	48 85 c0             	test   %rax,%rax
ffff800000106726:	74 34                	je     ffff80000010675c <do_stack_segment_fault+0x188>
ffff800000106728:	48 b8 10 a5 ff ff ff 	movabs $0xffffffffffffa510,%rax
ffff80000010672f:	ff ff ff 
ffff800000106732:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106736:	48 89 c2             	mov    %rax,%rdx
ffff800000106739:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010673e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106743:	49 89 df             	mov    %rbx,%r15
ffff800000106746:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010674b:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106752:	ff ff ff 
ffff800000106755:	48 01 d9             	add    %rbx,%rcx
ffff800000106758:	ff d1                	call   *%rcx
ffff80000010675a:	eb 32                	jmp    ffff80000010678e <do_stack_segment_fault+0x1ba>
ffff80000010675c:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff800000106763:	ff ff ff 
ffff800000106766:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010676a:	48 89 c2             	mov    %rax,%rdx
ffff80000010676d:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106772:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106777:	49 89 df             	mov    %rbx,%r15
ffff80000010677a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010677f:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106786:	ff ff ff 
ffff800000106789:	48 01 d9             	add    %rbx,%rcx
ffff80000010678c:	ff d1                	call   *%rcx
ffff80000010678e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106792:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106797:	48 89 c1             	mov    %rax,%rcx
ffff80000010679a:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff8000001067a1:	ff ff ff 
ffff8000001067a4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001067a8:	48 89 c2             	mov    %rax,%rdx
ffff8000001067ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001067b0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001067b5:	49 89 df             	mov    %rbx,%r15
ffff8000001067b8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001067bd:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff8000001067c4:	ff ff ff 
ffff8000001067c7:	49 01 d8             	add    %rbx,%r8
ffff8000001067ca:	41 ff d0             	call   *%r8
ffff8000001067cd:	90                   	nop
ffff8000001067ce:	eb fd                	jmp    ffff8000001067cd <do_stack_segment_fault+0x1f9>

ffff8000001067d0 <do_general_protection>:
ffff8000001067d0:	f3 0f 1e fa          	endbr64
ffff8000001067d4:	55                   	push   %rbp
ffff8000001067d5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001067d8:	41 57                	push   %r15
ffff8000001067da:	53                   	push   %rbx
ffff8000001067db:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001067df:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001067df <do_general_protection+0xf>
ffff8000001067e6:	49 bb 51 71 00 00 00 	movabs $0x7151,%r11
ffff8000001067ed:	00 00 00 
ffff8000001067f0:	4c 01 db             	add    %r11,%rbx
ffff8000001067f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001067f7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001067fb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106802:	00 
ffff800000106803:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106807:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010680d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106811:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106815:	48 8b 08             	mov    (%rax),%rcx
ffff800000106818:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010681c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106820:	49 89 c9             	mov    %rcx,%r9
ffff800000106823:	49 89 d0             	mov    %rdx,%r8
ffff800000106826:	48 89 c1             	mov    %rax,%rcx
ffff800000106829:	48 b8 28 a6 ff ff ff 	movabs $0xffffffffffffa628,%rax
ffff800000106830:	ff ff ff 
ffff800000106833:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106837:	48 89 c2             	mov    %rax,%rdx
ffff80000010683a:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010683f:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106844:	49 89 df             	mov    %rbx,%r15
ffff800000106847:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010684c:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff800000106853:	ff ff ff 
ffff800000106856:	49 01 da             	add    %rbx,%r10
ffff800000106859:	41 ff d2             	call   *%r10
ffff80000010685c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106860:	83 e0 01             	and    $0x1,%eax
ffff800000106863:	48 85 c0             	test   %rax,%rax
ffff800000106866:	74 32                	je     ffff80000010689a <do_general_protection+0xca>
ffff800000106868:	48 b8 28 a4 ff ff ff 	movabs $0xffffffffffffa428,%rax
ffff80000010686f:	ff ff ff 
ffff800000106872:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106876:	48 89 c2             	mov    %rax,%rdx
ffff800000106879:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010687e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106883:	49 89 df             	mov    %rbx,%r15
ffff800000106886:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010688b:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106892:	ff ff ff 
ffff800000106895:	48 01 d9             	add    %rbx,%rcx
ffff800000106898:	ff d1                	call   *%rcx
ffff80000010689a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010689e:	83 e0 02             	and    $0x2,%eax
ffff8000001068a1:	48 85 c0             	test   %rax,%rax
ffff8000001068a4:	74 34                	je     ffff8000001068da <do_general_protection+0x10a>
ffff8000001068a6:	48 b8 a8 a4 ff ff ff 	movabs $0xffffffffffffa4a8,%rax
ffff8000001068ad:	ff ff ff 
ffff8000001068b0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068b4:	48 89 c2             	mov    %rax,%rdx
ffff8000001068b7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068bc:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068c1:	49 89 df             	mov    %rbx,%r15
ffff8000001068c4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068c9:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff8000001068d0:	ff ff ff 
ffff8000001068d3:	48 01 d9             	add    %rbx,%rcx
ffff8000001068d6:	ff d1                	call   *%rcx
ffff8000001068d8:	eb 32                	jmp    ffff80000010690c <do_general_protection+0x13c>
ffff8000001068da:	48 b8 d8 a4 ff ff ff 	movabs $0xffffffffffffa4d8,%rax
ffff8000001068e1:	ff ff ff 
ffff8000001068e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001068e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001068eb:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001068f0:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001068f5:	49 89 df             	mov    %rbx,%r15
ffff8000001068f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068fd:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106904:	ff ff ff 
ffff800000106907:	48 01 d9             	add    %rbx,%rcx
ffff80000010690a:	ff d1                	call   *%rcx
ffff80000010690c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106910:	83 e0 02             	and    $0x2,%eax
ffff800000106913:	48 85 c0             	test   %rax,%rax
ffff800000106916:	75 72                	jne    ffff80000010698a <do_general_protection+0x1ba>
ffff800000106918:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010691c:	83 e0 04             	and    $0x4,%eax
ffff80000010691f:	48 85 c0             	test   %rax,%rax
ffff800000106922:	74 34                	je     ffff800000106958 <do_general_protection+0x188>
ffff800000106924:	48 b8 10 a5 ff ff ff 	movabs $0xffffffffffffa510,%rax
ffff80000010692b:	ff ff ff 
ffff80000010692e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106932:	48 89 c2             	mov    %rax,%rdx
ffff800000106935:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010693a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff80000010693f:	49 89 df             	mov    %rbx,%r15
ffff800000106942:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106947:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff80000010694e:	ff ff ff 
ffff800000106951:	48 01 d9             	add    %rbx,%rcx
ffff800000106954:	ff d1                	call   *%rcx
ffff800000106956:	eb 32                	jmp    ffff80000010698a <do_general_protection+0x1ba>
ffff800000106958:	48 b8 48 a5 ff ff ff 	movabs $0xffffffffffffa548,%rax
ffff80000010695f:	ff ff ff 
ffff800000106962:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106966:	48 89 c2             	mov    %rax,%rdx
ffff800000106969:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010696e:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106973:	49 89 df             	mov    %rbx,%r15
ffff800000106976:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010697b:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106982:	ff ff ff 
ffff800000106985:	48 01 d9             	add    %rbx,%rcx
ffff800000106988:	ff d1                	call   *%rcx
ffff80000010698a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010698e:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106993:	48 89 c1             	mov    %rax,%rcx
ffff800000106996:	48 b8 78 a5 ff ff ff 	movabs $0xffffffffffffa578,%rax
ffff80000010699d:	ff ff ff 
ffff8000001069a0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069a4:	48 89 c2             	mov    %rax,%rdx
ffff8000001069a7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001069ac:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff8000001069b1:	49 89 df             	mov    %rbx,%r15
ffff8000001069b4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069b9:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff8000001069c0:	ff ff ff 
ffff8000001069c3:	49 01 d8             	add    %rbx,%r8
ffff8000001069c6:	41 ff d0             	call   *%r8
ffff8000001069c9:	90                   	nop
ffff8000001069ca:	eb fd                	jmp    ffff8000001069c9 <do_general_protection+0x1f9>

ffff8000001069cc <do_page_fault>:
ffff8000001069cc:	f3 0f 1e fa          	endbr64
ffff8000001069d0:	55                   	push   %rbp
ffff8000001069d1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001069d4:	41 57                	push   %r15
ffff8000001069d6:	53                   	push   %rbx
ffff8000001069d7:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001069db:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001069db <do_page_fault+0xf>
ffff8000001069e2:	49 bb 55 6f 00 00 00 	movabs $0x6f55,%r11
ffff8000001069e9:	00 00 00 
ffff8000001069ec:	4c 01 db             	add    %r11,%rbx
ffff8000001069ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001069f3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001069f7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001069fe:	00 
ffff8000001069ff:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106a06:	00 
ffff800000106a07:	0f 20 d0             	mov    %cr2,%rax
ffff800000106a0a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106a0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106a12:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106a18:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106a1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106a20:	48 8b 08             	mov    (%rax),%rcx
ffff800000106a23:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106a27:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a2b:	49 89 c9             	mov    %rcx,%r9
ffff800000106a2e:	49 89 d0             	mov    %rdx,%r8
ffff800000106a31:	48 89 c1             	mov    %rax,%rcx
ffff800000106a34:	48 b8 70 a6 ff ff ff 	movabs $0xffffffffffffa670,%rax
ffff800000106a3b:	ff ff ff 
ffff800000106a3e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a42:	48 89 c2             	mov    %rax,%rdx
ffff800000106a45:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a4a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a4f:	49 89 df             	mov    %rbx,%r15
ffff800000106a52:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a57:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff800000106a5e:	ff ff ff 
ffff800000106a61:	49 01 da             	add    %rbx,%r10
ffff800000106a64:	41 ff d2             	call   *%r10
ffff800000106a67:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a6b:	83 e0 01             	and    $0x1,%eax
ffff800000106a6e:	48 85 c0             	test   %rax,%rax
ffff800000106a71:	75 32                	jne    ffff800000106aa5 <do_page_fault+0xd9>
ffff800000106a73:	48 b8 ae a6 ff ff ff 	movabs $0xffffffffffffa6ae,%rax
ffff800000106a7a:	ff ff ff 
ffff800000106a7d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a81:	48 89 c2             	mov    %rax,%rdx
ffff800000106a84:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106a89:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106a8e:	49 89 df             	mov    %rbx,%r15
ffff800000106a91:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a96:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106a9d:	ff ff ff 
ffff800000106aa0:	48 01 d9             	add    %rbx,%rcx
ffff800000106aa3:	ff d1                	call   *%rcx
ffff800000106aa5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aa9:	83 e0 02             	and    $0x2,%eax
ffff800000106aac:	48 85 c0             	test   %rax,%rax
ffff800000106aaf:	74 34                	je     ffff800000106ae5 <do_page_fault+0x119>
ffff800000106ab1:	48 b8 c1 a6 ff ff ff 	movabs $0xffffffffffffa6c1,%rax
ffff800000106ab8:	ff ff ff 
ffff800000106abb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106abf:	48 89 c2             	mov    %rax,%rdx
ffff800000106ac2:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ac7:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106acc:	49 89 df             	mov    %rbx,%r15
ffff800000106acf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ad4:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106adb:	ff ff ff 
ffff800000106ade:	48 01 d9             	add    %rbx,%rcx
ffff800000106ae1:	ff d1                	call   *%rcx
ffff800000106ae3:	eb 32                	jmp    ffff800000106b17 <do_page_fault+0x14b>
ffff800000106ae5:	48 b8 d5 a6 ff ff ff 	movabs $0xffffffffffffa6d5,%rax
ffff800000106aec:	ff ff ff 
ffff800000106aef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106af3:	48 89 c2             	mov    %rax,%rdx
ffff800000106af6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106afb:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b00:	49 89 df             	mov    %rbx,%r15
ffff800000106b03:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b08:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106b0f:	ff ff ff 
ffff800000106b12:	48 01 d9             	add    %rbx,%rcx
ffff800000106b15:	ff d1                	call   *%rcx
ffff800000106b17:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b1b:	83 e0 04             	and    $0x4,%eax
ffff800000106b1e:	48 85 c0             	test   %rax,%rax
ffff800000106b21:	74 34                	je     ffff800000106b57 <do_page_fault+0x18b>
ffff800000106b23:	48 b8 e8 a6 ff ff ff 	movabs $0xffffffffffffa6e8,%rax
ffff800000106b2a:	ff ff ff 
ffff800000106b2d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b31:	48 89 c2             	mov    %rax,%rdx
ffff800000106b34:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b39:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b3e:	49 89 df             	mov    %rbx,%r15
ffff800000106b41:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b46:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106b4d:	ff ff ff 
ffff800000106b50:	48 01 d9             	add    %rbx,%rcx
ffff800000106b53:	ff d1                	call   *%rcx
ffff800000106b55:	eb 32                	jmp    ffff800000106b89 <do_page_fault+0x1bd>
ffff800000106b57:	48 b8 fa a6 ff ff ff 	movabs $0xffffffffffffa6fa,%rax
ffff800000106b5e:	ff ff ff 
ffff800000106b61:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b65:	48 89 c2             	mov    %rax,%rdx
ffff800000106b68:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106b6d:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106b72:	49 89 df             	mov    %rbx,%r15
ffff800000106b75:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b7a:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106b81:	ff ff ff 
ffff800000106b84:	48 01 d9             	add    %rbx,%rcx
ffff800000106b87:	ff d1                	call   *%rcx
ffff800000106b89:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b8d:	83 e0 08             	and    $0x8,%eax
ffff800000106b90:	48 85 c0             	test   %rax,%rax
ffff800000106b93:	74 32                	je     ffff800000106bc7 <do_page_fault+0x1fb>
ffff800000106b95:	48 b8 16 a7 ff ff ff 	movabs $0xffffffffffffa716,%rax
ffff800000106b9c:	ff ff ff 
ffff800000106b9f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106ba3:	48 89 c2             	mov    %rax,%rdx
ffff800000106ba6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106bab:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bb0:	49 89 df             	mov    %rbx,%r15
ffff800000106bb3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bb8:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106bbf:	ff ff ff 
ffff800000106bc2:	48 01 d9             	add    %rbx,%rcx
ffff800000106bc5:	ff d1                	call   *%rcx
ffff800000106bc7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106bcb:	83 e0 10             	and    $0x10,%eax
ffff800000106bce:	48 85 c0             	test   %rax,%rax
ffff800000106bd1:	74 32                	je     ffff800000106c05 <do_page_fault+0x239>
ffff800000106bd3:	48 b8 38 a7 ff ff ff 	movabs $0xffffffffffffa738,%rax
ffff800000106bda:	ff ff ff 
ffff800000106bdd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106be1:	48 89 c2             	mov    %rax,%rdx
ffff800000106be4:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106be9:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106bee:	49 89 df             	mov    %rbx,%r15
ffff800000106bf1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bf6:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106bfd:	ff ff ff 
ffff800000106c00:	48 01 d9             	add    %rbx,%rcx
ffff800000106c03:	ff d1                	call   *%rcx
ffff800000106c05:	48 b8 57 a7 ff ff ff 	movabs $0xffffffffffffa757,%rax
ffff800000106c0c:	ff ff ff 
ffff800000106c0f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c13:	48 89 c2             	mov    %rax,%rdx
ffff800000106c16:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c1b:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c20:	49 89 df             	mov    %rbx,%r15
ffff800000106c23:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c28:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000106c2f:	ff ff ff 
ffff800000106c32:	48 01 d9             	add    %rbx,%rcx
ffff800000106c35:	ff d1                	call   *%rcx
ffff800000106c37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c3b:	48 89 c1             	mov    %rax,%rcx
ffff800000106c3e:	48 b8 59 a7 ff ff ff 	movabs $0xffffffffffffa759,%rax
ffff800000106c45:	ff ff ff 
ffff800000106c48:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c4c:	48 89 c2             	mov    %rax,%rdx
ffff800000106c4f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106c54:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106c59:	49 89 df             	mov    %rbx,%r15
ffff800000106c5c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c61:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff800000106c68:	ff ff ff 
ffff800000106c6b:	49 01 d8             	add    %rbx,%r8
ffff800000106c6e:	41 ff d0             	call   *%r8
ffff800000106c71:	90                   	nop
ffff800000106c72:	eb fd                	jmp    ffff800000106c71 <do_page_fault+0x2a5>

ffff800000106c74 <do_x87_FPU_error>:
ffff800000106c74:	f3 0f 1e fa          	endbr64
ffff800000106c78:	55                   	push   %rbp
ffff800000106c79:	48 89 e5             	mov    %rsp,%rbp
ffff800000106c7c:	41 57                	push   %r15
ffff800000106c7e:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106c82:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106c82 <do_x87_FPU_error+0xe>
ffff800000106c89:	49 bb ae 6c 00 00 00 	movabs $0x6cae,%r11
ffff800000106c90:	00 00 00 
ffff800000106c93:	4d 01 da             	add    %r11,%r10
ffff800000106c96:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106c9a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106c9e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ca5:	00 
ffff800000106ca6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106caa:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106cb0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106cb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106cb8:	48 8b 08             	mov    (%rax),%rcx
ffff800000106cbb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106cbf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106cc3:	49 89 c9             	mov    %rcx,%r9
ffff800000106cc6:	49 89 d0             	mov    %rdx,%r8
ffff800000106cc9:	48 89 c1             	mov    %rax,%rcx
ffff800000106ccc:	48 b8 68 a7 ff ff ff 	movabs $0xffffffffffffa768,%rax
ffff800000106cd3:	ff ff ff 
ffff800000106cd6:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106cda:	48 89 c2             	mov    %rax,%rdx
ffff800000106cdd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106ce2:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106ce7:	4d 89 d7             	mov    %r10,%r15
ffff800000106cea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cef:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106cf6:	ff ff ff 
ffff800000106cf9:	4d 01 d3             	add    %r10,%r11
ffff800000106cfc:	41 ff d3             	call   *%r11
ffff800000106cff:	90                   	nop
ffff800000106d00:	eb fd                	jmp    ffff800000106cff <do_x87_FPU_error+0x8b>

ffff800000106d02 <do_alignment_check>:
ffff800000106d02:	f3 0f 1e fa          	endbr64
ffff800000106d06:	55                   	push   %rbp
ffff800000106d07:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d0a:	41 57                	push   %r15
ffff800000106d0c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d10:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d10 <do_alignment_check+0xe>
ffff800000106d17:	49 bb 20 6c 00 00 00 	movabs $0x6c20,%r11
ffff800000106d1e:	00 00 00 
ffff800000106d21:	4d 01 da             	add    %r11,%r10
ffff800000106d24:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d28:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d2c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d33:	00 
ffff800000106d34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d38:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d3e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d46:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d49:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d51:	49 89 c9             	mov    %rcx,%r9
ffff800000106d54:	49 89 d0             	mov    %rdx,%r8
ffff800000106d57:	48 89 c1             	mov    %rax,%rcx
ffff800000106d5a:	48 b8 b0 a7 ff ff ff 	movabs $0xffffffffffffa7b0,%rax
ffff800000106d61:	ff ff ff 
ffff800000106d64:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106d68:	48 89 c2             	mov    %rax,%rdx
ffff800000106d6b:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106d70:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106d75:	4d 89 d7             	mov    %r10,%r15
ffff800000106d78:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d7d:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106d84:	ff ff ff 
ffff800000106d87:	4d 01 d3             	add    %r10,%r11
ffff800000106d8a:	41 ff d3             	call   *%r11
ffff800000106d8d:	90                   	nop
ffff800000106d8e:	eb fd                	jmp    ffff800000106d8d <do_alignment_check+0x8b>

ffff800000106d90 <do_machine_check>:
ffff800000106d90:	f3 0f 1e fa          	endbr64
ffff800000106d94:	55                   	push   %rbp
ffff800000106d95:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d98:	41 57                	push   %r15
ffff800000106d9a:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d9e:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106d9e <do_machine_check+0xe>
ffff800000106da5:	49 bb 92 6b 00 00 00 	movabs $0x6b92,%r11
ffff800000106dac:	00 00 00 
ffff800000106daf:	4d 01 da             	add    %r11,%r10
ffff800000106db2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106db6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106dba:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106dc1:	00 
ffff800000106dc2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106dc6:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106dcc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106dd0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106dd4:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dd7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ddb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ddf:	49 89 c9             	mov    %rcx,%r9
ffff800000106de2:	49 89 d0             	mov    %rdx,%r8
ffff800000106de5:	48 89 c1             	mov    %rax,%rcx
ffff800000106de8:	48 b8 f8 a7 ff ff ff 	movabs $0xffffffffffffa7f8,%rax
ffff800000106def:	ff ff ff 
ffff800000106df2:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106df6:	48 89 c2             	mov    %rax,%rdx
ffff800000106df9:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106dfe:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e03:	4d 89 d7             	mov    %r10,%r15
ffff800000106e06:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e0b:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106e12:	ff ff ff 
ffff800000106e15:	4d 01 d3             	add    %r10,%r11
ffff800000106e18:	41 ff d3             	call   *%r11
ffff800000106e1b:	90                   	nop
ffff800000106e1c:	eb fd                	jmp    ffff800000106e1b <do_machine_check+0x8b>

ffff800000106e1e <do_SIMD_exception>:
ffff800000106e1e:	f3 0f 1e fa          	endbr64
ffff800000106e22:	55                   	push   %rbp
ffff800000106e23:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e26:	41 57                	push   %r15
ffff800000106e28:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e2c:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106e2c <do_SIMD_exception+0xe>
ffff800000106e33:	49 bb 04 6b 00 00 00 	movabs $0x6b04,%r11
ffff800000106e3a:	00 00 00 
ffff800000106e3d:	4d 01 da             	add    %r11,%r10
ffff800000106e40:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e44:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e48:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e4f:	00 
ffff800000106e50:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e54:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e5a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e62:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e65:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e69:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e6d:	49 89 c9             	mov    %rcx,%r9
ffff800000106e70:	49 89 d0             	mov    %rdx,%r8
ffff800000106e73:	48 89 c1             	mov    %rax,%rcx
ffff800000106e76:	48 b8 40 a8 ff ff ff 	movabs $0xffffffffffffa840,%rax
ffff800000106e7d:	ff ff ff 
ffff800000106e80:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106e84:	48 89 c2             	mov    %rax,%rdx
ffff800000106e87:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106e8c:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106e91:	4d 89 d7             	mov    %r10,%r15
ffff800000106e94:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e99:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106ea0:	ff ff ff 
ffff800000106ea3:	4d 01 d3             	add    %r10,%r11
ffff800000106ea6:	41 ff d3             	call   *%r11
ffff800000106ea9:	90                   	nop
ffff800000106eaa:	eb fd                	jmp    ffff800000106ea9 <do_SIMD_exception+0x8b>

ffff800000106eac <do_virtualization_exception>:
ffff800000106eac:	f3 0f 1e fa          	endbr64
ffff800000106eb0:	55                   	push   %rbp
ffff800000106eb1:	48 89 e5             	mov    %rsp,%rbp
ffff800000106eb4:	41 57                	push   %r15
ffff800000106eb6:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106eba:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000106eba <do_virtualization_exception+0xe>
ffff800000106ec1:	49 bb 76 6a 00 00 00 	movabs $0x6a76,%r11
ffff800000106ec8:	00 00 00 
ffff800000106ecb:	4d 01 da             	add    %r11,%r10
ffff800000106ece:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106ed2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106ed6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106edd:	00 
ffff800000106ede:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ee2:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106ee8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106eec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106ef0:	48 8b 08             	mov    (%rax),%rcx
ffff800000106ef3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ef7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106efb:	49 89 c9             	mov    %rcx,%r9
ffff800000106efe:	49 89 d0             	mov    %rdx,%r8
ffff800000106f01:	48 89 c1             	mov    %rax,%rcx
ffff800000106f04:	48 b8 88 a8 ff ff ff 	movabs $0xffffffffffffa888,%rax
ffff800000106f0b:	ff ff ff 
ffff800000106f0e:	49 8d 04 02          	lea    (%r10,%rax,1),%rax
ffff800000106f12:	48 89 c2             	mov    %rax,%rdx
ffff800000106f15:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000106f1a:	bf 00 00 ff 00       	mov    $0xff0000,%edi
ffff800000106f1f:	4d 89 d7             	mov    %r10,%r15
ffff800000106f22:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f27:	49 bb 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r11
ffff800000106f2e:	ff ff ff 
ffff800000106f31:	4d 01 d3             	add    %r10,%r11
ffff800000106f34:	41 ff d3             	call   *%r11
ffff800000106f37:	90                   	nop
ffff800000106f38:	eb fd                	jmp    ffff800000106f37 <do_virtualization_exception+0x8b>

ffff800000106f3a <sys_vector_init>:
ffff800000106f3a:	f3 0f 1e fa          	endbr64
ffff800000106f3e:	55                   	push   %rbp
ffff800000106f3f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f42:	53                   	push   %rbx
ffff800000106f43:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000106f43 <sys_vector_init+0x9>
ffff800000106f4a:	49 bb ed 69 00 00 00 	movabs $0x69ed,%r11
ffff800000106f51:	00 00 00 
ffff800000106f54:	4c 01 db             	add    %r11,%rbx
ffff800000106f57:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000106f5e:	ff ff ff 
ffff800000106f61:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106f65:	48 89 c2             	mov    %rax,%rdx
ffff800000106f68:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f6d:	bf 00 00 00 00       	mov    $0x0,%edi
ffff800000106f72:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000106f79:	ff ff ff 
ffff800000106f7c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106f80:	ff d0                	call   *%rax
ffff800000106f82:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000106f89:	ff ff ff 
ffff800000106f8c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106f90:	48 89 c2             	mov    %rax,%rdx
ffff800000106f93:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f98:	bf 01 00 00 00       	mov    $0x1,%edi
ffff800000106f9d:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000106fa4:	ff ff ff 
ffff800000106fa7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fab:	ff d0                	call   *%rax
ffff800000106fad:	48 b8 e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rax
ffff800000106fb4:	ff ff ff 
ffff800000106fb7:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fbb:	48 89 c2             	mov    %rax,%rdx
ffff800000106fbe:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fc3:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000106fc8:	48 b8 e5 7f ff ff ff 	movabs $0xffffffffffff7fe5,%rax
ffff800000106fcf:	ff ff ff 
ffff800000106fd2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106fd6:	ff d0                	call   *%rax
ffff800000106fd8:	48 b8 f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rax
ffff800000106fdf:	ff ff ff 
ffff800000106fe2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106fe6:	48 89 c2             	mov    %rax,%rdx
ffff800000106fe9:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106fee:	bf 03 00 00 00       	mov    $0x3,%edi
ffff800000106ff3:	48 b8 41 81 ff ff ff 	movabs $0xffffffffffff8141,%rax
ffff800000106ffa:	ff ff ff 
ffff800000106ffd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107001:	ff d0                	call   *%rax
ffff800000107003:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff80000010700a:	ff ff ff 
ffff80000010700d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107011:	48 89 c2             	mov    %rax,%rdx
ffff800000107014:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107019:	bf 04 00 00 00       	mov    $0x4,%edi
ffff80000010701e:	48 b8 41 81 ff ff ff 	movabs $0xffffffffffff8141,%rax
ffff800000107025:	ff ff ff 
ffff800000107028:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010702c:	ff d0                	call   *%rax
ffff80000010702e:	48 b8 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rax
ffff800000107035:	ff ff ff 
ffff800000107038:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010703c:	48 89 c2             	mov    %rax,%rdx
ffff80000010703f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107044:	bf 05 00 00 00       	mov    $0x5,%edi
ffff800000107049:	48 b8 41 81 ff ff ff 	movabs $0xffffffffffff8141,%rax
ffff800000107050:	ff ff ff 
ffff800000107053:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107057:	ff d0                	call   *%rax
ffff800000107059:	48 b8 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rax
ffff800000107060:	ff ff ff 
ffff800000107063:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107067:	48 89 c2             	mov    %rax,%rdx
ffff80000010706a:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010706f:	bf 06 00 00 00       	mov    $0x6,%edi
ffff800000107074:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff80000010707b:	ff ff ff 
ffff80000010707e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107082:	ff d0                	call   *%rax
ffff800000107084:	48 b8 f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rax
ffff80000010708b:	ff ff ff 
ffff80000010708e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107092:	48 89 c2             	mov    %rax,%rdx
ffff800000107095:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010709a:	bf 07 00 00 00       	mov    $0x7,%edi
ffff80000010709f:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001070a6:	ff ff ff 
ffff8000001070a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070ad:	ff d0                	call   *%rax
ffff8000001070af:	48 b8 b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rax
ffff8000001070b6:	ff ff ff 
ffff8000001070b9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070bd:	48 89 c2             	mov    %rax,%rdx
ffff8000001070c0:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070c5:	bf 08 00 00 00       	mov    $0x8,%edi
ffff8000001070ca:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001070d1:	ff ff ff 
ffff8000001070d4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d8:	ff d0                	call   *%rax
ffff8000001070da:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff8000001070e1:	ff ff ff 
ffff8000001070e4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001070e8:	48 89 c2             	mov    %rax,%rdx
ffff8000001070eb:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070f0:	bf 09 00 00 00       	mov    $0x9,%edi
ffff8000001070f5:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001070fc:	ff ff ff 
ffff8000001070ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107103:	ff d0                	call   *%rax
ffff800000107105:	48 b8 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rax
ffff80000010710c:	ff ff ff 
ffff80000010710f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107113:	48 89 c2             	mov    %rax,%rdx
ffff800000107116:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010711b:	bf 0a 00 00 00       	mov    $0xa,%edi
ffff800000107120:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000107127:	ff ff ff 
ffff80000010712a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010712e:	ff d0                	call   *%rax
ffff800000107130:	48 b8 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rax
ffff800000107137:	ff ff ff 
ffff80000010713a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010713e:	48 89 c2             	mov    %rax,%rdx
ffff800000107141:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107146:	bf 0b 00 00 00       	mov    $0xb,%edi
ffff80000010714b:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000107152:	ff ff ff 
ffff800000107155:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107159:	ff d0                	call   *%rax
ffff80000010715b:	48 b8 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rax
ffff800000107162:	ff ff ff 
ffff800000107165:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107169:	48 89 c2             	mov    %rax,%rdx
ffff80000010716c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107171:	bf 0c 00 00 00       	mov    $0xc,%edi
ffff800000107176:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff80000010717d:	ff ff ff 
ffff800000107180:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107184:	ff d0                	call   *%rax
ffff800000107186:	48 b8 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rax
ffff80000010718d:	ff ff ff 
ffff800000107190:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107194:	48 89 c2             	mov    %rax,%rdx
ffff800000107197:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010719c:	bf 0d 00 00 00       	mov    $0xd,%edi
ffff8000001071a1:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001071a8:	ff ff ff 
ffff8000001071ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071af:	ff d0                	call   *%rax
ffff8000001071b1:	48 b8 d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rax
ffff8000001071b8:	ff ff ff 
ffff8000001071bb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071bf:	48 89 c2             	mov    %rax,%rdx
ffff8000001071c2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071c7:	bf 0e 00 00 00       	mov    $0xe,%edi
ffff8000001071cc:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001071d3:	ff ff ff 
ffff8000001071d6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071da:	ff d0                	call   *%rax
ffff8000001071dc:	48 b8 b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rax
ffff8000001071e3:	ff ff ff 
ffff8000001071e6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001071ea:	48 89 c2             	mov    %rax,%rdx
ffff8000001071ed:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001071f2:	bf 10 00 00 00       	mov    $0x10,%edi
ffff8000001071f7:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001071fe:	ff ff ff 
ffff800000107201:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107205:	ff d0                	call   *%rax
ffff800000107207:	48 b8 a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rax
ffff80000010720e:	ff ff ff 
ffff800000107211:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107215:	48 89 c2             	mov    %rax,%rdx
ffff800000107218:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010721d:	bf 11 00 00 00       	mov    $0x11,%edi
ffff800000107222:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000107229:	ff ff ff 
ffff80000010722c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107230:	ff d0                	call   *%rax
ffff800000107232:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000107239:	ff ff ff 
ffff80000010723c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107240:	48 89 c2             	mov    %rax,%rdx
ffff800000107243:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107248:	bf 12 00 00 00       	mov    $0x12,%edi
ffff80000010724d:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff800000107254:	ff ff ff 
ffff800000107257:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010725b:	ff d0                	call   *%rax
ffff80000010725d:	48 b8 e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rax
ffff800000107264:	ff ff ff 
ffff800000107267:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010726b:	48 89 c2             	mov    %rax,%rdx
ffff80000010726e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107273:	bf 13 00 00 00       	mov    $0x13,%edi
ffff800000107278:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff80000010727f:	ff ff ff 
ffff800000107282:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107286:	ff d0                	call   *%rax
ffff800000107288:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff80000010728f:	ff ff ff 
ffff800000107292:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107296:	48 89 c2             	mov    %rax,%rdx
ffff800000107299:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010729e:	bf 14 00 00 00       	mov    $0x14,%edi
ffff8000001072a3:	48 b8 93 80 ff ff ff 	movabs $0xffffffffffff8093,%rax
ffff8000001072aa:	ff ff ff 
ffff8000001072ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072b1:	ff d0                	call   *%rax
ffff8000001072b3:	90                   	nop
ffff8000001072b4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001072b8:	c9                   	leave
ffff8000001072b9:	c3                   	ret

ffff8000001072ba <RESTORE_ALL>:
ffff8000001072ba:	41 5f                	pop    %r15
ffff8000001072bc:	41 5e                	pop    %r14
ffff8000001072be:	41 5d                	pop    %r13
ffff8000001072c0:	41 5c                	pop    %r12
ffff8000001072c2:	41 5b                	pop    %r11
ffff8000001072c4:	41 5a                	pop    %r10
ffff8000001072c6:	41 59                	pop    %r9
ffff8000001072c8:	41 58                	pop    %r8
ffff8000001072ca:	5b                   	pop    %rbx
ffff8000001072cb:	59                   	pop    %rcx
ffff8000001072cc:	5a                   	pop    %rdx
ffff8000001072cd:	5e                   	pop    %rsi
ffff8000001072ce:	5f                   	pop    %rdi
ffff8000001072cf:	5d                   	pop    %rbp
ffff8000001072d0:	58                   	pop    %rax
ffff8000001072d1:	8e d8                	mov    %eax,%ds
ffff8000001072d3:	58                   	pop    %rax
ffff8000001072d4:	8e c0                	mov    %eax,%es
ffff8000001072d6:	58                   	pop    %rax
ffff8000001072d7:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001072db:	48 cf                	iretq

ffff8000001072dd <divide_error>:
ffff8000001072dd:	6a 00                	push   $0x0
ffff8000001072df:	50                   	push   %rax
ffff8000001072e0:	48 8d 05 69 e9 ff ff 	lea    -0x1697(%rip),%rax        # ffff800000105c50 <do_divide_error>
ffff8000001072e7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001072eb:	eb 00                	jmp    ffff8000001072ed <error_code>

ffff8000001072ed <error_code>:
ffff8000001072ed:	50                   	push   %rax
ffff8000001072ee:	8c c0                	mov    %es,%eax
ffff8000001072f0:	50                   	push   %rax
ffff8000001072f1:	8c d8                	mov    %ds,%eax
ffff8000001072f3:	50                   	push   %rax
ffff8000001072f4:	48 31 c0             	xor    %rax,%rax
ffff8000001072f7:	55                   	push   %rbp
ffff8000001072f8:	57                   	push   %rdi
ffff8000001072f9:	56                   	push   %rsi
ffff8000001072fa:	52                   	push   %rdx
ffff8000001072fb:	51                   	push   %rcx
ffff8000001072fc:	53                   	push   %rbx
ffff8000001072fd:	41 50                	push   %r8
ffff8000001072ff:	41 51                	push   %r9
ffff800000107301:	41 52                	push   %r10
ffff800000107303:	41 53                	push   %r11
ffff800000107305:	41 54                	push   %r12
ffff800000107307:	41 55                	push   %r13
ffff800000107309:	41 56                	push   %r14
ffff80000010730b:	41 57                	push   %r15
ffff80000010730d:	fc                   	cld
ffff80000010730e:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff800000107315:	00 
ffff800000107316:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff80000010731d:	00 
ffff80000010731e:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff800000107325:	8e df                	mov    %edi,%ds
ffff800000107327:	8e c7                	mov    %edi,%es
ffff800000107329:	48 89 e7             	mov    %rsp,%rdi
ffff80000010732c:	ff d2                	call   *%rdx
ffff80000010732e:	eb 00                	jmp    ffff800000107330 <ret_from_intr>

ffff800000107330 <ret_from_intr>:
ffff800000107330:	eb 88                	jmp    ffff8000001072ba <RESTORE_ALL>

ffff800000107332 <debug>:
ffff800000107332:	6a 00                	push   $0x0
ffff800000107334:	50                   	push   %rax
ffff800000107335:	48 8d 05 a2 e9 ff ff 	lea    -0x165e(%rip),%rax        # ffff800000105cde <do_debug>
ffff80000010733c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107340:	eb ab                	jmp    ffff8000001072ed <error_code>

ffff800000107342 <nmi>:
ffff800000107342:	50                   	push   %rax
ffff800000107343:	fc                   	cld
ffff800000107344:	50                   	push   %rax
ffff800000107345:	50                   	push   %rax
ffff800000107346:	8c c0                	mov    %es,%eax
ffff800000107348:	50                   	push   %rax
ffff800000107349:	8c d8                	mov    %ds,%eax
ffff80000010734b:	50                   	push   %rax
ffff80000010734c:	48 31 c0             	xor    %rax,%rax
ffff80000010734f:	55                   	push   %rbp
ffff800000107350:	57                   	push   %rdi
ffff800000107351:	56                   	push   %rsi
ffff800000107352:	52                   	push   %rdx
ffff800000107353:	51                   	push   %rcx
ffff800000107354:	53                   	push   %rbx
ffff800000107355:	41 50                	push   %r8
ffff800000107357:	41 51                	push   %r9
ffff800000107359:	41 52                	push   %r10
ffff80000010735b:	41 53                	push   %r11
ffff80000010735d:	41 54                	push   %r12
ffff80000010735f:	41 55                	push   %r13
ffff800000107361:	41 56                	push   %r14
ffff800000107363:	41 57                	push   %r15
ffff800000107365:	48 c7 c2 10 00 00 00 	mov    $0x10,%rdx
ffff80000010736c:	8e da                	mov    %edx,%ds
ffff80000010736e:	8e c2                	mov    %edx,%es
ffff800000107370:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
ffff800000107377:	48 89 e6             	mov    %rsp,%rsi
ffff80000010737a:	e8 ed e9 ff ff       	call   ffff800000105d6c <do_nmi>
ffff80000010737f:	e9 36 ff ff ff       	jmp    ffff8000001072ba <RESTORE_ALL>

ffff800000107384 <invalid_TSS>:
ffff800000107384:	50                   	push   %rax
ffff800000107385:	48 8d 05 50 ee ff ff 	lea    -0x11b0(%rip),%rax        # ffff8000001061dc <do_invalid_TSS>
ffff80000010738c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107390:	e9 58 ff ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107395 <page_fault>:
ffff800000107395:	50                   	push   %rax
ffff800000107396:	48 8d 05 2f f6 ff ff 	lea    -0x9d1(%rip),%rax        # ffff8000001069cc <do_page_fault>
ffff80000010739d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073a1:	e9 47 ff ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001073a6 <int3>:
ffff8000001073a6:	6a 00                	push   $0x0
ffff8000001073a8:	50                   	push   %rax
ffff8000001073a9:	48 8d 05 4a ea ff ff 	lea    -0x15b6(%rip),%rax        # ffff800000105dfa <do_int3>
ffff8000001073b0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073b4:	e9 34 ff ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001073b9 <overflow>:
ffff8000001073b9:	6a 00                	push   $0x0
ffff8000001073bb:	50                   	push   %rax
ffff8000001073bc:	48 8d 05 c5 ea ff ff 	lea    -0x153b(%rip),%rax        # ffff800000105e88 <do_overflow>
ffff8000001073c3:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073c7:	e9 21 ff ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001073cc <bounds>:
ffff8000001073cc:	6a 00                	push   $0x0
ffff8000001073ce:	50                   	push   %rax
ffff8000001073cf:	48 8d 05 40 eb ff ff 	lea    -0x14c0(%rip),%rax        # ffff800000105f16 <do_bounds>
ffff8000001073d6:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073da:	e9 0e ff ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001073df <undefined_opcode>:
ffff8000001073df:	6a 00                	push   $0x0
ffff8000001073e1:	50                   	push   %rax
ffff8000001073e2:	48 8d 05 bb eb ff ff 	lea    -0x1445(%rip),%rax        # ffff800000105fa4 <do_undefined_opcode>
ffff8000001073e9:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001073ed:	e9 fb fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001073f2 <dev_not_available>:
ffff8000001073f2:	6a 00                	push   $0x0
ffff8000001073f4:	50                   	push   %rax
ffff8000001073f5:	48 8d 05 36 ec ff ff 	lea    -0x13ca(%rip),%rax        # ffff800000106032 <do_dev_not_available>
ffff8000001073fc:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107400:	e9 e8 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107405 <double_fault>:
ffff800000107405:	50                   	push   %rax
ffff800000107406:	48 8d 05 b3 ec ff ff 	lea    -0x134d(%rip),%rax        # ffff8000001060c0 <do_double_fault>
ffff80000010740d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107411:	e9 d7 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107416 <coprocessor_segment_overrun>:
ffff800000107416:	6a 00                	push   $0x0
ffff800000107418:	50                   	push   %rax
ffff800000107419:	48 8d 05 2e ed ff ff 	lea    -0x12d2(%rip),%rax        # ffff80000010614e <do_coprocessor_segment_overrun>
ffff800000107420:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107424:	e9 c4 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107429 <segment_not_present>:
ffff800000107429:	50                   	push   %rax
ffff80000010742a:	48 8d 05 a7 ef ff ff 	lea    -0x1059(%rip),%rax        # ffff8000001063d8 <do_segment_not_present>
ffff800000107431:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107435:	e9 b3 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff80000010743a <stack_segment_fault>:
ffff80000010743a:	50                   	push   %rax
ffff80000010743b:	48 8d 05 92 f1 ff ff 	lea    -0xe6e(%rip),%rax        # ffff8000001065d4 <do_stack_segment_fault>
ffff800000107442:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107446:	e9 a2 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff80000010744b <general_protection>:
ffff80000010744b:	50                   	push   %rax
ffff80000010744c:	48 8d 05 7d f3 ff ff 	lea    -0xc83(%rip),%rax        # ffff8000001067d0 <do_general_protection>
ffff800000107453:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000107457:	e9 91 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff80000010745c <x87_FPU_error>:
ffff80000010745c:	6a 00                	push   $0x0
ffff80000010745e:	50                   	push   %rax
ffff80000010745f:	48 8d 05 0e f8 ff ff 	lea    -0x7f2(%rip),%rax        # ffff800000106c74 <do_x87_FPU_error>
ffff800000107466:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010746a:	e9 7e fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff80000010746f <alignment_check>:
ffff80000010746f:	50                   	push   %rax
ffff800000107470:	48 8d 05 8b f8 ff ff 	lea    -0x775(%rip),%rax        # ffff800000106d02 <do_alignment_check>
ffff800000107477:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010747b:	e9 6d fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107480 <machine_check>:
ffff800000107480:	6a 00                	push   $0x0
ffff800000107482:	50                   	push   %rax
ffff800000107483:	48 8d 05 06 f9 ff ff 	lea    -0x6fa(%rip),%rax        # ffff800000106d90 <do_machine_check>
ffff80000010748a:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010748e:	e9 5a fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff800000107493 <SIMD_exception>:
ffff800000107493:	6a 00                	push   $0x0
ffff800000107495:	50                   	push   %rax
ffff800000107496:	48 8d 05 81 f9 ff ff 	lea    -0x67f(%rip),%rax        # ffff800000106e1e <do_SIMD_exception>
ffff80000010749d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074a1:	e9 47 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001074a6 <virtualization_exception>:
ffff8000001074a6:	6a 00                	push   $0x0
ffff8000001074a8:	50                   	push   %rax
ffff8000001074a9:	48 8d 05 fc f9 ff ff 	lea    -0x604(%rip),%rax        # ffff800000106eac <do_virtualization_exception>
ffff8000001074b0:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001074b4:	e9 34 fe ff ff       	jmp    ffff8000001072ed <error_code>

ffff8000001074b9 <init_memory>:
ffff8000001074b9:	f3 0f 1e fa          	endbr64
ffff8000001074bd:	55                   	push   %rbp
ffff8000001074be:	48 89 e5             	mov    %rsp,%rbp
ffff8000001074c1:	41 57                	push   %r15
ffff8000001074c3:	53                   	push   %rbx
ffff8000001074c4:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001074c8:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001074c8 <init_memory+0xf>
ffff8000001074cf:	49 bb 68 64 00 00 00 	movabs $0x6468,%r11
ffff8000001074d6:	00 00 00 
ffff8000001074d9:	4c 01 db             	add    %r11,%rbx
ffff8000001074dc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001074e3:	00 
ffff8000001074e4:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001074eb:	00 
ffff8000001074ec:	48 b8 d8 a8 ff ff ff 	movabs $0xffffffffffffa8d8,%rax
ffff8000001074f3:	ff ff ff 
ffff8000001074f6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001074fa:	48 89 c2             	mov    %rax,%rdx
ffff8000001074fd:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107502:	bf ff 00 00 00       	mov    $0xff,%edi
ffff800000107507:	49 89 df             	mov    %rbx,%r15
ffff80000010750a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010750f:	48 b9 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%rcx
ffff800000107516:	ff ff ff 
ffff800000107519:	48 01 d9             	add    %rbx,%rcx
ffff80000010751c:	ff d1                	call   *%rcx
ffff80000010751e:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000107525:	80 ff ff 
ffff800000107528:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010752c:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000107533:	e9 b2 00 00 00       	jmp    ffff8000001075ea <init_memory+0x131>
ffff800000107538:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010753c:	8b 48 10             	mov    0x10(%rax),%ecx
ffff80000010753f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107543:	8b 50 08             	mov    0x8(%rax),%edx
ffff800000107546:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010754a:	8b 78 0c             	mov    0xc(%rax),%edi
ffff80000010754d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107551:	8b 30                	mov    (%rax),%esi
ffff800000107553:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107557:	8b 40 04             	mov    0x4(%rax),%eax
ffff80000010755a:	51                   	push   %rcx
ffff80000010755b:	52                   	push   %rdx
ffff80000010755c:	41 89 f9             	mov    %edi,%r9d
ffff80000010755f:	41 89 f0             	mov    %esi,%r8d
ffff800000107562:	89 c1                	mov    %eax,%ecx
ffff800000107564:	48 b8 50 a9 ff ff ff 	movabs $0xffffffffffffa950,%rax
ffff80000010756b:	ff ff ff 
ffff80000010756e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107572:	48 89 c2             	mov    %rax,%rdx
ffff800000107575:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010757a:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff80000010757f:	49 89 df             	mov    %rbx,%r15
ffff800000107582:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107587:	49 ba 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r10
ffff80000010758e:	ff ff ff 
ffff800000107591:	49 01 da             	add    %rbx,%r10
ffff800000107594:	41 ff d2             	call   *%r10
ffff800000107597:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010759b:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
ffff8000001075a2:	00 
ffff8000001075a3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001075a7:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001075aa:	83 f8 01             	cmp    $0x1,%eax
ffff8000001075ad:	75 26                	jne    ffff8000001075d5 <init_memory+0x11c>
ffff8000001075af:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001075b3:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001075b6:	89 c0                	mov    %eax,%eax
ffff8000001075b8:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001075bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001075c0:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001075c3:	89 c0                	mov    %eax,%eax
ffff8000001075c5:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff8000001075c9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001075cd:	48 c1 e0 20          	shl    $0x20,%rax
ffff8000001075d1:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff8000001075d5:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
ffff8000001075da:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001075de:	8b 40 10             	mov    0x10(%rax),%eax
ffff8000001075e1:	83 f8 04             	cmp    $0x4,%eax
ffff8000001075e4:	77 10                	ja     ffff8000001075f6 <init_memory+0x13d>
ffff8000001075e6:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
ffff8000001075ea:	83 7d dc 1f          	cmpl   $0x1f,-0x24(%rbp)
ffff8000001075ee:	0f 8e 44 ff ff ff    	jle    ffff800000107538 <init_memory+0x7f>
ffff8000001075f4:	eb 01                	jmp    ffff8000001075f7 <init_memory+0x13e>
ffff8000001075f6:	90                   	nop
ffff8000001075f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075fb:	48 89 c1             	mov    %rax,%rcx
ffff8000001075fe:	48 b8 88 a9 ff ff ff 	movabs $0xffffffffffffa988,%rax
ffff800000107605:	ff ff ff 
ffff800000107608:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010760c:	48 89 c2             	mov    %rax,%rdx
ffff80000010760f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107614:	bf 00 80 ff 00       	mov    $0xff8000,%edi
ffff800000107619:	49 89 df             	mov    %rbx,%r15
ffff80000010761c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107621:	49 b8 0f 6c ff ff ff 	movabs $0xffffffffffff6c0f,%r8
ffff800000107628:	ff ff ff 
ffff80000010762b:	49 01 d8             	add    %rbx,%r8
ffff80000010762e:	41 ff d0             	call   *%r8
ffff800000107631:	90                   	nop
ffff800000107632:	48 8d 65 f0          	lea    -0x10(%rbp),%rsp
ffff800000107636:	5b                   	pop    %rbx
ffff800000107637:	41 5f                	pop    %r15
ffff800000107639:	5d                   	pop    %rbp
ffff80000010763a:	c3                   	ret
