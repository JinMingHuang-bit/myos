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
#define sti()       __asm__ __volatile__ ("sti \n\t":::"memory")
// disable interrupt
#define cli()	 	__asm__ __volatile__ ("cli	\n\t":::"memory")
/*nop:The program counter (PC) increments by one (indicating the next instruction) 
and consumes one instruction cycle of time.*/
#define nop()       __asm__ __volatile__ ("nop \n\t":::"memory")
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

static inline void list_init(struct List *list)
{
    list->next = list;
    list->prev = list;
}

static inline void list_add_to_behind(struct List *entry,struct List *new)
{
    new->next = entry->next;
    new->prev = entry;
    entry->next->prev = new;
    entry->next = new;
}
static inline void list_add_to_before(struct List *entry,struct List*new ){
    new->next = entry;
    new->prev = entry->prev;
    entry->prev->next = new;
    entry->prev = new;
}
static inline void list_del(struct List *entry){
    entry->prev->next = entry->next;
    entry->next->prev = entry->prev;
}

static inline long list_is_empty(struct List *entry){
    if (entry->next == entry && entry->prev == entry)
    {
        return 1;
    }else{
        return 0;
    }
}

static inline struct List *list_prev(struct List *entry){
    if (entry->prev != NULL)
    {
        return entry->prev;
    }else{
        return NULL;
    }
}

static inline struct List *list_next(struct List *entry){
    if (entry->next != NULL)
    {
        return entry->next;
    }else{
        return NULL;
    }
}
static inline void *memcpy(void *From,void *To,long Num){
    int d0,d1,d2;
    __asm__ __volatile__ ("cld \n\t"
        "rep \n\t"
        "movsq \n\t"
        "testb $4,%b4 \n\t"
        "je 1f \n\t"
        "movsl \n\t"
        "1: \n\t"
        "testb $2,%b4 \n\t"
        "je 2f \n\t"
        "movsw \n\t"
        "2:"
        "testb $1,%b4 \n\t"
        "je 3f \n\t"
        "movsb \n\t"
        "3:  \n\t"
        :"=&c"(d0),"=&D"(d1),"=&S"(d2)
        :"0"(Num/8),"q"(Num),"1"(To),"2"(From)
        :"memory"
    );
    return To;
}
static inline void * Cmemcpy(void *To, void *From, long Num)
{
    char *to = (char *)To;
    char *from = (char *)From;
    long remaining = Num;
    
    // 复制8字节块（64位）
    while (remaining >= 8) {
        *((long *)to) = *((long *)from);
        to += 8;
        from += 8;
        remaining -= 8;
    }
    
    // 检查是否需要复制4字节块
    if (remaining & 4) {
        *((int *)to) = *((int *)from);
        to += 4;
        from += 4;
    }
    
    // 检查是否需要复制2字节块
    if (remaining & 2) {
        *((short *)to) = *((short *)from);
        to += 2;
        from += 2;
    }
    
    // 检查是否需要复制1字节
    if (remaining & 1) {
        *to = *from;
    }
    
    return To;
}


// inline int memcmp(void* FirstPart,void* SecondPart,long Count){
//     register int __res;
//     __asm__ __volatile__ ("cld \n\t"      //clean direction
//         "repe \n\t"     // 重复执行下条指令直到ecx=0或ZF=0
//         "cmpsb \n\t"    // 比较[esi]和[edi]的字节，同时递增指针
//         "je 1f \n\t"     // 如果全部相等，跳转到标签1
//         "movl $1,%%eax \n\t" // 设置eax=1（FirstPart > SecondPart）
//         "jl 1f \n\t"    // 如果小于，跳转到标签1（保持eax=1）
//         "negl %%eax \n\t"   // 否则取反eax（eax=-1，FirstPart < SecondPart）
//         "1: \n\t"
//         :"=a"(__res)
//         :"0"(0),            //0：内存块相等
//         "D"(FirstPart),
//         "S"(SecondPart),
//         "c"(Count)
//         :
//     );
//     return __res;
// }

static inline int memcmp(void* FirstPart, void* SecondPart, long Count) {
    if (Count == 0) return 0;
    
    register int __res;
    __asm__ __volatile__ (
        "cld \n\t"
        "repe \n\t"
        "cmpsb \n\t"
        "jne 1f \n\t"
        "xorl %%eax, %%eax \n\t"  // 相等
        "jmp 2f \n\t"
        "1: \n\t"
        "movzbl -1(%%esi), %%edx \n\t"  // 第二个字符串的字符
        "movzbl -1(%%edi), %%eax \n\t"  // 第一个字符串的字符  
        "subl %%edx, %%eax \n\t"        // 计算差值
        "2: \n\t"
        :"=a"(__res)
        :"D"(FirstPart),
         "S"(SecondPart),
         "c"(Count)
        : "edx", "cc", "memory"
    );
    return __res;
}

