//The code section (_start) is located at the low memory address. 
//The page table structure follows the code and starts at 0x1000. 
//The data structures such as GDT, IDT and TSS are located at higher addresses (in the .data section)

.section .text
.globl _start

_start:
/*Why is it 0x10?
The interpretation of 0x10 (binary 0001_0000) is as follows: 
Index: 0001_0 (i.e. 2), indicating the selection of the 3rd descriptor in the GDT (the index starts from 0).
TI: 0, indicating the use of GDT.
RPL: 00, indicating kernel mode (highest privilege).
During the startup phase of the operating system, the GDT is usually initialized to contain the following entries: 
NULL descriptor (index 0): Reserved, usually all 0.
Kernel code segment descriptor (index 1): Used for kernel code execution.
Kernel data segment descriptor (index 2): Used for accessing kernel data.
Therefore, 0x10 selects the kernel data segment descriptor in the GDT, ensuring that the kernel code can correctly access the data.
*/
	mov	$0x10,	%ax
	mov	%ax,	%ds
	mov	%ax,	%es
	mov	%ax,	%fs
	mov	%ax,	%ss
//Define the starting address (top of the stack) of the stack
	mov	$0x7E00,	%esp

//=======	load GDTR

	lgdt	GDT_POINTER(%rip)

//=======	load	IDTR

	lidt	IDT_POINTER(%rip)

	mov	$0x10,	%ax
	mov	%ax,	%ds
	mov	%ax,	%es
	mov	%ax,	%fs
	mov	%ax,	%gs
	mov	%ax,	%ss

	movq	$0x7E00,	%rsp

//=======	load	cr3

/* Segment Selector Explanation:
0x08 (Binary 0000_1000): Index = 1 (points to the 2nd descriptor of the GDT, which is the kernel code segment), TI = 0 (using GDT), RPL = 00 (kernel privilege level).
0x10 (Binary 0001_0000): Index = 2 (points to the 3rd descriptor of the GDT, which is the kernel data segment), TI = 0, RPL = 00. 
*/

	movq	$0x101000,	%rax  // Load the physical address of the page table, 0x101000, into RAX
	movq	%rax,		%cr3   // Set the CR3 register to point to the base address of the page table
	movq	switch_seg(%rip),	%rax  // Obtain the address of entry64
	pushq	$0x08			// 将代码段选择子(0x08)压栈
	pushq	%rax			// 将entry64地址压栈
	lretq					// 长返回，跳转到64位代码,lretq的处理逻辑如下：从栈顶依次弹出RIP和CS,跳转到CS:RIP
//=======	64-bit mode code

switch_seg:
	.quad	entry64

entry64:
	movq	$0x10,	%rax
	movq	%rax,	%ds
	movq	%rax,	%es
	movq	%rax,	%gs
	movq	%rax,	%ss
	movq	$0xffff800000007E00,	%rsp		/* rsp address */

	// movq	go_to_kernel(%rip),	%rax		/* movq address */
	// pushq	$0x08
	// pushq	%rax
	// lretq

setup_IDT:
    leaq ignore_int(%rip),%rdx
	movq	$(0x08 << 16),%rax
	movw    %dx,%ax
	movq    $(0x8E00 << 32),%rcx
	addq    %rcx,%rax
	movl    %edx,%ecx
	/*
RAX = Part of the interrupt gate descriptor that has been included:
Low 16 bits: The low 16 bits of the function address
16-31 bits: Segment selector (0x08)
32-47 bits: Gate attribute (0x8E00)
	*/
	//提取函数地址的16-31位
	shrl    $16,%ecx
	//将地址的16-31位移到描述符的48-63位位置
	shlq	$48,%rcx
	//将地址的16-31位合并到中断门描述符中
	addq	%rcx,%rax
	shrq	$32,%rdx
	leaq    IDT_Table(%rip),%rdi
	movq    $256,%rcx

//Fill the interrupt descriptor (consisting of RAX and RDX, totaling 128 bits) into the IDT (Interrupt Descriptor Table)
rp_sidt:
	movq    %rax,(%rdi)
	//8(%rdi): This is a memory addressing expression, indicating that the base address is the one stored in the %rdi register, and then an offset of 8 bytes is added.
	movq    %rdx,8(%rdi)
	addq    $0x10,%rdi
	dec 	%rcx
	jne	rp_sidt

setup_TSS64:
	leaq	TSS64_Table(%rip),%rdx
	xorq	%rax,%rax
	xorq	%rcx,%rcx
	movq    $0x89,%rax
	shlq	$40,%rax
	movl    %edx,%ecx
	shrl	$24,%ecx
	// change here
	shlq    $56,%rcx
	addq	%rcx,%rax
	xorq	%rcx,%rcx
	movl    %edx,%ecx
	andl    $0xffffff,%ecx
	shlq	$16,%rcx
	addq	%rcx,%rax
	addq    $103,%rax
	leaq	GDT_Table(%rip),%rdi
	movq    %rax,64(%rdi)
	shrq	$32,%rdx
	movq    %rdx,72(%rdi)
	
	//Load the TSS segment selector
	//mov     $0x40,%ax
	//ltr     %ax

	movq    go_to_kernel(%rip),%rax
	pushq	$0x08
	pushq	%rax
	lretq

