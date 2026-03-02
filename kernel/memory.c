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
memory_management_struct.pages_struct=(struct Page *)(((unsigned long)memory_management_struct.bits_map+memory_management_struct.bits_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);
memory_management_struct.pages_size=TotalMem>>PAGE_2M_SHIFT;
/*
// example (64-bit system)：
// sizeof(long) = 8, sizeof(long)-1 = 7, ~(sizeof(long)-1) = ~7 = 0xFFFFFFF8
// Alignment mask: 0xFFFFFFF8, which means the last 3 bits are cleared, achieving 8-byte alignment.
 */
memory_management_struct.pages_length=((TotalMem>>PAGE_2M_SHIFT)*sizeof(struct Page)+sizeof(long)-1)&(~(sizeof(long)-1));
// Zero out and initialize the Page array
Cmemset(memory_management_struct.pages_struct,0x00,memory_management_struct.pages_length);

memory_management_struct.zones_struct=(struct Zone*)(((unsigned long)memory_management_struct.pages_struct+memory_management_struct.pages_length+PAGE_4K_SIZE-1)&PAGE_4K_MASK);

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


ZONE_DMA_INDEX = 0;	//need rewrite in the future
ZONE_NORMAL_INDEX = 0;	//need rewrite in the future

for(i=0;i<memory_management_struct.zones_size;i++){
	struct Zone *z=memory_management_struct.zones_struct+i;
	color_printk(ORANGE,BLACK,"zone_start_address:%#018lx,zone_end_address:%#018lx,zone_length:%#018lx,pages_group:%#018lx,pages_length:%#018lx\n",z->zone_start_address,z->zone_end_address,z->zone_length,z->pages_group,z->pages_length);

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
	Global_CR3 = Get_gdt();
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
					//error here
					page_init(x,page_flags);
				}
				return (struct Page*)(memory_management_struct.pages_struct+page);
		      }
		}
	}
}
return NULL;
}

/*
 * Page table mapping functions for x86_64
 * Virtual address layout (48-bit canonical form):
 * Bits 47-39: PML4 index (9 bits)
 * Bits 38-30: PDPT index (9 bits)
 * Bits 29-21: PD index (9 bits)
 * Bits 20-12: PT index (9 bits)
 * Bits 11-0:  Offset within page (12 bits)
 */

/*
 * Get PML4 entry for a virtual address
 */
static inline unsigned long *get_pml4_entry(unsigned long virt_addr)
{
    unsigned long *pml4 = (unsigned long *)0xffff800000007c00;  // PML4 base (from boot)
    unsigned long pml4_index = (virt_addr >> 39) & 0x1FF;
    return pml4 + pml4_index;
}

/*
 * Get PDPT entry for a virtual address
 */
static inline unsigned long *get_pdpt_entry(unsigned long *pml4_entry, unsigned long virt_addr)
{
    unsigned long pdpt_phys = *pml4_entry & PAGE_2M_MASK;
    if (!pdpt_phys)
        return NULL;
    unsigned long *pdpt = (unsigned long *)Phy_To_Virt(pdpt_phys);
    unsigned long pdpt_index = (virt_addr >> 30) & 0x1FF;
    return pdpt + pdpt_index;
}

/*
 * Get PD entry for a virtual address
 */
static inline unsigned long *get_pd_entry(unsigned long *pdpt_entry, unsigned long virt_addr)
{
    unsigned long pd_phys = *pdpt_entry & PAGE_2M_MASK;
    if (!pd_phys)
        return NULL;
    unsigned long *pd = (unsigned long *)Phy_To_Virt(pd_phys);
    unsigned long pd_index = (virt_addr >> 21) & 0x1FF;
    return pd + pd_index;
}

/*
 * Get PT entry for a virtual address
 */
static inline unsigned long *get_pt_entry(unsigned long *pd_entry, unsigned long virt_addr)
{
    unsigned long pt_phys = *pd_entry & PAGE_2M_MASK;
    if (!pt_phys)
        return NULL;
    unsigned long *pt = (unsigned long *)Phy_To_Virt(pt_phys);
    unsigned long pt_index = (virt_addr >> 12) & 0x1FF;
    return pt + pt_index;
}

/*
 * Allocate a new page table page (4KB)
 */
