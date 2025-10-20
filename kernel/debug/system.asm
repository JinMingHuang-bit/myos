
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 30 5c 00 00 	lgdt   0x5c30(%rip)        # ffff800000105c48 <GDT_END>
ffff800000100018:	0f 01 1d 33 6c 00 00 	lidt   0x6c33(%rip)        # ffff800000106c52 <IDT_END>
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
ffff800000104004:	41 57                	push   %r15
ffff800000104006:	4c 8d 3d f9 ff ff ff 	lea    -0x7(%rip),%r15        # ffff800000104006 <Start_Kernel+0x6>
ffff80000010400d:	49 bb da 4c 00 00 00 	movabs $0x4cda,%r11
ffff800000104014:	00 00 00 
ffff800000104017:	4d 01 df             	add    %r11,%r15
ffff80000010401a:	0f 20 e0             	mov    %cr4,%rax
ffff80000010401d:	80 cc 06             	or     $0x6,%ah
ffff800000104020:	0f 22 e0             	mov    %rax,%cr4
ffff800000104023:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff80000010402a:	00 00 00 
ffff80000010402d:	41 c7 04 07 a0 05 00 	movl   $0x5a0,(%r15,%rax,1)
ffff800000104034:	00 
ffff800000104035:	41 c7 44 07 04 84 03 	movl   $0x384,0x4(%r15,%rax,1)
ffff80000010403c:	00 00 
ffff80000010403e:	41 c7 44 07 08 00 00 	movl   $0x0,0x8(%r15,%rax,1)
ffff800000104045:	00 00 
ffff800000104047:	41 c7 44 07 0c 00 00 	movl   $0x0,0xc(%r15,%rax,1)
ffff80000010404e:	00 00 
ffff800000104050:	41 c7 44 07 10 08 00 	movl   $0x8,0x10(%r15,%rax,1)
ffff800000104057:	00 00 
ffff800000104059:	41 c7 44 07 14 10 00 	movl   $0x10,0x14(%r15,%rax,1)
ffff800000104060:	00 00 
ffff800000104062:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104069:	80 ff ff 
ffff80000010406c:	4a 89 74 38 18       	mov    %rsi,0x18(%rax,%r15,1)
ffff800000104071:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
ffff800000104078:	4f 00 
ffff80000010407a:	48 b8 49 c6 ff ff ff 	movabs $0xffffffffffffc649,%rax
ffff800000104081:	ff ff ff 
ffff800000104084:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104088:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010408d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104092:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104097:	48 b9 80 c2 ff ff ff 	movabs $0xffffffffffffc280,%rcx
ffff80000010409e:	ff ff ff 
ffff8000001040a1:	4c 01 f9             	add    %r15,%rcx
ffff8000001040a4:	ff d1                	call   *%rcx
ffff8000001040a6:	48 b8 5a c6 ff ff ff 	movabs $0xffffffffffffc65a,%rax
ffff8000001040ad:	ff ff ff 
ffff8000001040b0:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040b4:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040b9:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040be:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040c3:	48 b9 80 c2 ff ff ff 	movabs $0xffffffffffffc280,%rcx
ffff8000001040ca:	ff ff ff 
ffff8000001040cd:	4c 01 f9             	add    %r15,%rcx
ffff8000001040d0:	ff d1                	call   *%rcx
ffff8000001040d2:	48 b8 68 c6 ff ff ff 	movabs $0xffffffffffffc668,%rax
ffff8000001040d9:	ff ff ff 
ffff8000001040dc:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040e0:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040e5:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040ea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040ef:	48 b9 80 c2 ff ff ff 	movabs $0xffffffffffffc280,%rcx
ffff8000001040f6:	ff ff ff 
ffff8000001040f9:	4c 01 f9             	add    %r15,%rcx
ffff8000001040fc:	ff d1                	call   *%rcx
ffff8000001040fe:	48 b8 c0 c6 ff ff ff 	movabs $0xffffffffffffc6c0,%rax
ffff800000104105:	ff ff ff 
ffff800000104108:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010410c:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104111:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104116:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010411b:	48 b9 80 c2 ff ff ff 	movabs $0xffffffffffffc280,%rcx
ffff800000104122:	ff ff ff 
ffff800000104125:	4c 01 f9             	add    %r15,%rcx
ffff800000104128:	ff d1                	call   *%rcx
ffff80000010412a:	48 b8 f8 c6 ff ff ff 	movabs $0xffffffffffffc6f8,%rax
ffff800000104131:	ff ff ff 
ffff800000104134:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104138:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010413d:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104142:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104147:	48 b9 80 c2 ff ff ff 	movabs $0xffffffffffffc280,%rcx
ffff80000010414e:	ff ff ff 
ffff800000104151:	4c 01 f9             	add    %r15,%rcx
ffff800000104154:	ff d1                	call   *%rcx
ffff800000104156:	eb fe                	jmp    ffff800000104156 <Start_Kernel+0x156>
ffff800000104158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010415f:	00 

