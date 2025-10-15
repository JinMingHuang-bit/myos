
system:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 10 5d 00 00 	lgdt   0x5d10(%rip)        # ffff800000105d28 <GDT_END>
ffff800000100018:	0f 01 1d 13 6d 00 00 	lidt   0x6d13(%rip)        # ffff800000106d32 <IDT_END>
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
ffff800000104004:	55                   	push   %rbp
ffff800000104005:	48 89 e5             	mov    %rsp,%rbp
ffff800000104008:	41 57                	push   %r15
ffff80000010400a:	53                   	push   %rbx
ffff80000010400b:	48 83 ec 10          	sub    $0x10,%rsp
ffff80000010400f:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010400f <Start_Kernel+0xf>
ffff800000104016:	49 bb b1 4d 00 00 00 	movabs $0x4db1,%r11
ffff80000010401d:	00 00 00 
ffff800000104020:	4c 01 db             	add    %r11,%rbx
ffff800000104023:	48 be 00 00 a0 00 00 	movabs $0xffff800000a00000,%rsi
ffff80000010402a:	80 ff ff 
ffff80000010402d:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
ffff800000104031:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104038:	00 00 00 
ffff80000010403b:	c7 04 03 a0 05 00 00 	movl   $0x5a0,(%rbx,%rax,1)
ffff800000104042:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104049:	00 00 00 
ffff80000010404c:	c7 44 03 04 84 03 00 	movl   $0x384,0x4(%rbx,%rax,1)
ffff800000104053:	00 
ffff800000104054:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010405b:	00 00 00 
ffff80000010405e:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104065:	00 
ffff800000104066:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010406d:	00 00 00 
ffff800000104070:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104077:	00 
ffff800000104078:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010407f:	00 00 00 
ffff800000104082:	c7 44 03 10 08 00 00 	movl   $0x8,0x10(%rbx,%rax,1)
ffff800000104089:	00 
ffff80000010408a:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104091:	00 00 00 
ffff800000104094:	c7 44 03 14 10 00 00 	movl   $0x10,0x14(%rbx,%rax,1)
ffff80000010409b:	00 
ffff80000010409c:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040a3:	00 00 00 
ffff8000001040a6:	48 89 74 03 18       	mov    %rsi,0x18(%rbx,%rax,1)
ffff8000001040ab:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040b2:	00 00 00 
ffff8000001040b5:	8b 14 03             	mov    (%rbx,%rax,1),%edx
ffff8000001040b8:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001040bf:	00 00 00 
ffff8000001040c2:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff8000001040c6:	0f af c2             	imul   %edx,%eax
ffff8000001040c9:	c1 e0 02             	shl    $0x2,%eax
ffff8000001040cc:	48 98                	cltq
ffff8000001040ce:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001040d5:	00 00 00 
ffff8000001040d8:	48 89 44 13 20       	mov    %rax,0x20(%rbx,%rdx,1)
ffff8000001040dd:	48 b8 40 c9 ff ff ff 	movabs $0xffffffffffffc940,%rax
ffff8000001040e4:	ff ff ff 
ffff8000001040e7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001040eb:	48 89 c2             	mov    %rax,%rdx
ffff8000001040ee:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001040f3:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001040f8:	49 89 df             	mov    %rbx,%r15
ffff8000001040fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104100:	48 b9 6a b5 ff ff ff 	movabs $0xffffffffffffb56a,%rcx
ffff800000104107:	ff ff ff 
ffff80000010410a:	48 01 d9             	add    %rbx,%rcx
ffff80000010410d:	ff d1                	call   *%rcx
ffff80000010410f:	48 b8 51 c9 ff ff ff 	movabs $0xffffffffffffc951,%rax
ffff800000104116:	ff ff ff 
ffff800000104119:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010411d:	48 89 c2             	mov    %rax,%rdx
ffff800000104120:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104125:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010412a:	49 89 df             	mov    %rbx,%r15
ffff80000010412d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104132:	48 b9 6a b5 ff ff ff 	movabs $0xffffffffffffb56a,%rcx
ffff800000104139:	ff ff ff 
ffff80000010413c:	48 01 d9             	add    %rbx,%rcx
ffff80000010413f:	ff d1                	call   *%rcx
ffff800000104141:	48 b8 60 c9 ff ff ff 	movabs $0xffffffffffffc960,%rax
ffff800000104148:	ff ff ff 
ffff80000010414b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010414f:	48 89 c2             	mov    %rax,%rdx
ffff800000104152:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104157:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010415c:	49 89 df             	mov    %rbx,%r15
ffff80000010415f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104164:	48 b9 6a b5 ff ff ff 	movabs $0xffffffffffffb56a,%rcx
ffff80000010416b:	ff ff ff 
ffff80000010416e:	48 01 d9             	add    %rbx,%rcx
ffff800000104171:	ff d1                	call   *%rcx
ffff800000104173:	48 b8 b8 c9 ff ff ff 	movabs $0xffffffffffffc9b8,%rax
ffff80000010417a:	ff ff ff 
ffff80000010417d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104181:	48 89 c2             	mov    %rax,%rdx
ffff800000104184:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000104189:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff80000010418e:	49 89 df             	mov    %rbx,%r15
ffff800000104191:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104196:	48 b9 6a b5 ff ff ff 	movabs $0xffffffffffffb56a,%rcx
ffff80000010419d:	ff ff ff 
ffff8000001041a0:	48 01 d9             	add    %rbx,%rcx
ffff8000001041a3:	ff d1                	call   *%rcx
ffff8000001041a5:	48 b8 f0 c9 ff ff ff 	movabs $0xffffffffffffc9f0,%rax
ffff8000001041ac:	ff ff ff 
ffff8000001041af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001041b3:	48 89 c2             	mov    %rax,%rdx
ffff8000001041b6:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001041bb:	bf 00 ff ff 00       	mov    $0xffff00,%edi
ffff8000001041c0:	49 89 df             	mov    %rbx,%r15
ffff8000001041c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001041c8:	48 b9 6a b5 ff ff ff 	movabs $0xffffffffffffb56a,%rcx
ffff8000001041cf:	ff ff ff 
ffff8000001041d2:	48 01 d9             	add    %rbx,%rcx
ffff8000001041d5:	ff d1                	call   *%rcx
ffff8000001041d7:	90                   	nop
ffff8000001041d8:	eb fd                	jmp    ffff8000001041d7 <Start_Kernel+0x1d7>

ffff8000001041da <Cstrlen>:
ffff8000001041da:	f3 0f 1e fa          	endbr64
ffff8000001041de:	55                   	push   %rbp
ffff8000001041df:	48 89 e5             	mov    %rsp,%rbp
ffff8000001041e2:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff8000001041e2 <Cstrlen+0x8>
ffff8000001041e9:	49 bb de 4b 00 00 00 	movabs $0x4bde,%r11
ffff8000001041f0:	00 00 00 
ffff8000001041f3:	4c 01 d8             	add    %r11,%rax
ffff8000001041f6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001041fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001041fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000104202:	eb 05                	jmp    ffff800000104209 <Cstrlen+0x2f>
ffff800000104204:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000104209:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010420d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104210:	84 c0                	test   %al,%al
ffff800000104212:	75 f0                	jne    ffff800000104204 <Cstrlen+0x2a>
ffff800000104214:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000104218:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
ffff80000010421c:	5d                   	pop    %rbp
ffff80000010421d:	c3                   	ret

ffff80000010421e <putchar>:
ffff80000010421e:	f3 0f 1e fa          	endbr64
ffff800000104222:	55                   	push   %rbp
ffff800000104223:	48 89 e5             	mov    %rsp,%rbp
ffff800000104226:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104226 <putchar+0x8>
ffff80000010422d:	49 bb 9a 4b 00 00 00 	movabs $0x4b9a,%r11
ffff800000104234:	00 00 00 
ffff800000104237:	4c 01 d8             	add    %r11,%rax
ffff80000010423a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010423e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000104241:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000104244:	89 4d cc             	mov    %ecx,-0x34(%rbp)
ffff800000104247:	44 89 45 c8          	mov    %r8d,-0x38(%rbp)
ffff80000010424b:	44 89 4d c4          	mov    %r9d,-0x3c(%rbp)
ffff80000010424f:	8b 55 10             	mov    0x10(%rbp),%edx
ffff800000104252:	88 55 c0             	mov    %dl,-0x40(%rbp)
ffff800000104255:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010425c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104263:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff80000010426a:	00 
ffff80000010426b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104272:	00 
ffff800000104273:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff80000010427a:	0f b6 55 c0          	movzbl -0x40(%rbp),%edx
ffff80000010427e:	48 63 d2             	movslq %edx,%rdx
ffff800000104281:	48 89 d1             	mov    %rdx,%rcx
ffff800000104284:	48 c1 e1 04          	shl    $0x4,%rcx
ffff800000104288:	48 ba 00 e0 ff ff ff 	movabs $0xffffffffffffe000,%rdx
ffff80000010428f:	ff ff ff 
ffff800000104292:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104296:	48 01 c8             	add    %rcx,%rax
ffff800000104299:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010429d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001042a4:	eb 7a                	jmp    ffff800000104320 <putchar+0x102>
ffff8000001042a6:	8b 55 cc             	mov    -0x34(%rbp),%edx
ffff8000001042a9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001042ac:	01 d0                	add    %edx,%eax
ffff8000001042ae:	0f af 45 d4          	imul   -0x2c(%rbp),%eax
ffff8000001042b2:	48 63 d0             	movslq %eax,%rdx
ffff8000001042b5:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff8000001042b8:	48 98                	cltq
ffff8000001042ba:	48 01 d0             	add    %rdx,%rax
ffff8000001042bd:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
ffff8000001042c4:	00 
ffff8000001042c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001042c9:	48 01 d0             	add    %rdx,%rax
ffff8000001042cc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001042d0:	c7 45 e4 00 01 00 00 	movl   $0x100,-0x1c(%rbp)
ffff8000001042d7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff8000001042de:	eb 31                	jmp    ffff800000104311 <putchar+0xf3>
ffff8000001042e0:	d1 7d e4             	sarl   $1,-0x1c(%rbp)
ffff8000001042e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001042e7:	0f b6 00             	movzbl (%rax),%eax
ffff8000001042ea:	0f b6 c0             	movzbl %al,%eax
ffff8000001042ed:	23 45 e4             	and    -0x1c(%rbp),%eax
ffff8000001042f0:	85 c0                	test   %eax,%eax
ffff8000001042f2:	74 0b                	je     ffff8000001042ff <putchar+0xe1>
ffff8000001042f4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001042f8:	8b 55 c8             	mov    -0x38(%rbp),%edx
ffff8000001042fb:	89 10                	mov    %edx,(%rax)
ffff8000001042fd:	eb 09                	jmp    ffff800000104308 <putchar+0xea>
ffff8000001042ff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104303:	8b 55 c4             	mov    -0x3c(%rbp),%edx
ffff800000104306:	89 10                	mov    %edx,(%rax)
ffff800000104308:	48 83 45 f0 04       	addq   $0x4,-0x10(%rbp)
ffff80000010430d:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104311:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
ffff800000104315:	7e c9                	jle    ffff8000001042e0 <putchar+0xc2>
ffff800000104317:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
ffff80000010431c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104320:	83 7d fc 0f          	cmpl   $0xf,-0x4(%rbp)
ffff800000104324:	7e 80                	jle    ffff8000001042a6 <putchar+0x88>
ffff800000104326:	90                   	nop
ffff800000104327:	90                   	nop
ffff800000104328:	5d                   	pop    %rbp
ffff800000104329:	c3                   	ret

