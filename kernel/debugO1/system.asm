
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 90 5b 00 00 	lgdt   0x5b90(%rip)        # ffff800000105ba8 <GDT_END>
ffff800000100018:	0f 01 1d 93 6b 00 00 	lidt   0x6b93(%rip)        # ffff800000106bb2 <IDT_END>
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
ffff80000010400d:	49 bb 3a 4c 00 00 00 	movabs $0x4c3a,%r11
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
ffff800000104071:	48 b8 71 c3 ff ff ff 	movabs $0xffffffffffffc371,%rax
ffff800000104078:	ff ff ff 
ffff80000010407b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010407f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104084:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104089:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010408e:	48 b9 b8 c0 ff ff ff 	movabs $0xffffffffffffc0b8,%rcx
ffff800000104095:	ff ff ff 
ffff800000104098:	4c 01 f9             	add    %r15,%rcx
ffff80000010409b:	ff d1                	call   *%rcx
ffff80000010409d:	48 b8 82 c3 ff ff ff 	movabs $0xffffffffffffc382,%rax
ffff8000001040a4:	ff ff ff 
ffff8000001040a7:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040b0:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040b5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040ba:	48 b9 b8 c0 ff ff ff 	movabs $0xffffffffffffc0b8,%rcx
ffff8000001040c1:	ff ff ff 
ffff8000001040c4:	4c 01 f9             	add    %r15,%rcx
ffff8000001040c7:	ff d1                	call   *%rcx
ffff8000001040c9:	48 b8 90 c3 ff ff ff 	movabs $0xffffffffffffc390,%rax
ffff8000001040d0:	ff ff ff 
ffff8000001040d3:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff8000001040d7:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040dc:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040e1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001040e6:	48 b9 b8 c0 ff ff ff 	movabs $0xffffffffffffc0b8,%rcx
ffff8000001040ed:	ff ff ff 
ffff8000001040f0:	4c 01 f9             	add    %r15,%rcx
ffff8000001040f3:	ff d1                	call   *%rcx
ffff8000001040f5:	48 b8 e8 c3 ff ff ff 	movabs $0xffffffffffffc3e8,%rax
ffff8000001040fc:	ff ff ff 
ffff8000001040ff:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff800000104103:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104108:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010410d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104112:	48 b9 b8 c0 ff ff ff 	movabs $0xffffffffffffc0b8,%rcx
ffff800000104119:	ff ff ff 
ffff80000010411c:	4c 01 f9             	add    %r15,%rcx
ffff80000010411f:	ff d1                	call   *%rcx
ffff800000104121:	48 b8 20 c4 ff ff ff 	movabs $0xffffffffffffc420,%rax
ffff800000104128:	ff ff ff 
ffff80000010412b:	49 8d 14 07          	lea    (%r15,%rax,1),%rdx
ffff80000010412f:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104134:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff800000104139:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010413e:	48 b9 b8 c0 ff ff ff 	movabs $0xffffffffffffc0b8,%rcx
ffff800000104145:	ff ff ff 
ffff800000104148:	4c 01 f9             	add    %r15,%rcx
ffff80000010414b:	ff d1                	call   *%rcx
ffff80000010414d:	eb fe                	jmp    ffff80000010414d <Start_Kernel+0x14d>