static inline int Cmemcmp(void *FirstPart, void *SecondPart, long Count)
{
    unsigned char *p1 = (unsigned char *)FirstPart;
    unsigned char *p2 = (unsigned char *)SecondPart;
    
    // 逐字节比较
    while (Count-- > 0) {
        if (*p1 != *p2) {
            // 返回差值（符号表示大小关系）
            return (*p1 > *p2) ? 1 : -1;
        }
        p1++;
        p2++;
    }
    
    // 所有字节都相等
    return 0;
}

static inline void * memset(void *Address,unsigned char C,long Count){
    int d0,d1;
    //将单字节值复制到64位值的每个字节中
    unsigned long tmp=C*0x0101010101010101UL;
    __asm__ __volatile__ ("cld \n\t"
        "rep \n\t"
        "stosq \n\t"
        "testb $4,%b3 \n\t"
        "je 1f \n\t"
        "stosl \n\t"
        "1: \n\t"
        "testb $2,%b3 \n\t"
        "je 2f \n\t"
        "stosw \n\t"
        "2:"
        "testb $1,%b3 \n\t"
        "je 3f \n\t"
        "stosb \n\t"
        "3: \n\t"
        :"=&c"(d0),"=&D"(d1)
        :"a"(tmp),"q"(Count),"0"(Count/8),"1"(Address)
        :"memory"
    );
    return Address;
}
static inline void * Cmemset(void *Address, unsigned char C, long Count)
{
    unsigned char *ptr = (unsigned char *)Address;
    unsigned long pattern = C;
    
    // 扩展单字节到8字节模式（0x0101010101010101乘法效果）
    //这样可以用64位写入代替逐字节写入
    //按位或运算符（|）
    /*
    0 | 0 = 0
    0 | 1 = 1
    1 | 0 = 1
    1 | 1 = 1
    */
    pattern |= (pattern << 8);
    pattern |= (pattern << 16);
    pattern |= (pattern << 32);
    
    long remaining = Count;
    
    // 先按8字节块填充（64位）
    while (remaining >= 8) {
        *((unsigned long *)ptr) = pattern;
        ptr += 8;
        remaining -= 8;
    }
    
    // 检查是否需要填充4字节
    if (remaining & 4) {
        *((unsigned int *)ptr) = (unsigned int)pattern;
        ptr += 4;
    }
    
    // 检查是否需要填充2字节
    if (remaining & 2) {
        *((unsigned short *)ptr) = (unsigned short)pattern;
        ptr += 2;
    }
    
    // 检查是否需要填充1字节
    if (remaining & 1) {
        *ptr = C;
    }
    
    return Address;
}
static inline char * strcpy(char * Dest,char * Src){
    __asm__ __volatile__ (  "cld \n\t"
        "1: \n\t"
        "lodsb \n\t"
        "stosb \n\t"
        "testb %%al, %%al \n\t"
        "jne 1b \n\t"
        :
        :"S"(Src),"D"(Dest)
        :
    );
    return Dest ;
}
static inline char * Cstrcpy(char *Dest, char *Src)
{
    char *dest_ptr = Dest;
    char *src_ptr = Src;
    
    // 逐字节复制，直到遇到空字符
    do {
        *dest_ptr = *src_ptr;
        dest_ptr++;
        src_ptr++;
    } while (*(src_ptr - 1) != '\0');  // 检查刚刚复制的字符是否为结束符
    
    return Dest;
}
// lodsb作用: 从[ESI]加载一个字节到AL寄存器，并递增ESI
// stosb 作用: 将AL寄存器的值存储到[EDI]，并递增EDI

static inline char * strncpy(char * Dest,char * Src,long Count){
    __asm__ __volatile__( "cld \n\t"
        "1: \n\t"
        "decq %2 \n\t"
        "js 2f \n\t"
        "lodsb \n\t"
        "stosb  \n\t"
        "testb  %%al, %%al \n\t"
        "jne 1b \n\t"
        "rep \n\t"
        "stosb \n\t"
        "2: \n\t"
        :
        :"S"(Src),"D"(Dest),"c"(Count)
        :
        );
    return Dest;
}
static inline char * Cstrncpy(char *Dest, char *Src, long Count)
{
    char *dest_ptr = Dest;
    char *src_ptr = Src;
    long remaining = Count;
    
    // 复制字符直到遇到空字符或达到Count
    while (remaining > 0 && *src_ptr != '\0') {
        *dest_ptr++ = *src_ptr++;
        remaining--;
    }
    
    // 如果还有剩余空间，用空字符填充
    while (remaining > 0) {
        *dest_ptr++ = '\0';
        remaining--;
    }
    
    return Dest;
}

