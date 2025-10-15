
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 50 00 00 	lgdt   0x5050(%rip)        # ffff800000105068 <GDT_END>
ffff800000100018:	0f 01 1d 53 60 00 00 	lidt   0x6053(%rip)        # ffff800000106072 <IDT_END>
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
ffff80000010400d:	49 bb fa 40 00 00 00 	movabs $0x40fa,%r11
ffff800000104014:	00 00 00 
ffff800000104017:	4d 01 df             	add    %r11,%r15
ffff80000010401a:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff800000104021:	00 00 00 
ffff800000104024:	41 c7 04 07 a0 05 00 	movl   $0x5a0,(%r15,%rax,1)
ffff80000010402b:	00 
ffff80000010402c:	41 c7 44 07 04 84 03 	movl   $0x384,0x4(%r15,%rax,1)
ffff800000104033:	00 00 
ffff800000104035:	41 c7 44 07 08 00 00 	movl   $0x0,0x8(%r15,%rax,1)
ffff80000010403c:	00 00 
ffff80000010403e:	41 c7 44 07 0c 00 00 	movl   $0x0,0xc(%r15,%rax,1)
ffff800000104045:	00 00 
ffff800000104047:	41 c7 44 07 10 08 00 	movl   $0x8,0x10(%r15,%rax,1)
ffff80000010404e:	00 00 
ffff800000104050:	41 c7 44 07 14 10 00 	movl   $0x10,0x14(%r15,%rax,1)
ffff800000104057:	00 00 
ffff800000104059:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff800000104060:	80 ff ff 
ffff800000104063:	4a 89 74 38 18       	mov    %rsi,0x18(%rax,%r15,1)
ffff800000104068:	49 c7 44 07 20 00 1a 	movq   $0x4f1a00,0x20(%r15,%rax,1)
ffff80000010406f:	4f 00 
ffff800000104071:	48 b8 65 cb ff ff ff 	movabs $0xffffffffffffcb65,%rax
ffff800000104078:	ff ff ff 
ffff80000010407b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010407f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104084:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104089:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010408e:	48 b9 25 c9 ff ff ff 	movabs $0xffffffffffffc925,%rcx
ffff800000104095:	ff ff ff 
ffff800000104098:	4c 01 f9             	add    %r15,%rcx
ffff80000010409b:	ff d1                	call   *%rcx
ffff80000010409d:	48 b8 76 cb ff ff ff 	movabs $0xffffffffffffcb76,%rax
ffff8000001040a4:	ff ff ff 
ffff8000001040a7:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040b0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040ba:	48 b9 25 c9 ff ff ff 	movabs $0xffffffffffffc925,%rcx
ffff8000001040c1:	ff ff ff 
ffff8000001040c4:	4c 01 f9             	add    %r15,%rcx
ffff8000001040c7:	ff d1                	call   *%rcx
ffff8000001040c9:	48 b8 d0 cb ff ff ff 	movabs $0xffffffffffffcbd0,%rax
ffff8000001040d0:	ff ff ff 
ffff8000001040d3:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040d7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040dc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040e1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040e6:	48 b9 25 c9 ff ff ff 	movabs $0xffffffffffffc925,%rcx
ffff8000001040ed:	ff ff ff 
ffff8000001040f0:	4c 01 f9             	add    %r15,%rcx
ffff8000001040f3:	ff d1                	call   *%rcx
ffff8000001040f5:	48 b8 28 cc ff ff ff 	movabs $0xffffffffffffcc28,%rax
ffff8000001040fc:	ff ff ff 
ffff8000001040ff:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104103:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104108:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010410d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104112:	48 b9 25 c9 ff ff ff 	movabs $0xffffffffffffc925,%rcx
ffff800000104119:	ff ff ff 
ffff80000010411c:	4c 01 f9             	add    %r15,%rcx
ffff80000010411f:	ff d1                	call   *%rcx
ffff800000104121:	48 b8 60 cc ff ff ff 	movabs $0xffffffffffffcc60,%rax
ffff800000104128:	ff ff ff 
ffff80000010412b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010412f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104134:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104139:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010413e:	48 b9 25 c9 ff ff ff 	movabs $0xffffffffffffc925,%rcx
ffff800000104145:	ff ff ff 
ffff800000104148:	4c 01 f9             	add    %r15,%rcx
ffff80000010414b:	ff d1                	call   *%rcx
ffff80000010414d:	eb fe                	jmp    ffff80000010414d <Start_Kernel+0x14d>

