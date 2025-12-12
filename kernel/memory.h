#ifndef _MEMORY_H_
#define _MEMORY_H_

/*
When the system starts up, the BIOS/boot program collects the memory mapping information. 
The boot program stores the mapping table at the designated location (such as physical address 0x7e00) 
During the kernel initialization, a page table mapping is established to make this physical address accessible in the kernel space. 
The kernel code reads and parses these entries through pointers. 
The kernel builds the physical memory management data structure based on this information.

E820 is a convenient tool for BIOS of X86-based computer systems to map memory to the operating system or boot loader. 
By setting the AX register to the hexadecimal value E820, it can be accessed through the INT15H call, 
reporting which memory address ranges are available and which are reserved for use by the BIOS.
*/


struct Memory_E820_Formate
{
	unsigned int address1;
	unsigned int address2;
	unsigned int length1;
	unsigned int length2;
	unsigned int type;
}

#endif