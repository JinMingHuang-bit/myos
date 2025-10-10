/*
compile into large model,
The large model has no address range limitation and allows the code and data to be distributed throughout 
the entire 64-bit address space (0 to 2^64 - 1).

The kernel is typically mapped to the Higher Half.
*/ 

//jmp    ffff800000100094 <Start_kernel+0x1c>
#include "lib.h"
#include "printk.h"
void Start_Kernel(void)
{
    //the loader.asm now using 640×480;
    // if there is a problem,try 640*20,otherwise use 1440*20
    //(1440*900)
    int *addr=(int *)0xffff800000a00000;
    int i;
    Pos.XResolution=640;
    Pos.YResolution=480;
    Pos.XPosition=0;
    Pos.YPosition=0;
    Pos.XCharSize=8;
    Pos.YCharSize=16;
    Pos.FB_addr=(int *)0xffff800000a00000;
    Pos.FB_length=(Pos.XResolution*Pos.YResolution*4);

    for(i=0;i<640*20;i++){
        *((char*)addr+0)=(char)0x00;
        *((char*)addr+1)=(char)0x00;
        *((char*)addr+2)=(char)0xff;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }
    for(i=0;i<640*20;i++){
        *((char*)addr+0)=(char)0x00;
        *((char*)addr+1)=(char)0xff;
        *((char*)addr+2)=(char)0x00;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }
    for(i=0;i<640*20;i++){
        *((char*)addr+0)=(char)0xff;
        *((char*)addr+1)=(char)0x00;
        *((char*)addr+2)=(char)0x00;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;
    }
    for(i=0;i<640*20;i++){
        *((char*)addr+0)=(char)0xff;
        *((char*)addr+1)=(char)0xff;
        *((char*)addr+2)=(char)0xff;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }

    color_printk(YELLOW,BLACK,"hello\t\t kernel!\n");
    while (1)
    ;
     
}