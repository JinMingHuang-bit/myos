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
#-mcmodel=large使用大型代码模型（large code model）,允许代码和数据的大小超过2GB限制
CFLAGS= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -g
CFLAGSO1= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O1 -g
CFLAGSO2= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O2 -g
CFLAGSO3= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -O3 -g
CFLAGSOf= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -Ofast -g
CFLAGSOs= -mcmodel=large -fno-builtin -m64 -fno-stack-protector -Os -g
ASFLAGS = --64
LDFLAGS = -b elf64-x86-64 -z muldefs
#OBJCOPYFLAGS = -I elf64-x86-64 -S -R ".eh_frame" -R ".comment" -O binary
OBJCOPYFLAGS = -I elf64-x86-64 -O binary
# 目标文件
OBJS = head.o main.o printk.o trap.o entry.o memory.o

# 默认目标
all: system kernel.bin move_debug system.debug 

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

entry.o:entry.S
	$(CC) -E entry.S > entry.s
	$(AS) $(ASFLAGS) -o entry.o entry.s -ahls > entry.lst
	$(OBJDUMP) -d entry.o > entry.asm

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o
	$(CC) $(CFLAGS) -S -fverbose-asm main.c -o main.s
	$(OBJDUMP) -d main.o > main.asm
	$(AS) $(ASFLAGS) -o main.o main.s -ahls > main.lst
memory.o: memory.c  memory.h lib.h printk.h
	$(CC) $(CFLAGS) -c memory.c -o memory.o
	$(CC) $(CFLAGS) -S -fverbose-asm memory.c -o memory.s
	$(OBJDUMP) -d memory.o > memory.asm
	$(AS) $(ASFLAGS) -o memory.o memory.s -ahls > memory.lst


printk.o: printk.c printk.h lib.h
	$(CC) $(CFLAGS) -c printk.c -o printk.o
	$(CC) $(CFLAGS) -S -fverbose-asm printk.c -o printk.s
	$(OBJDUMP) -d printk.o > printk.asm
	$(AS) $(ASFLAGS) -o printk.o printk.s -ahls > printk.lst

trap.o:trap.c lib.h gate.h printk.h trap.h
	$(CC) $(CFLAGS) -c trap.c -o trap.o
	$(CC) $(CFLAGS) -S -fverbose-asm trap.c -o trap.s
	$(OBJDUMP) -d trap.o > trap.asm
	$(AS) $(ASFLAGS) -o trap.o trap.s -ahls > trap.lst
# 为最终系统文件生成反汇编
system.asm: system
	$(OBJDUMP) -d system > system.asm


# 调试目标：显示debug目录内容
debug-info:
	@echo "Debug files in $(DEBUG_DIR):"
	@ls -la $(DEBUG_DIR)/ || echo "Debug directory is empty"

system.debug: $(OBJS) kernel.lds
	$(LD) $(LDFLAGS) -g -o system.debug $(OBJS) -T kernel.lds

# 清理
clean:
	rm -rf *.o *.s~ *.s *.S~ *.c~ *.h~ system Makefile~ kernel.lds~ kernel.bin *.asm *.lst
	rm -rf $(DEBUG_DIR)

# 伪目标
.PHONY: all clean move_debug debug-info