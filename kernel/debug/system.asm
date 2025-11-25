
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 5d 00 00 	lgdt   0x5d50(%rip)        # ffff800000105d68 <GDT_END>
ffff800000100018:	0f 01 1d 53 6d 00 00 	lidt   0x6d53(%rip)        # ffff800000106d72 <IDT_END>
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
ffff80000010006b:	48 8d 15 ad 00 00 00 	lea    0xad(%rip),%rdx        # ffff80000010011f <ignore_int>
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
ffff800000100099:	48 8d 3d d2 5c 00 00 	lea    0x5cd2(%rip),%rdi        # ffff800000105d72 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 be 6c 00 00 	lea    0x6cbe(%rip),%rdx        # ffff800000106d7c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d e8 5b 00 00 	lea    0x5be8(%rip),%rdi        # ffff800000105ce0 <GDT_Table>
ffff8000001000f8:	48 89 47 40          	mov    %rax,0x40(%rdi)
ffff8000001000fc:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000100100:	48 89 57 48          	mov    %rdx,0x48(%rdi)
ffff800000100104:	66 b8 40 00          	mov    $0x40,%ax
ffff800000100108:	0f 00 d8             	ltr    %eax
ffff80000010010b:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100117 <go_to_kernel>
ffff800000100112:	6a 08                	push   $0x8
ffff800000100114:	50                   	push   %rax
ffff800000100115:	48 cb                	lretq

ffff800000100117 <go_to_kernel>:
ffff800000100117:	00 40 10             	add    %al,0x10(%rax)
ffff80000010011a:	00 00                	add    %al,(%rax)
ffff80000010011c:	80 ff ff             	cmp    $0xff,%bh

ffff80000010011f <ignore_int>:
ffff80000010011f:	fc                   	cld
ffff800000100120:	50                   	push   %rax
ffff800000100121:	53                   	push   %rbx
ffff800000100122:	51                   	push   %rcx
ffff800000100123:	52                   	push   %rdx
ffff800000100124:	55                   	push   %rbp
ffff800000100125:	57                   	push   %rdi
ffff800000100126:	56                   	push   %rsi
ffff800000100127:	41 50                	push   %r8
ffff800000100129:	41 51                	push   %r9
ffff80000010012b:	41 52                	push   %r10
ffff80000010012d:	41 53                	push   %r11
ffff80000010012f:	41 54                	push   %r12
ffff800000100131:	41 55                	push   %r13
ffff800000100133:	41 56                	push   %r14
ffff800000100135:	41 57                	push   %r15
ffff800000100137:	8c c0                	mov    %es,%eax
ffff800000100139:	50                   	push   %rax
ffff80000010013a:	8c d8                	mov    %ds,%eax
ffff80000010013c:	50                   	push   %rax
ffff80000010013d:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100144:	8e d8                	mov    %eax,%ds
ffff800000100146:	8e c0                	mov    %eax,%es
ffff800000100148:	48 8d 05 43 00 00 00 	lea    0x43(%rip),%rax        # ffff800000100192 <int_msg>
ffff80000010014f:	50                   	push   %rax
ffff800000100150:	48 89 c2             	mov    %rax,%rdx
ffff800000100153:	48 c7 c6 00 00 00 00 	mov    $0x0,%rsi
ffff80000010015a:	48 c7 c7 00 00 ff 00 	mov    $0xff0000,%rdi
ffff800000100161:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
ffff800000100168:	e8 eb 41 00 00       	call   ffff800000104358 <color_printk>
ffff80000010016d:	48 83 c4 08          	add    $0x8,%rsp

ffff800000100171 <Loop>:
ffff800000100171:	eb fe                	jmp    ffff800000100171 <Loop>
ffff800000100173:	58                   	pop    %rax
ffff800000100174:	8e d8                	mov    %eax,%ds
ffff800000100176:	58                   	pop    %rax
ffff800000100177:	8e c0                	mov    %eax,%es
ffff800000100179:	41 5f                	pop    %r15
ffff80000010017b:	41 5e                	pop    %r14
ffff80000010017d:	41 5d                	pop    %r13
ffff80000010017f:	41 5c                	pop    %r12
ffff800000100181:	41 5b                	pop    %r11
ffff800000100183:	41 5a                	pop    %r10
ffff800000100185:	41 59                	pop    %r9
ffff800000100187:	41 58                	pop    %r8
ffff800000100189:	5e                   	pop    %rsi
ffff80000010018a:	5f                   	pop    %rdi
ffff80000010018b:	5d                   	pop    %rbp
ffff80000010018c:	5a                   	pop    %rdx
ffff80000010018d:	59                   	pop    %rcx
ffff80000010018e:	5b                   	pop    %rbx
ffff80000010018f:	58                   	pop    %rax
ffff800000100190:	48 cf                	iretq

ffff800000100192 <int_msg>:
ffff800000100192:	55                   	push   %rbp
ffff800000100193:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000100194:	6b 6f 77 6e          	imul   $0x6e,0x77(%rdi),%ebp
ffff800000100198:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff80000010019b:	74 65                	je     ffff800000100202 <int_msg+0x70>
ffff80000010019d:	72 72                	jb     ffff800000100211 <int_msg+0x7f>
ffff80000010019f:	75 70                	jne    ffff800000100211 <int_msg+0x7f>
ffff8000001001a1:	74 20                	je     ffff8000001001c3 <int_msg+0x31>
ffff8000001001a3:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001a4:	72 20                	jb     ffff8000001001c6 <int_msg+0x34>
ffff8000001001a6:	66 61                	data16 (bad)
ffff8000001001a8:	75 6c                	jne    ffff800000100216 <int_msg+0x84>
ffff8000001001aa:	74 20                	je     ffff8000001001cc <int_msg+0x3a>
ffff8000001001ac:	61                   	(bad)
ffff8000001001ad:	74 20                	je     ffff8000001001cf <int_msg+0x3d>
ffff8000001001af:	52                   	push   %rdx
ffff8000001001b0:	69 70 2c 61 72 65 20 	imul   $0x20657261,0x2c(%rax),%esi
ffff8000001001b7:	79 6f                	jns    ffff800000100228 <int_msg+0x96>
ffff8000001001b9:	75 20                	jne    ffff8000001001db <int_msg+0x49>
ffff8000001001bb:	73 65                	jae    ffff800000100222 <int_msg+0x90>
ffff8000001001bd:	72 69                	jb     ffff800000100228 <int_msg+0x96>
ffff8000001001bf:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001001c0:	75 73                	jne    ffff800000100235 <int_msg+0xa3>
ffff8000001001c2:	3f                   	(bad)
ffff8000001001c3:	0a 00                	or     (%rax),%al
ffff8000001001c5:	90                   	nop
ffff8000001001c6:	66 90                	xchg   %ax,%ax
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
ffff80000010400b:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010400f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010400f <Start_Kernel+0xf>
ffff800000104016:	49 bb f1 4d 00 00 00 	movabs $0x4df1,%r11
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
ffff8000001040fb:	48 b8 30 c9 ff ff ff 	movabs $0xffffffffffffc930,%rax
ffff800000104102:	ff ff ff 
ffff800000104105:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104109:	48 89 c2             	mov    %rax,%rdx
ffff80000010410c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104111:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104116:	49 89 df             	mov    %rbx,%r15
ffff800000104119:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010411e:	48 b9 58 b5 ff ff ff 	movabs $0xffffffffffffb558,%rcx
ffff800000104125:	ff ff ff 
ffff800000104128:	48 01 d9             	add    %rbx,%rcx
ffff80000010412b:	ff d1                	call   *%rcx
ffff80000010412d:	48 b8 41 c9 ff ff ff 	movabs $0xffffffffffffc941,%rax
ffff800000104134:	ff ff ff 
ffff800000104137:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010413b:	48 89 c2             	mov    %rax,%rdx
ffff80000010413e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104143:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104148:	49 89 df             	mov    %rbx,%r15
ffff80000010414b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104150:	48 b9 58 b5 ff ff ff 	movabs $0xffffffffffffb558,%rcx
ffff800000104157:	ff ff ff 
ffff80000010415a:	48 01 d9             	add    %rbx,%rcx
ffff80000010415d:	ff d1                	call   *%rcx
ffff80000010415f:	48 b8 50 c9 ff ff ff 	movabs $0xffffffffffffc950,%rax
ffff800000104166:	ff ff ff 
ffff800000104169:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010416d:	48 89 c2             	mov    %rax,%rdx
ffff800000104170:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104175:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010417a:	49 89 df             	mov    %rbx,%r15
ffff80000010417d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104182:	48 b9 58 b5 ff ff ff 	movabs $0xffffffffffffb558,%rcx
ffff800000104189:	ff ff ff 
ffff80000010418c:	48 01 d9             	add    %rbx,%rcx
ffff80000010418f:	ff d1                	call   *%rcx
ffff800000104191:	b8 01 00 00 00       	mov    $0x1,%eax
ffff800000104196:	bf 00 00 00 00       	mov    $0x0,%edi
ffff80000010419b:	99                   	cltd
ffff80000010419c:	f7 ff                	idiv   %edi
ffff80000010419e:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff8000001041a1:	48 b8 a8 c9 ff ff ff 	movabs $0xffffffffffffc9a8,%rax
ffff8000001041a8:	ff ff ff 
ffff8000001041ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041af:	48 89 c2             	mov    %rax,%rdx
ffff8000001041b2:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041b7:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041bc:	49 89 df             	mov    %rbx,%r15
ffff8000001041bf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041c4:	48 b9 58 b5 ff ff ff 	movabs $0xffffffffffffb558,%rcx
ffff8000001041cb:	ff ff ff 
ffff8000001041ce:	48 01 d9             	add    %rbx,%rcx
ffff8000001041d1:	ff d1                	call   *%rcx
ffff8000001041d3:	48 b8 e0 c9 ff ff ff 	movabs $0xffffffffffffc9e0,%rax
ffff8000001041da:	ff ff ff 
ffff8000001041dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041e1:	48 89 c2             	mov    %rax,%rdx
ffff8000001041e4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041e9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041ee:	49 89 df             	mov    %rbx,%r15
ffff8000001041f1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041f6:	48 b9 58 b5 ff ff ff 	movabs $0xffffffffffffb558,%rcx
ffff8000001041fd:	ff ff ff 
ffff800000104200:	48 01 d9             	add    %rbx,%rcx
ffff800000104203:	ff d1                	call   *%rcx
ffff800000104205:	90                   	nop
ffff800000104206:	eb fd                	jmp    ffff800000104205 <Start_Kernel+0x205>

