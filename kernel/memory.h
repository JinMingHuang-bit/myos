<<<<<<< HEAD
#ifndef _MEMORY_H_
#define _MEMORY_H_
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
	下面的代码类似
*/
#define PAGE_GDT_SHIFT 39
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
#define Virt_To_Phys(addr) ((unsigned long)(addr) - PAGE_OFFSET)
#define Phys_To_Virt(addr) ((unsigned long*)((unsigned long)(addr) + PAGE_OFFSET))

////alloc_pages zone_select

//Mark the DMA (Direct Memory Access) area
#define ZONE_DMA	(1 << 0)

//Mark the ordinary memory area
#define ZONE_NORMAL	(1 << 1)

//Mark the unmapped or high-end memory regions
#define ZONE_UNMAPED	(1 << 2)

////struct page attribute (alloc_pages flags)

//The page has been mapped to the page table.
#define PG_PTable_Maped	(1 << 0)

//Kernel initialization page
#define PG_Kernel_Init	(1 << 1)


//The page has been accessed recently.
#define PG_Referenced	(1 << 2)

//The page has been modified (dirty page)
#define PG_Dirty	(1 << 3)

//Active page (in the active LRU linked list)
#define PG_Active	(1 << 4)

//The page data is up-to-date.
#define PG_Up_To_Date	(1 << 5)

//Device memory page
#define PG_Device	(1 << 6)

//Pages used by the kernel
#define PG_Kernel	(1 << 7)

//内核共享给用户空间的页面
#define PG_K_Share_To_U	(1 << 8)

//Slab分配器使用的页面
#define PG_Slab		(1 << 9)


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
//刷新TLB
// #define flush_tlb()		\
// do {
// 	unsigned long tmpreq;								\
// 	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			\
// 	                      "movq %0, %%cr3 \n\t"			\
// 	                      : "=r"(tmpreq)				\
// 	                      : 							\
// 	                      : "memory"					\
// 	                     );								\
// } while (0)

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

inline unsigned long *Get_gdt(){
	unsigned long * tmp;
	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			
	                      : "=r"(tmp)				
	                      : 							
	                      : "memory"
	                     );								
	return tmp;
}
struct Memory_E820_Formate
{
	unsigned int address1;
	unsigned int address2;
	unsigned int length1;
	unsigned int length2;
	unsigned int type;
};

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
bits_map指向的内存：
[ 32位 ][ 32位 ][ 32位 ]...
每个bit代表一个物理页：
  0 = 空闲页面
  1 = 已分配页面
  
示例：管理4GB内存（1048576个4KB页）
bits_length = 1048576
bits_size = 1048576/8 = 131072字节 = 128KB
 */
	unsigned long * bits_map;
	unsigned long bits_size;
	unsigned long bits_length;
/*
pages_struct指向：
┌─────────┬─────────┬─────────┬───
│ Page 0  │ Page 1  │ Page 2  │ ... (每个对应一个物理页)
└─────────┴─────────┴─────────┴───
pages_length = 物理页面总数
pages_size = pages_length * sizeof(struct Page)
*/
	struct Page * pages_struct;
	unsigned long pages_size;
	unsigned long pages_length;	
/*
Zone数组组织内存区域：
┌──────────┬──────────┬──────────┐
│ DMA Zone │ Normal   │ HighMem  │
└──────────┴──────────┴──────────┘
每个Zone管理一段连续的物理页
*/
	struct Zone * zones_struct;
	unsigned long zones_size;
	unsigned long zones_length;
/*
物理内存布局：
0x100000 ┌──────────────┐ ← start_code
         │ 内核代码段    │
0x200000 ├──────────────┤ ← end_code
         │ 内核数据段    │
0x300000 ├──────────────┤ ← end_data
         │ 未初始化数据 │
0x320000 ├──────────────┤ ← end_brk (当前堆顶)
         │ 空闲内存     │
         └──────────────┘
 */
	unsigned long start_code;
	unsigned long end_code;
	unsigned long end_data;
	unsigned long end_brk;//内核堆结束地址（brk是堆的末尾）。

	unsigned long end_of_struct;

};
/**
 * @struct Page
 * @brief 表示物理页帧的结构体
 * 
 * @var Page::zone_struct 
 * 指向所属内存分区的指针
 * @var Page::PHY_address 
 * 物理地址（以字节为单位）
 * @var Page::attribute 
 * 页属性标志位（如可写、缓存等）
 * @var Page::reference_count 
 * 页引用计数（用于共享内存管理）
 * @var Page::age 
 * 页年龄（用于页面置换算法）
 */

/**
 * @struct Zone
 * @brief 表示内存分区的结构体
 */
struct Page {
    struct Zone *zone_struct;      // 指向所属内存区域的指针
    unsigned long PHY_address;     // 页面的物理地址
    unsigned long attribute;       // 页面属性（只读、可执行等）
    unsigned long reference_count; // 引用计数（用于共享内存、COW等）
    unsigned long age;             // 页面年龄（用于页面置换算法如LRU）
};

