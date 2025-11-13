
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 d0 9f 00 00 	lgdt   0x9fd0(%rip)        # ffff800000109fe8 <GDT_END>
ffff800000100018:	0f 01 1d d3 af 00 00 	lidt   0xafd3(%rip)        # ffff80000010aff2 <IDT_END>
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
ffff800000100099:	48 8d 3d 52 9f 00 00 	lea    0x9f52(%rip),%rdi        # ffff800000109ff2 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 3e af 00 00 	lea    0xaf3e(%rip),%rdx        # ffff80000010affc <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d 68 9e 00 00 	lea    0x9e68(%rip),%rdi        # ffff800000109f60 <GDT_Table>
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
ffff800000100168:	e8 63 6c 00 00       	call   ffff800000106dd0 <color_printk>
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
ffff800000104004:	49 bb 7c 90 00 00 00 	movabs $0x907c,%r11
ffff80000010400b:	00 00 00 
ffff80000010400e:	41 57                	push   %r15
ffff800000104010:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # ffff800000104004 <Start_Kernel+0x4>
ffff800000104017:	53                   	push   %rbx
ffff800000104018:	4d 01 df             	add    %r11,%r15
ffff80000010401b:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010401f:	0f 20 e0             	mov    %cr4,%rax
ffff800000104022:	80 cc 06             	or     $0x6,%ah
ffff800000104025:	0f 22 e0             	mov    %rax,%cr4
ffff800000104028:	48 ba c0 c6 ff ff ff 	movabs $0xffffffffffffc6c0,%rdx
ffff80000010402f:	ff ff ff 
ffff800000104032:	31 f6                	xor    %esi,%esi
ffff800000104034:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff80000010403b:	00 00 00 
ffff80000010403e:	48 b9 00 00 a0 00 00 	movabs $0xffff800000a00000,%rcx
ffff800000104045:	80 ff ff 
ffff800000104048:	66 41 0f 6f 04 17    	movdqa (%r15,%rdx,1),%xmm0
ffff80000010404e:	4a 89 4c 38 18       	mov    %rcx,0x18(%rax,%r15,1)
ffff800000104053:	48 ba f0 c6 ff ff ff 	movabs $0xffffffffffffc6f0,%rdx
ffff80000010405a:	ff ff ff 
ffff80000010405d:	48 bb 50 9d ff ff ff 	movabs $0xffffffffffff9d50,%rbx
ffff800000104064:	ff ff ff 
ffff800000104067:	49 8b 14 17          	mov    (%r15,%rdx,1),%rdx
ffff80000010406b:	4c 01 fb             	add    %r15,%rbx
ffff80000010406e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104073:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
ffff80000010407a:	4f 00 
ffff80000010407c:	41 0f 29 04 07       	movaps %xmm0,(%r15,%rax,1)
ffff800000104081:	49 89 54 07 10       	mov    %rdx,0x10(%r15,%rax,1)
ffff800000104086:	48 b8 91 c5 ff ff ff 	movabs $0xffffffffffffc591,%rax
ffff80000010408d:	ff ff ff 
ffff800000104090:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104094:	31 c0                	xor    %eax,%eax
ffff800000104096:	ff d3                	call   *%rbx
ffff800000104098:	31 f6                	xor    %esi,%esi
ffff80000010409a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010409f:	48 b8 a2 c5 ff ff ff 	movabs $0xffffffffffffc5a2,%rax
ffff8000001040a6:	ff ff ff 
ffff8000001040a9:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ad:	31 c0                	xor    %eax,%eax
ffff8000001040af:	ff d3                	call   *%rbx
ffff8000001040b1:	31 f6                	xor    %esi,%esi
ffff8000001040b3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b8:	48 b8 b0 c5 ff ff ff 	movabs $0xffffffffffffc5b0,%rax
ffff8000001040bf:	ff ff ff 
ffff8000001040c2:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040c6:	31 c0                	xor    %eax,%eax
ffff8000001040c8:	ff d3                	call   *%rbx
ffff8000001040ca:	31 f6                	xor    %esi,%esi
ffff8000001040cc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040d1:	48 b8 08 c6 ff ff ff 	movabs $0xffffffffffffc608,%rax
ffff8000001040d8:	ff ff ff 
ffff8000001040db:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040df:	31 c0                	xor    %eax,%eax
ffff8000001040e1:	ff d3                	call   *%rbx
ffff8000001040e3:	31 f6                	xor    %esi,%esi
ffff8000001040e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040ea:	48 b8 40 c6 ff ff ff 	movabs $0xffffffffffffc640,%rax
ffff8000001040f1:	ff ff ff 
ffff8000001040f4:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040f8:	31 c0                	xor    %eax,%eax
ffff8000001040fa:	ff d3                	call   *%rbx
ffff8000001040fc:	eb fe                	jmp    ffff8000001040fc <Start_Kernel+0xfc>
ffff8000001040fe:	66 90                	xchg   %ax,%ax

ffff800000104100 <number>:
ffff800000104100:	f3 0f 1e fa          	endbr64
ffff800000104104:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000104104 <number+0x4>
ffff80000010410b:	41 57                	push   %r15
ffff80000010410d:	48 89 f0             	mov    %rsi,%rax
ffff800000104110:	89 ce                	mov    %ecx,%esi
ffff800000104112:	49 bb 7c 8f 00 00 00 	movabs $0x8f7c,%r11
ffff800000104119:	00 00 00 
ffff80000010411c:	41 56                	push   %r14
ffff80000010411e:	4d 01 da             	add    %r11,%r10
ffff800000104121:	41 55                	push   %r13
ffff800000104123:	41 54                	push   %r12
ffff800000104125:	55                   	push   %rbp
ffff800000104126:	53                   	push   %rbx
ffff800000104127:	41 f6 c1 40          	test   $0x40,%r9b
ffff80000010412b:	0f 85 1f 05 00 00    	jne    ffff800000104650 <number+0x550>
ffff800000104131:	48 b9 68 c6 ff ff ff 	movabs $0xffffffffffffc668,%rcx
ffff800000104138:	ff ff ff 
ffff80000010413b:	c6 44 24 b3 58       	movb   $0x58,-0x4d(%rsp)
ffff800000104140:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
ffff800000104144:	44 89 cb             	mov    %r9d,%ebx
ffff800000104147:	83 e3 10             	and    $0x10,%ebx
ffff80000010414a:	89 5c 24 a4          	mov    %ebx,-0x5c(%rsp)
ffff80000010414e:	0f 84 c4 04 00 00    	je     ffff800000104618 <number+0x518>
ffff800000104154:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff800000104158:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff80000010415e:	bd 20 00 00 00       	mov    $0x20,%ebp
ffff800000104163:	45 89 cf             	mov    %r9d,%r15d
ffff800000104166:	41 83 e7 20          	and    $0x20,%r15d
ffff80000010416a:	41 f6 c1 02          	test   $0x2,%r9b
ffff80000010416e:	74 09                	je     ffff800000104179 <number+0x79>
ffff800000104170:	48 85 c0             	test   %rax,%rax
ffff800000104173:	0f 88 17 05 00 00    	js     ffff800000104690 <number+0x590>
ffff800000104179:	41 f6 c1 04          	test   $0x4,%r9b
ffff80000010417d:	0f 84 ed 04 00 00    	je     ffff800000104670 <number+0x570>
ffff800000104183:	c6 44 24 b2 2b       	movb   $0x2b,-0x4e(%rsp)
ffff800000104188:	83 ee 01             	sub    $0x1,%esi
ffff80000010418b:	45 85 ff             	test   %r15d,%r15d
ffff80000010418e:	74 19                	je     ffff8000001041a9 <number+0xa9>
ffff800000104190:	83 fa 10             	cmp    $0x10,%edx
ffff800000104193:	0f 84 8f 05 00 00    	je     ffff800000104728 <number+0x628>
ffff800000104199:	31 c9                	xor    %ecx,%ecx
ffff80000010419b:	83 fa 08             	cmp    $0x8,%edx
ffff80000010419e:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff8000001041a4:	0f 94 c1             	sete   %cl
ffff8000001041a7:	29 ce                	sub    %ecx,%esi
ffff8000001041a9:	48 85 c0             	test   %rax,%rax
ffff8000001041ac:	0f 85 f2 04 00 00    	jne    ffff8000001046a4 <number+0x5a4>
ffff8000001041b2:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
ffff8000001041b7:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff8000001041bc:	31 c9                	xor    %ecx,%ecx
ffff8000001041be:	41 b9 01 00 00 00    	mov    $0x1,%r9d
ffff8000001041c4:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
ffff8000001041c9:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001041cc:	45 0f 4d c1          	cmovge %r9d,%r8d
ffff8000001041d0:	44 29 c6             	sub    %r8d,%esi
ffff8000001041d3:	45 85 f6             	test   %r14d,%r14d
ffff8000001041d6:	0f 85 ee 00 00 00    	jne    ffff8000001042ca <number+0x1ca>
ffff8000001041dc:	44 8d 5e ff          	lea    -0x1(%rsi),%r11d
ffff8000001041e0:	85 f6                	test   %esi,%esi
ffff8000001041e2:	0f 8e 64 05 00 00    	jle    ffff80000010474c <number+0x64c>
ffff8000001041e8:	48 89 f8             	mov    %rdi,%rax
ffff8000001041eb:	41 83 fb 0e          	cmp    $0xe,%r11d
ffff8000001041ef:	0f 86 5f 05 00 00    	jbe    ffff800000104754 <number+0x654>
ffff8000001041f5:	49 bc d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r12
ffff8000001041fc:	ff ff ff 
ffff8000001041ff:	89 f3                	mov    %esi,%ebx
ffff800000104201:	c1 eb 04             	shr    $0x4,%ebx
ffff800000104204:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff80000010420a:	48 c1 e3 04          	shl    $0x4,%rbx
ffff80000010420e:	4c 8d 2c 3b          	lea    (%rbx,%rdi,1),%r13
ffff800000104212:	83 e3 10             	and    $0x10,%ebx
ffff800000104215:	74 11                	je     ffff800000104228 <number+0x128>
ffff800000104217:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff80000010421b:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010421e:	49 39 c5             	cmp    %rax,%r13
ffff800000104221:	74 15                	je     ffff800000104238 <number+0x138>
ffff800000104223:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104228:	0f 11 00             	movups %xmm0,(%rax)
ffff80000010422b:	48 83 c0 20          	add    $0x20,%rax
ffff80000010422f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000104233:	49 39 c5             	cmp    %rax,%r13
ffff800000104236:	75 f0                	jne    ffff800000104228 <number+0x128>
ffff800000104238:	89 f3                	mov    %esi,%ebx
ffff80000010423a:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff80000010423d:	89 d8                	mov    %ebx,%eax
ffff80000010423f:	41 29 db             	sub    %ebx,%r11d
ffff800000104242:	48 01 f8             	add    %rdi,%rax
ffff800000104245:	39 de                	cmp    %ebx,%esi
ffff800000104247:	74 76                	je     ffff8000001042bf <number+0x1bf>
ffff800000104249:	41 89 f4             	mov    %esi,%r12d
ffff80000010424c:	41 29 dc             	sub    %ebx,%r12d
ffff80000010424f:	45 8d 6c 24 ff       	lea    -0x1(%r12),%r13d
ffff800000104254:	41 83 fd 06          	cmp    $0x6,%r13d
ffff800000104258:	76 27                	jbe    ffff800000104281 <number+0x181>
ffff80000010425a:	49 bd d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r13
ffff800000104261:	ff ff ff 
ffff800000104264:	4f 8b 2c 2a          	mov    (%r10,%r13,1),%r13
ffff800000104268:	4c 89 2c 1f          	mov    %r13,(%rdi,%rbx,1)
ffff80000010426c:	44 89 e3             	mov    %r12d,%ebx
ffff80000010426f:	83 e3 f8             	and    $0xfffffff8,%ebx
ffff800000104272:	41 89 dd             	mov    %ebx,%r13d
ffff800000104275:	41 29 db             	sub    %ebx,%r11d
ffff800000104278:	4c 01 e8             	add    %r13,%rax
ffff80000010427b:	41 83 e4 07          	and    $0x7,%r12d
ffff80000010427f:	74 3e                	je     ffff8000001042bf <number+0x1bf>
ffff800000104281:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104284:	45 85 db             	test   %r11d,%r11d
ffff800000104287:	7e 36                	jle    ffff8000001042bf <number+0x1bf>
ffff800000104289:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff80000010428d:	41 83 fb 01          	cmp    $0x1,%r11d
ffff800000104291:	74 2c                	je     ffff8000001042bf <number+0x1bf>
ffff800000104293:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff800000104297:	41 83 fb 02          	cmp    $0x2,%r11d
ffff80000010429b:	74 22                	je     ffff8000001042bf <number+0x1bf>
ffff80000010429d:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff8000001042a1:	41 83 fb 03          	cmp    $0x3,%r11d
ffff8000001042a5:	74 18                	je     ffff8000001042bf <number+0x1bf>
ffff8000001042a7:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff8000001042ab:	41 83 fb 04          	cmp    $0x4,%r11d
ffff8000001042af:	74 0e                	je     ffff8000001042bf <number+0x1bf>
ffff8000001042b1:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff8000001042b5:	41 83 fb 05          	cmp    $0x5,%r11d
ffff8000001042b9:	74 04                	je     ffff8000001042bf <number+0x1bf>
ffff8000001042bb:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff8000001042bf:	48 63 f6             	movslq %esi,%rsi
ffff8000001042c2:	48 01 f7             	add    %rsi,%rdi
ffff8000001042c5:	be ff ff ff ff       	mov    $0xffffffff,%esi
ffff8000001042ca:	0f b6 44 24 b2       	movzbl -0x4e(%rsp),%eax
ffff8000001042cf:	84 c0                	test   %al,%al
ffff8000001042d1:	74 06                	je     ffff8000001042d9 <number+0x1d9>
ffff8000001042d3:	88 07                	mov    %al,(%rdi)
ffff8000001042d5:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042d9:	45 85 ff             	test   %r15d,%r15d
ffff8000001042dc:	74 12                	je     ffff8000001042f0 <number+0x1f0>
ffff8000001042de:	83 fa 08             	cmp    $0x8,%edx
ffff8000001042e1:	0f 84 31 04 00 00    	je     ffff800000104718 <number+0x618>
ffff8000001042e7:	83 fa 10             	cmp    $0x10,%edx
ffff8000001042ea:	0f 84 10 04 00 00    	je     ffff800000104700 <number+0x600>
ffff8000001042f0:	8b 44 24 a4          	mov    -0x5c(%rsp),%eax
ffff8000001042f4:	85 c0                	test   %eax,%eax
ffff8000001042f6:	0f 85 f5 00 00 00    	jne    ffff8000001043f1 <number+0x2f1>
ffff8000001042fc:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff8000001042ff:	85 f6                	test   %esi,%esi
ffff800000104301:	0f 8e 3e 04 00 00    	jle    ffff800000104745 <number+0x645>
ffff800000104307:	83 fa 0e             	cmp    $0xe,%edx
ffff80000010430a:	0f 86 4b 04 00 00    	jbe    ffff80000010475b <number+0x65b>
ffff800000104310:	66 0f 6e c5          	movd   %ebp,%xmm0
ffff800000104314:	41 89 f3             	mov    %esi,%r11d
ffff800000104317:	48 89 f8             	mov    %rdi,%rax
ffff80000010431a:	41 c1 eb 04          	shr    $0x4,%r11d
ffff80000010431e:	66 0f 60 c0          	punpcklbw %xmm0,%xmm0
ffff800000104322:	49 c1 e3 04          	shl    $0x4,%r11
ffff800000104326:	66 0f 61 c0          	punpcklwd %xmm0,%xmm0
ffff80000010432a:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
ffff80000010432f:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000104333:	41 83 e3 10          	and    $0x10,%r11d
ffff800000104337:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010433b:	74 13                	je     ffff800000104350 <number+0x250>
ffff80000010433d:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff800000104341:	0f 11 07             	movups %xmm0,(%rdi)
ffff800000104344:	48 39 d8             	cmp    %rbx,%rax
ffff800000104347:	74 17                	je     ffff800000104360 <number+0x260>
ffff800000104349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104350:	0f 11 08             	movups %xmm1,(%rax)
ffff800000104353:	48 83 c0 20          	add    $0x20,%rax
ffff800000104357:	0f 11 48 f0          	movups %xmm1,-0x10(%rax)
ffff80000010435b:	48 39 d8             	cmp    %rbx,%rax
ffff80000010435e:	75 f0                	jne    ffff800000104350 <number+0x250>
ffff800000104360:	41 89 f3             	mov    %esi,%r11d
ffff800000104363:	41 83 e3 f0          	and    $0xfffffff0,%r11d
ffff800000104367:	44 89 db             	mov    %r11d,%ebx
ffff80000010436a:	44 29 da             	sub    %r11d,%edx
ffff80000010436d:	48 01 fb             	add    %rdi,%rbx
ffff800000104370:	44 39 de             	cmp    %r11d,%esi
ffff800000104373:	74 71                	je     ffff8000001043e6 <number+0x2e6>
ffff800000104375:	41 89 f4             	mov    %esi,%r12d
ffff800000104378:	45 29 dc             	sub    %r11d,%r12d
ffff80000010437b:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
ffff800000104380:	83 f8 06             	cmp    $0x6,%eax
ffff800000104383:	76 29                	jbe    ffff8000001043ae <number+0x2ae>
ffff800000104385:	40 0f b6 c5          	movzbl %bpl,%eax
ffff800000104389:	88 c4                	mov    %al,%ah
ffff80000010438b:	66 0f 6e d0          	movd   %eax,%xmm2
ffff80000010438f:	44 89 e0             	mov    %r12d,%eax
ffff800000104392:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104395:	f2 0f 70 c2 00       	pshuflw $0x0,%xmm2,%xmm0
ffff80000010439a:	66 42 0f d6 04 1f    	movq   %xmm0,(%rdi,%r11,1)
ffff8000001043a0:	41 89 c3             	mov    %eax,%r11d
ffff8000001043a3:	29 c2                	sub    %eax,%edx
ffff8000001043a5:	4c 01 db             	add    %r11,%rbx
ffff8000001043a8:	41 83 e4 07          	and    $0x7,%r12d
ffff8000001043ac:	74 38                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043ae:	40 88 2b             	mov    %bpl,(%rbx)
ffff8000001043b1:	85 d2                	test   %edx,%edx
ffff8000001043b3:	7e 31                	jle    ffff8000001043e6 <number+0x2e6>
ffff8000001043b5:	40 88 6b 01          	mov    %bpl,0x1(%rbx)
ffff8000001043b9:	83 fa 01             	cmp    $0x1,%edx
ffff8000001043bc:	74 28                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043be:	40 88 6b 02          	mov    %bpl,0x2(%rbx)
ffff8000001043c2:	83 fa 02             	cmp    $0x2,%edx
ffff8000001043c5:	74 1f                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043c7:	40 88 6b 03          	mov    %bpl,0x3(%rbx)
ffff8000001043cb:	83 fa 03             	cmp    $0x3,%edx
ffff8000001043ce:	74 16                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043d0:	40 88 6b 04          	mov    %bpl,0x4(%rbx)
ffff8000001043d4:	83 fa 04             	cmp    $0x4,%edx
ffff8000001043d7:	74 0d                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043d9:	40 88 6b 05          	mov    %bpl,0x5(%rbx)
ffff8000001043dd:	83 fa 05             	cmp    $0x5,%edx
ffff8000001043e0:	74 04                	je     ffff8000001043e6 <number+0x2e6>
ffff8000001043e2:	40 88 6b 06          	mov    %bpl,0x6(%rbx)
ffff8000001043e6:	48 63 f6             	movslq %esi,%rsi
ffff8000001043e9:	48 01 f7             	add    %rsi,%rdi
ffff8000001043ec:	be ff ff ff ff       	mov    $0xffffffff,%esi
ffff8000001043f1:	41 8d 50 ff          	lea    -0x1(%r8),%edx
ffff8000001043f5:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001043f8:	0f 8d fb 00 00 00    	jge    ffff8000001044f9 <number+0x3f9>
ffff8000001043fe:	45 29 c8             	sub    %r9d,%r8d
ffff800000104401:	48 89 f8             	mov    %rdi,%rax
ffff800000104404:	41 8d 58 ff          	lea    -0x1(%r8),%ebx
ffff800000104408:	83 fb 0e             	cmp    $0xe,%ebx
ffff80000010440b:	0f 86 2c 03 00 00    	jbe    ffff80000010473d <number+0x63d>
ffff800000104411:	49 bc e0 c6 ff ff ff 	movabs $0xffffffffffffc6e0,%r12
ffff800000104418:	ff ff ff 
ffff80000010441b:	45 89 c3             	mov    %r8d,%r11d
ffff80000010441e:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000104422:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff800000104428:	49 c1 e3 04          	shl    $0x4,%r11
ffff80000010442c:	49 8d 2c 3b          	lea    (%r11,%rdi,1),%rbp
ffff800000104430:	41 83 e3 10          	and    $0x10,%r11d
ffff800000104434:	74 12                	je     ffff800000104448 <number+0x348>
ffff800000104436:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff80000010443a:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010443d:	48 39 c5             	cmp    %rax,%rbp
ffff800000104440:	74 16                	je     ffff800000104458 <number+0x358>
ffff800000104442:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104448:	0f 11 00             	movups %xmm0,(%rax)
ffff80000010444b:	48 83 c0 20          	add    $0x20,%rax
ffff80000010444f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000104453:	48 39 c5             	cmp    %rax,%rbp
ffff800000104456:	75 f0                	jne    ffff800000104448 <number+0x348>
ffff800000104458:	45 89 c3             	mov    %r8d,%r11d
ffff80000010445b:	41 83 e3 f0          	and    $0xfffffff0,%r11d
ffff80000010445f:	44 89 d8             	mov    %r11d,%eax
ffff800000104462:	44 29 da             	sub    %r11d,%edx
ffff800000104465:	48 01 f8             	add    %rdi,%rax
ffff800000104468:	41 f6 c0 0f          	test   $0xf,%r8b
ffff80000010446c:	0f 84 80 00 00 00    	je     ffff8000001044f2 <number+0x3f2>
ffff800000104472:	45 29 d8             	sub    %r11d,%r8d
ffff800000104475:	41 8d 68 ff          	lea    -0x1(%r8),%ebp
ffff800000104479:	83 fd 06             	cmp    $0x6,%ebp
ffff80000010447c:	76 28                	jbe    ffff8000001044a6 <number+0x3a6>
ffff80000010447e:	48 bd e0 c6 ff ff ff 	movabs $0xffffffffffffc6e0,%rbp
ffff800000104485:	ff ff ff 
ffff800000104488:	49 8b 2c 2a          	mov    (%r10,%rbp,1),%rbp
ffff80000010448c:	4a 89 2c 1f          	mov    %rbp,(%rdi,%r11,1)
ffff800000104490:	45 89 c3             	mov    %r8d,%r11d
ffff800000104493:	41 83 e3 f8          	and    $0xfffffff8,%r11d
ffff800000104497:	44 89 dd             	mov    %r11d,%ebp
ffff80000010449a:	44 29 da             	sub    %r11d,%edx
ffff80000010449d:	48 01 e8             	add    %rbp,%rax
ffff8000001044a0:	41 83 e0 07          	and    $0x7,%r8d
ffff8000001044a4:	74 4c                	je     ffff8000001044f2 <number+0x3f2>
ffff8000001044a6:	c6 00 30             	movb   $0x30,(%rax)
ffff8000001044a9:	44 8d 42 ff          	lea    -0x1(%rdx),%r8d
ffff8000001044ad:	41 39 d1             	cmp    %edx,%r9d
ffff8000001044b0:	7d 40                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044b2:	c6 40 01 30          	movb   $0x30,0x1(%rax)
ffff8000001044b6:	44 8d 5a fe          	lea    -0x2(%rdx),%r11d
ffff8000001044ba:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001044bd:	7d 33                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044bf:	c6 40 02 30          	movb   $0x30,0x2(%rax)
ffff8000001044c3:	44 8d 42 fd          	lea    -0x3(%rdx),%r8d
ffff8000001044c7:	45 39 d9             	cmp    %r11d,%r9d
ffff8000001044ca:	7d 26                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044cc:	c6 40 03 30          	movb   $0x30,0x3(%rax)
ffff8000001044d0:	44 8d 5a fc          	lea    -0x4(%rdx),%r11d
ffff8000001044d4:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001044d7:	7d 19                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044d9:	c6 40 04 30          	movb   $0x30,0x4(%rax)
ffff8000001044dd:	83 ea 05             	sub    $0x5,%edx
ffff8000001044e0:	45 39 d9             	cmp    %r11d,%r9d
ffff8000001044e3:	7d 0d                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044e5:	c6 40 05 30          	movb   $0x30,0x5(%rax)
ffff8000001044e9:	41 39 d1             	cmp    %edx,%r9d
ffff8000001044ec:	7d 04                	jge    ffff8000001044f2 <number+0x3f2>
ffff8000001044ee:	c6 40 06 30          	movb   $0x30,0x6(%rax)
ffff8000001044f2:	89 db                	mov    %ebx,%ebx
ffff8000001044f4:	48 8d 7c 1f 01       	lea    0x1(%rdi,%rbx,1),%rdi
ffff8000001044f9:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
ffff8000001044fe:	48 63 c1             	movslq %ecx,%rax
ffff800000104501:	83 c1 01             	add    $0x1,%ecx
ffff800000104504:	48 63 c9             	movslq %ecx,%rcx
ffff800000104507:	48 01 c3             	add    %rax,%rbx
ffff80000010450a:	48 01 f9             	add    %rdi,%rcx
ffff80000010450d:	48 89 d8             	mov    %rbx,%rax
ffff800000104510:	0f b6 10             	movzbl (%rax),%edx
ffff800000104513:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104517:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010451b:	88 57 ff             	mov    %dl,-0x1(%rdi)
ffff80000010451e:	48 39 cf             	cmp    %rcx,%rdi
ffff800000104521:	75 ed                	jne    ffff800000104510 <number+0x410>
ffff800000104523:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff800000104526:	85 f6                	test   %esi,%esi
ffff800000104528:	0f 8e d6 00 00 00    	jle    ffff800000104604 <number+0x504>
ffff80000010452e:	48 89 c8             	mov    %rcx,%rax
ffff800000104531:	83 fa 0e             	cmp    $0xe,%edx
ffff800000104534:	0f 86 fc 01 00 00    	jbe    ffff800000104736 <number+0x636>
ffff80000010453a:	49 bc d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r12
ffff800000104541:	ff ff ff 
ffff800000104544:	89 f7                	mov    %esi,%edi
ffff800000104546:	c1 ef 04             	shr    $0x4,%edi
ffff800000104549:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff80000010454f:	48 c1 e7 04          	shl    $0x4,%rdi
ffff800000104553:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
ffff800000104557:	83 e7 10             	and    $0x10,%edi
ffff80000010455a:	74 14                	je     ffff800000104570 <number+0x470>
ffff80000010455c:	48 8d 41 10          	lea    0x10(%rcx),%rax
ffff800000104560:	0f 11 01             	movups %xmm0,(%rcx)
ffff800000104563:	49 39 c0             	cmp    %rax,%r8
ffff800000104566:	74 18                	je     ffff800000104580 <number+0x480>
ffff800000104568:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010456f:	00 
ffff800000104570:	0f 11 00             	movups %xmm0,(%rax)
ffff800000104573:	48 83 c0 20          	add    $0x20,%rax
ffff800000104577:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff80000010457b:	49 39 c0             	cmp    %rax,%r8
ffff80000010457e:	75 f0                	jne    ffff800000104570 <number+0x470>
ffff800000104580:	89 f7                	mov    %esi,%edi
ffff800000104582:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104585:	89 f8                	mov    %edi,%eax
ffff800000104587:	29 fa                	sub    %edi,%edx
ffff800000104589:	48 01 c8             	add    %rcx,%rax
ffff80000010458c:	39 fe                	cmp    %edi,%esi
ffff80000010458e:	74 6e                	je     ffff8000001045fe <number+0x4fe>
ffff800000104590:	41 89 f0             	mov    %esi,%r8d
ffff800000104593:	41 29 f8             	sub    %edi,%r8d
ffff800000104596:	45 8d 48 ff          	lea    -0x1(%r8),%r9d
ffff80000010459a:	41 83 f9 06          	cmp    $0x6,%r9d
ffff80000010459e:	76 26                	jbe    ffff8000001045c6 <number+0x4c6>
ffff8000001045a0:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff8000001045a7:	ff ff ff 
ffff8000001045aa:	4f 8b 0c 0a          	mov    (%r10,%r9,1),%r9
ffff8000001045ae:	4c 89 0c 39          	mov    %r9,(%rcx,%rdi,1)
ffff8000001045b2:	44 89 c7             	mov    %r8d,%edi
ffff8000001045b5:	83 e7 f8             	and    $0xfffffff8,%edi
ffff8000001045b8:	41 89 f9             	mov    %edi,%r9d
ffff8000001045bb:	29 fa                	sub    %edi,%edx
ffff8000001045bd:	4c 01 c8             	add    %r9,%rax
ffff8000001045c0:	41 83 e0 07          	and    $0x7,%r8d
ffff8000001045c4:	74 38                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045c6:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001045c9:	85 d2                	test   %edx,%edx
ffff8000001045cb:	7e 31                	jle    ffff8000001045fe <number+0x4fe>
ffff8000001045cd:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff8000001045d1:	83 fa 01             	cmp    $0x1,%edx
ffff8000001045d4:	74 28                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045d6:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff8000001045da:	83 fa 02             	cmp    $0x2,%edx
ffff8000001045dd:	74 1f                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045df:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff8000001045e3:	83 fa 03             	cmp    $0x3,%edx
ffff8000001045e6:	74 16                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045e8:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff8000001045ec:	83 fa 04             	cmp    $0x4,%edx
ffff8000001045ef:	74 0d                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045f1:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff8000001045f5:	83 fa 05             	cmp    $0x5,%edx
ffff8000001045f8:	74 04                	je     ffff8000001045fe <number+0x4fe>
ffff8000001045fa:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff8000001045fe:	48 63 f6             	movslq %esi,%rsi
ffff800000104601:	48 01 f1             	add    %rsi,%rcx
ffff800000104604:	5b                   	pop    %rbx
ffff800000104605:	48 89 c8             	mov    %rcx,%rax
ffff800000104608:	5d                   	pop    %rbp
ffff800000104609:	41 5c                	pop    %r12
ffff80000010460b:	41 5d                	pop    %r13
ffff80000010460d:	41 5e                	pop    %r14
ffff80000010460f:	41 5f                	pop    %r15
ffff800000104611:	c3                   	ret
ffff800000104612:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104618:	44 89 c9             	mov    %r9d,%ecx
ffff80000010461b:	45 89 ce             	mov    %r9d,%r14d
ffff80000010461e:	45 89 cf             	mov    %r9d,%r15d
ffff800000104621:	83 e1 01             	and    $0x1,%ecx
ffff800000104624:	41 83 e6 11          	and    $0x11,%r14d
ffff800000104628:	83 f9 01             	cmp    $0x1,%ecx
ffff80000010462b:	19 ed                	sbb    %ebp,%ebp
ffff80000010462d:	83 e5 f0             	and    $0xfffffff0,%ebp
ffff800000104630:	83 c5 30             	add    $0x30,%ebp
ffff800000104633:	85 c9                	test   %ecx,%ecx
ffff800000104635:	44 0f 44 f3          	cmove  %ebx,%r14d
ffff800000104639:	41 83 e7 20          	and    $0x20,%r15d
ffff80000010463d:	41 f6 c1 02          	test   $0x2,%r9b
ffff800000104641:	0f 85 29 fb ff ff    	jne    ffff800000104170 <number+0x70>
ffff800000104647:	e9 2d fb ff ff       	jmp    ffff800000104179 <number+0x79>
ffff80000010464c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104650:	48 b9 90 c6 ff ff ff 	movabs $0xffffffffffffc690,%rcx
ffff800000104657:	ff ff ff 
ffff80000010465a:	c6 44 24 b3 78       	movb   $0x78,-0x4d(%rsp)
ffff80000010465f:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
ffff800000104663:	e9 dc fa ff ff       	jmp    ffff800000104144 <number+0x44>
ffff800000104668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010466f:	00 
ffff800000104670:	44 89 cb             	mov    %r9d,%ebx
ffff800000104673:	83 e3 08             	and    $0x8,%ebx
ffff800000104676:	88 5c 24 b2          	mov    %bl,-0x4e(%rsp)
ffff80000010467a:	0f 84 0b fb ff ff    	je     ffff80000010418b <number+0x8b>
ffff800000104680:	c6 44 24 b2 20       	movb   $0x20,-0x4e(%rsp)
ffff800000104685:	e9 fe fa ff ff       	jmp    ffff800000104188 <number+0x88>
ffff80000010468a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104690:	c6 44 24 b2 2d       	movb   $0x2d,-0x4e(%rsp)
ffff800000104695:	48 f7 d8             	neg    %rax
ffff800000104698:	83 ee 01             	sub    $0x1,%esi
ffff80000010469b:	45 85 ff             	test   %r15d,%r15d
ffff80000010469e:	0f 85 ec fa ff ff    	jne    ffff800000104190 <number+0x90>
ffff8000001046a4:	48 8d 4c 24 b8       	lea    -0x48(%rsp),%rcx
ffff8000001046a9:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
ffff8000001046ae:	48 63 da             	movslq %edx,%rbx
ffff8000001046b1:	45 31 c9             	xor    %r9d,%r9d
ffff8000001046b4:	48 89 4c 24 a8       	mov    %rcx,-0x58(%rsp)
ffff8000001046b9:	49 89 cb             	mov    %rcx,%r11
ffff8000001046bc:	45 31 ed             	xor    %r13d,%r13d
ffff8000001046bf:	41 89 d7             	mov    %edx,%r15d
ffff8000001046c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001046c8:	44 89 ea             	mov    %r13d,%edx
ffff8000001046cb:	44 89 c9             	mov    %r9d,%ecx
ffff8000001046ce:	49 83 c3 01          	add    $0x1,%r11
ffff8000001046d2:	41 83 c1 01          	add    $0x1,%r9d
ffff8000001046d6:	48 f7 f3             	div    %rbx
ffff8000001046d9:	48 63 d2             	movslq %edx,%rdx
ffff8000001046dc:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
ffff8000001046e1:	41 88 53 ff          	mov    %dl,-0x1(%r11)
ffff8000001046e5:	48 85 c0             	test   %rax,%rax
ffff8000001046e8:	75 de                	jne    ffff8000001046c8 <number+0x5c8>
ffff8000001046ea:	44 89 fa             	mov    %r15d,%edx
ffff8000001046ed:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
ffff8000001046f2:	e9 d2 fa ff ff       	jmp    ffff8000001041c9 <number+0xc9>
ffff8000001046f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001046fe:	00 00 
ffff800000104700:	0f b6 44 24 b3       	movzbl -0x4d(%rsp),%eax
ffff800000104705:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104708:	48 83 c7 02          	add    $0x2,%rdi
ffff80000010470c:	88 47 ff             	mov    %al,-0x1(%rdi)
ffff80000010470f:	e9 dc fb ff ff       	jmp    ffff8000001042f0 <number+0x1f0>
ffff800000104714:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104718:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010471b:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010471f:	e9 cc fb ff ff       	jmp    ffff8000001042f0 <number+0x1f0>
ffff800000104724:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104728:	83 ee 02             	sub    $0x2,%esi
ffff80000010472b:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff800000104731:	e9 73 fa ff ff       	jmp    ffff8000001041a9 <number+0xa9>
ffff800000104736:	31 ff                	xor    %edi,%edi
ffff800000104738:	e9 53 fe ff ff       	jmp    ffff800000104590 <number+0x490>
ffff80000010473d:	45 31 db             	xor    %r11d,%r11d
ffff800000104740:	e9 2d fd ff ff       	jmp    ffff800000104472 <number+0x372>
ffff800000104745:	89 d6                	mov    %edx,%esi
ffff800000104747:	e9 a5 fc ff ff       	jmp    ffff8000001043f1 <number+0x2f1>
ffff80000010474c:	44 89 de             	mov    %r11d,%esi
ffff80000010474f:	e9 76 fb ff ff       	jmp    ffff8000001042ca <number+0x1ca>
ffff800000104754:	31 db                	xor    %ebx,%ebx
ffff800000104756:	e9 ee fa ff ff       	jmp    ffff800000104249 <number+0x149>
ffff80000010475b:	48 89 fb             	mov    %rdi,%rbx
ffff80000010475e:	45 31 db             	xor    %r11d,%r11d
ffff800000104761:	e9 0f fc ff ff       	jmp    ffff800000104375 <number+0x275>
ffff800000104766:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010476d:	00 00 00 