ffff80000010414f <number>:
ffff80000010414f:	f3 0f 1e fa          	endbr64
ffff800000104153:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff800000104153 <number+0x4>
ffff80000010415a:	48 89 f0             	mov    %rsi,%rax
ffff80000010415d:	89 d6                	mov    %edx,%esi
ffff80000010415f:	41 57                	push   %r15
ffff800000104161:	49 bb ad 3f 00 00 00 	movabs $0x3fad,%r11
ffff800000104168:	00 00 00 
ffff80000010416b:	41 56                	push   %r14
ffff80000010416d:	48 ba a7 cb ff ff ff 	movabs $0xffffffffffffcba7,%rdx
ffff800000104174:	ff ff ff 
ffff800000104177:	4d 01 da             	add    %r11,%r10
ffff80000010417a:	41 55                	push   %r13
ffff80000010417c:	41 54                	push   %r12
ffff80000010417e:	55                   	push   %rbp
ffff80000010417f:	49 8d 2c 12          	lea    (%r10,%rdx,1),%rbp
ffff800000104183:	53                   	push   %rbx
ffff800000104184:	41 f7 c1 40 00 00 00 	test   $0x40,%r9d
ffff80000010418b:	75 0e                	jne    ffff80000010419b <number+0x4c>
ffff80000010418d:	48 ba 82 cb ff ff ff 	movabs $0xffffffffffffcb82,%rdx
ffff800000104194:	ff ff ff 
ffff800000104197:	49 8d 2c 12          	lea    (%r10,%rdx,1),%rbp
ffff80000010419b:	44 89 cb             	mov    %r9d,%ebx
ffff80000010419e:	83 e3 10             	and    $0x10,%ebx
ffff8000001041a1:	89 5c 24 bc          	mov    %ebx,-0x44(%rsp)
ffff8000001041a5:	74 09                	je     ffff8000001041b0 <number+0x61>
ffff8000001041a7:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff8000001041ab:	41 b2 20             	mov    $0x20,%r10b
ffff8000001041ae:	eb 14                	jmp    ffff8000001041c4 <number+0x75>
ffff8000001041b0:	44 89 ca             	mov    %r9d,%edx
ffff8000001041b3:	83 e2 01             	and    $0x1,%edx
ffff8000001041b6:	83 fa 01             	cmp    $0x1,%edx
ffff8000001041b9:	45 19 d2             	sbb    %r10d,%r10d
ffff8000001041bc:	41 83 e2 f0          	and    $0xfffffff0,%r10d
ffff8000001041c0:	41 83 c2 30          	add    $0x30,%r10d
ffff8000001041c4:	41 f7 c1 02 00 00 00 	test   $0x2,%r9d
ffff8000001041cb:	74 0d                	je     ffff8000001041da <number+0x8b>
ffff8000001041cd:	48 85 c0             	test   %rax,%rax
ffff8000001041d0:	79 08                	jns    ffff8000001041da <number+0x8b>
ffff8000001041d2:	48 f7 d8             	neg    %rax
ffff8000001041d5:	41 b3 2d             	mov    $0x2d,%r11b
ffff8000001041d8:	eb 1a                	jmp    ffff8000001041f4 <number+0xa5>
ffff8000001041da:	41 f7 c1 04 00 00 00 	test   $0x4,%r9d
ffff8000001041e1:	75 0e                	jne    ffff8000001041f1 <number+0xa2>
ffff8000001041e3:	45 89 cb             	mov    %r9d,%r11d
ffff8000001041e6:	41 83 e3 08          	and    $0x8,%r11d
ffff8000001041ea:	74 0a                	je     ffff8000001041f6 <number+0xa7>
ffff8000001041ec:	41 b3 20             	mov    $0x20,%r11b
ffff8000001041ef:	eb 03                	jmp    ffff8000001041f4 <number+0xa5>
ffff8000001041f1:	41 b3 2b             	mov    $0x2b,%r11b
ffff8000001041f4:	ff c9                	dec    %ecx
ffff8000001041f6:	45 89 cd             	mov    %r9d,%r13d
ffff8000001041f9:	41 83 e5 20          	and    $0x20,%r13d
ffff8000001041fd:	74 11                	je     ffff800000104210 <number+0xc1>
ffff8000001041ff:	83 fe 10             	cmp    $0x10,%esi
ffff800000104202:	75 05                	jne    ffff800000104209 <number+0xba>
ffff800000104204:	83 e9 02             	sub    $0x2,%ecx
ffff800000104207:	eb 07                	jmp    ffff800000104210 <number+0xc1>
ffff800000104209:	83 fe 08             	cmp    $0x8,%esi
ffff80000010420c:	75 02                	jne    ffff800000104210 <number+0xc1>
ffff80000010420e:	ff c9                	dec    %ecx
ffff800000104210:	48 85 c0             	test   %rax,%rax
ffff800000104213:	75 0c                	jne    ffff800000104221 <number+0xd2>
ffff800000104215:	c6 44 24 ce 30       	movb   $0x30,-0x32(%rsp)
ffff80000010421a:	b8 01 00 00 00       	mov    $0x1,%eax
ffff80000010421f:	eb 2f                	jmp    ffff800000104250 <number+0x101>
ffff800000104221:	bb 01 00 00 00       	mov    $0x1,%ebx
ffff800000104226:	45 31 ff             	xor    %r15d,%r15d
ffff800000104229:	4c 8d 74 24 cd       	lea    -0x33(%rsp),%r14
ffff80000010422e:	4c 63 e6             	movslq %esi,%r12
ffff800000104231:	44 89 fa             	mov    %r15d,%edx
ffff800000104234:	49 f7 f4             	div    %r12
ffff800000104237:	48 63 d2             	movslq %edx,%rdx
ffff80000010423a:	8a 54 15 00          	mov    0x0(%rbp,%rdx,1),%dl
ffff80000010423e:	41 88 14 1e          	mov    %dl,(%r14,%rbx,1)
ffff800000104242:	48 89 da             	mov    %rbx,%rdx
ffff800000104245:	48 ff c3             	inc    %rbx
ffff800000104248:	48 85 c0             	test   %rax,%rax
ffff80000010424b:	75 e4                	jne    ffff800000104231 <number+0xe2>
ffff80000010424d:	48 63 c2             	movslq %edx,%rax
ffff800000104250:	44 39 c0             	cmp    %r8d,%eax
ffff800000104253:	44 0f 4d c0          	cmovge %eax,%r8d
ffff800000104257:	44 29 c1             	sub    %r8d,%ecx
ffff80000010425a:	41 83 e1 11          	and    $0x11,%r9d
ffff80000010425e:	75 27                	jne    ffff800000104287 <number+0x138>
ffff800000104260:	31 d2                	xor    %edx,%edx
ffff800000104262:	41 89 c9             	mov    %ecx,%r9d
ffff800000104265:	41 29 d1             	sub    %edx,%r9d
ffff800000104268:	45 85 c9             	test   %r9d,%r9d
ffff80000010426b:	7e 09                	jle    ffff800000104276 <number+0x127>
ffff80000010426d:	c6 04 17 20          	movb   $0x20,(%rdi,%rdx,1)
ffff800000104271:	48 ff c2             	inc    %rdx
ffff800000104274:	eb ec                	jmp    ffff800000104262 <number+0x113>
ffff800000104276:	31 d2                	xor    %edx,%edx
ffff800000104278:	85 c9                	test   %ecx,%ecx
ffff80000010427a:	0f 49 d1             	cmovns %ecx,%edx
ffff80000010427d:	ff c9                	dec    %ecx
ffff80000010427f:	4c 63 ca             	movslq %edx,%r9
ffff800000104282:	29 d1                	sub    %edx,%ecx
ffff800000104284:	4c 01 cf             	add    %r9,%rdi
ffff800000104287:	45 84 db             	test   %r11b,%r11b
ffff80000010428a:	74 06                	je     ffff800000104292 <number+0x143>
ffff80000010428c:	44 88 1f             	mov    %r11b,(%rdi)
ffff80000010428f:	48 ff c7             	inc    %rdi
ffff800000104292:	45 85 ed             	test   %r13d,%r13d
ffff800000104295:	74 1f                	je     ffff8000001042b6 <number+0x167>
ffff800000104297:	83 fe 08             	cmp    $0x8,%esi
ffff80000010429a:	75 08                	jne    ffff8000001042a4 <number+0x155>
ffff80000010429c:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010429f:	48 ff c7             	inc    %rdi
ffff8000001042a2:	eb 12                	jmp    ffff8000001042b6 <number+0x167>
ffff8000001042a4:	83 fe 10             	cmp    $0x10,%esi
ffff8000001042a7:	75 0d                	jne    ffff8000001042b6 <number+0x167>
ffff8000001042a9:	8a 55 21             	mov    0x21(%rbp),%dl
ffff8000001042ac:	c6 07 30             	movb   $0x30,(%rdi)
ffff8000001042af:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001042b3:	88 57 ff             	mov    %dl,-0x1(%rdi)
ffff8000001042b6:	83 7c 24 bc 00       	cmpl   $0x0,-0x44(%rsp)
ffff8000001042bb:	75 24                	jne    ffff8000001042e1 <number+0x192>
ffff8000001042bd:	31 d2                	xor    %edx,%edx
ffff8000001042bf:	89 ce                	mov    %ecx,%esi
ffff8000001042c1:	29 d6                	sub    %edx,%esi
ffff8000001042c3:	85 f6                	test   %esi,%esi
ffff8000001042c5:	7e 09                	jle    ffff8000001042d0 <number+0x181>
ffff8000001042c7:	44 88 14 17          	mov    %r10b,(%rdi,%rdx,1)
ffff8000001042cb:	48 ff c2             	inc    %rdx
ffff8000001042ce:	eb ef                	jmp    ffff8000001042bf <number+0x170>
ffff8000001042d0:	31 d2                	xor    %edx,%edx
ffff8000001042d2:	85 c9                	test   %ecx,%ecx
ffff8000001042d4:	0f 49 d1             	cmovns %ecx,%edx
ffff8000001042d7:	ff c9                	dec    %ecx
ffff8000001042d9:	48 63 f2             	movslq %edx,%rsi
ffff8000001042dc:	29 d1                	sub    %edx,%ecx
ffff8000001042de:	48 01 f7             	add    %rsi,%rdi
ffff8000001042e1:	31 d2                	xor    %edx,%edx
ffff8000001042e3:	44 89 c6             	mov    %r8d,%esi
ffff8000001042e6:	29 d6                	sub    %edx,%esi
ffff8000001042e8:	39 f0                	cmp    %esi,%eax
ffff8000001042ea:	7d 09                	jge    ffff8000001042f5 <number+0x1a6>
ffff8000001042ec:	c6 04 17 30          	movb   $0x30,(%rdi,%rdx,1)
ffff8000001042f0:	48 ff c2             	inc    %rdx
ffff8000001042f3:	eb ee                	jmp    ffff8000001042e3 <number+0x194>
ffff8000001042f5:	41 29 c0             	sub    %eax,%r8d
ffff8000001042f8:	48 89 c6             	mov    %rax,%rsi
ffff8000001042fb:	4c 01 c7             	add    %r8,%rdi
ffff8000001042fe:	4c 8d 44 24 cd       	lea    -0x33(%rsp),%r8
ffff800000104303:	48 89 fa             	mov    %rdi,%rdx
ffff800000104306:	85 c0                	test   %eax,%eax
ffff800000104308:	74 10                	je     ffff80000010431a <number+0x1cb>
ffff80000010430a:	45 8a 0c 00          	mov    (%r8,%rax,1),%r9b
ffff80000010430e:	48 ff c2             	inc    %rdx
ffff800000104311:	48 ff c8             	dec    %rax
ffff800000104314:	44 88 4a ff          	mov    %r9b,-0x1(%rdx)
ffff800000104318:	eb ec                	jmp    ffff800000104306 <number+0x1b7>
ffff80000010431a:	48 01 f7             	add    %rsi,%rdi
ffff80000010431d:	31 c0                	xor    %eax,%eax
ffff80000010431f:	89 ca                	mov    %ecx,%edx
ffff800000104321:	29 c2                	sub    %eax,%edx
ffff800000104323:	85 d2                	test   %edx,%edx
ffff800000104325:	7e 09                	jle    ffff800000104330 <number+0x1e1>
ffff800000104327:	c6 04 07 20          	movb   $0x20,(%rdi,%rax,1)
ffff80000010432b:	48 ff c0             	inc    %rax
ffff80000010432e:	eb ef                	jmp    ffff80000010431f <number+0x1d0>
ffff800000104330:	31 c0                	xor    %eax,%eax
ffff800000104332:	85 c9                	test   %ecx,%ecx
ffff800000104334:	5b                   	pop    %rbx
ffff800000104335:	5d                   	pop    %rbp
ffff800000104336:	0f 48 c8             	cmovs  %eax,%ecx
ffff800000104339:	41 5c                	pop    %r12
ffff80000010433b:	41 5d                	pop    %r13
ffff80000010433d:	41 5e                	pop    %r14
ffff80000010433f:	41 5f                	pop    %r15
ffff800000104341:	48 63 c9             	movslq %ecx,%rcx
ffff800000104344:	48 8d 04 0f          	lea    (%rdi,%rcx,1),%rax
ffff800000104348:	c3                   	ret

