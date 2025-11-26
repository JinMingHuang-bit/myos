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
    xchgq %rax, (%rsp)