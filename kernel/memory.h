#ifndef _MEMORY_H_
#define _MEMORY_H_

#include "lib.h"
//页表项个数,在64位模式下每个页表项占用8个字节,所以一个页表最多可以容纳512个页表项
#define PTRS_PER_PAGE 512
/*
这个宏定义了内核空间的起始虚拟地址。在x86_64架构中，通常将高地址空间分配给内核。
0xffff800000000000 是一个典型的直接映射区域的起始地址，用于将物理内存直接映射到内核虚拟地址空间
*/
#define PAGE_OFFSET ((unsigned long)0xffff800000000000)
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
*/
#define PAGE_PML4_SHIFT 39
#define PAGE_1G_SHIFT 30
#define PAGE_2M_SHIFT 21
//2的12次方 4096,即4k,这些是每种页表项代表的物理页容量
#define PAGE_4K_SHIFT 12
//1UL：无符号长整型常量1（64位）
//2,097,152,即2M
#define PAGE_2M_SIZE (1UL << PAGE_2M_SHIFT)
//1UL << 12 = 4,096 = 4KB。
#define PAGE_4K_SIZE (1UL << PAGE_4K_SHIFT)
//这个掩码与任何地址进行“与”操作，都会将地址的低21位清零，从而得到该地址所在的2MB页的起始地址（2MB对齐）。
#define PAGE_2M_MASK (~(PAGE_2M_SIZE - 1))
#define PAGE_4K_MASK (~(PAGE_4K_SIZE - 1))
/* 
设 a = q·s + r，其中 0 ≤ r < s（r 是余数）
情况 1: r = 0（已对齐）
(a + s - 1) & ~(s-1) 
= (q·s + s - 1) & ~(s-1)
= ((q+1)·s - 1) & ~(s-1)
= q·s   // 因为(q+1)·s-1的低位都是1，与~（s-1）与后保留高位
情况 2: r > 0（未对齐）
(a + s - 1) & ~(s-1)
= (q·s + r + s - 1) & ~(s-1)
= ((q+1)·s + (r-1)) & ~(s-1)
= (q+1)·s  // 因为r-1 < s-1，清除低位后得到(q+1)·s
*/
#define PAGE_2M_ALIGN(addr) (((unsigned long)(addr) + PAGE_2M_SIZE - 1) & PAGE_2M_MASK)
#define PAGE_4K_ALIGN(addr) (((unsigned long)(addr) + PAGE_4K_SIZE - 1) & PAGE_4K_MASK)
#define Virt_To_Phy(addr) ((unsigned long)(addr) - PAGE_OFFSET)
#define Phy_To_Virt(addr) ((unsigned long*)((unsigned long)(addr) + PAGE_OFFSET))

//Mark the DMA (Direct Memory Access) area
#define ZONE_DMA	(1 << 0) //1

//Mark the ordinary memory area
#define ZONE_NORMAL	(1 << 1) //2

//Mark the unmapped or high-end memory regions
#define ZONE_UNMAPED	(1 << 2) // 4

////struct page attribute (alloc_pages flags)

//The page has been mapped to the page table.
#define PG_PTable_Maped	(1 << 0) //1

//Kernel initialization page
#define PG_Kernel_Init	(1 << 1) //2


//The page has been accessed recently.
#define PG_Referenced	(1 << 2)  //4

//The page has been modified (dirty page)
#define PG_Dirty	(1 << 3)  //8

//Active page (in the active LRU linked list)
#define PG_Active	(1 << 4)  //16

//The page data is up-to-date.
#define PG_Up_To_Date	(1 << 5) //32

//Device memory page
#define PG_Device	(1 << 6) //64

//Pages used by the kernel
#define PG_Kernel	(1 << 7) //128

//Pages shared by the kernel to the user space
#define PG_K_Share_To_U	(1 << 8)  //256

//The pages used by the slab allocator
#define PG_Slab		(1 << 9)  //512

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


int ZONE_DMA_INDEX	= 0;
int ZONE_NORMAL_INDEX	= 0;	//low 1GB RAM ,was mapped in pagetable
int ZONE_UNMAPED_INDEX	= 0;

