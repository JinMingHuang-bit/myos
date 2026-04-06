#ifndef _MEMORY_H_
#define _MEMORY_H_

#include "lib.h"
// Number of page table entries. In 64-bit mode, 
//each page table entry occupies 8 bytes, so a page table can accommodate a maximum of 512 page table entries.
#define PTRS_PER_PAGE 512
/*
This macro defines the starting virtual address of the kernel space. On the x86_64 architecture, the high address space is typically allocated to the kernel.
0xffff800000000000 is a typical direct mapping area's starting address, which is used to directly map physical memory to the kernel's virtual address space.
*/
#define PAGE_OFFSET ((unsigned long)0xffff800000000000)
/* 
Address translation process:
1. CR3 register → PML4 physical base address
2. PML4 index → Find the physical address of the PDPT in the PML4
3. PDPT index → Find the physical address of the PD in the PDPT
4. PD index → Find the physical address of the PT in the PD
5. PT index → Find the physical page frame address in the PT
6. Offset → Specific position in the physical address

In the x86_64 architecture, the standard 48-bit virtual address layout is as follows:

47               39 38               30 29               21 20               12 11        0
┌────────────────┬────────────────┬────────────────┬────────────────┬─────────────────┐
│    PML4 index   │    PDPT index     │     PD index     │     PT index     │     offset      │
│    (9 bits)    │    (9 bits)    │    (9 bits)    │    (9 bits)    │    (12 bits)    │
└────────────────┴────────────────┴────────────────┴────────────────┴─────────────────┘
       ↑                 ↑                 ↑                 ↑                ↑
      47-39            38-30             29-21             20-12            11-0

	Therefore, to extract the highest 9 bits (PML4 index) from a 64-bit virtual address, we need to right shift by 39 bits to remove all lower-level indices and the offset.
*/
#define PAGE_PML4_SHIFT 39
#define PAGE_1G_SHIFT 30
#define PAGE_2M_SHIFT 21
// 2 raised to the power of 12 equals 4096, which is 4k. These are the physical page capacities represented by each page table entry.
#define PAGE_4K_SHIFT 12
//1UL：Unsigned long integer constant 1 (64 bits)
//2,097,152,which is 2M
#define PAGE_2M_SIZE (1UL << PAGE_2M_SHIFT)
//1UL << 12 = 4,096 = 4KB。
#define PAGE_4K_SIZE (1UL << PAGE_4K_SHIFT)
/* 
This mask, when used with any address in a "AND" operation, will clear the lowest 21 bits, thus obtaining the starting address of the 2MB page to which the address belongs (2MB alignment).
*/
#define PAGE_2M_MASK (~(PAGE_2M_SIZE - 1))
#define PAGE_4K_MASK (~(PAGE_4K_SIZE - 1))
/* 设 a 为原地址，s 为页大小
a = q·s + r，其中 0 ≤ r < s（r 是余数）
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

typedef struct {unsigned long pml4t;} pml4t_t;

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

// Use packed: Disable padding. 
//Only in this way can the memory mapping table entry at the linear address 0xffff800000007e00 be correctly indexed.
struct E820
{
    unsigned long address;  // The starting address of the memory area
    unsigned long length;   // The length of the memory area
    unsigned int type;     // The type of the memory area
}__attribute__((packed));   // Force it to be 12 bytes, no padding

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
extern struct Global_Memory_Descriptor memory_management_struct;
struct Page *alloc_page(int zone_select,int number,unsigned long page_flags);
void init_memory();

#endif