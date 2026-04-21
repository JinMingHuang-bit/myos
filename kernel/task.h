#ifndef _TASK_H_
#define _TASK_H_

#include "lib.h"
#include "memory.h"
#include "cpu.h"
#include "ptrace.h"
#include "printk.h"

#define TASK_RUNNING		(1 << 0)
#define TASK_INTERRUPTIBLE	(1 << 1)
#define	TASK_UNINTERRUPTIBLE	(1 << 2)
#define	TASK_ZOMBIE		(1 << 3)	
#define	TASK_STOPPED		(1 << 4)
//32kb
#define STACK_SIZE 32768
#define KERNEL_CS 	(0x08)
#define	KERNEL_DS 	(0x10)


#define CLONE_FS	(1 << 0)
#define CLONE_FILES	(1 << 1)
#define CLONE_SIGNAL	(1 << 2)

#define	USER_CS		(0x28)
#define USER_DS		(0x30)
#define PF_KTHREAD	(1 << 0)
extern char _text;
extern char _etext;
extern char _data;
extern char _edata;
extern char _rodata;
extern char _erodata;
extern char _bss;
extern char _ebss;
extern char _end;

extern unsigned long _stack_start;
extern void ret_from_intr();

struct task_struct
{
    //双向链表,用于连接各个进程结构体
    struct List list;
    //进程状态
    volatile long state;
    //进程,线程,内核进程
    unsigned long flags;
    //内存空间分布结构体,记录内存页表和程序段信息
    struct mm_struct *mm;
    //线程结构体
    struct thread_struct *thread;
    //进程地址范围限制,低于0xffff800000000000的地址为用户空间,高于等于0xffff800000000000的地址为内核空间
    unsigned long addr_limit;

    long pid;
    //进程优先级,时间片,信号量等调度相关的属性
    /*
    分时操作系统的原理是把cpu的运行时间划成一个个规定长度的时间片,counter递减到0时,进程的CPU时间片结束,进程被调度到就绪队列中,重新获取CPU时间片
    priority用于给counter赋值,在一个进程创建时counter被赋值为priority
    */
    long priority;
    long counter;
    //进程当前所收到信号的位图,共32个比特
    long signal;
};

struct mm_struct
{
    //page taable pointer,指向页表的物理地址
    // struct Page * pgd_page;
    pml4t_t * pgd;
    unsigned long start_code ,end_code,start_data,end_data;
    //只读数据段空间
    unsigned long start_rodata,end_rodata;
    unsigned long start_brk,end_brk;
    unsigned long start_stack;
};

struct thread_struct
{   unsigned long rsp0; //内核层栈基指针
    unsigned long rip;//内核层代码指针
    unsigned long rsp;//内核层当前栈指针
    unsigned long fs;
    unsigned long gs;
    unsigned long cr2;
    //产生异常的异常号
    unsigned long trap_nr;
    //异常的错误码
    unsigned long error_code;
};
struct thread_struct init_thread;
//linux原版实现
/*
联合体中的所有成员共享同一块内存空间。这里 task 和 stack 占据相同的起始地址，大小取最大成员的大小（通常是栈数组的大小）。这样设计的目的：
1.节省内存：每个进程既需要 task_struct（存储进程状态、调度信息等），又需要独立的内核栈（用于内核态函数调用）。将它们重叠放在一个内存块中，可以避免为两者单独分配内存。
2.方便管理：内核只需分配一个 task_union 大小的连续物理页（通常 8KB 或 16KB），该内存块的底部（或顶部）放 task_struct，其余部分作为栈使用。
一段连续的内存块   
--------------------   
|内核层栈空间(约31kb)| 
---------------------
| task_struct(大约1kb) |      
*/
union task_union
{
    struct task_struct task;
    unsigned long stack[STACK_SIZE / sizeof(unsigned long)];
}__attribute__((aligned(8)));

