//also the head protection
#ifndef _LIB_H_
#define _LIB_H_

#define NULL 0
/*&(((type *)0)->member)
将地址0强制转换为type*类型

访问该结构体的member成员

取该成员的地址

结果: 得到member在结构体中的偏移量（因为基地址为0）

 (unsigned long)p - (unsigned long)&(((type *)0)->member)
从成员的实际地址中减去该成员在结构体中的偏移量

结果: 得到整个结构体的起始地址
*/

// allow interrupt 
/*As for memory modification, 
Make sure that before executing this sti/cli/nop instruction, 
all modifications to the memory in the C/C++ code have actually been written to the memory, 
rather than remaining in the register cache.
 At the same time, it will also prevent the compiler from mistakenly using the old values 
 of the cached memory in the registers after this assembly instruction.
*/
#define sti()       __asm__ __volatile__("sti \n\t":::"memory")
// disable interrupt
#define cli()	 	__asm__ __volatile__ ("cli	\n\t":::"memory")
/*nop:The program counter (PC) increments by one (indicating the next instruction) 
and consumes one instruction cycle of time.*/
#define nop()       __asm__ __volatile__("nop \n\t":::"memory")
//确保所有在 mfence 指令之前发出的内存加载（load/读）和存储（store/写）操作，
//都在 mfence 指令之后发出的任何内存操作之前完成
#define io_mfence() 	__asm__ __volatile__ ("mfence	\n\t":::"memory")
#define container_of(ptr,type,member)							\
({											\
	typeof(((type *)0)->member) * p = (ptr);					\
	(type *)((unsigned long)p - (unsigned long)&(((type *)0)->member));		\
})

struct List
{
    struct List *next;
    struct List *prev;
};

inline void list_init(struct List *list)
{
    list->next = list;
    list->prev = list;
}

inline void list_add_to_behind(struct List *entry,struct List *new)
{
    new->next = entry->next;
    new->prev = entry;
    entry->next->prev = new;
    entry->next = new;
}
inline void list_add_to_before(struct List *entry,struct List*new ){
    new->next = entry;
    new->prev = entry->prev;
    entry->prev->next = new;
    entry->prev = new;
}
inline void list_del(struct List *entry){
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

inline long list_is_empty(struct List *entry){
    if (entry->next == entry && entry->prev == entry)
    {
        return 1;
    }else{
        return 0;
    }
}

inline struct List *list_prev(struct List *entry){
    if (entry->prev != NULL)
    {
        return entry->prev;
    }else{
        return NULL;
    }
}

inline struct List *list_next(struct List *entry){
    if (entry->next != NULL)
    {
        return entry->next;
    }else{
        return NULL;
    }
}
inline void *memcpy(void *From,void *To,long Num){
    int d0,d1,d2;
    __asm__ __volatile__(
        "cld \n\t"
        "rep \n\t"
        "movsq \n\t"
        "testb $4,%b4 \n\t"
        "jz 1f \n\t"
        "movsl \n\t"
        "1:"
        "testb $2,%b4 \n\t"
        "jz 2f \n\t"
        "movsw \n\t"
        "2:"
        "testb $1,%b4 \n\t"
        "jz 3f \n\t"
        "movsb \n\t"
        "3:"
        :"=&c"(d0),"=&D"(d1),"=&S"(d2)
        :"0"(Num/8),"q"(Num),"1"(To),"2"(From)
        :"memory"
    );
    return To;
}
#endif