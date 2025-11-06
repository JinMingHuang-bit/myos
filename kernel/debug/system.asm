
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 d0 5d 00 00 	lgdt   0x5dd0(%rip)        # ffff800000105de8 <GDT_END>
ffff800000100018:	0f 01 1d d3 6d 00 00 	lidt   0x6dd3(%rip)        # ffff800000106df2 <IDT_END>
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
ffff80000010006b:	48 8b 05 b1 00 00 00 	mov    0xb1(%rip),%rax        # ffff800000100123 <go_to_kernel>
ffff800000100072:	6a 08                	push   $0x8
ffff800000100074:	50                   	push   %rax
ffff800000100075:	48 cb                	lretq

ffff800000100077 <setup_IDT>:
ffff800000100077:	48 8d 15 ad 00 00 00 	lea    0xad(%rip),%rdx        # ffff80000010012b <ignore_int>
ffff80000010007e:	48 c7 c0 00 00 08 00 	mov    $0x80000,%rax
ffff800000100085:	66 89 d0             	mov    %dx,%ax
ffff800000100088:	48 b9 00 00 00 00 00 	movabs $0x8e0000000000,%rcx
ffff80000010008f:	8e 00 00 
ffff800000100092:	48 01 c8             	add    %rcx,%rax
ffff800000100095:	89 d1                	mov    %edx,%ecx
ffff800000100097:	c1 e9 10             	shr    $0x10,%ecx
ffff80000010009a:	48 c1 e1 30          	shl    $0x30,%rcx
ffff80000010009e:	48 01 c8             	add    %rcx,%rax
ffff8000001000a1:	48 c1 ea 20          	shr    $0x20,%rdx
ffff8000001000a5:	48 8d 3d 46 5d 00 00 	lea    0x5d46(%rip),%rdi        # ffff800000105df2 <IDT_Table>
ffff8000001000ac:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000b3 <rp_sidt>:
ffff8000001000b3:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000b6:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ba:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000be:	48 ff c9             	dec    %rcx
ffff8000001000c1:	75 f0                	jne    ffff8000001000b3 <rp_sidt>

ffff8000001000c3 <setup_TSS64>:
ffff8000001000c3:	48 8d 15 32 6d 00 00 	lea    0x6d32(%rip),%rdx        # ffff800000106dfc <TSS64_Table>
ffff8000001000ca:	48 31 c0             	xor    %rax,%rax
ffff8000001000cd:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000d0:	48 c7 c0 89 00 00 00 	mov    $0x89,%rax
ffff8000001000d7:	48 c1 e0 28          	shl    $0x28,%rax
ffff8000001000db:	89 d1                	mov    %edx,%ecx
ffff8000001000dd:	c1 e9 18             	shr    $0x18,%ecx
ffff8000001000e0:	48 c1 e1 38          	shl    $0x38,%rcx
ffff8000001000e4:	48 01 c8             	add    %rcx,%rax
ffff8000001000e7:	48 31 c9             	xor    %rcx,%rcx
ffff8000001000ea:	89 d1                	mov    %edx,%ecx
ffff8000001000ec:	81 e1 ff ff ff 00    	and    $0xffffff,%ecx
ffff8000001000f2:	48 c1 e1 10          	shl    $0x10,%rcx
ffff8000001000f6:	48 01 c8             	add    %rcx,%rax
ffff8000001000f9:	48 83 c0 67          	add    $0x67,%rax
ffff8000001000fd:	48 8d 3d 5c 5c 00 00 	lea    0x5c5c(%rip),%rdi        # ffff800000105d60 <GDT_Table>
ffff800000100104:	48 89 47 40          	mov    %rax,0x40(%rdi)
ffff800000100108:	48 c1 ea 20          	shr    $0x20,%rdx
ffff80000010010c:	48 89 57 48          	mov    %rdx,0x48(%rdi)
ffff800000100110:	66 b8 40 00          	mov    $0x40,%ax
ffff800000100114:	0f 00 d8             	ltr    %eax
ffff800000100117:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100123 <go_to_kernel>
ffff80000010011e:	6a 08                	push   $0x8
ffff800000100120:	50                   	push   %rax
ffff800000100121:	48 cb                	lretq

ffff800000100123 <go_to_kernel>:
ffff800000100123:	00 40 10             	add    %al,0x10(%rax)
ffff800000100126:	00 00                	add    %al,(%rax)
ffff800000100128:	80 ff ff             	cmp    $0xff,%bh

ffff80000010012b <ignore_int>:
ffff80000010012b:	fc                   	cld
ffff80000010012c:	50                   	push   %rax
ffff80000010012d:	53                   	push   %rbx
ffff80000010012e:	51                   	push   %rcx
ffff80000010012f:	52                   	push   %rdx
ffff800000100130:	55                   	push   %rbp
ffff800000100131:	57                   	push   %rdi
ffff800000100132:	56                   	push   %rsi
ffff800000100133:	41 50                	push   %r8
ffff800000100135:	41 51                	push   %r9
ffff800000100137:	41 52                	push   %r10
ffff800000100139:	41 53                	push   %r11
ffff80000010013b:	41 54                	push   %r12
ffff80000010013d:	41 55                	push   %r13
ffff80000010013f:	41 56                	push   %r14
ffff800000100141:	41 57                	push   %r15
ffff800000100143:	8c c0                	mov    %es,%eax
ffff800000100145:	50                   	push   %rax
ffff800000100146:	8c d8                	mov    %ds,%eax
ffff800000100148:	50                   	push   %rax
ffff800000100149:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100150:	8e d8                	mov    %eax,%ds
ffff800000100152:	8e c0                	mov    %eax,%es
ffff800000100154:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # ffff80000010019e <int_msg>
ffff80000010015b:	50                   	push   %rax
ffff80000010015c:	48 89 c2             	mov    %rax,%rdx
ffff80000010015f:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
ffff800000100166:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
ffff80000010016d:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
ffff800000100174:	e8 01 42 00 00       	call   ffff80000010437a <color_printk>
ffff800000100179:	48 83 c4 08          	add    $0x8,%rsp

ffff80000010017d <Loop>:
ffff80000010017d:	eb fe                	jmp    ffff80000010017d <Loop>
ffff80000010017f:	58                   	pop    %rax
ffff800000100180:	8e d8                	mov    %eax,%ds
ffff800000100182:	58                   	pop    %rax
ffff800000100183:	8e c0                	mov    %eax,%es
ffff800000100185:	41 5f                	pop    %r15
ffff800000100187:	41 5e                	pop    %r14
ffff800000100189:	41 5d                	pop    %r13
ffff80000010018b:	41 5c                	pop    %r12
ffff80000010018d:	41 5b                	pop    %r11
ffff80000010018f:	41 5a                	pop    %r10
ffff800000100191:	41 59                	pop    %r9
ffff800000100193:	41 58                	pop    %r8
ffff800000100195:	5e                   	pop    %rsi
ffff800000100196:	5f                   	pop    %rdi
ffff800000100197:	5d                   	pop    %rbp
ffff800000100198:	5a                   	pop    %rdx
ffff800000100199:	59                   	pop    %rcx
ffff80000010019a:	5b                   	pop    %rbx
ffff80000010019b:	58                   	pop    %rax
ffff80000010019c:	48 cf                	iretq

ffff80000010019e <int_msg>:
ffff80000010019e:	55                   	push   %rbp
ffff80000010019f:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001001a0:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
ffff8000001001a4:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff8000001001a7:	74 65                	je     ffff80000010020e <int_msg+0x70>
ffff8000001001a9:	72 72                	jb     ffff80000010021d <int_msg+0x7f>
ffff8000001001ab:	75 70                	jne    ffff80000010021d <int_msg+0x7f>
ffff8000001001ad:	74 20                	je     ffff8000001001cf <int_msg+0x31>
ffff8000001001af:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001b0:	72 20                	jb     ffff8000001001d2 <int_msg+0x34>
ffff8000001001b2:	66 61                	data16 (bad)
ffff8000001001b4:	75 6c                	jne    ffff800000100222 <int_msg+0x84>
ffff8000001001b6:	74 20                	je     ffff8000001001d8 <int_msg+0x3a>
ffff8000001001b8:	61                   	(bad)
ffff8000001001b9:	74 20                	je     ffff8000001001db <int_msg+0x3d>
ffff8000001001bb:	52                   	push   %rdx
ffff8000001001bc:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
ffff8000001001c3:	79 6f                	jns    ffff800000100234 <int_msg+0x96>
ffff8000001001c5:	75 20                	jne    ffff8000001001e7 <int_msg+0x49>
ffff8000001001c7:	73 65                	jae    ffff80000010022e <int_msg+0x90>
ffff8000001001c9:	72 69                	jb     ffff800000100234 <int_msg+0x96>
ffff8000001001cb:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001cc:	75 73                	jne    ffff800000100241 <int_msg+0xa3>
ffff8000001001ce:	3f                   	(bad)
ffff8000001001cf:	0a 00                	or     (%rax),%al
ffff8000001001d1:	90                   	nop
ffff8000001001d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
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

