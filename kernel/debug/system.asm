
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 a0 00 00 	lgdt   0xa050(%rip)        # ffff80000010a068 <GDT_END>
ffff800000100018:	0f 01 1d 53 b0 00 00 	lidt   0xb053(%rip)        # ffff80000010b072 <IDT_END>
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
ffff800000100099:	48 8d 3d d2 9f 00 00 	lea    0x9fd2(%rip),%rdi        # ffff80000010a072 <IDT_Table>
ffff8000001000a0:	48 c7 c1 00 01 00 00 	mov    $0x100,%rcx

ffff8000001000a7 <rp_sidt>:
ffff8000001000a7:	48 89 07             	mov    %rax,(%rdi)
ffff8000001000aa:	48 89 57 08          	mov    %rdx,0x8(%rdi)
ffff8000001000ae:	48 83 c7 10          	add    $0x10,%rdi
ffff8000001000b2:	48 ff c9             	dec    %rcx
ffff8000001000b5:	75 f0                	jne    ffff8000001000a7 <rp_sidt>

ffff8000001000b7 <setup_TSS64>:
ffff8000001000b7:	48 8d 15 be af 00 00 	lea    0xafbe(%rip),%rdx        # ffff80000010b07c <TSS64_Table>
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
ffff8000001000f1:	48 8d 3d e8 9e 00 00 	lea    0x9ee8(%rip),%rdi        # ffff800000109fe0 <GDT_Table>
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
ffff800000100168:	e8 83 6c 00 00       	call   ffff800000106df0 <color_printk>
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
ffff800000104004:	49 bb fc 90 00 00 00 	movabs $0x90fc,%r11
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
ffff800000104034:	48 b9 00 00 a0 00 00 	movabs $0xffff800000a00000,%rcx
ffff80000010403b:	80 ff ff 
ffff80000010403e:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff800000104045:	00 00 00 
ffff800000104048:	66 41 0f 6f 04 17    	movdqa (%r15,%rdx,1),%xmm0
ffff80000010404e:	4a 89 4c 38 18       	mov    %rcx,0x18(%rax,%r15,1)
ffff800000104053:	48 ba f0 c6 ff ff ff 	movabs $0xffffffffffffc6f0,%rdx
ffff80000010405a:	ff ff ff 
ffff80000010405d:	48 bb f0 9c ff ff ff 	movabs $0xffffffffffff9cf0,%rbx
ffff800000104064:	ff ff ff 
ffff800000104067:	49 8b 14 17          	mov    (%r15,%rdx,1),%rdx
ffff80000010406b:	4c 01 fb             	add    %r15,%rbx
ffff80000010406e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104073:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
ffff80000010407a:	4f 00 
ffff80000010407c:	41 0f 29 04 07       	movaps %xmm0,(%r15,%rax,1)
ffff800000104081:	49 89 54 07 10       	mov    %rdx,0x10(%r15,%rax,1)
ffff800000104086:	48 b8 31 c5 ff ff ff 	movabs $0xffffffffffffc531,%rax
ffff80000010408d:	ff ff ff 
ffff800000104090:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104094:	31 c0                	xor    %eax,%eax
ffff800000104096:	ff d3                	call   *%rbx
ffff800000104098:	31 f6                	xor    %esi,%esi
ffff80000010409a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010409f:	48 b8 42 c5 ff ff ff 	movabs $0xffffffffffffc542,%rax
ffff8000001040a6:	ff ff ff 
ffff8000001040a9:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ad:	31 c0                	xor    %eax,%eax
ffff8000001040af:	ff d3                	call   *%rbx
ffff8000001040b1:	31 f6                	xor    %esi,%esi
ffff8000001040b3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b8:	48 b8 50 c5 ff ff ff 	movabs $0xffffffffffffc550,%rax
ffff8000001040bf:	ff ff ff 
ffff8000001040c2:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040c6:	31 c0                	xor    %eax,%eax
ffff8000001040c8:	ff d3                	call   *%rbx
ffff8000001040ca:	31 f6                	xor    %esi,%esi
ffff8000001040cc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040d1:	48 b8 a8 c5 ff ff ff 	movabs $0xffffffffffffc5a8,%rax
ffff8000001040d8:	ff ff ff 
ffff8000001040db:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040df:	31 c0                	xor    %eax,%eax
ffff8000001040e1:	ff d3                	call   *%rbx
ffff8000001040e3:	31 f6                	xor    %esi,%esi
ffff8000001040e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040ea:	48 b8 08 c6 ff ff ff 	movabs $0xffffffffffffc608,%rax
ffff8000001040f1:	ff ff ff 
ffff8000001040f4:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040f8:	31 c0                	xor    %eax,%eax
ffff8000001040fa:	ff d3                	call   *%rbx
ffff8000001040fc:	31 f6                	xor    %esi,%esi
ffff8000001040fe:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104103:	48 b8 40 c6 ff ff ff 	movabs $0xffffffffffffc640,%rax
ffff80000010410a:	ff ff ff 
ffff80000010410d:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104111:	31 c0                	xor    %eax,%eax
ffff800000104113:	ff d3                	call   *%rbx
ffff800000104115:	eb fe                	jmp    ffff800000104115 <Start_Kernel+0x115>
ffff800000104117:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010411e:	00 00 

ffff800000104120 <number>:
ffff800000104120:	f3 0f 1e fa          	endbr64
ffff800000104124:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000104124 <number+0x4>
ffff80000010412b:	41 57                	push   %r15
ffff80000010412d:	48 89 f0             	mov    %rsi,%rax
ffff800000104130:	89 ce                	mov    %ecx,%esi
ffff800000104132:	49 bb dc 8f 00 00 00 	movabs $0x8fdc,%r11
ffff800000104139:	00 00 00 
ffff80000010413c:	41 56                	push   %r14
ffff80000010413e:	4d 01 da             	add    %r11,%r10
ffff800000104141:	41 55                	push   %r13
ffff800000104143:	41 54                	push   %r12
ffff800000104145:	55                   	push   %rbp
ffff800000104146:	53                   	push   %rbx
ffff800000104147:	41 f6 c1 40          	test   $0x40,%r9b
ffff80000010414b:	0f 85 1f 05 00 00    	jne    ffff800000104670 <number+0x550>
ffff800000104151:	48 b9 68 c6 ff ff ff 	movabs $0xffffffffffffc668,%rcx
ffff800000104158:	ff ff ff 
ffff80000010415b:	c6 44 24 b3 58       	movb   $0x58,-0x4d(%rsp)
ffff800000104160:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
ffff800000104164:	44 89 cb             	mov    %r9d,%ebx
ffff800000104167:	83 e3 10             	and    $0x10,%ebx
ffff80000010416a:	89 5c 24 a4          	mov    %ebx,-0x5c(%rsp)
ffff80000010416e:	0f 84 c4 04 00 00    	je     ffff800000104638 <number+0x518>
ffff800000104174:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff800000104178:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff80000010417e:	bd 20 00 00 00       	mov    $0x20,%ebp
ffff800000104183:	45 89 cf             	mov    %r9d,%r15d
ffff800000104186:	41 83 e7 20          	and    $0x20,%r15d
ffff80000010418a:	41 f6 c1 02          	test   $0x2,%r9b
ffff80000010418e:	74 09                	je     ffff800000104199 <number+0x79>
ffff800000104190:	48 85 c0             	test   %rax,%rax
ffff800000104193:	0f 88 17 05 00 00    	js     ffff8000001046b0 <number+0x590>
ffff800000104199:	41 f6 c1 04          	test   $0x4,%r9b
ffff80000010419d:	0f 84 ed 04 00 00    	je     ffff800000104690 <number+0x570>
ffff8000001041a3:	c6 44 24 b2 2b       	movb   $0x2b,-0x4e(%rsp)
ffff8000001041a8:	83 ee 01             	sub    $0x1,%esi
ffff8000001041ab:	45 85 ff             	test   %r15d,%r15d
ffff8000001041ae:	74 19                	je     ffff8000001041c9 <number+0xa9>
ffff8000001041b0:	83 fa 10             	cmp    $0x10,%edx
ffff8000001041b3:	0f 84 8f 05 00 00    	je     ffff800000104748 <number+0x628>
ffff8000001041b9:	31 c9                	xor    %ecx,%ecx
ffff8000001041bb:	83 fa 08             	cmp    $0x8,%edx
ffff8000001041be:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff8000001041c4:	0f 94 c1             	sete   %cl
ffff8000001041c7:	29 ce                	sub    %ecx,%esi
ffff8000001041c9:	48 85 c0             	test   %rax,%rax
ffff8000001041cc:	0f 85 f2 04 00 00    	jne    ffff8000001046c4 <number+0x5a4>
ffff8000001041d2:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
ffff8000001041d7:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff8000001041dc:	31 c9                	xor    %ecx,%ecx
ffff8000001041de:	41 b9 01 00 00 00    	mov    $0x1,%r9d
ffff8000001041e4:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
ffff8000001041e9:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001041ec:	45 0f 4d c1          	cmovge %r9d,%r8d
ffff8000001041f0:	44 29 c6             	sub    %r8d,%esi
ffff8000001041f3:	45 85 f6             	test   %r14d,%r14d
ffff8000001041f6:	0f 85 ee 00 00 00    	jne    ffff8000001042ea <number+0x1ca>
ffff8000001041fc:	44 8d 5e ff          	lea    -0x1(%rsi),%r11d
ffff800000104200:	85 f6                	test   %esi,%esi
ffff800000104202:	0f 8e 64 05 00 00    	jle    ffff80000010476c <number+0x64c>
ffff800000104208:	48 89 f8             	mov    %rdi,%rax
ffff80000010420b:	41 83 fb 0e          	cmp    $0xe,%r11d
ffff80000010420f:	0f 86 5f 05 00 00    	jbe    ffff800000104774 <number+0x654>
ffff800000104215:	49 bc d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r12
ffff80000010421c:	ff ff ff 
ffff80000010421f:	89 f3                	mov    %esi,%ebx
ffff800000104221:	c1 eb 04             	shr    $0x4,%ebx
ffff800000104224:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff80000010422a:	48 c1 e3 04          	shl    $0x4,%rbx
ffff80000010422e:	4c 8d 2c 3b          	lea    (%rbx,%rdi,1),%r13
ffff800000104232:	83 e3 10             	and    $0x10,%ebx
ffff800000104235:	74 11                	je     ffff800000104248 <number+0x128>
ffff800000104237:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff80000010423b:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010423e:	49 39 c5             	cmp    %rax,%r13
ffff800000104241:	74 15                	je     ffff800000104258 <number+0x138>
ffff800000104243:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104248:	0f 11 00             	movups %xmm0,(%rax)
ffff80000010424b:	48 83 c0 20          	add    $0x20,%rax
ffff80000010424f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000104253:	49 39 c5             	cmp    %rax,%r13
ffff800000104256:	75 f0                	jne    ffff800000104248 <number+0x128>
ffff800000104258:	89 f3                	mov    %esi,%ebx
ffff80000010425a:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff80000010425d:	89 d8                	mov    %ebx,%eax
ffff80000010425f:	41 29 db             	sub    %ebx,%r11d
ffff800000104262:	48 01 f8             	add    %rdi,%rax
ffff800000104265:	39 de                	cmp    %ebx,%esi
ffff800000104267:	74 76                	je     ffff8000001042df <number+0x1bf>
ffff800000104269:	41 89 f4             	mov    %esi,%r12d
ffff80000010426c:	41 29 dc             	sub    %ebx,%r12d
ffff80000010426f:	45 8d 6c 24 ff       	lea    -0x1(%r12),%r13d
ffff800000104274:	41 83 fd 06          	cmp    $0x6,%r13d
ffff800000104278:	76 27                	jbe    ffff8000001042a1 <number+0x181>
ffff80000010427a:	49 bd d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r13
ffff800000104281:	ff ff ff 
ffff800000104284:	4f 8b 2c 2a          	mov    (%r10,%r13,1),%r13
ffff800000104288:	4c 89 2c 1f          	mov    %r13,(%rdi,%rbx,1)
ffff80000010428c:	44 89 e3             	mov    %r12d,%ebx
ffff80000010428f:	83 e3 f8             	and    $0xfffffff8,%ebx
ffff800000104292:	41 89 dd             	mov    %ebx,%r13d
ffff800000104295:	41 29 db             	sub    %ebx,%r11d
ffff800000104298:	4c 01 e8             	add    %r13,%rax
ffff80000010429b:	41 83 e4 07          	and    $0x7,%r12d
ffff80000010429f:	74 3e                	je     ffff8000001042df <number+0x1bf>
ffff8000001042a1:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001042a4:	45 85 db             	test   %r11d,%r11d
ffff8000001042a7:	7e 36                	jle    ffff8000001042df <number+0x1bf>
ffff8000001042a9:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff8000001042ad:	41 83 fb 01          	cmp    $0x1,%r11d
ffff8000001042b1:	74 2c                	je     ffff8000001042df <number+0x1bf>
ffff8000001042b3:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff8000001042b7:	41 83 fb 02          	cmp    $0x2,%r11d
ffff8000001042bb:	74 22                	je     ffff8000001042df <number+0x1bf>
ffff8000001042bd:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff8000001042c1:	41 83 fb 03          	cmp    $0x3,%r11d
ffff8000001042c5:	74 18                	je     ffff8000001042df <number+0x1bf>
ffff8000001042c7:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff8000001042cb:	41 83 fb 04          	cmp    $0x4,%r11d
ffff8000001042cf:	74 0e                	je     ffff8000001042df <number+0x1bf>
ffff8000001042d1:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff8000001042d5:	41 83 fb 05          	cmp    $0x5,%r11d
ffff8000001042d9:	74 04                	je     ffff8000001042df <number+0x1bf>
ffff8000001042db:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff8000001042df:	48 63 f6             	movslq %esi,%rsi
ffff8000001042e2:	48 01 f7             	add    %rsi,%rdi
ffff8000001042e5:	be ff ff ff ff       	mov    $0xffffffff,%esi
ffff8000001042ea:	0f b6 44 24 b2       	movzbl -0x4e(%rsp),%eax
ffff8000001042ef:	84 c0                	test   %al,%al
ffff8000001042f1:	74 06                	je     ffff8000001042f9 <number+0x1d9>
ffff8000001042f3:	88 07                	mov    %al,(%rdi)
ffff8000001042f5:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042f9:	45 85 ff             	test   %r15d,%r15d
ffff8000001042fc:	74 12                	je     ffff800000104310 <number+0x1f0>
ffff8000001042fe:	83 fa 08             	cmp    $0x8,%edx
ffff800000104301:	0f 84 31 04 00 00    	je     ffff800000104738 <number+0x618>
ffff800000104307:	83 fa 10             	cmp    $0x10,%edx
ffff80000010430a:	0f 84 10 04 00 00    	je     ffff800000104720 <number+0x600>
ffff800000104310:	8b 44 24 a4          	mov    -0x5c(%rsp),%eax
ffff800000104314:	85 c0                	test   %eax,%eax
ffff800000104316:	0f 85 f5 00 00 00    	jne    ffff800000104411 <number+0x2f1>
ffff80000010431c:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff80000010431f:	85 f6                	test   %esi,%esi
ffff800000104321:	0f 8e 3e 04 00 00    	jle    ffff800000104765 <number+0x645>
ffff800000104327:	83 fa 0e             	cmp    $0xe,%edx
ffff80000010432a:	0f 86 4b 04 00 00    	jbe    ffff80000010477b <number+0x65b>
ffff800000104330:	66 0f 6e c5          	movd   %ebp,%xmm0
ffff800000104334:	41 89 f3             	mov    %esi,%r11d
ffff800000104337:	48 89 f8             	mov    %rdi,%rax
ffff80000010433a:	41 c1 eb 04          	shr    $0x4,%r11d
ffff80000010433e:	66 0f 60 c0          	punpcklbw %xmm0,%xmm0
ffff800000104342:	49 c1 e3 04          	shl    $0x4,%r11
ffff800000104346:	66 0f 61 c0          	punpcklwd %xmm0,%xmm0
ffff80000010434a:	66 0f 70 c0 00       	pshufd $0x0,%xmm0,%xmm0
ffff80000010434f:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000104353:	41 83 e3 10          	and    $0x10,%r11d
ffff800000104357:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010435b:	74 13                	je     ffff800000104370 <number+0x250>
ffff80000010435d:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff800000104361:	0f 11 07             	movups %xmm0,(%rdi)
ffff800000104364:	48 39 d8             	cmp    %rbx,%rax
ffff800000104367:	74 17                	je     ffff800000104380 <number+0x260>
ffff800000104369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104370:	0f 11 08             	movups %xmm1,(%rax)
ffff800000104373:	48 83 c0 20          	add    $0x20,%rax
ffff800000104377:	0f 11 48 f0          	movups %xmm1,-0x10(%rax)
ffff80000010437b:	48 39 d8             	cmp    %rbx,%rax
ffff80000010437e:	75 f0                	jne    ffff800000104370 <number+0x250>
ffff800000104380:	41 89 f3             	mov    %esi,%r11d
ffff800000104383:	41 83 e3 f0          	and    $0xfffffff0,%r11d
ffff800000104387:	44 89 db             	mov    %r11d,%ebx
ffff80000010438a:	44 29 da             	sub    %r11d,%edx
ffff80000010438d:	48 01 fb             	add    %rdi,%rbx
ffff800000104390:	44 39 de             	cmp    %r11d,%esi
ffff800000104393:	74 71                	je     ffff800000104406 <number+0x2e6>
ffff800000104395:	41 89 f4             	mov    %esi,%r12d
ffff800000104398:	45 29 dc             	sub    %r11d,%r12d
ffff80000010439b:	41 8d 44 24 ff       	lea    -0x1(%r12),%eax
ffff8000001043a0:	83 f8 06             	cmp    $0x6,%eax
ffff8000001043a3:	76 29                	jbe    ffff8000001043ce <number+0x2ae>
ffff8000001043a5:	40 0f b6 c5          	movzbl %bpl,%eax
ffff8000001043a9:	88 c4                	mov    %al,%ah
ffff8000001043ab:	66 0f 6e d0          	movd   %eax,%xmm2
ffff8000001043af:	44 89 e0             	mov    %r12d,%eax
ffff8000001043b2:	83 e0 f8             	and    $0xfffffff8,%eax
ffff8000001043b5:	f2 0f 70 c2 00       	pshuflw $0x0,%xmm2,%xmm0
ffff8000001043ba:	66 42 0f d6 04 1f    	movq   %xmm0,(%rdi,%r11,1)
ffff8000001043c0:	41 89 c3             	mov    %eax,%r11d
ffff8000001043c3:	29 c2                	sub    %eax,%edx
ffff8000001043c5:	4c 01 db             	add    %r11,%rbx
ffff8000001043c8:	41 83 e4 07          	and    $0x7,%r12d
ffff8000001043cc:	74 38                	je     ffff800000104406 <number+0x2e6>
ffff8000001043ce:	40 88 2b             	mov    %bpl,(%rbx)
ffff8000001043d1:	85 d2                	test   %edx,%edx
ffff8000001043d3:	7e 31                	jle    ffff800000104406 <number+0x2e6>
ffff8000001043d5:	40 88 6b 01          	mov    %bpl,0x1(%rbx)
ffff8000001043d9:	83 fa 01             	cmp    $0x1,%edx
ffff8000001043dc:	74 28                	je     ffff800000104406 <number+0x2e6>
ffff8000001043de:	40 88 6b 02          	mov    %bpl,0x2(%rbx)
ffff8000001043e2:	83 fa 02             	cmp    $0x2,%edx
ffff8000001043e5:	74 1f                	je     ffff800000104406 <number+0x2e6>
ffff8000001043e7:	40 88 6b 03          	mov    %bpl,0x3(%rbx)
ffff8000001043eb:	83 fa 03             	cmp    $0x3,%edx
ffff8000001043ee:	74 16                	je     ffff800000104406 <number+0x2e6>
ffff8000001043f0:	40 88 6b 04          	mov    %bpl,0x4(%rbx)
ffff8000001043f4:	83 fa 04             	cmp    $0x4,%edx
ffff8000001043f7:	74 0d                	je     ffff800000104406 <number+0x2e6>
ffff8000001043f9:	40 88 6b 05          	mov    %bpl,0x5(%rbx)
ffff8000001043fd:	83 fa 05             	cmp    $0x5,%edx
ffff800000104400:	74 04                	je     ffff800000104406 <number+0x2e6>
ffff800000104402:	40 88 6b 06          	mov    %bpl,0x6(%rbx)
ffff800000104406:	48 63 f6             	movslq %esi,%rsi
ffff800000104409:	48 01 f7             	add    %rsi,%rdi
ffff80000010440c:	be ff ff ff ff       	mov    $0xffffffff,%esi
ffff800000104411:	41 8d 50 ff          	lea    -0x1(%r8),%edx
ffff800000104415:	45 39 c1             	cmp    %r8d,%r9d
ffff800000104418:	0f 8d fb 00 00 00    	jge    ffff800000104519 <number+0x3f9>
ffff80000010441e:	45 29 c8             	sub    %r9d,%r8d
ffff800000104421:	48 89 f8             	mov    %rdi,%rax
ffff800000104424:	41 8d 58 ff          	lea    -0x1(%r8),%ebx
ffff800000104428:	83 fb 0e             	cmp    $0xe,%ebx
ffff80000010442b:	0f 86 2c 03 00 00    	jbe    ffff80000010475d <number+0x63d>
ffff800000104431:	49 bc e0 c6 ff ff ff 	movabs $0xffffffffffffc6e0,%r12
ffff800000104438:	ff ff ff 
ffff80000010443b:	45 89 c3             	mov    %r8d,%r11d
ffff80000010443e:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000104442:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff800000104448:	49 c1 e3 04          	shl    $0x4,%r11
ffff80000010444c:	49 8d 2c 3b          	lea    (%r11,%rdi,1),%rbp
ffff800000104450:	41 83 e3 10          	and    $0x10,%r11d
ffff800000104454:	74 12                	je     ffff800000104468 <number+0x348>
ffff800000104456:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff80000010445a:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010445d:	48 39 c5             	cmp    %rax,%rbp
ffff800000104460:	74 16                	je     ffff800000104478 <number+0x358>
ffff800000104462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104468:	0f 11 00             	movups %xmm0,(%rax)
ffff80000010446b:	48 83 c0 20          	add    $0x20,%rax
ffff80000010446f:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000104473:	48 39 c5             	cmp    %rax,%rbp
ffff800000104476:	75 f0                	jne    ffff800000104468 <number+0x348>
ffff800000104478:	45 89 c3             	mov    %r8d,%r11d
ffff80000010447b:	41 83 e3 f0          	and    $0xfffffff0,%r11d
ffff80000010447f:	44 89 d8             	mov    %r11d,%eax
ffff800000104482:	44 29 da             	sub    %r11d,%edx
ffff800000104485:	48 01 f8             	add    %rdi,%rax
ffff800000104488:	41 f6 c0 0f          	test   $0xf,%r8b
ffff80000010448c:	0f 84 80 00 00 00    	je     ffff800000104512 <number+0x3f2>
ffff800000104492:	45 29 d8             	sub    %r11d,%r8d
ffff800000104495:	41 8d 68 ff          	lea    -0x1(%r8),%ebp
ffff800000104499:	83 fd 06             	cmp    $0x6,%ebp
ffff80000010449c:	76 28                	jbe    ffff8000001044c6 <number+0x3a6>
ffff80000010449e:	48 bd e0 c6 ff ff ff 	movabs $0xffffffffffffc6e0,%rbp
ffff8000001044a5:	ff ff ff 
ffff8000001044a8:	49 8b 2c 2a          	mov    (%r10,%rbp,1),%rbp
ffff8000001044ac:	4a 89 2c 1f          	mov    %rbp,(%rdi,%r11,1)
ffff8000001044b0:	45 89 c3             	mov    %r8d,%r11d
ffff8000001044b3:	41 83 e3 f8          	and    $0xfffffff8,%r11d
ffff8000001044b7:	44 89 dd             	mov    %r11d,%ebp
ffff8000001044ba:	44 29 da             	sub    %r11d,%edx
ffff8000001044bd:	48 01 e8             	add    %rbp,%rax
ffff8000001044c0:	41 83 e0 07          	and    $0x7,%r8d
ffff8000001044c4:	74 4c                	je     ffff800000104512 <number+0x3f2>
ffff8000001044c6:	c6 00 30             	movb   $0x30,(%rax)
ffff8000001044c9:	44 8d 42 ff          	lea    -0x1(%rdx),%r8d
ffff8000001044cd:	41 39 d1             	cmp    %edx,%r9d
ffff8000001044d0:	7d 40                	jge    ffff800000104512 <number+0x3f2>
ffff8000001044d2:	c6 40 01 30          	movb   $0x30,0x1(%rax)
ffff8000001044d6:	44 8d 5a fe          	lea    -0x2(%rdx),%r11d
ffff8000001044da:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001044dd:	7d 33                	jge    ffff800000104512 <number+0x3f2>
ffff8000001044df:	c6 40 02 30          	movb   $0x30,0x2(%rax)
ffff8000001044e3:	44 8d 42 fd          	lea    -0x3(%rdx),%r8d
ffff8000001044e7:	45 39 d9             	cmp    %r11d,%r9d
ffff8000001044ea:	7d 26                	jge    ffff800000104512 <number+0x3f2>
ffff8000001044ec:	c6 40 03 30          	movb   $0x30,0x3(%rax)
ffff8000001044f0:	44 8d 5a fc          	lea    -0x4(%rdx),%r11d
ffff8000001044f4:	45 39 c1             	cmp    %r8d,%r9d
ffff8000001044f7:	7d 19                	jge    ffff800000104512 <number+0x3f2>
ffff8000001044f9:	c6 40 04 30          	movb   $0x30,0x4(%rax)
ffff8000001044fd:	83 ea 05             	sub    $0x5,%edx
ffff800000104500:	45 39 d9             	cmp    %r11d,%r9d
ffff800000104503:	7d 0d                	jge    ffff800000104512 <number+0x3f2>
ffff800000104505:	c6 40 05 30          	movb   $0x30,0x5(%rax)
ffff800000104509:	41 39 d1             	cmp    %edx,%r9d
ffff80000010450c:	7d 04                	jge    ffff800000104512 <number+0x3f2>
ffff80000010450e:	c6 40 06 30          	movb   $0x30,0x6(%rax)
ffff800000104512:	89 db                	mov    %ebx,%ebx
ffff800000104514:	48 8d 7c 1f 01       	lea    0x1(%rdi,%rbx,1),%rdi
ffff800000104519:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
ffff80000010451e:	48 63 c1             	movslq %ecx,%rax
ffff800000104521:	83 c1 01             	add    $0x1,%ecx
ffff800000104524:	48 63 c9             	movslq %ecx,%rcx
ffff800000104527:	48 01 c3             	add    %rax,%rbx
ffff80000010452a:	48 01 f9             	add    %rdi,%rcx
ffff80000010452d:	48 89 d8             	mov    %rbx,%rax
ffff800000104530:	0f b6 10             	movzbl (%rax),%edx
ffff800000104533:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104537:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010453b:	88 57 ff             	mov    %dl,-0x1(%rdi)
ffff80000010453e:	48 39 cf             	cmp    %rcx,%rdi
ffff800000104541:	75 ed                	jne    ffff800000104530 <number+0x410>
ffff800000104543:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff800000104546:	85 f6                	test   %esi,%esi
ffff800000104548:	0f 8e d6 00 00 00    	jle    ffff800000104624 <number+0x504>
ffff80000010454e:	48 89 c8             	mov    %rcx,%rax
ffff800000104551:	83 fa 0e             	cmp    $0xe,%edx
ffff800000104554:	0f 86 fc 01 00 00    	jbe    ffff800000104756 <number+0x636>
ffff80000010455a:	49 bc d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r12
ffff800000104561:	ff ff ff 
ffff800000104564:	89 f7                	mov    %esi,%edi
ffff800000104566:	c1 ef 04             	shr    $0x4,%edi
ffff800000104569:	66 43 0f 6f 04 14    	movdqa (%r12,%r10,1),%xmm0
ffff80000010456f:	48 c1 e7 04          	shl    $0x4,%rdi
ffff800000104573:	4c 8d 04 0f          	lea    (%rdi,%rcx,1),%r8
ffff800000104577:	83 e7 10             	and    $0x10,%edi
ffff80000010457a:	74 14                	je     ffff800000104590 <number+0x470>
ffff80000010457c:	48 8d 41 10          	lea    0x10(%rcx),%rax
ffff800000104580:	0f 11 01             	movups %xmm0,(%rcx)
ffff800000104583:	49 39 c0             	cmp    %rax,%r8
ffff800000104586:	74 18                	je     ffff8000001045a0 <number+0x480>
ffff800000104588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010458f:	00 
ffff800000104590:	0f 11 00             	movups %xmm0,(%rax)
ffff800000104593:	48 83 c0 20          	add    $0x20,%rax
ffff800000104597:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff80000010459b:	49 39 c0             	cmp    %rax,%r8
ffff80000010459e:	75 f0                	jne    ffff800000104590 <number+0x470>
ffff8000001045a0:	89 f7                	mov    %esi,%edi
ffff8000001045a2:	83 e7 f0             	and    $0xfffffff0,%edi
ffff8000001045a5:	89 f8                	mov    %edi,%eax
ffff8000001045a7:	29 fa                	sub    %edi,%edx
ffff8000001045a9:	48 01 c8             	add    %rcx,%rax
ffff8000001045ac:	39 fe                	cmp    %edi,%esi
ffff8000001045ae:	74 6e                	je     ffff80000010461e <number+0x4fe>
ffff8000001045b0:	41 89 f0             	mov    %esi,%r8d
ffff8000001045b3:	41 29 f8             	sub    %edi,%r8d
ffff8000001045b6:	45 8d 48 ff          	lea    -0x1(%r8),%r9d
ffff8000001045ba:	41 83 f9 06          	cmp    $0x6,%r9d
ffff8000001045be:	76 26                	jbe    ffff8000001045e6 <number+0x4c6>
ffff8000001045c0:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff8000001045c7:	ff ff ff 
ffff8000001045ca:	4f 8b 0c 0a          	mov    (%r10,%r9,1),%r9
ffff8000001045ce:	4c 89 0c 39          	mov    %r9,(%rcx,%rdi,1)
ffff8000001045d2:	44 89 c7             	mov    %r8d,%edi
ffff8000001045d5:	83 e7 f8             	and    $0xfffffff8,%edi
ffff8000001045d8:	41 89 f9             	mov    %edi,%r9d
ffff8000001045db:	29 fa                	sub    %edi,%edx
ffff8000001045dd:	4c 01 c8             	add    %r9,%rax
ffff8000001045e0:	41 83 e0 07          	and    $0x7,%r8d
ffff8000001045e4:	74 38                	je     ffff80000010461e <number+0x4fe>
ffff8000001045e6:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001045e9:	85 d2                	test   %edx,%edx
ffff8000001045eb:	7e 31                	jle    ffff80000010461e <number+0x4fe>
ffff8000001045ed:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff8000001045f1:	83 fa 01             	cmp    $0x1,%edx
ffff8000001045f4:	74 28                	je     ffff80000010461e <number+0x4fe>
ffff8000001045f6:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff8000001045fa:	83 fa 02             	cmp    $0x2,%edx
ffff8000001045fd:	74 1f                	je     ffff80000010461e <number+0x4fe>
ffff8000001045ff:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff800000104603:	83 fa 03             	cmp    $0x3,%edx
ffff800000104606:	74 16                	je     ffff80000010461e <number+0x4fe>
ffff800000104608:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff80000010460c:	83 fa 04             	cmp    $0x4,%edx
ffff80000010460f:	74 0d                	je     ffff80000010461e <number+0x4fe>
ffff800000104611:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff800000104615:	83 fa 05             	cmp    $0x5,%edx
ffff800000104618:	74 04                	je     ffff80000010461e <number+0x4fe>
ffff80000010461a:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff80000010461e:	48 63 f6             	movslq %esi,%rsi
ffff800000104621:	48 01 f1             	add    %rsi,%rcx
ffff800000104624:	5b                   	pop    %rbx
ffff800000104625:	48 89 c8             	mov    %rcx,%rax
ffff800000104628:	5d                   	pop    %rbp
ffff800000104629:	41 5c                	pop    %r12
ffff80000010462b:	41 5d                	pop    %r13
ffff80000010462d:	41 5e                	pop    %r14
ffff80000010462f:	41 5f                	pop    %r15
ffff800000104631:	c3                   	ret
ffff800000104632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104638:	44 89 c9             	mov    %r9d,%ecx
ffff80000010463b:	45 89 ce             	mov    %r9d,%r14d
ffff80000010463e:	45 89 cf             	mov    %r9d,%r15d
ffff800000104641:	83 e1 01             	and    $0x1,%ecx
ffff800000104644:	41 83 e6 11          	and    $0x11,%r14d
ffff800000104648:	83 f9 01             	cmp    $0x1,%ecx
ffff80000010464b:	19 ed                	sbb    %ebp,%ebp
ffff80000010464d:	83 e5 f0             	and    $0xfffffff0,%ebp
ffff800000104650:	83 c5 30             	add    $0x30,%ebp
ffff800000104653:	85 c9                	test   %ecx,%ecx
ffff800000104655:	44 0f 44 f3          	cmove  %ebx,%r14d
ffff800000104659:	41 83 e7 20          	and    $0x20,%r15d
ffff80000010465d:	41 f6 c1 02          	test   $0x2,%r9b
ffff800000104661:	0f 85 29 fb ff ff    	jne    ffff800000104190 <number+0x70>
ffff800000104667:	e9 2d fb ff ff       	jmp    ffff800000104199 <number+0x79>
ffff80000010466c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104670:	48 b9 90 c6 ff ff ff 	movabs $0xffffffffffffc690,%rcx
ffff800000104677:	ff ff ff 
ffff80000010467a:	c6 44 24 b3 78       	movb   $0x78,-0x4d(%rsp)
ffff80000010467f:	4d 8d 24 0a          	lea    (%r10,%rcx,1),%r12
ffff800000104683:	e9 dc fa ff ff       	jmp    ffff800000104164 <number+0x44>
ffff800000104688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010468f:	00 
ffff800000104690:	44 89 cb             	mov    %r9d,%ebx
ffff800000104693:	83 e3 08             	and    $0x8,%ebx
ffff800000104696:	88 5c 24 b2          	mov    %bl,-0x4e(%rsp)
ffff80000010469a:	0f 84 0b fb ff ff    	je     ffff8000001041ab <number+0x8b>
ffff8000001046a0:	c6 44 24 b2 20       	movb   $0x20,-0x4e(%rsp)
ffff8000001046a5:	e9 fe fa ff ff       	jmp    ffff8000001041a8 <number+0x88>
ffff8000001046aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001046b0:	c6 44 24 b2 2d       	movb   $0x2d,-0x4e(%rsp)
ffff8000001046b5:	48 f7 d8             	neg    %rax
ffff8000001046b8:	83 ee 01             	sub    $0x1,%esi
ffff8000001046bb:	45 85 ff             	test   %r15d,%r15d
ffff8000001046be:	0f 85 ec fa ff ff    	jne    ffff8000001041b0 <number+0x90>
ffff8000001046c4:	48 8d 4c 24 b8       	lea    -0x48(%rsp),%rcx
ffff8000001046c9:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
ffff8000001046ce:	48 63 da             	movslq %edx,%rbx
ffff8000001046d1:	45 31 c9             	xor    %r9d,%r9d
ffff8000001046d4:	48 89 4c 24 a8       	mov    %rcx,-0x58(%rsp)
ffff8000001046d9:	49 89 cb             	mov    %rcx,%r11
ffff8000001046dc:	45 31 ed             	xor    %r13d,%r13d
ffff8000001046df:	41 89 d7             	mov    %edx,%r15d
ffff8000001046e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001046e8:	44 89 ea             	mov    %r13d,%edx
ffff8000001046eb:	44 89 c9             	mov    %r9d,%ecx
ffff8000001046ee:	49 83 c3 01          	add    $0x1,%r11
ffff8000001046f2:	41 83 c1 01          	add    $0x1,%r9d
ffff8000001046f6:	48 f7 f3             	div    %rbx
ffff8000001046f9:	48 63 d2             	movslq %edx,%rdx
ffff8000001046fc:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
ffff800000104701:	41 88 53 ff          	mov    %dl,-0x1(%r11)
ffff800000104705:	48 85 c0             	test   %rax,%rax
ffff800000104708:	75 de                	jne    ffff8000001046e8 <number+0x5c8>
ffff80000010470a:	44 89 fa             	mov    %r15d,%edx
ffff80000010470d:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
ffff800000104712:	e9 d2 fa ff ff       	jmp    ffff8000001041e9 <number+0xc9>
ffff800000104717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010471e:	00 00 
ffff800000104720:	0f b6 44 24 b3       	movzbl -0x4d(%rsp),%eax
ffff800000104725:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104728:	48 83 c7 02          	add    $0x2,%rdi
ffff80000010472c:	88 47 ff             	mov    %al,-0x1(%rdi)
ffff80000010472f:	e9 dc fb ff ff       	jmp    ffff800000104310 <number+0x1f0>
ffff800000104734:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104738:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010473b:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010473f:	e9 cc fb ff ff       	jmp    ffff800000104310 <number+0x1f0>
ffff800000104744:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104748:	83 ee 02             	sub    $0x2,%esi
ffff80000010474b:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff800000104751:	e9 73 fa ff ff       	jmp    ffff8000001041c9 <number+0xa9>
ffff800000104756:	31 ff                	xor    %edi,%edi
ffff800000104758:	e9 53 fe ff ff       	jmp    ffff8000001045b0 <number+0x490>
ffff80000010475d:	45 31 db             	xor    %r11d,%r11d
ffff800000104760:	e9 2d fd ff ff       	jmp    ffff800000104492 <number+0x372>
ffff800000104765:	89 d6                	mov    %edx,%esi
ffff800000104767:	e9 a5 fc ff ff       	jmp    ffff800000104411 <number+0x2f1>
ffff80000010476c:	44 89 de             	mov    %r11d,%esi
ffff80000010476f:	e9 76 fb ff ff       	jmp    ffff8000001042ea <number+0x1ca>
ffff800000104774:	31 db                	xor    %ebx,%ebx
ffff800000104776:	e9 ee fa ff ff       	jmp    ffff800000104269 <number+0x149>
ffff80000010477b:	48 89 fb             	mov    %rdi,%rbx
ffff80000010477e:	45 31 db             	xor    %r11d,%r11d
ffff800000104781:	e9 0f fc ff ff       	jmp    ffff800000104395 <number+0x275>
ffff800000104786:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010478d:	00 00 00 

