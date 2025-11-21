#ifndef _GATE_H_
#define _GATE_H_

// set the interrupt gate
/*
这个宏函数用于设置x86-64架构的中断门描述符(Interrupt Gate Descriptor)
参数说明：
- gate_selector_addr: 中断门描述符的内存地址
- attr: 中断门的属性位
- ist: 中断栈表索引
- code_addr: 中断处理程序的代码地址

x86-64中断门描述符格式（16字节）：
+0-7字节：低64位 - 包含代码地址的0-31位、段选择子、IST等
+8-15字节：高64位 - 包含代码地址的32-63位、属性等
*/

#define _set_gate(gate_selector_addr, attr, ist, code_addr) \
do \
{ \
    unsigned long __d0, __d1; \
    __asm__ __volatile__( \
        "movw %%dx, %%ax  \n\t"          /* 将dx(段选择子)移到ax */ \
        "andq $0x7, %%rcx \n\t"          /* 保留IST的低3位 */ \
        "addq %4, %%rcx   \n\t"           \
        "shlq $32, %%rcx  \n\t"          /* 左移32位准备高位 */ \
        "addq %%rcx, %%rax \n\t"         /* 合并到rax */ \
        "xorq %%rcx, %%rcx \n\t"         /* 清空rcx */ \
        "movl %%edx, %%ecx \n\t"         /* 将edx低32位移到ecx */ \
        "shrq $16, %%rcx  \n\t"          /* 右移16位获取高16位 */ \
        "shlq $48, %%rcx  \n\t"          /* 左移48位到最高位 */ \
        "addq %%rcx, %%rax \n\t"         /* 添加到rax */ \
        "movq %%rax, %0    \n\t"         /* 存储低64位 */ \
        "shrq $32, %%rdx  \n\t"          /* 将rdx右移32位 */ \
        "movq %%rdx, %1    \n\t"         /* 存储高64位 */ \
        : "=m"(*((unsigned long*)(gate_selector_addr))), \
          "=m"(*(1 + (unsigned long *)(gate_selector_addr))), \
          "=&a"(__d0), "=&d"(__d1) \
        : "i"(attr << 8), \
          "3"((unsigned long)(code_addr)), \
          "2"(0x8 << 16), \
          "c"(ist) \
        : "cc", "memory"); \
} while(0)

// 使用示例和解释
/*
中断门描述符结构：
- 低64位（0-7字节）：[0-15]代码地址[0-15] + [16-31]段选择子 + [32-47]IST + [48-63]代码地址[16-31]
- 高64位（8-15字节）：[0-31]代码地址[32-63] + [40-47]属性 + [56-63]保留位

这个宏主要用于内核中设置中断处理程序的描述符，
是操作系统内核开发中设置IDT(中断描述符表)的关键函数
*/

inline void set_intr_gate(unsigned int n, unsigned char ist,void * addr){
    
}
#endif