static unsigned long *alloc_page_table_page(void)
{
    struct Page *page = alloc_page(ZONE_NORMAL, 1, PG_PTable_Maped | PG_Active | PG_Kernel);
    if (!page)
        return NULL;
    
    // Zero out the page
    unsigned long *pt = (unsigned long *)Phy_To_Virt(page->PHY_address);
    Cmemset(pt, 0, PAGE_4K_SIZE);
    
    return pt;
}

/*
 * Map a physical page to a virtual address
 * flags: page flags (PAGE_PRESENT, PAGE_RW, etc.)
 */
void map_page(unsigned long phy_addr, unsigned long virt_addr, unsigned long flags)
{
    unsigned long *pml4_entry, *pdpt_entry, *pd_entry, *pt_entry;
    unsigned long *new_table;
    
    // Get PML4 entry
    pml4_entry = get_pml4_entry(virt_addr);
    
    // Check if PDPT exists
    pdpt_entry = get_pdpt_entry(pml4_entry, virt_addr);
    if (!pdpt_entry) {
        // Allocate new PDPT
        new_table = alloc_page_table_page();
        if (!new_table)
            return;
        
        // Set PML4 entry to point to new PDPT
        *pml4_entry = Virt_To_Phy(new_table) | PAGE_KERNEL_FLAGS;
        
        // Get the new PDPT entry
        pdpt_entry = get_pdpt_entry(pml4_entry, virt_addr);
    }
    
    // Check if PD exists
    pd_entry = get_pd_entry(pdpt_entry, virt_addr);
    if (!pd_entry) {
        // Allocate new PD
        new_table = alloc_page_table_page();
        if (!new_table)
            return;
        
        // Set PDPT entry to point to new PD
        *pdpt_entry = Virt_To_Phy(new_table) | PAGE_KERNEL_FLAGS;
        
        // Get the new PD entry
        pd_entry = get_pd_entry(pdpt_entry, virt_addr);
    }
    
    // Check if PT exists
    pt_entry = get_pt_entry(pd_entry, virt_addr);
    if (!pt_entry) {
        // Allocate new PT
        new_table = alloc_page_table_page();
        if (!new_table)
            return;
        
        // Set PD entry to point to new PT
        *pd_entry = Virt_To_Phy(new_table) | PAGE_KERNEL_FLAGS;
        
        // Get the new PT entry
        pt_entry = get_pt_entry(pd_entry, virt_addr);
    }
    
    // Set the page table entry
    *pt_entry = phy_addr | flags;
    
    // Flush TLB
    flush_tlb();
}

/*
 * Unmap a virtual address
 */
void unmap_page(unsigned long virt_addr)
{
    unsigned long *pml4_entry, *pdpt_entry, *pd_entry, *pt_entry;
    
    pml4_entry = get_pml4_entry(virt_addr);
    pdpt_entry = get_pdpt_entry(pml4_entry, virt_addr);
    if (!pdpt_entry)
        return;
    
    pd_entry = get_pd_entry(pdpt_entry, virt_addr);
    if (!pd_entry)
        return;
    
    pt_entry = get_pt_entry(pd_entry, virt_addr);
    if (!pt_entry)
        return;
    
    // Clear the page table entry
    *pt_entry = 0;
    
    // Flush TLB
    flush_tlb();
}

/*
 * Find page table entry for a virtual address
 */
unsigned long *page_virt_to_page_table(unsigned long virt_addr)
{
    unsigned long *pml4_entry, *pdpt_entry, *pd_entry, *pt_entry;
    
    pml4_entry = get_pml4_entry(virt_addr);
    if (!(*pml4_entry & PAGE_PRESENT))
        return NULL;
    
    pdpt_entry = get_pdpt_entry(pml4_entry, virt_addr);
    if (!pdpt_entry || !(*pdpt_entry & PAGE_PRESENT))
        return NULL;
    
    pd_entry = get_pd_entry(pdpt_entry, virt_addr);
    if (!pd_entry || !(*pd_entry & PAGE_PRESENT))
        return NULL;
    
    pt_entry = get_pt_entry(pd_entry, virt_addr);
    if (!pt_entry)
        return NULL;
    
    return pt_entry;
}

/*
 * Find page table entry for a physical address
 */
unsigned long *page_phy_to_page_table(unsigned long phy_addr)
{
    // Convert physical to virtual and find page table entry
    unsigned long virt_addr = (unsigned long)phy_addr + PAGE_OFFSET;
    return page_virt_to_page_table(virt_addr);
}
