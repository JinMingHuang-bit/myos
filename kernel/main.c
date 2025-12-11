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

void Start_Kernel(void)
{

    //the loader.asm now using 640×480;
    // if there is a problem,try 640*20,otherwise use 1440*20
    //(1440*900)
    // 启用SSE异常处理
    unsigned long cr4;
    asm volatile("mov %%cr4, %0" : "=r"(cr4));
    cr4 |= (1 << 9);  // 设置OSXMMEXCPT位
    cr4 |= (1 << 10); // 设置OSXSAVE位（如果需要）
    asm volatile("mov %0, %%cr4" : : "r"(cr4));
    
    int *addr=(int *)0xffff800000a00000;
    int i;
    Pos.XResolution=1440;
    Pos.YResolution=900;
    Pos.XPosition=0;
    Pos.YPosition=0;
    Pos.XCharSize=8;
    Pos.YCharSize=16;
    Pos.FB_addr=(int *)0xffff800000a00000;
    Pos.FB_length=(Pos.XResolution*Pos.YResolution*4);
    load_TR(8);
    //set_tss64(0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00);
    set_tss64(0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,
0xffff800000007c00,0xffff800000007c00,0xffff800000007c00,0xffff800000007c00);
    sys_vector_init();
    // for(i=0;i<Pos.XResolution*20;i++){
    //     *((char*)addr+0)=(char)0x00;
    //     *((char*)addr+1)=(char)0x00;
    //     *((char*)addr+2)=(char)0xff;
    //     *((char*)addr+3)=(char)0x00;
    //     addr=addr+1;

    // }
    // for(i=0;i<Pos.XResolution*20;i++){
    //     *((char*)addr+0)=(char)0x00;
    //     *((char*)addr+1)=(char)0xff;
    //     *((char*)addr+2)=(char)0x00;
    //     *((char*)addr+3)=(char)0x00;
    //     addr=addr+1;

    // }
    // for(i=0;i<Pos.XResolution*20;i++){
    //     *((char*)addr+0)=(char)0xff;
    //     *((char*)addr+1)=(char)0x00;
    //     *((char*)addr+2)=(char)0x00;
    //     *((char*)addr+3)=(char)0x00;
    //     addr=addr+1;
    // }
    // for(i=0;i<Pos.XResolution*20;i++){
    //     *((char*)addr+0)=(char)0xff;
    //     *((char*)addr+1)=(char)0xff;
    //     *((char*)addr+2)=(char)0xff;
    //     *((char*)addr+3)=(char)0x00;
    //     addr=addr+1;

    // }
    color_printk(YELLOW,BLACK,"hello\t\t kernel!\n");
    color_printk(YELLOW,BLACK,"hello,User\n");
    color_printk(YELLOW,BLACK,"Standing firm in the universe and cosmos, I have established the paradise of Eden.\n");
    i=1/0;    
    color_printk(YELLOW,BLACK,"I am the royal daughter who has broken the law!\n");
    // clear_screen(YELLOW,BLACK);
    color_printk(YELLOW,BLACK,"Hmm,there is still a problem here?");
    while (1)
    ;
     
}