ffff800000104000 <Start_Kernel>:
ffff800000104000:	f3 0f 1e fa          	endbr64
ffff800000104004:	55                   	push   %rbp
ffff800000104005:	48 89 e5             	mov    %rsp,%rbp
ffff800000104008:	41 57                	push   %r15
ffff80000010400a:	53                   	push   %rbx
ffff80000010400b:	48 83 ec 10          	sub    $0x10,%rsp
ffff80000010400f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010400f <Start_Kernel+0xf>
ffff800000104016:	49 bb 71 4e 00 00 00 	movabs $0x4e71,%r11
ffff80000010401d:	00 00 00 
ffff800000104020:	4c 01 db             	add    %r11,%rbx
ffff800000104023:	0f 20 e0             	mov    %cr4,%rax
ffff800000104026:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010402a:	48 81 4d e8 00 02 00 	orq    $0x200,-0x18(%rbp)
ffff800000104031:	00 
ffff800000104032:	48 81 4d e8 00 04 00 	orq    $0x400,-0x18(%rbp)
ffff800000104039:	00 
ffff80000010403a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010403e:	0f 22 e0             	mov    %rax,%cr4
ffff800000104041:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104048:	80 ff ff 
ffff80000010404b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff80000010404f:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104056:	00 00 00 
ffff800000104059:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff800000104060:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104067:	00 00 00 
ffff80000010406a:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff800000104071:	00 
ffff800000104072:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104079:	00 00 00 
ffff80000010407c:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104083:	00 
ffff800000104084:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010408b:	00 00 00 
ffff80000010408e:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104095:	00 
ffff800000104096:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010409d:	00 00 00 
ffff8000001040a0:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff8000001040a7:	00 
ffff8000001040a8:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040af:	00 00 00 
ffff8000001040b2:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff8000001040b9:	00 
ffff8000001040ba:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040c1:	00 00 00 
ffff8000001040c4:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff8000001040c9:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040d0:	00 00 00 
ffff8000001040d3:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff8000001040d6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040dd:	00 00 00 
ffff8000001040e0:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001040e4:	0f af c2             	imul   %edx,%eax
ffff8000001040e7:	c1 e0 02             	shl    $0x2,%eax
ffff8000001040ea:	48 98                	cltq
ffff8000001040ec:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001040f3:	00 00 00 
ffff8000001040f6:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff8000001040fb:	48 b8 d0 c8 ff ff ff 	movabs $0xffffffffffffc8d0,%rax
ffff800000104102:	ff ff ff 
ffff800000104105:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104109:	48 89 c2             	mov    %rax,%rdx
ffff80000010410c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104111:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104116:	49 89 df             	mov    %rbx,%r15
ffff800000104119:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010411e:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff800000104125:	ff ff ff 
ffff800000104128:	48 01 d9             	add    %rbx,%rcx
ffff80000010412b:	ff d1                	call   *%rcx
ffff80000010412d:	48 b8 e1 c8 ff ff ff 	movabs $0xffffffffffffc8e1,%rax
ffff800000104134:	ff ff ff 
ffff800000104137:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010413b:	48 89 c2             	mov    %rax,%rdx
ffff80000010413e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104143:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104148:	49 89 df             	mov    %rbx,%r15
ffff80000010414b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104150:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff800000104157:	ff ff ff 
ffff80000010415a:	48 01 d9             	add    %rbx,%rcx
ffff80000010415d:	ff d1                	call   *%rcx
ffff80000010415f:	48 b8 f0 c8 ff ff ff 	movabs $0xffffffffffffc8f0,%rax
ffff800000104166:	ff ff ff 
ffff800000104169:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010416d:	48 89 c2             	mov    %rax,%rdx
ffff800000104170:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104175:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010417a:	49 89 df             	mov    %rbx,%r15
ffff80000010417d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104182:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff800000104189:	ff ff ff 
ffff80000010418c:	48 01 d9             	add    %rbx,%rcx
ffff80000010418f:	ff d1                	call   *%rcx
ffff800000104191:	48 b8 48 c9 ff ff ff 	movabs $0xffffffffffffc948,%rax
ffff800000104198:	ff ff ff 
ffff80000010419b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010419f:	48 89 c2             	mov    %rax,%rdx
ffff8000001041a2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041a7:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041ac:	49 89 df             	mov    %rbx,%r15
ffff8000001041af:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041b4:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff8000001041bb:	ff ff ff 
ffff8000001041be:	48 01 d9             	add    %rbx,%rcx
ffff8000001041c1:	ff d1                	call   *%rcx
ffff8000001041c3:	48 b8 a8 c9 ff ff ff 	movabs $0xffffffffffffc9a8,%rax
ffff8000001041ca:	ff ff ff 
ffff8000001041cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041d1:	48 89 c2             	mov    %rax,%rdx
ffff8000001041d4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041d9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041de:	49 89 df             	mov    %rbx,%r15
ffff8000001041e1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041e6:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff8000001041ed:	ff ff ff 
ffff8000001041f0:	48 01 d9             	add    %rbx,%rcx
ffff8000001041f3:	ff d1                	call   *%rcx
ffff8000001041f5:	48 b8 e0 c9 ff ff ff 	movabs $0xffffffffffffc9e0,%rax
ffff8000001041fc:	ff ff ff 
ffff8000001041ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104203:	48 89 c2             	mov    %rax,%rdx
ffff800000104206:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010420b:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104210:	49 89 df             	mov    %rbx,%r15
ffff800000104213:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104218:	48 b9 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rcx
ffff80000010421f:	ff ff ff 
ffff800000104222:	48 01 d9             	add    %rbx,%rcx
ffff800000104225:	ff d1                	call   *%rcx
ffff800000104227:	90                   	nop
ffff800000104228:	eb fd                	jmp    ffff800000104227 <Start_Kernel+0x227>

ffff80000010422a <Cstrlen>:
ffff80000010422a:	f3 0f 1e fa          	endbr64
ffff80000010422e:	55                   	push   %rbp
ffff80000010422f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104232:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104232 <Cstrlen+0x8>
ffff800000104239:	49 bb 4e 4c 00 00 00 	movabs $0x4c4e,%r11
ffff800000104240:	00 00 00 
ffff800000104243:	4c 01 d8             	add    %r11,%rax
ffff800000104246:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010424a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010424e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104252:	eb 05                	jmp    ffff800000104259 <Cstrlen+0x2f>
ffff800000104254:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104259:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010425d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104260:	84 c0                	test   %al,%al
ffff800000104262:	75 f0                	jne    ffff800000104254 <Cstrlen+0x2a>
ffff800000104264:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104268:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010426c:	5d                   	pop    %rbp
ffff80000010426d:	c3                   	ret

ffff80000010426e <putchar>:
ffff80000010426e:	f3 0f 1e fa          	endbr64
ffff800000104272:	55                   	push   %rbp
ffff800000104273:	48 89 e5             	mov    %rsp,%rbp
ffff800000104276:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104276 <putchar+0x8>
ffff80000010427d:	49 bb 0a 4c 00 00 00 	movabs $0x4c0a,%r11
ffff800000104284:	00 00 00 
ffff800000104287:	4c 01 d8             	add    %r11,%rax
ffff80000010428a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010428e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104291:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104294:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104297:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010429b:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010429f:	8b 55 10             	mov    0x10(%rbp),%edx
ffff8000001042a2:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff8000001042a5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001042ac:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001042b3:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff8000001042ba:	00 
ffff8000001042bb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001042c2:	00 
ffff8000001042c3:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001042ca:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001042ce:	48 63 d2             	movslq %edx,%rdx
ffff8000001042d1:	48 89 d1             	mov    %rdx,%rcx
ffff8000001042d4:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001042d8:	48 ba 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdx
ffff8000001042df:	ff ff ff 
ffff8000001042e2:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001042e6:	48 01 c8             	add    %rcx,%rax
ffff8000001042e9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001042ed:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001042f4:	eb 7a                	jmp    ffff800000104370 <putchar+0x102>
ffff8000001042f6:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001042f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042fc:	01 d0                	add    %edx,%eax
ffff8000001042fe:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff800000104302:	48 63 d0             	movslq %eax,%rdx
ffff800000104305:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000104308:	48 98                	cltq
ffff80000010430a:	48 01 d0             	add    %rdx,%rax
ffff80000010430d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff800000104314:	00 
ffff800000104315:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104319:	48 01 d0             	add    %rdx,%rax
ffff80000010431c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104320:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff800000104327:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010432e:	eb 31                	jmp    ffff800000104361 <putchar+0xf3>
ffff800000104330:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff800000104333:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104337:	0f b6 00             	movzbl (%rax),%eax
ffff80000010433a:	0f b6 c0             	movzbl %al,%eax
ffff80000010433d:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff800000104340:	85 c0                	test   %eax,%eax
ffff800000104342:	74 0b                	je     ffff80000010434f <putchar+0xe1>
ffff800000104344:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104348:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff80000010434b:	89 10                	mov    %edx,(%rax)
ffff80000010434d:	eb 09                	jmp    ffff800000104358 <putchar+0xea>
ffff80000010434f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104353:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104356:	89 10                	mov    %edx,(%rax)
ffff800000104358:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010435d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104361:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104365:	7e c9                	jle    ffff800000104330 <putchar+0xc2>
ffff800000104367:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010436c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104370:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104374:	7e 80                	jle    ffff8000001042f6 <putchar+0x88>
ffff800000104376:	90                   	nop
ffff800000104377:	90                   	nop
ffff800000104378:	5d                   	pop    %rbp
ffff800000104379:	c3                   	ret

