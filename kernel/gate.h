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
        : "=m"(*((unsigned long*)(gate_selector_addr))),  /*=m：内存操作数，可写*/ \
          "=m"(*(1 + (unsigned long *)(gate_selector_addr))),   /*&a：使用rax/eax寄存器，早期破坏约束
          &d：使用rdx/edx寄存器，早期破坏约束*/\ 
          "=&a"(__d0), "=&d"(__d1) \
        : "i"(attr << 8), \
          "3"((unsigned long)(code_addr)), \
          "2"(0x8 << 16), \
          "c"(ist)     /*rcx */ \
        :  "memory"); \
} while(0)

/*
输入0："i"(attr << 8)

i：立即数

attr << 8：属性左移8位，为后续位操作做准备

输入1："3"((unsigned long)(code_addr))

3：匹配第3个输出操作数（"=&d"(__d1)）

代码地址放入rdx寄存器

输入2："2"(0x8 << 16)

2：匹配第2个输出操作数（"=&a"(__d0)）

0x8 << 16：内核代码段选择子左移16位

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

inline void set_intr_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0x8E, ist, addr);
}

inline void set_trap_gate(unsigned int n, unsigned char ist,void * addr){

    _set_gate(IDT_Table+n, 0x8F, ist, addr);

}

inline void set_system_gate(unsigned int n, unsigned char ist,void * addr){
    _set_gate(IDT_Table+n, 0xEF, ist, addr);
}

inline void set_system_intr_gate(unsigned int n,unsigned char ist,void * addr)	//int3
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