ffff800000104790 <putchar>:
ffff800000104790:	f3 0f 1e fa          	endbr64
ffff800000104794:	41 57                	push   %r15
ffff800000104796:	4c 63 d2             	movslq %edx,%r10
ffff800000104799:	49 bb 6c 89 00 00 00 	movabs $0x896c,%r11
ffff8000001047a0:	00 00 00 
ffff8000001047a3:	48 8d 05 ea ff ff ff 	lea    -0x16(%rip),%rax        # ffff800000104794 <putchar+0x4>
ffff8000001047aa:	48 ba 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdx
ffff8000001047b1:	ff ff ff 
ffff8000001047b4:	41 56                	push   %r14
ffff8000001047b6:	4c 01 d8             	add    %r11,%rax
ffff8000001047b9:	41 bb 1f 00 00 00    	mov    $0x1f,%r11d
ffff8000001047bf:	41 55                	push   %r13
ffff8000001047c1:	41 54                	push   %r12
ffff8000001047c3:	4c 8d 24 10          	lea    (%rax,%rdx,1),%r12
ffff8000001047c7:	55                   	push   %rbp
ffff8000001047c8:	53                   	push   %rbx
ffff8000001047c9:	48 63 de             	movslq %esi,%rbx
ffff8000001047cc:	89 ce                	mov    %ecx,%esi
ffff8000001047ce:	0f af f3             	imul   %ebx,%esi
ffff8000001047d1:	48 8d 0c 9d 00 00 00 	lea    0x0(,%rbx,4),%rcx
ffff8000001047d8:	00 
ffff8000001047d9:	48 83 ec 58          	sub    $0x58,%rsp
ffff8000001047dd:	48 63 f6             	movslq %esi,%rsi
ffff8000001047e0:	0f b6 ac 24 90 00 00 	movzbl 0x90(%rsp),%ebp
ffff8000001047e7:	00 
ffff8000001047e8:	4c 01 d6             	add    %r10,%rsi
ffff8000001047eb:	4c 8d 14 b5 00 00 00 	lea    0x0(,%rsi,4),%r10
ffff8000001047f2:	00 
ffff8000001047f3:	48 89 de             	mov    %rbx,%rsi
ffff8000001047f6:	48 c1 e5 04          	shl    $0x4,%rbp
ffff8000001047fa:	48 c1 e6 04          	shl    $0x4,%rsi
ffff8000001047fe:	4a 8d 54 25 00       	lea    0x0(%rbp,%r12,1),%rdx
ffff800000104803:	4d 8d 64 2c 0f       	lea    0xf(%r12,%rbp,1),%r12
ffff800000104808:	31 ed                	xor    %ebp,%ebp
ffff80000010480a:	48 29 de             	sub    %rbx,%rsi
ffff80000010480d:	48 c1 e6 02          	shl    $0x2,%rsi
ffff800000104811:	85 db                	test   %ebx,%ebx
ffff800000104813:	48 0f 48 ee          	cmovs  %rsi,%rbp
ffff800000104817:	4c 01 d5             	add    %r10,%rbp
ffff80000010481a:	48 01 fd             	add    %rdi,%rbp
ffff80000010481d:	49 39 ec             	cmp    %rbp,%r12
ffff800000104820:	40 0f 92 c5          	setb   %bpl
ffff800000104824:	48 83 c6 1f          	add    $0x1f,%rsi
ffff800000104828:	85 db                	test   %ebx,%ebx
ffff80000010482a:	49 0f 48 f3          	cmovs  %r11,%rsi
ffff80000010482e:	4c 01 d6             	add    %r10,%rsi
ffff800000104831:	48 01 fe             	add    %rdi,%rsi
ffff800000104834:	48 39 d6             	cmp    %rdx,%rsi
ffff800000104837:	40 0f 92 c6          	setb   %sil
ffff80000010483b:	40 08 ee             	or     %bpl,%sil
ffff80000010483e:	0f 84 69 0a 00 00    	je     ffff8000001052ad <putchar+0xb1d>
ffff800000104844:	48 8d 71 1f          	lea    0x1f(%rcx),%rsi
ffff800000104848:	48 83 fe 3e          	cmp    $0x3e,%rsi
ffff80000010484c:	0f 86 5b 0a 00 00    	jbe    ffff8000001052ad <putchar+0xb1d>
ffff800000104852:	66 41 0f 6e c0       	movd   %r8d,%xmm0
ffff800000104857:	48 c1 e3 05          	shl    $0x5,%rbx
ffff80000010485b:	48 89 d6             	mov    %rdx,%rsi
ffff80000010485e:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
ffff800000104863:	66 44 0f 70 e0 e0    	pshufd $0xe0,%xmm0,%xmm12
ffff800000104869:	66 41 0f 6e c1       	movd   %r9d,%xmm0
ffff80000010486e:	49 89 d9             	mov    %rbx,%r9
ffff800000104871:	4a 8d 1c 17          	lea    (%rdi,%r10,1),%rbx
ffff800000104875:	66 44 0f 70 d8 e0    	pshufd $0xe0,%xmm0,%xmm11
ffff80000010487b:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000104880:	48 8d 2c 0b          	lea    (%rbx,%rcx,1),%rbp
ffff800000104884:	4c 8d 64 0d 00       	lea    0x0(%rbp,%rcx,1),%r12
ffff800000104889:	4d 8d 2c 0c          	lea    (%r12,%rcx,1),%r13
ffff80000010488d:	4d 8d 74 0d 00       	lea    0x0(%r13,%rcx,1),%r14
ffff800000104892:	4d 8d 3c 0e          	lea    (%r14,%rcx,1),%r15
ffff800000104896:	4d 8d 04 0f          	lea    (%r15,%rcx,1),%r8
ffff80000010489a:	49 8d 3c 08          	lea    (%r8,%rcx,1),%rdi
ffff80000010489e:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
ffff8000001048a2:	48 ba f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rdx
ffff8000001048a9:	ff ff ff 
ffff8000001048ac:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048b0:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
ffff8000001048b5:	48 ba d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rdx
ffff8000001048bc:	ff ff ff 
ffff8000001048bf:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048c3:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
ffff8000001048c8:	48 ba 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%rdx
ffff8000001048cf:	ff ff ff 
ffff8000001048d2:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048d6:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
ffff8000001048db:	48 ba 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%rdx
ffff8000001048e2:	ff ff ff 
ffff8000001048e5:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048e9:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
ffff8000001048ee:	48 ba 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%rdx
ffff8000001048f5:	ff ff ff 
ffff8000001048f8:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff8000001048fc:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
ffff800000104901:	48 ba 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%rdx
ffff800000104908:	ff ff ff 
ffff80000010490b:	48 8b 14 02          	mov    (%rdx,%rax,1),%rdx
ffff80000010490f:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
ffff800000104914:	48 ba 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%rdx
ffff80000010491b:	ff ff ff 
ffff80000010491e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000104922:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
ffff800000104927:	f3 0f 7e 06          	movq   (%rsi),%xmm0
ffff80000010492b:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000104930:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
ffff800000104935:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010493a:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff80000010493f:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
ffff800000104945:	48 83 c6 08          	add    $0x8,%rsi
ffff800000104949:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff80000010494e:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000104952:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff800000104957:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff80000010495c:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
ffff800000104963:	66 0f db e8          	pand   %xmm0,%xmm5
ffff800000104967:	66 45 0f 6f fa       	movdqa %xmm10,%xmm15
ffff80000010496c:	66 44 0f db f0       	pand   %xmm0,%xmm14
ffff800000104971:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
ffff800000104975:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000104979:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
ffff80000010497d:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
ffff800000104981:	66 0f 65 de          	pcmpgtw %xmm6,%xmm3
ffff800000104985:	66 0f 6f d6          	movdqa %xmm6,%xmm2
ffff800000104989:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010498e:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff800000104992:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000104996:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010499b:	66 0f db e2          	pand   %xmm2,%xmm4
ffff80000010499f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff8000001049a4:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff8000001049a9:	66 0f eb d4          	por    %xmm4,%xmm2
ffff8000001049ad:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff8000001049b1:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff8000001049b6:	66 48 0f 7e d2       	movq   %xmm2,%rdx
ffff8000001049bb:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff8000001049c0:	66 0f db d6          	pand   %xmm6,%xmm2
ffff8000001049c4:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff8000001049c9:	89 13                	mov    %edx,(%rbx)
ffff8000001049cb:	66 0f eb f2          	por    %xmm2,%xmm6
ffff8000001049cf:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff8000001049d3:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff8000001049d7:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff8000001049db:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001049e0:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff8000001049e5:	66 0f db e2          	pand   %xmm2,%xmm4
ffff8000001049e9:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff8000001049ee:	66 0f eb d4          	por    %xmm4,%xmm2
ffff8000001049f2:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff8000001049f7:	66 48 0f 7e d0       	movq   %xmm2,%rax
ffff8000001049fc:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff800000104a01:	66 0f db d1          	pand   %xmm1,%xmm2
ffff800000104a05:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104a0a:	66 0f eb ca          	por    %xmm2,%xmm1
ffff800000104a0e:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
ffff800000104a14:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff800000104a18:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104a1d:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104a22:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104a27:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
ffff800000104a2b:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff800000104a2f:	66 0f 60 d3          	punpcklbw %xmm3,%xmm2
ffff800000104a33:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104a37:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
ffff800000104a3b:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000104a3f:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104a44:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104a48:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000104a4c:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104a51:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104a56:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000104a5a:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104a5f:	66 0f db fa          	pand   %xmm2,%xmm7
ffff800000104a63:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104a68:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000104a6c:	66 0f eb d7          	por    %xmm7,%xmm2
ffff800000104a70:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000104a75:	66 0f d6 5c 24 90    	movq   %xmm3,-0x70(%rsp)
ffff800000104a7b:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000104a7f:	66 0f 65 f9          	pcmpgtw %xmm1,%xmm7
ffff800000104a83:	66 0f d6 54 24 98    	movq   %xmm2,-0x68(%rsp)
ffff800000104a89:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104a8d:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104a92:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000104a96:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104a9a:	66 0f 6f d5          	movdqa %xmm5,%xmm2
ffff800000104a9e:	66 0f db e5          	pand   %xmm5,%xmm4
ffff800000104aa2:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104aa7:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104aac:	66 0f db f9          	pand   %xmm1,%xmm7
ffff800000104ab0:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104ab5:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104ab9:	66 0f 6f d7          	movdqa %xmm7,%xmm2
ffff800000104abd:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000104ac1:	66 0f eb ec          	por    %xmm4,%xmm5
ffff800000104ac5:	f3 0f 7e 64 24 28    	movq   0x28(%rsp),%xmm4
ffff800000104acb:	66 0f eb fa          	por    %xmm2,%xmm7
ffff800000104acf:	66 0f d6 6c 24 a0    	movq   %xmm5,-0x60(%rsp)
ffff800000104ad5:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104ada:	66 0f db e0          	pand   %xmm0,%xmm4
ffff800000104ade:	66 0f d6 7c 24 a8    	movq   %xmm7,-0x58(%rsp)
ffff800000104ae4:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
ffff800000104aea:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff800000104aee:	66 41 0f 6f e2       	movdqa %xmm10,%xmm4
ffff800000104af3:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104af8:	66 0f db f8          	pand   %xmm0,%xmm7
ffff800000104afc:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104b01:	66 0f 64 e1          	pcmpgtb %xmm1,%xmm4
ffff800000104b05:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104b09:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104b0d:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000104b11:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104b15:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104b19:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104b1e:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104b23:	66 0f 65 e2          	pcmpgtw %xmm2,%xmm4
ffff800000104b27:	66 44 0f 65 c1       	pcmpgtw %xmm1,%xmm8
ffff800000104b2c:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000104b30:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000104b34:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104b38:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104b3d:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000104b41:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104b46:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104b4b:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000104b4f:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104b53:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104b58:	66 0f d6 5c 24 b0    	movq   %xmm3,-0x50(%rsp)
ffff800000104b5e:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104b62:	66 0f 6f e2          	movdqa %xmm2,%xmm4
ffff800000104b66:	66 0f 6f d1          	movdqa %xmm1,%xmm2
ffff800000104b6a:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000104b6e:	66 41 0f 6f d8       	movdqa %xmm8,%xmm3
ffff800000104b73:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104b78:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104b7c:	66 0f 61 d3          	punpcklwd %xmm3,%xmm2
ffff800000104b80:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
ffff800000104b86:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104b8b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104b90:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104b94:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104b99:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff800000104b9e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104ba3:	66 0f eb d4          	por    %xmm4,%xmm2
ffff800000104ba7:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff800000104bac:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104bb1:	66 0f d6 54 24 c0    	movq   %xmm2,-0x40(%rsp)
ffff800000104bb7:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
ffff800000104bbd:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
ffff800000104bc2:	66 45 0f 6f f4       	movdqa %xmm12,%xmm14
ffff800000104bc7:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104bcc:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104bd1:	66 44 0f 64 f9       	pcmpgtb %xmm1,%xmm15
ffff800000104bd6:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff800000104bdb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000104be0:	66 45 0f 6f f9       	movdqa %xmm9,%xmm15
ffff800000104be5:	66 44 0f 60 c3       	punpcklbw %xmm3,%xmm8
ffff800000104bea:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104bee:	66 41 0f 65 e0       	pcmpgtw %xmm8,%xmm4
ffff800000104bf3:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
ffff800000104bf8:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104bfd:	66 45 0f 6f e8       	movdqa %xmm8,%xmm13
ffff800000104c02:	66 44 0f 65 f9       	pcmpgtw %xmm1,%xmm15
ffff800000104c07:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104c0b:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff800000104c10:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104c15:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104c1a:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000104c1f:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff800000104c24:	66 44 0f db f2       	pand   %xmm2,%xmm14
ffff800000104c29:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104c2e:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104c33:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000104c38:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff800000104c3d:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000104c42:	66 45 0f eb ee       	por    %xmm14,%xmm13
ffff800000104c47:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff800000104c4c:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104c50:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000104c55:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104c5a:	66 45 0f 6f fc       	movdqa %xmm12,%xmm15
ffff800000104c5f:	66 44 0f d6 6c 24 d8 	movq   %xmm13,-0x28(%rsp)
ffff800000104c66:	66 41 0f 6f d6       	movdqa %xmm14,%xmm2
ffff800000104c6b:	66 44 0f db f9       	pand   %xmm1,%xmm15
ffff800000104c70:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104c75:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104c7a:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000104c7f:	66 44 0f eb c5       	por    %xmm5,%xmm8
ffff800000104c84:	66 44 0f 6f f2       	movdqa %xmm2,%xmm14
ffff800000104c89:	66 41 0f 6f d7       	movdqa %xmm15,%xmm2
ffff800000104c8e:	66 44 0f 6f f9       	movdqa %xmm1,%xmm15
ffff800000104c93:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
ffff800000104c9a:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff800000104c9e:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000104ca3:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000104ca8:	f3 44 0f 7e 44 24 40 	movq   0x40(%rsp),%xmm8
ffff800000104caf:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104cb4:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104cb9:	66 44 0f eb fa       	por    %xmm2,%xmm15
ffff800000104cbe:	66 44 0f d6 74 24 e0 	movq   %xmm14,-0x20(%rsp)
ffff800000104cc5:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000104cca:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
ffff800000104cd1:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104cd6:	66 44 0f d6 7c 24 e8 	movq   %xmm15,-0x18(%rsp)
ffff800000104cdd:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104ce2:	66 44 0f db f0       	pand   %xmm0,%xmm14
ffff800000104ce7:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
ffff800000104ceb:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000104cef:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104cf3:	66 0f 60 eb          	punpcklbw %xmm3,%xmm5
ffff800000104cf7:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104cfb:	66 0f 65 e5          	pcmpgtw %xmm5,%xmm4
ffff800000104cff:	66 0f 6f fd          	movdqa %xmm5,%xmm7
ffff800000104d03:	66 0f 6f d5          	movdqa %xmm5,%xmm2
ffff800000104d07:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104d0c:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104d11:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
ffff800000104d15:	66 0f 61 d4          	punpcklwd %xmm4,%xmm2
ffff800000104d19:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff800000104d1e:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff800000104d22:	66 0f db ef          	pand   %xmm7,%xmm5
ffff800000104d26:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104d2b:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104d30:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff800000104d34:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000104d38:	66 0f eb fd          	por    %xmm5,%xmm7
ffff800000104d3c:	66 41 0f 6f ec       	movdqa %xmm12,%xmm5
ffff800000104d41:	66 0f db ea          	pand   %xmm2,%xmm5
ffff800000104d45:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104d4a:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
ffff800000104d50:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104d55:	66 0f 6f dd          	movdqa %xmm5,%xmm3
ffff800000104d59:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104d5d:	66 0f eb eb          	por    %xmm3,%xmm5
ffff800000104d61:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000104d65:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104d69:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000104d6d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104d71:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
ffff800000104d77:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104d7c:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104d80:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104d85:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104d8a:	66 0f db e2          	pand   %xmm2,%xmm4
ffff800000104d8e:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104d93:	66 0f eb d4          	por    %xmm4,%xmm2
ffff800000104d97:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104d9c:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000104da0:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104da5:	66 0f d6 14 24       	movq   %xmm2,(%rsp)
ffff800000104daa:	66 0f 6f d4          	movdqa %xmm4,%xmm2
ffff800000104dae:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104db2:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000104db7:	66 0f eb e2          	por    %xmm2,%xmm4
ffff800000104dbb:	66 41 0f 6f d0       	movdqa %xmm8,%xmm2
ffff800000104dc0:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff800000104dc5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
ffff800000104dca:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
ffff800000104dd0:	66 41 0f 6f e4       	movdqa %xmm12,%xmm4
ffff800000104dd5:	66 41 0f 74 d2       	pcmpeqb %xmm10,%xmm2
ffff800000104dda:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff800000104dde:	66 0f 6f ea          	movdqa %xmm2,%xmm5
ffff800000104de2:	66 0f 60 e9          	punpcklbw %xmm1,%xmm5
ffff800000104de6:	66 0f 60 d1          	punpcklbw %xmm1,%xmm2
ffff800000104dea:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000104dee:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104df3:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff800000104df7:	66 44 0f 65 c2       	pcmpgtw %xmm2,%xmm8
ffff800000104dfc:	66 44 0f 6f fa       	movdqa %xmm2,%xmm15
ffff800000104e01:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104e05:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000104e09:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104e0e:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000104e12:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104e17:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000104e1c:	66 0f eb cc          	por    %xmm4,%xmm1
ffff800000104e20:	66 44 0f db ed       	pand   %xmm5,%xmm13
ffff800000104e25:	66 41 0f df eb       	pandn  %xmm11,%xmm5
ffff800000104e2a:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
ffff800000104e30:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000104e35:	f3 44 0f 7e 44 24 50 	movq   0x50(%rsp),%xmm8
ffff800000104e3c:	66 41 0f eb ed       	por    %xmm13,%xmm5
ffff800000104e41:	66 44 0f 61 f9       	punpcklwd %xmm1,%xmm15
ffff800000104e46:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
ffff800000104e4a:	66 41 0f 6f ce       	movdqa %xmm14,%xmm1
ffff800000104e4f:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104e54:	66 41 0f db df       	pand   %xmm15,%xmm3
ffff800000104e59:	66 45 0f df fb       	pandn  %xmm11,%xmm15
ffff800000104e5e:	66 44 0f eb fb       	por    %xmm3,%xmm15
ffff800000104e63:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff800000104e68:	66 41 0f db c0       	pand   %xmm8,%xmm0
ffff800000104e6d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000104e72:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000104e77:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104e7c:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000104e81:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff800000104e86:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000104e8b:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff800000104e90:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000104e95:	66 0f 64 d9          	pcmpgtb %xmm1,%xmm3
ffff800000104e99:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000104e9d:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000104ea1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000104ea5:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104eaa:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000104eae:	66 44 0f 6f f4       	movdqa %xmm4,%xmm14
ffff800000104eb3:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104eb8:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000104ebd:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000104ec1:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000104ec6:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104ecb:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000104ed0:	66 41 0f db fe       	pand   %xmm14,%xmm7
ffff800000104ed5:	66 45 0f df f3       	pandn  %xmm11,%xmm14
ffff800000104eda:	66 0f db dc          	pand   %xmm4,%xmm3
ffff800000104ede:	66 41 0f df e3       	pandn  %xmm11,%xmm4
ffff800000104ee3:	66 44 0f eb f7       	por    %xmm7,%xmm14
ffff800000104ee8:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000104eec:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000104ef1:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104ef6:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff800000104efa:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
ffff800000104eff:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000104f03:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000104f08:	66 41 0f db fd       	pand   %xmm13,%xmm7
ffff800000104f0d:	66 45 0f df eb       	pandn  %xmm11,%xmm13
ffff800000104f12:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000104f17:	66 44 0f eb ef       	por    %xmm7,%xmm13
ffff800000104f1c:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000104f21:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000104f25:	66 0f 64 f8          	pcmpgtb %xmm0,%xmm7
ffff800000104f29:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000104f2e:	66 44 0f d6 6c 24 18 	movq   %xmm13,0x18(%rsp)
ffff800000104f35:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104f3a:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000104f3e:	66 0f 6f d8          	movdqa %xmm0,%xmm3
ffff800000104f42:	66 0f 60 df          	punpcklbw %xmm7,%xmm3
ffff800000104f46:	66 0f 60 c7          	punpcklbw %xmm7,%xmm0
ffff800000104f4a:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000104f4f:	66 0f 65 fb          	pcmpgtw %xmm3,%xmm7
ffff800000104f53:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff800000104f58:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000104f5d:	66 44 0f 61 c7       	punpcklwd %xmm7,%xmm8
ffff800000104f62:	66 0f 61 df          	punpcklwd %xmm7,%xmm3
ffff800000104f66:	66 41 0f 6f fc       	movdqa %xmm12,%xmm7
ffff800000104f6b:	66 45 0f db e8       	pand   %xmm8,%xmm13
ffff800000104f70:	66 45 0f df c3       	pandn  %xmm11,%xmm8
ffff800000104f75:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000104f7a:	66 45 0f eb c5       	por    %xmm13,%xmm8
ffff800000104f7f:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff800000104f84:	66 0f db fb          	pand   %xmm3,%xmm7
ffff800000104f88:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
ffff800000104f8d:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000104f92:	66 0f eb df          	por    %xmm7,%xmm3
ffff800000104f96:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000104f9a:	66 41 0f 61 fd       	punpcklwd %xmm13,%xmm7
ffff800000104f9f:	66 4d 0f 7e ea       	movq   %xmm13,%r10
ffff800000104fa4:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104fa9:	66 44 0f db ef       	pand   %xmm7,%xmm13
ffff800000104fae:	66 41 0f df fb       	pandn  %xmm11,%xmm7
ffff800000104fb3:	66 41 0f eb fd       	por    %xmm13,%xmm7
ffff800000104fb8:	66 4d 0f 6e ea       	movq   %r10,%xmm13
ffff800000104fbd:	66 41 0f 61 c5       	punpcklwd %xmm13,%xmm0
ffff800000104fc2:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000104fc7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000104fcc:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff800000104fd1:	66 41 0f df c3       	pandn  %xmm11,%xmm0
ffff800000104fd6:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff800000104fdb:	66 4c 0f 6e ea       	movq   %rdx,%xmm13
ffff800000104fe0:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
ffff800000104fe6:	66 44 0f 7e 6d 00    	movd   %xmm13,0x0(%rbp)
ffff800000104fec:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000104ff2:	66 41 0f 7e 34 24    	movd   %xmm6,(%r12)
ffff800000104ff8:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
ffff800000104ffe:	66 4c 0f 6e e8       	movq   %rax,%xmm13
ffff800000105003:	41 89 06             	mov    %eax,(%r14)
ffff800000105006:	66 45 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm13
ffff80000010500c:	66 45 0f 7e 2f       	movd   %xmm13,(%r15)
ffff800000105011:	f3 0f 7e 74 24 88    	movq   -0x78(%rsp),%xmm6
ffff800000105017:	66 41 0f 7e 30       	movd   %xmm6,(%r8)
ffff80000010501c:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105022:	f3 0f 7e 74 24 90    	movq   -0x70(%rsp),%xmm6
ffff800000105028:	66 44 0f 7e 2f       	movd   %xmm13,(%rdi)
ffff80000010502d:	66 0f 7e 73 04       	movd   %xmm6,0x4(%rbx)
ffff800000105032:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105038:	f3 0f 7e 74 24 98    	movq   -0x68(%rsp),%xmm6
ffff80000010503e:	66 44 0f 7e 6d 04    	movd   %xmm13,0x4(%rbp)
ffff800000105044:	66 41 0f 7e 74 24 04 	movd   %xmm6,0x4(%r12)
ffff80000010504b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105051:	f3 0f 7e 74 24 a0    	movq   -0x60(%rsp),%xmm6
ffff800000105057:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
ffff80000010505d:	66 41 0f 7e 76 04    	movd   %xmm6,0x4(%r14)
ffff800000105063:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105069:	f3 0f 7e 74 24 a8    	movq   -0x58(%rsp),%xmm6
ffff80000010506f:	66 45 0f 7e 6f 04    	movd   %xmm13,0x4(%r15)
ffff800000105075:	66 41 0f 7e 70 04    	movd   %xmm6,0x4(%r8)
ffff80000010507b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105081:	f3 0f 7e 74 24 b0    	movq   -0x50(%rsp),%xmm6
ffff800000105087:	66 44 0f 7e 6f 04    	movd   %xmm13,0x4(%rdi)
ffff80000010508d:	66 0f 7e 73 08       	movd   %xmm6,0x8(%rbx)
ffff800000105092:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105098:	f3 0f 7e 74 24 b8    	movq   -0x48(%rsp),%xmm6
ffff80000010509e:	66 44 0f 7e 6d 08    	movd   %xmm13,0x8(%rbp)
ffff8000001050a4:	66 41 0f 7e 74 24 08 	movd   %xmm6,0x8(%r12)
ffff8000001050ab:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050b1:	f3 0f 7e 74 24 c0    	movq   -0x40(%rsp),%xmm6
ffff8000001050b7:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
ffff8000001050bd:	66 41 0f 7e 76 08    	movd   %xmm6,0x8(%r14)
ffff8000001050c3:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050c9:	f3 0f 7e 74 24 c8    	movq   -0x38(%rsp),%xmm6
ffff8000001050cf:	66 45 0f 7e 6f 08    	movd   %xmm13,0x8(%r15)
ffff8000001050d5:	66 41 0f 7e 70 08    	movd   %xmm6,0x8(%r8)
ffff8000001050db:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050e1:	f3 0f 7e 74 24 d0    	movq   -0x30(%rsp),%xmm6
ffff8000001050e7:	66 44 0f 7e 6f 08    	movd   %xmm13,0x8(%rdi)
ffff8000001050ed:	66 0f 7e 73 0c       	movd   %xmm6,0xc(%rbx)
ffff8000001050f2:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001050f8:	f3 0f 7e 74 24 d8    	movq   -0x28(%rsp),%xmm6
ffff8000001050fe:	66 44 0f 7e 6d 0c    	movd   %xmm13,0xc(%rbp)
ffff800000105104:	66 41 0f 7e 74 24 0c 	movd   %xmm6,0xc(%r12)
ffff80000010510b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105111:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
ffff800000105117:	f3 0f 7e 74 24 e0    	movq   -0x20(%rsp),%xmm6
ffff80000010511d:	66 41 0f 7e 76 0c    	movd   %xmm6,0xc(%r14)
ffff800000105123:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105129:	f3 0f 7e 74 24 e8    	movq   -0x18(%rsp),%xmm6
ffff80000010512f:	66 45 0f 7e 6f 0c    	movd   %xmm13,0xc(%r15)
ffff800000105135:	66 41 0f 7e 70 0c    	movd   %xmm6,0xc(%r8)
ffff80000010513b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105141:	f3 0f 7e 74 24 f0    	movq   -0x10(%rsp),%xmm6
ffff800000105147:	66 44 0f 7e 6f 0c    	movd   %xmm13,0xc(%rdi)
ffff80000010514d:	66 0f 7e 73 10       	movd   %xmm6,0x10(%rbx)
ffff800000105152:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105158:	f3 0f 7e 74 24 f8    	movq   -0x8(%rsp),%xmm6
ffff80000010515e:	66 44 0f 7e 6d 10    	movd   %xmm13,0x10(%rbp)
ffff800000105164:	66 41 0f 7e 74 24 10 	movd   %xmm6,0x10(%r12)
ffff80000010516b:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105171:	f3 0f 7e 34 24       	movq   (%rsp),%xmm6
ffff800000105176:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
ffff80000010517c:	66 41 0f 7e 76 10    	movd   %xmm6,0x10(%r14)
ffff800000105182:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff800000105188:	f3 0f 7e 74 24 08    	movq   0x8(%rsp),%xmm6
ffff80000010518e:	66 45 0f 7e 6f 10    	movd   %xmm13,0x10(%r15)
ffff800000105194:	66 41 0f 7e 70 10    	movd   %xmm6,0x10(%r8)
ffff80000010519a:	66 44 0f 70 ee e5    	pshufd $0xe5,%xmm6,%xmm13
ffff8000001051a0:	f3 0f 7e 74 24 10    	movq   0x10(%rsp),%xmm6
ffff8000001051a6:	66 44 0f 7e 6f 10    	movd   %xmm13,0x10(%rdi)
ffff8000001051ac:	66 0f 7e 73 14       	movd   %xmm6,0x14(%rbx)
ffff8000001051b1:	66 0f 70 f6 e5       	pshufd $0xe5,%xmm6,%xmm6
ffff8000001051b6:	66 0f 7e 75 14       	movd   %xmm6,0x14(%rbp)
ffff8000001051bb:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
ffff8000001051c2:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001051c7:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
ffff8000001051cd:	66 41 0f 70 ef e5    	pshufd $0xe5,%xmm15,%xmm5
ffff8000001051d3:	66 45 0f 7e 7e 14    	movd   %xmm15,0x14(%r14)
ffff8000001051d9:	66 41 0f 7e 6f 14    	movd   %xmm5,0x14(%r15)
ffff8000001051df:	66 0f 70 ea e5       	pshufd $0xe5,%xmm2,%xmm5
ffff8000001051e4:	66 41 0f 7e 50 14    	movd   %xmm2,0x14(%r8)
ffff8000001051ea:	66 0f 7e 6f 14       	movd   %xmm5,0x14(%rdi)
ffff8000001051ef:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
ffff8000001051f5:	66 44 0f 7e 73 18    	movd   %xmm14,0x18(%rbx)
ffff8000001051fb:	66 0f 7e 6d 18       	movd   %xmm5,0x18(%rbp)
ffff800000105200:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000105205:	66 41 0f 7e 64 24 18 	movd   %xmm4,0x18(%r12)
ffff80000010520c:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
ffff800000105212:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff800000105218:	66 41 0f 7e 6e 18    	movd   %xmm5,0x18(%r14)
ffff80000010521e:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105223:	66 41 0f 7e 6f 18    	movd   %xmm5,0x18(%r15)
ffff800000105229:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff80000010522e:	66 41 0f 7e 48 18    	movd   %xmm1,0x18(%r8)
ffff800000105234:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
ffff800000105239:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff80000010523f:	66 44 0f 7e 43 1c    	movd   %xmm8,0x1c(%rbx)
ffff800000105245:	4c 01 cb             	add    %r9,%rbx
ffff800000105248:	66 0f 7e 6d 1c       	movd   %xmm5,0x1c(%rbp)
ffff80000010524d:	66 0f 70 eb e5       	pshufd $0xe5,%xmm3,%xmm5
ffff800000105252:	4c 01 cd             	add    %r9,%rbp
ffff800000105255:	66 41 0f 7e 5c 24 1c 	movd   %xmm3,0x1c(%r12)
ffff80000010525c:	4d 01 cc             	add    %r9,%r12
ffff80000010525f:	66 41 0f 7e 6d 1c    	movd   %xmm5,0x1c(%r13)
ffff800000105265:	4d 01 cd             	add    %r9,%r13
ffff800000105268:	66 41 0f 7e 7e 1c    	movd   %xmm7,0x1c(%r14)
ffff80000010526e:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000105273:	4d 01 ce             	add    %r9,%r14
ffff800000105276:	66 41 0f 7e 7f 1c    	movd   %xmm7,0x1c(%r15)
ffff80000010527c:	4d 01 cf             	add    %r9,%r15
ffff80000010527f:	66 41 0f 7e 40 1c    	movd   %xmm0,0x1c(%r8)
ffff800000105285:	66 0f 70 c0 e5       	pshufd $0xe5,%xmm0,%xmm0
ffff80000010528a:	4d 01 c8             	add    %r9,%r8
ffff80000010528d:	66 0f 7e 47 1c       	movd   %xmm0,0x1c(%rdi)
ffff800000105292:	4c 01 cf             	add    %r9,%rdi
ffff800000105295:	48 39 ce             	cmp    %rcx,%rsi
ffff800000105298:	0f 85 89 f6 ff ff    	jne    ffff800000104927 <putchar+0x197>
ffff80000010529e:	48 83 c4 58          	add    $0x58,%rsp
ffff8000001052a2:	5b                   	pop    %rbx
ffff8000001052a3:	5d                   	pop    %rbp
ffff8000001052a4:	41 5c                	pop    %r12
ffff8000001052a6:	41 5d                	pop    %r13
ffff8000001052a8:	41 5e                	pop    %r14
ffff8000001052aa:	41 5f                	pop    %r15
ffff8000001052ac:	c3                   	ret
ffff8000001052ad:	4a 8d 04 17          	lea    (%rdi,%r10,1),%rax
ffff8000001052b1:	48 8d 7a 10          	lea    0x10(%rdx),%rdi
ffff8000001052b5:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff8000001052b8:	44 89 c6             	mov    %r8d,%esi
ffff8000001052bb:	41 0f 49 f1          	cmovns %r9d,%esi
ffff8000001052bf:	89 30                	mov    %esi,(%rax)
ffff8000001052c1:	44 89 c6             	mov    %r8d,%esi
ffff8000001052c4:	f6 02 40             	testb  $0x40,(%rdx)
ffff8000001052c7:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052cb:	89 70 04             	mov    %esi,0x4(%rax)
ffff8000001052ce:	44 89 c6             	mov    %r8d,%esi
ffff8000001052d1:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001052d4:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052d8:	89 70 08             	mov    %esi,0x8(%rax)
ffff8000001052db:	44 89 c6             	mov    %r8d,%esi
ffff8000001052de:	f6 02 10             	testb  $0x10,(%rdx)
ffff8000001052e1:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052e5:	89 70 0c             	mov    %esi,0xc(%rax)
ffff8000001052e8:	44 89 c6             	mov    %r8d,%esi
ffff8000001052eb:	f6 02 08             	testb  $0x8,(%rdx)
ffff8000001052ee:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052f2:	89 70 10             	mov    %esi,0x10(%rax)
ffff8000001052f5:	44 89 c6             	mov    %r8d,%esi
ffff8000001052f8:	f6 02 04             	testb  $0x4,(%rdx)
ffff8000001052fb:	41 0f 44 f1          	cmove  %r9d,%esi
ffff8000001052ff:	89 70 14             	mov    %esi,0x14(%rax)
ffff800000105302:	44 89 c6             	mov    %r8d,%esi
ffff800000105305:	f6 02 02             	testb  $0x2,(%rdx)
ffff800000105308:	41 0f 44 f1          	cmove  %r9d,%esi
ffff80000010530c:	89 70 18             	mov    %esi,0x18(%rax)
ffff80000010530f:	f6 02 01             	testb  $0x1,(%rdx)
ffff800000105312:	74 1c                	je     ffff800000105330 <putchar+0xba0>
ffff800000105314:	48 83 c2 01          	add    $0x1,%rdx
ffff800000105318:	44 89 40 1c          	mov    %r8d,0x1c(%rax)
ffff80000010531c:	48 01 c8             	add    %rcx,%rax
ffff80000010531f:	48 39 d7             	cmp    %rdx,%rdi
ffff800000105322:	75 91                	jne    ffff8000001052b5 <putchar+0xb25>
ffff800000105324:	e9 75 ff ff ff       	jmp    ffff80000010529e <putchar+0xb0e>
ffff800000105329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105330:	48 83 c2 01          	add    $0x1,%rdx
ffff800000105334:	44 89 48 1c          	mov    %r9d,0x1c(%rax)
ffff800000105338:	48 01 c8             	add    %rcx,%rax
ffff80000010533b:	48 39 d7             	cmp    %rdx,%rdi
ffff80000010533e:	0f 85 71 ff ff ff    	jne    ffff8000001052b5 <putchar+0xb25>
ffff800000105344:	e9 55 ff ff ff       	jmp    ffff80000010529e <putchar+0xb0e>
ffff800000105349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

