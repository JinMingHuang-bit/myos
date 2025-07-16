/*
compile into large model,
The large model has no address range limitation and allows the code and data to be distributed throughout 
the entire 64-bit address space (0 to 2^64 - 1).

The kernel is typically mapped to the Higher Half.
*/ 

//jmp    ffff800000100094 <Start_kernel+0x1c>
void Start_kernel(void)
{
    int *addr=(int *)0xffff800000a00000;
    int i;
    for(i=0;i<1440*20;i++){
        *((char*)addr+0)=(char)0x00;
        *((char*)addr+1)=(char)0x00;
        *((char*)addr+2)=(char)0xff;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }
    for(i=0;i<1440*20;i++){
        *((char*)addr+0)=(char)0x00;
        *((char*)addr+1)=(char)0xff;
        *((char*)addr+2)=(char)0x00;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }
    for(i=0;i<1440*20;i++){
        *((char*)addr+0)=(char)0xff;
        *((char*)addr+1)=(char)0x00;
        *((char*)addr+2)=(char)0x00;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;
    }
        for(i=0;i<1440*20;i++){
        *((char*)addr+0)=(char)0xff;
        *((char*)addr+1)=(char)0xff;
        *((char*)addr+2)=(char)0xff;
        *((char*)addr+3)=(char)0x00;
        addr=addr+1;

    }
    while (1)
    ;
     
}