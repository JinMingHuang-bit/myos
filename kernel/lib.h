//also the head protection
#ifndef _LIB_H_
#define _LIB_H_

//#define NULL 0
#define NULL ((void *)0)

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
// Ensure that all memory loads (reads) and stores (writes) that are issued before the mfence instruction,
// are completed before any memory operations that are issued after the mfence instruction.
#define io_mfence() 	__asm__ __volatile__ ("mfence	\n\t":::"memory")
/*&(((type *)0)->member)
Convert the address 0 to the type *type 
Access the "member" member of this structure. 
Retrieve the address of this member 
Result: Obtained the offset of the member within the structure (since the base address is 0)

 (unsigned long)p - (unsigned long)&(((type *)0)->member)
Subtract the offset of the member in the structure from its actual address 
Result: Obtained the starting point of the entire structure.址
*/
#define container_of(ptr,type,member)							\
({											\
	typeof(((type *)0)->member) * p = (ptr);					\
	(type *)((unsigned long)p - (unsigned long)&(((type *)0)->member));		\
})

enum {
	false	= 0,
	true	= 1
};
//linux version
/**
 * container_of_linux - cast a member of a structure out to the containing structure
 * @ptr:	the pointer to the member.
 * @type:	the type of the container struct this is embedded in.
 * @member:	the name of the member within the struct.
 *
 * WARNING: any const qualifier of @ptr is lost.
 */

// Cancel definition (if any)
#undef offsetof
// Define offsetof as the compiler's inherent offsetof
#define offsetof(TYPE, MEMBER)	__builtin_offsetof(TYPE, MEMBER)

#define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
#define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
#define typeof_member(T, m)	typeof(((T*)0)->m)

#define container_of_linux(ptr, type, member) ({				\
	void *__mptr = (void *)(ptr);					\
	static_assert(__same_type(*(ptr), ((type *)0)->member) ||	\
		      __same_type(*(ptr), void),			\
		      "pointer type mismatch in container_of_linux()");	\
	((type *)(__mptr - offsetof(type, member))); })

/**
 * container_of_const - cast a member of a structure out to the containing
 *			structure and preserve the const-ness of the pointer
 * @ptr:		the pointer to the member
 * @type:		the type of the container struct this is embedded in.
 * @member:		the name of the member within the struct.
 */
#define container_of_const(ptr, type, member)				\
	_Generic(ptr,							\
		const typeof(*(ptr)) *: ((const type *)container_of_linux(ptr, type, member)),\
		default: ((type *)container_of_linux(ptr, type, member))	\
	)
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
    entry->next->prev = entry->prev;
	entry->prev->next = entry->next;
}

