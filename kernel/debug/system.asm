
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 10 5c 00 00 	lgdt   0x5c10(%rip)        # ffff800000105c28 <GDT_END>
ffff800000100018:	0f 01 1d 13 6c 00 00 	lidt   0x6c13(%rip)        # ffff800000106c32 <IDT_END>
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
ffff80000010400d:	49 bb ba 4c 00 00 00 	movabs $0x4cba,%r11
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
ffff800000104071:	48 b8 59 c6 ff ff ff 	movabs $0xffffffffffffc659,%rax
ffff800000104078:	ff ff ff 
ffff80000010407b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010407f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104084:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104089:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010408e:	48 b9 90 c2 ff ff ff 	movabs $0xffffffffffffc290,%rcx
ffff800000104095:	ff ff ff 
ffff800000104098:	4c 01 f9             	add    %r15,%rcx
ffff80000010409b:	ff d1                	call   *%rcx
ffff80000010409d:	48 b8 6a c6 ff ff ff 	movabs $0xffffffffffffc66a,%rax
ffff8000001040a4:	ff ff ff 
ffff8000001040a7:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040b0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040ba:	48 b9 90 c2 ff ff ff 	movabs $0xffffffffffffc290,%rcx
ffff8000001040c1:	ff ff ff 
ffff8000001040c4:	4c 01 f9             	add    %r15,%rcx
ffff8000001040c7:	ff d1                	call   *%rcx
ffff8000001040c9:	48 b8 78 c6 ff ff ff 	movabs $0xffffffffffffc678,%rax
ffff8000001040d0:	ff ff ff 
ffff8000001040d3:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040d7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040dc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040e1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040e6:	48 b9 90 c2 ff ff ff 	movabs $0xffffffffffffc290,%rcx
ffff8000001040ed:	ff ff ff 
ffff8000001040f0:	4c 01 f9             	add    %r15,%rcx
ffff8000001040f3:	ff d1                	call   *%rcx
ffff8000001040f5:	48 b8 d0 c6 ff ff ff 	movabs $0xffffffffffffc6d0,%rax
ffff8000001040fc:	ff ff ff 
ffff8000001040ff:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104103:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104108:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010410d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104112:	48 b9 90 c2 ff ff ff 	movabs $0xffffffffffffc290,%rcx
ffff800000104119:	ff ff ff 
ffff80000010411c:	4c 01 f9             	add    %r15,%rcx
ffff80000010411f:	ff d1                	call   *%rcx
ffff800000104121:	48 b8 08 c7 ff ff ff 	movabs $0xffffffffffffc708,%rax
ffff800000104128:	ff ff ff 
ffff80000010412b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010412f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104134:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104139:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010413e:	48 b9 90 c2 ff ff ff 	movabs $0xffffffffffffc290,%rcx
ffff800000104145:	ff ff ff 
ffff800000104148:	4c 01 f9             	add    %r15,%rcx
ffff80000010414b:	ff d1                	call   *%rcx
ffff80000010414d:	eb fe                	jmp    ffff80000010414d <Start_Kernel+0x14d>
ffff80000010414f:	90                   	nop