//在 64 位模式（Long Mode）下，tss其作用主要集中在 中断栈表（Interrupt Stack Table, IST）和 特权级 0 的栈指针 等关键信息的存储上。
struct tss_struct
{
    unsigned long reserved0;
    unsigned long rsp0;
    unsigned long rsp1;
    unsigned long rsp2;
    unsigned long reserved1;
    unsigned long ist1;
    unsigned long ist2;
    unsigned long ist3;
    unsigned long ist4;
    unsigned long ist5;
    unsigned long ist6;
    unsigned long ist7;
    unsigned long reserved2;
    unsigned short reserved3;
    unsigned short iomapbaseaddr;
}__attribute__((packed));//紧凑结构体,不进行内存对齐,确保布局正确性
struct mm_struct init_mm={0};
#define INIT_TASK(tsk)  \
{   \
    .state = TASK_UNINTERRUPTIBLE,      \
    .flags = PF_KTHREAD,             \
    .mm = &init_mm,       \
    .thread = &init_thread,  \
    .addr_limit = 0xffff800000000000,   \
    .pid = 0,   \
    .priority = 0, \
    .counter = 1,   \
    .signal = 0,    \
}
union task_union init_task_union __attribute__((__section__(".data.init_task"))) = {INIT_TASK(init_task_union.task)};

struct thread_struct init_thread={
    //init_task_union.stack + 元素个数 得到数组末尾的下一个位置（即 base + STACK_SIZE），也就是栈区域的最高地址 + 1,
    //这样第一次执行 push 时，RSP 先减 8,正好指向第一个元素的地址.
    .rsp0=(unsigned long)(init_task_union.stack + STACK_SIZE / sizeof(unsigned long)),
    .rsp=(unsigned long)(init_task_union.stack + STACK_SIZE / sizeof(unsigned long)), //内核栈顶地址
    //设置为 KERNEL_DS（内核数据段选择子），因为 idle 进程始终运行在内核态
    .fs=KERNEL_DS,
    .gs=KERNEL_DS,
    .cr2=0,
    .trap_nr=0,
    .error_code=0
};


#define INIT_TSS    \
{   .reserved0 = 0,  \
    .rsp0 = (unsigned long)(init_task_union.stack + STACK_SIZE / sizeof(unsigned long)), /*特权0123段栈指针*/ \
    .rsp1 = (unsigned long)(init_task_union.stack + STACK_SIZE / sizeof(unsigned long)),   \
    .rsp2 = (unsigned long)(init_task_union.stack + STACK_SIZE / sizeof(unsigned long)),   \
    .reserved1 = 0,  \
    .ist1 = 0xffff800000007c00,  /*中断栈表（IST）的 7 个栈指针*/ \
    .ist2 = 0xffff800000007c00,   \
    .ist3 = 0xffff800000007c00,   \
    .ist4 = 0xffff800000007c00,   \
    .ist5 = 0xffff800000007c00,   \
    .ist6 = 0xffff800000007c00,   \
    .ist7 = 0xffff800000007c00,   \
    .reserved2 = 0,  \
    .reserved3 = 0,  \
    .iomapbaseaddr = 0  /*I/O 许可位图基地址。用于控制进程对 I/O 端口的访问权限（在 IOPL 不足时检查位图）*/\
}
struct task_struct *init_task[NR_CPUS] ={&init_task_union.task,0};

struct tss_struct init_tss[NR_CPUS]={[0 ... NR_CPUS-1]=INIT_TSS};

//linux原版实现,算法解读:
/*
每个进程的内核栈大小是 STACK_SIZE（必须是 2 的幂，例如 8192 或 16384）。
栈的起始地址（最低地址）就是联合体的起始地址，也就是 task_struct 的地址。
当前 CPU 的 rsp 寄存器指向当前进程内核栈的某个位置（可能在栈的高地址处，因为栈向下增长）。
由于栈大小是 2 的幂，栈的起始地址一定是 STACK_SIZE 的整数倍。因此，将 rsp 的低 log2(STACK_SIZE) 位清零，就能得到栈的起始地址，即 task_struct 的地址。
输入部分："0" (~(STACK_SIZE - 1)) —— 使用与输出相同的寄存器（操作数编号 0）作为输入，初始值为 ~(STACK_SIZE - 1)。
这是一个掩码，例如若 STACK_SIZE = 8192，则 STACK_SIZE - 1 = 8191（二进制 0x1FFF），
取反后高位全 1，低 13 位全 0（...1111111111111111111111111111111111111111111111111110000000000000）。这个掩码用于清零 rsp 的低 13 位。
*/
struct task_struct *get_current()
{  
    struct task_struct *current ;   
    __asm__ __volatile__("andq %%rsp,%0 \n\t":"=r"(current):"0"(~((unsigned long)(STACK_SIZE - 1))));
    // __asm__ __volatile__ ("andq %%rsp,%0	\n\t":"=r"(current):"0"(~32767UL));
    return current;
}