ffff80000010432a <color_printk>:
ffff80000010432a:	f3 0f 1e fa          	endbr64
ffff80000010432e:	55                   	push   %rbp
ffff80000010432f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104332:	53                   	push   %rbx
ffff800000104333:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
ffff80000010433a:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff80000010433a <color_printk+0x10>
ffff800000104341:	49 bb 86 4a 00 00 00 	movabs $0x4a86,%r11
ffff800000104348:	00 00 00 
ffff80000010434b:	4c 01 db             	add    %r11,%rbx
ffff80000010434e:	89 bd 0c ff ff ff    	mov    %edi,-0xf4(%rbp)
ffff800000104354:	89 b5 08 ff ff ff    	mov    %esi,-0xf8(%rbp)
ffff80000010435a:	48 89 95 00 ff ff ff 	mov    %rdx,-0x100(%rbp)
ffff800000104361:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff800000104368:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff80000010436f:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff800000104376:	84 c0                	test   %al,%al
ffff800000104378:	74 23                	je     ffff80000010439d <color_printk+0x73>
ffff80000010437a:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff800000104381:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff800000104385:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff800000104389:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff80000010438d:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff800000104391:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff800000104395:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff800000104399:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff80000010439d:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%rbp)
ffff8000001043a4:	00 00 00 
ffff8000001043a7:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff8000001043ae:	00 00 00 
ffff8000001043b1:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%rbp)
ffff8000001043b8:	00 00 00 
ffff8000001043bb:	c7 85 18 ff ff ff 18 	movl   $0x18,-0xe8(%rbp)
ffff8000001043c2:	00 00 00 
ffff8000001043c5:	c7 85 1c ff ff ff 30 	movl   $0x30,-0xe4(%rbp)
ffff8000001043cc:	00 00 00 
ffff8000001043cf:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001043d3:	48 89 85 20 ff ff ff 	mov    %rax,-0xe0(%rbp)
ffff8000001043da:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff8000001043e1:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
ffff8000001043e8:	48 8d 95 18 ff ff ff 	lea    -0xe8(%rbp),%rdx
ffff8000001043ef:	48 8b 85 00 ff ff ff 	mov    -0x100(%rbp),%rax
ffff8000001043f6:	48 89 c6             	mov    %rax,%rsi
ffff8000001043f9:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104400:	00 00 00 
ffff800000104403:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104407:	48 89 c7             	mov    %rax,%rdi
ffff80000010440a:	48 b8 ea bf ff ff ff 	movabs $0xffffffffffffbfea,%rax
ffff800000104411:	ff ff ff 
ffff800000104414:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104418:	ff d0                	call   *%rax
ffff80000010441a:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%rbp)
ffff800000104420:	c7 85 3c ff ff ff 00 	movl   $0x0,-0xc4(%rbp)
ffff800000104427:	00 00 00 
ffff80000010442a:	e9 81 04 00 00       	jmp    ffff8000001048b0 <color_printk+0x586>
ffff80000010442f:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff800000104436:	7e 0c                	jle    ffff800000104444 <color_printk+0x11a>
ffff800000104438:	83 ad 3c ff ff ff 01 	subl   $0x1,-0xc4(%rbp)
ffff80000010443f:	e9 45 02 00 00       	jmp    ffff800000104689 <color_printk+0x35f>
ffff800000104444:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010444a:	48 63 d0             	movslq %eax,%rdx
ffff80000010444d:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104454:	00 00 00 
ffff800000104457:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010445b:	48 01 d0             	add    %rdx,%rax
ffff80000010445e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104461:	3c 0a                	cmp    $0xa,%al
ffff800000104463:	75 36                	jne    ffff80000010449b <color_printk+0x171>
ffff800000104465:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010446c:	00 00 00 
ffff80000010446f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104473:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104476:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010447d:	00 00 00 
ffff800000104480:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104484:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010448b:	00 00 00 
ffff80000010448e:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104495:	00 
ffff800000104496:	e9 6a 03 00 00       	jmp    ffff800000104805 <color_printk+0x4db>
ffff80000010449b:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001044a1:	48 63 d0             	movslq %eax,%rdx
ffff8000001044a4:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff8000001044ab:	00 00 00 
ffff8000001044ae:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001044b2:	48 01 d0             	add    %rdx,%rax
ffff8000001044b5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044b8:	3c 08                	cmp    $0x8,%al
ffff8000001044ba:	0f 85 78 01 00 00    	jne    ffff800000104638 <color_printk+0x30e>
ffff8000001044c0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044c7:	00 00 00 
ffff8000001044ca:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001044ce:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001044d1:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044d8:	00 00 00 
ffff8000001044db:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff8000001044df:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044e6:	00 00 00 
ffff8000001044e9:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001044ed:	85 c0                	test   %eax,%eax
ffff8000001044ef:	0f 89 b2 00 00 00    	jns    ffff8000001045a7 <color_printk+0x27d>
ffff8000001044f5:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001044fc:	00 00 00 
ffff8000001044ff:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104502:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104509:	00 00 00 
ffff80000010450c:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff800000104510:	99                   	cltd
ffff800000104511:	f7 fe                	idiv   %esi
ffff800000104513:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104516:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010451d:	00 00 00 
ffff800000104520:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff800000104524:	0f af c2             	imul   %edx,%eax
ffff800000104527:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff80000010452e:	00 00 00 
ffff800000104531:	89 44 13 08          	mov    %eax,0x8(%rbx,%rdx,1)
ffff800000104535:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010453c:	00 00 00 
ffff80000010453f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104543:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104546:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010454d:	00 00 00 
ffff800000104550:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104554:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010455b:	00 00 00 
ffff80000010455e:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104562:	85 c0                	test   %eax,%eax
ffff800000104564:	79 41                	jns    ffff8000001045a7 <color_printk+0x27d>
ffff800000104566:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010456d:	00 00 00 
ffff800000104570:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104574:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff80000010457b:	00 00 00 
ffff80000010457e:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104582:	99                   	cltd
ffff800000104583:	f7 ff                	idiv   %edi
ffff800000104585:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104588:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010458f:	00 00 00 
ffff800000104592:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104596:	0f af c2             	imul   %edx,%eax
ffff800000104599:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff8000001045a0:	00 00 00 
ffff8000001045a3:	89 44 13 0c          	mov    %eax,0xc(%rbx,%rdx,1)
ffff8000001045a7:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045ae:	00 00 00 
ffff8000001045b1:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff8000001045b5:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045bc:	00 00 00 
ffff8000001045bf:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001045c3:	89 d1                	mov    %edx,%ecx
ffff8000001045c5:	0f af c8             	imul   %eax,%ecx
ffff8000001045c8:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045cf:	00 00 00 
ffff8000001045d2:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001045d6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045dd:	00 00 00 
ffff8000001045e0:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001045e4:	0f af d0             	imul   %eax,%edx
ffff8000001045e7:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045ee:	00 00 00 
ffff8000001045f1:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001045f4:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001045fb:	00 00 00 
ffff8000001045fe:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff800000104603:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff80000010460a:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff800000104610:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104614:	6a 20                	push   $0x20
ffff800000104616:	45 89 c1             	mov    %r8d,%r9d
ffff800000104619:	41 89 f8             	mov    %edi,%r8d
ffff80000010461c:	48 89 c7             	mov    %rax,%rdi
ffff80000010461f:	48 b8 5e b4 ff ff ff 	movabs $0xffffffffffffb45e,%rax
ffff800000104626:	ff ff ff 
ffff800000104629:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010462d:	ff d0                	call   *%rax
ffff80000010462f:	48 83 c4 10          	add    $0x10,%rsp
ffff800000104633:	e9 cd 01 00 00       	jmp    ffff800000104805 <color_printk+0x4db>
ffff800000104638:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff80000010463e:	48 63 d0             	movslq %eax,%rdx
ffff800000104641:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104648:	00 00 00 
ffff80000010464b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010464f:	48 01 d0             	add    %rdx,%rax
ffff800000104652:	0f b6 00             	movzbl (%rax),%eax
ffff800000104655:	3c 09                	cmp    $0x9,%al
ffff800000104657:	0f 85 e3 00 00 00    	jne    ffff800000104740 <color_printk+0x416>
ffff80000010465d:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104664:	00 00 00 
ffff800000104667:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010466b:	83 c0 08             	add    $0x8,%eax
ffff80000010466e:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000104671:	89 c2                	mov    %eax,%edx
ffff800000104673:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010467a:	00 00 00 
ffff80000010467d:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff800000104681:	29 c2                	sub    %eax,%edx
ffff800000104683:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%rbp)
ffff800000104689:	83 ad 38 ff ff ff 01 	subl   $0x1,-0xc8(%rbp)
ffff800000104690:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104697:	00 00 00 
ffff80000010469a:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010469e:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046a5:	00 00 00 
ffff8000001046a8:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff8000001046ac:	89 d1                	mov    %edx,%ecx
ffff8000001046ae:	0f af c8             	imul   %eax,%ecx
ffff8000001046b1:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046b8:	00 00 00 
ffff8000001046bb:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff8000001046bf:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046c6:	00 00 00 
ffff8000001046c9:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff8000001046cd:	0f af d0             	imul   %eax,%edx
ffff8000001046d0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046d7:	00 00 00 
ffff8000001046da:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001046dd:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001046e4:	00 00 00 
ffff8000001046e7:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001046ec:	44 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8d
ffff8000001046f3:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
ffff8000001046f9:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001046fd:	6a 20                	push   $0x20
ffff8000001046ff:	45 89 c1             	mov    %r8d,%r9d
ffff800000104702:	41 89 f8             	mov    %edi,%r8d
ffff800000104705:	48 89 c7             	mov    %rax,%rdi
ffff800000104708:	48 b8 5e b4 ff ff ff 	movabs $0xffffffffffffb45e,%rax
ffff80000010470f:	ff ff ff 
ffff800000104712:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104716:	ff d0                	call   *%rax
ffff800000104718:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010471c:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104723:	00 00 00 
ffff800000104726:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff80000010472a:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010472d:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104734:	00 00 00 
ffff800000104737:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff80000010473b:	e9 c5 00 00 00       	jmp    ffff800000104805 <color_printk+0x4db>
ffff800000104740:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff800000104746:	48 63 d0             	movslq %eax,%rdx
ffff800000104749:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
ffff800000104750:	00 00 00 
ffff800000104753:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104757:	48 01 d0             	add    %rdx,%rax
ffff80000010475a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010475d:	0f b6 f8             	movzbl %al,%edi
ffff800000104760:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104767:	00 00 00 
ffff80000010476a:	8b 54 03 0c          	mov    0xc(%rbx,%rax,1),%edx
ffff80000010476e:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104775:	00 00 00 
ffff800000104778:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff80000010477c:	89 d1                	mov    %edx,%ecx
ffff80000010477e:	0f af c8             	imul   %eax,%ecx
ffff800000104781:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104788:	00 00 00 
ffff80000010478b:	8b 54 03 08          	mov    0x8(%rbx,%rax,1),%edx
ffff80000010478f:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104796:	00 00 00 
ffff800000104799:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010479d:	0f af d0             	imul   %eax,%edx
ffff8000001047a0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047a7:	00 00 00 
ffff8000001047aa:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff8000001047ad:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047b4:	00 00 00 
ffff8000001047b7:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff8000001047bc:	44 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%r9d
ffff8000001047c3:	44 8b 85 0c ff ff ff 	mov    -0xf4(%rbp),%r8d
ffff8000001047ca:	48 83 ec 08          	sub    $0x8,%rsp
ffff8000001047ce:	57                   	push   %rdi
ffff8000001047cf:	48 89 c7             	mov    %rax,%rdi
ffff8000001047d2:	48 b8 5e b4 ff ff ff 	movabs $0xffffffffffffb45e,%rax
ffff8000001047d9:	ff ff ff 
ffff8000001047dc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001047e0:	ff d0                	call   *%rax
ffff8000001047e2:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001047e6:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047ed:	00 00 00 
ffff8000001047f0:	8b 44 03 08          	mov    0x8(%rbx,%rax,1),%eax
ffff8000001047f4:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001047f7:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001047fe:	00 00 00 
ffff800000104801:	89 54 03 08          	mov    %edx,0x8(%rbx,%rax,1)
ffff800000104805:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010480c:	00 00 00 
ffff80000010480f:	8b 4c 03 08          	mov    0x8(%rbx,%rax,1),%ecx
ffff800000104813:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010481a:	00 00 00 
ffff80000010481d:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104820:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104827:	00 00 00 
ffff80000010482a:	8b 74 13 10          	mov    0x10(%rbx,%rdx,1),%esi
ffff80000010482e:	99                   	cltd
ffff80000010482f:	f7 fe                	idiv   %esi
ffff800000104831:	39 c1                	cmp    %eax,%ecx
ffff800000104833:	7c 31                	jl     ffff800000104866 <color_printk+0x53c>
ffff800000104835:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010483c:	00 00 00 
ffff80000010483f:	8b 44 03 0c          	mov    0xc(%rbx,%rax,1),%eax
ffff800000104843:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104846:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010484d:	00 00 00 
ffff800000104850:	89 54 03 0c          	mov    %edx,0xc(%rbx,%rax,1)
ffff800000104854:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010485b:	00 00 00 
ffff80000010485e:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff800000104865:	00 
ffff800000104866:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010486d:	00 00 00 
ffff800000104870:	8b 4c 03 0c          	mov    0xc(%rbx,%rax,1),%ecx
ffff800000104874:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010487b:	00 00 00 
ffff80000010487e:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104882:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104889:	00 00 00 
ffff80000010488c:	8b 7c 13 14          	mov    0x14(%rbx,%rdx,1),%edi
ffff800000104890:	99                   	cltd
ffff800000104891:	f7 ff                	idiv   %edi
ffff800000104893:	39 c1                	cmp    %eax,%ecx
ffff800000104895:	7c 12                	jl     ffff8000001048a9 <color_printk+0x57f>
ffff800000104897:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010489e:	00 00 00 
ffff8000001048a1:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff8000001048a8:	00 
ffff8000001048a9:	83 85 3c ff ff ff 01 	addl   $0x1,-0xc4(%rbp)
ffff8000001048b0:	8b 85 3c ff ff ff    	mov    -0xc4(%rbp),%eax
ffff8000001048b6:	3b 85 34 ff ff ff    	cmp    -0xcc(%rbp),%eax
ffff8000001048bc:	0f 8c 6d fb ff ff    	jl     ffff80000010442f <color_printk+0x105>
ffff8000001048c2:	83 bd 38 ff ff ff 00 	cmpl   $0x0,-0xc8(%rbp)
ffff8000001048c9:	0f 85 60 fb ff ff    	jne    ffff80000010442f <color_printk+0x105>
ffff8000001048cf:	8b 85 34 ff ff ff    	mov    -0xcc(%rbp),%eax
ffff8000001048d5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001048d9:	c9                   	leave
ffff8000001048da:	c3                   	ret