ffff800000104208 <Cstrlen>:
ffff800000104208:	f3 0f 1e fa          	endbr64
ffff80000010420c:	55                   	push   %rbp
ffff80000010420d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104210:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104210 <Cstrlen+0x8>
ffff800000104217:	49 bb f0 4b 00 00 00 	movabs $0x4bf0,%r11
ffff80000010421e:	00 00 00 
ffff800000104221:	4c 01 d8             	add    %r11,%rax
ffff800000104224:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104228:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010422c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104230:	eb 05                	jmp    ffff800000104237 <Cstrlen+0x2f>
ffff800000104232:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104237:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010423b:	0f b6 00             	movzbl (%rax),%eax
ffff80000010423e:	84 c0                	test   %al,%al
ffff800000104240:	75 f0                	jne    ffff800000104232 <Cstrlen+0x2a>
ffff800000104242:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104246:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010424a:	5d                   	pop    %rbp
ffff80000010424b:	c3                   	ret

ffff80000010424c <putchar>:
ffff80000010424c:	f3 0f 1e fa          	endbr64
ffff800000104250:	55                   	push   %rbp
ffff800000104251:	48 89 e5             	mov    %rsp,%rbp
ffff800000104254:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104254 <putchar+0x8>
ffff80000010425b:	49 bb ac 4b 00 00 00 	movabs $0x4bac,%r11
ffff800000104262:	00 00 00 
ffff800000104265:	4c 01 d8             	add    %r11,%rax
ffff800000104268:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010426c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff80000010426f:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104272:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104275:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff800000104279:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010427d:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104280:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104283:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010428a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104291:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104298:	00 
ffff800000104299:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001042a0:	00 
ffff8000001042a1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001042a8:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff8000001042ac:	48 63 d2             	movslq %edx,%rdx
ffff8000001042af:	48 89 d1             	mov    %rdx,%rcx
ffff8000001042b2:	48 c1 e1 04          	shl    $0x4,%rcx
ffff8000001042b6:	48 ba 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdx
ffff8000001042bd:	ff ff ff 
ffff8000001042c0:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff8000001042c4:	48 01 c8             	add    %rcx,%rax
ffff8000001042c7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001042cb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001042d2:	eb 7a                	jmp    ffff80000010434e <putchar+0x102>
ffff8000001042d4:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001042d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042da:	01 d0                	add    %edx,%eax
ffff8000001042dc:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001042e0:	48 63 d0             	movslq %eax,%rdx
ffff8000001042e3:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001042e6:	48 98                	cltq
ffff8000001042e8:	48 01 d0             	add    %rdx,%rax
ffff8000001042eb:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001042f2:	00 
ffff8000001042f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001042f7:	48 01 d0             	add    %rdx,%rax
ffff8000001042fa:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001042fe:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff800000104305:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010430c:	eb 31                	jmp    ffff80000010433f <putchar+0xf3>
ffff80000010430e:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff800000104311:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104315:	0f b6 00             	movzbl (%rax),%eax
ffff800000104318:	0f b6 c0             	movzbl %al,%eax
ffff80000010431b:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff80000010431e:	85 c0                	test   %eax,%eax
ffff800000104320:	74 0b                	je     ffff80000010432d <putchar+0xe1>
ffff800000104322:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104326:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff800000104329:	89 10                	mov    %edx,(%rax)
ffff80000010432b:	eb 09                	jmp    ffff800000104336 <putchar+0xea>
ffff80000010432d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104331:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104334:	89 10                	mov    %edx,(%rax)
ffff800000104336:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010433b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff80000010433f:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104343:	7e c9                	jle    ffff80000010430e <putchar+0xc2>
ffff800000104345:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010434a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff80000010434e:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104352:	7e 80                	jle    ffff8000001042d4 <putchar+0x88>
ffff800000104354:	90                   	nop
ffff800000104355:	90                   	nop
ffff800000104356:	5d                   	pop    %rbp
ffff800000104357:	c3                   	ret

