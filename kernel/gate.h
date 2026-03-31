#ifndef _GATE_H_
#define _GATE_H_

struct desc_struct
{ 
   unsigned char x[8];
};

struct gate_struct
{
   unsigned char x[16];
};
extern struct desc_struct GDT_Table[];
extern struct gate_struct IDT_Table[];
extern unsigned int TSS64_Table[26];
// set the interrupt gate
/*
This macro function is used to set the interrupt gate descriptor for the x86-64 architecture.
Parameter descriptions:
- gate_selector_addr: The memory address of the interrupt gate descriptor
- attr: The attribute bits of the interrupt gate
- ist: The index of the interrupt stack table
- code_addr: The code address of the interrupt handler 
x86-64 interrupt gate descriptor format (16 bytes):
+0-7 bytes: Low 64 bits - including the 0-31 bits of the code address, segment selector, IST, etc.
+8-15 bytes: High 64 bits - including the 32-63 bits of the code address, attributes, etc.
*/

#define _set_gate(gate_selector_addr, attr, ist, code_addr) \
do \
{ \
    unsigned long __d0, __d1; \
    __asm__ __volatile__( \
        "movw %%dx, %%ax  \n\t"          /* Move the dx (segment selector) to ax */ \
        "andq $0x7, %%rcx \n\t"          /* Keep the last three bits of IST */ \
        "addq %4, %%rcx   \n\t"           \
        "shlq $32, %%rcx  \n\t"          /* Left shift 32 bits for high portion */ \
        "addq %%rcx, %%rax \n\t"         /* Combine into rax */ \
        "xorq %%rcx, %%rcx \n\t"         /* Clear rcx */ \
        "movl %%edx, %%ecx \n\t"         /* Move low 32 bits of edx to ecx */ \
        "shrq $16, %%rcx  \n\t"          /* Right shift 16 bits to get the high 16 bits */ \
        "shlq $48, %%rcx  \n\t"          /* Left shift 48 bits to the most significant bits */ \
        "addq %%rcx, %%rax \n\t"         /* Add to rax */ \
        "movq %%rax, %0    \n\t"         /* Store the low 64 bits */ \
        "shrq $32, %%rdx  \n\t"          /* Right shift rdx by 32 bits */ \
        "movq %%rdx, %1    \n\t"         /* Store the high 64 bits */ \
        : "=m"(*((unsigned long*)(gate_selector_addr))),  /*=m：Memory operand, writable*/ \
          "=m"(*(1 + (unsigned long *)(gate_selector_addr))),   /*&a：Using the rax/eax registers, early breaking of constraints
          &d：Using the rdx/edx registers, early breaking of constraints,Write the high 64 bits of the door descriptor to the memory location of gate_selector_addr + 8.*/\ 
          "=&a"(__d0), "=&d"(__d1) \
        : "i"(attr << 8), /*Shift the attribute field to the left by 8 bits. In the final 64-bit gate descriptor, the segment selector must be located in bits 16 to 31.*/\ 
          "3"((unsigned long)(code_addr)), \
          "2"(0x8 << 16), \
          "c"(ist)     /*rcx */ \
        :  "memory"); \
} while(0)

/*
Input 0: "i" (attr << 8)
i: Immediate value
attr << 8: Shift the attribute 8 bits to the left, preparing for subsequent bit operations
Input 1: "3" ((unsigned long)(code_addr))
3: Matches the 3rd output operand ("=&d"(__d1))
The code address is placed in the rdx register
Input 2: "2" (0x8 << 16)
2: Matches the 2nd output operand ("=&a"(__d0))
0x8 << 16: Kernel code segment selector shifted 16 bits to the left
*/ 


#define load_TR(n) \
do {              \
  __asm__ __volatile__( "ltr %%ax" \
    :         \
    : "a"(n << 3) \
    : "memory" );    \
}while (0)


// 使用示例和解释
/*
中断门描述符结构：
- 低64位（0-7字节）：[0-15]代码地址[0-15] + [16-31]段选择子 + [32-47]IST + [48-63]代码地址[16-31]
- 高64位（8-15字节）：[0-31]代码地址[32-63] + [40-47]属性 + [56-63]保留位

这个宏主要用于内核中设置中断处理程序的描述符，
是操作系统内核开发中设置IDT(中断描述符表)的关键函数
*/



