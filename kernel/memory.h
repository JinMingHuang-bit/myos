#ifndef _MEMORY_H_
#define _MEMORY_H_
//页表项个数,在64位模式下每个页表项占用8个字节,所以一个页表最多可以容纳512个页表项
#define PTRS_PER_PAGE 512
/*
这个宏定义了内核空间的起始虚拟地址。在x86_64架构中，通常将高地址空间分配给内核。
0xffff800000000000 是一个典型的直接映射区域的起始地址，用于将物理内存直接映射到内核虚拟地址空间
*/
#define PAGE_OFFSET((unsigned long)0xffff800000000000)
/* 
地址翻译流程：
1. CR3寄存器 → PML4物理基址
2. PML4索引 → 在PML4中找到PDPT的物理地址
3. PDPT索引 → 在PDPT中找到PD的物理地址  
4. PD索引 → 在PD中找到PT的物理地址
5. PT索引 → 在PT中找到物理页框地址
6. 偏移量 → 物理地址中的具体位置

在x86_64架构中，标准的48位虚拟地址布局如下：

47               39 38               30 29               21 20               12 11        0
┌────────────────┬────────────────┬────────────────┬────────────────┬─────────────────┐
│    PML4索引    │    PDPT索引     │     PD索引     │     PT索引     │     偏移量      │
│    (9 bits)    │    (9 bits)    │    (9 bits)    │    (9 bits)    │    (12 bits)    │
└────────────────┴────────────────┴────────────────┴────────────────┴─────────────────┘
       ↑                 ↑                 ↑                 ↑                ↑
      47-39            38-30             29-21             20-12            11-0

	因此,为了从64位虚拟地址中提取出最高9位（PML4索引），需要右移39位来去掉所有低级别的索引和偏移量。
	下面的代码类似
*/
#define PAGE_GDT_SHIFT 39
#define PAGE_1G_SHIFT 30
#define PAGE_2M_SHIFT 21
//2的12次方 4096,即4k,这些是每种页表项代表的物理页容量
#define PAGE_4K_SHIFT 12

#define PAGE_2M_SIZE (1UL << PAGE_2M_SHIFT)
#define PAGE_4K_SIZE (1UL << PAGE_4K_SHIFT)
#define PAGE_2M_MASK (~(PAGE_2M_SIZE - 1))
#define PAGE_4K_MASK (~(PAGE_4K_SIZE - 1))
#define PAGE_2M_ALIGN(addr) (((unsigned long)(addr) + PAGE_2M_SIZE - 1) & PAGE_2M_MASK)
#define PAGE_4K_ALIGN(addr) (((unsigned long)(addr) + PAGE_4K_SIZE - 1) & PAGE_4K_MASK)
#define Virt_To_Phys(addr) ((unsigned long)(addr) - PAGE_OFFSET)
#define Phys_To_Virt(addr) ((unsigned long*)((unsigned long)(addr) + PAGE_OFFSET))

/*
When the system starts up, the BIOS/boot program collects the memory mapping information. 
The boot program stores the mapping table at the designated location (such as physical address 0x7e00) 
During the kernel initialization, a page table mapping is established to make this physical address accessible in the kernel space. 
The kernel code reads and parses these entries through pointers. 
The kernel builds the physical memory management data structure based on this information.

E820 is a convenient tool for BIOS of X86-based computer systems to map memory to the operating system or boot loader. 
By setting the AX register to the hexadecimal value E820, it can be accessed through the INT15H call, 
reporting which memory address ranges are available and which are reserved for use by the BIOS.
*/


struct Memory_E820_Formate
{
	unsigned int address1;
	unsigned int address2;
	unsigned int length1;
	unsigned int length2;
	unsigned int type;
};

struct E820
{
	unsigned long address;
	unsigned long length;
	unsigned long type;
}__attribute__((packed));

struct Global_Memory_Descriptor
{
	struct E820 e820[32];
	unsigned long e820_length;
}
extern struct Global_Memory_Descriptor memory_management_struct;

void init_memory();

#endif