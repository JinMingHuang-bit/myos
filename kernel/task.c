#include"task.h"
#include"gate.h"
#include"printk.h"
#include"lib.h"
#include"ptrace.h"
#include"linkage.h"
void __switch_to(struct task_struct *prev,struct task_struct *next){
    init_tss[0].rsp0=(unsigned long)(next->thread->rsp0);
    set_tss64(init_tss[0].rsp0,init_tss[0].rsp1,init_tss[0].rsp2,init_tss[0].ist1,init_tss[0].ist2,init_tss[0].ist3,
    init_tss[0].ist4,init_tss[0].ist5,init_tss[0].ist6,init_tss[0].ist7);

    __asm__ __volatile__("movq %%fs,%0\n\t":"=a"(prev->thread->fs));
    __asm__ __volatile__("movq %%gs,%0\n\t":"=a"(prev->thread->gs));
    __asm__ __volatile__("movq %0,%%fs\n\t"::"a"(next->thread->fs));
    __asm__ __volatile__("movq %0,%%gs\n\t"::"a"(next->thread->gs));
    
    color_printk(WHITE,BLACK,"prev->thread->rsp0:%#018lx\n",prev->thread->rsp0);
    color_printk(WHITE,BLACK,"next->thread->rsp0:%#018lx\n",next->thread->rsp0);
}

void task_init(){ 
    struct task_struct *p=NULL;
    init_mm.pgd=(pml4t_t *)Global_CR3;
    init_mm.start_code=memory_management_struct.start_code;
    init_mm.end_code=memory_management_struct.end_code;
    init_mm.start_data=(unsigned long)&_data;
    init_mm.end_data=memory_management_struct.end_data;
    init_mm.start_rodata=(unsigned long)&_rodata;
    init_mm.end_rodata=(unsigned long)&_erodata;
    init_mm.start_brk=0;
    init_mm.end_brk=memory_management_struct.end_brk;
    init_mm.start_stack=_stack_start;
    
    //init_thread
    set_tss64(init_thread.rsp0,init_tss[0].rsp1,init_tss[0].rsp2,init_tss[0].ist1,init_tss[0].ist2,init_tss[0].ist3,
    init_tss[0].ist4,init_tss[0].ist5,init_tss[0].ist6,init_tss[0].ist7);
    
    init_tss[0].rsp0=(unsigned long)(init_thread.rsp0);
    list_init(&init_task_union.task.list);
    init_task_union.task.state=TASK_RUNNING;
    p=container_of(list_next(&current->list),struct task_struct,list);
    color_printk(WHITE,BLACK,"in task init");
    switch_to(current,p);
}

unsigned long init(unsigned long arg){
    color_printk(WHITE,BLACK,"init task is runing %#18lx\n",arg);
    return 1;
}

unsigned long do_exit(unsigned long arg){
    color_printk(WHITE,BLACK,"do_exit task is runing %#18lx\n",arg);
    while(1);
}

int kernel_thread(unsigned long (*fn)(unsigned long),unsigned long arg,unsigned long flags){ 
    struct pt_regs regs;
    Cmemset(&regs,0,sizeof(regs));
    regs.rbx=(unsigned long)fn;
    regs.rdx=(unsigned long)arg;
    color_printk(WHITE,BLACK, "in kernel_thread");
    regs.ds=KERNEL_DS;
    regs.cs=KERNEL_CS;
    regs.es=KERNEL_DS;
    regs.ss=KERNEL_DS;
    regs.rflags=(1<<9);
    regs.rip=(unsigned long)kernel_thread_func;
    //implement fork:
    return do_fork(&regs,flags,0,0);
}

unsigned long do_fork(struct pt_regs * regs,unsigned long clone_flags,unsigned long stack_start,unsigned long stack_size){
    struct task_struct *tsk=NULL;
    struct thread_struct *thd=NULL;
    struct Page *p=NULL;

    color_printk(WHITE,BLACK,"fork prepare to alloc_pages,bitmap:%#018lx\n",*memory_management_struct.bits_map);
    p=alloc_page(ZONE_NORMAL,1,PG_PTable_Maped|PG_Active|PG_Kernel);
    color_printk(WHITE,BLACK,"fork alloc_pages done,bitmap:%#018lx\n",*memory_management_struct.bits_map);
    tsk=(struct task_struct* )Phy_To_Virt(p->PHY_address);
    color_printk(WHITE,BLACK,"struct task_struct address:%#018lx\n",(unsigned long)tsk);
    Cmemset(tsk,0,sizeof(*tsk));
    *tsk=*current;

    list_init(&tsk->list);
    list_add_to_before(&init_task_union.task.list,&tsk->list);
    tsk->pid++;
    tsk->state=TASK_UNINTERRUPTIBLE;
    thd=(struct thread_struct*)(tsk+1);
    tsk->thread=thd;
    Cmemcpy(regs,(void *)((unsigned long)tsk+STACK_SIZE-sizeof(struct pt_regs)),sizeof(struct pt_regs));
    thd->rsp0=(unsigned long)tsk+STACK_SIZE;
    thd->rip=regs->rip;
    thd->rsp=(unsigned long)tsk+STACK_SIZE-sizeof(struct pt_regs);
    if(!(tsk->flags & PF_KTHREAD)){
        regs->rip=(unsigned long)ret_from_intr;
        thd->rip=regs->rip;
    }
    tsk->state=TASK_RUNNING;
    return 0;
}
//init and exit a process
void kernel_thread_func(void){
__asm__ __volatile__ (
    "popq %r15  \n\t"
    "popq %r14  \n\t"
    "popq %r13  \n\t"
    "popq %r12  \n\t"
    "popq %r11  \n\t"
    "popq %r10  \n\t"
    "popq %r9  \n\t"
    "popq %r8  \n\t"
    "popq %rbx  \n\t"
    "popq %rcx  \n\t"
    "popq %rdx  \n\t"
    "popq %rsi  \n\t"
    "popq %rdi  \n\t"
    "popq %rbp  \n\t"
    "popq %rax  \n\t"
    "movq %rax,%ds \n\t"
    "popq %rax  \n\t"
    "movq %rax,%es \n\t"
    "popq %rax  \n\t"
    "addq $0x38,%rsp \n\t"
    "movq %rdx,%rdi \n\t"
    "callq *%rbx \n\t"
    "movq %rax,%rdi \n\t"
    "callq do_exit \n\t"
);
}