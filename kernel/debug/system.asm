
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 f0 5b 00 00 	lgdt   0x5bf0(%rip)        # ffff800000105c08 <GDT_END>
ffff800000100018:	0f 01 1d f3 6b 00 00 	lidt   0x6bf3(%rip)        # ffff800000106c12 <IDT_END>
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
ffff80000010006b:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff800000100077 <go_to_kernel>
ffff800000100072:	6a 08                	push   $0x8
ffff800000100074:	50                   	push   %rax
ffff800000100075:	48 cb                	lretq

ffff800000100077 <go_to_kernel>:
ffff800000100077:	00 40 10             	add    %al,0x10(%rax)
ffff80000010007a:	00 00                	add    %al,(%rax)
ffff80000010007c:	80 ff ff             	cmp    $0xff,%bh
ffff80000010007f:	90                   	nop
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
ffff800000104004:	49 bb 9c 4c 00 00 00 	movabs $0x4c9c,%r11
ffff80000010400b:	00 00 00 
ffff80000010400e:	41 57                	push   %r15
ffff800000104010:	4c 8d 3d ed ff ff ff 	lea    -0x13(%rip),%r15        # ffff800000104004 <Start_Kernel+0x4>
ffff800000104017:	53                   	push   %rbx
ffff800000104018:	4d 01 df             	add    %r11,%r15
ffff80000010401b:	48 83 ec 08          	sub    $0x8,%rsp
ffff80000010401f:	0f 20 e0             	mov    %cr4,%rax
ffff800000104022:	80 cc 06             	or     $0x6,%ah
ffff800000104025:	0f 22 e0             	mov    %rax,%cr4
ffff800000104028:	48 ba 50 c7 ff ff ff 	movabs $0xffffffffffffc750,%rdx
ffff80000010402f:	ff ff ff 
ffff800000104032:	31 f6                	xor    %esi,%esi
ffff800000104034:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff80000010403b:	00 00 00 
ffff80000010403e:	48 b9 00 00 a0 00 00 	movabs $0xffff800000a00000,%rcx
ffff800000104045:	80 ff ff 
ffff800000104048:	66 41 0f 6f 04 17    	movdqa (%r15,%rdx,1),%xmm0
ffff80000010404e:	4a 89 4c 38 18       	mov    %rcx,0x18(%rax,%r15,1)
ffff800000104053:	48 ba 60 c7 ff ff ff 	movabs $0xffffffffffffc760,%rdx
ffff80000010405a:	ff ff ff 
ffff80000010405d:	48 bb 60 c2 ff ff ff 	movabs $0xffffffffffffc260,%rbx
ffff800000104064:	ff ff ff 
ffff800000104067:	49 8b 14 17          	mov    (%r15,%rdx,1),%rdx
ffff80000010406b:	4c 01 fb             	add    %r15,%rbx
ffff80000010406e:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104073:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
ffff80000010407a:	4f 00 
ffff80000010407c:	41 0f 29 04 07       	movaps %xmm0,(%r15,%rax,1)
ffff800000104081:	49 89 54 07 10       	mov    %rdx,0x10(%r15,%rax,1)
ffff800000104086:	48 b8 29 c6 ff ff ff 	movabs $0xffffffffffffc629,%rax
ffff80000010408d:	ff ff ff 
ffff800000104090:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104094:	31 c0                	xor    %eax,%eax
ffff800000104096:	ff d3                	call   *%rbx
ffff800000104098:	31 f6                	xor    %esi,%esi
ffff80000010409a:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010409f:	48 b8 3a c6 ff ff ff 	movabs $0xffffffffffffc63a,%rax
ffff8000001040a6:	ff ff ff 
ffff8000001040a9:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ad:	31 c0                	xor    %eax,%eax
ffff8000001040af:	ff d3                	call   *%rbx
ffff8000001040b1:	31 f6                	xor    %esi,%esi
ffff8000001040b3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b8:	48 b8 48 c6 ff ff ff 	movabs $0xffffffffffffc648,%rax
ffff8000001040bf:	ff ff ff 
ffff8000001040c2:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040c6:	31 c0                	xor    %eax,%eax
ffff8000001040c8:	ff d3                	call   *%rbx
ffff8000001040ca:	31 f6                	xor    %esi,%esi
ffff8000001040cc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040d1:	48 b8 a0 c6 ff ff ff 	movabs $0xffffffffffffc6a0,%rax
ffff8000001040d8:	ff ff ff 
ffff8000001040db:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040df:	31 c0                	xor    %eax,%eax
ffff8000001040e1:	ff d3                	call   *%rbx
ffff8000001040e3:	31 f6                	xor    %esi,%esi
ffff8000001040e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040ea:	48 b8 d8 c6 ff ff ff 	movabs $0xffffffffffffc6d8,%rax
ffff8000001040f1:	ff ff ff 
ffff8000001040f4:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040f8:	31 c0                	xor    %eax,%eax
ffff8000001040fa:	ff d3                	call   *%rbx
ffff8000001040fc:	eb fe                	jmp    ffff8000001040fc <Start_Kernel+0xfc>
ffff8000001040fe:	66 90                	xchg   %ax,%ax