go_to_kernel:
	.quad	Start_Kernel

ignore_int:
	cld
	//清除方向标志位（Direction Flag），确保后续的操作不会因为方向标志位而出错
	pushq %rax
	pushq %rbx
	pushq %rcx
	pushq %rdx
	pushq %rbp
	pushq %rdi
	pushq %rsi
	pushq %r8
	pushq %r9
	pushq %r10
	pushq %r11
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15

	movq	%es,	%rax
	pushq	%rax
	movq	%ds,	%rax
	pushq	%rax
	//Set the new segment register value,so that it can go to kernel 
	movq	$0x10,	%rax
	movq 	%rax,	%ds
	movq	%rax,	%es

	leaq	int_msg(%rip),	%rax
	pushq	%rax
	//调用约定
	movq	%rax,%rdx
	movq	$0x00000000,%rsi
	movq	$0x00ff0000,%rdi
	movq	$0,%rax
	callq   color_printk
	// x86-64架构中，每个通用寄存器都是64位的，即8字节，所以在64位模式下，rsp的值是8的倍数
	addq	$0x8,%rsp


Loop:
	jmp	Loop
	popq	%rax
	movq	%rax,	%ds
	popq	%rax
	movq	%rax,	%es
	popq    %r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%rdx
	popq	%rcx
	popq	%rbx
	popq	%rax
	iretq
int_msg:
// This command allocates and stores a string at the current position indicated by the position counter.
// automatic put NULL at the end of the string
	.asciz	"Unkown Interrupt or fault at Rip,are you serious?\n"


//=======	init page
.align 8

.org	0x1000

__PML4E:

	.quad	0x102007
	.fill	255,8,0
	.quad	0x102007
	.fill	255,8,0

.org	0x2000

__PDPTE:
	
	.quad	0x103003
	.fill	511,8,0

.org	0x3000
//0x83 = 1(P) + 0(R/W) + 0(U/S) + 1(PWT) + 0(PCD) + 1(A) + 0(D) + 1(PS) + 0(G)
__PDE:

	.quad	0x000083	
	.quad	0x200083
	.quad	0x400083
	.quad	0x600083
	.quad	0x800083
	.quad	0xe0000083		/*0x a00000*/
	.quad	0xe0200083
	.quad	0xe0400083
	.quad	0xe0600083		/*0x1000000*/
	.quad	0xe0800083
	.quad	0xe0a00083
	.quad	0xe0c00083
	.quad	0xe0e00083
	.fill	499,8,0

//=======	GDT_Table

.section .data


/*
GDT expalin:
.quad 0x0020980000000000
Type byte: 0x98 = 10011000b
P = 1 (Segment exists)
DPL = 00 (Kernel privilege level)
S = 1 (Code/Data segment)
Type = 1000 (Executable, unreadable (the executability of code is controlled by the page table))
Flag byte: 0x20 = 00100000b
L = 1 (64-bit code segment)
D = 0 (Ignored) 
Corresponding selector: 0x08 (Index 1, TI = 0, RPL = 0)
.quad 0x0000920000000000
Type byte: 0x92 = 10010010b
P = 1 (Segment exists)
DPL = 00 (Kernel privilege level)
S = 1 (Code/Data segment)
Type = 0010 (Readable/writable, upward expandable)
Corresponding selector: 0x10 (Index 2, TI = 0, RPL = 0)
*/
.globl GDT_Table
GDT_Table:
	.quad	0x0000000000000000			/*0	NULL descriptor		       	00*/
	.quad	0x0020980000000000			/*1	KERNEL	Code	64-bit	Segment	08*/
	.quad	0x0000920000000000			/*2	KERNEL	Data	64-bit	Segment	10*/
	.quad	0x0020f80000000000			/*3	USER	Code	64-bit	Segment	18*/
	.quad	0x0000f20000000000			/*4	USER	Data	64-bit	Segment	20*/
	.quad	0x00cf9a000000ffff			/*5	KERNEL	Code	32-bit	Segment	28*/
	.quad	0x00cf92000000ffff			/*6	KERNEL	Data	32-bit	Segment	30*/
	.fill	10,8,0					/*8 ~ 9	TSS (jmp one segment <7>) in long-mode 128-bit 40*/
GDT_END:

GDT_POINTER:
//界限是从0开始计数的，类似于数组的索引，所以这里的界限是GDT_END - GDT_Table - 1
//GDT_END - GDT_Table 是GDT_Table的长度，减1是因为GDT_Table的长度是8的倍数，所以减1是为了让界限是8的倍数
GDT_LIMIT:	.word	GDT_END - GDT_Table - 1
GDT_BASE:	.quad	GDT_Table

//=======	IDT_Table

.globl IDT_Table

IDT_Table:
	.fill  512,8,0
IDT_END:

IDT_POINTER:
IDT_LIMIT:	.word	IDT_END - IDT_Table - 1
IDT_BASE:	.quad	IDT_Table

//=======	TSS64_Table

.globl	TSS64_Table

TSS64_Table:
	.fill  13,8,0
TSS64_END:

TSS64_POINTER:
TSS64_LIMIT:	.word	TSS64_END - TSS64_Table - 1
TSS64_BASE:	.quad	TSS64_Table