static inline  char * strcat(char * Dest,char * Src){
    __asm__ __volatile__("cld \n\t"
        "repne \n\t"
        "scasb \n\t"
        "decq %1 \n\t"
        "1: \n\t"
        "lodsb \n\t"
        "stosb \n\t"
        "testb  %%al , %%al\n\t"
        "jne 1b \n\t"
        :
        :"S"(Src),"D"(Dest),"a"(0),"c"(0xffffffff)
        :
        );
    return Dest;
}

static inline char * Cstrcat(char *Dest, char *Src)
{
    char *dest_ptr = Dest;
    
    // 找到Dest字符串的结尾（空字符位置）
    while (*dest_ptr != '\0') {
        dest_ptr++;
    }
    
    // 将Src字符串复制到Dest的结尾
    while (*Src != '\0') {
        *dest_ptr++ = *Src++;
    }
    
    // 添加字符串结束符
    *dest_ptr = '\0';
    
    return Dest;
}

static inline int strcmp(char * FirstPart,char * SecondPart)
{
    register int __res;
    __asm__ __volatile__    (   "cld    \n\t"
                    "1: \n\t"
                    "lodsb  \n\t"
                    "scasb  \n\t"
                    "jne    2f  \n\t"
                    "testb  %%al,   %%al    \n\t"
                    "jne    1b  \n\t"
                    "xorl   %%eax,  %%eax   \n\t"
                    "jmp    3f  \n\t"
                    "2: \n\t"
                    "movl   $1, %%eax   \n\t"
                    "jl 3f  \n\t"
                    "negl   %%eax   \n\t"
                    "3: \n\t"
                    :"=a"(__res)
                    :"D"(FirstPart),"S"(SecondPart)
                    :                   
                );
    return __res;
}

static inline int Cstrcmp(char *FirstPart, char *SecondPart)
{
    unsigned char *p1 = (unsigned char *)FirstPart;
    unsigned char *p2 = (unsigned char *)SecondPart;
    
    // 逐字节比较，直到遇到不相等的字符或字符串结束
    while (*p1 != '\0' && *p1 == *p2) {
        p1++;
        p2++;
    }
    
    // 返回差值（符号表示大小关系）
    if (*p1 == *p2) {
        return 0;  // 字符串完全相等
    } else if (*p1 < *p2) {
        return -1; // FirstPart < SecondPart
    } else {
        return 1;  // FirstPart > SecondPart
    }
}
/*
        string compare FirstPart and SecondPart with Count Bytes
        FirstPart = SecondPart =>  0
        FirstPart > SecondPart =>  1
        FirstPart < SecondPart => -1
*/

//same as linux code
static inline int strncmp(char * FirstPart,char * SecondPart,long Count)
{   
    register int __res;
    __asm__ __volatile__    (   "cld    \n\t"
                    "1: \n\t"
                    "decq   %3  \n\t"
                    "js 2f  \n\t"
                    "lodsb  \n\t"
                    "scasb  \n\t"
                    "jne    3f  \n\t"
                    "testb  %%al,   %%al    \n\t"
                    "jne    1b  \n\t"
                    "2: \n\t"
                    "xorl   %%eax,  %%eax   \n\t"
                    "jmp    4f  \n\t"
                    "3: \n\t"
                    "movl   $1, %%eax   \n\t"
                    "jl 4f  \n\t"
                    "negl   %%eax   \n\t"
                    "4: \n\t"
                    :"=a"(__res)
                    :"D"(FirstPart),"S"(SecondPart),"c"(Count)
                    :
                );
    return __res;
}

static inline int Cstrncmp(char *FirstPart, char *SecondPart, long Count)
{
    unsigned char *p1 = (unsigned char *)FirstPart;
    unsigned char *p2 = (unsigned char *)SecondPart;
    long remaining = Count;
    
    // 逐字节比较，直到遇到不相等的字符、字符串结束或达到Count
    while (remaining > 0 && *p1 != '\0' && *p1 == *p2) {
        p1++;
        p2++;
        remaining--;
    }
    
    // 如果达到Count限制或两个字符串都结束，返回0
    if (remaining == 0 || (*p1 == '\0' && *p2 == '\0')) {
        return 0;
    }
    
    // 返回差值（符号表示大小关系）
    if (*p1 < *p2) {
        return -1; // FirstPart < SecondPart
    } else if (*p1 > *p2) {
        return 1;  // FirstPart > SecondPart
    }
    
    return 0; 
}
/*

*/