ffff800000104100 <number>:
ffff800000104100:	f3 0f 1e fa          	endbr64
ffff800000104104:	41 57                	push   %r15
ffff800000104106:	48 89 f0             	mov    %rsi,%rax
ffff800000104109:	41 89 ca             	mov    %ecx,%r10d
ffff80000010410c:	49 bb 9c 4b 00 00 00 	movabs $0x4b9c,%r11
ffff800000104113:	00 00 00 
ffff800000104116:	41 56                	push   %r14
ffff800000104118:	41 55                	push   %r13
ffff80000010411a:	41 54                	push   %r12
ffff80000010411c:	55                   	push   %rbp
ffff80000010411d:	89 d5                	mov    %edx,%ebp
ffff80000010411f:	48 ba 28 c7 ff ff ff 	movabs $0xffffffffffffc728,%rdx
ffff800000104126:	ff ff ff 
ffff800000104129:	53                   	push   %rbx
ffff80000010412a:	48 8d 1d d3 ff ff ff 	lea    -0x2d(%rip),%rbx        # ffff800000104104 <number+0x4>
ffff800000104131:	4c 01 db             	add    %r11,%rbx
ffff800000104134:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff800000104138:	41 f6 c1 40          	test   $0x40,%r9b
ffff80000010413c:	75 0e                	jne    ffff80000010414c <number+0x4c>
ffff80000010413e:	48 ba 00 c7 ff ff ff 	movabs $0xffffffffffffc700,%rdx
ffff800000104145:	ff ff ff 
ffff800000104148:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff80000010414c:	44 89 ce             	mov    %r9d,%esi
ffff80000010414f:	83 e6 10             	and    $0x10,%esi
ffff800000104152:	89 74 24 b0          	mov    %esi,-0x50(%rsp)
ffff800000104156:	0f 84 dc 01 00 00    	je     ffff800000104338 <number+0x238>
ffff80000010415c:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff800000104160:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff800000104166:	bb 20 00 00 00       	mov    $0x20,%ebx
ffff80000010416b:	45 89 cf             	mov    %r9d,%r15d
ffff80000010416e:	41 83 e7 20          	and    $0x20,%r15d
ffff800000104172:	41 f6 c1 02          	test   $0x2,%r9b
ffff800000104176:	74 09                	je     ffff800000104181 <number+0x81>
ffff800000104178:	48 85 c0             	test   %rax,%rax
ffff80000010417b:	0f 88 0f 02 00 00    	js     ffff800000104390 <number+0x290>
ffff800000104181:	41 f6 c1 04          	test   $0x4,%r9b
ffff800000104185:	0f 84 e5 01 00 00    	je     ffff800000104370 <number+0x270>
ffff80000010418b:	ba 2b 00 00 00       	mov    $0x2b,%edx
ffff800000104190:	41 83 ea 01          	sub    $0x1,%r10d
ffff800000104194:	45 85 ff             	test   %r15d,%r15d
ffff800000104197:	74 1a                	je     ffff8000001041b3 <number+0xb3>
ffff800000104199:	83 fd 10             	cmp    $0x10,%ebp
ffff80000010419c:	0f 84 7e 02 00 00    	je     ffff800000104420 <number+0x320>
ffff8000001041a2:	31 c9                	xor    %ecx,%ecx
ffff8000001041a4:	83 fd 08             	cmp    $0x8,%ebp
ffff8000001041a7:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff8000001041ad:	0f 94 c1             	sete   %cl
ffff8000001041b0:	41 29 ca             	sub    %ecx,%r10d
ffff8000001041b3:	48 85 c0             	test   %rax,%rax
ffff8000001041b6:	0f 85 e9 01 00 00    	jne    ffff8000001043a5 <number+0x2a5>
ffff8000001041bc:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
ffff8000001041c1:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff8000001041c6:	31 c9                	xor    %ecx,%ecx
ffff8000001041c8:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001041cd:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
ffff8000001041d2:	44 39 c6             	cmp    %r8d,%esi
ffff8000001041d5:	44 0f 4d c6          	cmovge %esi,%r8d
ffff8000001041d9:	45 29 c2             	sub    %r8d,%r10d
ffff8000001041dc:	45 85 f6             	test   %r14d,%r14d
ffff8000001041df:	75 45                	jne    ffff800000104226 <number+0x126>
ffff8000001041e1:	44 89 d0             	mov    %r10d,%eax
ffff8000001041e4:	48 01 f8             	add    %rdi,%rax
ffff8000001041e7:	45 85 d2             	test   %r10d,%r10d
ffff8000001041ea:	0f 8e 48 02 00 00    	jle    ffff800000104438 <number+0x338>
ffff8000001041f0:	49 89 c1             	mov    %rax,%r9
ffff8000001041f3:	49 29 f9             	sub    %rdi,%r9
ffff8000001041f6:	41 83 e1 01          	and    $0x1,%r9d
ffff8000001041fa:	74 14                	je     ffff800000104210 <number+0x110>
ffff8000001041fc:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104200:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104204:	48 39 c7             	cmp    %rax,%rdi
ffff800000104207:	74 17                	je     ffff800000104220 <number+0x120>
ffff800000104209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104210:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104213:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104217:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff80000010421b:	48 39 c7             	cmp    %rax,%rdi
ffff80000010421e:	75 f0                	jne    ffff800000104210 <number+0x110>
ffff800000104220:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff800000104226:	84 d2                	test   %dl,%dl
ffff800000104228:	74 06                	je     ffff800000104230 <number+0x130>
ffff80000010422a:	88 17                	mov    %dl,(%rdi)
ffff80000010422c:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104230:	45 85 ff             	test   %r15d,%r15d
ffff800000104233:	74 12                	je     ffff800000104247 <number+0x147>
ffff800000104235:	83 fd 08             	cmp    $0x8,%ebp
ffff800000104238:	0f 84 d2 01 00 00    	je     ffff800000104410 <number+0x310>
ffff80000010423e:	83 fd 10             	cmp    $0x10,%ebp
ffff800000104241:	0f 84 b1 01 00 00    	je     ffff8000001043f8 <number+0x2f8>
ffff800000104247:	8b 44 24 b0          	mov    -0x50(%rsp),%eax
ffff80000010424b:	85 c0                	test   %eax,%eax
ffff80000010424d:	75 3d                	jne    ffff80000010428c <number+0x18c>
ffff80000010424f:	44 89 d0             	mov    %r10d,%eax
ffff800000104252:	48 01 f8             	add    %rdi,%rax
ffff800000104255:	45 85 d2             	test   %r10d,%r10d
ffff800000104258:	0f 8e e3 01 00 00    	jle    ffff800000104441 <number+0x341>
ffff80000010425e:	48 89 c2             	mov    %rax,%rdx
ffff800000104261:	48 29 fa             	sub    %rdi,%rdx
ffff800000104264:	83 e2 01             	and    $0x1,%edx
ffff800000104267:	74 0f                	je     ffff800000104278 <number+0x178>
ffff800000104269:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010426d:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff800000104270:	48 39 c7             	cmp    %rax,%rdi
ffff800000104273:	74 11                	je     ffff800000104286 <number+0x186>
ffff800000104275:	0f 1f 00             	nopl   (%rax)
ffff800000104278:	88 1f                	mov    %bl,(%rdi)
ffff80000010427a:	48 83 c7 02          	add    $0x2,%rdi
ffff80000010427e:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff800000104281:	48 39 c7             	cmp    %rax,%rdi
ffff800000104284:	75 f2                	jne    ffff800000104278 <number+0x178>
ffff800000104286:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff80000010428c:	44 39 c6             	cmp    %r8d,%esi
ffff80000010428f:	0f 8d 9b 01 00 00    	jge    ffff800000104430 <number+0x330>
ffff800000104295:	41 29 f0             	sub    %esi,%r8d
ffff800000104298:	41 8d 50 ff          	lea    -0x1(%r8),%edx
ffff80000010429c:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff8000001042a1:	83 e2 01             	and    $0x1,%edx
ffff8000001042a4:	75 12                	jne    ffff8000001042b8 <number+0x1b8>
ffff8000001042a6:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042aa:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff8000001042ae:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042b1:	74 15                	je     ffff8000001042c8 <number+0x1c8>
ffff8000001042b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001042b8:	c6 07 30             	movb   $0x30,(%rdi)
ffff8000001042bb:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001042bf:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff8000001042c3:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042c6:	75 f0                	jne    ffff8000001042b8 <number+0x1b8>
ffff8000001042c8:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
ffff8000001042cd:	48 63 d1             	movslq %ecx,%rdx
ffff8000001042d0:	83 c1 01             	add    $0x1,%ecx
ffff8000001042d3:	48 63 c9             	movslq %ecx,%rcx
ffff8000001042d6:	48 01 d3             	add    %rdx,%rbx
ffff8000001042d9:	48 01 c1             	add    %rax,%rcx
ffff8000001042dc:	48 89 da             	mov    %rbx,%rdx
ffff8000001042df:	90                   	nop
ffff8000001042e0:	0f b6 32             	movzbl (%rdx),%esi
ffff8000001042e3:	48 83 c0 01          	add    $0x1,%rax
ffff8000001042e7:	48 83 ea 01          	sub    $0x1,%rdx
ffff8000001042eb:	40 88 70 ff          	mov    %sil,-0x1(%rax)
ffff8000001042ef:	48 39 c8             	cmp    %rcx,%rax
ffff8000001042f2:	75 ec                	jne    ffff8000001042e0 <number+0x1e0>
ffff8000001042f4:	45 85 d2             	test   %r10d,%r10d
ffff8000001042f7:	7e 2f                	jle    ffff800000104328 <number+0x228>
ffff8000001042f9:	45 89 d2             	mov    %r10d,%r10d
ffff8000001042fc:	4a 8d 04 11          	lea    (%rcx,%r10,1),%rax
ffff800000104300:	41 83 e2 01          	and    $0x1,%r10d
ffff800000104304:	74 12                	je     ffff800000104318 <number+0x218>
ffff800000104306:	48 83 c1 01          	add    $0x1,%rcx
ffff80000010430a:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff80000010430e:	48 39 c1             	cmp    %rax,%rcx
ffff800000104311:	74 15                	je     ffff800000104328 <number+0x228>
ffff800000104313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104318:	c6 01 20             	movb   $0x20,(%rcx)
ffff80000010431b:	48 83 c1 02          	add    $0x2,%rcx
ffff80000010431f:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff800000104323:	48 39 c1             	cmp    %rax,%rcx
ffff800000104326:	75 f0                	jne    ffff800000104318 <number+0x218>
ffff800000104328:	5b                   	pop    %rbx
ffff800000104329:	5d                   	pop    %rbp
ffff80000010432a:	41 5c                	pop    %r12
ffff80000010432c:	41 5d                	pop    %r13
ffff80000010432e:	41 5e                	pop    %r14
ffff800000104330:	41 5f                	pop    %r15
ffff800000104332:	c3                   	ret
ffff800000104333:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104338:	44 89 ca             	mov    %r9d,%edx
ffff80000010433b:	45 89 ce             	mov    %r9d,%r14d
ffff80000010433e:	45 89 cf             	mov    %r9d,%r15d
ffff800000104341:	83 e2 01             	and    $0x1,%edx
ffff800000104344:	41 83 e6 11          	and    $0x11,%r14d
ffff800000104348:	83 fa 01             	cmp    $0x1,%edx
ffff80000010434b:	19 db                	sbb    %ebx,%ebx
ffff80000010434d:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff800000104350:	83 c3 30             	add    $0x30,%ebx
ffff800000104353:	85 d2                	test   %edx,%edx
ffff800000104355:	44 0f 44 f6          	cmove  %esi,%r14d
ffff800000104359:	41 83 e7 20          	and    $0x20,%r15d
ffff80000010435d:	41 f6 c1 02          	test   $0x2,%r9b
ffff800000104361:	0f 85 11 fe ff ff    	jne    ffff800000104178 <number+0x78>
ffff800000104367:	e9 15 fe ff ff       	jmp    ffff800000104181 <number+0x81>
ffff80000010436c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104370:	44 89 ca             	mov    %r9d,%edx
ffff800000104373:	83 e2 08             	and    $0x8,%edx
ffff800000104376:	0f 84 18 fe ff ff    	je     ffff800000104194 <number+0x94>
ffff80000010437c:	ba 20 00 00 00       	mov    $0x20,%edx
ffff800000104381:	e9 0a fe ff ff       	jmp    ffff800000104190 <number+0x90>
ffff800000104386:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010438d:	00 00 00 
ffff800000104390:	48 f7 d8             	neg    %rax
ffff800000104393:	41 83 ea 01          	sub    $0x1,%r10d
ffff800000104397:	ba 2d 00 00 00       	mov    $0x2d,%edx
ffff80000010439c:	45 85 ff             	test   %r15d,%r15d
ffff80000010439f:	0f 85 f4 fd ff ff    	jne    ffff800000104199 <number+0x99>
ffff8000001043a5:	48 8d 74 24 b8       	lea    -0x48(%rsp),%rsi
ffff8000001043aa:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
ffff8000001043af:	4c 63 dd             	movslq %ebp,%r11
ffff8000001043b2:	45 31 ed             	xor    %r13d,%r13d
ffff8000001043b5:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
ffff8000001043ba:	49 89 f1             	mov    %rsi,%r9
ffff8000001043bd:	41 89 d7             	mov    %edx,%r15d
ffff8000001043c0:	31 f6                	xor    %esi,%esi
ffff8000001043c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001043c8:	44 89 ea             	mov    %r13d,%edx
ffff8000001043cb:	89 f1                	mov    %esi,%ecx
ffff8000001043cd:	49 83 c1 01          	add    $0x1,%r9
ffff8000001043d1:	83 c6 01             	add    $0x1,%esi
ffff8000001043d4:	49 f7 f3             	div    %r11
ffff8000001043d7:	48 63 d2             	movslq %edx,%rdx
ffff8000001043da:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
ffff8000001043df:	41 88 51 ff          	mov    %dl,-0x1(%r9)
ffff8000001043e3:	48 85 c0             	test   %rax,%rax
ffff8000001043e6:	75 e0                	jne    ffff8000001043c8 <number+0x2c8>
ffff8000001043e8:	44 89 fa             	mov    %r15d,%edx
ffff8000001043eb:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
ffff8000001043f0:	e9 dd fd ff ff       	jmp    ffff8000001041d2 <number+0xd2>
ffff8000001043f5:	0f 1f 00             	nopl   (%rax)
ffff8000001043f8:	41 0f b6 44 24 21    	movzbl 0x21(%r12),%eax
ffff8000001043fe:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104401:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104405:	88 47 ff             	mov    %al,-0x1(%rdi)
ffff800000104408:	e9 3a fe ff ff       	jmp    ffff800000104247 <number+0x147>
ffff80000010440d:	0f 1f 00             	nopl   (%rax)
ffff800000104410:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104413:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104417:	e9 2b fe ff ff       	jmp    ffff800000104247 <number+0x147>
ffff80000010441c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104420:	41 83 ea 02          	sub    $0x2,%r10d
ffff800000104424:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff80000010442a:	e9 84 fd ff ff       	jmp    ffff8000001041b3 <number+0xb3>
ffff80000010442f:	90                   	nop
ffff800000104430:	48 89 f8             	mov    %rdi,%rax
ffff800000104433:	e9 90 fe ff ff       	jmp    ffff8000001042c8 <number+0x1c8>
ffff800000104438:	41 83 ea 01          	sub    $0x1,%r10d
ffff80000010443c:	e9 e5 fd ff ff       	jmp    ffff800000104226 <number+0x126>
ffff800000104441:	41 83 ea 01          	sub    $0x1,%r10d
ffff800000104445:	e9 42 fe ff ff       	jmp    ffff80000010428c <number+0x18c>
ffff80000010444a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