ffff8000001048db <clear_screen>:
ffff8000001048db:	f3 0f 1e fa          	endbr64
ffff8000001048df:	55                   	push   %rbp
ffff8000001048e0:	48 89 e5             	mov    %rsp,%rbp
ffff8000001048e3:	53                   	push   %rbx
ffff8000001048e4:	48 83 ec 18          	sub    $0x18,%rsp
ffff8000001048e8:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff8000001048e8 <clear_screen+0xd>
ffff8000001048ef:	49 bb d8 44 00 00 00 	movabs $0x44d8,%r11
ffff8000001048f6:	00 00 00 
ffff8000001048f9:	4c 01 db             	add    %r11,%rbx
ffff8000001048fc:	89 7d e4             	mov    %edi,-0x1c(%rbp)
ffff8000001048ff:	89 75 e0             	mov    %esi,-0x20(%rbp)
ffff800000104902:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104909:	00 00 00 
ffff80000010490c:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff80000010490f:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104916:	00 00 00 
ffff800000104919:	8b 4c 13 10          	mov    0x10(%rbx,%rdx,1),%ecx
ffff80000010491d:	99                   	cltd
ffff80000010491e:	f7 f9                	idiv   %ecx
ffff800000104920:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000104923:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff80000010492a:	00 00 00 
ffff80000010492d:	8b 44 03 04          	mov    0x4(%rbx,%rax,1),%eax
ffff800000104931:	48 ba 20 00 00 00 00 	movabs $0x20,%rdx
ffff800000104938:	00 00 00 
ffff80000010493b:	8b 74 13 14          	mov    0x14(%rbx,%rdx,1),%esi
ffff80000010493f:	99                   	cltd
ffff800000104940:	f7 fe                	idiv   %esi
ffff800000104942:	89 45 e8             	mov    %eax,-0x18(%rbp)
ffff800000104945:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
ffff80000010494c:	e9 83 00 00 00       	jmp    ffff8000001049d4 <clear_screen+0xf9>
ffff800000104951:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
ffff800000104958:	eb 6e                	jmp    ffff8000001049c8 <clear_screen+0xed>
ffff80000010495a:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104961:	00 00 00 
ffff800000104964:	8b 44 03 14          	mov    0x14(%rbx,%rax,1),%eax
ffff800000104968:	0f af 45 f4          	imul   -0xc(%rbp),%eax
ffff80000010496c:	89 c1                	mov    %eax,%ecx
ffff80000010496e:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104975:	00 00 00 
ffff800000104978:	8b 44 03 10          	mov    0x10(%rbx,%rax,1),%eax
ffff80000010497c:	0f af 45 f0          	imul   -0x10(%rbp),%eax
ffff800000104980:	89 c2                	mov    %eax,%edx
ffff800000104982:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104989:	00 00 00 
ffff80000010498c:	8b 34 03             	mov    (%rbx,%rax,1),%esi
ffff80000010498f:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff800000104996:	00 00 00 
ffff800000104999:	48 8b 44 03 18       	mov    0x18(%rbx,%rax,1),%rax
ffff80000010499e:	44 8b 45 e0          	mov    -0x20(%rbp),%r8d
ffff8000001049a2:	8b 7d e4             	mov    -0x1c(%rbp),%edi
ffff8000001049a5:	6a 20                	push   $0x20
ffff8000001049a7:	45 89 c1             	mov    %r8d,%r9d
ffff8000001049aa:	41 89 f8             	mov    %edi,%r8d
ffff8000001049ad:	48 89 c7             	mov    %rax,%rdi
ffff8000001049b0:	48 b8 5e b4 ff ff ff 	movabs $0xffffffffffffb45e,%rax
ffff8000001049b7:	ff ff ff 
ffff8000001049ba:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001049be:	ff d0                	call   *%rax
ffff8000001049c0:	48 83 c4 08          	add    $0x8,%rsp
ffff8000001049c4:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
ffff8000001049c8:	8b 45 f0             	mov    -0x10(%rbp),%eax
ffff8000001049cb:	3b 45 ec             	cmp    -0x14(%rbp),%eax
ffff8000001049ce:	7c 8a                	jl     ffff80000010495a <clear_screen+0x7f>
ffff8000001049d0:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
ffff8000001049d4:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff8000001049d7:	3b 45 e8             	cmp    -0x18(%rbp),%eax
ffff8000001049da:	0f 8c 71 ff ff ff    	jl     ffff800000104951 <clear_screen+0x76>
ffff8000001049e0:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049e7:	00 00 00 
ffff8000001049ea:	c7 44 03 08 00 00 00 	movl   $0x0,0x8(%rbx,%rax,1)
ffff8000001049f1:	00 
ffff8000001049f2:	48 b8 20 00 00 00 00 	movabs $0x20,%rax
ffff8000001049f9:	00 00 00 
ffff8000001049fc:	c7 44 03 0c 00 00 00 	movl   $0x0,0xc(%rbx,%rax,1)
ffff800000104a03:	00 
ffff800000104a04:	90                   	nop
ffff800000104a05:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff800000104a09:	c9                   	leave
ffff800000104a0a:	c3                   	ret

