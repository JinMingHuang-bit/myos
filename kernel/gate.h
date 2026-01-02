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
- code_addr: The code address of the interrupt handler program 
x86-64 interrupt gate descriptor format (16 bytes):
+0-7 bytes: Low 64 bits - including the 0-31 bits of the code address, segment selector, IST, etc.
+8-15 bytes: High 64 bits - including the 32-63 bits of the code address, attributes, etc.
*/
/*&a：Using the rax/eax registers, early breaking of constraints*/ 
/*&d：Using the rdx/edx registers, early breaking of constraints*/ 

// #define _set_gate(gate_selector_addr, attr, ist, code_addr) \
// do \
// { \
//     unsigned long __d0, __d1; \
//     __asm__ __volatile__( \
//         "movw %%dx, %%ax  \n\t"          /* Move the dx (segment selector) to ax */ \
//         "andq $0x7, %%rcx \n\t"          /* Keep the last three bits of IST*/ \
//         "addq %4, %%rcx   \n\t"           \
//         "shlq $32, %%rcx  \n\t"          /* Shift left by 32 bits to prepare for the higher bits */ \
//         "addq %%rcx, %%rax \n\t"         /* Merge into rax*/ \
//         "xorq %%rcx, %%rcx \n\t"         /* Clear rcx */ \
//         "movl %%edx, %%ecx \n\t"         /*Move the lower 32 bits of edx to ecx */ \
//         "shrq $16, %%rcx  \n\t"          /* Shift right by 16 bits to obtain the high 16 bits. */ \
//         "shlq $48, %%rcx  \n\t"          /* Shift left by 48 positions to the most significant bit. */ \
//         "addq %%rcx, %%rax \n\t"         /* Add to rax */ \
//         "movq %%rax, %0    \n\t"         /* Store the lower 64 bits */ \
//         "shrq $32, %%rdx  \n\t"          /* Shift the rdx register 32 bits to the right. */ \
//         "movq %%rdx, %1    \n\t"         /* Store the high 64 bits*/ \
//         : "=m"(*((unsigned long*)(gate_selector_addr))),  /*=m：Memory operand, writable*/ \
//           "=m"(*(1 + (unsigned long *)(gate_selector_addr))), \
//           "=&a"(__d0), "=&d"(__d1) \
//         : "i"(attr << 8), \
//           "3"((unsigned long)(code_addr)), \
//           "2"(0x8 << 16), \
//           "c"(ist)     /*rcx */ \
//         :  "memory"); \
// } while(0)

#define _set_gate(gate_selector_addr, attr, ist, code_addr) \
do \
{ \
    unsigned long __d0, __d1; \
    __asm__ __volatile__( \
        "movw %%dx, %%ax  \n\t"          /* Move the dx (segment selector) to ax */ \
        "andq $0x7, %%rcx \n\t"          /* Keep the last three bits of IST*/ \
        "addq %4, %%rcx   \n\t"          \
        "shlq $32, %%rcx  \n\t"          /* Shift left by 32 bits to prepare for the higher bits */ \
        "addq %%rcx, %%rax \n\t"         /* Merge into rax*/ \
        "xorq %%rcx, %%rcx \n\t"         /* Clear rcx */ \
        "movl %%edx, %%ecx \n\t"         /*Move the lower 32 bits of edx to ecx */ \
        "shrq $16, %%rcx  \n\t"          /* Shift right by 16 bits to obtain the high 16 bits. */ \
        "shlq $48, %%rcx  \n\t"          /* Shift left by 48 positions to the most significant bit. */ \
        "addq %%rcx, %%rax \n\t"         /* Add to rax */ \
        "movq %%rax, %0    \n\t"         /* Store the lower 64 bits */ \
        "shrq $32, %%rdx  \n\t"          /* Shift the rdx register 32 bits to the right. */ \
        "movq %%rdx, %1    \n\t"         /* Store the high 64 bits*/ \
        : "=m"(*(0 + (unsigned long*)(gate_selector_addr))),  /*=m：Memory operand, writable*/ \
          "=m"(*(1 + (unsigned long *)(gate_selector_addr))), \
          "=&a"(__d0), "=&d"(__d1) \
        : "i"(attr << 8), \
          "3"((unsigned long)(code_addr)), \
          "2"(0x8 << 16), \
          "c"(ist)     /*rcx */ \
        :  "memory"); \
} while(0)

/*
Input 0: "i" (attr << 8) 
i: Instant count 
attr << 8: Shift the attribute 8 bits to the left to prepare for subsequent bit operations. 
Input 1: "3"((unsigned long)(code_addr)) 
3: Match the third output operand ("=&d"(__d1)) 
Put the code address in the rdx register. 
Input 2: "2" (0x8 << 16) 
2: Match the second output operand ("=&a"(__d0)) 
0x8 << 16: Kernel code segment selector shifted left by 16 bits
*/ 



#define load_TR(n) \
do {              \
  __asm__ __volatile__( "ltr %%ax" \
    :         \
    : "a"(n << 3) \
    : "memory" );    \
}while (0)


// Usage Examples and Explanations /*
/*Interrupt Descriptor Structure:
- Lower 64 bits (0-7 bytes): [0-15] code address [0-15] + [16-31] segment selector + [32-47] IST + [48-63] code address [16-31]
- Upper 64 bits (8-15 bytes): [0-31] code address [32-63] + [40-47] attributes + [56-63] reserved bits 
This macro is mainly used to set the descriptor of the interrupt handler in the kernel.
It is a key function for setting the IDT (Interrupt Descriptor Table) in the development of the operating system kernel. */



static inline void set_intr_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0x8E, ist, addr);
}
/*
Why is static needed?
The problem:
When you define an inline function in a header file but do not add static: 
Multiple .c files #include this header file 
Each .c file will obtain the definition of the function. 
During the linking process, the following issues may occur: 
Re-definition error (if the compiler generates a function body) 
Undefined reference (if the compiler only inlined part of the call) 
Depending on the implementation of the compiler 
Compiler behavior differences:
GCC: Inline functions default to external linkage, unless declared as static. 
Different compilation standards and versions may exhibit different behaviors. 
In the Linux kernel, the keyword "static inline" is commonly used.
*/

static inline void set_trap_gate(unsigned int n, unsigned char ist,void * addr){

    _set_gate(IDT_Table+n, 0x8F, ist, addr);

}

static inline void set_system_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0xEF, ist, addr);
}

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