ffff800000104349 <putchar>:
ffff800000104349:	f3 0f 1e fa          	endbr64
ffff80000010434d:	0f af ce             	imul   %esi,%ecx
ffff800000104350:	53                   	push   %rbx
ffff800000104351:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010434d <putchar+0x4>
ffff800000104358:	0f b6 44 24 10       	movzbl 0x10(%rsp),%eax
ffff80000010435d:	49 bb b3 3d 00 00 00 	movabs $0x3db3,%r11
ffff800000104364:	00 00 00 
ffff800000104367:	49 89 fa             	mov    %rdi,%r10
ffff80000010436a:	48 63 d2             	movslq %edx,%rdx
ffff80000010436d:	48 bf 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdi
ffff800000104374:	ff ff ff 
ffff800000104377:	4c 01 db             	add    %r11,%rbx
ffff80000010437a:	48 c1 e0 04          	shl    $0x4,%rax
ffff80000010437e:	48 01 df             	add    %rbx,%rdi
ffff800000104381:	48 63 c9             	movslq %ecx,%rcx
ffff800000104384:	48 01 d1             	add    %rdx,%rcx
ffff800000104387:	48 01 f8             	add    %rdi,%rax
ffff80000010438a:	48 63 fe             	movslq %esi,%rdi
ffff80000010438d:	31 d2                	xor    %edx,%edx
ffff80000010438f:	48 c1 e7 02          	shl    $0x2,%rdi
ffff800000104393:	49 8d 34 8a          	lea    (%r10,%rcx,4),%rsi
ffff800000104397:	31 c9                	xor    %ecx,%ecx
ffff800000104399:	41 ba 00 01 00 00    	mov    $0x100,%r10d
ffff80000010439f:	44 0f b6 1c 10       	movzbl (%rax,%rdx,1),%r11d
ffff8000001043a4:	41 d1 fa             	sar    $1,%r10d
ffff8000001043a7:	45 85 d3             	test   %r10d,%r11d
ffff8000001043aa:	45 89 c3             	mov    %r8d,%r11d
ffff8000001043ad:	45 0f 44 d9          	cmove  %r9d,%r11d
ffff8000001043b1:	44 89 1c 0e          	mov    %r11d,(%rsi,%rcx,1)
ffff8000001043b5:	48 83 c1 04          	add    $0x4,%rcx
ffff8000001043b9:	48 83 f9 20          	cmp    $0x20,%rcx
ffff8000001043bd:	75 e0                	jne    ffff80000010439f <putchar+0x56>
ffff8000001043bf:	48 ff c2             	inc    %rdx
ffff8000001043c2:	48 01 fe             	add    %rdi,%rsi
ffff8000001043c5:	48 83 fa 10          	cmp    $0x10,%rdx
ffff8000001043c9:	75 cc                	jne    ffff800000104397 <putchar+0x4e>
ffff8000001043cb:	5b                   	pop    %rbx
ffff8000001043cc:	c3                   	ret

ffff8000001043cd <clear_screen>:
ffff8000001043cd:	f3 0f 1e fa          	endbr64
ffff8000001043d1:	49 bb 2f 3d 00 00 00 	movabs $0x3d2f,%r11
ffff8000001043d8:	00 00 00 
ffff8000001043db:	41 57                	push   %r15
ffff8000001043dd:	41 89 f1             	mov    %esi,%r9d
ffff8000001043e0:	49 bf 49 c2 ff ff ff 	movabs $0xffffffffffffc249,%r15
ffff8000001043e7:	ff ff ff 
ffff8000001043ea:	41 56                	push   %r14
ffff8000001043ec:	41 55                	push   %r13
ffff8000001043ee:	41 54                	push   %r12
ffff8000001043f0:	45 31 e4             	xor    %r12d,%r12d
ffff8000001043f3:	55                   	push   %rbp
ffff8000001043f4:	48 bd 20 10 00 00 00 	movabs $0x1020,%rbp
ffff8000001043fb:	00 00 00 
ffff8000001043fe:	53                   	push   %rbx
ffff8000001043ff:	48 8d 1d cb ff ff ff 	lea    -0x35(%rip),%rbx        # ffff8000001043d1 <clear_screen+0x4>
ffff800000104406:	4c 01 db             	add    %r11,%rbx
ffff800000104409:	41 50                	push   %r8
ffff80000010440b:	41 89 f8             	mov    %edi,%r8d
ffff80000010440e:	8b 04 2b             	mov    (%rbx,%rbp,1),%eax
ffff800000104411:	99                   	cltd
ffff800000104412:	f7 7c 2b 10          	idivl  0x10(%rbx,%rbp,1)
ffff800000104416:	41 89 c5             	mov    %eax,%r13d
ffff800000104419:	8b 44 2b 04          	mov    0x4(%rbx,%rbp,1),%eax
ffff80000010441d:	99                   	cltd
ffff80000010441e:	f7 7c 2b 14          	idivl  0x14(%rbx,%rbp,1)
ffff800000104422:	89 44 24 04          	mov    %eax,0x4(%rsp)
ffff800000104426:	8b 44 24 04          	mov    0x4(%rsp),%eax
ffff80000010442a:	41 39 c4             	cmp    %eax,%r12d
ffff80000010442d:	7d 34                	jge    ffff800000104463 <clear_screen+0x96>
ffff80000010442f:	45 31 f6             	xor    %r14d,%r14d
ffff800000104432:	45 39 ee             	cmp    %r13d,%r14d
ffff800000104435:	7d 27                	jge    ffff80000010445e <clear_screen+0x91>
ffff800000104437:	8b 4c 1d 14          	mov    0x14(%rbp,%rbx,1),%ecx
ffff80000010443b:	8b 54 1d 10          	mov    0x10(%rbp,%rbx,1),%edx
ffff80000010443f:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
ffff800000104443:	8b 74 1d 00          	mov    0x0(%rbp,%rbx,1),%esi
ffff800000104447:	48 8b 7c 1d 18       	mov    0x18(%rbp,%rbx,1),%rdi
ffff80000010444c:	6a 20                	push   $0x20
ffff80000010444e:	41 0f af cc          	imul   %r12d,%ecx
ffff800000104452:	41 0f af d6          	imul   %r14d,%edx
ffff800000104456:	41 ff c6             	inc    %r14d
ffff800000104459:	ff d0                	call   *%rax
ffff80000010445b:	59                   	pop    %rcx
ffff80000010445c:	eb d4                	jmp    ffff800000104432 <clear_screen+0x65>
ffff80000010445e:	41 ff c4             	inc    %r12d
ffff800000104461:	eb c3                	jmp    ffff800000104426 <clear_screen+0x59>
ffff800000104463:	31 c0                	xor    %eax,%eax
ffff800000104465:	48 89 44 1d 08       	mov    %rax,0x8(%rbp,%rbx,1)
ffff80000010446a:	5a                   	pop    %rdx
ffff80000010446b:	5b                   	pop    %rbx
ffff80000010446c:	5d                   	pop    %rbp
ffff80000010446d:	41 5c                	pop    %r12
ffff80000010446f:	41 5d                	pop    %r13
ffff800000104471:	41 5e                	pop    %r14
ffff800000104473:	41 5f                	pop    %r15
ffff800000104475:	c3                   	ret

ffff800000104476 <skip_atoi2>:
ffff800000104476:	f3 0f 1e fa          	endbr64
ffff80000010447a:	31 c0                	xor    %eax,%eax
ffff80000010447c:	48 8b 0f             	mov    (%rdi),%rcx
ffff80000010447f:	0f be 11             	movsbl (%rcx),%edx
ffff800000104482:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff800000104485:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000104489:	77 0f                	ja     ffff80000010449a <skip_atoi2+0x24>
ffff80000010448b:	6b c0 0a             	imul   $0xa,%eax,%eax
ffff80000010448e:	48 ff c1             	inc    %rcx
ffff800000104491:	48 89 0f             	mov    %rcx,(%rdi)
ffff800000104494:	8d 44 10 d0          	lea    -0x30(%rax,%rdx,1),%eax
ffff800000104498:	eb e2                	jmp    ffff80000010447c <skip_atoi2+0x6>
ffff80000010449a:	c3                   	ret

ffff80000010449b <skip_atoi>:
ffff80000010449b:	f3 0f 1e fa          	endbr64
ffff80000010449f:	31 c0                	xor    %eax,%eax
ffff8000001044a1:	48 8b 0f             	mov    (%rdi),%rcx
ffff8000001044a4:	0f be 11             	movsbl (%rcx),%edx
ffff8000001044a7:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff8000001044aa:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001044ae:	77 0f                	ja     ffff8000001044bf <skip_atoi+0x24>
ffff8000001044b0:	6b c0 0a             	imul   $0xa,%eax,%eax
ffff8000001044b3:	48 ff c1             	inc    %rcx
ffff8000001044b6:	48 89 0f             	mov    %rcx,(%rdi)
ffff8000001044b9:	8d 44 10 d0          	lea    -0x30(%rax,%rdx,1),%eax
ffff8000001044bd:	eb e2                	jmp    ffff8000001044a1 <skip_atoi+0x6>
ffff8000001044bf:	c3                   	ret

