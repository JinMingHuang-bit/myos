#include<stdarg.h>
#include"printk.h"
#include"lib.h"
#include"linkage.h"

void putchar(unsigned int *fb,int Xsize,int x,int y,unsigned int FRcolor,unsigned int BKcolor,unsigned char font){
	int i=0;
	int j=0;
	unsigned int *addr = NULL;
	unsigned char *fontp = NULL;
	int testval=0;
	fontp=font_ascii[font];
	for(i=0;i<16;i++){
	//Shift the mask one position to the right. After the first cycle, it becomes 0x80, then 0x40, 0x20, ... until 0x01.
		addr=fb+Xsize*(y+i)+x;
		testval =0x100;
		for(j=0;j<8;j++){
			testval =testval >>1;
			if(*fontp & testval){
				*addr =FRcolor;
			}else{
				*addr =BKcolor;
			}
			addr++;
		}
		fontp++;
	}
}

int color_printk(unsigned int FRcolor,unsigned int BKcolor,const char *fmt,...){
	int i=0;
	int count=0;
	int line=0;
	va_list args;
	va_start(args,fmt);	
	i=vsprintf(buf,fmt,args);
	va_end(args);
	for(count=0;count<i || line;count++){
		if(line >0){
			count--;
			goto Label_tab;
		}
		if((unsigned char)*(buf+count)=='\n'){
			Pos.YPosition++;
			Pos.XPosition=0;
		}else if((unsigned char)*(buf+count)=='\b'){
			Pos.XPosition--;
			if(Pos.XPosition<0){
				Pos.XPosition=(Pos.XResolution/ Pos.XCharSize-1)*Pos.XCharSize;
				Pos.YPosition--;
				if(Pos.YPosition<0){
					Pos.YPosition=(Pos.YResolution/ Pos.YCharSize-1)*Pos.YCharSize;
			}
			}
			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');			
		}else if((unsigned char)*(buf+count)=='\t'){
			//~7 的二进制是 11111000（假设8位）
			//清除低3位（因为8=2³），实现8字节边界对齐
				line =((Pos.XPosition+8)& ~(8-1))-Pos.XPosition;
			Label_tab:
				line--;
				putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,' ');
				Pos.XPosition++;
		}else{
			putchar(Pos.FB_addr,Pos.XResolution,Pos.XPosition*Pos.XCharSize,Pos.YPosition*Pos.YCharSize,FRcolor,BKcolor,(unsigned char)*(buf+count));
			Pos.XPosition++;
		}
		if(Pos.XPosition>=(Pos.XResolution/Pos.XCharSize)){
			Pos.YPosition++;
			Pos.XPosition=0;
	}
		if(Pos.YPosition>=(Pos.YResolution/Pos.YCharSize)){
			Pos.YPosition=0;
		}
}
return i;
}


// void clear_screen() {
//     int cols = Pos.XResolution / Pos.XCharSize;
//     int rows = Pos.YResolution / Pos.YCharSize;
//     // 遍历所有位置输出空格
//     for (int y = 0; y < rows; y++) {
//         for (int x = 0; x < cols; x++) {
//             putchar(Pos.FB_addr, Pos.XResolution, 
//                    x * Pos.XCharSize, y * Pos.YCharSize,
//                    FRcolor, BKcolor, ' ');
//         }
//     }
//     // 重置光标位置
//     Pos.XPosition = 0;
//     Pos.YPosition = 0;
// }	
		

	
int skip_atoi2(const char **s){
	int i=0;
	while(is_digit(**s)){
		// i=i*10+*((*s)++)-'0';
		char current_char = **s;  // 获取当前字符
		(*s)++;                   // 指针向后移动
		i = i * 10 + (current_char - '0');  // 更新数值
	}
	return i;
}

int skip_atoi(const char **s){
 	int i=0;
 	char current_char;
 	while(is_digit(current_char = **s)){
 		(*s)++;                   // 指针向后移动
 		i = i * 10 + (current_char - '0');  // 更新数值
 	}
 	return i;
}

// int atoi(const char *str) {
//     int result = 0;      // 存储转换结果
//     int sign = 1;        // 符号位，1表示正数，-1表示负数
//     int i = 0;           // 字符串索引
    
//     // 1. 跳过前导空白字符
//     while (str[i] == ' ' || str[i] == '\t' || str[i] == '\n' || 
//            str[i] == '\r' || str[i] == '\f' || str[i] == '\v') {
//         i++;
//     }
    