/**
 * @struct Zone
 * @brief 内存区域描述结构体，用于管理物理内存页
 * 
 * @var Zone::pages_group 
 * 指向该区域页描述符数组的指针
 * @var Zone::pages_length 
 * 该区域包含的物理页总数
 * @var Zone::zone_start_address 
 * 内存区域的起始物理地址
 * @var Zone::zone_end_address 
 * 内存区域的结束物理地址
 * @var Zone::zone_length 
 * 内存区域的总长度（字节数）
 * @var Zone::attribute 
 * 区域属性标志位
 * @var Zone::GMD_struct 
 * 指向全局内存描述符的指针
 * @var Zone::page_using_count 
 * 已使用的物理页计数
 * @var Zone::page_free_count 
 * 空闲的物理页计数
 * @var Zone::total_pages_link 
 * 本区域物理页被引用次数
 */
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

struct Global_Memory_Descriptor memory_management_struct;

void init_memory();

=======
#ifndef _MEMORY_H_
#define _MEMORY_H_
//The number of page table entries. 
//In 64-bit mode, each page table entry occupies 8 bytes, so a page table can accommodate up to 512 page table entries at most.
#define PTRS_PER_PAGE 512
/*
This macro defines the starting virtual address of the kernel space. On the x86_64 architecture, the high address space is typically allocated to the kernel. 0xffff800000000000 is a typical starting address of a direct mapping region, 
used to directly map physical memory to the kernel virtual address space.
*/
#define PAGE_OFFSET ((unsigned long)0xffff800000000000)
/* 
Address translation process:
1. CR3 register → Physical base address of PML4
2. PML4 index → Find the physical address of PDPT in PML4
3. PDPT index → Find the physical address of PD in PDPT
4. PD index → Find the physical address of PT in PD
5. PT index → Find the physical page frame address in PT
6. Offset → Specific location in the physical address

In the x86_64 architecture, the standard 48-bit virtual address layout is as follows:

47               39 38               30 29               21 20               12 11        0
┌────────────────┬────────────────┬────────────────┬────────────────┬─────────────────┐
│PML4 indexes    │PDPT indexes    │PD   indexes    │     PT   indexs|     offset      │
│    (9 bits)    │    (9 bits)    │    (9 bits)    │    (9 bits)    │    (12 bits)    │
└────────────────┴────────────────┴────────────────┴────────────────┴─────────────────┘
       ↑                 ↑                 ↑                 ↑                ↑
      47-39            38-30             29-21             20-12            11-0

	Therefore, in order to extract the top 9 bits (the PML4 index) from the 64-bit virtual address, it is necessary to shift right by 39 bits to remove all the lower-level indices and offsets.
The following code is similar
*/
#define PAGE_GDT_SHIFT 39
#define PAGE_1G_SHIFT 30
#define PAGE_2M_SHIFT 21
// 2 raised to the power of 12 equals 4096, which is 4k. 
//These are the physical page capacities represented by each page table entry.
#define PAGE_4K_SHIFT 12
//1UL：Unsigned long integer constant 1 (64 bits)
//2,097,152,即2M
#define PAGE_2M_SIZE (1UL << PAGE_2M_SHIFT)
//1UL << 12 = 4,096 = 4KB。
#define PAGE_4K_SIZE (1UL << PAGE_4K_SHIFT)
/*
This mask, when performing a "AND" operation with any address, will clear the lower 21 bits of the address, 
thereby obtaining the starting address of the 2MB page where the address is located (2MB alignment).
*/
#define PAGE_2M_MASK (~(PAGE_2M_SIZE - 1))
#define PAGE_4K_MASK (~(PAGE_4K_SIZE - 1))