ffff8000001044c0 <vsprintf>:
ffff8000001044c0:	f3 0f 1e fa          	endbr64
ffff8000001044c4:	49 bb 3c 3c 00 00 00 	movabs $0x3c3c,%r11
ffff8000001044cb:	00 00 00 
ffff8000001044ce:	41 55                	push   %r13
ffff8000001044d0:	49 89 fa             	mov    %rdi,%r10
ffff8000001044d3:	4c 8d 2d 56 0a 00 00 	lea    0xa56(%rip),%r13        # ffff800000104f30 <_etext+0x2cb>
ffff8000001044da:	41 54                	push   %r12
ffff8000001044dc:	49 89 fc             	mov    %rdi,%r12
ffff8000001044df:	55                   	push   %rbp
ffff8000001044e0:	48 8d 2d dd ff ff ff 	lea    -0x23(%rip),%rbp        # ffff8000001044c4 <vsprintf+0x4>
ffff8000001044e7:	53                   	push   %rbx
ffff8000001044e8:	4c 01 dd             	add    %r11,%rbp
ffff8000001044eb:	48 89 d3             	mov    %rdx,%rbx
ffff8000001044ee:	48 83 ec 10          	sub    $0x10,%rsp
ffff8000001044f2:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
ffff8000001044f7:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff8000001044fc:	8a 10                	mov    (%rax),%dl
ffff8000001044fe:	84 d2                	test   %dl,%dl
ffff800000104500:	0f 84 0a 05 00 00    	je     ffff800000104a10 <vsprintf+0x550>
ffff800000104506:	80 fa 25             	cmp    $0x25,%dl
ffff800000104509:	74 08                	je     ffff800000104513 <vsprintf+0x53>
ffff80000010450b:	41 88 12             	mov    %dl,(%r10)
ffff80000010450e:	e9 cf 04 00 00       	jmp    ffff8000001049e2 <vsprintf+0x522>
ffff800000104513:	45 31 c9             	xor    %r9d,%r9d
ffff800000104516:	8a 50 01             	mov    0x1(%rax),%dl
ffff800000104519:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff80000010451d:	80 fa 2b             	cmp    $0x2b,%dl
ffff800000104520:	74 2b                	je     ffff80000010454d <vsprintf+0x8d>
ffff800000104522:	7f 13                	jg     ffff800000104537 <vsprintf+0x77>
ffff800000104524:	80 fa 20             	cmp    $0x20,%dl
ffff800000104527:	74 2a                	je     ffff800000104553 <vsprintf+0x93>
ffff800000104529:	80 fa 23             	cmp    $0x23,%dl
ffff80000010452c:	75 2b                	jne    ffff800000104559 <vsprintf+0x99>
ffff80000010452e:	41 83 c9 20          	or     $0x20,%r9d
ffff800000104532:	48 89 c8             	mov    %rcx,%rax
ffff800000104535:	eb df                	jmp    ffff800000104516 <vsprintf+0x56>
ffff800000104537:	80 fa 2d             	cmp    $0x2d,%dl
ffff80000010453a:	74 0b                	je     ffff800000104547 <vsprintf+0x87>
ffff80000010453c:	80 fa 30             	cmp    $0x30,%dl
ffff80000010453f:	75 18                	jne    ffff800000104559 <vsprintf+0x99>
ffff800000104541:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104545:	eb eb                	jmp    ffff800000104532 <vsprintf+0x72>
ffff800000104547:	41 83 c9 10          	or     $0x10,%r9d
ffff80000010454b:	eb e5                	jmp    ffff800000104532 <vsprintf+0x72>
ffff80000010454d:	41 83 c9 04          	or     $0x4,%r9d
ffff800000104551:	eb df                	jmp    ffff800000104532 <vsprintf+0x72>
ffff800000104553:	41 83 c9 08          	or     $0x8,%r9d
ffff800000104557:	eb d9                	jmp    ffff800000104532 <vsprintf+0x72>
ffff800000104559:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
ffff80000010455e:	8d 4a d0             	lea    -0x30(%rdx),%ecx
ffff800000104561:	80 f9 09             	cmp    $0x9,%cl
ffff800000104564:	77 18                	ja     ffff80000010457e <vsprintf+0xbe>
ffff800000104566:	48 b8 9b c3 ff ff ff 	movabs $0xffffffffffffc39b,%rax
ffff80000010456d:	ff ff ff 
ffff800000104570:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
ffff800000104575:	48 01 e8             	add    %rbp,%rax
ffff800000104578:	ff d0                	call   *%rax
ffff80000010457a:	89 c1                	mov    %eax,%ecx
ffff80000010457c:	eb 3d                	jmp    ffff8000001045bb <vsprintf+0xfb>
ffff80000010457e:	83 c9 ff             	or     $0xffffffff,%ecx
ffff800000104581:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000104584:	75 35                	jne    ffff8000001045bb <vsprintf+0xfb>
ffff800000104586:	8b 13                	mov    (%rbx),%edx
ffff800000104588:	48 83 c0 02          	add    $0x2,%rax
ffff80000010458c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff800000104591:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104594:	77 0d                	ja     ffff8000001045a3 <vsprintf+0xe3>
ffff800000104596:	89 d0                	mov    %edx,%eax
ffff800000104598:	83 c2 08             	add    $0x8,%edx
ffff80000010459b:	48 03 43 10          	add    0x10(%rbx),%rax
ffff80000010459f:	89 13                	mov    %edx,(%rbx)
ffff8000001045a1:	eb 0c                	jmp    ffff8000001045af <vsprintf+0xef>
ffff8000001045a3:	48 8b 43 08          	mov    0x8(%rbx),%rax
ffff8000001045a7:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff8000001045ab:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff8000001045af:	8b 08                	mov    (%rax),%ecx
ffff8000001045b1:	85 c9                	test   %ecx,%ecx
ffff8000001045b3:	79 06                	jns    ffff8000001045bb <vsprintf+0xfb>
ffff8000001045b5:	f7 d9                	neg    %ecx
ffff8000001045b7:	41 83 c9 10          	or     $0x10,%r9d
ffff8000001045bb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff8000001045c0:	41 83 c8 ff          	or     $0xffffffff,%r8d
ffff8000001045c4:	80 38 2e             	cmpb   $0x2e,(%rax)
ffff8000001045c7:	75 70                	jne    ffff800000104639 <vsprintf+0x179>
ffff8000001045c9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001045cd:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff8000001045d2:	8a 50 01             	mov    0x1(%rax),%dl
ffff8000001045d5:	8d 72 d0             	lea    -0x30(%rdx),%esi
ffff8000001045d8:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001045dc:	77 1e                	ja     ffff8000001045fc <vsprintf+0x13c>
ffff8000001045de:	48 b8 9b c3 ff ff ff 	movabs $0xffffffffffffc39b,%rax
ffff8000001045e5:	ff ff ff 
ffff8000001045e8:	89 4c 24 04          	mov    %ecx,0x4(%rsp)
ffff8000001045ec:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
ffff8000001045f1:	48 01 e8             	add    %rbp,%rax
ffff8000001045f4:	ff d0                	call   *%rax
ffff8000001045f6:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
ffff8000001045fa:	eb 33                	jmp    ffff80000010462f <vsprintf+0x16f>
ffff8000001045fc:	45 31 c0             	xor    %r8d,%r8d
ffff8000001045ff:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000104602:	75 35                	jne    ffff800000104639 <vsprintf+0x179>
ffff800000104604:	8b 13                	mov    (%rbx),%edx
ffff800000104606:	48 83 c0 02          	add    $0x2,%rax
ffff80000010460a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff80000010460f:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104612:	77 0d                	ja     ffff800000104621 <vsprintf+0x161>
ffff800000104614:	89 d0                	mov    %edx,%eax
ffff800000104616:	83 c2 08             	add    $0x8,%edx
ffff800000104619:	48 03 43 10          	add    0x10(%rbx),%rax
ffff80000010461d:	89 13                	mov    %edx,(%rbx)
ffff80000010461f:	eb 0c                	jmp    ffff80000010462d <vsprintf+0x16d>
ffff800000104621:	48 8b 43 08          	mov    0x8(%rbx),%rax
ffff800000104625:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104629:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff80000010462d:	8b 00                	mov    (%rax),%eax
ffff80000010462f:	31 d2                	xor    %edx,%edx
ffff800000104631:	85 c0                	test   %eax,%eax
ffff800000104633:	0f 49 d0             	cmovns %eax,%edx
ffff800000104636:	41 89 d0             	mov    %edx,%r8d
ffff800000104639:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff80000010463e:	83 ce ff             	or     $0xffffffff,%esi
ffff800000104641:	8a 10                	mov    (%rax),%dl
ffff800000104643:	8d 7a b4             	lea    -0x4c(%rdx),%edi
ffff800000104646:	40 80 ff 2e          	cmp    $0x2e,%dil
ffff80000010464a:	77 1b                	ja     ffff800000104667 <vsprintf+0x1a7>
ffff80000010464c:	49 bb 01 00 00 10 01 	movabs $0x400110000001,%r11
ffff800000104653:	40 00 00 
ffff800000104656:	49 0f a3 fb          	bt     %rdi,%r11
ffff80000010465a:	73 0b                	jae    ffff800000104667 <vsprintf+0x1a7>
ffff80000010465c:	48 ff c0             	inc    %rax
ffff80000010465f:	0f be f2             	movsbl %dl,%esi
ffff800000104662:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff800000104667:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff80000010466c:	8a 02                	mov    (%rdx),%al
ffff80000010466e:	3c 78                	cmp    $0x78,%al
ffff800000104670:	0f 8f 71 03 00 00    	jg     ffff8000001049e7 <vsprintf+0x527>
ffff800000104676:	3c 62                	cmp    $0x62,%al
ffff800000104678:	7f 15                	jg     ffff80000010468f <vsprintf+0x1cf>
ffff80000010467a:	3c 25                	cmp    $0x25,%al
ffff80000010467c:	0f 84 5c 03 00 00    	je     ffff8000001049de <vsprintf+0x51e>
ffff800000104682:	3c 58                	cmp    $0x58,%al
ffff800000104684:	0f 84 2c 02 00 00    	je     ffff8000001048b6 <vsprintf+0x3f6>
ffff80000010468a:	e9 58 03 00 00       	jmp    ffff8000001049e7 <vsprintf+0x527>
ffff80000010468f:	83 e8 63             	sub    $0x63,%eax
ffff800000104692:	3c 15                	cmp    $0x15,%al
ffff800000104694:	0f 87 4d 03 00 00    	ja     ffff8000001049e7 <vsprintf+0x527>
ffff80000010469a:	0f b6 c0             	movzbl %al,%eax
ffff80000010469d:	49 8b 7c c5 00       	mov    0x0(%r13,%rax,8),%rdi
ffff8000001046a2:	4c 01 ef             	add    %r13,%rdi
ffff8000001046a5:	3e ff e7             	notrack jmp *%rdi
ffff8000001046a8:	41 83 e1 10          	and    $0x10,%r9d
ffff8000001046ac:	75 35                	jne    ffff8000001046e3 <vsprintf+0x223>
ffff8000001046ae:	31 c0                	xor    %eax,%eax
ffff8000001046b0:	48 ff c0             	inc    %rax
ffff8000001046b3:	89 ca                	mov    %ecx,%edx
ffff8000001046b5:	29 c2                	sub    %eax,%edx
ffff8000001046b7:	85 d2                	test   %edx,%edx
ffff8000001046b9:	7e 08                	jle    ffff8000001046c3 <vsprintf+0x203>
ffff8000001046bb:	41 c6 44 02 ff 20    	movb   $0x20,-0x1(%r10,%rax,1)
ffff8000001046c1:	eb ed                	jmp    ffff8000001046b0 <vsprintf+0x1f0>
ffff8000001046c3:	8d 51 ff             	lea    -0x1(%rcx),%edx
ffff8000001046c6:	31 f6                	xor    %esi,%esi
ffff8000001046c8:	85 c9                	test   %ecx,%ecx
ffff8000001046ca:	48 89 d0             	mov    %rdx,%rax
ffff8000001046cd:	48 0f 4e d6          	cmovle %rsi,%rdx
ffff8000001046d1:	49 01 d2             	add    %rdx,%r10
ffff8000001046d4:	85 c9                	test   %ecx,%ecx
ffff8000001046d6:	ba 01 00 00 00       	mov    $0x1,%edx
ffff8000001046db:	0f 4f d1             	cmovg  %ecx,%edx
ffff8000001046de:	29 d0                	sub    %edx,%eax
ffff8000001046e0:	8d 48 01             	lea    0x1(%rax),%ecx
ffff8000001046e3:	8b 13                	mov    (%rbx),%edx
ffff8000001046e5:	83 fa 2f             	cmp    $0x2f,%edx
ffff8000001046e8:	77 0d                	ja     ffff8000001046f7 <vsprintf+0x237>
ffff8000001046ea:	89 d0                	mov    %edx,%eax
ffff8000001046ec:	83 c2 08             	add    $0x8,%edx
ffff8000001046ef:	48 03 43 10          	add    0x10(%rbx),%rax
ffff8000001046f3:	89 13                	mov    %edx,(%rbx)
ffff8000001046f5:	eb 0c                	jmp    ffff800000104703 <vsprintf+0x243>
ffff8000001046f7:	48 8b 43 08          	mov    0x8(%rbx),%rax
ffff8000001046fb:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff8000001046ff:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff800000104703:	8b 00                	mov    (%rax),%eax
ffff800000104705:	41 88 02             	mov    %al,(%r10)
ffff800000104708:	31 c0                	xor    %eax,%eax
ffff80000010470a:	48 ff c0             	inc    %rax
ffff80000010470d:	89 ca                	mov    %ecx,%edx
ffff80000010470f:	29 c2                	sub    %eax,%edx
ffff800000104711:	85 d2                	test   %edx,%edx
ffff800000104713:	7e 07                	jle    ffff80000010471c <vsprintf+0x25c>
ffff800000104715:	41 c6 04 02 20       	movb   $0x20,(%r10,%rax,1)
ffff80000010471a:	eb ee                	jmp    ffff80000010470a <vsprintf+0x24a>
ffff80000010471c:	31 d2                	xor    %edx,%edx
ffff80000010471e:	8d 41 ff             	lea    -0x1(%rcx),%eax
ffff800000104721:	85 c9                	test   %ecx,%ecx
ffff800000104723:	48 0f 4e c2          	cmovle %rdx,%rax
ffff800000104727:	4d 8d 54 02 01       	lea    0x1(%r10,%rax,1),%r10
ffff80000010472c:	e9 d5 02 00 00       	jmp    ffff800000104a06 <vsprintf+0x546>
ffff800000104731:	8b 13                	mov    (%rbx),%edx
ffff800000104733:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104736:	77 0d                	ja     ffff800000104745 <vsprintf+0x285>
ffff800000104738:	89 d0                	mov    %edx,%eax
ffff80000010473a:	83 c2 08             	add    $0x8,%edx
ffff80000010473d:	48 03 43 10          	add    0x10(%rbx),%rax
ffff800000104741:	89 13                	mov    %edx,(%rbx)
ffff800000104743:	eb 0c                	jmp    ffff800000104751 <vsprintf+0x291>
ffff800000104745:	48 8b 43 08          	mov    0x8(%rbx),%rax
ffff800000104749:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff80000010474d:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff800000104751:	48 8b 30             	mov    (%rax),%rsi
ffff800000104754:	48 89 f0             	mov    %rsi,%rax
ffff800000104757:	80 38 00             	cmpb   $0x0,(%rax)
ffff80000010475a:	74 05                	je     ffff800000104761 <vsprintf+0x2a1>
ffff80000010475c:	48 ff c0             	inc    %rax
ffff80000010475f:	eb f6                	jmp    ffff800000104757 <vsprintf+0x297>
ffff800000104761:	48 29 f0             	sub    %rsi,%rax
ffff800000104764:	48 63 d0             	movslq %eax,%rdx
ffff800000104767:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff80000010476b:	74 0a                	je     ffff800000104777 <vsprintf+0x2b7>
ffff80000010476d:	41 39 c0             	cmp    %eax,%r8d
ffff800000104770:	41 0f 4e c0          	cmovle %r8d,%eax
ffff800000104774:	48 63 d0             	movslq %eax,%rdx
ffff800000104777:	41 83 e1 10          	and    $0x10,%r9d
ffff80000010477b:	75 3b                	jne    ffff8000001047b8 <vsprintf+0x2f8>
ffff80000010477d:	31 c0                	xor    %eax,%eax
ffff80000010477f:	89 cf                	mov    %ecx,%edi
ffff800000104781:	29 c7                	sub    %eax,%edi
ffff800000104783:	39 fa                	cmp    %edi,%edx
ffff800000104785:	7d 0a                	jge    ffff800000104791 <vsprintf+0x2d1>
ffff800000104787:	41 c6 04 02 20       	movb   $0x20,(%r10,%rax,1)
ffff80000010478c:	48 ff c0             	inc    %rax
ffff80000010478f:	eb ee                	jmp    ffff80000010477f <vsprintf+0x2bf>
ffff800000104791:	39 d1                	cmp    %edx,%ecx
ffff800000104793:	89 c8                	mov    %ecx,%eax
ffff800000104795:	41 0f 9d c0          	setge  %r8b
ffff800000104799:	29 d0                	sub    %edx,%eax
ffff80000010479b:	45 31 c9             	xor    %r9d,%r9d
ffff80000010479e:	89 c7                	mov    %eax,%edi
ffff8000001047a0:	45 84 c0             	test   %r8b,%r8b
ffff8000001047a3:	49 0f 44 f9          	cmove  %r9,%rdi
ffff8000001047a7:	f7 d8                	neg    %eax
ffff8000001047a9:	49 01 fa             	add    %rdi,%r10
ffff8000001047ac:	31 ff                	xor    %edi,%edi
ffff8000001047ae:	45 84 c0             	test   %r8b,%r8b
ffff8000001047b1:	0f 44 c7             	cmove  %edi,%eax
ffff8000001047b4:	8d 4c 01 ff          	lea    -0x1(%rcx,%rax,1),%ecx
ffff8000001047b8:	31 c0                	xor    %eax,%eax
ffff8000001047ba:	39 c2                	cmp    %eax,%edx
ffff8000001047bc:	7e 0d                	jle    ffff8000001047cb <vsprintf+0x30b>
ffff8000001047be:	40 8a 3c 06          	mov    (%rsi,%rax,1),%dil
ffff8000001047c2:	41 88 3c 02          	mov    %dil,(%r10,%rax,1)
ffff8000001047c6:	48 ff c0             	inc    %rax
ffff8000001047c9:	eb ef                	jmp    ffff8000001047ba <vsprintf+0x2fa>
ffff8000001047cb:	31 f6                	xor    %esi,%esi
ffff8000001047cd:	85 d2                	test   %edx,%edx
ffff8000001047cf:	48 0f 49 f2          	cmovns %rdx,%rsi
ffff8000001047d3:	31 c0                	xor    %eax,%eax
ffff8000001047d5:	4c 01 d6             	add    %r10,%rsi
ffff8000001047d8:	89 cf                	mov    %ecx,%edi
ffff8000001047da:	29 c7                	sub    %eax,%edi
ffff8000001047dc:	39 fa                	cmp    %edi,%edx
ffff8000001047de:	7d 09                	jge    ffff8000001047e9 <vsprintf+0x329>
ffff8000001047e0:	c6 04 06 20          	movb   $0x20,(%rsi,%rax,1)
ffff8000001047e4:	48 ff c0             	inc    %rax
ffff8000001047e7:	eb ef                	jmp    ffff8000001047d8 <vsprintf+0x318>
ffff8000001047e9:	41 89 ca             	mov    %ecx,%r10d
ffff8000001047ec:	31 c0                	xor    %eax,%eax
ffff8000001047ee:	41 29 d2             	sub    %edx,%r10d
ffff8000001047f1:	39 d1                	cmp    %edx,%ecx
ffff8000001047f3:	4c 0f 4c d0          	cmovl  %rax,%r10
ffff8000001047f7:	49 01 f2             	add    %rsi,%r10
ffff8000001047fa:	e9 07 02 00 00       	jmp    ffff800000104a06 <vsprintf+0x546>
ffff8000001047ff:	48 b8 4f c0 ff ff ff 	movabs $0xffffffffffffc04f,%rax
ffff800000104806:	ff ff ff 
ffff800000104809:	83 fe 6c             	cmp    $0x6c,%esi
ffff80000010480c:	8b 13                	mov    (%rbx),%edx
ffff80000010480e:	75 28                	jne    ffff800000104838 <vsprintf+0x378>
ffff800000104810:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104813:	77 0d                	ja     ffff800000104822 <vsprintf+0x362>
ffff800000104815:	89 d6                	mov    %edx,%esi
ffff800000104817:	83 c2 08             	add    $0x8,%edx
ffff80000010481a:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff80000010481e:	89 13                	mov    %edx,(%rbx)
ffff800000104820:	eb 0c                	jmp    ffff80000010482e <vsprintf+0x36e>
ffff800000104822:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff800000104826:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff80000010482a:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff80000010482e:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104833:	e9 b2 00 00 00       	jmp    ffff8000001048ea <vsprintf+0x42a>
ffff800000104838:	83 fa 2f             	cmp    $0x2f,%edx
ffff80000010483b:	77 0d                	ja     ffff80000010484a <vsprintf+0x38a>
ffff80000010483d:	89 d6                	mov    %edx,%esi
ffff80000010483f:	83 c2 08             	add    $0x8,%edx
ffff800000104842:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff800000104846:	89 13                	mov    %edx,(%rbx)
ffff800000104848:	eb 0c                	jmp    ffff800000104856 <vsprintf+0x396>
ffff80000010484a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff80000010484e:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff800000104852:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff800000104856:	8b 36                	mov    (%rsi),%esi
ffff800000104858:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010485d:	4c 89 d7             	mov    %r10,%rdi
ffff800000104860:	48 01 e8             	add    %rbp,%rax
ffff800000104863:	ff d0                	call   *%rax
ffff800000104865:	49 89 c2             	mov    %rax,%r10
ffff800000104868:	e9 99 01 00 00       	jmp    ffff800000104a06 <vsprintf+0x546>
ffff80000010486d:	83 f9 ff             	cmp    $0xffffffff,%ecx
ffff800000104870:	75 09                	jne    ffff80000010487b <vsprintf+0x3bb>
ffff800000104872:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104876:	b9 10 00 00 00       	mov    $0x10,%ecx
ffff80000010487b:	8b 13                	mov    (%rbx),%edx
ffff80000010487d:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104880:	77 0d                	ja     ffff80000010488f <vsprintf+0x3cf>
ffff800000104882:	89 d0                	mov    %edx,%eax
ffff800000104884:	83 c2 08             	add    $0x8,%edx
ffff800000104887:	48 03 43 10          	add    0x10(%rbx),%rax
ffff80000010488b:	89 13                	mov    %edx,(%rbx)
ffff80000010488d:	eb 0c                	jmp    ffff80000010489b <vsprintf+0x3db>
ffff80000010488f:	48 8b 43 08          	mov    0x8(%rbx),%rax
ffff800000104893:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104897:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff80000010489b:	48 8b 30             	mov    (%rax),%rsi
ffff80000010489e:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001048a3:	4c 89 d7             	mov    %r10,%rdi
ffff8000001048a6:	48 b8 4f c0 ff ff ff 	movabs $0xffffffffffffc04f,%rax
ffff8000001048ad:	ff ff ff 
ffff8000001048b0:	eb ae                	jmp    ffff800000104860 <vsprintf+0x3a0>
ffff8000001048b2:	41 83 c9 40          	or     $0x40,%r9d
ffff8000001048b6:	48 b8 4f c0 ff ff ff 	movabs $0xffffffffffffc04f,%rax
ffff8000001048bd:	ff ff ff 
ffff8000001048c0:	83 fe 6c             	cmp    $0x6c,%esi
ffff8000001048c3:	8b 13                	mov    (%rbx),%edx
ffff8000001048c5:	75 2b                	jne    ffff8000001048f2 <vsprintf+0x432>
ffff8000001048c7:	83 fa 2f             	cmp    $0x2f,%edx
ffff8000001048ca:	77 0d                	ja     ffff8000001048d9 <vsprintf+0x419>
ffff8000001048cc:	89 d6                	mov    %edx,%esi
ffff8000001048ce:	83 c2 08             	add    $0x8,%edx
ffff8000001048d1:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff8000001048d5:	89 13                	mov    %edx,(%rbx)
ffff8000001048d7:	eb 0c                	jmp    ffff8000001048e5 <vsprintf+0x425>
ffff8000001048d9:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff8000001048dd:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff8000001048e1:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff8000001048e5:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001048ea:	48 8b 36             	mov    (%rsi),%rsi
ffff8000001048ed:	e9 6b ff ff ff       	jmp    ffff80000010485d <vsprintf+0x39d>
ffff8000001048f2:	83 fa 2f             	cmp    $0x2f,%edx
ffff8000001048f5:	77 0d                	ja     ffff800000104904 <vsprintf+0x444>
ffff8000001048f7:	89 d6                	mov    %edx,%esi
ffff8000001048f9:	83 c2 08             	add    $0x8,%edx
ffff8000001048fc:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff800000104900:	89 13                	mov    %edx,(%rbx)
ffff800000104902:	eb 0c                	jmp    ffff800000104910 <vsprintf+0x450>
ffff800000104904:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff800000104908:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff80000010490c:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff800000104910:	8b 36                	mov    (%rsi),%esi
ffff800000104912:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104917:	e9 41 ff ff ff       	jmp    ffff80000010485d <vsprintf+0x39d>
ffff80000010491c:	41 83 c9 02          	or     $0x2,%r9d
ffff800000104920:	48 b8 4f c0 ff ff ff 	movabs $0xffffffffffffc04f,%rax
ffff800000104927:	ff ff ff 
ffff80000010492a:	83 fe 6c             	cmp    $0x6c,%esi
ffff80000010492d:	8b 13                	mov    (%rbx),%edx
ffff80000010492f:	75 25                	jne    ffff800000104956 <vsprintf+0x496>
ffff800000104931:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104934:	77 0d                	ja     ffff800000104943 <vsprintf+0x483>
ffff800000104936:	89 d6                	mov    %edx,%esi
ffff800000104938:	83 c2 08             	add    $0x8,%edx
ffff80000010493b:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff80000010493f:	89 13                	mov    %edx,(%rbx)
ffff800000104941:	eb 0c                	jmp    ffff80000010494f <vsprintf+0x48f>
ffff800000104943:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff800000104947:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff80000010494b:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff80000010494f:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104954:	eb 94                	jmp    ffff8000001048ea <vsprintf+0x42a>
ffff800000104956:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104959:	77 0d                	ja     ffff800000104968 <vsprintf+0x4a8>
ffff80000010495b:	89 d6                	mov    %edx,%esi
ffff80000010495d:	83 c2 08             	add    $0x8,%edx
ffff800000104960:	48 03 73 10          	add    0x10(%rbx),%rsi
ffff800000104964:	89 13                	mov    %edx,(%rbx)
ffff800000104966:	eb 0c                	jmp    ffff800000104974 <vsprintf+0x4b4>
ffff800000104968:	48 8b 73 08          	mov    0x8(%rbx),%rsi
ffff80000010496c:	48 8d 56 08          	lea    0x8(%rsi),%rdx
ffff800000104970:	48 89 53 08          	mov    %rdx,0x8(%rbx)
ffff800000104974:	8b 36                	mov    (%rsi),%esi
ffff800000104976:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010497b:	e9 dd fe ff ff       	jmp    ffff80000010485d <vsprintf+0x39d>
ffff800000104980:	8b 03                	mov    (%rbx),%eax
ffff800000104982:	83 fe 6c             	cmp    $0x6c,%esi
ffff800000104985:	75 2c                	jne    ffff8000001049b3 <vsprintf+0x4f3>
ffff800000104987:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010498a:	77 0d                	ja     ffff800000104999 <vsprintf+0x4d9>
ffff80000010498c:	89 c2                	mov    %eax,%edx
ffff80000010498e:	83 c0 08             	add    $0x8,%eax
ffff800000104991:	48 03 53 10          	add    0x10(%rbx),%rdx
ffff800000104995:	89 03                	mov    %eax,(%rbx)
ffff800000104997:	eb 0c                	jmp    ffff8000001049a5 <vsprintf+0x4e5>
ffff800000104999:	48 8b 53 08          	mov    0x8(%rbx),%rdx
ffff80000010499d:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001049a1:	48 89 43 08          	mov    %rax,0x8(%rbx)
ffff8000001049a5:	48 8b 02             	mov    (%rdx),%rax
ffff8000001049a8:	4c 89 d2             	mov    %r10,%rdx
ffff8000001049ab:	4c 29 e2             	sub    %r12,%rdx
ffff8000001049ae:	48 89 10             	mov    %rdx,(%rax)
ffff8000001049b1:	eb 53                	jmp    ffff800000104a06 <vsprintf+0x546>
ffff8000001049b3:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001049b6:	77 0d                	ja     ffff8000001049c5 <vsprintf+0x505>
ffff8000001049b8:	89 c2                	mov    %eax,%edx
ffff8000001049ba:	83 c0 08             	add    $0x8,%eax
ffff8000001049bd:	48 03 53 10          	add    0x10(%rbx),%rdx
ffff8000001049c1:	89 03                	mov    %eax,(%rbx)
ffff8000001049c3:	eb 0c                	jmp    ffff8000001049d1 <vsprintf+0x511>
ffff8000001049c5:	48 8b 53 08          	mov    0x8(%rbx),%rdx
ffff8000001049c9:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001049cd:	48 89 43 08          	mov    %rax,0x8(%rbx)
ffff8000001049d1:	48 8b 02             	mov    (%rdx),%rax
ffff8000001049d4:	4c 89 d2             	mov    %r10,%rdx
ffff8000001049d7:	4c 29 e2             	sub    %r12,%rdx
ffff8000001049da:	89 10                	mov    %edx,(%rax)
ffff8000001049dc:	eb 28                	jmp    ffff800000104a06 <vsprintf+0x546>
ffff8000001049de:	41 c6 02 25          	movb   $0x25,(%r10)
ffff8000001049e2:	49 ff c2             	inc    %r10
ffff8000001049e5:	eb 1f                	jmp    ffff800000104a06 <vsprintf+0x546>
ffff8000001049e7:	41 c6 02 25          	movb   $0x25,(%r10)
ffff8000001049eb:	8a 02                	mov    (%rdx),%al
ffff8000001049ed:	84 c0                	test   %al,%al
ffff8000001049ef:	74 0a                	je     ffff8000001049fb <vsprintf+0x53b>
ffff8000001049f1:	41 88 42 01          	mov    %al,0x1(%r10)
ffff8000001049f5:	49 83 c2 02          	add    $0x2,%r10
ffff8000001049f9:	eb 0b                	jmp    ffff800000104a06 <vsprintf+0x546>
ffff8000001049fb:	48 ff ca             	dec    %rdx
ffff8000001049fe:	49 ff c2             	inc    %r10
ffff800000104a01:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff800000104a06:	48 ff 44 24 08       	incq   0x8(%rsp)
ffff800000104a0b:	e9 e7 fa ff ff       	jmp    ffff8000001044f7 <vsprintf+0x37>
ffff800000104a10:	41 c6 02 00          	movb   $0x0,(%r10)
ffff800000104a14:	44 89 d0             	mov    %r10d,%eax
ffff800000104a17:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104a1b:	5b                   	pop    %rbx
ffff800000104a1c:	44 29 e0             	sub    %r12d,%eax
ffff800000104a1f:	5d                   	pop    %rbp
ffff800000104a20:	41 5c                	pop    %r12
ffff800000104a22:	41 5d                	pop    %r13
ffff800000104a24:	c3                   	ret

