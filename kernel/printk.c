#include<stdarg.h>
#include"printk.h"
#include"lib.h"
#include"linkage.h"

int color_printk(unsigned int FRcolor,unsigned int BKcolor,const char *fmt,...){
	int i=0;
	int count=0;
	int line=0;
	va_list args;
	va_start(args,fmt);	
}

int vsprintf(char * buf,const char *fmt,va_list args){
	char *str;
	char *s;
	int flags;
	int flag_width;
	int precision;
	int len;
	int qualifier;
	for (str=buf;*fmt;fmt++)
	{
		if (*fmt !='%')
		{
			*str++ =*fmt;
			continue;
		}
		flags=0;
		repeat:
			fmt++;
			switch (*fmt)
			{
			case '-':
				flags |=LEFT;
				goto repeat;
			case '+':
				flags |=PLUS;
				goto repeat;
			case ' ':
				flags |=SPACE;
				goto repeat;			
			case '#':
				flags |=SPECIAL;
				goto repeat;			
			case '0':
				flags |=ZEROPAD;
				goto repeat;				
			}
		
	}
	
}