ffff800000104770 <putchar>:
ffff800000104770:	f3 0f 1e fa          	endbr64
ffff800000104774:	41 57                	push   %r15
ffff800000104776:	4c 63 d2             	movslq %edx,%r10
ffff800000104779:	49 bb 0c 89 00 00 00 	movabs $0x890c,%r11
ffff800000104780:	00 00 00 
ffff800000104783:	48 8d 05 ea ff ff ff 	lea    -0x16(%rip),%rax        # ffff800000104774 <putchar+0x4>
ffff80000010478a:	48 ba 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdx
ffff800000104791:	ff ff ff 
ffff800000104794:	41 56                	push   %r14
ffff800000104796:	4c 01 d8             	add    %r11,%rax
ffff800000104799:	41 bb 1f 00 00 00    	mov    $0x1f,%r11d
ffff80000010479f:	41 55                	push   %r13
ffff8000001047a1:	41 54                	push   %r12
ffff8000001047a3:	4c 8d 24 10          	lea    (%rax,%rdx,1),%r12
ffff8000001047a7:	55                   	push   %rbp
ffff8000001047a8:	53                   	push   %rbx
ffff8000001047a9:	48 63 de             	movslq %esi,%rbx
ffff8000001047ac:	89 ce                	mov    %ecx,%esi
ffff8000001047ae:	0f af f3             	imul   %ebx,%esi
ffff8000001047b1:	48 8d 0c 9d 00 00 00 	lea    0x0(,%rbx,4),%rcx
ffff8000001047b8:	00 
ffff8000001047b9:	48 83 ec 58          	sub    $0x58,%rsp
ffff8000001047bd:	48 63 f6             	movslq %esi,%rsi
ffff8000001047c0:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
ffff8000001047c7:	00 
ffff8000001047c8:	4c 01 d6             	add    %r10,%rsi
ffff8000001047cb:	4c 8d 14 b5 00 00 00 	lea    0x0(,%rsi,4),%r10
ffff8000001047d2:	00 
ffff8000001047d3:	48 89 de             	mov    %rbx,%rsi
ffff8000001047d6:	48 c1 e5 04          	shl    $0x4,%rbp
ffff8000001047da:	48 c1 e6 04          	shl    $0x4,%rsi
ffff8000001047de:	4a 8d 54 25 00       	lea    0x0(%rbp,%r12,1),%rdx
ffff8000001047e3:	4d 8d 64 2c 0f       	lea    0xf(%r12,%rbp,1),%r12
ffff8000001047e8:	31 ed                	xor    %ebp,%ebp
ffff8000001047ea:	48 29 de             	sub    %rbx,%rsi
ffff8000001047ed:	48 c1 e6 02          	shl    $0x2,%rsi
ffff8000001047f1:	85 db                	test   %ebx,%ebx
ffff8000001047f3:	48 0f 48 ee          	cmovs  %rsi,%rbp
ffff8000001047f7:	4c 01 d5             	add    %r10,%rbp
ffff8000001047fa:	48 01 fd             	add    %rdi,%rbp
ffff8000001047fd:	49 39 ec             	cmp    %rbp,%r12
ffff800000104800:	40 0f 92 c5          	setb   %bpl
ffff800000104804:	48 83 c6 1f          	add    $0x1f,%rsi
ffff800000104808:	85 db                	test   %ebx,%ebx
ffff80000010480a:	49 0f 48 f3          	cmovs  %r11,%rsi
ffff80000010480e:	4c 01 d6             	add    %r10,%rsi
ffff800000104811:	48 01 fe             	add    %rdi,%rsi
ffff800000104814:	48 39 d6             	cmp    %rdx,%rsi
ffff800000104817:	40 0f 92 c6          	setb   %sil
ffff80000010481b:	40 08 ee             	or     %bpl,%sil
ffff80000010481e:	0f 84 69 0a 00 00    	je     ffff80000010528d <putchar+0xb1d>
ffff800000104824:	48 8d 71 1f          	lea    0x1f(%rcx),%rsi
ffff800000104828:	48 83 fe 3e          	cmp    $0x3e,%rsi
ffff80000010482c:	0f 86 5b 0a 00 00    	jbe    ffff80000010528d <putchar+0xb1d>
ffff800000104832:	66 41 0f 6e c0       	movd   %r8d,%xmm0
ffff800000104837:	48 c1 e3 05          	shl    $0x5,%rbx
ffff80000010483b:	48 89 d6             	mov    %rdx,%rsi
ffff80000010483e:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
ffff800000104843:	66 44 0f 70 e0 e0    	pshufd $0xe0,%xmm0,%xmm12
ffff800000104849:	66 41 0f 6e c1       	movd   %r9d,%xmm0
ffff80000010484e:	49 89 d9             	mov    %rbx,%r9
ffff800000104851:	4a 8d 1c 17          	lea    (%rdi,%r10,1),%rbx
ffff800000104855:	66 44 0f 70 d8 e0    	pshufd $0xe0,%xmm0,%xmm11
ffff80000010485b:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000104860:	48 8d 2c 0b          	lea    (%rbx,%rcx,1),%rbp
ffff800000104864:	4c 8d 64 0d 00       	lea    0x0(%rbp,%rcx,1),%r12
ffff800000104869:	4d 8d 2c 0c          	lea    (%r12,%rcx,1),%r13
ffff80000010486d:	4d 8d 74 0d 00       	lea    0x0(%r13,%rcx,1),%r14
ffff800000104872:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
ffff800000104876:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
ffff80000010487a:	49 8d 3c 08          	lea    (%r8,%rcx,1),%rdi
ffff80000010487e:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
ffff800000104882:	48 ba f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rdx
ffff800000104889:	ff ff ff 
ffff80000010488c:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff800000104890:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
ffff800000104895:	48 ba d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rdx
ffff80000010489c:	ff ff ff 
ffff80000010489f:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048a3:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
ffff8000001048a8:	48 ba 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%rdx
ffff8000001048af:	ff ff ff 
ffff8000001048b2:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048b6:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
ffff8000001048bb:	48 ba 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%rdx
ffff8000001048c2:	ff ff ff 
ffff8000001048c5:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048c9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
ffff8000001048ce:	48 ba 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%rdx
ffff8000001048d5:	ff ff ff 
ffff8000001048d8:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048dc:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
ffff8000001048e1:	48 ba 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%rdx
ffff8000001048e8:	ff ff ff 
ffff8000001048eb:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048ef:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
ffff8000001048f4:	48 ba 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%rdx
ffff8000001048fb:	ff ff ff 
ffff8000001048fe:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000104902:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
ffff800000104907:	f3 0f 7e 06          	movq   (%rsi),%xmm0
ffff80000010490b:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000104910:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
ffff800000104915:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010491a:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff80000010491f:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
ffff800000104925:	48 83 c6 08          	add    $0x8,%rsi
ffff800000104929:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff80000010492e:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000104932:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff800000104937:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff80000010493c:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
ffff800000104943:	66 0f db e8          	pand   %xmm0,%xmm5
ffff800000104947:	66 45 0f 6f fa       	movdqa %xmm10,%xmm15
ffff80000010494c:	66 44 0f db f0       	pand   %xmm0,%xmm14
ffff800000104951:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
ffff800000104955:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000104959:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
ffff80000010495d:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
ffff800000104961:	66 0f 65 de          	pcmpgtw %xmm6,%xmm3
ffff800000104965:	66 0f 6f d6          	movdqa %xmm6,%xmm2
ffff800000104969:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010496e:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff800000104972:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000104976:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010497b:	66 0f db e2          	pand   %xmm2,%xmm4
ffff80000010497f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104984:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000104989:	66 0f eb d4          	por    %xmm4,%xmm2
ffff80000010498d:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff800000104991:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104996:	66 48 0f 7e d2       	movq   %xmm2,%rdx
ffff80000010499b:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff8000001049a0:	66 0f db d6          	pand   %xmm6,%xmm2
ffff8000001049a4:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff8000001049a9:	89 13                	mov    %edx,(%rbx)
ffff8000001049ab:	66 0f eb f2          	por    %xmm2,%xmm6
ffff8000001049af:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff8000001049b3:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff8000001049b7:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff8000001049bb:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001049c0:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff8000001049c5:	66 0f db e2          	pand   %xmm2,%xmm4
ffff8000001049c9:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff8000001049ce:	66 0f eb d4          	por    %xmm4,%xmm2
ffff8000001049d2:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff8000001049d7:	66 48 0f 7e d0       	movq   %xmm2,%rax
ffff8000001049dc:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff8000001049e1:	66 0f db d1          	pand   %xmm1,%xmm2
ffff8000001049e5:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff8000001049ea:	66 0f eb ca          	por    %xmm2,%xmm1
ffff8000001049ee:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
ffff8000001049f4:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff8000001049f8:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff8000001049fd:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104a02:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104a07:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
ffff800000104a0b:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff800000104a0f:	66 0f 60 d3          	punpcklbw %xmm3,%xmm2
ffff800000104a13:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104a17:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
ffff800000104a1b:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000104a1f:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104a24:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104a28:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000104a2c:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104a31:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104a36:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000104a3a:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104a3f:	66 0f db fa          	pand   %xmm2,%xmm7
ffff800000104a43:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104a48:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000104a4c:	66 0f eb d7          	por    %xmm7,%xmm2
ffff800000104a50:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000104a55:	66 0f d6 5c 24 90    	movq   %xmm3,-0x70(%rsp)
ffff800000104a5b:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000104a5f:	66 0f 65 f9          	pcmpgtw %xmm1,%xmm7
ffff800000104a63:	66 0f d6 54 24 98    	movq   %xmm2,-0x68(%rsp)
ffff800000104a69:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104a6d:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104a72:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000104a76:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104a7a:	66 0f 6f d5          	movdqa %xmm5,%xmm2
ffff800000104a7e:	66 0f db e5          	pand   %xmm5,%xmm4
ffff800000104a82:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104a87:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104a8c:	66 0f db f9          	pand   %xmm1,%xmm7
ffff800000104a90:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104a95:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104a99:	66 0f 6f d7          	movdqa %xmm7,%xmm2
ffff800000104a9d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000104aa1:	66 0f eb ec          	por    %xmm4,%xmm5
ffff800000104aa5:	f3 0f 7e 64 24 28    	movq   0x28(%rsp),%xmm4
ffff800000104aab:	66 0f eb fa          	por    %xmm2,%xmm7
ffff800000104aaf:	66 0f d6 6c 24 a0    	movq   %xmm5,-0x60(%rsp)
ffff800000104ab5:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104aba:	66 0f db e0          	pand   %xmm0,%xmm4
ffff800000104abe:	66 0f d6 7c 24 a8    	movq   %xmm7,-0x58(%rsp)
ffff800000104ac4:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
ffff800000104aca:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff800000104ace:	66 41 0f 6f e2       	movdqa %xmm10,%xmm4
ffff800000104ad3:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104ad8:	66 0f db f8          	pand   %xmm0,%xmm7
ffff800000104adc:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104ae1:	66 0f 64 e1          	pcmpgtb %xmm1,%xmm4
ffff800000104ae5:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104ae9:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104aed:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000104af1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104af5:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104af9:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104afe:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104b03:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
ffff800000104b07:	66 44 0f 65 c1       	pcmpgtw %xmm1,%xmm8
ffff800000104b0c:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000104b10:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000104b14:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104b18:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104b1d:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000104b21:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104b26:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104b2b:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000104b2f:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104b33:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104b38:	66 0f d6 5c 24 b0    	movq   %xmm3,-0x50(%rsp)
ffff800000104b3e:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104b42:	66 0f 6f e2          	movdqa %xmm2,%xmm4
ffff800000104b46:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff800000104b4a:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000104b4e:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
ffff800000104b53:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104b58:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104b5c:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff800000104b60:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
ffff800000104b66:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104b6b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104b70:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104b74:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104b79:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff800000104b7e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104b83:	66 0f eb d4          	por    %xmm4,%xmm2
ffff800000104b87:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff800000104b8c:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104b91:	66 0f d6 54 24 c0    	movq   %xmm2,-0x40(%rsp)
ffff800000104b97:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
ffff800000104b9d:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
ffff800000104ba2:	66 45 0f 6f f4       	movdqa %xmm12,%xmm14
ffff800000104ba7:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104bac:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104bb1:	66 44 0f 64 f9       	pcmpgtb %xmm1,%xmm15
ffff800000104bb6:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff800000104bbb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000104bc0:	66 45 0f 6f f9       	movdqa %xmm9,%xmm15
ffff800000104bc5:	66 44 0f 60 c3       	punpcklbw %xmm3,%xmm8
ffff800000104bca:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104bce:	66 41 0f 65 e0       	pcmpgtw %xmm8,%xmm4
ffff800000104bd3:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
ffff800000104bd8:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104bdd:	66 45 0f 6f e8       	movdqa %xmm8,%xmm13
ffff800000104be2:	66 44 0f 65 f9       	pcmpgtw %xmm1,%xmm15
ffff800000104be7:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104beb:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff800000104bf0:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104bf5:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104bfa:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000104bff:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff800000104c04:	66 44 0f db f2       	pand   %xmm2,%xmm14
ffff800000104c09:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104c0e:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104c13:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000104c18:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff800000104c1d:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000104c22:	66 45 0f eb ee       	por    %xmm14,%xmm13
ffff800000104c27:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff800000104c2c:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104c30:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000104c35:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104c3a:	66 45 0f 6f fc       	movdqa %xmm12,%xmm15
ffff800000104c3f:	66 44 0f d6 6c 24 d8 	movq   %xmm13,-0x28(%rsp)
ffff800000104c46:	66 41 0f 6f d6       	movdqa %xmm14,%xmm2
ffff800000104c4b:	66 44 0f db f9       	pand   %xmm1,%xmm15
ffff800000104c50:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104c55:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104c5a:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000104c5f:	66 44 0f eb c5       	por    %xmm5,%xmm8
ffff800000104c64:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
ffff800000104c69:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
ffff800000104c6e:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
ffff800000104c73:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
ffff800000104c7a:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff800000104c7e:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000104c83:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000104c88:	f3 44 0f 7e 44 24 40 	movq   0x40(%rsp),%xmm8
ffff800000104c8f:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104c94:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104c99:	66 44 0f eb fa       	por    %xmm2,%xmm15
ffff800000104c9e:	66 44 0f d6 74 24 e0 	movq   %xmm14,-0x20(%rsp)
ffff800000104ca5:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000104caa:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
ffff800000104cb1:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104cb6:	66 44 0f d6 7c 24 e8 	movq   %xmm15,-0x18(%rsp)
ffff800000104cbd:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104cc2:	66 44 0f db f0       	pand   %xmm0,%xmm14
ffff800000104cc7:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
ffff800000104ccb:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000104ccf:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104cd3:	66 0f 60 eb          	punpcklbw %xmm3,%xmm5
ffff800000104cd7:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104cdb:	66 0f 65 e5          	pcmpgtw %xmm5,%xmm4
ffff800000104cdf:	66 0f 6f fd          	movdqa %xmm5,%xmm7
ffff800000104ce3:	66 0f 6f d5          	movdqa %xmm5,%xmm2
ffff800000104ce7:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104cec:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104cf1:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
ffff800000104cf5:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104cf9:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104cfe:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104d02:	66 0f db ef          	pand   %xmm7,%xmm5
ffff800000104d06:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104d0b:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104d10:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff800000104d14:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000104d18:	66 0f eb fd          	por    %xmm5,%xmm7
ffff800000104d1c:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104d21:	66 0f db ea          	pand   %xmm2,%xmm5
ffff800000104d25:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104d2a:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
ffff800000104d30:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104d35:	66 0f 6f dd          	movdqa %xmm5,%xmm3
ffff800000104d39:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104d3d:	66 0f eb eb          	por    %xmm3,%xmm5
ffff800000104d41:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104d45:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104d49:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000104d4d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104d51:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
ffff800000104d57:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104d5c:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104d60:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104d65:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104d6a:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104d6e:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104d73:	66 0f eb d4          	por    %xmm4,%xmm2
ffff800000104d77:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104d7c:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000104d80:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104d85:	66 0f d6 14 24       	movq   %xmm2,(%rsp)
ffff800000104d8a:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104d8e:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104d92:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000104d97:	66 0f eb e2          	por    %xmm2,%xmm4
ffff800000104d9b:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
ffff800000104da0:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff800000104da5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
ffff800000104daa:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
ffff800000104db0:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104db5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
ffff800000104dba:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff800000104dbe:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104dc2:	66 0f 60 e9          	punpcklbw %xmm1,%xmm5
ffff800000104dc6:	66 0f 60 d1          	punpcklbw %xmm1,%xmm2
ffff800000104dca:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000104dce:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104dd3:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff800000104dd7:	66 44 0f 65 c2       	pcmpgtw %xmm2,%xmm8
ffff800000104ddc:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
ffff800000104de1:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104de5:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000104de9:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104dee:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000104df2:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104df7:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000104dfc:	66 0f eb cc          	por    %xmm4,%xmm1
ffff800000104e00:	66 44 0f db ed       	pand   %xmm5,%xmm13
ffff800000104e05:	66 41 0f df eb       	pandn  %xmm11,%xmm5
ffff800000104e0a:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
ffff800000104e10:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000104e15:	f3 44 0f 7e 44 24 50 	movq   0x50(%rsp),%xmm8
ffff800000104e1c:	66 41 0f eb ed       	por    %xmm13,%xmm5
ffff800000104e21:	66 44 0f 61 f9       	punpcklwd %xmm1,%xmm15
ffff800000104e26:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
ffff800000104e2a:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
ffff800000104e2f:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104e34:	66 41 0f db df       	pand   %xmm15,%xmm3
ffff800000104e39:	66 45 0f df fb       	pandn  %xmm11,%xmm15
ffff800000104e3e:	66 44 0f eb fb       	por    %xmm3,%xmm15
ffff800000104e43:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff800000104e48:	66 41 0f db c0       	pand   %xmm8,%xmm0
ffff800000104e4d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104e52:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000104e57:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104e5c:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104e61:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff800000104e66:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104e6b:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff800000104e70:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000104e75:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
ffff800000104e79:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104e7d:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000104e81:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104e85:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104e8a:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000104e8e:	66 44 0f 6f f4       	movdqa %xmm4,%xmm14
ffff800000104e93:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104e98:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000104e9d:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000104ea1:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000104ea6:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104eab:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000104eb0:	66 41 0f db fe       	pand   %xmm14,%xmm7
ffff800000104eb5:	66 45 0f df f3       	pandn  %xmm11,%xmm14
ffff800000104eba:	66 0f db dc          	pand   %xmm4,%xmm3
ffff800000104ebe:	66 41 0f df e3       	pandn  %xmm11,%xmm4
ffff800000104ec3:	66 44 0f eb f7       	por    %xmm7,%xmm14
ffff800000104ec8:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000104ecc:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104ed1:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104ed6:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff800000104eda:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
ffff800000104edf:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104ee3:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104ee8:	66 41 0f db fd       	pand   %xmm13,%xmm7
ffff800000104eed:	66 45 0f df eb       	pandn  %xmm11,%xmm13
ffff800000104ef2:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104ef7:	66 44 0f eb ef       	por    %xmm7,%xmm13
ffff800000104efc:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000104f01:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000104f05:	66 0f 64 f8          	pcmpgtb %xmm0,%xmm7
ffff800000104f09:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104f0e:	66 44 0f d6 6c 24 18 	movq   %xmm13,0x18(%rsp)
ffff800000104f15:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104f1a:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000104f1e:	66 0f 6f d8          	movdqa %xmm0,%xmm3
ffff800000104f22:	66 0f 60 df          	punpcklbw %xmm7,%xmm3
ffff800000104f26:	66 0f 60 c7          	punpcklbw %xmm7,%xmm0
ffff800000104f2a:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000104f2f:	66 0f 65 fb          	pcmpgtw %xmm3,%xmm7
ffff800000104f33:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff800000104f38:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000104f3d:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
ffff800000104f42:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
ffff800000104f46:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104f4b:	66 45 0f db e8       	pand   %xmm8,%xmm13
ffff800000104f50:	66 45 0f df c3       	pandn  %xmm11,%xmm8
ffff800000104f55:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000104f5a:	66 45 0f eb c5       	por    %xmm13,%xmm8
ffff800000104f5f:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff800000104f64:	66 0f db fb          	pand   %xmm3,%xmm7
ffff800000104f68:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
ffff800000104f6d:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104f72:	66 0f eb df          	por    %xmm7,%xmm3
ffff800000104f76:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000104f7a:	66 41 0f 61 fd       	punpcklwd %xmm13,%xmm7
ffff800000104f7f:	66 4d 0f 7e ea       	movq   %xmm13,%r10
ffff800000104f84:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104f89:	66 44 0f db ef       	pand   %xmm7,%xmm13
ffff800000104f8e:	66 41 0f df fb       	pandn  %xmm11,%xmm7
ffff800000104f93:	66 41 0f eb fd       	por    %xmm13,%xmm7
ffff800000104f98:	66 4d 0f 6e ea       	movq   %r10,%xmm13
ffff800000104f9d:	66 41 0f 61 c5       	punpcklwd %xmm13,%xmm0
ffff800000104fa2:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104fa7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000104fac:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff800000104fb1:	66 41 0f df c3       	pandn  %xmm11,%xmm0
ffff800000104fb6:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff800000104fbb:	66 4c 0f 6e ea       	movq   %rdx,%xmm13
ffff800000104fc0:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
ffff800000104fc6:	66 44 0f 7e 6d 00    	movd   %xmm13,0x0(%rbp)
ffff800000104fcc:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000104fd2:	66 41 0f 7e 34 24    	movd   %xmm6,(%r12)
ffff800000104fd8:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
ffff800000104fde:	66 4c 0f 6e e8       	movq   %rax,%xmm13
ffff800000104fe3:	41 89 06             	mov    %eax,(%r14)
ffff800000104fe6:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
ffff800000104fec:	66 45 0f 7e 2f       	movd   %xmm13,(%r15)
ffff800000104ff1:	f3 0f 7e 74 24 88    	movq   -0x78(%rsp),%xmm6
ffff800000104ff7:	66 41 0f 7e 30       	movd   %xmm6,(%r8)
ffff800000104ffc:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105002:	f3 0f 7e 74 24 90    	movq   -0x70(%rsp),%xmm6
ffff800000105008:	66 44 0f 7e 2f       	movd   %xmm13,(%rdi)
ffff80000010500d:	66 0f 7e 73 04       	movd   %xmm6,0x4(%rbx)
ffff800000105012:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105018:	f3 0f 7e 74 24 98    	movq   -0x68(%rsp),%xmm6
ffff80000010501e:	66 44 0f 7e 6d 04    	movd   %xmm13,0x4(%rbp)
ffff800000105024:	66 41 0f 7e 74 24 04 	movd   %xmm6,0x4(%r12)
ffff80000010502b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105031:	f3 0f 7e 74 24 a0    	movq   -0x60(%rsp),%xmm6
ffff800000105037:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
ffff80000010503d:	66 41 0f 7e 76 04    	movd   %xmm6,0x4(%r14)
ffff800000105043:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105049:	f3 0f 7e 74 24 a8    	movq   -0x58(%rsp),%xmm6
ffff80000010504f:	66 45 0f 7e 6f 04    	movd   %xmm13,0x4(%r15)
ffff800000105055:	66 41 0f 7e 70 04    	movd   %xmm6,0x4(%r8)
ffff80000010505b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105061:	f3 0f 7e 74 24 b0    	movq   -0x50(%rsp),%xmm6
ffff800000105067:	66 44 0f 7e 6f 04    	movd   %xmm13,0x4(%rdi)
ffff80000010506d:	66 0f 7e 73 08       	movd   %xmm6,0x8(%rbx)
ffff800000105072:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105078:	f3 0f 7e 74 24 b8    	movq   -0x48(%rsp),%xmm6
ffff80000010507e:	66 44 0f 7e 6d 08    	movd   %xmm13,0x8(%rbp)
ffff800000105084:	66 41 0f 7e 74 24 08 	movd   %xmm6,0x8(%r12)
ffff80000010508b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105091:	f3 0f 7e 74 24 c0    	movq   -0x40(%rsp),%xmm6
ffff800000105097:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
ffff80000010509d:	66 41 0f 7e 76 08    	movd   %xmm6,0x8(%r14)
ffff8000001050a3:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050a9:	f3 0f 7e 74 24 c8    	movq   -0x38(%rsp),%xmm6
ffff8000001050af:	66 45 0f 7e 6f 08    	movd   %xmm13,0x8(%r15)
ffff8000001050b5:	66 41 0f 7e 70 08    	movd   %xmm6,0x8(%r8)
ffff8000001050bb:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050c1:	f3 0f 7e 74 24 d0    	movq   -0x30(%rsp),%xmm6
ffff8000001050c7:	66 44 0f 7e 6f 08    	movd   %xmm13,0x8(%rdi)
ffff8000001050cd:	66 0f 7e 73 0c       	movd   %xmm6,0xc(%rbx)
ffff8000001050d2:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050d8:	f3 0f 7e 74 24 d8    	movq   -0x28(%rsp),%xmm6
ffff8000001050de:	66 44 0f 7e 6d 0c    	movd   %xmm13,0xc(%rbp)
ffff8000001050e4:	66 41 0f 7e 74 24 0c 	movd   %xmm6,0xc(%r12)
ffff8000001050eb:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050f1:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
ffff8000001050f7:	f3 0f 7e 74 24 e0    	movq   -0x20(%rsp),%xmm6
ffff8000001050fd:	66 41 0f 7e 76 0c    	movd   %xmm6,0xc(%r14)
ffff800000105103:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105109:	f3 0f 7e 74 24 e8    	movq   -0x18(%rsp),%xmm6
ffff80000010510f:	66 45 0f 7e 6f 0c    	movd   %xmm13,0xc(%r15)
ffff800000105115:	66 41 0f 7e 70 0c    	movd   %xmm6,0xc(%r8)
ffff80000010511b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105121:	f3 0f 7e 74 24 f0    	movq   -0x10(%rsp),%xmm6
ffff800000105127:	66 44 0f 7e 6f 0c    	movd   %xmm13,0xc(%rdi)
ffff80000010512d:	66 0f 7e 73 10       	movd   %xmm6,0x10(%rbx)
ffff800000105132:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105138:	f3 0f 7e 74 24 f8    	movq   -0x8(%rsp),%xmm6
ffff80000010513e:	66 44 0f 7e 6d 10    	movd   %xmm13,0x10(%rbp)
ffff800000105144:	66 41 0f 7e 74 24 10 	movd   %xmm6,0x10(%r12)
ffff80000010514b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105151:	f3 0f 7e 34 24       	movq   (%rsp),%xmm6
ffff800000105156:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
ffff80000010515c:	66 41 0f 7e 76 10    	movd   %xmm6,0x10(%r14)
ffff800000105162:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105168:	f3 0f 7e 74 24 08    	movq   0x8(%rsp),%xmm6
ffff80000010516e:	66 45 0f 7e 6f 10    	movd   %xmm13,0x10(%r15)
ffff800000105174:	66 41 0f 7e 70 10    	movd   %xmm6,0x10(%r8)
ffff80000010517a:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105180:	f3 0f 7e 74 24 10    	movq   0x10(%rsp),%xmm6
ffff800000105186:	66 44 0f 7e 6f 10    	movd   %xmm13,0x10(%rdi)
ffff80000010518c:	66 0f 7e 73 14       	movd   %xmm6,0x14(%rbx)
ffff800000105191:	66 0f 70 f6 e5       	pshufd $0xe5,%xmm6,%xmm6
ffff800000105196:	66 0f 7e 75 14       	movd   %xmm6,0x14(%rbp)
ffff80000010519b:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
ffff8000001051a2:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001051a7:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
ffff8000001051ad:	66 41 0f 70 ef e5    	pshufd $0xe5,%xmm15,%xmm5
ffff8000001051b3:	66 45 0f 7e 7e 14    	movd   %xmm15,0x14(%r14)
ffff8000001051b9:	66 41 0f 7e 6f 14    	movd   %xmm5,0x14(%r15)
ffff8000001051bf:	66 0f 70 ea e5       	pshufd $0xe5,%xmm2,%xmm5
ffff8000001051c4:	66 41 0f 7e 50 14    	movd   %xmm2,0x14(%r8)
ffff8000001051ca:	66 0f 7e 6f 14       	movd   %xmm5,0x14(%rdi)
ffff8000001051cf:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
ffff8000001051d5:	66 44 0f 7e 73 18    	movd   %xmm14,0x18(%rbx)
ffff8000001051db:	66 0f 7e 6d 18       	movd   %xmm5,0x18(%rbp)
ffff8000001051e0:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001051e5:	66 41 0f 7e 64 24 18 	movd   %xmm4,0x18(%r12)
ffff8000001051ec:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
ffff8000001051f2:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff8000001051f8:	66 41 0f 7e 6e 18    	movd   %xmm5,0x18(%r14)
ffff8000001051fe:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105203:	66 41 0f 7e 6f 18    	movd   %xmm5,0x18(%r15)
ffff800000105209:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff80000010520e:	66 41 0f 7e 48 18    	movd   %xmm1,0x18(%r8)
ffff800000105214:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
ffff800000105219:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff80000010521f:	66 44 0f 7e 43 1c    	movd   %xmm8,0x1c(%rbx)
ffff800000105225:	4c 01 cb             	add    %r9,%rbx
ffff800000105228:	66 0f 7e 6d 1c       	movd   %xmm5,0x1c(%rbp)
ffff80000010522d:	66 0f 70 eb e5       	pshufd $0xe5,%xmm3,%xmm5
ffff800000105232:	4c 01 cd             	add    %r9,%rbp
ffff800000105235:	66 41 0f 7e 5c 24 1c 	movd   %xmm3,0x1c(%r12)
ffff80000010523c:	4d 01 cc             	add    %r9,%r12
ffff80000010523f:	66 41 0f 7e 6d 1c    	movd   %xmm5,0x1c(%r13)
ffff800000105245:	4d 01 cd             	add    %r9,%r13
ffff800000105248:	66 41 0f 7e 7e 1c    	movd   %xmm7,0x1c(%r14)
ffff80000010524e:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000105253:	4d 01 ce             	add    %r9,%r14
ffff800000105256:	66 41 0f 7e 7f 1c    	movd   %xmm7,0x1c(%r15)
ffff80000010525c:	4d 01 cf             	add    %r9,%r15
ffff80000010525f:	66 41 0f 7e 40 1c    	movd   %xmm0,0x1c(%r8)
ffff800000105265:	66 0f 70 c0 e5       	pshufd $0xe5,%xmm0,%xmm0
ffff80000010526a:	4d 01 c8             	add    %r9,%r8
ffff80000010526d:	66 0f 7e 47 1c       	movd   %xmm0,0x1c(%rdi)
ffff800000105272:	4c 01 cf             	add    %r9,%rdi
ffff800000105275:	48 39 ce             	cmp    %rcx,%rsi
ffff800000105278:	0f 85 89 f6 ff ff    	jne    ffff800000104907 <putchar+0x197>
ffff80000010527e:	48 83 c4 58          	add    $0x58,%rsp
ffff800000105282:	5b                   	pop    %rbx
ffff800000105283:	5d                   	pop    %rbp
ffff800000105284:	41 5c                	pop    %r12
ffff800000105286:	41 5d                	pop    %r13
ffff800000105288:	41 5e                	pop    %r14
ffff80000010528a:	41 5f                	pop    %r15
ffff80000010528c:	c3                   	ret
ffff80000010528d:	4a 8d 04 17          	lea    (%rdi,%r10,1),%rax
ffff800000105291:	48 8d 7a 10          	lea    0x10(%rdx),%rdi
ffff800000105295:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff800000105298:	44 89 c6             	mov    %r8d,%esi
ffff80000010529b:	41 0f 49 f1          	cmovns %r9d,%esi
ffff80000010529f:	89 30                	mov    %esi,(%rax)
ffff8000001052a1:	44 89 c6             	mov    %r8d,%esi
ffff8000001052a4:	f6 02 40             	testb  $0x40,(%rdx)
ffff8000001052a7:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052ab:	89 70 04             	mov    %esi,0x4(%rax)
ffff8000001052ae:	44 89 c6             	mov    %r8d,%esi
ffff8000001052b1:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001052b4:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052b8:	89 70 08             	mov    %esi,0x8(%rax)
ffff8000001052bb:	44 89 c6             	mov    %r8d,%esi
ffff8000001052be:	f6 02 10             	testb  $0x10,(%rdx)
ffff8000001052c1:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052c5:	89 70 0c             	mov    %esi,0xc(%rax)
ffff8000001052c8:	44 89 c6             	mov    %r8d,%esi
ffff8000001052cb:	f6 02 08             	testb  $0x8,(%rdx)
ffff8000001052ce:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052d2:	89 70 10             	mov    %esi,0x10(%rax)
ffff8000001052d5:	44 89 c6             	mov    %r8d,%esi
ffff8000001052d8:	f6 02 04             	testb  $0x4,(%rdx)
ffff8000001052db:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052df:	89 70 14             	mov    %esi,0x14(%rax)
ffff8000001052e2:	44 89 c6             	mov    %r8d,%esi
ffff8000001052e5:	f6 02 02             	testb  $0x2,(%rdx)
ffff8000001052e8:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052ec:	89 70 18             	mov    %esi,0x18(%rax)
ffff8000001052ef:	f6 02 01             	testb  $0x1,(%rdx)
ffff8000001052f2:	74 1c                	je     ffff800000105310 <putchar+0xba0>
ffff8000001052f4:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001052f8:	44 89 40 1c          	mov    %r8d,0x1c(%rax)
ffff8000001052fc:	48 01 c8             	add    %rcx,%rax
ffff8000001052ff:	48 39 d7             	cmp    %rdx,%rdi
ffff800000105302:	75 91                	jne    ffff800000105295 <putchar+0xb25>
ffff800000105304:	e9 75 ff ff ff       	jmp    ffff80000010527e <putchar+0xb0e>
ffff800000105309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105310:	48 83 c2 01          	add    $0x1,%rdx
ffff800000105314:	44 89 48 1c          	mov    %r9d,0x1c(%rax)
ffff800000105318:	48 01 c8             	add    %rcx,%rax
ffff80000010531b:	48 39 d7             	cmp    %rdx,%rdi
ffff80000010531e:	0f 85 71 ff ff ff    	jne    ffff800000105295 <putchar+0xb25>
ffff800000105324:	e9 55 ff ff ff       	jmp    ffff80000010527e <putchar+0xb0e>
ffff800000105329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