//     // 2. 处理可选的正负号
//     if (str[i] == '-') {
//         sign = -1;
//         i++;
//     } else if (str[i] == '+') {
//         sign = 1;
//         i++;
//     }
    
//     // 3. 转换数字部分
//     while (is_digit(str[i])) {
//         // 检查是否会发生溢出
//         if (result > INT_MAX / 10 || 
//             (result == INT_MAX / 10 && (str[i] - '0') > INT_MAX % 10)) {
//             return (sign == 1) ? INT_MAX : INT_MIN;
//         }
        
//         result = result * 10 + (str[i] - '0');
//         i++;
//     }
    
//     // 4. 返回结果（考虑符号）
//     return sign * result;
// }

static char *number(char *str,long num,int base,int size,int precision,int type){
	char c,sign,tmp[50];
	const char *digits="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	int i=0;
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
		sign=(type & PLUS)? '+':((type&SPACE)?' ' :0);
	}
	//If there are symbols, reduce the size by 1
	if(sign){
		size--;
	}
	if(type&SPECIAL){
		if(base==16){
			size=size-2;
		}else if(base==8){
			size=size-1;
		}
	}
	if(num==0){
		tmp[i++]='0';
	}else while (num!=0){
		// do_div(num,base) 返回num除以base的余数
		tmp[i++]=digits[do_div2(num,base)];
	}
	if(i>precision){
		precision=i;
	}
	size-=precision;
	if(!(type&(ZEROPAD+LEFT))){
		while(size-- >0){
			*str++=' ';
		}
	}
	if(sign){
		*str++=sign;
		}
	if(type&SPECIAL){
		if(base==8){
			*str++='0';
		}else if(base==16){
			*str++='0';
			*str++=digits[33];
		}
		}
	if(!(type&LEFT)){
		while(size-- >0){
			*str++=c;
		}
	}
	while(i<precision--){
		*str++='0';
	}
	while(i-- >0){
		*str++=tmp[i];
	}
	while(size-- >0){
		*str++=' ';
	}
	return str;
}


int vsprintf(char *buf,const char *fmt,va_list args){
	char *str;
	char *s;
	int flags;
	int field_width;
	int precision;
	int len;
	int i;
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
		if (is_digit(*fmt))
		{
			field_width= skip_atoi(&fmt);
		}
		else if (*fmt == '*')
		{
			fmt++;
			field_width=va_arg(args,int);
			if (field_width <0)
			{
				field_width=-field_width;
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
			/*
			Check if there is a "long" type modifier 
			If there is %lo, then handle the unsigned long type. 
			If it is %o, then handle the unsigned int type.
			*/
				if(qualifier =='l'){
					str=number(str,va_arg(args,unsigned long),8,field_width,precision,flags);
				}
				else{
					str=number(str,va_arg(args,unsigned int),8,field_width,precision,flags);
				}
				break;
			case 'p':
				if(field_width ==-1){
					//Automatically set the default width of the pointer as sizeof(void *) * 2
					field_width=sizeof(void *)*2;
					flags |=ZEROPAD;
				}
				str=number(str,(unsigned long)va_arg(args,void *),16,field_width,precision,flags);
				break;
			case 'x':
				flags |=SMALL;
			case 'X':
				if(qualifier =='l'){
					str=number(str,va_arg(args,unsigned long),16,field_width,precision,flags);	
				}else{
					str=number(str,va_arg(args,unsigned int),16,field_width,precision,flags);
				}
				break;
			case 'd':
			case 'i':
				flags |=SIGN;
			case 'u':
				if(qualifier =='l'){
					str=number(str,va_arg(args,unsigned long),10,field_width,precision,flags);
				}else{
					str=number(str,va_arg(args,unsigned int),10,field_width,precision,flags);
				}
				break;
			case 'n':
				if(qualifier =='l'){
					long *ip=va_arg(args,long *);
					*ip=(str-buf);
				}else{
					int *ip=va_arg(args,int *);
					*ip=(str-buf);
				}
				break;
			case '%':
				*str++ ='%';
				break;
			default:
				*str++ ='%';
				if(*fmt)
					*str++ =*fmt;
				else
					--fmt;
				break;
	}
}
	*str = '\0';
	return str - buf;
}