#define flush_tlb() \
do { \
    unsigned long tmpreq; \
    __asm__ __volatile__ ( \
        "movq %%cr3, %0\n\t" \
        "movq %0, %%cr3" \
        : "=r" (tmpreq) \
        : \
        : "memory" \
    ); \
} while (0)

static unsigned long *Get_gdt(){
	unsigned long * tmp;
	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			
	                      : "=r"(tmp)				
	                      : 							
	                      : "memory"
	                     );								
	return tmp;
}

static unsigned long *Get_cr3(){
	unsigned long * tmp;
	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			
	                      : "=r"(tmp)				
	                      : 							
	                      : "memory"
	                     );								
	return tmp;
}

// struct Memory_E820_Formate
// {
// 	unsigned int address1;
// 	unsigned int address2;
// 	unsigned int length1;
// 	unsigned int length2;
// 	unsigned int type;
// };

// 使用 packed：禁止填充
struct E820
{
    unsigned long address;  // 内存区域的起始地址
    unsigned long length;   // 内存区域的长度
    unsigned int type;     // 内存区域的类型
}__attribute__((packed));   // 强制为12字节，无填充

struct Global_Memory_Descriptor
{
	struct E820 e820[32];
	unsigned long e820_length;
/*
The memory pointed to by bits_map:
[ 32-bit ][ 32-bit ][ 32-bit ]...
Each bit represents a physical page:
0 = Free page
1 = Allocated page
  
Management of 4GB memory (1,048,576 4KB pages)
bits_length = 1048576
bits_size = 1048576/8 = 131072 b = 128KB
 */
	unsigned long * bits_map;
	unsigned long bits_size;
	unsigned long bits_length;
/*
pages_struct point to：
┌─────────┬─────────┬─────────┬───
│ Page 0  │ Page 1  │ Page 2  │ ... (Each corresponds to one physical page.)
└─────────┴─────────┴─────────┴───
pages_length = Total number of physical pagesTotal number of physical pages
pages_size = pages_length * sizeof(struct Page)
*/
	struct Page * pages_struct;
	unsigned long pages_size;
	unsigned long pages_length;	
/*
Zone Array-organized memory area：
┌──────────┬──────────┬──────────┐
│ DMA Zone │ Normal   │ HighMem  │
└──────────┴──────────┴──────────┘
Each Zone manages a contiguous block of physical pages.
*/
	struct Zone * zones_struct;
	unsigned long zones_size;
	unsigned long zones_length;
/*
Physical memory layout:
0x100000 ┌──────────────┐ ← start_code
         │ Kernel code segment    │
0x200000 ├──────────────┤ ← end_code
         │ Kernel data segment   │
0x300000 ├──────────────┤ ← end_data
         │ Uninitialized data│
0x320000 ├──────────────┤ ← end_brk (The current top of the heap)
         │ Free memory    │
         └──────────────┘
 */
	unsigned long start_code;
	unsigned long end_code;
	unsigned long end_data;
	unsigned long end_brk;//End address of the kernel heap (where brk points to is the end of the heap).

	unsigned long end_of_struct;

};

struct Page {
    struct Zone *zone_struct;      // Pointer to the corresponding memory area
    unsigned long PHY_address;     // The physical address of the page
    unsigned long attribute;       // Page properties (such as read-only, executable, etc.)
    unsigned long reference_count; // Reference counting (used for shared memory, COW, etc.)
    unsigned long age;             // Page age (used for page replacement algorithms such as LRU)
};

struct Zone{
	struct Page * pages_group;
	unsigned long pages_length;
	unsigned long zone_start_address;
	unsigned long zone_end_address;
	unsigned long zone_length;
	unsigned long attribute;

	struct Global_Memory_Descriptor * GMD_struct;
	unsigned long page_using_count;
	unsigned long page_free_count;

	unsigned long total_pages_link;
};

unsigned long * Global_CR3 = NULL;

unsigned long page_init(struct Page * page,unsigned long flags);
struct Global_Memory_Descriptor memory_management_struct;
struct Page *alloc_page(int zone_select,int number,unsigned long page_flags);
void init_memory();

#endif