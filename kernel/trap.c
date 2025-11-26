#include "lib.h"
#include "gate.h"
#include "printk.h"
void do_divide_error(unsigned long rsp,unsigned long error_code) {
    unsigned long *p=NULL;
    //将栈指针寄存器RSP(异常处理模块将栈指针寄存器RSP的值作为参数传入RDI寄存器中)的值向上索引0x98个字节,以获取被中断现场的RIP寄存器的值.
    //这是产生异常指令的地址值.
    p=(unsigned long *)(rsp+0x98);
    color_printk(RED,BLACK,"do_divide_error(0):ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code,rsp,*p);
    while (1);
}

void do_debug(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_debug(1),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_nmi(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_nmi(2),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_int3(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_int3(3),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_overflow(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_overflow(4),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_bounds(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_bounds(5),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_undefined_opcode(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_undefined_opcode(6),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_dev_not_available(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_dev_not_available(7),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_double_fault(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_double_fault(8),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_coprocessor_segment_overrun(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	color_printk(RED,BLACK,"do_coprocessor_segment_overrun(9),ERROR_CODE:%#018lx,RSP:%#018lx,RIP:%#018lx\n",error_code , rsp , *p);
	while(1);
}


void sys_vector_init()
{
    // set_trap_gate(0,1,divide_error);
	// set_trap_gate(1,1,debug);
	// set_intr_gate(2,1,nmi);
	// set_system_gate(3,1,int3);
	// set_system_gate(4,1,overflow);
	// set_system_gate(5,1,bounds);
	// set_trap_gate(6,1,undefined_opcode);
	// set_trap_gate(7,1,dev_not_available);
	// set_trap_gate(8,1,double_fault);
	// set_trap_gate(9,1,coprocessor_segment_overrun);
	// set_trap_gate(10,1,invalid_TSS);
	// set_trap_gate(11,1,segment_not_present);
	// set_trap_gate(12,1,stack_segment_fault);
	// set_trap_gate(13,1,general_protection);
	// set_trap_gate(14,1,page_fault);
	//15 Intel reserved. Do not use.
	// set_trap_gate(16,1,x87_FPU_error);
	// set_trap_gate(17,1,alignment_check);
	// set_trap_gate(18,1,machine_check);
	// set_trap_gate(19,1,SIMD_exception);
	// set_trap_gate(20,1,virtualization_exception);

	//set_system_gate(SYSTEM_CALL_VECTOR,7,system_call); 
}