ffff80000010414f <number>:
ffff80000010414f:	f3 0f 1e fa          	endbr64
ffff800000104153:	41 57                	push   %r15
ffff800000104155:	41 56                	push   %r14
ffff800000104157:	41 55                	push   %r13
ffff800000104159:	41 54                	push   %r12
ffff80000010415b:	55                   	push   %rbp
ffff80000010415c:	53                   	push   %rbx
ffff80000010415d:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff80000010415d <number+0xe>
ffff800000104164:	49 bb e3 4a 00 00 00 	movabs $0x4ae3,%r11
ffff80000010416b:	00 00 00 
ffff80000010416e:	4c 01 d8             	add    %r11,%rax
ffff800000104171:	49 89 f2             	mov    %rsi,%r10
ffff800000104174:	89 d5                	mov    %edx,%ebp
ffff800000104176:	48 ba 70 c4 ff ff ff 	movabs $0xffffffffffffc470,%rdx
ffff80000010417d:	ff ff ff 
ffff800000104180:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
ffff800000104184:	41 f6 c1 40          	test   $0x40,%r9b
ffff800000104188:	75 0e                	jne    ffff800000104198 <number+0x49>
ffff80000010418a:	48 ba 48 c4 ff ff ff 	movabs $0xffffffffffffc448,%rdx
ffff800000104191:	ff ff ff 
ffff800000104194:	4c 8d 34 10          	lea    (%rax,%rdx,1),%r14
ffff800000104198:	41 f6 c1 10          	test   $0x10,%r9b
ffff80000010419c:	74 36                	je     ffff8000001041d4 <number+0x85>
ffff80000010419e:	41 83 e1 fe          	and    $0xfffffffe,%r9d
ffff8000001041a2:	8d 45 fe             	lea    -0x2(%rbp),%eax
ffff8000001041a5:	83 f8 22             	cmp    $0x22,%eax
ffff8000001041a8:	0f 87 11 02 00 00    	ja     ffff8000001043bf <number+0x270>
ffff8000001041ae:	bb 20 00 00 00       	mov    $0x20,%ebx
ffff8000001041b3:	41 f6 c1 02          	test   $0x2,%r9b
ffff8000001041b7:	74 05                	je     ffff8000001041be <number+0x6f>
ffff8000001041b9:	4d 85 d2             	test   %r10,%r10
ffff8000001041bc:	78 35                	js     ffff8000001041f3 <number+0xa4>
ffff8000001041be:	41 f6 c1 04          	test   $0x4,%r9b
ffff8000001041c2:	75 3a                	jne    ffff8000001041fe <number+0xaf>
ffff8000001041c4:	46 8d 3c 8d 00 00 00 	lea    0x0(,%r9,4),%r15d
ffff8000001041cb:	00 
ffff8000001041cc:	41 83 e7 20          	and    $0x20,%r15d
ffff8000001041d0:	74 35                	je     ffff800000104207 <number+0xb8>
ffff8000001041d2:	eb 30                	jmp    ffff800000104204 <number+0xb5>
ffff8000001041d4:	8d 45 fe             	lea    -0x2(%rbp),%eax
ffff8000001041d7:	83 f8 22             	cmp    $0x22,%eax
ffff8000001041da:	0f 87 ea 01 00 00    	ja     ffff8000001043ca <number+0x27b>
ffff8000001041e0:	44 89 c8             	mov    %r9d,%eax
ffff8000001041e3:	83 e0 01             	and    $0x1,%eax
ffff8000001041e6:	83 f8 01             	cmp    $0x1,%eax
ffff8000001041e9:	19 db                	sbb    %ebx,%ebx
ffff8000001041eb:	83 e3 f0             	and    $0xfffffff0,%ebx
ffff8000001041ee:	83 c3 30             	add    $0x30,%ebx
ffff8000001041f1:	eb c0                	jmp    ffff8000001041b3 <number+0x64>
ffff8000001041f3:	49 f7 da             	neg    %r10
ffff8000001041f6:	41 bf 2d 00 00 00    	mov    $0x2d,%r15d
ffff8000001041fc:	eb 06                	jmp    ffff800000104204 <number+0xb5>
ffff8000001041fe:	41 bf 2b 00 00 00    	mov    $0x2b,%r15d
ffff800000104204:	83 e9 01             	sub    $0x1,%ecx
ffff800000104207:	44 89 c8             	mov    %r9d,%eax
ffff80000010420a:	83 e0 20             	and    $0x20,%eax
ffff80000010420d:	89 44 24 b4          	mov    %eax,-0x4c(%rsp)
ffff800000104211:	74 14                	je     ffff800000104227 <number+0xd8>
ffff800000104213:	83 fd 10             	cmp    $0x10,%ebp
ffff800000104216:	0f 84 29 01 00 00    	je     ffff800000104345 <number+0x1f6>
ffff80000010421c:	83 fd 08             	cmp    $0x8,%ebp
ffff80000010421f:	0f 94 c0             	sete   %al
ffff800000104222:	0f b6 c0             	movzbl %al,%eax
ffff800000104225:	29 c1                	sub    %eax,%ecx
ffff800000104227:	4d 85 d2             	test   %r10,%r10
ffff80000010422a:	0f 85 1d 01 00 00    	jne    ffff80000010434d <number+0x1fe>
ffff800000104230:	c6 44 24 b8 30       	movb   $0x30,-0x48(%rsp)
ffff800000104235:	ba 01 00 00 00       	mov    $0x1,%edx
ffff80000010423a:	44 39 c2             	cmp    %r8d,%edx
ffff80000010423d:	44 0f 4d c2          	cmovge %edx,%r8d
ffff800000104241:	44 29 c1             	sub    %r8d,%ecx
ffff800000104244:	41 f6 c1 11          	test   $0x11,%r9b
ffff800000104248:	75 2a                	jne    ffff800000104274 <number+0x125>
ffff80000010424a:	8d 41 ff             	lea    -0x1(%rcx),%eax
ffff80000010424d:	85 c9                	test   %ecx,%ecx
ffff80000010424f:	0f 8e 34 01 00 00    	jle    ffff800000104389 <number+0x23a>
ffff800000104255:	89 ce                	mov    %ecx,%esi
ffff800000104257:	48 01 fe             	add    %rdi,%rsi
ffff80000010425a:	48 89 f8             	mov    %rdi,%rax
ffff80000010425d:	48 83 c0 01          	add    $0x1,%rax
ffff800000104261:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
ffff800000104265:	48 39 f0             	cmp    %rsi,%rax
ffff800000104268:	75 f3                	jne    ffff80000010425d <number+0x10e>
ffff80000010426a:	89 c9                	mov    %ecx,%ecx
ffff80000010426c:	48 01 cf             	add    %rcx,%rdi
ffff80000010426f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104274:	45 84 ff             	test   %r15b,%r15b
ffff800000104277:	74 07                	je     ffff800000104280 <number+0x131>
ffff800000104279:	44 88 3f             	mov    %r15b,(%rdi)
ffff80000010427c:	48 8d 7f 01          	lea    0x1(%rdi),%rdi
ffff800000104280:	83 7c 24 b4 00       	cmpl   $0x0,-0x4c(%rsp)
ffff800000104285:	74 12                	je     ffff800000104299 <number+0x14a>
ffff800000104287:	83 fd 08             	cmp    $0x8,%ebp
ffff80000010428a:	0f 84 00 01 00 00    	je     ffff800000104390 <number+0x241>
ffff800000104290:	83 fd 10             	cmp    $0x10,%ebp
ffff800000104293:	0f 84 03 01 00 00    	je     ffff80000010439c <number+0x24d>
ffff800000104299:	41 f6 c1 10          	test   $0x10,%r9b
ffff80000010429d:	75 29                	jne    ffff8000001042c8 <number+0x179>
ffff80000010429f:	8d 41 ff             	lea    -0x1(%rcx),%eax
ffff8000001042a2:	85 c9                	test   %ecx,%ecx
ffff8000001042a4:	0f 8e 06 01 00 00    	jle    ffff8000001043b0 <number+0x261>
ffff8000001042aa:	89 ce                	mov    %ecx,%esi
ffff8000001042ac:	48 01 fe             	add    %rdi,%rsi
ffff8000001042af:	48 89 f8             	mov    %rdi,%rax
ffff8000001042b2:	48 83 c0 01          	add    $0x1,%rax
ffff8000001042b6:	88 58 ff             	mov    %bl,-0x1(%rax)
ffff8000001042b9:	48 39 f0             	cmp    %rsi,%rax
ffff8000001042bc:	75 f4                	jne    ffff8000001042b2 <number+0x163>
ffff8000001042be:	89 c9                	mov    %ecx,%ecx
ffff8000001042c0:	48 01 cf             	add    %rcx,%rdi
ffff8000001042c3:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff8000001042c8:	44 39 c2             	cmp    %r8d,%edx
ffff8000001042cb:	0f 8d e6 00 00 00    	jge    ffff8000001043b7 <number+0x268>
ffff8000001042d1:	41 29 d0             	sub    %edx,%r8d
ffff8000001042d4:	41 8d 40 ff          	lea    -0x1(%r8),%eax
ffff8000001042d8:	4c 8d 44 07 01       	lea    0x1(%rdi,%rax,1),%r8
ffff8000001042dd:	48 83 c7 01          	add    $0x1,%rdi
ffff8000001042e1:	c6 47 ff 30          	movb   $0x30,-0x1(%rdi)
ffff8000001042e5:	4c 39 c7             	cmp    %r8,%rdi
ffff8000001042e8:	75 f3                	jne    ffff8000001042dd <number+0x18e>
ffff8000001042ea:	85 d2                	test   %edx,%edx
ffff8000001042ec:	7e 2b                	jle    ffff800000104319 <number+0x1ca>
ffff8000001042ee:	48 63 c2             	movslq %edx,%rax
ffff8000001042f1:	48 8d 74 04 b8       	lea    -0x48(%rsp,%rax,1),%rsi
ffff8000001042f6:	41 89 d1             	mov    %edx,%r9d
ffff8000001042f9:	4d 01 c1             	add    %r8,%r9
ffff8000001042fc:	4c 89 c0             	mov    %r8,%rax
ffff8000001042ff:	48 83 c0 01          	add    $0x1,%rax
ffff800000104303:	0f b6 7e ff          	movzbl -0x1(%rsi),%edi
ffff800000104307:	40 88 78 ff          	mov    %dil,-0x1(%rax)
ffff80000010430b:	48 83 ee 01          	sub    $0x1,%rsi
ffff80000010430f:	4c 39 c8             	cmp    %r9,%rax
ffff800000104312:	75 eb                	jne    ffff8000001042ff <number+0x1b0>
ffff800000104314:	89 d2                	mov    %edx,%edx
ffff800000104316:	49 01 d0             	add    %rdx,%r8
ffff800000104319:	85 c9                	test   %ecx,%ecx
ffff80000010431b:	7e 1a                	jle    ffff800000104337 <number+0x1e8>
ffff80000010431d:	89 ca                	mov    %ecx,%edx
ffff80000010431f:	4c 01 c2             	add    %r8,%rdx
ffff800000104322:	4c 89 c0             	mov    %r8,%rax
ffff800000104325:	48 83 c0 01          	add    $0x1,%rax
ffff800000104329:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
ffff80000010432d:	48 39 d0             	cmp    %rdx,%rax
ffff800000104330:	75 f3                	jne    ffff800000104325 <number+0x1d6>
ffff800000104332:	89 c9                	mov    %ecx,%ecx
ffff800000104334:	49 01 c8             	add    %rcx,%r8
ffff800000104337:	4c 89 c0             	mov    %r8,%rax
ffff80000010433a:	5b                   	pop    %rbx
ffff80000010433b:	5d                   	pop    %rbp
ffff80000010433c:	41 5c                	pop    %r12
ffff80000010433e:	41 5d                	pop    %r13
ffff800000104340:	41 5e                	pop    %r14
ffff800000104342:	41 5f                	pop    %r15
ffff800000104344:	c3                   	ret
ffff800000104345:	83 e9 02             	sub    $0x2,%ecx
ffff800000104348:	e9 da fe ff ff       	jmp    ffff800000104227 <number+0xd8>
ffff80000010434d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000104352:	41 bd 00 00 00 00    	mov    $0x0,%r13d
ffff800000104358:	4c 63 dd             	movslq %ebp,%r11
ffff80000010435b:	4c 8d 64 24 b7       	lea    -0x49(%rsp),%r12
ffff800000104360:	4c 89 d0             	mov    %r10,%rax
ffff800000104363:	44 89 ea             	mov    %r13d,%edx
ffff800000104366:	49 f7 f3             	div    %r11
ffff800000104369:	49 89 c2             	mov    %rax,%r10
ffff80000010436c:	48 63 d2             	movslq %edx,%rdx
ffff80000010436f:	41 0f b6 14 16       	movzbl (%r14,%rdx,1),%edx
ffff800000104374:	41 88 14 34          	mov    %dl,(%r12,%rsi,1)
ffff800000104378:	48 89 f2             	mov    %rsi,%rdx
ffff80000010437b:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010437f:	48 85 c0             	test   %rax,%rax
ffff800000104382:	75 dc                	jne    ffff800000104360 <number+0x211>
ffff800000104384:	e9 b1 fe ff ff       	jmp    ffff80000010423a <number+0xeb>
ffff800000104389:	89 c1                	mov    %eax,%ecx
ffff80000010438b:	e9 e4 fe ff ff       	jmp    ffff800000104274 <number+0x125>
ffff800000104390:	c6 07 30             	movb   $0x30,(%rdi)
ffff800000104393:	48 8d 7f 01          	lea    0x1(%rdi),%rdi
ffff800000104397:	e9 fd fe ff ff       	jmp    ffff800000104299 <number+0x14a>
ffff80000010439c:	c6 07 30             	movb   $0x30,(%rdi)
ffff80000010439f:	41 0f b6 46 21       	movzbl 0x21(%r14),%eax
ffff8000001043a4:	88 47 01             	mov    %al,0x1(%rdi)
ffff8000001043a7:	48 8d 7f 02          	lea    0x2(%rdi),%rdi
ffff8000001043ab:	e9 e9 fe ff ff       	jmp    ffff800000104299 <number+0x14a>
ffff8000001043b0:	89 c1                	mov    %eax,%ecx
ffff8000001043b2:	e9 11 ff ff ff       	jmp    ffff8000001042c8 <number+0x179>
ffff8000001043b7:	49 89 f8             	mov    %rdi,%r8
ffff8000001043ba:	e9 2b ff ff ff       	jmp    ffff8000001042ea <number+0x19b>
ffff8000001043bf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
ffff8000001043c5:	e9 6d ff ff ff       	jmp    ffff800000104337 <number+0x1e8>
ffff8000001043ca:	41 b8 00 00 00 00    	mov    $0x0,%r8d
ffff8000001043d0:	e9 62 ff ff ff       	jmp    ffff800000104337 <number+0x1e8>