ffff800000104a0b <skip_atoi2>:
ffff800000104a0b:	f3 0f 1e fa          	endbr64
ffff800000104a0f:	55                   	push   %rbp
ffff800000104a10:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a13:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104a13 <skip_atoi2+0x8>
ffff800000104a1a:	49 bb ad 43 00 00 00 	movabs $0x43ad,%r11
ffff800000104a21:	00 00 00 
ffff800000104a24:	4c 01 d8             	add    %r11,%rax
ffff800000104a27:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104a2b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104a32:	eb 39                	jmp    ffff800000104a6d <skip_atoi2+0x62>
ffff800000104a34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a38:	48 8b 00             	mov    (%rax),%rax
ffff800000104a3b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a3e:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104a41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a45:	48 8b 00             	mov    (%rax),%rax
ffff800000104a48:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104a4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a50:	48 89 10             	mov    %rdx,(%rax)
ffff800000104a53:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104a56:	89 d0                	mov    %edx,%eax
ffff800000104a58:	c1 e0 02             	shl    $0x2,%eax
ffff800000104a5b:	01 d0                	add    %edx,%eax
ffff800000104a5d:	01 c0                	add    %eax,%eax
ffff800000104a5f:	89 c2                	mov    %eax,%edx
ffff800000104a61:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104a65:	83 e8 30             	sub    $0x30,%eax
ffff800000104a68:	01 d0                	add    %edx,%eax
ffff800000104a6a:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104a6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a71:	48 8b 00             	mov    (%rax),%rax
ffff800000104a74:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a77:	3c 2f                	cmp    $0x2f,%al
ffff800000104a79:	7e 0e                	jle    ffff800000104a89 <skip_atoi2+0x7e>
ffff800000104a7b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104a7f:	48 8b 00             	mov    (%rax),%rax
ffff800000104a82:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a85:	3c 39                	cmp    $0x39,%al
ffff800000104a87:	7e ab                	jle    ffff800000104a34 <skip_atoi2+0x29>
ffff800000104a89:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104a8c:	5d                   	pop    %rbp
ffff800000104a8d:	c3                   	ret

ffff800000104a8e <skip_atoi>:
ffff800000104a8e:	f3 0f 1e fa          	endbr64
ffff800000104a92:	55                   	push   %rbp
ffff800000104a93:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a96:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104a96 <skip_atoi+0x8>
ffff800000104a9d:	49 bb 2a 43 00 00 00 	movabs $0x432a,%r11
ffff800000104aa4:	00 00 00 
ffff800000104aa7:	4c 01 d8             	add    %r11,%rax
ffff800000104aaa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104aae:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104ab5:	eb 2c                	jmp    ffff800000104ae3 <skip_atoi+0x55>
ffff800000104ab7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104abb:	48 8b 00             	mov    (%rax),%rax
ffff800000104abe:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104ac2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ac6:	48 89 10             	mov    %rdx,(%rax)
ffff800000104ac9:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104acc:	89 d0                	mov    %edx,%eax
ffff800000104ace:	c1 e0 02             	shl    $0x2,%eax
ffff800000104ad1:	01 d0                	add    %edx,%eax
ffff800000104ad3:	01 c0                	add    %eax,%eax
ffff800000104ad5:	89 c2                	mov    %eax,%edx
ffff800000104ad7:	0f be 45 fb          	movsbl -0x5(%rbp),%eax
ffff800000104adb:	83 e8 30             	sub    $0x30,%eax
ffff800000104ade:	01 d0                	add    %edx,%eax
ffff800000104ae0:	89 45 fc             	mov    %eax,-0x4(%rbp)
ffff800000104ae3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ae7:	48 8b 00             	mov    (%rax),%rax
ffff800000104aea:	0f b6 00             	movzbl (%rax),%eax
ffff800000104aed:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104af0:	80 7d fb 2f          	cmpb   $0x2f,-0x5(%rbp)
ffff800000104af4:	7e 13                	jle    ffff800000104b09 <skip_atoi+0x7b>
ffff800000104af6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104afa:	48 8b 00             	mov    (%rax),%rax
ffff800000104afd:	0f b6 00             	movzbl (%rax),%eax
ffff800000104b00:	88 45 fb             	mov    %al,-0x5(%rbp)
ffff800000104b03:	80 7d fb 39          	cmpb   $0x39,-0x5(%rbp)
ffff800000104b07:	7e ae                	jle    ffff800000104ab7 <skip_atoi+0x29>
ffff800000104b09:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104b0c:	5d                   	pop    %rbp
ffff800000104b0d:	c3                   	ret