ffff800000104a25 <color_printk>:
ffff800000104a25:	f3 0f 1e fa          	endbr64
ffff800000104a29:	49 bb d7 36 00 00 00 	movabs $0x36d7,%r11
ffff800000104a30:	00 00 00 
ffff800000104a33:	41 57                	push   %r15
ffff800000104a35:	41 56                	push   %r14
ffff800000104a37:	41 55                	push   %r13
ffff800000104a39:	41 54                	push   %r12
ffff800000104a3b:	55                   	push   %rbp
ffff800000104a3c:	53                   	push   %rbx
ffff800000104a3d:	48 8d 1d e5 ff ff ff 	lea    -0x1b(%rip),%rbx        # ffff800000104a29 <color_printk+0x4>
ffff800000104a44:	4c 01 db             	add    %r11,%rbx
ffff800000104a47:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
ffff800000104a4e:	89 74 24 0c          	mov    %esi,0xc(%rsp)
ffff800000104a52:	48 89 d6             	mov    %rdx,%rsi
ffff800000104a55:	89 7c 24 08          	mov    %edi,0x8(%rsp)
ffff800000104a59:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
ffff800000104a5e:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
ffff800000104a63:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
ffff800000104a68:	84 c0                	test   %al,%al
ffff800000104a6a:	74 3a                	je     ffff800000104aa6 <color_printk+0x81>
ffff800000104a6c:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
ffff800000104a71:	0f 29 4c 24 70       	movaps %xmm1,0x70(%rsp)
ffff800000104a76:	0f 29 94 24 80 00 00 	movaps %xmm2,0x80(%rsp)
ffff800000104a7d:	00 
ffff800000104a7e:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
ffff800000104a85:	00 
ffff800000104a86:	0f 29 a4 24 a0 00 00 	movaps %xmm4,0xa0(%rsp)
ffff800000104a8d:	00 
ffff800000104a8e:	0f 29 ac 24 b0 00 00 	movaps %xmm5,0xb0(%rsp)
ffff800000104a95:	00 
ffff800000104a96:	0f 29 b4 24 c0 00 00 	movaps %xmm6,0xc0(%rsp)
ffff800000104a9d:	00 
ffff800000104a9e:	0f 29 bc 24 d0 00 00 	movaps %xmm7,0xd0(%rsp)
ffff800000104aa5:	00 
ffff800000104aa6:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
ffff800000104aad:	00 
ffff800000104aae:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
ffff800000104ab3:	31 ed                	xor    %ebp,%ebp
ffff800000104ab5:	45 31 e4             	xor    %r12d,%r12d
ffff800000104ab8:	49 bf 20 00 00 00 00 	movabs $0x20,%r15
ffff800000104abf:	00 00 00 
ffff800000104ac2:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
ffff800000104ac7:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
ffff800000104acc:	49 bd 20 10 00 00 00 	movabs $0x1020,%r13
ffff800000104ad3:	00 00 00 
ffff800000104ad6:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
ffff800000104adb:	4a 8d 3c 3b          	lea    (%rbx,%r15,1),%rdi
ffff800000104adf:	48 b8 c0 c3 ff ff ff 	movabs $0xffffffffffffc3c0,%rax
ffff800000104ae6:	ff ff ff 
ffff800000104ae9:	c7 44 24 18 18 00 00 	movl   $0x18,0x18(%rsp)
ffff800000104af0:	00 
ffff800000104af1:	48 01 d8             	add    %rbx,%rax
ffff800000104af4:	c7 44 24 1c 30 00 00 	movl   $0x30,0x1c(%rsp)
ffff800000104afb:	00 
ffff800000104afc:	ff d0                	call   *%rax
ffff800000104afe:	41 89 c6             	mov    %eax,%r14d
ffff800000104b01:	45 39 f4             	cmp    %r14d,%r12d
ffff800000104b04:	0f 8d 3e 01 00 00    	jge    ffff800000104c48 <color_printk+0x223>
ffff800000104b0a:	46 8b 4c 2b 0c       	mov    0xc(%rbx,%r13,1),%r9d
ffff800000104b0f:	42 8b 4c 2b 14       	mov    0x14(%rbx,%r13,1),%ecx
ffff800000104b14:	46 8b 44 2b 10       	mov    0x10(%rbx,%r13,1),%r8d
ffff800000104b19:	42 8b 34 2b          	mov    (%rbx,%r13,1),%esi
ffff800000104b1d:	85 ed                	test   %ebp,%ebp
ffff800000104b1f:	7e 08                	jle    ffff800000104b29 <color_printk+0x104>
ffff800000104b21:	41 ff cc             	dec    %r12d
ffff800000104b24:	e9 a1 00 00 00       	jmp    ffff800000104bca <color_printk+0x1a5>
ffff800000104b29:	49 63 c4             	movslq %r12d,%rax
ffff800000104b2c:	49 8d 14 1f          	lea    (%r15,%rbx,1),%rdx
ffff800000104b30:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
ffff800000104b34:	3c 0a                	cmp    $0xa,%al
ffff800000104b36:	75 14                	jne    ffff800000104b4c <color_printk+0x127>
ffff800000104b38:	41 ff c1             	inc    %r9d
ffff800000104b3b:	31 f6                	xor    %esi,%esi
ffff800000104b3d:	46 89 4c 2b 0c       	mov    %r9d,0xc(%rbx,%r13,1)
ffff800000104b42:	42 89 74 2b 08       	mov    %esi,0x8(%rbx,%r13,1)
ffff800000104b47:	e9 be 00 00 00       	jmp    ffff800000104c0a <color_printk+0x1e5>
ffff800000104b4c:	42 8b 54 2b 08       	mov    0x8(%rbx,%r13,1),%edx
ffff800000104b51:	4a 8b 7c 2b 18       	mov    0x18(%rbx,%r13,1),%rdi
ffff800000104b56:	3c 08                	cmp    $0x8,%al
ffff800000104b58:	75 64                	jne    ffff800000104bbe <color_printk+0x199>
ffff800000104b5a:	ff ca                	dec    %edx
ffff800000104b5c:	78 07                	js     ffff800000104b65 <color_printk+0x140>
ffff800000104b5e:	41 89 54 1d 08       	mov    %edx,0x8(%r13,%rbx,1)
ffff800000104b63:	eb 2d                	jmp    ffff800000104b92 <color_printk+0x16d>
ffff800000104b65:	89 f0                	mov    %esi,%eax
ffff800000104b67:	99                   	cltd
ffff800000104b68:	41 f7 f8             	idiv   %r8d
ffff800000104b6b:	ff c8                	dec    %eax
ffff800000104b6d:	41 0f af c0          	imul   %r8d,%eax
ffff800000104b71:	41 ff c9             	dec    %r9d
ffff800000104b74:	45 89 4c 1d 0c       	mov    %r9d,0xc(%r13,%rbx,1)
ffff800000104b79:	41 89 44 1d 08       	mov    %eax,0x8(%r13,%rbx,1)
ffff800000104b7e:	79 12                	jns    ffff800000104b92 <color_printk+0x16d>
ffff800000104b80:	41 8b 44 1d 04       	mov    0x4(%r13,%rbx,1),%eax
ffff800000104b85:	99                   	cltd
ffff800000104b86:	f7 f9                	idiv   %ecx
ffff800000104b88:	ff c8                	dec    %eax
ffff800000104b8a:	0f af c1             	imul   %ecx,%eax
ffff800000104b8d:	41 89 44 1d 0c       	mov    %eax,0xc(%r13,%rbx,1)
ffff800000104b92:	41 8b 54 1d 08       	mov    0x8(%r13,%rbx,1),%edx
ffff800000104b97:	41 0f af 4c 1d 0c    	imul   0xc(%r13,%rbx,1),%ecx
ffff800000104b9d:	6a 20                	push   $0x20
ffff800000104b9f:	48 b8 49 c2 ff ff ff 	movabs $0xffffffffffffc249,%rax
ffff800000104ba6:	ff ff ff 
ffff800000104ba9:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
ffff800000104bae:	48 01 d8             	add    %rbx,%rax
ffff800000104bb1:	41 0f af d0          	imul   %r8d,%edx
ffff800000104bb5:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
ffff800000104bba:	ff d0                	call   *%rax
ffff800000104bbc:	eb 4b                	jmp    ffff800000104c09 <color_printk+0x1e4>
ffff800000104bbe:	3c 09                	cmp    $0x9,%al
ffff800000104bc0:	75 20                	jne    ffff800000104be2 <color_printk+0x1bd>
ffff800000104bc2:	8d 6a 08             	lea    0x8(%rdx),%ebp
ffff800000104bc5:	83 e5 f8             	and    $0xfffffff8,%ebp
ffff800000104bc8:	29 d5                	sub    %edx,%ebp
ffff800000104bca:	42 8b 54 2b 08       	mov    0x8(%rbx,%r13,1),%edx
ffff800000104bcf:	4a 8b 7c 2b 18       	mov    0x18(%rbx,%r13,1),%rdi
ffff800000104bd4:	41 0f af c9          	imul   %r9d,%ecx
ffff800000104bd8:	6a 20                	push   $0x20
ffff800000104bda:	ff cd                	dec    %ebp
ffff800000104bdc:	41 0f af d0          	imul   %r8d,%edx
ffff800000104be0:	eb 09                	jmp    ffff800000104beb <color_printk+0x1c6>
ffff800000104be2:	41 0f af c9          	imul   %r9d,%ecx
ffff800000104be6:	50                   	push   %rax
ffff800000104be7:	41 0f af d0          	imul   %r8d,%edx
ffff800000104beb:	48 b8 49 c2 ff ff ff 	movabs $0xffffffffffffc249,%rax
ffff800000104bf2:	ff ff ff 
ffff800000104bf5:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
ffff800000104bfa:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
ffff800000104bff:	48 01 d8             	add    %rbx,%rax
ffff800000104c02:	ff d0                	call   *%rax
ffff800000104c04:	41 ff 44 1d 08       	incl   0x8(%r13,%rbx,1)
ffff800000104c09:	59                   	pop    %rcx
ffff800000104c0a:	42 8b 04 2b          	mov    (%rbx,%r13,1),%eax
ffff800000104c0e:	99                   	cltd
ffff800000104c0f:	42 f7 7c 2b 10       	idivl  0x10(%rbx,%r13,1)
ffff800000104c14:	42 39 44 2b 08       	cmp    %eax,0x8(%rbx,%r13,1)
ffff800000104c19:	7c 0c                	jl     ffff800000104c27 <color_printk+0x202>
ffff800000104c1b:	31 d2                	xor    %edx,%edx
ffff800000104c1d:	41 ff 44 1d 0c       	incl   0xc(%r13,%rbx,1)
ffff800000104c22:	42 89 54 2b 08       	mov    %edx,0x8(%rbx,%r13,1)
ffff800000104c27:	41 8b 44 1d 04       	mov    0x4(%r13,%rbx,1),%eax
ffff800000104c2c:	99                   	cltd
ffff800000104c2d:	41 f7 7c 1d 14       	idivl  0x14(%r13,%rbx,1)
ffff800000104c32:	41 39 44 1d 0c       	cmp    %eax,0xc(%r13,%rbx,1)
ffff800000104c37:	7c 07                	jl     ffff800000104c40 <color_printk+0x21b>
ffff800000104c39:	31 c0                	xor    %eax,%eax
ffff800000104c3b:	41 89 44 1d 0c       	mov    %eax,0xc(%r13,%rbx,1)
ffff800000104c40:	41 ff c4             	inc    %r12d
ffff800000104c43:	e9 b9 fe ff ff       	jmp    ffff800000104b01 <color_printk+0xdc>
ffff800000104c48:	85 ed                	test   %ebp,%ebp
ffff800000104c4a:	0f 85 ba fe ff ff    	jne    ffff800000104b0a <color_printk+0xe5>
ffff800000104c50:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
ffff800000104c57:	44 89 f0             	mov    %r14d,%eax
ffff800000104c5a:	5b                   	pop    %rbx
ffff800000104c5b:	5d                   	pop    %rbp
ffff800000104c5c:	41 5c                	pop    %r12
ffff800000104c5e:	41 5d                	pop    %r13
ffff800000104c60:	41 5e                	pop    %r14
ffff800000104c62:	41 5f                	pop    %r15
ffff800000104c64:	c3                   	ret