ffff800000104450 <putchar>:
ffff800000104450:	f3 0f 1e fa          	endbr64
ffff800000104454:	89 f0                	mov    %esi,%eax
ffff800000104456:	4c 8d 15 f7 ff ff ff 	lea    -0x9(%rip),%r10        # ffff800000104454 <putchar+0x4>
ffff80000010445d:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
ffff800000104462:	48 63 d2             	movslq %edx,%rdx
ffff800000104465:	49 bb 4c 48 00 00 00 	movabs $0x484c,%r11
ffff80000010446c:	00 00 00 
ffff80000010446f:	0f af c8             	imul   %eax,%ecx
ffff800000104472:	4d 01 da             	add    %r11,%r10
ffff800000104475:	48 c1 e6 04          	shl    $0x4,%rsi
ffff800000104479:	49 bb 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%r11
ffff800000104480:	ff ff ff 
ffff800000104483:	4d 01 da             	add    %r11,%r10
ffff800000104486:	4c 01 d6             	add    %r10,%rsi
ffff800000104489:	4c 63 d0             	movslq %eax,%r10
ffff80000010448c:	48 63 c1             	movslq %ecx,%rax
ffff80000010448f:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff800000104494:	49 c1 e2 02          	shl    $0x2,%r10
ffff800000104498:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
ffff80000010449c:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
ffff8000001044a0:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
ffff8000001044a4:	ba 00 01 00 00       	mov    $0x100,%edx
ffff8000001044a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001044b0:	0f b6 0e             	movzbl (%rsi),%ecx
ffff8000001044b3:	d1 fa                	sar    $1,%edx
ffff8000001044b5:	85 d1                	test   %edx,%ecx
ffff8000001044b7:	44 89 c1             	mov    %r8d,%ecx
ffff8000001044ba:	41 0f 44 c9          	cmove  %r9d,%ecx
ffff8000001044be:	48 83 c0 04          	add    $0x4,%rax
ffff8000001044c2:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff8000001044c5:	48 39 f8             	cmp    %rdi,%rax
ffff8000001044c8:	75 e6                	jne    ffff8000001044b0 <putchar+0x60>
ffff8000001044ca:	48 83 c6 01          	add    $0x1,%rsi
ffff8000001044ce:	4a 8d 3c 10          	lea    (%rax,%r10,1),%rdi
ffff8000001044d2:	4c 39 de             	cmp    %r11,%rsi
ffff8000001044d5:	75 c9                	jne    ffff8000001044a0 <putchar+0x50>
ffff8000001044d7:	c3                   	ret
ffff8000001044d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001044df:	00 

ffff8000001044e0 <clear_screen>:
ffff8000001044e0:	f3 0f 1e fa          	endbr64
ffff8000001044e4:	49 bb bc 47 00 00 00 	movabs $0x47bc,%r11
ffff8000001044eb:	00 00 00 
ffff8000001044ee:	41 57                	push   %r15
ffff8000001044f0:	41 56                	push   %r14
ffff8000001044f2:	41 55                	push   %r13
ffff8000001044f4:	41 54                	push   %r12
ffff8000001044f6:	55                   	push   %rbp
ffff8000001044f7:	48 bd 20 10 00 00 00 	movabs $0x1020,%rbp
ffff8000001044fe:	00 00 00 
ffff800000104501:	53                   	push   %rbx
ffff800000104502:	48 8d 1d db ff ff ff 	lea    -0x25(%rip),%rbx        # ffff8000001044e4 <clear_screen+0x4>
ffff800000104509:	4c 01 db             	add    %r11,%rbx
ffff80000010450c:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
ffff800000104510:	99                   	cltd
ffff800000104511:	f7 7c 1d 10          	idivl  0x10(%rbp,%rbx,1)
ffff800000104515:	89 c1                	mov    %eax,%ecx
ffff800000104517:	8b 44 1d 04          	mov    0x4(%rbp,%rbx,1),%eax
ffff80000010451b:	99                   	cltd
ffff80000010451c:	f7 7c 1d 14          	idivl  0x14(%rbp,%rbx,1)
ffff800000104520:	85 c0                	test   %eax,%eax
ffff800000104522:	0f 8e d5 00 00 00    	jle    ffff8000001045fd <clear_screen+0x11d>
ffff800000104528:	4c 8b 6c 1d 18       	mov    0x18(%rbp,%rbx,1),%r13
ffff80000010452d:	85 c9                	test   %ecx,%ecx
ffff80000010452f:	0f 8e c8 00 00 00    	jle    ffff8000001045fd <clear_screen+0x11d>
ffff800000104535:	48 ba 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rdx
ffff80000010453c:	ff ff ff 
ffff80000010453f:	41 89 f8             	mov    %edi,%r8d
ffff800000104542:	41 89 f1             	mov    %esi,%r9d
ffff800000104545:	45 31 e4             	xor    %r12d,%r12d
ffff800000104548:	49 bf 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%r15
ffff80000010454f:	ff ff ff 
ffff800000104552:	4c 8d 1c 1a          	lea    (%rdx,%rbx,1),%r11
ffff800000104556:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
ffff80000010455b:	31 d2                	xor    %edx,%edx
ffff80000010455d:	89 c6                	mov    %eax,%esi
ffff80000010455f:	8b 44 1d 14          	mov    0x14(%rbp,%rbx,1),%eax
ffff800000104563:	4c 63 74 1d 00       	movslq 0x0(%rbp,%rbx,1),%r14
ffff800000104568:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
ffff80000010456c:	41 0f af c4          	imul   %r12d,%eax
ffff800000104570:	4c 89 f7             	mov    %r14,%rdi
ffff800000104573:	49 c1 e6 02          	shl    $0x2,%r14
ffff800000104577:	0f af c7             	imul   %edi,%eax
ffff80000010457a:	8b 7c 1d 10          	mov    0x10(%rbp,%rbx,1),%edi
ffff80000010457e:	0f af fa             	imul   %edx,%edi
ffff800000104581:	48 98                	cltq
ffff800000104583:	48 63 ff             	movslq %edi,%rdi
ffff800000104586:	48 8d 44 38 08       	lea    0x8(%rax,%rdi,1),%rax
ffff80000010458b:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
ffff800000104590:	4c 8d 14 87          	lea    (%rdi,%rax,4),%r10
ffff800000104594:	49 8d 3c 1f          	lea    (%r15,%rbx,1),%rdi
ffff800000104598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010459f:	00 
ffff8000001045a0:	49 8d 42 e0          	lea    -0x20(%r10),%rax
ffff8000001045a4:	ba 00 01 00 00       	mov    $0x100,%edx
ffff8000001045a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001045b0:	44 0f b6 2f          	movzbl (%rdi),%r13d
ffff8000001045b4:	d1 fa                	sar    $1,%edx
ffff8000001045b6:	41 85 d5             	test   %edx,%r13d
ffff8000001045b9:	45 89 c5             	mov    %r8d,%r13d
ffff8000001045bc:	45 0f 44 e9          	cmove  %r9d,%r13d
ffff8000001045c0:	48 83 c0 04          	add    $0x4,%rax
ffff8000001045c4:	44 89 68 fc          	mov    %r13d,-0x4(%rax)
ffff8000001045c8:	4c 39 d0             	cmp    %r10,%rax
ffff8000001045cb:	75 e3                	jne    ffff8000001045b0 <clear_screen+0xd0>
ffff8000001045cd:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001045d1:	4e 8d 14 30          	lea    (%rax,%r14,1),%r10
ffff8000001045d5:	4c 39 df             	cmp    %r11,%rdi
ffff8000001045d8:	75 c6                	jne    ffff8000001045a0 <clear_screen+0xc0>
ffff8000001045da:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
ffff8000001045de:	83 c2 01             	add    $0x1,%edx
ffff8000001045e1:	39 d1                	cmp    %edx,%ecx
ffff8000001045e3:	0f 85 76 ff ff ff    	jne    ffff80000010455f <clear_screen+0x7f>
ffff8000001045e9:	41 83 c4 01          	add    $0x1,%r12d
ffff8000001045ed:	4c 8b 6c 24 f8       	mov    -0x8(%rsp),%r13
ffff8000001045f2:	89 f0                	mov    %esi,%eax
ffff8000001045f4:	44 39 e6             	cmp    %r12d,%esi
ffff8000001045f7:	0f 85 59 ff ff ff    	jne    ffff800000104556 <clear_screen+0x76>
ffff8000001045fd:	48 c7 44 1d 08 00 00 	movq   $0x0,0x8(%rbp,%rbx,1)
ffff800000104604:	00 00 
ffff800000104606:	5b                   	pop    %rbx
ffff800000104607:	5d                   	pop    %rbp
ffff800000104608:	41 5c                	pop    %r12
ffff80000010460a:	41 5d                	pop    %r13
ffff80000010460c:	41 5e                	pop    %r14
ffff80000010460e:	41 5f                	pop    %r15
ffff800000104610:	c3                   	ret
ffff800000104611:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
ffff800000104618:	00 00 00 00 
ffff80000010461c:	0f 1f 40 00          	nopl   0x0(%rax)

ffff800000104620 <skip_atoi2>:
ffff800000104620:	f3 0f 1e fa          	endbr64
ffff800000104624:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104627:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010462a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010462d:	80 f9 09             	cmp    $0x9,%cl
ffff800000104630:	77 36                	ja     ffff800000104668 <skip_atoi2+0x48>
ffff800000104632:	48 83 c2 01          	add    $0x1,%rdx
ffff800000104636:	31 c9                	xor    %ecx,%ecx
ffff800000104638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010463f:	00 
ffff800000104640:	83 e8 30             	sub    $0x30,%eax
ffff800000104643:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff800000104646:	48 89 17             	mov    %rdx,(%rdi)
ffff800000104649:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010464d:	0f be c0             	movsbl %al,%eax
ffff800000104650:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000104653:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff800000104657:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010465a:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010465e:	76 e0                	jbe    ffff800000104640 <skip_atoi2+0x20>
ffff800000104660:	89 c8                	mov    %ecx,%eax
ffff800000104662:	c3                   	ret
ffff800000104663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104668:	31 c9                	xor    %ecx,%ecx
ffff80000010466a:	89 c8                	mov    %ecx,%eax
ffff80000010466c:	c3                   	ret
ffff80000010466d:	0f 1f 00             	nopl   (%rax)

