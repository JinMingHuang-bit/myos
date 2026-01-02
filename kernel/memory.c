#include "memory.h"
#include "lib.h"
#include "printk.h"

//rewirte in the future
int ZONE_DMA_INDEX=0;
int ZONE_NORMAL_INDEX=0;
int ZONE_UNMAPED_INDEX;

void init_memory(){
	int i,j;
	
	unsigned long TotalMem =0;
	struct E820 *p =NULL;
	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	p=(struct E820 *)0xffff800000007e00;
	for (int i = 0; i < 32; i++)
	{
		//以0x开头的16进制形式输出，总宽度为18个字符，左补零，长整型（unsigned long）
		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
		unsigned long tmp =0;
		if(p->type==1){
			TotalMem +=p->length;
		}
		memory_management_struct.e820[i].address+=p->address;
		memory_management_struct.e820[i].length+=p->length;
		memory_management_struct.e820[i].type=p->type;
		memory_management_struct.e820_length =i;
		p++;
		if(p->type >4 ||p->length==0 || p->type<1){
			break;
		}
	}
	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	TotalMem=0;
	//计算2M对齐的内存大小,可能需要用<
	for(i=0;i<=memory_management_struct.e820_length;i++){
		unsigned long start,end;
		if(memory_management_struct.e820[i].type!=1){
			continue;
		}
		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
		if(end<=start){
			continue;
		}
		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	}
	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
	color_printk(ORANGE,BLACK,"Now OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);

	//bits map contruction init
	//将位图放在内核数据段的末尾，并进行 4KB 页对齐。
	/*
	(addr + 4096 - 1) & ~0xfff
	↓
	向上对齐到最近的 4KB 边界 
	*/
	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	//记录位图管理的页数
	/*总字节数 ÷ 2MB = 页数
		↓
		TotalMem >> 21（PAGE_2M_SHIFT = 21） */
	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	/*
步骤 1：页数
(TotalMem >> PAGE_2M_SHIFT)
↓
需要管理的 2MB 页数
步骤 2：位 → 字节向上取整

(页数 + 7) / 8
↓
每个字节存储 8 个页的状态
+7 是为了向上取整
步骤 3：字节 → long 对齐

& (~(sizeof(long) - 1))
↓
~7 = 0xffff...fff8（假设 64 位 long）
& 0xffff...fff8
↓
向下对齐到 8 字节边界（sizeof(long) = 8）
完整示例：

总内存 4GB = 2048 页
↓
(2048 + 7) / 8 = 256 字节
↓
256 & ~7 = 256（已对齐）
为什么对齐到 sizeof(long)？
位图操作通常是按 unsigned long 为单位（64 位一次处理 64 个页）
对齐后可以避免非对齐访问导致的性能损失
	 */
	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);
/*内存布局示意
┌─────────────────────────────────────┐
│  内核代码段 (_text → _etext)        │
├─────────────────────────────────────┤
│  内核数据段 (_edata → _end)         │
├─────────────────────────────────────┤
│  bits_map [页对齐]                  │
│  ┌──┬──┬──┬──┬──┬──┬──┬──┐        │
│  │1 │0 │1 │...│0 │1 │0 │1 │        │
│  └──┴──┴──┴──┴──┴──┴──┴──┘        │
│   ↕ ↕ ↕                ↕ ↕        │
│   已占 可用 ... ...    可用 已占    │
└─────────────────────────────────────┘
*/

//操作系统使用2MB大页,而不是通常的4kb,可减少TLB缺失：相同TLB条目覆盖更大内存
memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
/*
// 示例（64位系统）：
// sizeof(long) = 8, sizeof(long)-1 = 7, ~(sizeof(long)-1) = ~7 = 0xFFFFFFF8
// 对齐掩码：0xFFFFFFF8，即末3位清零，实现8字节对齐
 */
memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
// Page数组清零初始化
Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);

memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
/*
0x12346000 ┌────────────────────┐ ← bits_map（位图开始）
           │    位图区域         │
           │    (128KB)         │
0x12366000 ├────────────────────┤ ← pages_struct（Page数组开始）
           │    Page结构体数组   │
           │    (80KB)          │
0x1237A000 ├────────────────────┤ ← zones_struct（Zone数组开始）
           │    Zone结构体数组   │
           │                    │
           └────────────────────┘
 */