ffff800000104160 <number>:
ffff800000104160:	f3 0f 1e fa          	endbr64
ffff800000104164:	41 57                	push   %r15
ffff800000104166:	48 89 f0             	mov    %rsi,%rax
ffff800000104169:	41 89 ca             	mov    %ecx,%r10d
ffff80000010416c:	49 bb 7c 4b 00 00 00 	movabs $0x4b7c,%r11
ffff800000104173:	00 00 00 
ffff800000104176:	41 56                	push   %r14
ffff800000104178:	41 55                	push   %r13
ffff80000010417a:	41 54                	push   %r12
ffff80000010417c:	55                   	push   %rbp
ffff80000010417d:	89 d5                	mov    %edx,%ebp
ffff80000010417f:	48 ba 48 c7 ff ff ff 	movabs $0xffffffffffffc748,%rdx
ffff800000104186:	ff ff ff 
ffff800000104189:	53                   	push   %rbx
ffff80000010418a:	48 8d 1d d3 ff ff ff 	lea    -0x2d(%rip),%rbx        # ffff800000104164 <number+0x4>
ffff800000104191:	4c 01 db             	add    %r11,%rbx
ffff800000104194:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff800000104198:	41 f6 c1 40          	test   $0x40,%r9b
ffff80000010419c:	75 0e                	jne    ffff8000001041ac <number+0x4c>
ffff80000010419e:	48 ba 20 c7 ff ff ff 	movabs $0xffffffffffffc720,%rdx
ffff8000001041a5:	ff ff ff 
ffff8000001041a8:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff8000001041ac:	44 89 ce             	mov    %r9d,%esi
ffff8000001041af:	83 e6 10             	and    $0x10,%esi
ffff8000001041b2:	89 74 24 b0          	mov    %esi,-0x50(%rsp)
ffff8000001041b6:	0f 84 dc 01 00 00    	je     ffff800000104398 <number+0x238>
ffff8000001041bc:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff8000001041c0:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff8000001041c6:	bb 20 00 00 00       	mov    $0x20,%ebx
ffff8000001041cb:	45 89 cf             	mov    %r9d,%r15d
ffff8000001041ce:	41 83 e7 20          	and    $0x20,%r15d
ffff8000001041d2:	41 f6 c1 02          	test   $0x2,%r9b
ffff8000001041d6:	74 09                	je     ffff8000001041e1 <number+0x81>
ffff8000001041d8:	48 85 c0             	test   %rax,%rax
ffff8000001041db:	0f 88 0f 02 00 00    	js     ffff8000001043f0 <number+0x290>
ffff8000001041e1:	41 f6 c1 04          	test   $0x4,%r9b
ffff8000001041e5:	0f 84 e5 01 00 00    	je     ffff8000001043d0 <number+0x270>
ffff8000001041eb:	ba 2b 00 00 00       	mov    $0x2b,%edx
ffff8000001041f0:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001041f4:	45 85 ff             	test   %r15d,%r15d
ffff8000001041f7:	74 1a                	je     ffff800000104213 <number+0xb3>
ffff8000001041f9:	83 fd 10             	cmp    $0x10,%ebp
ffff8000001041fc:	0f 84 7e 02 00 00    	je     ffff800000104480 <number+0x320>
ffff800000104202:	31 c9                	xor    %ecx,%ecx
ffff800000104204:	83 fd 08             	cmp    $0x8,%ebp
ffff800000104207:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff80000010420d:	0f 94 c1             	sete   %cl
ffff800000104210:	41 29 ca             	sub    %ecx,%r10d
ffff800000104213:	48 85 c0             	test   %rax,%rax
ffff800000104216:	0f 85 e9 01 00 00    	jne    ffff800000104405 <number+0x2a5>
ffff80000010421c:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
ffff800000104221:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff800000104226:	31 c9                	xor    %ecx,%ecx
ffff800000104228:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010422d:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
ffff800000104232:	44 39 c6             	cmp    %r8d,%esi
ffff800000104235:	44 0f 4d c6          	cmovge %esi,%r8d
ffff800000104239:	45 29 c2             	sub    %r8d,%r10d
ffff80000010423c:	45 85 f6             	test   %r14d,%r14d
ffff80000010423f:	75 45                	jne    ffff800000104286 <number+0x126>
ffff800000104241:	44 89 d0             	mov    %r10d,%eax
ffff800000104244:	48 01 f8             	add    %rdi,%rax
ffff800000104247:	45 85 d2             	test   %r10d,%r10d
ffff80000010424a:	0f 8e 48 02 00 00    	jle    ffff800000104498 <number+0x338>
ffff800000104250:	49 89 c1             	mov    %rax,%r9
ffff800000104253:	49 29 f9             	sub    %rdi,%r9
ffff800000104256:	41 83 e1 01          	and    $0x1,%r9d
ffff80000010425a:	74 14                	je     ffff800000104270 <number+0x110>
ffff80000010425c:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104260:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104264:	48 39 c7             	cmp    %rax,%rdi
ffff800000104267:	74 17                	je     ffff800000104280 <number+0x120>
ffff800000104269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104270:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104273:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104277:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff80000010427b:	48 39 c7             	cmp    %rax,%rdi
ffff80000010427e:	75 f0                	jne    ffff800000104270 <number+0x110>
ffff800000104280:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff800000104286:	84 d2                	test   %dl,%dl
ffff800000104288:	74 06                	je     ffff800000104290 <number+0x130>
ffff80000010428a:	88 17                	mov    %dl,(%rdi)
ffff80000010428c:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104290:	45 85 ff             	test   %r15d,%r15d
ffff800000104293:	74 12                	je     ffff8000001042a7 <number+0x147>
ffff800000104295:	83 fd 08             	cmp    $0x8,%ebp
ffff800000104298:	0f 84 d2 01 00 00    	je     ffff800000104470 <number+0x310>
ffff80000010429e:	83 fd 10             	cmp    $0x10,%ebp
ffff8000001042a1:	0f 84 b1 01 00 00    	je     ffff800000104458 <number+0x2f8>
ffff8000001042a7:	8b 44 24 b0          	mov    -0x50(%rsp),%eax
ffff8000001042ab:	85 c0                	test   %eax,%eax
ffff8000001042ad:	75 3d                	jne    ffff8000001042ec <number+0x18c>
ffff8000001042af:	44 89 d0             	mov    %r10d,%eax
ffff8000001042b2:	48 01 f8             	add    %rdi,%rax
ffff8000001042b5:	45 85 d2             	test   %r10d,%r10d
ffff8000001042b8:	0f 8e e3 01 00 00    	jle    ffff8000001044a1 <number+0x341>
ffff8000001042be:	48 89 c2             	mov    %rax,%rdx
ffff8000001042c1:	48 29 fa             	sub    %rdi,%rdx
ffff8000001042c4:	83 e2 01             	and    $0x1,%edx
ffff8000001042c7:	74 0f                	je     ffff8000001042d8 <number+0x178>
ffff8000001042c9:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042cd:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff8000001042d0:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042d3:	74 11                	je     ffff8000001042e6 <number+0x186>
ffff8000001042d5:	0f 1f 00             	nopl   (%rax)
ffff8000001042d8:	88 1f                	mov    %bl,(%rdi)
ffff8000001042da:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001042de:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff8000001042e1:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042e4:	75 f2                	jne    ffff8000001042d8 <number+0x178>
ffff8000001042e6:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff8000001042ec:	44 39 c6             	cmp    %r8d,%esi
ffff8000001042ef:	0f 8d 9b 01 00 00    	jge    ffff800000104490 <number+0x330>
ffff8000001042f5:	41 29 f0             	sub    %esi,%r8d
ffff8000001042f8:	41 8d 50 ff          	lea    -0x1(%r8),%edx
ffff8000001042fc:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff800000104301:	83 e2 01             	and    $0x1,%edx
ffff800000104304:	75 12                	jne    ffff800000104318 <number+0x1b8>
ffff800000104306:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010430a:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff80000010430e:	48 39 c7             	cmp    %rax,%rdi
ffff800000104311:	74 15                	je     ffff800000104328 <number+0x1c8>
ffff800000104313:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104318:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010431b:	48 83 c7 02          	add    $0x2,%rdi
ffff80000010431f:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff800000104323:	48 39 c7             	cmp    %rax,%rdi
ffff800000104326:	75 f0                	jne    ffff800000104318 <number+0x1b8>
ffff800000104328:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
ffff80000010432d:	48 63 d1             	movslq %ecx,%rdx
ffff800000104330:	83 c1 01             	add    $0x1,%ecx
ffff800000104333:	48 63 c9             	movslq %ecx,%rcx
ffff800000104336:	48 01 d3             	add    %rdx,%rbx
ffff800000104339:	48 01 c1             	add    %rax,%rcx
ffff80000010433c:	48 89 da             	mov    %rbx,%rdx
ffff80000010433f:	90                   	nop
ffff800000104340:	0f b6 32             	movzbl (%rdx),%esi
ffff800000104343:	48 83 c0 01          	add    $0x1,%rax
ffff800000104347:	48 83 ea 01          	sub    $0x1,%rdx
ffff80000010434b:	40 88 70 ff          	mov    %sil,-0x1(%rax)
ffff80000010434f:	48 39 c8             	cmp    %rcx,%rax
ffff800000104352:	75 ec                	jne    ffff800000104340 <number+0x1e0>
ffff800000104354:	45 85 d2             	test   %r10d,%r10d
ffff800000104357:	7e 2f                	jle    ffff800000104388 <number+0x228>
ffff800000104359:	45 89 d2             	mov    %r10d,%r10d
ffff80000010435c:	4a 8d 04 11          	lea    (%rcx,%r10,1),%rax
ffff800000104360:	41 83 e2 01          	and    $0x1,%r10d
ffff800000104364:	74 12                	je     ffff800000104378 <number+0x218>
ffff800000104366:	48 83 c1 01          	add    $0x1,%rcx
ffff80000010436a:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff80000010436e:	48 39 c1             	cmp    %rax,%rcx
ffff800000104371:	74 15                	je     ffff800000104388 <number+0x228>
ffff800000104373:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104378:	c6 01 20             	movb   $0x20,(%rcx)
ffff80000010437b:	48 83 c1 02          	add    $0x2,%rcx
ffff80000010437f:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff800000104383:	48 39 c1             	cmp    %rax,%rcx
ffff800000104386:	75 f0                	jne    ffff800000104378 <number+0x218>
ffff800000104388:	5b                   	pop    %rbx
ffff800000104389:	5d                   	pop    %rbp
ffff80000010438a:	41 5c                	pop    %r12
ffff80000010438c:	41 5d                	pop    %r13
ffff80000010438e:	41 5e                	pop    %r14
ffff800000104390:	41 5f                	pop    %r15
ffff800000104392:	c3                   	ret
ffff800000104393:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104398:	44 89 ca             	mov    %r9d,%edx
ffff80000010439b:	45 89 ce             	mov    %r9d,%r14d
ffff80000010439e:	45 89 cf             	mov    %r9d,%r15d
ffff8000001043a1:	83 e2 01             	and    $0x1,%edx
ffff8000001043a4:	41 83 e6 11          	and    $0x11,%r14d
ffff8000001043a8:	83 fa 01             	cmp    $0x1,%edx
ffff8000001043ab:	19 db                	sbb    %ebx,%ebx
ffff8000001043ad:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff8000001043b0:	83 c3 30             	add    $0x30,%ebx
ffff8000001043b3:	85 d2                	test   %edx,%edx
ffff8000001043b5:	44 0f 44 f6          	cmove  %esi,%r14d
ffff8000001043b9:	41 83 e7 20          	and    $0x20,%r15d
ffff8000001043bd:	41 f6 c1 02          	test   $0x2,%r9b
ffff8000001043c1:	0f 85 11 fe ff ff    	jne    ffff8000001041d8 <number+0x78>
ffff8000001043c7:	e9 15 fe ff ff       	jmp    ffff8000001041e1 <number+0x81>
ffff8000001043cc:	0f 1f 40 00          	nopl   0x0(%rax)
ffff8000001043d0:	44 89 ca             	mov    %r9d,%edx
ffff8000001043d3:	83 e2 08             	and    $0x8,%edx
ffff8000001043d6:	0f 84 18 fe ff ff    	je     ffff8000001041f4 <number+0x94>
ffff8000001043dc:	ba 20 00 00 00       	mov    $0x20,%edx
ffff8000001043e1:	e9 0a fe ff ff       	jmp    ffff8000001041f0 <number+0x90>
ffff8000001043e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001043ed:	00 00 00 
ffff8000001043f0:	48 f7 d8             	neg    %rax
ffff8000001043f3:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001043f7:	ba 2d 00 00 00       	mov    $0x2d,%edx
ffff8000001043fc:	45 85 ff             	test   %r15d,%r15d
ffff8000001043ff:	0f 85 f4 fd ff ff    	jne    ffff8000001041f9 <number+0x99>
ffff800000104405:	48 8d 74 24 b8       	lea    -0x48(%rsp),%rsi
ffff80000010440a:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
ffff80000010440f:	4c 63 dd             	movslq %ebp,%r11
ffff800000104412:	45 31 ed             	xor    %r13d,%r13d
ffff800000104415:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
ffff80000010441a:	49 89 f1             	mov    %rsi,%r9
ffff80000010441d:	41 89 d7             	mov    %edx,%r15d
ffff800000104420:	31 f6                	xor    %esi,%esi
ffff800000104422:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104428:	44 89 ea             	mov    %r13d,%edx
ffff80000010442b:	89 f1                	mov    %esi,%ecx
ffff80000010442d:	49 83 c1 01          	add    $0x1,%r9
ffff800000104431:	83 c6 01             	add    $0x1,%esi
ffff800000104434:	49 f7 f3             	div    %r11
ffff800000104437:	48 63 d2             	movslq %edx,%rdx
ffff80000010443a:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
ffff80000010443f:	41 88 51 ff          	mov    %dl,-0x1(%r9)
ffff800000104443:	48 85 c0             	test   %rax,%rax
ffff800000104446:	75 e0                	jne    ffff800000104428 <number+0x2c8>
ffff800000104448:	44 89 fa             	mov    %r15d,%edx
ffff80000010444b:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
ffff800000104450:	e9 dd fd ff ff       	jmp    ffff800000104232 <number+0xd2>
ffff800000104455:	0f 1f 00             	nopl   (%rax)
ffff800000104458:	41 0f b6 44 24 21    	movzbl 0x21(%r12),%eax
ffff80000010445e:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104461:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104465:	88 47 ff             	mov    %al,-0x1(%rdi)
ffff800000104468:	e9 3a fe ff ff       	jmp    ffff8000001042a7 <number+0x147>
ffff80000010446d:	0f 1f 00             	nopl   (%rax)
ffff800000104470:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104473:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104477:	e9 2b fe ff ff       	jmp    ffff8000001042a7 <number+0x147>
ffff80000010447c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104480:	41 83 ea 02          	sub    $0x2,%r10d
ffff800000104484:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff80000010448a:	e9 84 fd ff ff       	jmp    ffff800000104213 <number+0xb3>
ffff80000010448f:	90                   	nop
ffff800000104490:	48 89 f8             	mov    %rdi,%rax
ffff800000104493:	e9 90 fe ff ff       	jmp    ffff800000104328 <number+0x1c8>
ffff800000104498:	41 83 ea 01          	sub    $0x1,%r10d
ffff80000010449c:	e9 e5 fd ff ff       	jmp    ffff800000104286 <number+0x126>
ffff8000001044a1:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001044a5:	e9 42 fe ff ff       	jmp    ffff8000001042ec <number+0x18c>
ffff8000001044aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