ffff800000104150 <number>:
ffff800000104150:	f3 0f 1e fa          	endbr64
ffff800000104154:	41 57                	push   %r15
ffff800000104156:	48 89 f0             	mov    %rsi,%rax
ffff800000104159:	41 89 ca             	mov    %ecx,%r10d
ffff80000010415c:	49 bb 6c 4b 00 00 00 	movabs $0x4b6c,%r11
ffff800000104163:	00 00 00 
ffff800000104166:	41 56                	push   %r14
ffff800000104168:	41 55                	push   %r13
ffff80000010416a:	41 54                	push   %r12
ffff80000010416c:	55                   	push   %rbp
ffff80000010416d:	89 d5                	mov    %edx,%ebp
ffff80000010416f:	48 ba 58 c7 ff ff ff 	movabs $0xffffffffffffc758,%rdx
ffff800000104176:	ff ff ff 
ffff800000104179:	53                   	push   %rbx
ffff80000010417a:	48 8d 1d d3 ff ff ff 	lea    -0x2d(%rip),%rbx        # ffff800000104154 <number+0x4>
ffff800000104181:	4c 01 db             	add    %r11,%rbx
ffff800000104184:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff800000104188:	41 f6 c1 40          	test   $0x40,%r9b
ffff80000010418c:	75 0e                	jne    ffff80000010419c <number+0x4c>
ffff80000010418e:	48 ba 30 c7 ff ff ff 	movabs $0xffffffffffffc730,%rdx
ffff800000104195:	ff ff ff 
ffff800000104198:	4c 8d 24 13          	lea    (%rbx,%rdx,1),%r12
ffff80000010419c:	44 89 ce             	mov    %r9d,%esi
ffff80000010419f:	83 e6 10             	and    $0x10,%esi
ffff8000001041a2:	89 74 24 b0          	mov    %esi,-0x50(%rsp)
ffff8000001041a6:	0f 84 dc 01 00 00    	je     ffff800000104388 <number+0x238>
ffff8000001041ac:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff8000001041b0:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff8000001041b6:	bb 20 00 00 00       	mov    $0x20,%ebx
ffff8000001041bb:	45 89 cf             	mov    %r9d,%r15d
ffff8000001041be:	41 83 e7 20          	and    $0x20,%r15d
ffff8000001041c2:	41 f6 c1 02          	test   $0x2,%r9b
ffff8000001041c6:	74 09                	je     ffff8000001041d1 <number+0x81>
ffff8000001041c8:	48 85 c0             	test   %rax,%rax
ffff8000001041cb:	0f 88 0f 02 00 00    	js     ffff8000001043e0 <number+0x290>
ffff8000001041d1:	41 f6 c1 04          	test   $0x4,%r9b
ffff8000001041d5:	0f 84 e5 01 00 00    	je     ffff8000001043c0 <number+0x270>
ffff8000001041db:	ba 2b 00 00 00       	mov    $0x2b,%edx
ffff8000001041e0:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001041e4:	45 85 ff             	test   %r15d,%r15d
ffff8000001041e7:	74 1a                	je     ffff800000104203 <number+0xb3>
ffff8000001041e9:	83 fd 10             	cmp    $0x10,%ebp
ffff8000001041ec:	0f 84 7e 02 00 00    	je     ffff800000104470 <number+0x320>
ffff8000001041f2:	31 c9                	xor    %ecx,%ecx
ffff8000001041f4:	83 fd 08             	cmp    $0x8,%ebp
ffff8000001041f7:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff8000001041fd:	0f 94 c1             	sete   %cl
ffff800000104200:	41 29 ca             	sub    %ecx,%r10d
ffff800000104203:	48 85 c0             	test   %rax,%rax
ffff800000104206:	0f 85 e9 01 00 00    	jne    ffff8000001043f5 <number+0x2a5>
ffff80000010420c:	48 8d 44 24 b8       	lea    -0x48(%rsp),%rax
ffff800000104211:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff800000104216:	31 c9                	xor    %ecx,%ecx
ffff800000104218:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010421d:	48 89 44 24 a8       	mov    %rax,-0x58(%rsp)
ffff800000104222:	44 39 c6             	cmp    %r8d,%esi
ffff800000104225:	44 0f 4d c6          	cmovge %esi,%r8d
ffff800000104229:	45 29 c2             	sub    %r8d,%r10d
ffff80000010422c:	45 85 f6             	test   %r14d,%r14d
ffff80000010422f:	75 45                	jne    ffff800000104276 <number+0x126>
ffff800000104231:	44 89 d0             	mov    %r10d,%eax
ffff800000104234:	48 01 f8             	add    %rdi,%rax
ffff800000104237:	45 85 d2             	test   %r10d,%r10d
ffff80000010423a:	0f 8e 48 02 00 00    	jle    ffff800000104488 <number+0x338>
ffff800000104240:	49 89 c1             	mov    %rax,%r9
ffff800000104243:	49 29 f9             	sub    %rdi,%r9
ffff800000104246:	41 83 e1 01          	and    $0x1,%r9d
ffff80000010424a:	74 14                	je     ffff800000104260 <number+0x110>
ffff80000010424c:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104250:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104254:	48 39 c7             	cmp    %rax,%rdi
ffff800000104257:	74 17                	je     ffff800000104270 <number+0x120>
ffff800000104259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104260:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104263:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104267:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff80000010426b:	48 39 c7             	cmp    %rax,%rdi
ffff80000010426e:	75 f0                	jne    ffff800000104260 <number+0x110>
ffff800000104270:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff800000104276:	84 d2                	test   %dl,%dl
ffff800000104278:	74 06                	je     ffff800000104280 <number+0x130>
ffff80000010427a:	88 17                	mov    %dl,(%rdi)
ffff80000010427c:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104280:	45 85 ff             	test   %r15d,%r15d
ffff800000104283:	74 12                	je     ffff800000104297 <number+0x147>
ffff800000104285:	83 fd 08             	cmp    $0x8,%ebp
ffff800000104288:	0f 84 d2 01 00 00    	je     ffff800000104460 <number+0x310>
ffff80000010428e:	83 fd 10             	cmp    $0x10,%ebp
ffff800000104291:	0f 84 b1 01 00 00    	je     ffff800000104448 <number+0x2f8>
ffff800000104297:	8b 44 24 b0          	mov    -0x50(%rsp),%eax
ffff80000010429b:	85 c0                	test   %eax,%eax
ffff80000010429d:	75 3d                	jne    ffff8000001042dc <number+0x18c>
ffff80000010429f:	44 89 d0             	mov    %r10d,%eax
ffff8000001042a2:	48 01 f8             	add    %rdi,%rax
ffff8000001042a5:	45 85 d2             	test   %r10d,%r10d
ffff8000001042a8:	0f 8e e3 01 00 00    	jle    ffff800000104491 <number+0x341>
ffff8000001042ae:	48 89 c2             	mov    %rax,%rdx
ffff8000001042b1:	48 29 fa             	sub    %rdi,%rdx
ffff8000001042b4:	83 e2 01             	and    $0x1,%edx
ffff8000001042b7:	74 0f                	je     ffff8000001042c8 <number+0x178>
ffff8000001042b9:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042bd:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff8000001042c0:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042c3:	74 11                	je     ffff8000001042d6 <number+0x186>
ffff8000001042c5:	0f 1f 00             	nopl   (%rax)
ffff8000001042c8:	88 1f                	mov    %bl,(%rdi)
ffff8000001042ca:	48 83 c7 02          	add    $0x2,%rdi
ffff8000001042ce:	88 5f ff             	mov    %bl,-0x1(%rdi)
ffff8000001042d1:	48 39 c7             	cmp    %rax,%rdi
ffff8000001042d4:	75 f2                	jne    ffff8000001042c8 <number+0x178>
ffff8000001042d6:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
ffff8000001042dc:	44 39 c6             	cmp    %r8d,%esi
ffff8000001042df:	0f 8d 9b 01 00 00    	jge    ffff800000104480 <number+0x330>
ffff8000001042e5:	41 29 f0             	sub    %esi,%r8d
ffff8000001042e8:	41 8d 50 ff          	lea    -0x1(%r8),%edx
ffff8000001042ec:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff8000001042f1:	83 e2 01             	and    $0x1,%edx
ffff8000001042f4:	75 12                	jne    ffff800000104308 <number+0x1b8>
ffff8000001042f6:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042fa:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff8000001042fe:	48 39 c7             	cmp    %rax,%rdi
ffff800000104301:	74 15                	je     ffff800000104318 <number+0x1c8>
ffff800000104303:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104308:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010430b:	48 83 c7 02          	add    $0x2,%rdi
ffff80000010430f:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff800000104313:	48 39 c7             	cmp    %rax,%rdi
ffff800000104316:	75 f0                	jne    ffff800000104308 <number+0x1b8>
ffff800000104318:	48 8b 5c 24 a8       	mov    -0x58(%rsp),%rbx
ffff80000010431d:	48 63 d1             	movslq %ecx,%rdx
ffff800000104320:	83 c1 01             	add    $0x1,%ecx
ffff800000104323:	48 63 c9             	movslq %ecx,%rcx
ffff800000104326:	48 01 d3             	add    %rdx,%rbx
ffff800000104329:	48 01 c1             	add    %rax,%rcx
ffff80000010432c:	48 89 da             	mov    %rbx,%rdx
ffff80000010432f:	90                   	nop
ffff800000104330:	0f b6 32             	movzbl (%rdx),%esi
ffff800000104333:	48 83 c0 01          	add    $0x1,%rax
ffff800000104337:	48 83 ea 01          	sub    $0x1,%rdx
ffff80000010433b:	40 88 70 ff          	mov    %sil,-0x1(%rax)
ffff80000010433f:	48 39 c8             	cmp    %rcx,%rax
ffff800000104342:	75 ec                	jne    ffff800000104330 <number+0x1e0>
ffff800000104344:	45 85 d2             	test   %r10d,%r10d
ffff800000104347:	7e 2f                	jle    ffff800000104378 <number+0x228>
ffff800000104349:	45 89 d2             	mov    %r10d,%r10d
ffff80000010434c:	4a 8d 04 11          	lea    (%rcx,%r10,1),%rax
ffff800000104350:	41 83 e2 01          	and    $0x1,%r10d
ffff800000104354:	74 12                	je     ffff800000104368 <number+0x218>
ffff800000104356:	48 83 c1 01          	add    $0x1,%rcx
ffff80000010435a:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff80000010435e:	48 39 c1             	cmp    %rax,%rcx
ffff800000104361:	74 15                	je     ffff800000104378 <number+0x228>
ffff800000104363:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104368:	c6 01 20             	movb   $0x20,(%rcx)
ffff80000010436b:	48 83 c1 02          	add    $0x2,%rcx
ffff80000010436f:	c6 41 ff 20          	movb   $0x20,-0x1(%rcx)
ffff800000104373:	48 39 c1             	cmp    %rax,%rcx
ffff800000104376:	75 f0                	jne    ffff800000104368 <number+0x218>
ffff800000104378:	5b                   	pop    %rbx
ffff800000104379:	5d                   	pop    %rbp
ffff80000010437a:	41 5c                	pop    %r12
ffff80000010437c:	41 5d                	pop    %r13
ffff80000010437e:	41 5e                	pop    %r14
ffff800000104380:	41 5f                	pop    %r15
ffff800000104382:	c3                   	ret
ffff800000104383:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104388:	44 89 ca             	mov    %r9d,%edx
ffff80000010438b:	45 89 ce             	mov    %r9d,%r14d
ffff80000010438e:	45 89 cf             	mov    %r9d,%r15d
ffff800000104391:	83 e2 01             	and    $0x1,%edx
ffff800000104394:	41 83 e6 11          	and    $0x11,%r14d
ffff800000104398:	83 fa 01             	cmp    $0x1,%edx
ffff80000010439b:	19 db                	sbb    %ebx,%ebx
ffff80000010439d:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff8000001043a0:	83 c3 30             	add    $0x30,%ebx
ffff8000001043a3:	85 d2                	test   %edx,%edx
ffff8000001043a5:	44 0f 44 f6          	cmove  %esi,%r14d
ffff8000001043a9:	41 83 e7 20          	and    $0x20,%r15d
ffff8000001043ad:	41 f6 c1 02          	test   $0x2,%r9b
ffff8000001043b1:	0f 85 11 fe ff ff    	jne    ffff8000001041c8 <number+0x78>
ffff8000001043b7:	e9 15 fe ff ff       	jmp    ffff8000001041d1 <number+0x81>
ffff8000001043bc:	0f 1f 40 00          	nopl   0x0(%rax)
ffff8000001043c0:	44 89 ca             	mov    %r9d,%edx
ffff8000001043c3:	83 e2 08             	and    $0x8,%edx
ffff8000001043c6:	0f 84 18 fe ff ff    	je     ffff8000001041e4 <number+0x94>
ffff8000001043cc:	ba 20 00 00 00       	mov    $0x20,%edx
ffff8000001043d1:	e9 0a fe ff ff       	jmp    ffff8000001041e0 <number+0x90>
ffff8000001043d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff8000001043dd:	00 00 00 
ffff8000001043e0:	48 f7 d8             	neg    %rax
ffff8000001043e3:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001043e7:	ba 2d 00 00 00       	mov    $0x2d,%edx
ffff8000001043ec:	45 85 ff             	test   %r15d,%r15d
ffff8000001043ef:	0f 85 f4 fd ff ff    	jne    ffff8000001041e9 <number+0x99>
ffff8000001043f5:	48 8d 74 24 b8       	lea    -0x48(%rsp),%rsi
ffff8000001043fa:	44 89 7c 24 b4       	mov    %r15d,-0x4c(%rsp)
ffff8000001043ff:	4c 63 dd             	movslq %ebp,%r11
ffff800000104402:	45 31 ed             	xor    %r13d,%r13d
ffff800000104405:	48 89 74 24 a8       	mov    %rsi,-0x58(%rsp)
ffff80000010440a:	49 89 f1             	mov    %rsi,%r9
ffff80000010440d:	41 89 d7             	mov    %edx,%r15d
ffff800000104410:	31 f6                	xor    %esi,%esi
ffff800000104412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104418:	44 89 ea             	mov    %r13d,%edx
ffff80000010441b:	89 f1                	mov    %esi,%ecx
ffff80000010441d:	49 83 c1 01          	add    $0x1,%r9
ffff800000104421:	83 c6 01             	add    $0x1,%esi
ffff800000104424:	49 f7 f3             	div    %r11
ffff800000104427:	48 63 d2             	movslq %edx,%rdx
ffff80000010442a:	41 0f b6 14 14       	movzbl (%r12,%rdx,1),%edx
ffff80000010442f:	41 88 51 ff          	mov    %dl,-0x1(%r9)
ffff800000104433:	48 85 c0             	test   %rax,%rax
ffff800000104436:	75 e0                	jne    ffff800000104418 <number+0x2c8>
ffff800000104438:	44 89 fa             	mov    %r15d,%edx
ffff80000010443b:	44 8b 7c 24 b4       	mov    -0x4c(%rsp),%r15d
ffff800000104440:	e9 dd fd ff ff       	jmp    ffff800000104222 <number+0xd2>
ffff800000104445:	0f 1f 00             	nopl   (%rax)
ffff800000104448:	41 0f b6 44 24 21    	movzbl 0x21(%r12),%eax
ffff80000010444e:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104451:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104455:	88 47 ff             	mov    %al,-0x1(%rdi)
ffff800000104458:	e9 3a fe ff ff       	jmp    ffff800000104297 <number+0x147>
ffff80000010445d:	0f 1f 00             	nopl   (%rax)
ffff800000104460:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104463:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104467:	e9 2b fe ff ff       	jmp    ffff800000104297 <number+0x147>
ffff80000010446c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104470:	41 83 ea 02          	sub    $0x2,%r10d
ffff800000104474:	41 bf 20 00 00 00    	mov    $0x20,%r15d
ffff80000010447a:	e9 84 fd ff ff       	jmp    ffff800000104203 <number+0xb3>
ffff80000010447f:	90                   	nop
ffff800000104480:	48 89 f8             	mov    %rdi,%rax
ffff800000104483:	e9 90 fe ff ff       	jmp    ffff800000104318 <number+0x1c8>
ffff800000104488:	41 83 ea 01          	sub    $0x1,%r10d
ffff80000010448c:	e9 e5 fd ff ff       	jmp    ffff800000104276 <number+0x126>
ffff800000104491:	41 83 ea 01          	sub    $0x1,%r10d
ffff800000104495:	e9 42 fe ff ff       	jmp    ffff8000001042dc <number+0x18c>
ffff80000010449a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

ffff8000001044a0 <putchar>:
ffff8000001044a0:	f3 0f 1e fa          	endbr64
ffff8000001044a4:	89 f0                	mov    %esi,%eax
ffff8000001044a6:	4c 8d 15 f7 ff ff ff 	lea    -0x9(%rip),%r10        # ffff8000001044a4 <putchar+0x4>
ffff8000001044ad:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
ffff8000001044b2:	48 63 d2             	movslq %edx,%rdx
ffff8000001044b5:	49 bb 1c 48 00 00 00 	movabs $0x481c,%r11
ffff8000001044bc:	00 00 00 
ffff8000001044bf:	0f af c8             	imul   %eax,%ecx
ffff8000001044c2:	4d 01 da             	add    %r11,%r10
ffff8000001044c5:	48 c1 e6 04          	shl    $0x4,%rsi
ffff8000001044c9:	49 bb 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%r11
ffff8000001044d0:	ff ff ff 
ffff8000001044d3:	4d 01 da             	add    %r11,%r10
ffff8000001044d6:	4c 01 d6             	add    %r10,%rsi
ffff8000001044d9:	4c 63 d0             	movslq %eax,%r10
ffff8000001044dc:	48 63 c1             	movslq %ecx,%rax
ffff8000001044df:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff8000001044e4:	49 c1 e2 02          	shl    $0x2,%r10
ffff8000001044e8:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
ffff8000001044ec:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
ffff8000001044f0:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
ffff8000001044f4:	ba 00 01 00 00       	mov    $0x100,%edx
ffff8000001044f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104500:	0f b6 0e             	movzbl (%rsi),%ecx
ffff800000104503:	d1 fa                	sar    $1,%edx
ffff800000104505:	85 d1                	test   %edx,%ecx
ffff800000104507:	44 89 c1             	mov    %r8d,%ecx
ffff80000010450a:	41 0f 44 c9          	cmove  %r9d,%ecx
ffff80000010450e:	48 83 c0 04          	add    $0x4,%rax
ffff800000104512:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff800000104515:	48 39 f8             	cmp    %rdi,%rax
ffff800000104518:	75 e6                	jne    ffff800000104500 <putchar+0x60>
ffff80000010451a:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010451e:	4a 8d 3c 10          	lea    (%rax,%r10,1),%rdi
ffff800000104522:	4c 39 de             	cmp    %r11,%rsi
ffff800000104525:	75 c9                	jne    ffff8000001044f0 <putchar+0x50>
ffff800000104527:	c3                   	ret
ffff800000104528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010452f:	00 

