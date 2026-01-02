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
#define flush_tlb()		\
do {
	unsigned long tmpreq;								\
	__asm__ __volatile__("movq %%cr3, %0  \n\t"			\
	                      "movq %0, %%cr3 \n\t"			\
	                      : "=r"(tmpreq)				\
	                      : 							\
	                      : "memory"
	                     );								\
} while (0)

inline unsigned long *Get_gdt(){
	unsigned long * tmp;
	__asm__ __volatile__("movq %%cr3, %0  \n\t"			\
	                      : "=r"(tmp)				\
	                      : 							\
	                      : "memory"
	                     );								\
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

#endif