ffff8000001044b0 <putchar>:
ffff8000001044b0:	f3 0f 1e fa          	endbr64
ffff8000001044b4:	89 f0                	mov    %esi,%eax
ffff8000001044b6:	4c 8d 15 f7 ff ff ff 	lea    -0x9(%rip),%r10        # ffff8000001044b4 <putchar+0x4>
ffff8000001044bd:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
ffff8000001044c2:	48 63 d2             	movslq %edx,%rdx
ffff8000001044c5:	49 bb 2c 48 00 00 00 	movabs $0x482c,%r11
ffff8000001044cc:	00 00 00 
ffff8000001044cf:	0f af c8             	imul   %eax,%ecx
ffff8000001044d2:	4d 01 da             	add    %r11,%r10
ffff8000001044d5:	48 c1 e6 04          	shl    $0x4,%rsi
ffff8000001044d9:	49 bb 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%r11
ffff8000001044e0:	ff ff ff 
ffff8000001044e3:	4d 01 da             	add    %r11,%r10
ffff8000001044e6:	4c 01 d6             	add    %r10,%rsi
ffff8000001044e9:	4c 63 d0             	movslq %eax,%r10
ffff8000001044ec:	48 63 c1             	movslq %ecx,%rax
ffff8000001044ef:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff8000001044f4:	49 c1 e2 02          	shl    $0x2,%r10
ffff8000001044f8:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
ffff8000001044fc:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
ffff800000104500:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
ffff800000104504:	ba 00 01 00 00       	mov    $0x100,%edx
ffff800000104509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104510:	0f b6 0e             	movzbl (%rsi),%ecx
ffff800000104513:	d1 fa                	sar    $1,%edx
ffff800000104515:	85 d1                	test   %edx,%ecx
ffff800000104517:	44 89 c1             	mov    %r8d,%ecx
ffff80000010451a:	41 0f 44 c9          	cmove  %r9d,%ecx
ffff80000010451e:	48 83 c0 04          	add    $0x4,%rax
ffff800000104522:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff800000104525:	48 39 f8             	cmp    %rdi,%rax
ffff800000104528:	75 e6                	jne    ffff800000104510 <putchar+0x60>
ffff80000010452a:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010452e:	4a 8d 3c 10          	lea    (%rax,%r10,1),%rdi
ffff800000104532:	4c 39 de             	cmp    %r11,%rsi
ffff800000104535:	75 c9                	jne    ffff800000104500 <putchar+0x50>
ffff800000104537:	c3                   	ret
ffff800000104538:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010453f:	00 

ffff800000104540 <clear_screen>:
ffff800000104540:	f3 0f 1e fa          	endbr64
ffff800000104544:	49 bb 9c 47 00 00 00 	movabs $0x479c,%r11
ffff80000010454b:	00 00 00 
ffff80000010454e:	41 57                	push   %r15
ffff800000104550:	41 56                	push   %r14
ffff800000104552:	41 55                	push   %r13
ffff800000104554:	41 54                	push   %r12
ffff800000104556:	55                   	push   %rbp
ffff800000104557:	48 bd 20 10 00 00 00 	movabs $0x1020,%rbp
ffff80000010455e:	00 00 00 
ffff800000104561:	53                   	push   %rbx
ffff800000104562:	48 8d 1d db ff ff ff 	lea    -0x25(%rip),%rbx        # ffff800000104544 <clear_screen+0x4>
ffff800000104569:	4c 01 db             	add    %r11,%rbx
ffff80000010456c:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
ffff800000104570:	99                   	cltd
ffff800000104571:	f7 7c 1d 10          	idivl  0x10(%rbp,%rbx,1)
ffff800000104575:	89 c1                	mov    %eax,%ecx
ffff800000104577:	8b 44 1d 04          	mov    0x4(%rbp,%rbx,1),%eax
ffff80000010457b:	99                   	cltd
ffff80000010457c:	f7 7c 1d 14          	idivl  0x14(%rbp,%rbx,1)
ffff800000104580:	85 c0                	test   %eax,%eax
ffff800000104582:	0f 8e d5 00 00 00    	jle    ffff80000010465d <clear_screen+0x11d>
ffff800000104588:	4c 8b 6c 1d 18       	mov    0x18(%rbp,%rbx,1),%r13
ffff80000010458d:	85 c9                	test   %ecx,%ecx
ffff80000010458f:	0f 8e c8 00 00 00    	jle    ffff80000010465d <clear_screen+0x11d>
ffff800000104595:	48 ba 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rdx
ffff80000010459c:	ff ff ff 
ffff80000010459f:	41 89 f8             	mov    %edi,%r8d
ffff8000001045a2:	41 89 f1             	mov    %esi,%r9d
ffff8000001045a5:	45 31 e4             	xor    %r12d,%r12d
ffff8000001045a8:	49 bf 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%r15
ffff8000001045af:	ff ff ff 
ffff8000001045b2:	4c 8d 1c 1a          	lea    (%rdx,%rbx,1),%r11
ffff8000001045b6:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
ffff8000001045bb:	31 d2                	xor    %edx,%edx
ffff8000001045bd:	89 c6                	mov    %eax,%esi
ffff8000001045bf:	8b 44 1d 14          	mov    0x14(%rbp,%rbx,1),%eax
ffff8000001045c3:	4c 63 74 1d 00       	movslq 0x0(%rbp,%rbx,1),%r14
ffff8000001045c8:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
ffff8000001045cc:	41 0f af c4          	imul   %r12d,%eax
ffff8000001045d0:	4c 89 f7             	mov    %r14,%rdi
ffff8000001045d3:	49 c1 e6 02          	shl    $0x2,%r14
ffff8000001045d7:	0f af c7             	imul   %edi,%eax
ffff8000001045da:	8b 7c 1d 10          	mov    0x10(%rbp,%rbx,1),%edi
ffff8000001045de:	0f af fa             	imul   %edx,%edi
ffff8000001045e1:	48 98                	cltq
ffff8000001045e3:	48 63 ff             	movslq %edi,%rdi
ffff8000001045e6:	48 8d 44 38 08       	lea    0x8(%rax,%rdi,1),%rax
ffff8000001045eb:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
ffff8000001045f0:	4c 8d 14 87          	lea    (%rdi,%rax,4),%r10
ffff8000001045f4:	49 8d 3c 1f          	lea    (%r15,%rbx,1),%rdi
ffff8000001045f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001045ff:	00 
ffff800000104600:	49 8d 42 e0          	lea    -0x20(%r10),%rax
ffff800000104604:	ba 00 01 00 00       	mov    $0x100,%edx
ffff800000104609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104610:	44 0f b6 2f          	movzbl (%rdi),%r13d
ffff800000104614:	d1 fa                	sar    $1,%edx
ffff800000104616:	41 85 d5             	test   %edx,%r13d
ffff800000104619:	45 89 c5             	mov    %r8d,%r13d
ffff80000010461c:	45 0f 44 e9          	cmove  %r9d,%r13d
ffff800000104620:	48 83 c0 04          	add    $0x4,%rax
ffff800000104624:	44 89 68 fc          	mov    %r13d,-0x4(%rax)
ffff800000104628:	4c 39 d0             	cmp    %r10,%rax
ffff80000010462b:	75 e3                	jne    ffff800000104610 <clear_screen+0xd0>
ffff80000010462d:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104631:	4e 8d 14 30          	lea    (%rax,%r14,1),%r10
ffff800000104635:	4c 39 df             	cmp    %r11,%rdi
ffff800000104638:	75 c6                	jne    ffff800000104600 <clear_screen+0xc0>
ffff80000010463a:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
ffff80000010463e:	83 c2 01             	add    $0x1,%edx
ffff800000104641:	39 d1                	cmp    %edx,%ecx
ffff800000104643:	0f 85 76 ff ff ff    	jne    ffff8000001045bf <clear_screen+0x7f>
ffff800000104649:	41 83 c4 01          	add    $0x1,%r12d
ffff80000010464d:	4c 8b 6c 24 f8       	mov    -0x8(%rsp),%r13
ffff800000104652:	89 f0                	mov    %esi,%eax
ffff800000104654:	44 39 e6             	cmp    %r12d,%esi
ffff800000104657:	0f 85 59 ff ff ff    	jne    ffff8000001045b6 <clear_screen+0x76>
ffff80000010465d:	48 c7 44 1d 08 00 00 	movq   $0x0,0x8(%rbp,%rbx,1)
ffff800000104664:	00 00 
ffff800000104666:	5b                   	pop    %rbx
ffff800000104667:	5d                   	pop    %rbp
ffff800000104668:	41 5c                	pop    %r12
ffff80000010466a:	41 5d                	pop    %r13
ffff80000010466c:	41 5e                	pop    %r14
ffff80000010466e:	41 5f                	pop    %r15
ffff800000104670:	c3                   	ret
ffff800000104671:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
ffff800000104678:	00 00 00 00 
ffff80000010467c:	0f 1f 40 00          	nopl   0x0(%rax)

ffff800000104680 <skip_atoi2>:
ffff800000104680:	f3 0f 1e fa          	endbr64
ffff800000104684:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104687:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010468a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010468d:	80 f9 09             	cmp    $0x9,%cl
ffff800000104690:	77 36                	ja     ffff8000001046c8 <skip_atoi2+0x48>
ffff800000104692:	48 83 c2 01          	add    $0x1,%rdx
ffff800000104696:	31 c9                	xor    %ecx,%ecx
ffff800000104698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010469f:	00 
ffff8000001046a0:	83 e8 30             	sub    $0x30,%eax
ffff8000001046a3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001046a6:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001046a9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001046ad:	0f be c0             	movsbl %al,%eax
ffff8000001046b0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff8000001046b3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff8000001046b7:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001046ba:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001046be:	76 e0                	jbe    ffff8000001046a0 <skip_atoi2+0x20>
ffff8000001046c0:	89 c8                	mov    %ecx,%eax
ffff8000001046c2:	c3                   	ret
ffff8000001046c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001046c8:	31 c9                	xor    %ecx,%ecx
ffff8000001046ca:	89 c8                	mov    %ecx,%eax
ffff8000001046cc:	c3                   	ret
ffff8000001046cd:	0f 1f 00             	nopl   (%rax)