ffff800000104670 <skip_atoi>:
ffff800000104670:	f3 0f 1e fa          	endbr64
ffff800000104674:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104677:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010467a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010467d:	80 f9 09             	cmp    $0x9,%cl
ffff800000104680:	77 36                	ja     ffff8000001046b8 <skip_atoi+0x48>
ffff800000104682:	48 83 c2 01          	add    $0x1,%rdx
ffff800000104686:	31 c9                	xor    %ecx,%ecx
ffff800000104688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010468f:	00 
ffff800000104690:	83 e8 30             	sub    $0x30,%eax
ffff800000104693:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff800000104696:	48 89 17             	mov    %rdx,(%rdi)
ffff800000104699:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010469d:	0f be c0             	movsbl %al,%eax
ffff8000001046a0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff8000001046a3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff8000001046a7:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001046aa:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001046ae:	76 e0                	jbe    ffff800000104690 <skip_atoi+0x20>
ffff8000001046b0:	89 c8                	mov    %ecx,%eax
ffff8000001046b2:	c3                   	ret
ffff8000001046b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001046b8:	31 c9                	xor    %ecx,%ecx
ffff8000001046ba:	89 c8                	mov    %ecx,%eax
ffff8000001046bc:	c3                   	ret
ffff8000001046bd:	0f 1f 00             	nopl   (%rax)

