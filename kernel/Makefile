# 工具定义
AS = as
CC = gcc
LD = ld
OBJCOPY = objcopy
OBJDUMP = objdump
MKDIR = mkdir
MV = mv

# 目录定义
DEBUG_DIR = debug

# 编译选项
CFLAGS= -mcmodel=large -fno-builtin -m64 -fno-stack-protector 
CFLAGSO1= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O1
CFLAGSO2= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O2
CFLAGSO3= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O3
CFLAGSOf= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -Ofast
CFLAGSOs= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -Os
ASFLAGS = --64
LDFLAGS = -b elf64-x86-64 -z muldefs
OBJCOPYFLAGS = -I elf64-x86-64 -S -R ".eh_frame" -R ".comment" -O binary

# 目标文件
OBJS = head.o main.o printk.o

# 默认目标
all: system kernel.bin move_debug

# 创建debug目录并移动调试文件
move_debug: system.asm
	@$(MKDIR) -p $(DEBUG_DIR)
	@$(MV) -f *.s *.asm *.lst $(DEBUG_DIR)/ 2>/dev/null || true

system: $(OBJS) kernel.lds
	$(LD) $(LDFLAGS) -o system $(OBJS) -T kernel.lds

kernel.bin: system
	$(OBJCOPY) $(OBJCOPYFLAGS) system kernel.bin

# 生成汇编预处理文件、目标文件和反汇编文件
head.o: head.S
	$(CC) -E head.S > head.s
	$(AS) $(ASFLAGS) -o head.o head.s -ahls > head.lst
	$(OBJDUMP) -d head.o > head.asm

main.o: main.c
	$(CC) $(CFLAGSOf) -c main.c -o main.o
	$(CC) $(CFLAGSOf) -S -fverbose-asm main.c -o main.s
	$(OBJDUMP) -d main.o > main.asm
	$(AS) $(ASFLAGS) -o main.o main.s -ahls > main.lst

printk.o: printk.c printk.h lib.h
	$(CC) $(CFLAGSOf) -c printk.c -o printk.o
	$(CC) $(CFLAGSOf) -S -fverbose-asm printk.c -o printk.s
	$(OBJDUMP) -d printk.o > printk.asm
	$(AS) $(ASFLAGS) -o printk.o printk.s -ahls > printk.lst

# 为最终系统文件生成反汇编
system.asm: system
	$(OBJDUMP) -d system > system.asm

# 调试目标：显示debug目录内容
debug-info:
	@echo "Debug files in $(DEBUG_DIR):"
	@ls -la $(DEBUG_DIR)/ || echo "Debug directory is empty"

# 清理
clean:
	rm -rf *.o *.s~ *.s *.S~ *.c~ *.h~ system Makefile~ kernel.lds~ kernel.bin *.asm *.lst
	rm -rf $(DEBUG_DIR)

# 伪目标
.PHONY: all clean move_debug debug-info