memory_management_struct.zones_size=0;
memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
for(i=0;i<=memory_management_struct.e820_length;i++){
	unsigned long start, end;
	struct Zone *z;
	struct Page *p;
	if(memory_management_struct.e820[i].type!=1){
		continue;
	}
	start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	if(end<=start){
		continue;
	}
	//zone init
	z=memory_management_struct.zones_struct+memory_management_struct.zones_size;
	memory_management_struct.zones_size++;
	z->zone_start_address=start;
	z->zone_end_address=end;
	z->zone_length=end-start;
	z->page_using_count=0;
	z->page_free_count=(end-start)>>PAGE_2M_SHIFT;
	z->total_pages_link=0;
	z->attribute=0;
	z->GMD_struct=&memory_management_struct;
	z->pages_length=(end-start)>>PAGE_2M_SHIFT;
	z->pages_group=(struct Page*)(memory_management_struct.pages_struct+(start >>PAGE_2M_SHIFT));

	//page init
	p=z->pages_group;
	for(j=0;j<z->pages_length;j++,p++){
		p->zone_struct=z;
		p->PHY_address=start+PAGE_2M_SIZE*j;
		p->attribute=0;
		p->reference_count=0;
		p->age=0;

/*
		步骤1：计算页面编号（Page Number）
c
unsigned long page_number = p->PHY_address >> PAGE_2M_SHIFT;
物理地址右移21位（因为2MB = 2^21字节）

得到页面在全局中的索引号
步骤2：计算位图数组索引（word_index）
c
unsigned long word_index = page_number >> 6;  // 等价于 page_number / 64
每个 unsigned long 有64位（64位系统）

一个 unsigned long 可以管理64个页面
步骤3：计算位偏移（bit_offset）
c
unsigned long bit_offset = page_number % 64;
页面在位图 unsigned long 中的具体位置

示例

text
page_number = 129
bit_offset = 129 % 64 = 1 (第1位，从0开始计数)

步骤4：构造位掩码并应用异或操作
c
1UL << bit_offset  // 创建一个掩码，只有bit_offset位为1
^=                 // 异或操作，翻转特定位
完整计算过程：

text
假设：
bits_map地址 = 0x12346000
page_number = 129

计算：
1. word_index = 129 >> 6 = 2
2. 位图位置 = bits_map + 2 = 0x12346000 + 2*8 = 0x12346010
3. bit_offset = 129 % 64 = 1
4. 掩码 = 1UL << 1 = 0x2 (二进制 10)
5. 异或操作：bits_map[2] ^= 0x2

4. 为什么使用异或操作（^=）？
背景：

位图初始化为全1（0xFF）：所有页面标记为"已占用"

可用页面需要标记为"空闲"（0）
		 */		
		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	}
}
memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
memory_management_struct.pages_struct->PHY_address=0UL;
memory_management_struct.pages_struct->attribute=0;
memory_management_struct.pages_struct->reference_count=0;
memory_management_struct.pages_struct->age=0;
memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));

color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);

//need rewirte in the future
for(i=0;i<memory_management_struct.zones_size;i++){
	struct Zone *z=memory_management_struct.zones_struct+i;
	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);

	if(z->zone_start_address==0x100000000){
		ZONE_UNMAPED_INDEX=i;
	}
	}
	memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
	/*
	// 假设64位系统（8字节对齐）
内存布局：

0x1000000000 ┌────────────────────┐ ← 物理内存开始（虚拟地址）
             │    内核代码和数据   │
             ├────────────────────┤
             │    位图(bits_map)  │
0x1000100000 ├────────────────────┤ ← bits_map
             │    Page结构体数组   │
0x1000180000 ├────────────────────┤ ← pages_struct
             │    Zone结构体数组   │
0x10001A0000 ├────────────────────┤ ← zones_struct
             │    预留空间         │ ← +32*8=256字节
0x10001A0100 ├────────────────────┤ ← end_of_struct (对齐后)
             │    可用内存区域     │ ← 从这里开始分配物理内存
             └────────────────────┘
	 */
	color_printk(ORANGE,BLACK,"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n",memory_management_struct.start_code,memory_management_struct.end_code,memory_management_struct.end_data,memory_management_struct.end_brk,memory_management_struct.end_of_struct);
	i=Virt_To_Phys(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;

}
