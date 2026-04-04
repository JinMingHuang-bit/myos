OUTPUT_FORMAT("elf64-x86-64","elf64-x86-64","elf64-x86-64")
OUTPUT_ARCH(i386:x86-64)
ENTRY(_start)
SECTIONS
{

	. = 0xffff800000000000 + 0x100000;
	.text :
	{
		_text = .;  /*Define the symbol _text, whose value is the starting address of the code segment.*/
		*(.text)	/*Move all the .text sections from all the input files into this section.*/

		_etext = .; /*Define the symbol _etext, whose value is the ending address of the code segment.*/
	}
	. = ALIGN(8);   /* Align the current position counter to an 8-byte boundary, which helps improve access efficiency.*/
	.data :
	{
		_data = .;
		*(.data)
		
		_edata = .;
	}
	.rodata :
	{
		_rodata = .;
		*(.rodata)
		_erodata = .;
	}
	. = ALIGN(32768);
	.data.init_task:{*(.data.init_task)}
	.bss :
	{
		_bss = .;
		*(.bss)
		_ebss = .;
	}

	_end = .; /*Define the symbol _end, whose value is the ending address of the data segment.*/
}
