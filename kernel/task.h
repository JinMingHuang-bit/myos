#include "lib.h"
#include "memory.h"

#define TASK_RUNNING		(1 << 0)
#define TASK_INTERRUPTIBLE	(1 << 1)
#define	TASK_UNINTERRUPTIBLE	(1 << 2)
#define	TASK_ZOMBIE		(1 << 3)	
#define	TASK_STOPPED		(1 << 4)
//32kb
#define STACK_SIZE 32768

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
    struct Page * pgd_page;
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
//linux原版实现
/*
联合体中的所有成员共享同一块内存空间。这里 task 和 stack 占据相同的起始地址，大小取最大成员的大小（通常是栈数组的大小）。这样设计的目的：
1.节省内存：每个进程既需要 task_struct（存储进程状态、调度信息等），又需要独立的内核栈（用于内核态函数调用）。将它们重叠放在一个内存块中，可以避免为两者单独分配内存。
2.方便管理：内核只需分配一个 task_union 大小的连续物理页（通常 8KB 或 16KB），该内存块的底部（或顶部）放 task_struct，其余部分作为栈使用。
*/
union task_union
{
    struct task_struct task;
    unsigned long stack[STACK_SIZE / sizeof(unsigned long)];
}__attribute__((aligned(8)));