ffff800000105330 <clear_screen>:
ffff800000105330:	f3 0f 1e fa          	endbr64
ffff800000105334:	49 bb 4c 7d 00 00 00 	movabs $0x7d4c,%r11
ffff80000010533b:	00 00 00 
ffff80000010533e:	41 57                	push   %r15
ffff800000105340:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # ffff800000105334 <clear_screen+0x4>
ffff800000105347:	41 56                	push   %r14
ffff800000105349:	4d 01 df             	add    %r11,%r15
ffff80000010534c:	49 be 20 10 00 00 00 	movabs $0x1020,%r14
ffff800000105353:	00 00 00 
ffff800000105356:	41 55                	push   %r13
ffff800000105358:	41 54                	push   %r12
ffff80000010535a:	55                   	push   %rbp
ffff80000010535b:	53                   	push   %rbx
ffff80000010535c:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
ffff800000105363:	43 8b 04 3e          	mov    (%r14,%r15,1),%eax
ffff800000105367:	99                   	cltd
ffff800000105368:	43 f7 7c 3e 10       	idivl  0x10(%r14,%r15,1)
ffff80000010536d:	89 84 24 c8 00 00 00 	mov    %eax,0xc8(%rsp)
ffff800000105374:	43 8b 44 3e 04       	mov    0x4(%r14,%r15,1),%eax
ffff800000105379:	99                   	cltd
ffff80000010537a:	43 f7 7c 3e 14       	idivl  0x14(%r14,%r15,1)
ffff80000010537f:	85 c0                	test   %eax,%eax
ffff800000105381:	0f 8e 5b 0c 00 00    	jle    ffff800000105fe2 <clear_screen+0xcb2>
ffff800000105387:	48 bb 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rbx
ffff80000010538e:	ff ff ff 
ffff800000105391:	41 89 fd             	mov    %edi,%r13d
ffff800000105394:	48 ba 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rdx
ffff80000010539b:	ff ff ff 
ffff80000010539e:	48 bf d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rdi
ffff8000001053a5:	ff ff ff 
ffff8000001053a8:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
ffff8000001053af:	00 
ffff8000001053b0:	4a 8d 1c 3a          	lea    (%rdx,%r15,1),%rbx
ffff8000001053b4:	8b 94 24 c8 00 00 00 	mov    0xc8(%rsp),%edx
ffff8000001053bb:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
ffff8000001053c0:	4f 8b 64 3e 18       	mov    0x18(%r14,%r15,1),%r12
ffff8000001053c5:	48 bb f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rbx
ffff8000001053cc:	ff ff ff 
ffff8000001053cf:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
ffff8000001053d6:	00 
ffff8000001053d7:	48 bb 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%rbx
ffff8000001053de:	ff ff ff 
ffff8000001053e1:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
ffff8000001053e8:	00 00 00 00 
ffff8000001053ec:	48 89 bc 24 a8 00 00 	mov    %rdi,0xa8(%rsp)
ffff8000001053f3:	00 
ffff8000001053f4:	48 89 9c 24 b0 00 00 	mov    %rbx,0xb0(%rsp)
ffff8000001053fb:	00 
ffff8000001053fc:	85 d2                	test   %edx,%edx
ffff8000001053fe:	0f 8e de 0b 00 00    	jle    ffff800000105fe2 <clear_screen+0xcb2>
ffff800000105404:	4c 89 a4 24 80 00 00 	mov    %r12,0x80(%rsp)
ffff80000010540b:	00 
ffff80000010540c:	45 89 ec             	mov    %r13d,%r12d
ffff80000010540f:	41 89 f5             	mov    %esi,%r13d
ffff800000105412:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
ffff800000105419:	00 
ffff80000010541a:	89 84 24 cc 00 00 00 	mov    %eax,0xcc(%rsp)
ffff800000105421:	48 be 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%rsi
ffff800000105428:	ff ff ff 
ffff80000010542b:	44 89 e8             	mov    %r13d,%eax
ffff80000010542e:	c7 84 24 88 00 00 00 	movl   $0x0,0x88(%rsp)
ffff800000105435:	00 00 00 00 
ffff800000105439:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
ffff80000010543d:	48 89 b4 24 c0 00 00 	mov    %rsi,0xc0(%rsp)
ffff800000105444:	00 
ffff800000105445:	48 bb 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%rbx
ffff80000010544c:	ff ff ff 
ffff80000010544f:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
ffff800000105454:	48 83 c7 0f          	add    $0xf,%rdi
ffff800000105458:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
ffff80000010545f:	00 
ffff800000105460:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
ffff800000105467:	00 
ffff800000105468:	4b 63 1c 3e          	movslq (%r14,%r15,1),%rbx
ffff80000010546c:	44 8b 8c 24 8c 00 00 	mov    0x8c(%rsp),%r9d
ffff800000105473:	00 
ffff800000105474:	41 bd 1f 00 00 00    	mov    $0x1f,%r13d
ffff80000010547a:	bd 00 00 00 00       	mov    $0x0,%ebp
ffff80000010547f:	47 0f af 4c 3e 14    	imul   0x14(%r14,%r15,1),%r9d
ffff800000105485:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
ffff80000010548c:	00 
ffff80000010548d:	47 0f af 54 3e 10    	imul   0x10(%r14,%r15,1),%r10d
ffff800000105493:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
ffff80000010549a:	00 
ffff80000010549b:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
ffff8000001054a2:	00 
ffff8000001054a3:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
ffff8000001054a8:	44 0f af cb          	imul   %ebx,%r9d
ffff8000001054ac:	4d 63 d2             	movslq %r10d,%r10
ffff8000001054af:	4d 63 c9             	movslq %r9d,%r9
ffff8000001054b2:	4d 01 d1             	add    %r10,%r9
ffff8000001054b5:	49 89 da             	mov    %rbx,%r10
ffff8000001054b8:	49 c1 e2 04          	shl    $0x4,%r10
ffff8000001054bc:	49 c1 e1 02          	shl    $0x2,%r9
ffff8000001054c0:	49 29 da             	sub    %rbx,%r10
ffff8000001054c3:	49 c1 e2 02          	shl    $0x2,%r10
ffff8000001054c7:	85 db                	test   %ebx,%ebx
ffff8000001054c9:	4d 8d 5a 1f          	lea    0x1f(%r10),%r11
ffff8000001054cd:	4d 0f 48 dd          	cmovs  %r13,%r11
ffff8000001054d1:	4d 01 cb             	add    %r9,%r11
ffff8000001054d4:	49 01 fb             	add    %rdi,%r11
ffff8000001054d7:	4d 39 c3             	cmp    %r8,%r11
ffff8000001054da:	41 0f 92 c3          	setb   %r11b
ffff8000001054de:	85 db                	test   %ebx,%ebx
ffff8000001054e0:	4c 0f 49 d5          	cmovns %rbp,%r10
ffff8000001054e4:	4d 01 ca             	add    %r9,%r10
ffff8000001054e7:	49 01 fa             	add    %rdi,%r10
ffff8000001054ea:	4c 39 94 24 98 00 00 	cmp    %r10,0x98(%rsp)
ffff8000001054f1:	00 
ffff8000001054f2:	41 0f 92 c2          	setb   %r10b
ffff8000001054f6:	45 08 da             	or     %r11b,%r10b
ffff8000001054f9:	0f 84 fe 0a 00 00    	je     ffff800000105ffd <clear_screen+0xccd>
ffff8000001054ff:	4c 8d 52 1f          	lea    0x1f(%rdx),%r10
ffff800000105503:	49 83 fa 3e          	cmp    $0x3e,%r10
ffff800000105507:	0f 86 f0 0a 00 00    	jbe    ffff800000105ffd <clear_screen+0xccd>
ffff80000010550d:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
ffff800000105511:	49 8d b8 00 fe ff ff 	lea    -0x200(%r8),%rdi
ffff800000105518:	48 c1 e3 05          	shl    $0x5,%rbx
ffff80000010551c:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
ffff800000105520:	48 89 d9             	mov    %rbx,%rcx
ffff800000105523:	66 41 0f 6e d4       	movd   %r12d,%xmm2
ffff800000105528:	4d 8d 04 11          	lea    (%r9,%rdx,1),%r8
ffff80000010552c:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000105532:	66 0f 6e d0          	movd   %eax,%xmm2
ffff800000105536:	4d 8d 2c 10          	lea    (%r8,%rdx,1),%r13
ffff80000010553a:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff800000105540:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000105545:	49 8d 6c 15 00       	lea    0x0(%r13,%rdx,1),%rbp
ffff80000010554a:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff80000010554f:	48 8d 5c 15 00       	lea    0x0(%rbp,%rdx,1),%rbx
ffff800000105554:	4c 8d 1c 13          	lea    (%rbx,%rdx,1),%r11
ffff800000105558:	4d 8d 14 13          	lea    (%r11,%rdx,1),%r10
ffff80000010555c:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
ffff800000105561:	48 81 ea f0 01 00 00 	sub    $0x1f0,%rdx
ffff800000105568:	48 89 54 24 88       	mov    %rdx,-0x78(%rsp)
ffff80000010556d:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
ffff800000105574:	00 
ffff800000105575:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff800000105579:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
ffff80000010557e:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
ffff800000105585:	00 
ffff800000105586:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff80000010558a:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
ffff80000010558f:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
ffff800000105596:	00 
ffff800000105597:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff80000010559b:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
ffff8000001055a0:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
ffff8000001055a7:	00 
ffff8000001055a8:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055ac:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
ffff8000001055b1:	48 8b 94 24 c0 00 00 	mov    0xc0(%rsp),%rdx
ffff8000001055b8:	00 
ffff8000001055b9:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055bd:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
ffff8000001055c2:	48 ba 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%rdx
ffff8000001055c9:	ff ff ff 
ffff8000001055cc:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055d0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
ffff8000001055d5:	48 ba 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%rdx
ffff8000001055dc:	ff ff ff 
ffff8000001055df:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055e3:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
ffff8000001055e8:	44 89 e2             	mov    %r12d,%edx
ffff8000001055eb:	41 89 c4             	mov    %eax,%r12d
ffff8000001055ee:	48 8b 44 24 88       	mov    -0x78(%rsp),%rax
ffff8000001055f3:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff8000001055f8:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff8000001055fd:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105602:	f3 0f 7e 97 00 02 00 	movq   0x200(%rdi),%xmm2
ffff800000105609:	00 
ffff80000010560a:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010560f:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
ffff800000105614:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105619:	48 83 c7 08          	add    $0x8,%rdi
ffff80000010561d:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
ffff800000105621:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000105625:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000105629:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff80000010562d:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105631:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105636:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff80000010563a:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff80000010563f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105644:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000105648:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff80000010564c:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000105651:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105656:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010565b:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000105660:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000105665:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000105669:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010566e:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000105673:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000105677:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff80000010567c:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105681:	66 44 0f 7e 36       	movd   %xmm14,(%rsi)
ffff800000105686:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff80000010568a:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
ffff800000105690:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105694:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000105698:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010569d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001056a2:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff8000001056a6:	66 0f db e7          	pand   %xmm7,%xmm4
ffff8000001056aa:	66 0f db e8          	pand   %xmm0,%xmm5
ffff8000001056ae:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001056b3:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001056b8:	66 0f eb c5          	por    %xmm5,%xmm0
ffff8000001056bc:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
ffff8000001056c2:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff8000001056c6:	66 0f d6 44 24 98    	movq   %xmm0,-0x68(%rsp)
ffff8000001056cc:	66 0f eb fc          	por    %xmm4,%xmm7
ffff8000001056d0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001056d5:	66 0f db ea          	pand   %xmm2,%xmm5
ffff8000001056d9:	66 0f d6 7c 24 90    	movq   %xmm7,-0x70(%rsp)
ffff8000001056df:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff8000001056e4:	66 0f 6f c5          	movdqa %xmm5,%xmm0
ffff8000001056e8:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff8000001056ed:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001056f2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001056f7:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff8000001056fb:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff8000001056ff:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000105703:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105707:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff80000010570b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010570f:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000105713:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105718:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010571d:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000105721:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000105725:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010572a:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010572f:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000105733:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105738:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010573c:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105741:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000105745:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000105749:	66 0f d6 5c 24 a0    	movq   %xmm3,-0x60(%rsp)
ffff80000010574f:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000105753:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105758:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
ffff80000010575c:	66 0f d6 6c 24 a8    	movq   %xmm5,-0x58(%rsp)
ffff800000105762:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105767:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff80000010576b:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff80000010576f:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000105773:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105777:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010577c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000105780:	66 0f db e6          	pand   %xmm6,%xmm4
ffff800000105784:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105789:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010578e:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000105792:	66 0f eb f4          	por    %xmm4,%xmm6
ffff800000105796:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010579b:	66 0f db e0          	pand   %xmm0,%xmm4
ffff80000010579f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001057a4:	66 0f d6 74 24 b0    	movq   %xmm6,-0x50(%rsp)
ffff8000001057aa:	f3 0f 7e 74 24 60    	movq   0x60(%rsp),%xmm6
ffff8000001057b0:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff8000001057b4:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff8000001057b8:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
ffff8000001057be:	66 0f eb e1          	por    %xmm1,%xmm4
ffff8000001057c2:	66 0f db f2          	pand   %xmm2,%xmm6
ffff8000001057c6:	66 0f db c2          	pand   %xmm2,%xmm0
ffff8000001057ca:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
ffff8000001057d0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001057d5:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001057da:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001057df:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff8000001057e3:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001057e7:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff8000001057eb:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001057ef:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff8000001057f3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001057f8:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001057fc:	66 44 0f 65 e0       	pcmpgtw %xmm0,%xmm12
ffff800000105801:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105806:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff80000010580a:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff80000010580e:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105813:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000105817:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010581c:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105821:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000105825:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff80000010582a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010582f:	66 0f d6 5c 24 c0    	movq   %xmm3,-0x40(%rsp)
ffff800000105835:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff80000010583a:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff80000010583f:	f3 44 0f 7e 64 24 58 	movq   0x58(%rsp),%xmm12
ffff800000105846:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff80000010584a:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010584f:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105854:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
ffff80000010585a:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010585f:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000105864:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000105869:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff80000010586e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105873:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105878:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff80000010587d:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff800000105882:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff800000105887:	66 0f d6 44 24 d8    	movq   %xmm0,-0x28(%rsp)
ffff80000010588d:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000105892:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff800000105897:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff80000010589c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001058a1:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff8000001058a6:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001058ab:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
ffff8000001058b2:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
ffff8000001058b7:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001058bc:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
ffff8000001058c1:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
ffff8000001058c6:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff8000001058cb:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
ffff8000001058d0:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001058d4:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
ffff8000001058d9:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff8000001058de:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff8000001058e3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001058e8:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff8000001058ec:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff8000001058f1:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001058f5:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001058fa:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff8000001058ff:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000105904:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105909:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010590e:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105913:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff800000105918:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010591d:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
ffff800000105922:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000105927:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff80000010592c:	66 44 0f eb e5       	por    %xmm5,%xmm12
ffff800000105931:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff800000105936:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff80000010593a:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff80000010593e:	66 44 0f d6 64 24 e0 	movq   %xmm12,-0x20(%rsp)
ffff800000105945:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000105949:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff80000010594d:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105952:	66 44 0f d6 6c 24 e8 	movq   %xmm13,-0x18(%rsp)
ffff800000105959:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff80000010595d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105962:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000105966:	66 0f db e8          	pand   %xmm0,%xmm5
ffff80000010596a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010596f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105974:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000105978:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff80000010597c:	66 0f 6f e8          	movdqa %xmm0,%xmm5
ffff800000105980:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff800000105984:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000105989:	66 0f eb fc          	por    %xmm4,%xmm7
ffff80000010598d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105992:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff800000105997:	66 0f eb e9          	por    %xmm1,%xmm5
ffff80000010599b:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
ffff8000001059a1:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
ffff8000001059a7:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff8000001059ac:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
ffff8000001059b1:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
ffff8000001059b6:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001059bb:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff8000001059bf:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001059c3:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff8000001059c7:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff8000001059cb:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001059cf:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff8000001059d3:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001059d7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001059dc:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
ffff8000001059e0:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001059e4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001059e9:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001059ed:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001059f2:	66 0f db ee          	pand   %xmm6,%xmm5
ffff8000001059f6:	66 0f db e1          	pand   %xmm1,%xmm4
ffff8000001059fa:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001059ff:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105a04:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff800000105a08:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000105a0c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000105a10:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000105a14:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105a19:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000105a1d:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000105a21:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
ffff800000105a27:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105a2c:	66 0f eb f5          	por    %xmm5,%xmm6
ffff800000105a30:	66 0f d6 34 24       	movq   %xmm6,(%rsp)
ffff800000105a35:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105a3a:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105a3e:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000105a42:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105a47:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105a4c:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000105a50:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105a55:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000105a5a:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105a5f:	66 0f eb cc          	por    %xmm4,%xmm1
ffff800000105a63:	66 41 0f eb c0       	por    %xmm8,%xmm0
ffff800000105a68:	f3 44 0f 7e 44 24 68 	movq   0x68(%rsp),%xmm8
ffff800000105a6f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105a74:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
ffff800000105a7a:	66 0f d6 44 24 18    	movq   %xmm0,0x18(%rsp)
ffff800000105a80:	66 44 0f db c2       	pand   %xmm2,%xmm8
ffff800000105a85:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000105a8a:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000105a8f:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000105a94:	66 44 0f 64 e1       	pcmpgtb %xmm1,%xmm12
ffff800000105a99:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000105a9d:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000105aa2:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105aa7:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff800000105aab:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff800000105aaf:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000105ab3:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105ab8:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
ffff800000105abd:	66 44 0f 65 e9       	pcmpgtw %xmm1,%xmm13
ffff800000105ac2:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105ac7:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000105acb:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105ad0:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff800000105ad5:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff800000105ada:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000105adf:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105ae4:	66 44 0f db e5       	pand   %xmm5,%xmm12
ffff800000105ae9:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff800000105aee:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105af3:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
ffff800000105af8:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000105afd:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff800000105b01:	66 41 0f eb ec       	por    %xmm12,%xmm5
ffff800000105b06:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105b0b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105b10:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff800000105b15:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff800000105b1a:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff800000105b1f:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105b24:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff800000105b29:	66 44 0f d6 44 24 20 	movq   %xmm8,0x20(%rsp)
ffff800000105b30:	66 41 0f eb cc       	por    %xmm12,%xmm1
ffff800000105b35:	f3 44 0f 7e 64 24 70 	movq   0x70(%rsp),%xmm12
ffff800000105b3c:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff800000105b41:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff800000105b46:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000105b4b:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000105b50:	66 44 0f d6 6c 24 28 	movq   %xmm13,0x28(%rsp)
ffff800000105b57:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000105b5c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105b61:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105b66:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000105b6a:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000105b6e:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000105b72:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105b76:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105b7b:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000105b7f:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff800000105b84:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105b89:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105b8e:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
ffff800000105b93:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000105b97:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105b9c:	66 41 0f db f4       	pand   %xmm12,%xmm6
ffff800000105ba1:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff800000105ba6:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000105bab:	66 44 0f eb e6       	por    %xmm6,%xmm12
ffff800000105bb0:	66 0f db dc          	pand   %xmm4,%xmm3
ffff800000105bb4:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff800000105bb9:	66 44 0f d6 64 24 30 	movq   %xmm12,0x30(%rsp)
ffff800000105bc0:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000105bc4:	f3 44 0f 7e 64 24 78 	movq   0x78(%rsp),%xmm12
ffff800000105bcb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105bd0:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000105bd4:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105bd9:	66 41 0f db d4       	pand   %xmm12,%xmm2
ffff800000105bde:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105be3:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff800000105be8:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105bed:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105bf1:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105bf6:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff800000105bfb:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff800000105c00:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105c05:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff800000105c0a:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff800000105c0f:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000105c14:	66 0f db d8          	pand   %xmm0,%xmm3
ffff800000105c18:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105c1d:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000105c21:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
ffff800000105c25:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000105c29:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
ffff800000105c2d:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff800000105c31:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105c36:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff800000105c3a:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000105c3e:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000105c43:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000105c48:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000105c4c:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
ffff800000105c50:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105c55:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000105c5a:	66 44 0f db e7       	pand   %xmm7,%xmm12
ffff800000105c5f:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000105c64:	66 0f db f3          	pand   %xmm3,%xmm6
ffff800000105c68:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105c6d:	66 41 0f eb fc       	por    %xmm12,%xmm7
ffff800000105c72:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000105c76:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105c7b:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff800000105c7f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000105c84:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
ffff800000105c89:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff800000105c8e:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105c93:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
ffff800000105c98:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105c9e:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff800000105ca3:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff800000105ca8:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
ffff800000105cad:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000105cb2:	f3 44 0f 7e 74 24 88 	movq   -0x78(%rsp),%xmm14
ffff800000105cb9:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff800000105cbe:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105cc3:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff800000105cc8:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff800000105ccd:	66 45 0f 7e 30       	movd   %xmm14,(%r8)
ffff800000105cd2:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff800000105cd7:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105cdd:	f3 44 0f 7e 74 24 90 	movq   -0x70(%rsp),%xmm14
ffff800000105ce4:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
ffff800000105cea:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105cf0:	66 44 0f 7e 75 00    	movd   %xmm14,0x0(%rbp)
ffff800000105cf6:	f3 44 0f 7e 74 24 98 	movq   -0x68(%rsp),%xmm14
ffff800000105cfd:	66 44 0f 7e 23       	movd   %xmm12,(%rbx)
ffff800000105d02:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d08:	66 45 0f 7e 33       	movd   %xmm14,(%r11)
ffff800000105d0d:	f3 44 0f 7e 74 24 a0 	movq   -0x60(%rsp),%xmm14
ffff800000105d14:	66 45 0f 7e 2a       	movd   %xmm13,(%r10)
ffff800000105d19:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d1f:	66 44 0f 7e 76 04    	movd   %xmm14,0x4(%rsi)
ffff800000105d25:	f3 44 0f 7e 74 24 a8 	movq   -0x58(%rsp),%xmm14
ffff800000105d2c:	66 45 0f 7e 61 04    	movd   %xmm12,0x4(%r9)
ffff800000105d32:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d38:	66 45 0f 7e 70 04    	movd   %xmm14,0x4(%r8)
ffff800000105d3e:	f3 44 0f 7e 74 24 b0 	movq   -0x50(%rsp),%xmm14
ffff800000105d45:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
ffff800000105d4b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d51:	66 44 0f 7e 75 04    	movd   %xmm14,0x4(%rbp)
ffff800000105d57:	f3 44 0f 7e 74 24 b8 	movq   -0x48(%rsp),%xmm14
ffff800000105d5e:	66 44 0f 7e 63 04    	movd   %xmm12,0x4(%rbx)
ffff800000105d64:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d6a:	66 45 0f 7e 73 04    	movd   %xmm14,0x4(%r11)
ffff800000105d70:	f3 44 0f 7e 74 24 c0 	movq   -0x40(%rsp),%xmm14
ffff800000105d77:	66 45 0f 7e 6a 04    	movd   %xmm13,0x4(%r10)
ffff800000105d7d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d83:	66 44 0f 7e 76 08    	movd   %xmm14,0x8(%rsi)
ffff800000105d89:	f3 44 0f 7e 74 24 c8 	movq   -0x38(%rsp),%xmm14
ffff800000105d90:	66 45 0f 7e 61 08    	movd   %xmm12,0x8(%r9)
ffff800000105d96:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d9c:	66 45 0f 7e 70 08    	movd   %xmm14,0x8(%r8)
ffff800000105da2:	f3 44 0f 7e 74 24 d0 	movq   -0x30(%rsp),%xmm14
ffff800000105da9:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
ffff800000105daf:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105db5:	66 44 0f 7e 75 08    	movd   %xmm14,0x8(%rbp)
ffff800000105dbb:	f3 44 0f 7e 74 24 d8 	movq   -0x28(%rsp),%xmm14
ffff800000105dc2:	66 44 0f 7e 63 08    	movd   %xmm12,0x8(%rbx)
ffff800000105dc8:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105dce:	66 45 0f 7e 73 08    	movd   %xmm14,0x8(%r11)
ffff800000105dd4:	66 45 0f 7e 6a 08    	movd   %xmm13,0x8(%r10)
ffff800000105dda:	f3 44 0f 7e 74 24 e0 	movq   -0x20(%rsp),%xmm14
ffff800000105de1:	66 44 0f 7e 76 0c    	movd   %xmm14,0xc(%rsi)
ffff800000105de7:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105ded:	f3 44 0f 7e 74 24 e8 	movq   -0x18(%rsp),%xmm14
ffff800000105df4:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
ffff800000105dfa:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e00:	66 45 0f 7e 70 0c    	movd   %xmm14,0xc(%r8)
ffff800000105e06:	f3 44 0f 7e 74 24 f0 	movq   -0x10(%rsp),%xmm14
ffff800000105e0d:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
ffff800000105e13:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e19:	66 44 0f 7e 75 0c    	movd   %xmm14,0xc(%rbp)
ffff800000105e1f:	f3 44 0f 7e 74 24 f8 	movq   -0x8(%rsp),%xmm14
ffff800000105e26:	66 44 0f 7e 63 0c    	movd   %xmm12,0xc(%rbx)
ffff800000105e2c:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e32:	66 45 0f 7e 73 0c    	movd   %xmm14,0xc(%r11)
ffff800000105e38:	f3 44 0f 7e 34 24    	movq   (%rsp),%xmm14
ffff800000105e3e:	66 45 0f 7e 6a 0c    	movd   %xmm13,0xc(%r10)
ffff800000105e44:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e4a:	66 44 0f 7e 76 10    	movd   %xmm14,0x10(%rsi)
ffff800000105e50:	f3 44 0f 7e 74 24 08 	movq   0x8(%rsp),%xmm14
ffff800000105e57:	66 45 0f 7e 61 10    	movd   %xmm12,0x10(%r9)
ffff800000105e5d:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e63:	66 45 0f 7e 70 10    	movd   %xmm14,0x10(%r8)
ffff800000105e69:	f3 44 0f 7e 74 24 10 	movq   0x10(%rsp),%xmm14
ffff800000105e70:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
ffff800000105e76:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e7c:	66 44 0f 7e 75 10    	movd   %xmm14,0x10(%rbp)
ffff800000105e82:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
ffff800000105e89:	66 44 0f 7e 63 10    	movd   %xmm12,0x10(%rbx)
ffff800000105e8f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e95:	66 45 0f 7e 73 10    	movd   %xmm14,0x10(%r11)
ffff800000105e9b:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
ffff800000105ea2:	66 45 0f 7e 6a 10    	movd   %xmm13,0x10(%r10)
ffff800000105ea8:	f3 44 0f 7e 6c 24 28 	movq   0x28(%rsp),%xmm13
ffff800000105eaf:	66 44 0f 7e 76 14    	movd   %xmm14,0x14(%rsi)
ffff800000105eb5:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105ebb:	66 45 0f 7e 61 14    	movd   %xmm12,0x14(%r9)
ffff800000105ec1:	66 41 0f 7e 68 14    	movd   %xmm5,0x14(%r8)
ffff800000105ec7:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105ecc:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
ffff800000105ed2:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff800000105ed8:	66 44 0f 7e 6d 14    	movd   %xmm13,0x14(%rbp)
ffff800000105ede:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
ffff800000105ee3:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff800000105ee8:	66 41 0f 7e 4b 14    	movd   %xmm1,0x14(%r11)
ffff800000105eee:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff800000105ef4:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
ffff800000105efa:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
ffff800000105eff:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105f04:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000105f0a:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000105f0f:	66 41 0f 7e 60 18    	movd   %xmm4,0x18(%r8)
ffff800000105f15:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
ffff800000105f1b:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000105f21:	66 44 0f 7e 45 18    	movd   %xmm8,0x18(%rbp)
ffff800000105f27:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
ffff800000105f2c:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000105f31:	66 41 0f 7e 43 18    	movd   %xmm0,0x18(%r11)
ffff800000105f37:	66 41 0f 7e 6a 18    	movd   %xmm5,0x18(%r10)
ffff800000105f3d:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
ffff800000105f42:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000105f47:	48 01 ce             	add    %rcx,%rsi
ffff800000105f4a:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff800000105f50:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff800000105f55:	49 01 c9             	add    %rcx,%r9
ffff800000105f58:	66 41 0f 7e 58 1c    	movd   %xmm3,0x1c(%r8)
ffff800000105f5e:	49 01 c8             	add    %rcx,%r8
ffff800000105f61:	66 41 0f 7e 7d 1c    	movd   %xmm7,0x1c(%r13)
ffff800000105f67:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000105f6c:	49 01 cd             	add    %rcx,%r13
ffff800000105f6f:	66 0f 7e 75 1c       	movd   %xmm6,0x1c(%rbp)
ffff800000105f74:	48 01 cd             	add    %rcx,%rbp
ffff800000105f77:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff800000105f7c:	48 01 cb             	add    %rcx,%rbx
ffff800000105f7f:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
ffff800000105f85:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff800000105f8a:	49 01 cb             	add    %rcx,%r11
ffff800000105f8d:	66 41 0f 7e 52 1c    	movd   %xmm2,0x1c(%r10)
ffff800000105f93:	49 01 ca             	add    %rcx,%r10
ffff800000105f96:	48 39 c7             	cmp    %rax,%rdi
ffff800000105f99:	0f 85 54 f6 ff ff    	jne    ffff8000001055f3 <clear_screen+0x2c3>
ffff800000105f9f:	44 89 e0             	mov    %r12d,%eax
ffff800000105fa2:	41 89 d4             	mov    %edx,%r12d
ffff800000105fa5:	83 84 24 88 00 00 00 	addl   $0x1,0x88(%rsp)
ffff800000105fac:	01 
ffff800000105fad:	8b bc 24 88 00 00 00 	mov    0x88(%rsp),%edi
ffff800000105fb4:	39 bc 24 c8 00 00 00 	cmp    %edi,0xc8(%rsp)
ffff800000105fbb:	0f 85 a7 f4 ff ff    	jne    ffff800000105468 <clear_screen+0x138>
ffff800000105fc1:	83 84 24 8c 00 00 00 	addl   $0x1,0x8c(%rsp)
ffff800000105fc8:	01 
ffff800000105fc9:	41 89 c5             	mov    %eax,%r13d
ffff800000105fcc:	8b bc 24 8c 00 00 00 	mov    0x8c(%rsp),%edi
ffff800000105fd3:	8b 84 24 cc 00 00 00 	mov    0xcc(%rsp),%eax
ffff800000105fda:	39 f8                	cmp    %edi,%eax
ffff800000105fdc:	0f 85 30 f4 ff ff    	jne    ffff800000105412 <clear_screen+0xe2>
ffff800000105fe2:	4b c7 44 3e 08 00 00 	movq   $0x0,0x8(%r14,%r15,1)
ffff800000105fe9:	00 00 
ffff800000105feb:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
ffff800000105ff2:	5b                   	pop    %rbx
ffff800000105ff3:	5d                   	pop    %rbp
ffff800000105ff4:	41 5c                	pop    %r12
ffff800000105ff6:	41 5d                	pop    %r13
ffff800000105ff8:	41 5e                	pop    %r14
ffff800000105ffa:	41 5f                	pop    %r15
ffff800000105ffc:	c3                   	ret
ffff800000105ffd:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
ffff800000106004:	00 
ffff800000106005:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
ffff80000010600c:	00 
ffff80000010600d:	49 01 f9             	add    %rdi,%r9
ffff800000106010:	4e 8d 14 3b          	lea    (%rbx,%r15,1),%r10
ffff800000106014:	eb 23                	jmp    ffff800000106039 <clear_screen+0xd09>
ffff800000106016:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010601d:	00 00 00 
ffff800000106020:	41 89 41 1c          	mov    %eax,0x1c(%r9)
ffff800000106024:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
ffff800000106029:	49 83 c2 01          	add    $0x1,%r10
ffff80000010602d:	49 01 d1             	add    %rdx,%r9
ffff800000106030:	49 39 f2             	cmp    %rsi,%r10
ffff800000106033:	0f 84 6c ff ff ff    	je     ffff800000105fa5 <clear_screen+0xc75>
ffff800000106039:	41 80 3a 00          	cmpb   $0x0,(%r10)
ffff80000010603d:	89 c1                	mov    %eax,%ecx
ffff80000010603f:	41 0f 48 cc          	cmovs  %r12d,%ecx
ffff800000106043:	41 89 09             	mov    %ecx,(%r9)
ffff800000106046:	89 c1                	mov    %eax,%ecx
ffff800000106048:	41 f6 02 40          	testb  $0x40,(%r10)
ffff80000010604c:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff800000106050:	41 89 49 04          	mov    %ecx,0x4(%r9)
ffff800000106054:	89 c1                	mov    %eax,%ecx
ffff800000106056:	41 f6 02 20          	testb  $0x20,(%r10)
ffff80000010605a:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010605e:	41 89 49 08          	mov    %ecx,0x8(%r9)
ffff800000106062:	89 c1                	mov    %eax,%ecx
ffff800000106064:	41 f6 02 10          	testb  $0x10,(%r10)
ffff800000106068:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010606c:	41 89 49 0c          	mov    %ecx,0xc(%r9)
ffff800000106070:	89 c1                	mov    %eax,%ecx
ffff800000106072:	41 f6 02 08          	testb  $0x8,(%r10)
ffff800000106076:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010607a:	41 89 49 10          	mov    %ecx,0x10(%r9)
ffff80000010607e:	89 c1                	mov    %eax,%ecx
ffff800000106080:	41 f6 02 04          	testb  $0x4,(%r10)
ffff800000106084:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff800000106088:	41 89 49 14          	mov    %ecx,0x14(%r9)
ffff80000010608c:	89 c1                	mov    %eax,%ecx
ffff80000010608e:	41 f6 02 02          	testb  $0x2,(%r10)
ffff800000106092:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff800000106096:	41 89 49 18          	mov    %ecx,0x18(%r9)
ffff80000010609a:	41 f6 02 01          	testb  $0x1,(%r10)
ffff80000010609e:	74 80                	je     ffff800000106020 <clear_screen+0xcf0>
ffff8000001060a0:	45 89 61 1c          	mov    %r12d,0x1c(%r9)
ffff8000001060a4:	e9 7b ff ff ff       	jmp    ffff800000106024 <clear_screen+0xcf4>
ffff8000001060a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