/* 
set a = q·s + r，among 0 ≤ r < s（r is the remainder）

s (Page Size): Page Size
s = PAGE_2M_SIZE or s = PAGE_4K_SIZE 
This is the reference unit we need to align with. 
For example: PAGE_4K_SIZE = 4096 (bytes) 
q (Quotient): Quotient
q = floor(a / s), which is the integer quotient obtained by dividing the address a by the page size. 
Indicates the total number of complete pages that were already included before address a. 
r (Remainder): Remainder
r = a % s, which means the remainder obtained when the address a is divided by the page size. 
Indicates the offset of address a beyond the last complete page
 
situation 1: r = 0（Alignment completed）
(a + s - 1) & ~(s-1) 
= (q·s + s - 1) & ~(s-1)
= ((q+1)·s - 1) & ~(s-1)
= q·s   
Because the lower log₂(s) bits of (q + 1)·s - 1 are all 1 (for example, when 4KB alignment is used, the lower 12 bits are all 1),
after performing an AND operation with ~(s - 1) (a mask with the lower log₂(s) bits being 0), 
these lower bits are cleared, and the result becomes q·s

 "Low log₂(s) bits" meaning:
In binary representation, the "low log₂(s) bits" refer to the lowest log₂(s) bits of a binary number. 
Taking 4KB alignment as an example (s = 4096 = 2¹²):
s-1 = 4095 = binary : 00000000000000000000111111111111
                                          ↑low 12 bits↑
In the binary representation of 4095, the lower 12 bits are all 1. 
So, "low log₂(4096) = 12 bits" means that these are the lowest 12 binary digits of this number.
situation 2: r > 0（not alignment）
(a + s - 1) & ~(s-1)
= (q·s + r + s - 1) & ~(s-1)
= ((q+1)·s + (r-1)) & ~(s-1)
= (q+1)·s  
// Because r - 1 < s - 1, after clearing the lower bits, we obtain (q + 1)·s
*/
#define PAGE_2M_ALIGN(addr) (((unsigned long)(addr) + PAGE_2M_SIZE - 1) & PAGE_2M_MASK)
#define PAGE_4K_ALIGN(addr) (((unsigned long)(addr) + PAGE_4K_SIZE - 1) & PAGE_4K_MASK)
#define Virt_To_Phy(addr) ((unsigned long)(addr) - PAGE_OFFSET)
#define Phy_To_Virt(addr) ((unsigned long*)((unsigned long)(addr) + PAGE_OFFSET))
/*
Address space diagram (aligned at 4KB):
0x0000 ┌─────────────┐ ← Page border (q·s)
       │  page 0     │
0x1000 ├─────────────┤ ← Next page border ((q+1)·s)
       │  page 1     │
0x2000 ├─────────────┤
       │  page 2     │
       └─────────────┘
if the address a=0x1234：
a = 0x1234（Inside page 0, but not on the boundary.）
after alignment = 0x2000（Next page boundary）
*/
////alloc_pages zone_select

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
//refresh TLB
// #define flush_tlb()		\
// do {
// 	unsigned long tmpreq;								\
// 	__asm__ __volatile__ ("movq %%cr3, %0  \n\t"			\
// 	                      "movq %0, %%cr3 \n\t"			\
// 	                      : "=r"(tmpreq)				\
// 	                      : 							\
// 	                      : "memory"					\
// 	                     );								\
// } while (0)

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
struct Memory_E820_Formate
{
	unsigned int address1;
	unsigned int address2;
	unsigned int length1;
	unsigned int length2;
	unsigned int type;
};

// Use "packed": Prohibit filling
struct E820
{
    unsigned long address;  // The starting address of the memory area
    unsigned long length;   // The length of the memory area
    unsigned int type;     //Type of memory area
}__attribute__((packed));   // Must be 12 bytes in length, without padding.



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
/**
 * @struct Page
 * @brief The structure representing the physical page frame
 * 
 * @var Page::zone_struct 
 * Pointer to the corresponding memory partition
 * @var Page::PHY_address 
 * Physical address (in bytes)
 * @var Page::attribute 
 * Page attribute flags (such as writable, cached, etc.)
 * @var Page::reference_count 
 * Page reference count (used for shared memory management)
 * @var Page::age 
 * Page reference count (used for shared memory management)
 */

/**
 * @struct Zone
 * @brief Represents the structure for memory partitioning
 */
struct Page {
    struct Zone *zone_struct;      // Pointer to the corresponding memory area
    unsigned long PHY_address;     // The physical address of the page
    unsigned long attribute;       // Page properties (such as read-only, executable, etc.)
    unsigned long reference_count; // Reference counting (used for shared memory, COW, etc.)
    unsigned long age;             // Page age (used for page replacement algorithms such as LRU)
};

/*** * @struct Zone
 * @brief Memory area description structure, used for managing physical memory pages
 * 
 * @var Zone::pages_group 
 * Pointer to the array of page descriptors for this area
 * @var Zone::pages_length 
 * The total number of physical pages contained in this area
 * @var Zone::zone_start_address 
 * The starting physical address of the memory area
 * @var Zone::zone_end_address 
 * The end physical address of the memory area
 * @var Zone::zone_length 
 * The total length (in bytes) of the memory area
 * @var Zone::attribute 
 * Regional attribute flag
 * @var Zone::GMD_struct 
 * Pointer to the global memory descriptor
 * @var Zone::page_using_count 
 * The count of used physical pages
 * @var Zone::page_free_count 
 * Count of idle physical pages
 * @var Zone::total_pages_link 
 * The number of times this regional physical page has been cited
 */
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

struct Global_Memory_Descriptor memory_management_struct;

unsigned long page_init(struct Page * page,unsigned long flags);
void init_memory();

>>>>>>> 5ae337114a061e841be8bd1a013515a4a2ea0411
#endif