ffff800000104358 <color_printk>:
ffff800000104358:	f3 0f 1e fa          	endbr64
ffff80000010435c:	55                   	push   %rbp
ffff80000010435d:	48 89 e5             	mov    %rsp,%rbp
ffff800000104360:	53                   	push   %rbx
ffff800000104361:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104368:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104368 <color_printk+0x10>
ffff80000010436f:	49 bb 98 4a 00 00 00 	movabs $0x4a98,%r11
ffff800000104376:	00 00 00 
ffff800000104379:	4c 01 db             	add    %r11,%rbx
ffff80000010437c:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104382:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff800000104388:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff80000010438f:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104396:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff80000010439d:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001043a4:	84 c0                	test   %al,%al
ffff8000001043a6:	74 23                	je     ffff8000001043cb <color_printk+0x73>
ffff8000001043a8:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001043af:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001043b3:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001043b7:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001043bb:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001043bf:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001043c3:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001043c7:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001043cb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001043d2:	00 00 00 
ffff8000001043d5:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001043dc:	00 00 00 
ffff8000001043df:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001043e6:	00 00 00 
ffff8000001043e9:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001043f0:	00 00 00 
ffff8000001043f3:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001043fa:	00 00 00 
ffff8000001043fd:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104401:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff800000104408:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff80000010440f:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff800000104416:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff80000010441d:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff800000104424:	48 89 c6             	mov    %rax,%rsi
ffff800000104427:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff80000010442e:	00 00 00 
ffff800000104431:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104435:	48 89 c7             	mov    %rax,%rdi
ffff800000104438:	48 b8 d8 bf ff ff ff 	movabs $0xffffffffffffbfd8,%rax
ffff80000010443f:	ff ff ff 
ffff800000104442:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104446:	ff d0                	call   *%rax
ffff800000104448:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff80000010444e:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104455:	00 00 00 
ffff800000104458:	e9 81 04 00 00       	jmp    ffff8000001048de <color_printk+0x586>
ffff80000010445d:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104464:	7e 0c                	jle    ffff800000104472 <color_printk+0x11a>
ffff800000104466:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010446d:	e9 45 02 00 00       	jmp    ffff8000001046b7 <color_printk+0x35f>
ffff800000104472:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104478:	48 63 d0             	movslq %eax,%rdx
ffff80000010447b:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104482:	00 00 00 
ffff800000104485:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104489:	48 01 d0             	add    %rdx,%rax
ffff80000010448c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010448f:	3c 0a                	cmp    $0xa,%al
ffff800000104491:	75 36                	jne    ffff8000001044c9 <color_printk+0x171>
ffff800000104493:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010449a:	00 00 00 
ffff80000010449d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff8000001044a1:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001044a4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044ab:	00 00 00 
ffff8000001044ae:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff8000001044b2:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044b9:	00 00 00 
ffff8000001044bc:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001044c3:	00 
ffff8000001044c4:	e9 6a 03 00 00       	jmp    ffff800000104833 <color_printk+0x4db>
ffff8000001044c9:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001044cf:	48 63 d0             	movslq %eax,%rdx
ffff8000001044d2:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff8000001044d9:	00 00 00 
ffff8000001044dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044e0:	48 01 d0             	add    %rdx,%rax
ffff8000001044e3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044e6:	3c 08                	cmp    $0x8,%al
ffff8000001044e8:	0f 85 78 01 00 00    	jne    ffff800000104666 <color_printk+0x30e>
ffff8000001044ee:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044f5:	00 00 00 
ffff8000001044f8:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001044fc:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001044ff:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104506:	00 00 00 
ffff800000104509:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010450d:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104514:	00 00 00 
ffff800000104517:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010451b:	85 c0                	test   %eax,%eax
ffff80000010451d:	0f 89 b2 00 00 00    	jns    ffff8000001045d5 <color_printk+0x27d>
ffff800000104523:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010452a:	00 00 00 
ffff80000010452d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104530:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104537:	00 00 00 
ffff80000010453a:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010453e:	99                   	cltd
ffff80000010453f:	f7 fe                	idiv   %esi
ffff800000104541:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104544:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010454b:	00 00 00 
ffff80000010454e:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104552:	0f af c2             	imul   %edx,%eax
ffff800000104555:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff80000010455c:	00 00 00 
ffff80000010455f:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104563:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010456a:	00 00 00 
ffff80000010456d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104571:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104574:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010457b:	00 00 00 
ffff80000010457e:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104582:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104589:	00 00 00 
ffff80000010458c:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104590:	85 c0                	test   %eax,%eax
ffff800000104592:	79 41                	jns    ffff8000001045d5 <color_printk+0x27d>
ffff800000104594:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010459b:	00 00 00 
ffff80000010459e:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001045a2:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001045a9:	00 00 00 
ffff8000001045ac:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001045b0:	99                   	cltd
ffff8000001045b1:	f7 ff                	idiv   %edi
ffff8000001045b3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001045b6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045bd:	00 00 00 
ffff8000001045c0:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001045c4:	0f af c2             	imul   %edx,%eax
ffff8000001045c7:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001045ce:	00 00 00 
ffff8000001045d1:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001045d5:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045dc:	00 00 00 
ffff8000001045df:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001045e3:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045ea:	00 00 00 
ffff8000001045ed:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001045f1:	89 d1                	mov    %edx,%ecx
ffff8000001045f3:	0f af c8             	imul   %eax,%ecx
ffff8000001045f6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045fd:	00 00 00 
ffff800000104600:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff800000104604:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010460b:	00 00 00 
ffff80000010460e:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104612:	0f af d0             	imul   %eax,%edx
ffff800000104615:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010461c:	00 00 00 
ffff80000010461f:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff800000104622:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104629:	00 00 00 
ffff80000010462c:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104631:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104638:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff80000010463e:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104642:	6a 20                	push   $0x20
ffff800000104644:	45 89 c1             	mov    %r8d,%r9d
ffff800000104647:	41 89 f8             	mov    %edi,%r8d
ffff80000010464a:	48 89 c7             	mov    %rax,%rdi
ffff80000010464d:	48 b8 4c b4 ff ff ff 	movabs $0xffffffffffffb44c,%rax
ffff800000104654:	ff ff ff 
ffff800000104657:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010465b:	ff d0                	call   *%rax
ffff80000010465d:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104661:	e9 cd 01 00 00       	jmp    ffff800000104833 <color_printk+0x4db>
ffff800000104666:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010466c:	48 63 d0             	movslq %eax,%rdx
ffff80000010466f:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104676:	00 00 00 
ffff800000104679:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010467d:	48 01 d0             	add    %rdx,%rax
ffff800000104680:	0f b6 00             	movzbl (%rax),%eax
ffff800000104683:	3c 09                	cmp    $0x9,%al
ffff800000104685:	0f 85 e3 00 00 00    	jne    ffff80000010476e <color_printk+0x416>
ffff80000010468b:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104692:	00 00 00 
ffff800000104695:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104699:	83 c0 08             	add    $0x8,%eax
ffff80000010469c:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010469f:	89 c2                	mov    %eax,%edx
ffff8000001046a1:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046a8:	00 00 00 
ffff8000001046ab:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001046af:	29 c2                	sub    %eax,%edx
ffff8000001046b1:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff8000001046b7:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff8000001046be:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046c5:	00 00 00 
ffff8000001046c8:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001046cc:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046d3:	00 00 00 
ffff8000001046d6:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001046da:	89 d1                	mov    %edx,%ecx
ffff8000001046dc:	0f af c8             	imul   %eax,%ecx
ffff8000001046df:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046e6:	00 00 00 
ffff8000001046e9:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001046ed:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046f4:	00 00 00 
ffff8000001046f7:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001046fb:	0f af d0             	imul   %eax,%edx
ffff8000001046fe:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104705:	00 00 00 
ffff800000104708:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff80000010470b:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104712:	00 00 00 
ffff800000104715:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010471a:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff800000104721:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104727:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010472b:	6a 20                	push   $0x20
ffff80000010472d:	45 89 c1             	mov    %r8d,%r9d
ffff800000104730:	41 89 f8             	mov    %edi,%r8d
ffff800000104733:	48 89 c7             	mov    %rax,%rdi
ffff800000104736:	48 b8 4c b4 ff ff ff 	movabs $0xffffffffffffb44c,%rax
ffff80000010473d:	ff ff ff 
ffff800000104740:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104744:	ff d0                	call   *%rax
ffff800000104746:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010474a:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104751:	00 00 00 
ffff800000104754:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104758:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010475b:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104762:	00 00 00 
ffff800000104765:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104769:	e9 c5 00 00 00       	jmp    ffff800000104833 <color_printk+0x4db>
ffff80000010476e:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104774:	48 63 d0             	movslq %eax,%rdx
ffff800000104777:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff80000010477e:	00 00 00 
ffff800000104781:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104785:	48 01 d0             	add    %rdx,%rax
ffff800000104788:	0f b6 00             	movzbl (%rax),%eax
ffff80000010478b:	0f b6 f8             	movzbl %al,%edi
ffff80000010478e:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104795:	00 00 00 
ffff800000104798:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010479c:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047a3:	00 00 00 
ffff8000001047a6:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001047aa:	89 d1                	mov    %edx,%ecx
ffff8000001047ac:	0f af c8             	imul   %eax,%ecx
ffff8000001047af:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047b6:	00 00 00 
ffff8000001047b9:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001047bd:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047c4:	00 00 00 
ffff8000001047c7:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001047cb:	0f af d0             	imul   %eax,%edx
ffff8000001047ce:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047d5:	00 00 00 
ffff8000001047d8:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001047db:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047e2:	00 00 00 
ffff8000001047e5:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001047ea:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff8000001047f1:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff8000001047f8:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001047fc:	57                   	push   %rdi
ffff8000001047fd:	48 89 c7             	mov    %rax,%rdi
ffff800000104800:	48 b8 4c b4 ff ff ff 	movabs $0xffffffffffffb44c,%rax
ffff800000104807:	ff ff ff 
ffff80000010480a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010480e:	ff d0                	call   *%rax
ffff800000104810:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104814:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010481b:	00 00 00 
ffff80000010481e:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104822:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104825:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010482c:	00 00 00 
ffff80000010482f:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104833:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010483a:	00 00 00 
ffff80000010483d:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104841:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104848:	00 00 00 
ffff80000010484b:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff80000010484e:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104855:	00 00 00 
ffff800000104858:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010485c:	99                   	cltd
ffff80000010485d:	f7 fe                	idiv   %esi
ffff80000010485f:	39 c1                	cmp    %eax,%ecx
ffff800000104861:	7c 31                	jl     ffff800000104894 <color_printk+0x53c>
ffff800000104863:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010486a:	00 00 00 
ffff80000010486d:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104871:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104874:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010487b:	00 00 00 
ffff80000010487e:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104882:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104889:	00 00 00 
ffff80000010488c:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104893:	00 
ffff800000104894:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010489b:	00 00 00 
ffff80000010489e:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff8000001048a2:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048a9:	00 00 00 
ffff8000001048ac:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001048b0:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001048b7:	00 00 00 
ffff8000001048ba:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff8000001048be:	99                   	cltd
ffff8000001048bf:	f7 ff                	idiv   %edi
ffff8000001048c1:	39 c1                	cmp    %eax,%ecx
ffff8000001048c3:	7c 12                	jl     ffff8000001048d7 <color_printk+0x57f>
ffff8000001048c5:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001048cc:	00 00 00 
ffff8000001048cf:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001048d6:	00 
ffff8000001048d7:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff8000001048de:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001048e4:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff8000001048ea:	0f 8c 6d fb ff ff    	jl     ffff80000010445d <color_printk+0x105>
ffff8000001048f0:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff8000001048f7:	0f 85 60 fb ff ff    	jne    ffff80000010445d <color_printk+0x105>
ffff8000001048fd:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff800000104903:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104907:	c9                   	leave
ffff800000104908:	c3                   	ret