ffff80000010437a <color_printk>:
ffff80000010437a:	f3 0f 1e fa          	endbr64
ffff80000010437e:	55                   	push   %rbp
ffff80000010437f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104382:	53                   	push   %rbx
ffff800000104383:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff80000010438a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010438a <color_printk+0x10>
ffff800000104391:	49 bb f6 4a 00 00 00 	movabs $0x4af6,%r11
ffff800000104398:	00 00 00 
ffff80000010439b:	4c 01 db             	add    %r11,%rbx
ffff80000010439e:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff8000001043a4:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff8000001043aa:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff8000001043b1:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001043b8:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001043bf:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001043c6:	84 c0                	test   %al,%al
ffff8000001043c8:	74 23                	je     ffff8000001043ed <color_printk+0x73>
ffff8000001043ca:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001043d1:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001043d5:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001043d9:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001043dd:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001043e1:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001043e5:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001043e9:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001043ed:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001043f4:	00 00 00 
ffff8000001043f7:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001043fe:	00 00 00 
ffff800000104401:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff800000104408:	00 00 00 
ffff80000010440b:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff800000104412:	00 00 00 
ffff800000104415:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff80000010441c:	00 00 00 
ffff80000010441f:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104423:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff80000010442a:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104431:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104438:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff80000010443f:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104446:	48 89 c6             	mov    %rax,%rsi
ffff800000104449:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104450:	00 00 00 
ffff800000104453:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104457:	48 89 c7             	mov    %rax,%rdi
ffff80000010445a:	48 b8 7a bf ff ff ff 	movabs $0xffffffffffffbf7a,%rax
ffff800000104461:	ff ff ff 
ffff800000104464:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104468:	ff d0                	call   *%rax
ffff80000010446a:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104470:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104477:	00 00 00 
ffff80000010447a:	e9 81 04 00 00       	jmp    ffff800000104900 <color_printk+0x586>
ffff80000010447f:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104486:	7e 0c                	jle    ffff800000104494 <color_printk+0x11a>
ffff800000104488:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010448f:	e9 45 02 00 00       	jmp    ffff8000001046d9 <color_printk+0x35f>
ffff800000104494:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010449a:	48 63 d0             	movslq %eax,%rdx
ffff80000010449d:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff8000001044a4:	00 00 00 
ffff8000001044a7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044ab:	48 01 d0             	add    %rdx,%rax
ffff8000001044ae:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044b1:	3c 0a                	cmp    $0xa,%al
ffff8000001044b3:	75 36                	jne    ffff8000001044eb <color_printk+0x171>
ffff8000001044b5:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044bc:	00 00 00 
ffff8000001044bf:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001044c3:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001044c6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044cd:	00 00 00 
ffff8000001044d0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001044d4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044db:	00 00 00 
ffff8000001044de:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001044e5:	00 
ffff8000001044e6:	e9 6a 03 00 00       	jmp    ffff800000104855 <color_printk+0x4db>
ffff8000001044eb:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001044f1:	48 63 d0             	movslq %eax,%rdx
ffff8000001044f4:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff8000001044fb:	00 00 00 
ffff8000001044fe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104502:	48 01 d0             	add    %rdx,%rax
ffff800000104505:	0f b6 00             	movzbl (%rax),%eax
ffff800000104508:	3c 08                	cmp    $0x8,%al
ffff80000010450a:	0f 85 78 01 00 00    	jne    ffff800000104688 <color_printk+0x30e>
ffff800000104510:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104517:	00 00 00 
ffff80000010451a:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010451e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104521:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104528:	00 00 00 
ffff80000010452b:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010452f:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104536:	00 00 00 
ffff800000104539:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010453d:	85 c0                	test   %eax,%eax
ffff80000010453f:	0f 89 b2 00 00 00    	jns    ffff8000001045f7 <color_printk+0x27d>
ffff800000104545:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010454c:	00 00 00 
ffff80000010454f:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104552:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104559:	00 00 00 
ffff80000010455c:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104560:	99                   	cltd
ffff800000104561:	f7 fe                	idiv   %esi
ffff800000104563:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104566:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010456d:	00 00 00 
ffff800000104570:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104574:	0f af c2             	imul   %edx,%eax
ffff800000104577:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff80000010457e:	00 00 00 
ffff800000104581:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104585:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010458c:	00 00 00 
ffff80000010458f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104593:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104596:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010459d:	00 00 00 
ffff8000001045a0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001045a4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045ab:	00 00 00 
ffff8000001045ae:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001045b2:	85 c0                	test   %eax,%eax
ffff8000001045b4:	79 41                	jns    ffff8000001045f7 <color_printk+0x27d>
ffff8000001045b6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045bd:	00 00 00 
ffff8000001045c0:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001045c4:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001045cb:	00 00 00 
ffff8000001045ce:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001045d2:	99                   	cltd
ffff8000001045d3:	f7 ff                	idiv   %edi
ffff8000001045d5:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001045d8:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045df:	00 00 00 
ffff8000001045e2:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001045e6:	0f af c2             	imul   %edx,%eax
ffff8000001045e9:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001045f0:	00 00 00 
ffff8000001045f3:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001045f7:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045fe:	00 00 00 
ffff800000104601:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff800000104605:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010460c:	00 00 00 
ffff80000010460f:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104613:	89 d1                	mov    %edx,%ecx
ffff800000104615:	0f af c8             	imul   %eax,%ecx
ffff800000104618:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010461f:	00 00 00 
ffff800000104622:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104626:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010462d:	00 00 00 
ffff800000104630:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104634:	0f af d0             	imul   %eax,%edx
ffff800000104637:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010463e:	00 00 00 
ffff800000104641:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104644:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010464b:	00 00 00 
ffff80000010464e:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104653:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff80000010465a:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104660:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104664:	6a 20                	push   $0x20
ffff800000104666:	45 89 c1             	mov    %r8d,%r9d
ffff800000104669:	41 89 f8             	mov    %edi,%r8d
ffff80000010466c:	48 89 c7             	mov    %rax,%rdi
ffff80000010466f:	48 b8 ee b3 ff ff ff 	movabs $0xffffffffffffb3ee,%rax
ffff800000104676:	ff ff ff 
ffff800000104679:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010467d:	ff d0                	call   *%rax
ffff80000010467f:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104683:	e9 cd 01 00 00       	jmp    ffff800000104855 <color_printk+0x4db>
ffff800000104688:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010468e:	48 63 d0             	movslq %eax,%rdx
ffff800000104691:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104698:	00 00 00 
ffff80000010469b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010469f:	48 01 d0             	add    %rdx,%rax
ffff8000001046a2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001046a5:	3c 09                	cmp    $0x9,%al
ffff8000001046a7:	0f 85 e3 00 00 00    	jne    ffff800000104790 <color_printk+0x416>
ffff8000001046ad:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046b4:	00 00 00 
ffff8000001046b7:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046bb:	83 c0 08             	add    $0x8,%eax
ffff8000001046be:	83 e0 f8             	and    $0xfffffff8,%eax
ffff8000001046c1:	89 c2                	mov    %eax,%edx
ffff8000001046c3:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046ca:	00 00 00 
ffff8000001046cd:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046d1:	29 c2                	sub    %eax,%edx
ffff8000001046d3:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff8000001046d9:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001046e0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046e7:	00 00 00 
ffff8000001046ea:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001046ee:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046f5:	00 00 00 
ffff8000001046f8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001046fc:	89 d1                	mov    %edx,%ecx
ffff8000001046fe:	0f af c8             	imul   %eax,%ecx
ffff800000104701:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104708:	00 00 00 
ffff80000010470b:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff80000010470f:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104716:	00 00 00 
ffff800000104719:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010471d:	0f af d0             	imul   %eax,%edx
ffff800000104720:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104727:	00 00 00 
ffff80000010472a:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff80000010472d:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104734:	00 00 00 
ffff800000104737:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010473c:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104743:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104749:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010474d:	6a 20                	push   $0x20
ffff80000010474f:	45 89 c1             	mov    %r8d,%r9d
ffff800000104752:	41 89 f8             	mov    %edi,%r8d
ffff800000104755:	48 89 c7             	mov    %rax,%rdi
ffff800000104758:	48 b8 ee b3 ff ff ff 	movabs $0xffffffffffffb3ee,%rax
ffff80000010475f:	ff ff ff 
ffff800000104762:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104766:	ff d0                	call   *%rax
ffff800000104768:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010476c:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104773:	00 00 00 
ffff800000104776:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010477a:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010477d:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104784:	00 00 00 
ffff800000104787:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010478b:	e9 c5 00 00 00       	jmp    ffff800000104855 <color_printk+0x4db>
ffff800000104790:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104796:	48 63 d0             	movslq %eax,%rdx
ffff800000104799:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff8000001047a0:	00 00 00 
ffff8000001047a3:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001047a7:	48 01 d0             	add    %rdx,%rax
ffff8000001047aa:	0f b6 00             	movzbl (%rax),%eax
ffff8000001047ad:	0f b6 f8             	movzbl %al,%edi
ffff8000001047b0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047b7:	00 00 00 
ffff8000001047ba:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001047be:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047c5:	00 00 00 
ffff8000001047c8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047cc:	89 d1                	mov    %edx,%ecx
ffff8000001047ce:	0f af c8             	imul   %eax,%ecx
ffff8000001047d1:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047d8:	00 00 00 
ffff8000001047db:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001047df:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047e6:	00 00 00 
ffff8000001047e9:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047ed:	0f af d0             	imul   %eax,%edx
ffff8000001047f0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047f7:	00 00 00 
ffff8000001047fa:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001047fd:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104804:	00 00 00 
ffff800000104807:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010480c:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff800000104813:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff80000010481a:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010481e:	57                   	push   %rdi
ffff80000010481f:	48 89 c7             	mov    %rax,%rdi
ffff800000104822:	48 b8 ee b3 ff ff ff 	movabs $0xffffffffffffb3ee,%rax
ffff800000104829:	ff ff ff 
ffff80000010482c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104830:	ff d0                	call   *%rax
ffff800000104832:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104836:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010483d:	00 00 00 
ffff800000104840:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104844:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104847:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010484e:	00 00 00 
ffff800000104851:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104855:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010485c:	00 00 00 
ffff80000010485f:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104863:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010486a:	00 00 00 
ffff80000010486d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104870:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104877:	00 00 00 
ffff80000010487a:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010487e:	99                   	cltd
ffff80000010487f:	f7 fe                	idiv   %esi
ffff800000104881:	39 c1                	cmp    %eax,%ecx
ffff800000104883:	7c 31                	jl     ffff8000001048b6 <color_printk+0x53c>
ffff800000104885:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010488c:	00 00 00 
ffff80000010488f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104893:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104896:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010489d:	00 00 00 
ffff8000001048a0:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001048a4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048ab:	00 00 00 
ffff8000001048ae:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001048b5:	00 
ffff8000001048b6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048bd:	00 00 00 
ffff8000001048c0:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff8000001048c4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048cb:	00 00 00 
ffff8000001048ce:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001048d2:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001048d9:	00 00 00 
ffff8000001048dc:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001048e0:	99                   	cltd
ffff8000001048e1:	f7 ff                	idiv   %edi
ffff8000001048e3:	39 c1                	cmp    %eax,%ecx
ffff8000001048e5:	7c 12                	jl     ffff8000001048f9 <color_printk+0x57f>
ffff8000001048e7:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048ee:	00 00 00 
ffff8000001048f1:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001048f8:	00 
ffff8000001048f9:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff800000104900:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104906:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff80000010490c:	0f 8c 6d fb ff ff    	jl     ffff80000010447f <color_printk+0x105>
ffff800000104912:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104919:	0f 85 60 fb ff ff    	jne    ffff80000010447f <color_printk+0x105>
ffff80000010491f:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104925:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104929:	c9                   	leave
ffff80000010492a:	c3                   	ret

