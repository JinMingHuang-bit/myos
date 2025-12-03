#include <linkage.h>

R15 = 0x00
R14 = 0x08
R13 = 0x10
R12 = 0x18
R11 = 0x20
R10 = 0x28
R9 = 0x30
R8 = 0x38
RBX= 0x40
RCX= 0x48
RDX= 0x50
RSI= 0x58
RDI= 0x60
RBP= 0x68
DS= 0x70
ES= 0x78
RAX= 0x80
FUNC=0x88
ERRCODE=0x90
RIP=0x98
CS=0xA0
RFLAGS=0xA8
OLDRSP=0xB0
OLDSS=0xB8

RESTORE_ALL:
    popq %r15;
    popq %r14;
    popq %r13;
    popq %r12;
    popq %r11;
    popq %r10;
    popq %r9;
    popq %r8;
    popq %rbx;
    popq %rcx;
    popq %rdx;
    popq %rsi;
    popq %rdi;
    popq %rbp;
    popq %rax;
    movq %rax, %ds;
    popq %rax;
    movq %rax, %es;
    popq %rax;
    addq $0x10, %rsp;
    iretq;

ENTRY(divide_error)
    pushq $0
    pushq %rax
    leaq do_divide_error(%rip), %rax
    //(%rsp) is a pointer,point to 栈顶指针 RSP 寄存器所指向的内存地址中的内容
    xchgq %rax, (%rsp)
/*
bp 寄存器:SP,BP一般与段寄存器SS 联用，以确定堆栈寄存器中某一单元的地址，
SP用以指示栈顶的偏移地址，而BP可 作为堆栈区中的一个基地址，用以确定在堆栈中的操作数地址

*/

error_code:
    pushq %rax
    movq  %es,%rax
    pushq %rax
    movq  %ds,%rax
    pushq %rax
    xorq  %rax,%rax

    pushq %rbp
    pushq %rdi
    pushq %rsi
    pushq %rdx
    pushq %rcx
    pushq %rbx
    pushq %r8
    pushq %r9
    pushq %r10
    pushq %r11
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15

    /*
    将错误码和栈指针分别存入RSI和RDX,供异常处理函数使用
    */

    cld
    movq ERRCODE(%rsp),%rsi
    movq RIP(%rsp),%rdx

    movq $0x10,%rdi
    movq %rdi,%ds
    movq %rdi,%es
    movq %rsp,%rdi
    callq *%rdx
    jmp ret_from_exception

// 还原被中断程序的现场
ret_from_exception:
ENTRY(ret_from_intr)
    jmp RESTORE_ALL

ENTRY(nmi)
    pushq %rax
    cld
    pushq %rax

    pushq %rax
    movq %es,%rax
    pushq %rax
    movq %ds,%rax
    pushq %rax
    xorq %rax,%rax

    pushq %rbp
    pushq %rdi
    pushq %rsi
    pushq %rdx
    pushq %rcx
    pushq %rbx
    pushq %r8
    pushq %r9
    pushq %r10
    pushq %r11
    pushq %r12
    pushq %r13
    pushq %r14
    pushq %r15

    movq $0x10,%rdx
    movq %rdx,%ds
    movq %rdx,%es

    movq $0,%rdi
    movq %rsp,%rsi
    callq do_nmi
    jmp RESTORE_ALL