ffff8000001043d5 <putchar>:
ffff8000001043d5:	f3 0f 1e fa          	endbr64
ffff8000001043d9:	4c 8d 15 f9 ff ff ff 	lea    -0x7(%rip),%r10        # ffff8000001043d9 <putchar+0x4>
ffff8000001043e0:	49 bb 67 48 00 00 00 	movabs $0x4867,%r11
ffff8000001043e7:	00 00 00 
ffff8000001043ea:	4d 01 da             	add    %r11,%r10
ffff8000001043ed:	89 f0                	mov    %esi,%eax
ffff8000001043ef:	0f b6 74 24 08       	movzbl 0x8(%rsp),%esi
ffff8000001043f4:	48 c1 e6 04          	shl    $0x4,%rsi
ffff8000001043f8:	49 bb 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%r11
ffff8000001043ff:	ff ff ff 
ffff800000104402:	4f 8d 14 1a          	lea    (%r10,%r11,1),%r10
ffff800000104406:	4c 01 d6             	add    %r10,%rsi
ffff800000104409:	4c 63 d0             	movslq %eax,%r10
ffff80000010440c:	49 c1 e2 02          	shl    $0x2,%r10
ffff800000104410:	48 63 d2             	movslq %edx,%rdx
ffff800000104413:	0f af c8             	imul   %eax,%ecx
ffff800000104416:	48 63 c1             	movslq %ecx,%rax
ffff800000104419:	48 8d 44 02 08       	lea    0x8(%rdx,%rax,1),%rax
ffff80000010441e:	48 8d 3c 87          	lea    (%rdi,%rax,4),%rdi
ffff800000104422:	4c 8d 5e 10          	lea    0x10(%rsi),%r11
ffff800000104426:	eb 0c                	jmp    ffff800000104434 <putchar+0x5f>
ffff800000104428:	48 83 c6 01          	add    $0x1,%rsi
ffff80000010442c:	4c 01 d7             	add    %r10,%rdi
ffff80000010442f:	4c 39 de             	cmp    %r11,%rsi
ffff800000104432:	74 24                	je     ffff800000104458 <putchar+0x83>
ffff800000104434:	48 8d 47 e0          	lea    -0x20(%rdi),%rax
ffff800000104438:	ba 00 01 00 00       	mov    $0x100,%edx
ffff80000010443d:	d1 fa                	sar    $1,%edx
ffff80000010443f:	0f b6 0e             	movzbl (%rsi),%ecx
ffff800000104442:	85 d1                	test   %edx,%ecx
ffff800000104444:	44 89 c1             	mov    %r8d,%ecx
ffff800000104447:	41 0f 44 c9          	cmove  %r9d,%ecx
ffff80000010444b:	89 08                	mov    %ecx,(%rax)
ffff80000010444d:	48 83 c0 04          	add    $0x4,%rax
ffff800000104451:	48 39 f8             	cmp    %rdi,%rax
ffff800000104454:	75 e7                	jne    ffff80000010443d <putchar+0x68>
ffff800000104456:	eb d0                	jmp    ffff800000104428 <putchar+0x53>
ffff800000104458:	c3                   	ret

ffff800000104459 <clear_screen>:
ffff800000104459:	f3 0f 1e fa          	endbr64
ffff80000010445d:	41 57                	push   %r15
ffff80000010445f:	41 56                	push   %r14
ffff800000104461:	41 55                	push   %r13
ffff800000104463:	41 54                	push   %r12
ffff800000104465:	55                   	push   %rbp
ffff800000104466:	53                   	push   %rbx
ffff800000104467:	48 83 ec 10          	sub    $0x10,%rsp
ffff80000010446b:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010446b <clear_screen+0x12>
ffff800000104472:	49 bb d5 47 00 00 00 	movabs $0x47d5,%r11
ffff800000104479:	00 00 00 
ffff80000010447c:	4c 01 db             	add    %r11,%rbx
ffff80000010447f:	89 7c 24 04          	mov    %edi,0x4(%rsp)
ffff800000104483:	89 74 24 08          	mov    %esi,0x8(%rsp)
ffff800000104487:	48 b9 20 10 00 00 00 	movabs $0x1020,%rcx
ffff80000010448e:	00 00 00 
ffff800000104491:	8b 04 0b             	mov    (%rbx,%rcx,1),%eax
ffff800000104494:	99                   	cltd
ffff800000104495:	f7 7c 0b 10          	idivl  0x10(%rbx,%rcx,1)
ffff800000104499:	41 89 c6             	mov    %eax,%r14d
ffff80000010449c:	8b 44 0b 04          	mov    0x4(%rbx,%rcx,1),%eax
ffff8000001044a0:	99                   	cltd
ffff8000001044a1:	f7 7c 0b 14          	idivl  0x14(%rbx,%rcx,1)
ffff8000001044a5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
ffff8000001044a9:	41 bd 00 00 00 00    	mov    $0x0,%r13d
ffff8000001044af:	49 89 cc             	mov    %rcx,%r12
ffff8000001044b2:	48 b8 95 b7 ff ff ff 	movabs $0xffffffffffffb795,%rax
ffff8000001044b9:	ff ff ff 
ffff8000001044bc:	4c 8d 3c 03          	lea    (%rbx,%rax,1),%r15
ffff8000001044c0:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
ffff8000001044c5:	7f 69                	jg     ffff800000104530 <clear_screen+0xd7>
ffff8000001044c7:	48 b8 20 10 00 00 00 	movabs $0x1020,%rax
ffff8000001044ce:	00 00 00 
ffff8000001044d1:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001044d8:	00 
ffff8000001044d9:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001044e0:	00 
ffff8000001044e1:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001044e5:	5b                   	pop    %rbx
ffff8000001044e6:	5d                   	pop    %rbp
ffff8000001044e7:	41 5c                	pop    %r12
ffff8000001044e9:	41 5d                	pop    %r13
ffff8000001044eb:	41 5e                	pop    %r14
ffff8000001044ed:	41 5f                	pop    %r15
ffff8000001044ef:	c3                   	ret
ffff8000001044f0:	44 89 e9             	mov    %r13d,%ecx
ffff8000001044f3:	42 0f af 4c 23 14    	imul   0x14(%rbx,%r12,1),%ecx
ffff8000001044f9:	89 ea                	mov    %ebp,%edx
ffff8000001044fb:	42 0f af 54 23 10    	imul   0x10(%rbx,%r12,1),%edx
ffff800000104501:	42 8b 34 23          	mov    (%rbx,%r12,1),%esi
ffff800000104505:	4a 8b 7c 23 18       	mov    0x18(%rbx,%r12,1),%rdi
ffff80000010450a:	6a 20                	push   $0x20
ffff80000010450c:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
ffff800000104511:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
ffff800000104516:	41 ff d7             	call   *%r15
ffff800000104519:	83 c5 01             	add    $0x1,%ebp
ffff80000010451c:	48 83 c4 08          	add    $0x8,%rsp
ffff800000104520:	41 39 ee             	cmp    %ebp,%r14d
ffff800000104523:	75 cb                	jne    ffff8000001044f0 <clear_screen+0x97>
ffff800000104525:	41 83 c5 01          	add    $0x1,%r13d
ffff800000104529:	44 39 6c 24 0c       	cmp    %r13d,0xc(%rsp)
ffff80000010452e:	74 97                	je     ffff8000001044c7 <clear_screen+0x6e>
ffff800000104530:	bd 00 00 00 00       	mov    $0x0,%ebp
ffff800000104535:	45 85 f6             	test   %r14d,%r14d
ffff800000104538:	7f b6                	jg     ffff8000001044f0 <clear_screen+0x97>
ffff80000010453a:	eb e9                	jmp    ffff800000104525 <clear_screen+0xcc>

ffff80000010453c <skip_atoi2>:
ffff80000010453c:	f3 0f 1e fa          	endbr64
ffff800000104540:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104543:	0f b6 02             	movzbl (%rdx),%eax
ffff800000104546:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff800000104549:	80 f9 09             	cmp    $0x9,%cl
ffff80000010454c:	77 2b                	ja     ffff800000104579 <skip_atoi2+0x3d>
ffff80000010454e:	48 83 c2 01          	add    $0x1,%rdx
ffff800000104552:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff800000104557:	48 89 17             	mov    %rdx,(%rdi)
ffff80000010455a:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff80000010455d:	83 e8 30             	sub    $0x30,%eax
ffff800000104560:	0f be c0             	movsbl %al,%eax
ffff800000104563:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff800000104566:	0f b6 02             	movzbl (%rdx),%eax
ffff800000104569:	48 83 c2 01          	add    $0x1,%rdx
ffff80000010456d:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff800000104570:	40 80 fe 09          	cmp    $0x9,%sil
ffff800000104574:	76 e1                	jbe    ffff800000104557 <skip_atoi2+0x1b>
ffff800000104576:	89 c8                	mov    %ecx,%eax
ffff800000104578:	c3                   	ret
ffff800000104579:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff80000010457e:	eb f6                	jmp    ffff800000104576 <skip_atoi2+0x3a>

ffff800000104580 <skip_atoi>:
ffff800000104580:	f3 0f 1e fa          	endbr64
ffff800000104584:	48 8b 17             	mov    (%rdi),%rdx
ffff800000104587:	0f b6 02             	movzbl (%rdx),%eax
ffff80000010458a:	8d 48 d0             	lea    -0x30(%rax),%ecx
ffff80000010458d:	80 f9 09             	cmp    $0x9,%cl
ffff800000104590:	77 2b                	ja     ffff8000001045bd <skip_atoi+0x3d>
ffff800000104592:	48 83 c2 01          	add    $0x1,%rdx
ffff800000104596:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff80000010459b:	48 89 17             	mov    %rdx,(%rdi)
ffff80000010459e:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
ffff8000001045a1:	83 e8 30             	sub    $0x30,%eax
ffff8000001045a4:	0f be c0             	movsbl %al,%eax
ffff8000001045a7:	8d 0c 48             	lea    (%rax,%rcx,2),%ecx
ffff8000001045aa:	0f b6 02             	movzbl (%rdx),%eax
ffff8000001045ad:	48 83 c2 01          	add    $0x1,%rdx
ffff8000001045b1:	8d 70 d0             	lea    -0x30(%rax),%esi
ffff8000001045b4:	40 80 fe 09          	cmp    $0x9,%sil
ffff8000001045b8:	76 e1                	jbe    ffff80000010459b <skip_atoi+0x1b>
ffff8000001045ba:	89 c8                	mov    %ecx,%eax
ffff8000001045bc:	c3                   	ret
ffff8000001045bd:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff8000001045c2:	eb f6                	jmp    ffff8000001045ba <skip_atoi+0x3a>