ffff8000001046c0 <vsprintf>:
ffff8000001046c0:	f3 0f 1e fa          	endbr64
ffff8000001046c4:	49 bb dc 45 00 00 00 	movabs $0x45dc,%r11
ffff8000001046cb:	00 00 00 
ffff8000001046ce:	41 57                	push   %r15
ffff8000001046d0:	41 56                	push   %r14
ffff8000001046d2:	4c 8d 35 eb ff ff ff 	lea    -0x15(%rip),%r14        # ffff8000001046c4 <vsprintf+0x4>
ffff8000001046d9:	41 55                	push   %r13
ffff8000001046db:	4d 01 de             	add    %r11,%r14
ffff8000001046de:	49 89 fd             	mov    %rdi,%r13
ffff8000001046e1:	41 54                	push   %r12
ffff8000001046e3:	55                   	push   %rbp
ffff8000001046e4:	53                   	push   %rbx
ffff8000001046e5:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001046e9:	0f b6 06             	movzbl (%rsi),%eax
ffff8000001046ec:	84 c0                	test   %al,%al
ffff8000001046ee:	0f 84 57 06 00 00    	je     ffff800000104d4b <vsprintf+0x68b>
ffff8000001046f4:	48 89 f1             	mov    %rsi,%rcx
ffff8000001046f7:	49 89 d4             	mov    %rdx,%r12
ffff8000001046fa:	48 8d 2d a7 0e 00 00 	lea    0xea7(%rip),%rbp        # ffff8000001055a8 <_etext+0x2df>
ffff800000104701:	49 bf 01 00 00 10 01 	movabs $0x400110000001,%r15
ffff800000104708:	40 00 00 
ffff80000010470b:	eb 18                	jmp    ffff800000104725 <vsprintf+0x65>
ffff80000010470d:	0f 1f 00             	nopl   (%rax)
ffff800000104710:	88 07                	mov    %al,(%rdi)
ffff800000104712:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104716:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104719:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010471d:	84 c0                	test   %al,%al
ffff80000010471f:	0f 84 2b 01 00 00    	je     ffff800000104850 <vsprintf+0x190>
ffff800000104725:	3c 25                	cmp    $0x25,%al
ffff800000104727:	75 e7                	jne    ffff800000104710 <vsprintf+0x50>
ffff800000104729:	45 31 c9             	xor    %r9d,%r9d
ffff80000010472c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104730:	0f be 41 01          	movsbl 0x1(%rcx),%eax
ffff800000104734:	48 8d 59 01          	lea    0x1(%rcx),%rbx
ffff800000104738:	8d 50 e0             	lea    -0x20(%rax),%edx
ffff80000010473b:	80 fa 10             	cmp    $0x10,%dl
ffff80000010473e:	77 10                	ja     ffff800000104750 <vsprintf+0x90>
ffff800000104740:	0f b6 d2             	movzbl %dl,%edx
ffff800000104743:	48 8b 74 d5 00       	mov    0x0(%rbp,%rdx,8),%rsi
ffff800000104748:	48 01 ee             	add    %rbp,%rsi
ffff80000010474b:	3e ff e6             	notrack jmp *%rsi
ffff80000010474e:	66 90                	xchg   %ax,%ax
ffff800000104750:	8d 50 d0             	lea    -0x30(%rax),%edx
ffff800000104753:	80 fa 09             	cmp    $0x9,%dl
ffff800000104756:	0f 86 44 01 00 00    	jbe    ffff8000001048a0 <vsprintf+0x1e0>
ffff80000010475c:	ba ff ff ff ff       	mov    $0xffffffff,%edx
ffff800000104761:	3c 2a                	cmp    $0x2a,%al
ffff800000104763:	0f 84 67 01 00 00    	je     ffff8000001048d0 <vsprintf+0x210>
ffff800000104769:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff80000010476f:	3c 2e                	cmp    $0x2e,%al
ffff800000104771:	0f 84 f9 00 00 00    	je     ffff800000104870 <vsprintf+0x1b0>
ffff800000104777:	8d 48 b4             	lea    -0x4c(%rax),%ecx
ffff80000010477a:	80 f9 2e             	cmp    $0x2e,%cl
ffff80000010477d:	0f 87 7d 00 00 00    	ja     ffff800000104800 <vsprintf+0x140>
ffff800000104783:	49 0f a3 cf          	bt     %rcx,%r15
ffff800000104787:	73 77                	jae    ffff800000104800 <vsprintf+0x140>
ffff800000104789:	0f b6 73 01          	movzbl 0x1(%rbx),%esi
ffff80000010478d:	4c 8d 53 01          	lea    0x1(%rbx),%r10
ffff800000104791:	8d 4e db             	lea    -0x25(%rsi),%ecx
ffff800000104794:	80 f9 53             	cmp    $0x53,%cl
ffff800000104797:	0f 87 86 00 00 00    	ja     ffff800000104823 <vsprintf+0x163>
ffff80000010479d:	0f b6 c9             	movzbl %cl,%ecx
ffff8000001047a0:	48 8d 35 89 0e 00 00 	lea    0xe89(%rip),%rsi        # ffff800000105630 <_etext+0x367>
ffff8000001047a7:	48 03 34 ce          	add    (%rsi,%rcx,8),%rsi
ffff8000001047ab:	3e ff e6             	notrack jmp *%rsi
ffff8000001047ae:	66 90                	xchg   %ax,%ax
ffff8000001047b0:	41 83 c9 01          	or     $0x1,%r9d
ffff8000001047b4:	48 89 d9             	mov    %rbx,%rcx
ffff8000001047b7:	e9 74 ff ff ff       	jmp    ffff800000104730 <vsprintf+0x70>
ffff8000001047bc:	0f 1f 40 00          	nopl   0x0(%rax)
ffff8000001047c0:	41 83 c9 10          	or     $0x10,%r9d
ffff8000001047c4:	eb ee                	jmp    ffff8000001047b4 <vsprintf+0xf4>
ffff8000001047c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001047cd:	00 00 00 
ffff8000001047d0:	41 83 c9 04          	or     $0x4,%r9d
ffff8000001047d4:	eb de                	jmp    ffff8000001047b4 <vsprintf+0xf4>
ffff8000001047d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001047dd:	00 00 00 
ffff8000001047e0:	41 83 c9 20          	or     $0x20,%r9d
ffff8000001047e4:	eb ce                	jmp    ffff8000001047b4 <vsprintf+0xf4>
ffff8000001047e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001047ed:	00 00 00 
ffff8000001047f0:	41 83 c9 08          	or     $0x8,%r9d
ffff8000001047f4:	eb be                	jmp    ffff8000001047b4 <vsprintf+0xf4>
ffff8000001047f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001047fd:	00 00 00 
ffff800000104800:	83 e8 25             	sub    $0x25,%eax
ffff800000104803:	3c 53                	cmp    $0x53,%al
ffff800000104805:	77 19                	ja     ffff800000104820 <vsprintf+0x160>
ffff800000104807:	0f b6 c0             	movzbl %al,%eax
ffff80000010480a:	48 8d 0d bf 10 00 00 	lea    0x10bf(%rip),%rcx        # ffff8000001058d0 <_etext+0x607>
ffff800000104811:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
ffff800000104815:	3e ff e1             	notrack jmp *%rcx
ffff800000104818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010481f:	00 
ffff800000104820:	49 89 da             	mov    %rbx,%r10
ffff800000104823:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000104826:	41 0f b6 02          	movzbl (%r10),%eax
ffff80000010482a:	84 c0                	test   %al,%al
ffff80000010482c:	0f 84 e2 03 00 00    	je     ffff800000104c14 <vsprintf+0x554>
ffff800000104832:	88 47 01             	mov    %al,0x1(%rdi)
ffff800000104835:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff80000010483a:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff80000010483e:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104842:	84 c0                	test   %al,%al
ffff800000104844:	0f 85 db fe ff ff    	jne    ffff800000104725 <vsprintf+0x65>
ffff80000010484a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104850:	89 f8                	mov    %edi,%eax
ffff800000104852:	44 29 e8             	sub    %r13d,%eax
ffff800000104855:	c6 07 00             	movb   $0x0,(%rdi)
ffff800000104858:	48 83 c4 18          	add    $0x18,%rsp
ffff80000010485c:	5b                   	pop    %rbx
ffff80000010485d:	5d                   	pop    %rbp
ffff80000010485e:	41 5c                	pop    %r12
ffff800000104860:	41 5d                	pop    %r13
ffff800000104862:	41 5e                	pop    %r14
ffff800000104864:	41 5f                	pop    %r15
ffff800000104866:	c3                   	ret
ffff800000104867:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff80000010486e:	00 00 
ffff800000104870:	0f be 43 01          	movsbl 0x1(%rbx),%eax
ffff800000104874:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
ffff800000104878:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010487b:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010487f:	0f 86 b3 02 00 00    	jbe    ffff800000104b38 <vsprintf+0x478>
ffff800000104885:	3c 2a                	cmp    $0x2a,%al
ffff800000104887:	0f 84 e3 02 00 00    	je     ffff800000104b70 <vsprintf+0x4b0>
ffff80000010488d:	48 89 cb             	mov    %rcx,%rbx
ffff800000104890:	45 31 c0             	xor    %r8d,%r8d
ffff800000104893:	e9 df fe ff ff       	jmp    ffff800000104777 <vsprintf+0xb7>
ffff800000104898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010489f:	00 
ffff8000001048a0:	31 d2                	xor    %edx,%edx
ffff8000001048a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001048a8:	83 e8 30             	sub    $0x30,%eax
ffff8000001048ab:	48 83 c3 01          	add    $0x1,%rbx
ffff8000001048af:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
ffff8000001048b2:	0f be c0             	movsbl %al,%eax
ffff8000001048b5:	8d 14 50             	lea    (%rax,%rdx,2),%edx
ffff8000001048b8:	0f be 03             	movsbl (%rbx),%eax
ffff8000001048bb:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff8000001048be:	80 f9 09             	cmp    $0x9,%cl
ffff8000001048c1:	76 e5                	jbe    ffff8000001048a8 <vsprintf+0x1e8>
ffff8000001048c3:	e9 a1 fe ff ff       	jmp    ffff800000104769 <vsprintf+0xa9>
ffff8000001048c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001048cf:	00 
ffff8000001048d0:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001048d4:	48 8d 59 02          	lea    0x2(%rcx),%rbx
ffff8000001048d8:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001048db:	77 23                	ja     ffff800000104900 <vsprintf+0x240>
ffff8000001048dd:	89 c2                	mov    %eax,%edx
ffff8000001048df:	83 c0 08             	add    $0x8,%eax
ffff8000001048e2:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff8000001048e7:	41 89 04 24          	mov    %eax,(%r12)
ffff8000001048eb:	8b 12                	mov    (%rdx),%edx
ffff8000001048ed:	85 d2                	test   %edx,%edx
ffff8000001048ef:	79 06                	jns    ffff8000001048f7 <vsprintf+0x237>
ffff8000001048f1:	f7 da                	neg    %edx
ffff8000001048f3:	41 83 c9 10          	or     $0x10,%r9d
ffff8000001048f7:	0f be 41 02          	movsbl 0x2(%rcx),%eax
ffff8000001048fb:	e9 69 fe ff ff       	jmp    ffff800000104769 <vsprintf+0xa9>
ffff800000104900:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000104905:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104909:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010490e:	eb db                	jmp    ffff8000001048eb <vsprintf+0x22b>
ffff800000104910:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104914:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104918:	83 f8 6c             	cmp    $0x6c,%eax
ffff80000010491b:	0f 84 07 04 00 00    	je     ffff800000104d28 <vsprintf+0x668>
ffff800000104921:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104924:	0f 87 86 02 00 00    	ja     ffff800000104bb0 <vsprintf+0x4f0>
ffff80000010492a:	89 c8                	mov    %ecx,%eax
ffff80000010492c:	83 c1 08             	add    $0x8,%ecx
ffff80000010492f:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104934:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104938:	89 d1                	mov    %edx,%ecx
ffff80000010493a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff80000010493f:	8b 30                	mov    (%rax),%esi
ffff800000104941:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104946:	eb 36                	jmp    ffff80000010497e <vsprintf+0x2be>
ffff800000104948:	41 83 c9 02          	or     $0x2,%r9d
ffff80000010494c:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104950:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104953:	0f 84 8f 03 00 00    	je     ffff800000104ce8 <vsprintf+0x628>
ffff800000104959:	83 f9 2f             	cmp    $0x2f,%ecx
ffff80000010495c:	0f 87 66 02 00 00    	ja     ffff800000104bc8 <vsprintf+0x508>
ffff800000104962:	89 c8                	mov    %ecx,%eax
ffff800000104964:	83 c1 08             	add    $0x8,%ecx
ffff800000104967:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff80000010496c:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104970:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104975:	8b 30                	mov    (%rax),%esi
ffff800000104977:	89 d1                	mov    %edx,%ecx
ffff800000104979:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010497e:	48 b8 60 b4 ff ff ff 	movabs $0xffffffffffffb460,%rax
ffff800000104985:	ff ff ff 
ffff800000104988:	4c 01 f0             	add    %r14,%rax
ffff80000010498b:	ff d0                	call   *%rax
ffff80000010498d:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
ffff800000104992:	48 89 c7             	mov    %rax,%rdi
ffff800000104995:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104999:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff80000010499e:	e9 7a fd ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff8000001049a3:	49 89 da             	mov    %rbx,%r10
ffff8000001049a6:	c6 07 25             	movb   $0x25,(%rdi)
ffff8000001049a9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff8000001049ad:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff8000001049b2:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001049b6:	e9 62 fd ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff8000001049bb:	49 89 da             	mov    %rbx,%r10
ffff8000001049be:	41 83 e1 10          	and    $0x10,%r9d
ffff8000001049c2:	0f 84 63 02 00 00    	je     ffff800000104c2b <vsprintf+0x56b>
ffff8000001049c8:	41 8b 04 24          	mov    (%r12),%eax
ffff8000001049cc:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001049cf:	0f 86 2c 02 00 00    	jbe    ffff800000104c01 <vsprintf+0x541>
ffff8000001049d5:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff8000001049da:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff8000001049de:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff8000001049e3:	8b 01                	mov    (%rcx),%eax
ffff8000001049e5:	48 8d 77 01          	lea    0x1(%rdi),%rsi
ffff8000001049e9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff8000001049ed:	88 07                	mov    %al,(%rdi)
ffff8000001049ef:	89 d0                	mov    %edx,%eax
ffff8000001049f1:	48 01 c7             	add    %rax,%rdi
ffff8000001049f4:	83 fa 01             	cmp    $0x1,%edx
ffff8000001049f7:	0f 8e dd 04 00 00    	jle    ffff800000104eda <vsprintf+0x81a>
ffff8000001049fd:	48 89 f8             	mov    %rdi,%rax
ffff800000104a00:	48 29 f0             	sub    %rsi,%rax
ffff800000104a03:	a8 01                	test   $0x1,%al
ffff800000104a05:	74 11                	je     ffff800000104a18 <vsprintf+0x358>
ffff800000104a07:	48 83 c6 01          	add    $0x1,%rsi
ffff800000104a0b:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a0f:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a12:	74 85                	je     ffff800000104999 <vsprintf+0x2d9>
ffff800000104a14:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104a18:	c6 06 20             	movb   $0x20,(%rsi)
ffff800000104a1b:	48 83 c6 02          	add    $0x2,%rsi
ffff800000104a1f:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a23:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a26:	75 f0                	jne    ffff800000104a18 <vsprintf+0x358>
ffff800000104a28:	e9 6c ff ff ff       	jmp    ffff800000104999 <vsprintf+0x2d9>
ffff800000104a2d:	49 89 da             	mov    %rbx,%r10
ffff800000104a30:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104a34:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a37:	0f 87 b1 01 00 00    	ja     ffff800000104bee <vsprintf+0x52e>
ffff800000104a3d:	89 c1                	mov    %eax,%ecx
ffff800000104a3f:	83 c0 08             	add    $0x8,%eax
ffff800000104a42:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104a47:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104a4b:	4c 8b 19             	mov    (%rcx),%r11
ffff800000104a4e:	41 80 3b 00          	cmpb   $0x0,(%r11)
ffff800000104a52:	0f 84 97 04 00 00    	je     ffff800000104eef <vsprintf+0x82f>
ffff800000104a58:	4c 89 d8             	mov    %r11,%rax
ffff800000104a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104a60:	48 83 c0 01          	add    $0x1,%rax
ffff800000104a64:	80 38 00             	cmpb   $0x0,(%rax)
ffff800000104a67:	75 f7                	jne    ffff800000104a60 <vsprintf+0x3a0>
ffff800000104a69:	89 c6                	mov    %eax,%esi
ffff800000104a6b:	44 29 de             	sub    %r11d,%esi
ffff800000104a6e:	44 39 c6             	cmp    %r8d,%esi
ffff800000104a71:	44 89 c0             	mov    %r8d,%eax
ffff800000104a74:	0f 4e c6             	cmovle %esi,%eax
ffff800000104a77:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff800000104a7b:	0f 45 f0             	cmovne %eax,%esi
ffff800000104a7e:	41 83 e1 10          	and    $0x10,%r9d
ffff800000104a82:	0f 84 7c 03 00 00    	je     ffff800000104e04 <vsprintf+0x744>
ffff800000104a88:	85 f6                	test   %esi,%esi
ffff800000104a8a:	0f 8e 57 04 00 00    	jle    ffff800000104ee7 <vsprintf+0x827>
ffff800000104a90:	4c 63 c6             	movslq %esi,%r8
ffff800000104a93:	31 c0                	xor    %eax,%eax
ffff800000104a95:	0f 1f 00             	nopl   (%rax)
ffff800000104a98:	41 0f b6 0c 03       	movzbl (%r11,%rax,1),%ecx
ffff800000104a9d:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
ffff800000104aa0:	48 83 c0 01          	add    $0x1,%rax
ffff800000104aa4:	49 39 c0             	cmp    %rax,%r8
ffff800000104aa7:	75 ef                	jne    ffff800000104a98 <vsprintf+0x3d8>
ffff800000104aa9:	41 89 f0             	mov    %esi,%r8d
ffff800000104aac:	49 01 f8             	add    %rdi,%r8
ffff800000104aaf:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104ab3:	39 f2                	cmp    %esi,%edx
ffff800000104ab5:	0f 8e 12 04 00 00    	jle    ffff800000104ecd <vsprintf+0x80d>
ffff800000104abb:	29 f2                	sub    %esi,%edx
ffff800000104abd:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104ac0:	49 8d 7c 00 01       	lea    0x1(%r8,%rax,1),%rdi
ffff800000104ac5:	a8 01                	test   $0x1,%al
ffff800000104ac7:	75 17                	jne    ffff800000104ae0 <vsprintf+0x420>
ffff800000104ac9:	49 83 c0 01          	add    $0x1,%r8
ffff800000104acd:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104ad2:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104ad5:	0f 84 be fe ff ff    	je     ffff800000104999 <vsprintf+0x2d9>
ffff800000104adb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104ae0:	41 c6 00 20          	movb   $0x20,(%r8)
ffff800000104ae4:	49 83 c0 02          	add    $0x2,%r8
ffff800000104ae8:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104aed:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104af0:	75 ee                	jne    ffff800000104ae0 <vsprintf+0x420>
ffff800000104af2:	e9 a2 fe ff ff       	jmp    ffff800000104999 <vsprintf+0x2d9>
ffff800000104af7:	49 89 da             	mov    %rbx,%r10
ffff800000104afa:	83 fa ff             	cmp    $0xffffffff,%edx
ffff800000104afd:	0f 84 1a 01 00 00    	je     ffff800000104c1d <vsprintf+0x55d>
ffff800000104b03:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104b07:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b0a:	0f 87 cb 00 00 00    	ja     ffff800000104bdb <vsprintf+0x51b>
ffff800000104b10:	89 c1                	mov    %eax,%ecx
ffff800000104b12:	83 c0 08             	add    $0x8,%eax
ffff800000104b15:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104b1a:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104b1e:	48 8b 31             	mov    (%rcx),%rsi
ffff800000104b21:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104b26:	89 d1                	mov    %edx,%ecx
ffff800000104b28:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104b2d:	e9 4c fe ff ff       	jmp    ffff80000010497e <vsprintf+0x2be>
ffff800000104b32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104b38:	45 31 c0             	xor    %r8d,%r8d
ffff800000104b3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104b40:	83 e8 30             	sub    $0x30,%eax
ffff800000104b43:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
ffff800000104b47:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104b4b:	0f be c0             	movsbl %al,%eax
ffff800000104b4e:	44 8d 04 70          	lea    (%rax,%rsi,2),%r8d
ffff800000104b52:	0f be 01             	movsbl (%rcx),%eax
ffff800000104b55:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff800000104b58:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000104b5c:	76 e2                	jbe    ffff800000104b40 <vsprintf+0x480>
ffff800000104b5e:	31 f6                	xor    %esi,%esi
ffff800000104b60:	45 85 c0             	test   %r8d,%r8d
ffff800000104b63:	48 89 cb             	mov    %rcx,%rbx
ffff800000104b66:	44 0f 48 c6          	cmovs  %esi,%r8d
ffff800000104b6a:	e9 08 fc ff ff       	jmp    ffff800000104777 <vsprintf+0xb7>
ffff800000104b6f:	90                   	nop
ffff800000104b70:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104b74:	48 8d 73 02          	lea    0x2(%rbx),%rsi
ffff800000104b78:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b7b:	0f 87 d1 01 00 00    	ja     ffff800000104d52 <vsprintf+0x692>
ffff800000104b81:	89 c1                	mov    %eax,%ecx
ffff800000104b83:	83 c0 08             	add    $0x8,%eax
ffff800000104b86:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104b8b:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104b8f:	44 8b 01             	mov    (%rcx),%r8d
ffff800000104b92:	31 c0                	xor    %eax,%eax
ffff800000104b94:	45 85 c0             	test   %r8d,%r8d
ffff800000104b97:	44 0f 48 c0          	cmovs  %eax,%r8d
ffff800000104b9b:	0f be 43 02          	movsbl 0x2(%rbx),%eax
ffff800000104b9f:	48 89 f3             	mov    %rsi,%rbx
ffff800000104ba2:	e9 d0 fb ff ff       	jmp    ffff800000104777 <vsprintf+0xb7>
ffff800000104ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff800000104bae:	00 00 
ffff800000104bb0:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104bb5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104bb9:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104bbe:	e9 75 fd ff ff       	jmp    ffff800000104938 <vsprintf+0x278>
ffff800000104bc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104bc8:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104bcd:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104bd1:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104bd6:	e9 95 fd ff ff       	jmp    ffff800000104970 <vsprintf+0x2b0>
ffff800000104bdb:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104be0:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104be4:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104be9:	e9 30 ff ff ff       	jmp    ffff800000104b1e <vsprintf+0x45e>
ffff800000104bee:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104bf3:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104bf7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104bfc:	e9 4a fe ff ff       	jmp    ffff800000104a4b <vsprintf+0x38b>
ffff800000104c01:	89 c1                	mov    %eax,%ecx
ffff800000104c03:	83 c0 08             	add    $0x8,%eax
ffff800000104c06:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104c0b:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104c0f:	e9 cf fd ff ff       	jmp    ffff8000001049e3 <vsprintf+0x323>
ffff800000104c14:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104c18:	e9 33 fc ff ff       	jmp    ffff800000104850 <vsprintf+0x190>
ffff800000104c1d:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104c21:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104c26:	e9 d8 fe ff ff       	jmp    ffff800000104b03 <vsprintf+0x443>
ffff800000104c2b:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104c2e:	48 89 c1             	mov    %rax,%rcx
ffff800000104c31:	48 01 f8             	add    %rdi,%rax
ffff800000104c34:	83 fa 01             	cmp    $0x1,%edx
ffff800000104c37:	0f 8e 81 02 00 00    	jle    ffff800000104ebe <vsprintf+0x7fe>
ffff800000104c3d:	48 89 c2             	mov    %rax,%rdx
ffff800000104c40:	48 29 fa             	sub    %rdi,%rdx
ffff800000104c43:	83 e2 01             	and    $0x1,%edx
ffff800000104c46:	74 10                	je     ffff800000104c58 <vsprintf+0x598>
ffff800000104c48:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104c4c:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104c50:	48 39 f8             	cmp    %rdi,%rax
ffff800000104c53:	74 13                	je     ffff800000104c68 <vsprintf+0x5a8>
ffff800000104c55:	0f 1f 00             	nopl   (%rax)
ffff800000104c58:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104c5b:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104c5f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104c63:	48 39 f8             	cmp    %rdi,%rax
ffff800000104c66:	75 f0                	jne    ffff800000104c58 <vsprintf+0x598>
ffff800000104c68:	31 d2                	xor    %edx,%edx
ffff800000104c6a:	e9 59 fd ff ff       	jmp    ffff8000001049c8 <vsprintf+0x308>
ffff800000104c6f:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104c73:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104c76:	0f 84 f9 00 00 00    	je     ffff800000104d75 <vsprintf+0x6b5>
ffff800000104c7c:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104c7f:	0f 87 59 01 00 00    	ja     ffff800000104dde <vsprintf+0x71e>
ffff800000104c85:	89 d0                	mov    %edx,%eax
ffff800000104c87:	83 c2 08             	add    $0x8,%edx
ffff800000104c8a:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104c8f:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104c93:	48 8b 00             	mov    (%rax),%rax
ffff800000104c96:	48 89 fa             	mov    %rdi,%rdx
ffff800000104c99:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104c9d:	4c 29 ea             	sub    %r13,%rdx
ffff800000104ca0:	89 10                	mov    %edx,(%rax)
ffff800000104ca2:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104ca7:	e9 71 fa ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff800000104cac:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104cb0:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104cb3:	0f 84 ec 00 00 00    	je     ffff800000104da5 <vsprintf+0x6e5>
ffff800000104cb9:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104cbc:	0f 87 2f 01 00 00    	ja     ffff800000104df1 <vsprintf+0x731>
ffff800000104cc2:	89 c8                	mov    %ecx,%eax
ffff800000104cc4:	83 c1 08             	add    $0x8,%ecx
ffff800000104cc7:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104ccc:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104cd0:	89 d1                	mov    %edx,%ecx
ffff800000104cd2:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104cd7:	8b 30                	mov    (%rax),%esi
ffff800000104cd9:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104cde:	e9 9b fc ff ff       	jmp    ffff80000010497e <vsprintf+0x2be>
ffff800000104ce3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104ce8:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104ceb:	77 78                	ja     ffff800000104d65 <vsprintf+0x6a5>
ffff800000104ced:	89 c8                	mov    %ecx,%eax
ffff800000104cef:	83 c1 08             	add    $0x8,%ecx
ffff800000104cf2:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104cf7:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104cfb:	48 8b 30             	mov    (%rax),%rsi
ffff800000104cfe:	89 d1                	mov    %edx,%ecx
ffff800000104d00:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104d05:	48 b8 60 b4 ff ff ff 	movabs $0xffffffffffffb460,%rax
ffff800000104d0c:	ff ff ff 
ffff800000104d0f:	4c 01 f0             	add    %r14,%rax
ffff800000104d12:	ff d0                	call   *%rax
ffff800000104d14:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104d18:	48 89 c7             	mov    %rax,%rdi
ffff800000104d1b:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104d1f:	e9 f9 f9 ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff800000104d24:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104d28:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d2b:	0f 87 9a 00 00 00    	ja     ffff800000104dcb <vsprintf+0x70b>
ffff800000104d31:	89 c8                	mov    %ecx,%eax
ffff800000104d33:	83 c1 08             	add    $0x8,%ecx
ffff800000104d36:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d3b:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d3f:	89 d1                	mov    %edx,%ecx
ffff800000104d41:	48 8b 30             	mov    (%rax),%rsi
ffff800000104d44:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104d49:	eb ba                	jmp    ffff800000104d05 <vsprintf+0x645>
ffff800000104d4b:	31 c0                	xor    %eax,%eax
ffff800000104d4d:	e9 03 fb ff ff       	jmp    ffff800000104855 <vsprintf+0x195>
ffff800000104d52:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104d57:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104d5b:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104d60:	e9 2a fe ff ff       	jmp    ffff800000104b8f <vsprintf+0x4cf>
ffff800000104d65:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104d6a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104d6e:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104d73:	eb 86                	jmp    ffff800000104cfb <vsprintf+0x63b>
ffff800000104d75:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104d78:	0f 87 ca 00 00 00    	ja     ffff800000104e48 <vsprintf+0x788>
ffff800000104d7e:	89 d0                	mov    %edx,%eax
ffff800000104d80:	83 c2 08             	add    $0x8,%edx
ffff800000104d83:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d88:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104d8c:	48 8b 00             	mov    (%rax),%rax
ffff800000104d8f:	48 89 fa             	mov    %rdi,%rdx
ffff800000104d92:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104d96:	4c 29 ea             	sub    %r13,%rdx
ffff800000104d99:	48 89 10             	mov    %rdx,(%rax)
ffff800000104d9c:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104da0:	e9 78 f9 ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff800000104da5:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104da8:	0f 86 ad 00 00 00    	jbe    ffff800000104e5b <vsprintf+0x79b>
ffff800000104dae:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104db3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104db7:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104dbc:	89 d1                	mov    %edx,%ecx
ffff800000104dbe:	48 8b 30             	mov    (%rax),%rsi
ffff800000104dc1:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104dc6:	e9 3a ff ff ff       	jmp    ffff800000104d05 <vsprintf+0x645>
ffff800000104dcb:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104dd0:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104dd4:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104dd9:	e9 61 ff ff ff       	jmp    ffff800000104d3f <vsprintf+0x67f>
ffff800000104dde:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104de3:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104de7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104dec:	e9 a2 fe ff ff       	jmp    ffff800000104c93 <vsprintf+0x5d3>
ffff800000104df1:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104df6:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104dfa:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104dff:	e9 cc fe ff ff       	jmp    ffff800000104cd0 <vsprintf+0x610>
ffff800000104e04:	39 f2                	cmp    %esi,%edx
ffff800000104e06:	0f 8e b9 00 00 00    	jle    ffff800000104ec5 <vsprintf+0x805>
ffff800000104e0c:	83 ea 01             	sub    $0x1,%edx
ffff800000104e0f:	29 f2                	sub    %esi,%edx
ffff800000104e11:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff800000104e16:	83 e2 01             	and    $0x1,%edx
ffff800000104e19:	75 15                	jne    ffff800000104e30 <vsprintf+0x770>
ffff800000104e1b:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104e1f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e23:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e26:	74 18                	je     ffff800000104e40 <vsprintf+0x780>
ffff800000104e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff800000104e2f:	00 
ffff800000104e30:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104e33:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104e37:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e3b:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e3e:	75 f0                	jne    ffff800000104e30 <vsprintf+0x770>
ffff800000104e40:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff800000104e43:	e9 40 fc ff ff       	jmp    ffff800000104a88 <vsprintf+0x3c8>
ffff800000104e48:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e4d:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104e51:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104e56:	e9 31 ff ff ff       	jmp    ffff800000104d8c <vsprintf+0x6cc>
ffff800000104e5b:	89 c8                	mov    %ecx,%eax
ffff800000104e5d:	83 c1 08             	add    $0x8,%ecx
ffff800000104e60:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104e65:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104e69:	e9 4e ff ff ff       	jmp    ffff800000104dbc <vsprintf+0x6fc>
ffff800000104e6e:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104e72:	41 83 c9 02          	or     $0x2,%r9d
ffff800000104e76:	49 89 da             	mov    %rbx,%r10
ffff800000104e79:	e9 db fa ff ff       	jmp    ffff800000104959 <vsprintf+0x299>
ffff800000104e7e:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104e82:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104e86:	49 89 da             	mov    %rbx,%r10
ffff800000104e89:	e9 93 fa ff ff       	jmp    ffff800000104921 <vsprintf+0x261>
ffff800000104e8e:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104e92:	49 89 da             	mov    %rbx,%r10
ffff800000104e95:	e9 bf fa ff ff       	jmp    ffff800000104959 <vsprintf+0x299>
ffff800000104e9a:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104e9e:	49 89 da             	mov    %rbx,%r10
ffff800000104ea1:	e9 13 fe ff ff       	jmp    ffff800000104cb9 <vsprintf+0x5f9>
ffff800000104ea6:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104eaa:	49 89 da             	mov    %rbx,%r10
ffff800000104ead:	e9 ca fd ff ff       	jmp    ffff800000104c7c <vsprintf+0x5bc>
ffff800000104eb2:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104eb6:	49 89 da             	mov    %rbx,%r10
ffff800000104eb9:	e9 63 fa ff ff       	jmp    ffff800000104921 <vsprintf+0x261>
ffff800000104ebe:	89 ca                	mov    %ecx,%edx
ffff800000104ec0:	e9 03 fb ff ff       	jmp    ffff8000001049c8 <vsprintf+0x308>
ffff800000104ec5:	83 ea 01             	sub    $0x1,%edx
ffff800000104ec8:	e9 bb fb ff ff       	jmp    ffff800000104a88 <vsprintf+0x3c8>
ffff800000104ecd:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104ed2:	4c 89 c7             	mov    %r8,%rdi
ffff800000104ed5:	e9 43 f8 ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff800000104eda:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104edf:	48 89 f7             	mov    %rsi,%rdi
ffff800000104ee2:	e9 36 f8 ff ff       	jmp    ffff80000010471d <vsprintf+0x5d>
ffff800000104ee7:	49 89 f8             	mov    %rdi,%r8
ffff800000104eea:	e9 c0 fb ff ff       	jmp    ffff800000104aaf <vsprintf+0x3ef>
ffff800000104eef:	31 f6                	xor    %esi,%esi
ffff800000104ef1:	e9 78 fb ff ff       	jmp    ffff800000104a6e <vsprintf+0x3ae>
ffff800000104ef6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff800000104efd:	00 00 00 