ffff800000104b0e <number>:
ffff800000104b0e:	f3 0f 1e fa          	endbr64
ffff800000104b12:	55                   	push   %rbp
ffff800000104b13:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b16:	48 8d 05 f9 ff ff ff 	lea    -0x7(%rip),%rax        # ffff800000104b16 <number+0x8>
ffff800000104b1d:	49 bb aa 42 00 00 00 	movabs $0x42aa,%r11
ffff800000104b24:	00 00 00 
ffff800000104b27:	4c 01 d8             	add    %r11,%rax
ffff800000104b2a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104b2e:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104b32:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104b35:	89 4d 98             	mov    %ecx,-0x68(%rbp)
ffff800000104b38:	44 89 45 94          	mov    %r8d,-0x6c(%rbp)
ffff800000104b3c:	44 89 4d 90          	mov    %r9d,-0x70(%rbp)
ffff800000104b40:	48 ba 18 ca ff ff ff 	movabs $0xffffffffffffca18,%rdx
ffff800000104b47:	ff ff ff 
ffff800000104b4a:	48 8d 14 10          	lea    (%rax,%rdx,1),%rdx
ffff800000104b4e:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
ffff800000104b52:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000104b59:	8b 55 90             	mov    -0x70(%rbp),%edx
ffff800000104b5c:	83 e2 40             	and    $0x40,%edx
ffff800000104b5f:	85 d2                	test   %edx,%edx
ffff800000104b61:	74 12                	je     ffff800000104b75 <number+0x67>
ffff800000104b63:	48 ba 40 ca ff ff ff 	movabs $0xffffffffffffca40,%rdx
ffff800000104b6a:	ff ff ff 
ffff800000104b6d:	48 8d 04 10          	lea    (%rax,%rdx,1),%rax
ffff800000104b71:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000104b75:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104b78:	83 e0 10             	and    $0x10,%eax
ffff800000104b7b:	85 c0                	test   %eax,%eax
ffff800000104b7d:	74 04                	je     ffff800000104b83 <number+0x75>
ffff800000104b7f:	83 65 90 fe          	andl   $0xfffffffe,-0x70(%rbp)
ffff800000104b83:	83 7d 9c 01          	cmpl   $0x1,-0x64(%rbp)
ffff800000104b87:	7e 06                	jle    ffff800000104b8f <number+0x81>
ffff800000104b89:	83 7d 9c 24          	cmpl   $0x24,-0x64(%rbp)
ffff800000104b8d:	7e 0a                	jle    ffff800000104b99 <number+0x8b>
ffff800000104b8f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104b94:	e9 0f 02 00 00       	jmp    ffff800000104da8 <number+0x29a>
ffff800000104b99:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104b9c:	83 e0 01             	and    $0x1,%eax
ffff800000104b9f:	85 c0                	test   %eax,%eax
ffff800000104ba1:	74 07                	je     ffff800000104baa <number+0x9c>
ffff800000104ba3:	b8 30 00 00 00       	mov    $0x30,%eax
ffff800000104ba8:	eb 05                	jmp    ffff800000104baf <number+0xa1>
ffff800000104baa:	b8 20 00 00 00       	mov    $0x20,%eax
ffff800000104baf:	88 45 eb             	mov    %al,-0x15(%rbp)
ffff800000104bb2:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000104bb6:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bb9:	83 e0 02             	and    $0x2,%eax
ffff800000104bbc:	85 c0                	test   %eax,%eax
ffff800000104bbe:	74 11                	je     ffff800000104bd1 <number+0xc3>
ffff800000104bc0:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104bc5:	79 0a                	jns    ffff800000104bd1 <number+0xc3>
ffff800000104bc7:	c6 45 ff 2d          	movb   $0x2d,-0x1(%rbp)
ffff800000104bcb:	48 f7 5d a0          	negq   -0x60(%rbp)
ffff800000104bcf:	eb 1d                	jmp    ffff800000104bee <number+0xe0>
ffff800000104bd1:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bd4:	83 e0 04             	and    $0x4,%eax
ffff800000104bd7:	85 c0                	test   %eax,%eax
ffff800000104bd9:	75 0b                	jne    ffff800000104be6 <number+0xd8>
ffff800000104bdb:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bde:	c1 e0 02             	shl    $0x2,%eax
ffff800000104be1:	83 e0 20             	and    $0x20,%eax
ffff800000104be4:	eb 05                	jmp    ffff800000104beb <number+0xdd>
ffff800000104be6:	b8 2b 00 00 00       	mov    $0x2b,%eax
ffff800000104beb:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000104bee:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104bf2:	74 04                	je     ffff800000104bf8 <number+0xea>
ffff800000104bf4:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104bf8:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104bfb:	83 e0 20             	and    $0x20,%eax
ffff800000104bfe:	85 c0                	test   %eax,%eax
ffff800000104c00:	74 16                	je     ffff800000104c18 <number+0x10a>
ffff800000104c02:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104c06:	75 06                	jne    ffff800000104c0e <number+0x100>
ffff800000104c08:	83 6d 98 02          	subl   $0x2,-0x68(%rbp)
ffff800000104c0c:	eb 0a                	jmp    ffff800000104c18 <number+0x10a>
ffff800000104c0e:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104c12:	75 04                	jne    ffff800000104c18 <number+0x10a>
ffff800000104c14:	83 6d 98 01          	subl   $0x1,-0x68(%rbp)
ffff800000104c18:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c1d:	75 4b                	jne    ffff800000104c6a <number+0x15c>
ffff800000104c1f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c22:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c25:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104c28:	48 98                	cltq
ffff800000104c2a:	c6 44 05 b0 30       	movb   $0x30,-0x50(%rbp,%rax,1)
ffff800000104c2f:	eb 40                	jmp    ffff800000104c71 <number+0x163>
ffff800000104c31:	8b 45 9c             	mov    -0x64(%rbp),%eax
ffff800000104c34:	48 63 c8             	movslq %eax,%rcx
ffff800000104c37:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104c3b:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104c40:	48 f7 f1             	div    %rcx
ffff800000104c43:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104c47:	89 55 e4             	mov    %edx,-0x1c(%rbp)
ffff800000104c4a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000104c4d:	48 63 d0             	movslq %eax,%rdx
ffff800000104c50:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104c54:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104c58:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c5b:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104c5e:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104c61:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104c64:	48 98                	cltq
ffff800000104c66:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff800000104c6a:	48 83 7d a0 00       	cmpq   $0x0,-0x60(%rbp)
ffff800000104c6f:	75 c0                	jne    ffff800000104c31 <number+0x123>
ffff800000104c71:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c74:	3b 45 94             	cmp    -0x6c(%rbp),%eax
ffff800000104c77:	7e 06                	jle    ffff800000104c7f <number+0x171>
ffff800000104c79:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104c7c:	89 45 94             	mov    %eax,-0x6c(%rbp)
ffff800000104c7f:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104c82:	29 45 98             	sub    %eax,-0x68(%rbp)
ffff800000104c85:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104c88:	83 e0 11             	and    $0x11,%eax
ffff800000104c8b:	85 c0                	test   %eax,%eax
ffff800000104c8d:	75 1e                	jne    ffff800000104cad <number+0x19f>
ffff800000104c8f:	eb 0f                	jmp    ffff800000104ca0 <number+0x192>
ffff800000104c91:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104c95:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104c99:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104c9d:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104ca0:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104ca3:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104ca6:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104ca9:	85 c0                	test   %eax,%eax
ffff800000104cab:	7f e4                	jg     ffff800000104c91 <number+0x183>
ffff800000104cad:	80 7d ff 00          	cmpb   $0x0,-0x1(%rbp)
ffff800000104cb1:	74 12                	je     ffff800000104cc5 <number+0x1b7>
ffff800000104cb3:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104cb7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cbb:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104cbf:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
ffff800000104cc3:	88 10                	mov    %dl,(%rax)
ffff800000104cc5:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104cc8:	83 e0 20             	and    $0x20,%eax
ffff800000104ccb:	85 c0                	test   %eax,%eax
ffff800000104ccd:	74 45                	je     ffff800000104d14 <number+0x206>
ffff800000104ccf:	83 7d 9c 08          	cmpl   $0x8,-0x64(%rbp)
ffff800000104cd3:	75 11                	jne    ffff800000104ce6 <number+0x1d8>
ffff800000104cd5:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104cd9:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cdd:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104ce1:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104ce4:	eb 2e                	jmp    ffff800000104d14 <number+0x206>
ffff800000104ce6:	83 7d 9c 10          	cmpl   $0x10,-0x64(%rbp)
ffff800000104cea:	75 28                	jne    ffff800000104d14 <number+0x206>
ffff800000104cec:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104cf0:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104cf4:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104cf8:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104cfb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104cff:	48 8d 48 21          	lea    0x21(%rax),%rcx
ffff800000104d03:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d07:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d0b:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d0f:	0f b6 11             	movzbl (%rcx),%edx
ffff800000104d12:	88 10                	mov    %dl,(%rax)
ffff800000104d14:	8b 45 90             	mov    -0x70(%rbp),%eax
ffff800000104d17:	83 e0 10             	and    $0x10,%eax
ffff800000104d1a:	85 c0                	test   %eax,%eax
ffff800000104d1c:	75 32                	jne    ffff800000104d50 <number+0x242>
ffff800000104d1e:	eb 12                	jmp    ffff800000104d32 <number+0x224>
ffff800000104d20:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d24:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d28:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d2c:	0f b6 55 eb          	movzbl -0x15(%rbp),%edx
ffff800000104d30:	88 10                	mov    %dl,(%rax)
ffff800000104d32:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104d35:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d38:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104d3b:	85 c0                	test   %eax,%eax
ffff800000104d3d:	7f e1                	jg     ffff800000104d20 <number+0x212>
ffff800000104d3f:	eb 0f                	jmp    ffff800000104d50 <number+0x242>
ffff800000104d41:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d45:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d49:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d4d:	c6 00 30             	movb   $0x30,(%rax)
ffff800000104d50:	8b 45 94             	mov    -0x6c(%rbp),%eax
ffff800000104d53:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d56:	89 55 94             	mov    %edx,-0x6c(%rbp)
ffff800000104d59:	39 45 ec             	cmp    %eax,-0x14(%rbp)
ffff800000104d5c:	7c e3                	jl     ffff800000104d41 <number+0x233>
ffff800000104d5e:	eb 19                	jmp    ffff800000104d79 <number+0x26b>
ffff800000104d60:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d64:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d68:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d6c:	8b 55 ec             	mov    -0x14(%rbp),%edx
ffff800000104d6f:	48 63 d2             	movslq %edx,%rdx
ffff800000104d72:	0f b6 54 15 b0       	movzbl -0x50(%rbp,%rdx,1),%edx
ffff800000104d77:	88 10                	mov    %dl,(%rax)
ffff800000104d79:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000104d7c:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d7f:	89 55 ec             	mov    %edx,-0x14(%rbp)
ffff800000104d82:	85 c0                	test   %eax,%eax
ffff800000104d84:	7f da                	jg     ffff800000104d60 <number+0x252>
ffff800000104d86:	eb 0f                	jmp    ffff800000104d97 <number+0x289>
ffff800000104d88:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104d8c:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104d90:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
ffff800000104d94:	c6 00 20             	movb   $0x20,(%rax)
ffff800000104d97:	8b 45 98             	mov    -0x68(%rbp),%eax
ffff800000104d9a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000104d9d:	89 55 98             	mov    %edx,-0x68(%rbp)
ffff800000104da0:	85 c0                	test   %eax,%eax
ffff800000104da2:	7f e4                	jg     ffff800000104d88 <number+0x27a>
ffff800000104da4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104da8:	5d                   	pop    %rbp
ffff800000104da9:	c3                   	ret