ffff800000104530 <clear_screen>:
ffff800000104530:	f3 0f 1e fa          	endbr64
ffff800000104534:	49 bb 8c 47 00 00 00 	movabs $0x478c,%r11
ffff80000010453b:	00 00 00 
ffff80000010453e:	41 57                	push   %r15
ffff800000104540:	41 56                	push   %r14
ffff800000104542:	41 55                	push   %r13
ffff800000104544:	41 54                	push   %r12
ffff800000104546:	55                   	push   %rbp
ffff800000104547:	48 bd 20 10 00 00 00 	movabs $0x1020,%rbp
ffff80000010454e:	00 00 00 
ffff800000104551:	53                   	push   %rbx
ffff800000104552:	48 8d 1d db ff ff ff 	lea    -0x25(%rip),%rbx        # ffff800000104534 <clear_screen+0x4>
ffff800000104559:	4c 01 db             	add    %r11,%rbx
ffff80000010455c:	8b 44 1d 00          	mov    0x0(%rbp,%rbx,1),%eax
ffff800000104560:	99                   	cltd
ffff800000104561:	f7 7c 1d 10          	idivl  0x10(%rbp,%rbx,1)
ffff800000104565:	89 c1                	mov    %eax,%ecx
ffff800000104567:	8b 44 1d 04          	mov    0x4(%rbp,%rbx,1),%eax
ffff80000010456b:	99                   	cltd
ffff80000010456c:	f7 7c 1d 14          	idivl  0x14(%rbp,%rbx,1)
ffff800000104570:	85 c0                	test   %eax,%eax
ffff800000104572:	0f 8e d5 00 00 00    	jle    ffff80000010464d <clear_screen+0x11d>
ffff800000104578:	4c 8b 6c 1d 18       	mov    0x18(%rbp,%rbx,1),%r13
ffff80000010457d:	85 c9                	test   %ecx,%ecx
ffff80000010457f:	0f 8e c8 00 00 00    	jle    ffff80000010464d <clear_screen+0x11d>
ffff800000104585:	48 ba 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rdx
ffff80000010458c:	ff ff ff 
ffff80000010458f:	41 89 f8             	mov    %edi,%r8d
ffff800000104592:	41 89 f1             	mov    %esi,%r9d
ffff800000104595:	45 31 e4             	xor    %r12d,%r12d
ffff800000104598:	49 bf 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%r15
ffff80000010459f:	ff ff ff 
ffff8000001045a2:	4c 8d 1c 1a          	lea    (%rdx,%rbx,1),%r11
ffff8000001045a6:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
ffff8000001045ab:	31 d2                	xor    %edx,%edx
ffff8000001045ad:	89 c6                	mov    %eax,%esi
ffff8000001045af:	8b 44 1d 14          	mov    0x14(%rbp,%rbx,1),%eax
ffff8000001045b3:	4c 63 74 1d 00       	movslq 0x0(%rbp,%rbx,1),%r14
ffff8000001045b8:	89 54 24 f4          	mov    %edx,-0xc(%rsp)
ffff8000001045bc:	41 0f af c4          	imul   %r12d,%eax
ffff8000001045c0:	4c 89 f7             	mov    %r14,%rdi
ffff8000001045c3:	49 c1 e6 02          	shl    $0x2,%r14
ffff8000001045c7:	0f af c7             	imul   %edi,%eax
ffff8000001045ca:	8b 7c 1d 10          	mov    0x10(%rbp,%rbx,1),%edi
ffff8000001045ce:	0f af fa             	imul   %edx,%edi
ffff8000001045d1:	48 98                	cltq
ffff8000001045d3:	48 63 ff             	movslq %edi,%rdi
ffff8000001045d6:	48 8d 44 38 08       	lea    0x8(%rax,%rdi,1),%rax
ffff8000001045db:	48 8b 7c 24 f8       	mov    -0x8(%rsp),%rdi
ffff8000001045e0:	4c 8d 14 87          	lea    (%rdi,%rax,4),%r10
ffff8000001045e4:	49 8d 3c 1f          	lea    (%r15,%rbx,1),%rdi
ffff8000001045e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001045ef:	00 
ffff8000001045f0:	49 8d 42 e0          	lea    -0x20(%r10),%rax
ffff8000001045f4:	ba 00 01 00 00       	mov    $0x100,%edx
ffff8000001045f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000104600:	44 0f b6 2f          	movzbl (%rdi),%r13d
ffff800000104604:	d1 fa                	sar    $1,%edx
ffff800000104606:	41 85 d5             	test   %edx,%r13d
ffff800000104609:	45 89 c5             	mov    %r8d,%r13d
ffff80000010460c:	45 0f 44 e9          	cmove  %r9d,%r13d
ffff800000104610:	48 83 c0 04          	add    $0x4,%rax
ffff800000104614:	44 89 68 fc          	mov    %r13d,-0x4(%rax)
ffff800000104618:	4c 39 d0             	cmp    %r10,%rax
ffff80000010461b:	75 e3                	jne    ffff800000104600 <clear_screen+0xd0>
ffff80000010461d:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104621:	4e 8d 14 30          	lea    (%rax,%r14,1),%r10
ffff800000104625:	4c 39 df             	cmp    %r11,%rdi
ffff800000104628:	75 c6                	jne    ffff8000001045f0 <clear_screen+0xc0>
ffff80000010462a:	8b 54 24 f4          	mov    -0xc(%rsp),%edx
ffff80000010462e:	83 c2 01             	add    $0x1,%edx
ffff800000104631:	39 d1                	cmp    %edx,%ecx
ffff800000104633:	0f 85 76 ff ff ff    	jne    ffff8000001045af <clear_screen+0x7f>
ffff800000104639:	41 83 c4 01          	add    $0x1,%r12d
ffff80000010463d:	4c 8b 6c 24 f8       	mov    -0x8(%rsp),%r13
ffff800000104642:	89 f0                	mov    %esi,%eax
ffff800000104644:	44 39 e6             	cmp    %r12d,%esi
ffff800000104647:	0f 85 59 ff ff ff    	jne    ffff8000001045a6 <clear_screen+0x76>
ffff80000010464d:	48 c7 44 1d 08 00 00 	movq   $0x0,0x8(%rbp,%rbx,1)
ffff800000104654:	00 00 
ffff800000104656:	5b                   	pop    %rbx
ffff800000104657:	5d                   	pop    %rbp
ffff800000104658:	41 5c                	pop    %r12
ffff80000010465a:	41 5d                	pop    %r13
ffff80000010465c:	41 5e                	pop    %r14
ffff80000010465e:	41 5f                	pop    %r15
ffff800000104660:	c3                   	ret
ffff800000104661:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
ffff800000104668:	00 00 00 00 
ffff80000010466c:	0f 1f 40 00          	nopl   0x0(%rax)

ffff800000104670 <skip_atoi2>:
ffff800000104670:	f3 0f 1e fa          	endbr64
ffff800000104674:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104677:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010467a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010467d:	80 f9 09             	cmp    $0x9,%cl
ffff800000104680:	77 36                	ja     ffff8000001046b8 <skip_atoi2+0x48>
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
ffff8000001046ae:	76 e0                	jbe    ffff800000104690 <skip_atoi2+0x20>
ffff8000001046b0:	89 c8                	mov    %ecx,%eax
ffff8000001046b2:	c3                   	ret
ffff8000001046b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff8000001046b8:	31 c9                	xor    %ecx,%ecx
ffff8000001046ba:	89 c8                	mov    %ecx,%eax
ffff8000001046bc:	c3                   	ret
ffff8000001046bd:	0f 1f 00             	nopl   (%rax)

ffff8000001046c0 <skip_atoi>:
ffff8000001046c0:	f3 0f 1e fa          	endbr64
ffff8000001046c4:	48 8b 17             	mov    (%rdi),%rdx
ffff8000001046c7:	0f b6 02             	movzbl (%rdx),%eax
ffff8000001046ca:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff8000001046cd:	80 f9 09             	cmp    $0x9,%cl
ffff8000001046d0:	77 36                	ja     ffff800000104708 <skip_atoi+0x48>
ffff8000001046d2:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001046d6:	31 c9                	xor    %ecx,%ecx
ffff8000001046d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001046df:	00 
ffff8000001046e0:	83 e8 30             	sub    $0x30,%eax
ffff8000001046e3:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001046e6:	48 89 17             	mov    %rdx,(%rdi)
ffff8000001046e9:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001046ed:	0f be c0             	movsbl %al,%eax
ffff8000001046f0:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff8000001046f3:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
ffff8000001046f7:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001046fa:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001046fe:	76 e0                	jbe    ffff8000001046e0 <skip_atoi+0x20>
ffff800000104700:	89 c8                	mov    %ecx,%eax
ffff800000104702:	c3                   	ret
ffff800000104703:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104708:	31 c9                	xor    %ecx,%ecx
ffff80000010470a:	89 c8                	mov    %ecx,%eax
ffff80000010470c:	c3                   	ret
ffff80000010470d:	0f 1f 00             	nopl   (%rax)