ffff8000001045c4 <vsprintf>:
ffff8000001045c4:	f3 0f 1e fa          	endbr64
ffff8000001045c8:	41 57                	push   %r15
ffff8000001045ca:	41 56                	push   %r14
ffff8000001045cc:	41 55                	push   %r13
ffff8000001045ce:	41 54                	push   %r12
ffff8000001045d0:	55                   	push   %rbp
ffff8000001045d1:	53                   	push   %rbx
ffff8000001045d2:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001045d6:	4c 8d 3d f9 ff ff ff 	lea    -0x7(%rip),%r15        # ffff8000001045d6 <vsprintf+0x12>
ffff8000001045dd:	49 bb 6a 46 00 00 00 	movabs $0x466a,%r11
ffff8000001045e4:	00 00 00 
ffff8000001045e7:	4d 01 df             	add    %r11,%r15
ffff8000001045ea:	48 89 3c 24          	mov    %rdi,(%rsp)
ffff8000001045ee:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
ffff8000001045f3:	0f b6 06             	movzbl (%rsi),%eax
ffff8000001045f6:	84 c0                	test   %al,%al
ffff8000001045f8:	0f 84 9d 06 00 00    	je     ffff800000104c9b <vsprintf+0x6d7>
ffff8000001045fe:	49 89 d5             	mov    %rdx,%r13
ffff800000104601:	48 89 fb             	mov    %rdi,%rbx
ffff800000104604:	4c 8d 25 95 0c 00 00 	lea    0xc95(%rip),%r12        # ffff8000001052a0 <_etext+0x2ef>
ffff80000010460b:	e9 92 04 00 00       	jmp    ffff800000104aa2 <vsprintf+0x4de>
ffff800000104610:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff800000104615:	bd 00 00 00 00       	mov    $0x0,%ebp
ffff80000010461a:	eb 06                	jmp    ffff800000104622 <vsprintf+0x5e>
ffff80000010461c:	83 cd 10             	or     $0x10,%ebp
ffff80000010461f:	48 89 f2             	mov    %rsi,%rdx
ffff800000104622:	48 8d 72 01          	lea    0x1(%rdx),%rsi
ffff800000104626:	0f b6 4a 01          	movzbl 0x1(%rdx),%ecx
ffff80000010462a:	8d 41 e0             	lea    -0x20(%rcx),%eax
ffff80000010462d:	3c 10                	cmp    $0x10,%al
ffff80000010462f:	77 21                	ja     ffff800000104652 <vsprintf+0x8e>
ffff800000104631:	0f b6 c0             	movzbl %al,%eax
ffff800000104634:	4c 89 e7             	mov    %r12,%rdi
ffff800000104637:	49 03 3c c4          	add    (%r12,%rax,8),%rdi
ffff80000010463b:	3e ff e7             	notrack jmp *%rdi
ffff80000010463e:	83 cd 04             	or     $0x4,%ebp
ffff800000104641:	eb dc                	jmp    ffff80000010461f <vsprintf+0x5b>
ffff800000104643:	83 cd 08             	or     $0x8,%ebp
ffff800000104646:	eb d7                	jmp    ffff80000010461f <vsprintf+0x5b>
ffff800000104648:	83 cd 20             	or     $0x20,%ebp
ffff80000010464b:	eb d2                	jmp    ffff80000010461f <vsprintf+0x5b>
ffff80000010464d:	83 cd 01             	or     $0x1,%ebp
ffff800000104650:	eb cd                	jmp    ffff80000010461f <vsprintf+0x5b>
ffff800000104652:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
ffff800000104657:	8d 41 d0             	lea    -0x30(%rcx),%eax
ffff80000010465a:	3c 09                	cmp    $0x9,%al
ffff80000010465c:	76 77                	jbe    ffff8000001046d5 <vsprintf+0x111>
ffff80000010465e:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
ffff800000104664:	80 f9 2a             	cmp    $0x2a,%cl
ffff800000104667:	0f 84 85 00 00 00    	je     ffff8000001046f2 <vsprintf+0x12e>
ffff80000010466d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff800000104672:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
ffff800000104678:	80 38 2e             	cmpb   $0x2e,(%rax)
ffff80000010467b:	0f 84 b5 00 00 00    	je     ffff800000104736 <vsprintf+0x172>
ffff800000104681:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff800000104686:	0f b6 08             	movzbl (%rax),%ecx
ffff800000104689:	8d 51 b4             	lea    -0x4c(%rcx),%edx
ffff80000010468c:	80 fa 2e             	cmp    $0x2e,%dl
ffff80000010468f:	0f 87 23 06 00 00    	ja     ffff800000104cb8 <vsprintf+0x6f4>
ffff800000104695:	48 bf 01 00 00 10 01 	movabs $0x400110000001,%rdi
ffff80000010469c:	40 00 00 
ffff80000010469f:	48 0f a3 d7          	bt     %rdx,%rdi
ffff8000001046a3:	0f 83 2f 06 00 00    	jae    ffff800000104cd8 <vsprintf+0x714>
ffff8000001046a9:	0f be c9             	movsbl %cl,%ecx
ffff8000001046ac:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001046b0:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff8000001046b5:	0f b6 40 01          	movzbl 0x1(%rax),%eax
ffff8000001046b9:	83 e8 25             	sub    $0x25,%eax
ffff8000001046bc:	3c 53                	cmp    $0x53,%al
ffff8000001046be:	0f 87 a7 05 00 00    	ja     ffff800000104c6b <vsprintf+0x6a7>
ffff8000001046c4:	0f b6 c0             	movzbl %al,%eax
ffff8000001046c7:	48 8d 35 5a 0c 00 00 	lea    0xc5a(%rip),%rsi        # ffff800000105328 <_etext+0x377>
ffff8000001046ce:	48 03 34 c6          	add    (%rsi,%rax,8),%rsi
ffff8000001046d2:	3e ff e6             	notrack jmp *%rsi
ffff8000001046d5:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
ffff8000001046da:	48 b8 40 b9 ff ff ff 	movabs $0xffffffffffffb940,%rax
ffff8000001046e1:	ff ff ff 
ffff8000001046e4:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff8000001046e8:	ff d0                	call   *%rax
ffff8000001046ea:	41 89 c6             	mov    %eax,%r14d
ffff8000001046ed:	e9 7b ff ff ff       	jmp    ffff80000010466d <vsprintf+0xa9>
ffff8000001046f2:	48 83 c2 02          	add    $0x2,%rdx
ffff8000001046f6:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff8000001046fb:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff8000001046ff:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104702:	77 24                	ja     ffff800000104728 <vsprintf+0x164>
ffff800000104704:	89 c2                	mov    %eax,%edx
ffff800000104706:	49 03 55 10          	add    0x10(%r13),%rdx
ffff80000010470a:	83 c0 08             	add    $0x8,%eax
ffff80000010470d:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104711:	44 8b 32             	mov    (%rdx),%r14d
ffff800000104714:	45 85 f6             	test   %r14d,%r14d
ffff800000104717:	0f 89 50 ff ff ff    	jns    ffff80000010466d <vsprintf+0xa9>
ffff80000010471d:	41 f7 de             	neg    %r14d
ffff800000104720:	83 cd 10             	or     $0x10,%ebp
ffff800000104723:	e9 45 ff ff ff       	jmp    ffff80000010466d <vsprintf+0xa9>
ffff800000104728:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff80000010472c:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104730:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104734:	eb db                	jmp    ffff800000104711 <vsprintf+0x14d>
ffff800000104736:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010473a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff80000010473f:	0f b6 50 01          	movzbl 0x1(%rax),%edx
ffff800000104743:	8d 4a d0             	lea    -0x30(%rdx),%ecx
ffff800000104746:	80 f9 09             	cmp    $0x9,%cl
ffff800000104749:	76 32                	jbe    ffff80000010477d <vsprintf+0x1b9>
ffff80000010474b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
ffff800000104751:	80 fa 2a             	cmp    $0x2a,%dl
ffff800000104754:	0f 85 27 ff ff ff    	jne    ffff800000104681 <vsprintf+0xbd>
ffff80000010475a:	48 83 c0 02          	add    $0x2,%rax
ffff80000010475e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff800000104763:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104767:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010476a:	77 38                	ja     ffff8000001047a4 <vsprintf+0x1e0>
ffff80000010476c:	89 c2                	mov    %eax,%edx
ffff80000010476e:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104772:	83 c0 08             	add    $0x8,%eax
ffff800000104775:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104779:	8b 02                	mov    (%rdx),%eax
ffff80000010477b:	eb 15                	jmp    ffff800000104792 <vsprintf+0x1ce>
ffff80000010477d:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
ffff800000104782:	48 b8 40 b9 ff ff ff 	movabs $0xffffffffffffb940,%rax
ffff800000104789:	ff ff ff 
ffff80000010478c:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104790:	ff d0                	call   *%rax
ffff800000104792:	85 c0                	test   %eax,%eax
ffff800000104794:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104799:	0f 49 d0             	cmovns %eax,%edx
ffff80000010479c:	41 89 d0             	mov    %edx,%r8d
ffff80000010479f:	e9 dd fe ff ff       	jmp    ffff800000104681 <vsprintf+0xbd>
ffff8000001047a4:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff8000001047a8:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001047ac:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff8000001047b0:	eb c7                	jmp    ffff800000104779 <vsprintf+0x1b5>
ffff8000001047b2:	83 e5 10             	and    $0x10,%ebp
ffff8000001047b5:	74 4a                	je     ffff800000104801 <vsprintf+0x23d>
ffff8000001047b7:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff8000001047bb:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001047be:	77 71                	ja     ffff800000104831 <vsprintf+0x26d>
ffff8000001047c0:	89 c2                	mov    %eax,%edx
ffff8000001047c2:	49 03 55 10          	add    0x10(%r13),%rdx
ffff8000001047c6:	83 c0 08             	add    $0x8,%eax
ffff8000001047c9:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff8000001047cd:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
ffff8000001047d1:	8b 02                	mov    (%rdx),%eax
ffff8000001047d3:	88 03                	mov    %al,(%rbx)
ffff8000001047d5:	41 83 fe 01          	cmp    $0x1,%r14d
ffff8000001047d9:	0f 8e b4 04 00 00    	jle    ffff800000104c93 <vsprintf+0x6cf>
ffff8000001047df:	44 89 f2             	mov    %r14d,%edx
ffff8000001047e2:	48 01 da             	add    %rbx,%rdx
ffff8000001047e5:	48 89 c8             	mov    %rcx,%rax
ffff8000001047e8:	48 83 c0 01          	add    $0x1,%rax
ffff8000001047ec:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
ffff8000001047f0:	48 39 d0             	cmp    %rdx,%rax
ffff8000001047f3:	75 f3                	jne    ffff8000001047e8 <vsprintf+0x224>
ffff8000001047f5:	41 8d 5e ff          	lea    -0x1(%r14),%ebx
ffff8000001047f9:	48 01 cb             	add    %rcx,%rbx
ffff8000001047fc:	e9 87 02 00 00       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104801:	41 8d 46 ff          	lea    -0x1(%r14),%eax
ffff800000104805:	85 c0                	test   %eax,%eax
ffff800000104807:	7e 23                	jle    ffff80000010482c <vsprintf+0x268>
ffff800000104809:	41 8d 56 ff          	lea    -0x1(%r14),%edx
ffff80000010480d:	48 01 da             	add    %rbx,%rdx
ffff800000104810:	48 89 d8             	mov    %rbx,%rax
ffff800000104813:	48 83 c0 01          	add    $0x1,%rax
ffff800000104817:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
ffff80000010481b:	48 39 d0             	cmp    %rdx,%rax
ffff80000010481e:	75 f3                	jne    ffff800000104813 <vsprintf+0x24f>
ffff800000104820:	41 8d 46 ff          	lea    -0x1(%r14),%eax
ffff800000104824:	48 01 c3             	add    %rax,%rbx
ffff800000104827:	41 89 ee             	mov    %ebp,%r14d
ffff80000010482a:	eb 8b                	jmp    ffff8000001047b7 <vsprintf+0x1f3>
ffff80000010482c:	41 89 c6             	mov    %eax,%r14d
ffff80000010482f:	eb 86                	jmp    ffff8000001047b7 <vsprintf+0x1f3>
ffff800000104831:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104835:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104839:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff80000010483d:	eb 8e                	jmp    ffff8000001047cd <vsprintf+0x209>
ffff80000010483f:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104843:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104846:	0f 87 97 00 00 00    	ja     ffff8000001048e3 <vsprintf+0x31f>
ffff80000010484c:	89 c2                	mov    %eax,%edx
ffff80000010484e:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104852:	83 c0 08             	add    $0x8,%eax
ffff800000104855:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104859:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010485c:	80 3e 00             	cmpb   $0x0,(%rsi)
ffff80000010485f:	0f 84 8f 00 00 00    	je     ffff8000001048f4 <vsprintf+0x330>
ffff800000104865:	48 89 f0             	mov    %rsi,%rax
ffff800000104868:	48 83 c0 01          	add    $0x1,%rax
ffff80000010486c:	80 38 00             	cmpb   $0x0,(%rax)
ffff80000010486f:	75 f7                	jne    ffff800000104868 <vsprintf+0x2a4>
ffff800000104871:	48 29 f0             	sub    %rsi,%rax
ffff800000104874:	89 c2                	mov    %eax,%edx
ffff800000104876:	41 39 c0             	cmp    %eax,%r8d
ffff800000104879:	41 0f 4e d0          	cmovle %r8d,%edx
ffff80000010487d:	45 85 c0             	test   %r8d,%r8d
ffff800000104880:	0f 48 d0             	cmovs  %eax,%edx
ffff800000104883:	40 f6 c5 10          	test   $0x10,%bpl
ffff800000104887:	74 73                	je     ffff8000001048fc <vsprintf+0x338>
ffff800000104889:	85 d2                	test   %edx,%edx
ffff80000010488b:	7e 1d                	jle    ffff8000001048aa <vsprintf+0x2e6>
ffff80000010488d:	48 63 fa             	movslq %edx,%rdi
ffff800000104890:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104895:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
ffff800000104899:	88 0c 03             	mov    %cl,(%rbx,%rax,1)
ffff80000010489c:	48 83 c0 01          	add    $0x1,%rax
ffff8000001048a0:	48 39 f8             	cmp    %rdi,%rax
ffff8000001048a3:	75 f0                	jne    ffff800000104895 <vsprintf+0x2d1>
ffff8000001048a5:	89 d0                	mov    %edx,%eax
ffff8000001048a7:	48 01 c3             	add    %rax,%rbx
ffff8000001048aa:	41 39 d6             	cmp    %edx,%r14d
ffff8000001048ad:	0f 8e d5 01 00 00    	jle    ffff800000104a88 <vsprintf+0x4c4>
ffff8000001048b3:	44 89 f6             	mov    %r14d,%esi
ffff8000001048b6:	41 29 d6             	sub    %edx,%r14d
ffff8000001048b9:	41 8d 46 ff          	lea    -0x1(%r14),%eax
ffff8000001048bd:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
ffff8000001048c2:	48 89 d8             	mov    %rbx,%rax
ffff8000001048c5:	48 83 c0 01          	add    $0x1,%rax
ffff8000001048c9:	c6 40 ff 20          	movb   $0x20,-0x1(%rax)
ffff8000001048cd:	48 39 c8             	cmp    %rcx,%rax
ffff8000001048d0:	75 f3                	jne    ffff8000001048c5 <vsprintf+0x301>
ffff8000001048d2:	89 f0                	mov    %esi,%eax
ffff8000001048d4:	29 d0                	sub    %edx,%eax
ffff8000001048d6:	8d 40 ff             	lea    -0x1(%rax),%eax
ffff8000001048d9:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
ffff8000001048de:	e9 a5 01 00 00       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff8000001048e3:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff8000001048e7:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001048eb:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff8000001048ef:	e9 65 ff ff ff       	jmp    ffff800000104859 <vsprintf+0x295>
ffff8000001048f4:	48 89 f0             	mov    %rsi,%rax
ffff8000001048f7:	e9 75 ff ff ff       	jmp    ffff800000104871 <vsprintf+0x2ad>
ffff8000001048fc:	41 8d 4e ff          	lea    -0x1(%r14),%ecx
ffff800000104900:	41 39 d6             	cmp    %edx,%r14d
ffff800000104903:	7e 2c                	jle    ffff800000104931 <vsprintf+0x36d>
ffff800000104905:	44 89 f7             	mov    %r14d,%edi
ffff800000104908:	41 89 ce             	mov    %ecx,%r14d
ffff80000010490b:	41 29 d6             	sub    %edx,%r14d
ffff80000010490e:	4a 8d 44 33 01       	lea    0x1(%rbx,%r14,1),%rax
ffff800000104913:	48 83 c3 01          	add    $0x1,%rbx
ffff800000104917:	c6 43 ff 20          	movb   $0x20,-0x1(%rbx)
ffff80000010491b:	48 39 c3             	cmp    %rax,%rbx
ffff80000010491e:	75 f3                	jne    ffff800000104913 <vsprintf+0x34f>
ffff800000104920:	41 89 d6             	mov    %edx,%r14d
ffff800000104923:	41 29 fe             	sub    %edi,%r14d
ffff800000104926:	41 01 ce             	add    %ecx,%r14d
ffff800000104929:	48 89 c3             	mov    %rax,%rbx
ffff80000010492c:	e9 58 ff ff ff       	jmp    ffff800000104889 <vsprintf+0x2c5>
ffff800000104931:	41 89 ce             	mov    %ecx,%r14d
ffff800000104934:	e9 50 ff ff ff       	jmp    ffff800000104889 <vsprintf+0x2c5>
ffff800000104939:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff80000010493e:	83 f9 6c             	cmp    $0x6c,%ecx
ffff800000104941:	74 42                	je     ffff800000104985 <vsprintf+0x3c1>
ffff800000104943:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104947:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010494a:	0f 87 82 00 00 00    	ja     ffff8000001049d2 <vsprintf+0x40e>
ffff800000104950:	89 c2                	mov    %eax,%edx
ffff800000104952:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104956:	83 c0 08             	add    $0x8,%eax
ffff800000104959:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff80000010495d:	8b 32                	mov    (%rdx),%esi
ffff80000010495f:	41 89 e9             	mov    %ebp,%r9d
ffff800000104962:	44 89 f1             	mov    %r14d,%ecx
ffff800000104965:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010496a:	48 89 df             	mov    %rbx,%rdi
ffff80000010496d:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104974:	ff ff ff 
ffff800000104977:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff80000010497b:	ff d0                	call   *%rax
ffff80000010497d:	48 89 c3             	mov    %rax,%rbx
ffff800000104980:	e9 03 01 00 00       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104985:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104989:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010498c:	77 36                	ja     ffff8000001049c4 <vsprintf+0x400>
ffff80000010498e:	89 c2                	mov    %eax,%edx
ffff800000104990:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104994:	83 c0 08             	add    $0x8,%eax
ffff800000104997:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff80000010499b:	48 8b 32             	mov    (%rdx),%rsi
ffff80000010499e:	41 89 e9             	mov    %ebp,%r9d
ffff8000001049a1:	44 89 f1             	mov    %r14d,%ecx
ffff8000001049a4:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001049a9:	48 89 df             	mov    %rbx,%rdi
ffff8000001049ac:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff8000001049b3:	ff ff ff 
ffff8000001049b6:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff8000001049ba:	ff d0                	call   *%rax
ffff8000001049bc:	48 89 c3             	mov    %rax,%rbx
ffff8000001049bf:	e9 c4 00 00 00       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff8000001049c4:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff8000001049c8:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001049cc:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff8000001049d0:	eb c9                	jmp    ffff80000010499b <vsprintf+0x3d7>
ffff8000001049d2:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff8000001049d6:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff8000001049da:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff8000001049de:	e9 7a ff ff ff       	jmp    ffff80000010495d <vsprintf+0x399>
ffff8000001049e3:	41 83 fe ff          	cmp    $0xffffffff,%r14d
ffff8000001049e7:	74 3c                	je     ffff800000104a25 <vsprintf+0x461>
ffff8000001049e9:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff8000001049ed:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001049f0:	77 3e                	ja     ffff800000104a30 <vsprintf+0x46c>
ffff8000001049f2:	89 c2                	mov    %eax,%edx
ffff8000001049f4:	49 03 55 10          	add    0x10(%r13),%rdx
ffff8000001049f8:	83 c0 08             	add    $0x8,%eax
ffff8000001049fb:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff8000001049ff:	48 8b 32             	mov    (%rdx),%rsi
ffff800000104a02:	41 89 e9             	mov    %ebp,%r9d
ffff800000104a05:	44 89 f1             	mov    %r14d,%ecx
ffff800000104a08:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104a0d:	48 89 df             	mov    %rbx,%rdi
ffff800000104a10:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104a17:	ff ff ff 
ffff800000104a1a:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104a1e:	ff d0                	call   *%rax
ffff800000104a20:	48 89 c3             	mov    %rax,%rbx
ffff800000104a23:	eb 63                	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104a25:	83 cd 01             	or     $0x1,%ebp
ffff800000104a28:	41 be 10 00 00 00    	mov    $0x10,%r14d
ffff800000104a2e:	eb b9                	jmp    ffff8000001049e9 <vsprintf+0x425>
ffff800000104a30:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104a34:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104a38:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104a3c:	eb c1                	jmp    ffff8000001049ff <vsprintf+0x43b>
ffff800000104a3e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104a43:	83 cd 40             	or     $0x40,%ebp
ffff800000104a46:	83 f9 6c             	cmp    $0x6c,%ecx
ffff800000104a49:	74 75                	je     ffff800000104ac0 <vsprintf+0x4fc>
ffff800000104a4b:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104a4f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104a52:	0f 87 b2 00 00 00    	ja     ffff800000104b0a <vsprintf+0x546>
ffff800000104a58:	89 c2                	mov    %eax,%edx
ffff800000104a5a:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104a5e:	83 c0 08             	add    $0x8,%eax
ffff800000104a61:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104a65:	8b 32                	mov    (%rdx),%esi
ffff800000104a67:	41 89 e9             	mov    %ebp,%r9d
ffff800000104a6a:	44 89 f1             	mov    %r14d,%ecx
ffff800000104a6d:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104a72:	48 89 df             	mov    %rbx,%rdi
ffff800000104a75:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104a7c:	ff ff ff 
ffff800000104a7f:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104a83:	ff d0                	call   *%rax
ffff800000104a85:	48 89 c3             	mov    %rax,%rbx
ffff800000104a88:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
ffff800000104a8d:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104a91:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff800000104a96:	0f b6 40 01          	movzbl 0x1(%rax),%eax
ffff800000104a9a:	84 c0                	test   %al,%al
ffff800000104a9c:	0f 84 fd 01 00 00    	je     ffff800000104c9f <vsprintf+0x6db>
ffff800000104aa2:	3c 25                	cmp    $0x25,%al
ffff800000104aa4:	0f 84 66 fb ff ff    	je     ffff800000104610 <vsprintf+0x4c>
ffff800000104aaa:	88 03                	mov    %al,(%rbx)
ffff800000104aac:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
ffff800000104ab0:	eb d6                	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104ab2:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104ab7:	eb 8a                	jmp    ffff800000104a43 <vsprintf+0x47f>
ffff800000104ab9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104abe:	eb 86                	jmp    ffff800000104a46 <vsprintf+0x482>
ffff800000104ac0:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104ac4:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104ac7:	77 33                	ja     ffff800000104afc <vsprintf+0x538>
ffff800000104ac9:	89 c2                	mov    %eax,%edx
ffff800000104acb:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104acf:	83 c0 08             	add    $0x8,%eax
ffff800000104ad2:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104ad6:	48 8b 32             	mov    (%rdx),%rsi
ffff800000104ad9:	41 89 e9             	mov    %ebp,%r9d
ffff800000104adc:	44 89 f1             	mov    %r14d,%ecx
ffff800000104adf:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104ae4:	48 89 df             	mov    %rbx,%rdi
ffff800000104ae7:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104aee:	ff ff ff 
ffff800000104af1:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104af5:	ff d0                	call   *%rax
ffff800000104af7:	48 89 c3             	mov    %rax,%rbx
ffff800000104afa:	eb 8c                	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104afc:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104b00:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104b04:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104b08:	eb cc                	jmp    ffff800000104ad6 <vsprintf+0x512>
ffff800000104b0a:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104b0e:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104b12:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104b16:	e9 4a ff ff ff       	jmp    ffff800000104a65 <vsprintf+0x4a1>
ffff800000104b1b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104b20:	83 cd 02             	or     $0x2,%ebp
ffff800000104b23:	83 f9 6c             	cmp    $0x6c,%ecx
ffff800000104b26:	74 57                	je     ffff800000104b7f <vsprintf+0x5bb>
ffff800000104b28:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104b2c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b2f:	0f 87 97 00 00 00    	ja     ffff800000104bcc <vsprintf+0x608>
ffff800000104b35:	89 c2                	mov    %eax,%edx
ffff800000104b37:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104b3b:	83 c0 08             	add    $0x8,%eax
ffff800000104b3e:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104b42:	8b 32                	mov    (%rdx),%esi
ffff800000104b44:	41 89 e9             	mov    %ebp,%r9d
ffff800000104b47:	44 89 f1             	mov    %r14d,%ecx
ffff800000104b4a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104b4f:	48 89 df             	mov    %rbx,%rdi
ffff800000104b52:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104b59:	ff ff ff 
ffff800000104b5c:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104b60:	ff d0                	call   *%rax
ffff800000104b62:	48 89 c3             	mov    %rax,%rbx
ffff800000104b65:	e9 1e ff ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104b6a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104b6f:	eb af                	jmp    ffff800000104b20 <vsprintf+0x55c>
ffff800000104b71:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104b76:	eb ab                	jmp    ffff800000104b23 <vsprintf+0x55f>
ffff800000104b78:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104b7d:	eb a4                	jmp    ffff800000104b23 <vsprintf+0x55f>
ffff800000104b7f:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104b83:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104b86:	77 36                	ja     ffff800000104bbe <vsprintf+0x5fa>
ffff800000104b88:	89 c2                	mov    %eax,%edx
ffff800000104b8a:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104b8e:	83 c0 08             	add    $0x8,%eax
ffff800000104b91:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104b95:	48 8b 32             	mov    (%rdx),%rsi
ffff800000104b98:	41 89 e9             	mov    %ebp,%r9d
ffff800000104b9b:	44 89 f1             	mov    %r14d,%ecx
ffff800000104b9e:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104ba3:	48 89 df             	mov    %rbx,%rdi
ffff800000104ba6:	48 b8 0f b5 ff ff ff 	movabs $0xffffffffffffb50f,%rax
ffff800000104bad:	ff ff ff 
ffff800000104bb0:	49 8d 04 07          	lea    (%r15,%rax,1),%rax
ffff800000104bb4:	ff d0                	call   *%rax
ffff800000104bb6:	48 89 c3             	mov    %rax,%rbx
ffff800000104bb9:	e9 ca fe ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104bbe:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104bc2:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104bc6:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104bca:	eb c9                	jmp    ffff800000104b95 <vsprintf+0x5d1>
ffff800000104bcc:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104bd0:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104bd4:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104bd8:	e9 65 ff ff ff       	jmp    ffff800000104b42 <vsprintf+0x57e>
ffff800000104bdd:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104be2:	83 f9 6c             	cmp    $0x6c,%ecx
ffff800000104be5:	74 31                	je     ffff800000104c18 <vsprintf+0x654>
ffff800000104be7:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104beb:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104bee:	77 61                	ja     ffff800000104c51 <vsprintf+0x68d>
ffff800000104bf0:	89 c2                	mov    %eax,%edx
ffff800000104bf2:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104bf6:	83 c0 08             	add    $0x8,%eax
ffff800000104bf9:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104bfd:	48 8b 02             	mov    (%rdx),%rax
ffff800000104c00:	48 89 da             	mov    %rbx,%rdx
ffff800000104c03:	48 8b 34 24          	mov    (%rsp),%rsi
ffff800000104c07:	48 29 f2             	sub    %rsi,%rdx
ffff800000104c0a:	89 10                	mov    %edx,(%rax)
ffff800000104c0c:	e9 77 fe ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c11:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
ffff800000104c16:	eb ca                	jmp    ffff800000104be2 <vsprintf+0x61e>
ffff800000104c18:	41 8b 45 00          	mov    0x0(%r13),%eax
ffff800000104c1c:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104c1f:	77 22                	ja     ffff800000104c43 <vsprintf+0x67f>
ffff800000104c21:	89 c2                	mov    %eax,%edx
ffff800000104c23:	49 03 55 10          	add    0x10(%r13),%rdx
ffff800000104c27:	83 c0 08             	add    $0x8,%eax
ffff800000104c2a:	41 89 45 00          	mov    %eax,0x0(%r13)
ffff800000104c2e:	48 8b 02             	mov    (%rdx),%rax
ffff800000104c31:	48 89 da             	mov    %rbx,%rdx
ffff800000104c34:	48 8b 34 24          	mov    (%rsp),%rsi
ffff800000104c38:	48 29 f2             	sub    %rsi,%rdx
ffff800000104c3b:	48 89 10             	mov    %rdx,(%rax)
ffff800000104c3e:	e9 45 fe ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c43:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104c47:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104c4b:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104c4f:	eb dd                	jmp    ffff800000104c2e <vsprintf+0x66a>
ffff800000104c51:	49 8b 55 08          	mov    0x8(%r13),%rdx
ffff800000104c55:	48 8d 42 08          	lea    0x8(%rdx),%rax
ffff800000104c59:	49 89 45 08          	mov    %rax,0x8(%r13)
ffff800000104c5d:	eb 9e                	jmp    ffff800000104bfd <vsprintf+0x639>
ffff800000104c5f:	c6 03 25             	movb   $0x25,(%rbx)
ffff800000104c62:	48 8d 5b 01          	lea    0x1(%rbx),%rbx
ffff800000104c66:	e9 1d fe ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c6b:	c6 03 25             	movb   $0x25,(%rbx)
ffff800000104c6e:	0f b6 02             	movzbl (%rdx),%eax
ffff800000104c71:	84 c0                	test   %al,%al
ffff800000104c73:	74 0c                	je     ffff800000104c81 <vsprintf+0x6bd>
ffff800000104c75:	88 43 01             	mov    %al,0x1(%rbx)
ffff800000104c78:	48 8d 5b 02          	lea    0x2(%rbx),%rbx
ffff800000104c7c:	e9 07 fe ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c81:	48 83 c3 01          	add    $0x1,%rbx
ffff800000104c85:	48 83 ea 01          	sub    $0x1,%rdx
ffff800000104c89:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
ffff800000104c8e:	e9 f5 fd ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c93:	48 89 cb             	mov    %rcx,%rbx
ffff800000104c96:	e9 ed fd ff ff       	jmp    ffff800000104a88 <vsprintf+0x4c4>
ffff800000104c9b:	48 8b 1c 24          	mov    (%rsp),%rbx
ffff800000104c9f:	c6 03 00             	movb   $0x0,(%rbx)
ffff800000104ca2:	89 d8                	mov    %ebx,%eax
ffff800000104ca4:	8b 1c 24             	mov    (%rsp),%ebx
ffff800000104ca7:	29 d8                	sub    %ebx,%eax
ffff800000104ca9:	48 83 c4 18          	add    $0x18,%rsp
ffff800000104cad:	5b                   	pop    %rbx
ffff800000104cae:	5d                   	pop    %rbp
ffff800000104caf:	41 5c                	pop    %r12
ffff800000104cb1:	41 5d                	pop    %r13
ffff800000104cb3:	41 5e                	pop    %r14
ffff800000104cb5:	41 5f                	pop    %r15
ffff800000104cb7:	c3                   	ret
ffff800000104cb8:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff800000104cbd:	0f b6 02             	movzbl (%rdx),%eax
ffff800000104cc0:	83 e8 25             	sub    $0x25,%eax
ffff800000104cc3:	3c 53                	cmp    $0x53,%al
ffff800000104cc5:	77 a4                	ja     ffff800000104c6b <vsprintf+0x6a7>
ffff800000104cc7:	0f b6 c0             	movzbl %al,%eax
ffff800000104cca:	48 8d 0d f7 08 00 00 	lea    0x8f7(%rip),%rcx        # ffff8000001055c8 <_etext+0x617>
ffff800000104cd1:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
ffff800000104cd5:	3e ff e1             	notrack jmp *%rcx
ffff800000104cd8:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
ffff800000104cdd:	0f b6 02             	movzbl (%rdx),%eax
ffff800000104ce0:	83 e8 25             	sub    $0x25,%eax
ffff800000104ce3:	3c 53                	cmp    $0x53,%al
ffff800000104ce5:	77 84                	ja     ffff800000104c6b <vsprintf+0x6a7>
ffff800000104ce7:	0f b6 c0             	movzbl %al,%eax
ffff800000104cea:	48 8d 0d 77 0b 00 00 	lea    0xb77(%rip),%rcx        # ffff800000105868 <_etext+0x8b7>
ffff800000104cf1:	48 03 0c c1          	add    (%rcx,%rax,8),%rcx
ffff800000104cf5:	3e ff e1             	notrack jmp *%rcx

