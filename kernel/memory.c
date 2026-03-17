#include "memory.h"
#include "lib.h"
#include "printk.h"

unsigned long page_init(struct Page * page,unsigned long flags){
	if(!page->attribute){
		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
		page->attribute = flags;
		page->reference_count++;
		page->zone_struct->page_using_count++;
		page->zone_struct->page_free_count--;
		page->zone_struct->total_pages_link++;
	}else if((page ->attribute & PG_Referenced)||(page->attribute & PG_K_Share_To_U)||(flags & PG_Referenced)||(flags & PG_K_Share_To_U)){
		//The "||" is a logical OR operator. As long as one of the two operands is true, the result of the entire expression is true.
		/*The symbol "|" is called "bitwise OR". It has two operands (both of which must be integers), 
		and its function is to perform an "OR" operation on the corresponding binary digits of the two numbers. 
		The operation rule is: if one is true, the result is true.
		*/
		page->attribute |= flags;
		page->reference_count++;
		page->zone_struct->total_pages_link++;
	}else{
		*(memory_management_struct.bits_map+((page->PHY_address>>PAGE_2M_SHIFT)>>6)) |= 1UL << (page->PHY_address>>PAGE_2M_SHIFT)%64;
		page->attribute |= flags;
	}
	return 0;
}


void init_memory(){
	int i,j;
	
	unsigned long TotalMem =0;
	struct E820 *p = NULL;
	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	p=(struct E820 *)0xffff800000007e00;
	for (int i = 0; i < 32; i++)
	{
		//Output in hexadecimal format starting with 0x, with a total width of 18 characters, 
		//left-padded with zeros, long integer (unsigned long)
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
		if(p->type > 4 || p->length == 0 || p->type < 1){
			break;
		}
	}
	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%d\n",TotalMem);
	int TotalMB;
	TotalMB=TotalMem>>20;
	color_printk(ORANGE,BLACK,"OS Can Used Total MB:%d\n",TotalMB);
	TotalMem=0;
	for(i=0;i<=memory_management_struct.e820_length;i++){
		unsigned long start,end;
		//Only process the available RAM segments.
		if(memory_management_struct.e820[i].type!=1){
			continue;
		}
		// Align the starting address to the 2MB boundary.
		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
		// Align the end address to the 2MB boundary.
		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
		if(end<=start){
			//There is not enough space after alignment to accommodate a 2MB page.
			continue;
		}
		//Sum up the number of 2MB pages within the aligned range.
		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	}
	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);

	TotalMem=memory_management_struct.e820[memory_management_struct.e820_length].address+memory_management_struct.e820[memory_management_struct.e820_length].length;
		//bits map contruction init
	//Place the bitmap at the end of the kernel data segment and align it to a 4KB boundary.。
	/*
	(addr + 4096 - 1) & ~0xfff
	↓
	Align upwards to the nearest 4KB boundary
	*/

	memory_management_struct.bits_map=(unsigned long *)((memory_management_struct.end_brk+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
	//The number of pages for bitmap management
	//Total number of bytes ÷ 2MB = Number of pages
	//
	//	TotalMem >> 21(PAGE_2M_SHIFT = 21） 

	/*
	 The `sizeof(long)` is used for byte alignment.
The total number of pages is TotalMem >> PAGE_2M_SHIFT. 
Each page requires 1 bit, so the total number of bits is the number of pages. 
Convert it to bytes: (number of pages + 8 - 1) / 8, rounded up.
	*/
	memory_management_struct.bits_size=TotalMem>>PAGE_2M_SHIFT;	
	memory_management_struct.bits_length=(((unsigned long)(TotalMem>>PAGE_2M_SHIFT)+sizeof(long)*8-1)/8)&(~(sizeof(long)-1));
	Cmemset(memory_management_struct.bits_map,0xff,memory_management_struct.bits_length);

/*Memory layout illustration
┌─────────────────────────────────────┐
│Kernel code segment (_text → _etext) │
├─────────────────────────────────────┤
│kernel data segement (_edata → _end) │
├─────────────────────────────────────┤
│  bits_map [page alignment]          │
│  ┌──┬──┬──┬──┬──┬──┬──┬──┐          │
│  │1 │0 │1 │..│0 │1 │0 │1 │        │
│  └──┴──┴──┴──┴──┴──┴──┴──┘        │
│   ↕ ↕ ↕                ↕ ↕        │
│occupy available ... available occupy│
└─────────────────────────────────────┘
*/
//The operating system uses 2MB pages instead of the usual 4kb pages, which can reduce TLB misses: the same TLB entries can cover a larger amount of memory.
//pages construct start
/*
Function: Calculate the starting virtual address of the page structure array and convert it to the type of struct Page*. 
Principle: The end address of bits_map is bits_map + bits_length. To ensure that pages_struct starts from a 4KB aligned boundary,
the formula for up-rounding alignment is used: (addr + 4095) & ~0xFFF. Here, PAGE_4K_SIZE = 4096 and PAGE_4K_MASK = ~0xFFF.
In this way, even if the end address of bits_map is not aligned, it will jump to the next 4KB boundary.
*/
memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
/*
Function: Records the total number of 2MB pages that need to be managed.
Meaning: TotalMem is the upper limit of the physical address space (in bytes) calculated previously. Shifting it right by PAGE_2M_SHIFT (usually 21) gives the number of 2MB pages.
This value determines the size of the page structure array because each 2MB page corresponds to a struct Page metadata.
*/
memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
/*
// example (64-bit system)：
// sizeof(long) = 8, sizeof(long)-1 = 7, ~(sizeof(long)-1) = ~7 = 0xFFFFFFF8
// Alignment mask: 0xFFFFFFF8, which means the last 3 bits are cleared, achieving 8-byte alignment.
 */
memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
// Zero out and initialize the Page array
Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);
//Calculate the starting address of the region structure array, also aligned at 4KB. It follows immediately after the pages_struct.
memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);