ffff80000010492b <clear_screen>:
ffff80000010492b:	f3 0f 1e fa          	endbr64
ffff80000010492f:	55                   	push   %rbp
ffff800000104930:	48 89 e5             	mov    %rsp,%rbp
ffff800000104933:	53                   	push   %rbx
ffff800000104934:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104938:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104938 <clear_screen+0xd>
ffff80000010493f:	49 bb 48 45 00 00 00 	movabs $0x4548,%r11
ffff800000104946:	00 00 00 
ffff800000104949:	4c 01 db             	add    %r11,%rbx
ffff80000010494c:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff80000010494f:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104952:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104959:	00 00 00 
ffff80000010495c:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff80000010495f:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104966:	00 00 00 
ffff800000104969:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff80000010496d:	99                   	cltd
ffff80000010496e:	f7 f9                	idiv   %ecx
ffff800000104970:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104973:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010497a:	00 00 00 
ffff80000010497d:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104981:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104988:	00 00 00 
ffff80000010498b:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff80000010498f:	99                   	cltd
ffff800000104990:	f7 fe                	idiv   %esi
ffff800000104992:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104995:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff80000010499c:	e9 83 00 00 00       	jmp    ffff800000104a24 <clear_screen+0xf9>
ffff8000001049a1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff8000001049a8:	eb 6e                	jmp    ffff800000104a18 <clear_screen+0xed>
ffff8000001049aa:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049b1:	00 00 00 
ffff8000001049b4:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001049b8:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff8000001049bc:	89 c1                	mov    %eax,%ecx
ffff8000001049be:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049c5:	00 00 00 
ffff8000001049c8:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049cc:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff8000001049d0:	89 c2                	mov    %eax,%edx
ffff8000001049d2:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049d9:	00 00 00 
ffff8000001049dc:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049df:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049e6:	00 00 00 
ffff8000001049e9:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049ee:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff8000001049f2:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff8000001049f5:	6a 20                	push   $0x20
ffff8000001049f7:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049fa:	41 89 f8             	mov    %edi,%r8d
ffff8000001049fd:	48 89 c7             	mov    %rax,%rdi
ffff800000104a00:	48 b8 ee b3 ff ff ff 	movabs $0xffffffffffffb3ee,%rax
ffff800000104a07:	ff ff ff 
ffff800000104a0a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a0e:	ff d0                	call   *%rax
ffff800000104a10:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104a14:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff800000104a18:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff800000104a1b:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff800000104a1e:	7c 8a                	jl     ffff8000001049aa <clear_screen+0x7f>
ffff800000104a20:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104a24:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104a27:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104a2a:	0f 8c 71 ff ff ff    	jl     ffff8000001049a1 <clear_screen+0x76>
ffff800000104a30:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104a37:	00 00 00 
ffff800000104a3a:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104a41:	00 
ffff800000104a42:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104a49:	00 00 00 
ffff800000104a4c:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104a53:	00 
ffff800000104a54:	90                   	nop
ffff800000104a55:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104a59:	c9                   	leave
ffff800000104a5a:	c3                   	ret

ffff800000104a5b <skip_atoi2>:
ffff800000104a5b:	f3 0f 1e fa          	endbr64
ffff800000104a5f:	55                   	push   %rbp
ffff800000104a60:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a63:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104a63 <skip_atoi2+0x8>
ffff800000104a6a:	49 bb 1d 44 00 00 00 	movabs $0x441d,%r11
ffff800000104a71:	00 00 00 
ffff800000104a74:	4c 01 d8             	add    %r11,%rax
ffff800000104a77:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104a7b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104a82:	eb 39                	jmp    ffff800000104abd <skip_atoi2+0x62>
ffff800000104a84:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a88:	48 8b 00             	mov    (%rax),%rax
ffff800000104a8b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a8e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104a91:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a95:	48 8b 00             	mov    (%rax),%rax
ffff800000104a98:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104a9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104aa0:	48 89 10             	mov    %rdx,(%rax)
ffff800000104aa3:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104aa6:	89 d0                	mov    %edx,%eax
ffff800000104aa8:	c1 e0 02             	shl    $0x2,%eax
ffff800000104aab:	01 d0                	add    %edx,%eax
ffff800000104aad:	01 c0                	add    %eax,%eax
ffff800000104aaf:	89 c2                	mov    %eax,%edx
ffff800000104ab1:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104ab5:	83 e8 30             	sub    $0x30,%eax
ffff800000104ab8:	01 d0                	add    %edx,%eax
ffff800000104aba:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104abd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ac1:	48 8b 00             	mov    (%rax),%rax
ffff800000104ac4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ac7:	3c 2f                	cmp    $0x2f,%al
ffff800000104ac9:	7e 0e                	jle    ffff800000104ad9 <skip_atoi2+0x7e>
ffff800000104acb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104acf:	48 8b 00             	mov    (%rax),%rax
ffff800000104ad2:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ad5:	3c 39                	cmp    $0x39,%al
ffff800000104ad7:	7e ab                	jle    ffff800000104a84 <skip_atoi2+0x29>
ffff800000104ad9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104adc:	5d                   	pop    %rbp
ffff800000104add:	c3                   	ret

ffff800000104ade <skip_atoi>:
ffff800000104ade:	f3 0f 1e fa          	endbr64
ffff800000104ae2:	55                   	push   %rbp
ffff800000104ae3:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ae6:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104ae6 <skip_atoi+0x8>
ffff800000104aed:	49 bb 9a 43 00 00 00 	movabs $0x439a,%r11
ffff800000104af4:	00 00 00 
ffff800000104af7:	4c 01 d8             	add    %r11,%rax
ffff800000104afa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104afe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104b05:	eb 2c                	jmp    ffff800000104b33 <skip_atoi+0x55>
ffff800000104b07:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b0b:	48 8b 00             	mov    (%rax),%rax
ffff800000104b0e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104b12:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b16:	48 89 10             	mov    %rdx,(%rax)
ffff800000104b19:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104b1c:	89 d0                	mov    %edx,%eax
ffff800000104b1e:	c1 e0 02             	shl    $0x2,%eax
ffff800000104b21:	01 d0                	add    %edx,%eax
ffff800000104b23:	01 c0                	add    %eax,%eax
ffff800000104b25:	89 c2                	mov    %eax,%edx
ffff800000104b27:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104b2b:	83 e8 30             	sub    $0x30,%eax
ffff800000104b2e:	01 d0                	add    %edx,%eax
ffff800000104b30:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104b33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b37:	48 8b 00             	mov    (%rax),%rax
ffff800000104b3a:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b3d:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104b40:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104b44:	7e 13                	jle    ffff800000104b59 <skip_atoi+0x7b>
ffff800000104b46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b4a:	48 8b 00             	mov    (%rax),%rax
ffff800000104b4d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b50:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104b53:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104b57:	7e ae                	jle    ffff800000104b07 <skip_atoi+0x29>
ffff800000104b59:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104b5c:	5d                   	pop    %rbp
ffff800000104b5d:	c3                   	ret