ffff800000104daa <vsprintf>:
ffff800000104daa:	f3 0f 1e fa          	endbr64
ffff800000104dae:	55                   	push   %rbp
ffff800000104daf:	48 89 e5             	mov    %rsp,%rbp
ffff800000104db2:	53                   	push   %rbx
ffff800000104db3:	48 83 ec 68          	sub    $0x68,%rsp
ffff800000104db7:	48 8d 1d f9 ff ff ff 	lea    -0x7(%rip),%rbx        # ffff800000104db7 <vsprintf+0xd>
ffff800000104dbe:	49 bb 09 40 00 00 00 	movabs $0x4009,%r11
ffff800000104dc5:	00 00 00 
ffff800000104dc8:	4c 01 db             	add    %r11,%rbx
ffff800000104dcb:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104dcf:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104dd3:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
ffff800000104dd7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff800000104ddb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104ddf:	e9 f8 08 00 00       	jmp    ffff8000001056dc <vsprintf+0x932>
ffff800000104de4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104de8:	0f b6 00             	movzbl (%rax),%eax
ffff800000104deb:	3c 25                	cmp    $0x25,%al
ffff800000104ded:	74 1a                	je     ffff800000104e09 <vsprintf+0x5f>
ffff800000104def:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff800000104df3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104df7:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000104dfb:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104dff:	0f b6 12             	movzbl (%rdx),%edx
ffff800000104e02:	88 10                	mov    %dl,(%rax)
ffff800000104e04:	e9 c7 08 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff800000104e09:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
ffff800000104e10:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e14:	48 83 c0 01          	add    $0x1,%rax
ffff800000104e18:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104e1c:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e20:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e23:	0f be c0             	movsbl %al,%eax
ffff800000104e26:	83 e8 20             	sub    $0x20,%eax
ffff800000104e29:	83 f8 10             	cmp    $0x10,%eax
ffff800000104e2c:	77 40                	ja     ffff800000104e6e <vsprintf+0xc4>
ffff800000104e2e:	89 c0                	mov    %eax,%eax
ffff800000104e30:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff800000104e37:	00 
ffff800000104e38:	48 8d 05 e9 09 00 00 	lea    0x9e9(%rip),%rax        # ffff800000105828 <.LC1+0x28>
ffff800000104e3f:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff800000104e43:	48 8d 15 de 09 00 00 	lea    0x9de(%rip),%rdx        # ffff800000105828 <.LC1+0x28>
ffff800000104e4a:	48 01 d0             	add    %rdx,%rax
ffff800000104e4d:	3e ff e0             	notrack jmp *%rax
ffff800000104e50:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104e54:	eb ba                	jmp    ffff800000104e10 <vsprintf+0x66>
ffff800000104e56:	83 4d dc 04          	orl    $0x4,-0x24(%rbp)
ffff800000104e5a:	eb b4                	jmp    ffff800000104e10 <vsprintf+0x66>
ffff800000104e5c:	83 4d dc 08          	orl    $0x8,-0x24(%rbp)
ffff800000104e60:	eb ae                	jmp    ffff800000104e10 <vsprintf+0x66>
ffff800000104e62:	83 4d dc 20          	orl    $0x20,-0x24(%rbp)
ffff800000104e66:	eb a8                	jmp    ffff800000104e10 <vsprintf+0x66>
ffff800000104e68:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff800000104e6c:	eb a2                	jmp    ffff800000104e10 <vsprintf+0x66>
ffff800000104e6e:	c7 45 d8 ff ff ff ff 	movl   $0xffffffff,-0x28(%rbp)
ffff800000104e75:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e79:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e7c:	3c 2f                	cmp    $0x2f,%al
ffff800000104e7e:	7e 27                	jle    ffff800000104ea7 <vsprintf+0xfd>
ffff800000104e80:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104e84:	0f b6 00             	movzbl (%rax),%eax
ffff800000104e87:	3c 39                	cmp    $0x39,%al
ffff800000104e89:	7f 1c                	jg     ffff800000104ea7 <vsprintf+0xfd>
ffff800000104e8b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104e8f:	48 89 c7             	mov    %rax,%rdi
ffff800000104e92:	48 b8 ce bc ff ff ff 	movabs $0xffffffffffffbcce,%rax
ffff800000104e99:	ff ff ff 
ffff800000104e9c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104ea0:	ff d0                	call   *%rax
ffff800000104ea2:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104ea5:	eb 6c                	jmp    ffff800000104f13 <vsprintf+0x169>
ffff800000104ea7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104eab:	0f b6 00             	movzbl (%rax),%eax
ffff800000104eae:	3c 2a                	cmp    $0x2a,%al
ffff800000104eb0:	75 61                	jne    ffff800000104f13 <vsprintf+0x169>
ffff800000104eb2:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104eb6:	48 83 c0 01          	add    $0x1,%rax
ffff800000104eba:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104ebe:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104ec2:	8b 00                	mov    (%rax),%eax
ffff800000104ec4:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104ec7:	77 24                	ja     ffff800000104eed <vsprintf+0x143>
ffff800000104ec9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104ecd:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104ed1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104ed5:	8b 00                	mov    (%rax),%eax
ffff800000104ed7:	89 c0                	mov    %eax,%eax
ffff800000104ed9:	48 01 d0             	add    %rdx,%rax
ffff800000104edc:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104ee0:	8b 12                	mov    (%rdx),%edx
ffff800000104ee2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104ee5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104ee9:	89 0a                	mov    %ecx,(%rdx)
ffff800000104eeb:	eb 14                	jmp    ffff800000104f01 <vsprintf+0x157>
ffff800000104eed:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104ef1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104ef5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104ef9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104efd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104f01:	8b 00                	mov    (%rax),%eax
ffff800000104f03:	89 45 d8             	mov    %eax,-0x28(%rbp)
ffff800000104f06:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff800000104f0a:	79 07                	jns    ffff800000104f13 <vsprintf+0x169>
ffff800000104f0c:	f7 5d d8             	negl   -0x28(%rbp)
ffff800000104f0f:	83 4d dc 10          	orl    $0x10,-0x24(%rbp)
ffff800000104f13:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%rbp)
ffff800000104f1a:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f1e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f21:	3c 2e                	cmp    $0x2e,%al
ffff800000104f23:	0f 85 aa 00 00 00    	jne    ffff800000104fd3 <vsprintf+0x229>
ffff800000104f29:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f2d:	48 83 c0 01          	add    $0x1,%rax
ffff800000104f31:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f35:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f39:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f3c:	3c 2f                	cmp    $0x2f,%al
ffff800000104f3e:	7e 27                	jle    ffff800000104f67 <vsprintf+0x1bd>
ffff800000104f40:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f44:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f47:	3c 39                	cmp    $0x39,%al
ffff800000104f49:	7f 1c                	jg     ffff800000104f67 <vsprintf+0x1bd>
ffff800000104f4b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
ffff800000104f4f:	48 89 c7             	mov    %rax,%rdi
ffff800000104f52:	48 b8 ce bc ff ff ff 	movabs $0xffffffffffffbcce,%rax
ffff800000104f59:	ff ff ff 
ffff800000104f5c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104f60:	ff d0                	call   *%rax
ffff800000104f62:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000104f65:	eb 5f                	jmp    ffff800000104fc6 <vsprintf+0x21c>
ffff800000104f67:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f6b:	0f b6 00             	movzbl (%rax),%eax
ffff800000104f6e:	3c 2a                	cmp    $0x2a,%al
ffff800000104f70:	75 54                	jne    ffff800000104fc6 <vsprintf+0x21c>
ffff800000104f72:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104f76:	48 83 c0 01          	add    $0x1,%rax
ffff800000104f7a:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff800000104f7e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f82:	8b 00                	mov    (%rax),%eax
ffff800000104f84:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104f87:	77 24                	ja     ffff800000104fad <vsprintf+0x203>
ffff800000104f89:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f8d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104f91:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104f95:	8b 00                	mov    (%rax),%eax
ffff800000104f97:	89 c0                	mov    %eax,%eax
ffff800000104f99:	48 01 d0             	add    %rdx,%rax
ffff800000104f9c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104fa0:	8b 12                	mov    (%rdx),%edx
ffff800000104fa2:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104fa5:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104fa9:	89 0a                	mov    %ecx,(%rdx)
ffff800000104fab:	eb 14                	jmp    ffff800000104fc1 <vsprintf+0x217>
ffff800000104fad:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000104fb1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104fb5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104fb9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000104fbd:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104fc1:	8b 00                	mov    (%rax),%eax
ffff800000104fc3:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000104fc6:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000104fca:	79 07                	jns    ffff800000104fd3 <vsprintf+0x229>
ffff800000104fcc:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
ffff800000104fd3:	c7 45 c8 ff ff ff ff 	movl   $0xffffffff,-0x38(%rbp)
ffff800000104fda:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fde:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fe1:	3c 68                	cmp    $0x68,%al
ffff800000104fe3:	74 21                	je     ffff800000105006 <vsprintf+0x25c>
ffff800000104fe5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fe9:	0f b6 00             	movzbl (%rax),%eax
ffff800000104fec:	3c 6c                	cmp    $0x6c,%al
ffff800000104fee:	74 16                	je     ffff800000105006 <vsprintf+0x25c>
ffff800000104ff0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104ff4:	0f b6 00             	movzbl (%rax),%eax
ffff800000104ff7:	3c 4c                	cmp    $0x4c,%al
ffff800000104ff9:	74 0b                	je     ffff800000105006 <vsprintf+0x25c>
ffff800000104ffb:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104fff:	0f b6 00             	movzbl (%rax),%eax
ffff800000105002:	3c 7a                	cmp    $0x7a,%al
ffff800000105004:	75 19                	jne    ffff80000010501f <vsprintf+0x275>
ffff800000105006:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010500a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010500d:	0f be c0             	movsbl %al,%eax
ffff800000105010:	89 45 c8             	mov    %eax,-0x38(%rbp)
ffff800000105013:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105017:	48 83 c0 01          	add    $0x1,%rax
ffff80000010501b:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff80000010501f:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000105023:	0f b6 00             	movzbl (%rax),%eax
ffff800000105026:	0f be c0             	movsbl %al,%eax
ffff800000105029:	83 e8 25             	sub    $0x25,%eax
ffff80000010502c:	83 f8 53             	cmp    $0x53,%eax
ffff80000010502f:	0f 87 5d 06 00 00    	ja     ffff800000105692 <vsprintf+0x8e8>
ffff800000105035:	89 c0                	mov    %eax,%eax
ffff800000105037:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
ffff80000010503e:	00 
ffff80000010503f:	48 8d 05 6a 08 00 00 	lea    0x86a(%rip),%rax        # ffff8000001058b0 <.LC1+0xb0>
ffff800000105046:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
ffff80000010504a:	48 8d 15 5f 08 00 00 	lea    0x85f(%rip),%rdx        # ffff8000001058b0 <.LC1+0xb0>
ffff800000105051:	48 01 d0             	add    %rdx,%rax
ffff800000105054:	3e ff e0             	notrack jmp *%rax
ffff800000105057:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff80000010505a:	83 e0 10             	and    $0x10,%eax
ffff80000010505d:	85 c0                	test   %eax,%eax
ffff80000010505f:	75 1b                	jne    ffff80000010507c <vsprintf+0x2d2>
ffff800000105061:	eb 0f                	jmp    ffff800000105072 <vsprintf+0x2c8>
ffff800000105063:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105067:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010506b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010506f:	c6 00 20             	movb   $0x20,(%rax)
ffff800000105072:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff800000105076:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff80000010507a:	7f e7                	jg     ffff800000105063 <vsprintf+0x2b9>
ffff80000010507c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105080:	8b 00                	mov    (%rax),%eax
ffff800000105082:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105085:	77 24                	ja     ffff8000001050ab <vsprintf+0x301>
ffff800000105087:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010508b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010508f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105093:	8b 00                	mov    (%rax),%eax
ffff800000105095:	89 c0                	mov    %eax,%eax
ffff800000105097:	48 01 d0             	add    %rdx,%rax
ffff80000010509a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010509e:	8b 12                	mov    (%rdx),%edx
ffff8000001050a0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001050a3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050a7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001050a9:	eb 14                	jmp    ffff8000001050bf <vsprintf+0x315>
ffff8000001050ab:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050af:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001050b3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001050b7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001050bb:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001050bf:	8b 08                	mov    (%rax),%ecx
ffff8000001050c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050c5:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001050c9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001050cd:	89 ca                	mov    %ecx,%edx
ffff8000001050cf:	88 10                	mov    %dl,(%rax)
ffff8000001050d1:	eb 0f                	jmp    ffff8000001050e2 <vsprintf+0x338>
ffff8000001050d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001050d7:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001050db:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001050df:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001050e2:	83 6d d8 01          	subl   $0x1,-0x28(%rbp)
ffff8000001050e6:	83 7d d8 00          	cmpl   $0x0,-0x28(%rbp)
ffff8000001050ea:	7f e7                	jg     ffff8000001050d3 <vsprintf+0x329>
ffff8000001050ec:	e9 df 05 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff8000001050f1:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001050f5:	8b 00                	mov    (%rax),%eax
ffff8000001050f7:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001050fa:	77 24                	ja     ffff800000105120 <vsprintf+0x376>
ffff8000001050fc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105100:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105104:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105108:	8b 00                	mov    (%rax),%eax
ffff80000010510a:	89 c0                	mov    %eax,%eax
ffff80000010510c:	48 01 d0             	add    %rdx,%rax
ffff80000010510f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105113:	8b 12                	mov    (%rdx),%edx
ffff800000105115:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105118:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010511c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010511e:	eb 14                	jmp    ffff800000105134 <vsprintf+0x38a>
ffff800000105120:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105124:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105128:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010512c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105130:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105134:	48 8b 00             	mov    (%rax),%rax
ffff800000105137:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010513b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000105140:	75 08                	jne    ffff80000010514a <vsprintf+0x3a0>
ffff800000105142:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000105149:	00 
ffff80000010514a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010514e:	48 89 c7             	mov    %rax,%rdi
ffff800000105151:	48 b8 1a b4 ff ff ff 	movabs $0xffffffffffffb41a,%rax
ffff800000105158:	ff ff ff 
ffff80000010515b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010515f:	ff d0                	call   *%rax
ffff800000105161:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105164:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
ffff800000105168:	79 08                	jns    ffff800000105172 <vsprintf+0x3c8>
ffff80000010516a:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff80000010516d:	89 45 d4             	mov    %eax,-0x2c(%rbp)
ffff800000105170:	eb 0e                	jmp    ffff800000105180 <vsprintf+0x3d6>
ffff800000105172:	8b 45 d0             	mov    -0x30(%rbp),%eax
ffff800000105175:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000105178:	7e 06                	jle    ffff800000105180 <vsprintf+0x3d6>
ffff80000010517a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff80000010517d:	89 45 d0             	mov    %eax,-0x30(%rbp)
ffff800000105180:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000105183:	83 e0 10             	and    $0x10,%eax
ffff800000105186:	85 c0                	test   %eax,%eax
ffff800000105188:	75 1f                	jne    ffff8000001051a9 <vsprintf+0x3ff>
ffff80000010518a:	eb 0f                	jmp    ffff80000010519b <vsprintf+0x3f1>
ffff80000010518c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105190:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105194:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105198:	c6 00 20             	movb   $0x20,(%rax)
ffff80000010519b:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff80000010519e:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051a1:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001051a4:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001051a7:	7c e3                	jl     ffff80000010518c <vsprintf+0x3e2>
ffff8000001051a9:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
ffff8000001051b0:	eb 21                	jmp    ffff8000001051d3 <vsprintf+0x429>
ffff8000001051b2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001051b6:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001051ba:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001051be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051c2:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001051c6:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001051ca:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001051cd:	88 10                	mov    %dl,(%rax)
ffff8000001051cf:	83 45 cc 01          	addl   $0x1,-0x34(%rbp)
ffff8000001051d3:	8b 45 cc             	mov    -0x34(%rbp),%eax
ffff8000001051d6:	3b 45 d0             	cmp    -0x30(%rbp),%eax
ffff8000001051d9:	7c d7                	jl     ffff8000001051b2 <vsprintf+0x408>
ffff8000001051db:	eb 0f                	jmp    ffff8000001051ec <vsprintf+0x442>
ffff8000001051dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001051e1:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001051e5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001051e9:	c6 00 20             	movb   $0x20,(%rax)
ffff8000001051ec:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001051ef:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001051f2:	89 55 d8             	mov    %edx,-0x28(%rbp)
ffff8000001051f5:	39 45 d0             	cmp    %eax,-0x30(%rbp)
ffff8000001051f8:	7c e3                	jl     ffff8000001051dd <vsprintf+0x433>
ffff8000001051fa:	e9 d1 04 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff8000001051ff:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff800000105203:	0f 85 82 00 00 00    	jne    ffff80000010528b <vsprintf+0x4e1>
ffff800000105209:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010520d:	8b 00                	mov    (%rax),%eax
ffff80000010520f:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105212:	77 24                	ja     ffff800000105238 <vsprintf+0x48e>
ffff800000105214:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105218:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010521c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105220:	8b 00                	mov    (%rax),%eax
ffff800000105222:	89 c0                	mov    %eax,%eax
ffff800000105224:	48 01 d0             	add    %rdx,%rax
ffff800000105227:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010522b:	8b 12                	mov    (%rdx),%edx
ffff80000010522d:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105230:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105234:	89 0a                	mov    %ecx,(%rdx)
ffff800000105236:	eb 14                	jmp    ffff80000010524c <vsprintf+0x4a2>
ffff800000105238:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010523c:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105240:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105244:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105248:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010524c:	48 8b 00             	mov    (%rax),%rax
ffff80000010524f:	48 89 c7             	mov    %rax,%rdi
ffff800000105252:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105255:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff800000105258:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010525b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010525f:	41 89 f1             	mov    %esi,%r9d
ffff800000105262:	41 89 c8             	mov    %ecx,%r8d
ffff800000105265:	89 d1                	mov    %edx,%ecx
ffff800000105267:	ba 08 00 00 00       	mov    $0x8,%edx
ffff80000010526c:	48 89 fe             	mov    %rdi,%rsi
ffff80000010526f:	48 89 c7             	mov    %rax,%rdi
ffff800000105272:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff800000105279:	ff ff ff 
ffff80000010527c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105280:	ff d0                	call   *%rax
ffff800000105282:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105286:	e9 45 04 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff80000010528b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010528f:	8b 00                	mov    (%rax),%eax
ffff800000105291:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105294:	77 24                	ja     ffff8000001052ba <vsprintf+0x510>
ffff800000105296:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010529a:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010529e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052a2:	8b 00                	mov    (%rax),%eax
ffff8000001052a4:	89 c0                	mov    %eax,%eax
ffff8000001052a6:	48 01 d0             	add    %rdx,%rax
ffff8000001052a9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052ad:	8b 12                	mov    (%rdx),%edx
ffff8000001052af:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001052b2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052b6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001052b8:	eb 14                	jmp    ffff8000001052ce <vsprintf+0x524>
ffff8000001052ba:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001052be:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001052c2:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001052c6:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001052ca:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001052ce:	8b 00                	mov    (%rax),%eax
ffff8000001052d0:	89 c7                	mov    %eax,%edi
ffff8000001052d2:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001052d5:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001052d8:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001052db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001052df:	41 89 f1             	mov    %esi,%r9d
ffff8000001052e2:	41 89 c8             	mov    %ecx,%r8d
ffff8000001052e5:	89 d1                	mov    %edx,%ecx
ffff8000001052e7:	ba 08 00 00 00       	mov    $0x8,%edx
ffff8000001052ec:	48 89 fe             	mov    %rdi,%rsi
ffff8000001052ef:	48 89 c7             	mov    %rax,%rdi
ffff8000001052f2:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff8000001052f9:	ff ff ff 
ffff8000001052fc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105300:	ff d0                	call   *%rax
ffff800000105302:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105306:	e9 c5 03 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff80000010530b:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%rbp)
ffff80000010530f:	75 0b                	jne    ffff80000010531c <vsprintf+0x572>
ffff800000105311:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
ffff800000105318:	83 4d dc 01          	orl    $0x1,-0x24(%rbp)
ffff80000010531c:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105320:	8b 00                	mov    (%rax),%eax
ffff800000105322:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105325:	77 24                	ja     ffff80000010534b <vsprintf+0x5a1>
ffff800000105327:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010532b:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010532f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105333:	8b 00                	mov    (%rax),%eax
ffff800000105335:	89 c0                	mov    %eax,%eax
ffff800000105337:	48 01 d0             	add    %rdx,%rax
ffff80000010533a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010533e:	8b 12                	mov    (%rdx),%edx
ffff800000105340:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105343:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105347:	89 0a                	mov    %ecx,(%rdx)
ffff800000105349:	eb 14                	jmp    ffff80000010535f <vsprintf+0x5b5>
ffff80000010534b:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010534f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105353:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105357:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010535b:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010535f:	48 8b 00             	mov    (%rax),%rax
ffff800000105362:	48 89 c7             	mov    %rax,%rdi
ffff800000105365:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105368:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010536b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010536e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105372:	41 89 f1             	mov    %esi,%r9d
ffff800000105375:	41 89 c8             	mov    %ecx,%r8d
ffff800000105378:	89 d1                	mov    %edx,%ecx
ffff80000010537a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010537f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105382:	48 89 c7             	mov    %rax,%rdi
ffff800000105385:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff80000010538c:	ff ff ff 
ffff80000010538f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105393:	ff d0                	call   *%rax
ffff800000105395:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105399:	e9 32 03 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff80000010539e:	83 4d dc 40          	orl    $0x40,-0x24(%rbp)
ffff8000001053a2:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001053a6:	0f 85 82 00 00 00    	jne    ffff80000010542e <vsprintf+0x684>
ffff8000001053ac:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053b0:	8b 00                	mov    (%rax),%eax
ffff8000001053b2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001053b5:	77 24                	ja     ffff8000001053db <vsprintf+0x631>
ffff8000001053b7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053bb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001053bf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053c3:	8b 00                	mov    (%rax),%eax
ffff8000001053c5:	89 c0                	mov    %eax,%eax
ffff8000001053c7:	48 01 d0             	add    %rdx,%rax
ffff8000001053ca:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053ce:	8b 12                	mov    (%rdx),%edx
ffff8000001053d0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001053d3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053d7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001053d9:	eb 14                	jmp    ffff8000001053ef <vsprintf+0x645>
ffff8000001053db:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001053df:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053e3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001053e7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001053eb:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001053ef:	48 8b 00             	mov    (%rax),%rax
ffff8000001053f2:	48 89 c7             	mov    %rax,%rdi
ffff8000001053f5:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff8000001053f8:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff8000001053fb:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff8000001053fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105402:	41 89 f1             	mov    %esi,%r9d
ffff800000105405:	41 89 c8             	mov    %ecx,%r8d
ffff800000105408:	89 d1                	mov    %edx,%ecx
ffff80000010540a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010540f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105412:	48 89 c7             	mov    %rax,%rdi
ffff800000105415:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff80000010541c:	ff ff ff 
ffff80000010541f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105423:	ff d0                	call   *%rax
ffff800000105425:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105429:	e9 a2 02 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff80000010542e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105432:	8b 00                	mov    (%rax),%eax
ffff800000105434:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105437:	77 24                	ja     ffff80000010545d <vsprintf+0x6b3>
ffff800000105439:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010543d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105441:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105445:	8b 00                	mov    (%rax),%eax
ffff800000105447:	89 c0                	mov    %eax,%eax
ffff800000105449:	48 01 d0             	add    %rdx,%rax
ffff80000010544c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105450:	8b 12                	mov    (%rdx),%edx
ffff800000105452:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105455:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105459:	89 0a                	mov    %ecx,(%rdx)
ffff80000010545b:	eb 14                	jmp    ffff800000105471 <vsprintf+0x6c7>
ffff80000010545d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105461:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105465:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105469:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010546d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105471:	8b 00                	mov    (%rax),%eax
ffff800000105473:	89 c7                	mov    %eax,%edi
ffff800000105475:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105478:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010547b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010547e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105482:	41 89 f1             	mov    %esi,%r9d
ffff800000105485:	41 89 c8             	mov    %ecx,%r8d
ffff800000105488:	89 d1                	mov    %edx,%ecx
ffff80000010548a:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010548f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105492:	48 89 c7             	mov    %rax,%rdi
ffff800000105495:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff80000010549c:	ff ff ff 
ffff80000010549f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054a3:	ff d0                	call   *%rax
ffff8000001054a5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001054a9:	e9 22 02 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff8000001054ae:	83 4d dc 02          	orl    $0x2,-0x24(%rbp)
ffff8000001054b2:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001054b6:	0f 85 82 00 00 00    	jne    ffff80000010553e <vsprintf+0x794>
ffff8000001054bc:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054c0:	8b 00                	mov    (%rax),%eax
ffff8000001054c2:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001054c5:	77 24                	ja     ffff8000001054eb <vsprintf+0x741>
ffff8000001054c7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054cb:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001054cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054d3:	8b 00                	mov    (%rax),%eax
ffff8000001054d5:	89 c0                	mov    %eax,%eax
ffff8000001054d7:	48 01 d0             	add    %rdx,%rax
ffff8000001054da:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054de:	8b 12                	mov    (%rdx),%edx
ffff8000001054e0:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001054e3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054e7:	89 0a                	mov    %ecx,(%rdx)
ffff8000001054e9:	eb 14                	jmp    ffff8000001054ff <vsprintf+0x755>
ffff8000001054eb:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001054ef:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001054f3:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001054f7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001054fb:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001054ff:	48 8b 00             	mov    (%rax),%rax
ffff800000105502:	48 89 c7             	mov    %rax,%rdi
ffff800000105505:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105508:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010550b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010550e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105512:	41 89 f1             	mov    %esi,%r9d
ffff800000105515:	41 89 c8             	mov    %ecx,%r8d
ffff800000105518:	89 d1                	mov    %edx,%ecx
ffff80000010551a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010551f:	48 89 fe             	mov    %rdi,%rsi
ffff800000105522:	48 89 c7             	mov    %rax,%rdi
ffff800000105525:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff80000010552c:	ff ff ff 
ffff80000010552f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105533:	ff d0                	call   *%rax
ffff800000105535:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105539:	e9 92 01 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff80000010553e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105542:	8b 00                	mov    (%rax),%eax
ffff800000105544:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000105547:	77 24                	ja     ffff80000010556d <vsprintf+0x7c3>
ffff800000105549:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010554d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105551:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105555:	8b 00                	mov    (%rax),%eax
ffff800000105557:	89 c0                	mov    %eax,%eax
ffff800000105559:	48 01 d0             	add    %rdx,%rax
ffff80000010555c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105560:	8b 12                	mov    (%rdx),%edx
ffff800000105562:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000105565:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105569:	89 0a                	mov    %ecx,(%rdx)
ffff80000010556b:	eb 14                	jmp    ffff800000105581 <vsprintf+0x7d7>
ffff80000010556d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105571:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105575:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105579:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff80000010557d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105581:	8b 00                	mov    (%rax),%eax
ffff800000105583:	89 c7                	mov    %eax,%edi
ffff800000105585:	8b 75 dc             	mov    -0x24(%rbp),%esi
ffff800000105588:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
ffff80000010558b:	8b 55 d8             	mov    -0x28(%rbp),%edx
ffff80000010558e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105592:	41 89 f1             	mov    %esi,%r9d
ffff800000105595:	41 89 c8             	mov    %ecx,%r8d
ffff800000105598:	89 d1                	mov    %edx,%ecx
ffff80000010559a:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010559f:	48 89 fe             	mov    %rdi,%rsi
ffff8000001055a2:	48 89 c7             	mov    %rax,%rdi
ffff8000001055a5:	48 b8 4e bd ff ff ff 	movabs $0xffffffffffffbd4e,%rax
ffff8000001055ac:	ff ff ff 
ffff8000001055af:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001055b3:	ff d0                	call   *%rax
ffff8000001055b5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001055b9:	e9 12 01 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff8000001055be:	83 7d c8 6c          	cmpl   $0x6c,-0x38(%rbp)
ffff8000001055c2:	75 61                	jne    ffff800000105625 <vsprintf+0x87b>
ffff8000001055c4:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055c8:	8b 00                	mov    (%rax),%eax
ffff8000001055ca:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001055cd:	77 24                	ja     ffff8000001055f3 <vsprintf+0x849>
ffff8000001055cf:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055d3:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001055d7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055db:	8b 00                	mov    (%rax),%eax
ffff8000001055dd:	89 c0                	mov    %eax,%eax
ffff8000001055df:	48 01 d0             	add    %rdx,%rax
ffff8000001055e2:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055e6:	8b 12                	mov    (%rdx),%edx
ffff8000001055e8:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001055eb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff8000001055ef:	89 0a                	mov    %ecx,(%rdx)
ffff8000001055f1:	eb 14                	jmp    ffff800000105607 <vsprintf+0x85d>
ffff8000001055f3:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff8000001055f7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001055fb:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001055ff:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105603:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105607:	48 8b 00             	mov    (%rax),%rax
ffff80000010560a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010560e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105612:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105616:	48 89 c2             	mov    %rax,%rdx
ffff800000105619:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010561d:	48 89 10             	mov    %rdx,(%rax)
ffff800000105620:	e9 ab 00 00 00       	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff800000105625:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105629:	8b 00                	mov    (%rax),%eax
ffff80000010562b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010562e:	77 24                	ja     ffff800000105654 <vsprintf+0x8aa>
ffff800000105630:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105634:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000105638:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff80000010563c:	8b 00                	mov    (%rax),%eax
ffff80000010563e:	89 c0                	mov    %eax,%eax
ffff800000105640:	48 01 d0             	add    %rdx,%rax
ffff800000105643:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105647:	8b 12                	mov    (%rdx),%edx
ffff800000105649:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010564c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105650:	89 0a                	mov    %ecx,(%rdx)
ffff800000105652:	eb 14                	jmp    ffff800000105668 <vsprintf+0x8be>
ffff800000105654:	48 8b 45 98          	mov    -0x68(%rbp),%rax
ffff800000105658:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010565c:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000105660:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
ffff800000105664:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000105668:	48 8b 00             	mov    (%rax),%rax
ffff80000010566b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010566f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105673:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff800000105677:	89 c2                	mov    %eax,%edx
ffff800000105679:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010567d:	89 10                	mov    %edx,(%rax)
ffff80000010567f:	eb 4f                	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff800000105681:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105685:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000105689:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010568d:	c6 00 25             	movb   $0x25,(%rax)
ffff800000105690:	eb 3e                	jmp    ffff8000001056d0 <vsprintf+0x926>
ffff800000105692:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105696:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010569a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010569e:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001056a1:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056a5:	0f b6 00             	movzbl (%rax),%eax
ffff8000001056a8:	84 c0                	test   %al,%al
ffff8000001056aa:	74 17                	je     ffff8000001056c3 <vsprintf+0x919>
ffff8000001056ac:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
ffff8000001056b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056b4:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001056b8:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001056bc:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001056bf:	88 10                	mov    %dl,(%rax)
ffff8000001056c1:	eb 0c                	jmp    ffff8000001056cf <vsprintf+0x925>
ffff8000001056c3:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056c7:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001056cb:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001056cf:	90                   	nop
ffff8000001056d0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056d4:	48 83 c0 01          	add    $0x1,%rax
ffff8000001056d8:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
ffff8000001056dc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001056e0:	0f b6 00             	movzbl (%rax),%eax
ffff8000001056e3:	84 c0                	test   %al,%al
ffff8000001056e5:	0f 85 f9 f6 ff ff    	jne    ffff800000104de4 <vsprintf+0x3a>
ffff8000001056eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056ef:	c6 00 00             	movb   $0x0,(%rax)
ffff8000001056f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056f6:	48 2b 45 a8          	sub    -0x58(%rbp),%rax
ffff8000001056fa:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
ffff8000001056fe:	c9                   	leave
ffff8000001056ff:	c3                   	ret
