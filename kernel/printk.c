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

// int skip_atoi(const char **s){
// 	int i=0;
// 	while(is_digit(**s)){
// 		// i=i*10+*((*s)++)-'0';
// 		char current_char = **s;  // 获取当前字符
// 		(*s)++;                   // 指针向后移动
// 		i = i * 10 + (current_char - '0');  // 更新数值
// 	}
// 	return i;
// }

int skip_atoi(const char **s){
 	int i=0;
 	char current_char;
 	while(is_digit(current_char = **s)){
 		(*s)++;                   // 指针向后移动
 		i = i * 10 + (current_char - '0');  // 更新数值
 	}
 	return i;
}

static char *number(char *str,long num,int base,int size,int precision,int type){
	char c,sign,tmp[50];
	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int i;
	if(type & SMALL){
		digits="0123456789abcdefghijklmnopqrstuvwxyz";
	}
	if(type & LEFT){
		type &=~ZEROPAD;
	}
	if(base<2 || base>36){
		return 0;	
	}
	c=(type & ZEROPAD) ? '0' : ' ';
	sign=0;
	if(type & SIGN  && num <0){
		sign='-';
		num=-num;
	}else{
		sign=(type & PLUS)? '+':((type&SPACE)?'' :0);
	}
	//If there are symbols, reduce the size by 1
	if(sign){
		size--
	}
	if(type&SPECIAL){
		if(base==16){
			size=size-2;
		}else if(base==8){
			size=size-1;
		}
	}
	int i=0;
	if(num==0){
		tmp[i++]='0';
	}else while (num!=0){
		tmp[i++]=digits[do_div(num,base)];
	}
	if(i>precision){
		precision=i;
	}
	size-=precision;
	if(!(type&(ZEROPAD+LEFT))){
		while(size-- >0){
			*str++='0';
		}else if()
	}
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
		//h - short类型:%hd
		//l - long类型:%ld
		//L - long long类型:%lld
		//z - size_t类型
		if(*fmt =='h' || *fmt =='l' || *fmt =='L'||*fmt =='z'){
			qualifier =*fmt;
			fmt++;
	}
	switch (*fmt){
			case 'c':
				if(!(flags &LEFT)){
					while(--field_width>0){
						*str++ =' ';
					}
				}
				*str++ =(unsigned char)va_arg(args,int);
				while(--field_width>0){
					*str++ =' ';
				}
				break;
			case 's':
				s=va_arg(args,char *);
				if(!s){
					s='\0';
				}
				// use C version here
				len =Cstrlen(s);
				if(precision <0){
					precision=len;
				}
				else if(len >precision){
					len=precision;	
				}
				if(!(flags &LEFT)){
					while(len <field_width--){
						*str++ =' ';
					}
				}
				for(i=0;i<len;i++){
						*str++ =*s++;
					}
				while(len <field_width--){
						*str++ =' ';
					}
			break;
			case 'o':
			if(qualifier =='l'){
				str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
			}
			else{
				str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
			}
			break;
	}
}
}