// struct task_struct * get_current()
// {   color_printk(WHITE,BLACK,"in get_current 1\n");
// 	struct task_struct * current = NULL;
//     color_printk(WHITE,BLACK,"in get_current 2\n");
// 	__asm__ __volatile__ ("andq %%rsp,%0	\n\t":"=r"(current):"0"(~32767UL));
//     color_printk(WHITE,BLACK,"in get_current 3\n");
// 	return current;
// }

#define current get_current()
#define GET_CURRENT() \
"movq %rsp, %rbx \n\t" \
"andq $-32768, %rbx \n\t" 

void __switch_to(struct task_struct *prev,struct task_struct *next);

#define switch_to(prev,next)    \
do{             \
    __asm__ __volatile__("pushq %%rbp \n\t"            \
                          "pushq %%rax \n\t"             \
                          "movq %%rsp, %0 \n\t"           \
                          "movq %2, %%rsp \n\t"         \
                          "leaq 1f(%%rip), %%rax \n\t" \
                          "movq %%rax, %1 \n\t"     \
                          "call __switch_to \n\t"    \
                          "1:   \n\t"   \
                          "popq %%rax \n\t"     \
                          "popq %%rbp \n\t"     \
                    :"=m"(prev->thread->rsp),"=m"(prev->thread->rip)     \
                    :"m"(next->thread->rsp),"m"(next->thread->rip),"D"(prev),"S"(next)  \
                    :"memory", "rax", "rcx", "rdx","r8", "r9", "r10", "r11","rbx"\
    );      \
    color_printk(WHITE,BLACK,"finish switch_to \n");\
} while (0)

// #define switch_to(prev,next)                    \
// do {                                            \
//     color_printk(WHITE,BLACK,"in switch_to 1\n");\
//     __asm__ __volatile__(                       \
//         "pushq %%rbp\n\t"                       \
//         "pushq %%rax\n\t"                       \
//         "movq %%rsp, %0\n\t"                    \
//         "movq %2, %%rsp\n\t"                    \
//         "leaq 1f(%%rip), %%rax\n\t"             \
//         "movq %%rax, %1\n\t"                    \
//         "movq %4, %%rdi\n\t"    /* prev */      \
//         "movq %5, %%rsi\n\t"    /* next */      \
//         "call __switch_to\n\t"                  \
//         "1:\n\t"                                \
//         "popq %%rax\n\t"                        \
//         "popq %%rbp\n\t"                        \
//         : "=m"(prev->thread->rsp),              \
//           "=m"(prev->thread->rip)               \
//         : "m"(next->thread->rsp),               \
//           "m"(next->thread->rip),               \
//           "r"(prev),                            \
//           "r"(next)                             \
//         : "memory",                             \
//           "rax", "rcx", "rdx",                  \
//           "rsi", "rdi",                         \
//           "r8", "r9", "r10", "r11"              \
//     );                                          \
//     color_printk(WHITE,BLACK,"in switch_to 21\n");\
// } while(0)

unsigned long init(unsigned long arg);
unsigned long do_exit(unsigned long arg);
unsigned long do_fork(struct pt_regs * regs,unsigned long clone_flags,unsigned long stack_start,unsigned long stack_size);
int kernel_thread(unsigned long (*fn)(unsigned long),unsigned long arg,unsigned long flags);
extern void kernel_thread_func(void);
void task_init();

#endif