memory_management_struct.zones_size=0;
//Allocate fixed-sized space for the region structure array. Here, 5 spaces for struct Zone have been pre-allocated and aligned according to sizeof(long).
memory_management_struct.zones_length=(5*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));
Cmemset(memory_management_struct.zones_struct,0x00,memory_management_struct.zones_length);
/*
Loop through all e820 entries (where e820_length is the index of the last valid entry).
Only process the entries of type 1 (available RAM), and skip those of other types (reserved, ACPI, etc.).
*/
for(i=0;i<=memory_management_struct.e820_length;i++){
	unsigned long start, end;
	struct Zone *z;
	struct Page *p;
	if(memory_management_struct.e820[i].type!=1){
		continue;
	}
	/*
	Starting address aligned upwards: PAGE_2M_ALIGN rounds the address up to the nearest 2MB boundary (for example, if PAGE_2M_SHIFT = 21, it aligns to 2MB).
Ending address aligned downwards: Shift the sum of the starting address and length 21 bits to the right (divided by 2MB) and then shift it 21 bits to the left to obtain the 2MB-aligned ending address.
If the aligned end is less than or equal to the starting address, it means there are no complete 2MB pages within this segment, so skip it.
After alignment, the interval [start, end) is a 2MB-aligned region completely contained within the original segment, and subsequent memory management will be based on this unit.
	*/
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
Update bitmap: Flip the bit corresponding to the page in the bitmap from 1 (initially fully occupied) to 0 (free).
p->PHY_address >> PAGE_2M_SHIFT obtains the global index of the page (starting from 0).
>> 6 is equivalent to division by 64, obtaining the index's subscript in the bitmap array (unsigned long array), because each unsigned long has 64 bits.
% 64 obtains the offset within 64 bits (0-63).
1UL << Offset constructs a mask.
Use the operation ^= to flip the bit. Since the bitmap was initialized with all 1s, the XOR operation will clear this bit (1 ^ 1 = 0), indicating that the page becomes available.
		*/
		*(memory_management_struct.bits_map+((p->PHY_address>>PAGE_2M_SHIFT)>>6))^=1UL <<(p->PHY_address>>PAGE_2M_SHIFT)%64;
	}
}
memory_management_struct.pages_struct->zone_struct=memory_management_struct.zones_struct;
memory_management_struct.pages_struct->PHY_address=0UL;
memory_management_struct.pages_struct->attribute=0;
memory_management_struct.pages_struct->reference_count=0;
memory_management_struct.pages_struct->age=0;
/*Previously, fixed spaces were pre-allocated (such as 5 Zones). Now, based on the actual number of used Zones (zones_size), the required byte count is recalculated,
and then aligned upwards to sizeof(long) (the machine word length, 8 bytes for 64-bit systems).
*/
memory_management_struct.zones_length=(memory_management_struct.zones_size*sizeof(struct Zone)+sizeof(long)-1)&(~(sizeof(long)-1));

color_printk(ORANGE,BLACK,"bits_map:%#018lx,bits_size:%#018lx,bits_length:%#018lx\n",memory_management_struct.bits_map,memory_management_struct.bits_size,memory_management_struct.bits_length);
color_printk(ORANGE,BLACK,"pages_struct:%#018lx,pages_size:%#018lx,pages_length:%#018lx\n",memory_management_struct.pages_struct,memory_management_struct.pages_size,memory_management_struct.pages_length);
color_printk(ORANGE,BLACK,"zones_struct:%#018lx,zones_size:%#018lx,zones_length:%#018lx\n",memory_management_struct.zones_struct,memory_management_struct.zones_size,memory_management_struct.zones_length);


ZONE_DMA_INDEX = 0;	//need rewrite in the future
ZONE_NORMAL_INDEX = 0;	//need rewrite in the future

