all: boot4.bin loader.bin

loader.bin: 
	nasm -f bin loader.asm -o loader.bin
	nasm -f bin loader.asm -l loader.lst  -o loader.bin

boot4.bin: 
	nasm -f bin boot4.asm -o boot4.bin

clean: 
	rm -f *.bin *.asm~ Makefile~ loader.bin boot4.bin