ffff8000001046d0 <skip_atoi>:
ffff8000001046d0:	f3 0f 1e fa          	endbr64
ffff8000001046d4:	48 8b 17             	mov    (%rdi),%rdx
ffff8000001046d7:	0f b6 02             	movzbl (%rdx),%eax
ffff8000001046da:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff8000001046dd:	80 f9 09             	cmp    $0x9,%cl
ffff8000001046e0:	77 36                	ja     ffff800000104718 <skip_atoi+0x48>
ffff8000001046e2:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001046e6:	31 c9                	xor    %ecx,%ecx
ffff8000001046e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001046ef:	00 
ffff8000001046f0:	83 e8 30             	sub    $0x30,%eax
ffff8000001046f3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001046f6:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001046f9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001046fd:	0f be c0             	movsbl %al,%eax
ffff800000104700:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000104703:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff800000104707:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff80000010470a:	40 80 fe 09          	cmp    $0x9,%sil
ffff80000010470e:	76 e0                	jbe    ffff8000001046f0 <skip_atoi+0x20>
ffff800000104710:	89 c8                	mov    %ecx,%eax
ffff800000104712:	c3                   	ret
ffff800000104713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104718:	31 c9                	xor    %ecx,%ecx
ffff80000010471a:	89 c8                	mov    %ecx,%eax
ffff80000010471c:	c3                   	ret
ffff80000010471d:	0f 1f 00             	nopl   (%rax)

