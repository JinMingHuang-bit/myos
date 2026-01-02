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
void Start_Kernel(void)
{

    //the loader.asm now using 640×480;
    // if there is a problem,try 640*20,otherwise use 1440*20
    //(1440*900)
    //Enable SSE exception handling
    unsigned long cr4;
    asm volatile("mov %%cr4, %0" : "=r"(cr4));
    cr4 |= (1 << 9);  // Set the OSXMMEXCPT flag
    cr4 |= (1 << 10); // Set the OSXSAVE flag
    asm volatile("mov %0, %%cr4" : : "r"(cr4));
    
    extern char _text;
    extern char _etext;
    extern char _edata;
    extern char _end;
    color_printk(YELLOW,BLACK,"_text:%#018lx,_etext:%#018lx,_edata:%#018lx,_end:%#018lx\n",&_text,&_etext,&_edata,&_end);
    int *addr=(int *)0xffff800000a00000;
    //0xffff800000a00000 is  a linear address
    int i;
    Pos.XResolution=1440;
    Pos.YResolution=900;
    Pos.XPosition=0;
    Pos.YPosition=0;
    Pos.XCharSize=8;
    Pos.YCharSize=16;
    Pos.FB_addr=(int *)0xffff800000a00000;
    Pos.FB_length=(Pos.XResolution*Pos.YResolution*4+PAGE_4K_SIZE -1)&~(PAGE_4K_MASK);
    load_TR(8);
    set_tss64(0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,
0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00);
    sys_vector_init();
    struct  Global_Memory_Descriptor memory_management_struct;
    memory_management_struct.start_code=(unsigned long)&_text;
    memory_management_struct.end_code=(unsigned long)&_etext;
    memory_management_struct.end_data=(unsigned long)&_edata;
    memory_management_struct.end_brk=(unsigned long)&_end;

    color_printk(WHITE,BLACK,"myos kernel 0.01\n");
    color_printk(YELLOW,BLACK,"hello,User\n");
    color_printk(YELLOW,BLACK,"Standing firm in the universe and cosmos, I have established the paradise of Eden.\n");
    // 
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
    init_memory();
    //0xffff8000001043d4
    color_printk(YELLOW,BLACK,"I am the royal daughter who has broken the law!\n");
    // clear_screen(YELLOW,BLACK);
    color_printk(YELLOW,BLACK,"Hmm,there is still a problem here?");
    while (1)
    ;
     
}