static inline void set_intr_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0x8E, ist, addr);
}
/*
为什么需要加 static？
问题所在：
当你在头文件中定义了一个 inline 函数但不加 static：

多个 .c 文件 #include 这个头文件

每个 .c 文件都会获得函数的定义

链接时可能会出现：

重复定义错误（如果编译器生成了函数体）

未定义引用（如果编译器只内联了部分调用）

因编译器实现而异

编译器行为差异：
GCC：inline 函数默认具有外部链接，除非被声明为 static

不同编译标准和版本可能有不同行为

在 Linux 内核中，通常使用 static inline


*/
/*
Attribute Analysis: 0x8F
Binary: 1000 1111
Decomposition:
Bit 7 (P): 1 = Descriptor exists
Bits 6-5 (DPL): 00 = Privilege level 0 (Kernel mode)
Bit 4: 0 = Always 0 (32-bit gate is 0, 64-bit gate is 0)
Bits 3-0 (TYPE): 1111 = 0xF = 64-bit trap gate Purpose
Traps (exceptions) for the kernel privilege level
DPL = 0, only kernel code can call
Mainly used for exception handling (such as division by zero, page error, breakpoint exception, etc.)
*/
static inline void set_trap_gate(unsigned int n, unsigned char ist,void * addr){

    _set_gate(IDT_Table+n, 0x8F, ist, addr);

}
/*
Attribute Analysis: 0xEF
Binary: 1110 1111
Decomposition:
Bit 7 (P): 1 = Descriptor exists
Bits 6-5 (DPL): 11 = Privilege level 3 (User mode)
Bit 4: 0 = Fixed as 0
Bits 3-0 (TYPE): 1111 = 0xF = 64-bit trap gate Purpose
Trap gates accessible to user privilege level
DPL = 3, user programs can directly call (for example, through the INT instruction)
Mainly used for system calls or exceptions that can be triggered by user mode
*/
static inline void set_system_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0xEF, ist, addr);
}
/*
Attribute Analysis: 0xEE
Binary: 1110 1110
Decomposition:
Bit 7 (P): 1 = Descriptor exists
Bits 6-5 (DPL): 11 = Privilege level 3 (User mode)
Bit 4: 0 = Fixed as 0
Bits 3-0 (TYPE): 1110 = 0xE = 64-bit Interrupt Gate Purpose
Interrupt gate accessible to user privilege level
DPL = 3, user program can directly call it
The difference between interrupt gate and trap gate:
Interrupt gate: When executed, the IF flag will be cleared (interrupts are disabled)
Trap gate: When executed, the IF flag remains unchanged (interrupts may be allowed)
*/
static inline void set_system_intr_gate(unsigned int n,unsigned char ist,void * addr)	//int3
{
	_set_gate(IDT_Table + n , 0xEE , ist , addr);	//P,DPL=3,TYPE=E
}

void set_tss64(unsigned long rsp0,unsigned long rsp1,unsigned long rsp2,unsigned long ist1,unsigned long ist2,unsigned long ist3,
unsigned long ist4,unsigned long ist5,unsigned long ist6,unsigned long ist7)
{
  //set the privilege level
	*(unsigned long *)(TSS64_Table+1) = rsp0;
	*(unsigned long *)(TSS64_Table+3) = rsp1;
	*(unsigned long *)(TSS64_Table+5) = rsp2;
  //set the stack pointer
	*(unsigned long *)(TSS64_Table+9) = ist1;
	*(unsigned long *)(TSS64_Table+11) = ist2;
	*(unsigned long *)(TSS64_Table+13) = ist3;
	*(unsigned long *)(TSS64_Table+15) = ist4;
	*(unsigned long *)(TSS64_Table+17) = ist5;
	*(unsigned long *)(TSS64_Table+19) = ist6;
	*(unsigned long *)(TSS64_Table+21) = ist7;	
}

#endif