ffff800000104720 <vsprintf>:
ffff800000104720:	f3 0f 1e fa          	endbr64
ffff800000104724:	49 bb bc 45 00 00 00 	movabs $0x45bc,%r11
ffff80000010472b:	00 00 00 
ffff80000010472e:	41 57                	push   %r15
ffff800000104730:	41 56                	push   %r14
ffff800000104732:	4c 8d 35 eb ff ff ff 	lea    -0x15(%rip),%r14        # ffff800000104724 <vsprintf+0x4>
ffff800000104739:	41 55                	push   %r13
ffff80000010473b:	4d 01 de             	add    %r11,%r14
ffff80000010473e:	49 89 fd             	mov    %rdi,%r13
ffff800000104741:	41 54                	push   %r12
ffff800000104743:	55                   	push   %rbp
ffff800000104744:	53                   	push   %rbx
ffff800000104745:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104749:	0f b6 06             	movzbl (%rsi),%eax
ffff80000010474c:	84 c0                	test   %al,%al
ffff80000010474e:	0f 84 57 06 00 00    	je     ffff800000104dab <vsprintf+0x68b>
ffff800000104754:	48 89 f1             	mov    %rsi,%rcx
ffff800000104757:	49 89 d4             	mov    %rdx,%r12
ffff80000010475a:	48 8d 2d 87 0e 00 00 	lea    0xe87(%rip),%rbp        # ffff8000001055e8 <_etext+0x2bf>
ffff800000104761:	49 bf 01 00 00 10 01 	movabs $0x400110000001,%r15
ffff800000104768:	40 00 00 
ffff80000010476b:	eb 18                	jmp    ffff800000104785 <vsprintf+0x65>
ffff80000010476d:	0f 1f 00             	nopl   (%rax)
ffff800000104770:	88 07                	mov    %al,(%rdi)
ffff800000104772:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104776:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104779:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010477d:	84 c0                	test   %al,%al
ffff80000010477f:	0f 84 2b 01 00 00    	je     ffff8000001048b0 <vsprintf+0x190>
ffff800000104785:	3c 25                	cmp    $0x25,%al
ffff800000104787:	75 e7                	jne    ffff800000104770 <vsprintf+0x50>
ffff800000104789:	45 31 c9             	xor    %r9d,%r9d
ffff80000010478c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104790:	0f be 41 01          	movsbl 0x1(%rcx),%eax
ffff800000104794:	48 8d 59 01          	lea    0x1(%rcx),%rbx
ffff800000104798:	8d 50 e0             	lea    -0x20(%rax),%edx
ffff80000010479b:	80 fa 10             	cmp    $0x10,%dl
ffff80000010479e:	77 10                	ja     ffff8000001047b0 <vsprintf+0x90>
ffff8000001047a0:	0f b6 d2             	movzbl %dl,%edx
ffff8000001047a3:	48 8b 74 d5 00       	mov    0x0(%rbp,%rdx,8),%rsi
ffff8000001047a8:	48 01 ee             	add    %rbp,%rsi
ffff8000001047ab:	3e ff e6             	notrack jmp *%rsi
ffff8000001047ae:	66 90                	xchg   %ax,%ax
ffff8000001047b0:	8d 50 d0             	lea    -0x30(%rax),%edx
ffff8000001047b3:	80 fa 09             	cmp    $0x9,%dl
ffff8000001047b6:	0f 86 44 01 00 00    	jbe    ffff800000104900 <vsprintf+0x1e0>
ffff8000001047bc:	ba ff ff ff ff       	mov    $0xffffffff,%edx
ffff8000001047c1:	3c 2a                	cmp    $0x2a,%al
ffff8000001047c3:	0f 84 67 01 00 00    	je     ffff800000104930 <vsprintf+0x210>
ffff8000001047c9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff8000001047cf:	3c 2e                	cmp    $0x2e,%al
ffff8000001047d1:	0f 84 f9 00 00 00    	je     ffff8000001048d0 <vsprintf+0x1b0>
ffff8000001047d7:	8d 48 b4             	lea    -0x4c(%rax),%ecx
ffff8000001047da:	80 f9 2e             	cmp    $0x2e,%cl
ffff8000001047dd:	0f 87 7d 00 00 00    	ja     ffff800000104860 <vsprintf+0x140>
ffff8000001047e3:	49 0f a3 cf          	bt     %rcx,%r15
ffff8000001047e7:	73 77                	jae    ffff800000104860 <vsprintf+0x140>
ffff8000001047e9:	0f b6 73 01          	movzbl 0x1(%rbx),%esi
ffff8000001047ed:	4c 8d 53 01          	lea    0x1(%rbx),%r10
ffff8000001047f1:	8d 4e db             	lea    -0x25(%rsi),%ecx
ffff8000001047f4:	80 f9 53             	cmp    $0x53,%cl
ffff8000001047f7:	0f 87 86 00 00 00    	ja     ffff800000104883 <vsprintf+0x163>
ffff8000001047fd:	0f b6 c9             	movzbl %cl,%ecx
ffff800000104800:	48 8d 35 69 0e 00 00 	lea    0xe69(%rip),%rsi        # ffff800000105670 <_etext+0x347>
ffff800000104807:	48 03 34 ce          	add    (%rsi,%rcx,8),%rsi
ffff80000010480b:	3e ff e6             	notrack jmp *%rsi
ffff80000010480e:	66 90                	xchg   %ax,%ax
ffff800000104810:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104814:	48 89 d9             	mov    %rbx,%rcx
ffff800000104817:	e9 74 ff ff ff       	jmp    ffff800000104790 <vsprintf+0x70>
ffff80000010481c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104820:	41 83 c9 10          	or     $0x10,%r9d
ffff800000104824:	eb ee                	jmp    ffff800000104814 <vsprintf+0xf4>
ffff800000104826:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010482d:	00 00 00 
ffff800000104830:	41 83 c9 04          	or     $0x4,%r9d
ffff800000104834:	eb de                	jmp    ffff800000104814 <vsprintf+0xf4>
ffff800000104836:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010483d:	00 00 00 
ffff800000104840:	41 83 c9 20          	or     $0x20,%r9d
ffff800000104844:	eb ce                	jmp    ffff800000104814 <vsprintf+0xf4>
ffff800000104846:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010484d:	00 00 00 
ffff800000104850:	41 83 c9 08          	or     $0x8,%r9d
ffff800000104854:	eb be                	jmp    ffff800000104814 <vsprintf+0xf4>
ffff800000104856:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010485d:	00 00 00 
ffff800000104860:	83 e8 25             	sub    $0x25,%eax
ffff800000104863:	3c 53                	cmp    $0x53,%al
ffff800000104865:	77 19                	ja     ffff800000104880 <vsprintf+0x160>
ffff800000104867:	0f b6 c0             	movzbl %al,%eax
ffff80000010486a:	48 8d 0d 9f 10 00 00 	lea    0x109f(%rip),%rcx        # ffff800000105910 <_etext+0x5e7>
ffff800000104871:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
ffff800000104875:	3e ff e1             	notrack jmp *%rcx
ffff800000104878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010487f:	00 
ffff800000104880:	49 89 da             	mov    %rbx,%r10
ffff800000104883:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000104886:	41 0f b6 02          	movzbl (%r10),%eax
ffff80000010488a:	84 c0                	test   %al,%al
ffff80000010488c:	0f 84 e2 03 00 00    	je     ffff800000104c74 <vsprintf+0x554>
ffff800000104892:	88 47 01             	mov    %al,0x1(%rdi)
ffff800000104895:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff80000010489a:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff80000010489e:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001048a2:	84 c0                	test   %al,%al
ffff8000001048a4:	0f 85 db fe ff ff    	jne    ffff800000104785 <vsprintf+0x65>
ffff8000001048aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001048b0:	89 f8                	mov    %edi,%eax
ffff8000001048b2:	44 29 e8             	sub    %r13d,%eax
ffff8000001048b5:	c6 07 00             	movb   $0x0,(%rdi)
ffff8000001048b8:	48 83 c4 18          	add    $0x18,%rsp
ffff8000001048bc:	5b                   	pop    %rbx
ffff8000001048bd:	5d                   	pop    %rbp
ffff8000001048be:	41 5c                	pop    %r12
ffff8000001048c0:	41 5d                	pop    %r13
ffff8000001048c2:	41 5e                	pop    %r14
ffff8000001048c4:	41 5f                	pop    %r15
ffff8000001048c6:	c3                   	ret
ffff8000001048c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001048ce:	00 00 
ffff8000001048d0:	0f be 43 01          	movsbl 0x1(%rbx),%eax
ffff8000001048d4:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
ffff8000001048d8:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001048db:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001048df:	0f 86 b3 02 00 00    	jbe    ffff800000104b98 <vsprintf+0x478>
ffff8000001048e5:	3c 2a                	cmp    $0x2a,%al
ffff8000001048e7:	0f 84 e3 02 00 00    	je     ffff800000104bd0 <vsprintf+0x4b0>
ffff8000001048ed:	48 89 cb             	mov    %rcx,%rbx
ffff8000001048f0:	45 31 c0             	xor    %r8d,%r8d
ffff8000001048f3:	e9 df fe ff ff       	jmp    ffff8000001047d7 <vsprintf+0xb7>
ffff8000001048f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001048ff:	00 
ffff800000104900:	31 d2                	xor    %edx,%edx
ffff800000104902:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104908:	83 e8 30             	sub    $0x30,%eax
ffff80000010490b:	48 83 c3 01          	add    $0x1,%rbx
ffff80000010490f:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
ffff800000104912:	0f be c0             	movsbl %al,%eax
ffff800000104915:	8d 14 50             	lea    (%rax,%rdx,2),%edx
ffff800000104918:	0f be 03             	movsbl (%rbx),%eax
ffff80000010491b:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010491e:	80 f9 09             	cmp    $0x9,%cl
ffff800000104921:	76 e5                	jbe    ffff800000104908 <vsprintf+0x1e8>
ffff800000104923:	e9 a1 fe ff ff       	jmp    ffff8000001047c9 <vsprintf+0xa9>
ffff800000104928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010492f:	00 
ffff800000104930:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104934:	48 8d 59 02          	lea    0x2(%rcx),%rbx
ffff800000104938:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010493b:	77 23                	ja     ffff800000104960 <vsprintf+0x240>
ffff80000010493d:	89 c2                	mov    %eax,%edx
ffff80000010493f:	83 c0 08             	add    $0x8,%eax
ffff800000104942:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000104947:	41 89 04 24          	mov    %eax,(%r12)
ffff80000010494b:	8b 12                	mov    (%rdx),%edx
ffff80000010494d:	85 d2                	test   %edx,%edx
ffff80000010494f:	79 06                	jns    ffff800000104957 <vsprintf+0x237>
ffff800000104951:	f7 da                	neg    %edx
ffff800000104953:	41 83 c9 10          	or     $0x10,%r9d
ffff800000104957:	0f be 41 02          	movsbl 0x2(%rcx),%eax
ffff80000010495b:	e9 69 fe ff ff       	jmp    ffff8000001047c9 <vsprintf+0xa9>
ffff800000104960:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000104965:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104969:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010496e:	eb db                	jmp    ffff80000010494b <vsprintf+0x22b>
ffff800000104970:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104974:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104978:	83 f8 6c             	cmp    $0x6c,%eax
ffff80000010497b:	0f 84 07 04 00 00    	je     ffff800000104d88 <vsprintf+0x668>
ffff800000104981:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104984:	0f 87 86 02 00 00    	ja     ffff800000104c10 <vsprintf+0x4f0>
ffff80000010498a:	89 c8                	mov    %ecx,%eax
ffff80000010498c:	83 c1 08             	add    $0x8,%ecx
ffff80000010498f:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104994:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104998:	89 d1                	mov    %edx,%ecx
ffff80000010499a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff80000010499f:	8b 30                	mov    (%rax),%esi
ffff8000001049a1:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001049a6:	eb 36                	jmp    ffff8000001049de <vsprintf+0x2be>
ffff8000001049a8:	41 83 c9 02          	or     $0x2,%r9d
ffff8000001049ac:	41 8b 0c 24          	mov    (%r12),%ecx
ffff8000001049b0:	83 f8 6c             	cmp    $0x6c,%eax
ffff8000001049b3:	0f 84 8f 03 00 00    	je     ffff800000104d48 <vsprintf+0x628>
ffff8000001049b9:	83 f9 2f             	cmp    $0x2f,%ecx
ffff8000001049bc:	0f 87 66 02 00 00    	ja     ffff800000104c28 <vsprintf+0x508>
ffff8000001049c2:	89 c8                	mov    %ecx,%eax
ffff8000001049c4:	83 c1 08             	add    $0x8,%ecx
ffff8000001049c7:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff8000001049cc:	41 89 0c 24          	mov    %ecx,(%r12)
ffff8000001049d0:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff8000001049d5:	8b 30                	mov    (%rax),%esi
ffff8000001049d7:	89 d1                	mov    %edx,%ecx
ffff8000001049d9:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001049de:	48 b8 80 b4 ff ff ff 	movabs $0xffffffffffffb480,%rax
ffff8000001049e5:	ff ff ff 
ffff8000001049e8:	4c 01 f0             	add    %r14,%rax
ffff8000001049eb:	ff d0                	call   *%rax
ffff8000001049ed:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
ffff8000001049f2:	48 89 c7             	mov    %rax,%rdi
ffff8000001049f5:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff8000001049f9:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff8000001049fe:	e9 7a fd ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104a03:	49 89 da             	mov    %rbx,%r10
ffff800000104a06:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000104a09:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104a0d:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104a12:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104a16:	e9 62 fd ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104a1b:	49 89 da             	mov    %rbx,%r10
ffff800000104a1e:	41 83 e1 10          	and    $0x10,%r9d
ffff800000104a22:	0f 84 63 02 00 00    	je     ffff800000104c8b <vsprintf+0x56b>
ffff800000104a28:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104a2c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a2f:	0f 86 2c 02 00 00    	jbe    ffff800000104c61 <vsprintf+0x541>
ffff800000104a35:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104a3a:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104a3e:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104a43:	8b 01                	mov    (%rcx),%eax
ffff800000104a45:	48 8d 77 01          	lea    0x1(%rdi),%rsi
ffff800000104a49:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104a4d:	88 07                	mov    %al,(%rdi)
ffff800000104a4f:	89 d0                	mov    %edx,%eax
ffff800000104a51:	48 01 c7             	add    %rax,%rdi
ffff800000104a54:	83 fa 01             	cmp    $0x1,%edx
ffff800000104a57:	0f 8e dd 04 00 00    	jle    ffff800000104f3a <vsprintf+0x81a>
ffff800000104a5d:	48 89 f8             	mov    %rdi,%rax
ffff800000104a60:	48 29 f0             	sub    %rsi,%rax
ffff800000104a63:	a8 01                	test   $0x1,%al
ffff800000104a65:	74 11                	je     ffff800000104a78 <vsprintf+0x358>
ffff800000104a67:	48 83 c6 01          	add    $0x1,%rsi
ffff800000104a6b:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a6f:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a72:	74 85                	je     ffff8000001049f9 <vsprintf+0x2d9>
ffff800000104a74:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104a78:	c6 06 20             	movb   $0x20,(%rsi)
ffff800000104a7b:	48 83 c6 02          	add    $0x2,%rsi
ffff800000104a7f:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a83:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a86:	75 f0                	jne    ffff800000104a78 <vsprintf+0x358>
ffff800000104a88:	e9 6c ff ff ff       	jmp    ffff8000001049f9 <vsprintf+0x2d9>
ffff800000104a8d:	49 89 da             	mov    %rbx,%r10
ffff800000104a90:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104a94:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a97:	0f 87 b1 01 00 00    	ja     ffff800000104c4e <vsprintf+0x52e>
ffff800000104a9d:	89 c1                	mov    %eax,%ecx
ffff800000104a9f:	83 c0 08             	add    $0x8,%eax
ffff800000104aa2:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104aa7:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104aab:	4c 8b 19             	mov    (%rcx),%r11
ffff800000104aae:	41 80 3b 00          	cmpb   $0x0,(%r11)
ffff800000104ab2:	0f 84 97 04 00 00    	je     ffff800000104f4f <vsprintf+0x82f>
ffff800000104ab8:	4c 89 d8             	mov    %r11,%rax
ffff800000104abb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104ac0:	48 83 c0 01          	add    $0x1,%rax
ffff800000104ac4:	80 38 00             	cmpb   $0x0,(%rax)
ffff800000104ac7:	75 f7                	jne    ffff800000104ac0 <vsprintf+0x3a0>
ffff800000104ac9:	89 c6                	mov    %eax,%esi
ffff800000104acb:	44 29 de             	sub    %r11d,%esi
ffff800000104ace:	44 39 c6             	cmp    %r8d,%esi
ffff800000104ad1:	44 89 c0             	mov    %r8d,%eax
ffff800000104ad4:	0f 4e c6             	cmovle %esi,%eax
ffff800000104ad7:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff800000104adb:	0f 45 f0             	cmovne %eax,%esi
ffff800000104ade:	41 83 e1 10          	and    $0x10,%r9d
ffff800000104ae2:	0f 84 7c 03 00 00    	je     ffff800000104e64 <vsprintf+0x744>
ffff800000104ae8:	85 f6                	test   %esi,%esi
ffff800000104aea:	0f 8e 57 04 00 00    	jle    ffff800000104f47 <vsprintf+0x827>
ffff800000104af0:	4c 63 c6             	movslq %esi,%r8
ffff800000104af3:	31 c0                	xor    %eax,%eax
ffff800000104af5:	0f 1f 00             	nopl   (%rax)
ffff800000104af8:	41 0f b6 0c 03       	movzbl (%r11,%rax,1),%ecx
ffff800000104afd:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
ffff800000104b00:	48 83 c0 01          	add    $0x1,%rax
ffff800000104b04:	49 39 c0             	cmp    %rax,%r8
ffff800000104b07:	75 ef                	jne    ffff800000104af8 <vsprintf+0x3d8>
ffff800000104b09:	41 89 f0             	mov    %esi,%r8d
ffff800000104b0c:	49 01 f8             	add    %rdi,%r8
ffff800000104b0f:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104b13:	39 f2                	cmp    %esi,%edx
ffff800000104b15:	0f 8e 12 04 00 00    	jle    ffff800000104f2d <vsprintf+0x80d>
ffff800000104b1b:	29 f2                	sub    %esi,%edx
ffff800000104b1d:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104b20:	49 8d 7c 00 01       	lea    0x1(%r8,%rax,1),%rdi
ffff800000104b25:	a8 01                	test   $0x1,%al
ffff800000104b27:	75 17                	jne    ffff800000104b40 <vsprintf+0x420>
ffff800000104b29:	49 83 c0 01          	add    $0x1,%r8
ffff800000104b2d:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104b32:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104b35:	0f 84 be fe ff ff    	je     ffff8000001049f9 <vsprintf+0x2d9>
ffff800000104b3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104b40:	41 c6 00 20          	movb   $0x20,(%r8)
ffff800000104b44:	49 83 c0 02          	add    $0x2,%r8
ffff800000104b48:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104b4d:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104b50:	75 ee                	jne    ffff800000104b40 <vsprintf+0x420>
ffff800000104b52:	e9 a2 fe ff ff       	jmp    ffff8000001049f9 <vsprintf+0x2d9>
ffff800000104b57:	49 89 da             	mov    %rbx,%r10
ffff800000104b5a:	83 fa ff             	cmp    $0xffffffff,%edx
ffff800000104b5d:	0f 84 1a 01 00 00    	je     ffff800000104c7d <vsprintf+0x55d>
ffff800000104b63:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104b67:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b6a:	0f 87 cb 00 00 00    	ja     ffff800000104c3b <vsprintf+0x51b>
ffff800000104b70:	89 c1                	mov    %eax,%ecx
ffff800000104b72:	83 c0 08             	add    $0x8,%eax
ffff800000104b75:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104b7a:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104b7e:	48 8b 31             	mov    (%rcx),%rsi
ffff800000104b81:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104b86:	89 d1                	mov    %edx,%ecx
ffff800000104b88:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104b8d:	e9 4c fe ff ff       	jmp    ffff8000001049de <vsprintf+0x2be>
ffff800000104b92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104b98:	45 31 c0             	xor    %r8d,%r8d
ffff800000104b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104ba0:	83 e8 30             	sub    $0x30,%eax
ffff800000104ba3:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
ffff800000104ba7:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104bab:	0f be c0             	movsbl %al,%eax
ffff800000104bae:	44 8d 04 70          	lea    (%rax,%rsi,2),%r8d
ffff800000104bb2:	0f be 01             	movsbl (%rcx),%eax
ffff800000104bb5:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff800000104bb8:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000104bbc:	76 e2                	jbe    ffff800000104ba0 <vsprintf+0x480>
ffff800000104bbe:	31 f6                	xor    %esi,%esi
ffff800000104bc0:	45 85 c0             	test   %r8d,%r8d
ffff800000104bc3:	48 89 cb             	mov    %rcx,%rbx
ffff800000104bc6:	44 0f 48 c6          	cmovs  %esi,%r8d
ffff800000104bca:	e9 08 fc ff ff       	jmp    ffff8000001047d7 <vsprintf+0xb7>
ffff800000104bcf:	90                   	nop
ffff800000104bd0:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104bd4:	48 8d 73 02          	lea    0x2(%rbx),%rsi
ffff800000104bd8:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104bdb:	0f 87 d1 01 00 00    	ja     ffff800000104db2 <vsprintf+0x692>
ffff800000104be1:	89 c1                	mov    %eax,%ecx
ffff800000104be3:	83 c0 08             	add    $0x8,%eax
ffff800000104be6:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104beb:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104bef:	44 8b 01             	mov    (%rcx),%r8d
ffff800000104bf2:	31 c0                	xor    %eax,%eax
ffff800000104bf4:	45 85 c0             	test   %r8d,%r8d
ffff800000104bf7:	44 0f 48 c0          	cmovs  %eax,%r8d
ffff800000104bfb:	0f be 43 02          	movsbl 0x2(%rbx),%eax
ffff800000104bff:	48 89 f3             	mov    %rsi,%rbx
ffff800000104c02:	e9 d0 fb ff ff       	jmp    ffff8000001047d7 <vsprintf+0xb7>
ffff800000104c07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff800000104c0e:	00 00 
ffff800000104c10:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104c15:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104c19:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104c1e:	e9 75 fd ff ff       	jmp    ffff800000104998 <vsprintf+0x278>
ffff800000104c23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104c28:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104c2d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104c31:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104c36:	e9 95 fd ff ff       	jmp    ffff8000001049d0 <vsprintf+0x2b0>
ffff800000104c3b:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104c40:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104c44:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104c49:	e9 30 ff ff ff       	jmp    ffff800000104b7e <vsprintf+0x45e>
ffff800000104c4e:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104c53:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104c57:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104c5c:	e9 4a fe ff ff       	jmp    ffff800000104aab <vsprintf+0x38b>
ffff800000104c61:	89 c1                	mov    %eax,%ecx
ffff800000104c63:	83 c0 08             	add    $0x8,%eax
ffff800000104c66:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104c6b:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104c6f:	e9 cf fd ff ff       	jmp    ffff800000104a43 <vsprintf+0x323>
ffff800000104c74:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104c78:	e9 33 fc ff ff       	jmp    ffff8000001048b0 <vsprintf+0x190>
ffff800000104c7d:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104c81:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104c86:	e9 d8 fe ff ff       	jmp    ffff800000104b63 <vsprintf+0x443>
ffff800000104c8b:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104c8e:	48 89 c1             	mov    %rax,%rcx
ffff800000104c91:	48 01 f8             	add    %rdi,%rax
ffff800000104c94:	83 fa 01             	cmp    $0x1,%edx
ffff800000104c97:	0f 8e 81 02 00 00    	jle    ffff800000104f1e <vsprintf+0x7fe>
ffff800000104c9d:	48 89 c2             	mov    %rax,%rdx
ffff800000104ca0:	48 29 fa             	sub    %rdi,%rdx
ffff800000104ca3:	83 e2 01             	and    $0x1,%edx
ffff800000104ca6:	74 10                	je     ffff800000104cb8 <vsprintf+0x598>
ffff800000104ca8:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104cac:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104cb0:	48 39 f8             	cmp    %rdi,%rax
ffff800000104cb3:	74 13                	je     ffff800000104cc8 <vsprintf+0x5a8>
ffff800000104cb5:	0f 1f 00             	nopl   (%rax)
ffff800000104cb8:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104cbb:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104cbf:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104cc3:	48 39 f8             	cmp    %rdi,%rax
ffff800000104cc6:	75 f0                	jne    ffff800000104cb8 <vsprintf+0x598>
ffff800000104cc8:	31 d2                	xor    %edx,%edx
ffff800000104cca:	e9 59 fd ff ff       	jmp    ffff800000104a28 <vsprintf+0x308>
ffff800000104ccf:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104cd3:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104cd6:	0f 84 f9 00 00 00    	je     ffff800000104dd5 <vsprintf+0x6b5>
ffff800000104cdc:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104cdf:	0f 87 59 01 00 00    	ja     ffff800000104e3e <vsprintf+0x71e>
ffff800000104ce5:	89 d0                	mov    %edx,%eax
ffff800000104ce7:	83 c2 08             	add    $0x8,%edx
ffff800000104cea:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104cef:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104cf3:	48 8b 00             	mov    (%rax),%rax
ffff800000104cf6:	48 89 fa             	mov    %rdi,%rdx
ffff800000104cf9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104cfd:	4c 29 ea             	sub    %r13,%rdx
ffff800000104d00:	89 10                	mov    %edx,(%rax)
ffff800000104d02:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104d07:	e9 71 fa ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104d0c:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104d10:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104d13:	0f 84 ec 00 00 00    	je     ffff800000104e05 <vsprintf+0x6e5>
ffff800000104d19:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d1c:	0f 87 2f 01 00 00    	ja     ffff800000104e51 <vsprintf+0x731>
ffff800000104d22:	89 c8                	mov    %ecx,%eax
ffff800000104d24:	83 c1 08             	add    $0x8,%ecx
ffff800000104d27:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d2c:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d30:	89 d1                	mov    %edx,%ecx
ffff800000104d32:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104d37:	8b 30                	mov    (%rax),%esi
ffff800000104d39:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104d3e:	e9 9b fc ff ff       	jmp    ffff8000001049de <vsprintf+0x2be>
ffff800000104d43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104d48:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d4b:	77 78                	ja     ffff800000104dc5 <vsprintf+0x6a5>
ffff800000104d4d:	89 c8                	mov    %ecx,%eax
ffff800000104d4f:	83 c1 08             	add    $0x8,%ecx
ffff800000104d52:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d57:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d5b:	48 8b 30             	mov    (%rax),%rsi
ffff800000104d5e:	89 d1                	mov    %edx,%ecx
ffff800000104d60:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104d65:	48 b8 80 b4 ff ff ff 	movabs $0xffffffffffffb480,%rax
ffff800000104d6c:	ff ff ff 
ffff800000104d6f:	4c 01 f0             	add    %r14,%rax
ffff800000104d72:	ff d0                	call   *%rax
ffff800000104d74:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104d78:	48 89 c7             	mov    %rax,%rdi
ffff800000104d7b:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104d7f:	e9 f9 f9 ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104d84:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104d88:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d8b:	0f 87 9a 00 00 00    	ja     ffff800000104e2b <vsprintf+0x70b>
ffff800000104d91:	89 c8                	mov    %ecx,%eax
ffff800000104d93:	83 c1 08             	add    $0x8,%ecx
ffff800000104d96:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d9b:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d9f:	89 d1                	mov    %edx,%ecx
ffff800000104da1:	48 8b 30             	mov    (%rax),%rsi
ffff800000104da4:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104da9:	eb ba                	jmp    ffff800000104d65 <vsprintf+0x645>
ffff800000104dab:	31 c0                	xor    %eax,%eax
ffff800000104dad:	e9 03 fb ff ff       	jmp    ffff8000001048b5 <vsprintf+0x195>
ffff800000104db2:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104db7:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104dbb:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104dc0:	e9 2a fe ff ff       	jmp    ffff800000104bef <vsprintf+0x4cf>
ffff800000104dc5:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104dca:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104dce:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104dd3:	eb 86                	jmp    ffff800000104d5b <vsprintf+0x63b>
ffff800000104dd5:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104dd8:	0f 87 ca 00 00 00    	ja     ffff800000104ea8 <vsprintf+0x788>
ffff800000104dde:	89 d0                	mov    %edx,%eax
ffff800000104de0:	83 c2 08             	add    $0x8,%edx
ffff800000104de3:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104de8:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104dec:	48 8b 00             	mov    (%rax),%rax
ffff800000104def:	48 89 fa             	mov    %rdi,%rdx
ffff800000104df2:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104df6:	4c 29 ea             	sub    %r13,%rdx
ffff800000104df9:	48 89 10             	mov    %rdx,(%rax)
ffff800000104dfc:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104e00:	e9 78 f9 ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104e05:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104e08:	0f 86 ad 00 00 00    	jbe    ffff800000104ebb <vsprintf+0x79b>
ffff800000104e0e:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e13:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e17:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e1c:	89 d1                	mov    %edx,%ecx
ffff800000104e1e:	48 8b 30             	mov    (%rax),%rsi
ffff800000104e21:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104e26:	e9 3a ff ff ff       	jmp    ffff800000104d65 <vsprintf+0x645>
ffff800000104e2b:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e30:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e34:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e39:	e9 61 ff ff ff       	jmp    ffff800000104d9f <vsprintf+0x67f>
ffff800000104e3e:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e43:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104e47:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104e4c:	e9 a2 fe ff ff       	jmp    ffff800000104cf3 <vsprintf+0x5d3>
ffff800000104e51:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e56:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e5a:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e5f:	e9 cc fe ff ff       	jmp    ffff800000104d30 <vsprintf+0x610>
ffff800000104e64:	39 f2                	cmp    %esi,%edx
ffff800000104e66:	0f 8e b9 00 00 00    	jle    ffff800000104f25 <vsprintf+0x805>
ffff800000104e6c:	83 ea 01             	sub    $0x1,%edx
ffff800000104e6f:	29 f2                	sub    %esi,%edx
ffff800000104e71:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff800000104e76:	83 e2 01             	and    $0x1,%edx
ffff800000104e79:	75 15                	jne    ffff800000104e90 <vsprintf+0x770>
ffff800000104e7b:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104e7f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e83:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e86:	74 18                	je     ffff800000104ea0 <vsprintf+0x780>
ffff800000104e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff800000104e8f:	00 
ffff800000104e90:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104e93:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104e97:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e9b:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e9e:	75 f0                	jne    ffff800000104e90 <vsprintf+0x770>
ffff800000104ea0:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff800000104ea3:	e9 40 fc ff ff       	jmp    ffff800000104ae8 <vsprintf+0x3c8>
ffff800000104ea8:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104ead:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104eb1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104eb6:	e9 31 ff ff ff       	jmp    ffff800000104dec <vsprintf+0x6cc>
ffff800000104ebb:	89 c8                	mov    %ecx,%eax
ffff800000104ebd:	83 c1 08             	add    $0x8,%ecx
ffff800000104ec0:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104ec5:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104ec9:	e9 4e ff ff ff       	jmp    ffff800000104e1c <vsprintf+0x6fc>
ffff800000104ece:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ed2:	41 83 c9 02          	or     $0x2,%r9d
ffff800000104ed6:	49 89 da             	mov    %rbx,%r10
ffff800000104ed9:	e9 db fa ff ff       	jmp    ffff8000001049b9 <vsprintf+0x299>
ffff800000104ede:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ee2:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104ee6:	49 89 da             	mov    %rbx,%r10
ffff800000104ee9:	e9 93 fa ff ff       	jmp    ffff800000104981 <vsprintf+0x261>
ffff800000104eee:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ef2:	49 89 da             	mov    %rbx,%r10
ffff800000104ef5:	e9 bf fa ff ff       	jmp    ffff8000001049b9 <vsprintf+0x299>
ffff800000104efa:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104efe:	49 89 da             	mov    %rbx,%r10
ffff800000104f01:	e9 13 fe ff ff       	jmp    ffff800000104d19 <vsprintf+0x5f9>
ffff800000104f06:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104f0a:	49 89 da             	mov    %rbx,%r10
ffff800000104f0d:	e9 ca fd ff ff       	jmp    ffff800000104cdc <vsprintf+0x5bc>
ffff800000104f12:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104f16:	49 89 da             	mov    %rbx,%r10
ffff800000104f19:	e9 63 fa ff ff       	jmp    ffff800000104981 <vsprintf+0x261>
ffff800000104f1e:	89 ca                	mov    %ecx,%edx
ffff800000104f20:	e9 03 fb ff ff       	jmp    ffff800000104a28 <vsprintf+0x308>
ffff800000104f25:	83 ea 01             	sub    $0x1,%edx
ffff800000104f28:	e9 bb fb ff ff       	jmp    ffff800000104ae8 <vsprintf+0x3c8>
ffff800000104f2d:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104f32:	4c 89 c7             	mov    %r8,%rdi
ffff800000104f35:	e9 43 f8 ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104f3a:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104f3f:	48 89 f7             	mov    %rsi,%rdi
ffff800000104f42:	e9 36 f8 ff ff       	jmp    ffff80000010477d <vsprintf+0x5d>
ffff800000104f47:	49 89 f8             	mov    %rdi,%r8
ffff800000104f4a:	e9 c0 fb ff ff       	jmp    ffff800000104b0f <vsprintf+0x3ef>
ffff800000104f4f:	31 f6                	xor    %esi,%esi
ffff800000104f51:	e9 78 fb ff ff       	jmp    ffff800000104ace <vsprintf+0x3ae>
ffff800000104f56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff800000104f5d:	00 00 00 

