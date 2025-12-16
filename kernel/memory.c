#include "memory.h"
#include "lib.h"
#include "printk.h"

void init_memory(){
	int i,j;
	
	unsigned long TotalMem =0;
	struct Memory_E820_Formate *p =NULL;
	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	p=(struct Memory_E820_Formate *)0xffff800000007e00;
	for (int i = 0; i < 32; i++)
	{
		color_printk(ORANGE,BLACK,"address:%#010x,%08x\tLength:%#010x,%08x\tType:%#010x\n",p->address2,p->address1,p->length2,p->length1,p->type);
		unsigned long tmp =0;
		if(p->type==1){
			tmp=p->length2;
			TotalMem += p->length1;
			TotalMem += tmp << 32;
		}
		p++;
		if(p->type >4){
			break;
		}
	}
	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#0181x\n",TotalMem);
}

// void init_memory() {
//     unsigned long TotalMem = 0;
//     struct Memory_E820_Formate *p = NULL;
    
//     color_printk(BLUE, BLACK, "Display physics address Map...\n");
    
//     p = (struct Memory_E820_Formate *)0xffff800000007e00;
    
//     // 更安全的循环：检查类型是否有效
//     for (int i = 0; i < 32; i++) {
//         // 先检查是否为有效条目（类型1-4）
//         if (p->type == 0 || p->type > 4) {
//             break;  // 遇到无效类型，结束循环
//         }
        
//         // 正确打印所有字段
//         color_printk(ORANGE, BLACK,
//             "Address:%#010x,%08x\tLength:%#010x,%08x\tType:%#010x\n",
//             p->address2, p->address1, 
//             p->length2, p->length1, 
//             p->type);
        
//         // 统计可用内存
//         if (p->type == 1) {
//             // 将64位长度转换为64位值
//             unsigned long long length = ((unsigned long long)p->length2 << 32) | p->length1;
//             TotalMem += length;  // 假设TotalMem是64位
//         }
        
//         p++;  // 移动到下一个条目
//     }
    
//     // 修正格式字符串
//     color_printk(ORANGE, BLACK, "OS Can Used Total RAM:%#018llx\n", TotalMem);
// }