ffff800000104cf8 <color_printk>:
ffff800000104cf8:	f3 0f 1e fa          	endbr64
ffff800000104cfc:	41 57                	push   %r15
ffff800000104cfe:	41 56                	push   %r14
ffff800000104d00:	41 55                	push   %r13
ffff800000104d02:	41 54                	push   %r12
ffff800000104d04:	55                   	push   %rbp
ffff800000104d05:	53                   	push   %rbx
ffff800000104d06:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
ffff800000104d0d:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104d0d <color_printk+0x15>
ffff800000104d14:	49 bb 33 3f 00 00 00 	movabs $0x3f33,%r11
ffff800000104d1b:	00 00 00 
ffff800000104d1e:	4c 01 db             	add    %r11,%rbx
ffff800000104d21:	89 3c 24             	mov    %edi,(%rsp)
ffff800000104d24:	89 74 24 04          	mov    %esi,0x4(%rsp)
ffff800000104d28:	48 89 d6             	mov    %rdx,%rsi
ffff800000104d2b:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
ffff800000104d30:	4c 89 44 24 50       	mov    %r8,0x50(%rsp)
ffff800000104d35:	4c 89 4c 24 58       	mov    %r9,0x58(%rsp)
ffff800000104d3a:	84 c0                	test   %al,%al
ffff800000104d3c:	74 3a                	je     ffff800000104d78 <color_printk+0x80>
ffff800000104d3e:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
ffff800000104d43:	0f 29 4c 24 70       	movaps %xmm1,0x70(%rsp)
ffff800000104d48:	0f 29 94 24 80 00 00 	movaps %xmm2,0x80(%rsp)
ffff800000104d4f:	00 
ffff800000104d50:	0f 29 9c 24 90 00 00 	movaps %xmm3,0x90(%rsp)
ffff800000104d57:	00 
ffff800000104d58:	0f 29 a4 24 a0 00 00 	movaps %xmm4,0xa0(%rsp)
ffff800000104d5f:	00 
ffff800000104d60:	0f 29 ac 24 b0 00 00 	movaps %xmm5,0xb0(%rsp)
ffff800000104d67:	00 
ffff800000104d68:	0f 29 b4 24 c0 00 00 	movaps %xmm6,0xc0(%rsp)
ffff800000104d6f:	00 
ffff800000104d70:	0f 29 bc 24 d0 00 00 	movaps %xmm7,0xd0(%rsp)
ffff800000104d77:	00 
ffff800000104d78:	c7 44 24 18 18 00 00 	movl   $0x18,0x18(%rsp)
ffff800000104d7f:	00 
ffff800000104d80:	c7 44 24 1c 30 00 00 	movl   $0x30,0x1c(%rsp)
ffff800000104d87:	00 
ffff800000104d88:	48 8d 84 24 20 01 00 	lea    0x120(%rsp),%rax
ffff800000104d8f:	00 
ffff800000104d90:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
ffff800000104d95:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
ffff800000104d9a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
ffff800000104d9f:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
ffff800000104da4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104dab:	00 00 00 
ffff800000104dae:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104db2:	48 b8 84 b9 ff ff ff 	movabs $0xffffffffffffb984,%rax
ffff800000104db9:	ff ff ff 
ffff800000104dbc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104dc0:	ff d0                	call   *%rax
ffff800000104dc2:	41 89 c6             	mov    %eax,%r14d
ffff800000104dc5:	85 c0                	test   %eax,%eax
ffff800000104dc7:	0f 8e cf 01 00 00    	jle    ffff800000104f9c <color_printk+0x2a4>
ffff800000104dcd:	41 bd 00 00 00 00    	mov    $0x0,%r13d
ffff800000104dd3:	41 bc 00 00 00 00    	mov    $0x0,%r12d
ffff800000104dd9:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104de0:	00 00 00 
ffff800000104de3:	48 01 d8             	add    %rbx,%rax
ffff800000104de6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
ffff800000104deb:	48 bd 20 10 00 00 00 	movabs $0x1020,%rbp
ffff800000104df2:	00 00 00 
ffff800000104df5:	49 bf 95 b7 ff ff ff 	movabs $0xffffffffffffb795,%r15
ffff800000104dfc:	ff ff ff 
ffff800000104dff:	e9 85 00 00 00       	jmp    ffff800000104e89 <color_printk+0x191>
ffff800000104e04:	41 83 ec 01          	sub    $0x1,%r12d
ffff800000104e08:	41 83 ed 01          	sub    $0x1,%r13d
ffff800000104e0c:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
ffff800000104e10:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
ffff800000104e15:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
ffff800000104e19:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
ffff800000104e1e:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
ffff800000104e21:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
ffff800000104e26:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104e2a:	6a 20                	push   $0x20
ffff800000104e2c:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
ffff800000104e31:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
ffff800000104e36:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
ffff800000104e3a:	ff d0                	call   *%rax
ffff800000104e3c:	83 44 1d 08 01       	addl   $0x1,0x8(%rbp,%rbx,1)
ffff800000104e41:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104e45:	8b 04 2b             	mov    (%rbx,%rbp,1),%eax
ffff800000104e48:	99                   	cltd
ffff800000104e49:	f7 7c 2b 10          	idivl  0x10(%rbx,%rbp,1)
ffff800000104e4d:	39 44 2b 08          	cmp    %eax,0x8(%rbx,%rbp,1)
ffff800000104e51:	7c 0d                	jl     ffff800000104e60 <color_printk+0x168>
ffff800000104e53:	83 44 1d 0c 01       	addl   $0x1,0xc(%rbp,%rbx,1)
ffff800000104e58:	c7 44 2b 08 00 00 00 	movl   $0x0,0x8(%rbx,%rbp,1)
ffff800000104e5f:	00 
ffff800000104e60:	8b 44 2b 04          	mov    0x4(%rbx,%rbp,1),%eax
ffff800000104e64:	99                   	cltd
ffff800000104e65:	f7 7c 2b 14          	idivl  0x14(%rbx,%rbp,1)
ffff800000104e69:	39 44 2b 0c          	cmp    %eax,0xc(%rbx,%rbp,1)
ffff800000104e6d:	7c 08                	jl     ffff800000104e77 <color_printk+0x17f>
ffff800000104e6f:	c7 44 2b 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rbp,1)
ffff800000104e76:	00 
ffff800000104e77:	41 83 c4 01          	add    $0x1,%r12d
ffff800000104e7b:	45 39 e6             	cmp    %r12d,%r14d
ffff800000104e7e:	7f 09                	jg     ffff800000104e89 <color_printk+0x191>
ffff800000104e80:	45 85 ed             	test   %r13d,%r13d
ffff800000104e83:	0f 84 13 01 00 00    	je     ffff800000104f9c <color_printk+0x2a4>
ffff800000104e89:	45 85 ed             	test   %r13d,%r13d
ffff800000104e8c:	0f 8f 72 ff ff ff    	jg     ffff800000104e04 <color_printk+0x10c>
ffff800000104e92:	49 63 c4             	movslq %r12d,%rax
ffff800000104e95:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
ffff800000104e9a:	0f b6 04 38          	movzbl (%rax,%rdi,1),%eax
ffff800000104e9e:	3c 0a                	cmp    $0xa,%al
ffff800000104ea0:	74 20                	je     ffff800000104ec2 <color_printk+0x1ca>
ffff800000104ea2:	3c 08                	cmp    $0x8,%al
ffff800000104ea4:	74 2e                	je     ffff800000104ed4 <color_printk+0x1dc>
ffff800000104ea6:	3c 09                	cmp    $0x9,%al
ffff800000104ea8:	0f 85 ae 00 00 00    	jne    ffff800000104f5c <color_printk+0x264>
ffff800000104eae:	8b 44 2b 08          	mov    0x8(%rbx,%rbp,1),%eax
ffff800000104eb2:	44 8d 68 08          	lea    0x8(%rax),%r13d
ffff800000104eb6:	41 83 e5 f8          	and    $0xfffffff8,%r13d
ffff800000104eba:	41 29 c5             	sub    %eax,%r13d
ffff800000104ebd:	e9 46 ff ff ff       	jmp    ffff800000104e08 <color_printk+0x110>
ffff800000104ec2:	83 44 1d 0c 01       	addl   $0x1,0xc(%rbp,%rbx,1)
ffff800000104ec7:	c7 44 2b 08 00 00 00 	movl   $0x0,0x8(%rbx,%rbp,1)
ffff800000104ece:	00 
ffff800000104ecf:	e9 71 ff ff ff       	jmp    ffff800000104e45 <color_printk+0x14d>
ffff800000104ed4:	8b 44 2b 08          	mov    0x8(%rbx,%rbp,1),%eax
ffff800000104ed8:	83 e8 01             	sub    $0x1,%eax
ffff800000104edb:	89 44 2b 08          	mov    %eax,0x8(%rbx,%rbp,1)
ffff800000104edf:	78 39                	js     ffff800000104f1a <color_printk+0x222>
ffff800000104ee1:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
ffff800000104ee5:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
ffff800000104eea:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
ffff800000104eee:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
ffff800000104ef3:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
ffff800000104ef6:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
ffff800000104efb:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104eff:	6a 20                	push   $0x20
ffff800000104f01:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
ffff800000104f06:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
ffff800000104f0b:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
ffff800000104f0f:	ff d0                	call   *%rax
ffff800000104f11:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104f15:	e9 2b ff ff ff       	jmp    ffff800000104e45 <color_printk+0x14d>
ffff800000104f1a:	48 b9 20 10 00 00 00 	movabs $0x1020,%rcx
ffff800000104f21:	00 00 00 
ffff800000104f24:	8b 74 0b 10          	mov    0x10(%rbx,%rcx,1),%esi
ffff800000104f28:	8b 04 0b             	mov    (%rbx,%rcx,1),%eax
ffff800000104f2b:	99                   	cltd
ffff800000104f2c:	f7 fe                	idiv   %esi
ffff800000104f2e:	83 e8 01             	sub    $0x1,%eax
ffff800000104f31:	0f af c6             	imul   %esi,%eax
ffff800000104f34:	89 44 0b 08          	mov    %eax,0x8(%rbx,%rcx,1)
ffff800000104f38:	8b 44 0b 0c          	mov    0xc(%rbx,%rcx,1),%eax
ffff800000104f3c:	83 e8 01             	sub    $0x1,%eax
ffff800000104f3f:	89 44 0b 0c          	mov    %eax,0xc(%rbx,%rcx,1)
ffff800000104f43:	79 9c                	jns    ffff800000104ee1 <color_printk+0x1e9>
ffff800000104f45:	8b 74 0b 14          	mov    0x14(%rbx,%rcx,1),%esi
ffff800000104f49:	8b 44 0b 04          	mov    0x4(%rbx,%rcx,1),%eax
ffff800000104f4d:	99                   	cltd
ffff800000104f4e:	f7 fe                	idiv   %esi
ffff800000104f50:	83 e8 01             	sub    $0x1,%eax
ffff800000104f53:	0f af c6             	imul   %esi,%eax
ffff800000104f56:	89 44 0b 0c          	mov    %eax,0xc(%rbx,%rcx,1)
ffff800000104f5a:	eb 85                	jmp    ffff800000104ee1 <color_printk+0x1e9>
ffff800000104f5c:	8b 4c 2b 0c          	mov    0xc(%rbx,%rbp,1),%ecx
ffff800000104f60:	0f af 4c 2b 14       	imul   0x14(%rbx,%rbp,1),%ecx
ffff800000104f65:	8b 54 2b 08          	mov    0x8(%rbx,%rbp,1),%edx
ffff800000104f69:	0f af 54 2b 10       	imul   0x10(%rbx,%rbp,1),%edx
ffff800000104f6e:	8b 34 2b             	mov    (%rbx,%rbp,1),%esi
ffff800000104f71:	48 8b 7c 2b 18       	mov    0x18(%rbx,%rbp,1),%rdi
ffff800000104f76:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104f7a:	0f b6 c0             	movzbl %al,%eax
ffff800000104f7d:	50                   	push   %rax
ffff800000104f7e:	44 8b 4c 24 14       	mov    0x14(%rsp),%r9d
ffff800000104f83:	44 8b 44 24 10       	mov    0x10(%rsp),%r8d
ffff800000104f88:	4a 8d 04 3b          	lea    (%rbx,%r15,1),%rax
ffff800000104f8c:	ff d0                	call   *%rax
ffff800000104f8e:	83 44 1d 08 01       	addl   $0x1,0x8(%rbp,%rbx,1)
ffff800000104f93:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104f97:	e9 a9 fe ff ff       	jmp    ffff800000104e45 <color_printk+0x14d>
ffff800000104f9c:	44 89 f0             	mov    %r14d,%eax
ffff800000104f9f:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
ffff800000104fa6:	5b                   	pop    %rbx
ffff800000104fa7:	5d                   	pop    %rbp
ffff800000104fa8:	41 5c                	pop    %r12
ffff800000104faa:	41 5d                	pop    %r13
ffff800000104fac:	41 5e                	pop    %r14
ffff800000104fae:	41 5f                	pop    %r15
ffff800000104fb0:	c3                   	ret