ffff800000105350 <clear_screen>:
ffff800000105350:	f3 0f 1e fa          	endbr64
ffff800000105354:	49 bb ac 7d 00 00 00 	movabs $0x7dac,%r11
ffff80000010535b:	00 00 00 
ffff80000010535e:	41 57                	push   %r15
ffff800000105360:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # ffff800000105354 <clear_screen+0x4>
ffff800000105367:	41 56                	push   %r14
ffff800000105369:	4d 01 df             	add    %r11,%r15
ffff80000010536c:	49 be 20 10 00 00 00 	movabs $0x1020,%r14
ffff800000105373:	00 00 00 
ffff800000105376:	41 55                	push   %r13
ffff800000105378:	41 54                	push   %r12
ffff80000010537a:	55                   	push   %rbp
ffff80000010537b:	53                   	push   %rbx
ffff80000010537c:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
ffff800000105383:	43 8b 04 3e          	mov    (%r14,%r15,1),%eax
ffff800000105387:	99                   	cltd
ffff800000105388:	43 f7 7c 3e 10       	idivl  0x10(%r14,%r15,1)
ffff80000010538d:	89 84 24 c8 00 00 00 	mov    %eax,0xc8(%rsp)
ffff800000105394:	43 8b 44 3e 04       	mov    0x4(%r14,%r15,1),%eax
ffff800000105399:	99                   	cltd
ffff80000010539a:	43 f7 7c 3e 14       	idivl  0x14(%r14,%r15,1)
ffff80000010539f:	85 c0                	test   %eax,%eax
ffff8000001053a1:	0f 8e 5b 0c 00 00    	jle    ffff800000106002 <clear_screen+0xcb2>
ffff8000001053a7:	48 bb 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rbx
ffff8000001053ae:	ff ff ff 
ffff8000001053b1:	41 89 fd             	mov    %edi,%r13d
ffff8000001053b4:	48 ba 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rdx
ffff8000001053bb:	ff ff ff 
ffff8000001053be:	48 bf d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rdi
ffff8000001053c5:	ff ff ff 
ffff8000001053c8:	48 89 9c 24 90 00 00 	mov    %rbx,0x90(%rsp)
ffff8000001053cf:	00 
ffff8000001053d0:	4a 8d 1c 3a          	lea    (%rdx,%r15,1),%rbx
ffff8000001053d4:	8b 94 24 c8 00 00 00 	mov    0xc8(%rsp),%edx
ffff8000001053db:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
ffff8000001053e0:	4f 8b 64 3e 18       	mov    0x18(%r14,%r15,1),%r12
ffff8000001053e5:	48 bb f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rbx
ffff8000001053ec:	ff ff ff 
ffff8000001053ef:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
ffff8000001053f6:	00 
ffff8000001053f7:	48 bb 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%rbx
ffff8000001053fe:	ff ff ff 
ffff800000105401:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
ffff800000105408:	00 00 00 00 
ffff80000010540c:	48 89 bc 24 a8 00 00 	mov    %rdi,0xa8(%rsp)
ffff800000105413:	00 
ffff800000105414:	48 89 9c 24 b0 00 00 	mov    %rbx,0xb0(%rsp)
ffff80000010541b:	00 
ffff80000010541c:	85 d2                	test   %edx,%edx
ffff80000010541e:	0f 8e de 0b 00 00    	jle    ffff800000106002 <clear_screen+0xcb2>
ffff800000105424:	4c 89 a4 24 80 00 00 	mov    %r12,0x80(%rsp)
ffff80000010542b:	00 
ffff80000010542c:	45 89 ec             	mov    %r13d,%r12d
ffff80000010542f:	41 89 f5             	mov    %esi,%r13d
ffff800000105432:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
ffff800000105439:	00 
ffff80000010543a:	89 84 24 cc 00 00 00 	mov    %eax,0xcc(%rsp)
ffff800000105441:	48 be 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%rsi
ffff800000105448:	ff ff ff 
ffff80000010544b:	44 89 e8             	mov    %r13d,%eax
ffff80000010544e:	c7 84 24 88 00 00 00 	movl   $0x0,0x88(%rsp)
ffff800000105455:	00 00 00 00 
ffff800000105459:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
ffff80000010545d:	48 89 b4 24 c0 00 00 	mov    %rsi,0xc0(%rsp)
ffff800000105464:	00 
ffff800000105465:	48 bb 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%rbx
ffff80000010546c:	ff ff ff 
ffff80000010546f:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
ffff800000105474:	48 83 c7 0f          	add    $0xf,%rdi
ffff800000105478:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
ffff80000010547f:	00 
ffff800000105480:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
ffff800000105487:	00 
ffff800000105488:	4b 63 1c 3e          	movslq (%r14,%r15,1),%rbx
ffff80000010548c:	44 8b 8c 24 8c 00 00 	mov    0x8c(%rsp),%r9d
ffff800000105493:	00 
ffff800000105494:	41 bd 1f 00 00 00    	mov    $0x1f,%r13d
ffff80000010549a:	bd 00 00 00 00       	mov    $0x0,%ebp
ffff80000010549f:	47 0f af 4c 3e 14    	imul   0x14(%r14,%r15,1),%r9d
ffff8000001054a5:	44 8b 94 24 88 00 00 	mov    0x88(%rsp),%r10d
ffff8000001054ac:	00 
ffff8000001054ad:	47 0f af 54 3e 10    	imul   0x10(%r14,%r15,1),%r10d
ffff8000001054b3:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
ffff8000001054ba:	00 
ffff8000001054bb:	48 8d 14 9d 00 00 00 	lea    0x0(,%rbx,4),%rdx
ffff8000001054c2:	00 
ffff8000001054c3:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
ffff8000001054c8:	44 0f af cb          	imul   %ebx,%r9d
ffff8000001054cc:	4d 63 d2             	movslq %r10d,%r10
ffff8000001054cf:	4d 63 c9             	movslq %r9d,%r9
ffff8000001054d2:	4d 01 d1             	add    %r10,%r9
ffff8000001054d5:	49 89 da             	mov    %rbx,%r10
ffff8000001054d8:	49 c1 e2 04          	shl    $0x4,%r10
ffff8000001054dc:	49 c1 e1 02          	shl    $0x2,%r9
ffff8000001054e0:	49 29 da             	sub    %rbx,%r10
ffff8000001054e3:	49 c1 e2 02          	shl    $0x2,%r10
ffff8000001054e7:	85 db                	test   %ebx,%ebx
ffff8000001054e9:	4d 8d 5a 1f          	lea    0x1f(%r10),%r11
ffff8000001054ed:	4d 0f 48 dd          	cmovs  %r13,%r11
ffff8000001054f1:	4d 01 cb             	add    %r9,%r11
ffff8000001054f4:	49 01 fb             	add    %rdi,%r11
ffff8000001054f7:	4d 39 c3             	cmp    %r8,%r11
ffff8000001054fa:	41 0f 92 c3          	setb   %r11b
ffff8000001054fe:	85 db                	test   %ebx,%ebx
ffff800000105500:	4c 0f 49 d5          	cmovns %rbp,%r10
ffff800000105504:	4d 01 ca             	add    %r9,%r10
ffff800000105507:	49 01 fa             	add    %rdi,%r10
ffff80000010550a:	4c 39 94 24 98 00 00 	cmp    %r10,0x98(%rsp)
ffff800000105511:	00 
ffff800000105512:	41 0f 92 c2          	setb   %r10b
ffff800000105516:	45 08 da             	or     %r11b,%r10b
ffff800000105519:	0f 84 fe 0a 00 00    	je     ffff80000010601d <clear_screen+0xccd>
ffff80000010551f:	4c 8d 52 1f          	lea    0x1f(%rdx),%r10
ffff800000105523:	49 83 fa 3e          	cmp    $0x3e,%r10
ffff800000105527:	0f 86 f0 0a 00 00    	jbe    ffff80000010601d <clear_screen+0xccd>
ffff80000010552d:	4a 8d 34 0f          	lea    (%rdi,%r9,1),%rsi
ffff800000105531:	49 8d b8 00 fe ff ff 	lea    -0x200(%r8),%rdi
ffff800000105538:	48 c1 e3 05          	shl    $0x5,%rbx
ffff80000010553c:	4c 8d 0c 16          	lea    (%rsi,%rdx,1),%r9
ffff800000105540:	48 89 d9             	mov    %rbx,%rcx
ffff800000105543:	66 41 0f 6e d4       	movd   %r12d,%xmm2
ffff800000105548:	4d 8d 04 11          	lea    (%r9,%rdx,1),%r8
ffff80000010554c:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000105552:	66 0f 6e d0          	movd   %eax,%xmm2
ffff800000105556:	4d 8d 2c 10          	lea    (%r8,%rdx,1),%r13
ffff80000010555a:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff800000105560:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000105565:	49 8d 6c 15 00       	lea    0x0(%r13,%rdx,1),%rbp
ffff80000010556a:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff80000010556f:	48 8d 5c 15 00       	lea    0x0(%rbp,%rdx,1),%rbx
ffff800000105574:	4c 8d 1c 13          	lea    (%rbx,%rdx,1),%r11
ffff800000105578:	4d 8d 14 13          	lea    (%r11,%rdx,1),%r10
ffff80000010557c:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
ffff800000105581:	48 81 ea f0 01 00 00 	sub    $0x1f0,%rdx
ffff800000105588:	48 89 54 24 88       	mov    %rdx,-0x78(%rsp)
ffff80000010558d:	48 8b 94 24 a0 00 00 	mov    0xa0(%rsp),%rdx
ffff800000105594:	00 
ffff800000105595:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff800000105599:	48 89 54 24 48       	mov    %rdx,0x48(%rsp)
ffff80000010559e:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
ffff8000001055a5:	00 
ffff8000001055a6:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055aa:	48 89 54 24 50       	mov    %rdx,0x50(%rsp)
ffff8000001055af:	48 8b 94 24 b0 00 00 	mov    0xb0(%rsp),%rdx
ffff8000001055b6:	00 
ffff8000001055b7:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055bb:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
ffff8000001055c0:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
ffff8000001055c7:	00 
ffff8000001055c8:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055cc:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
ffff8000001055d1:	48 8b 94 24 c0 00 00 	mov    0xc0(%rsp),%rdx
ffff8000001055d8:	00 
ffff8000001055d9:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055dd:	48 89 54 24 68       	mov    %rdx,0x68(%rsp)
ffff8000001055e2:	48 ba 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%rdx
ffff8000001055e9:	ff ff ff 
ffff8000001055ec:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff8000001055f0:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
ffff8000001055f5:	48 ba 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%rdx
ffff8000001055fc:	ff ff ff 
ffff8000001055ff:	4a 8b 14 3a          	mov    (%rdx,%r15,1),%rdx
ffff800000105603:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
ffff800000105608:	44 89 e2             	mov    %r12d,%edx
ffff80000010560b:	41 89 c4             	mov    %eax,%r12d
ffff80000010560e:	48 8b 44 24 88       	mov    -0x78(%rsp),%rax
ffff800000105613:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000105618:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010561d:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105622:	f3 0f 7e 97 00 02 00 	movq   0x200(%rdi),%xmm2
ffff800000105629:	00 
ffff80000010562a:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010562f:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
ffff800000105634:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105639:	48 83 c7 08          	add    $0x8,%rdi
ffff80000010563d:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
ffff800000105641:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000105645:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000105649:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff80000010564d:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105651:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105656:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff80000010565a:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff80000010565f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105664:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000105668:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff80000010566c:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000105671:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105676:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010567b:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000105680:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000105685:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000105689:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010568e:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000105693:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000105697:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff80000010569c:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001056a1:	66 44 0f 7e 36       	movd   %xmm14,(%rsi)
ffff8000001056a6:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff8000001056aa:	66 0f d6 4c 24 88    	movq   %xmm1,-0x78(%rsp)
ffff8000001056b0:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001056b4:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff8000001056b8:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff8000001056bd:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001056c2:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff8000001056c6:	66 0f db e7          	pand   %xmm7,%xmm4
ffff8000001056ca:	66 0f db e8          	pand   %xmm0,%xmm5
ffff8000001056ce:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001056d3:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001056d8:	66 0f eb c5          	por    %xmm5,%xmm0
ffff8000001056dc:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
ffff8000001056e2:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff8000001056e6:	66 0f d6 44 24 98    	movq   %xmm0,-0x68(%rsp)
ffff8000001056ec:	66 0f eb fc          	por    %xmm4,%xmm7
ffff8000001056f0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001056f5:	66 0f db ea          	pand   %xmm2,%xmm5
ffff8000001056f9:	66 0f d6 7c 24 90    	movq   %xmm7,-0x70(%rsp)
ffff8000001056ff:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff800000105704:	66 0f 6f c5          	movdqa %xmm5,%xmm0
ffff800000105708:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff80000010570d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105712:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105717:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff80000010571b:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff80000010571f:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000105723:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105727:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff80000010572b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010572f:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000105733:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105738:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010573d:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000105741:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000105745:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010574a:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010574f:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000105753:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105758:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010575c:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105761:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000105765:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000105769:	66 0f d6 5c 24 a0    	movq   %xmm3,-0x60(%rsp)
ffff80000010576f:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000105773:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105778:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
ffff80000010577c:	66 0f d6 6c 24 a8    	movq   %xmm5,-0x58(%rsp)
ffff800000105782:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105787:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff80000010578b:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff80000010578f:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000105793:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105797:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010579c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001057a0:	66 0f db e6          	pand   %xmm6,%xmm4
ffff8000001057a4:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001057a9:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001057ae:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff8000001057b2:	66 0f eb f4          	por    %xmm4,%xmm6
ffff8000001057b6:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001057bb:	66 0f db e0          	pand   %xmm0,%xmm4
ffff8000001057bf:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001057c4:	66 0f d6 74 24 b0    	movq   %xmm6,-0x50(%rsp)
ffff8000001057ca:	f3 0f 7e 74 24 60    	movq   0x60(%rsp),%xmm6
ffff8000001057d0:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff8000001057d4:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff8000001057d8:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
ffff8000001057de:	66 0f eb e1          	por    %xmm1,%xmm4
ffff8000001057e2:	66 0f db f2          	pand   %xmm2,%xmm6
ffff8000001057e6:	66 0f db c2          	pand   %xmm2,%xmm0
ffff8000001057ea:	66 0f d6 64 24 b8    	movq   %xmm4,-0x48(%rsp)
ffff8000001057f0:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001057f5:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001057fa:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001057ff:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000105803:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000105807:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff80000010580b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010580f:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff800000105813:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105818:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010581c:	66 44 0f 65 e0       	pcmpgtw %xmm0,%xmm12
ffff800000105821:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105826:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff80000010582a:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff80000010582e:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105833:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000105837:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010583c:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105841:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000105845:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff80000010584a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010584f:	66 0f d6 5c 24 c0    	movq   %xmm3,-0x40(%rsp)
ffff800000105855:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff80000010585a:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff80000010585f:	f3 44 0f 7e 64 24 58 	movq   0x58(%rsp),%xmm12
ffff800000105866:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff80000010586a:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010586f:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105874:	66 0f d6 4c 24 c8    	movq   %xmm1,-0x38(%rsp)
ffff80000010587a:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010587f:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000105884:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000105889:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff80000010588e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105893:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105898:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff80000010589d:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff8000001058a2:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff8000001058a7:	66 0f d6 44 24 d8    	movq   %xmm0,-0x28(%rsp)
ffff8000001058ad:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff8000001058b2:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff8000001058b7:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff8000001058bc:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001058c1:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff8000001058c6:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001058cb:	66 44 0f d6 44 24 d0 	movq   %xmm8,-0x30(%rsp)
ffff8000001058d2:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
ffff8000001058d7:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001058dc:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
ffff8000001058e1:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
ffff8000001058e6:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff8000001058eb:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
ffff8000001058f0:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001058f4:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
ffff8000001058f9:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff8000001058fe:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff800000105903:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105908:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff80000010590c:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff800000105911:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000105915:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010591a:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff80000010591f:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000105924:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105929:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010592e:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105933:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff800000105938:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010593d:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
ffff800000105942:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000105947:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff80000010594c:	66 44 0f eb e5       	por    %xmm5,%xmm12
ffff800000105951:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff800000105956:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff80000010595a:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff80000010595e:	66 44 0f d6 64 24 e0 	movq   %xmm12,-0x20(%rsp)
ffff800000105965:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000105969:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff80000010596d:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000105972:	66 44 0f d6 6c 24 e8 	movq   %xmm13,-0x18(%rsp)
ffff800000105979:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff80000010597d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105982:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000105986:	66 0f db e8          	pand   %xmm0,%xmm5
ffff80000010598a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010598f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105994:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000105998:	66 0f 6f cd          	movdqa %xmm5,%xmm1
ffff80000010599c:	66 0f 6f e8          	movdqa %xmm0,%xmm5
ffff8000001059a0:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff8000001059a4:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff8000001059a9:	66 0f eb fc          	por    %xmm4,%xmm7
ffff8000001059ad:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001059b2:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001059b7:	66 0f eb e9          	por    %xmm1,%xmm5
ffff8000001059bb:	66 0f d6 7c 24 f0    	movq   %xmm7,-0x10(%rsp)
ffff8000001059c1:	66 0f d6 6c 24 f8    	movq   %xmm5,-0x8(%rsp)
ffff8000001059c7:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff8000001059cc:	66 45 0f 6f e1       	movdqa %xmm9,%xmm12
ffff8000001059d1:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
ffff8000001059d6:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001059db:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff8000001059df:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001059e3:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff8000001059e7:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff8000001059eb:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001059ef:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff8000001059f3:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001059f7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001059fc:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
ffff800000105a00:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000105a04:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105a09:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000105a0d:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105a12:	66 0f db ee          	pand   %xmm6,%xmm5
ffff800000105a16:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000105a1a:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105a1f:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105a24:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff800000105a28:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff800000105a2c:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000105a30:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000105a34:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105a39:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000105a3d:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000105a41:	66 0f d6 64 24 08    	movq   %xmm4,0x8(%rsp)
ffff800000105a47:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105a4c:	66 0f eb f5          	por    %xmm5,%xmm6
ffff800000105a50:	66 0f d6 34 24       	movq   %xmm6,(%rsp)
ffff800000105a55:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105a5a:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105a5e:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000105a62:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105a67:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105a6c:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000105a70:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105a75:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000105a7a:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105a7f:	66 0f eb cc          	por    %xmm4,%xmm1
ffff800000105a83:	66 41 0f eb c0       	por    %xmm8,%xmm0
ffff800000105a88:	f3 44 0f 7e 44 24 68 	movq   0x68(%rsp),%xmm8
ffff800000105a8f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000105a94:	66 0f d6 4c 24 10    	movq   %xmm1,0x10(%rsp)
ffff800000105a9a:	66 0f d6 44 24 18    	movq   %xmm0,0x18(%rsp)
ffff800000105aa0:	66 44 0f db c2       	pand   %xmm2,%xmm8
ffff800000105aa5:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff800000105aaa:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000105aaf:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000105ab4:	66 44 0f 64 e1       	pcmpgtb %xmm1,%xmm12
ffff800000105ab9:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000105abd:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000105ac2:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105ac7:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff800000105acb:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff800000105acf:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000105ad3:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105ad8:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
ffff800000105add:	66 44 0f 65 e9       	pcmpgtw %xmm1,%xmm13
ffff800000105ae2:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105ae7:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff800000105aeb:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105af0:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff800000105af5:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff800000105afa:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000105aff:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105b04:	66 44 0f db e5       	pand   %xmm5,%xmm12
ffff800000105b09:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff800000105b0e:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105b13:	66 41 0f 6f c5       	movdqa %xmm13,%xmm0
ffff800000105b18:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000105b1d:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff800000105b21:	66 41 0f eb ec       	por    %xmm12,%xmm5
ffff800000105b26:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105b2b:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000105b30:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff800000105b35:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff800000105b3a:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff800000105b3f:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000105b44:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff800000105b49:	66 44 0f d6 44 24 20 	movq   %xmm8,0x20(%rsp)
ffff800000105b50:	66 41 0f eb cc       	por    %xmm12,%xmm1
ffff800000105b55:	f3 44 0f 7e 64 24 70 	movq   0x70(%rsp),%xmm12
ffff800000105b5c:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff800000105b61:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff800000105b66:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000105b6b:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000105b70:	66 44 0f d6 6c 24 28 	movq   %xmm13,0x28(%rsp)
ffff800000105b77:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000105b7c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105b81:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000105b86:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000105b8a:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000105b8e:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff800000105b92:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000105b96:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105b9b:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000105b9f:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff800000105ba4:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105ba9:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000105bae:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
ffff800000105bb3:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000105bb7:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105bbc:	66 41 0f db f4       	pand   %xmm12,%xmm6
ffff800000105bc1:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff800000105bc6:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000105bcb:	66 44 0f eb e6       	por    %xmm6,%xmm12
ffff800000105bd0:	66 0f db dc          	pand   %xmm4,%xmm3
ffff800000105bd4:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff800000105bd9:	66 44 0f d6 64 24 30 	movq   %xmm12,0x30(%rsp)
ffff800000105be0:	66 0f eb e3          	por    %xmm3,%xmm4
ffff800000105be4:	f3 44 0f 7e 64 24 78 	movq   0x78(%rsp),%xmm12
ffff800000105beb:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000105bf0:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000105bf4:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105bf9:	66 41 0f db d4       	pand   %xmm12,%xmm2
ffff800000105bfe:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff800000105c03:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff800000105c08:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff800000105c0d:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000105c11:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000105c16:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff800000105c1b:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff800000105c20:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000105c25:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff800000105c2a:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff800000105c2f:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000105c34:	66 0f db d8          	pand   %xmm0,%xmm3
ffff800000105c38:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000105c3d:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000105c41:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
ffff800000105c45:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000105c49:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
ffff800000105c4d:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff800000105c51:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105c56:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff800000105c5a:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000105c5e:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000105c63:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000105c68:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000105c6c:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
ffff800000105c70:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000105c75:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000105c7a:	66 44 0f db e7       	pand   %xmm7,%xmm12
ffff800000105c7f:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000105c84:	66 0f db f3          	pand   %xmm3,%xmm6
ffff800000105c88:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000105c8d:	66 41 0f eb fc       	por    %xmm12,%xmm7
ffff800000105c92:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000105c96:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000105c9b:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff800000105c9f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000105ca4:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
ffff800000105ca9:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff800000105cae:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105cb3:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
ffff800000105cb8:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105cbe:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff800000105cc3:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff800000105cc8:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
ffff800000105ccd:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000105cd2:	f3 44 0f 7e 74 24 88 	movq   -0x78(%rsp),%xmm14
ffff800000105cd9:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff800000105cde:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000105ce3:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff800000105ce8:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff800000105ced:	66 45 0f 7e 30       	movd   %xmm14,(%r8)
ffff800000105cf2:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff800000105cf7:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105cfd:	f3 44 0f 7e 74 24 90 	movq   -0x70(%rsp),%xmm14
ffff800000105d04:	66 45 0f 7e 6d 00    	movd   %xmm13,0x0(%r13)
ffff800000105d0a:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d10:	66 44 0f 7e 75 00    	movd   %xmm14,0x0(%rbp)
ffff800000105d16:	f3 44 0f 7e 74 24 98 	movq   -0x68(%rsp),%xmm14
ffff800000105d1d:	66 44 0f 7e 23       	movd   %xmm12,(%rbx)
ffff800000105d22:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d28:	66 45 0f 7e 33       	movd   %xmm14,(%r11)
ffff800000105d2d:	f3 44 0f 7e 74 24 a0 	movq   -0x60(%rsp),%xmm14
ffff800000105d34:	66 45 0f 7e 2a       	movd   %xmm13,(%r10)
ffff800000105d39:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d3f:	66 44 0f 7e 76 04    	movd   %xmm14,0x4(%rsi)
ffff800000105d45:	f3 44 0f 7e 74 24 a8 	movq   -0x58(%rsp),%xmm14
ffff800000105d4c:	66 45 0f 7e 61 04    	movd   %xmm12,0x4(%r9)
ffff800000105d52:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d58:	66 45 0f 7e 70 04    	movd   %xmm14,0x4(%r8)
ffff800000105d5e:	f3 44 0f 7e 74 24 b0 	movq   -0x50(%rsp),%xmm14
ffff800000105d65:	66 45 0f 7e 6d 04    	movd   %xmm13,0x4(%r13)
ffff800000105d6b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105d71:	66 44 0f 7e 75 04    	movd   %xmm14,0x4(%rbp)
ffff800000105d77:	f3 44 0f 7e 74 24 b8 	movq   -0x48(%rsp),%xmm14
ffff800000105d7e:	66 44 0f 7e 63 04    	movd   %xmm12,0x4(%rbx)
ffff800000105d84:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105d8a:	66 45 0f 7e 73 04    	movd   %xmm14,0x4(%r11)
ffff800000105d90:	f3 44 0f 7e 74 24 c0 	movq   -0x40(%rsp),%xmm14
ffff800000105d97:	66 45 0f 7e 6a 04    	movd   %xmm13,0x4(%r10)
ffff800000105d9d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105da3:	66 44 0f 7e 76 08    	movd   %xmm14,0x8(%rsi)
ffff800000105da9:	f3 44 0f 7e 74 24 c8 	movq   -0x38(%rsp),%xmm14
ffff800000105db0:	66 45 0f 7e 61 08    	movd   %xmm12,0x8(%r9)
ffff800000105db6:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105dbc:	66 45 0f 7e 70 08    	movd   %xmm14,0x8(%r8)
ffff800000105dc2:	f3 44 0f 7e 74 24 d0 	movq   -0x30(%rsp),%xmm14
ffff800000105dc9:	66 45 0f 7e 6d 08    	movd   %xmm13,0x8(%r13)
ffff800000105dcf:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105dd5:	66 44 0f 7e 75 08    	movd   %xmm14,0x8(%rbp)
ffff800000105ddb:	f3 44 0f 7e 74 24 d8 	movq   -0x28(%rsp),%xmm14
ffff800000105de2:	66 44 0f 7e 63 08    	movd   %xmm12,0x8(%rbx)
ffff800000105de8:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105dee:	66 45 0f 7e 73 08    	movd   %xmm14,0x8(%r11)
ffff800000105df4:	66 45 0f 7e 6a 08    	movd   %xmm13,0x8(%r10)
ffff800000105dfa:	f3 44 0f 7e 74 24 e0 	movq   -0x20(%rsp),%xmm14
ffff800000105e01:	66 44 0f 7e 76 0c    	movd   %xmm14,0xc(%rsi)
ffff800000105e07:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e0d:	f3 44 0f 7e 74 24 e8 	movq   -0x18(%rsp),%xmm14
ffff800000105e14:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
ffff800000105e1a:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e20:	66 45 0f 7e 70 0c    	movd   %xmm14,0xc(%r8)
ffff800000105e26:	f3 44 0f 7e 74 24 f0 	movq   -0x10(%rsp),%xmm14
ffff800000105e2d:	66 45 0f 7e 6d 0c    	movd   %xmm13,0xc(%r13)
ffff800000105e33:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e39:	66 44 0f 7e 75 0c    	movd   %xmm14,0xc(%rbp)
ffff800000105e3f:	f3 44 0f 7e 74 24 f8 	movq   -0x8(%rsp),%xmm14
ffff800000105e46:	66 44 0f 7e 63 0c    	movd   %xmm12,0xc(%rbx)
ffff800000105e4c:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e52:	66 45 0f 7e 73 0c    	movd   %xmm14,0xc(%r11)
ffff800000105e58:	f3 44 0f 7e 34 24    	movq   (%rsp),%xmm14
ffff800000105e5e:	66 45 0f 7e 6a 0c    	movd   %xmm13,0xc(%r10)
ffff800000105e64:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e6a:	66 44 0f 7e 76 10    	movd   %xmm14,0x10(%rsi)
ffff800000105e70:	f3 44 0f 7e 74 24 08 	movq   0x8(%rsp),%xmm14
ffff800000105e77:	66 45 0f 7e 61 10    	movd   %xmm12,0x10(%r9)
ffff800000105e7d:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105e83:	66 45 0f 7e 70 10    	movd   %xmm14,0x10(%r8)
ffff800000105e89:	f3 44 0f 7e 74 24 10 	movq   0x10(%rsp),%xmm14
ffff800000105e90:	66 45 0f 7e 6d 10    	movd   %xmm13,0x10(%r13)
ffff800000105e96:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105e9c:	66 44 0f 7e 75 10    	movd   %xmm14,0x10(%rbp)
ffff800000105ea2:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
ffff800000105ea9:	66 44 0f 7e 63 10    	movd   %xmm12,0x10(%rbx)
ffff800000105eaf:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000105eb5:	66 45 0f 7e 73 10    	movd   %xmm14,0x10(%r11)
ffff800000105ebb:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
ffff800000105ec2:	66 45 0f 7e 6a 10    	movd   %xmm13,0x10(%r10)
ffff800000105ec8:	f3 44 0f 7e 6c 24 28 	movq   0x28(%rsp),%xmm13
ffff800000105ecf:	66 44 0f 7e 76 14    	movd   %xmm14,0x14(%rsi)
ffff800000105ed5:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000105edb:	66 45 0f 7e 61 14    	movd   %xmm12,0x14(%r9)
ffff800000105ee1:	66 41 0f 7e 68 14    	movd   %xmm5,0x14(%r8)
ffff800000105ee7:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105eec:	66 41 0f 7e 6d 14    	movd   %xmm5,0x14(%r13)
ffff800000105ef2:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff800000105ef8:	66 44 0f 7e 6d 14    	movd   %xmm13,0x14(%rbp)
ffff800000105efe:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
ffff800000105f03:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff800000105f08:	66 41 0f 7e 4b 14    	movd   %xmm1,0x14(%r11)
ffff800000105f0e:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff800000105f14:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
ffff800000105f1a:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
ffff800000105f1f:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000105f24:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000105f2a:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000105f2f:	66 41 0f 7e 60 18    	movd   %xmm4,0x18(%r8)
ffff800000105f35:	66 41 0f 7e 6d 18    	movd   %xmm5,0x18(%r13)
ffff800000105f3b:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000105f41:	66 44 0f 7e 45 18    	movd   %xmm8,0x18(%rbp)
ffff800000105f47:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
ffff800000105f4c:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000105f51:	66 41 0f 7e 43 18    	movd   %xmm0,0x18(%r11)
ffff800000105f57:	66 41 0f 7e 6a 18    	movd   %xmm5,0x18(%r10)
ffff800000105f5d:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
ffff800000105f62:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000105f67:	48 01 ce             	add    %rcx,%rsi
ffff800000105f6a:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff800000105f70:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff800000105f75:	49 01 c9             	add    %rcx,%r9
ffff800000105f78:	66 41 0f 7e 58 1c    	movd   %xmm3,0x1c(%r8)
ffff800000105f7e:	49 01 c8             	add    %rcx,%r8
ffff800000105f81:	66 41 0f 7e 7d 1c    	movd   %xmm7,0x1c(%r13)
ffff800000105f87:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000105f8c:	49 01 cd             	add    %rcx,%r13
ffff800000105f8f:	66 0f 7e 75 1c       	movd   %xmm6,0x1c(%rbp)
ffff800000105f94:	48 01 cd             	add    %rcx,%rbp
ffff800000105f97:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff800000105f9c:	48 01 cb             	add    %rcx,%rbx
ffff800000105f9f:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
ffff800000105fa5:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff800000105faa:	49 01 cb             	add    %rcx,%r11
ffff800000105fad:	66 41 0f 7e 52 1c    	movd   %xmm2,0x1c(%r10)
ffff800000105fb3:	49 01 ca             	add    %rcx,%r10
ffff800000105fb6:	48 39 c7             	cmp    %rax,%rdi
ffff800000105fb9:	0f 85 54 f6 ff ff    	jne    ffff800000105613 <clear_screen+0x2c3>
ffff800000105fbf:	44 89 e0             	mov    %r12d,%eax
ffff800000105fc2:	41 89 d4             	mov    %edx,%r12d
ffff800000105fc5:	83 84 24 88 00 00 00 	addl   $0x1,0x88(%rsp)
ffff800000105fcc:	01 
ffff800000105fcd:	8b bc 24 88 00 00 00 	mov    0x88(%rsp),%edi
ffff800000105fd4:	39 bc 24 c8 00 00 00 	cmp    %edi,0xc8(%rsp)
ffff800000105fdb:	0f 85 a7 f4 ff ff    	jne    ffff800000105488 <clear_screen+0x138>
ffff800000105fe1:	83 84 24 8c 00 00 00 	addl   $0x1,0x8c(%rsp)
ffff800000105fe8:	01 
ffff800000105fe9:	41 89 c5             	mov    %eax,%r13d
ffff800000105fec:	8b bc 24 8c 00 00 00 	mov    0x8c(%rsp),%edi
ffff800000105ff3:	8b 84 24 cc 00 00 00 	mov    0xcc(%rsp),%eax
ffff800000105ffa:	39 f8                	cmp    %edi,%eax
ffff800000105ffc:	0f 85 30 f4 ff ff    	jne    ffff800000105432 <clear_screen+0xe2>
ffff800000106002:	4b c7 44 3e 08 00 00 	movq   $0x0,0x8(%r14,%r15,1)
ffff800000106009:	00 00 
ffff80000010600b:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
ffff800000106012:	5b                   	pop    %rbx
ffff800000106013:	5d                   	pop    %rbp
ffff800000106014:	41 5c                	pop    %r12
ffff800000106016:	41 5d                	pop    %r13
ffff800000106018:	41 5e                	pop    %r14
ffff80000010601a:	41 5f                	pop    %r15
ffff80000010601c:	c3                   	ret
ffff80000010601d:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
ffff800000106024:	00 
ffff800000106025:	48 8b 9c 24 90 00 00 	mov    0x90(%rsp),%rbx
ffff80000010602c:	00 
ffff80000010602d:	49 01 f9             	add    %rdi,%r9
ffff800000106030:	4e 8d 14 3b          	lea    (%rbx,%r15,1),%r10
ffff800000106034:	eb 23                	jmp    ffff800000106059 <clear_screen+0xd09>
ffff800000106036:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010603d:	00 00 00 
ffff800000106040:	41 89 41 1c          	mov    %eax,0x1c(%r9)
ffff800000106044:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
ffff800000106049:	49 83 c2 01          	add    $0x1,%r10
ffff80000010604d:	49 01 d1             	add    %rdx,%r9
ffff800000106050:	49 39 f2             	cmp    %rsi,%r10
ffff800000106053:	0f 84 6c ff ff ff    	je     ffff800000105fc5 <clear_screen+0xc75>
ffff800000106059:	41 80 3a 00          	cmpb   $0x0,(%r10)
ffff80000010605d:	89 c1                	mov    %eax,%ecx
ffff80000010605f:	41 0f 48 cc          	cmovs  %r12d,%ecx
ffff800000106063:	41 89 09             	mov    %ecx,(%r9)
ffff800000106066:	89 c1                	mov    %eax,%ecx
ffff800000106068:	41 f6 02 40          	testb  $0x40,(%r10)
ffff80000010606c:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff800000106070:	41 89 49 04          	mov    %ecx,0x4(%r9)
ffff800000106074:	89 c1                	mov    %eax,%ecx
ffff800000106076:	41 f6 02 20          	testb  $0x20,(%r10)
ffff80000010607a:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010607e:	41 89 49 08          	mov    %ecx,0x8(%r9)
ffff800000106082:	89 c1                	mov    %eax,%ecx
ffff800000106084:	41 f6 02 10          	testb  $0x10,(%r10)
ffff800000106088:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010608c:	41 89 49 0c          	mov    %ecx,0xc(%r9)
ffff800000106090:	89 c1                	mov    %eax,%ecx
ffff800000106092:	41 f6 02 08          	testb  $0x8,(%r10)
ffff800000106096:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff80000010609a:	41 89 49 10          	mov    %ecx,0x10(%r9)
ffff80000010609e:	89 c1                	mov    %eax,%ecx
ffff8000001060a0:	41 f6 02 04          	testb  $0x4,(%r10)
ffff8000001060a4:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff8000001060a8:	41 89 49 14          	mov    %ecx,0x14(%r9)
ffff8000001060ac:	89 c1                	mov    %eax,%ecx
ffff8000001060ae:	41 f6 02 02          	testb  $0x2,(%r10)
ffff8000001060b2:	41 0f 45 cc          	cmovne %r12d,%ecx
ffff8000001060b6:	41 89 49 18          	mov    %ecx,0x18(%r9)
ffff8000001060ba:	41 f6 02 01          	testb  $0x1,(%r10)
ffff8000001060be:	74 80                	je     ffff800000106040 <clear_screen+0xcf0>
ffff8000001060c0:	45 89 61 1c          	mov    %r12d,0x1c(%r9)
ffff8000001060c4:	e9 7b ff ff ff       	jmp    ffff800000106044 <clear_screen+0xcf4>
ffff8000001060c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

ffff8000001060d0 <skip_atoi2>:
ffff8000001060d0:	f3 0f 1e fa          	endbr64
ffff8000001060d4:	48 8b 17             	mov    (%rdi),%rdx
ffff8000001060d7:	0f b6 02             	movzbl (%rdx),%eax
ffff8000001060da:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff8000001060dd:	80 f9 09             	cmp    $0x9,%cl
ffff8000001060e0:	77 36                	ja     ffff800000106118 <skip_atoi2+0x48>
ffff8000001060e2:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001060e6:	31 c9                	xor    %ecx,%ecx
ffff8000001060e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001060ef:	00 
ffff8000001060f0:	83 e8 30             	sub    $0x30,%eax
ffff8000001060f3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001060f6:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001060f9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001060fd:	0f be c0             	movsbl %al,%eax
ffff800000106100:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000106103:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff800000106107:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010610a:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010610e:	76 e0                	jbe    ffff8000001060f0 <skip_atoi2+0x20>
ffff800000106110:	89 c8                	mov    %ecx,%eax
ffff800000106112:	c3                   	ret
ffff800000106113:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106118:	31 c9                	xor    %ecx,%ecx
ffff80000010611a:	89 c8                	mov    %ecx,%eax
ffff80000010611c:	c3                   	ret
ffff80000010611d:	0f 1f 00             	nopl   (%rax)

ffff800000106120 <skip_atoi>:
ffff800000106120:	f3 0f 1e fa          	endbr64
ffff800000106124:	48 8b 17             	mov    (%rdi),%rdx
ffff800000106127:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010612a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010612d:	80 f9 09             	cmp    $0x9,%cl
ffff800000106130:	77 36                	ja     ffff800000106168 <skip_atoi+0x48>
ffff800000106132:	48 83 c2 01          	add    $0x1,%rdx
ffff800000106136:	31 c9                	xor    %ecx,%ecx
ffff800000106138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010613f:	00 
ffff800000106140:	83 e8 30             	sub    $0x30,%eax
ffff800000106143:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff800000106146:	48 89 17             	mov    %rdx,(%rdi)
ffff800000106149:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010614d:	0f be c0             	movsbl %al,%eax
ffff800000106150:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000106153:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff800000106157:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010615a:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010615e:	76 e0                	jbe    ffff800000106140 <skip_atoi+0x20>
ffff800000106160:	89 c8                	mov    %ecx,%eax
ffff800000106162:	c3                   	ret
ffff800000106163:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106168:	31 c9                	xor    %ecx,%ecx
ffff80000010616a:	89 c8                	mov    %ecx,%eax
ffff80000010616c:	c3                   	ret
ffff80000010616d:	0f 1f 00             	nopl   (%rax)

