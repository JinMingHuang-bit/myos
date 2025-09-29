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
		field_width=-1;
		if (is_digit=(*fmt))
		{
			field_width= skip_atoi(&fmt);
		}
		else if (*fmt == '*')
		{
			fmt++;
			field_width=va_arg(args,int);
			if (field_width <0)
			{
				field_width=-field_width
				flags |=LEFT;
			}
			
		}
		precision =-1;
		if(*fmt =='.'){
			fmt++;
			if (is_digit(*fmt))
			{
				precision=skip_atoi(&fmt);
			}
			else if(*fmt == '*'){
				fmt++;
				precision =va_arg(args,int);
			}
			if(precision <0){
				precision=0;
			}
		}
		qualifier =-1;
		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
			qualifier =*fmt;
			fmt++;
	}
	
}