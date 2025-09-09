.section  .data
// global  means external to other files
.globl	GDT_Table

GDT_Table:
    .quad	0x0000000000000000
    .quad	0x0020980000000000
    .quad	0x0000920000000000
    .quad   0x0020f80000000000
    .quad	0x0000f20000000000
    .quad	0x00cf9a000000ffff
    .quad	0x00cf92000000ffff
    .fill   10,8,0

GDT_END:

GDT_POINTER:
GDT_LIMIT: .word GDT_END - GDT_Table - 1    
GDT_BASE:  .quad GDT_Table

.globl	IDT_Table

IDT_Table:
	//an error occur because this caused the address counter to advance too far, exceeding the address that the subsequent .org 0x1000 instruction intended to set.
    .fill 511, 8, 0
IDT_END:

IDT_POINTER:
IDT_LIMIT: .word IDT_END - IDT_Table - 1
IDT_Base:  .quad IDT_Table

.globl	TSS64_Table

TSS64_Table:
    .fill 13,8,0
TSS64_END:

TSS64_POINTER:
TSS64_LIMIT: .word TSS64_END - TSS64_Table - 1
TSS64_BASE:  .quad TSS64_Table
    
// init page
// Ensure that the following data is 8-byte aligned.
.align	8

.org 0x1000

__PML4E:
    // quad define data
    // The first PML4 entry points to PDPT (0x2000), with the flag 007 indicating Present, Writable, and User.
    .quad	0x102007
    .fill   255,8,0
    .quad   0x102007
    .fill   255,8,0

.org		0x2000

__PDPTE:
    //  The first PDPT entry points to PD (0x3000) with the flag bit 003 for Present, Writable
    .quad	0x103003
	.fill   511,8,0

.org		0x3000

__PDE:
    // 1MB large Page map with flag bit 83 for Present, Writable, and Page Size
    .quad	0x000083
    .quad	0x200083
    .quad	0x400083
    .quad	0x600083
    .quad	0x800083
    // 0x a00000
    // A large 1MB page starting at 0xe00000
    .quad	0xe0000083
    .quad	0xe0200083
    .quad	0xe0400083
    // 0x1000000
    .quad	0xe0600083
    .quad	0xe0800083
    .quad	0xe0a00083
    .quad	0xe0c00083
    .quad	0xe0e00083
    .fill   499,8,0  
    
.section .text

.globl _start

_start:
    // 0x10 is a segment selector
    // 0x100000
    mov $0x10,%ax
    mov %ax,%ds
    mov %ax,%es
    mov %ax,%fs
    mov %ax,%ss
    mov $0x7E00,%esp
    // load GDTR
    lgdt GDT_POINTER(%rip)
    // load IDTR
    lidt IDT_POINTER(%rip)
    
    mov $0x10,%ax
    mov %ax,%ds
    mov %ax,%es
    mov %ax,%fs
    mov %ax,%gs
    mov %ax,%ss
    //  movq mean move 64bit 
    
    movq	$0x7E00, %rsp
    // load cr3,cr3 is used to store the physical address of the top-level page table (PML4/PDPT) of the current process
    movq	$0x101000,%rax
    movq	%rax,%cr3	
    // rip is Instruction Pointer Register
    movq	switch_seg(%rip),%rax 
    pushq	$0x08
	pushq	%rax
	lretq
    
switch_seg:
    .quad	entry64

entry64:
    movq	$0x10,%rax
    movq	%rax, %ds
    movq	%rax, %es
    movq	%rax, %ss
    movq	%rax, %gs
    movq	$0xffff800000007E00, %rsp

    movq	go_to_kernel(%rip), %rax
    pushq	$0x08
    pushq	%rax
    lretq
    
    
go_to_kernel:
    .quad	Start_Kernel
