#include"task.h"
#include"gate.h"
#include"printk.h"
#include"lib.h"

static inline void __switch_to(struct task_struct *prev,struct task_struct *next){
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
    init_mm.end_rodata=&_erodata;
    init_mm.start_brk=0;
    init_mm.end_brk=memory_management_struct.end_brk;
    init_mm.start_stack=_stack_start;
    
    //init_thread
    set_tss64(init_thread.rsp0,init_tss[0].rsp1,init_tss[0].rsp2,init_tss[0].ist1,init_tss[0].ist2,init_tss[0].ist3,
    init_tss[0].ist4,init_tss[0].ist5,init_tss[0].ist6,init_tss[0].ist7);
    
    init_tss[0].rsp0=(unsigned long)(init_thread.rsp0);
    list_init(&init_task_union.task.list);
    //implement kernel_thread to create process
    
    //--------------------------
    init_task_union.task.state=TASK_RUNNING;
    p=container_of(list_next(&current->list),struct task_struct,list);
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