ffff800000104909 <clear_screen>:
ffff800000104909:	f3 0f 1e fa          	endbr64
ffff80000010490d:	55                   	push   %rbp
ffff80000010490e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104911:	53                   	push   %rbx
ffff800000104912:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104916:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104916 <clear_screen+0xd>
ffff80000010491d:	49 bb ea 44 00 00 00 	movabs $0x44ea,%r11
ffff800000104924:	00 00 00 
ffff800000104927:	4c 01 db             	add    %r11,%rbx
ffff80000010492a:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff80000010492d:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104930:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104937:	00 00 00 
ffff80000010493a:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff80000010493d:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104944:	00 00 00 
ffff800000104947:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff80000010494b:	99                   	cltd
ffff80000010494c:	f7 f9                	idiv   %ecx
ffff80000010494e:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104951:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104958:	00 00 00 
ffff80000010495b:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff80000010495f:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104966:	00 00 00 
ffff800000104969:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff80000010496d:	99                   	cltd
ffff80000010496e:	f7 fe                	idiv   %esi
ffff800000104970:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104973:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff80000010497a:	e9 83 00 00 00       	jmp    ffff800000104a02 <clear_screen+0xf9>
ffff80000010497f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104986:	eb 6e                	jmp    ffff8000001049f6 <clear_screen+0xed>
ffff800000104988:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010498f:	00 00 00 
ffff800000104992:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104996:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff80000010499a:	89 c1                	mov    %eax,%ecx
ffff80000010499c:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049a3:	00 00 00 
ffff8000001049a6:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001049aa:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff8000001049ae:	89 c2                	mov    %eax,%edx
ffff8000001049b0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049b7:	00 00 00 
ffff8000001049ba:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001049bd:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049c4:	00 00 00 
ffff8000001049c7:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001049cc:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff8000001049d0:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff8000001049d3:	6a 20                	push   $0x20
ffff8000001049d5:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049d8:	41 89 f8             	mov    %edi,%r8d
ffff8000001049db:	48 89 c7             	mov    %rax,%rdi
ffff8000001049de:	48 b8 4c b4 ff ff ff 	movabs $0xffffffffffffb44c,%rax
ffff8000001049e5:	ff ff ff 
ffff8000001049e8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049ec:	ff d0                	call   *%rax
ffff8000001049ee:	48 83 c4 08          	add    $0x8,%rsp
ffff8000001049f2:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff8000001049f6:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff8000001049f9:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff8000001049fc:	7c 8a                	jl     ffff800000104988 <clear_screen+0x7f>
ffff8000001049fe:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff800000104a02:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000104a05:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff800000104a08:	0f 8c 71 ff ff ff    	jl     ffff80000010497f <clear_screen+0x76>
ffff800000104a0e:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104a15:	00 00 00 
ffff800000104a18:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104a1f:	00 
ffff800000104a20:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104a27:	00 00 00 
ffff800000104a2a:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104a31:	00 
ffff800000104a32:	90                   	nop
ffff800000104a33:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104a37:	c9                   	leave
ffff800000104a38:	c3                   	ret

ffff800000104a39 <skip_atoi2>:
ffff800000104a39:	f3 0f 1e fa          	endbr64
ffff800000104a3d:	55                   	push   %rbp
ffff800000104a3e:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a41:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104a41 <skip_atoi2+0x8>
ffff800000104a48:	49 bb bf 43 00 00 00 	movabs $0x43bf,%r11
ffff800000104a4f:	00 00 00 
ffff800000104a52:	4c 01 d8             	add    %r11,%rax
ffff800000104a55:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104a59:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104a60:	eb 39                	jmp    ffff800000104a9b <skip_atoi2+0x62>
ffff800000104a62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a66:	48 8b 00             	mov    (%rax),%rax
ffff800000104a69:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a6c:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104a6f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a73:	48 8b 00             	mov    (%rax),%rax
ffff800000104a76:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104a7a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a7e:	48 89 10             	mov    %rdx,(%rax)
ffff800000104a81:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104a84:	89 d0                	mov    %edx,%eax
ffff800000104a86:	c1 e0 02             	shl    $0x2,%eax
ffff800000104a89:	01 d0                	add    %edx,%eax
ffff800000104a8b:	01 c0                	add    %eax,%eax
ffff800000104a8d:	89 c2                	mov    %eax,%edx
ffff800000104a8f:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104a93:	83 e8 30             	sub    $0x30,%eax
ffff800000104a96:	01 d0                	add    %edx,%eax
ffff800000104a98:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104a9b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a9f:	48 8b 00             	mov    (%rax),%rax
ffff800000104aa2:	0f b6 00             	movzbl (%rax),%eax
ffff800000104aa5:	3c 2f                	cmp    $0x2f,%al
ffff800000104aa7:	7e 0e                	jle    ffff800000104ab7 <skip_atoi2+0x7e>
ffff800000104aa9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104aad:	48 8b 00             	mov    (%rax),%rax
ffff800000104ab0:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ab3:	3c 39                	cmp    $0x39,%al
ffff800000104ab5:	7e ab                	jle    ffff800000104a62 <skip_atoi2+0x29>
ffff800000104ab7:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104aba:	5d                   	pop    %rbp
ffff800000104abb:	c3                   	ret

ffff800000104abc <skip_atoi>:
ffff800000104abc:	f3 0f 1e fa          	endbr64
ffff800000104ac0:	55                   	push   %rbp
ffff800000104ac1:	48 89 e5             	mov    %rsp,%rbp
ffff800000104ac4:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104ac4 <skip_atoi+0x8>
ffff800000104acb:	49 bb 3c 43 00 00 00 	movabs $0x433c,%r11
ffff800000104ad2:	00 00 00 
ffff800000104ad5:	4c 01 d8             	add    %r11,%rax
ffff800000104ad8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104adc:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104ae3:	eb 2c                	jmp    ffff800000104b11 <skip_atoi+0x55>
ffff800000104ae5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ae9:	48 8b 00             	mov    (%rax),%rax
ffff800000104aec:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104af0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104af4:	48 89 10             	mov    %rdx,(%rax)
ffff800000104af7:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104afa:	89 d0                	mov    %edx,%eax
ffff800000104afc:	c1 e0 02             	shl    $0x2,%eax
ffff800000104aff:	01 d0                	add    %edx,%eax
ffff800000104b01:	01 c0                	add    %eax,%eax
ffff800000104b03:	89 c2                	mov    %eax,%edx
ffff800000104b05:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104b09:	83 e8 30             	sub    $0x30,%eax
ffff800000104b0c:	01 d0                	add    %edx,%eax
ffff800000104b0e:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104b11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b15:	48 8b 00             	mov    (%rax),%rax
ffff800000104b18:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b1b:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104b1e:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104b22:	7e 13                	jle    ffff800000104b37 <skip_atoi+0x7b>
ffff800000104b24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104b28:	48 8b 00             	mov    (%rax),%rax
ffff800000104b2b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b2e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104b31:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104b35:	7e ae                	jle    ffff800000104ae5 <skip_atoi+0x29>
ffff800000104b37:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104b3a:	5d                   	pop    %rbp
ffff800000104b3b:	c3                   	ret