ffff800000104b5e <number>:
ffff800000104b5e:	f3 0f 1e fa          	endbr64
ffff800000104b62:	55                   	push   %rbp
ffff800000104b63:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b66:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104b66 <number+0x8>
ffff800000104b6d:	49 bb 1a 43 00 00 00 	movabs $0x431a,%r11
ffff800000104b74:	00 00 00 
ffff800000104b77:	4c 01 d8             	add    %r11,%rax
ffff800000104b7a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104b7e:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104b82:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104b85:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104b88:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104b8c:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104b90:	48 ba 08 ca ff ff ff 	movabs $0xffffffffffffca08,%rdx
ffff800000104b97:	ff ff ff 
ffff800000104b9a:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104b9e:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104ba2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104ba9:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104bac:	83 e2 40             	and    $0x40,%edx
ffff800000104baf:	85 d2                	test   %edx,%edx
ffff800000104bb1:	74 12                	je     ffff800000104bc5 <number+0x67>
ffff800000104bb3:	48 ba 30 ca ff ff ff 	movabs $0xffffffffffffca30,%rdx
ffff800000104bba:	ff ff ff 
ffff800000104bbd:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104bc1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104bc5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bc8:	83 e0 10             	and    $0x10,%eax
ffff800000104bcb:	85 c0                	test   %eax,%eax
ffff800000104bcd:	74 04                	je     ffff800000104bd3 <number+0x75>
ffff800000104bcf:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104bd3:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104bd7:	7e 06                	jle    ffff800000104bdf <number+0x81>
ffff800000104bd9:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104bdd:	7e 0a                	jle    ffff800000104be9 <number+0x8b>
ffff800000104bdf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104be4:	e9 0f 02 00 00       	jmp    ffff800000104df8 <number+0x29a>
ffff800000104be9:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bec:	83 e0 01             	and    $0x1,%eax
ffff800000104bef:	85 c0                	test   %eax,%eax
ffff800000104bf1:	74 07                	je     ffff800000104bfa <number+0x9c>
ffff800000104bf3:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104bf8:	eb 05                	jmp    ffff800000104bff <number+0xa1>
ffff800000104bfa:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104bff:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104c02:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104c06:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c09:	83 e0 02             	and    $0x2,%eax
ffff800000104c0c:	85 c0                	test   %eax,%eax
ffff800000104c0e:	74 11                	je     ffff800000104c21 <number+0xc3>
ffff800000104c10:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c15:	79 0a                	jns    ffff800000104c21 <number+0xc3>
ffff800000104c17:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104c1b:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104c1f:	eb 1d                	jmp    ffff800000104c3e <number+0xe0>
ffff800000104c21:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c24:	83 e0 04             	and    $0x4,%eax
ffff800000104c27:	85 c0                	test   %eax,%eax
ffff800000104c29:	75 0b                	jne    ffff800000104c36 <number+0xd8>
ffff800000104c2b:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c2e:	c1 e0 02             	shl    $0x2,%eax
ffff800000104c31:	83 e0 20             	and    $0x20,%eax
ffff800000104c34:	eb 05                	jmp    ffff800000104c3b <number+0xdd>
ffff800000104c36:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104c3b:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104c3e:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104c42:	74 04                	je     ffff800000104c48 <number+0xea>
ffff800000104c44:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104c48:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c4b:	83 e0 20             	and    $0x20,%eax
ffff800000104c4e:	85 c0                	test   %eax,%eax
ffff800000104c50:	74 16                	je     ffff800000104c68 <number+0x10a>
ffff800000104c52:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104c56:	75 06                	jne    ffff800000104c5e <number+0x100>
ffff800000104c58:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104c5c:	eb 0a                	jmp    ffff800000104c68 <number+0x10a>
ffff800000104c5e:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104c62:	75 04                	jne    ffff800000104c68 <number+0x10a>
ffff800000104c64:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104c68:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c6d:	75 4b                	jne    ffff800000104cba <number+0x15c>
ffff800000104c6f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c72:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c75:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104c78:	48 98                	cltq
ffff800000104c7a:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104c7f:	eb 40                	jmp    ffff800000104cc1 <number+0x163>
ffff800000104c81:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104c84:	48 63 c8             	movslq %eax,%rcx
ffff800000104c87:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104c8b:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104c90:	48 f7 f1             	div    %rcx
ffff800000104c93:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104c97:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104c9a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104c9d:	48 63 d0             	movslq %eax,%rdx
ffff800000104ca0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104ca4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104ca8:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104cab:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104cae:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104cb1:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104cb4:	48 98                	cltq
ffff800000104cb6:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104cba:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104cbf:	75 c0                	jne    ffff800000104c81 <number+0x123>
ffff800000104cc1:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104cc4:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104cc7:	7e 06                	jle    ffff800000104ccf <number+0x171>
ffff800000104cc9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ccc:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104ccf:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104cd2:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104cd5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104cd8:	83 e0 11             	and    $0x11,%eax
ffff800000104cdb:	85 c0                	test   %eax,%eax
ffff800000104cdd:	75 1e                	jne    ffff800000104cfd <number+0x19f>
ffff800000104cdf:	eb 0f                	jmp    ffff800000104cf0 <number+0x192>
ffff800000104ce1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ce5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ce9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ced:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104cf0:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104cf3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104cf6:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104cf9:	85 c0                	test   %eax,%eax
ffff800000104cfb:	7f e4                	jg     ffff800000104ce1 <number+0x183>
ffff800000104cfd:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104d01:	74 12                	je     ffff800000104d15 <number+0x1b7>
ffff800000104d03:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d07:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d0b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d0f:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104d13:	88 10                	mov    %dl,(%rax)
ffff800000104d15:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d18:	83 e0 20             	and    $0x20,%eax
ffff800000104d1b:	85 c0                	test   %eax,%eax
ffff800000104d1d:	74 45                	je     ffff800000104d64 <number+0x206>
ffff800000104d1f:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104d23:	75 11                	jne    ffff800000104d36 <number+0x1d8>
ffff800000104d25:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d29:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d2d:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d31:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d34:	eb 2e                	jmp    ffff800000104d64 <number+0x206>
ffff800000104d36:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104d3a:	75 28                	jne    ffff800000104d64 <number+0x206>
ffff800000104d3c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d40:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d44:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d48:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d4b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104d4f:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104d53:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d57:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d5b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d5f:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104d62:	88 10                	mov    %dl,(%rax)
ffff800000104d64:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d67:	83 e0 10             	and    $0x10,%eax
ffff800000104d6a:	85 c0                	test   %eax,%eax
ffff800000104d6c:	75 32                	jne    ffff800000104da0 <number+0x242>
ffff800000104d6e:	eb 12                	jmp    ffff800000104d82 <number+0x224>
ffff800000104d70:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d74:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d78:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d7c:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104d80:	88 10                	mov    %dl,(%rax)
ffff800000104d82:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104d85:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d88:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104d8b:	85 c0                	test   %eax,%eax
ffff800000104d8d:	7f e1                	jg     ffff800000104d70 <number+0x212>
ffff800000104d8f:	eb 0f                	jmp    ffff800000104da0 <number+0x242>
ffff800000104d91:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d95:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d99:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d9d:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104da0:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104da3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104da6:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104da9:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104dac:	7c e3                	jl     ffff800000104d91 <number+0x233>
ffff800000104dae:	eb 19                	jmp    ffff800000104dc9 <number+0x26b>
ffff800000104db0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104db4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104db8:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104dbc:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104dbf:	48 63 d2             	movslq %edx,%rdx
ffff800000104dc2:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104dc7:	88 10                	mov    %dl,(%rax)
ffff800000104dc9:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104dcc:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104dcf:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104dd2:	85 c0                	test   %eax,%eax
ffff800000104dd4:	7f da                	jg     ffff800000104db0 <number+0x252>
ffff800000104dd6:	eb 0f                	jmp    ffff800000104de7 <number+0x289>
ffff800000104dd8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ddc:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104de0:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104de4:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104de7:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104dea:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ded:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104df0:	85 c0                	test   %eax,%eax
ffff800000104df2:	7f e4                	jg     ffff800000104dd8 <number+0x27a>
ffff800000104df4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104df8:	5d                   	pop    %rbp
ffff800000104df9:	c3                   	ret

