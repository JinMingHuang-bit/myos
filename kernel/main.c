/*
compile into large model,
The large model has no address range limitation and allows the code and data to be distributed throughout 
the entire 64-bit address space (0 to 2^64 - 1).

The kernel is typically mapped to the Higher Half.
*/ 
//jmp    ffff800000100094 <Start_kernel+0x1c>
#include "lib.h"
#include "printk.h"
#include "gate.h"
#include "trap.h"
#include "memory.h"


extern char _text;
extern char _etext;
extern char _edata;
extern char _end;

struct Global_Memory_Descriptor memory_management_struct = {{0},0};
void Start_Kernel(void)
{

    //the loader.asm now using 640×480;
    // if there is a problem,try 640*20,otherwise use 1440*20
    //(1440*900)
    // Enable SSE exception handling
    unsigned long cr4;
    asm volatile("mov %%cr4, %0" : "=r"(cr4));
    cr4 |= (1 << 9);  // Set OSXMMSAVE bit
    cr4 |= (1 << 10); // Set OSXSAVE bit
    asm volatile("mov %0, %%cr4" : : "r"(cr4));
    
    // int *addr=(int *)0xffff800000a00000;
    int i;
    Pos.XResolution=1440;
    Pos.YResolution=900;
    Pos.XPosition=0;
    Pos.YPosition=0;
    Pos.XCharSize=8;
    Pos.YCharSize=16;
    //The physical base address of the frame cache
    Pos.FB_addr=(int *)0xffff800000a00000;
    Pos.FB_length=(Pos.XResolution*Pos.YResolution*4);
    //test dispaly
    int *addr=(int *)0xffff800000a00000;
    for ( i = 0; i < 1440*20; i++)
    {
        *((char *)addr+0)=(char)0x00;
        *((char *)addr+1)=(char)0x00;
        *((char *)addr+2)=(char)0xff;
        *((char *)addr+3)=(char)0x00;
        addr++;
    }
    i=1;
    color_printk(YELLOW,BLACK,"the number is:%d\n",i);
    color_printk(YELLOW,BLACK,"the address is:%p\n", &i);
    load_TR(8);
    //set_tss64(0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00);
    set_tss64(0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,
0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00);
    sys_vector_init();
    // struct  Global_Memory_Descriptor memory_management_struct={{0},0};
    // i=1/0;
        /*
0xffff80000aa00000 is a high-half kernel address (in canonical form) 
This address is located in the kernel space (the area above 0xffff80000000000) 
At the initial stage of startup, the kernel only mapped the necessary memory areas: 
Kernel code segment, data segment 
Frame buffer (0xffff800000a00000) 
Some possible system data structures 
However, 0xffff80000aa00000 has not been mapped to any physical memory.
Frame buffers usually only map a small section (for example, 1440×900×4 ≈ 5.2MB). 
0xffff80000aa00000 exceeds the mapped range of the frame buffer
    */
    // i=*(int*)0xffff80000aa00000; 
    memory_management_struct.start_code = (unsigned long)& _text;
	memory_management_struct.end_code   = (unsigned long)& _etext;
	memory_management_struct.end_data   = (unsigned long)& _edata;
	memory_management_struct.end_brk    = (unsigned long)& _end;
    color_printk(YELLOW,BLACK,"myos kernel 0.01\n");
    color_printk(YELLOW,BLACK,"hello,User\n");
    color_printk(YELLOW,BLACK,"Standing firm in the universe and cosmos, I have established the paradise of Eden.\n");
    color_printk(YELLOW,BLACK,"I am the royal daughter who has broken the law!\n");
    init_memory();
    struct Page *page=NULL;
    color_printk(RED,BLACK,"memory_management_struct.bitsmap:%#018lx\n", *memory_management_struct.bits_map);
    color_printk(RED,BLACK,"memory_management_struct.bitsmap+1:%#018lx\n", *(memory_management_struct.bits_map+1));
    page=alloc_page(ZONE_NORMAL,64,PG_PTable_Maped |PG_Active|PG_Kernel);
    for(i=0;i<16;i++){
        color_printk(INDIGO,BLACK,"page%d\tattribute:%#018lx\taddress:%#018lx\t",i,(page+i)->attribute,(page+i)->PHY_address);
        i++;
        color_printk(INDIGO,BLACK,"page%d\tattribute:%#018lx\taddress:%#018lx\t",i,(page+i)->attribute,(page+i)->PHY_address);
    }
    color_printk(RED,BLACK,"memory_management_struct.bitsmap:%#018lx\n", *memory_management_struct.bits_map);
    color_printk(RED,BLACK,"memory_management_struct.bitsmap+1:%#018lx\n", *(memory_management_struct.bits_map+1));
    // clear_screen(YELLOW,BLACK);
    color_printk(YELLOW,BLACK,"Hmm,there is still a problem here?");
    while (1)
    ;
     
}