ffff8000001060b0 <skip_atoi2>:
ffff8000001060b0:	f3 0f 1e fa          	endbr64
ffff8000001060b4:	48 8b 17             	mov    (%rdi),%rdx
ffff8000001060b7:	0f b6 02             	movzbl (%rdx),%eax
ffff8000001060ba:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff8000001060bd:	80 f9 09             	cmp    $0x9,%cl
ffff8000001060c0:	77 36                	ja     ffff8000001060f8 <skip_atoi2+0x48>
ffff8000001060c2:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001060c6:	31 c9                	xor    %ecx,%ecx
ffff8000001060c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001060cf:	00 
ffff8000001060d0:	83 e8 30             	sub    $0x30,%eax
ffff8000001060d3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001060d6:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001060d9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001060dd:	0f be c0             	movsbl %al,%eax
ffff8000001060e0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff8000001060e3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff8000001060e7:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001060ea:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001060ee:	76 e0                	jbe    ffff8000001060d0 <skip_atoi2+0x20>
ffff8000001060f0:	89 c8                	mov    %ecx,%eax
ffff8000001060f2:	c3                   	ret
ffff8000001060f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001060f8:	31 c9                	xor    %ecx,%ecx
ffff8000001060fa:	89 c8                	mov    %ecx,%eax
ffff8000001060fc:	c3                   	ret
ffff8000001060fd:	0f 1f 00             	nopl   (%rax)

ffff800000106100 <skip_atoi>:
ffff800000106100:	f3 0f 1e fa          	endbr64
ffff800000106104:	48 8b 17             	mov    (%rdi),%rdx
ffff800000106107:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010610a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010610d:	80 f9 09             	cmp    $0x9,%cl
ffff800000106110:	77 36                	ja     ffff800000106148 <skip_atoi+0x48>
ffff800000106112:	48 83 c2 01          	add    $0x1,%rdx
ffff800000106116:	31 c9                	xor    %ecx,%ecx
ffff800000106118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010611f:	00 
ffff800000106120:	83 e8 30             	sub    $0x30,%eax
ffff800000106123:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff800000106126:	48 89 17             	mov    %rdx,(%rdi)
ffff800000106129:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010612d:	0f be c0             	movsbl %al,%eax
ffff800000106130:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000106133:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff800000106137:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010613a:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010613e:	76 e0                	jbe    ffff800000106120 <skip_atoi+0x20>
ffff800000106140:	89 c8                	mov    %ecx,%eax
ffff800000106142:	c3                   	ret
ffff800000106143:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106148:	31 c9                	xor    %ecx,%ecx
ffff80000010614a:	89 c8                	mov    %ecx,%eax
ffff80000010614c:	c3                   	ret
ffff80000010614d:	0f 1f 00             	nopl   (%rax)