ffff800000104dfa <vsprintf>:
ffff800000104dfa:	f3 0f 1e fa          	endbr64
ffff800000104dfe:	55                   	push   %rbp
ffff800000104dff:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e02:	53                   	push   %rbx
ffff800000104e03:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104e07:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104e07 <vsprintf+0xd>
ffff800000104e0e:	49 bb 79 40 00 00 00 	movabs $0x4079,%r11
ffff800000104e15:	00 00 00 
ffff800000104e18:	4c 01 db             	add    %r11,%rbx
ffff800000104e1b:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104e1f:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104e23:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000104e27:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104e2b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104e2f:	e9 f8 08 00 00       	jmp    ffff80000010572c <vsprintf+0x932>
ffff800000104e34:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e38:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e3b:	3c 25                	cmp    $0x25,%al
ffff800000104e3d:	74 1a                	je     ffff800000104e59 <vsprintf+0x5f>
ffff800000104e3f:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000104e43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104e47:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000104e4b:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104e4f:	0f b6 12             	movzbl (%rdx),%edx
ffff800000104e52:	88 10                	mov    %dl,(%rax)
ffff800000104e54:	e9 c7 08 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff800000104e59:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000104e60:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e64:	48 83 c0 01          	add    $0x1,%rax
ffff800000104e68:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e6c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e70:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e73:	0f be c0             	movsbl %al,%eax
ffff800000104e76:	83 e8 20             	sub    $0x20,%eax
ffff800000104e79:	83 f8 10             	cmp    $0x10,%eax
ffff800000104e7c:	77 40                	ja     ffff800000104ebe <vsprintf+0xc4>
ffff800000104e7e:	89 c0                	mov    %eax,%eax
ffff800000104e80:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000104e87:	00 
ffff800000104e88:	48 8d 05 49 0a 00 00 	lea    0xa49(%rip),%rax        # ffff8000001058d8 <.LC1+0x28>
ffff800000104e8f:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000104e93:	48 8d 15 3e 0a 00 00 	lea    0xa3e(%rip),%rdx        # ffff8000001058d8 <.LC1+0x28>
ffff800000104e9a:	48 01 d0             	add    %rdx,%rax
ffff800000104e9d:	3e ff e0             	notrack jmp *%rax
ffff800000104ea0:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104ea4:	eb ba                	jmp    ffff800000104e60 <vsprintf+0x66>
ffff800000104ea6:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000104eaa:	eb b4                	jmp    ffff800000104e60 <vsprintf+0x66>
ffff800000104eac:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000104eb0:	eb ae                	jmp    ffff800000104e60 <vsprintf+0x66>
ffff800000104eb2:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000104eb6:	eb a8                	jmp    ffff800000104e60 <vsprintf+0x66>
ffff800000104eb8:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000104ebc:	eb a2                	jmp    ffff800000104e60 <vsprintf+0x66>
ffff800000104ebe:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000104ec5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ec9:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ecc:	3c 2f                	cmp    $0x2f,%al
ffff800000104ece:	7e 27                	jle    ffff800000104ef7 <vsprintf+0xfd>
ffff800000104ed0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ed4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ed7:	3c 39                	cmp    $0x39,%al
ffff800000104ed9:	7f 1c                	jg     ffff800000104ef7 <vsprintf+0xfd>
ffff800000104edb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104edf:	48 89 c7             	mov    %rax,%rdi
ffff800000104ee2:	48 b8 5e bc ff ff ff 	movabs $0xffffffffffffbc5e,%rax
ffff800000104ee9:	ff ff ff 
ffff800000104eec:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ef0:	ff d0                	call   *%rax
ffff800000104ef2:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104ef5:	eb 6c                	jmp    ffff800000104f63 <vsprintf+0x169>
ffff800000104ef7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104efb:	0f b6 00             	movzbl (%rax),%eax
ffff800000104efe:	3c 2a                	cmp    $0x2a,%al
ffff800000104f00:	75 61                	jne    ffff800000104f63 <vsprintf+0x169>
ffff800000104f02:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f06:	48 83 c0 01          	add    $0x1,%rax
ffff800000104f0a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f0e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f12:	8b 00                	mov    (%rax),%eax
ffff800000104f14:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104f17:	77 24                	ja     ffff800000104f3d <vsprintf+0x143>
ffff800000104f19:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f1d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104f21:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f25:	8b 00                	mov    (%rax),%eax
ffff800000104f27:	89 c0                	mov    %eax,%eax
ffff800000104f29:	48 01 d0             	add    %rdx,%rax
ffff800000104f2c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f30:	8b 12                	mov    (%rdx),%edx
ffff800000104f32:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104f35:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f39:	89 0a                	mov    %ecx,(%rdx)
ffff800000104f3b:	eb 14                	jmp    ffff800000104f51 <vsprintf+0x157>
ffff800000104f3d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f41:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104f45:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104f49:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f4d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104f51:	8b 00                	mov    (%rax),%eax
ffff800000104f53:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104f56:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000104f5a:	79 07                	jns    ffff800000104f63 <vsprintf+0x169>
ffff800000104f5c:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000104f5f:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104f63:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000104f6a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f6e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f71:	3c 2e                	cmp    $0x2e,%al
ffff800000104f73:	0f 85 aa 00 00 00    	jne    ffff800000105023 <vsprintf+0x229>
ffff800000104f79:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f7d:	48 83 c0 01          	add    $0x1,%rax
ffff800000104f81:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f85:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f89:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f8c:	3c 2f                	cmp    $0x2f,%al
ffff800000104f8e:	7e 27                	jle    ffff800000104fb7 <vsprintf+0x1bd>
ffff800000104f90:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f94:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f97:	3c 39                	cmp    $0x39,%al
ffff800000104f99:	7f 1c                	jg     ffff800000104fb7 <vsprintf+0x1bd>
ffff800000104f9b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104f9f:	48 89 c7             	mov    %rax,%rdi
ffff800000104fa2:	48 b8 5e bc ff ff ff 	movabs $0xffffffffffffbc5e,%rax
ffff800000104fa9:	ff ff ff 
ffff800000104fac:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104fb0:	ff d0                	call   *%rax
ffff800000104fb2:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000104fb5:	eb 5f                	jmp    ffff800000105016 <vsprintf+0x21c>
ffff800000104fb7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fbb:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fbe:	3c 2a                	cmp    $0x2a,%al
ffff800000104fc0:	75 54                	jne    ffff800000105016 <vsprintf+0x21c>
ffff800000104fc2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fc6:	48 83 c0 01          	add    $0x1,%rax
ffff800000104fca:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104fce:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fd2:	8b 00                	mov    (%rax),%eax
ffff800000104fd4:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104fd7:	77 24                	ja     ffff800000104ffd <vsprintf+0x203>
ffff800000104fd9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fdd:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104fe1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fe5:	8b 00                	mov    (%rax),%eax
ffff800000104fe7:	89 c0                	mov    %eax,%eax
ffff800000104fe9:	48 01 d0             	add    %rdx,%rax
ffff800000104fec:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104ff0:	8b 12                	mov    (%rdx),%edx
ffff800000104ff2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104ff5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104ff9:	89 0a                	mov    %ecx,(%rdx)
ffff800000104ffb:	eb 14                	jmp    ffff800000105011 <vsprintf+0x217>
ffff800000104ffd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105001:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105005:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105009:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010500d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105011:	8b 00                	mov    (%rax),%eax
ffff800000105013:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105016:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff80000010501a:	79 07                	jns    ffff800000105023 <vsprintf+0x229>
ffff80000010501c:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105023:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff80000010502a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010502e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105031:	3c 68                	cmp    $0x68,%al
ffff800000105033:	74 21                	je     ffff800000105056 <vsprintf+0x25c>
ffff800000105035:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105039:	0f b6 00             	movzbl (%rax),%eax
ffff80000010503c:	3c 6c                	cmp    $0x6c,%al
ffff80000010503e:	74 16                	je     ffff800000105056 <vsprintf+0x25c>
ffff800000105040:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105044:	0f b6 00             	movzbl (%rax),%eax
ffff800000105047:	3c 4c                	cmp    $0x4c,%al
ffff800000105049:	74 0b                	je     ffff800000105056 <vsprintf+0x25c>
ffff80000010504b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010504f:	0f b6 00             	movzbl (%rax),%eax
ffff800000105052:	3c 7a                	cmp    $0x7a,%al
ffff800000105054:	75 19                	jne    ffff80000010506f <vsprintf+0x275>
ffff800000105056:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010505a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010505d:	0f be c0             	movsbl %al,%eax
ffff800000105060:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105063:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105067:	48 83 c0 01          	add    $0x1,%rax
ffff80000010506b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010506f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105073:	0f b6 00             	movzbl (%rax),%eax
ffff800000105076:	0f be c0             	movsbl %al,%eax
ffff800000105079:	83 e8 25             	sub    $0x25,%eax
ffff80000010507c:	83 f8 53             	cmp    $0x53,%eax
ffff80000010507f:	0f 87 5d 06 00 00    	ja     ffff8000001056e2 <vsprintf+0x8e8>
ffff800000105085:	89 c0                	mov    %eax,%eax
ffff800000105087:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010508e:	00 
ffff80000010508f:	48 8d 05 ca 08 00 00 	lea    0x8ca(%rip),%rax        # ffff800000105960 <.LC1+0xb0>
ffff800000105096:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010509a:	48 8d 15 bf 08 00 00 	lea    0x8bf(%rip),%rdx        # ffff800000105960 <.LC1+0xb0>
ffff8000001050a1:	48 01 d0             	add    %rdx,%rax
ffff8000001050a4:	3e ff e0             	notrack jmp *%rax
ffff8000001050a7:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001050aa:	83 e0 10             	and    $0x10,%eax
ffff8000001050ad:	85 c0                	test   %eax,%eax
ffff8000001050af:	75 1b                	jne    ffff8000001050cc <vsprintf+0x2d2>
ffff8000001050b1:	eb 0f                	jmp    ffff8000001050c2 <vsprintf+0x2c8>
ffff8000001050b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050b7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001050bb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001050bf:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001050c2:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001050c6:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001050ca:	7f e7                	jg     ffff8000001050b3 <vsprintf+0x2b9>
ffff8000001050cc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050d0:	8b 00                	mov    (%rax),%eax
ffff8000001050d2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050d5:	77 24                	ja     ffff8000001050fb <vsprintf+0x301>
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
ffff8000001050f9:	eb 14                	jmp    ffff80000010510f <vsprintf+0x315>
ffff8000001050fb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050ff:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105103:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105107:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010510b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010510f:	8b 08                	mov    (%rax),%ecx
ffff800000105111:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105115:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105119:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010511d:	89 ca                	mov    %ecx,%edx
ffff80000010511f:	88 10                	mov    %dl,(%rax)
ffff800000105121:	eb 0f                	jmp    ffff800000105132 <vsprintf+0x338>
ffff800000105123:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105127:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010512b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010512f:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105132:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105136:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010513a:	7f e7                	jg     ffff800000105123 <vsprintf+0x329>
ffff80000010513c:	e9 df 05 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff800000105141:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105145:	8b 00                	mov    (%rax),%eax
ffff800000105147:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010514a:	77 24                	ja     ffff800000105170 <vsprintf+0x376>
ffff80000010514c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105150:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105154:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105158:	8b 00                	mov    (%rax),%eax
ffff80000010515a:	89 c0                	mov    %eax,%eax
ffff80000010515c:	48 01 d0             	add    %rdx,%rax
ffff80000010515f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105163:	8b 12                	mov    (%rdx),%edx
ffff800000105165:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105168:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010516c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010516e:	eb 14                	jmp    ffff800000105184 <vsprintf+0x38a>
ffff800000105170:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105174:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105178:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010517c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105180:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105184:	48 8b 00             	mov    (%rax),%rax
ffff800000105187:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010518b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105190:	75 08                	jne    ffff80000010519a <vsprintf+0x3a0>
ffff800000105192:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105199:	00 
ffff80000010519a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010519e:	48 89 c7             	mov    %rax,%rdi
ffff8000001051a1:	48 b8 aa b3 ff ff ff 	movabs $0xffffffffffffb3aa,%rax
ffff8000001051a8:	ff ff ff 
ffff8000001051ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051af:	ff d0                	call   *%rax
ffff8000001051b1:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001051b4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff8000001051b8:	79 08                	jns    ffff8000001051c2 <vsprintf+0x3c8>
ffff8000001051ba:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001051bd:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff8000001051c0:	eb 0e                	jmp    ffff8000001051d0 <vsprintf+0x3d6>
ffff8000001051c2:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001051c5:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001051c8:	7e 06                	jle    ffff8000001051d0 <vsprintf+0x3d6>
ffff8000001051ca:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001051cd:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001051d0:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001051d3:	83 e0 10             	and    $0x10,%eax
ffff8000001051d6:	85 c0                	test   %eax,%eax
ffff8000001051d8:	75 1f                	jne    ffff8000001051f9 <vsprintf+0x3ff>
ffff8000001051da:	eb 0f                	jmp    ffff8000001051eb <vsprintf+0x3f1>
ffff8000001051dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051e0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051e4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001051e8:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051eb:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001051ee:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051f1:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001051f4:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001051f7:	7c e3                	jl     ffff8000001051dc <vsprintf+0x3e2>
ffff8000001051f9:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff800000105200:	eb 21                	jmp    ffff800000105223 <vsprintf+0x429>
ffff800000105202:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000105206:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff80000010520a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010520e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105212:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105216:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010521a:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010521d:	88 10                	mov    %dl,(%rax)
ffff80000010521f:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105223:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105226:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105229:	7c d7                	jl     ffff800000105202 <vsprintf+0x408>
ffff80000010522b:	eb 0f                	jmp    ffff80000010523c <vsprintf+0x442>
ffff80000010522d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105231:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105235:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105239:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010523c:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff80000010523f:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105242:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105245:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105248:	7c e3                	jl     ffff80000010522d <vsprintf+0x433>
ffff80000010524a:	e9 d1 04 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff80000010524f:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105253:	0f 85 82 00 00 00    	jne    ffff8000001052db <vsprintf+0x4e1>
ffff800000105259:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010525d:	8b 00                	mov    (%rax),%eax
ffff80000010525f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105262:	77 24                	ja     ffff800000105288 <vsprintf+0x48e>
ffff800000105264:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105268:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010526c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105270:	8b 00                	mov    (%rax),%eax
ffff800000105272:	89 c0                	mov    %eax,%eax
ffff800000105274:	48 01 d0             	add    %rdx,%rax
ffff800000105277:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010527b:	8b 12                	mov    (%rdx),%edx
ffff80000010527d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105280:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105284:	89 0a                	mov    %ecx,(%rdx)
ffff800000105286:	eb 14                	jmp    ffff80000010529c <vsprintf+0x4a2>
ffff800000105288:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010528c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105290:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105294:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105298:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010529c:	48 8b 00             	mov    (%rax),%rax
ffff80000010529f:	48 89 c7             	mov    %rax,%rdi
ffff8000001052a2:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001052a5:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001052a8:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001052ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052af:	41 89 f1             	mov    %esi,%r9d
ffff8000001052b2:	41 89 c8             	mov    %ecx,%r8d
ffff8000001052b5:	89 d1                	mov    %edx,%ecx
ffff8000001052b7:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001052bc:	48 89 fe             	mov    %rdi,%rsi
ffff8000001052bf:	48 89 c7             	mov    %rax,%rdi
ffff8000001052c2:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff8000001052c9:	ff ff ff 
ffff8000001052cc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052d0:	ff d0                	call   *%rax
ffff8000001052d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001052d6:	e9 45 04 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff8000001052db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052df:	8b 00                	mov    (%rax),%eax
ffff8000001052e1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001052e4:	77 24                	ja     ffff80000010530a <vsprintf+0x510>
ffff8000001052e6:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052ea:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052ee:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052f2:	8b 00                	mov    (%rax),%eax
ffff8000001052f4:	89 c0                	mov    %eax,%eax
ffff8000001052f6:	48 01 d0             	add    %rdx,%rax
ffff8000001052f9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052fd:	8b 12                	mov    (%rdx),%edx
ffff8000001052ff:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105302:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105306:	89 0a                	mov    %ecx,(%rdx)
ffff800000105308:	eb 14                	jmp    ffff80000010531e <vsprintf+0x524>
ffff80000010530a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010530e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105312:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105316:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010531a:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010531e:	8b 00                	mov    (%rax),%eax
ffff800000105320:	89 c7                	mov    %eax,%edi
ffff800000105322:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105325:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105328:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010532b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010532f:	41 89 f1             	mov    %esi,%r9d
ffff800000105332:	41 89 c8             	mov    %ecx,%r8d
ffff800000105335:	89 d1                	mov    %edx,%ecx
ffff800000105337:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010533c:	48 89 fe             	mov    %rdi,%rsi
ffff80000010533f:	48 89 c7             	mov    %rax,%rdi
ffff800000105342:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff800000105349:	ff ff ff 
ffff80000010534c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105350:	ff d0                	call   *%rax
ffff800000105352:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105356:	e9 c5 03 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff80000010535b:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010535f:	75 0b                	jne    ffff80000010536c <vsprintf+0x572>
ffff800000105361:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105368:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010536c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105370:	8b 00                	mov    (%rax),%eax
ffff800000105372:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105375:	77 24                	ja     ffff80000010539b <vsprintf+0x5a1>
ffff800000105377:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010537b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010537f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105383:	8b 00                	mov    (%rax),%eax
ffff800000105385:	89 c0                	mov    %eax,%eax
ffff800000105387:	48 01 d0             	add    %rdx,%rax
ffff80000010538a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010538e:	8b 12                	mov    (%rdx),%edx
ffff800000105390:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105393:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105397:	89 0a                	mov    %ecx,(%rdx)
ffff800000105399:	eb 14                	jmp    ffff8000001053af <vsprintf+0x5b5>
ffff80000010539b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010539f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053a3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053a7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053ab:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053af:	48 8b 00             	mov    (%rax),%rax
ffff8000001053b2:	48 89 c7             	mov    %rax,%rdi
ffff8000001053b5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001053b8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001053bb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001053be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053c2:	41 89 f1             	mov    %esi,%r9d
ffff8000001053c5:	41 89 c8             	mov    %ecx,%r8d
ffff8000001053c8:	89 d1                	mov    %edx,%ecx
ffff8000001053ca:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001053cf:	48 89 fe             	mov    %rdi,%rsi
ffff8000001053d2:	48 89 c7             	mov    %rax,%rdi
ffff8000001053d5:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff8000001053dc:	ff ff ff 
ffff8000001053df:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053e3:	ff d0                	call   *%rax
ffff8000001053e5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001053e9:	e9 32 03 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff8000001053ee:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001053f2:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001053f6:	0f 85 82 00 00 00    	jne    ffff80000010547e <vsprintf+0x684>
ffff8000001053fc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105400:	8b 00                	mov    (%rax),%eax
ffff800000105402:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105405:	77 24                	ja     ffff80000010542b <vsprintf+0x631>
ffff800000105407:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010540b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010540f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105413:	8b 00                	mov    (%rax),%eax
ffff800000105415:	89 c0                	mov    %eax,%eax
ffff800000105417:	48 01 d0             	add    %rdx,%rax
ffff80000010541a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010541e:	8b 12                	mov    (%rdx),%edx
ffff800000105420:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105423:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105427:	89 0a                	mov    %ecx,(%rdx)
ffff800000105429:	eb 14                	jmp    ffff80000010543f <vsprintf+0x645>
ffff80000010542b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010542f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105433:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105437:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010543b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010543f:	48 8b 00             	mov    (%rax),%rax
ffff800000105442:	48 89 c7             	mov    %rax,%rdi
ffff800000105445:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105448:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010544b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010544e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105452:	41 89 f1             	mov    %esi,%r9d
ffff800000105455:	41 89 c8             	mov    %ecx,%r8d
ffff800000105458:	89 d1                	mov    %edx,%ecx
ffff80000010545a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010545f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105462:	48 89 c7             	mov    %rax,%rdi
ffff800000105465:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff80000010546c:	ff ff ff 
ffff80000010546f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105473:	ff d0                	call   *%rax
ffff800000105475:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105479:	e9 a2 02 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff80000010547e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105482:	8b 00                	mov    (%rax),%eax
ffff800000105484:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105487:	77 24                	ja     ffff8000001054ad <vsprintf+0x6b3>
ffff800000105489:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010548d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105491:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105495:	8b 00                	mov    (%rax),%eax
ffff800000105497:	89 c0                	mov    %eax,%eax
ffff800000105499:	48 01 d0             	add    %rdx,%rax
ffff80000010549c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054a0:	8b 12                	mov    (%rdx),%edx
ffff8000001054a2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054a5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054a9:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054ab:	eb 14                	jmp    ffff8000001054c1 <vsprintf+0x6c7>
ffff8000001054ad:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054b1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054b5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001054b9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054bd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054c1:	8b 00                	mov    (%rax),%eax
ffff8000001054c3:	89 c7                	mov    %eax,%edi
ffff8000001054c5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001054c8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001054cb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001054ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054d2:	41 89 f1             	mov    %esi,%r9d
ffff8000001054d5:	41 89 c8             	mov    %ecx,%r8d
ffff8000001054d8:	89 d1                	mov    %edx,%ecx
ffff8000001054da:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001054df:	48 89 fe             	mov    %rdi,%rsi
ffff8000001054e2:	48 89 c7             	mov    %rax,%rdi
ffff8000001054e5:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff8000001054ec:	ff ff ff 
ffff8000001054ef:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054f3:	ff d0                	call   *%rax
ffff8000001054f5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001054f9:	e9 22 02 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff8000001054fe:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff800000105502:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105506:	0f 85 82 00 00 00    	jne    ffff80000010558e <vsprintf+0x794>
ffff80000010550c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105510:	8b 00                	mov    (%rax),%eax
ffff800000105512:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105515:	77 24                	ja     ffff80000010553b <vsprintf+0x741>
ffff800000105517:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010551b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010551f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105523:	8b 00                	mov    (%rax),%eax
ffff800000105525:	89 c0                	mov    %eax,%eax
ffff800000105527:	48 01 d0             	add    %rdx,%rax
ffff80000010552a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010552e:	8b 12                	mov    (%rdx),%edx
ffff800000105530:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105533:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105537:	89 0a                	mov    %ecx,(%rdx)
ffff800000105539:	eb 14                	jmp    ffff80000010554f <vsprintf+0x755>
ffff80000010553b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010553f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105543:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105547:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010554b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010554f:	48 8b 00             	mov    (%rax),%rax
ffff800000105552:	48 89 c7             	mov    %rax,%rdi
ffff800000105555:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105558:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010555b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010555e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105562:	41 89 f1             	mov    %esi,%r9d
ffff800000105565:	41 89 c8             	mov    %ecx,%r8d
ffff800000105568:	89 d1                	mov    %edx,%ecx
ffff80000010556a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010556f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105572:	48 89 c7             	mov    %rax,%rdi
ffff800000105575:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff80000010557c:	ff ff ff 
ffff80000010557f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105583:	ff d0                	call   *%rax
ffff800000105585:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105589:	e9 92 01 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff80000010558e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105592:	8b 00                	mov    (%rax),%eax
ffff800000105594:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105597:	77 24                	ja     ffff8000001055bd <vsprintf+0x7c3>
ffff800000105599:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010559d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055a1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055a5:	8b 00                	mov    (%rax),%eax
ffff8000001055a7:	89 c0                	mov    %eax,%eax
ffff8000001055a9:	48 01 d0             	add    %rdx,%rax
ffff8000001055ac:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055b0:	8b 12                	mov    (%rdx),%edx
ffff8000001055b2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055b5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055b9:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055bb:	eb 14                	jmp    ffff8000001055d1 <vsprintf+0x7d7>
ffff8000001055bd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055c1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055c5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055c9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055cd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055d1:	8b 00                	mov    (%rax),%eax
ffff8000001055d3:	89 c7                	mov    %eax,%edi
ffff8000001055d5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001055d8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055db:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055e2:	41 89 f1             	mov    %esi,%r9d
ffff8000001055e5:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055e8:	89 d1                	mov    %edx,%ecx
ffff8000001055ea:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001055ef:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055f2:	48 89 c7             	mov    %rax,%rdi
ffff8000001055f5:	48 b8 de bc ff ff ff 	movabs $0xffffffffffffbcde,%rax
ffff8000001055fc:	ff ff ff 
ffff8000001055ff:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105603:	ff d0                	call   *%rax
ffff800000105605:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105609:	e9 12 01 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff80000010560e:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105612:	75 61                	jne    ffff800000105675 <vsprintf+0x87b>
ffff800000105614:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105618:	8b 00                	mov    (%rax),%eax
ffff80000010561a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010561d:	77 24                	ja     ffff800000105643 <vsprintf+0x849>
ffff80000010561f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105623:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105627:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010562b:	8b 00                	mov    (%rax),%eax
ffff80000010562d:	89 c0                	mov    %eax,%eax
ffff80000010562f:	48 01 d0             	add    %rdx,%rax
ffff800000105632:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105636:	8b 12                	mov    (%rdx),%edx
ffff800000105638:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010563b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010563f:	89 0a                	mov    %ecx,(%rdx)
ffff800000105641:	eb 14                	jmp    ffff800000105657 <vsprintf+0x85d>
ffff800000105643:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105647:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010564b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010564f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105653:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105657:	48 8b 00             	mov    (%rax),%rax
ffff80000010565a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010565e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105662:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105666:	48 89 c2             	mov    %rax,%rdx
ffff800000105669:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010566d:	48 89 10             	mov    %rdx,(%rax)
ffff800000105670:	e9 ab 00 00 00       	jmp    ffff800000105720 <vsprintf+0x926>
ffff800000105675:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105679:	8b 00                	mov    (%rax),%eax
ffff80000010567b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010567e:	77 24                	ja     ffff8000001056a4 <vsprintf+0x8aa>
ffff800000105680:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105684:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105688:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010568c:	8b 00                	mov    (%rax),%eax
ffff80000010568e:	89 c0                	mov    %eax,%eax
ffff800000105690:	48 01 d0             	add    %rdx,%rax
ffff800000105693:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105697:	8b 12                	mov    (%rdx),%edx
ffff800000105699:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010569c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056a0:	89 0a                	mov    %ecx,(%rdx)
ffff8000001056a2:	eb 14                	jmp    ffff8000001056b8 <vsprintf+0x8be>
ffff8000001056a4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001056a8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001056ac:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001056b0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001056b4:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001056b8:	48 8b 00             	mov    (%rax),%rax
ffff8000001056bb:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001056bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056c3:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001056c7:	89 c2                	mov    %eax,%edx
ffff8000001056c9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001056cd:	89 10                	mov    %edx,(%rax)
ffff8000001056cf:	eb 4f                	jmp    ffff800000105720 <vsprintf+0x926>
ffff8000001056d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056d5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056d9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056dd:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001056e0:	eb 3e                	jmp    ffff800000105720 <vsprintf+0x926>
ffff8000001056e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056e6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056ea:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056ee:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001056f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056f5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001056f8:	84 c0                	test   %al,%al
ffff8000001056fa:	74 17                	je     ffff800000105713 <vsprintf+0x919>
ffff8000001056fc:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000105700:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105704:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000105708:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff80000010570c:	0f b6 12             	movzbl (%rdx),%edx
ffff80000010570f:	88 10                	mov    %dl,(%rax)
ffff800000105711:	eb 0c                	jmp    ffff80000010571f <vsprintf+0x925>
ffff800000105713:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105717:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010571b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010571f:	90                   	nop
ffff800000105720:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105724:	48 83 c0 01          	add    $0x1,%rax
ffff800000105728:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010572c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105730:	0f b6 00             	movzbl (%rax),%eax
ffff800000105733:	84 c0                	test   %al,%al
ffff800000105735:	0f 85 f9 f6 ff ff    	jne    ffff800000104e34 <vsprintf+0x3a>
ffff80000010573b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010573f:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105742:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105746:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff80000010574a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010574e:	c9                   	leave
ffff80000010574f:	c3                   	ret