ffff800000104b3c <number>:
ffff800000104b3c:	f3 0f 1e fa          	endbr64
ffff800000104b40:	55                   	push   %rbp
ffff800000104b41:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b44:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104b44 <number+0x8>
ffff800000104b4b:	49 bb bc 42 00 00 00 	movabs $0x42bc,%r11
ffff800000104b52:	00 00 00 
ffff800000104b55:	4c 01 d8             	add    %r11,%rax
ffff800000104b58:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104b5c:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104b60:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104b63:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104b66:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104b6a:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104b6e:	48 ba 08 ca ff ff ff 	movabs $0xffffffffffffca08,%rdx
ffff800000104b75:	ff ff ff 
ffff800000104b78:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104b7c:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104b80:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104b87:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104b8a:	83 e2 40             	and    $0x40,%edx
ffff800000104b8d:	85 d2                	test   %edx,%edx
ffff800000104b8f:	74 12                	je     ffff800000104ba3 <number+0x67>
ffff800000104b91:	48 ba 30 ca ff ff ff 	movabs $0xffffffffffffca30,%rdx
ffff800000104b98:	ff ff ff 
ffff800000104b9b:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104b9f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104ba3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104ba6:	83 e0 10             	and    $0x10,%eax
ffff800000104ba9:	85 c0                	test   %eax,%eax
ffff800000104bab:	74 04                	je     ffff800000104bb1 <number+0x75>
ffff800000104bad:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104bb1:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104bb5:	7e 06                	jle    ffff800000104bbd <number+0x81>
ffff800000104bb7:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104bbb:	7e 0a                	jle    ffff800000104bc7 <number+0x8b>
ffff800000104bbd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104bc2:	e9 0f 02 00 00       	jmp    ffff800000104dd6 <number+0x29a>
ffff800000104bc7:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bca:	83 e0 01             	and    $0x1,%eax
ffff800000104bcd:	85 c0                	test   %eax,%eax
ffff800000104bcf:	74 07                	je     ffff800000104bd8 <number+0x9c>
ffff800000104bd1:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104bd6:	eb 05                	jmp    ffff800000104bdd <number+0xa1>
ffff800000104bd8:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104bdd:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104be0:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104be4:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104be7:	83 e0 02             	and    $0x2,%eax
ffff800000104bea:	85 c0                	test   %eax,%eax
ffff800000104bec:	74 11                	je     ffff800000104bff <number+0xc3>
ffff800000104bee:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104bf3:	79 0a                	jns    ffff800000104bff <number+0xc3>
ffff800000104bf5:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104bf9:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104bfd:	eb 1d                	jmp    ffff800000104c1c <number+0xe0>
ffff800000104bff:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c02:	83 e0 04             	and    $0x4,%eax
ffff800000104c05:	85 c0                	test   %eax,%eax
ffff800000104c07:	75 0b                	jne    ffff800000104c14 <number+0xd8>
ffff800000104c09:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c0c:	c1 e0 02             	shl    $0x2,%eax
ffff800000104c0f:	83 e0 20             	and    $0x20,%eax
ffff800000104c12:	eb 05                	jmp    ffff800000104c19 <number+0xdd>
ffff800000104c14:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104c19:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104c1c:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104c20:	74 04                	je     ffff800000104c26 <number+0xea>
ffff800000104c22:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104c26:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c29:	83 e0 20             	and    $0x20,%eax
ffff800000104c2c:	85 c0                	test   %eax,%eax
ffff800000104c2e:	74 16                	je     ffff800000104c46 <number+0x10a>
ffff800000104c30:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104c34:	75 06                	jne    ffff800000104c3c <number+0x100>
ffff800000104c36:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104c3a:	eb 0a                	jmp    ffff800000104c46 <number+0x10a>
ffff800000104c3c:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104c40:	75 04                	jne    ffff800000104c46 <number+0x10a>
ffff800000104c42:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104c46:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c4b:	75 4b                	jne    ffff800000104c98 <number+0x15c>
ffff800000104c4d:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c50:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c53:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104c56:	48 98                	cltq
ffff800000104c58:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104c5d:	eb 40                	jmp    ffff800000104c9f <number+0x163>
ffff800000104c5f:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104c62:	48 63 c8             	movslq %eax,%rcx
ffff800000104c65:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104c69:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104c6e:	48 f7 f1             	div    %rcx
ffff800000104c71:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104c75:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104c78:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104c7b:	48 63 d0             	movslq %eax,%rdx
ffff800000104c7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104c82:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104c86:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c89:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c8c:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104c8f:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104c92:	48 98                	cltq
ffff800000104c94:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104c98:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c9d:	75 c0                	jne    ffff800000104c5f <number+0x123>
ffff800000104c9f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104ca2:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104ca5:	7e 06                	jle    ffff800000104cad <number+0x171>
ffff800000104ca7:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104caa:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104cad:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104cb0:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104cb3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104cb6:	83 e0 11             	and    $0x11,%eax
ffff800000104cb9:	85 c0                	test   %eax,%eax
ffff800000104cbb:	75 1e                	jne    ffff800000104cdb <number+0x19f>
ffff800000104cbd:	eb 0f                	jmp    ffff800000104cce <number+0x192>
ffff800000104cbf:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104cc3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cc7:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ccb:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104cce:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104cd1:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104cd4:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104cd7:	85 c0                	test   %eax,%eax
ffff800000104cd9:	7f e4                	jg     ffff800000104cbf <number+0x183>
ffff800000104cdb:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104cdf:	74 12                	je     ffff800000104cf3 <number+0x1b7>
ffff800000104ce1:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ce5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ce9:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ced:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104cf1:	88 10                	mov    %dl,(%rax)
ffff800000104cf3:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104cf6:	83 e0 20             	and    $0x20,%eax
ffff800000104cf9:	85 c0                	test   %eax,%eax
ffff800000104cfb:	74 45                	je     ffff800000104d42 <number+0x206>
ffff800000104cfd:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104d01:	75 11                	jne    ffff800000104d14 <number+0x1d8>
ffff800000104d03:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d07:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d0b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d0f:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d12:	eb 2e                	jmp    ffff800000104d42 <number+0x206>
ffff800000104d14:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104d18:	75 28                	jne    ffff800000104d42 <number+0x206>
ffff800000104d1a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d1e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d22:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d26:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d29:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104d2d:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104d31:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d35:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d39:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d3d:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104d40:	88 10                	mov    %dl,(%rax)
ffff800000104d42:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d45:	83 e0 10             	and    $0x10,%eax
ffff800000104d48:	85 c0                	test   %eax,%eax
ffff800000104d4a:	75 32                	jne    ffff800000104d7e <number+0x242>
ffff800000104d4c:	eb 12                	jmp    ffff800000104d60 <number+0x224>
ffff800000104d4e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d52:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d56:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d5a:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104d5e:	88 10                	mov    %dl,(%rax)
ffff800000104d60:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104d63:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d66:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104d69:	85 c0                	test   %eax,%eax
ffff800000104d6b:	7f e1                	jg     ffff800000104d4e <number+0x212>
ffff800000104d6d:	eb 0f                	jmp    ffff800000104d7e <number+0x242>
ffff800000104d6f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d73:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d77:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d7b:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d7e:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104d81:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d84:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104d87:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104d8a:	7c e3                	jl     ffff800000104d6f <number+0x233>
ffff800000104d8c:	eb 19                	jmp    ffff800000104da7 <number+0x26b>
ffff800000104d8e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d92:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d96:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d9a:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104d9d:	48 63 d2             	movslq %edx,%rdx
ffff800000104da0:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104da5:	88 10                	mov    %dl,(%rax)
ffff800000104da7:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104daa:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104dad:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104db0:	85 c0                	test   %eax,%eax
ffff800000104db2:	7f da                	jg     ffff800000104d8e <number+0x252>
ffff800000104db4:	eb 0f                	jmp    ffff800000104dc5 <number+0x289>
ffff800000104db6:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104dba:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104dbe:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104dc2:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104dc5:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104dc8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104dcb:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104dce:	85 c0                	test   %eax,%eax
ffff800000104dd0:	7f e4                	jg     ffff800000104db6 <number+0x27a>
ffff800000104dd2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104dd6:	5d                   	pop    %rbp
ffff800000104dd7:	c3                   	ret