ffff800000104710 <vsprintf>:
ffff800000104710:	f3 0f 1e fa          	endbr64
ffff800000104714:	49 bb ac 45 00 00 00 	movabs $0x45ac,%r11
ffff80000010471b:	00 00 00 
ffff80000010471e:	41 57                	push   %r15
ffff800000104720:	41 56                	push   %r14
ffff800000104722:	4c 8d 35 eb ff ff ff 	lea    -0x15(%rip),%r14        # ffff800000104714 <vsprintf+0x4>
ffff800000104729:	41 55                	push   %r13
ffff80000010472b:	4d 01 de             	add    %r11,%r14
ffff80000010472e:	49 89 fd             	mov    %rdi,%r13
ffff800000104731:	41 54                	push   %r12
ffff800000104733:	55                   	push   %rbp
ffff800000104734:	53                   	push   %rbx
ffff800000104735:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104739:	0f b6 06             	movzbl (%rsi),%eax
ffff80000010473c:	84 c0                	test   %al,%al
ffff80000010473e:	0f 84 57 06 00 00    	je     ffff800000104d9b <vsprintf+0x68b>
ffff800000104744:	48 89 f1             	mov    %rsi,%rcx
ffff800000104747:	49 89 d4             	mov    %rdx,%r12
ffff80000010474a:	48 8d 2d 87 0e 00 00 	lea    0xe87(%rip),%rbp        # ffff8000001055d8 <_etext+0x2bf>
ffff800000104751:	49 bf 01 00 00 10 01 	movabs $0x400110000001,%r15
ffff800000104758:	40 00 00 
ffff80000010475b:	eb 18                	jmp    ffff800000104775 <vsprintf+0x65>
ffff80000010475d:	0f 1f 00             	nopl   (%rax)
ffff800000104760:	88 07                	mov    %al,(%rdi)
ffff800000104762:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104766:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104769:	48 83 c7 01          	add    $0x1,%rdi
ffff80000010476d:	84 c0                	test   %al,%al
ffff80000010476f:	0f 84 2b 01 00 00    	je     ffff8000001048a0 <vsprintf+0x190>
ffff800000104775:	3c 25                	cmp    $0x25,%al
ffff800000104777:	75 e7                	jne    ffff800000104760 <vsprintf+0x50>
ffff800000104779:	45 31 c9             	xor    %r9d,%r9d
ffff80000010477c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104780:	0f be 41 01          	movsbl 0x1(%rcx),%eax
ffff800000104784:	48 8d 59 01          	lea    0x1(%rcx),%rbx
ffff800000104788:	8d 50 e0             	lea    -0x20(%rax),%edx
ffff80000010478b:	80 fa 10             	cmp    $0x10,%dl
ffff80000010478e:	77 10                	ja     ffff8000001047a0 <vsprintf+0x90>
ffff800000104790:	0f b6 d2             	movzbl %dl,%edx
ffff800000104793:	48 8b 74 d5 00       	mov    0x0(%rbp,%rdx,8),%rsi
ffff800000104798:	48 01 ee             	add    %rbp,%rsi
ffff80000010479b:	3e ff e6             	notrack jmp *%rsi
ffff80000010479e:	66 90                	xchg   %ax,%ax
ffff8000001047a0:	8d 50 d0             	lea    -0x30(%rax),%edx
ffff8000001047a3:	80 fa 09             	cmp    $0x9,%dl
ffff8000001047a6:	0f 86 44 01 00 00    	jbe    ffff8000001048f0 <vsprintf+0x1e0>
ffff8000001047ac:	ba ff ff ff ff       	mov    $0xffffffff,%edx
ffff8000001047b1:	3c 2a                	cmp    $0x2a,%al
ffff8000001047b3:	0f 84 67 01 00 00    	je     ffff800000104920 <vsprintf+0x210>
ffff8000001047b9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff8000001047bf:	3c 2e                	cmp    $0x2e,%al
ffff8000001047c1:	0f 84 f9 00 00 00    	je     ffff8000001048c0 <vsprintf+0x1b0>
ffff8000001047c7:	8d 48 b4             	lea    -0x4c(%rax),%ecx
ffff8000001047ca:	80 f9 2e             	cmp    $0x2e,%cl
ffff8000001047cd:	0f 87 7d 00 00 00    	ja     ffff800000104850 <vsprintf+0x140>
ffff8000001047d3:	49 0f a3 cf          	bt     %rcx,%r15
ffff8000001047d7:	73 77                	jae    ffff800000104850 <vsprintf+0x140>
ffff8000001047d9:	0f b6 73 01          	movzbl 0x1(%rbx),%esi
ffff8000001047dd:	4c 8d 53 01          	lea    0x1(%rbx),%r10
ffff8000001047e1:	8d 4e db             	lea    -0x25(%rsi),%ecx
ffff8000001047e4:	80 f9 53             	cmp    $0x53,%cl
ffff8000001047e7:	0f 87 86 00 00 00    	ja     ffff800000104873 <vsprintf+0x163>
ffff8000001047ed:	0f b6 c9             	movzbl %cl,%ecx
ffff8000001047f0:	48 8d 35 69 0e 00 00 	lea    0xe69(%rip),%rsi        # ffff800000105660 <_etext+0x347>
ffff8000001047f7:	48 03 34 ce          	add    (%rsi,%rcx,8),%rsi
ffff8000001047fb:	3e ff e6             	notrack jmp *%rsi
ffff8000001047fe:	66 90                	xchg   %ax,%ax
ffff800000104800:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104804:	48 89 d9             	mov    %rbx,%rcx
ffff800000104807:	e9 74 ff ff ff       	jmp    ffff800000104780 <vsprintf+0x70>
ffff80000010480c:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104810:	41 83 c9 10          	or     $0x10,%r9d
ffff800000104814:	eb ee                	jmp    ffff800000104804 <vsprintf+0xf4>
ffff800000104816:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010481d:	00 00 00 
ffff800000104820:	41 83 c9 04          	or     $0x4,%r9d
ffff800000104824:	eb de                	jmp    ffff800000104804 <vsprintf+0xf4>
ffff800000104826:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010482d:	00 00 00 
ffff800000104830:	41 83 c9 20          	or     $0x20,%r9d
ffff800000104834:	eb ce                	jmp    ffff800000104804 <vsprintf+0xf4>
ffff800000104836:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010483d:	00 00 00 
ffff800000104840:	41 83 c9 08          	or     $0x8,%r9d
ffff800000104844:	eb be                	jmp    ffff800000104804 <vsprintf+0xf4>
ffff800000104846:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff80000010484d:	00 00 00 
ffff800000104850:	83 e8 25             	sub    $0x25,%eax
ffff800000104853:	3c 53                	cmp    $0x53,%al
ffff800000104855:	77 19                	ja     ffff800000104870 <vsprintf+0x160>
ffff800000104857:	0f b6 c0             	movzbl %al,%eax
ffff80000010485a:	48 8d 0d 9f 10 00 00 	lea    0x109f(%rip),%rcx        # ffff800000105900 <_etext+0x5e7>
ffff800000104861:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
ffff800000104865:	3e ff e1             	notrack jmp *%rcx
ffff800000104868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010486f:	00 
ffff800000104870:	49 89 da             	mov    %rbx,%r10
ffff800000104873:	c6 07 25             	movb   $0x25,(%rdi)
ffff800000104876:	41 0f b6 02          	movzbl (%r10),%eax
ffff80000010487a:	84 c0                	test   %al,%al
ffff80000010487c:	0f 84 e2 03 00 00    	je     ffff800000104c64 <vsprintf+0x554>
ffff800000104882:	88 47 01             	mov    %al,0x1(%rdi)
ffff800000104885:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff80000010488a:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff80000010488e:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104892:	84 c0                	test   %al,%al
ffff800000104894:	0f 85 db fe ff ff    	jne    ffff800000104775 <vsprintf+0x65>
ffff80000010489a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001048a0:	89 f8                	mov    %edi,%eax
ffff8000001048a2:	44 29 e8             	sub    %r13d,%eax
ffff8000001048a5:	c6 07 00             	movb   $0x0,(%rdi)
ffff8000001048a8:	48 83 c4 18          	add    $0x18,%rsp
ffff8000001048ac:	5b                   	pop    %rbx
ffff8000001048ad:	5d                   	pop    %rbp
ffff8000001048ae:	41 5c                	pop    %r12
ffff8000001048b0:	41 5d                	pop    %r13
ffff8000001048b2:	41 5e                	pop    %r14
ffff8000001048b4:	41 5f                	pop    %r15
ffff8000001048b6:	c3                   	ret
ffff8000001048b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff8000001048be:	00 00 
ffff8000001048c0:	0f be 43 01          	movsbl 0x1(%rbx),%eax
ffff8000001048c4:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
ffff8000001048c8:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001048cb:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001048cf:	0f 86 b3 02 00 00    	jbe    ffff800000104b88 <vsprintf+0x478>
ffff8000001048d5:	3c 2a                	cmp    $0x2a,%al
ffff8000001048d7:	0f 84 e3 02 00 00    	je     ffff800000104bc0 <vsprintf+0x4b0>
ffff8000001048dd:	48 89 cb             	mov    %rcx,%rbx
ffff8000001048e0:	45 31 c0             	xor    %r8d,%r8d
ffff8000001048e3:	e9 df fe ff ff       	jmp    ffff8000001047c7 <vsprintf+0xb7>
ffff8000001048e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff8000001048ef:	00 
ffff8000001048f0:	31 d2                	xor    %edx,%edx
ffff8000001048f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001048f8:	83 e8 30             	sub    $0x30,%eax
ffff8000001048fb:	48 83 c3 01          	add    $0x1,%rbx
ffff8000001048ff:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
ffff800000104902:	0f be c0             	movsbl %al,%eax
ffff800000104905:	8d 14 50             	lea    (%rax,%rdx,2),%edx
ffff800000104908:	0f be 03             	movsbl (%rbx),%eax
ffff80000010490b:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010490e:	80 f9 09             	cmp    $0x9,%cl
ffff800000104911:	76 e5                	jbe    ffff8000001048f8 <vsprintf+0x1e8>
ffff800000104913:	e9 a1 fe ff ff       	jmp    ffff8000001047b9 <vsprintf+0xa9>
ffff800000104918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff80000010491f:	00 
ffff800000104920:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104924:	48 8d 59 02          	lea    0x2(%rcx),%rbx
ffff800000104928:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010492b:	77 23                	ja     ffff800000104950 <vsprintf+0x240>
ffff80000010492d:	89 c2                	mov    %eax,%edx
ffff80000010492f:	83 c0 08             	add    $0x8,%eax
ffff800000104932:	49 03 54 24 10       	add    0x10(%r12),%rdx
ffff800000104937:	41 89 04 24          	mov    %eax,(%r12)
ffff80000010493b:	8b 12                	mov    (%rdx),%edx
ffff80000010493d:	85 d2                	test   %edx,%edx
ffff80000010493f:	79 06                	jns    ffff800000104947 <vsprintf+0x237>
ffff800000104941:	f7 da                	neg    %edx
ffff800000104943:	41 83 c9 10          	or     $0x10,%r9d
ffff800000104947:	0f be 41 02          	movsbl 0x2(%rcx),%eax
ffff80000010494b:	e9 69 fe ff ff       	jmp    ffff8000001047b9 <vsprintf+0xa9>
ffff800000104950:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
ffff800000104955:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104959:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff80000010495e:	eb db                	jmp    ffff80000010493b <vsprintf+0x22b>
ffff800000104960:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104964:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104968:	83 f8 6c             	cmp    $0x6c,%eax
ffff80000010496b:	0f 84 07 04 00 00    	je     ffff800000104d78 <vsprintf+0x668>
ffff800000104971:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104974:	0f 87 86 02 00 00    	ja     ffff800000104c00 <vsprintf+0x4f0>
ffff80000010497a:	89 c8                	mov    %ecx,%eax
ffff80000010497c:	83 c1 08             	add    $0x8,%ecx
ffff80000010497f:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104984:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104988:	89 d1                	mov    %edx,%ecx
ffff80000010498a:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff80000010498f:	8b 30                	mov    (%rax),%esi
ffff800000104991:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104996:	eb 36                	jmp    ffff8000001049ce <vsprintf+0x2be>
ffff800000104998:	41 83 c9 02          	or     $0x2,%r9d
ffff80000010499c:	41 8b 0c 24          	mov    (%r12),%ecx
ffff8000001049a0:	83 f8 6c             	cmp    $0x6c,%eax
ffff8000001049a3:	0f 84 8f 03 00 00    	je     ffff800000104d38 <vsprintf+0x628>
ffff8000001049a9:	83 f9 2f             	cmp    $0x2f,%ecx
ffff8000001049ac:	0f 87 66 02 00 00    	ja     ffff800000104c18 <vsprintf+0x508>
ffff8000001049b2:	89 c8                	mov    %ecx,%eax
ffff8000001049b4:	83 c1 08             	add    $0x8,%ecx
ffff8000001049b7:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff8000001049bc:	41 89 0c 24          	mov    %ecx,(%r12)
ffff8000001049c0:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff8000001049c5:	8b 30                	mov    (%rax),%esi
ffff8000001049c7:	89 d1                	mov    %edx,%ecx
ffff8000001049c9:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001049ce:	48 b8 90 b4 ff ff ff 	movabs $0xffffffffffffb490,%rax
ffff8000001049d5:	ff ff ff 
ffff8000001049d8:	4c 01 f0             	add    %r14,%rax
ffff8000001049db:	ff d0                	call   *%rax
ffff8000001049dd:	4c 8b 54 24 08       	mov    0x8(%rsp),%r10
ffff8000001049e2:	48 89 c7             	mov    %rax,%rdi
ffff8000001049e5:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff8000001049e9:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff8000001049ee:	e9 7a fd ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff8000001049f3:	49 89 da             	mov    %rbx,%r10
ffff8000001049f6:	c6 07 25             	movb   $0x25,(%rdi)
ffff8000001049f9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff8000001049fd:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104a02:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104a06:	e9 62 fd ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104a0b:	49 89 da             	mov    %rbx,%r10
ffff800000104a0e:	41 83 e1 10          	and    $0x10,%r9d
ffff800000104a12:	0f 84 63 02 00 00    	je     ffff800000104c7b <vsprintf+0x56b>
ffff800000104a18:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104a1c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a1f:	0f 86 2c 02 00 00    	jbe    ffff800000104c51 <vsprintf+0x541>
ffff800000104a25:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104a2a:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104a2e:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104a33:	8b 01                	mov    (%rcx),%eax
ffff800000104a35:	48 8d 77 01          	lea    0x1(%rdi),%rsi
ffff800000104a39:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104a3d:	88 07                	mov    %al,(%rdi)
ffff800000104a3f:	89 d0                	mov    %edx,%eax
ffff800000104a41:	48 01 c7             	add    %rax,%rdi
ffff800000104a44:	83 fa 01             	cmp    $0x1,%edx
ffff800000104a47:	0f 8e dd 04 00 00    	jle    ffff800000104f2a <vsprintf+0x81a>
ffff800000104a4d:	48 89 f8             	mov    %rdi,%rax
ffff800000104a50:	48 29 f0             	sub    %rsi,%rax
ffff800000104a53:	a8 01                	test   $0x1,%al
ffff800000104a55:	74 11                	je     ffff800000104a68 <vsprintf+0x358>
ffff800000104a57:	48 83 c6 01          	add    $0x1,%rsi
ffff800000104a5b:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a5f:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a62:	74 85                	je     ffff8000001049e9 <vsprintf+0x2d9>
ffff800000104a64:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104a68:	c6 06 20             	movb   $0x20,(%rsi)
ffff800000104a6b:	48 83 c6 02          	add    $0x2,%rsi
ffff800000104a6f:	c6 46 ff 20          	movb   $0x20,-0x1(%rsi)
ffff800000104a73:	48 39 f7             	cmp    %rsi,%rdi
ffff800000104a76:	75 f0                	jne    ffff800000104a68 <vsprintf+0x358>
ffff800000104a78:	e9 6c ff ff ff       	jmp    ffff8000001049e9 <vsprintf+0x2d9>
ffff800000104a7d:	49 89 da             	mov    %rbx,%r10
ffff800000104a80:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104a84:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a87:	0f 87 b1 01 00 00    	ja     ffff800000104c3e <vsprintf+0x52e>
ffff800000104a8d:	89 c1                	mov    %eax,%ecx
ffff800000104a8f:	83 c0 08             	add    $0x8,%eax
ffff800000104a92:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104a97:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104a9b:	4c 8b 19             	mov    (%rcx),%r11
ffff800000104a9e:	41 80 3b 00          	cmpb   $0x0,(%r11)
ffff800000104aa2:	0f 84 97 04 00 00    	je     ffff800000104f3f <vsprintf+0x82f>
ffff800000104aa8:	4c 89 d8             	mov    %r11,%rax
ffff800000104aab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104ab0:	48 83 c0 01          	add    $0x1,%rax
ffff800000104ab4:	80 38 00             	cmpb   $0x0,(%rax)
ffff800000104ab7:	75 f7                	jne    ffff800000104ab0 <vsprintf+0x3a0>
ffff800000104ab9:	89 c6                	mov    %eax,%esi
ffff800000104abb:	44 29 de             	sub    %r11d,%esi
ffff800000104abe:	44 39 c6             	cmp    %r8d,%esi
ffff800000104ac1:	44 89 c0             	mov    %r8d,%eax
ffff800000104ac4:	0f 4e c6             	cmovle %esi,%eax
ffff800000104ac7:	41 83 f8 ff          	cmp    $0xffffffff,%r8d
ffff800000104acb:	0f 45 f0             	cmovne %eax,%esi
ffff800000104ace:	41 83 e1 10          	and    $0x10,%r9d
ffff800000104ad2:	0f 84 7c 03 00 00    	je     ffff800000104e54 <vsprintf+0x744>
ffff800000104ad8:	85 f6                	test   %esi,%esi
ffff800000104ada:	0f 8e 57 04 00 00    	jle    ffff800000104f37 <vsprintf+0x827>
ffff800000104ae0:	4c 63 c6             	movslq %esi,%r8
ffff800000104ae3:	31 c0                	xor    %eax,%eax
ffff800000104ae5:	0f 1f 00             	nopl   (%rax)
ffff800000104ae8:	41 0f b6 0c 03       	movzbl (%r11,%rax,1),%ecx
ffff800000104aed:	88 0c 07             	mov    %cl,(%rdi,%rax,1)
ffff800000104af0:	48 83 c0 01          	add    $0x1,%rax
ffff800000104af4:	49 39 c0             	cmp    %rax,%r8
ffff800000104af7:	75 ef                	jne    ffff800000104ae8 <vsprintf+0x3d8>
ffff800000104af9:	41 89 f0             	mov    %esi,%r8d
ffff800000104afc:	49 01 f8             	add    %rdi,%r8
ffff800000104aff:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104b03:	39 f2                	cmp    %esi,%edx
ffff800000104b05:	0f 8e 12 04 00 00    	jle    ffff800000104f1d <vsprintf+0x80d>
ffff800000104b0b:	29 f2                	sub    %esi,%edx
ffff800000104b0d:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104b10:	49 8d 7c 00 01       	lea    0x1(%r8,%rax,1),%rdi
ffff800000104b15:	a8 01                	test   $0x1,%al
ffff800000104b17:	75 17                	jne    ffff800000104b30 <vsprintf+0x420>
ffff800000104b19:	49 83 c0 01          	add    $0x1,%r8
ffff800000104b1d:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104b22:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104b25:	0f 84 be fe ff ff    	je     ffff8000001049e9 <vsprintf+0x2d9>
ffff800000104b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104b30:	41 c6 00 20          	movb   $0x20,(%r8)
ffff800000104b34:	49 83 c0 02          	add    $0x2,%r8
ffff800000104b38:	41 c6 40 ff 20       	movb   $0x20,-0x1(%r8)
ffff800000104b3d:	4c 39 c7             	cmp    %r8,%rdi
ffff800000104b40:	75 ee                	jne    ffff800000104b30 <vsprintf+0x420>
ffff800000104b42:	e9 a2 fe ff ff       	jmp    ffff8000001049e9 <vsprintf+0x2d9>
ffff800000104b47:	49 89 da             	mov    %rbx,%r10
ffff800000104b4a:	83 fa ff             	cmp    $0xffffffff,%edx
ffff800000104b4d:	0f 84 1a 01 00 00    	je     ffff800000104c6d <vsprintf+0x55d>
ffff800000104b53:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104b57:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b5a:	0f 87 cb 00 00 00    	ja     ffff800000104c2b <vsprintf+0x51b>
ffff800000104b60:	89 c1                	mov    %eax,%ecx
ffff800000104b62:	83 c0 08             	add    $0x8,%eax
ffff800000104b65:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104b6a:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104b6e:	48 8b 31             	mov    (%rcx),%rsi
ffff800000104b71:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104b76:	89 d1                	mov    %edx,%ecx
ffff800000104b78:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104b7d:	e9 4c fe ff ff       	jmp    ffff8000001049ce <vsprintf+0x2be>
ffff800000104b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff800000104b88:	45 31 c0             	xor    %r8d,%r8d
ffff800000104b8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104b90:	83 e8 30             	sub    $0x30,%eax
ffff800000104b93:	43 8d 34 80          	lea    (%r8,%r8,4),%esi
ffff800000104b97:	48 83 c1 01          	add    $0x1,%rcx
ffff800000104b9b:	0f be c0             	movsbl %al,%eax
ffff800000104b9e:	44 8d 04 70          	lea    (%rax,%rsi,2),%r8d
ffff800000104ba2:	0f be 01             	movsbl (%rcx),%eax
ffff800000104ba5:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff800000104ba8:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000104bac:	76 e2                	jbe    ffff800000104b90 <vsprintf+0x480>
ffff800000104bae:	31 f6                	xor    %esi,%esi
ffff800000104bb0:	45 85 c0             	test   %r8d,%r8d
ffff800000104bb3:	48 89 cb             	mov    %rcx,%rbx
ffff800000104bb6:	44 0f 48 c6          	cmovs  %esi,%r8d
ffff800000104bba:	e9 08 fc ff ff       	jmp    ffff8000001047c7 <vsprintf+0xb7>
ffff800000104bbf:	90                   	nop
ffff800000104bc0:	41 8b 04 24          	mov    (%r12),%eax
ffff800000104bc4:	48 8d 73 02          	lea    0x2(%rbx),%rsi
ffff800000104bc8:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104bcb:	0f 87 d1 01 00 00    	ja     ffff800000104da2 <vsprintf+0x692>
ffff800000104bd1:	89 c1                	mov    %eax,%ecx
ffff800000104bd3:	83 c0 08             	add    $0x8,%eax
ffff800000104bd6:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104bdb:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104bdf:	44 8b 01             	mov    (%rcx),%r8d
ffff800000104be2:	31 c0                	xor    %eax,%eax
ffff800000104be4:	45 85 c0             	test   %r8d,%r8d
ffff800000104be7:	44 0f 48 c0          	cmovs  %eax,%r8d
ffff800000104beb:	0f be 43 02          	movsbl 0x2(%rbx),%eax
ffff800000104bef:	48 89 f3             	mov    %rsi,%rbx
ffff800000104bf2:	e9 d0 fb ff ff       	jmp    ffff8000001047c7 <vsprintf+0xb7>
ffff800000104bf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
ffff800000104bfe:	00 00 
ffff800000104c00:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104c05:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104c09:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104c0e:	e9 75 fd ff ff       	jmp    ffff800000104988 <vsprintf+0x278>
ffff800000104c13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104c18:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104c1d:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104c21:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104c26:	e9 95 fd ff ff       	jmp    ffff8000001049c0 <vsprintf+0x2b0>
ffff800000104c2b:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104c30:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104c34:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104c39:	e9 30 ff ff ff       	jmp    ffff800000104b6e <vsprintf+0x45e>
ffff800000104c3e:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104c43:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104c47:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104c4c:	e9 4a fe ff ff       	jmp    ffff800000104a9b <vsprintf+0x38b>
ffff800000104c51:	89 c1                	mov    %eax,%ecx
ffff800000104c53:	83 c0 08             	add    $0x8,%eax
ffff800000104c56:	49 03 4c 24 10       	add    0x10(%r12),%rcx
ffff800000104c5b:	41 89 04 24          	mov    %eax,(%r12)
ffff800000104c5f:	e9 cf fd ff ff       	jmp    ffff800000104a33 <vsprintf+0x323>
ffff800000104c64:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104c68:	e9 33 fc ff ff       	jmp    ffff8000001048a0 <vsprintf+0x190>
ffff800000104c6d:	41 83 c9 01          	or     $0x1,%r9d
ffff800000104c71:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104c76:	e9 d8 fe ff ff       	jmp    ffff800000104b53 <vsprintf+0x443>
ffff800000104c7b:	8d 42 ff             	lea    -0x1(%rdx),%eax
ffff800000104c7e:	48 89 c1             	mov    %rax,%rcx
ffff800000104c81:	48 01 f8             	add    %rdi,%rax
ffff800000104c84:	83 fa 01             	cmp    $0x1,%edx
ffff800000104c87:	0f 8e 81 02 00 00    	jle    ffff800000104f0e <vsprintf+0x7fe>
ffff800000104c8d:	48 89 c2             	mov    %rax,%rdx
ffff800000104c90:	48 29 fa             	sub    %rdi,%rdx
ffff800000104c93:	83 e2 01             	and    $0x1,%edx
ffff800000104c96:	74 10                	je     ffff800000104ca8 <vsprintf+0x598>
ffff800000104c98:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104c9c:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104ca0:	48 39 f8             	cmp    %rdi,%rax
ffff800000104ca3:	74 13                	je     ffff800000104cb8 <vsprintf+0x5a8>
ffff800000104ca5:	0f 1f 00             	nopl   (%rax)
ffff800000104ca8:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104cab:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104caf:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104cb3:	48 39 f8             	cmp    %rdi,%rax
ffff800000104cb6:	75 f0                	jne    ffff800000104ca8 <vsprintf+0x598>
ffff800000104cb8:	31 d2                	xor    %edx,%edx
ffff800000104cba:	e9 59 fd ff ff       	jmp    ffff800000104a18 <vsprintf+0x308>
ffff800000104cbf:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104cc3:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104cc6:	0f 84 f9 00 00 00    	je     ffff800000104dc5 <vsprintf+0x6b5>
ffff800000104ccc:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104ccf:	0f 87 59 01 00 00    	ja     ffff800000104e2e <vsprintf+0x71e>
ffff800000104cd5:	89 d0                	mov    %edx,%eax
ffff800000104cd7:	83 c2 08             	add    $0x8,%edx
ffff800000104cda:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104cdf:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104ce3:	48 8b 00             	mov    (%rax),%rax
ffff800000104ce6:	48 89 fa             	mov    %rdi,%rdx
ffff800000104ce9:	49 8d 4a 01          	lea    0x1(%r10),%rcx
ffff800000104ced:	4c 29 ea             	sub    %r13,%rdx
ffff800000104cf0:	89 10                	mov    %edx,(%rax)
ffff800000104cf2:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104cf7:	e9 71 fa ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104cfc:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104d00:	83 f8 6c             	cmp    $0x6c,%eax
ffff800000104d03:	0f 84 ec 00 00 00    	je     ffff800000104df5 <vsprintf+0x6e5>
ffff800000104d09:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d0c:	0f 87 2f 01 00 00    	ja     ffff800000104e41 <vsprintf+0x731>
ffff800000104d12:	89 c8                	mov    %ecx,%eax
ffff800000104d14:	83 c1 08             	add    $0x8,%ecx
ffff800000104d17:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d1c:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d20:	89 d1                	mov    %edx,%ecx
ffff800000104d22:	4c 89 54 24 08       	mov    %r10,0x8(%rsp)
ffff800000104d27:	8b 30                	mov    (%rax),%esi
ffff800000104d29:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104d2e:	e9 9b fc ff ff       	jmp    ffff8000001049ce <vsprintf+0x2be>
ffff800000104d33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
ffff800000104d38:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d3b:	77 78                	ja     ffff800000104db5 <vsprintf+0x6a5>
ffff800000104d3d:	89 c8                	mov    %ecx,%eax
ffff800000104d3f:	83 c1 08             	add    $0x8,%ecx
ffff800000104d42:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d47:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d4b:	48 8b 30             	mov    (%rax),%rsi
ffff800000104d4e:	89 d1                	mov    %edx,%ecx
ffff800000104d50:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104d55:	48 b8 90 b4 ff ff ff 	movabs $0xffffffffffffb490,%rax
ffff800000104d5c:	ff ff ff 
ffff800000104d5f:	4c 01 f0             	add    %r14,%rax
ffff800000104d62:	ff d0                	call   *%rax
ffff800000104d64:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104d68:	48 89 c7             	mov    %rax,%rdi
ffff800000104d6b:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104d6f:	e9 f9 f9 ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104d74:	0f 1f 40 00          	nopl   0x0(%rax)
ffff800000104d78:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104d7b:	0f 87 9a 00 00 00    	ja     ffff800000104e1b <vsprintf+0x70b>
ffff800000104d81:	89 c8                	mov    %ecx,%eax
ffff800000104d83:	83 c1 08             	add    $0x8,%ecx
ffff800000104d86:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104d8b:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104d8f:	89 d1                	mov    %edx,%ecx
ffff800000104d91:	48 8b 30             	mov    (%rax),%rsi
ffff800000104d94:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104d99:	eb ba                	jmp    ffff800000104d55 <vsprintf+0x645>
ffff800000104d9b:	31 c0                	xor    %eax,%eax
ffff800000104d9d:	e9 03 fb ff ff       	jmp    ffff8000001048a5 <vsprintf+0x195>
ffff800000104da2:	49 8b 4c 24 08       	mov    0x8(%r12),%rcx
ffff800000104da7:	48 8d 41 08          	lea    0x8(%rcx),%rax
ffff800000104dab:	49 89 44 24 08       	mov    %rax,0x8(%r12)
ffff800000104db0:	e9 2a fe ff ff       	jmp    ffff800000104bdf <vsprintf+0x4cf>
ffff800000104db5:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104dba:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104dbe:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104dc3:	eb 86                	jmp    ffff800000104d4b <vsprintf+0x63b>
ffff800000104dc5:	83 fa 2f             	cmp    $0x2f,%edx
ffff800000104dc8:	0f 87 ca 00 00 00    	ja     ffff800000104e98 <vsprintf+0x788>
ffff800000104dce:	89 d0                	mov    %edx,%eax
ffff800000104dd0:	83 c2 08             	add    $0x8,%edx
ffff800000104dd3:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104dd8:	41 89 14 24          	mov    %edx,(%r12)
ffff800000104ddc:	48 8b 00             	mov    (%rax),%rax
ffff800000104ddf:	48 89 fa             	mov    %rdi,%rdx
ffff800000104de2:	48 8d 4b 02          	lea    0x2(%rbx),%rcx
ffff800000104de6:	4c 29 ea             	sub    %r13,%rdx
ffff800000104de9:	48 89 10             	mov    %rdx,(%rax)
ffff800000104dec:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
ffff800000104df0:	e9 78 f9 ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104df5:	83 f9 2f             	cmp    $0x2f,%ecx
ffff800000104df8:	0f 86 ad 00 00 00    	jbe    ffff800000104eab <vsprintf+0x79b>
ffff800000104dfe:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e03:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e07:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e0c:	89 d1                	mov    %edx,%ecx
ffff800000104e0e:	48 8b 30             	mov    (%rax),%rsi
ffff800000104e11:	ba 08 00 00 00       	mov    $0x8,%edx
ffff800000104e16:	e9 3a ff ff ff       	jmp    ffff800000104d55 <vsprintf+0x645>
ffff800000104e1b:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e20:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e24:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e29:	e9 61 ff ff ff       	jmp    ffff800000104d8f <vsprintf+0x67f>
ffff800000104e2e:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e33:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104e37:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104e3c:	e9 a2 fe ff ff       	jmp    ffff800000104ce3 <vsprintf+0x5d3>
ffff800000104e41:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e46:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104e4a:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
ffff800000104e4f:	e9 cc fe ff ff       	jmp    ffff800000104d20 <vsprintf+0x610>
ffff800000104e54:	39 f2                	cmp    %esi,%edx
ffff800000104e56:	0f 8e b9 00 00 00    	jle    ffff800000104f15 <vsprintf+0x805>
ffff800000104e5c:	83 ea 01             	sub    $0x1,%edx
ffff800000104e5f:	29 f2                	sub    %esi,%edx
ffff800000104e61:	48 8d 44 17 01       	lea    0x1(%rdi,%rdx,1),%rax
ffff800000104e66:	83 e2 01             	and    $0x1,%edx
ffff800000104e69:	75 15                	jne    ffff800000104e80 <vsprintf+0x770>
ffff800000104e6b:	48 83 c7 01          	add    $0x1,%rdi
ffff800000104e6f:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e73:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e76:	74 18                	je     ffff800000104e90 <vsprintf+0x780>
ffff800000104e78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
ffff800000104e7f:	00 
ffff800000104e80:	c6 07 20             	movb   $0x20,(%rdi)
ffff800000104e83:	48 83 c7 02          	add    $0x2,%rdi
ffff800000104e87:	c6 47 ff 20          	movb   $0x20,-0x1(%rdi)
ffff800000104e8b:	48 39 c7             	cmp    %rax,%rdi
ffff800000104e8e:	75 f0                	jne    ffff800000104e80 <vsprintf+0x770>
ffff800000104e90:	8d 56 ff             	lea    -0x1(%rsi),%edx
ffff800000104e93:	e9 40 fc ff ff       	jmp    ffff800000104ad8 <vsprintf+0x3c8>
ffff800000104e98:	49 8b 44 24 08       	mov    0x8(%r12),%rax
ffff800000104e9d:	48 8d 50 08          	lea    0x8(%rax),%rdx
ffff800000104ea1:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
ffff800000104ea6:	e9 31 ff ff ff       	jmp    ffff800000104ddc <vsprintf+0x6cc>
ffff800000104eab:	89 c8                	mov    %ecx,%eax
ffff800000104ead:	83 c1 08             	add    $0x8,%ecx
ffff800000104eb0:	49 03 44 24 10       	add    0x10(%r12),%rax
ffff800000104eb5:	41 89 0c 24          	mov    %ecx,(%r12)
ffff800000104eb9:	e9 4e ff ff ff       	jmp    ffff800000104e0c <vsprintf+0x6fc>
ffff800000104ebe:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ec2:	41 83 c9 02          	or     $0x2,%r9d
ffff800000104ec6:	49 89 da             	mov    %rbx,%r10
ffff800000104ec9:	e9 db fa ff ff       	jmp    ffff8000001049a9 <vsprintf+0x299>
ffff800000104ece:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ed2:	41 83 c9 40          	or     $0x40,%r9d
ffff800000104ed6:	49 89 da             	mov    %rbx,%r10
ffff800000104ed9:	e9 93 fa ff ff       	jmp    ffff800000104971 <vsprintf+0x261>
ffff800000104ede:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104ee2:	49 89 da             	mov    %rbx,%r10
ffff800000104ee5:	e9 bf fa ff ff       	jmp    ffff8000001049a9 <vsprintf+0x299>
ffff800000104eea:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104eee:	49 89 da             	mov    %rbx,%r10
ffff800000104ef1:	e9 13 fe ff ff       	jmp    ffff800000104d09 <vsprintf+0x5f9>
ffff800000104ef6:	41 8b 14 24          	mov    (%r12),%edx
ffff800000104efa:	49 89 da             	mov    %rbx,%r10
ffff800000104efd:	e9 ca fd ff ff       	jmp    ffff800000104ccc <vsprintf+0x5bc>
ffff800000104f02:	41 8b 0c 24          	mov    (%r12),%ecx
ffff800000104f06:	49 89 da             	mov    %rbx,%r10
ffff800000104f09:	e9 63 fa ff ff       	jmp    ffff800000104971 <vsprintf+0x261>
ffff800000104f0e:	89 ca                	mov    %ecx,%edx
ffff800000104f10:	e9 03 fb ff ff       	jmp    ffff800000104a18 <vsprintf+0x308>
ffff800000104f15:	83 ea 01             	sub    $0x1,%edx
ffff800000104f18:	e9 bb fb ff ff       	jmp    ffff800000104ad8 <vsprintf+0x3c8>
ffff800000104f1d:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104f22:	4c 89 c7             	mov    %r8,%rdi
ffff800000104f25:	e9 43 f8 ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104f2a:	41 0f b6 42 01       	movzbl 0x1(%r10),%eax
ffff800000104f2f:	48 89 f7             	mov    %rsi,%rdi
ffff800000104f32:	e9 36 f8 ff ff       	jmp    ffff80000010476d <vsprintf+0x5d>
ffff800000104f37:	49 89 f8             	mov    %rdi,%r8
ffff800000104f3a:	e9 c0 fb ff ff       	jmp    ffff800000104aff <vsprintf+0x3ef>
ffff800000104f3f:	31 f6                	xor    %esi,%esi
ffff800000104f41:	e9 78 fb ff ff       	jmp    ffff800000104abe <vsprintf+0x3ae>
ffff800000104f46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
ffff800000104f4d:	00 00 00 