static inline long list_is_empty(struct List *entry){
    if (entry->next == entry && entry->prev == entry)
    {
        return true;
    }else{
        return false;
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
    
// Copy an 8-byte block (64-bit)
    while (remaining >= 8) {
        *((long *)to) = *((long *)from);
        to += 8;
        from += 8;
        remaining -= 8;
    }
    
// Check if a 4-byte block needs to be copied
    if (remaining & 4) {
        *((int *)to) = *((int *)from);
        to += 4;
        from += 4;
    }
    
// Check if a 2-byte block needs to be copied
    if (remaining & 2) {
        *((short *)to) = *((short *)from);
        to += 2;
        from += 2;
    }
    
// Check if a 1-byte copy is required
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
    
// Byte-by-byte comparison
    while (Count-- > 0) {
        if (*p1 != *p2) {
            // Return the difference (with the sign indicating the magnitude relationship)
            return (*p1 > *p2) ? 1 : -1;
        }
        p1++;
        p2++;
    }
    
    // All bytes are equal.
    return 0;
}

static inline void * memset(void *Address,unsigned char C,long Count){
    int d0,d1;
    // Copy the single-byte value to each byte of the 64-bit value
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
    
// Expand from single byte to 8-byte mode (multiplication effect of 0x0101010101010101)
// This allows 64-bit writing to replace byte-by-byte writing
// Bitwise OR operator (|)
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
    
    // First, fill in in 8-byte blocks (64 bits each)
    while (remaining >= 8) {
        *((unsigned long *)ptr) = pattern;
        ptr += 8;
        remaining -= 8;
    }
    
    // Check if 4 bytes need to be filled in
    if (remaining & 4) {
        *((unsigned int *)ptr) = (unsigned int)pattern;
        ptr += 4;
    }
    
    // Check if 2 bytes need to be filled in
    if (remaining & 2) {
        *((unsigned short *)ptr) = (unsigned short)pattern;
        ptr += 2;
    }
    
    // Check if a 1-byte filling is required
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
    
    // Copy byte by byte until encountering a null character.
    do {
        *dest_ptr = *src_ptr;
        dest_ptr++;
        src_ptr++;
    } while (*(src_ptr - 1) != '\0');  // Check whether the characters just copied are end-of-line characters
    
    return Dest;
}
// lodsb function: Loads a byte from [ESI] into the AL register and increments ESI
// stosb function: Stores the value in the AL register to [EDI] and increments EDI

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
    
    //Copy characters until encountering a blank character or reaching Count
    while (remaining > 0 && *src_ptr != '\0') {
        *dest_ptr++ = *src_ptr++;
        remaining--;
    }
    
    // If there is still remaining space, fill it with blank characters.
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
    
    //Find the end of the "Dest" string (the position of the null character)
    while (*dest_ptr != '\0') {
        dest_ptr++;
    }
    
    //Copy the Src string to the end of Dest
    while (*Src != '\0') {
        *dest_ptr++ = *Src++;
    }
    
    // Add string terminator
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
    
    // Compare byte by byte until encountering unequal characters or the end of the string.
    while (*p1 != '\0' && *p1 == *p2) {
        p1++;
        p2++;
    }
    
    // Return the difference (with the symbol indicating the magnitude relationship)
    if (*p1 == *p2) {
        return 0;  // The strings are exactly equal.
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
    
    // Compare byte by byte until encountering unequal characters, string termination, or reaching Count.
    while (remaining > 0 && *p1 != '\0' && *p1 == *p2) {
        p1++;
        p2++;
        remaining--;
    }
    
    // If the Count limit is reached or both strings have ended, return 0.
    if (remaining == 0 || (*p1 == '\0' && *p2 == '\0')) {
        return 0;
    }
    
    // Return the difference (with the symbol indicating the magnitude relationship)
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
    
    // Traverse the string until encountering a blank character
    while (*ptr != '\0') {
        ptr++;
    }
    
    // Calculate the length (i.e., the difference between pointers)
    return ptr - String;
}

// Used to set (set to 1) a specified bit in an unsigned long integer number
static inline unsigned long bit_set(unsigned long *addr,unsigned long nr){
    return *addr | (1UL << nr);
}
// Used to obtain (read) the value of a specific bit in an unsigned long integer.
static inline unsigned long bit_get(unsigned long *addr,unsigned long nr){
    return *addr & (1UL << nr);
}
// Used to clear (set to 0) a specified bit in an unsigned long integer number
static inline unsigned long bit_clean(unsigned long *addr,unsigned long nr){
    return *addr & (~(1UL << nr));
}

static inline unsigned char io_in8(unsigned short port){
    unsigned char ret=0;
 // mfence memory barrier instruction, ensuring that the previous I/O operations are completed before executing subsequent instructions
// inb reads the data from the specified port and stores it in the lower 8 bits of the accumulator (AL register), 
//%0 is the placeholder for the output operand
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
__asm__ __volatile__("cld \n\t"        /*  Clear direction flag and increment address*/ \
        "rep \n\t"                     /* repetitive execution */ \
        "insw \n\t"                    /* Read bytes from the port to the memory */ \
        "mfence \n\t"                  /* memory barrier */ \
        :                              /* No output operand */ \
        :"d"(port),"D"(buffer),"c"(nr) /* Input: Port, Buffer, Count */ \
        :"memory"                      /* Damage: Memory content */ \
    )

// #define port_outsw(port,buffer,nr) \
// __asm__ __volatile__("cld \n\t"
//         "rep \n\t"
//         "outsw \n\t"                    /* Output characters from the port to the memory */ 
//         "mfence \n\t"                  /* memory barrier*/ 
//         :                              /* No output operand */ 
//         :"d"(port),"D"(buffer),"c"(nr) /* Input: Port, Buffer, Count */ 
//         :"memory"                      /* Damage: Memory content*/ 
//     )

#define port_outsw(port,buffer,nr) \
__asm__ __volatile__("cld \n\t rep \n\t outsw \n\t mfence \n\t" \
                     : \
                     :"d"(port),"D"(buffer),"c"(nr) \
                     :"memory" \
                    )

#endif