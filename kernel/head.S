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
	pushq	$0x08			// Push the code segment selector (0x08) onto the stack
	pushq	%rax			// Push the entry64 address onto the stack
	lretq					// Return to the 64-bit code. The processing logic of lretq is as follows: Pop RIP and CS from the stack top one by one, and then jump to CS:RIP.
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
	//A program for simple interrupt handling
    leaq ignore_int(%rip),%rdx
	//RAX is initialized to 0x0008 0000 0000 0000 (segment selector 0x08 shifted 16 bits to the left)
	movq	$(0x08 << 16),%rax
	//Store the low 16 bits of the ignore_int address (DX) into the low 16 bits of RAX.
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
	//Extract the 16-31 bits of the function address
	shrl    $16,%ecx
	//Move the 16th to 31st bits of the address to the 48th to 63rd positions of the descriptor.
	shlq	$48,%rcx
	//Merge the 16th to 31st bits of the address into the interrupt gate descriptor.
	addq	%rcx,%rax
	shrq	$32,%rdx
	/*
At this point, an interrupt gate descriptor has been constructed:
RAX: The lower 64 bits of the descriptor (bits 0-63)
RDX: The upper 64 bits of the descriptor (bits 64-127), where:
Bits 64-95: The high 32 bits of the handler function address
Bits 96-127: Reserved (0)
	*/
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
	/Load the base address of TSS (TSS64_Table) into the RDX register.
	//Reset the RAX and RCX registers for subsequent descriptor construction.
	leaq	TSS64_Table(%rip),%rdx
	xorq	%rax,%rax
	xorq	%rcx,%rcx
	/*
	0x89 = 10001001b is the type field of the TSS descriptor:
P = 1 (Segment exists)
DPL = 00 (Descriptor privilege level 0)
Type = 1001 (64-bit TSS available state)
	*/
	movq    $0x89,%rax
	//Shift left by 40 positions and place this byte at positions 40 to 47.
	shlq	$40,%rax
	/*
	Extract the high 8 bits (bits 24-31) of the TSS base address.
Shift left by 56 bits and place it in positions 56-63 (the 7th byte of the descriptor).
Merge it into RAX.
*/
	movl    %edx,%ecx
	shrl	$24,%ecx
	shlq    $56,%rcx
	addq	%rcx,%rax
	/*
	Extract the low 24 bits (bits 0-23) of the TSS base address.
Shift left by 16 bits and place it at positions 16-39 (the 2nd-4th bytes of the descriptor).
Merge it into RAX.
	*/
	xorq	%rcx,%rcx
	movl    %edx,%ecx
	andl    $0xffffff,%ecx
	shlq	$16,%rcx
	addq	%rcx,%rax
	//The boundary for adding TSS is 103 (104 bytes - 1). The boundary is placed in bits 0-15.
	addq    $103,%rax
	/*
At this point, RAX contains the lower 64 bits of the TSS descriptor:
Bits 0-15: Limit 103
Bits 16-39: Lower 24 bits of the TSS base address
Bits 40-47: Type 0x89
Bits 48-55: Upper 4 bits of the limit + flag bit (here it is 0)
Bits 56-63: 24-31 bits of the TSS base address
	*/
	/*
	Load the base address of GDT into RDI.
Write the lower 64 bits of the descriptor into the GDT offset 64 bytes.
In the GDT, each descriptor is 8 bytes, and the offset 64 bytes corresponds to the 8th descriptor (counting from 0).
	*/
	leaq	GDT_Table(%rip),%rdi
	movq    %rax,64(%rdi)
	/*
	Shift the TSS base address 32 bits to the right to obtain the high 32 bits.
Write it at the offset of 72 bytes in the GDT, serving as the high 64 bits of the descriptor.
	*/
	shrq	$32,%rdx
	movq    %rdx,72(%rdi)
	/*
A 16-byte TSS descriptor has been successfully created:
Addresses 64-71: The lower 64 bits (including the lower 32 bits of the base address, the limit, and the type)
Addresses 72-79: The upper 64 bits (including the upper 32 bits of the base address)
	*/
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

.org	0x1000 //Tell the assembler that the subsequent code should be stored starting from the physical address 0x1000, that is, 0x101000.

__PML4E:
	//The existence bit P = 1, the readable and writable bit RW = 1, and the user-accessible bit US = 1.
	.quad	0x102007 //This is the data for writing to the first entry (index 0) and the 257th entry (index 256) of the PML4 table
	.fill	255,8,0  // Fill 255 entries (each 8 bytes) with 0. This makes the entries with indices 1-255 empty.
	.quad	0x102007 // Map the high half of the kernel address (starting from virtual address 0xffff800000000000) to the same physical memory
	.fill	255,8,0

.org	0x2000

__PDPTE:
	
	.quad	0x103003
	.fill	511,8,0

.org	0x3000
//0x83 = 1(P) + 0(R/W) + 0(U/S) + 1(PWT) + 0(PCD) + 1(A) + 0(D) + 1(PS) + 0(G)
__PDE:

	.quad	0x000083	
	.quad	0x200083		//0x000000- 0x1FFFFF(2MB)
	.quad	0x400083		//0x200000- 0x3FFFFF(2MB)
	.quad	0x600083
	.quad	0x800083
	.quad	0xe0000083		/*0x a00000,video memory*/
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
//The boundaries are counted starting from 0, similar to the indices of an array. Therefore, the boundaries here are GDT_END - GDT_Table - 1.
//GDT_END - GDT_Table It is the length of GDT_Table, minus 1 because the length of GDT_Table is a multiple of 8, so subtracting 1 is done to ensure the boundary is a multiple of 8.
GDT_LIMIT:	.word	GDT_END - GDT_Table - 1
GDT_BASE:	.quad	GDT_Table

//=======	IDT_Table
//Declare IDT_Table as a global symbol, allowing other assembly files or the linker to access it.。
.globl IDT_Table

IDT_Table:
	//Allocate 512 entries, each occupying 8 bytes, and initialize all of them to 0.
	//Each entry corresponds to an interrupt vector (such as exceptions, hardware interrupts, system calls).
	.fill  512,8,0
IDT_END:

IDT_POINTER:
IDT_LIMIT:	.word	IDT_END - IDT_Table - 1
//In 64-bit mode, the base address of the IDT is 64 bits, so quad needs to be used to define IDT_BASE
IDT_BASE:	.quad	IDT_Table

//=======	TSS64_Table

.globl	TSS64_Table
/*
Allocate 13 8-byte entries and initialize all of them to 0. The total size is 13 × 8 = 104 bytes.
In 64-bit mode, the TSS structure must contain at least the following key fields:
RSP0, RSP1, RSP2: Stack pointers for different privilege levels (each 8 bytes)
IST1 ~ IST7: Interrupt stack table pointers (each 8 bytes)
I/O mapping base address, etc.
This allocation of 104 bytes space complies with the minimum requirements of the x86-64 long mode TSS.
*/
TSS64_Table:
	.fill  13,8,0
TSS64_END:

TSS64_POINTER:
TSS64_LIMIT:	.word	TSS64_END - TSS64_Table - 1
TSS64_BASE:	.quad	TSS64_Table