static inline int strlen(char * String)
{
    register int __res;
    __asm__ __volatile__    (   "cld    \n\t"
                    "repne  \n\t"
                    "scasb  \n\t"
                    "notl   %0  \n\t"
                    "decl   %0  \n\t"
                    :"=c"(__res)
                    :"D"(String),"a"(0),"0"(0xffffffff)
                    :
                );
    return __res;
}

static inline int Cstrlen(char *String)
{
    char *ptr = String;
    
    // 遍历字符串直到遇到空字符
    while (*ptr != '\0') {
        ptr++;
    }
    
    // 计算长度（指针差值）
    return ptr - String;
}

//用于设置（置1）一个无符号长整型数中指定的位
static inline unsigned long bit_set(unsigned long *addr,unsigned long nr){
    return *addr | (1UL << nr);
}
//用于获取（读取）一个无符号长整型数中指定位的值。
static inline unsigned long bit_get(unsigned long *addr,unsigned long nr){
    return *addr & (1UL << nr);
}
//用于清除（置0）一个无符号长整型数中指定的位
static inline unsigned long bit_clean(unsigned long *addr,unsigned long nr){
    return *addr & (~(1UL << nr));
}

static inline unsigned char io_in8(unsigned short port){
    unsigned char ret=0;
    //mfence内存屏障指令，确保之前的I/O操作完成后才执行后续指令
    //inb 将指定端口的数据读入累加器的低8位（AL寄存器）,%0输出操作数占位符
    __asm__ __volatile__("inb %%dx,%0 \n\t"
            "mfence \n\t"
            :"=a"(ret)
            :"d"(port)
            :"memory"
        );
    return ret;
}

//short is 16bit
static inline unsigned short io_in16(unsigned short port)
{
    unsigned short ret = 0;
    __asm__ __volatile__(   "inw    %%dx,   %0  \n\t"
                "mfence         \n\t"
                :"=a"(ret)
                :"d"(port)
                :"memory");
    return ret;
}


static inline unsigned int io_in32(unsigned short port){
    unsigned int ret=0;
    __asm__ __volatile__("inl %%dx,%0 \n\t"
        "mfence \n\t"
        :"=a"(ret)
        :"d"(port)
        :"memory"
        );
    return ret;
}


static inline void io_out8(unsigned short port,unsigned char value){
    __asm__ __volatile__("outb %0 , %%dx  \n\t"
        "mfence \n\t"
        :
        :"a"(value),"d"(port)
        :"memory"
        );
}

static inline void io_out16(unsigned short port,unsigned short value){
    __asm__ __volatile__("outw %0 , %%dx  \n\t"
        "mfence \n\t"
        :
        :"a"(value),"d"(port)
        :"memory"
        );
}

static inline void io_out32(unsigned short port,unsigned int value){
    __asm__ __volatile__("outl %0 , %%dx  \n\t"
        "mfence \n\t"
        :
        :"a"(value),"d"(port)
        :"memory"
        );
}

#define port_insw(port,buffer,nr)   \
__asm__ __volatile__("cld \n\t"        /* 清除方向标志，地址递增 */ \
        "rep \n\t"                     /* 重复执行 */ \
        "insw \n\t"                    /* 从端口读取字到内存 */ \
        "mfence \n\t"                  /* 内存屏障 */ \
        :                              /* 无输出操作数 */ \
        :"d"(port),"D"(buffer),"c"(nr) /* 输入：端口、缓冲区、计数 */ \
        :"memory"                      /* 破坏：内存内容 */ \
    )

// #define port_outsw(port,buffer,nr) \
// __asm__ __volatile__("cld \n\t"
//         "rep \n\t"
//         "outsw \n\t"                    /* 从端口输出字到内存 */ 
//         "mfence \n\t"                  /* 内存屏障 */ 
//         :                              /* 无输出操作数 */ 
//         :"d"(port),"D"(buffer),"c"(nr) /* 输入：端口、缓冲区、计数 */ 
//         :"memory"                      /* 破坏：内存内容 */ 
//     )

#define port_outsw(port,buffer,nr) \
__asm__ __volatile__("cld \n\t rep \n\t outsw \n\t mfence \n\t" \
                     : \
                     :"d"(port),"D"(buffer),"c"(nr) \
                     :"memory" \
                    )

#endif