ffff800000106170 <vsprintf>:
ffff800000106170:	f3 0f 1e fa          	endbr64
ffff800000106174:	49 bb 8c 6f 00 00 00 	movabs $0x6f8c,%r11
ffff80000010617b:	00 00 00 
ffff80000010617e:	41 57                	push   %r15
ffff800000106180:	49 89 ff             	mov    %rdi,%r15
ffff800000106183:	41 56                	push   %r14
ffff800000106185:	41 55                	push   %r13
ffff800000106187:	4c 8d 2d e6 ff ff ff 	lea    -0x1a(%rip),%r13        # ffff800000106174 <vsprintf+0x4>
ffff80000010618e:	41 54                	push   %r12
ffff800000106190:	49 89 d4             	mov    %rdx,%r12
ffff800000106193:	4d 01 dd             	add    %r11,%r13
ffff800000106196:	55                   	push   %rbp
ffff800000106197:	53                   	push   %rbx
ffff800000106198:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010619c:	0f b6 16             	movzbl (%rsi),%edx
ffff80000010619f:	84 d2                	test   %dl,%dl
ffff8000001061a1:	0f 84 aa 08 00 00    	je     ffff800000106a51 <vsprintf+0x8e1>
ffff8000001061a7:	48 89 f0             	mov    %rsi,%rax
ffff8000001061aa:	48 8d 2d 5f 38 00 00 	lea    0x385f(%rip),%rbp        # ffff800000109a10 <_etext+0x3df>
ffff8000001061b1:	eb 1a                	jmp    ffff8000001061cd <vsprintf+0x5d>
ffff8000001061b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001061b8:	88 17                	mov    %dl,(%rdi)
ffff8000001061ba:	48 83 c0 01          	add    $0x1,%rax
ffff8000001061be:	0f b6 10             	movzbl (%rax),%edx
ffff8000001061c1:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001061c5:	84 d2                	test   %dl,%dl
ffff8000001061c7:	0f 84 43 01 00 00    	je     ffff800000106310 <vsprintf+0x1a0>
ffff8000001061cd:	80 fa 25             	cmp    $0x25,%dl
ffff8000001061d0:	75 e6                	jne    ffff8000001061b8 <vsprintf+0x48>
ffff8000001061d2:	45 31 c9             	xor    %r9d,%r9d
ffff8000001061d5:	0f 1f 00             	nopl   (%rax)
ffff8000001061d8:	0f be 50 01          	movsbl 0x1(%rax),%edx
ffff8000001061dc:	48 8d 58 01          	lea    0x1(%rax),%rbx
ffff8000001061e0:	8d 4a e0             	lea    -0x20(%rdx),%ecx
ffff8000001061e3:	80 f9 10             	cmp    $0x10,%cl
ffff8000001061e6:	77 18                	ja     ffff800000106200 <vsprintf+0x90>
ffff8000001061e8:	0f b6 c9             	movzbl %cl,%ecx
ffff8000001061eb:	48 8b 74 cd 00       	mov    0x0(%rbp,%rcx,8),%rsi
ffff8000001061f0:	48 01 ee             	add    %rbp,%rsi
ffff8000001061f3:	3e ff e6             	notrack jmp *%rsi
ffff8000001061f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001061fd:	00 00 00 
ffff800000106200:	8d 4a d0             	lea    -0x30(%rdx),%ecx
ffff800000106203:	80 f9 09             	cmp    $0x9,%cl
ffff800000106206:	0f 86 54 01 00 00    	jbe    ffff800000106360 <vsprintf+0x1f0>
ffff80000010620c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000106211:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000106214:	0f 84 76 01 00 00    	je     ffff800000106390 <vsprintf+0x220>
ffff80000010621a:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff800000106220:	80 fa 2e             	cmp    $0x2e,%dl
ffff800000106223:	0f 84 07 01 00 00    	je     ffff800000106330 <vsprintf+0x1c0>
ffff800000106229:	8d 42 b4             	lea    -0x4c(%rdx),%eax
ffff80000010622c:	3c 2e                	cmp    $0x2e,%al
ffff80000010622e:	0f 87 8c 00 00 00    	ja     ffff8000001062c0 <vsprintf+0x150>
ffff800000106234:	48 be 01 00 00 10 01 	movabs $0x400110000001,%rsi
ffff80000010623b:	40 00 00 
ffff80000010623e:	48 0f a3 c6          	bt     %rax,%rsi
ffff800000106242:	73 7c                	jae    ffff8000001062c0 <vsprintf+0x150>
ffff800000106244:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
ffff800000106248:	4c 8d 73 01          	lea    0x1(%rbx),%r14
ffff80000010624c:	83 e8 25             	sub    $0x25,%eax
ffff80000010624f:	3c 53                	cmp    $0x53,%al
ffff800000106251:	0f 87 8c 00 00 00    	ja     ffff8000001062e3 <vsprintf+0x173>
ffff800000106257:	0f b6 c0             	movzbl %al,%eax
ffff80000010625a:	48 8d 35 37 38 00 00 	lea    0x3837(%rip),%rsi        # ffff800000109a98 <_etext+0x467>
ffff800000106261:	48 03 34 c6          	add    (%rsi,%rax,8),%rsi
ffff800000106265:	3e ff e6             	notrack jmp *%rsi
ffff800000106268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010626f:	00 
ffff800000106270:	41 83 c9 01          	or     $0x1,%r9d
ffff800000106274:	48 89 d8             	mov    %rbx,%rax
ffff800000106277:	e9 5c ff ff ff       	jmp    ffff8000001061d8 <vsprintf+0x68>
ffff80000010627c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106280:	41 83 c9 10          	or     $0x10,%r9d
ffff800000106284:	eb ee                	jmp    ffff800000106274 <vsprintf+0x104>
ffff800000106286:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010628d:	00 00 00 
ffff800000106290:	41 83 c9 04          	or     $0x4,%r9d
ffff800000106294:	eb de                	jmp    ffff800000106274 <vsprintf+0x104>
ffff800000106296:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010629d:	00 00 00 
ffff8000001062a0:	41 83 c9 20          	or     $0x20,%r9d
ffff8000001062a4:	eb ce                	jmp    ffff800000106274 <vsprintf+0x104>
ffff8000001062a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001062ad:	00 00 00 
ffff8000001062b0:	41 83 c9 08          	or     $0x8,%r9d
ffff8000001062b4:	eb be                	jmp    ffff800000106274 <vsprintf+0x104>
ffff8000001062b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001062bd:	00 00 00 
ffff8000001062c0:	83 ea 25             	sub    $0x25,%edx
ffff8000001062c3:	80 fa 53             	cmp    $0x53,%dl
ffff8000001062c6:	77 18                	ja     ffff8000001062e0 <vsprintf+0x170>
ffff8000001062c8:	0f b6 d2             	movzbl %dl,%edx
ffff8000001062cb:	48 8d 05 66 3a 00 00 	lea    0x3a66(%rip),%rax        # ffff800000109d38 <_etext+0x707>
ffff8000001062d2:	48 03 04 d0          	add    (%rax,%rdx,8),%rax
ffff8000001062d6:	3e ff e0             	notrack jmp *%rax
ffff8000001062d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001062e0:	49 89 de             	mov    %rbx,%r14
ffff8000001062e3:	c6 07 25             	movb   $0x25,(%rdi)
ffff8000001062e6:	41 0f b6 06          	movzbl (%r14),%eax
ffff8000001062ea:	84 c0                	test   %al,%al
ffff8000001062ec:	0f 84 6f 05 00 00    	je     ffff800000106861 <vsprintf+0x6f1>
ffff8000001062f2:	88 47 01             	mov    %al,0x1(%rdi)
ffff8000001062f5:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff8000001062fa:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff8000001062fe:	48 83 c7 02          	add    $0x2,%rdi
ffff800000106302:	84 d2                	test   %dl,%dl
ffff800000106304:	0f 85 c3 fe ff ff    	jne    ffff8000001061cd <vsprintf+0x5d>
ffff80000010630a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000106310:	89 f8                	mov    %edi,%eax
ffff800000106312:	44 29 f8             	sub    %r15d,%eax
ffff800000106315:	c6 07 00             	movb   $0x0,(%rdi)
ffff800000106318:	48 83 c4 08          	add    $0x8,%rsp
ffff80000010631c:	5b                   	pop    %rbx
ffff80000010631d:	5d                   	pop    %rbp
ffff80000010631e:	41 5c                	pop    %r12
ffff800000106320:	41 5d                	pop    %r13
ffff800000106322:	41 5e                	pop    %r14
ffff800000106324:	41 5f                	pop    %r15
ffff800000106326:	c3                   	ret
ffff800000106327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010632e:	00 00 
ffff800000106330:	0f be 53 01          	movsbl 0x1(%rbx),%edx
ffff800000106334:	48 8d 43 01          	lea    0x1(%rbx),%rax
ffff800000106338:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff80000010633b:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010633f:	0f 86 4b 04 00 00    	jbe    ffff800000106790 <vsprintf+0x620>
ffff800000106345:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000106348:	0f 84 82 04 00 00    	je     ffff8000001067d0 <vsprintf+0x660>
ffff80000010634e:	48 89 c3             	mov    %rax,%rbx
ffff800000106351:	45 31 c0             	xor    %r8d,%r8d
ffff800000106354:	e9 d0 fe ff ff       	jmp    ffff800000106229 <vsprintf+0xb9>
ffff800000106359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000106360:	31 c9                	xor    %ecx,%ecx
ffff800000106362:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000106368:	83 ea 30             	sub    $0x30,%edx
ffff80000010636b:	8d 04 89             	lea    (%rcx,%rcx,4),%eax
ffff80000010636e:	48 83 c3 01          	add    $0x1,%rbx
ffff800000106372:	0f be d2             	movsbl %dl,%edx
ffff800000106375:	8d 0c 42             	lea    (%rdx,%rax,2),%ecx
ffff800000106378:	0f be 13             	movsbl (%rbx),%edx
ffff80000010637b:	8d 42 d0             	lea    -0x30(%rdx),%eax
ffff80000010637e:	3c 09                	cmp    $0x9,%al
ffff800000106380:	76 e6                	jbe    ffff800000106368 <vsprintf+0x1f8>
ffff800000106382:	e9 93 fe ff ff       	jmp    ffff80000010621a <vsprintf+0xaa>
ffff800000106387:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010638e:	00 00 
ffff800000106390:	41 8b 14 24          	mov    (%r12),%edx
ffff800000106394:	48 8d 58 02          	lea    0x2(%rax),%rbx
ffff800000106398:	83 fa 2f             	cmp    $0x2f,%edx
ffff80000010639b:	77 23                	ja     ffff8000001063c0 <vsprintf+0x250>
ffff80000010639d:	89 d1                	mov    %edx,%ecx
ffff80000010639f:	83 c2 08             	add    $0x8,%edx
ffff8000001063a2:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff8000001063a7:	41 89 14 24          	mov    %edx,(%r12)
ffff8000001063ab:	8b 09                	mov    (%rcx),%ecx
ffff8000001063ad:	85 c9                	test   %ecx,%ecx
ffff8000001063af:	79 06                	jns    ffff8000001063b7 <vsprintf+0x247>
ffff8000001063b1:	f7 d9                	neg    %ecx
ffff8000001063b3:	41 83 c9 10          	or     $0x10,%r9d
ffff8000001063b7:	0f be 50 02          	movsbl 0x2(%rax),%edx
ffff8000001063bb:	e9 5a fe ff ff       	jmp    ffff80000010621a <vsprintf+0xaa>
ffff8000001063c0:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff8000001063c5:	48 8d 51 08          	lea    0x8(%rcx),%rdx
ffff8000001063c9:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff8000001063ce:	eb db                	jmp    ffff8000001063ab <vsprintf+0x23b>
ffff8000001063d0:	41 83 c9 40          	or     $0x40,%r9d
ffff8000001063d4:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001063d8:	83 fa 6c             	cmp    $0x6c,%edx
ffff8000001063db:	0f 84 4f 06 00 00    	je     ffff800000106a30 <vsprintf+0x8c0>
ffff8000001063e1:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001063e4:	0f 87 3e 04 00 00    	ja     ffff800000106828 <vsprintf+0x6b8>
ffff8000001063ea:	89 c2                	mov    %eax,%edx
ffff8000001063ec:	83 c0 08             	add    $0x8,%eax
ffff8000001063ef:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001063f4:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001063f8:	8b 32                	mov    (%rdx),%esi
ffff8000001063fa:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001063ff:	eb 2f                	jmp    ffff800000106430 <vsprintf+0x2c0>
ffff800000106401:	41 83 c9 02          	or     $0x2,%r9d
ffff800000106405:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106409:	83 fa 6c             	cmp    $0x6c,%edx
ffff80000010640c:	0f 84 de 05 00 00    	je     ffff8000001069f0 <vsprintf+0x880>
ffff800000106412:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106415:	0f 87 f5 03 00 00    	ja     ffff800000106810 <vsprintf+0x6a0>
ffff80000010641b:	89 c2                	mov    %eax,%edx
ffff80000010641d:	83 c0 08             	add    $0x8,%eax
ffff800000106420:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106425:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106429:	8b 32                	mov    (%rdx),%esi
ffff80000010642b:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000106430:	48 b8 20 70 ff ff ff 	movabs $0xffffffffffff7020,%rax
ffff800000106437:	ff ff ff 
ffff80000010643a:	4c 01 e8             	add    %r13,%rax
ffff80000010643d:	ff d0                	call   *%rax
ffff80000010643f:	48 89 c7             	mov    %rax,%rdi
ffff800000106442:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106446:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010644b:	e9 75 fd ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106450:	49 89 de             	mov    %rbx,%r14
ffff800000106453:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000106456:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff80000010645a:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010645f:	48 83 c7 01          	add    $0x1,%rdi
ffff800000106463:	e9 5d fd ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106468:	49 89 de             	mov    %rbx,%r14
ffff80000010646b:	41 83 e1 10          	and    $0x10,%r9d
ffff80000010646f:	0f 84 16 04 00 00    	je     ffff80000010688b <vsprintf+0x71b>
ffff800000106475:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106479:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010647c:	0f 87 cc 03 00 00    	ja     ffff80000010684e <vsprintf+0x6de>
ffff800000106482:	89 c2                	mov    %eax,%edx
ffff800000106484:	83 c0 08             	add    $0x8,%eax
ffff800000106487:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff80000010648c:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106490:	8b 02                	mov    (%rdx),%eax
ffff800000106492:	8d 71 ff             	lea    -0x1(%rcx),%esi
ffff800000106495:	4c 8d 57 01          	lea    0x1(%rdi),%r10
ffff800000106499:	41 89 f0             	mov    %esi,%r8d
ffff80000010649c:	88 07                	mov    %al,(%rdi)
ffff80000010649e:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff8000001064a2:	85 f6                	test   %esi,%esi
ffff8000001064a4:	0f 8e f5 08 00 00    	jle    ffff800000106d9f <vsprintf+0xc2f>
ffff8000001064aa:	8d 51 fe             	lea    -0x2(%rcx),%edx
ffff8000001064ad:	83 fa 0e             	cmp    $0xe,%edx
ffff8000001064b0:	0f 8e f6 08 00 00    	jle    ffff800000106dac <vsprintf+0xc3c>
ffff8000001064b6:	41 c1 e8 04          	shr    $0x4,%r8d
ffff8000001064ba:	48 89 fa             	mov    %rdi,%rdx
ffff8000001064bd:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff8000001064c4:	ff ff ff 
ffff8000001064c7:	49 c1 e0 04          	shl    $0x4,%r8
ffff8000001064cb:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff8000001064d1:	4d 8d 1c 38          	lea    (%r8,%rdi,1),%r11
ffff8000001064d5:	41 83 e0 10          	and    $0x10,%r8d
ffff8000001064d9:	74 15                	je     ffff8000001064f0 <vsprintf+0x380>
ffff8000001064db:	48 8d 57 10          	lea    0x10(%rdi),%rdx
ffff8000001064df:	0f 11 47 01          	movups %xmm0,0x1(%rdi)
ffff8000001064e3:	4c 39 da             	cmp    %r11,%rdx
ffff8000001064e6:	74 19                	je     ffff800000106501 <vsprintf+0x391>
ffff8000001064e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001064ef:	00 
ffff8000001064f0:	0f 11 42 01          	movups %xmm0,0x1(%rdx)
ffff8000001064f4:	48 83 c2 20          	add    $0x20,%rdx
ffff8000001064f8:	0f 11 42 f1          	movups %xmm0,-0xf(%rdx)
ffff8000001064fc:	4c 39 da             	cmp    %r11,%rdx
ffff8000001064ff:	75 ef                	jne    ffff8000001064f0 <vsprintf+0x380>
ffff800000106501:	41 89 f1             	mov    %esi,%r9d
ffff800000106504:	41 89 f0             	mov    %esi,%r8d
ffff800000106507:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff80000010650b:	44 89 ca             	mov    %r9d,%edx
ffff80000010650e:	45 29 c8             	sub    %r9d,%r8d
ffff800000106511:	4c 01 d2             	add    %r10,%rdx
ffff800000106514:	40 f6 c6 0f          	test   $0xf,%sil
ffff800000106518:	74 79                	je     ffff800000106593 <vsprintf+0x423>
ffff80000010651a:	44 29 c9             	sub    %r9d,%ecx
ffff80000010651d:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff800000106521:	83 e9 02             	sub    $0x2,%ecx
ffff800000106524:	83 f9 06             	cmp    $0x6,%ecx
ffff800000106527:	76 2b                	jbe    ffff800000106554 <vsprintf+0x3e4>
ffff800000106529:	41 8d 49 01          	lea    0x1(%r9),%ecx
ffff80000010652d:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106534:	ff ff ff 
ffff800000106537:	4f 8b 4c 0d 00       	mov    0x0(%r13,%r9,1),%r9
ffff80000010653c:	4c 89 0c 0f          	mov    %r9,(%rdi,%rcx,1)
ffff800000106540:	44 89 d9             	mov    %r11d,%ecx
ffff800000106543:	83 e1 f8             	and    $0xfffffff8,%ecx
ffff800000106546:	89 cf                	mov    %ecx,%edi
ffff800000106548:	41 29 c8             	sub    %ecx,%r8d
ffff80000010654b:	48 01 fa             	add    %rdi,%rdx
ffff80000010654e:	41 83 e3 07          	and    $0x7,%r11d
ffff800000106552:	74 3f                	je     ffff800000106593 <vsprintf+0x423>
ffff800000106554:	c6 02 20             	movb   $0x20,(%rdx)
ffff800000106557:	41 83 f8 01          	cmp    $0x1,%r8d
ffff80000010655b:	7e 36                	jle    ffff800000106593 <vsprintf+0x423>
ffff80000010655d:	c6 42 01 20          	movb   $0x20,0x1(%rdx)
ffff800000106561:	41 83 f8 02          	cmp    $0x2,%r8d
ffff800000106565:	74 2c                	je     ffff800000106593 <vsprintf+0x423>
ffff800000106567:	c6 42 02 20          	movb   $0x20,0x2(%rdx)
ffff80000010656b:	41 83 f8 03          	cmp    $0x3,%r8d
ffff80000010656f:	74 22                	je     ffff800000106593 <vsprintf+0x423>
ffff800000106571:	c6 42 03 20          	movb   $0x20,0x3(%rdx)
ffff800000106575:	41 83 f8 04          	cmp    $0x4,%r8d
ffff800000106579:	74 18                	je     ffff800000106593 <vsprintf+0x423>
ffff80000010657b:	c6 42 04 20          	movb   $0x20,0x4(%rdx)
ffff80000010657f:	41 83 f8 05          	cmp    $0x5,%r8d
ffff800000106583:	74 0e                	je     ffff800000106593 <vsprintf+0x423>
ffff800000106585:	c6 42 05 20          	movb   $0x20,0x5(%rdx)
ffff800000106589:	41 83 f8 06          	cmp    $0x6,%r8d
ffff80000010658d:	74 04                	je     ffff800000106593 <vsprintf+0x423>
ffff80000010658f:	c6 42 06 20          	movb   $0x20,0x6(%rdx)
ffff800000106593:	48 63 f6             	movslq %esi,%rsi
ffff800000106596:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff80000010659b:	49 8d 3c 32          	lea    (%r10,%rsi,1),%rdi
ffff80000010659f:	e9 21 fc ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff8000001065a4:	49 89 de             	mov    %rbx,%r14
ffff8000001065a7:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001065ab:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001065ae:	0f 87 87 02 00 00    	ja     ffff80000010683b <vsprintf+0x6cb>
ffff8000001065b4:	89 c2                	mov    %eax,%edx
ffff8000001065b6:	83 c0 08             	add    $0x8,%eax
ffff8000001065b9:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001065be:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001065c2:	48 8b 32             	mov    (%rdx),%rsi
ffff8000001065c5:	80 3e 00             	cmpb   $0x0,(%rsi)
ffff8000001065c8:	0f 84 ca 07 00 00    	je     ffff800000106d98 <vsprintf+0xc28>
ffff8000001065ce:	48 89 f0             	mov    %rsi,%rax
ffff8000001065d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001065d8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001065dc:	80 38 00             	cmpb   $0x0,(%rax)
ffff8000001065df:	75 f7                	jne    ffff8000001065d8 <vsprintf+0x468>
ffff8000001065e1:	89 c2                	mov    %eax,%edx
ffff8000001065e3:	29 f2                	sub    %esi,%edx
ffff8000001065e5:	44 39 c2             	cmp    %r8d,%edx
ffff8000001065e8:	44 89 c0             	mov    %r8d,%eax
ffff8000001065eb:	0f 4e c2             	cmovle %edx,%eax
ffff8000001065ee:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff8000001065f2:	0f 45 d0             	cmovne %eax,%edx
ffff8000001065f5:	41 83 e1 10          	and    $0x10,%r9d
ffff8000001065f9:	0f 84 0b 06 00 00    	je     ffff800000106c0a <vsprintf+0xa9a>
ffff8000001065ff:	85 d2                	test   %edx,%edx
ffff800000106601:	7e 3c                	jle    ffff80000010663f <vsprintf+0x4cf>
ffff800000106603:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000106606:	83 f8 06             	cmp    $0x6,%eax
ffff800000106609:	76 14                	jbe    ffff80000010661f <vsprintf+0x4af>
ffff80000010660b:	4c 8d 4e 01          	lea    0x1(%rsi),%r9
ffff80000010660f:	49 89 f8             	mov    %rdi,%r8
ffff800000106612:	4d 29 c8             	sub    %r9,%r8
ffff800000106615:	49 83 f8 0e          	cmp    $0xe,%r8
ffff800000106619:	0f 87 4c 04 00 00    	ja     ffff800000106a6b <vsprintf+0x8fb>
ffff80000010661f:	4c 63 ca             	movslq %edx,%r9
ffff800000106622:	31 c0                	xor    %eax,%eax
ffff800000106624:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106628:	44 0f b6 04 06       	movzbl (%rsi,%rax,1),%r8d
ffff80000010662d:	44 88 04 07          	mov    %r8b,(%rdi,%rax,1)
ffff800000106631:	48 83 c0 01          	add    $0x1,%rax
ffff800000106635:	4c 39 c8             	cmp    %r9,%rax
ffff800000106638:	75 ee                	jne    ffff800000106628 <vsprintf+0x4b8>
ffff80000010663a:	89 d0                	mov    %edx,%eax
ffff80000010663c:	48 01 c7             	add    %rax,%rdi
ffff80000010663f:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
ffff800000106643:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff800000106647:	39 d1                	cmp    %edx,%ecx
ffff800000106649:	0f 8e f7 fd ff ff    	jle    ffff800000106446 <vsprintf+0x2d6>
ffff80000010664f:	29 d1                	sub    %edx,%ecx
ffff800000106651:	48 89 fe             	mov    %rdi,%rsi
ffff800000106654:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
ffff800000106658:	41 83 fa 0e          	cmp    $0xe,%r10d
ffff80000010665c:	0f 86 55 07 00 00    	jbe    ffff800000106db7 <vsprintf+0xc47>
ffff800000106662:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106669:	ff ff ff 
ffff80000010666c:	41 89 cb             	mov    %ecx,%r11d
ffff80000010666f:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000106673:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff800000106679:	49 c1 e3 04          	shl    $0x4,%r11
ffff80000010667d:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000106681:	41 83 e3 10          	and    $0x10,%r11d
ffff800000106685:	74 11                	je     ffff800000106698 <vsprintf+0x528>
ffff800000106687:	48 8d 77 10          	lea    0x10(%rdi),%rsi
ffff80000010668b:	0f 11 07             	movups %xmm0,(%rdi)
ffff80000010668e:	48 39 f3             	cmp    %rsi,%rbx
ffff800000106691:	74 15                	je     ffff8000001066a8 <vsprintf+0x538>
ffff800000106693:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106698:	0f 11 06             	movups %xmm0,(%rsi)
ffff80000010669b:	48 83 c6 20          	add    $0x20,%rsi
ffff80000010669f:	0f 11 46 f0          	movups %xmm0,-0x10(%rsi)
ffff8000001066a3:	48 39 f3             	cmp    %rsi,%rbx
ffff8000001066a6:	75 f0                	jne    ffff800000106698 <vsprintf+0x528>
ffff8000001066a8:	41 89 c9             	mov    %ecx,%r9d
ffff8000001066ab:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff8000001066af:	44 89 ce             	mov    %r9d,%esi
ffff8000001066b2:	45 29 c8             	sub    %r9d,%r8d
ffff8000001066b5:	48 01 fe             	add    %rdi,%rsi
ffff8000001066b8:	f6 c1 0f             	test   $0xf,%cl
ffff8000001066bb:	0f 84 80 00 00 00    	je     ffff800000106741 <vsprintf+0x5d1>
ffff8000001066c1:	44 29 c9             	sub    %r9d,%ecx
ffff8000001066c4:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff8000001066c8:	41 83 fb 06          	cmp    $0x6,%r11d
ffff8000001066cc:	76 28                	jbe    ffff8000001066f6 <vsprintf+0x586>
ffff8000001066ce:	49 bb d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r11
ffff8000001066d5:	ff ff ff 
ffff8000001066d8:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
ffff8000001066dd:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
ffff8000001066e1:	41 89 c9             	mov    %ecx,%r9d
ffff8000001066e4:	41 83 e1 f8          	and    $0xfffffff8,%r9d
ffff8000001066e8:	45 89 cb             	mov    %r9d,%r11d
ffff8000001066eb:	45 29 c8             	sub    %r9d,%r8d
ffff8000001066ee:	4c 01 de             	add    %r11,%rsi
ffff8000001066f1:	83 e1 07             	and    $0x7,%ecx
ffff8000001066f4:	74 4b                	je     ffff800000106741 <vsprintf+0x5d1>
ffff8000001066f6:	c6 06 20             	movb   $0x20,(%rsi)
ffff8000001066f9:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
ffff8000001066fd:	44 39 c2             	cmp    %r8d,%edx
ffff800000106700:	7d 3f                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff800000106702:	c6 46 01 20          	movb   $0x20,0x1(%rsi)
ffff800000106706:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
ffff80000010670a:	39 ca                	cmp    %ecx,%edx
ffff80000010670c:	7d 33                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff80000010670e:	c6 46 02 20          	movb   $0x20,0x2(%rsi)
ffff800000106712:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
ffff800000106716:	44 39 ca             	cmp    %r9d,%edx
ffff800000106719:	7d 26                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff80000010671b:	c6 46 03 20          	movb   $0x20,0x3(%rsi)
ffff80000010671f:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
ffff800000106723:	39 ca                	cmp    %ecx,%edx
ffff800000106725:	7d 1a                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff800000106727:	c6 46 04 20          	movb   $0x20,0x4(%rsi)
ffff80000010672b:	41 83 e8 05          	sub    $0x5,%r8d
ffff80000010672f:	44 39 ca             	cmp    %r9d,%edx
ffff800000106732:	7d 0d                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff800000106734:	c6 46 05 20          	movb   $0x20,0x5(%rsi)
ffff800000106738:	44 39 c2             	cmp    %r8d,%edx
ffff80000010673b:	7d 04                	jge    ffff800000106741 <vsprintf+0x5d1>
ffff80000010673d:	c6 46 06 20          	movb   $0x20,0x6(%rsi)
ffff800000106741:	45 89 d2             	mov    %r10d,%r10d
ffff800000106744:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff800000106749:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
ffff80000010674e:	e9 72 fa ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106753:	49 89 de             	mov    %rbx,%r14
ffff800000106756:	83 f9 ff             	cmp    $0xffffffff,%ecx
ffff800000106759:	0f 84 1e 01 00 00    	je     ffff80000010687d <vsprintf+0x70d>
ffff80000010675f:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106763:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106766:	0f 87 fe 00 00 00    	ja     ffff80000010686a <vsprintf+0x6fa>
ffff80000010676c:	89 c2                	mov    %eax,%edx
ffff80000010676e:	83 c0 08             	add    $0x8,%eax
ffff800000106771:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106776:	41 89 04 24          	mov    %eax,(%r12)
ffff80000010677a:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010677d:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000106782:	e9 a9 fc ff ff       	jmp    ffff800000106430 <vsprintf+0x2c0>
ffff800000106787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010678e:	00 00 
ffff800000106790:	45 31 c0             	xor    %r8d,%r8d
ffff800000106793:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106798:	83 ea 30             	sub    $0x30,%edx
ffff80000010679b:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
ffff80000010679f:	48 83 c0 01          	add    $0x1,%rax
ffff8000001067a3:	0f be d2             	movsbl %dl,%edx
ffff8000001067a6:	44 8d 04 72          	lea    (%rdx,%rsi,2),%r8d
ffff8000001067aa:	0f be 10             	movsbl (%rax),%edx
ffff8000001067ad:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff8000001067b0:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001067b4:	76 e2                	jbe    ffff800000106798 <vsprintf+0x628>
ffff8000001067b6:	31 f6                	xor    %esi,%esi
ffff8000001067b8:	45 85 c0             	test   %r8d,%r8d
ffff8000001067bb:	48 89 c3             	mov    %rax,%rbx
ffff8000001067be:	44 0f 48 c6          	cmovs  %esi,%r8d
ffff8000001067c2:	e9 62 fa ff ff       	jmp    ffff800000106229 <vsprintf+0xb9>
ffff8000001067c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001067ce:	00 00 
ffff8000001067d0:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001067d4:	48 8d 73 02          	lea    0x2(%rbx),%rsi
ffff8000001067d8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001067db:	0f 87 77 02 00 00    	ja     ffff800000106a58 <vsprintf+0x8e8>
ffff8000001067e1:	89 c2                	mov    %eax,%edx
ffff8000001067e3:	83 c0 08             	add    $0x8,%eax
ffff8000001067e6:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001067eb:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001067ef:	44 8b 02             	mov    (%rdx),%r8d
ffff8000001067f2:	31 c0                	xor    %eax,%eax
ffff8000001067f4:	0f be 53 02          	movsbl 0x2(%rbx),%edx
ffff8000001067f8:	48 89 f3             	mov    %rsi,%rbx
ffff8000001067fb:	45 85 c0             	test   %r8d,%r8d
ffff8000001067fe:	44 0f 48 c0          	cmovs  %eax,%r8d
ffff800000106802:	e9 22 fa ff ff       	jmp    ffff800000106229 <vsprintf+0xb9>
ffff800000106807:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010680e:	00 00 
ffff800000106810:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106815:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106819:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010681e:	e9 06 fc ff ff       	jmp    ffff800000106429 <vsprintf+0x2b9>
ffff800000106823:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000106828:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff80000010682d:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106831:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106836:	e9 bd fb ff ff       	jmp    ffff8000001063f8 <vsprintf+0x288>
ffff80000010683b:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106840:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106844:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106849:	e9 74 fd ff ff       	jmp    ffff8000001065c2 <vsprintf+0x452>
ffff80000010684e:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106853:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106857:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010685c:	e9 2f fc ff ff       	jmp    ffff800000106490 <vsprintf+0x320>
ffff800000106861:	48 83 c7 01          	add    $0x1,%rdi
ffff800000106865:	e9 a6 fa ff ff       	jmp    ffff800000106310 <vsprintf+0x1a0>
ffff80000010686a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff80000010686f:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106873:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106878:	e9 fd fe ff ff       	jmp    ffff80000010677a <vsprintf+0x60a>
ffff80000010687d:	41 83 c9 01          	or     $0x1,%r9d
ffff800000106881:	b9 10 00 00 00       	mov    $0x10,%ecx
ffff800000106886:	e9 d4 fe ff ff       	jmp    ffff80000010675f <vsprintf+0x5ef>
ffff80000010688b:	8d 71 ff             	lea    -0x1(%rcx),%esi
ffff80000010688e:	41 89 f0             	mov    %esi,%r8d
ffff800000106891:	83 f9 01             	cmp    $0x1,%ecx
ffff800000106894:	0f 8e ef 04 00 00    	jle    ffff800000106d89 <vsprintf+0xc19>
ffff80000010689a:	8d 41 fe             	lea    -0x2(%rcx),%eax
ffff80000010689d:	83 f8 0e             	cmp    $0xe,%eax
ffff8000001068a0:	48 89 f8             	mov    %rdi,%rax
ffff8000001068a3:	0f 8e 31 05 00 00    	jle    ffff800000106dda <vsprintf+0xc6a>
ffff8000001068a9:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff8000001068b0:	ff ff ff 
ffff8000001068b3:	89 f2                	mov    %esi,%edx
ffff8000001068b5:	c1 ea 04             	shr    $0x4,%edx
ffff8000001068b8:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff8000001068be:	48 c1 e2 04          	shl    $0x4,%rdx
ffff8000001068c2:	4c 8d 04 3a          	lea    (%rdx,%rdi,1),%r8
ffff8000001068c6:	83 e2 10             	and    $0x10,%edx
ffff8000001068c9:	74 0c                	je     ffff8000001068d7 <vsprintf+0x767>
ffff8000001068cb:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff8000001068cf:	0f 11 07             	movups %xmm0,(%rdi)
ffff8000001068d2:	4c 39 c0             	cmp    %r8,%rax
ffff8000001068d5:	74 10                	je     ffff8000001068e7 <vsprintf+0x777>
ffff8000001068d7:	0f 11 00             	movups %xmm0,(%rax)
ffff8000001068da:	48 83 c0 20          	add    $0x20,%rax
ffff8000001068de:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff8000001068e2:	4c 39 c0             	cmp    %r8,%rax
ffff8000001068e5:	75 f0                	jne    ffff8000001068d7 <vsprintf+0x767>
ffff8000001068e7:	89 f2                	mov    %esi,%edx
ffff8000001068e9:	41 89 f0             	mov    %esi,%r8d
ffff8000001068ec:	83 e2 f0             	and    $0xfffffff0,%edx
ffff8000001068ef:	89 d0                	mov    %edx,%eax
ffff8000001068f1:	41 29 d0             	sub    %edx,%r8d
ffff8000001068f4:	48 01 f8             	add    %rdi,%rax
ffff8000001068f7:	40 f6 c6 0f          	test   $0xf,%sil
ffff8000001068fb:	74 74                	je     ffff800000106971 <vsprintf+0x801>
ffff8000001068fd:	29 d1                	sub    %edx,%ecx
ffff8000001068ff:	44 8d 49 ff          	lea    -0x1(%rcx),%r9d
ffff800000106903:	83 e9 02             	sub    $0x2,%ecx
ffff800000106906:	83 f9 06             	cmp    $0x6,%ecx
ffff800000106909:	76 27                	jbe    ffff800000106932 <vsprintf+0x7c2>
ffff80000010690b:	48 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rcx
ffff800000106912:	ff ff ff 
ffff800000106915:	49 8b 4c 0d 00       	mov    0x0(%r13,%rcx,1),%rcx
ffff80000010691a:	48 89 0c 17          	mov    %rcx,(%rdi,%rdx,1)
ffff80000010691e:	44 89 ca             	mov    %r9d,%edx
ffff800000106921:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000106924:	89 d1                	mov    %edx,%ecx
ffff800000106926:	41 29 d0             	sub    %edx,%r8d
ffff800000106929:	48 01 c8             	add    %rcx,%rax
ffff80000010692c:	41 83 e1 07          	and    $0x7,%r9d
ffff800000106930:	74 3f                	je     ffff800000106971 <vsprintf+0x801>
ffff800000106932:	c6 00 20             	movb   $0x20,(%rax)
ffff800000106935:	41 83 f8 01          	cmp    $0x1,%r8d
ffff800000106939:	7e 36                	jle    ffff800000106971 <vsprintf+0x801>
ffff80000010693b:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff80000010693f:	41 83 f8 02          	cmp    $0x2,%r8d
ffff800000106943:	74 2c                	je     ffff800000106971 <vsprintf+0x801>
ffff800000106945:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff800000106949:	41 83 f8 03          	cmp    $0x3,%r8d
ffff80000010694d:	74 22                	je     ffff800000106971 <vsprintf+0x801>
ffff80000010694f:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff800000106953:	41 83 f8 04          	cmp    $0x4,%r8d
ffff800000106957:	74 18                	je     ffff800000106971 <vsprintf+0x801>
ffff800000106959:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff80000010695d:	41 83 f8 05          	cmp    $0x5,%r8d
ffff800000106961:	74 0e                	je     ffff800000106971 <vsprintf+0x801>
ffff800000106963:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff800000106967:	41 83 f8 06          	cmp    $0x6,%r8d
ffff80000010696b:	74 04                	je     ffff800000106971 <vsprintf+0x801>
ffff80000010696d:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff800000106971:	48 63 f6             	movslq %esi,%rsi
ffff800000106974:	31 c9                	xor    %ecx,%ecx
ffff800000106976:	48 01 f7             	add    %rsi,%rdi
ffff800000106979:	e9 f7 fa ff ff       	jmp    ffff800000106475 <vsprintf+0x305>
ffff80000010697e:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106982:	83 fa 6c             	cmp    $0x6c,%edx
ffff800000106985:	0f 84 29 02 00 00    	je     ffff800000106bb4 <vsprintf+0xa44>
ffff80000010698b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010698e:	0f 87 50 02 00 00    	ja     ffff800000106be4 <vsprintf+0xa74>
ffff800000106994:	89 c2                	mov    %eax,%edx
ffff800000106996:	83 c0 08             	add    $0x8,%eax
ffff800000106999:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff80000010699e:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001069a2:	48 8b 02             	mov    (%rdx),%rax
ffff8000001069a5:	48 89 fa             	mov    %rdi,%rdx
ffff8000001069a8:	4c 29 fa             	sub    %r15,%rdx
ffff8000001069ab:	89 10                	mov    %edx,(%rax)
ffff8000001069ad:	49 8d 46 01          	lea    0x1(%r14),%rax
ffff8000001069b1:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff8000001069b6:	e9 0a f8 ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff8000001069bb:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001069bf:	83 fa 6c             	cmp    $0x6c,%edx
ffff8000001069c2:	0f 84 c8 01 00 00    	je     ffff800000106b90 <vsprintf+0xa20>
ffff8000001069c8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001069cb:	0f 87 26 02 00 00    	ja     ffff800000106bf7 <vsprintf+0xa87>
ffff8000001069d1:	89 c2                	mov    %eax,%edx
ffff8000001069d3:	83 c0 08             	add    $0x8,%eax
ffff8000001069d6:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001069db:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001069df:	8b 32                	mov    (%rdx),%esi
ffff8000001069e1:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001069e6:	e9 45 fa ff ff       	jmp    ffff800000106430 <vsprintf+0x2c0>
ffff8000001069eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001069f0:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001069f3:	0f 87 71 01 00 00    	ja     ffff800000106b6a <vsprintf+0x9fa>
ffff8000001069f9:	89 c2                	mov    %eax,%edx
ffff8000001069fb:	83 c0 08             	add    $0x8,%eax
ffff8000001069fe:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106a03:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106a07:	48 8b 32             	mov    (%rdx),%rsi
ffff800000106a0a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000106a0f:	48 b8 20 70 ff ff ff 	movabs $0xffffffffffff7020,%rax
ffff800000106a16:	ff ff ff 
ffff800000106a19:	4c 01 e8             	add    %r13,%rax
ffff800000106a1c:	ff d0                	call   *%rax
ffff800000106a1e:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
ffff800000106a22:	48 89 c7             	mov    %rax,%rdi
ffff800000106a25:	48 8d 43 02          	lea    0x2(%rbx),%rax
ffff800000106a29:	e9 97 f7 ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106a2e:	66 90                	xchg   %ax,%ax
ffff800000106a30:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106a33:	0f 87 44 01 00 00    	ja     ffff800000106b7d <vsprintf+0xa0d>
ffff800000106a39:	89 c2                	mov    %eax,%edx
ffff800000106a3b:	83 c0 08             	add    $0x8,%eax
ffff800000106a3e:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106a43:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106a47:	48 8b 32             	mov    (%rdx),%rsi
ffff800000106a4a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000106a4f:	eb be                	jmp    ffff800000106a0f <vsprintf+0x89f>
ffff800000106a51:	31 c0                	xor    %eax,%eax
ffff800000106a53:	e9 bd f8 ff ff       	jmp    ffff800000106315 <vsprintf+0x1a5>
ffff800000106a58:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106a5d:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106a61:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106a66:	e9 84 fd ff ff       	jmp    ffff8000001067ef <vsprintf+0x67f>
ffff800000106a6b:	83 f8 0e             	cmp    $0xe,%eax
ffff800000106a6e:	0f 86 4b 03 00 00    	jbe    ffff800000106dbf <vsprintf+0xc4f>
ffff800000106a74:	41 89 d0             	mov    %edx,%r8d
ffff800000106a77:	31 c0                	xor    %eax,%eax
ffff800000106a79:	41 c1 e8 04          	shr    $0x4,%r8d
ffff800000106a7d:	49 c1 e0 04          	shl    $0x4,%r8
ffff800000106a81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000106a88:	f3 0f 6f 0c 06       	movdqu (%rsi,%rax,1),%xmm1
ffff800000106a8d:	0f 11 0c 07          	movups %xmm1,(%rdi,%rax,1)
ffff800000106a91:	48 83 c0 10          	add    $0x10,%rax
ffff800000106a95:	4c 39 c0             	cmp    %r8,%rax
ffff800000106a98:	75 ee                	jne    ffff800000106a88 <vsprintf+0x918>
ffff800000106a9a:	89 d0                	mov    %edx,%eax
ffff800000106a9c:	83 e0 f0             	and    $0xfffffff0,%eax
ffff800000106a9f:	41 89 c0             	mov    %eax,%r8d
ffff800000106aa2:	41 89 c2             	mov    %eax,%r10d
ffff800000106aa5:	4e 8d 0c 07          	lea    (%rdi,%r8,1),%r9
ffff800000106aa9:	49 01 f0             	add    %rsi,%r8
ffff800000106aac:	39 c2                	cmp    %eax,%edx
ffff800000106aae:	0f 84 86 fb ff ff    	je     ffff80000010663a <vsprintf+0x4ca>
ffff800000106ab4:	41 89 d3             	mov    %edx,%r11d
ffff800000106ab7:	41 29 c3             	sub    %eax,%r11d
ffff800000106aba:	41 8d 5b ff          	lea    -0x1(%r11),%ebx
ffff800000106abe:	83 fb 06             	cmp    $0x6,%ebx
ffff800000106ac1:	76 23                	jbe    ffff800000106ae6 <vsprintf+0x976>
ffff800000106ac3:	4a 8b 34 16          	mov    (%rsi,%r10,1),%rsi
ffff800000106ac7:	4a 89 34 17          	mov    %rsi,(%rdi,%r10,1)
ffff800000106acb:	44 89 de             	mov    %r11d,%esi
ffff800000106ace:	83 e6 f8             	and    $0xfffffff8,%esi
ffff800000106ad1:	41 89 f2             	mov    %esi,%r10d
ffff800000106ad4:	01 f0                	add    %esi,%eax
ffff800000106ad6:	4d 01 d1             	add    %r10,%r9
ffff800000106ad9:	4d 01 d0             	add    %r10,%r8
ffff800000106adc:	41 83 e3 07          	and    $0x7,%r11d
ffff800000106ae0:	0f 84 54 fb ff ff    	je     ffff80000010663a <vsprintf+0x4ca>
ffff800000106ae6:	41 0f b6 30          	movzbl (%r8),%esi
ffff800000106aea:	41 88 31             	mov    %sil,(%r9)
ffff800000106aed:	8d 70 01             	lea    0x1(%rax),%esi
ffff800000106af0:	39 f2                	cmp    %esi,%edx
ffff800000106af2:	0f 8e 42 fb ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106af8:	41 0f b6 70 01       	movzbl 0x1(%r8),%esi
ffff800000106afd:	41 88 71 01          	mov    %sil,0x1(%r9)
ffff800000106b01:	8d 70 02             	lea    0x2(%rax),%esi
ffff800000106b04:	39 f2                	cmp    %esi,%edx
ffff800000106b06:	0f 8e 2e fb ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b0c:	41 0f b6 70 02       	movzbl 0x2(%r8),%esi
ffff800000106b11:	41 88 71 02          	mov    %sil,0x2(%r9)
ffff800000106b15:	8d 70 03             	lea    0x3(%rax),%esi
ffff800000106b18:	39 f2                	cmp    %esi,%edx
ffff800000106b1a:	0f 8e 1a fb ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b20:	41 0f b6 70 03       	movzbl 0x3(%r8),%esi
ffff800000106b25:	41 88 71 03          	mov    %sil,0x3(%r9)
ffff800000106b29:	8d 70 04             	lea    0x4(%rax),%esi
ffff800000106b2c:	39 f2                	cmp    %esi,%edx
ffff800000106b2e:	0f 8e 06 fb ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b34:	41 0f b6 70 04       	movzbl 0x4(%r8),%esi
ffff800000106b39:	41 88 71 04          	mov    %sil,0x4(%r9)
ffff800000106b3d:	8d 70 05             	lea    0x5(%rax),%esi
ffff800000106b40:	39 f2                	cmp    %esi,%edx
ffff800000106b42:	0f 8e f2 fa ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b48:	41 0f b6 70 05       	movzbl 0x5(%r8),%esi
ffff800000106b4d:	83 c0 06             	add    $0x6,%eax
ffff800000106b50:	41 88 71 05          	mov    %sil,0x5(%r9)
ffff800000106b54:	39 c2                	cmp    %eax,%edx
ffff800000106b56:	0f 8e de fa ff ff    	jle    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b5c:	41 0f b6 40 06       	movzbl 0x6(%r8),%eax
ffff800000106b61:	41 88 41 06          	mov    %al,0x6(%r9)
ffff800000106b65:	e9 d0 fa ff ff       	jmp    ffff80000010663a <vsprintf+0x4ca>
ffff800000106b6a:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b6f:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106b73:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106b78:	e9 8a fe ff ff       	jmp    ffff800000106a07 <vsprintf+0x897>
ffff800000106b7d:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b82:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106b86:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106b8b:	e9 b7 fe ff ff       	jmp    ffff800000106a47 <vsprintf+0x8d7>
ffff800000106b90:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106b93:	0f 86 7a 01 00 00    	jbe    ffff800000106d13 <vsprintf+0xba3>
ffff800000106b99:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106b9e:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106ba2:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106ba7:	48 8b 32             	mov    (%rdx),%rsi
ffff800000106baa:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000106baf:	e9 5b fe ff ff       	jmp    ffff800000106a0f <vsprintf+0x89f>
ffff800000106bb4:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000106bb7:	0f 86 69 01 00 00    	jbe    ffff800000106d26 <vsprintf+0xbb6>
ffff800000106bbd:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106bc2:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106bc6:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106bcb:	48 8b 02             	mov    (%rdx),%rax
ffff800000106bce:	48 89 fa             	mov    %rdi,%rdx
ffff800000106bd1:	4c 29 fa             	sub    %r15,%rdx
ffff800000106bd4:	48 89 10             	mov    %rdx,(%rax)
ffff800000106bd7:	48 8d 43 02          	lea    0x2(%rbx),%rax
ffff800000106bdb:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
ffff800000106bdf:	e9 e1 f5 ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106be4:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106be9:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106bed:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106bf2:	e9 ab fd ff ff       	jmp    ffff8000001069a2 <vsprintf+0x832>
ffff800000106bf7:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000106bfc:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000106c00:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000106c05:	e9 d5 fd ff ff       	jmp    ffff8000001069df <vsprintf+0x86f>
ffff800000106c0a:	44 8d 41 ff          	lea    -0x1(%rcx),%r8d
ffff800000106c0e:	39 d1                	cmp    %edx,%ecx
ffff800000106c10:	0f 8e 7a 01 00 00    	jle    ffff800000106d90 <vsprintf+0xc20>
ffff800000106c16:	29 d1                	sub    %edx,%ecx
ffff800000106c18:	48 89 f8             	mov    %rdi,%rax
ffff800000106c1b:	44 8d 51 ff          	lea    -0x1(%rcx),%r10d
ffff800000106c1f:	41 83 fa 0e          	cmp    $0xe,%r10d
ffff800000106c23:	0f 86 a9 01 00 00    	jbe    ffff800000106dd2 <vsprintf+0xc62>
ffff800000106c29:	49 b9 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r9
ffff800000106c30:	ff ff ff 
ffff800000106c33:	41 89 cb             	mov    %ecx,%r11d
ffff800000106c36:	41 c1 eb 04          	shr    $0x4,%r11d
ffff800000106c3a:	66 43 0f 6f 04 29    	movdqa (%r9,%r13,1),%xmm0
ffff800000106c40:	49 c1 e3 04          	shl    $0x4,%r11
ffff800000106c44:	49 8d 1c 3b          	lea    (%r11,%rdi,1),%rbx
ffff800000106c48:	41 83 e3 10          	and    $0x10,%r11d
ffff800000106c4c:	74 0c                	je     ffff800000106c5a <vsprintf+0xaea>
ffff800000106c4e:	48 8d 47 10          	lea    0x10(%rdi),%rax
ffff800000106c52:	0f 11 07             	movups %xmm0,(%rdi)
ffff800000106c55:	48 39 d8             	cmp    %rbx,%rax
ffff800000106c58:	74 10                	je     ffff800000106c6a <vsprintf+0xafa>
ffff800000106c5a:	0f 11 00             	movups %xmm0,(%rax)
ffff800000106c5d:	48 83 c0 20          	add    $0x20,%rax
ffff800000106c61:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
ffff800000106c65:	48 39 d8             	cmp    %rbx,%rax
ffff800000106c68:	75 f0                	jne    ffff800000106c5a <vsprintf+0xaea>
ffff800000106c6a:	41 89 c9             	mov    %ecx,%r9d
ffff800000106c6d:	41 83 e1 f0          	and    $0xfffffff0,%r9d
ffff800000106c71:	44 89 c8             	mov    %r9d,%eax
ffff800000106c74:	45 29 c8             	sub    %r9d,%r8d
ffff800000106c77:	48 01 f8             	add    %rdi,%rax
ffff800000106c7a:	f6 c1 0f             	test   $0xf,%cl
ffff800000106c7d:	0f 84 80 00 00 00    	je     ffff800000106d03 <vsprintf+0xb93>
ffff800000106c83:	44 29 c9             	sub    %r9d,%ecx
ffff800000106c86:	44 8d 59 ff          	lea    -0x1(%rcx),%r11d
ffff800000106c8a:	41 83 fb 06          	cmp    $0x6,%r11d
ffff800000106c8e:	76 28                	jbe    ffff800000106cb8 <vsprintf+0xb48>
ffff800000106c90:	49 bb d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r11
ffff800000106c97:	ff ff ff 
ffff800000106c9a:	4f 8b 5c 1d 00       	mov    0x0(%r13,%r11,1),%r11
ffff800000106c9f:	4e 89 1c 0f          	mov    %r11,(%rdi,%r9,1)
ffff800000106ca3:	41 89 c9             	mov    %ecx,%r9d
ffff800000106ca6:	41 83 e1 f8          	and    $0xfffffff8,%r9d
ffff800000106caa:	45 89 cb             	mov    %r9d,%r11d
ffff800000106cad:	45 29 c8             	sub    %r9d,%r8d
ffff800000106cb0:	4c 01 d8             	add    %r11,%rax
ffff800000106cb3:	83 e1 07             	and    $0x7,%ecx
ffff800000106cb6:	74 4b                	je     ffff800000106d03 <vsprintf+0xb93>
ffff800000106cb8:	c6 00 20             	movb   $0x20,(%rax)
ffff800000106cbb:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
ffff800000106cbf:	44 39 c2             	cmp    %r8d,%edx
ffff800000106cc2:	7d 3f                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106cc4:	c6 40 01 20          	movb   $0x20,0x1(%rax)
ffff800000106cc8:	45 8d 48 fe          	lea    -0x2(%r8),%r9d
ffff800000106ccc:	39 ca                	cmp    %ecx,%edx
ffff800000106cce:	7d 33                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106cd0:	c6 40 02 20          	movb   $0x20,0x2(%rax)
ffff800000106cd4:	41 8d 48 fd          	lea    -0x3(%r8),%ecx
ffff800000106cd8:	44 39 ca             	cmp    %r9d,%edx
ffff800000106cdb:	7d 26                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106cdd:	c6 40 03 20          	movb   $0x20,0x3(%rax)
ffff800000106ce1:	45 8d 48 fc          	lea    -0x4(%r8),%r9d
ffff800000106ce5:	39 ca                	cmp    %ecx,%edx
ffff800000106ce7:	7d 1a                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106ce9:	c6 40 04 20          	movb   $0x20,0x4(%rax)
ffff800000106ced:	41 83 e8 05          	sub    $0x5,%r8d
ffff800000106cf1:	44 39 ca             	cmp    %r9d,%edx
ffff800000106cf4:	7d 0d                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106cf6:	c6 40 05 20          	movb   $0x20,0x5(%rax)
ffff800000106cfa:	44 39 c2             	cmp    %r8d,%edx
ffff800000106cfd:	7d 04                	jge    ffff800000106d03 <vsprintf+0xb93>
ffff800000106cff:	c6 40 06 20          	movb   $0x20,0x6(%rax)
ffff800000106d03:	45 89 d2             	mov    %r10d,%r10d
ffff800000106d06:	8d 4a ff             	lea    -0x1(%rdx),%ecx
ffff800000106d09:	4a 8d 7c 17 01       	lea    0x1(%rdi,%r10,1),%rdi
ffff800000106d0e:	e9 ec f8 ff ff       	jmp    ffff8000001065ff <vsprintf+0x48f>
ffff800000106d13:	89 c2                	mov    %eax,%edx
ffff800000106d15:	83 c0 08             	add    $0x8,%eax
ffff800000106d18:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106d1d:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106d21:	e9 81 fe ff ff       	jmp    ffff800000106ba7 <vsprintf+0xa37>
ffff800000106d26:	89 c2                	mov    %eax,%edx
ffff800000106d28:	83 c0 08             	add    $0x8,%eax
ffff800000106d2b:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000106d30:	41 89 04 24          	mov    %eax,(%r12)
ffff800000106d34:	e9 92 fe ff ff       	jmp    ffff800000106bcb <vsprintf+0xa5b>
ffff800000106d39:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d3d:	41 83 c9 02          	or     $0x2,%r9d
ffff800000106d41:	49 89 de             	mov    %rbx,%r14
ffff800000106d44:	e9 c9 f6 ff ff       	jmp    ffff800000106412 <vsprintf+0x2a2>
ffff800000106d49:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d4d:	41 83 c9 40          	or     $0x40,%r9d
ffff800000106d51:	49 89 de             	mov    %rbx,%r14
ffff800000106d54:	e9 88 f6 ff ff       	jmp    ffff8000001063e1 <vsprintf+0x271>
ffff800000106d59:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d5d:	49 89 de             	mov    %rbx,%r14
ffff800000106d60:	e9 ad f6 ff ff       	jmp    ffff800000106412 <vsprintf+0x2a2>
ffff800000106d65:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d69:	49 89 de             	mov    %rbx,%r14
ffff800000106d6c:	e9 57 fc ff ff       	jmp    ffff8000001069c8 <vsprintf+0x858>
ffff800000106d71:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d75:	49 89 de             	mov    %rbx,%r14
ffff800000106d78:	e9 0e fc ff ff       	jmp    ffff80000010698b <vsprintf+0x81b>
ffff800000106d7d:	41 8b 04 24          	mov    (%r12),%eax
ffff800000106d81:	49 89 de             	mov    %rbx,%r14
ffff800000106d84:	e9 58 f6 ff ff       	jmp    ffff8000001063e1 <vsprintf+0x271>
ffff800000106d89:	89 f1                	mov    %esi,%ecx
ffff800000106d8b:	e9 e5 f6 ff ff       	jmp    ffff800000106475 <vsprintf+0x305>
ffff800000106d90:	44 89 c1             	mov    %r8d,%ecx
ffff800000106d93:	e9 67 f8 ff ff       	jmp    ffff8000001065ff <vsprintf+0x48f>
ffff800000106d98:	31 d2                	xor    %edx,%edx
ffff800000106d9a:	e9 46 f8 ff ff       	jmp    ffff8000001065e5 <vsprintf+0x475>
ffff800000106d9f:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
ffff800000106da4:	4c 89 d7             	mov    %r10,%rdi
ffff800000106da7:	e9 19 f4 ff ff       	jmp    ffff8000001061c5 <vsprintf+0x55>
ffff800000106dac:	4c 89 d2             	mov    %r10,%rdx
ffff800000106daf:	45 31 c9             	xor    %r9d,%r9d
ffff800000106db2:	e9 63 f7 ff ff       	jmp    ffff80000010651a <vsprintf+0x3aa>
ffff800000106db7:	45 31 c9             	xor    %r9d,%r9d
ffff800000106dba:	e9 02 f9 ff ff       	jmp    ffff8000001066c1 <vsprintf+0x551>
ffff800000106dbf:	41 89 d3             	mov    %edx,%r11d
ffff800000106dc2:	49 89 f0             	mov    %rsi,%r8
ffff800000106dc5:	49 89 f9             	mov    %rdi,%r9
ffff800000106dc8:	45 31 d2             	xor    %r10d,%r10d
ffff800000106dcb:	31 c0                	xor    %eax,%eax
ffff800000106dcd:	e9 f1 fc ff ff       	jmp    ffff800000106ac3 <vsprintf+0x953>
ffff800000106dd2:	45 31 c9             	xor    %r9d,%r9d
ffff800000106dd5:	e9 a9 fe ff ff       	jmp    ffff800000106c83 <vsprintf+0xb13>
ffff800000106dda:	31 d2                	xor    %edx,%edx
ffff800000106ddc:	e9 1c fb ff ff       	jmp    ffff8000001068fd <vsprintf+0x78d>
ffff800000106de1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
ffff800000106de8:	00 00 00 00 
ffff800000106dec:	0f 1f 40 00          	nopl   0x0(%rax)