ffff800000106150 <vsprintf>:
ffff800000106150:	f3 0f 1e fa          	endbr64
ffff800000106154:	49 bb 2c 6f 00 00 00 	movabs $0x6f2c,%r11
ffff80000010615b:	00 00 00 
ffff80000010615e:	41 57                	push   %r15
ffff800000106160:	49 89 ff             	mov    %rdi,%r15
ffff800000106163:	41 56                	push   %r14
ffff800000106165:	41 55                	push   %r13
ffff800000106167:	4c 8d 2d e6 ff ff ff 	lea    -0x1a(%rip),%r13        # ffff800000106154 <vsprintf+0x4>
ffff80000010616e:	41 54                	push   %r12
ffff800000106170:	49 89 d4             	mov    %rdx,%r12
ffff800000106173:	4d 01 dd             	add    %r11,%r13
ffff800000106176:	55                   	push   %rbp
ffff800000106177:	53                   	push   %rbx
ffff800000106178:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010617c:	0f b6 16             	movzbl (%rsi),%edx
ffff80000010617f:	84 d2                	test   %dl,%dl
ffff800000106181:	0f 84 aa 08 00 00    	je     ffff800000106a31 <vsprintf+0x8e1>
ffff800000106187:	48 89 f0             	mov    %rsi,%rax
ffff80000010618a:	48 8d 2d ff 37 00 00 	lea    0x37ff(%rip),%rbp        # ffff800000109990 <_etext+0x37f>
ffff800000106191:	eb 1a                	jmp    ffff8000001061ad <vsprintf+0x5d>
ffff800000106193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106198:	88 17                	mov    %dl,(%rdi)
ffff80000010619a:	48 83 c0 01          	add    $0x1,%rax
ffff80000010619e:	0f b6 10             	movzbl (%rax),%edx
ffff8000001061a1:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001061a5:	84 d2                	test   %dl,%dl
ffff8000001061a7:	0f 84 43 01 00 00    	je     ffff8000001062f0 <vsprintf+0x1a0>
ffff8000001061ad:	80 fa 25             	cmp    $0x25,%dl
ffff8000001061b0:	75 e6                	jne    ffff800000106198 <vsprintf+0x48>
ffff8000001061b2:	45 31 c9             	xor    %r9d,%r9d
ffff8000001061b5:	0f 1f 00             	nopl   (%rax)
ffff8000001061b8:	0f be 50 01          	movsbl 0x1(%rax),%edx
ffff8000001061bc:	48 8d 58 01          	lea    0x1(%rax),%rbx
ffff8000001061c0:	8d 4a e0             	lea    -0x20(%rdx),%ecx
ffff8000001061c3:	80 f9 10             	cmp    $0x10,%cl
ffff8000001061c6:	77 18                	ja     ffff8000001061e0 <vsprintf+0x90>
ffff8000001061c8:	0f b6 c9             	movzbl %cl,%ecx
ffff8000001061cb:	48 8b 74 cd 00       	mov    0x0(%rbp,%rcx,8),%rsi
ffff8000001061d0:	48 01 ee             	add    %rbp,%rsi
ffff8000001061d3:	3e ff e6             	notrack jmp *%rsi
ffff8000001061d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001061dd:	00 00 00 
ffff8000001061e0:	8d 4a d0             	lea    -0x30(%rdx),%ecx
ffff8000001061e3:	80 f9 09             	cmp    $0x9,%cl
ffff8000001061e6:	0f 86 54 01 00 00    	jbe    ffff800000106340 <vsprintf+0x1f0>
ffff8000001061ec:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff8000001061f1:	80 fa 2a             	cmp    $0x2a,%dl
ffff8000001061f4:	0f 84 76 01 00 00    	je     ffff800000106370 <vsprintf+0x220>
ffff8000001061fa:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff800000106200:	80 fa 2e             	cmp    $0x2e,%dl
ffff800000106203:	0f 84 07 01 00 00    	je     ffff800000106310 <vsprintf+0x1c0>
ffff800000106209:	8d 42 b4             	lea    -0x4c(%rdx),%eax
ffff80000010620c:	3c 2e                	cmp    $0x2e,%al
ffff80000010620e:	0f 87 8c 00 00 00    	ja     ffff8000001062a0 <vsprintf+0x150>
ffff800000106214:	48 be 01 00 00 10 01 	movabs $0x400110000001,%rsi
ffff80000010621b:	40 00 00 
ffff80000010621e:	48 0f a3 c6          	bt     %rax,%rsi
ffff800000106222:	73 7c                	jae    ffff8000001062a0 <vsprintf+0x150>
ffff800000106224:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
ffff800000106228:	4c 8d 73 01          	lea    0x1(%rbx),%r14
ffff80000010622c:	83 e8 25             	sub    $0x25,%eax
ffff80000010622f:	3c 53                	cmp    $0x53,%al
ffff800000106231:	0f 87 8c 00 00 00    	ja     ffff8000001062c3 <vsprintf+0x173>
ffff800000106237:	0f b6 c0             	movzbl %al,%eax
ffff80000010623a:	48 8d 35 d7 37 00 00 	lea    0x37d7(%rip),%rsi        # ffff800000109a18 <_etext+0x407>
ffff800000106241:	48 03 34 c6          	add    (%rsi,%rax,8),%rsi
ffff800000106245:	3e ff e6             	notrack jmp *%rsi
ffff800000106248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010624f:	00 
ffff800000106250:	41 83 c9 01          	or     $0x1,%r9d
ffff800000106254:	48 89 d8             	mov    %rbx,%rax
ffff800000106257:	e9 5c ff ff ff       	jmp    ffff8000001061b8 <vsprintf+0x68>
ffff80000010625c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106260:	41 83 c9 10          	or     $0x10,%r9d
ffff800000106264:	eb ee                	jmp    ffff800000106254 <vsprintf+0x104>
ffff800000106266:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010626d:	00 00 00 
ffff800000106270:	41 83 c9 04          	or     $0x4,%r9d
ffff800000106274:	eb de                	jmp    ffff800000106254 <vsprintf+0x104>
ffff800000106276:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010627d:	00 00 00 
ffff800000106280:	41 83 c9 20          	or     $0x20,%r9d
ffff800000106284:	eb ce                	jmp    ffff800000106254 <vsprintf+0x104>
ffff800000106286:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010628d:	00 00 00 
ffff800000106290:	41 83 c9 08          	or     $0x8,%r9d
ffff800000106294:	eb be                	jmp    ffff800000106254 <vsprintf+0x104>
ffff800000106296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010629d:	00 00 00 
ffff8000001062a0:	83 ea 25             	sub    $0x25,%edx
ffff8000001062a3:	80 fa 53             	cmp    $0x53,%dl
ffff8000001062a6:	77 18                	ja     ffff8000001062c0 <vsprintf+0x170>
ffff8000001062a8:	0f b6 d2             	movzbl %dl,%edx
ffff8000001062ab:	48 8d 05 06 3a 00 00 	lea    0x3a06(%rip),%rax        # ffff800000109cb8 <_etext+0x6a7>
ffff8000001062b2:	48 03 04 d0          	add    (%rax,%rdx,8),%rax
ffff8000001062b6:	3e ff e0             	notrack jmp *%rax
ffff8000001062b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001062c0:	49 89 de             	mov    %rbx,%r14
ffff8000001062c3:	c6 07 25             	movb   $0x25,(%rdi)
ffff8000001062c6:	41 0f b6 06          	movzbl (%r14),%eax
ffff8000001062ca:	84 c0                	test   %al,%al
ffff8000001062cc:	0f 84 6f 05 00 00    	je     ffff800000106841 <vsprintf+0x6f1>
ffff8000001062d2:	88 47 01             	mov    %al,0x1(%rdi)
ffff8000001062d5:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff8000001062da:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff8000001062de:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001062e2:	84 d2                	test   %dl,%dl
ffff8000001062e4:	0f 85 c3 fe ff ff    	jne    ffff8000001061ad <vsprintf+0x5d>
ffff8000001062ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001062f0:	89 f8                	mov    %edi,%eax
ffff8000001062f2:	44 29 f8             	sub    %r15d,%eax
ffff8000001062f5:	c6 07 00             	movb   $0x0,(%rdi)
ffff8000001062f8:	48 83 c4 08          	add    $0x8,%rsp
ffff8000001062fc:	5b                   	pop    %rbx
ffff8000001062fd:	5d                   	pop    %rbp
ffff8000001062fe:	41 5c                	pop    %r12
ffff800000106300:	41 5d                	pop    %r13
ffff800000106302:	41 5e                	pop    %r14
ffff800000106304:	41 5f                	pop    %r15
ffff800000106306:	c3                   	ret
ffff800000106307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010630e:	00 00 
ffff800000106310:	0f be 53 01          	movsbl 0x1(%rbx),%edx
ffff800000106314:	48 8d 43 01          	lea    0x1(%rbx),%rax
ffff800000106318:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff80000010631b:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010631f:	0f 86 4b 04 00 00    	jbe    ffff800000106770 <vsprintf+0x620>
ffff800000106325:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000106328:	0f 84 82 04 00 00    	je     ffff8000001067b0 <vsprintf+0x660>
ffff80000010632e:	48 89 c3             	mov    %rax,%rbx
ffff800000106331:	45 31 c0             	xor    %r8d,%r8d
ffff800000106334:	e9 d0 fe ff ff       	jmp    ffff800000106209 <vsprintf+0xb9>
ffff800000106339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000106340:	31 c9                	xor    %ecx,%ecx
ffff800000106342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000106348:	83 ea 30             	sub    $0x30,%edx
ffff80000010634b:	8d 04 89             	lea    (%rcx,%rcx,4),%eax
ffff80000010634e:	48 83 c3 01          	add    $0x1,%rbx
ffff800000106352:	0f be d2             	movsbl %dl,%edx
ffff800000106355:	8d 0c 42             	lea    (%rdx,%rax,2),%ecx
ffff800000106358:	0f be 13             	movsbl (%rbx),%edx
ffff80000010635b:	8d 42 d0             	lea    -0x30(%rdx),%eax
ffff80000010635e:	3c 09                	cmp    $0x9,%al
ffff800000106360:	76 e6                	jbe    ffff800000106348 <vsprintf+0x1f8>
ffff800000106362:	e9 93 fe ff ff       	jmp    ffff8000001061fa <vsprintf+0xaa>
ffff800000106367:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010636e:	00 00 
ffff800000106370:	41 8b 14 24          	mov    (%r12),%edx
ffff800000106374:	48 8d 58 02          	lea    0x2(%rax),%rbx
ffff800000106378:	83 fa 2f             	cmp    $0x2f,%edx
ffff80000010637b:	77 23                	ja     ffff8000001063a0 <vsprintf+0x250>
ffff80000010637d:	89 d1                	mov    %edx,%ecx
ffff80000010637f:	83 c2 08             	add    $0x8,%edx
ffff800000106382:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000106387:	41 89 14 24          	mov    %edx,(%r12)
ffff80000010638b:	8b 09                	mov    (%rcx),%ecx
ffff80000010638d:	85 c9                	test   %ecx,%ecx
ffff80000010638f:	79 06                	jns    ffff800000106397 <vsprintf+0x247>
ffff800000106391:	f7 d9                	neg    %ecx
ffff800000106393:	41 83 c9 10          	or     $0x10,%r9d
ffff800000106397:	0f be 50 02          	movsbl 0x2(%rax),%edx
ffff80000010639b:	e9 5a fe ff ff       	jmp    ffff8000001061fa <vsprintf+0xaa>
ffff8000001063a0:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff8000001063a5:	48 8d 51 08          	lea    0x8(%rcx),%rdx
ffff8000001063a9:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff8000001063ae:	eb db                	jmp    ffff80000010638b <vsprintf+0x23b>
ffff8000001063b0:	41 83 c9 40          	or     $0x40,%r9d
ffff8000001063b4:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001063b8:	83 fa 6c             	cmp    $0x6c,%edx
ffff8000001063bb:	0f 84 4f 06 00 00    	je     ffff800000106a10 <vsprintf+0x8c0>
ffff8000001063c1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001063c4:	0f 87 3e 04 00 00    	ja     ffff800000106808 <vsprintf+0x6b8>
ffff8000001063ca:	89 c2                	mov    %eax,%edx
ffff8000001063cc:	83 c0 08             	add    $0x8,%eax
ffff8000001063cf:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001063d4:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001063d8:	8b 32                	mov    (%rdx),%esi
ffff8000001063da:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001063df:	eb 2f                	jmp    ffff800000106410 <vsprintf+0x2c0>
ffff8000001063e1:	41 83 c9 02          	or     $0x2,%r9d
ffff8000001063e5:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001063e9:	83 fa 6c             	cmp    $0x6c,%edx
ffff8000001063ec:	0f 84 de 05 00 00    	je     ffff8000001069d0 <vsprintf+0x880>
ffff8000001063f2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001063f5:	0f 87 f5 03 00 00    	ja     ffff8000001067f0 <vsprintf+0x6a0>
ffff8000001063fb:	89 c2                	mov    %eax,%edx
ffff8000001063fd:	83 c0 08             	add    $0x8,%eax
ffff800000106400:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106405:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106409:	8b 32                	mov    (%rdx),%esi
ffff80000010640b:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000106410:	48 b8 80 70 ff ff ff 	movabs $0xffffffffffff7080,%rax
ffff800000106417:	ff ff ff 
ffff80000010641a:	4c 01 e8             	add    %r13,%rax
ffff80000010641d:	ff d0                	call   *%rax
ffff80000010641f:	48 89 c7             	mov    %rax,%rdi
ffff800000106422:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106426:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010642b:	e9 75 fd ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106430:	49 89 de             	mov    %rbx,%r14
ffff800000106433:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000106436:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff80000010643a:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010643f:	48 83 c7 01          	add    $0x1,%rdi
ffff800000106443:	e9 5d fd ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106448:	49 89 de             	mov    %rbx,%r14
ffff80000010644b:	41 83 e1 10          	and    $0x10,%r9d
ffff80000010644f:	0f 84 16 04 00 00    	je     ffff80000010686b <vsprintf+0x71b>
ffff800000106455:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106459:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010645c:	0f 87 cc 03 00 00    	ja     ffff80000010682e <vsprintf+0x6de>
ffff800000106462:	89 c2                	mov    %eax,%edx
ffff800000106464:	83 c0 08             	add    $0x8,%eax
ffff800000106467:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff80000010646c:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106470:	8b 02                	mov    (%rdx),%eax
ffff800000106472:	8d 71 ff             	lea    -0x1(%rcx),%esi
ffff800000106475:	4c 8d 57 01          	lea    0x1(%rdi),%r10
ffff800000106479:	41 89 f0             	mov    %esi,%r8d
ffff80000010647c:	88 07                	mov    %al,(%rdi)
ffff80000010647e:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106482:	85 f6                	test   %esi,%esi
ffff800000106484:	0f 8e f5 08 00 00    	jle    ffff800000106d7f <vsprintf+0xc2f>
ffff80000010648a:	8d 51 fe             	lea    -0x2(%rcx),%edx
ffff80000010648d:	83 fa 0e             	cmp    $0xe,%edx
ffff800000106490:	0f 8e f6 08 00 00    	jle    ffff800000106d8c <vsprintf+0xc3c>
ffff800000106496:	41 c1 e8 04          	shr    $0x4,%r8d
ffff80000010649a:	48 89 fa             	mov    %rdi,%rdx
ffff80000010649d:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff8000001064a4:	ff ff ff 
ffff8000001064a7:	49 c1 e0 04          	shl    $0x4,%r8
ffff8000001064ab:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff8000001064b1:	4d 8d 1c 38          	lea    (%r8,%rdi,1),%r11
ffff8000001064b5:	41 83 e0 10          	and    $0x10,%r8d
ffff8000001064b9:	74 15                	je     ffff8000001064d0 <vsprintf+0x380>
ffff8000001064bb:	48 8d 57 10          	lea    0x10(%rdi),%rdx
ffff8000001064bf:	0f 11 47 01          	movups %xmm0,0x1(%rdi)
ffff8000001064c3:	4c 39 da             	cmp    %r11,%rdx
ffff8000001064c6:	74 19                	je     ffff8000001064e1 <vsprintf+0x391>
ffff8000001064c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001064cf:	00 
ffff8000001064d0:	0f 11 42 01          	movups %xmm0,0x1(%rdx)
ffff8000001064d4:	48 83 c2 20          	add    $0x20,%rdx
ffff8000001064d8:	0f 11 42 f1          	movups %xmm0,-0xf(%rdx)
ffff8000001064dc:	4c 39 da             	cmp    %r11,%rdx
ffff8000001064df:	75 ef                	jne    ffff8000001064d0 <vsprintf+0x380>
ffff8000001064e1:	41 89 f1             	mov    %esi,%r9d
ffff8000001064e4:	41 89 f0             	mov    %esi,%r8d
ffff8000001064e7:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff8000001064eb:	44 89 ca             	mov    %r9d,%edx
ffff8000001064ee:	45 29 c8             	sub    %r9d,%r8d
ffff8000001064f1:	4c 01 d2             	add    %r10,%rdx
ffff8000001064f4:	40 f6 c6 0f          	test   $0xf,%sil
ffff8000001064f8:	74 79                	je     ffff800000106573 <vsprintf+0x423>
ffff8000001064fa:	44 29 c9             	sub    %r9d,%ecx
ffff8000001064fd:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff800000106501:	83 e9 02             	sub    $0x2,%ecx
ffff800000106504:	83 f9 06             	cmp    $0x6,%ecx
ffff800000106507:	76 2b                	jbe    ffff800000106534 <vsprintf+0x3e4>
ffff800000106509:	41 8d 49 01          	lea    0x1(%r9),%ecx
ffff80000010650d:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106514:	ff ff ff 
ffff800000106517:	4f 8b 4c 0d 00       	mov    0x0(%r13,%r9,1),%r9
ffff80000010651c:	4c 89 0c 0f          	mov    %r9,(%rdi,%rcx,1)
ffff800000106520:	44 89 d9             	mov    %r11d,%ecx
ffff800000106523:	83 e1 f8             	and    $0xfffffff8,%ecx
ffff800000106526:	89 cf                	mov    %ecx,%edi
ffff800000106528:	41 29 c8             	sub    %ecx,%r8d
ffff80000010652b:	48 01 fa             	add    %rdi,%rdx
ffff80000010652e:	41 83 e3 07          	and    $0x7,%r11d
ffff800000106532:	74 3f                	je     ffff800000106573 <vsprintf+0x423>
ffff800000106534:	c6 02 20             	movb   $0x20,(%rdx)
ffff800000106537:	41 83 f8 01          	cmp    $0x1,%r8d
ffff80000010653b:	7e 36                	jle    ffff800000106573 <vsprintf+0x423>
ffff80000010653d:	c6 42 01 20          	movb   $0x20,0x1(%rdx)
ffff800000106541:	41 83 f8 02          	cmp    $0x2,%r8d
ffff800000106545:	74 2c                	je     ffff800000106573 <vsprintf+0x423>
ffff800000106547:	c6 42 02 20          	movb   $0x20,0x2(%rdx)
ffff80000010654b:	41 83 f8 03          	cmp    $0x3,%r8d
ffff80000010654f:	74 22                	je     ffff800000106573 <vsprintf+0x423>
ffff800000106551:	c6 42 03 20          	movb   $0x20,0x3(%rdx)
ffff800000106555:	41 83 f8 04          	cmp    $0x4,%r8d
ffff800000106559:	74 18                	je     ffff800000106573 <vsprintf+0x423>
ffff80000010655b:	c6 42 04 20          	movb   $0x20,0x4(%rdx)
ffff80000010655f:	41 83 f8 05          	cmp    $0x5,%r8d
ffff800000106563:	74 0e                	je     ffff800000106573 <vsprintf+0x423>
ffff800000106565:	c6 42 05 20          	movb   $0x20,0x5(%rdx)
ffff800000106569:	41 83 f8 06          	cmp    $0x6,%r8d
ffff80000010656d:	74 04                	je     ffff800000106573 <vsprintf+0x423>
ffff80000010656f:	c6 42 06 20          	movb   $0x20,0x6(%rdx)
ffff800000106573:	48 63 f6             	movslq %esi,%rsi
ffff800000106576:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010657b:	49 8d 3c 32          	lea    (%r10,%rsi,1),%rdi
ffff80000010657f:	e9 21 fc ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106584:	49 89 de             	mov    %rbx,%r14
ffff800000106587:	41 8b 04 24          	mov    (%r12),%eax
ffff80000010658b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010658e:	0f 87 87 02 00 00    	ja     ffff80000010681b <vsprintf+0x6cb>
ffff800000106594:	89 c2                	mov    %eax,%edx
ffff800000106596:	83 c0 08             	add    $0x8,%eax
ffff800000106599:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff80000010659e:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001065a2:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001065a5:	80 3e 00             	cmpb   $0x0,(%rsi)
ffff8000001065a8:	0f 84 ca 07 00 00    	je     ffff800000106d78 <vsprintf+0xc28>
ffff8000001065ae:	48 89 f0             	mov    %rsi,%rax
ffff8000001065b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001065b8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001065bc:	80 38 00             	cmpb   $0x0,(%rax)
ffff8000001065bf:	75 f7                	jne    ffff8000001065b8 <vsprintf+0x468>
ffff8000001065c1:	89 c2                	mov    %eax,%edx
ffff8000001065c3:	29 f2                	sub    %esi,%edx
ffff8000001065c5:	44 39 c2             	cmp    %r8d,%edx
ffff8000001065c8:	44 89 c0             	mov    %r8d,%eax
ffff8000001065cb:	0f 4e c2             	cmovle %edx,%eax
ffff8000001065ce:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff8000001065d2:	0f 45 d0             	cmovne %eax,%edx
ffff8000001065d5:	41 83 e1 10          	and    $0x10,%r9d
ffff8000001065d9:	0f 84 0b 06 00 00    	je     ffff800000106bea <vsprintf+0xa9a>
ffff8000001065df:	85 d2                	test   %edx,%edx
ffff8000001065e1:	7e 3c                	jle    ffff80000010661f <vsprintf+0x4cf>
ffff8000001065e3:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff8000001065e6:	83 f8 06             	cmp    $0x6,%eax
ffff8000001065e9:	76 14                	jbe    ffff8000001065ff <vsprintf+0x4af>
ffff8000001065eb:	4c 8d 4e 01          	lea    0x1(%rsi),%r9
ffff8000001065ef:	49 89 f8             	mov    %rdi,%r8
ffff8000001065f2:	4d 29 c8             	sub    %r9,%r8
ffff8000001065f5:	49 83 f8 0e          	cmp    $0xe,%r8
ffff8000001065f9:	0f 87 4c 04 00 00    	ja     ffff800000106a4b <vsprintf+0x8fb>
ffff8000001065ff:	4c 63 ca             	movslq %edx,%r9
ffff800000106602:	31 c0                	xor    %eax,%eax
ffff800000106604:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106608:	44 0f b6 04 06       	movzbl (%rsi,%rax,1),%r8d
ffff80000010660d:	44 88 04 07          	mov    %r8b,(%rdi,%rax,1)
ffff800000106611:	48 83 c0 01          	add    $0x1,%rax
ffff800000106615:	4c 39 c8             	cmp    %r9,%rax
ffff800000106618:	75 ee                	jne    ffff800000106608 <vsprintf+0x4b8>
ffff80000010661a:	89 d0                	mov    %edx,%eax
ffff80000010661c:	48 01 c7             	add    %rax,%rdi
ffff80000010661f:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
ffff800000106623:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106627:	39 d1                	cmp    %edx,%ecx
ffff800000106629:	0f 8e f7 fd ff ff    	jle    ffff800000106426 <vsprintf+0x2d6>
ffff80000010662f:	29 d1                	sub    %edx,%ecx
ffff800000106631:	48 89 fe             	mov    %rdi,%rsi
ffff800000106634:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
ffff800000106638:	41 83 fa 0e          	cmp    $0xe,%r10d
ffff80000010663c:	0f 86 55 07 00 00    	jbe    ffff800000106d97 <vsprintf+0xc47>
ffff800000106642:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106649:	ff ff ff 
ffff80000010664c:	41 89 cb             	mov    %ecx,%r11d
ffff80000010664f:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000106653:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff800000106659:	49 c1 e3 04          	shl    $0x4,%r11
ffff80000010665d:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000106661:	41 83 e3 10          	and    $0x10,%r11d
ffff800000106665:	74 11                	je     ffff800000106678 <vsprintf+0x528>
ffff800000106667:	48 8d 77 10          	lea    0x10(%rdi),%rsi
ffff80000010666b:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010666e:	48 39 f3             	cmp    %rsi,%rbx
ffff800000106671:	74 15                	je     ffff800000106688 <vsprintf+0x538>
ffff800000106673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106678:	0f 11 06             	movups %xmm0,(%rsi)
ffff80000010667b:	48 83 c6 20          	add    $0x20,%rsi
ffff80000010667f:	0f 11 46 f0          	movups %xmm0,-0x10(%rsi)
ffff800000106683:	48 39 f3             	cmp    %rsi,%rbx
ffff800000106686:	75 f0                	jne    ffff800000106678 <vsprintf+0x528>
ffff800000106688:	41 89 c9             	mov    %ecx,%r9d
ffff80000010668b:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff80000010668f:	44 89 ce             	mov    %r9d,%esi
ffff800000106692:	45 29 c8             	sub    %r9d,%r8d
ffff800000106695:	48 01 fe             	add    %rdi,%rsi
ffff800000106698:	f6 c1 0f             	test   $0xf,%cl
ffff80000010669b:	0f 84 80 00 00 00    	je     ffff800000106721 <vsprintf+0x5d1>
ffff8000001066a1:	44 29 c9             	sub    %r9d,%ecx
ffff8000001066a4:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff8000001066a8:	41 83 fb 06          	cmp    $0x6,%r11d
ffff8000001066ac:	76 28                	jbe    ffff8000001066d6 <vsprintf+0x586>
ffff8000001066ae:	49 bb d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r11
ffff8000001066b5:	ff ff ff 
ffff8000001066b8:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
ffff8000001066bd:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
ffff8000001066c1:	41 89 c9             	mov    %ecx,%r9d
ffff8000001066c4:	41 83 e1 f8          	and    $0xfffffff8,%r9d
ffff8000001066c8:	45 89 cb             	mov    %r9d,%r11d
ffff8000001066cb:	45 29 c8             	sub    %r9d,%r8d
ffff8000001066ce:	4c 01 de             	add    %r11,%rsi
ffff8000001066d1:	83 e1 07             	and    $0x7,%ecx
ffff8000001066d4:	74 4b                	je     ffff800000106721 <vsprintf+0x5d1>
ffff8000001066d6:	c6 06 20             	movb   $0x20,(%rsi)
ffff8000001066d9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
ffff8000001066dd:	44 39 c2             	cmp    %r8d,%edx
ffff8000001066e0:	7d 3f                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff8000001066e2:	c6 46 01 20          	movb   $0x20,0x1(%rsi)
ffff8000001066e6:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
ffff8000001066ea:	39 ca                	cmp    %ecx,%edx
ffff8000001066ec:	7d 33                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff8000001066ee:	c6 46 02 20          	movb   $0x20,0x2(%rsi)
ffff8000001066f2:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
ffff8000001066f6:	44 39 ca             	cmp    %r9d,%edx
ffff8000001066f9:	7d 26                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff8000001066fb:	c6 46 03 20          	movb   $0x20,0x3(%rsi)
ffff8000001066ff:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
ffff800000106703:	39 ca                	cmp    %ecx,%edx
ffff800000106705:	7d 1a                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff800000106707:	c6 46 04 20          	movb   $0x20,0x4(%rsi)
ffff80000010670b:	41 83 e8 05          	sub    $0x5,%r8d
ffff80000010670f:	44 39 ca             	cmp    %r9d,%edx
ffff800000106712:	7d 0d                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff800000106714:	c6 46 05 20          	movb   $0x20,0x5(%rsi)
ffff800000106718:	44 39 c2             	cmp    %r8d,%edx
ffff80000010671b:	7d 04                	jge    ffff800000106721 <vsprintf+0x5d1>
ffff80000010671d:	c6 46 06 20          	movb   $0x20,0x6(%rsi)
ffff800000106721:	45 89 d2             	mov    %r10d,%r10d
ffff800000106724:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff800000106729:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
ffff80000010672e:	e9 72 fa ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106733:	49 89 de             	mov    %rbx,%r14
ffff800000106736:	83 f9 ff             	cmp    $0xffffffff,%ecx
ffff800000106739:	0f 84 1e 01 00 00    	je     ffff80000010685d <vsprintf+0x70d>
ffff80000010673f:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106743:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106746:	0f 87 fe 00 00 00    	ja     ffff80000010684a <vsprintf+0x6fa>
ffff80000010674c:	89 c2                	mov    %eax,%edx
ffff80000010674e:	83 c0 08             	add    $0x8,%eax
ffff800000106751:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106756:	41 89 04 24          	mov    %eax,(%r12)
ffff80000010675a:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010675d:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000106762:	e9 a9 fc ff ff       	jmp    ffff800000106410 <vsprintf+0x2c0>
ffff800000106767:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010676e:	00 00 
ffff800000106770:	45 31 c0             	xor    %r8d,%r8d
ffff800000106773:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106778:	83 ea 30             	sub    $0x30,%edx
ffff80000010677b:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
ffff80000010677f:	48 83 c0 01          	add    $0x1,%rax
ffff800000106783:	0f be d2             	movsbl %dl,%edx
ffff800000106786:	44 8d 04 72          	lea    (%rdx,%rsi,2),%r8d
ffff80000010678a:	0f be 10             	movsbl (%rax),%edx
ffff80000010678d:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff800000106790:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000106794:	76 e2                	jbe    ffff800000106778 <vsprintf+0x628>
ffff800000106796:	31 f6                	xor    %esi,%esi
ffff800000106798:	45 85 c0             	test   %r8d,%r8d
ffff80000010679b:	48 89 c3             	mov    %rax,%rbx
ffff80000010679e:	44 0f 48 c6          	cmovs  %esi,%r8d
ffff8000001067a2:	e9 62 fa ff ff       	jmp    ffff800000106209 <vsprintf+0xb9>
ffff8000001067a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001067ae:	00 00 
ffff8000001067b0:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001067b4:	48 8d 73 02          	lea    0x2(%rbx),%rsi
ffff8000001067b8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001067bb:	0f 87 77 02 00 00    	ja     ffff800000106a38 <vsprintf+0x8e8>
ffff8000001067c1:	89 c2                	mov    %eax,%edx
ffff8000001067c3:	83 c0 08             	add    $0x8,%eax
ffff8000001067c6:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001067cb:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001067cf:	44 8b 02             	mov    (%rdx),%r8d
ffff8000001067d2:	31 c0                	xor    %eax,%eax
ffff8000001067d4:	0f be 53 02          	movsbl 0x2(%rbx),%edx
ffff8000001067d8:	48 89 f3             	mov    %rsi,%rbx
ffff8000001067db:	45 85 c0             	test   %r8d,%r8d
ffff8000001067de:	44 0f 48 c0          	cmovs  %eax,%r8d
ffff8000001067e2:	e9 22 fa ff ff       	jmp    ffff800000106209 <vsprintf+0xb9>
ffff8000001067e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001067ee:	00 00 
ffff8000001067f0:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff8000001067f5:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001067f9:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff8000001067fe:	e9 06 fc ff ff       	jmp    ffff800000106409 <vsprintf+0x2b9>
ffff800000106803:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106808:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff80000010680d:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106811:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106816:	e9 bd fb ff ff       	jmp    ffff8000001063d8 <vsprintf+0x288>
ffff80000010681b:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106820:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106824:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106829:	e9 74 fd ff ff       	jmp    ffff8000001065a2 <vsprintf+0x452>
ffff80000010682e:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106833:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106837:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010683c:	e9 2f fc ff ff       	jmp    ffff800000106470 <vsprintf+0x320>
ffff800000106841:	48 83 c7 01          	add    $0x1,%rdi
ffff800000106845:	e9 a6 fa ff ff       	jmp    ffff8000001062f0 <vsprintf+0x1a0>
ffff80000010684a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff80000010684f:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106853:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106858:	e9 fd fe ff ff       	jmp    ffff80000010675a <vsprintf+0x60a>
ffff80000010685d:	41 83 c9 01          	or     $0x1,%r9d
ffff800000106861:	b9 10 00 00 00       	mov    $0x10,%ecx
ffff800000106866:	e9 d4 fe ff ff       	jmp    ffff80000010673f <vsprintf+0x5ef>
ffff80000010686b:	8d 71 ff             	lea    -0x1(%rcx),%esi
ffff80000010686e:	41 89 f0             	mov    %esi,%r8d
ffff800000106871:	83 f9 01             	cmp    $0x1,%ecx
ffff800000106874:	0f 8e ef 04 00 00    	jle    ffff800000106d69 <vsprintf+0xc19>
ffff80000010687a:	8d 41 fe             	lea    -0x2(%rcx),%eax
ffff80000010687d:	83 f8 0e             	cmp    $0xe,%eax
ffff800000106880:	48 89 f8             	mov    %rdi,%rax
ffff800000106883:	0f 8e 31 05 00 00    	jle    ffff800000106dba <vsprintf+0xc6a>
ffff800000106889:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106890:	ff ff ff 
ffff800000106893:	89 f2                	mov    %esi,%edx
ffff800000106895:	c1 ea 04             	shr    $0x4,%edx
ffff800000106898:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff80000010689e:	48 c1 e2 04          	shl    $0x4,%rdx
ffff8000001068a2:	4c 8d 04 3a          	lea    (%rdx,%rdi,1),%r8
ffff8000001068a6:	83 e2 10             	and    $0x10,%edx
ffff8000001068a9:	74 0c                	je     ffff8000001068b7 <vsprintf+0x767>
ffff8000001068ab:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff8000001068af:	0f 11 07             	movups %xmm0,(%rdi)
ffff8000001068b2:	4c 39 c0             	cmp    %r8,%rax
ffff8000001068b5:	74 10                	je     ffff8000001068c7 <vsprintf+0x777>
ffff8000001068b7:	0f 11 00             	movups %xmm0,(%rax)
ffff8000001068ba:	48 83 c0 20          	add    $0x20,%rax
ffff8000001068be:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff8000001068c2:	4c 39 c0             	cmp    %r8,%rax
ffff8000001068c5:	75 f0                	jne    ffff8000001068b7 <vsprintf+0x767>
ffff8000001068c7:	89 f2                	mov    %esi,%edx
ffff8000001068c9:	41 89 f0             	mov    %esi,%r8d
ffff8000001068cc:	83 e2 f0             	and    $0xfffffff0,%edx
ffff8000001068cf:	89 d0                	mov    %edx,%eax
ffff8000001068d1:	41 29 d0             	sub    %edx,%r8d
ffff8000001068d4:	48 01 f8             	add    %rdi,%rax
ffff8000001068d7:	40 f6 c6 0f          	test   $0xf,%sil
ffff8000001068db:	74 74                	je     ffff800000106951 <vsprintf+0x801>
ffff8000001068dd:	29 d1                	sub    %edx,%ecx
ffff8000001068df:	44 8d 49 ff          	lea    -0x1(%rcx),%r9d
ffff8000001068e3:	83 e9 02             	sub    $0x2,%ecx
ffff8000001068e6:	83 f9 06             	cmp    $0x6,%ecx
ffff8000001068e9:	76 27                	jbe    ffff800000106912 <vsprintf+0x7c2>
ffff8000001068eb:	48 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rcx
ffff8000001068f2:	ff ff ff 
ffff8000001068f5:	49 8b 4c 0d 00       	mov    0x0(%r13,%rcx,1),%rcx
ffff8000001068fa:	48 89 0c 17          	mov    %rcx,(%rdi,%rdx,1)
ffff8000001068fe:	44 89 ca             	mov    %r9d,%edx
ffff800000106901:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000106904:	89 d1                	mov    %edx,%ecx
ffff800000106906:	41 29 d0             	sub    %edx,%r8d
ffff800000106909:	48 01 c8             	add    %rcx,%rax
ffff80000010690c:	41 83 e1 07          	and    $0x7,%r9d
ffff800000106910:	74 3f                	je     ffff800000106951 <vsprintf+0x801>
ffff800000106912:	c6 00 20             	movb   $0x20,(%rax)
ffff800000106915:	41 83 f8 01          	cmp    $0x1,%r8d
ffff800000106919:	7e 36                	jle    ffff800000106951 <vsprintf+0x801>
ffff80000010691b:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff80000010691f:	41 83 f8 02          	cmp    $0x2,%r8d
ffff800000106923:	74 2c                	je     ffff800000106951 <vsprintf+0x801>
ffff800000106925:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff800000106929:	41 83 f8 03          	cmp    $0x3,%r8d
ffff80000010692d:	74 22                	je     ffff800000106951 <vsprintf+0x801>
ffff80000010692f:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff800000106933:	41 83 f8 04          	cmp    $0x4,%r8d
ffff800000106937:	74 18                	je     ffff800000106951 <vsprintf+0x801>
ffff800000106939:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff80000010693d:	41 83 f8 05          	cmp    $0x5,%r8d
ffff800000106941:	74 0e                	je     ffff800000106951 <vsprintf+0x801>
ffff800000106943:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff800000106947:	41 83 f8 06          	cmp    $0x6,%r8d
ffff80000010694b:	74 04                	je     ffff800000106951 <vsprintf+0x801>
ffff80000010694d:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff800000106951:	48 63 f6             	movslq %esi,%rsi
ffff800000106954:	31 c9                	xor    %ecx,%ecx
ffff800000106956:	48 01 f7             	add    %rsi,%rdi
ffff800000106959:	e9 f7 fa ff ff       	jmp    ffff800000106455 <vsprintf+0x305>
ffff80000010695e:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106962:	83 fa 6c             	cmp    $0x6c,%edx
ffff800000106965:	0f 84 29 02 00 00    	je     ffff800000106b94 <vsprintf+0xa44>
ffff80000010696b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010696e:	0f 87 50 02 00 00    	ja     ffff800000106bc4 <vsprintf+0xa74>
ffff800000106974:	89 c2                	mov    %eax,%edx
ffff800000106976:	83 c0 08             	add    $0x8,%eax
ffff800000106979:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff80000010697e:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106982:	48 8b 02             	mov    (%rdx),%rax
ffff800000106985:	48 89 fa             	mov    %rdi,%rdx
ffff800000106988:	4c 29 fa             	sub    %r15,%rdx
ffff80000010698b:	89 10                	mov    %edx,(%rax)
ffff80000010698d:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106991:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff800000106996:	e9 0a f8 ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff80000010699b:	41 8b 04 24          	mov    (%r12),%eax
ffff80000010699f:	83 fa 6c             	cmp    $0x6c,%edx
ffff8000001069a2:	0f 84 c8 01 00 00    	je     ffff800000106b70 <vsprintf+0xa20>
ffff8000001069a8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001069ab:	0f 87 26 02 00 00    	ja     ffff800000106bd7 <vsprintf+0xa87>
ffff8000001069b1:	89 c2                	mov    %eax,%edx
ffff8000001069b3:	83 c0 08             	add    $0x8,%eax
ffff8000001069b6:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001069bb:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001069bf:	8b 32                	mov    (%rdx),%esi
ffff8000001069c1:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001069c6:	e9 45 fa ff ff       	jmp    ffff800000106410 <vsprintf+0x2c0>
ffff8000001069cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001069d0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001069d3:	0f 87 71 01 00 00    	ja     ffff800000106b4a <vsprintf+0x9fa>
ffff8000001069d9:	89 c2                	mov    %eax,%edx
ffff8000001069db:	83 c0 08             	add    $0x8,%eax
ffff8000001069de:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001069e3:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001069e7:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001069ea:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001069ef:	48 b8 80 70 ff ff ff 	movabs $0xffffffffffff7080,%rax
ffff8000001069f6:	ff ff ff 
ffff8000001069f9:	4c 01 e8             	add    %r13,%rax
ffff8000001069fc:	ff d0                	call   *%rax
ffff8000001069fe:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
ffff800000106a02:	48 89 c7             	mov    %rax,%rdi
ffff800000106a05:	48 8d 43 02          	lea    0x2(%rbx),%rax
ffff800000106a09:	e9 97 f7 ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106a0e:	66 90                	xchg   %ax,%ax
ffff800000106a10:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106a13:	0f 87 44 01 00 00    	ja     ffff800000106b5d <vsprintf+0xa0d>
ffff800000106a19:	89 c2                	mov    %eax,%edx
ffff800000106a1b:	83 c0 08             	add    $0x8,%eax
ffff800000106a1e:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106a23:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106a27:	48 8b 32             	mov    (%rdx),%rsi
ffff800000106a2a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000106a2f:	eb be                	jmp    ffff8000001069ef <vsprintf+0x89f>
ffff800000106a31:	31 c0                	xor    %eax,%eax
ffff800000106a33:	e9 bd f8 ff ff       	jmp    ffff8000001062f5 <vsprintf+0x1a5>
ffff800000106a38:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106a3d:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106a41:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106a46:	e9 84 fd ff ff       	jmp    ffff8000001067cf <vsprintf+0x67f>
ffff800000106a4b:	83 f8 0e             	cmp    $0xe,%eax
ffff800000106a4e:	0f 86 4b 03 00 00    	jbe    ffff800000106d9f <vsprintf+0xc4f>
ffff800000106a54:	41 89 d0             	mov    %edx,%r8d
ffff800000106a57:	31 c0                	xor    %eax,%eax
ffff800000106a59:	41 c1 e8 04          	shr    $0x4,%r8d
ffff800000106a5d:	49 c1 e0 04          	shl    $0x4,%r8
ffff800000106a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000106a68:	f3 0f 6f 0c 06       	movdqu (%rsi,%rax,1),%xmm1
ffff800000106a6d:	0f 11 0c 07          	movups %xmm1,(%rdi,%rax,1)
ffff800000106a71:	48 83 c0 10          	add    $0x10,%rax
ffff800000106a75:	4c 39 c0             	cmp    %r8,%rax
ffff800000106a78:	75 ee                	jne    ffff800000106a68 <vsprintf+0x918>
ffff800000106a7a:	89 d0                	mov    %edx,%eax
ffff800000106a7c:	83 e0 f0             	and    $0xfffffff0,%eax
ffff800000106a7f:	41 89 c0             	mov    %eax,%r8d
ffff800000106a82:	41 89 c2             	mov    %eax,%r10d
ffff800000106a85:	4e 8d 0c 07          	lea    (%rdi,%r8,1),%r9
ffff800000106a89:	49 01 f0             	add    %rsi,%r8
ffff800000106a8c:	39 c2                	cmp    %eax,%edx
ffff800000106a8e:	0f 84 86 fb ff ff    	je     ffff80000010661a <vsprintf+0x4ca>
ffff800000106a94:	41 89 d3             	mov    %edx,%r11d
ffff800000106a97:	41 29 c3             	sub    %eax,%r11d
ffff800000106a9a:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
ffff800000106a9e:	83 fb 06             	cmp    $0x6,%ebx
ffff800000106aa1:	76 23                	jbe    ffff800000106ac6 <vsprintf+0x976>
ffff800000106aa3:	4a 8b 34 16          	mov    (%rsi,%r10,1),%rsi
ffff800000106aa7:	4a 89 34 17          	mov    %rsi,(%rdi,%r10,1)
ffff800000106aab:	44 89 de             	mov    %r11d,%esi
ffff800000106aae:	83 e6 f8             	and    $0xfffffff8,%esi
ffff800000106ab1:	41 89 f2             	mov    %esi,%r10d
ffff800000106ab4:	01 f0                	add    %esi,%eax
ffff800000106ab6:	4d 01 d1             	add    %r10,%r9
ffff800000106ab9:	4d 01 d0             	add    %r10,%r8
ffff800000106abc:	41 83 e3 07          	and    $0x7,%r11d
ffff800000106ac0:	0f 84 54 fb ff ff    	je     ffff80000010661a <vsprintf+0x4ca>
ffff800000106ac6:	41 0f b6 30          	movzbl (%r8),%esi
ffff800000106aca:	41 88 31             	mov    %sil,(%r9)
ffff800000106acd:	8d 70 01             	lea    0x1(%rax),%esi
ffff800000106ad0:	39 f2                	cmp    %esi,%edx
ffff800000106ad2:	0f 8e 42 fb ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106ad8:	41 0f b6 70 01       	movzbl 0x1(%r8),%esi
ffff800000106add:	41 88 71 01          	mov    %sil,0x1(%r9)
ffff800000106ae1:	8d 70 02             	lea    0x2(%rax),%esi
ffff800000106ae4:	39 f2                	cmp    %esi,%edx
ffff800000106ae6:	0f 8e 2e fb ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106aec:	41 0f b6 70 02       	movzbl 0x2(%r8),%esi
ffff800000106af1:	41 88 71 02          	mov    %sil,0x2(%r9)
ffff800000106af5:	8d 70 03             	lea    0x3(%rax),%esi
ffff800000106af8:	39 f2                	cmp    %esi,%edx
ffff800000106afa:	0f 8e 1a fb ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106b00:	41 0f b6 70 03       	movzbl 0x3(%r8),%esi
ffff800000106b05:	41 88 71 03          	mov    %sil,0x3(%r9)
ffff800000106b09:	8d 70 04             	lea    0x4(%rax),%esi
ffff800000106b0c:	39 f2                	cmp    %esi,%edx
ffff800000106b0e:	0f 8e 06 fb ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106b14:	41 0f b6 70 04       	movzbl 0x4(%r8),%esi
ffff800000106b19:	41 88 71 04          	mov    %sil,0x4(%r9)
ffff800000106b1d:	8d 70 05             	lea    0x5(%rax),%esi
ffff800000106b20:	39 f2                	cmp    %esi,%edx
ffff800000106b22:	0f 8e f2 fa ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106b28:	41 0f b6 70 05       	movzbl 0x5(%r8),%esi
ffff800000106b2d:	83 c0 06             	add    $0x6,%eax
ffff800000106b30:	41 88 71 05          	mov    %sil,0x5(%r9)
ffff800000106b34:	39 c2                	cmp    %eax,%edx
ffff800000106b36:	0f 8e de fa ff ff    	jle    ffff80000010661a <vsprintf+0x4ca>
ffff800000106b3c:	41 0f b6 40 06       	movzbl 0x6(%r8),%eax
ffff800000106b41:	41 88 41 06          	mov    %al,0x6(%r9)
ffff800000106b45:	e9 d0 fa ff ff       	jmp    ffff80000010661a <vsprintf+0x4ca>
ffff800000106b4a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b4f:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106b53:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106b58:	e9 8a fe ff ff       	jmp    ffff8000001069e7 <vsprintf+0x897>
ffff800000106b5d:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b62:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106b66:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106b6b:	e9 b7 fe ff ff       	jmp    ffff800000106a27 <vsprintf+0x8d7>
ffff800000106b70:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106b73:	0f 86 7a 01 00 00    	jbe    ffff800000106cf3 <vsprintf+0xba3>
ffff800000106b79:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b7e:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106b82:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106b87:	48 8b 32             	mov    (%rdx),%rsi
ffff800000106b8a:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000106b8f:	e9 5b fe ff ff       	jmp    ffff8000001069ef <vsprintf+0x89f>
ffff800000106b94:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106b97:	0f 86 69 01 00 00    	jbe    ffff800000106d06 <vsprintf+0xbb6>
ffff800000106b9d:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106ba2:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106ba6:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106bab:	48 8b 02             	mov    (%rdx),%rax
ffff800000106bae:	48 89 fa             	mov    %rdi,%rdx
ffff800000106bb1:	4c 29 fa             	sub    %r15,%rdx
ffff800000106bb4:	48 89 10             	mov    %rdx,(%rax)
ffff800000106bb7:	48 8d 43 02          	lea    0x2(%rbx),%rax
ffff800000106bbb:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
ffff800000106bbf:	e9 e1 f5 ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106bc4:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106bc9:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106bcd:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106bd2:	e9 ab fd ff ff       	jmp    ffff800000106982 <vsprintf+0x832>
ffff800000106bd7:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106bdc:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106be0:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106be5:	e9 d5 fd ff ff       	jmp    ffff8000001069bf <vsprintf+0x86f>
ffff800000106bea:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
ffff800000106bee:	39 d1                	cmp    %edx,%ecx
ffff800000106bf0:	0f 8e 7a 01 00 00    	jle    ffff800000106d70 <vsprintf+0xc20>
ffff800000106bf6:	29 d1                	sub    %edx,%ecx
ffff800000106bf8:	48 89 f8             	mov    %rdi,%rax
ffff800000106bfb:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
ffff800000106bff:	41 83 fa 0e          	cmp    $0xe,%r10d
ffff800000106c03:	0f 86 a9 01 00 00    	jbe    ffff800000106db2 <vsprintf+0xc62>
ffff800000106c09:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106c10:	ff ff ff 
ffff800000106c13:	41 89 cb             	mov    %ecx,%r11d
ffff800000106c16:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000106c1a:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff800000106c20:	49 c1 e3 04          	shl    $0x4,%r11
ffff800000106c24:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000106c28:	41 83 e3 10          	and    $0x10,%r11d
ffff800000106c2c:	74 0c                	je     ffff800000106c3a <vsprintf+0xaea>
ffff800000106c2e:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff800000106c32:	0f 11 07             	movups %xmm0,(%rdi)
ffff800000106c35:	48 39 d8             	cmp    %rbx,%rax
ffff800000106c38:	74 10                	je     ffff800000106c4a <vsprintf+0xafa>
ffff800000106c3a:	0f 11 00             	movups %xmm0,(%rax)
ffff800000106c3d:	48 83 c0 20          	add    $0x20,%rax
ffff800000106c41:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000106c45:	48 39 d8             	cmp    %rbx,%rax
ffff800000106c48:	75 f0                	jne    ffff800000106c3a <vsprintf+0xaea>
ffff800000106c4a:	41 89 c9             	mov    %ecx,%r9d
ffff800000106c4d:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff800000106c51:	44 89 c8             	mov    %r9d,%eax
ffff800000106c54:	45 29 c8             	sub    %r9d,%r8d
ffff800000106c57:	48 01 f8             	add    %rdi,%rax
ffff800000106c5a:	f6 c1 0f             	test   $0xf,%cl
ffff800000106c5d:	0f 84 80 00 00 00    	je     ffff800000106ce3 <vsprintf+0xb93>
ffff800000106c63:	44 29 c9             	sub    %r9d,%ecx
ffff800000106c66:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff800000106c6a:	41 83 fb 06          	cmp    $0x6,%r11d
ffff800000106c6e:	76 28                	jbe    ffff800000106c98 <vsprintf+0xb48>
ffff800000106c70:	49 bb d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r11
ffff800000106c77:	ff ff ff 
ffff800000106c7a:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
ffff800000106c7f:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
ffff800000106c83:	41 89 c9             	mov    %ecx,%r9d
ffff800000106c86:	41 83 e1 f8          	and    $0xfffffff8,%r9d
ffff800000106c8a:	45 89 cb             	mov    %r9d,%r11d
ffff800000106c8d:	45 29 c8             	sub    %r9d,%r8d
ffff800000106c90:	4c 01 d8             	add    %r11,%rax
ffff800000106c93:	83 e1 07             	and    $0x7,%ecx
ffff800000106c96:	74 4b                	je     ffff800000106ce3 <vsprintf+0xb93>
ffff800000106c98:	c6 00 20             	movb   $0x20,(%rax)
ffff800000106c9b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
ffff800000106c9f:	44 39 c2             	cmp    %r8d,%edx
ffff800000106ca2:	7d 3f                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106ca4:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff800000106ca8:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
ffff800000106cac:	39 ca                	cmp    %ecx,%edx
ffff800000106cae:	7d 33                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106cb0:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff800000106cb4:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
ffff800000106cb8:	44 39 ca             	cmp    %r9d,%edx
ffff800000106cbb:	7d 26                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106cbd:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff800000106cc1:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
ffff800000106cc5:	39 ca                	cmp    %ecx,%edx
ffff800000106cc7:	7d 1a                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106cc9:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff800000106ccd:	41 83 e8 05          	sub    $0x5,%r8d
ffff800000106cd1:	44 39 ca             	cmp    %r9d,%edx
ffff800000106cd4:	7d 0d                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106cd6:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff800000106cda:	44 39 c2             	cmp    %r8d,%edx
ffff800000106cdd:	7d 04                	jge    ffff800000106ce3 <vsprintf+0xb93>
ffff800000106cdf:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff800000106ce3:	45 89 d2             	mov    %r10d,%r10d
ffff800000106ce6:	8d 4a ff             	lea    -0x1(%rdx),%ecx
ffff800000106ce9:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
ffff800000106cee:	e9 ec f8 ff ff       	jmp    ffff8000001065df <vsprintf+0x48f>
ffff800000106cf3:	89 c2                	mov    %eax,%edx
ffff800000106cf5:	83 c0 08             	add    $0x8,%eax
ffff800000106cf8:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106cfd:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106d01:	e9 81 fe ff ff       	jmp    ffff800000106b87 <vsprintf+0xa37>
ffff800000106d06:	89 c2                	mov    %eax,%edx
ffff800000106d08:	83 c0 08             	add    $0x8,%eax
ffff800000106d0b:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106d10:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106d14:	e9 92 fe ff ff       	jmp    ffff800000106bab <vsprintf+0xa5b>
ffff800000106d19:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d1d:	41 83 c9 02          	or     $0x2,%r9d
ffff800000106d21:	49 89 de             	mov    %rbx,%r14
ffff800000106d24:	e9 c9 f6 ff ff       	jmp    ffff8000001063f2 <vsprintf+0x2a2>
ffff800000106d29:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d2d:	41 83 c9 40          	or     $0x40,%r9d
ffff800000106d31:	49 89 de             	mov    %rbx,%r14
ffff800000106d34:	e9 88 f6 ff ff       	jmp    ffff8000001063c1 <vsprintf+0x271>
ffff800000106d39:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d3d:	49 89 de             	mov    %rbx,%r14
ffff800000106d40:	e9 ad f6 ff ff       	jmp    ffff8000001063f2 <vsprintf+0x2a2>
ffff800000106d45:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d49:	49 89 de             	mov    %rbx,%r14
ffff800000106d4c:	e9 57 fc ff ff       	jmp    ffff8000001069a8 <vsprintf+0x858>
ffff800000106d51:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d55:	49 89 de             	mov    %rbx,%r14
ffff800000106d58:	e9 0e fc ff ff       	jmp    ffff80000010696b <vsprintf+0x81b>
ffff800000106d5d:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d61:	49 89 de             	mov    %rbx,%r14
ffff800000106d64:	e9 58 f6 ff ff       	jmp    ffff8000001063c1 <vsprintf+0x271>
ffff800000106d69:	89 f1                	mov    %esi,%ecx
ffff800000106d6b:	e9 e5 f6 ff ff       	jmp    ffff800000106455 <vsprintf+0x305>
ffff800000106d70:	44 89 c1             	mov    %r8d,%ecx
ffff800000106d73:	e9 67 f8 ff ff       	jmp    ffff8000001065df <vsprintf+0x48f>
ffff800000106d78:	31 d2                	xor    %edx,%edx
ffff800000106d7a:	e9 46 f8 ff ff       	jmp    ffff8000001065c5 <vsprintf+0x475>
ffff800000106d7f:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff800000106d84:	4c 89 d7             	mov    %r10,%rdi
ffff800000106d87:	e9 19 f4 ff ff       	jmp    ffff8000001061a5 <vsprintf+0x55>
ffff800000106d8c:	4c 89 d2             	mov    %r10,%rdx
ffff800000106d8f:	45 31 c9             	xor    %r9d,%r9d
ffff800000106d92:	e9 63 f7 ff ff       	jmp    ffff8000001064fa <vsprintf+0x3aa>
ffff800000106d97:	45 31 c9             	xor    %r9d,%r9d
ffff800000106d9a:	e9 02 f9 ff ff       	jmp    ffff8000001066a1 <vsprintf+0x551>
ffff800000106d9f:	41 89 d3             	mov    %edx,%r11d
ffff800000106da2:	49 89 f0             	mov    %rsi,%r8
ffff800000106da5:	49 89 f9             	mov    %rdi,%r9
ffff800000106da8:	45 31 d2             	xor    %r10d,%r10d
ffff800000106dab:	31 c0                	xor    %eax,%eax
ffff800000106dad:	e9 f1 fc ff ff       	jmp    ffff800000106aa3 <vsprintf+0x953>
ffff800000106db2:	45 31 c9             	xor    %r9d,%r9d
ffff800000106db5:	e9 a9 fe ff ff       	jmp    ffff800000106c63 <vsprintf+0xb13>
ffff800000106dba:	31 d2                	xor    %edx,%edx
ffff800000106dbc:	e9 1c fb ff ff       	jmp    ffff8000001068dd <vsprintf+0x78d>
ffff800000106dc1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
ffff800000106dc8:	00 00 00 00 
ffff800000106dcc:	0f 1f 40 00          	nopl   0x0(%rax)