ffff800000104f60 <color_printk>:
ffff800000104f60:	f3 0f 1e fa          	endbr64
ffff800000104f64:	49 bb 7c 3d 00 00 00 	movabs $0x3d7c,%r11
ffff800000104f6b:	00 00 00 
ffff800000104f6e:	41 57                	push   %r15
ffff800000104f70:	41 56                	push   %r14
ffff800000104f72:	41 55                	push   %r13
ffff800000104f74:	41 54                	push   %r12
ffff800000104f76:	4c 8d 25 e7 ff ff ff 	lea    -0x19(%rip),%r12        # ffff800000104f64 <color_printk+0x4>
ffff800000104f7d:	55                   	push   %rbp
ffff800000104f7e:	4d 01 dc             	add    %r11,%r12
ffff800000104f81:	89 f5                	mov    %esi,%ebp
ffff800000104f83:	48 89 d6             	mov    %rdx,%rsi
ffff800000104f86:	53                   	push   %rbx
ffff800000104f87:	89 fb                	mov    %edi,%ebx
ffff800000104f89:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104f90:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
ffff800000104f95:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
ffff800000104f9a:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
ffff800000104f9f:	84 c0                	test   %al,%al
ffff800000104fa1:	74 3d                	je     ffff800000104fe0 <color_printk+0x80>
ffff800000104fa3:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
ffff800000104fa8:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
ffff800000104faf:	00 
ffff800000104fb0:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
ffff800000104fb7:	00 
ffff800000104fb8:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
ffff800000104fbf:	00 
ffff800000104fc0:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
ffff800000104fc7:	00 
ffff800000104fc8:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
ffff800000104fcf:	00 
ffff800000104fd0:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
ffff800000104fd7:	00 
ffff800000104fd8:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
ffff800000104fdf:	00 
ffff800000104fe0:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
ffff800000104fe7:	00 
ffff800000104fe8:	c7 44 24 28 18 00 00 	movl   $0x18,0x28(%rsp)
ffff800000104fef:	00 
ffff800000104ff0:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
ffff800000104ff5:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
ffff800000104ffa:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
ffff800000104fff:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
ffff800000105004:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010500b:	00 00 00 
ffff80000010500e:	4c 01 e0             	add    %r12,%rax
ffff800000105011:	c7 44 24 2c 30 00 00 	movl   $0x30,0x2c(%rsp)
ffff800000105018:	00 
ffff800000105019:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff80000010501e:	48 89 c7             	mov    %rax,%rdi
ffff800000105021:	48 b8 40 ba ff ff ff 	movabs $0xffffffffffffba40,%rax
ffff800000105028:	ff ff ff 
ffff80000010502b:	4c 01 e0             	add    %r12,%rax
ffff80000010502e:	ff d0                	call   *%rax
ffff800000105030:	41 89 c5             	mov    %eax,%r13d
ffff800000105033:	85 c0                	test   %eax,%eax
ffff800000105035:	0f 8e 6f 01 00 00    	jle    ffff8000001051aa <color_printk+0x24a>
ffff80000010503b:	49 b8 20 10 00 00 00 	movabs $0x1020,%r8
ffff800000105042:	00 00 00 
ffff800000105045:	45 31 d2             	xor    %r10d,%r10d
ffff800000105048:	45 31 db             	xor    %r11d,%r11d
ffff80000010504b:	4b 8b 44 20 18       	mov    0x18(%r8,%r12,1),%rax
ffff800000105050:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000105055:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff80000010505a:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010505e:	48 89 04 24          	mov    %rax,(%rsp)
ffff800000105062:	48 b8 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rax
ffff800000105069:	ff ff ff 
ffff80000010506c:	4c 01 e0             	add    %r12,%rax
ffff80000010506f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
ffff800000105074:	48 b8 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rax
ffff80000010507b:	ff ff ff 
ffff80000010507e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
ffff800000105083:	48 b8 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rax
ffff80000010508a:	ff ff ff 
ffff80000010508d:	4a 8d 3c 20          	lea    (%rax,%r12,1),%rdi
ffff800000105091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105098:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff80000010509d:	45 85 d2             	test   %r10d,%r10d
ffff8000001050a0:	0f 8f 19 01 00 00    	jg     ffff8000001051bf <color_printk+0x25f>
ffff8000001050a6:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff8000001050ab:	49 63 c3             	movslq %r11d,%rax
ffff8000001050ae:	41 83 c3 01          	add    $0x1,%r11d
ffff8000001050b2:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
ffff8000001050b6:	3c 0a                	cmp    $0xa,%al
ffff8000001050b8:	0f 84 0b 01 00 00    	je     ffff8000001051c9 <color_printk+0x269>
ffff8000001050be:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff8000001050c3:	3c 08                	cmp    $0x8,%al
ffff8000001050c5:	0f 84 14 01 00 00    	je     ffff8000001051df <color_printk+0x27f>
ffff8000001050cb:	3c 09                	cmp    $0x9,%al
ffff8000001050cd:	0f 85 a0 01 00 00    	jne    ffff800000105273 <color_printk+0x313>
ffff8000001050d3:	44 8d 52 08          	lea    0x8(%rdx),%r10d
ffff8000001050d7:	41 83 e2 f8          	and    $0xfffffff8,%r10d
ffff8000001050db:	41 29 d2             	sub    %edx,%r10d
ffff8000001050de:	41 0f af f6          	imul   %r14d,%esi
ffff8000001050e2:	4c 63 f9             	movslq %ecx,%r15
ffff8000001050e5:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001050e9:	41 0f af d1          	imul   %r9d,%edx
ffff8000001050ed:	49 c1 e7 02          	shl    $0x2,%r15
ffff8000001050f1:	0f af f1             	imul   %ecx,%esi
ffff8000001050f4:	48 63 d2             	movslq %edx,%rdx
ffff8000001050f7:	48 63 c6             	movslq %esi,%rax
ffff8000001050fa:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff8000001050ff:	48 8b 14 24          	mov    (%rsp),%rdx
ffff800000105103:	4c 8d 0c 82          	lea    (%rdx,%rax,4),%r9
ffff800000105107:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff80000010510c:	49 8d 34 04          	lea    (%r12,%rax,1),%rsi
ffff800000105110:	49 8d 41 e0          	lea    -0x20(%r9),%rax
ffff800000105114:	ba 00 01 00 00       	mov    $0x100,%edx
ffff800000105119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105120:	0f b6 0e             	movzbl (%rsi),%ecx
ffff800000105123:	d1 fa                	sar    $1,%edx
ffff800000105125:	85 d1                	test   %edx,%ecx
ffff800000105127:	89 d9                	mov    %ebx,%ecx
ffff800000105129:	0f 44 cd             	cmove  %ebp,%ecx
ffff80000010512c:	48 83 c0 04          	add    $0x4,%rax
ffff800000105130:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff800000105133:	4c 39 c8             	cmp    %r9,%rax
ffff800000105136:	75 e8                	jne    ffff800000105120 <color_printk+0x1c0>
ffff800000105138:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010513c:	4e 8d 0c 38          	lea    (%rax,%r15,1),%r9
ffff800000105140:	48 39 fe             	cmp    %rdi,%rsi
ffff800000105143:	75 cb                	jne    ffff800000105110 <color_printk+0x1b0>
ffff800000105145:	43 8b 44 20 08       	mov    0x8(%r8,%r12,1),%eax
ffff80000010514a:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010514e:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000105153:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff800000105158:	44 8d 78 01          	lea    0x1(%rax),%r15d
ffff80000010515c:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000105161:	47 89 7c 20 08       	mov    %r15d,0x8(%r8,%r12,1)
ffff800000105166:	89 c8                	mov    %ecx,%eax
ffff800000105168:	99                   	cltd
ffff800000105169:	41 f7 f9             	idiv   %r9d
ffff80000010516c:	44 39 f8             	cmp    %r15d,%eax
ffff80000010516f:	7f 11                	jg     ffff800000105182 <color_printk+0x222>
ffff800000105171:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff800000105178:	00 00 
ffff80000010517a:	83 c6 01             	add    $0x1,%esi
ffff80000010517d:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff800000105182:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff800000105187:	99                   	cltd
ffff800000105188:	41 f7 fe             	idiv   %r14d
ffff80000010518b:	39 f0                	cmp    %esi,%eax
ffff80000010518d:	7f 09                	jg     ffff800000105198 <color_printk+0x238>
ffff80000010518f:	43 c7 44 20 0c 00 00 	movl   $0x0,0xc(%r8,%r12,1)
ffff800000105196:	00 00 
ffff800000105198:	45 39 dd             	cmp    %r11d,%r13d
ffff80000010519b:	0f 8f f7 fe ff ff    	jg     ffff800000105098 <color_printk+0x138>
ffff8000001051a1:	45 85 d2             	test   %r10d,%r10d
ffff8000001051a4:	0f 85 ee fe ff ff    	jne    ffff800000105098 <color_printk+0x138>
ffff8000001051aa:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
ffff8000001051b1:	44 89 e8             	mov    %r13d,%eax
ffff8000001051b4:	5b                   	pop    %rbx
ffff8000001051b5:	5d                   	pop    %rbp
ffff8000001051b6:	41 5c                	pop    %r12
ffff8000001051b8:	41 5d                	pop    %r13
ffff8000001051ba:	41 5e                	pop    %r14
ffff8000001051bc:	41 5f                	pop    %r15
ffff8000001051be:	c3                   	ret
ffff8000001051bf:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff8000001051c4:	e9 15 ff ff ff       	jmp    ffff8000001050de <color_printk+0x17e>
ffff8000001051c9:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff8000001051d0:	00 00 
ffff8000001051d2:	83 c6 01             	add    $0x1,%esi
ffff8000001051d5:	45 31 ff             	xor    %r15d,%r15d
ffff8000001051d8:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff8000001051dd:	eb 87                	jmp    ffff800000105166 <color_printk+0x206>
ffff8000001051df:	83 ea 01             	sub    $0x1,%edx
ffff8000001051e2:	41 89 d7             	mov    %edx,%r15d
ffff8000001051e5:	0f 88 ff 00 00 00    	js     ffff8000001052ea <color_printk+0x38a>
ffff8000001051eb:	43 89 54 20 08       	mov    %edx,0x8(%r8,%r12,1)
ffff8000001051f0:	41 0f af f6          	imul   %r14d,%esi
ffff8000001051f4:	44 89 c8             	mov    %r9d,%eax
ffff8000001051f7:	48 63 d1             	movslq %ecx,%rdx
ffff8000001051fa:	41 0f af c7          	imul   %r15d,%eax
ffff8000001051fe:	48 c1 e2 02          	shl    $0x2,%rdx
ffff800000105202:	0f af ce             	imul   %esi,%ecx
ffff800000105205:	48 8b 34 24          	mov    (%rsp),%rsi
ffff800000105209:	48 98                	cltq
ffff80000010520b:	48 63 c9             	movslq %ecx,%rcx
ffff80000010520e:	48 8d 44 01 08       	lea    0x8(%rcx,%rax,1),%rax
ffff800000105213:	4c 8d 34 86          	lea    (%rsi,%rax,4),%r14
ffff800000105217:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff80000010521c:	4d 8d 0c 04          	lea    (%r12,%rax,1),%r9
ffff800000105220:	49 8d 46 e0          	lea    -0x20(%r14),%rax
ffff800000105224:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff800000105229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105230:	41 0f b6 31          	movzbl (%r9),%esi
ffff800000105234:	d1 f9                	sar    $1,%ecx
ffff800000105236:	85 ce                	test   %ecx,%esi
ffff800000105238:	89 de                	mov    %ebx,%esi
ffff80000010523a:	0f 44 f5             	cmove  %ebp,%esi
ffff80000010523d:	48 83 c0 04          	add    $0x4,%rax
ffff800000105241:	89 70 fc             	mov    %esi,-0x4(%rax)
ffff800000105244:	4c 39 f0             	cmp    %r14,%rax
ffff800000105247:	75 e7                	jne    ffff800000105230 <color_printk+0x2d0>
ffff800000105249:	49 83 c1 01          	add    $0x1,%r9
ffff80000010524d:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
ffff800000105251:	49 39 f9             	cmp    %rdi,%r9
ffff800000105254:	75 ca                	jne    ffff800000105220 <color_printk+0x2c0>
ffff800000105256:	47 8b 7c 20 08       	mov    0x8(%r8,%r12,1),%r15d
ffff80000010525b:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010525f:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000105264:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff800000105269:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff80000010526e:	e9 f3 fe ff ff       	jmp    ffff800000105166 <color_printk+0x206>
ffff800000105273:	41 0f af d1          	imul   %r9d,%edx
ffff800000105277:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
ffff80000010527c:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000105280:	4c 01 f8             	add    %r15,%rax
ffff800000105283:	4c 63 f9             	movslq %ecx,%r15
ffff800000105286:	4c 63 ca             	movslq %edx,%r9
ffff800000105289:	44 89 f2             	mov    %r14d,%edx
ffff80000010528c:	49 c1 e7 02          	shl    $0x2,%r15
ffff800000105290:	4c 8d 70 10          	lea    0x10(%rax),%r14
ffff800000105294:	0f af d6             	imul   %esi,%edx
ffff800000105297:	48 8b 34 24          	mov    (%rsp),%rsi
ffff80000010529b:	0f af d1             	imul   %ecx,%edx
ffff80000010529e:	48 63 d2             	movslq %edx,%rdx
ffff8000001052a1:	49 8d 54 11 08       	lea    0x8(%r9,%rdx,1),%rdx
ffff8000001052a6:	4c 8d 0c 96          	lea    (%rsi,%rdx,4),%r9
ffff8000001052aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001052b0:	49 8d 51 e0          	lea    -0x20(%r9),%rdx
ffff8000001052b4:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff8000001052b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001052c0:	0f b6 30             	movzbl (%rax),%esi
ffff8000001052c3:	d1 f9                	sar    $1,%ecx
ffff8000001052c5:	85 ce                	test   %ecx,%esi
ffff8000001052c7:	89 de                	mov    %ebx,%esi
ffff8000001052c9:	0f 44 f5             	cmove  %ebp,%esi
ffff8000001052cc:	48 83 c2 04          	add    $0x4,%rdx
ffff8000001052d0:	89 72 fc             	mov    %esi,-0x4(%rdx)
ffff8000001052d3:	4c 39 ca             	cmp    %r9,%rdx
ffff8000001052d6:	75 e8                	jne    ffff8000001052c0 <color_printk+0x360>
ffff8000001052d8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001052dc:	4e 8d 0c 3a          	lea    (%rdx,%r15,1),%r9
ffff8000001052e0:	4c 39 f0             	cmp    %r14,%rax
ffff8000001052e3:	75 cb                	jne    ffff8000001052b0 <color_printk+0x350>
ffff8000001052e5:	e9 5b fe ff ff       	jmp    ffff800000105145 <color_printk+0x1e5>
ffff8000001052ea:	89 c8                	mov    %ecx,%eax
ffff8000001052ec:	99                   	cltd
ffff8000001052ed:	41 f7 f9             	idiv   %r9d
ffff8000001052f0:	83 e8 01             	sub    $0x1,%eax
ffff8000001052f3:	41 0f af c1          	imul   %r9d,%eax
ffff8000001052f7:	83 ee 01             	sub    $0x1,%esi
ffff8000001052fa:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff8000001052ff:	43 89 44 20 08       	mov    %eax,0x8(%r8,%r12,1)
ffff800000105304:	41 89 c7             	mov    %eax,%r15d
ffff800000105307:	0f 89 e3 fe ff ff    	jns    ffff8000001051f0 <color_printk+0x290>
ffff80000010530d:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff800000105312:	99                   	cltd
ffff800000105313:	41 f7 fe             	idiv   %r14d
ffff800000105316:	83 e8 01             	sub    $0x1,%eax
ffff800000105319:	41 0f af c6          	imul   %r14d,%eax
ffff80000010531d:	43 89 44 20 0c       	mov    %eax,0xc(%r8,%r12,1)
ffff800000105322:	89 c6                	mov    %eax,%esi
ffff800000105324:	e9 c7 fe ff ff       	jmp    ffff8000001051f0 <color_printk+0x290>