ffff800000104f00 <color_printk>:
ffff800000104f00:	f3 0f 1e fa          	endbr64
ffff800000104f04:	49 bb 9c 3d 00 00 00 	movabs $0x3d9c,%r11
ffff800000104f0b:	00 00 00 
ffff800000104f0e:	41 57                	push   %r15
ffff800000104f10:	41 56                	push   %r14
ffff800000104f12:	41 55                	push   %r13
ffff800000104f14:	41 54                	push   %r12
ffff800000104f16:	4c 8d 25 e7 ff ff ff 	lea    -0x19(%rip),%r12        # ffff800000104f04 <color_printk+0x4>
ffff800000104f1d:	55                   	push   %rbp
ffff800000104f1e:	4d 01 dc             	add    %r11,%r12
ffff800000104f21:	89 f5                	mov    %esi,%ebp
ffff800000104f23:	48 89 d6             	mov    %rdx,%rsi
ffff800000104f26:	53                   	push   %rbx
ffff800000104f27:	89 fb                	mov    %edi,%ebx
ffff800000104f29:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104f30:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
ffff800000104f35:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
ffff800000104f3a:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
ffff800000104f3f:	84 c0                	test   %al,%al
ffff800000104f41:	74 3d                	je     ffff800000104f80 <color_printk+0x80>
ffff800000104f43:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
ffff800000104f48:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
ffff800000104f4f:	00 
ffff800000104f50:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
ffff800000104f57:	00 
ffff800000104f58:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
ffff800000104f5f:	00 
ffff800000104f60:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
ffff800000104f67:	00 
ffff800000104f68:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
ffff800000104f6f:	00 
ffff800000104f70:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
ffff800000104f77:	00 
ffff800000104f78:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
ffff800000104f7f:	00 
ffff800000104f80:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
ffff800000104f87:	00 
ffff800000104f88:	c7 44 24 28 18 00 00 	movl   $0x18,0x28(%rsp)
ffff800000104f8f:	00 
ffff800000104f90:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
ffff800000104f95:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
ffff800000104f9a:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
ffff800000104f9f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
ffff800000104fa4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104fab:	00 00 00 
ffff800000104fae:	4c 01 e0             	add    %r12,%rax
ffff800000104fb1:	c7 44 24 2c 30 00 00 	movl   $0x30,0x2c(%rsp)
ffff800000104fb8:	00 
ffff800000104fb9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff800000104fbe:	48 89 c7             	mov    %rax,%rdi
ffff800000104fc1:	48 b8 20 ba ff ff ff 	movabs $0xffffffffffffba20,%rax
ffff800000104fc8:	ff ff ff 
ffff800000104fcb:	4c 01 e0             	add    %r12,%rax
ffff800000104fce:	ff d0                	call   *%rax
ffff800000104fd0:	41 89 c5             	mov    %eax,%r13d
ffff800000104fd3:	85 c0                	test   %eax,%eax
ffff800000104fd5:	0f 8e 6f 01 00 00    	jle    ffff80000010514a <color_printk+0x24a>
ffff800000104fdb:	49 b8 20 10 00 00 00 	movabs $0x1020,%r8
ffff800000104fe2:	00 00 00 
ffff800000104fe5:	45 31 d2             	xor    %r10d,%r10d
ffff800000104fe8:	45 31 db             	xor    %r11d,%r11d
ffff800000104feb:	4b 8b 44 20 18       	mov    0x18(%r8,%r12,1),%rax
ffff800000104ff0:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000104ff5:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000104ffa:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff800000104ffe:	48 89 04 24          	mov    %rax,(%rsp)
ffff800000105002:	48 b8 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rax
ffff800000105009:	ff ff ff 
ffff80000010500c:	4c 01 e0             	add    %r12,%rax
ffff80000010500f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
ffff800000105014:	48 b8 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rax
ffff80000010501b:	ff ff ff 
ffff80000010501e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
ffff800000105023:	48 b8 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rax
ffff80000010502a:	ff ff ff 
ffff80000010502d:	4a 8d 3c 20          	lea    (%rax,%r12,1),%rdi
ffff800000105031:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105038:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff80000010503d:	45 85 d2             	test   %r10d,%r10d
ffff800000105040:	0f 8f 19 01 00 00    	jg     ffff80000010515f <color_printk+0x25f>
ffff800000105046:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff80000010504b:	49 63 c3             	movslq %r11d,%rax
ffff80000010504e:	41 83 c3 01          	add    $0x1,%r11d
ffff800000105052:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
ffff800000105056:	3c 0a                	cmp    $0xa,%al
ffff800000105058:	0f 84 0b 01 00 00    	je     ffff800000105169 <color_printk+0x269>
ffff80000010505e:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff800000105063:	3c 08                	cmp    $0x8,%al
ffff800000105065:	0f 84 14 01 00 00    	je     ffff80000010517f <color_printk+0x27f>
ffff80000010506b:	3c 09                	cmp    $0x9,%al
ffff80000010506d:	0f 85 a0 01 00 00    	jne    ffff800000105213 <color_printk+0x313>
ffff800000105073:	44 8d 52 08          	lea    0x8(%rdx),%r10d
ffff800000105077:	41 83 e2 f8          	and    $0xfffffff8,%r10d
ffff80000010507b:	41 29 d2             	sub    %edx,%r10d
ffff80000010507e:	41 0f af f6          	imul   %r14d,%esi
ffff800000105082:	4c 63 f9             	movslq %ecx,%r15
ffff800000105085:	41 83 ea 01          	sub    $0x1,%r10d
ffff800000105089:	41 0f af d1          	imul   %r9d,%edx
ffff80000010508d:	49 c1 e7 02          	shl    $0x2,%r15
ffff800000105091:	0f af f1             	imul   %ecx,%esi
ffff800000105094:	48 63 d2             	movslq %edx,%rdx
ffff800000105097:	48 63 c6             	movslq %esi,%rax
ffff80000010509a:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff80000010509f:	48 8b 14 24          	mov    (%rsp),%rdx
ffff8000001050a3:	4c 8d 0c 82          	lea    (%rdx,%rax,4),%r9
ffff8000001050a7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff8000001050ac:	49 8d 34 04          	lea    (%r12,%rax,1),%rsi
ffff8000001050b0:	49 8d 41 e0          	lea    -0x20(%r9),%rax
ffff8000001050b4:	ba 00 01 00 00       	mov    $0x100,%edx
ffff8000001050b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001050c0:	0f b6 0e             	movzbl (%rsi),%ecx
ffff8000001050c3:	d1 fa                	sar    $1,%edx
ffff8000001050c5:	85 d1                	test   %edx,%ecx
ffff8000001050c7:	89 d9                	mov    %ebx,%ecx
ffff8000001050c9:	0f 44 cd             	cmove  %ebp,%ecx
ffff8000001050cc:	48 83 c0 04          	add    $0x4,%rax
ffff8000001050d0:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff8000001050d3:	4c 39 c8             	cmp    %r9,%rax
ffff8000001050d6:	75 e8                	jne    ffff8000001050c0 <color_printk+0x1c0>
ffff8000001050d8:	48 83 c6 01          	add    $0x1,%rsi
ffff8000001050dc:	4e 8d 0c 38          	lea    (%rax,%r15,1),%r9
ffff8000001050e0:	48 39 fe             	cmp    %rdi,%rsi
ffff8000001050e3:	75 cb                	jne    ffff8000001050b0 <color_printk+0x1b0>
ffff8000001050e5:	43 8b 44 20 08       	mov    0x8(%r8,%r12,1),%eax
ffff8000001050ea:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff8000001050ee:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff8000001050f3:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff8000001050f8:	44 8d 78 01          	lea    0x1(%rax),%r15d
ffff8000001050fc:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000105101:	47 89 7c 20 08       	mov    %r15d,0x8(%r8,%r12,1)
ffff800000105106:	89 c8                	mov    %ecx,%eax
ffff800000105108:	99                   	cltd
ffff800000105109:	41 f7 f9             	idiv   %r9d
ffff80000010510c:	44 39 f8             	cmp    %r15d,%eax
ffff80000010510f:	7f 11                	jg     ffff800000105122 <color_printk+0x222>
ffff800000105111:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff800000105118:	00 00 
ffff80000010511a:	83 c6 01             	add    $0x1,%esi
ffff80000010511d:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff800000105122:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff800000105127:	99                   	cltd
ffff800000105128:	41 f7 fe             	idiv   %r14d
ffff80000010512b:	39 f0                	cmp    %esi,%eax
ffff80000010512d:	7f 09                	jg     ffff800000105138 <color_printk+0x238>
ffff80000010512f:	43 c7 44 20 0c 00 00 	movl   $0x0,0xc(%r8,%r12,1)
ffff800000105136:	00 00 
ffff800000105138:	45 39 dd             	cmp    %r11d,%r13d
ffff80000010513b:	0f 8f f7 fe ff ff    	jg     ffff800000105038 <color_printk+0x138>
ffff800000105141:	45 85 d2             	test   %r10d,%r10d
ffff800000105144:	0f 85 ee fe ff ff    	jne    ffff800000105038 <color_printk+0x138>
ffff80000010514a:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
ffff800000105151:	44 89 e8             	mov    %r13d,%eax
ffff800000105154:	5b                   	pop    %rbx
ffff800000105155:	5d                   	pop    %rbp
ffff800000105156:	41 5c                	pop    %r12
ffff800000105158:	41 5d                	pop    %r13
ffff80000010515a:	41 5e                	pop    %r14
ffff80000010515c:	41 5f                	pop    %r15
ffff80000010515e:	c3                   	ret
ffff80000010515f:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff800000105164:	e9 15 ff ff ff       	jmp    ffff80000010507e <color_printk+0x17e>
ffff800000105169:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff800000105170:	00 00 
ffff800000105172:	83 c6 01             	add    $0x1,%esi
ffff800000105175:	45 31 ff             	xor    %r15d,%r15d
ffff800000105178:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff80000010517d:	eb 87                	jmp    ffff800000105106 <color_printk+0x206>
ffff80000010517f:	83 ea 01             	sub    $0x1,%edx
ffff800000105182:	41 89 d7             	mov    %edx,%r15d
ffff800000105185:	0f 88 ff 00 00 00    	js     ffff80000010528a <color_printk+0x38a>
ffff80000010518b:	43 89 54 20 08       	mov    %edx,0x8(%r8,%r12,1)
ffff800000105190:	41 0f af f6          	imul   %r14d,%esi
ffff800000105194:	44 89 c8             	mov    %r9d,%eax
ffff800000105197:	48 63 d1             	movslq %ecx,%rdx
ffff80000010519a:	41 0f af c7          	imul   %r15d,%eax
ffff80000010519e:	48 c1 e2 02          	shl    $0x2,%rdx
ffff8000001051a2:	0f af ce             	imul   %esi,%ecx
ffff8000001051a5:	48 8b 34 24          	mov    (%rsp),%rsi
ffff8000001051a9:	48 98                	cltq
ffff8000001051ab:	48 63 c9             	movslq %ecx,%rcx
ffff8000001051ae:	48 8d 44 01 08       	lea    0x8(%rcx,%rax,1),%rax
ffff8000001051b3:	4c 8d 34 86          	lea    (%rsi,%rax,4),%r14
ffff8000001051b7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff8000001051bc:	4d 8d 0c 04          	lea    (%r12,%rax,1),%r9
ffff8000001051c0:	49 8d 46 e0          	lea    -0x20(%r14),%rax
ffff8000001051c4:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff8000001051c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001051d0:	41 0f b6 31          	movzbl (%r9),%esi
ffff8000001051d4:	d1 f9                	sar    $1,%ecx
ffff8000001051d6:	85 ce                	test   %ecx,%esi
ffff8000001051d8:	89 de                	mov    %ebx,%esi
ffff8000001051da:	0f 44 f5             	cmove  %ebp,%esi
ffff8000001051dd:	48 83 c0 04          	add    $0x4,%rax
ffff8000001051e1:	89 70 fc             	mov    %esi,-0x4(%rax)
ffff8000001051e4:	4c 39 f0             	cmp    %r14,%rax
ffff8000001051e7:	75 e7                	jne    ffff8000001051d0 <color_printk+0x2d0>
ffff8000001051e9:	49 83 c1 01          	add    $0x1,%r9
ffff8000001051ed:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
ffff8000001051f1:	49 39 f9             	cmp    %rdi,%r9
ffff8000001051f4:	75 ca                	jne    ffff8000001051c0 <color_printk+0x2c0>
ffff8000001051f6:	47 8b 7c 20 08       	mov    0x8(%r8,%r12,1),%r15d
ffff8000001051fb:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff8000001051ff:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000105204:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff800000105209:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff80000010520e:	e9 f3 fe ff ff       	jmp    ffff800000105106 <color_printk+0x206>
ffff800000105213:	41 0f af d1          	imul   %r9d,%edx
ffff800000105217:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
ffff80000010521c:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000105220:	4c 01 f8             	add    %r15,%rax
ffff800000105223:	4c 63 f9             	movslq %ecx,%r15
ffff800000105226:	4c 63 ca             	movslq %edx,%r9
ffff800000105229:	44 89 f2             	mov    %r14d,%edx
ffff80000010522c:	49 c1 e7 02          	shl    $0x2,%r15
ffff800000105230:	4c 8d 70 10          	lea    0x10(%rax),%r14
ffff800000105234:	0f af d6             	imul   %esi,%edx
ffff800000105237:	48 8b 34 24          	mov    (%rsp),%rsi
ffff80000010523b:	0f af d1             	imul   %ecx,%edx
ffff80000010523e:	48 63 d2             	movslq %edx,%rdx
ffff800000105241:	49 8d 54 11 08       	lea    0x8(%r9,%rdx,1),%rdx
ffff800000105246:	4c 8d 0c 96          	lea    (%rsi,%rdx,4),%r9
ffff80000010524a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000105250:	49 8d 51 e0          	lea    -0x20(%r9),%rdx
ffff800000105254:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff800000105259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105260:	0f b6 30             	movzbl (%rax),%esi
ffff800000105263:	d1 f9                	sar    $1,%ecx
ffff800000105265:	85 ce                	test   %ecx,%esi
ffff800000105267:	89 de                	mov    %ebx,%esi
ffff800000105269:	0f 44 f5             	cmove  %ebp,%esi
ffff80000010526c:	48 83 c2 04          	add    $0x4,%rdx
ffff800000105270:	89 72 fc             	mov    %esi,-0x4(%rdx)
ffff800000105273:	4c 39 ca             	cmp    %r9,%rdx
ffff800000105276:	75 e8                	jne    ffff800000105260 <color_printk+0x360>
ffff800000105278:	48 83 c0 01          	add    $0x1,%rax
ffff80000010527c:	4e 8d 0c 3a          	lea    (%rdx,%r15,1),%r9
ffff800000105280:	4c 39 f0             	cmp    %r14,%rax
ffff800000105283:	75 cb                	jne    ffff800000105250 <color_printk+0x350>
ffff800000105285:	e9 5b fe ff ff       	jmp    ffff8000001050e5 <color_printk+0x1e5>
ffff80000010528a:	89 c8                	mov    %ecx,%eax
ffff80000010528c:	99                   	cltd
ffff80000010528d:	41 f7 f9             	idiv   %r9d
ffff800000105290:	83 e8 01             	sub    $0x1,%eax
ffff800000105293:	41 0f af c1          	imul   %r9d,%eax
ffff800000105297:	83 ee 01             	sub    $0x1,%esi
ffff80000010529a:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff80000010529f:	43 89 44 20 08       	mov    %eax,0x8(%r8,%r12,1)
ffff8000001052a4:	41 89 c7             	mov    %eax,%r15d
ffff8000001052a7:	0f 89 e3 fe ff ff    	jns    ffff800000105190 <color_printk+0x290>
ffff8000001052ad:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff8000001052b2:	99                   	cltd
ffff8000001052b3:	41 f7 fe             	idiv   %r14d
ffff8000001052b6:	83 e8 01             	sub    $0x1,%eax
ffff8000001052b9:	41 0f af c6          	imul   %r14d,%eax
ffff8000001052bd:	43 89 44 20 0c       	mov    %eax,0xc(%r8,%r12,1)
ffff8000001052c2:	89 c6                	mov    %eax,%esi
ffff8000001052c4:	e9 c7 fe ff ff       	jmp    ffff800000105190 <color_printk+0x290>