for(i=0;i<memory_management_struct.zones_size;i++){
	struct Zone *z=memory_management_struct.zones_struct+i;
	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);
	//Mark high-end memory
	if(z->zone_start_address==0x100000000){
		ZONE_UNMAPED_INDEX=i;
	}
	}
	//Reserve some space to prevent unauthorized access:+ sizeof(long) * 32.
	/*
	Align downward to the "long" boundary & (~(sizeof(long) - 1))
	Make sure the address is a multiple of sizeof(long) 64-bit system: 8-byte alignment
	 */
memory_management_struct.end_of_struct=(unsigned long)((unsigned long)memory_management_struct.zones_struct+memory_management_struct.zones_length+sizeof(long)*32)&(~(sizeof(long)-1));
color_printk(ORANGE,BLACK,"start_code:%#018lx,end_code:%#018lx,end_data:%#018lx,end_brk:%#018lx,end_of_struct:%#018lx\n",memory_management_struct.start_code,memory_management_struct.end_code,memory_management_struct.end_data,memory_management_struct.end_brk,memory_management_struct.end_of_struct);
i=Virt_To_Phy(memory_management_struct.end_of_struct)>>PAGE_2M_SHIFT;
for(j=0;j<=i;j++){
	page_init(memory_management_struct.pages_struct+j,PG_PTable_Maped|PG_Kernel_Init|PG_Active|PG_Kernel);
}
	Global_CR3 = Get_cr3();
	color_printk(INDIGO,BLACK,"Global_CR3\t:%#018lx\n",Global_CR3);
	color_printk(INDIGO,BLACK,"*Global_CR3\t:%#018lx\n",*Phy_To_Virt(Global_CR3));
	color_printk(INDIGO,BLACK,"**Global_CR3\t:%#018lx\n",*Phy_To_Virt(*Phy_To_Virt(Global_CR3)&(~0xff))&(~0xff));
	for(i=0;i<10;i++){
		*(Phy_To_Virt(Global_CR3)+i)=0UL;
	}
	color_printk(INDIGO,BLACK,"I am OK!\n");
	flush_tlb();
}

/*	
	number:number<=64
	zone_select:zone select from dma,mapped in pagetable,unmapped in pagetable
	page_flags:struct Page flages.

	**for using in bochs simulator,since bochs can only use 2G memory,so there is only one Available physical memory segments
	so ZONE_DMA_INDEX,ZONE_NORMAL_INDEX,ZONE_UNMAPED_INDEX are all the same zone**.(it need to change in the future version)
*/

struct Page *alloc_page(int zone_select,int number,unsigned long page_flags){
	int i;
	unsigned long page=0;
	int zone_start=0;
	int zone_end=0;
	switch(zone_select){
		case ZONE_DMA:
			zone_start=0;
			zone_end=ZONE_DMA_INDEX;
			break;
		case ZONE_NORMAL:
			zone_start=ZONE_DMA_INDEX;
			zone_end=ZONE_NORMAL_INDEX;
			break;
		case ZONE_UNMAPED:
			zone_start=ZONE_UNMAPED_INDEX;
			zone_end=memory_management_struct.zones_size-1;
			break;
		default:
			color_printk(RED,BLACK,"Error:zone_select error!\n");
			return NULL;
			break;
	}
for(i=zone_start;i<=zone_end;i++){
	struct Zone *z;
	unsigned long j;
	unsigned long start,end,length;
	unsigned long tmp;
	if((memory_management_struct.zones_struct+i)->page_free_count<number){
		continue;
	}
	z = memory_management_struct.zones_struct + i;
	start = z->zone_start_address >>PAGE_2M_SHIFT;
	end = z->zone_end_address >> PAGE_2M_SHIFT;
	length = z->zone_length>>PAGE_2M_SHIFT;
	tmp=64-start%64;
	//将索引变量j调整到对齐处
	for(j=start;j<=end;j+= j%64 ? tmp : 64){
		unsigned long *p=memory_management_struct.bits_map+(j>>6);
		unsigned long shift=j%64;
		unsigned long k;
		for(k=shift;k<64-shift;k++){
			//Determine whether the bit segment of length number starting from the kth bit in the consecutive memory starting from p is all zeros. 
		    /*
			The entire expression can be decomposed into：
              A = (*p >> k) | (*(p+1) << (64-k)) - Extract the segments across the border
              B = (number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)) - Generate mask  **
            When the value of number is 64, shifting it 64 bits will result in undefined behavior 
			(since 1UL is 64 bits and shifting 64 bits will move all the bits out), so special handling is required.
			**
			C = A & B - Use mask to filter the bit segments
              if (!C) - Check whether the filtered segments are all zeros.
			*/  
			  if(!(((*p>>k)|(*(p+1)<<(64-k)))&(number == 64 ? 0xffffffffffffffffUL : ((1UL << number) - 1)))){
		      	unsigned long l;
				page=j+k-1;
				for(l=0;l<number;l++){
					struct Page *x=memory_management_struct.pages_struct+page+l;
					page_init(x,page_flags);
				}
				return (struct Page*)(memory_management_struct.pages_struct+page);
		      }
		}
	}
}
return NULL;
}
