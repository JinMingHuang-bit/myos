#ifndef __PRINTK_H__
#define __PRINTK_H__

#include <stdarg.h>
#include "font.h"
#include "linkage.h"
/*
bitmask
These constants are all powers of 2 (1, 2, 4, 8, 16, 32, 64), 
so in the binary representation of each constant, only one bit is 1 and the rest are 0.
*/
#define ZEROPAD 1
#define SIGN    2       /* unsigned/signed long */
#define PLUS    4       /* show plus */
#define SPACE   8       /* space if plus */
#define LEFT    16      /* left justified */
#define SPECIAL 32      /* 0x */
#define SMALL   64      /* use 'abcdef' instead of 'ABCDEF' */

/*
These values are in the 32-bit format of 0xAARRGGBB:
These values are in the 32-bit format of 0xAARRGGBB:
AA (the first two digits): Alpha (transparency) channel
AA (the first two bits): Alpha (transparency) channel
RR (the middle two digits): Red channel
RR (the middle two bits): Red channel
GG (the middle two digits): Green channel
GG (the middle two bits): Green channel
BB (the last two digits): Blue channel
BB (the last two bits): Blue channel
Each channel is represented by a 2-digit hexadecimal number, ranging from 00 (0) to FF (255)
*/
#define WHITE   0x00ffffff      //white
#define BLACK   0x00000000      //black
#define RED     0x00ff0000      //red
#define ORANGE  0x00ff8000      //orange
#define YELLOW  0x00ffff00      //yellow
#define GREEN   0x0000ff00      //green
#define BLUE    0x000000ff      //blue
#define INDIGO  0x0000ffff      //deep blue
#define PURPLE  0x008000ff      //purple

#define is_digit(c)((c)>='0'&&(c)<='9')

struct position
{
    int XResolution;
    int YResolution;
    int XPosition;
    int YPosition;
    int XCharSize;
    int YCharSize;
    unsigned int * FB_addr;
    unsigned long FB_length;
}Pos;

extern unsigned char font_ascii[256][16];
// may need to change here
char buf[4096]={0};

void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font);

int skip_atoi(const char **s);
int skip_atoi2(const char **s);
int atoi(const char *str);
void clear_screen(unsigned int FRcolor,unsigned int BKcolor);
//precision 精度
static char *number(char *str, long num, int base, int size, int precision ,int type);

int vsprintf(char *buff,const char *fmt,va_list args);

int color_printk(unsigned int FRcolor,unsigned int BKcolor,const char *fmt,...);

#define do_div(n,base)({ \
int __res;\
__asm__("divq %%rcx \n\t" \
        :"=a"(n),"=d"(__res) \
        :"0" (n),"1" (0),"c" (base) \
        :"cc" \
    ); \
__res; \
})

// 第二个宏 - 使用自动寄存器分配（修复版本）
#define do_div2(n, base) ({ \
    int __res; \
    __asm__("divq %[divisor]" \
            : "=a"(n), "=d"(__res) \
            : "0"(n), "1"(0), [divisor]"r"((unsigned long)base) \
            : "cc" \
    ); \
    __res; \
})

#define Cdo_div(n, base) ({ \
    typeof(n) __n = (n); \
    typeof(base) __base = (base); \
    typeof(n) __res = __n % __base; \
    (n) = __n / __base; \
    __res; \
})

#endif