ffff800000106dd0 <color_printk>:
ffff800000106dd0:	f3 0f 1e fa          	endbr64
ffff800000106dd4:	49 bb ac 62 00 00 00 	movabs $0x62ac,%r11
ffff800000106ddb:	00 00 00 
ffff800000106dde:	41 57                	push   %r15
ffff800000106de0:	41 89 f7             	mov    %esi,%r15d
ffff800000106de3:	48 89 d6             	mov    %rdx,%rsi
ffff800000106de6:	41 56                	push   %r14
ffff800000106de8:	41 55                	push   %r13
ffff800000106dea:	41 89 fd             	mov    %edi,%r13d
ffff800000106ded:	41 54                	push   %r12
ffff800000106def:	55                   	push   %rbp
ffff800000106df0:	48 8d 2d dd ff ff ff 	lea    -0x23(%rip),%rbp        # ffff800000106dd4 <color_printk+0x4>
ffff800000106df7:	53                   	push   %rbx
ffff800000106df8:	4c 01 dd             	add    %r11,%rbp
ffff800000106dfb:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
ffff800000106e02:	48 89 8c 24 88 01 00 	mov    %rcx,0x188(%rsp)
ffff800000106e09:	00 
ffff800000106e0a:	4c 89 84 24 90 01 00 	mov    %r8,0x190(%rsp)
ffff800000106e11:	00 
ffff800000106e12:	4c 89 8c 24 98 01 00 	mov    %r9,0x198(%rsp)
ffff800000106e19:	00 
ffff800000106e1a:	84 c0                	test   %al,%al
ffff800000106e1c:	74 40                	je     ffff800000106e5e <color_printk+0x8e>
ffff800000106e1e:	0f 29 84 24 a0 01 00 	movaps %xmm0,0x1a0(%rsp)
ffff800000106e25:	00 
ffff800000106e26:	0f 29 8c 24 b0 01 00 	movaps %xmm1,0x1b0(%rsp)
ffff800000106e2d:	00 
ffff800000106e2e:	0f 29 94 24 c0 01 00 	movaps %xmm2,0x1c0(%rsp)
ffff800000106e35:	00 
ffff800000106e36:	0f 29 9c 24 d0 01 00 	movaps %xmm3,0x1d0(%rsp)
ffff800000106e3d:	00 
ffff800000106e3e:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
ffff800000106e45:	00 
ffff800000106e46:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
ffff800000106e4d:	00 
ffff800000106e4e:	0f 29 b4 24 00 02 00 	movaps %xmm6,0x200(%rsp)
ffff800000106e55:	00 
ffff800000106e56:	0f 29 bc 24 10 02 00 	movaps %xmm7,0x210(%rsp)
ffff800000106e5d:	00 
ffff800000106e5e:	48 8d 84 24 60 02 00 	lea    0x260(%rsp),%rax
ffff800000106e65:	00 
ffff800000106e66:	48 8d 94 24 58 01 00 	lea    0x158(%rsp),%rdx
ffff800000106e6d:	00 
ffff800000106e6e:	c7 84 24 58 01 00 00 	movl   $0x18,0x158(%rsp)
ffff800000106e75:	18 00 00 00 
ffff800000106e79:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
ffff800000106e80:	00 
ffff800000106e81:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
ffff800000106e88:	00 
ffff800000106e89:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
ffff800000106e90:	00 
ffff800000106e91:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000106e98:	00 00 00 
ffff800000106e9b:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
ffff800000106ea2:	00 
ffff800000106ea3:	48 8d 3c 28          	lea    (%rax,%rbp,1),%rdi
ffff800000106ea7:	48 b8 d0 90 ff ff ff 	movabs $0xffffffffffff90d0,%rax
ffff800000106eae:	ff ff ff 
ffff800000106eb1:	c7 84 24 5c 01 00 00 	movl   $0x30,0x15c(%rsp)
ffff800000106eb8:	30 00 00 00 
ffff800000106ebc:	48 01 e8             	add    %rbp,%rax
ffff800000106ebf:	ff d0                	call   *%rax
ffff800000106ec1:	89 84 24 d4 00 00 00 	mov    %eax,0xd4(%rsp)
ffff800000106ec8:	85 c0                	test   %eax,%eax
ffff800000106eca:	0f 8e 10 0d 00 00    	jle    ffff800000107be0 <color_printk+0xe10>
ffff800000106ed0:	49 be 20 10 00 00 00 	movabs $0x1020,%r14
ffff800000106ed7:	00 00 00 
ffff800000106eda:	45 31 e4             	xor    %r12d,%r12d
ffff800000106edd:	c7 84 24 d0 00 00 00 	movl   $0x0,0xd0(%rsp)
ffff800000106ee4:	00 00 00 00 
ffff800000106ee8:	49 8b 44 2e 18       	mov    0x18(%r14,%rbp,1),%rax
ffff800000106eed:	45 8b 44 2e 14       	mov    0x14(%r14,%rbp,1),%r8d
ffff800000106ef2:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000106ef7:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000106efb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
ffff800000106f00:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff800000106f05:	45 89 c1             	mov    %r8d,%r9d
ffff800000106f08:	45 89 e0             	mov    %r12d,%r8d
ffff800000106f0b:	48 b8 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rax
ffff800000106f12:	ff ff ff 
ffff800000106f15:	48 01 e8             	add    %rbp,%rax
ffff800000106f18:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
ffff800000106f1f:	00 
ffff800000106f20:	48 b8 f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rax
ffff800000106f27:	ff ff ff 
ffff800000106f2a:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
ffff800000106f31:	00 
ffff800000106f32:	48 b8 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rax
ffff800000106f39:	ff ff ff 
ffff800000106f3c:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
ffff800000106f43:	00 
ffff800000106f44:	48 b8 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rax
ffff800000106f4b:	ff ff ff 
ffff800000106f4e:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
ffff800000106f55:	00 
ffff800000106f56:	48 01 e8             	add    %rbp,%rax
ffff800000106f59:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
ffff800000106f60:	00 
ffff800000106f61:	48 83 c0 0f          	add    $0xf,%rax
ffff800000106f65:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
ffff800000106f6c:	00 
ffff800000106f6d:	48 b8 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rax
ffff800000106f74:	ff ff ff 
ffff800000106f77:	48 01 e8             	add    %rbp,%rax
ffff800000106f7a:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
ffff800000106f81:	00 
ffff800000106f82:	44 89 f8             	mov    %r15d,%eax
ffff800000106f85:	45 89 ef             	mov    %r13d,%r15d
ffff800000106f88:	89 44 24 08          	mov    %eax,0x8(%rsp)
ffff800000106f8c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106f90:	8b 94 24 d0 00 00 00 	mov    0xd0(%rsp),%edx
ffff800000106f97:	85 d2                	test   %edx,%edx
ffff800000106f99:	0f 8f 0f 0d 00 00    	jg     ffff800000107cae <color_printk+0xede>
ffff800000106f9f:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
ffff800000106fa6:	00 
ffff800000106fa7:	49 63 d0             	movslq %r8d,%rdx
ffff800000106faa:	41 83 c0 01          	add    $0x1,%r8d
ffff800000106fae:	48 01 e8             	add    %rbp,%rax
ffff800000106fb1:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
ffff800000106fb5:	3c 0a                	cmp    $0xa,%al
ffff800000106fb7:	0f 84 d8 0c 00 00    	je     ffff800000107c95 <color_printk+0xec5>
ffff800000106fbd:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
ffff800000106fc2:	3c 08                	cmp    $0x8,%al
ffff800000106fc4:	0f 84 79 19 00 00    	je     ffff800000108943 <color_printk+0x1b73>
ffff800000106fca:	3c 09                	cmp    $0x9,%al
ffff800000106fcc:	0f 84 53 19 00 00    	je     ffff800000108925 <color_printk+0x1b55>
ffff800000106fd2:	44 0f af c9          	imul   %ecx,%r9d
ffff800000106fd6:	4c 63 de             	movslq %esi,%r11
ffff800000106fd9:	0f b6 d8             	movzbl %al,%ebx
ffff800000106fdc:	4c 8b a4 24 40 01 00 	mov    0x140(%rsp),%r12
ffff800000106fe3:	00 
ffff800000106fe4:	0f af d7             	imul   %edi,%edx
ffff800000106fe7:	48 c1 e3 04          	shl    $0x4,%rbx
ffff800000106feb:	31 ff                	xor    %edi,%edi
ffff800000106fed:	4e 8d 14 23          	lea    (%rbx,%r12,1),%r10
ffff800000106ff1:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
ffff800000106ff8:	00 
ffff800000106ff9:	44 0f af ce          	imul   %esi,%r9d
ffff800000106ffd:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
ffff800000107002:	48 63 d2             	movslq %edx,%rdx
ffff800000107005:	49 63 c9             	movslq %r9d,%rcx
ffff800000107008:	4d 8d 4c 1c 0f       	lea    0xf(%r12,%rbx,1),%r9
ffff80000010700d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
ffff800000107012:	48 01 ca             	add    %rcx,%rdx
ffff800000107015:	4c 89 d9             	mov    %r11,%rcx
ffff800000107018:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010701c:	48 c1 e2 02          	shl    $0x2,%rdx
ffff800000107020:	4c 29 d9             	sub    %r11,%rcx
ffff800000107023:	48 c1 e1 02          	shl    $0x2,%rcx
ffff800000107027:	85 f6                	test   %esi,%esi
ffff800000107029:	48 0f 48 f9          	cmovs  %rcx,%rdi
ffff80000010702d:	48 01 d7             	add    %rdx,%rdi
ffff800000107030:	48 01 df             	add    %rbx,%rdi
ffff800000107033:	49 39 f9             	cmp    %rdi,%r9
ffff800000107036:	40 0f 92 c7          	setb   %dil
ffff80000010703a:	48 83 c1 1f          	add    $0x1f,%rcx
ffff80000010703e:	85 f6                	test   %esi,%esi
ffff800000107040:	be 1f 00 00 00       	mov    $0x1f,%esi
ffff800000107045:	48 0f 48 ce          	cmovs  %rsi,%rcx
ffff800000107049:	48 89 de             	mov    %rbx,%rsi
ffff80000010704c:	48 01 d1             	add    %rdx,%rcx
ffff80000010704f:	48 01 d9             	add    %rbx,%rcx
ffff800000107052:	4c 39 d1             	cmp    %r10,%rcx
ffff800000107055:	0f 92 c1             	setb   %cl
ffff800000107058:	40 08 f9             	or     %dil,%cl
ffff80000010705b:	0f 84 98 0b 00 00    	je     ffff800000107bf9 <color_printk+0xe29>
ffff800000107061:	48 8d 48 1f          	lea    0x1f(%rax),%rcx
ffff800000107065:	48 89 c3             	mov    %rax,%rbx
ffff800000107068:	48 83 f9 3e          	cmp    $0x3e,%rcx
ffff80000010706c:	0f 86 87 0b 00 00    	jbe    ffff800000107bf9 <color_printk+0xe29>
ffff800000107072:	4d 8d 6a 10          	lea    0x10(%r10),%r13
ffff800000107076:	4c 8d 24 16          	lea    (%rsi,%rdx,1),%r12
ffff80000010707a:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff80000010707f:	4c 89 d8             	mov    %r11,%rax
ffff800000107082:	49 8d 3c 1c          	lea    (%r12,%rbx,1),%rdi
ffff800000107086:	49 89 db             	mov    %rbx,%r11
ffff800000107089:	48 c1 e0 05          	shl    $0x5,%rax
ffff80000010708d:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000107092:	48 8d 34 1f          	lea    (%rdi,%rbx,1),%rsi
ffff800000107096:	4c 89 ac 24 b8 00 00 	mov    %r13,0xb8(%rsp)
ffff80000010709d:	00 
ffff80000010709e:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff8000001070a5:	ff ff ff 
ffff8000001070a8:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff8000001070ae:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff8000001070b3:	48 8d 0c 1e          	lea    (%rsi,%rbx,1),%rcx
ffff8000001070b7:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff8000001070be:	ff ff ff 
ffff8000001070c1:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff8000001070c7:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff8000001070cc:	48 8d 14 19          	lea    (%rcx,%rbx,1),%rdx
ffff8000001070d0:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff8000001070d5:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff8000001070dc:	ff ff ff 
ffff8000001070df:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff8000001070e4:	4c 8d 0c 1a          	lea    (%rdx,%rbx,1),%r9
ffff8000001070e8:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff8000001070ee:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff8000001070f5:	ff ff ff 
ffff8000001070f8:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff8000001070fd:	49 8d 1c 19          	lea    (%r9,%rbx,1),%rbx
ffff800000107101:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107108:	ff ff ff 
ffff80000010710b:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000107110:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
ffff800000107117:	00 
ffff800000107118:	49 01 db             	add    %rbx,%r11
ffff80000010711b:	44 89 84 24 08 01 00 	mov    %r8d,0x108(%rsp)
ffff800000107122:	00 
ffff800000107123:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107128:	4c 89 ac 24 c0 00 00 	mov    %r13,0xc0(%rsp)
ffff80000010712f:	00 
ffff800000107130:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
ffff800000107137:	00 
ffff800000107138:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff80000010713d:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000107144:	00 
ffff800000107145:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff80000010714c:	ff ff ff 
ffff80000010714f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107154:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff80000010715b:	00 
ffff80000010715c:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107163:	ff ff ff 
ffff800000107166:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff80000010716b:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000107172:	00 
ffff800000107173:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff80000010717a:	ff ff ff 
ffff80000010717d:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107182:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff800000107189:	00 
ffff80000010718a:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107191:	ff ff ff 
ffff800000107194:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107199:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff8000001071a0:	00 
ffff8000001071a1:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff8000001071a8:	ff ff ff 
ffff8000001071ab:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff8000001071b0:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff8000001071b7:	00 
ffff8000001071b8:	66 41 0f 7e d5       	movd   %xmm2,%r13d
ffff8000001071bd:	45 89 e8             	mov    %r13d,%r8d
ffff8000001071c0:	f3 41 0f 7e 12       	movq   (%r10),%xmm2
ffff8000001071c5:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff8000001071ca:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff8000001071cf:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff8000001071d4:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff8000001071d9:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff8000001071de:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff8000001071e3:	49 83 c2 08          	add    $0x8,%r10
ffff8000001071e7:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff8000001071eb:	66 0f 64 c1          	pcmpgtb %xmm1,%xmm0
ffff8000001071ef:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff8000001071f3:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff8000001071f7:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff8000001071fb:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
ffff800000107200:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
ffff800000107204:	66 44 0f 6f f5       	movdqa %xmm5,%xmm14
ffff800000107209:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010720e:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000107213:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
ffff800000107217:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
ffff80000010721c:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
ffff800000107221:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000107226:	66 41 0f db de       	pand   %xmm14,%xmm3
ffff80000010722b:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000107230:	66 0f db c5          	pand   %xmm5,%xmm0
ffff800000107234:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff800000107239:	66 44 0f eb f3       	por    %xmm3,%xmm14
ffff80000010723e:	66 0f eb e8          	por    %xmm0,%xmm5
ffff800000107242:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
ffff800000107247:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff80000010724c:	66 45 0f 7e 34 24    	movd   %xmm14,(%r12)
ffff800000107252:	66 0f 65 c1          	pcmpgtw %xmm1,%xmm0
ffff800000107256:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff80000010725a:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff80000010725f:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
ffff800000107264:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107269:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff80000010726e:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff800000107273:	66 0f db c1          	pand   %xmm1,%xmm0
ffff800000107277:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010727c:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff800000107281:	66 0f eb c8          	por    %xmm0,%xmm1
ffff800000107285:	66 4d 0f 7e ed       	movq   %xmm13,%r13
ffff80000010728a:	f3 0f 7e 84 24 c0 00 	movq   0xc0(%rsp),%xmm0
ffff800000107291:	00 00 
ffff800000107293:	66 0f d6 4c 24 08    	movq   %xmm1,0x8(%rsp)
ffff800000107299:	66 0f db c2          	pand   %xmm2,%xmm0
ffff80000010729d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001072a2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001072a7:	66 0f 64 e0          	pcmpgtb %xmm0,%xmm4
ffff8000001072ab:	66 0f 6f d8          	movdqa %xmm0,%xmm3
ffff8000001072af:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
ffff8000001072b3:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff8000001072b7:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff8000001072bb:	66 0f 6f e3          	movdqa %xmm3,%xmm4
ffff8000001072bf:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001072c4:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
ffff8000001072c8:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff8000001072cc:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001072d1:	66 0f db fc          	pand   %xmm4,%xmm7
ffff8000001072d5:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001072da:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001072df:	66 0f eb e7          	por    %xmm7,%xmm4
ffff8000001072e3:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff8000001072e8:	66 0f db fb          	pand   %xmm3,%xmm7
ffff8000001072ec:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001072f1:	66 0f d6 64 24 18    	movq   %xmm4,0x18(%rsp)
ffff8000001072f7:	66 0f eb df          	por    %xmm7,%xmm3
ffff8000001072fb:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff800000107300:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff800000107304:	66 0f d6 5c 24 20    	movq   %xmm3,0x20(%rsp)
ffff80000010730a:	66 0f 6f e7          	movdqa %xmm7,%xmm4
ffff80000010730e:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000107312:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
ffff800000107316:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff80000010731a:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff80000010731e:	66 0f db f7          	pand   %xmm7,%xmm6
ffff800000107322:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107327:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010732c:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000107330:	66 0f eb fe          	por    %xmm6,%xmm7
ffff800000107334:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107339:	66 0f db f0          	pand   %xmm0,%xmm6
ffff80000010733d:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107342:	66 0f d6 7c 24 28    	movq   %xmm7,0x28(%rsp)
ffff800000107348:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff80000010734d:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000107351:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
ffff800000107358:	00 00 
ffff80000010735a:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
ffff800000107360:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000107364:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff800000107368:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff80000010736d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107372:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107377:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff80000010737b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010737f:	66 0f 6f e6          	movdqa %xmm6,%xmm4
ffff800000107383:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000107388:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff80000010738c:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107390:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000107394:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107398:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010739d:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff8000001073a1:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff8000001073a5:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001073aa:	66 0f db f9          	pand   %xmm1,%xmm7
ffff8000001073ae:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001073b2:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001073b7:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001073bb:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001073c0:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001073c5:	66 0f eb e7          	por    %xmm7,%xmm4
ffff8000001073c9:	66 0f db f3          	pand   %xmm3,%xmm6
ffff8000001073cd:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001073d2:	66 0f d6 64 24 38    	movq   %xmm4,0x38(%rsp)
ffff8000001073d8:	66 0f 6f e6          	movdqa %xmm6,%xmm4
ffff8000001073dc:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff8000001073e0:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff8000001073e5:	66 0f eb f4          	por    %xmm4,%xmm6
ffff8000001073e9:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001073ed:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001073f1:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001073f5:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
ffff8000001073fb:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001073ff:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107404:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000107408:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010740c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107411:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107416:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010741b:	66 0f db c8          	pand   %xmm0,%xmm1
ffff80000010741f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107424:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000107428:	66 0f eb c1          	por    %xmm1,%xmm0
ffff80000010742c:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000107431:	66 0f d6 5c 24 48    	movq   %xmm3,0x48(%rsp)
ffff800000107437:	f3 0f 7e 8c 24 e0 00 	movq   0xe0(%rsp),%xmm1
ffff80000010743e:	00 00 
ffff800000107440:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
ffff800000107446:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010744a:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff80000010744e:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107453:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107458:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010745d:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107461:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000107465:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000107469:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff80000010746d:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107471:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000107475:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107479:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010747e:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107482:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107486:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff80000010748b:	66 0f db f9          	pand   %xmm1,%xmm7
ffff80000010748f:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000107493:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107498:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010749d:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001074a2:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001074a6:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001074ab:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
ffff8000001074b0:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
ffff8000001074b5:	66 44 0f eb c7       	por    %xmm7,%xmm8
ffff8000001074ba:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff8000001074bf:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001074c4:	66 44 0f d6 44 24 58 	movq   %xmm8,0x58(%rsp)
ffff8000001074cb:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001074cf:	66 44 0f d6 64 24 60 	movq   %xmm12,0x60(%rsp)
ffff8000001074d6:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001074da:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001074de:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001074e2:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001074e6:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001074ea:	66 0f db f1          	pand   %xmm1,%xmm6
ffff8000001074ee:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001074f3:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001074f8:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001074fd:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000107501:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000107505:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff80000010750a:	66 0f eb fe          	por    %xmm6,%xmm7
ffff80000010750e:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107512:	66 0f eb f1          	por    %xmm1,%xmm6
ffff800000107516:	66 0f d6 7c 24 68    	movq   %xmm7,0x68(%rsp)
ffff80000010751c:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
ffff800000107523:	00 00 
ffff800000107525:	66 0f d6 74 24 70    	movq   %xmm6,0x70(%rsp)
ffff80000010752b:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010752f:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107533:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107538:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010753d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107542:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107546:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010754a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010754e:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff800000107552:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107556:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010755a:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff80000010755f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107564:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107568:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff80000010756c:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff800000107570:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107574:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107578:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010757c:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107581:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107586:	66 0f db cc          	pand   %xmm4,%xmm1
ffff80000010758a:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff80000010758f:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000107593:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107598:	66 0f db cb          	pand   %xmm3,%xmm1
ffff80000010759c:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001075a1:	66 0f d6 64 24 78    	movq   %xmm4,0x78(%rsp)
ffff8000001075a7:	66 0f eb d9          	por    %xmm1,%xmm3
ffff8000001075ab:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001075b0:	66 0f d6 9c 24 80 00 	movq   %xmm3,0x80(%rsp)
ffff8000001075b7:	00 00 
ffff8000001075b9:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001075bd:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001075c1:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001075c5:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001075c9:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001075cd:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001075d1:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001075d6:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001075db:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001075df:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001075e4:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff8000001075e9:	66 44 0f eb c1       	por    %xmm1,%xmm8
ffff8000001075ee:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001075f3:	66 44 0f d6 84 24 88 	movq   %xmm8,0x88(%rsp)
ffff8000001075fa:	00 00 00 
ffff8000001075fd:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000107601:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107606:	66 0f eb c1          	por    %xmm1,%xmm0
ffff80000010760a:	f3 0f 7e 8c 24 f0 00 	movq   0xf0(%rsp),%xmm1
ffff800000107611:	00 00 
ffff800000107613:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
ffff80000010761a:	00 00 
ffff80000010761c:	66 0f db ca          	pand   %xmm2,%xmm1
ffff800000107620:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107624:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107629:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010762e:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107633:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107637:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010763b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010763f:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff800000107643:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107647:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010764b:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff800000107650:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107655:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107659:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff80000010765d:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff800000107661:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107665:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107669:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010766d:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107672:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107677:	66 0f db cc          	pand   %xmm4,%xmm1
ffff80000010767b:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff800000107680:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff800000107685:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff80000010768a:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010768f:	66 44 0f d6 a4 24 98 	movq   %xmm12,0x98(%rsp)
ffff800000107696:	00 00 00 
ffff800000107699:	66 0f db cb          	pand   %xmm3,%xmm1
ffff80000010769d:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001076a2:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff8000001076a6:	66 0f eb f9          	por    %xmm1,%xmm7
ffff8000001076aa:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001076af:	66 0f d6 bc 24 a0 00 	movq   %xmm7,0xa0(%rsp)
ffff8000001076b6:	00 00 
ffff8000001076b8:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001076bc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001076c0:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001076c4:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001076c8:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001076cc:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001076d0:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001076d5:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001076da:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001076de:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001076e3:	66 0f eb d9          	por    %xmm1,%xmm3
ffff8000001076e7:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001076ec:	66 0f d6 9c 24 a8 00 	movq   %xmm3,0xa8(%rsp)
ffff8000001076f3:	00 00 
ffff8000001076f5:	66 0f db c8          	pand   %xmm0,%xmm1
ffff8000001076f9:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001076fe:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107702:	66 0f eb f1          	por    %xmm1,%xmm6
ffff800000107706:	f3 0f 7e 8c 24 f8 00 	movq   0xf8(%rsp),%xmm1
ffff80000010770d:	00 00 
ffff80000010770f:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
ffff800000107716:	00 00 
ffff800000107718:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010771c:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107720:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107725:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010772a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010772f:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107733:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107737:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010773b:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff80000010773f:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107743:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000107747:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff80000010774c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107751:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
ffff800000107755:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107759:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff80000010775d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000107761:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000107765:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
ffff80000010776a:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010776f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000107774:	66 41 0f db cc       	pand   %xmm12,%xmm1
ffff800000107779:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff80000010777e:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff800000107783:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107788:	66 0f db cc          	pand   %xmm4,%xmm1
ffff80000010778c:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff800000107791:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000107795:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff80000010779a:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff80000010779e:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001077a2:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001077a6:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff8000001077aa:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001077ae:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff8000001077b3:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001077b8:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001077bd:	66 41 0f db c8       	pand   %xmm8,%xmm1
ffff8000001077c2:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff8000001077c7:	66 44 0f eb c1       	por    %xmm1,%xmm8
ffff8000001077cc:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001077d1:	66 0f db c8          	pand   %xmm0,%xmm1
ffff8000001077d5:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001077da:	66 0f eb c1          	por    %xmm1,%xmm0
ffff8000001077de:	f3 0f 7e 8c 24 00 01 	movq   0x100(%rsp),%xmm1
ffff8000001077e5:	00 00 
ffff8000001077e7:	66 0f db d1          	pand   %xmm1,%xmm2
ffff8000001077eb:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff8000001077f0:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001077f5:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001077fa:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff8000001077fe:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000107802:	66 0f 6f ca          	movdqa %xmm2,%xmm1
ffff800000107806:	66 0f 60 ce          	punpcklbw %xmm6,%xmm1
ffff80000010780a:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff80000010780e:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107812:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff800000107817:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff80000010781c:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107820:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000107825:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000107829:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff80000010782d:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107831:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107835:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff80000010783a:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff80000010783e:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107843:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107848:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff80000010784c:	66 0f db cf          	pand   %xmm7,%xmm1
ffff800000107850:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000107855:	66 0f eb f9          	por    %xmm1,%xmm7
ffff800000107859:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010785e:	66 0f db cb          	pand   %xmm3,%xmm1
ffff800000107862:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107867:	66 0f eb d9          	por    %xmm1,%xmm3
ffff80000010786b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010786f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000107874:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
ffff800000107878:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010787d:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff800000107882:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000107887:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010788c:	66 0f db ca          	pand   %xmm2,%xmm1
ffff800000107890:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff800000107895:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff80000010789a:	66 0f eb d1          	por    %xmm1,%xmm2
ffff80000010789e:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff8000001078a3:	66 41 0f 70 ce e5    	pshufd $0xe5,%xmm14,%xmm1
ffff8000001078a9:	66 0f 7e 0f          	movd   %xmm1,(%rdi)
ffff8000001078ad:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
ffff8000001078b1:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001078b6:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff8000001078bb:	66 4d 0f 6e ed       	movq   %r13,%xmm13
ffff8000001078c0:	66 0f 7e 09          	movd   %xmm1,(%rcx)
ffff8000001078c4:	f3 0f 7e 6c 24 08    	movq   0x8(%rsp),%xmm5
ffff8000001078ca:	66 41 0f 70 cd e5    	pshufd $0xe5,%xmm13,%xmm1
ffff8000001078d0:	44 89 2a             	mov    %r13d,(%rdx)
ffff8000001078d3:	66 41 0f 7e 09       	movd   %xmm1,(%r9)
ffff8000001078d8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001078dd:	66 0f 7e 2b          	movd   %xmm5,(%rbx)
ffff8000001078e1:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff8000001078e7:	66 41 0f 7e 0b       	movd   %xmm1,(%r11)
ffff8000001078ec:	66 41 0f 7e 6c 24 04 	movd   %xmm5,0x4(%r12)
ffff8000001078f3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001078f8:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
ffff8000001078fe:	66 0f 7e 4f 04       	movd   %xmm1,0x4(%rdi)
ffff800000107903:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
ffff800000107908:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff80000010790d:	f3 0f 7e 6c 24 28    	movq   0x28(%rsp),%xmm5
ffff800000107913:	66 0f 7e 49 04       	movd   %xmm1,0x4(%rcx)
ffff800000107918:	66 0f 7e 6a 04       	movd   %xmm5,0x4(%rdx)
ffff80000010791d:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107922:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
ffff800000107928:	66 41 0f 7e 49 04    	movd   %xmm1,0x4(%r9)
ffff80000010792e:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
ffff800000107933:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107938:	f3 0f 7e 6c 24 38    	movq   0x38(%rsp),%xmm5
ffff80000010793e:	66 41 0f 7e 4b 04    	movd   %xmm1,0x4(%r11)
ffff800000107944:	66 41 0f 7e 6c 24 08 	movd   %xmm5,0x8(%r12)
ffff80000010794b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107950:	f3 0f 7e 6c 24 40    	movq   0x40(%rsp),%xmm5
ffff800000107956:	66 0f 7e 4f 08       	movd   %xmm1,0x8(%rdi)
ffff80000010795b:	66 0f 7e 6e 08       	movd   %xmm5,0x8(%rsi)
ffff800000107960:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107965:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
ffff80000010796b:	66 0f 7e 49 08       	movd   %xmm1,0x8(%rcx)
ffff800000107970:	66 0f 7e 6a 08       	movd   %xmm5,0x8(%rdx)
ffff800000107975:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff80000010797a:	f3 0f 7e 6c 24 50    	movq   0x50(%rsp),%xmm5
ffff800000107980:	66 41 0f 7e 49 08    	movd   %xmm1,0x8(%r9)
ffff800000107986:	66 0f 7e 6b 08       	movd   %xmm5,0x8(%rbx)
ffff80000010798b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107990:	f3 0f 7e 6c 24 58    	movq   0x58(%rsp),%xmm5
ffff800000107996:	66 41 0f 7e 4b 08    	movd   %xmm1,0x8(%r11)
ffff80000010799c:	66 41 0f 7e 6c 24 0c 	movd   %xmm5,0xc(%r12)
ffff8000001079a3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079a8:	66 0f 7e 4f 0c       	movd   %xmm1,0xc(%rdi)
ffff8000001079ad:	f3 0f 7e 6c 24 60    	movq   0x60(%rsp),%xmm5
ffff8000001079b3:	66 0f 7e 6e 0c       	movd   %xmm5,0xc(%rsi)
ffff8000001079b8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079bd:	f3 0f 7e 6c 24 68    	movq   0x68(%rsp),%xmm5
ffff8000001079c3:	66 0f 7e 49 0c       	movd   %xmm1,0xc(%rcx)
ffff8000001079c8:	66 0f 7e 6a 0c       	movd   %xmm5,0xc(%rdx)
ffff8000001079cd:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079d2:	f3 0f 7e 6c 24 70    	movq   0x70(%rsp),%xmm5
ffff8000001079d8:	66 41 0f 7e 49 0c    	movd   %xmm1,0xc(%r9)
ffff8000001079de:	66 0f 7e 6b 0c       	movd   %xmm5,0xc(%rbx)
ffff8000001079e3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079e8:	f3 0f 7e 6c 24 78    	movq   0x78(%rsp),%xmm5
ffff8000001079ee:	66 41 0f 7e 4b 0c    	movd   %xmm1,0xc(%r11)
ffff8000001079f4:	66 41 0f 7e 6c 24 10 	movd   %xmm5,0x10(%r12)
ffff8000001079fb:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a00:	f3 0f 7e ac 24 80 00 	movq   0x80(%rsp),%xmm5
ffff800000107a07:	00 00 
ffff800000107a09:	66 0f 7e 4f 10       	movd   %xmm1,0x10(%rdi)
ffff800000107a0e:	66 0f 7e 6e 10       	movd   %xmm5,0x10(%rsi)
ffff800000107a13:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a18:	f3 0f 7e ac 24 88 00 	movq   0x88(%rsp),%xmm5
ffff800000107a1f:	00 00 
ffff800000107a21:	66 0f 7e 49 10       	movd   %xmm1,0x10(%rcx)
ffff800000107a26:	66 0f 7e 6a 10       	movd   %xmm5,0x10(%rdx)
ffff800000107a2b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a30:	f3 0f 7e ac 24 90 00 	movq   0x90(%rsp),%xmm5
ffff800000107a37:	00 00 
ffff800000107a39:	66 41 0f 7e 49 10    	movd   %xmm1,0x10(%r9)
ffff800000107a3f:	66 0f 7e 6b 10       	movd   %xmm5,0x10(%rbx)
ffff800000107a44:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a49:	f3 0f 7e ac 24 98 00 	movq   0x98(%rsp),%xmm5
ffff800000107a50:	00 00 
ffff800000107a52:	66 41 0f 7e 4b 10    	movd   %xmm1,0x10(%r11)
ffff800000107a58:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
ffff800000107a5f:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a64:	f3 0f 7e ac 24 a0 00 	movq   0xa0(%rsp),%xmm5
ffff800000107a6b:	00 00 
ffff800000107a6d:	66 0f 7e 4f 14       	movd   %xmm1,0x14(%rdi)
ffff800000107a72:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
ffff800000107a77:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a7c:	f3 0f 7e ac 24 a8 00 	movq   0xa8(%rsp),%xmm5
ffff800000107a83:	00 00 
ffff800000107a85:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
ffff800000107a8a:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
ffff800000107a8f:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a94:	f3 0f 7e ac 24 b0 00 	movq   0xb0(%rsp),%xmm5
ffff800000107a9b:	00 00 
ffff800000107a9d:	66 41 0f 7e 49 14    	movd   %xmm1,0x14(%r9)
ffff800000107aa3:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
ffff800000107aa8:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000107aad:	66 41 0f 7e 6b 14    	movd   %xmm5,0x14(%r11)
ffff800000107ab3:	4c 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%r13
ffff800000107aba:	00 
ffff800000107abb:	66 41 0f 70 ec e5    	pshufd $0xe5,%xmm12,%xmm5
ffff800000107ac1:	66 45 0f 7e 64 24 18 	movd   %xmm12,0x18(%r12)
ffff800000107ac8:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
ffff800000107acd:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000107ad2:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
ffff800000107ad7:	66 0f 7e 69 18       	movd   %xmm5,0x18(%rcx)
ffff800000107adc:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000107ae2:	66 44 0f 7e 42 18    	movd   %xmm8,0x18(%rdx)
ffff800000107ae8:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000107aee:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000107af3:	66 0f 7e 43 18       	movd   %xmm0,0x18(%rbx)
ffff800000107af8:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
ffff800000107afe:	66 41 0f 7e 7c 24 1c 	movd   %xmm7,0x1c(%r12)
ffff800000107b05:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000107b0a:	49 01 c4             	add    %rax,%r12
ffff800000107b0d:	66 0f 7e 7f 1c       	movd   %xmm7,0x1c(%rdi)
ffff800000107b12:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff800000107b17:	48 01 c7             	add    %rax,%rdi
ffff800000107b1a:	66 0f 7e 5e 1c       	movd   %xmm3,0x1c(%rsi)
ffff800000107b1f:	48 01 c6             	add    %rax,%rsi
ffff800000107b22:	66 0f 7e 79 1c       	movd   %xmm7,0x1c(%rcx)
ffff800000107b27:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000107b2c:	48 01 c1             	add    %rax,%rcx
ffff800000107b2f:	66 0f 7e 72 1c       	movd   %xmm6,0x1c(%rdx)
ffff800000107b34:	48 01 c2             	add    %rax,%rdx
ffff800000107b37:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff800000107b3d:	49 01 c1             	add    %rax,%r9
ffff800000107b40:	66 0f 7e 53 1c       	movd   %xmm2,0x1c(%rbx)
ffff800000107b45:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff800000107b4a:	48 01 c3             	add    %rax,%rbx
ffff800000107b4d:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
ffff800000107b53:	49 01 c3             	add    %rax,%r11
ffff800000107b56:	4d 39 ea             	cmp    %r13,%r10
ffff800000107b59:	0f 85 61 f6 ff ff    	jne    ffff8000001071c0 <color_printk+0x3f0>
ffff800000107b5f:	45 89 c5             	mov    %r8d,%r13d
ffff800000107b62:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
ffff800000107b69:	00 
ffff800000107b6a:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff800000107b6f:	41 8b 44 2e 08       	mov    0x8(%r14,%rbp,1),%eax
ffff800000107b74:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000107b78:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000107b7d:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff800000107b82:	44 8d 50 01          	lea    0x1(%rax),%r10d
ffff800000107b86:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
ffff800000107b8b:	45 89 54 2e 08       	mov    %r10d,0x8(%r14,%rbp,1)
ffff800000107b90:	89 f0                	mov    %esi,%eax
ffff800000107b92:	99                   	cltd
ffff800000107b93:	f7 ff                	idiv   %edi
ffff800000107b95:	44 39 d0             	cmp    %r10d,%eax
ffff800000107b98:	7f 11                	jg     ffff800000107bab <color_printk+0xddb>
ffff800000107b9a:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
ffff800000107ba1:	00 00 
ffff800000107ba3:	83 c1 01             	add    $0x1,%ecx
ffff800000107ba6:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000107bab:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
ffff800000107bb0:	99                   	cltd
ffff800000107bb1:	41 f7 f9             	idiv   %r9d
ffff800000107bb4:	39 c8                	cmp    %ecx,%eax
ffff800000107bb6:	7f 0b                	jg     ffff800000107bc3 <color_printk+0xdf3>
ffff800000107bb8:	41 c7 44 2e 0c 00 00 	movl   $0x0,0xc(%r14,%rbp,1)
ffff800000107bbf:	00 00 
ffff800000107bc1:	31 c9                	xor    %ecx,%ecx
ffff800000107bc3:	44 39 84 24 d4 00 00 	cmp    %r8d,0xd4(%rsp)
ffff800000107bca:	00 
ffff800000107bcb:	0f 8f bf f3 ff ff    	jg     ffff800000106f90 <color_printk+0x1c0>
ffff800000107bd1:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
ffff800000107bd8:	85 c0                	test   %eax,%eax
ffff800000107bda:	0f 85 b0 f3 ff ff    	jne    ffff800000106f90 <color_printk+0x1c0>
ffff800000107be0:	8b 84 24 d4 00 00 00 	mov    0xd4(%rsp),%eax
ffff800000107be7:	48 81 c4 28 02 00 00 	add    $0x228,%rsp
ffff800000107bee:	5b                   	pop    %rbx
ffff800000107bef:	5d                   	pop    %rbp
ffff800000107bf0:	41 5c                	pop    %r12
ffff800000107bf2:	41 5d                	pop    %r13
ffff800000107bf4:	41 5e                	pop    %r14
ffff800000107bf6:	41 5f                	pop    %r15
ffff800000107bf8:	c3                   	ret
ffff800000107bf9:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff800000107bfe:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff800000107c03:	49 8d 72 10          	lea    0x10(%r10),%rsi
ffff800000107c07:	48 01 c2             	add    %rax,%rdx
ffff800000107c0a:	eb 19                	jmp    ffff800000107c25 <color_printk+0xe55>
ffff800000107c0c:	44 89 7a 1c          	mov    %r15d,0x1c(%rdx)
ffff800000107c10:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
ffff800000107c15:	49 83 c2 01          	add    $0x1,%r10
ffff800000107c19:	48 01 c2             	add    %rax,%rdx
ffff800000107c1c:	49 39 f2             	cmp    %rsi,%r10
ffff800000107c1f:	0f 84 14 0d 00 00    	je     ffff800000108939 <color_printk+0x1b69>
ffff800000107c25:	41 80 3a 00          	cmpb   $0x0,(%r10)
ffff800000107c29:	44 89 f8             	mov    %r15d,%eax
ffff800000107c2c:	41 0f 49 c5          	cmovns %r13d,%eax
ffff800000107c30:	89 02                	mov    %eax,(%rdx)
ffff800000107c32:	44 89 f8             	mov    %r15d,%eax
ffff800000107c35:	41 f6 02 40          	testb  $0x40,(%r10)
ffff800000107c39:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c3d:	89 42 04             	mov    %eax,0x4(%rdx)
ffff800000107c40:	44 89 f8             	mov    %r15d,%eax
ffff800000107c43:	41 f6 02 20          	testb  $0x20,(%r10)
ffff800000107c47:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c4b:	89 42 08             	mov    %eax,0x8(%rdx)
ffff800000107c4e:	44 89 f8             	mov    %r15d,%eax
ffff800000107c51:	41 f6 02 10          	testb  $0x10,(%r10)
ffff800000107c55:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c59:	89 42 0c             	mov    %eax,0xc(%rdx)
ffff800000107c5c:	44 89 f8             	mov    %r15d,%eax
ffff800000107c5f:	41 f6 02 08          	testb  $0x8,(%r10)
ffff800000107c63:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c67:	89 42 10             	mov    %eax,0x10(%rdx)
ffff800000107c6a:	44 89 f8             	mov    %r15d,%eax
ffff800000107c6d:	41 f6 02 04          	testb  $0x4,(%r10)
ffff800000107c71:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c75:	89 42 14             	mov    %eax,0x14(%rdx)
ffff800000107c78:	44 89 f8             	mov    %r15d,%eax
ffff800000107c7b:	41 f6 02 02          	testb  $0x2,(%r10)
ffff800000107c7f:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c83:	89 42 18             	mov    %eax,0x18(%rdx)
ffff800000107c86:	41 f6 02 01          	testb  $0x1,(%r10)
ffff800000107c8a:	75 80                	jne    ffff800000107c0c <color_printk+0xe3c>
ffff800000107c8c:	44 89 6a 1c          	mov    %r13d,0x1c(%rdx)
ffff800000107c90:	e9 7b ff ff ff       	jmp    ffff800000107c10 <color_printk+0xe40>
ffff800000107c95:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
ffff800000107c9c:	00 00 
ffff800000107c9e:	83 c1 01             	add    $0x1,%ecx
ffff800000107ca1:	45 31 d2             	xor    %r10d,%r10d
ffff800000107ca4:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000107ca9:	e9 e2 fe ff ff       	jmp    ffff800000107b90 <color_printk+0xdc0>
ffff800000107cae:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
ffff800000107cb3:	41 0f af c9          	imul   %r9d,%ecx
ffff800000107cb7:	4c 63 d6             	movslq %esi,%r10
ffff800000107cba:	83 ac 24 d0 00 00 00 	subl   $0x1,0xd0(%rsp)
ffff800000107cc1:	01 
ffff800000107cc2:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
ffff800000107cc8:	0f af d7             	imul   %edi,%edx
ffff800000107ccb:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
ffff800000107cd0:	4c 8b ac 24 30 01 00 	mov    0x130(%rsp),%r13
ffff800000107cd7:	00 
ffff800000107cd8:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
ffff800000107cdf:	00 
ffff800000107ce0:	0f af ce             	imul   %esi,%ecx
ffff800000107ce3:	48 63 d2             	movslq %edx,%rdx
ffff800000107ce6:	48 63 c9             	movslq %ecx,%rcx
ffff800000107ce9:	48 01 d1             	add    %rdx,%rcx
ffff800000107cec:	4c 89 d2             	mov    %r10,%rdx
ffff800000107cef:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000107cf3:	48 c1 e1 02          	shl    $0x2,%rcx
ffff800000107cf7:	4c 29 d2             	sub    %r10,%rdx
ffff800000107cfa:	48 c1 e2 02          	shl    $0x2,%rdx
ffff800000107cfe:	85 f6                	test   %esi,%esi
ffff800000107d00:	48 8d 7a 1f          	lea    0x1f(%rdx),%rdi
ffff800000107d04:	49 0f 48 f9          	cmovs  %r9,%rdi
ffff800000107d08:	48 01 cf             	add    %rcx,%rdi
ffff800000107d0b:	48 01 df             	add    %rbx,%rdi
ffff800000107d0e:	4c 39 ef             	cmp    %r13,%rdi
ffff800000107d11:	40 0f 92 c7          	setb   %dil
ffff800000107d15:	85 f6                	test   %esi,%esi
ffff800000107d17:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d1c:	48 0f 49 d6          	cmovns %rsi,%rdx
ffff800000107d20:	48 01 ca             	add    %rcx,%rdx
ffff800000107d23:	48 01 da             	add    %rbx,%rdx
ffff800000107d26:	48 39 94 24 38 01 00 	cmp    %rdx,0x138(%rsp)
ffff800000107d2d:	00 
ffff800000107d2e:	0f 92 c2             	setb   %dl
ffff800000107d31:	40 08 fa             	or     %dil,%dl
ffff800000107d34:	0f 84 50 0b 00 00    	je     ffff80000010888a <color_printk+0x1aba>
ffff800000107d3a:	48 8d 50 1f          	lea    0x1f(%rax),%rdx
ffff800000107d3e:	48 83 fa 3e          	cmp    $0x3e,%rdx
ffff800000107d42:	0f 86 42 0b 00 00    	jbe    ffff80000010888a <color_printk+0x1aba>
ffff800000107d48:	48 01 cb             	add    %rcx,%rbx
ffff800000107d4b:	49 c1 e2 05          	shl    $0x5,%r10
ffff800000107d4f:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff800000107d54:	49 8d bd 00 fe ff ff 	lea    -0x200(%r13),%rdi
ffff800000107d5b:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
ffff800000107d5f:	4d 89 d4             	mov    %r10,%r12
ffff800000107d62:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
ffff800000107d67:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000107d6d:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
ffff800000107d71:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff800000107d77:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000107d7c:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff800000107d81:	4d 8d 0c 02          	lea    (%r10,%rax,1),%r9
ffff800000107d85:	49 8d 3c 01          	lea    (%r9,%rax,1),%rdi
ffff800000107d89:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff800000107d8f:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
ffff800000107d93:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
ffff800000107d97:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000107d9b:	4c 89 e8             	mov    %r13,%rax
ffff800000107d9e:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000107da5:	ff ff ff 
ffff800000107da8:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff800000107dad:	48 2d f0 01 00 00    	sub    $0x1f0,%rax
ffff800000107db3:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107dba:	ff ff ff 
ffff800000107dbd:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff800000107dc2:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000107dc9:	ff ff ff 
ffff800000107dcc:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff800000107dd1:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107dd8:	ff ff ff 
ffff800000107ddb:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff800000107de0:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107de7:	ff ff ff 
ffff800000107dea:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000107def:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
ffff800000107df6:	00 
ffff800000107df7:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107dfc:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000107e03:	00 
ffff800000107e04:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
ffff800000107e0b:	00 
ffff800000107e0c:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e11:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff800000107e18:	00 
ffff800000107e19:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000107e20:	ff ff ff 
ffff800000107e23:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e28:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000107e2f:	00 
ffff800000107e30:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107e37:	ff ff ff 
ffff800000107e3a:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e3f:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff800000107e46:	00 
ffff800000107e47:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000107e4e:	ff ff ff 
ffff800000107e51:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e56:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff800000107e5d:	00 
ffff800000107e5e:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107e65:	ff ff ff 
ffff800000107e68:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e6d:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff800000107e74:	00 
ffff800000107e75:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107e7c:	ff ff ff 
ffff800000107e7f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e84:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
ffff800000107e8b:	00 
ffff800000107e8c:	45 89 c5             	mov    %r8d,%r13d
ffff800000107e8f:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
ffff800000107e94:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000107e99:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000107e9e:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107ea3:	f3 41 0f 7e 90 00 02 	movq   0x200(%r8),%xmm2
ffff800000107eaa:	00 00 
ffff800000107eac:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107eb1:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000107eb6:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000107ebb:	f3 44 0f 7e a4 24 e8 	movq   0xe8(%rsp),%xmm12
ffff800000107ec2:	00 00 00 
ffff800000107ec5:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
ffff800000107ec9:	49 83 c0 08          	add    $0x8,%r8
ffff800000107ecd:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000107ed2:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000107ed6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000107eda:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000107ede:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107ee2:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000107ee7:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff800000107eeb:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff800000107ef0:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107ef5:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000107ef9:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000107efd:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000107f02:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000107f07:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107f0c:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000107f11:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000107f16:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000107f1a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000107f1f:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000107f24:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000107f28:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000107f2d:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107f32:	66 44 0f 7e 33       	movd   %xmm14,(%rbx)
ffff800000107f37:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000107f3b:	66 0f d6 4c 24 18    	movq   %xmm1,0x18(%rsp)
ffff800000107f41:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000107f45:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000107f49:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000107f4e:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107f53:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff800000107f57:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000107f5b:	66 0f db f0          	pand   %xmm0,%xmm6
ffff800000107f5f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107f64:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000107f69:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000107f6d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000107f71:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
ffff800000107f78:	00 00 
ffff800000107f7a:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
ffff800000107f80:	66 0f eb fc          	por    %xmm4,%xmm7
ffff800000107f84:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff800000107f89:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000107f8d:	66 0f d6 7c 24 20    	movq   %xmm7,0x20(%rsp)
ffff800000107f93:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff800000107f98:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff800000107f9c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107fa1:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107fa6:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000107faa:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107fae:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000107fb2:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107fb6:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff800000107fba:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000107fbe:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000107fc2:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107fc7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107fcc:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000107fd0:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000107fd4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107fd9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107fde:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000107fe2:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107fe7:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000107feb:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000107ff0:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000107ff4:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000107ff8:	66 0f d6 5c 24 30    	movq   %xmm3,0x30(%rsp)
ffff800000107ffe:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000108002:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000108007:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
ffff80000010800b:	66 0f d6 6c 24 38    	movq   %xmm5,0x38(%rsp)
ffff800000108011:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000108016:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff80000010801a:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff80000010801e:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108022:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108026:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010802b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010802f:	66 0f db e6          	pand   %xmm6,%xmm4
ffff800000108033:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108038:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010803d:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108041:	66 0f eb f4          	por    %xmm4,%xmm6
ffff800000108045:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010804a:	66 0f db e0          	pand   %xmm0,%xmm4
ffff80000010804e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108053:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
ffff800000108059:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff80000010805e:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff800000108062:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108066:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
ffff80000010806d:	00 00 
ffff80000010806f:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000108073:	66 0f db c2          	pand   %xmm2,%xmm0
ffff800000108077:	66 0f d6 64 24 48    	movq   %xmm4,0x48(%rsp)
ffff80000010807d:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff800000108082:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108087:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010808c:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000108090:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000108094:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108098:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010809c:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff8000001080a0:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001080a4:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001080a9:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001080ad:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff8000001080b1:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001080b6:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001080bb:	66 0f db eb          	pand   %xmm3,%xmm5
ffff8000001080bf:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001080c4:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff8000001080c9:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001080ce:	66 0f eb dd          	por    %xmm5,%xmm3
ffff8000001080d2:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff8000001080d7:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
ffff8000001080dc:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff8000001080e1:	66 0f d6 5c 24 50    	movq   %xmm3,0x50(%rsp)
ffff8000001080e7:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
ffff8000001080ec:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
ffff8000001080f2:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff8000001080f7:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
ffff8000001080fc:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
ffff800000108101:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108105:	66 41 0f db e5       	pand   %xmm13,%xmm4
ffff80000010810a:	66 41 0f 6f cd       	movdqa %xmm13,%xmm1
ffff80000010810f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108114:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000108119:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010811e:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff800000108123:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108128:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff80000010812d:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff800000108132:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff800000108137:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff80000010813c:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108142:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108147:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff80000010814c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108151:	66 44 0f d6 44 24 60 	movq   %xmm8,0x60(%rsp)
ffff800000108158:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
ffff80000010815d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108162:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
ffff800000108167:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
ffff80000010816c:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000108171:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
ffff800000108176:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010817a:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
ffff80000010817f:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108184:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000108189:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010818e:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000108193:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff800000108197:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff80000010819c:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001081a0:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001081a5:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff8000001081aa:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001081af:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff8000001081b4:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff8000001081b9:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001081be:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001081c3:	66 44 0f 6f eb       	movdqa %xmm3,%xmm13
ffff8000001081c8:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff8000001081cd:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
ffff8000001081d2:	66 44 0f eb e3       	por    %xmm3,%xmm12
ffff8000001081d7:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff8000001081db:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff8000001081df:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001081e3:	66 44 0f eb ed       	por    %xmm5,%xmm13
ffff8000001081e8:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff8000001081ec:	66 44 0f d6 64 24 78 	movq   %xmm12,0x78(%rsp)
ffff8000001081f3:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001081f8:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff8000001081fc:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000108200:	66 44 0f d6 6c 24 70 	movq   %xmm13,0x70(%rsp)
ffff800000108207:	66 0f db f0          	pand   %xmm0,%xmm6
ffff80000010820b:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108210:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000108215:	66 0f 6f e8          	movdqa %xmm0,%xmm5
ffff800000108219:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff80000010821d:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
ffff800000108222:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000108226:	66 0f eb fc          	por    %xmm4,%xmm7
ffff80000010822a:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff80000010822f:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
ffff800000108236:	00 00 
ffff800000108238:	66 0f d6 ac 24 88 00 	movq   %xmm5,0x88(%rsp)
ffff80000010823f:	00 00 
ffff800000108241:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000108246:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010824b:	66 0f d6 bc 24 80 00 	movq   %xmm7,0x80(%rsp)
ffff800000108252:	00 00 
ffff800000108254:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108258:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff80000010825c:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108261:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108266:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010826b:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff80000010826f:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108273:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000108277:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff80000010827b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010827f:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff800000108283:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108287:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010828c:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
ffff800000108290:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000108294:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000108299:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff80000010829d:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001082a2:	66 0f db ee          	pand   %xmm6,%xmm5
ffff8000001082a6:	66 0f db e1          	pand   %xmm1,%xmm4
ffff8000001082aa:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001082af:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001082b4:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff8000001082b8:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff8000001082bc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001082c0:	66 0f eb e3          	por    %xmm3,%xmm4
ffff8000001082c4:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff8000001082c9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001082cd:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff8000001082d1:	66 0f eb f5          	por    %xmm5,%xmm6
ffff8000001082d5:	66 0f d6 a4 24 98 00 	movq   %xmm4,0x98(%rsp)
ffff8000001082dc:	00 00 
ffff8000001082de:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001082e3:	66 0f d6 b4 24 90 00 	movq   %xmm6,0x90(%rsp)
ffff8000001082ea:	00 00 
ffff8000001082ec:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001082f1:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001082f5:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff8000001082f9:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff8000001082fe:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108303:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000108307:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010830c:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000108311:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108316:	66 0f eb cc          	por    %xmm4,%xmm1
ffff80000010831a:	66 41 0f eb c0       	por    %xmm8,%xmm0
ffff80000010831f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000108324:	f3 44 0f 7e 84 24 f8 	movq   0xf8(%rsp),%xmm8
ffff80000010832b:	00 00 00 
ffff80000010832e:	66 0f d6 8c 24 a0 00 	movq   %xmm1,0xa0(%rsp)
ffff800000108335:	00 00 
ffff800000108337:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff80000010833e:	00 00 
ffff800000108340:	66 44 0f db c2       	pand   %xmm2,%xmm8
ffff800000108345:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff80000010834a:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff80000010834f:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000108354:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000108359:	66 44 0f 64 c1       	pcmpgtb %xmm1,%xmm8
ffff80000010835e:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000108362:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff800000108367:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff80000010836b:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff80000010836f:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000108373:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108378:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
ffff80000010837d:	66 44 0f 65 e1       	pcmpgtw %xmm1,%xmm12
ffff800000108382:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000108387:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff80000010838b:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000108390:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff800000108395:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff80000010839a:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff80000010839f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001083a4:	66 44 0f db ed       	pand   %xmm5,%xmm13
ffff8000001083a9:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff8000001083ae:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff8000001083b3:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff8000001083b8:	66 41 0f eb ed       	por    %xmm13,%xmm5
ffff8000001083bd:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff8000001083c2:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff8000001083c6:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff8000001083cb:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001083d0:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff8000001083d5:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff8000001083da:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff8000001083df:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001083e4:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff8000001083e9:	66 44 0f d6 84 24 b0 	movq   %xmm8,0xb0(%rsp)
ffff8000001083f0:	00 00 00 
ffff8000001083f3:	66 41 0f eb cc       	por    %xmm12,%xmm1
ffff8000001083f8:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff8000001083fd:	f3 44 0f 7e a4 24 00 	movq   0x100(%rsp),%xmm12
ffff800000108404:	01 00 00 
ffff800000108407:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff80000010840c:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000108411:	66 44 0f d6 ac 24 b8 	movq   %xmm13,0xb8(%rsp)
ffff800000108418:	00 00 00 
ffff80000010841b:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000108420:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108425:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010842a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010842f:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000108433:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108437:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff80000010843b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010843f:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000108444:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000108448:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff80000010844d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108452:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000108457:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
ffff80000010845c:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000108460:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000108465:	66 41 0f db f4       	pand   %xmm12,%xmm6
ffff80000010846a:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff80000010846f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000108474:	66 44 0f eb e6       	por    %xmm6,%xmm12
ffff800000108479:	66 0f db dc          	pand   %xmm4,%xmm3
ffff80000010847d:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff800000108482:	66 44 0f d6 a4 24 c0 	movq   %xmm12,0xc0(%rsp)
ffff800000108489:	00 00 00 
ffff80000010848c:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000108490:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000108495:	f3 44 0f 7e a4 24 08 	movq   0x108(%rsp),%xmm12
ffff80000010849c:	01 00 00 
ffff80000010849f:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff8000001084a3:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001084a8:	66 41 0f db d4       	pand   %xmm12,%xmm2
ffff8000001084ad:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff8000001084b2:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001084b7:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff8000001084bc:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001084c0:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff8000001084c5:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff8000001084ca:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff8000001084cf:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001084d4:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001084d9:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff8000001084de:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff8000001084e3:	66 0f db d8          	pand   %xmm0,%xmm3
ffff8000001084e7:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001084ec:	66 0f eb c3          	por    %xmm3,%xmm0
ffff8000001084f0:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
ffff8000001084f4:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff8000001084f8:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
ffff8000001084fc:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff800000108500:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000108505:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff800000108509:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff80000010850d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000108512:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000108517:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff80000010851b:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
ffff80000010851f:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000108524:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108529:	66 44 0f db e7       	pand   %xmm7,%xmm12
ffff80000010852e:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000108533:	66 0f db f3          	pand   %xmm3,%xmm6
ffff800000108537:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010853c:	66 41 0f eb fc       	por    %xmm12,%xmm7
ffff800000108541:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000108545:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff80000010854a:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff80000010854e:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
ffff800000108553:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000108558:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
ffff80000010855d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108563:	66 45 0f 7e 23       	movd   %xmm12,(%r11)
ffff800000108568:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
ffff80000010856f:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff800000108574:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000108579:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff80000010857e:	66 45 0f 7e 32       	movd   %xmm14,(%r10)
ffff800000108583:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108589:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff80000010858e:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
ffff800000108595:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff80000010859a:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
ffff80000010859f:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff8000001085a4:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
ffff8000001085a9:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001085af:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff8000001085b4:	f3 44 0f 7e 74 24 28 	movq   0x28(%rsp),%xmm14
ffff8000001085bb:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff8000001085c0:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff8000001085c5:	66 44 0f 7e 26       	movd   %xmm12,(%rsi)
ffff8000001085ca:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff8000001085cf:	66 44 0f 7e 31       	movd   %xmm14,(%rcx)
ffff8000001085d4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff8000001085da:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
ffff8000001085e1:	66 44 0f 7e 2a       	movd   %xmm13,(%rdx)
ffff8000001085e6:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001085ec:	66 44 0f 7e 73 04    	movd   %xmm14,0x4(%rbx)
ffff8000001085f2:	f3 44 0f 7e 74 24 38 	movq   0x38(%rsp),%xmm14
ffff8000001085f9:	66 45 0f 7e 63 04    	movd   %xmm12,0x4(%r11)
ffff8000001085ff:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108605:	66 45 0f 7e 72 04    	movd   %xmm14,0x4(%r10)
ffff80000010860b:	f3 44 0f 7e 74 24 40 	movq   0x40(%rsp),%xmm14
ffff800000108612:	66 45 0f 7e 69 04    	movd   %xmm13,0x4(%r9)
ffff800000108618:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff80000010861e:	66 44 0f 7e 77 04    	movd   %xmm14,0x4(%rdi)
ffff800000108624:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
ffff80000010862b:	66 44 0f 7e 66 04    	movd   %xmm12,0x4(%rsi)
ffff800000108631:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108637:	66 44 0f 7e 71 04    	movd   %xmm14,0x4(%rcx)
ffff80000010863d:	f3 44 0f 7e 74 24 50 	movq   0x50(%rsp),%xmm14
ffff800000108644:	66 44 0f 7e 6a 04    	movd   %xmm13,0x4(%rdx)
ffff80000010864a:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108650:	66 44 0f 7e 73 08    	movd   %xmm14,0x8(%rbx)
ffff800000108656:	f3 44 0f 7e 74 24 58 	movq   0x58(%rsp),%xmm14
ffff80000010865d:	66 45 0f 7e 63 08    	movd   %xmm12,0x8(%r11)
ffff800000108663:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108669:	66 45 0f 7e 72 08    	movd   %xmm14,0x8(%r10)
ffff80000010866f:	f3 44 0f 7e 74 24 60 	movq   0x60(%rsp),%xmm14
ffff800000108676:	66 45 0f 7e 69 08    	movd   %xmm13,0x8(%r9)
ffff80000010867c:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108682:	66 44 0f 7e 77 08    	movd   %xmm14,0x8(%rdi)
ffff800000108688:	f3 44 0f 7e 74 24 68 	movq   0x68(%rsp),%xmm14
ffff80000010868f:	66 44 0f 7e 66 08    	movd   %xmm12,0x8(%rsi)
ffff800000108695:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff80000010869b:	66 44 0f 7e 71 08    	movd   %xmm14,0x8(%rcx)
ffff8000001086a1:	66 44 0f 7e 6a 08    	movd   %xmm13,0x8(%rdx)
ffff8000001086a7:	f3 44 0f 7e 74 24 70 	movq   0x70(%rsp),%xmm14
ffff8000001086ae:	66 44 0f 7e 73 0c    	movd   %xmm14,0xc(%rbx)
ffff8000001086b4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff8000001086ba:	f3 44 0f 7e 74 24 78 	movq   0x78(%rsp),%xmm14
ffff8000001086c1:	66 45 0f 7e 6b 0c    	movd   %xmm13,0xc(%r11)
ffff8000001086c7:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001086cd:	66 45 0f 7e 72 0c    	movd   %xmm14,0xc(%r10)
ffff8000001086d3:	f3 44 0f 7e b4 24 80 	movq   0x80(%rsp),%xmm14
ffff8000001086da:	00 00 00 
ffff8000001086dd:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
ffff8000001086e3:	66 44 0f 7e 77 0c    	movd   %xmm14,0xc(%rdi)
ffff8000001086e9:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001086ef:	f3 44 0f 7e b4 24 88 	movq   0x88(%rsp),%xmm14
ffff8000001086f6:	00 00 00 
ffff8000001086f9:	66 44 0f 7e 66 0c    	movd   %xmm12,0xc(%rsi)
ffff8000001086ff:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108705:	66 44 0f 7e 71 0c    	movd   %xmm14,0xc(%rcx)
ffff80000010870b:	f3 44 0f 7e b4 24 90 	movq   0x90(%rsp),%xmm14
ffff800000108712:	00 00 00 
ffff800000108715:	66 44 0f 7e 6a 0c    	movd   %xmm13,0xc(%rdx)
ffff80000010871b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108721:	66 44 0f 7e 73 10    	movd   %xmm14,0x10(%rbx)
ffff800000108727:	f3 44 0f 7e b4 24 98 	movq   0x98(%rsp),%xmm14
ffff80000010872e:	00 00 00 
ffff800000108731:	66 45 0f 7e 63 10    	movd   %xmm12,0x10(%r11)
ffff800000108737:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff80000010873d:	66 45 0f 7e 72 10    	movd   %xmm14,0x10(%r10)
ffff800000108743:	f3 44 0f 7e b4 24 a0 	movq   0xa0(%rsp),%xmm14
ffff80000010874a:	00 00 00 
ffff80000010874d:	66 45 0f 7e 69 10    	movd   %xmm13,0x10(%r9)
ffff800000108753:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108759:	66 44 0f 7e 77 10    	movd   %xmm14,0x10(%rdi)
ffff80000010875f:	f3 44 0f 7e b4 24 a8 	movq   0xa8(%rsp),%xmm14
ffff800000108766:	00 00 00 
ffff800000108769:	66 44 0f 7e 66 10    	movd   %xmm12,0x10(%rsi)
ffff80000010876f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108775:	66 44 0f 7e 71 10    	movd   %xmm14,0x10(%rcx)
ffff80000010877b:	f3 44 0f 7e b4 24 b0 	movq   0xb0(%rsp),%xmm14
ffff800000108782:	00 00 00 
ffff800000108785:	66 44 0f 7e 6a 10    	movd   %xmm13,0x10(%rdx)
ffff80000010878b:	f3 44 0f 7e ac 24 b8 	movq   0xb8(%rsp),%xmm13
ffff800000108792:	00 00 00 
ffff800000108795:	66 44 0f 7e 73 14    	movd   %xmm14,0x14(%rbx)
ffff80000010879b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001087a1:	66 45 0f 7e 63 14    	movd   %xmm12,0x14(%r11)
ffff8000001087a7:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff8000001087ad:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001087b2:	66 41 0f 7e 69 14    	movd   %xmm5,0x14(%r9)
ffff8000001087b8:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff8000001087be:	66 44 0f 7e 6f 14    	movd   %xmm13,0x14(%rdi)
ffff8000001087c4:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
ffff8000001087c9:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff8000001087ce:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
ffff8000001087d3:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
ffff8000001087d8:	f3 0f 7e ac 24 c0 00 	movq   0xc0(%rsp),%xmm5
ffff8000001087df:	00 00 
ffff8000001087e1:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
ffff8000001087e6:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001087eb:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
ffff8000001087f1:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001087f6:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
ffff8000001087fc:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000108802:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000108808:	66 44 0f 7e 47 18    	movd   %xmm8,0x18(%rdi)
ffff80000010880e:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
ffff800000108813:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000108818:	66 0f 7e 41 18       	movd   %xmm0,0x18(%rcx)
ffff80000010881d:	66 0f 7e 6a 18       	movd   %xmm5,0x18(%rdx)
ffff800000108822:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff800000108827:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff80000010882c:	4c 01 e3             	add    %r12,%rbx
ffff80000010882f:	66 41 0f 7e 7b 1c    	movd   %xmm7,0x1c(%r11)
ffff800000108835:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff80000010883a:	4d 01 e3             	add    %r12,%r11
ffff80000010883d:	66 41 0f 7e 5a 1c    	movd   %xmm3,0x1c(%r10)
ffff800000108843:	4d 01 e2             	add    %r12,%r10
ffff800000108846:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff80000010884c:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000108851:	4d 01 e1             	add    %r12,%r9
ffff800000108854:	66 0f 7e 77 1c       	movd   %xmm6,0x1c(%rdi)
ffff800000108859:	4c 01 e7             	add    %r12,%rdi
ffff80000010885c:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
ffff800000108861:	4c 01 e6             	add    %r12,%rsi
ffff800000108864:	66 0f 7e 51 1c       	movd   %xmm2,0x1c(%rcx)
ffff800000108869:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff80000010886e:	4c 01 e1             	add    %r12,%rcx
ffff800000108871:	66 0f 7e 52 1c       	movd   %xmm2,0x1c(%rdx)
ffff800000108876:	4c 01 e2             	add    %r12,%rdx
ffff800000108879:	49 39 c0             	cmp    %rax,%r8
ffff80000010887c:	0f 85 12 f6 ff ff    	jne    ffff800000107e94 <color_printk+0x10c4>
ffff800000108882:	45 89 e8             	mov    %r13d,%r8d
ffff800000108885:	e9 e5 f2 ff ff       	jmp    ffff800000107b6f <color_printk+0xd9f>
ffff80000010888a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
ffff80000010888f:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff800000108894:	48 01 f9             	add    %rdi,%rcx
ffff800000108897:	48 8b bc 24 28 01 00 	mov    0x128(%rsp),%rdi
ffff80000010889e:	00 
ffff80000010889f:	48 8d 14 2f          	lea    (%rdi,%rbp,1),%rdx
ffff8000001088a3:	eb 1b                	jmp    ffff8000001088c0 <color_printk+0x1af0>
ffff8000001088a5:	0f 1f 00             	nopl   (%rax)
ffff8000001088a8:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
ffff8000001088ac:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
ffff8000001088b3:	00 
ffff8000001088b4:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001088b8:	48 01 c1             	add    %rax,%rcx
ffff8000001088bb:	48 39 da             	cmp    %rbx,%rdx
ffff8000001088be:	74 79                	je     ffff800000108939 <color_printk+0x1b69>
ffff8000001088c0:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff8000001088c3:	44 89 fe             	mov    %r15d,%esi
ffff8000001088c6:	41 0f 49 f5          	cmovns %r13d,%esi
ffff8000001088ca:	89 31                	mov    %esi,(%rcx)
ffff8000001088cc:	44 89 fe             	mov    %r15d,%esi
ffff8000001088cf:	f6 02 40             	testb  $0x40,(%rdx)
ffff8000001088d2:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001088d6:	89 71 04             	mov    %esi,0x4(%rcx)
ffff8000001088d9:	44 89 fe             	mov    %r15d,%esi
ffff8000001088dc:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001088df:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001088e3:	89 71 08             	mov    %esi,0x8(%rcx)
ffff8000001088e6:	44 89 fe             	mov    %r15d,%esi
ffff8000001088e9:	f6 02 10             	testb  $0x10,(%rdx)
ffff8000001088ec:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001088f0:	89 71 0c             	mov    %esi,0xc(%rcx)
ffff8000001088f3:	44 89 fe             	mov    %r15d,%esi
ffff8000001088f6:	f6 02 08             	testb  $0x8,(%rdx)
ffff8000001088f9:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001088fd:	89 71 10             	mov    %esi,0x10(%rcx)
ffff800000108900:	44 89 fe             	mov    %r15d,%esi
ffff800000108903:	f6 02 04             	testb  $0x4,(%rdx)
ffff800000108906:	41 0f 44 f5          	cmove  %r13d,%esi
ffff80000010890a:	89 71 14             	mov    %esi,0x14(%rcx)
ffff80000010890d:	44 89 fe             	mov    %r15d,%esi
ffff800000108910:	f6 02 02             	testb  $0x2,(%rdx)
ffff800000108913:	41 0f 44 f5          	cmove  %r13d,%esi
ffff800000108917:	89 71 18             	mov    %esi,0x18(%rcx)
ffff80000010891a:	f6 02 01             	testb  $0x1,(%rdx)
ffff80000010891d:	75 89                	jne    ffff8000001088a8 <color_printk+0x1ad8>
ffff80000010891f:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
ffff800000108923:	eb 87                	jmp    ffff8000001088ac <color_printk+0x1adc>
ffff800000108925:	8d 42 08             	lea    0x8(%rdx),%eax
ffff800000108928:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010892b:	29 d0                	sub    %edx,%eax
ffff80000010892d:	89 84 24 d0 00 00 00 	mov    %eax,0xd0(%rsp)
ffff800000108934:	e9 7a f3 ff ff       	jmp    ffff800000107cb3 <color_printk+0xee3>
ffff800000108939:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff80000010893e:	e9 2c f2 ff ff       	jmp    ffff800000107b6f <color_printk+0xd9f>
ffff800000108943:	83 ea 01             	sub    $0x1,%edx
ffff800000108946:	41 89 d3             	mov    %edx,%r11d
ffff800000108949:	0f 88 d7 0b 00 00    	js     ffff800000109526 <color_printk+0x2756>
ffff80000010894f:	41 89 54 2e 08       	mov    %edx,0x8(%r14,%rbp,1)
ffff800000108954:	41 0f af c9          	imul   %r9d,%ecx
ffff800000108958:	44 89 da             	mov    %r11d,%edx
ffff80000010895b:	4c 63 d6             	movslq %esi,%r10
ffff80000010895e:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
ffff800000108964:	0f af d7             	imul   %edi,%edx
ffff800000108967:	4c 89 d7             	mov    %r10,%rdi
ffff80000010896a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
ffff80000010896f:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
ffff800000108976:	00 
ffff800000108977:	48 c1 e7 04          	shl    $0x4,%rdi
ffff80000010897b:	0f af ce             	imul   %esi,%ecx
ffff80000010897e:	4c 29 d7             	sub    %r10,%rdi
ffff800000108981:	48 63 d2             	movslq %edx,%rdx
ffff800000108984:	48 c1 e7 02          	shl    $0x2,%rdi
ffff800000108988:	48 63 c9             	movslq %ecx,%rcx
ffff80000010898b:	48 01 d1             	add    %rdx,%rcx
ffff80000010898e:	48 8d 57 1f          	lea    0x1f(%rdi),%rdx
ffff800000108992:	48 c1 e1 02          	shl    $0x2,%rcx
ffff800000108996:	85 f6                	test   %esi,%esi
ffff800000108998:	49 0f 48 d1          	cmovs  %r9,%rdx
ffff80000010899c:	49 b9 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%r9
ffff8000001089a3:	ff ff ff 
ffff8000001089a6:	49 8d 1c 29          	lea    (%r9,%rbp,1),%rbx
ffff8000001089aa:	48 01 ca             	add    %rcx,%rdx
ffff8000001089ad:	49 89 dd             	mov    %rbx,%r13
ffff8000001089b0:	4d 8d 1c 14          	lea    (%r12,%rdx,1),%r11
ffff8000001089b4:	49 39 db             	cmp    %rbx,%r11
ffff8000001089b7:	41 0f 92 c3          	setb   %r11b
ffff8000001089bb:	85 f6                	test   %esi,%esi
ffff8000001089bd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001089c2:	48 0f 48 f7          	cmovs  %rdi,%rsi
ffff8000001089c6:	48 8d 7b 0f          	lea    0xf(%rbx),%rdi
ffff8000001089ca:	48 01 ce             	add    %rcx,%rsi
ffff8000001089cd:	4c 01 e6             	add    %r12,%rsi
ffff8000001089d0:	48 39 f7             	cmp    %rsi,%rdi
ffff8000001089d3:	40 0f 92 c6          	setb   %sil
ffff8000001089d7:	44 08 de             	or     %r11b,%sil
ffff8000001089da:	0f 84 83 0b 00 00    	je     ffff800000109563 <color_printk+0x2793>
ffff8000001089e0:	48 8d 70 1f          	lea    0x1f(%rax),%rsi
ffff8000001089e4:	48 83 fe 3e          	cmp    $0x3e,%rsi
ffff8000001089e8:	0f 86 75 0b 00 00    	jbe    ffff800000109563 <color_printk+0x2793>
ffff8000001089ee:	49 01 cc             	add    %rcx,%r12
ffff8000001089f1:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff8000001089f6:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
ffff8000001089fb:	4c 89 d2             	mov    %r10,%rdx
ffff8000001089fe:	49 81 ed f0 01 00 00 	sub    $0x1f0,%r13
ffff800000108a05:	4c 8d 8b 00 fe ff ff 	lea    -0x200(%rbx),%r9
ffff800000108a0c:	49 8d 1c 04          	lea    (%r12,%rax,1),%rbx
ffff800000108a10:	48 c1 e2 05          	shl    $0x5,%rdx
ffff800000108a14:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
ffff800000108a18:	66 44 0f 70 e2 e0    	pshufd $0xe0,%xmm2,%xmm12
ffff800000108a1e:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff800000108a24:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000108a2b:	00 
ffff800000108a2c:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000108a33:	ff ff ff 
ffff800000108a36:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
ffff800000108a3a:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000108a3f:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff800000108a44:	49 8d 3c 02          	lea    (%r10,%rax,1),%rdi
ffff800000108a48:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000108a4e:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000108a55:	ff ff ff 
ffff800000108a58:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff800000108a5d:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
ffff800000108a61:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000108a68:	ff ff ff 
ffff800000108a6b:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff800000108a70:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
ffff800000108a74:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000108a7b:	ff ff ff 
ffff800000108a7e:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff800000108a83:	48 01 c8             	add    %rcx,%rax
ffff800000108a86:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000108a8d:	ff ff ff 
ffff800000108a90:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000108a95:	49 bd f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%r13
ffff800000108a9c:	ff ff ff 
ffff800000108a9f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108aa4:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff800000108aab:	00 
ffff800000108aac:	49 bd d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r13
ffff800000108ab3:	ff ff ff 
ffff800000108ab6:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108abb:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000108ac2:	00 
ffff800000108ac3:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000108aca:	ff ff ff 
ffff800000108acd:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108ad2:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff800000108ad9:	00 
ffff800000108ada:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000108ae1:	ff ff ff 
ffff800000108ae4:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108ae9:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff800000108af0:	00 
ffff800000108af1:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000108af8:	ff ff ff 
ffff800000108afb:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b00:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff800000108b07:	00 
ffff800000108b08:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000108b0f:	ff ff ff 
ffff800000108b12:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b17:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
ffff800000108b1e:	00 
ffff800000108b1f:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000108b26:	ff ff ff 
ffff800000108b29:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b2e:	4c 89 ac 24 48 01 00 	mov    %r13,0x148(%rsp)
ffff800000108b35:	00 
ffff800000108b36:	45 89 c5             	mov    %r8d,%r13d
ffff800000108b39:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff800000108b3e:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
ffff800000108b43:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108b48:	f3 41 0f 7e 91 00 02 	movq   0x200(%r9),%xmm2
ffff800000108b4f:	00 00 
ffff800000108b51:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108b56:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000108b5b:	49 83 c1 08          	add    $0x8,%r9
ffff800000108b5f:	66 0f 64 da          	pcmpgtb %xmm2,%xmm3
ffff800000108b63:	66 0f 64 c3          	pcmpgtb %xmm3,%xmm0
ffff800000108b67:	66 0f 6f eb          	movdqa %xmm3,%xmm5
ffff800000108b6b:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff800000108b6f:	66 0f 60 d8          	punpcklbw %xmm0,%xmm3
ffff800000108b73:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108b78:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
ffff800000108b7c:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
ffff800000108b81:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108b86:	66 44 0f 6f f3       	movdqa %xmm3,%xmm14
ffff800000108b8b:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
ffff800000108b8f:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
ffff800000108b94:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108b99:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000108b9e:	66 41 0f db cf       	pand   %xmm15,%xmm1
ffff800000108ba3:	66 45 0f df fb       	pandn  %xmm11,%xmm15
ffff800000108ba8:	66 0f db c5          	pand   %xmm5,%xmm0
ffff800000108bac:	66 41 0f df eb       	pandn  %xmm11,%xmm5
ffff800000108bb1:	66 44 0f eb f9       	por    %xmm1,%xmm15
ffff800000108bb6:	66 0f eb e8          	por    %xmm0,%xmm5
ffff800000108bba:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108bbf:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108bc4:	66 0f 65 c3          	pcmpgtw %xmm3,%xmm0
ffff800000108bc8:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108bcc:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
ffff800000108bd1:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108bd6:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108bdb:	66 41 0f db ce       	pand   %xmm14,%xmm1
ffff800000108be0:	66 45 0f df f3       	pandn  %xmm11,%xmm14
ffff800000108be5:	66 0f db c3          	pand   %xmm3,%xmm0
ffff800000108be9:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108bee:	66 44 0f eb f1       	por    %xmm1,%xmm14
ffff800000108bf3:	66 0f eb d8          	por    %xmm0,%xmm3
ffff800000108bf7:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000108bfc:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
ffff800000108c03:	00 00 
ffff800000108c05:	66 0f d6 5c 24 18    	movq   %xmm3,0x18(%rsp)
ffff800000108c0b:	66 0f db c2          	pand   %xmm2,%xmm0
ffff800000108c0f:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000108c14:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000108c19:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000108c1d:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108c21:	66 0f 60 e1          	punpcklbw %xmm1,%xmm4
ffff800000108c25:	66 0f 60 c1          	punpcklbw %xmm1,%xmm0
ffff800000108c29:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000108c2e:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
ffff800000108c32:	66 44 0f 6f ec       	movdqa %xmm4,%xmm13
ffff800000108c37:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108c3c:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000108c41:	66 0f 61 e1          	punpcklwd %xmm1,%xmm4
ffff800000108c45:	66 44 0f 61 e9       	punpcklwd %xmm1,%xmm13
ffff800000108c4a:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108c4f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000108c54:	66 41 0f db f5       	pand   %xmm13,%xmm6
ffff800000108c59:	66 45 0f df eb       	pandn  %xmm11,%xmm13
ffff800000108c5e:	66 0f db cc          	pand   %xmm4,%xmm1
ffff800000108c62:	66 41 0f df e3       	pandn  %xmm11,%xmm4
ffff800000108c67:	66 44 0f eb ee       	por    %xmm6,%xmm13
ffff800000108c6c:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000108c70:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000108c75:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108c7a:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff800000108c7e:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
ffff800000108c82:	66 44 0f 61 c1       	punpcklwd %xmm1,%xmm8
ffff800000108c87:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108c8c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108c91:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff800000108c96:	66 45 0f df c3       	pandn  %xmm11,%xmm8
ffff800000108c9b:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000108c9f:	66 41 0f df c3       	pandn  %xmm11,%xmm0
ffff800000108ca4:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff800000108ca9:	66 0f eb c1          	por    %xmm1,%xmm0
ffff800000108cad:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
ffff800000108cb4:	00 00 
ffff800000108cb6:	66 0f d6 44 24 20    	movq   %xmm0,0x20(%rsp)
ffff800000108cbc:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108cc1:	66 0f db ca          	pand   %xmm2,%xmm1
ffff800000108cc5:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108cca:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108ccf:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
ffff800000108cd3:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108cd7:	66 0f 60 f7          	punpcklbw %xmm7,%xmm6
ffff800000108cdb:	66 0f 60 cf          	punpcklbw %xmm7,%xmm1
ffff800000108cdf:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000108ce4:	66 0f 65 fe          	pcmpgtw %xmm6,%xmm7
ffff800000108ce8:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108ced:	66 49 0f 7e f8       	movq   %xmm7,%r8
ffff800000108cf2:	66 0f 6f fe          	movdqa %xmm6,%xmm7
ffff800000108cf6:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108cfb:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000108cff:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108d03:	66 0f db c7          	pand   %xmm7,%xmm0
ffff800000108d07:	66 41 0f df fb       	pandn  %xmm11,%xmm7
ffff800000108d0c:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108d11:	66 0f eb f8          	por    %xmm0,%xmm7
ffff800000108d15:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108d1a:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108d1e:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108d23:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108d27:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108d2c:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108d30:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
ffff800000108d36:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108d3b:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108d40:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108d44:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108d49:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108d4d:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108d51:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108d56:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108d5a:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108d5f:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108d63:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108d68:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
ffff800000108d6e:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108d73:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108d78:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108d7c:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108d81:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108d85:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
ffff800000108d8c:	00 00 
ffff800000108d8e:	66 0f d6 4c 24 38    	movq   %xmm1,0x38(%rsp)
ffff800000108d94:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108d98:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108d9c:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108da1:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108da6:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108dab:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108daf:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108db4:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108db8:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108dbd:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108dc1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108dc5:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108dc9:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108dcd:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108dd2:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108dd6:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
ffff800000108ddc:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108de0:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108de5:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108dea:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108dee:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108df3:	66 0f d6 44 24 40    	movq   %xmm0,0x40(%rsp)
ffff800000108df9:	f3 0f 7e 44 24 48    	movq   0x48(%rsp),%xmm0
ffff800000108dff:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000108e03:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108e08:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000108e0c:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108e11:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108e15:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108e19:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108e1e:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108e22:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
ffff800000108e28:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108e2d:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108e32:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108e36:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108e3b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108e3f:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108e43:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108e48:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108e4c:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108e51:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108e55:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108e5a:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
ffff800000108e60:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108e65:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108e6a:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108e6e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108e73:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108e77:	f3 0f 7e b4 24 f8 00 	movq   0xf8(%rsp),%xmm6
ffff800000108e7e:	00 00 
ffff800000108e80:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
ffff800000108e86:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108e8a:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108e8e:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108e93:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108e98:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108e9d:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108ea1:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108ea6:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108eaa:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108eaf:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108eb3:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108eb7:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108ebb:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108ebf:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108ec4:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108ec8:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108ece:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108ed2:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108ed7:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108edc:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108ee0:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108ee5:	66 0f d6 44 24 60    	movq   %xmm0,0x60(%rsp)
ffff800000108eeb:	f3 0f 7e 44 24 68    	movq   0x68(%rsp),%xmm0
ffff800000108ef1:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000108ef5:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108efa:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000108efe:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108f03:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108f07:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108f0b:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108f10:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108f14:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108f1a:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108f1f:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108f24:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108f28:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108f2d:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108f31:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108f35:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108f3a:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108f3e:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108f43:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108f47:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108f4c:	66 0f d6 44 24 70    	movq   %xmm0,0x70(%rsp)
ffff800000108f52:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108f57:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108f5c:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108f60:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108f65:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108f69:	f3 0f 7e b4 24 00 01 	movq   0x100(%rsp),%xmm6
ffff800000108f70:	00 00 
ffff800000108f72:	66 0f d6 4c 24 78    	movq   %xmm1,0x78(%rsp)
ffff800000108f78:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108f7c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108f80:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108f85:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108f8a:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108f8f:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108f93:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108f98:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108f9c:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108fa1:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108fa5:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108fa9:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108fad:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108fb1:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108fb6:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
ffff800000108fbd:	00 00 
ffff800000108fbf:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108fc3:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108fc7:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108fcc:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108fd1:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108fd5:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108fda:	66 0f d6 84 24 80 00 	movq   %xmm0,0x80(%rsp)
ffff800000108fe1:	00 00 
ffff800000108fe3:	f3 0f 7e 84 24 88 00 	movq   0x88(%rsp),%xmm0
ffff800000108fea:	00 00 
ffff800000108fec:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000108ff0:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108ff5:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000108ff9:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108ffe:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000109002:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000109006:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff80000010900b:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
ffff800000109012:	00 00 
ffff800000109014:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000109018:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff80000010901d:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000109022:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000109026:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff80000010902b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff80000010902f:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000109033:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000109038:	66 0f eb c6          	por    %xmm6,%xmm0
ffff80000010903c:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000109041:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
ffff800000109048:	00 00 
ffff80000010904a:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff80000010904e:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000109053:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000109058:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010905d:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000109061:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000109066:	66 0f eb ce          	por    %xmm6,%xmm1
ffff80000010906a:	f3 0f 7e b4 24 08 01 	movq   0x108(%rsp),%xmm6
ffff800000109071:	00 00 
ffff800000109073:	66 0f d6 8c 24 98 00 	movq   %xmm1,0x98(%rsp)
ffff80000010907a:	00 00 
ffff80000010907c:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000109080:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000109084:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000109089:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff80000010908e:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000109093:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000109097:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff80000010909c:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff8000001090a0:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff8000001090a5:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff8000001090a9:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff8000001090ad:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff8000001090b1:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001090b5:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001090ba:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff8000001090c1:	00 00 
ffff8000001090c3:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff8000001090c7:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff8000001090cb:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff8000001090d0:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff8000001090d5:	66 0f eb c3          	por    %xmm3,%xmm0
ffff8000001090d9:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff8000001090de:	66 0f d6 84 24 a0 00 	movq   %xmm0,0xa0(%rsp)
ffff8000001090e5:	00 00 
ffff8000001090e7:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
ffff8000001090ee:	00 00 
ffff8000001090f0:	66 45 0f 7e 3c 24    	movd   %xmm15,(%r12)
ffff8000001090f6:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff8000001090fa:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff8000001090ff:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000109104:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000109108:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff80000010910d:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000109111:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000109116:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff80000010911a:	66 49 0f 7e d8       	movq   %xmm3,%r8
ffff80000010911f:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000109123:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
ffff80000010912a:	00 00 
ffff80000010912c:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000109130:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff800000109134:	66 0f db c3          	pand   %xmm3,%xmm0
ffff800000109138:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff80000010913d:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000109141:	f3 0f 7e b4 24 b0 00 	movq   0xb0(%rsp),%xmm6
ffff800000109148:	00 00 
ffff80000010914a:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff800000109151:	00 00 
ffff800000109153:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000109158:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff80000010915c:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000109161:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000109166:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010916a:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff80000010916f:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000109173:	f3 0f 7e b4 24 48 01 	movq   0x148(%rsp),%xmm6
ffff80000010917a:	00 00 
ffff80000010917c:	66 0f d6 8c 24 b0 00 	movq   %xmm1,0xb0(%rsp)
ffff800000109183:	00 00 
ffff800000109185:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000109189:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
ffff80000010918e:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000109192:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000109197:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff80000010919c:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
ffff8000001091a0:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff8000001091a4:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
ffff8000001091a8:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
ffff8000001091ac:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
ffff8000001091b1:	66 0f 65 d6          	pcmpgtw %xmm6,%xmm2
ffff8000001091b5:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001091b9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001091be:	66 0f d6 94 24 c0 00 	movq   %xmm2,0xc0(%rsp)
ffff8000001091c5:	00 00 
ffff8000001091c7:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
ffff8000001091cb:	66 0f 6f d3          	movdqa %xmm3,%xmm2
ffff8000001091cf:	66 0f db c3          	pand   %xmm3,%xmm0
ffff8000001091d3:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001091d7:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff8000001091dc:	66 0f eb c2          	por    %xmm2,%xmm0
ffff8000001091e0:	f3 0f 7e 94 24 c0 00 	movq   0xc0(%rsp),%xmm2
ffff8000001091e7:	00 00 
ffff8000001091e9:	66 0f d6 84 24 b8 00 	movq   %xmm0,0xb8(%rsp)
ffff8000001091f0:	00 00 
ffff8000001091f2:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
ffff8000001091f6:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff8000001091fb:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000109200:	66 0f db d6          	pand   %xmm6,%xmm2
ffff800000109204:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000109209:	66 0f eb f2          	por    %xmm2,%xmm6
ffff80000010920d:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
ffff800000109212:	66 0f 65 d1          	pcmpgtw %xmm1,%xmm2
ffff800000109216:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
ffff80000010921a:	66 0f 6f c2          	movdqa %xmm2,%xmm0
ffff80000010921e:	66 0f 6f d3          	movdqa %xmm3,%xmm2
ffff800000109222:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000109227:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff80000010922b:	66 0f db da          	pand   %xmm2,%xmm3
ffff80000010922f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000109234:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000109239:	66 0f eb d3          	por    %xmm3,%xmm2
ffff80000010923d:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000109242:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000109246:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff80000010924b:	66 0f eb cb          	por    %xmm3,%xmm1
ffff80000010924f:	66 41 0f 70 df e5    	pshufd $0xe5,%xmm15,%xmm3
ffff800000109255:	66 0f 7e 1b          	movd   %xmm3,(%rbx)
ffff800000109259:	66 41 0f 7e 2b       	movd   %xmm5,(%r11)
ffff80000010925e:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000109263:	66 41 0f 7e 2a       	movd   %xmm5,(%r10)
ffff800000109268:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
ffff80000010926e:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
ffff800000109273:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
ffff800000109277:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff80000010927d:	66 0f 7e 29          	movd   %xmm5,(%rcx)
ffff800000109281:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000109286:	66 0f 7e 28          	movd   %xmm5,(%rax)
ffff80000010928a:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff800000109290:	66 45 0f 7e 6c 24 04 	movd   %xmm13,0x4(%r12)
ffff800000109297:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
ffff80000010929c:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001092a1:	66 41 0f 7e 63 04    	movd   %xmm4,0x4(%r11)
ffff8000001092a7:	f3 0f 7e 64 24 20    	movq   0x20(%rsp),%xmm4
ffff8000001092ad:	66 41 0f 7e 6a 04    	movd   %xmm5,0x4(%r10)
ffff8000001092b3:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff8000001092b9:	66 44 0f 7e 47 04    	movd   %xmm8,0x4(%rdi)
ffff8000001092bf:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
ffff8000001092c4:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001092c9:	66 0f 7e 61 04       	movd   %xmm4,0x4(%rcx)
ffff8000001092ce:	66 0f 70 e7 e5       	pshufd $0xe5,%xmm7,%xmm4
ffff8000001092d3:	66 0f 7e 68 04       	movd   %xmm5,0x4(%rax)
ffff8000001092d8:	66 41 0f 7e 7c 24 08 	movd   %xmm7,0x8(%r12)
ffff8000001092df:	f3 0f 7e 7c 24 28    	movq   0x28(%rsp),%xmm7
ffff8000001092e5:	66 0f 7e 63 08       	movd   %xmm4,0x8(%rbx)
ffff8000001092ea:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff8000001092ef:	66 41 0f 7e 7b 08    	movd   %xmm7,0x8(%r11)
ffff8000001092f5:	66 41 0f 7e 6a 08    	movd   %xmm5,0x8(%r10)
ffff8000001092fb:	f3 0f 7e 44 24 30    	movq   0x30(%rsp),%xmm0
ffff800000109301:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
ffff800000109307:	66 0f 7e 47 08       	movd   %xmm0,0x8(%rdi)
ffff80000010930c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109311:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109316:	f3 0f 7e 44 24 40    	movq   0x40(%rsp),%xmm0
ffff80000010931c:	66 0f 7e 66 08       	movd   %xmm4,0x8(%rsi)
ffff800000109321:	66 0f 7e 79 08       	movd   %xmm7,0x8(%rcx)
ffff800000109326:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff80000010932b:	f3 0f 7e 7c 24 48    	movq   0x48(%rsp),%xmm7
ffff800000109331:	66 0f 7e 68 08       	movd   %xmm5,0x8(%rax)
ffff800000109336:	66 41 0f 7e 44 24 0c 	movd   %xmm0,0xc(%r12)
ffff80000010933d:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
ffff800000109343:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109348:	66 0f 7e 63 0c       	movd   %xmm4,0xc(%rbx)
ffff80000010934d:	66 41 0f 7e 7b 0c    	movd   %xmm7,0xc(%r11)
ffff800000109353:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109358:	f3 0f 7e 7c 24 58    	movq   0x58(%rsp),%xmm7
ffff80000010935e:	66 41 0f 7e 6a 0c    	movd   %xmm5,0xc(%r10)
ffff800000109364:	66 0f 7e 47 0c       	movd   %xmm0,0xc(%rdi)
ffff800000109369:	f3 0f 7e 44 24 60    	movq   0x60(%rsp),%xmm0
ffff80000010936f:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109374:	66 0f 7e 66 0c       	movd   %xmm4,0xc(%rsi)
ffff800000109379:	66 0f 7e 79 0c       	movd   %xmm7,0xc(%rcx)
ffff80000010937e:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109383:	f3 0f 7e 7c 24 68    	movq   0x68(%rsp),%xmm7
ffff800000109389:	66 0f 7e 68 0c       	movd   %xmm5,0xc(%rax)
ffff80000010938e:	66 41 0f 7e 44 24 10 	movd   %xmm0,0x10(%r12)
ffff800000109395:	f3 0f 7e 44 24 70    	movq   0x70(%rsp),%xmm0
ffff80000010939b:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff8000001093a0:	66 0f 7e 63 10       	movd   %xmm4,0x10(%rbx)
ffff8000001093a5:	66 41 0f 7e 7b 10    	movd   %xmm7,0x10(%r11)
ffff8000001093ab:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff8000001093b0:	f3 0f 7e 7c 24 78    	movq   0x78(%rsp),%xmm7
ffff8000001093b6:	66 41 0f 7e 6a 10    	movd   %xmm5,0x10(%r10)
ffff8000001093bc:	66 0f 7e 47 10       	movd   %xmm0,0x10(%rdi)
ffff8000001093c1:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff8000001093c6:	f3 0f 7e 84 24 80 00 	movq   0x80(%rsp),%xmm0
ffff8000001093cd:	00 00 
ffff8000001093cf:	66 0f 7e 66 10       	movd   %xmm4,0x10(%rsi)
ffff8000001093d4:	66 0f 7e 79 10       	movd   %xmm7,0x10(%rcx)
ffff8000001093d9:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff8000001093de:	66 0f 7e 68 10       	movd   %xmm5,0x10(%rax)
ffff8000001093e3:	66 41 0f 7e 44 24 14 	movd   %xmm0,0x14(%r12)
ffff8000001093ea:	66 0f 7e 63 14       	movd   %xmm4,0x14(%rbx)
ffff8000001093ef:	f3 0f 7e bc 24 88 00 	movq   0x88(%rsp),%xmm7
ffff8000001093f6:	00 00 
ffff8000001093f8:	f3 0f 7e 84 24 90 00 	movq   0x90(%rsp),%xmm0
ffff8000001093ff:	00 00 
ffff800000109401:	66 41 0f 7e 7b 14    	movd   %xmm7,0x14(%r11)
ffff800000109407:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff80000010940c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109411:	f3 0f 7e bc 24 98 00 	movq   0x98(%rsp),%xmm7
ffff800000109418:	00 00 
ffff80000010941a:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff800000109420:	66 0f 7e 47 14       	movd   %xmm0,0x14(%rdi)
ffff800000109425:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff80000010942a:	f3 0f 7e 84 24 a0 00 	movq   0xa0(%rsp),%xmm0
ffff800000109431:	00 00 
ffff800000109433:	66 0f 7e 66 14       	movd   %xmm4,0x14(%rsi)
ffff800000109438:	66 0f 7e 79 14       	movd   %xmm7,0x14(%rcx)
ffff80000010943d:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109442:	f3 0f 7e bc 24 b0 00 	movq   0xb0(%rsp),%xmm7
ffff800000109449:	00 00 
ffff80000010944b:	66 0f 7e 68 14       	movd   %xmm5,0x14(%rax)
ffff800000109450:	66 49 0f 6e e8       	movq   %r8,%xmm5
ffff800000109455:	66 41 0f 7e 44 24 18 	movd   %xmm0,0x18(%r12)
ffff80000010945c:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
ffff800000109463:	00 00 
ffff800000109465:	66 0f 7e 63 18       	movd   %xmm4,0x18(%rbx)
ffff80000010946a:	66 0f 70 e5 e5       	pshufd $0xe5,%xmm5,%xmm4
ffff80000010946f:	45 89 43 18          	mov    %r8d,0x18(%r11)
ffff800000109473:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
ffff800000109479:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff80000010947e:	66 0f 7e 47 18       	movd   %xmm0,0x18(%rdi)
ffff800000109483:	f3 0f 7e 84 24 b8 00 	movq   0xb8(%rsp),%xmm0
ffff80000010948a:	00 00 
ffff80000010948c:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
ffff800000109491:	66 0f 7e 79 18       	movd   %xmm7,0x18(%rcx)
ffff800000109496:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff80000010949b:	66 0f 7e 78 18       	movd   %xmm7,0x18(%rax)
ffff8000001094a0:	66 0f 70 f8 e5       	pshufd $0xe5,%xmm0,%xmm7
ffff8000001094a5:	66 41 0f 7e 44 24 1c 	movd   %xmm0,0x1c(%r12)
ffff8000001094ac:	49 01 d4             	add    %rdx,%r12
ffff8000001094af:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff8000001094b4:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff8000001094b9:	48 01 d3             	add    %rdx,%rbx
ffff8000001094bc:	66 41 0f 7e 73 1c    	movd   %xmm6,0x1c(%r11)
ffff8000001094c2:	49 01 d3             	add    %rdx,%r11
ffff8000001094c5:	66 41 0f 7e 7a 1c    	movd   %xmm7,0x1c(%r10)
ffff8000001094cb:	49 01 d2             	add    %rdx,%r10
ffff8000001094ce:	66 0f 7e 57 1c       	movd   %xmm2,0x1c(%rdi)
ffff8000001094d3:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff8000001094d8:	48 01 d7             	add    %rdx,%rdi
ffff8000001094db:	66 0f 7e 56 1c       	movd   %xmm2,0x1c(%rsi)
ffff8000001094e0:	66 0f 70 d1 e5       	pshufd $0xe5,%xmm1,%xmm2
ffff8000001094e5:	48 01 d6             	add    %rdx,%rsi
ffff8000001094e8:	66 0f 7e 49 1c       	movd   %xmm1,0x1c(%rcx)
ffff8000001094ed:	48 01 d1             	add    %rdx,%rcx
ffff8000001094f0:	66 0f 7e 50 1c       	movd   %xmm2,0x1c(%rax)
ffff8000001094f5:	48 01 d0             	add    %rdx,%rax
ffff8000001094f8:	4c 39 8c 24 d8 00 00 	cmp    %r9,0xd8(%rsp)
ffff8000001094ff:	00 
ffff800000109500:	0f 85 33 f6 ff ff    	jne    ffff800000108b39 <color_printk+0x1d69>
ffff800000109506:	45 89 e8             	mov    %r13d,%r8d
ffff800000109509:	45 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%r10d
ffff80000010950e:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000109512:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000109517:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff80000010951c:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
ffff800000109521:	e9 6a e6 ff ff       	jmp    ffff800000107b90 <color_printk+0xdc0>
ffff800000109526:	89 f0                	mov    %esi,%eax
ffff800000109528:	99                   	cltd
ffff800000109529:	f7 ff                	idiv   %edi
ffff80000010952b:	83 e8 01             	sub    $0x1,%eax
ffff80000010952e:	0f af c7             	imul   %edi,%eax
ffff800000109531:	83 e9 01             	sub    $0x1,%ecx
ffff800000109534:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000109539:	41 89 44 2e 08       	mov    %eax,0x8(%r14,%rbp,1)
ffff80000010953e:	41 89 c3             	mov    %eax,%r11d
ffff800000109541:	0f 89 0d f4 ff ff    	jns    ffff800000108954 <color_printk+0x1b84>
ffff800000109547:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
ffff80000010954c:	99                   	cltd
ffff80000010954d:	41 f7 f9             	idiv   %r9d
ffff800000109550:	83 e8 01             	sub    $0x1,%eax
ffff800000109553:	41 0f af c1          	imul   %r9d,%eax
ffff800000109557:	41 89 44 2e 0c       	mov    %eax,0xc(%r14,%rbp,1)
ffff80000010955c:	89 c1                	mov    %eax,%ecx
ffff80000010955e:	e9 f1 f3 ff ff       	jmp    ffff800000108954 <color_printk+0x1b84>
ffff800000109563:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
ffff800000109568:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff80000010956d:	49 8d 14 29          	lea    (%r9,%rbp,1),%rdx
ffff800000109571:	48 be 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rsi
ffff800000109578:	ff ff ff 
ffff80000010957b:	48 01 f9             	add    %rdi,%rcx
ffff80000010957e:	48 8d 3c 2e          	lea    (%rsi,%rbp,1),%rdi
ffff800000109582:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff800000109585:	44 89 fe             	mov    %r15d,%esi
ffff800000109588:	41 0f 49 f5          	cmovns %r13d,%esi
ffff80000010958c:	89 31                	mov    %esi,(%rcx)
ffff80000010958e:	44 89 fe             	mov    %r15d,%esi
ffff800000109591:	f6 02 40             	testb  $0x40,(%rdx)
ffff800000109594:	41 0f 44 f5          	cmove  %r13d,%esi
ffff800000109598:	89 71 04             	mov    %esi,0x4(%rcx)
ffff80000010959b:	44 89 fe             	mov    %r15d,%esi
ffff80000010959e:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001095a1:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095a5:	89 71 08             	mov    %esi,0x8(%rcx)
ffff8000001095a8:	44 89 fe             	mov    %r15d,%esi
ffff8000001095ab:	f6 02 10             	testb  $0x10,(%rdx)
ffff8000001095ae:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095b2:	89 71 0c             	mov    %esi,0xc(%rcx)
ffff8000001095b5:	44 89 fe             	mov    %r15d,%esi
ffff8000001095b8:	f6 02 08             	testb  $0x8,(%rdx)
ffff8000001095bb:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095bf:	89 71 10             	mov    %esi,0x10(%rcx)
ffff8000001095c2:	44 89 fe             	mov    %r15d,%esi
ffff8000001095c5:	f6 02 04             	testb  $0x4,(%rdx)
ffff8000001095c8:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095cc:	89 71 14             	mov    %esi,0x14(%rcx)
ffff8000001095cf:	44 89 fe             	mov    %r15d,%esi
ffff8000001095d2:	f6 02 02             	testb  $0x2,(%rdx)
ffff8000001095d5:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095d9:	89 71 18             	mov    %esi,0x18(%rcx)
ffff8000001095dc:	f6 02 01             	testb  $0x1,(%rdx)
ffff8000001095df:	74 1a                	je     ffff8000001095fb <color_printk+0x282b>
ffff8000001095e1:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001095e5:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
ffff8000001095e9:	48 01 c1             	add    %rax,%rcx
ffff8000001095ec:	48 39 fa             	cmp    %rdi,%rdx
ffff8000001095ef:	75 91                	jne    ffff800000109582 <color_printk+0x27b2>
ffff8000001095f1:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff8000001095f6:	e9 0e ff ff ff       	jmp    ffff800000109509 <color_printk+0x2739>
ffff8000001095fb:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001095ff:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
ffff800000109603:	48 01 c1             	add    %rax,%rcx
ffff800000109606:	48 39 fa             	cmp    %rdi,%rdx
ffff800000109609:	0f 85 73 ff ff ff    	jne    ffff800000109582 <color_printk+0x27b2>
ffff80000010960f:	eb e0                	jmp    ffff8000001095f1 <color_printk+0x2821>