ffff800000104f50 <color_printk>:
ffff800000104f50:	f3 0f 1e fa          	endbr64
ffff800000104f54:	49 bb 6c 3d 00 00 00 	movabs $0x3d6c,%r11
ffff800000104f5b:	00 00 00 
ffff800000104f5e:	41 57                	push   %r15
ffff800000104f60:	41 56                	push   %r14
ffff800000104f62:	41 55                	push   %r13
ffff800000104f64:	41 54                	push   %r12
ffff800000104f66:	4c 8d 25 e7 ff ff ff 	lea    -0x19(%rip),%r12        # ffff800000104f54 <color_printk+0x4>
ffff800000104f6d:	55                   	push   %rbp
ffff800000104f6e:	4d 01 dc             	add    %r11,%r12
ffff800000104f71:	89 f5                	mov    %esi,%ebp
ffff800000104f73:	48 89 d6             	mov    %rdx,%rsi
ffff800000104f76:	53                   	push   %rbx
ffff800000104f77:	89 fb                	mov    %edi,%ebx
ffff800000104f79:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff800000104f80:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
ffff800000104f85:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
ffff800000104f8a:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
ffff800000104f8f:	84 c0                	test   %al,%al
ffff800000104f91:	74 3d                	je     ffff800000104fd0 <color_printk+0x80>
ffff800000104f93:	0f 29 44 24 70       	movaps %xmm0,0x70(%rsp)
ffff800000104f98:	0f 29 8c 24 80 00 00 	movaps %xmm1,0x80(%rsp)
ffff800000104f9f:	00 
ffff800000104fa0:	0f 29 94 24 90 00 00 	movaps %xmm2,0x90(%rsp)
ffff800000104fa7:	00 
ffff800000104fa8:	0f 29 9c 24 a0 00 00 	movaps %xmm3,0xa0(%rsp)
ffff800000104faf:	00 
ffff800000104fb0:	0f 29 a4 24 b0 00 00 	movaps %xmm4,0xb0(%rsp)
ffff800000104fb7:	00 
ffff800000104fb8:	0f 29 ac 24 c0 00 00 	movaps %xmm5,0xc0(%rsp)
ffff800000104fbf:	00 
ffff800000104fc0:	0f 29 b4 24 d0 00 00 	movaps %xmm6,0xd0(%rsp)
ffff800000104fc7:	00 
ffff800000104fc8:	0f 29 bc 24 e0 00 00 	movaps %xmm7,0xe0(%rsp)
ffff800000104fcf:	00 
ffff800000104fd0:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
ffff800000104fd7:	00 
ffff800000104fd8:	c7 44 24 28 18 00 00 	movl   $0x18,0x28(%rsp)
ffff800000104fdf:	00 
ffff800000104fe0:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
ffff800000104fe5:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
ffff800000104fea:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
ffff800000104fef:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
ffff800000104ff4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104ffb:	00 00 00 
ffff800000104ffe:	4c 01 e0             	add    %r12,%rax
ffff800000105001:	c7 44 24 2c 30 00 00 	movl   $0x30,0x2c(%rsp)
ffff800000105008:	00 
ffff800000105009:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff80000010500e:	48 89 c7             	mov    %rax,%rdi
ffff800000105011:	48 b8 50 ba ff ff ff 	movabs $0xffffffffffffba50,%rax
ffff800000105018:	ff ff ff 
ffff80000010501b:	4c 01 e0             	add    %r12,%rax
ffff80000010501e:	ff d0                	call   *%rax
ffff800000105020:	41 89 c5             	mov    %eax,%r13d
ffff800000105023:	85 c0                	test   %eax,%eax
ffff800000105025:	0f 8e 6f 01 00 00    	jle    ffff80000010519a <color_printk+0x24a>
ffff80000010502b:	49 b8 20 10 00 00 00 	movabs $0x1020,%r8
ffff800000105032:	00 00 00 
ffff800000105035:	45 31 d2             	xor    %r10d,%r10d
ffff800000105038:	45 31 db             	xor    %r11d,%r11d
ffff80000010503b:	4b 8b 44 20 18       	mov    0x18(%r8,%r12,1),%rax
ffff800000105040:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000105045:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff80000010504a:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010504e:	48 89 04 24          	mov    %rax,(%rsp)
ffff800000105052:	48 b8 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rax
ffff800000105059:	ff ff ff 
ffff80000010505c:	4c 01 e0             	add    %r12,%rax
ffff80000010505f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
ffff800000105064:	48 b8 00 e2 ff ff ff 	movabs $0xffffffffffffe200,%rax
ffff80000010506b:	ff ff ff 
ffff80000010506e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
ffff800000105073:	48 b8 10 e2 ff ff ff 	movabs $0xffffffffffffe210,%rax
ffff80000010507a:	ff ff ff 
ffff80000010507d:	4a 8d 3c 20          	lea    (%rax,%r12,1),%rdi
ffff800000105081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105088:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff80000010508d:	45 85 d2             	test   %r10d,%r10d
ffff800000105090:	0f 8f 19 01 00 00    	jg     ffff8000001051af <color_printk+0x25f>
ffff800000105096:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff80000010509b:	49 63 c3             	movslq %r11d,%rax
ffff80000010509e:	41 83 c3 01          	add    $0x1,%r11d
ffff8000001050a2:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
ffff8000001050a6:	3c 0a                	cmp    $0xa,%al
ffff8000001050a8:	0f 84 0b 01 00 00    	je     ffff8000001051b9 <color_printk+0x269>
ffff8000001050ae:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff8000001050b3:	3c 08                	cmp    $0x8,%al
ffff8000001050b5:	0f 84 14 01 00 00    	je     ffff8000001051cf <color_printk+0x27f>
ffff8000001050bb:	3c 09                	cmp    $0x9,%al
ffff8000001050bd:	0f 85 a0 01 00 00    	jne    ffff800000105263 <color_printk+0x313>
ffff8000001050c3:	44 8d 52 08          	lea    0x8(%rdx),%r10d
ffff8000001050c7:	41 83 e2 f8          	and    $0xfffffff8,%r10d
ffff8000001050cb:	41 29 d2             	sub    %edx,%r10d
ffff8000001050ce:	41 0f af f6          	imul   %r14d,%esi
ffff8000001050d2:	4c 63 f9             	movslq %ecx,%r15
ffff8000001050d5:	41 83 ea 01          	sub    $0x1,%r10d
ffff8000001050d9:	41 0f af d1          	imul   %r9d,%edx
ffff8000001050dd:	49 c1 e7 02          	shl    $0x2,%r15
ffff8000001050e1:	0f af f1             	imul   %ecx,%esi
ffff8000001050e4:	48 63 d2             	movslq %edx,%rdx
ffff8000001050e7:	48 63 c6             	movslq %esi,%rax
ffff8000001050ea:	48 8d 44 10 08       	lea    0x8(%rax,%rdx,1),%rax
ffff8000001050ef:	48 8b 14 24          	mov    (%rsp),%rdx
ffff8000001050f3:	4c 8d 0c 82          	lea    (%rdx,%rax,4),%r9
ffff8000001050f7:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff8000001050fc:	49 8d 34 04          	lea    (%r12,%rax,1),%rsi
ffff800000105100:	49 8d 41 e0          	lea    -0x20(%r9),%rax
ffff800000105104:	ba 00 01 00 00       	mov    $0x100,%edx
ffff800000105109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105110:	0f b6 0e             	movzbl (%rsi),%ecx
ffff800000105113:	d1 fa                	sar    $1,%edx
ffff800000105115:	85 d1                	test   %edx,%ecx
ffff800000105117:	89 d9                	mov    %ebx,%ecx
ffff800000105119:	0f 44 cd             	cmove  %ebp,%ecx
ffff80000010511c:	48 83 c0 04          	add    $0x4,%rax
ffff800000105120:	89 48 fc             	mov    %ecx,-0x4(%rax)
ffff800000105123:	4c 39 c8             	cmp    %r9,%rax
ffff800000105126:	75 e8                	jne    ffff800000105110 <color_printk+0x1c0>
ffff800000105128:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010512c:	4e 8d 0c 38          	lea    (%rax,%r15,1),%r9
ffff800000105130:	48 39 fe             	cmp    %rdi,%rsi
ffff800000105133:	75 cb                	jne    ffff800000105100 <color_printk+0x1b0>
ffff800000105135:	43 8b 44 20 08       	mov    0x8(%r8,%r12,1),%eax
ffff80000010513a:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010513e:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000105143:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff800000105148:	44 8d 78 01          	lea    0x1(%rax),%r15d
ffff80000010514c:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff800000105151:	47 89 7c 20 08       	mov    %r15d,0x8(%r8,%r12,1)
ffff800000105156:	89 c8                	mov    %ecx,%eax
ffff800000105158:	99                   	cltd
ffff800000105159:	41 f7 f9             	idiv   %r9d
ffff80000010515c:	44 39 f8             	cmp    %r15d,%eax
ffff80000010515f:	7f 11                	jg     ffff800000105172 <color_printk+0x222>
ffff800000105161:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff800000105168:	00 00 
ffff80000010516a:	83 c6 01             	add    $0x1,%esi
ffff80000010516d:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff800000105172:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff800000105177:	99                   	cltd
ffff800000105178:	41 f7 fe             	idiv   %r14d
ffff80000010517b:	39 f0                	cmp    %esi,%eax
ffff80000010517d:	7f 09                	jg     ffff800000105188 <color_printk+0x238>
ffff80000010517f:	43 c7 44 20 0c 00 00 	movl   $0x0,0xc(%r8,%r12,1)
ffff800000105186:	00 00 
ffff800000105188:	45 39 dd             	cmp    %r11d,%r13d
ffff80000010518b:	0f 8f f7 fe ff ff    	jg     ffff800000105088 <color_printk+0x138>
ffff800000105191:	45 85 d2             	test   %r10d,%r10d
ffff800000105194:	0f 85 ee fe ff ff    	jne    ffff800000105088 <color_printk+0x138>
ffff80000010519a:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
ffff8000001051a1:	44 89 e8             	mov    %r13d,%eax
ffff8000001051a4:	5b                   	pop    %rbx
ffff8000001051a5:	5d                   	pop    %rbp
ffff8000001051a6:	41 5c                	pop    %r12
ffff8000001051a8:	41 5d                	pop    %r13
ffff8000001051aa:	41 5e                	pop    %r14
ffff8000001051ac:	41 5f                	pop    %r15
ffff8000001051ae:	c3                   	ret
ffff8000001051af:	43 8b 54 20 08       	mov    0x8(%r8,%r12,1),%edx
ffff8000001051b4:	e9 15 ff ff ff       	jmp    ffff8000001050ce <color_printk+0x17e>
ffff8000001051b9:	43 c7 44 20 08 00 00 	movl   $0x0,0x8(%r8,%r12,1)
ffff8000001051c0:	00 00 
ffff8000001051c2:	83 c6 01             	add    $0x1,%esi
ffff8000001051c5:	45 31 ff             	xor    %r15d,%r15d
ffff8000001051c8:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff8000001051cd:	eb 87                	jmp    ffff800000105156 <color_printk+0x206>
ffff8000001051cf:	83 ea 01             	sub    $0x1,%edx
ffff8000001051d2:	41 89 d7             	mov    %edx,%r15d
ffff8000001051d5:	0f 88 ff 00 00 00    	js     ffff8000001052da <color_printk+0x38a>
ffff8000001051db:	43 89 54 20 08       	mov    %edx,0x8(%r8,%r12,1)
ffff8000001051e0:	41 0f af f6          	imul   %r14d,%esi
ffff8000001051e4:	44 89 c8             	mov    %r9d,%eax
ffff8000001051e7:	48 63 d1             	movslq %ecx,%rdx
ffff8000001051ea:	41 0f af c7          	imul   %r15d,%eax
ffff8000001051ee:	48 c1 e2 02          	shl    $0x2,%rdx
ffff8000001051f2:	0f af ce             	imul   %esi,%ecx
ffff8000001051f5:	48 8b 34 24          	mov    (%rsp),%rsi
ffff8000001051f9:	48 98                	cltq
ffff8000001051fb:	48 63 c9             	movslq %ecx,%rcx
ffff8000001051fe:	48 8d 44 01 08       	lea    0x8(%rcx,%rax,1),%rax
ffff800000105203:	4c 8d 34 86          	lea    (%rsi,%rax,4),%r14
ffff800000105207:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
ffff80000010520c:	4d 8d 0c 04          	lea    (%r12,%rax,1),%r9
ffff800000105210:	49 8d 46 e0          	lea    -0x20(%r14),%rax
ffff800000105214:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff800000105219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff800000105220:	41 0f b6 31          	movzbl (%r9),%esi
ffff800000105224:	d1 f9                	sar    $1,%ecx
ffff800000105226:	85 ce                	test   %ecx,%esi
ffff800000105228:	89 de                	mov    %ebx,%esi
ffff80000010522a:	0f 44 f5             	cmove  %ebp,%esi
ffff80000010522d:	48 83 c0 04          	add    $0x4,%rax
ffff800000105231:	89 70 fc             	mov    %esi,-0x4(%rax)
ffff800000105234:	4c 39 f0             	cmp    %r14,%rax
ffff800000105237:	75 e7                	jne    ffff800000105220 <color_printk+0x2d0>
ffff800000105239:	49 83 c1 01          	add    $0x1,%r9
ffff80000010523d:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
ffff800000105241:	49 39 f9             	cmp    %rdi,%r9
ffff800000105244:	75 ca                	jne    ffff800000105210 <color_printk+0x2c0>
ffff800000105246:	47 8b 7c 20 08       	mov    0x8(%r8,%r12,1),%r15d
ffff80000010524b:	43 8b 0c 20          	mov    (%r8,%r12,1),%ecx
ffff80000010524f:	47 8b 4c 20 10       	mov    0x10(%r8,%r12,1),%r9d
ffff800000105254:	43 8b 74 20 0c       	mov    0xc(%r8,%r12,1),%esi
ffff800000105259:	47 8b 74 20 14       	mov    0x14(%r8,%r12,1),%r14d
ffff80000010525e:	e9 f3 fe ff ff       	jmp    ffff800000105156 <color_printk+0x206>
ffff800000105263:	41 0f af d1          	imul   %r9d,%edx
ffff800000105267:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
ffff80000010526c:	48 c1 e0 04          	shl    $0x4,%rax
ffff800000105270:	4c 01 f8             	add    %r15,%rax
ffff800000105273:	4c 63 f9             	movslq %ecx,%r15
ffff800000105276:	4c 63 ca             	movslq %edx,%r9
ffff800000105279:	44 89 f2             	mov    %r14d,%edx
ffff80000010527c:	49 c1 e7 02          	shl    $0x2,%r15
ffff800000105280:	4c 8d 70 10          	lea    0x10(%rax),%r14
ffff800000105284:	0f af d6             	imul   %esi,%edx
ffff800000105287:	48 8b 34 24          	mov    (%rsp),%rsi
ffff80000010528b:	0f af d1             	imul   %ecx,%edx
ffff80000010528e:	48 63 d2             	movslq %edx,%rdx
ffff800000105291:	49 8d 54 11 08       	lea    0x8(%r9,%rdx,1),%rdx
ffff800000105296:	4c 8d 0c 96          	lea    (%rsi,%rdx,4),%r9
ffff80000010529a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
ffff8000001052a0:	49 8d 51 e0          	lea    -0x20(%r9),%rdx
ffff8000001052a4:	b9 00 01 00 00       	mov    $0x100,%ecx
ffff8000001052a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
ffff8000001052b0:	0f b6 30             	movzbl (%rax),%esi
ffff8000001052b3:	d1 f9                	sar    $1,%ecx
ffff8000001052b5:	85 ce                	test   %ecx,%esi
ffff8000001052b7:	89 de                	mov    %ebx,%esi
ffff8000001052b9:	0f 44 f5             	cmove  %ebp,%esi
ffff8000001052bc:	48 83 c2 04          	add    $0x4,%rdx
ffff8000001052c0:	89 72 fc             	mov    %esi,-0x4(%rdx)
ffff8000001052c3:	4c 39 ca             	cmp    %r9,%rdx
ffff8000001052c6:	75 e8                	jne    ffff8000001052b0 <color_printk+0x360>
ffff8000001052c8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001052cc:	4e 8d 0c 3a          	lea    (%rdx,%r15,1),%r9
ffff8000001052d0:	4c 39 f0             	cmp    %r14,%rax
ffff8000001052d3:	75 cb                	jne    ffff8000001052a0 <color_printk+0x350>
ffff8000001052d5:	e9 5b fe ff ff       	jmp    ffff800000105135 <color_printk+0x1e5>
ffff8000001052da:	89 c8                	mov    %ecx,%eax
ffff8000001052dc:	99                   	cltd
ffff8000001052dd:	41 f7 f9             	idiv   %r9d
ffff8000001052e0:	83 e8 01             	sub    $0x1,%eax
ffff8000001052e3:	41 0f af c1          	imul   %r9d,%eax
ffff8000001052e7:	83 ee 01             	sub    $0x1,%esi
ffff8000001052ea:	43 89 74 20 0c       	mov    %esi,0xc(%r8,%r12,1)
ffff8000001052ef:	43 89 44 20 08       	mov    %eax,0x8(%r8,%r12,1)
ffff8000001052f4:	41 89 c7             	mov    %eax,%r15d
ffff8000001052f7:	0f 89 e3 fe ff ff    	jns    ffff8000001051e0 <color_printk+0x290>
ffff8000001052fd:	43 8b 44 20 04       	mov    0x4(%r8,%r12,1),%eax
ffff800000105302:	99                   	cltd
ffff800000105303:	41 f7 fe             	idiv   %r14d
ffff800000105306:	83 e8 01             	sub    $0x1,%eax
ffff800000105309:	41 0f af c6          	imul   %r14d,%eax
ffff80000010530d:	43 89 44 20 0c       	mov    %eax,0xc(%r8,%r12,1)
ffff800000105312:	89 c6                	mov    %eax,%esi
ffff800000105314:	e9 c7 fe ff ff       	jmp    ffff8000001051e0 <color_printk+0x290>