ffff800000104dd8 <vsprintf>:
ffff800000104dd8:	f3 0f 1e fa          	endbr64
ffff800000104ddc:	55                   	push   %rbp
ffff800000104ddd:	48 89 e5             	mov    %rsp,%rbp
ffff800000104de0:	53                   	push   %rbx
ffff800000104de1:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104de5:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104de5 <vsprintf+0xd>
ffff800000104dec:	49 bb 1b 40 00 00 00 	movabs $0x401b,%r11
ffff800000104df3:	00 00 00 
ffff800000104df6:	4c 01 db             	add    %r11,%rbx
ffff800000104df9:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104dfd:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104e01:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000104e05:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104e09:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104e0d:	e9 f8 08 00 00       	jmp    ffff80000010570a <vsprintf+0x932>
ffff800000104e12:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e16:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e19:	3c 25                	cmp    $0x25,%al
ffff800000104e1b:	74 1a                	je     ffff800000104e37 <vsprintf+0x5f>
ffff800000104e1d:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000104e21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104e25:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000104e29:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104e2d:	0f b6 12             	movzbl (%rdx),%edx
ffff800000104e30:	88 10                	mov    %dl,(%rax)
ffff800000104e32:	e9 c7 08 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff800000104e37:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000104e3e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e42:	48 83 c0 01          	add    $0x1,%rax
ffff800000104e46:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e4a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e4e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e51:	0f be c0             	movsbl %al,%eax
ffff800000104e54:	83 e8 20             	sub    $0x20,%eax
ffff800000104e57:	83 f8 10             	cmp    $0x10,%eax
ffff800000104e5a:	77 40                	ja     ffff800000104e9c <vsprintf+0xc4>
ffff800000104e5c:	89 c0                	mov    %eax,%eax
ffff800000104e5e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000104e65:	00 
ffff800000104e66:	48 8d 05 eb 09 00 00 	lea    0x9eb(%rip),%rax        # ffff800000105858 <.LC1+0x28>
ffff800000104e6d:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000104e71:	48 8d 15 e0 09 00 00 	lea    0x9e0(%rip),%rdx        # ffff800000105858 <.LC1+0x28>
ffff800000104e78:	48 01 d0             	add    %rdx,%rax
ffff800000104e7b:	3e ff e0             	notrack jmp *%rax
ffff800000104e7e:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104e82:	eb ba                	jmp    ffff800000104e3e <vsprintf+0x66>
ffff800000104e84:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000104e88:	eb b4                	jmp    ffff800000104e3e <vsprintf+0x66>
ffff800000104e8a:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000104e8e:	eb ae                	jmp    ffff800000104e3e <vsprintf+0x66>
ffff800000104e90:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000104e94:	eb a8                	jmp    ffff800000104e3e <vsprintf+0x66>
ffff800000104e96:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000104e9a:	eb a2                	jmp    ffff800000104e3e <vsprintf+0x66>
ffff800000104e9c:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000104ea3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ea7:	0f b6 00             	movzbl (%rax),%eax
ffff800000104eaa:	3c 2f                	cmp    $0x2f,%al
ffff800000104eac:	7e 27                	jle    ffff800000104ed5 <vsprintf+0xfd>
ffff800000104eae:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104eb2:	0f b6 00             	movzbl (%rax),%eax
ffff800000104eb5:	3c 39                	cmp    $0x39,%al
ffff800000104eb7:	7f 1c                	jg     ffff800000104ed5 <vsprintf+0xfd>
ffff800000104eb9:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104ebd:	48 89 c7             	mov    %rax,%rdi
ffff800000104ec0:	48 b8 bc bc ff ff ff 	movabs $0xffffffffffffbcbc,%rax
ffff800000104ec7:	ff ff ff 
ffff800000104eca:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ece:	ff d0                	call   *%rax
ffff800000104ed0:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104ed3:	eb 6c                	jmp    ffff800000104f41 <vsprintf+0x169>
ffff800000104ed5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ed9:	0f b6 00             	movzbl (%rax),%eax
ffff800000104edc:	3c 2a                	cmp    $0x2a,%al
ffff800000104ede:	75 61                	jne    ffff800000104f41 <vsprintf+0x169>
ffff800000104ee0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ee4:	48 83 c0 01          	add    $0x1,%rax
ffff800000104ee8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104eec:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104ef0:	8b 00                	mov    (%rax),%eax
ffff800000104ef2:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104ef5:	77 24                	ja     ffff800000104f1b <vsprintf+0x143>
ffff800000104ef7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104efb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104eff:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f03:	8b 00                	mov    (%rax),%eax
ffff800000104f05:	89 c0                	mov    %eax,%eax
ffff800000104f07:	48 01 d0             	add    %rdx,%rax
ffff800000104f0a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f0e:	8b 12                	mov    (%rdx),%edx
ffff800000104f10:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104f13:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f17:	89 0a                	mov    %ecx,(%rdx)
ffff800000104f19:	eb 14                	jmp    ffff800000104f2f <vsprintf+0x157>
ffff800000104f1b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f1f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104f23:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104f27:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104f2b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104f2f:	8b 00                	mov    (%rax),%eax
ffff800000104f31:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104f34:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000104f38:	79 07                	jns    ffff800000104f41 <vsprintf+0x169>
ffff800000104f3a:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000104f3d:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104f41:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000104f48:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f4c:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f4f:	3c 2e                	cmp    $0x2e,%al
ffff800000104f51:	0f 85 aa 00 00 00    	jne    ffff800000105001 <vsprintf+0x229>
ffff800000104f57:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f5b:	48 83 c0 01          	add    $0x1,%rax
ffff800000104f5f:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f63:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f67:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f6a:	3c 2f                	cmp    $0x2f,%al
ffff800000104f6c:	7e 27                	jle    ffff800000104f95 <vsprintf+0x1bd>
ffff800000104f6e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f72:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f75:	3c 39                	cmp    $0x39,%al
ffff800000104f77:	7f 1c                	jg     ffff800000104f95 <vsprintf+0x1bd>
ffff800000104f79:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104f7d:	48 89 c7             	mov    %rax,%rdi
ffff800000104f80:	48 b8 bc bc ff ff ff 	movabs $0xffffffffffffbcbc,%rax
ffff800000104f87:	ff ff ff 
ffff800000104f8a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f8e:	ff d0                	call   *%rax
ffff800000104f90:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000104f93:	eb 5f                	jmp    ffff800000104ff4 <vsprintf+0x21c>
ffff800000104f95:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f99:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f9c:	3c 2a                	cmp    $0x2a,%al
ffff800000104f9e:	75 54                	jne    ffff800000104ff4 <vsprintf+0x21c>
ffff800000104fa0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fa4:	48 83 c0 01          	add    $0x1,%rax
ffff800000104fa8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104fac:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fb0:	8b 00                	mov    (%rax),%eax
ffff800000104fb2:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104fb5:	77 24                	ja     ffff800000104fdb <vsprintf+0x203>
ffff800000104fb7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fbb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104fbf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fc3:	8b 00                	mov    (%rax),%eax
ffff800000104fc5:	89 c0                	mov    %eax,%eax
ffff800000104fc7:	48 01 d0             	add    %rdx,%rax
ffff800000104fca:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104fce:	8b 12                	mov    (%rdx),%edx
ffff800000104fd0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104fd3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104fd7:	89 0a                	mov    %ecx,(%rdx)
ffff800000104fd9:	eb 14                	jmp    ffff800000104fef <vsprintf+0x217>
ffff800000104fdb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fdf:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104fe3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104fe7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104feb:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104fef:	8b 00                	mov    (%rax),%eax
ffff800000104ff1:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000104ff4:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000104ff8:	79 07                	jns    ffff800000105001 <vsprintf+0x229>
ffff800000104ffa:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000105001:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff800000105008:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010500c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010500f:	3c 68                	cmp    $0x68,%al
ffff800000105011:	74 21                	je     ffff800000105034 <vsprintf+0x25c>
ffff800000105013:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105017:	0f b6 00             	movzbl (%rax),%eax
ffff80000010501a:	3c 6c                	cmp    $0x6c,%al
ffff80000010501c:	74 16                	je     ffff800000105034 <vsprintf+0x25c>
ffff80000010501e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105022:	0f b6 00             	movzbl (%rax),%eax
ffff800000105025:	3c 4c                	cmp    $0x4c,%al
ffff800000105027:	74 0b                	je     ffff800000105034 <vsprintf+0x25c>
ffff800000105029:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010502d:	0f b6 00             	movzbl (%rax),%eax
ffff800000105030:	3c 7a                	cmp    $0x7a,%al
ffff800000105032:	75 19                	jne    ffff80000010504d <vsprintf+0x275>
ffff800000105034:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105038:	0f b6 00             	movzbl (%rax),%eax
ffff80000010503b:	0f be c0             	movsbl %al,%eax
ffff80000010503e:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105041:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105045:	48 83 c0 01          	add    $0x1,%rax
ffff800000105049:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010504d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105051:	0f b6 00             	movzbl (%rax),%eax
ffff800000105054:	0f be c0             	movsbl %al,%eax
ffff800000105057:	83 e8 25             	sub    $0x25,%eax
ffff80000010505a:	83 f8 53             	cmp    $0x53,%eax
ffff80000010505d:	0f 87 5d 06 00 00    	ja     ffff8000001056c0 <vsprintf+0x8e8>
ffff800000105063:	89 c0                	mov    %eax,%eax
ffff800000105065:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010506c:	00 
ffff80000010506d:	48 8d 05 6c 08 00 00 	lea    0x86c(%rip),%rax        # ffff8000001058e0 <.LC1+0xb0>
ffff800000105074:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000105078:	48 8d 15 61 08 00 00 	lea    0x861(%rip),%rdx        # ffff8000001058e0 <.LC1+0xb0>
ffff80000010507f:	48 01 d0             	add    %rdx,%rax
ffff800000105082:	3e ff e0             	notrack jmp *%rax
ffff800000105085:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105088:	83 e0 10             	and    $0x10,%eax
ffff80000010508b:	85 c0                	test   %eax,%eax
ffff80000010508d:	75 1b                	jne    ffff8000001050aa <vsprintf+0x2d2>
ffff80000010508f:	eb 0f                	jmp    ffff8000001050a0 <vsprintf+0x2c8>
ffff800000105091:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105095:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105099:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010509d:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001050a0:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001050a4:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001050a8:	7f e7                	jg     ffff800000105091 <vsprintf+0x2b9>
ffff8000001050aa:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050ae:	8b 00                	mov    (%rax),%eax
ffff8000001050b0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050b3:	77 24                	ja     ffff8000001050d9 <vsprintf+0x301>
ffff8000001050b5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050b9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001050bd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050c1:	8b 00                	mov    (%rax),%eax
ffff8000001050c3:	89 c0                	mov    %eax,%eax
ffff8000001050c5:	48 01 d0             	add    %rdx,%rax
ffff8000001050c8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050cc:	8b 12                	mov    (%rdx),%edx
ffff8000001050ce:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001050d1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050d5:	89 0a                	mov    %ecx,(%rdx)
ffff8000001050d7:	eb 14                	jmp    ffff8000001050ed <vsprintf+0x315>
ffff8000001050d9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050dd:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001050e1:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001050e5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050e9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001050ed:	8b 08                	mov    (%rax),%ecx
ffff8000001050ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050f3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001050f7:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001050fb:	89 ca                	mov    %ecx,%edx
ffff8000001050fd:	88 10                	mov    %dl,(%rax)
ffff8000001050ff:	eb 0f                	jmp    ffff800000105110 <vsprintf+0x338>
ffff800000105101:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105105:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105109:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010510d:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105110:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105114:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000105118:	7f e7                	jg     ffff800000105101 <vsprintf+0x329>
ffff80000010511a:	e9 df 05 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff80000010511f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105123:	8b 00                	mov    (%rax),%eax
ffff800000105125:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105128:	77 24                	ja     ffff80000010514e <vsprintf+0x376>
ffff80000010512a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010512e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105132:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105136:	8b 00                	mov    (%rax),%eax
ffff800000105138:	89 c0                	mov    %eax,%eax
ffff80000010513a:	48 01 d0             	add    %rdx,%rax
ffff80000010513d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105141:	8b 12                	mov    (%rdx),%edx
ffff800000105143:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105146:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010514a:	89 0a                	mov    %ecx,(%rdx)
ffff80000010514c:	eb 14                	jmp    ffff800000105162 <vsprintf+0x38a>
ffff80000010514e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105152:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105156:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010515a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010515e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105162:	48 8b 00             	mov    (%rax),%rax
ffff800000105165:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000105169:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010516e:	75 08                	jne    ffff800000105178 <vsprintf+0x3a0>
ffff800000105170:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105177:	00 
ffff800000105178:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010517c:	48 89 c7             	mov    %rax,%rdi
ffff80000010517f:	48 b8 08 b4 ff ff ff 	movabs $0xffffffffffffb408,%rax
ffff800000105186:	ff ff ff 
ffff800000105189:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010518d:	ff d0                	call   *%rax
ffff80000010518f:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105192:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105196:	79 08                	jns    ffff8000001051a0 <vsprintf+0x3c8>
ffff800000105198:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010519b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff80000010519e:	eb 0e                	jmp    ffff8000001051ae <vsprintf+0x3d6>
ffff8000001051a0:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001051a3:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff8000001051a6:	7e 06                	jle    ffff8000001051ae <vsprintf+0x3d6>
ffff8000001051a8:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001051ab:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff8000001051ae:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff8000001051b1:	83 e0 10             	and    $0x10,%eax
ffff8000001051b4:	85 c0                	test   %eax,%eax
ffff8000001051b6:	75 1f                	jne    ffff8000001051d7 <vsprintf+0x3ff>
ffff8000001051b8:	eb 0f                	jmp    ffff8000001051c9 <vsprintf+0x3f1>
ffff8000001051ba:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051be:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051c2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001051c6:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051c9:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001051cc:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051cf:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001051d2:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001051d5:	7c e3                	jl     ffff8000001051ba <vsprintf+0x3e2>
ffff8000001051d7:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001051de:	eb 21                	jmp    ffff800000105201 <vsprintf+0x429>
ffff8000001051e0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001051e4:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001051e8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001051ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051f0:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001051f4:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001051f8:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001051fb:	88 10                	mov    %dl,(%rax)
ffff8000001051fd:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff800000105201:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff800000105204:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff800000105207:	7c d7                	jl     ffff8000001051e0 <vsprintf+0x408>
ffff800000105209:	eb 0f                	jmp    ffff80000010521a <vsprintf+0x442>
ffff80000010520b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010520f:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105213:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105217:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010521a:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff80000010521d:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000105220:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff800000105223:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff800000105226:	7c e3                	jl     ffff80000010520b <vsprintf+0x433>
ffff800000105228:	e9 d1 04 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff80000010522d:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105231:	0f 85 82 00 00 00    	jne    ffff8000001052b9 <vsprintf+0x4e1>
ffff800000105237:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010523b:	8b 00                	mov    (%rax),%eax
ffff80000010523d:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105240:	77 24                	ja     ffff800000105266 <vsprintf+0x48e>
ffff800000105242:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105246:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010524a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010524e:	8b 00                	mov    (%rax),%eax
ffff800000105250:	89 c0                	mov    %eax,%eax
ffff800000105252:	48 01 d0             	add    %rdx,%rax
ffff800000105255:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105259:	8b 12                	mov    (%rdx),%edx
ffff80000010525b:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010525e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105262:	89 0a                	mov    %ecx,(%rdx)
ffff800000105264:	eb 14                	jmp    ffff80000010527a <vsprintf+0x4a2>
ffff800000105266:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010526a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010526e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105272:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105276:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010527a:	48 8b 00             	mov    (%rax),%rax
ffff80000010527d:	48 89 c7             	mov    %rax,%rdi
ffff800000105280:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105283:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105286:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105289:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010528d:	41 89 f1             	mov    %esi,%r9d
ffff800000105290:	41 89 c8             	mov    %ecx,%r8d
ffff800000105293:	89 d1                	mov    %edx,%ecx
ffff800000105295:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010529a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010529d:	48 89 c7             	mov    %rax,%rdi
ffff8000001052a0:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff8000001052a7:	ff ff ff 
ffff8000001052aa:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052ae:	ff d0                	call   *%rax
ffff8000001052b0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001052b4:	e9 45 04 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001052b9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052bd:	8b 00                	mov    (%rax),%eax
ffff8000001052bf:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001052c2:	77 24                	ja     ffff8000001052e8 <vsprintf+0x510>
ffff8000001052c4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052c8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001052cc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052d0:	8b 00                	mov    (%rax),%eax
ffff8000001052d2:	89 c0                	mov    %eax,%eax
ffff8000001052d4:	48 01 d0             	add    %rdx,%rax
ffff8000001052d7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052db:	8b 12                	mov    (%rdx),%edx
ffff8000001052dd:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052e0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052e4:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052e6:	eb 14                	jmp    ffff8000001052fc <vsprintf+0x524>
ffff8000001052e8:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052ec:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052f0:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052f4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052f8:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052fc:	8b 00                	mov    (%rax),%eax
ffff8000001052fe:	89 c7                	mov    %eax,%edi
ffff800000105300:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105303:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105306:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff800000105309:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010530d:	41 89 f1             	mov    %esi,%r9d
ffff800000105310:	41 89 c8             	mov    %ecx,%r8d
ffff800000105313:	89 d1                	mov    %edx,%ecx
ffff800000105315:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010531a:	48 89 fe             	mov    %rdi,%rsi
ffff80000010531d:	48 89 c7             	mov    %rax,%rdi
ffff800000105320:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff800000105327:	ff ff ff 
ffff80000010532a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010532e:	ff d0                	call   *%rax
ffff800000105330:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105334:	e9 c5 03 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff800000105339:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010533d:	75 0b                	jne    ffff80000010534a <vsprintf+0x572>
ffff80000010533f:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105346:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010534a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010534e:	8b 00                	mov    (%rax),%eax
ffff800000105350:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105353:	77 24                	ja     ffff800000105379 <vsprintf+0x5a1>
ffff800000105355:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105359:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010535d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105361:	8b 00                	mov    (%rax),%eax
ffff800000105363:	89 c0                	mov    %eax,%eax
ffff800000105365:	48 01 d0             	add    %rdx,%rax
ffff800000105368:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010536c:	8b 12                	mov    (%rdx),%edx
ffff80000010536e:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105371:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105375:	89 0a                	mov    %ecx,(%rdx)
ffff800000105377:	eb 14                	jmp    ffff80000010538d <vsprintf+0x5b5>
ffff800000105379:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010537d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105381:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105385:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105389:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010538d:	48 8b 00             	mov    (%rax),%rax
ffff800000105390:	48 89 c7             	mov    %rax,%rdi
ffff800000105393:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105396:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105399:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010539c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053a0:	41 89 f1             	mov    %esi,%r9d
ffff8000001053a3:	41 89 c8             	mov    %ecx,%r8d
ffff8000001053a6:	89 d1                	mov    %edx,%ecx
ffff8000001053a8:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001053ad:	48 89 fe             	mov    %rdi,%rsi
ffff8000001053b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001053b3:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff8000001053ba:	ff ff ff 
ffff8000001053bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053c1:	ff d0                	call   *%rax
ffff8000001053c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001053c7:	e9 32 03 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001053cc:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001053d0:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001053d4:	0f 85 82 00 00 00    	jne    ffff80000010545c <vsprintf+0x684>
ffff8000001053da:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053de:	8b 00                	mov    (%rax),%eax
ffff8000001053e0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001053e3:	77 24                	ja     ffff800000105409 <vsprintf+0x631>
ffff8000001053e5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053e9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053ed:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053f1:	8b 00                	mov    (%rax),%eax
ffff8000001053f3:	89 c0                	mov    %eax,%eax
ffff8000001053f5:	48 01 d0             	add    %rdx,%rax
ffff8000001053f8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053fc:	8b 12                	mov    (%rdx),%edx
ffff8000001053fe:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105401:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105405:	89 0a                	mov    %ecx,(%rdx)
ffff800000105407:	eb 14                	jmp    ffff80000010541d <vsprintf+0x645>
ffff800000105409:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010540d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105411:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105415:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105419:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010541d:	48 8b 00             	mov    (%rax),%rax
ffff800000105420:	48 89 c7             	mov    %rax,%rdi
ffff800000105423:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105426:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105429:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010542c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105430:	41 89 f1             	mov    %esi,%r9d
ffff800000105433:	41 89 c8             	mov    %ecx,%r8d
ffff800000105436:	89 d1                	mov    %edx,%ecx
ffff800000105438:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010543d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105440:	48 89 c7             	mov    %rax,%rdi
ffff800000105443:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff80000010544a:	ff ff ff 
ffff80000010544d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105451:	ff d0                	call   *%rax
ffff800000105453:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105457:	e9 a2 02 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff80000010545c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105460:	8b 00                	mov    (%rax),%eax
ffff800000105462:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105465:	77 24                	ja     ffff80000010548b <vsprintf+0x6b3>
ffff800000105467:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010546b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010546f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105473:	8b 00                	mov    (%rax),%eax
ffff800000105475:	89 c0                	mov    %eax,%eax
ffff800000105477:	48 01 d0             	add    %rdx,%rax
ffff80000010547a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010547e:	8b 12                	mov    (%rdx),%edx
ffff800000105480:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105483:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105487:	89 0a                	mov    %ecx,(%rdx)
ffff800000105489:	eb 14                	jmp    ffff80000010549f <vsprintf+0x6c7>
ffff80000010548b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010548f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105493:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105497:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010549b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010549f:	8b 00                	mov    (%rax),%eax
ffff8000001054a1:	89 c7                	mov    %eax,%edi
ffff8000001054a3:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001054a6:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001054a9:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001054ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054b0:	41 89 f1             	mov    %esi,%r9d
ffff8000001054b3:	41 89 c8             	mov    %ecx,%r8d
ffff8000001054b6:	89 d1                	mov    %edx,%ecx
ffff8000001054b8:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001054bd:	48 89 fe             	mov    %rdi,%rsi
ffff8000001054c0:	48 89 c7             	mov    %rax,%rdi
ffff8000001054c3:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff8000001054ca:	ff ff ff 
ffff8000001054cd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054d1:	ff d0                	call   *%rax
ffff8000001054d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001054d7:	e9 22 02 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001054dc:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001054e0:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001054e4:	0f 85 82 00 00 00    	jne    ffff80000010556c <vsprintf+0x794>
ffff8000001054ea:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054ee:	8b 00                	mov    (%rax),%eax
ffff8000001054f0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054f3:	77 24                	ja     ffff800000105519 <vsprintf+0x741>
ffff8000001054f5:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054f9:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105501:	8b 00                	mov    (%rax),%eax
ffff800000105503:	89 c0                	mov    %eax,%eax
ffff800000105505:	48 01 d0             	add    %rdx,%rax
ffff800000105508:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010550c:	8b 12                	mov    (%rdx),%edx
ffff80000010550e:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105511:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105515:	89 0a                	mov    %ecx,(%rdx)
ffff800000105517:	eb 14                	jmp    ffff80000010552d <vsprintf+0x755>
ffff800000105519:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010551d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105521:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105525:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105529:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010552d:	48 8b 00             	mov    (%rax),%rax
ffff800000105530:	48 89 c7             	mov    %rax,%rdi
ffff800000105533:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105536:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105539:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010553c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105540:	41 89 f1             	mov    %esi,%r9d
ffff800000105543:	41 89 c8             	mov    %ecx,%r8d
ffff800000105546:	89 d1                	mov    %edx,%ecx
ffff800000105548:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010554d:	48 89 fe             	mov    %rdi,%rsi
ffff800000105550:	48 89 c7             	mov    %rax,%rdi
ffff800000105553:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff80000010555a:	ff ff ff 
ffff80000010555d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105561:	ff d0                	call   *%rax
ffff800000105563:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105567:	e9 92 01 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff80000010556c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105570:	8b 00                	mov    (%rax),%eax
ffff800000105572:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105575:	77 24                	ja     ffff80000010559b <vsprintf+0x7c3>
ffff800000105577:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010557b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010557f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105583:	8b 00                	mov    (%rax),%eax
ffff800000105585:	89 c0                	mov    %eax,%eax
ffff800000105587:	48 01 d0             	add    %rdx,%rax
ffff80000010558a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010558e:	8b 12                	mov    (%rdx),%edx
ffff800000105590:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105593:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105597:	89 0a                	mov    %ecx,(%rdx)
ffff800000105599:	eb 14                	jmp    ffff8000001055af <vsprintf+0x7d7>
ffff80000010559b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010559f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055a3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055a7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ab:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001055af:	8b 00                	mov    (%rax),%eax
ffff8000001055b1:	89 c7                	mov    %eax,%edi
ffff8000001055b3:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001055b6:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001055b9:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001055bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055c0:	41 89 f1             	mov    %esi,%r9d
ffff8000001055c3:	41 89 c8             	mov    %ecx,%r8d
ffff8000001055c6:	89 d1                	mov    %edx,%ecx
ffff8000001055c8:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001055cd:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055d0:	48 89 c7             	mov    %rax,%rdi
ffff8000001055d3:	48 b8 3c bd ff ff ff 	movabs $0xffffffffffffbd3c,%rax
ffff8000001055da:	ff ff ff 
ffff8000001055dd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055e1:	ff d0                	call   *%rax
ffff8000001055e3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055e7:	e9 12 01 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001055ec:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055f0:	75 61                	jne    ffff800000105653 <vsprintf+0x87b>
ffff8000001055f2:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f6:	8b 00                	mov    (%rax),%eax
ffff8000001055f8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055fb:	77 24                	ja     ffff800000105621 <vsprintf+0x849>
ffff8000001055fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105601:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105605:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105609:	8b 00                	mov    (%rax),%eax
ffff80000010560b:	89 c0                	mov    %eax,%eax
ffff80000010560d:	48 01 d0             	add    %rdx,%rax
ffff800000105610:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105614:	8b 12                	mov    (%rdx),%edx
ffff800000105616:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105619:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010561d:	89 0a                	mov    %ecx,(%rdx)
ffff80000010561f:	eb 14                	jmp    ffff800000105635 <vsprintf+0x85d>
ffff800000105621:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105625:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105629:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010562d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105631:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105635:	48 8b 00             	mov    (%rax),%rax
ffff800000105638:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010563c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105640:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105644:	48 89 c2             	mov    %rax,%rdx
ffff800000105647:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010564b:	48 89 10             	mov    %rdx,(%rax)
ffff80000010564e:	e9 ab 00 00 00       	jmp    ffff8000001056fe <vsprintf+0x926>
ffff800000105653:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105657:	8b 00                	mov    (%rax),%eax
ffff800000105659:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010565c:	77 24                	ja     ffff800000105682 <vsprintf+0x8aa>
ffff80000010565e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105662:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105666:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010566a:	8b 00                	mov    (%rax),%eax
ffff80000010566c:	89 c0                	mov    %eax,%eax
ffff80000010566e:	48 01 d0             	add    %rdx,%rax
ffff800000105671:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105675:	8b 12                	mov    (%rdx),%edx
ffff800000105677:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010567a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010567e:	89 0a                	mov    %ecx,(%rdx)
ffff800000105680:	eb 14                	jmp    ffff800000105696 <vsprintf+0x8be>
ffff800000105682:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105686:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010568a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010568e:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105692:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105696:	48 8b 00             	mov    (%rax),%rax
ffff800000105699:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010569d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056a1:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001056a5:	89 c2                	mov    %eax,%edx
ffff8000001056a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001056ab:	89 10                	mov    %edx,(%rax)
ffff8000001056ad:	eb 4f                	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001056af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056b3:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056b7:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056bb:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001056be:	eb 3e                	jmp    ffff8000001056fe <vsprintf+0x926>
ffff8000001056c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056c4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001056c8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056cc:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001056cf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056d3:	0f b6 00             	movzbl (%rax),%eax
ffff8000001056d6:	84 c0                	test   %al,%al
ffff8000001056d8:	74 17                	je     ffff8000001056f1 <vsprintf+0x919>
ffff8000001056da:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001056de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056e2:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001056e6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001056ea:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001056ed:	88 10                	mov    %dl,(%rax)
ffff8000001056ef:	eb 0c                	jmp    ffff8000001056fd <vsprintf+0x925>
ffff8000001056f1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056f5:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001056f9:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001056fd:	90                   	nop
ffff8000001056fe:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105702:	48 83 c0 01          	add    $0x1,%rax
ffff800000105706:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010570a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010570e:	0f b6 00             	movzbl (%rax),%eax
ffff800000105711:	84 c0                	test   %al,%al
ffff800000105713:	0f 85 f9 f6 ff ff    	jne    ffff800000104e12 <vsprintf+0x3a>
ffff800000105719:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010571d:	c6 00 00             	movb   $0x0,(%rax)
ffff800000105720:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105724:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105728:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff80000010572c:	c9                   	leave
ffff80000010572d:	c3                   	ret