ffff800000106df0 <color_printk>:
ffff800000106df0:	f3 0f 1e fa          	endbr64
ffff800000106df4:	49 bb 0c 63 00 00 00 	movabs $0x630c,%r11
ffff800000106dfb:	00 00 00 
ffff800000106dfe:	41 57                	push   %r15
ffff800000106e00:	41 89 f7             	mov    %esi,%r15d
ffff800000106e03:	48 89 d6             	mov    %rdx,%rsi
ffff800000106e06:	41 56                	push   %r14
ffff800000106e08:	41 55                	push   %r13
ffff800000106e0a:	41 89 fd             	mov    %edi,%r13d
ffff800000106e0d:	41 54                	push   %r12
ffff800000106e0f:	55                   	push   %rbp
ffff800000106e10:	48 8d 2d dd ff ff ff 	lea    -0x23(%rip),%rbp        # ffff800000106df4 <color_printk+0x4>
ffff800000106e17:	53                   	push   %rbx
ffff800000106e18:	4c 01 dd             	add    %r11,%rbp
ffff800000106e1b:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
ffff800000106e22:	48 89 8c 24 88 01 00 	mov    %rcx,0x188(%rsp)
ffff800000106e29:	00 
ffff800000106e2a:	4c 89 84 24 90 01 00 	mov    %r8,0x190(%rsp)
ffff800000106e31:	00 
ffff800000106e32:	4c 89 8c 24 98 01 00 	mov    %r9,0x198(%rsp)
ffff800000106e39:	00 
ffff800000106e3a:	84 c0                	test   %al,%al
ffff800000106e3c:	74 40                	je     ffff800000106e7e <color_printk+0x8e>
ffff800000106e3e:	0f 29 84 24 a0 01 00 	movaps %xmm0,0x1a0(%rsp)
ffff800000106e45:	00 
ffff800000106e46:	0f 29 8c 24 b0 01 00 	movaps %xmm1,0x1b0(%rsp)
ffff800000106e4d:	00 
ffff800000106e4e:	0f 29 94 24 c0 01 00 	movaps %xmm2,0x1c0(%rsp)
ffff800000106e55:	00 
ffff800000106e56:	0f 29 9c 24 d0 01 00 	movaps %xmm3,0x1d0(%rsp)
ffff800000106e5d:	00 
ffff800000106e5e:	0f 29 a4 24 e0 01 00 	movaps %xmm4,0x1e0(%rsp)
ffff800000106e65:	00 
ffff800000106e66:	0f 29 ac 24 f0 01 00 	movaps %xmm5,0x1f0(%rsp)
ffff800000106e6d:	00 
ffff800000106e6e:	0f 29 b4 24 00 02 00 	movaps %xmm6,0x200(%rsp)
ffff800000106e75:	00 
ffff800000106e76:	0f 29 bc 24 10 02 00 	movaps %xmm7,0x210(%rsp)
ffff800000106e7d:	00 
ffff800000106e7e:	48 8d 84 24 60 02 00 	lea    0x260(%rsp),%rax
ffff800000106e85:	00 
ffff800000106e86:	48 8d 94 24 58 01 00 	lea    0x158(%rsp),%rdx
ffff800000106e8d:	00 
ffff800000106e8e:	c7 84 24 58 01 00 00 	movl   $0x18,0x158(%rsp)
ffff800000106e95:	18 00 00 00 
ffff800000106e99:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
ffff800000106ea0:	00 
ffff800000106ea1:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
ffff800000106ea8:	00 
ffff800000106ea9:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
ffff800000106eb0:	00 
ffff800000106eb1:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000106eb8:	00 00 00 
ffff800000106ebb:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
ffff800000106ec2:	00 
ffff800000106ec3:	48 8d 3c 28          	lea    (%rax,%rbp,1),%rdi
ffff800000106ec7:	48 b8 70 90 ff ff ff 	movabs $0xffffffffffff9070,%rax
ffff800000106ece:	ff ff ff 
ffff800000106ed1:	c7 84 24 5c 01 00 00 	movl   $0x30,0x15c(%rsp)
ffff800000106ed8:	30 00 00 00 
ffff800000106edc:	48 01 e8             	add    %rbp,%rax
ffff800000106edf:	ff d0                	call   *%rax
ffff800000106ee1:	89 84 24 d4 00 00 00 	mov    %eax,0xd4(%rsp)
ffff800000106ee8:	85 c0                	test   %eax,%eax
ffff800000106eea:	0f 8e 10 0d 00 00    	jle    ffff800000107c00 <color_printk+0xe10>
ffff800000106ef0:	49 be 20 10 00 00 00 	movabs $0x1020,%r14
ffff800000106ef7:	00 00 00 
ffff800000106efa:	45 31 e4             	xor    %r12d,%r12d
ffff800000106efd:	c7 84 24 d0 00 00 00 	movl   $0x0,0xd0(%rsp)
ffff800000106f04:	00 00 00 00 
ffff800000106f08:	49 8b 44 2e 18       	mov    0x18(%r14,%rbp,1),%rax
ffff800000106f0d:	45 8b 44 2e 14       	mov    0x14(%r14,%rbp,1),%r8d
ffff800000106f12:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000106f17:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000106f1b:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
ffff800000106f20:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff800000106f25:	45 89 c1             	mov    %r8d,%r9d
ffff800000106f28:	45 89 e0             	mov    %r12d,%r8d
ffff800000106f2b:	48 b8 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rax
ffff800000106f32:	ff ff ff 
ffff800000106f35:	48 01 e8             	add    %rbp,%rax
ffff800000106f38:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
ffff800000106f3f:	00 
ffff800000106f40:	48 b8 f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rax
ffff800000106f47:	ff ff ff 
ffff800000106f4a:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
ffff800000106f51:	00 
ffff800000106f52:	48 b8 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rax
ffff800000106f59:	ff ff ff 
ffff800000106f5c:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
ffff800000106f63:	00 
ffff800000106f64:	48 b8 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rax
ffff800000106f6b:	ff ff ff 
ffff800000106f6e:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
ffff800000106f75:	00 
ffff800000106f76:	48 01 e8             	add    %rbp,%rax
ffff800000106f79:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
ffff800000106f80:	00 
ffff800000106f81:	48 83 c0 0f          	add    $0xf,%rax
ffff800000106f85:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
ffff800000106f8c:	00 
ffff800000106f8d:	48 b8 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rax
ffff800000106f94:	ff ff ff 
ffff800000106f97:	48 01 e8             	add    %rbp,%rax
ffff800000106f9a:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
ffff800000106fa1:	00 
ffff800000106fa2:	44 89 f8             	mov    %r15d,%eax
ffff800000106fa5:	45 89 ef             	mov    %r13d,%r15d
ffff800000106fa8:	89 44 24 08          	mov    %eax,0x8(%rsp)
ffff800000106fac:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000106fb0:	8b 94 24 d0 00 00 00 	mov    0xd0(%rsp),%edx
ffff800000106fb7:	85 d2                	test   %edx,%edx
ffff800000106fb9:	0f 8f 0f 0d 00 00    	jg     ffff800000107cce <color_printk+0xede>
ffff800000106fbf:	48 8b 84 24 10 01 00 	mov    0x110(%rsp),%rax
ffff800000106fc6:	00 
ffff800000106fc7:	49 63 d0             	movslq %r8d,%rdx
ffff800000106fca:	41 83 c0 01          	add    $0x1,%r8d
ffff800000106fce:	48 01 e8             	add    %rbp,%rax
ffff800000106fd1:	0f b6 04 02          	movzbl (%rdx,%rax,1),%eax
ffff800000106fd5:	3c 0a                	cmp    $0xa,%al
ffff800000106fd7:	0f 84 d8 0c 00 00    	je     ffff800000107cb5 <color_printk+0xec5>
ffff800000106fdd:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
ffff800000106fe2:	3c 08                	cmp    $0x8,%al
ffff800000106fe4:	0f 84 79 19 00 00    	je     ffff800000108963 <color_printk+0x1b73>
ffff800000106fea:	3c 09                	cmp    $0x9,%al
ffff800000106fec:	0f 84 53 19 00 00    	je     ffff800000108945 <color_printk+0x1b55>
ffff800000106ff2:	44 0f af c9          	imul   %ecx,%r9d
ffff800000106ff6:	4c 63 de             	movslq %esi,%r11
ffff800000106ff9:	0f b6 d8             	movzbl %al,%ebx
ffff800000106ffc:	4c 8b a4 24 40 01 00 	mov    0x140(%rsp),%r12
ffff800000107003:	00 
ffff800000107004:	0f af d7             	imul   %edi,%edx
ffff800000107007:	48 c1 e3 04          	shl    $0x4,%rbx
ffff80000010700b:	31 ff                	xor    %edi,%edi
ffff80000010700d:	4e 8d 14 23          	lea    (%rbx,%r12,1),%r10
ffff800000107011:	4a 8d 04 9d 00 00 00 	lea    0x0(,%r11,4),%rax
ffff800000107018:	00 
ffff800000107019:	44 0f af ce          	imul   %esi,%r9d
ffff80000010701d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
ffff800000107022:	48 63 d2             	movslq %edx,%rdx
ffff800000107025:	49 63 c9             	movslq %r9d,%rcx
ffff800000107028:	4d 8d 4c 1c 0f       	lea    0xf(%r12,%rbx,1),%r9
ffff80000010702d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
ffff800000107032:	48 01 ca             	add    %rcx,%rdx
ffff800000107035:	4c 89 d9             	mov    %r11,%rcx
ffff800000107038:	48 c1 e1 04          	shl    $0x4,%rcx
ffff80000010703c:	48 c1 e2 02          	shl    $0x2,%rdx
ffff800000107040:	4c 29 d9             	sub    %r11,%rcx
ffff800000107043:	48 c1 e1 02          	shl    $0x2,%rcx
ffff800000107047:	85 f6                	test   %esi,%esi
ffff800000107049:	48 0f 48 f9          	cmovs  %rcx,%rdi
ffff80000010704d:	48 01 d7             	add    %rdx,%rdi
ffff800000107050:	48 01 df             	add    %rbx,%rdi
ffff800000107053:	49 39 f9             	cmp    %rdi,%r9
ffff800000107056:	40 0f 92 c7          	setb   %dil
ffff80000010705a:	48 83 c1 1f          	add    $0x1f,%rcx
ffff80000010705e:	85 f6                	test   %esi,%esi
ffff800000107060:	be 1f 00 00 00       	mov    $0x1f,%esi
ffff800000107065:	48 0f 48 ce          	cmovs  %rsi,%rcx
ffff800000107069:	48 89 de             	mov    %rbx,%rsi
ffff80000010706c:	48 01 d1             	add    %rdx,%rcx
ffff80000010706f:	48 01 d9             	add    %rbx,%rcx
ffff800000107072:	4c 39 d1             	cmp    %r10,%rcx
ffff800000107075:	0f 92 c1             	setb   %cl
ffff800000107078:	40 08 f9             	or     %dil,%cl
ffff80000010707b:	0f 84 98 0b 00 00    	je     ffff800000107c19 <color_printk+0xe29>
ffff800000107081:	48 8d 48 1f          	lea    0x1f(%rax),%rcx
ffff800000107085:	48 89 c3             	mov    %rax,%rbx
ffff800000107088:	48 83 f9 3e          	cmp    $0x3e,%rcx
ffff80000010708c:	0f 86 87 0b 00 00    	jbe    ffff800000107c19 <color_printk+0xe29>
ffff800000107092:	4d 8d 6a 10          	lea    0x10(%r10),%r13
ffff800000107096:	4c 8d 24 16          	lea    (%rsi,%rdx,1),%r12
ffff80000010709a:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff80000010709f:	4c 89 d8             	mov    %r11,%rax
ffff8000001070a2:	49 8d 3c 1c          	lea    (%r12,%rbx,1),%rdi
ffff8000001070a6:	49 89 db             	mov    %rbx,%r11
ffff8000001070a9:	48 c1 e0 05          	shl    $0x5,%rax
ffff8000001070ad:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff8000001070b2:	48 8d 34 1f          	lea    (%rdi,%rbx,1),%rsi
ffff8000001070b6:	4c 89 ac 24 b8 00 00 	mov    %r13,0xb8(%rsp)
ffff8000001070bd:	00 
ffff8000001070be:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff8000001070c5:	ff ff ff 
ffff8000001070c8:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff8000001070ce:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff8000001070d3:	48 8d 0c 1e          	lea    (%rsi,%rbx,1),%rcx
ffff8000001070d7:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff8000001070de:	ff ff ff 
ffff8000001070e1:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff8000001070e7:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff8000001070ec:	48 8d 14 19          	lea    (%rcx,%rbx,1),%rdx
ffff8000001070f0:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff8000001070f5:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff8000001070fc:	ff ff ff 
ffff8000001070ff:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff800000107104:	4c 8d 0c 1a          	lea    (%rdx,%rbx,1),%r9
ffff800000107108:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff80000010710e:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107115:	ff ff ff 
ffff800000107118:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff80000010711d:	49 8d 1c 19          	lea    (%r9,%rbx,1),%rbx
ffff800000107121:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107128:	ff ff ff 
ffff80000010712b:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000107130:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
ffff800000107137:	00 
ffff800000107138:	49 01 db             	add    %rbx,%r11
ffff80000010713b:	44 89 84 24 08 01 00 	mov    %r8d,0x108(%rsp)
ffff800000107142:	00 
ffff800000107143:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107148:	4c 89 ac 24 c0 00 00 	mov    %r13,0xc0(%rsp)
ffff80000010714f:	00 
ffff800000107150:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
ffff800000107157:	00 
ffff800000107158:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff80000010715d:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000107164:	00 
ffff800000107165:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff80000010716c:	ff ff ff 
ffff80000010716f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107174:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff80000010717b:	00 
ffff80000010717c:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107183:	ff ff ff 
ffff800000107186:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff80000010718b:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000107192:	00 
ffff800000107193:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff80000010719a:	ff ff ff 
ffff80000010719d:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff8000001071a2:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff8000001071a9:	00 
ffff8000001071aa:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff8000001071b1:	ff ff ff 
ffff8000001071b4:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff8000001071b9:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff8000001071c0:	00 
ffff8000001071c1:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff8000001071c8:	ff ff ff 
ffff8000001071cb:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff8000001071d0:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff8000001071d7:	00 
ffff8000001071d8:	66 41 0f 7e d5       	movd   %xmm2,%r13d
ffff8000001071dd:	45 89 e8             	mov    %r13d,%r8d
ffff8000001071e0:	f3 41 0f 7e 12       	movq   (%r10),%xmm2
ffff8000001071e5:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff8000001071ea:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff8000001071ef:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff8000001071f4:	66 41 0f 6f e1       	movdqa %xmm9,%xmm4
ffff8000001071f9:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff8000001071fe:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff800000107203:	49 83 c2 08          	add    $0x8,%r10
ffff800000107207:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff80000010720b:	66 0f 64 c1          	pcmpgtb %xmm1,%xmm0
ffff80000010720f:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000107213:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff800000107217:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff80000010721b:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
ffff800000107220:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
ffff800000107224:	66 44 0f 6f f5       	movdqa %xmm5,%xmm14
ffff800000107229:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010722e:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff800000107233:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
ffff800000107237:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
ffff80000010723c:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
ffff800000107241:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000107246:	66 41 0f db de       	pand   %xmm14,%xmm3
ffff80000010724b:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000107250:	66 0f db c5          	pand   %xmm5,%xmm0
ffff800000107254:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff800000107259:	66 44 0f eb f3       	por    %xmm3,%xmm14
ffff80000010725e:	66 0f eb e8          	por    %xmm0,%xmm5
ffff800000107262:	66 41 0f 6f c7       	movdqa %xmm15,%xmm0
ffff800000107267:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff80000010726c:	66 45 0f 7e 34 24    	movd   %xmm14,(%r12)
ffff800000107272:	66 0f 65 c1          	pcmpgtw %xmm1,%xmm0
ffff800000107276:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff80000010727a:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff80000010727f:	66 41 0f 6f c3       	movdqa %xmm11,%xmm0
ffff800000107284:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107289:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff80000010728e:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff800000107293:	66 0f db c1          	pand   %xmm1,%xmm0
ffff800000107297:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010729c:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff8000001072a1:	66 0f eb c8          	por    %xmm0,%xmm1
ffff8000001072a5:	66 4d 0f 7e ed       	movq   %xmm13,%r13
ffff8000001072aa:	f3 0f 7e 84 24 c0 00 	movq   0xc0(%rsp),%xmm0
ffff8000001072b1:	00 00 
ffff8000001072b3:	66 0f d6 4c 24 08    	movq   %xmm1,0x8(%rsp)
ffff8000001072b9:	66 0f db c2          	pand   %xmm2,%xmm0
ffff8000001072bd:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001072c2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001072c7:	66 0f 64 e0          	pcmpgtb %xmm0,%xmm4
ffff8000001072cb:	66 0f 6f d8          	movdqa %xmm0,%xmm3
ffff8000001072cf:	66 0f 60 dc          	punpcklbw %xmm4,%xmm3
ffff8000001072d3:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff8000001072d7:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff8000001072db:	66 0f 6f e3          	movdqa %xmm3,%xmm4
ffff8000001072df:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001072e4:	66 0f 61 e6          	punpcklwd %xmm6,%xmm4
ffff8000001072e8:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff8000001072ec:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001072f1:	66 0f db fc          	pand   %xmm4,%xmm7
ffff8000001072f5:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001072fa:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001072ff:	66 0f eb e7          	por    %xmm7,%xmm4
ffff800000107303:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff800000107308:	66 0f db fb          	pand   %xmm3,%xmm7
ffff80000010730c:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107311:	66 0f d6 64 24 18    	movq   %xmm4,0x18(%rsp)
ffff800000107317:	66 0f eb df          	por    %xmm7,%xmm3
ffff80000010731b:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff800000107320:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff800000107324:	66 0f d6 5c 24 20    	movq   %xmm3,0x20(%rsp)
ffff80000010732a:	66 0f 6f e7          	movdqa %xmm7,%xmm4
ffff80000010732e:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000107332:	66 0f 61 fc          	punpcklwd %xmm4,%xmm7
ffff800000107336:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff80000010733a:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff80000010733e:	66 0f db f7          	pand   %xmm7,%xmm6
ffff800000107342:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107347:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010734c:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000107350:	66 0f eb fe          	por    %xmm6,%xmm7
ffff800000107354:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107359:	66 0f db f0          	pand   %xmm0,%xmm6
ffff80000010735d:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107362:	66 0f d6 7c 24 28    	movq   %xmm7,0x28(%rsp)
ffff800000107368:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff80000010736d:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000107371:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
ffff800000107378:	00 00 
ffff80000010737a:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
ffff800000107380:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000107384:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff800000107388:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff80000010738d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107392:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107397:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff80000010739b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010739f:	66 0f 6f e6          	movdqa %xmm6,%xmm4
ffff8000001073a3:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff8000001073a8:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff8000001073ac:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff8000001073b0:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff8000001073b4:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001073b8:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001073bd:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff8000001073c1:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff8000001073c5:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001073ca:	66 0f db f9          	pand   %xmm1,%xmm7
ffff8000001073ce:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001073d2:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001073d7:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001073db:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001073e0:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001073e5:	66 0f eb e7          	por    %xmm7,%xmm4
ffff8000001073e9:	66 0f db f3          	pand   %xmm3,%xmm6
ffff8000001073ed:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001073f2:	66 0f d6 64 24 38    	movq   %xmm4,0x38(%rsp)
ffff8000001073f8:	66 0f 6f e6          	movdqa %xmm6,%xmm4
ffff8000001073fc:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff800000107400:	66 41 0f 6f fb       	movdqa %xmm11,%xmm7
ffff800000107405:	66 0f eb f4          	por    %xmm4,%xmm6
ffff800000107409:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010740d:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000107411:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000107415:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
ffff80000010741b:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff80000010741f:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107424:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000107428:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010742c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107431:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107436:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010743b:	66 0f db c8          	pand   %xmm0,%xmm1
ffff80000010743f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107444:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000107448:	66 0f eb c1          	por    %xmm1,%xmm0
ffff80000010744c:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000107451:	66 0f d6 5c 24 48    	movq   %xmm3,0x48(%rsp)
ffff800000107457:	f3 0f 7e 8c 24 e0 00 	movq   0xe0(%rsp),%xmm1
ffff80000010745e:	00 00 
ffff800000107460:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
ffff800000107466:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010746a:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff80000010746e:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107473:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107478:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010747d:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107481:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000107485:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000107489:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff80000010748d:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107491:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000107495:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107499:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff80000010749e:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff8000001074a2:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff8000001074a6:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001074ab:	66 0f db f9          	pand   %xmm1,%xmm7
ffff8000001074af:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001074b3:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001074b8:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001074bd:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001074c2:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001074c6:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001074cb:	66 44 0f 6f c4       	movdqa %xmm4,%xmm8
ffff8000001074d0:	66 44 0f 6f e3       	movdqa %xmm3,%xmm12
ffff8000001074d5:	66 44 0f eb c7       	por    %xmm7,%xmm8
ffff8000001074da:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff8000001074df:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001074e4:	66 44 0f d6 44 24 58 	movq   %xmm8,0x58(%rsp)
ffff8000001074eb:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001074ef:	66 44 0f d6 64 24 60 	movq   %xmm12,0x60(%rsp)
ffff8000001074f6:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001074fa:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001074fe:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000107502:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff800000107506:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010750a:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010750e:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107513:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107518:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010751d:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000107521:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff800000107525:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff80000010752a:	66 0f eb fe          	por    %xmm6,%xmm7
ffff80000010752e:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107532:	66 0f eb f1          	por    %xmm1,%xmm6
ffff800000107536:	66 0f d6 7c 24 68    	movq   %xmm7,0x68(%rsp)
ffff80000010753c:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
ffff800000107543:	00 00 
ffff800000107545:	66 0f d6 74 24 70    	movq   %xmm6,0x70(%rsp)
ffff80000010754b:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010754f:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107553:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107558:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010755d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107562:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107566:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010756a:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010756e:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff800000107572:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107576:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010757a:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff80000010757f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107584:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107588:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff80000010758c:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff800000107590:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107594:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107598:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010759c:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001075a1:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff8000001075a6:	66 0f db cc          	pand   %xmm4,%xmm1
ffff8000001075aa:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001075af:	66 0f eb e1          	por    %xmm1,%xmm4
ffff8000001075b3:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001075b8:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001075bc:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001075c1:	66 0f d6 64 24 78    	movq   %xmm4,0x78(%rsp)
ffff8000001075c7:	66 0f eb d9          	por    %xmm1,%xmm3
ffff8000001075cb:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001075d0:	66 0f d6 9c 24 80 00 	movq   %xmm3,0x80(%rsp)
ffff8000001075d7:	00 00 
ffff8000001075d9:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001075dd:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001075e1:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001075e5:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001075e9:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001075ed:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001075f1:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001075f6:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001075fb:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001075ff:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107604:	66 44 0f 6f c3       	movdqa %xmm3,%xmm8
ffff800000107609:	66 44 0f eb c1       	por    %xmm1,%xmm8
ffff80000010760e:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107613:	66 44 0f d6 84 24 88 	movq   %xmm8,0x88(%rsp)
ffff80000010761a:	00 00 00 
ffff80000010761d:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000107621:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107626:	66 0f eb c1          	por    %xmm1,%xmm0
ffff80000010762a:	f3 0f 7e 8c 24 f0 00 	movq   0xf0(%rsp),%xmm1
ffff800000107631:	00 00 
ffff800000107633:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
ffff80000010763a:	00 00 
ffff80000010763c:	66 0f db ca          	pand   %xmm2,%xmm1
ffff800000107640:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107644:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107649:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010764e:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107653:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107657:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010765b:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010765f:	66 0f 60 cc          	punpcklbw %xmm4,%xmm1
ffff800000107663:	66 0f 60 c4          	punpcklbw %xmm4,%xmm0
ffff800000107667:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff80000010766b:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff800000107670:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107675:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107679:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff80000010767d:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff800000107681:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107685:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107689:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff80000010768d:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107692:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107697:	66 0f db cc          	pand   %xmm4,%xmm1
ffff80000010769b:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001076a0:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff8000001076a5:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff8000001076aa:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001076af:	66 44 0f d6 a4 24 98 	movq   %xmm12,0x98(%rsp)
ffff8000001076b6:	00 00 00 
ffff8000001076b9:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001076bd:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001076c2:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff8000001076c6:	66 0f eb f9          	por    %xmm1,%xmm7
ffff8000001076ca:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001076cf:	66 0f d6 bc 24 a0 00 	movq   %xmm7,0xa0(%rsp)
ffff8000001076d6:	00 00 
ffff8000001076d8:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001076dc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001076e0:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001076e4:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001076e8:	66 0f 61 c4          	punpcklwd %xmm4,%xmm0
ffff8000001076ec:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001076f0:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001076f5:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001076fa:	66 0f db cb          	pand   %xmm3,%xmm1
ffff8000001076fe:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107703:	66 0f eb d9          	por    %xmm1,%xmm3
ffff800000107707:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010770c:	66 0f d6 9c 24 a8 00 	movq   %xmm3,0xa8(%rsp)
ffff800000107713:	00 00 
ffff800000107715:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000107719:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff80000010771e:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107722:	66 0f eb f1          	por    %xmm1,%xmm6
ffff800000107726:	f3 0f 7e 8c 24 f8 00 	movq   0xf8(%rsp),%xmm1
ffff80000010772d:	00 00 
ffff80000010772f:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
ffff800000107736:	00 00 
ffff800000107738:	66 0f db ca          	pand   %xmm2,%xmm1
ffff80000010773c:	66 0f 6f c1          	movdqa %xmm1,%xmm0
ffff800000107740:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107745:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010774a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010774f:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000107753:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107757:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff80000010775b:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff80000010775f:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107763:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff800000107767:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff80000010776c:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107771:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
ffff800000107775:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107779:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff80000010777d:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000107781:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000107785:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
ffff80000010778a:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010778f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000107794:	66 41 0f db cc       	pand   %xmm12,%xmm1
ffff800000107799:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff80000010779e:	66 44 0f eb e1       	por    %xmm1,%xmm12
ffff8000001077a3:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001077a8:	66 0f db cc          	pand   %xmm4,%xmm1
ffff8000001077ac:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001077b1:	66 0f eb e1          	por    %xmm1,%xmm4
ffff8000001077b5:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff8000001077ba:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff8000001077be:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001077c2:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001077c6:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff8000001077ca:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001077ce:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff8000001077d3:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001077d8:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001077dd:	66 41 0f db c8       	pand   %xmm8,%xmm1
ffff8000001077e2:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff8000001077e7:	66 44 0f eb c1       	por    %xmm1,%xmm8
ffff8000001077ec:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff8000001077f1:	66 0f db c8          	pand   %xmm0,%xmm1
ffff8000001077f5:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001077fa:	66 0f eb c1          	por    %xmm1,%xmm0
ffff8000001077fe:	f3 0f 7e 8c 24 00 01 	movq   0x100(%rsp),%xmm1
ffff800000107805:	00 00 
ffff800000107807:	66 0f db d1          	pand   %xmm1,%xmm2
ffff80000010780b:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000107810:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff800000107815:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff80000010781a:	66 0f 64 ca          	pcmpgtb %xmm2,%xmm1
ffff80000010781e:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000107822:	66 0f 6f ca          	movdqa %xmm2,%xmm1
ffff800000107826:	66 0f 60 ce          	punpcklbw %xmm6,%xmm1
ffff80000010782a:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff80000010782e:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000107832:	66 41 0f 6f cf       	movdqa %xmm15,%xmm1
ffff800000107837:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff80000010783c:	66 0f 65 cb          	pcmpgtw %xmm3,%xmm1
ffff800000107840:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000107845:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000107849:	66 0f 6f cb          	movdqa %xmm3,%xmm1
ffff80000010784d:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000107851:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000107855:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff80000010785a:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff80000010785e:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff800000107863:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000107868:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff80000010786c:	66 0f db cf          	pand   %xmm7,%xmm1
ffff800000107870:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000107875:	66 0f eb f9          	por    %xmm1,%xmm7
ffff800000107879:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010787e:	66 0f db cb          	pand   %xmm3,%xmm1
ffff800000107882:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000107887:	66 0f eb d9          	por    %xmm1,%xmm3
ffff80000010788b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010788f:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000107894:	66 0f 61 d1          	punpcklwd %xmm1,%xmm2
ffff800000107898:	66 41 0f 6f cb       	movdqa %xmm11,%xmm1
ffff80000010789d:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff8000001078a2:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff8000001078a7:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff8000001078ac:	66 0f db ca          	pand   %xmm2,%xmm1
ffff8000001078b0:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff8000001078b5:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff8000001078ba:	66 0f eb d1          	por    %xmm1,%xmm2
ffff8000001078be:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff8000001078c3:	66 41 0f 70 ce e5    	pshufd $0xe5,%xmm14,%xmm1
ffff8000001078c9:	66 0f 7e 0f          	movd   %xmm1,(%rdi)
ffff8000001078cd:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
ffff8000001078d1:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001078d6:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff8000001078db:	66 4d 0f 6e ed       	movq   %r13,%xmm13
ffff8000001078e0:	66 0f 7e 09          	movd   %xmm1,(%rcx)
ffff8000001078e4:	f3 0f 7e 6c 24 08    	movq   0x8(%rsp),%xmm5
ffff8000001078ea:	66 41 0f 70 cd e5    	pshufd $0xe5,%xmm13,%xmm1
ffff8000001078f0:	44 89 2a             	mov    %r13d,(%rdx)
ffff8000001078f3:	66 41 0f 7e 09       	movd   %xmm1,(%r9)
ffff8000001078f8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001078fd:	66 0f 7e 2b          	movd   %xmm5,(%rbx)
ffff800000107901:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff800000107907:	66 41 0f 7e 0b       	movd   %xmm1,(%r11)
ffff80000010790c:	66 41 0f 7e 6c 24 04 	movd   %xmm5,0x4(%r12)
ffff800000107913:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107918:	f3 0f 7e 6c 24 20    	movq   0x20(%rsp),%xmm5
ffff80000010791e:	66 0f 7e 4f 04       	movd   %xmm1,0x4(%rdi)
ffff800000107923:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
ffff800000107928:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff80000010792d:	f3 0f 7e 6c 24 28    	movq   0x28(%rsp),%xmm5
ffff800000107933:	66 0f 7e 49 04       	movd   %xmm1,0x4(%rcx)
ffff800000107938:	66 0f 7e 6a 04       	movd   %xmm5,0x4(%rdx)
ffff80000010793d:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107942:	f3 0f 7e 6c 24 30    	movq   0x30(%rsp),%xmm5
ffff800000107948:	66 41 0f 7e 49 04    	movd   %xmm1,0x4(%r9)
ffff80000010794e:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
ffff800000107953:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107958:	f3 0f 7e 6c 24 38    	movq   0x38(%rsp),%xmm5
ffff80000010795e:	66 41 0f 7e 4b 04    	movd   %xmm1,0x4(%r11)
ffff800000107964:	66 41 0f 7e 6c 24 08 	movd   %xmm5,0x8(%r12)
ffff80000010796b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107970:	f3 0f 7e 6c 24 40    	movq   0x40(%rsp),%xmm5
ffff800000107976:	66 0f 7e 4f 08       	movd   %xmm1,0x8(%rdi)
ffff80000010797b:	66 0f 7e 6e 08       	movd   %xmm5,0x8(%rsi)
ffff800000107980:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107985:	f3 0f 7e 6c 24 48    	movq   0x48(%rsp),%xmm5
ffff80000010798b:	66 0f 7e 49 08       	movd   %xmm1,0x8(%rcx)
ffff800000107990:	66 0f 7e 6a 08       	movd   %xmm5,0x8(%rdx)
ffff800000107995:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff80000010799a:	f3 0f 7e 6c 24 50    	movq   0x50(%rsp),%xmm5
ffff8000001079a0:	66 41 0f 7e 49 08    	movd   %xmm1,0x8(%r9)
ffff8000001079a6:	66 0f 7e 6b 08       	movd   %xmm5,0x8(%rbx)
ffff8000001079ab:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079b0:	f3 0f 7e 6c 24 58    	movq   0x58(%rsp),%xmm5
ffff8000001079b6:	66 41 0f 7e 4b 08    	movd   %xmm1,0x8(%r11)
ffff8000001079bc:	66 41 0f 7e 6c 24 0c 	movd   %xmm5,0xc(%r12)
ffff8000001079c3:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079c8:	66 0f 7e 4f 0c       	movd   %xmm1,0xc(%rdi)
ffff8000001079cd:	f3 0f 7e 6c 24 60    	movq   0x60(%rsp),%xmm5
ffff8000001079d3:	66 0f 7e 6e 0c       	movd   %xmm5,0xc(%rsi)
ffff8000001079d8:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079dd:	f3 0f 7e 6c 24 68    	movq   0x68(%rsp),%xmm5
ffff8000001079e3:	66 0f 7e 49 0c       	movd   %xmm1,0xc(%rcx)
ffff8000001079e8:	66 0f 7e 6a 0c       	movd   %xmm5,0xc(%rdx)
ffff8000001079ed:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff8000001079f2:	f3 0f 7e 6c 24 70    	movq   0x70(%rsp),%xmm5
ffff8000001079f8:	66 41 0f 7e 49 0c    	movd   %xmm1,0xc(%r9)
ffff8000001079fe:	66 0f 7e 6b 0c       	movd   %xmm5,0xc(%rbx)
ffff800000107a03:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a08:	f3 0f 7e 6c 24 78    	movq   0x78(%rsp),%xmm5
ffff800000107a0e:	66 41 0f 7e 4b 0c    	movd   %xmm1,0xc(%r11)
ffff800000107a14:	66 41 0f 7e 6c 24 10 	movd   %xmm5,0x10(%r12)
ffff800000107a1b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a20:	f3 0f 7e ac 24 80 00 	movq   0x80(%rsp),%xmm5
ffff800000107a27:	00 00 
ffff800000107a29:	66 0f 7e 4f 10       	movd   %xmm1,0x10(%rdi)
ffff800000107a2e:	66 0f 7e 6e 10       	movd   %xmm5,0x10(%rsi)
ffff800000107a33:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a38:	f3 0f 7e ac 24 88 00 	movq   0x88(%rsp),%xmm5
ffff800000107a3f:	00 00 
ffff800000107a41:	66 0f 7e 49 10       	movd   %xmm1,0x10(%rcx)
ffff800000107a46:	66 0f 7e 6a 10       	movd   %xmm5,0x10(%rdx)
ffff800000107a4b:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a50:	f3 0f 7e ac 24 90 00 	movq   0x90(%rsp),%xmm5
ffff800000107a57:	00 00 
ffff800000107a59:	66 41 0f 7e 49 10    	movd   %xmm1,0x10(%r9)
ffff800000107a5f:	66 0f 7e 6b 10       	movd   %xmm5,0x10(%rbx)
ffff800000107a64:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a69:	f3 0f 7e ac 24 98 00 	movq   0x98(%rsp),%xmm5
ffff800000107a70:	00 00 
ffff800000107a72:	66 41 0f 7e 4b 10    	movd   %xmm1,0x10(%r11)
ffff800000107a78:	66 41 0f 7e 6c 24 14 	movd   %xmm5,0x14(%r12)
ffff800000107a7f:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a84:	f3 0f 7e ac 24 a0 00 	movq   0xa0(%rsp),%xmm5
ffff800000107a8b:	00 00 
ffff800000107a8d:	66 0f 7e 4f 14       	movd   %xmm1,0x14(%rdi)
ffff800000107a92:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
ffff800000107a97:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107a9c:	f3 0f 7e ac 24 a8 00 	movq   0xa8(%rsp),%xmm5
ffff800000107aa3:	00 00 
ffff800000107aa5:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
ffff800000107aaa:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
ffff800000107aaf:	66 0f 70 cd e5       	pshufd $0xe5,%xmm5,%xmm1
ffff800000107ab4:	f3 0f 7e ac 24 b0 00 	movq   0xb0(%rsp),%xmm5
ffff800000107abb:	00 00 
ffff800000107abd:	66 41 0f 7e 49 14    	movd   %xmm1,0x14(%r9)
ffff800000107ac3:	66 0f 7e 6b 14       	movd   %xmm5,0x14(%rbx)
ffff800000107ac8:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000107acd:	66 41 0f 7e 6b 14    	movd   %xmm5,0x14(%r11)
ffff800000107ad3:	4c 8b ac 24 b8 00 00 	mov    0xb8(%rsp),%r13
ffff800000107ada:	00 
ffff800000107adb:	66 41 0f 70 ec e5    	pshufd $0xe5,%xmm12,%xmm5
ffff800000107ae1:	66 45 0f 7e 64 24 18 	movd   %xmm12,0x18(%r12)
ffff800000107ae8:	66 0f 7e 6f 18       	movd   %xmm5,0x18(%rdi)
ffff800000107aed:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000107af2:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
ffff800000107af7:	66 0f 7e 69 18       	movd   %xmm5,0x18(%rcx)
ffff800000107afc:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000107b02:	66 44 0f 7e 42 18    	movd   %xmm8,0x18(%rdx)
ffff800000107b08:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000107b0e:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000107b13:	66 0f 7e 43 18       	movd   %xmm0,0x18(%rbx)
ffff800000107b18:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
ffff800000107b1e:	66 41 0f 7e 7c 24 1c 	movd   %xmm7,0x1c(%r12)
ffff800000107b25:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff800000107b2a:	49 01 c4             	add    %rax,%r12
ffff800000107b2d:	66 0f 7e 7f 1c       	movd   %xmm7,0x1c(%rdi)
ffff800000107b32:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff800000107b37:	48 01 c7             	add    %rax,%rdi
ffff800000107b3a:	66 0f 7e 5e 1c       	movd   %xmm3,0x1c(%rsi)
ffff800000107b3f:	48 01 c6             	add    %rax,%rsi
ffff800000107b42:	66 0f 7e 79 1c       	movd   %xmm7,0x1c(%rcx)
ffff800000107b47:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000107b4c:	48 01 c1             	add    %rax,%rcx
ffff800000107b4f:	66 0f 7e 72 1c       	movd   %xmm6,0x1c(%rdx)
ffff800000107b54:	48 01 c2             	add    %rax,%rdx
ffff800000107b57:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff800000107b5d:	49 01 c1             	add    %rax,%r9
ffff800000107b60:	66 0f 7e 53 1c       	movd   %xmm2,0x1c(%rbx)
ffff800000107b65:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff800000107b6a:	48 01 c3             	add    %rax,%rbx
ffff800000107b6d:	66 41 0f 7e 53 1c    	movd   %xmm2,0x1c(%r11)
ffff800000107b73:	49 01 c3             	add    %rax,%r11
ffff800000107b76:	4d 39 ea             	cmp    %r13,%r10
ffff800000107b79:	0f 85 61 f6 ff ff    	jne    ffff8000001071e0 <color_printk+0x3f0>
ffff800000107b7f:	45 89 c5             	mov    %r8d,%r13d
ffff800000107b82:	44 8b 84 24 08 01 00 	mov    0x108(%rsp),%r8d
ffff800000107b89:	00 
ffff800000107b8a:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff800000107b8f:	41 8b 44 2e 08       	mov    0x8(%r14,%rbp,1),%eax
ffff800000107b94:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000107b98:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000107b9d:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff800000107ba2:	44 8d 50 01          	lea    0x1(%rax),%r10d
ffff800000107ba6:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
ffff800000107bab:	45 89 54 2e 08       	mov    %r10d,0x8(%r14,%rbp,1)
ffff800000107bb0:	89 f0                	mov    %esi,%eax
ffff800000107bb2:	99                   	cltd
ffff800000107bb3:	f7 ff                	idiv   %edi
ffff800000107bb5:	44 39 d0             	cmp    %r10d,%eax
ffff800000107bb8:	7f 11                	jg     ffff800000107bcb <color_printk+0xddb>
ffff800000107bba:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
ffff800000107bc1:	00 00 
ffff800000107bc3:	83 c1 01             	add    $0x1,%ecx
ffff800000107bc6:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000107bcb:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
ffff800000107bd0:	99                   	cltd
ffff800000107bd1:	41 f7 f9             	idiv   %r9d
ffff800000107bd4:	39 c8                	cmp    %ecx,%eax
ffff800000107bd6:	7f 0b                	jg     ffff800000107be3 <color_printk+0xdf3>
ffff800000107bd8:	41 c7 44 2e 0c 00 00 	movl   $0x0,0xc(%r14,%rbp,1)
ffff800000107bdf:	00 00 
ffff800000107be1:	31 c9                	xor    %ecx,%ecx
ffff800000107be3:	44 39 84 24 d4 00 00 	cmp    %r8d,0xd4(%rsp)
ffff800000107bea:	00 
ffff800000107beb:	0f 8f bf f3 ff ff    	jg     ffff800000106fb0 <color_printk+0x1c0>
ffff800000107bf1:	8b 84 24 d0 00 00 00 	mov    0xd0(%rsp),%eax
ffff800000107bf8:	85 c0                	test   %eax,%eax
ffff800000107bfa:	0f 85 b0 f3 ff ff    	jne    ffff800000106fb0 <color_printk+0x1c0>
ffff800000107c00:	8b 84 24 d4 00 00 00 	mov    0xd4(%rsp),%eax
ffff800000107c07:	48 81 c4 28 02 00 00 	add    $0x228,%rsp
ffff800000107c0e:	5b                   	pop    %rbx
ffff800000107c0f:	5d                   	pop    %rbp
ffff800000107c10:	41 5c                	pop    %r12
ffff800000107c12:	41 5d                	pop    %r13
ffff800000107c14:	41 5e                	pop    %r14
ffff800000107c16:	41 5f                	pop    %r15
ffff800000107c18:	c3                   	ret
ffff800000107c19:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff800000107c1e:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff800000107c23:	49 8d 72 10          	lea    0x10(%r10),%rsi
ffff800000107c27:	48 01 c2             	add    %rax,%rdx
ffff800000107c2a:	eb 19                	jmp    ffff800000107c45 <color_printk+0xe55>
ffff800000107c2c:	44 89 7a 1c          	mov    %r15d,0x1c(%rdx)
ffff800000107c30:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
ffff800000107c35:	49 83 c2 01          	add    $0x1,%r10
ffff800000107c39:	48 01 c2             	add    %rax,%rdx
ffff800000107c3c:	49 39 f2             	cmp    %rsi,%r10
ffff800000107c3f:	0f 84 14 0d 00 00    	je     ffff800000108959 <color_printk+0x1b69>
ffff800000107c45:	41 80 3a 00          	cmpb   $0x0,(%r10)
ffff800000107c49:	44 89 f8             	mov    %r15d,%eax
ffff800000107c4c:	41 0f 49 c5          	cmovns %r13d,%eax
ffff800000107c50:	89 02                	mov    %eax,(%rdx)
ffff800000107c52:	44 89 f8             	mov    %r15d,%eax
ffff800000107c55:	41 f6 02 40          	testb  $0x40,(%r10)
ffff800000107c59:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c5d:	89 42 04             	mov    %eax,0x4(%rdx)
ffff800000107c60:	44 89 f8             	mov    %r15d,%eax
ffff800000107c63:	41 f6 02 20          	testb  $0x20,(%r10)
ffff800000107c67:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c6b:	89 42 08             	mov    %eax,0x8(%rdx)
ffff800000107c6e:	44 89 f8             	mov    %r15d,%eax
ffff800000107c71:	41 f6 02 10          	testb  $0x10,(%r10)
ffff800000107c75:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c79:	89 42 0c             	mov    %eax,0xc(%rdx)
ffff800000107c7c:	44 89 f8             	mov    %r15d,%eax
ffff800000107c7f:	41 f6 02 08          	testb  $0x8,(%r10)
ffff800000107c83:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c87:	89 42 10             	mov    %eax,0x10(%rdx)
ffff800000107c8a:	44 89 f8             	mov    %r15d,%eax
ffff800000107c8d:	41 f6 02 04          	testb  $0x4,(%r10)
ffff800000107c91:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107c95:	89 42 14             	mov    %eax,0x14(%rdx)
ffff800000107c98:	44 89 f8             	mov    %r15d,%eax
ffff800000107c9b:	41 f6 02 02          	testb  $0x2,(%r10)
ffff800000107c9f:	41 0f 44 c5          	cmove  %r13d,%eax
ffff800000107ca3:	89 42 18             	mov    %eax,0x18(%rdx)
ffff800000107ca6:	41 f6 02 01          	testb  $0x1,(%r10)
ffff800000107caa:	75 80                	jne    ffff800000107c2c <color_printk+0xe3c>
ffff800000107cac:	44 89 6a 1c          	mov    %r13d,0x1c(%rdx)
ffff800000107cb0:	e9 7b ff ff ff       	jmp    ffff800000107c30 <color_printk+0xe40>
ffff800000107cb5:	41 c7 44 2e 08 00 00 	movl   $0x0,0x8(%r14,%rbp,1)
ffff800000107cbc:	00 00 
ffff800000107cbe:	83 c1 01             	add    $0x1,%ecx
ffff800000107cc1:	45 31 d2             	xor    %r10d,%r10d
ffff800000107cc4:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000107cc9:	e9 e2 fe ff ff       	jmp    ffff800000107bb0 <color_printk+0xdc0>
ffff800000107cce:	41 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%edx
ffff800000107cd3:	41 0f af c9          	imul   %r9d,%ecx
ffff800000107cd7:	4c 63 d6             	movslq %esi,%r10
ffff800000107cda:	83 ac 24 d0 00 00 00 	subl   $0x1,0xd0(%rsp)
ffff800000107ce1:	01 
ffff800000107ce2:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
ffff800000107ce8:	0f af d7             	imul   %edi,%edx
ffff800000107ceb:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
ffff800000107cf0:	4c 8b ac 24 30 01 00 	mov    0x130(%rsp),%r13
ffff800000107cf7:	00 
ffff800000107cf8:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
ffff800000107cff:	00 
ffff800000107d00:	0f af ce             	imul   %esi,%ecx
ffff800000107d03:	48 63 d2             	movslq %edx,%rdx
ffff800000107d06:	48 63 c9             	movslq %ecx,%rcx
ffff800000107d09:	48 01 d1             	add    %rdx,%rcx
ffff800000107d0c:	4c 89 d2             	mov    %r10,%rdx
ffff800000107d0f:	48 c1 e2 04          	shl    $0x4,%rdx
ffff800000107d13:	48 c1 e1 02          	shl    $0x2,%rcx
ffff800000107d17:	4c 29 d2             	sub    %r10,%rdx
ffff800000107d1a:	48 c1 e2 02          	shl    $0x2,%rdx
ffff800000107d1e:	85 f6                	test   %esi,%esi
ffff800000107d20:	48 8d 7a 1f          	lea    0x1f(%rdx),%rdi
ffff800000107d24:	49 0f 48 f9          	cmovs  %r9,%rdi
ffff800000107d28:	48 01 cf             	add    %rcx,%rdi
ffff800000107d2b:	48 01 df             	add    %rbx,%rdi
ffff800000107d2e:	4c 39 ef             	cmp    %r13,%rdi
ffff800000107d31:	40 0f 92 c7          	setb   %dil
ffff800000107d35:	85 f6                	test   %esi,%esi
ffff800000107d37:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107d3c:	48 0f 49 d6          	cmovns %rsi,%rdx
ffff800000107d40:	48 01 ca             	add    %rcx,%rdx
ffff800000107d43:	48 01 da             	add    %rbx,%rdx
ffff800000107d46:	48 39 94 24 38 01 00 	cmp    %rdx,0x138(%rsp)
ffff800000107d4d:	00 
ffff800000107d4e:	0f 92 c2             	setb   %dl
ffff800000107d51:	40 08 fa             	or     %dil,%dl
ffff800000107d54:	0f 84 50 0b 00 00    	je     ffff8000001088aa <color_printk+0x1aba>
ffff800000107d5a:	48 8d 50 1f          	lea    0x1f(%rax),%rdx
ffff800000107d5e:	48 83 fa 3e          	cmp    $0x3e,%rdx
ffff800000107d62:	0f 86 42 0b 00 00    	jbe    ffff8000001088aa <color_printk+0x1aba>
ffff800000107d68:	48 01 cb             	add    %rcx,%rbx
ffff800000107d6b:	49 c1 e2 05          	shl    $0x5,%r10
ffff800000107d6f:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff800000107d74:	49 8d bd 00 fe ff ff 	lea    -0x200(%r13),%rdi
ffff800000107d7b:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
ffff800000107d7f:	4d 89 d4             	mov    %r10,%r12
ffff800000107d82:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
ffff800000107d87:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000107d8d:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
ffff800000107d91:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff800000107d97:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000107d9c:	66 45 0f ef ff       	pxor   %xmm15,%xmm15
ffff800000107da1:	4d 8d 0c 02          	lea    (%r10,%rax,1),%r9
ffff800000107da5:	49 8d 3c 01          	lea    (%r9,%rax,1),%rdi
ffff800000107da9:	66 44 0f 70 d2 e0    	pshufd $0xe0,%xmm2,%xmm10
ffff800000107daf:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
ffff800000107db3:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
ffff800000107db7:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
ffff800000107dbb:	4c 89 e8             	mov    %r13,%rax
ffff800000107dbe:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000107dc5:	ff ff ff 
ffff800000107dc8:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff800000107dcd:	48 2d f0 01 00 00    	sub    $0x1f0,%rax
ffff800000107dd3:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107dda:	ff ff ff 
ffff800000107ddd:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff800000107de2:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000107de9:	ff ff ff 
ffff800000107dec:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff800000107df1:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107df8:	ff ff ff 
ffff800000107dfb:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff800000107e00:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107e07:	ff ff ff 
ffff800000107e0a:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000107e0f:	4c 8b ac 24 18 01 00 	mov    0x118(%rsp),%r13
ffff800000107e16:	00 
ffff800000107e17:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e1c:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000107e23:	00 
ffff800000107e24:	4c 8b ac 24 20 01 00 	mov    0x120(%rsp),%r13
ffff800000107e2b:	00 
ffff800000107e2c:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e31:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff800000107e38:	00 
ffff800000107e39:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000107e40:	ff ff ff 
ffff800000107e43:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e48:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000107e4f:	00 
ffff800000107e50:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000107e57:	ff ff ff 
ffff800000107e5a:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e5f:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff800000107e66:	00 
ffff800000107e67:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000107e6e:	ff ff ff 
ffff800000107e71:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e76:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff800000107e7d:	00 
ffff800000107e7e:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000107e85:	ff ff ff 
ffff800000107e88:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107e8d:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff800000107e94:	00 
ffff800000107e95:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000107e9c:	ff ff ff 
ffff800000107e9f:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000107ea4:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
ffff800000107eab:	00 
ffff800000107eac:	45 89 c5             	mov    %r8d,%r13d
ffff800000107eaf:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
ffff800000107eb4:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000107eb9:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000107ebe:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107ec3:	f3 41 0f 7e 90 00 02 	movq   0x200(%r8),%xmm2
ffff800000107eca:	00 00 
ffff800000107ecc:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107ed1:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000107ed6:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000107edb:	f3 44 0f 7e a4 24 e8 	movq   0xe8(%rsp),%xmm12
ffff800000107ee2:	00 00 00 
ffff800000107ee5:	66 0f 64 c2          	pcmpgtb %xmm2,%xmm0
ffff800000107ee9:	49 83 c0 08          	add    $0x8,%r8
ffff800000107eed:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000107ef2:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000107ef6:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff800000107efa:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000107efe:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107f02:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000107f07:	66 0f 65 d9          	pcmpgtw %xmm1,%xmm3
ffff800000107f0b:	66 44 0f 6f f1       	movdqa %xmm1,%xmm14
ffff800000107f10:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107f15:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff800000107f19:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000107f1d:	66 44 0f 61 f3       	punpcklwd %xmm3,%xmm14
ffff800000107f22:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000107f27:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107f2c:	66 41 0f db e6       	pand   %xmm14,%xmm4
ffff800000107f31:	66 45 0f df f2       	pandn  %xmm10,%xmm14
ffff800000107f36:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000107f3a:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000107f3f:	66 44 0f eb f4       	por    %xmm4,%xmm14
ffff800000107f44:	66 0f eb cb          	por    %xmm3,%xmm1
ffff800000107f48:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000107f4d:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107f52:	66 44 0f 7e 33       	movd   %xmm14,(%rbx)
ffff800000107f57:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff800000107f5b:	66 0f d6 4c 24 18    	movq   %xmm1,0x18(%rsp)
ffff800000107f61:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000107f65:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000107f69:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000107f6e:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107f73:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff800000107f77:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000107f7b:	66 0f db f0          	pand   %xmm0,%xmm6
ffff800000107f7f:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000107f84:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000107f89:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000107f8d:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff800000107f91:	f3 0f 7e b4 24 d8 00 	movq   0xd8(%rsp),%xmm6
ffff800000107f98:	00 00 
ffff800000107f9a:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
ffff800000107fa0:	66 0f eb fc          	por    %xmm4,%xmm7
ffff800000107fa4:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff800000107fa9:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000107fad:	66 0f d6 7c 24 20    	movq   %xmm7,0x20(%rsp)
ffff800000107fb3:	66 41 0f 6f ff       	movdqa %xmm15,%xmm7
ffff800000107fb8:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff800000107fbc:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107fc1:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000107fc6:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000107fca:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000107fce:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000107fd2:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff800000107fd6:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff800000107fda:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000107fde:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000107fe2:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000107fe7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000107fec:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff800000107ff0:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff800000107ff4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000107ff9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000107ffe:	66 0f db eb          	pand   %xmm3,%xmm5
ffff800000108002:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff800000108007:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010800b:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000108010:	66 0f eb dd          	por    %xmm5,%xmm3
ffff800000108014:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000108018:	66 0f d6 5c 24 30    	movq   %xmm3,0x30(%rsp)
ffff80000010801e:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000108022:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000108027:	66 0f 65 f0          	pcmpgtw %xmm0,%xmm6
ffff80000010802b:	66 0f d6 6c 24 38    	movq   %xmm5,0x38(%rsp)
ffff800000108031:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000108036:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff80000010803a:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff80000010803e:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108042:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108046:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff80000010804b:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff80000010804f:	66 0f db e6          	pand   %xmm6,%xmm4
ffff800000108053:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108058:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010805d:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108061:	66 0f eb f4          	por    %xmm4,%xmm6
ffff800000108065:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff80000010806a:	66 0f db e0          	pand   %xmm0,%xmm4
ffff80000010806e:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108073:	66 0f d6 74 24 40    	movq   %xmm6,0x40(%rsp)
ffff800000108079:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff80000010807e:	66 0f 6f cc          	movdqa %xmm4,%xmm1
ffff800000108082:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108086:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
ffff80000010808d:	00 00 
ffff80000010808f:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000108093:	66 0f db c2          	pand   %xmm2,%xmm0
ffff800000108097:	66 0f d6 64 24 48    	movq   %xmm4,0x48(%rsp)
ffff80000010809d:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff8000001080a2:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001080a7:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff8000001080ac:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff8000001080b0:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001080b4:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff8000001080b8:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff8000001080bc:	66 0f 65 e1          	pcmpgtw %xmm1,%xmm4
ffff8000001080c0:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001080c4:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001080c9:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001080cd:	66 0f 61 dc          	punpcklwd %xmm4,%xmm3
ffff8000001080d1:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001080d6:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001080db:	66 0f db eb          	pand   %xmm3,%xmm5
ffff8000001080df:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001080e4:	66 44 0f db e9       	pand   %xmm1,%xmm13
ffff8000001080e9:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001080ee:	66 0f eb dd          	por    %xmm5,%xmm3
ffff8000001080f2:	66 41 0f eb cd       	por    %xmm13,%xmm1
ffff8000001080f7:	66 45 0f 6f ef       	movdqa %xmm15,%xmm13
ffff8000001080fc:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000108101:	66 0f d6 5c 24 50    	movq   %xmm3,0x50(%rsp)
ffff800000108107:	66 44 0f 65 e8       	pcmpgtw %xmm0,%xmm13
ffff80000010810c:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
ffff800000108112:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000108117:	66 44 0f 6f e8       	movdqa %xmm0,%xmm13
ffff80000010811c:	66 44 0f 61 eb       	punpcklwd %xmm3,%xmm13
ffff800000108121:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108125:	66 41 0f db e5       	pand   %xmm13,%xmm4
ffff80000010812a:	66 41 0f 6f cd       	movdqa %xmm13,%xmm1
ffff80000010812f:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108134:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000108139:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010813e:	66 44 0f db e8       	pand   %xmm0,%xmm13
ffff800000108143:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108148:	66 44 0f 6f c1       	movdqa %xmm1,%xmm8
ffff80000010814d:	66 41 0f eb c5       	por    %xmm13,%xmm0
ffff800000108152:	66 45 0f 6f e9       	movdqa %xmm9,%xmm13
ffff800000108157:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff80000010815c:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108162:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108167:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff80000010816c:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108171:	66 44 0f d6 44 24 60 	movq   %xmm8,0x60(%rsp)
ffff800000108178:	66 45 0f 6f c3       	movdqa %xmm11,%xmm8
ffff80000010817d:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108182:	66 44 0f 64 e8       	pcmpgtb %xmm0,%xmm13
ffff800000108187:	66 44 0f 6f e0       	movdqa %xmm0,%xmm12
ffff80000010818c:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff800000108191:	66 44 0f 60 e3       	punpcklbw %xmm3,%xmm12
ffff800000108196:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010819a:	66 41 0f 65 e4       	pcmpgtw %xmm12,%xmm4
ffff80000010819f:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff8000001081a4:	66 45 0f 6f ec       	movdqa %xmm12,%xmm13
ffff8000001081a9:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001081ae:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff8000001081b3:	66 0f 65 f8          	pcmpgtw %xmm0,%xmm7
ffff8000001081b7:	66 44 0f 61 ec       	punpcklwd %xmm4,%xmm13
ffff8000001081bc:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001081c0:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001081c5:	66 41 0f 6f dd       	movdqa %xmm13,%xmm3
ffff8000001081ca:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001081cf:	66 41 0f db ed       	pand   %xmm13,%xmm5
ffff8000001081d4:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff8000001081d9:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001081de:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001081e3:	66 44 0f 6f eb       	movdqa %xmm3,%xmm13
ffff8000001081e8:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff8000001081ed:	66 44 0f 6f e1       	movdqa %xmm1,%xmm12
ffff8000001081f2:	66 44 0f eb e3       	por    %xmm3,%xmm12
ffff8000001081f7:	66 0f 6f df          	movdqa %xmm7,%xmm3
ffff8000001081fb:	66 0f 6f f8          	movdqa %xmm0,%xmm7
ffff8000001081ff:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108203:	66 44 0f eb ed       	por    %xmm5,%xmm13
ffff800000108208:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff80000010820c:	66 44 0f d6 64 24 78 	movq   %xmm12,0x78(%rsp)
ffff800000108213:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108218:	66 0f 6f cf          	movdqa %xmm7,%xmm1
ffff80000010821c:	66 0f db e7          	pand   %xmm7,%xmm4
ffff800000108220:	66 44 0f d6 6c 24 70 	movq   %xmm13,0x70(%rsp)
ffff800000108227:	66 0f db f0          	pand   %xmm0,%xmm6
ffff80000010822b:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108230:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000108235:	66 0f 6f e8          	movdqa %xmm0,%xmm5
ffff800000108239:	66 0f 6f f9          	movdqa %xmm1,%xmm7
ffff80000010823d:	66 45 0f 6f e7       	movdqa %xmm15,%xmm12
ffff800000108242:	66 0f eb ee          	por    %xmm6,%xmm5
ffff800000108246:	66 0f eb fc          	por    %xmm4,%xmm7
ffff80000010824a:	66 41 0f 6f e7       	movdqa %xmm15,%xmm4
ffff80000010824f:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
ffff800000108256:	00 00 
ffff800000108258:	66 0f d6 ac 24 88 00 	movq   %xmm5,0x88(%rsp)
ffff80000010825f:	00 00 
ffff800000108261:	66 41 0f 6f eb       	movdqa %xmm11,%xmm5
ffff800000108266:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff80000010826b:	66 0f d6 bc 24 80 00 	movq   %xmm7,0x80(%rsp)
ffff800000108272:	00 00 
ffff800000108274:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108278:	66 0f 6f c6          	movdqa %xmm6,%xmm0
ffff80000010827c:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108281:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff800000108286:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010828b:	66 0f 64 f0          	pcmpgtb %xmm0,%xmm6
ffff80000010828f:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108293:	66 0f 6f f0          	movdqa %xmm0,%xmm6
ffff800000108297:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff80000010829b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010829f:	66 0f 65 e6          	pcmpgtw %xmm6,%xmm4
ffff8000001082a3:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001082a7:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001082ac:	66 0f 61 f4          	punpcklwd %xmm4,%xmm6
ffff8000001082b0:	66 0f 61 cc          	punpcklwd %xmm4,%xmm1
ffff8000001082b4:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff8000001082b9:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001082bd:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001082c2:	66 0f db ee          	pand   %xmm6,%xmm5
ffff8000001082c6:	66 0f db e1          	pand   %xmm1,%xmm4
ffff8000001082ca:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff8000001082cf:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff8000001082d4:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff8000001082d8:	66 0f 6f dc          	movdqa %xmm4,%xmm3
ffff8000001082dc:	66 0f 6f e1          	movdqa %xmm1,%xmm4
ffff8000001082e0:	66 0f eb e3          	por    %xmm3,%xmm4
ffff8000001082e4:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff8000001082e9:	66 0f 6f c8          	movdqa %xmm0,%xmm1
ffff8000001082ed:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff8000001082f1:	66 0f eb f5          	por    %xmm5,%xmm6
ffff8000001082f5:	66 0f d6 a4 24 98 00 	movq   %xmm4,0x98(%rsp)
ffff8000001082fc:	00 00 
ffff8000001082fe:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000108303:	66 0f d6 b4 24 90 00 	movq   %xmm6,0x90(%rsp)
ffff80000010830a:	00 00 
ffff80000010830c:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000108311:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff800000108315:	66 0f 61 cb          	punpcklwd %xmm3,%xmm1
ffff800000108319:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff80000010831e:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108323:	66 0f db e1          	pand   %xmm1,%xmm4
ffff800000108327:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff80000010832c:	66 44 0f db c0       	pand   %xmm0,%xmm8
ffff800000108331:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff800000108336:	66 0f eb cc          	por    %xmm4,%xmm1
ffff80000010833a:	66 41 0f eb c0       	por    %xmm8,%xmm0
ffff80000010833f:	66 41 0f 6f e3       	movdqa %xmm11,%xmm4
ffff800000108344:	f3 44 0f 7e 84 24 f8 	movq   0xf8(%rsp),%xmm8
ffff80000010834b:	00 00 00 
ffff80000010834e:	66 0f d6 8c 24 a0 00 	movq   %xmm1,0xa0(%rsp)
ffff800000108355:	00 00 
ffff800000108357:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff80000010835e:	00 00 
ffff800000108360:	66 44 0f db c2       	pand   %xmm2,%xmm8
ffff800000108365:	66 41 0f 6f c8       	movdqa %xmm8,%xmm1
ffff80000010836a:	66 45 0f 6f c1       	movdqa %xmm9,%xmm8
ffff80000010836f:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000108374:	66 41 0f 74 c9       	pcmpeqb %xmm9,%xmm1
ffff800000108379:	66 44 0f 64 c1       	pcmpgtb %xmm1,%xmm8
ffff80000010837e:	66 0f 6f e9          	movdqa %xmm1,%xmm5
ffff800000108382:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff800000108387:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff80000010838b:	66 0f 60 c8          	punpcklbw %xmm0,%xmm1
ffff80000010838f:	66 0f 65 dd          	pcmpgtw %xmm5,%xmm3
ffff800000108393:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108398:	66 44 0f 6f c5       	movdqa %xmm5,%xmm8
ffff80000010839d:	66 44 0f 65 e1       	pcmpgtw %xmm1,%xmm12
ffff8000001083a2:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff8000001083a7:	66 0f 61 eb          	punpcklwd %xmm3,%xmm5
ffff8000001083ab:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff8000001083b0:	66 41 0f 6f c0       	movdqa %xmm8,%xmm0
ffff8000001083b5:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff8000001083ba:	66 41 0f db e0       	pand   %xmm8,%xmm4
ffff8000001083bf:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff8000001083c4:	66 44 0f db ed       	pand   %xmm5,%xmm13
ffff8000001083c9:	66 41 0f df ea       	pandn  %xmm10,%xmm5
ffff8000001083ce:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff8000001083d3:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff8000001083d8:	66 41 0f eb ed       	por    %xmm13,%xmm5
ffff8000001083dd:	66 44 0f 6f e9       	movdqa %xmm1,%xmm13
ffff8000001083e2:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff8000001083e6:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff8000001083eb:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001083f0:	66 44 0f 61 e8       	punpcklwd %xmm0,%xmm13
ffff8000001083f5:	66 44 0f eb c4       	por    %xmm4,%xmm8
ffff8000001083fa:	66 44 0f db e1       	pand   %xmm1,%xmm12
ffff8000001083ff:	66 41 0f df ca       	pandn  %xmm10,%xmm1
ffff800000108404:	66 41 0f db dd       	pand   %xmm13,%xmm3
ffff800000108409:	66 44 0f d6 84 24 b0 	movq   %xmm8,0xb0(%rsp)
ffff800000108410:	00 00 00 
ffff800000108413:	66 41 0f eb cc       	por    %xmm12,%xmm1
ffff800000108418:	66 45 0f df ea       	pandn  %xmm10,%xmm13
ffff80000010841d:	f3 44 0f 7e a4 24 00 	movq   0x100(%rsp),%xmm12
ffff800000108424:	01 00 00 
ffff800000108427:	66 44 0f eb eb       	por    %xmm3,%xmm13
ffff80000010842c:	66 41 0f 6f d9       	movdqa %xmm9,%xmm3
ffff800000108431:	66 44 0f d6 ac 24 b8 	movq   %xmm13,0xb8(%rsp)
ffff800000108438:	00 00 00 
ffff80000010843b:	66 44 0f db e2       	pand   %xmm2,%xmm12
ffff800000108440:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108445:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010844a:	66 41 0f 74 c1       	pcmpeqb %xmm9,%xmm0
ffff80000010844f:	66 0f 64 d8          	pcmpgtb %xmm0,%xmm3
ffff800000108453:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108457:	66 0f 60 e3          	punpcklbw %xmm3,%xmm4
ffff80000010845b:	66 0f 60 c3          	punpcklbw %xmm3,%xmm0
ffff80000010845f:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff800000108464:	66 0f 65 dc          	pcmpgtw %xmm4,%xmm3
ffff800000108468:	66 44 0f 6f e4       	movdqa %xmm4,%xmm12
ffff80000010846d:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108472:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000108477:	66 44 0f 61 e3       	punpcklwd %xmm3,%xmm12
ffff80000010847c:	66 0f 61 e3          	punpcklwd %xmm3,%xmm4
ffff800000108480:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff800000108485:	66 41 0f db f4       	pand   %xmm12,%xmm6
ffff80000010848a:	66 45 0f df e2       	pandn  %xmm10,%xmm12
ffff80000010848f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000108494:	66 44 0f eb e6       	por    %xmm6,%xmm12
ffff800000108499:	66 0f db dc          	pand   %xmm4,%xmm3
ffff80000010849d:	66 41 0f df e2       	pandn  %xmm10,%xmm4
ffff8000001084a2:	66 44 0f d6 a4 24 c0 	movq   %xmm12,0xc0(%rsp)
ffff8000001084a9:	00 00 00 
ffff8000001084ac:	66 0f eb e3          	por    %xmm3,%xmm4
ffff8000001084b0:	66 41 0f 6f df       	movdqa %xmm15,%xmm3
ffff8000001084b5:	f3 44 0f 7e a4 24 08 	movq   0x108(%rsp),%xmm12
ffff8000001084bc:	01 00 00 
ffff8000001084bf:	66 0f 65 d8          	pcmpgtw %xmm0,%xmm3
ffff8000001084c3:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff8000001084c8:	66 41 0f db d4       	pand   %xmm12,%xmm2
ffff8000001084cd:	66 45 0f 6f e3       	movdqa %xmm11,%xmm12
ffff8000001084d2:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001084d7:	66 44 0f 61 c3       	punpcklwd %xmm3,%xmm8
ffff8000001084dc:	66 0f 61 c3          	punpcklwd %xmm3,%xmm0
ffff8000001084e0:	66 41 0f 6f db       	movdqa %xmm11,%xmm3
ffff8000001084e5:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff8000001084ea:	66 45 0f df c2       	pandn  %xmm10,%xmm8
ffff8000001084ef:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff8000001084f4:	66 41 0f 74 d1       	pcmpeqb %xmm9,%xmm2
ffff8000001084f9:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff8000001084fe:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108503:	66 0f db d8          	pand   %xmm0,%xmm3
ffff800000108507:	66 41 0f df c2       	pandn  %xmm10,%xmm0
ffff80000010850c:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108510:	66 0f 64 f2          	pcmpgtb %xmm2,%xmm6
ffff800000108514:	66 0f 6f da          	movdqa %xmm2,%xmm3
ffff800000108518:	66 0f 60 de          	punpcklbw %xmm6,%xmm3
ffff80000010851c:	66 0f 60 d6          	punpcklbw %xmm6,%xmm2
ffff800000108520:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff800000108525:	66 0f 65 f3          	pcmpgtw %xmm3,%xmm6
ffff800000108529:	66 0f 6f fb          	movdqa %xmm3,%xmm7
ffff80000010852d:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff800000108532:	66 44 0f 6f ea       	movdqa %xmm2,%xmm13
ffff800000108537:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff80000010853b:	66 0f 61 fe          	punpcklwd %xmm6,%xmm7
ffff80000010853f:	66 41 0f 6f f3       	movdqa %xmm11,%xmm6
ffff800000108544:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108549:	66 44 0f db e7       	pand   %xmm7,%xmm12
ffff80000010854e:	66 41 0f df fa       	pandn  %xmm10,%xmm7
ffff800000108553:	66 0f db f3          	pand   %xmm3,%xmm6
ffff800000108557:	66 41 0f df da       	pandn  %xmm10,%xmm3
ffff80000010855c:	66 41 0f eb fc       	por    %xmm12,%xmm7
ffff800000108561:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000108565:	66 41 0f 6f f7       	movdqa %xmm15,%xmm6
ffff80000010856a:	66 0f 65 f2          	pcmpgtw %xmm2,%xmm6
ffff80000010856e:	66 44 0f 6f e6       	movdqa %xmm6,%xmm12
ffff800000108573:	66 44 0f 61 ee       	punpcklwd %xmm6,%xmm13
ffff800000108578:	66 41 0f 61 d4       	punpcklwd %xmm12,%xmm2
ffff80000010857d:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108583:	66 45 0f 7e 23       	movd   %xmm12,(%r11)
ffff800000108588:	f3 44 0f 7e 74 24 18 	movq   0x18(%rsp),%xmm14
ffff80000010858f:	66 41 0f 6f f5       	movdqa %xmm13,%xmm6
ffff800000108594:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff800000108599:	66 0f 70 d2 4e       	pshufd $0x4e,%xmm2,%xmm2
ffff80000010859e:	66 45 0f 7e 32       	movd   %xmm14,(%r10)
ffff8000001085a3:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001085a9:	66 44 0f db ee       	pand   %xmm6,%xmm13
ffff8000001085ae:	f3 44 0f 7e 74 24 20 	movq   0x20(%rsp),%xmm14
ffff8000001085b5:	66 41 0f df f2       	pandn  %xmm10,%xmm6
ffff8000001085ba:	66 45 0f 7e 21       	movd   %xmm12,(%r9)
ffff8000001085bf:	66 41 0f eb f5       	por    %xmm13,%xmm6
ffff8000001085c4:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
ffff8000001085c9:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001085cf:	66 45 0f 6f eb       	movdqa %xmm11,%xmm13
ffff8000001085d4:	f3 44 0f 7e 74 24 28 	movq   0x28(%rsp),%xmm14
ffff8000001085db:	66 44 0f db ea       	pand   %xmm2,%xmm13
ffff8000001085e0:	66 41 0f df d2       	pandn  %xmm10,%xmm2
ffff8000001085e5:	66 44 0f 7e 26       	movd   %xmm12,(%rsi)
ffff8000001085ea:	66 41 0f eb d5       	por    %xmm13,%xmm2
ffff8000001085ef:	66 44 0f 7e 31       	movd   %xmm14,(%rcx)
ffff8000001085f4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff8000001085fa:	f3 44 0f 7e 74 24 30 	movq   0x30(%rsp),%xmm14
ffff800000108601:	66 44 0f 7e 2a       	movd   %xmm13,(%rdx)
ffff800000108606:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff80000010860c:	66 44 0f 7e 73 04    	movd   %xmm14,0x4(%rbx)
ffff800000108612:	f3 44 0f 7e 74 24 38 	movq   0x38(%rsp),%xmm14
ffff800000108619:	66 45 0f 7e 63 04    	movd   %xmm12,0x4(%r11)
ffff80000010861f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108625:	66 45 0f 7e 72 04    	movd   %xmm14,0x4(%r10)
ffff80000010862b:	f3 44 0f 7e 74 24 40 	movq   0x40(%rsp),%xmm14
ffff800000108632:	66 45 0f 7e 69 04    	movd   %xmm13,0x4(%r9)
ffff800000108638:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff80000010863e:	66 44 0f 7e 77 04    	movd   %xmm14,0x4(%rdi)
ffff800000108644:	f3 44 0f 7e 74 24 48 	movq   0x48(%rsp),%xmm14
ffff80000010864b:	66 44 0f 7e 66 04    	movd   %xmm12,0x4(%rsi)
ffff800000108651:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108657:	66 44 0f 7e 71 04    	movd   %xmm14,0x4(%rcx)
ffff80000010865d:	f3 44 0f 7e 74 24 50 	movq   0x50(%rsp),%xmm14
ffff800000108664:	66 44 0f 7e 6a 04    	movd   %xmm13,0x4(%rdx)
ffff80000010866a:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108670:	66 44 0f 7e 73 08    	movd   %xmm14,0x8(%rbx)
ffff800000108676:	f3 44 0f 7e 74 24 58 	movq   0x58(%rsp),%xmm14
ffff80000010867d:	66 45 0f 7e 63 08    	movd   %xmm12,0x8(%r11)
ffff800000108683:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108689:	66 45 0f 7e 72 08    	movd   %xmm14,0x8(%r10)
ffff80000010868f:	f3 44 0f 7e 74 24 60 	movq   0x60(%rsp),%xmm14
ffff800000108696:	66 45 0f 7e 69 08    	movd   %xmm13,0x8(%r9)
ffff80000010869c:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001086a2:	66 44 0f 7e 77 08    	movd   %xmm14,0x8(%rdi)
ffff8000001086a8:	f3 44 0f 7e 74 24 68 	movq   0x68(%rsp),%xmm14
ffff8000001086af:	66 44 0f 7e 66 08    	movd   %xmm12,0x8(%rsi)
ffff8000001086b5:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff8000001086bb:	66 44 0f 7e 71 08    	movd   %xmm14,0x8(%rcx)
ffff8000001086c1:	66 44 0f 7e 6a 08    	movd   %xmm13,0x8(%rdx)
ffff8000001086c7:	f3 44 0f 7e 74 24 70 	movq   0x70(%rsp),%xmm14
ffff8000001086ce:	66 44 0f 7e 73 0c    	movd   %xmm14,0xc(%rbx)
ffff8000001086d4:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff8000001086da:	f3 44 0f 7e 74 24 78 	movq   0x78(%rsp),%xmm14
ffff8000001086e1:	66 45 0f 7e 6b 0c    	movd   %xmm13,0xc(%r11)
ffff8000001086e7:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001086ed:	66 45 0f 7e 72 0c    	movd   %xmm14,0xc(%r10)
ffff8000001086f3:	f3 44 0f 7e b4 24 80 	movq   0x80(%rsp),%xmm14
ffff8000001086fa:	00 00 00 
ffff8000001086fd:	66 45 0f 7e 61 0c    	movd   %xmm12,0xc(%r9)
ffff800000108703:	66 44 0f 7e 77 0c    	movd   %xmm14,0xc(%rdi)
ffff800000108709:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff80000010870f:	f3 44 0f 7e b4 24 88 	movq   0x88(%rsp),%xmm14
ffff800000108716:	00 00 00 
ffff800000108719:	66 44 0f 7e 66 0c    	movd   %xmm12,0xc(%rsi)
ffff80000010871f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108725:	66 44 0f 7e 71 0c    	movd   %xmm14,0xc(%rcx)
ffff80000010872b:	f3 44 0f 7e b4 24 90 	movq   0x90(%rsp),%xmm14
ffff800000108732:	00 00 00 
ffff800000108735:	66 44 0f 7e 6a 0c    	movd   %xmm13,0xc(%rdx)
ffff80000010873b:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108741:	66 44 0f 7e 73 10    	movd   %xmm14,0x10(%rbx)
ffff800000108747:	f3 44 0f 7e b4 24 98 	movq   0x98(%rsp),%xmm14
ffff80000010874e:	00 00 00 
ffff800000108751:	66 45 0f 7e 63 10    	movd   %xmm12,0x10(%r11)
ffff800000108757:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff80000010875d:	66 45 0f 7e 72 10    	movd   %xmm14,0x10(%r10)
ffff800000108763:	f3 44 0f 7e b4 24 a0 	movq   0xa0(%rsp),%xmm14
ffff80000010876a:	00 00 00 
ffff80000010876d:	66 45 0f 7e 69 10    	movd   %xmm13,0x10(%r9)
ffff800000108773:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff800000108779:	66 44 0f 7e 77 10    	movd   %xmm14,0x10(%rdi)
ffff80000010877f:	f3 44 0f 7e b4 24 a8 	movq   0xa8(%rsp),%xmm14
ffff800000108786:	00 00 00 
ffff800000108789:	66 44 0f 7e 66 10    	movd   %xmm12,0x10(%rsi)
ffff80000010878f:	66 45 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm13
ffff800000108795:	66 44 0f 7e 71 10    	movd   %xmm14,0x10(%rcx)
ffff80000010879b:	f3 44 0f 7e b4 24 b0 	movq   0xb0(%rsp),%xmm14
ffff8000001087a2:	00 00 00 
ffff8000001087a5:	66 44 0f 7e 6a 10    	movd   %xmm13,0x10(%rdx)
ffff8000001087ab:	f3 44 0f 7e ac 24 b8 	movq   0xb8(%rsp),%xmm13
ffff8000001087b2:	00 00 00 
ffff8000001087b5:	66 44 0f 7e 73 14    	movd   %xmm14,0x14(%rbx)
ffff8000001087bb:	66 45 0f 70 e6 e5    	pshufd $0xe5,%xmm14,%xmm12
ffff8000001087c1:	66 45 0f 7e 63 14    	movd   %xmm12,0x14(%r11)
ffff8000001087c7:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff8000001087cd:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001087d2:	66 41 0f 7e 69 14    	movd   %xmm5,0x14(%r9)
ffff8000001087d8:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff8000001087de:	66 44 0f 7e 6f 14    	movd   %xmm13,0x14(%rdi)
ffff8000001087e4:	66 0f 7e 6e 14       	movd   %xmm5,0x14(%rsi)
ffff8000001087e9:	66 0f 70 e9 e5       	pshufd $0xe5,%xmm1,%xmm5
ffff8000001087ee:	66 0f 7e 49 14       	movd   %xmm1,0x14(%rcx)
ffff8000001087f3:	66 0f 7e 6a 14       	movd   %xmm5,0x14(%rdx)
ffff8000001087f8:	f3 0f 7e ac 24 c0 00 	movq   0xc0(%rsp),%xmm5
ffff8000001087ff:	00 00 
ffff800000108801:	66 0f 7e 6b 18       	movd   %xmm5,0x18(%rbx)
ffff800000108806:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff80000010880b:	66 41 0f 7e 6b 18    	movd   %xmm5,0x18(%r11)
ffff800000108811:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff800000108816:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
ffff80000010881c:	66 41 0f 7e 69 18    	movd   %xmm5,0x18(%r9)
ffff800000108822:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff800000108828:	66 44 0f 7e 47 18    	movd   %xmm8,0x18(%rdi)
ffff80000010882e:	66 0f 7e 6e 18       	movd   %xmm5,0x18(%rsi)
ffff800000108833:	66 0f 70 e8 e5       	pshufd $0xe5,%xmm0,%xmm5
ffff800000108838:	66 0f 7e 41 18       	movd   %xmm0,0x18(%rcx)
ffff80000010883d:	66 0f 7e 6a 18       	movd   %xmm5,0x18(%rdx)
ffff800000108842:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff800000108847:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff80000010884c:	4c 01 e3             	add    %r12,%rbx
ffff80000010884f:	66 41 0f 7e 7b 1c    	movd   %xmm7,0x1c(%r11)
ffff800000108855:	66 0f 70 fb e5       	pshufd $0xe5,%xmm3,%xmm7
ffff80000010885a:	4d 01 e3             	add    %r12,%r11
ffff80000010885d:	66 41 0f 7e 5a 1c    	movd   %xmm3,0x1c(%r10)
ffff800000108863:	4d 01 e2             	add    %r12,%r10
ffff800000108866:	66 41 0f 7e 79 1c    	movd   %xmm7,0x1c(%r9)
ffff80000010886c:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff800000108871:	4d 01 e1             	add    %r12,%r9
ffff800000108874:	66 0f 7e 77 1c       	movd   %xmm6,0x1c(%rdi)
ffff800000108879:	4c 01 e7             	add    %r12,%rdi
ffff80000010887c:	66 0f 7e 7e 1c       	movd   %xmm7,0x1c(%rsi)
ffff800000108881:	4c 01 e6             	add    %r12,%rsi
ffff800000108884:	66 0f 7e 51 1c       	movd   %xmm2,0x1c(%rcx)
ffff800000108889:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff80000010888e:	4c 01 e1             	add    %r12,%rcx
ffff800000108891:	66 0f 7e 52 1c       	movd   %xmm2,0x1c(%rdx)
ffff800000108896:	4c 01 e2             	add    %r12,%rdx
ffff800000108899:	49 39 c0             	cmp    %rax,%r8
ffff80000010889c:	0f 85 12 f6 ff ff    	jne    ffff800000107eb4 <color_printk+0x10c4>
ffff8000001088a2:	45 89 e8             	mov    %r13d,%r8d
ffff8000001088a5:	e9 e5 f2 ff ff       	jmp    ffff800000107b8f <color_printk+0xd9f>
ffff8000001088aa:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
ffff8000001088af:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff8000001088b4:	48 01 f9             	add    %rdi,%rcx
ffff8000001088b7:	48 8b bc 24 28 01 00 	mov    0x128(%rsp),%rdi
ffff8000001088be:	00 
ffff8000001088bf:	48 8d 14 2f          	lea    (%rdi,%rbp,1),%rdx
ffff8000001088c3:	eb 1b                	jmp    ffff8000001088e0 <color_printk+0x1af0>
ffff8000001088c5:	0f 1f 00             	nopl   (%rax)
ffff8000001088c8:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
ffff8000001088cc:	48 8b 9c 24 c8 00 00 	mov    0xc8(%rsp),%rbx
ffff8000001088d3:	00 
ffff8000001088d4:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001088d8:	48 01 c1             	add    %rax,%rcx
ffff8000001088db:	48 39 da             	cmp    %rbx,%rdx
ffff8000001088de:	74 79                	je     ffff800000108959 <color_printk+0x1b69>
ffff8000001088e0:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff8000001088e3:	44 89 fe             	mov    %r15d,%esi
ffff8000001088e6:	41 0f 49 f5          	cmovns %r13d,%esi
ffff8000001088ea:	89 31                	mov    %esi,(%rcx)
ffff8000001088ec:	44 89 fe             	mov    %r15d,%esi
ffff8000001088ef:	f6 02 40             	testb  $0x40,(%rdx)
ffff8000001088f2:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001088f6:	89 71 04             	mov    %esi,0x4(%rcx)
ffff8000001088f9:	44 89 fe             	mov    %r15d,%esi
ffff8000001088fc:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001088ff:	41 0f 44 f5          	cmove  %r13d,%esi
ffff800000108903:	89 71 08             	mov    %esi,0x8(%rcx)
ffff800000108906:	44 89 fe             	mov    %r15d,%esi
ffff800000108909:	f6 02 10             	testb  $0x10,(%rdx)
ffff80000010890c:	41 0f 44 f5          	cmove  %r13d,%esi
ffff800000108910:	89 71 0c             	mov    %esi,0xc(%rcx)
ffff800000108913:	44 89 fe             	mov    %r15d,%esi
ffff800000108916:	f6 02 08             	testb  $0x8,(%rdx)
ffff800000108919:	41 0f 44 f5          	cmove  %r13d,%esi
ffff80000010891d:	89 71 10             	mov    %esi,0x10(%rcx)
ffff800000108920:	44 89 fe             	mov    %r15d,%esi
ffff800000108923:	f6 02 04             	testb  $0x4,(%rdx)
ffff800000108926:	41 0f 44 f5          	cmove  %r13d,%esi
ffff80000010892a:	89 71 14             	mov    %esi,0x14(%rcx)
ffff80000010892d:	44 89 fe             	mov    %r15d,%esi
ffff800000108930:	f6 02 02             	testb  $0x2,(%rdx)
ffff800000108933:	41 0f 44 f5          	cmove  %r13d,%esi
ffff800000108937:	89 71 18             	mov    %esi,0x18(%rcx)
ffff80000010893a:	f6 02 01             	testb  $0x1,(%rdx)
ffff80000010893d:	75 89                	jne    ffff8000001088c8 <color_printk+0x1ad8>
ffff80000010893f:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
ffff800000108943:	eb 87                	jmp    ffff8000001088cc <color_printk+0x1adc>
ffff800000108945:	8d 42 08             	lea    0x8(%rdx),%eax
ffff800000108948:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010894b:	29 d0                	sub    %edx,%eax
ffff80000010894d:	89 84 24 d0 00 00 00 	mov    %eax,0xd0(%rsp)
ffff800000108954:	e9 7a f3 ff ff       	jmp    ffff800000107cd3 <color_printk+0xee3>
ffff800000108959:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff80000010895e:	e9 2c f2 ff ff       	jmp    ffff800000107b8f <color_printk+0xd9f>
ffff800000108963:	83 ea 01             	sub    $0x1,%edx
ffff800000108966:	41 89 d3             	mov    %edx,%r11d
ffff800000108969:	0f 88 d7 0b 00 00    	js     ffff800000109546 <color_printk+0x2756>
ffff80000010896f:	41 89 54 2e 08       	mov    %edx,0x8(%r14,%rbp,1)
ffff800000108974:	41 0f af c9          	imul   %r9d,%ecx
ffff800000108978:	44 89 da             	mov    %r11d,%edx
ffff80000010897b:	4c 63 d6             	movslq %esi,%r10
ffff80000010897e:	41 b9 1f 00 00 00    	mov    $0x1f,%r9d
ffff800000108984:	0f af d7             	imul   %edi,%edx
ffff800000108987:	4c 89 d7             	mov    %r10,%rdi
ffff80000010898a:	4c 8b 64 24 10       	mov    0x10(%rsp),%r12
ffff80000010898f:	4a 8d 04 95 00 00 00 	lea    0x0(,%r10,4),%rax
ffff800000108996:	00 
ffff800000108997:	48 c1 e7 04          	shl    $0x4,%rdi
ffff80000010899b:	0f af ce             	imul   %esi,%ecx
ffff80000010899e:	4c 29 d7             	sub    %r10,%rdi
ffff8000001089a1:	48 63 d2             	movslq %edx,%rdx
ffff8000001089a4:	48 c1 e7 02          	shl    $0x2,%rdi
ffff8000001089a8:	48 63 c9             	movslq %ecx,%rcx
ffff8000001089ab:	48 01 d1             	add    %rdx,%rcx
ffff8000001089ae:	48 8d 57 1f          	lea    0x1f(%rdi),%rdx
ffff8000001089b2:	48 c1 e1 02          	shl    $0x2,%rcx
ffff8000001089b6:	85 f6                	test   %esi,%esi
ffff8000001089b8:	49 0f 48 d1          	cmovs  %r9,%rdx
ffff8000001089bc:	49 b9 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%r9
ffff8000001089c3:	ff ff ff 
ffff8000001089c6:	49 8d 1c 29          	lea    (%r9,%rbp,1),%rbx
ffff8000001089ca:	48 01 ca             	add    %rcx,%rdx
ffff8000001089cd:	49 89 dd             	mov    %rbx,%r13
ffff8000001089d0:	4d 8d 1c 14          	lea    (%r12,%rdx,1),%r11
ffff8000001089d4:	49 39 db             	cmp    %rbx,%r11
ffff8000001089d7:	41 0f 92 c3          	setb   %r11b
ffff8000001089db:	85 f6                	test   %esi,%esi
ffff8000001089dd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001089e2:	48 0f 48 f7          	cmovs  %rdi,%rsi
ffff8000001089e6:	48 8d 7b 0f          	lea    0xf(%rbx),%rdi
ffff8000001089ea:	48 01 ce             	add    %rcx,%rsi
ffff8000001089ed:	4c 01 e6             	add    %r12,%rsi
ffff8000001089f0:	48 39 f7             	cmp    %rsi,%rdi
ffff8000001089f3:	40 0f 92 c6          	setb   %sil
ffff8000001089f7:	44 08 de             	or     %r11b,%sil
ffff8000001089fa:	0f 84 83 0b 00 00    	je     ffff800000109583 <color_printk+0x2793>
ffff800000108a00:	48 8d 70 1f          	lea    0x1f(%rax),%rsi
ffff800000108a04:	48 83 fe 3e          	cmp    $0x3e,%rsi
ffff800000108a08:	0f 86 75 0b 00 00    	jbe    ffff800000109583 <color_printk+0x2793>
ffff800000108a0e:	49 01 cc             	add    %rcx,%r12
ffff800000108a11:	66 41 0f 6e d7       	movd   %r15d,%xmm2
ffff800000108a16:	66 45 0f ef d2       	pxor   %xmm10,%xmm10
ffff800000108a1b:	4c 89 d2             	mov    %r10,%rdx
ffff800000108a1e:	49 81 ed f0 01 00 00 	sub    $0x1f0,%r13
ffff800000108a25:	4c 8d 8b 00 fe ff ff 	lea    -0x200(%rbx),%r9
ffff800000108a2c:	49 8d 1c 04          	lea    (%r12,%rax,1),%rbx
ffff800000108a30:	48 c1 e2 05          	shl    $0x5,%rdx
ffff800000108a34:	4c 8d 1c 03          	lea    (%rbx,%rax,1),%r11
ffff800000108a38:	66 44 0f 70 e2 e0    	pshufd $0xe0,%xmm2,%xmm12
ffff800000108a3e:	66 0f 6e 54 24 08    	movd   0x8(%rsp),%xmm2
ffff800000108a44:	4c 89 ac 24 d8 00 00 	mov    %r13,0xd8(%rsp)
ffff800000108a4b:	00 
ffff800000108a4c:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000108a53:	ff ff ff 
ffff800000108a56:	4d 8d 14 03          	lea    (%r11,%rax,1),%r10
ffff800000108a5a:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
ffff800000108a5f:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
ffff800000108a64:	49 8d 3c 02          	lea    (%r10,%rax,1),%rdi
ffff800000108a68:	66 44 0f 70 da e0    	pshufd $0xe0,%xmm2,%xmm11
ffff800000108a6e:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000108a75:	ff ff ff 
ffff800000108a78:	4c 89 6c 24 18       	mov    %r13,0x18(%rsp)
ffff800000108a7d:	48 8d 34 07          	lea    (%rdi,%rax,1),%rsi
ffff800000108a81:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000108a88:	ff ff ff 
ffff800000108a8b:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
ffff800000108a90:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
ffff800000108a94:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000108a9b:	ff ff ff 
ffff800000108a9e:	4c 89 6c 24 28       	mov    %r13,0x28(%rsp)
ffff800000108aa3:	48 01 c8             	add    %rcx,%rax
ffff800000108aa6:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000108aad:	ff ff ff 
ffff800000108ab0:	4c 89 6c 24 30       	mov    %r13,0x30(%rsp)
ffff800000108ab5:	49 bd f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%r13
ffff800000108abc:	ff ff ff 
ffff800000108abf:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108ac4:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
ffff800000108acb:	00 
ffff800000108acc:	49 bd d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%r13
ffff800000108ad3:	ff ff ff 
ffff800000108ad6:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108adb:	4c 89 ac 24 e8 00 00 	mov    %r13,0xe8(%rsp)
ffff800000108ae2:	00 
ffff800000108ae3:	49 bd 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%r13
ffff800000108aea:	ff ff ff 
ffff800000108aed:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108af2:	4c 89 ac 24 f0 00 00 	mov    %r13,0xf0(%rsp)
ffff800000108af9:	00 
ffff800000108afa:	49 bd 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%r13
ffff800000108b01:	ff ff ff 
ffff800000108b04:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b09:	4c 89 ac 24 f8 00 00 	mov    %r13,0xf8(%rsp)
ffff800000108b10:	00 
ffff800000108b11:	49 bd 10 c7 ff ff ff 	movabs $0xffffffffffffc710,%r13
ffff800000108b18:	ff ff ff 
ffff800000108b1b:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b20:	4c 89 ac 24 00 01 00 	mov    %r13,0x100(%rsp)
ffff800000108b27:	00 
ffff800000108b28:	49 bd 18 c7 ff ff ff 	movabs $0xffffffffffffc718,%r13
ffff800000108b2f:	ff ff ff 
ffff800000108b32:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b37:	4c 89 ac 24 08 01 00 	mov    %r13,0x108(%rsp)
ffff800000108b3e:	00 
ffff800000108b3f:	49 bd 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%r13
ffff800000108b46:	ff ff ff 
ffff800000108b49:	4d 8b 6c 2d 00       	mov    0x0(%r13,%rbp,1),%r13
ffff800000108b4e:	4c 89 ac 24 48 01 00 	mov    %r13,0x148(%rsp)
ffff800000108b55:	00 
ffff800000108b56:	45 89 c5             	mov    %r8d,%r13d
ffff800000108b59:	66 41 0f 6f da       	movdqa %xmm10,%xmm3
ffff800000108b5e:	66 41 0f 6f c2       	movdqa %xmm10,%xmm0
ffff800000108b63:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108b68:	f3 41 0f 7e 91 00 02 	movq   0x200(%r9),%xmm2
ffff800000108b6f:	00 00 
ffff800000108b71:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108b76:	66 41 0f 6f fa       	movdqa %xmm10,%xmm7
ffff800000108b7b:	49 83 c1 08          	add    $0x8,%r9
ffff800000108b7f:	66 0f 64 da          	pcmpgtb %xmm2,%xmm3
ffff800000108b83:	66 0f 64 c3          	pcmpgtb %xmm3,%xmm0
ffff800000108b87:	66 0f 6f eb          	movdqa %xmm3,%xmm5
ffff800000108b8b:	66 0f 60 e8          	punpcklbw %xmm0,%xmm5
ffff800000108b8f:	66 0f 60 d8          	punpcklbw %xmm0,%xmm3
ffff800000108b93:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108b98:	66 0f 65 c5          	pcmpgtw %xmm5,%xmm0
ffff800000108b9c:	66 44 0f 6f fd       	movdqa %xmm5,%xmm15
ffff800000108ba1:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108ba6:	66 44 0f 6f f3       	movdqa %xmm3,%xmm14
ffff800000108bab:	66 0f 61 e8          	punpcklwd %xmm0,%xmm5
ffff800000108baf:	66 44 0f 61 f8       	punpcklwd %xmm0,%xmm15
ffff800000108bb4:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108bb9:	66 0f 70 ed 4e       	pshufd $0x4e,%xmm5,%xmm5
ffff800000108bbe:	66 41 0f db cf       	pand   %xmm15,%xmm1
ffff800000108bc3:	66 45 0f df fb       	pandn  %xmm11,%xmm15
ffff800000108bc8:	66 0f db c5          	pand   %xmm5,%xmm0
ffff800000108bcc:	66 41 0f df eb       	pandn  %xmm11,%xmm5
ffff800000108bd1:	66 44 0f eb f9       	por    %xmm1,%xmm15
ffff800000108bd6:	66 0f eb e8          	por    %xmm0,%xmm5
ffff800000108bda:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108bdf:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108be4:	66 0f 65 c3          	pcmpgtw %xmm3,%xmm0
ffff800000108be8:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108bec:	66 44 0f 61 f0       	punpcklwd %xmm0,%xmm14
ffff800000108bf1:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108bf6:	66 0f 70 db 4e       	pshufd $0x4e,%xmm3,%xmm3
ffff800000108bfb:	66 41 0f db ce       	pand   %xmm14,%xmm1
ffff800000108c00:	66 45 0f df f3       	pandn  %xmm11,%xmm14
ffff800000108c05:	66 0f db c3          	pand   %xmm3,%xmm0
ffff800000108c09:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108c0e:	66 44 0f eb f1       	por    %xmm1,%xmm14
ffff800000108c13:	66 0f eb d8          	por    %xmm0,%xmm3
ffff800000108c17:	66 41 0f 6f ca       	movdqa %xmm10,%xmm1
ffff800000108c1c:	f3 0f 7e 84 24 e0 00 	movq   0xe0(%rsp),%xmm0
ffff800000108c23:	00 00 
ffff800000108c25:	66 0f d6 5c 24 18    	movq   %xmm3,0x18(%rsp)
ffff800000108c2b:	66 0f db c2          	pand   %xmm2,%xmm0
ffff800000108c2f:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000108c34:	66 41 0f 74 c2       	pcmpeqb %xmm10,%xmm0
ffff800000108c39:	66 0f 64 c8          	pcmpgtb %xmm0,%xmm1
ffff800000108c3d:	66 0f 6f e0          	movdqa %xmm0,%xmm4
ffff800000108c41:	66 0f 60 e1          	punpcklbw %xmm1,%xmm4
ffff800000108c45:	66 0f 60 c1          	punpcklbw %xmm1,%xmm0
ffff800000108c49:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000108c4e:	66 0f 65 cc          	pcmpgtw %xmm4,%xmm1
ffff800000108c52:	66 44 0f 6f ec       	movdqa %xmm4,%xmm13
ffff800000108c57:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108c5c:	66 44 0f 6f c0       	movdqa %xmm0,%xmm8
ffff800000108c61:	66 0f 61 e1          	punpcklwd %xmm1,%xmm4
ffff800000108c65:	66 44 0f 61 e9       	punpcklwd %xmm1,%xmm13
ffff800000108c6a:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108c6f:	66 0f 70 e4 4e       	pshufd $0x4e,%xmm4,%xmm4
ffff800000108c74:	66 41 0f db f5       	pand   %xmm13,%xmm6
ffff800000108c79:	66 45 0f df eb       	pandn  %xmm11,%xmm13
ffff800000108c7e:	66 0f db cc          	pand   %xmm4,%xmm1
ffff800000108c82:	66 41 0f df e3       	pandn  %xmm11,%xmm4
ffff800000108c87:	66 44 0f eb ee       	por    %xmm6,%xmm13
ffff800000108c8c:	66 0f eb e1          	por    %xmm1,%xmm4
ffff800000108c90:	66 41 0f 6f c9       	movdqa %xmm9,%xmm1
ffff800000108c95:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108c9a:	66 0f 65 c8          	pcmpgtw %xmm0,%xmm1
ffff800000108c9e:	66 0f 61 c1          	punpcklwd %xmm1,%xmm0
ffff800000108ca2:	66 44 0f 61 c1       	punpcklwd %xmm1,%xmm8
ffff800000108ca7:	66 41 0f 6f cc       	movdqa %xmm12,%xmm1
ffff800000108cac:	66 0f 70 c0 4e       	pshufd $0x4e,%xmm0,%xmm0
ffff800000108cb1:	66 41 0f db f0       	pand   %xmm8,%xmm6
ffff800000108cb6:	66 45 0f df c3       	pandn  %xmm11,%xmm8
ffff800000108cbb:	66 0f db c8          	pand   %xmm0,%xmm1
ffff800000108cbf:	66 41 0f df c3       	pandn  %xmm11,%xmm0
ffff800000108cc4:	66 44 0f eb c6       	por    %xmm6,%xmm8
ffff800000108cc9:	66 0f eb c1          	por    %xmm1,%xmm0
ffff800000108ccd:	f3 0f 7e 8c 24 e8 00 	movq   0xe8(%rsp),%xmm1
ffff800000108cd4:	00 00 
ffff800000108cd6:	66 0f d6 44 24 20    	movq   %xmm0,0x20(%rsp)
ffff800000108cdc:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108ce1:	66 0f db ca          	pand   %xmm2,%xmm1
ffff800000108ce5:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108cea:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108cef:	66 0f 64 f9          	pcmpgtb %xmm1,%xmm7
ffff800000108cf3:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108cf7:	66 0f 60 f7          	punpcklbw %xmm7,%xmm6
ffff800000108cfb:	66 0f 60 cf          	punpcklbw %xmm7,%xmm1
ffff800000108cff:	66 41 0f 6f f9       	movdqa %xmm9,%xmm7
ffff800000108d04:	66 0f 65 fe          	pcmpgtw %xmm6,%xmm7
ffff800000108d08:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108d0d:	66 49 0f 7e f8       	movq   %xmm7,%r8
ffff800000108d12:	66 0f 6f fe          	movdqa %xmm6,%xmm7
ffff800000108d16:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108d1b:	66 0f 61 fb          	punpcklwd %xmm3,%xmm7
ffff800000108d1f:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108d23:	66 0f db c7          	pand   %xmm7,%xmm0
ffff800000108d27:	66 41 0f df fb       	pandn  %xmm11,%xmm7
ffff800000108d2c:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108d31:	66 0f eb f8          	por    %xmm0,%xmm7
ffff800000108d35:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108d3a:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108d3e:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108d43:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108d47:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108d4c:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108d50:	66 0f d6 44 24 28    	movq   %xmm0,0x28(%rsp)
ffff800000108d56:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108d5b:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108d60:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108d64:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108d69:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108d6d:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108d71:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108d76:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108d7a:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108d7f:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108d83:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108d88:	66 0f d6 44 24 30    	movq   %xmm0,0x30(%rsp)
ffff800000108d8e:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108d93:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108d98:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108d9c:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108da1:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108da5:	f3 0f 7e b4 24 f0 00 	movq   0xf0(%rsp),%xmm6
ffff800000108dac:	00 00 
ffff800000108dae:	66 0f d6 4c 24 38    	movq   %xmm1,0x38(%rsp)
ffff800000108db4:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108db8:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108dbc:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108dc1:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108dc6:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108dcb:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108dcf:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108dd4:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108dd8:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108ddd:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108de1:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108de5:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108de9:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108ded:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108df2:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108df6:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
ffff800000108dfc:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108e00:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108e05:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108e0a:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108e0e:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108e13:	66 0f d6 44 24 40    	movq   %xmm0,0x40(%rsp)
ffff800000108e19:	f3 0f 7e 44 24 48    	movq   0x48(%rsp),%xmm0
ffff800000108e1f:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000108e23:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108e28:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000108e2c:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108e31:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108e35:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108e39:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108e3e:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108e42:	66 0f d6 44 24 48    	movq   %xmm0,0x48(%rsp)
ffff800000108e48:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108e4d:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108e52:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108e56:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108e5b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108e5f:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108e63:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108e68:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108e6c:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108e71:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108e75:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108e7a:	66 0f d6 44 24 50    	movq   %xmm0,0x50(%rsp)
ffff800000108e80:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108e85:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108e8a:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108e8e:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108e93:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108e97:	f3 0f 7e b4 24 f8 00 	movq   0xf8(%rsp),%xmm6
ffff800000108e9e:	00 00 
ffff800000108ea0:	66 0f d6 4c 24 58    	movq   %xmm1,0x58(%rsp)
ffff800000108ea6:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108eaa:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108eae:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108eb3:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108eb8:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108ebd:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108ec1:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108ec6:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108eca:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108ecf:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108ed3:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108ed7:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108edb:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108edf:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108ee4:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108ee8:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108eee:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108ef2:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108ef7:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108efc:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108f00:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108f05:	66 0f d6 44 24 60    	movq   %xmm0,0x60(%rsp)
ffff800000108f0b:	f3 0f 7e 44 24 68    	movq   0x68(%rsp),%xmm0
ffff800000108f11:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000108f15:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000108f1a:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000108f1e:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108f23:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108f27:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108f2b:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000108f30:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000108f34:	66 0f d6 44 24 68    	movq   %xmm0,0x68(%rsp)
ffff800000108f3a:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000108f3f:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108f44:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108f48:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108f4d:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff800000108f51:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000108f55:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000108f5a:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000108f5e:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000108f63:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff800000108f67:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000108f6c:	66 0f d6 44 24 70    	movq   %xmm0,0x70(%rsp)
ffff800000108f72:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000108f77:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108f7c:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000108f80:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000108f85:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000108f89:	f3 0f 7e b4 24 00 01 	movq   0x100(%rsp),%xmm6
ffff800000108f90:	00 00 
ffff800000108f92:	66 0f d6 4c 24 78    	movq   %xmm1,0x78(%rsp)
ffff800000108f98:	66 0f db f2          	pand   %xmm2,%xmm6
ffff800000108f9c:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff800000108fa0:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff800000108fa5:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108faa:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff800000108faf:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff800000108fb3:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000108fb8:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000108fbc:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff800000108fc1:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff800000108fc5:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff800000108fc9:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff800000108fcd:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff800000108fd1:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000108fd6:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
ffff800000108fdd:	00 00 
ffff800000108fdf:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff800000108fe3:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000108fe7:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff800000108fec:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff800000108ff1:	66 0f eb c3          	por    %xmm3,%xmm0
ffff800000108ff5:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000108ffa:	66 0f d6 84 24 80 00 	movq   %xmm0,0x80(%rsp)
ffff800000109001:	00 00 
ffff800000109003:	f3 0f 7e 84 24 88 00 	movq   0x88(%rsp),%xmm0
ffff80000010900a:	00 00 
ffff80000010900c:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff800000109010:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000109015:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000109019:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff80000010901e:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff800000109022:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000109026:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff80000010902b:	66 0f d6 84 24 88 00 	movq   %xmm0,0x88(%rsp)
ffff800000109032:	00 00 
ffff800000109034:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff800000109038:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff80000010903d:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff800000109042:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff800000109046:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff80000010904b:	66 0f 61 f3          	punpcklwd %xmm3,%xmm6
ffff80000010904f:	66 0f db c6          	pand   %xmm6,%xmm0
ffff800000109053:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000109058:	66 0f eb c6          	por    %xmm6,%xmm0
ffff80000010905c:	66 49 0f 6e f0       	movq   %r8,%xmm6
ffff800000109061:	66 0f d6 84 24 90 00 	movq   %xmm0,0x90(%rsp)
ffff800000109068:	00 00 
ffff80000010906a:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff80000010906e:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000109073:	66 41 0f 6f c1       	movdqa %xmm9,%xmm0
ffff800000109078:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff80000010907d:	66 0f db f1          	pand   %xmm1,%xmm6
ffff800000109081:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff800000109086:	66 0f eb ce          	por    %xmm6,%xmm1
ffff80000010908a:	f3 0f 7e b4 24 08 01 	movq   0x108(%rsp),%xmm6
ffff800000109091:	00 00 
ffff800000109093:	66 0f d6 8c 24 98 00 	movq   %xmm1,0x98(%rsp)
ffff80000010909a:	00 00 
ffff80000010909c:	66 0f db f2          	pand   %xmm2,%xmm6
ffff8000001090a0:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001090a4:	66 41 0f 6f f2       	movdqa %xmm10,%xmm6
ffff8000001090a9:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff8000001090ae:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff8000001090b3:	66 0f 64 f1          	pcmpgtb %xmm1,%xmm6
ffff8000001090b7:	66 49 0f 7e f0       	movq   %xmm6,%r8
ffff8000001090bc:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff8000001090c0:	66 49 0f 6e d8       	movq   %r8,%xmm3
ffff8000001090c5:	66 0f 60 f3          	punpcklbw %xmm3,%xmm6
ffff8000001090c9:	66 0f 60 cb          	punpcklbw %xmm3,%xmm1
ffff8000001090cd:	66 0f 65 c6          	pcmpgtw %xmm6,%xmm0
ffff8000001090d1:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001090d5:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001090da:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff8000001090e1:	00 00 
ffff8000001090e3:	66 0f 61 d8          	punpcklwd %xmm0,%xmm3
ffff8000001090e7:	66 0f 6f c3          	movdqa %xmm3,%xmm0
ffff8000001090eb:	66 41 0f df db       	pandn  %xmm11,%xmm3
ffff8000001090f0:	66 41 0f db c4       	pand   %xmm12,%xmm0
ffff8000001090f5:	66 0f eb c3          	por    %xmm3,%xmm0
ffff8000001090f9:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff8000001090fe:	66 0f d6 84 24 a0 00 	movq   %xmm0,0xa0(%rsp)
ffff800000109105:	00 00 
ffff800000109107:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
ffff80000010910e:	00 00 
ffff800000109110:	66 45 0f 7e 3c 24    	movd   %xmm15,(%r12)
ffff800000109116:	66 0f 61 f0          	punpcklwd %xmm0,%xmm6
ffff80000010911a:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff80000010911f:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000109124:	66 0f db de          	pand   %xmm6,%xmm3
ffff800000109128:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff80000010912d:	66 0f eb de          	por    %xmm6,%xmm3
ffff800000109131:	66 41 0f 6f f1       	movdqa %xmm9,%xmm6
ffff800000109136:	66 0f 65 f1          	pcmpgtw %xmm1,%xmm6
ffff80000010913a:	66 49 0f 7e d8       	movq   %xmm3,%r8
ffff80000010913f:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff800000109143:	66 0f d6 b4 24 b0 00 	movq   %xmm6,0xb0(%rsp)
ffff80000010914a:	00 00 
ffff80000010914c:	66 0f 61 de          	punpcklwd %xmm6,%xmm3
ffff800000109150:	66 0f 6f f3          	movdqa %xmm3,%xmm6
ffff800000109154:	66 0f db c3          	pand   %xmm3,%xmm0
ffff800000109158:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff80000010915d:	66 0f eb c6          	por    %xmm6,%xmm0
ffff800000109161:	f3 0f 7e b4 24 b0 00 	movq   0xb0(%rsp),%xmm6
ffff800000109168:	00 00 
ffff80000010916a:	66 0f d6 84 24 a8 00 	movq   %xmm0,0xa8(%rsp)
ffff800000109171:	00 00 
ffff800000109173:	66 41 0f 6f c4       	movdqa %xmm12,%xmm0
ffff800000109178:	66 0f 61 ce          	punpcklwd %xmm6,%xmm1
ffff80000010917c:	66 41 0f 6f f4       	movdqa %xmm12,%xmm6
ffff800000109181:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000109186:	66 0f db f1          	pand   %xmm1,%xmm6
ffff80000010918a:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff80000010918f:	66 0f eb ce          	por    %xmm6,%xmm1
ffff800000109193:	f3 0f 7e b4 24 48 01 	movq   0x148(%rsp),%xmm6
ffff80000010919a:	00 00 
ffff80000010919c:	66 0f d6 8c 24 b0 00 	movq   %xmm1,0xb0(%rsp)
ffff8000001091a3:	00 00 
ffff8000001091a5:	66 0f db f2          	pand   %xmm2,%xmm6
ffff8000001091a9:	66 41 0f 6f d2       	movdqa %xmm10,%xmm2
ffff8000001091ae:	66 0f 6f ce          	movdqa %xmm6,%xmm1
ffff8000001091b2:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff8000001091b7:	66 41 0f 74 ca       	pcmpeqb %xmm10,%xmm1
ffff8000001091bc:	66 0f 64 d1          	pcmpgtb %xmm1,%xmm2
ffff8000001091c0:	66 0f 6f f1          	movdqa %xmm1,%xmm6
ffff8000001091c4:	66 0f 60 f2          	punpcklbw %xmm2,%xmm6
ffff8000001091c8:	66 0f 60 ca          	punpcklbw %xmm2,%xmm1
ffff8000001091cc:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
ffff8000001091d1:	66 0f 65 d6          	pcmpgtw %xmm6,%xmm2
ffff8000001091d5:	66 0f 6f de          	movdqa %xmm6,%xmm3
ffff8000001091d9:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff8000001091de:	66 0f d6 94 24 c0 00 	movq   %xmm2,0xc0(%rsp)
ffff8000001091e5:	00 00 
ffff8000001091e7:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
ffff8000001091eb:	66 0f 6f d3          	movdqa %xmm3,%xmm2
ffff8000001091ef:	66 0f db c3          	pand   %xmm3,%xmm0
ffff8000001091f3:	66 0f 6f d9          	movdqa %xmm1,%xmm3
ffff8000001091f7:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff8000001091fc:	66 0f eb c2          	por    %xmm2,%xmm0
ffff800000109200:	f3 0f 7e 94 24 c0 00 	movq   0xc0(%rsp),%xmm2
ffff800000109207:	00 00 
ffff800000109209:	66 0f d6 84 24 b8 00 	movq   %xmm0,0xb8(%rsp)
ffff800000109210:	00 00 
ffff800000109212:	66 0f 61 f2          	punpcklwd %xmm2,%xmm6
ffff800000109216:	66 41 0f 6f d4       	movdqa %xmm12,%xmm2
ffff80000010921b:	66 0f 70 f6 4e       	pshufd $0x4e,%xmm6,%xmm6
ffff800000109220:	66 0f db d6          	pand   %xmm6,%xmm2
ffff800000109224:	66 41 0f df f3       	pandn  %xmm11,%xmm6
ffff800000109229:	66 0f eb f2          	por    %xmm2,%xmm6
ffff80000010922d:	66 41 0f 6f d1       	movdqa %xmm9,%xmm2
ffff800000109232:	66 0f 65 d1          	pcmpgtw %xmm1,%xmm2
ffff800000109236:	66 0f 61 da          	punpcklwd %xmm2,%xmm3
ffff80000010923a:	66 0f 6f c2          	movdqa %xmm2,%xmm0
ffff80000010923e:	66 0f 6f d3          	movdqa %xmm3,%xmm2
ffff800000109242:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000109247:	66 0f 61 c8          	punpcklwd %xmm0,%xmm1
ffff80000010924b:	66 0f db da          	pand   %xmm2,%xmm3
ffff80000010924f:	66 41 0f df d3       	pandn  %xmm11,%xmm2
ffff800000109254:	66 0f 70 c9 4e       	pshufd $0x4e,%xmm1,%xmm1
ffff800000109259:	66 0f eb d3          	por    %xmm3,%xmm2
ffff80000010925d:	66 41 0f 6f dc       	movdqa %xmm12,%xmm3
ffff800000109262:	66 0f db d9          	pand   %xmm1,%xmm3
ffff800000109266:	66 41 0f df cb       	pandn  %xmm11,%xmm1
ffff80000010926b:	66 0f eb cb          	por    %xmm3,%xmm1
ffff80000010926f:	66 41 0f 70 df e5    	pshufd $0xe5,%xmm15,%xmm3
ffff800000109275:	66 0f 7e 1b          	movd   %xmm3,(%rbx)
ffff800000109279:	66 41 0f 7e 2b       	movd   %xmm5,(%r11)
ffff80000010927e:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff800000109283:	66 41 0f 7e 2a       	movd   %xmm5,(%r10)
ffff800000109288:	66 41 0f 70 ee e5    	pshufd $0xe5,%xmm14,%xmm5
ffff80000010928e:	66 44 0f 7e 37       	movd   %xmm14,(%rdi)
ffff800000109293:	66 0f 7e 2e          	movd   %xmm5,(%rsi)
ffff800000109297:	f3 0f 7e 6c 24 18    	movq   0x18(%rsp),%xmm5
ffff80000010929d:	66 0f 7e 29          	movd   %xmm5,(%rcx)
ffff8000001092a1:	66 0f 70 ed e5       	pshufd $0xe5,%xmm5,%xmm5
ffff8000001092a6:	66 0f 7e 28          	movd   %xmm5,(%rax)
ffff8000001092aa:	66 41 0f 70 ed e5    	pshufd $0xe5,%xmm13,%xmm5
ffff8000001092b0:	66 45 0f 7e 6c 24 04 	movd   %xmm13,0x4(%r12)
ffff8000001092b7:	66 0f 7e 6b 04       	movd   %xmm5,0x4(%rbx)
ffff8000001092bc:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001092c1:	66 41 0f 7e 63 04    	movd   %xmm4,0x4(%r11)
ffff8000001092c7:	f3 0f 7e 64 24 20    	movq   0x20(%rsp),%xmm4
ffff8000001092cd:	66 41 0f 7e 6a 04    	movd   %xmm5,0x4(%r10)
ffff8000001092d3:	66 41 0f 70 e8 e5    	pshufd $0xe5,%xmm8,%xmm5
ffff8000001092d9:	66 44 0f 7e 47 04    	movd   %xmm8,0x4(%rdi)
ffff8000001092df:	66 0f 7e 6e 04       	movd   %xmm5,0x4(%rsi)
ffff8000001092e4:	66 0f 70 ec e5       	pshufd $0xe5,%xmm4,%xmm5
ffff8000001092e9:	66 0f 7e 61 04       	movd   %xmm4,0x4(%rcx)
ffff8000001092ee:	66 0f 70 e7 e5       	pshufd $0xe5,%xmm7,%xmm4
ffff8000001092f3:	66 0f 7e 68 04       	movd   %xmm5,0x4(%rax)
ffff8000001092f8:	66 41 0f 7e 7c 24 08 	movd   %xmm7,0x8(%r12)
ffff8000001092ff:	f3 0f 7e 7c 24 28    	movq   0x28(%rsp),%xmm7
ffff800000109305:	66 0f 7e 63 08       	movd   %xmm4,0x8(%rbx)
ffff80000010930a:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff80000010930f:	66 41 0f 7e 7b 08    	movd   %xmm7,0x8(%r11)
ffff800000109315:	66 41 0f 7e 6a 08    	movd   %xmm5,0x8(%r10)
ffff80000010931b:	f3 0f 7e 44 24 30    	movq   0x30(%rsp),%xmm0
ffff800000109321:	f3 0f 7e 7c 24 38    	movq   0x38(%rsp),%xmm7
ffff800000109327:	66 0f 7e 47 08       	movd   %xmm0,0x8(%rdi)
ffff80000010932c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109331:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109336:	f3 0f 7e 44 24 40    	movq   0x40(%rsp),%xmm0
ffff80000010933c:	66 0f 7e 66 08       	movd   %xmm4,0x8(%rsi)
ffff800000109341:	66 0f 7e 79 08       	movd   %xmm7,0x8(%rcx)
ffff800000109346:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff80000010934b:	f3 0f 7e 7c 24 48    	movq   0x48(%rsp),%xmm7
ffff800000109351:	66 0f 7e 68 08       	movd   %xmm5,0x8(%rax)
ffff800000109356:	66 41 0f 7e 44 24 0c 	movd   %xmm0,0xc(%r12)
ffff80000010935d:	f3 0f 7e 44 24 50    	movq   0x50(%rsp),%xmm0
ffff800000109363:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109368:	66 0f 7e 63 0c       	movd   %xmm4,0xc(%rbx)
ffff80000010936d:	66 41 0f 7e 7b 0c    	movd   %xmm7,0xc(%r11)
ffff800000109373:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109378:	f3 0f 7e 7c 24 58    	movq   0x58(%rsp),%xmm7
ffff80000010937e:	66 41 0f 7e 6a 0c    	movd   %xmm5,0xc(%r10)
ffff800000109384:	66 0f 7e 47 0c       	movd   %xmm0,0xc(%rdi)
ffff800000109389:	f3 0f 7e 44 24 60    	movq   0x60(%rsp),%xmm0
ffff80000010938f:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff800000109394:	66 0f 7e 66 0c       	movd   %xmm4,0xc(%rsi)
ffff800000109399:	66 0f 7e 79 0c       	movd   %xmm7,0xc(%rcx)
ffff80000010939e:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff8000001093a3:	f3 0f 7e 7c 24 68    	movq   0x68(%rsp),%xmm7
ffff8000001093a9:	66 0f 7e 68 0c       	movd   %xmm5,0xc(%rax)
ffff8000001093ae:	66 41 0f 7e 44 24 10 	movd   %xmm0,0x10(%r12)
ffff8000001093b5:	f3 0f 7e 44 24 70    	movq   0x70(%rsp),%xmm0
ffff8000001093bb:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff8000001093c0:	66 0f 7e 63 10       	movd   %xmm4,0x10(%rbx)
ffff8000001093c5:	66 41 0f 7e 7b 10    	movd   %xmm7,0x10(%r11)
ffff8000001093cb:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff8000001093d0:	f3 0f 7e 7c 24 78    	movq   0x78(%rsp),%xmm7
ffff8000001093d6:	66 41 0f 7e 6a 10    	movd   %xmm5,0x10(%r10)
ffff8000001093dc:	66 0f 7e 47 10       	movd   %xmm0,0x10(%rdi)
ffff8000001093e1:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff8000001093e6:	f3 0f 7e 84 24 80 00 	movq   0x80(%rsp),%xmm0
ffff8000001093ed:	00 00 
ffff8000001093ef:	66 0f 7e 66 10       	movd   %xmm4,0x10(%rsi)
ffff8000001093f4:	66 0f 7e 79 10       	movd   %xmm7,0x10(%rcx)
ffff8000001093f9:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff8000001093fe:	66 0f 7e 68 10       	movd   %xmm5,0x10(%rax)
ffff800000109403:	66 41 0f 7e 44 24 14 	movd   %xmm0,0x14(%r12)
ffff80000010940a:	66 0f 7e 63 14       	movd   %xmm4,0x14(%rbx)
ffff80000010940f:	f3 0f 7e bc 24 88 00 	movq   0x88(%rsp),%xmm7
ffff800000109416:	00 00 
ffff800000109418:	f3 0f 7e 84 24 90 00 	movq   0x90(%rsp),%xmm0
ffff80000010941f:	00 00 
ffff800000109421:	66 41 0f 7e 7b 14    	movd   %xmm7,0x14(%r11)
ffff800000109427:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff80000010942c:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109431:	f3 0f 7e bc 24 98 00 	movq   0x98(%rsp),%xmm7
ffff800000109438:	00 00 
ffff80000010943a:	66 41 0f 7e 6a 14    	movd   %xmm5,0x14(%r10)
ffff800000109440:	66 0f 7e 47 14       	movd   %xmm0,0x14(%rdi)
ffff800000109445:	66 0f 70 ef e5       	pshufd $0xe5,%xmm7,%xmm5
ffff80000010944a:	f3 0f 7e 84 24 a0 00 	movq   0xa0(%rsp),%xmm0
ffff800000109451:	00 00 
ffff800000109453:	66 0f 7e 66 14       	movd   %xmm4,0x14(%rsi)
ffff800000109458:	66 0f 7e 79 14       	movd   %xmm7,0x14(%rcx)
ffff80000010945d:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff800000109462:	f3 0f 7e bc 24 b0 00 	movq   0xb0(%rsp),%xmm7
ffff800000109469:	00 00 
ffff80000010946b:	66 0f 7e 68 14       	movd   %xmm5,0x14(%rax)
ffff800000109470:	66 49 0f 6e e8       	movq   %r8,%xmm5
ffff800000109475:	66 41 0f 7e 44 24 18 	movd   %xmm0,0x18(%r12)
ffff80000010947c:	f3 0f 7e 84 24 a8 00 	movq   0xa8(%rsp),%xmm0
ffff800000109483:	00 00 
ffff800000109485:	66 0f 7e 63 18       	movd   %xmm4,0x18(%rbx)
ffff80000010948a:	66 0f 70 e5 e5       	pshufd $0xe5,%xmm5,%xmm4
ffff80000010948f:	45 89 43 18          	mov    %r8d,0x18(%r11)
ffff800000109493:	66 41 0f 7e 62 18    	movd   %xmm4,0x18(%r10)
ffff800000109499:	66 0f 70 e0 e5       	pshufd $0xe5,%xmm0,%xmm4
ffff80000010949e:	66 0f 7e 47 18       	movd   %xmm0,0x18(%rdi)
ffff8000001094a3:	f3 0f 7e 84 24 b8 00 	movq   0xb8(%rsp),%xmm0
ffff8000001094aa:	00 00 
ffff8000001094ac:	66 0f 7e 66 18       	movd   %xmm4,0x18(%rsi)
ffff8000001094b1:	66 0f 7e 79 18       	movd   %xmm7,0x18(%rcx)
ffff8000001094b6:	66 0f 70 ff e5       	pshufd $0xe5,%xmm7,%xmm7
ffff8000001094bb:	66 0f 7e 78 18       	movd   %xmm7,0x18(%rax)
ffff8000001094c0:	66 0f 70 f8 e5       	pshufd $0xe5,%xmm0,%xmm7
ffff8000001094c5:	66 41 0f 7e 44 24 1c 	movd   %xmm0,0x1c(%r12)
ffff8000001094cc:	49 01 d4             	add    %rdx,%r12
ffff8000001094cf:	66 0f 7e 7b 1c       	movd   %xmm7,0x1c(%rbx)
ffff8000001094d4:	66 0f 70 fe e5       	pshufd $0xe5,%xmm6,%xmm7
ffff8000001094d9:	48 01 d3             	add    %rdx,%rbx
ffff8000001094dc:	66 41 0f 7e 73 1c    	movd   %xmm6,0x1c(%r11)
ffff8000001094e2:	49 01 d3             	add    %rdx,%r11
ffff8000001094e5:	66 41 0f 7e 7a 1c    	movd   %xmm7,0x1c(%r10)
ffff8000001094eb:	49 01 d2             	add    %rdx,%r10
ffff8000001094ee:	66 0f 7e 57 1c       	movd   %xmm2,0x1c(%rdi)
ffff8000001094f3:	66 0f 70 d2 e5       	pshufd $0xe5,%xmm2,%xmm2
ffff8000001094f8:	48 01 d7             	add    %rdx,%rdi
ffff8000001094fb:	66 0f 7e 56 1c       	movd   %xmm2,0x1c(%rsi)
ffff800000109500:	66 0f 70 d1 e5       	pshufd $0xe5,%xmm1,%xmm2
ffff800000109505:	48 01 d6             	add    %rdx,%rsi
ffff800000109508:	66 0f 7e 49 1c       	movd   %xmm1,0x1c(%rcx)
ffff80000010950d:	48 01 d1             	add    %rdx,%rcx
ffff800000109510:	66 0f 7e 50 1c       	movd   %xmm2,0x1c(%rax)
ffff800000109515:	48 01 d0             	add    %rdx,%rax
ffff800000109518:	4c 39 8c 24 d8 00 00 	cmp    %r9,0xd8(%rsp)
ffff80000010951f:	00 
ffff800000109520:	0f 85 33 f6 ff ff    	jne    ffff800000108b59 <color_printk+0x1d69>
ffff800000109526:	45 89 e8             	mov    %r13d,%r8d
ffff800000109529:	45 8b 54 2e 08       	mov    0x8(%r14,%rbp,1),%r10d
ffff80000010952e:	41 8b 34 2e          	mov    (%r14,%rbp,1),%esi
ffff800000109532:	41 8b 7c 2e 10       	mov    0x10(%r14,%rbp,1),%edi
ffff800000109537:	41 8b 4c 2e 0c       	mov    0xc(%r14,%rbp,1),%ecx
ffff80000010953c:	45 8b 4c 2e 14       	mov    0x14(%r14,%rbp,1),%r9d
ffff800000109541:	e9 6a e6 ff ff       	jmp    ffff800000107bb0 <color_printk+0xdc0>
ffff800000109546:	89 f0                	mov    %esi,%eax
ffff800000109548:	99                   	cltd
ffff800000109549:	f7 ff                	idiv   %edi
ffff80000010954b:	83 e8 01             	sub    $0x1,%eax
ffff80000010954e:	0f af c7             	imul   %edi,%eax
ffff800000109551:	83 e9 01             	sub    $0x1,%ecx
ffff800000109554:	41 89 4c 2e 0c       	mov    %ecx,0xc(%r14,%rbp,1)
ffff800000109559:	41 89 44 2e 08       	mov    %eax,0x8(%r14,%rbp,1)
ffff80000010955e:	41 89 c3             	mov    %eax,%r11d
ffff800000109561:	0f 89 0d f4 ff ff    	jns    ffff800000108974 <color_printk+0x1b84>
ffff800000109567:	41 8b 44 2e 04       	mov    0x4(%r14,%rbp,1),%eax
ffff80000010956c:	99                   	cltd
ffff80000010956d:	41 f7 f9             	idiv   %r9d
ffff800000109570:	83 e8 01             	sub    $0x1,%eax
ffff800000109573:	41 0f af c1          	imul   %r9d,%eax
ffff800000109577:	41 89 44 2e 0c       	mov    %eax,0xc(%r14,%rbp,1)
ffff80000010957c:	89 c1                	mov    %eax,%ecx
ffff80000010957e:	e9 f1 f3 ff ff       	jmp    ffff800000108974 <color_printk+0x1b84>
ffff800000109583:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
ffff800000109588:	44 8b 6c 24 08       	mov    0x8(%rsp),%r13d
ffff80000010958d:	49 8d 14 29          	lea    (%r9,%rbp,1),%rdx
ffff800000109591:	48 be 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rsi
ffff800000109598:	ff ff ff 
ffff80000010959b:	48 01 f9             	add    %rdi,%rcx
ffff80000010959e:	48 8d 3c 2e          	lea    (%rsi,%rbp,1),%rdi
ffff8000001095a2:	80 3a 00             	cmpb   $0x0,(%rdx)
ffff8000001095a5:	44 89 fe             	mov    %r15d,%esi
ffff8000001095a8:	41 0f 49 f5          	cmovns %r13d,%esi
ffff8000001095ac:	89 31                	mov    %esi,(%rcx)
ffff8000001095ae:	44 89 fe             	mov    %r15d,%esi
ffff8000001095b1:	f6 02 40             	testb  $0x40,(%rdx)
ffff8000001095b4:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095b8:	89 71 04             	mov    %esi,0x4(%rcx)
ffff8000001095bb:	44 89 fe             	mov    %r15d,%esi
ffff8000001095be:	f6 02 20             	testb  $0x20,(%rdx)
ffff8000001095c1:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095c5:	89 71 08             	mov    %esi,0x8(%rcx)
ffff8000001095c8:	44 89 fe             	mov    %r15d,%esi
ffff8000001095cb:	f6 02 10             	testb  $0x10,(%rdx)
ffff8000001095ce:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095d2:	89 71 0c             	mov    %esi,0xc(%rcx)
ffff8000001095d5:	44 89 fe             	mov    %r15d,%esi
ffff8000001095d8:	f6 02 08             	testb  $0x8,(%rdx)
ffff8000001095db:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095df:	89 71 10             	mov    %esi,0x10(%rcx)
ffff8000001095e2:	44 89 fe             	mov    %r15d,%esi
ffff8000001095e5:	f6 02 04             	testb  $0x4,(%rdx)
ffff8000001095e8:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095ec:	89 71 14             	mov    %esi,0x14(%rcx)
ffff8000001095ef:	44 89 fe             	mov    %r15d,%esi
ffff8000001095f2:	f6 02 02             	testb  $0x2,(%rdx)
ffff8000001095f5:	41 0f 44 f5          	cmove  %r13d,%esi
ffff8000001095f9:	89 71 18             	mov    %esi,0x18(%rcx)
ffff8000001095fc:	f6 02 01             	testb  $0x1,(%rdx)
ffff8000001095ff:	74 1a                	je     ffff80000010961b <color_printk+0x282b>
ffff800000109601:	48 83 c2 01          	add    $0x1,%rdx
ffff800000109605:	44 89 79 1c          	mov    %r15d,0x1c(%rcx)
ffff800000109609:	48 01 c1             	add    %rax,%rcx
ffff80000010960c:	48 39 fa             	cmp    %rdi,%rdx
ffff80000010960f:	75 91                	jne    ffff8000001095a2 <color_printk+0x27b2>
ffff800000109611:	44 89 6c 24 08       	mov    %r13d,0x8(%rsp)
ffff800000109616:	e9 0e ff ff ff       	jmp    ffff800000109529 <color_printk+0x2739>
ffff80000010961b:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010961f:	44 89 69 1c          	mov    %r13d,0x1c(%rcx)
ffff800000109623:	48 01 c1             	add    %rax,%rcx
ffff800000109626:	48 39 fa             	cmp    %rdi,%rdx
ffff800000109629:	0f 85 73 ff ff ff    	jne    ffff8000001095a2 <color_printk+0x27b2>
ffff80000010962f:	eb e0                	jmp    ffff800000109611 <color_printk+0x2821>
