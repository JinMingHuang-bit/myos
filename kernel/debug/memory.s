	.file	"memory.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/workspace/myos/kernel" "memory.c"
	.globl	memory_management_struct
	.bss
	.align 32
	.type	memory_management_struct, @object
	.size	memory_management_struct, 760
memory_management_struct:
	.zero	760
	.globl	font_ascii
	.data
	.align 32
	.type	font_ascii, @object
	.size	font_ascii, 4096
font_ascii:
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020\020\020\020\020\020\020"
	.string	""
	.string	"\020\020"
	.string	""
	.string	"((("
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"DDD\376DDDDD\376DDD"
	.string	""
	.ascii	"\020:V\222\222\220P8\024\022\222\222\324\270\020\020"
	.string	"b\222\224\224h\b\020\020 ,RR\222\214"
	.string	""
	.string	""
	.string	"p\210\210\210\220`G\242\222\212\204F9"
	.string	""
	.string	"\004\b\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\002\004\b\b\020\020\020\020\020\020\020\b\b\004\002"
	.string	"\200@  \020\020\020\020\020\020\020  @\200"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\222T8T\222\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020\376\020\020\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\030\030\b\b\020"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.ascii	"\002\002\004\004\b\b\b\020\020  @@@\200\200"
	.string	""
	.string	"\030$$BBBBBBB$$\030"
	.string	""
	.string	""
	.string	"\b\030(\b\b\b\b\b\b\b\b\b>"
	.string	""
	.string	""
	.string	"\030$BB\002\004\b\020  @@~"
	.string	""
	.string	""
	.string	"\030$B\002\002\004\030\004\002\002B$\030"
	.string	""
	.string	""
	.string	"\f\f\f\024\024\024$$D~\004\004\036"
	.string	""
	.string	""
	.string	"|@@@Xd\002\002\002\002B$\030"
	.string	""
	.string	""
	.string	"\030$B@XdBBBBB$\030"
	.string	""
	.string	""
	.string	"~BB\004\004\b\b\b\020\020\020\0208"
	.string	""
	.string	""
	.string	"\030$BBB$\030$BBB$\030"
	.string	""
	.string	""
	.string	"\030$BBBBB&\032\002B$\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	""
	.ascii	"\030\030\b\b\020"
	.string	""
	.string	"\002\004\b\020 @\200\200@ \020\b\004\002"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	""
	.string	"\376"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\200@ \020\b\004\002\002\004\b\020 @\200"
	.string	""
	.string	"8D\202\202\202\004\b\020\020"
	.string	""
	.string	"\030\030"
	.string	""
	.string	""
	.string	"8D\202\232\252\252\252\252\252\234\200F8"
	.string	""
	.string	""
	.string	"\030\030\030\030$$$$~BBB\347"
	.string	""
	.string	""
	.string	"\360HDDDHxDBBBD\370"
	.string	""
	.string	""
	.string	":FB\202\200\200\200\200\200\202BD8"
	.string	""
	.string	""
	.string	"\370DDBBBBBBBDD\370"
	.string	""
	.string	""
	.string	"\376BB@@D|D@@BB\376"
	.string	""
	.string	""
	.string	"\376BB@@D|DD@@@\360"
	.string	""
	.string	""
	.string	":FB\202\200\200\236\202\202\202BF8"
	.string	""
	.string	""
	.string	"\347BBBBB~BBBBB\347"
	.string	""
	.string	""
	.string	"|\020\020\020\020\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\037\004\004\004\004\004\004\004\004\004\004\204H0"
	.string	""
	.string	"\347BDHPP`PPHDB\347"
	.string	""
	.string	""
	.string	"\360@@@@@@@@@BB\376"
	.string	""
	.string	""
	.string	"\303BfffZZZBBBB\347"
	.string	""
	.string	""
	.string	"\307BbbRRRJJJFF\342"
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202\202\202\202\202D8"
	.string	""
	.string	""
	.string	"\370DBBBDx@@@@@\360"
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202\202\202\222\212D:"
	.string	""
	.string	""
	.string	"\374BBBB|DBBBBB\347"
	.string	""
	.string	""
	.string	":F\202\202\200@8\004\002\202\202\304\270"
	.string	""
	.string	""
	.string	"\376\222\222\020\020\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\347BBBBBBBBBB$<"
	.string	""
	.string	""
	.string	"\347BBBB$$$$\030\030\030\030"
	.string	""
	.string	""
	.string	"\347BBBZZZZ$$$$$"
	.string	""
	.string	""
	.string	"\347BB$$$\030$$$BB\347"
	.string	""
	.string	""
	.string	"\356DDD(((\020\020\020\020\020|"
	.string	""
	.string	""
	.string	"\376\204\204\b\b\020\020  @B\202\376"
	.string	""
	.string	""
	.string	">            >"
	.ascii	"\200\200@@   \020\020\b\b\004\004\004\002\002"
	.string	""
	.string	"|\004\004\004\004\004\004\004\004\004\004\004\004|"
	.string	""
	.string	"\020(D\202"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376"
	.string	"\020\b\004"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"p\b\004<D\204\204\214v"
	.string	""
	.string	"\300@@@@XdBBBBBdX"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"0L\204\204\200\200\202D8"
	.string	""
	.string	"\f\004\004\004\0044L\204\204\204\204\204L6"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"8D\202\202\374\200\202B<"
	.string	""
	.string	"\016\020\020\020\020|\020\020\020\020\020\020\020|"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"6L\204\204\204\204L4\004\0048"
	.string	"\300@@@@XdBBBBBB\343"
	.string	""
	.string	""
	.string	"\020\020"
	.string	""
	.string	"0\020\020\020\020\020\020\0208"
	.string	""
	.string	""
	.string	"\004\004"
	.string	""
	.ascii	"\f\004\004\004\004\004\004\004\b\b0"
	.string	"\300@@@@NDHP`PHD\346"
	.string	""
	.string	"0\020\020\020\020\020\020\020\020\020\020\020\0208"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\366IIIIIII\333"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\330dBBBBBB\343"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"8D\202\202\202\202\202D8"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\330dBBBBBdX@@\340"
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"4L\204\204\204\204\204L4\004\004\016"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\334bB@@@@@\340"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"z\206\202\3008\006\202\302\274"
	.string	""
	.string	""
	.string	""
	.string	"\020\020\020|\020\020\020\020\020\020\020\016"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\306BBBBBBF;"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\347BBB$$$\030\030"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\347BBZZZ$$$"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\306D((\020((D\306"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.ascii	"\347BB$$$\030\030\020\020`"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	"\376\202\204\b\020 B\202\376"
	.string	""
	.string	""
	.string	"\006\b\020\020\020\020`\020\020\020\020\b\006"
	.string	""
	.ascii	"\020\020\020\020\020\020\020\020\020\020\020\020\020\020\020"
	.ascii	"\020"
	.string	""
	.string	"`\020\b\b\b\b\006\b\b\b\b\020`"
	.string	""
	.string	""
	.string	"r\214"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.globl	Pos
	.bss
	.align 32
	.type	Pos, @object
	.size	Pos, 40
Pos:
	.zero	40
	.globl	buf
	.align 32
	.type	buf, @object
	.size	buf, 4096
buf:
	.zero	4096
	.section	.rodata
	.align 8
.LC0:
	.string	"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n"
	.align 8
.LC1:
	.string	"address:%#018lx\tLength:%#018lx\tType:%#010x\n"
	.align 8
.LC2:
	.string	"OS Can Used Total RAM:%#018lx\n"
	.align 8
.LC3:
	.string	"OS Can Used Total 2M PAGEs:%#010x=%010d\n"
	.text
	.globl	init_memory
	.type	init_memory, @function
init_memory:
.LFB34:
	.file 1 "memory.c"
	.loc 1 30 19
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 3, -32
.L15:
	leaq	.L15(%rip), %rbx	#, tmp82
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L15, %r11	#,
	addq	%r11, %rbx	#, tmp82
# memory.c:33: 	unsigned long TotalMem =0;
	.loc 1 33 16
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:34: 	struct E820 *p =NULL;
	.loc 1 34 15
	movq	$0, -40(%rbp)	#, p
# memory.c:35: 	color_printk(BLUE,BLACK,"Display physics address Map,Type(1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,others:Undefine)\n");
	.loc 1 35 2
	movabsq	$.LC0@GOTOFF, %rax	#, tmp108
	leaq	(%rbx,%rax), %rax	#, tmp107
	movq	%rax, %rdx	# tmp107,
	movl	$0, %esi	#,
	movl	$255, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %rcx	#, tmp109
	addq	%rbx, %rcx	# tmp82, tmp109
	call	*%rcx	# tmp109
.LVL0:
# memory.c:36: 	p=(struct E820 *)0xffff800000007e00;
	.loc 1 36 3
	movabsq	$-140737488323072, %rax	#, tmp212
	movq	%rax, -40(%rbp)	# tmp212, p
.LBB2:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 1 37 11
	movl	$0, -44(%rbp)	#, i
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 1 37 2
	jmp	.L2	#
.L6:
.LBB3:
# memory.c:40: 		color_printk(ORANGE,BLACK,"address:%#018lx\tLength:%#018lx\tType:%#010x\n",p->address,p->length,p->type);
	.loc 1 40 3
	movq	-40(%rbp), %rax	# p, tmp110
	movl	16(%rax), %ecx	# p_31->type, _1
	movq	-40(%rbp), %rax	# p, tmp111
	movq	8(%rax), %rdx	# p_31->length, _2
	movq	-40(%rbp), %rax	# p, tmp112
	movq	(%rax), %rax	# p_31->address, _3
	movl	%ecx, %r9d	# _1,
	movq	%rdx, %r8	# _2,
	movq	%rax, %rcx	# _3,
	movabsq	$.LC1@GOTOFF, %rax	#, tmp114
	leaq	(%rbx,%rax), %rax	#, tmp113
	movq	%rax, %rdx	# tmp113,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r10	#, tmp115
	addq	%rbx, %r10	# tmp82, tmp115
	call	*%r10	# tmp115
.LVL1:
# memory.c:41: 		unsigned long tmp =0;
	.loc 1 41 17
	movq	$0, -56(%rbp)	#, tmp
# memory.c:42: 		if(p->type==1){
	.loc 1 42 7
	movq	-40(%rbp), %rax	# p, tmp116
	movl	16(%rax), %eax	# p_31->type, _4
# memory.c:42: 		if(p->type==1){
	.loc 1 42 5
	cmpl	$1, %eax	#, _4
	jne	.L3	#,
# memory.c:43: 			TotalMem +=p->length;
	.loc 1 43 16
	movq	-40(%rbp), %rax	# p, tmp117
	movq	8(%rax), %rax	# p_31->length, _5
# memory.c:43: 			TotalMem +=p->length;
	.loc 1 43 13
	addq	%rax, -32(%rbp)	# _5, TotalMem
.L3:
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 1 45 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp118
	movl	-44(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, tmp119
	addq	%rbx, %rcx	# tmp82, tmp121
	movq	%rdx, %rax	# tmp119, tmp123
	salq	$2, %rax	#, tmp123
	addq	%rdx, %rax	# tmp119, tmp123
	salq	$2, %rax	#, tmp124
	addq	%rcx, %rax	# tmp121, tmp125
	movq	(%rax), %rdx	# memory_management_struct.e820[i_32].address, _6
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 1 45 46
	movq	-40(%rbp), %rax	# p, tmp126
	movq	(%rax), %rax	# p_31->address, _7
# memory.c:45: 		memory_management_struct.e820[i].address+=p->address;
	.loc 1 45 43
	leaq	(%rdx,%rax), %rcx	#, _8
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp127
	movl	-44(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, tmp128
	addq	%rbx, %rsi	# tmp82, tmp130
	movq	%rdx, %rax	# tmp128, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# tmp128, tmp132
	salq	$2, %rax	#, tmp133
	addq	%rsi, %rax	# tmp130, tmp134
	movq	%rcx, (%rax)	# _8, memory_management_struct.e820[i_32].address
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 1 46 35
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp135
	movl	-44(%rbp), %eax	# i, tmp137
	movslq	%eax, %rdx	# tmp137, tmp136
	movq	%rdx, %rax	# tmp136, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# tmp136, tmp138
	salq	$2, %rax	#, tmp139
	addq	%rbx, %rax	# tmp82, tmp140
	addq	%rcx, %rax	# tmp135, tmp141
	addq	$8, %rax	#, tmp142
	movq	(%rax), %rdx	# memory_management_struct.e820[i_32].length, _9
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 1 46 45
	movq	-40(%rbp), %rax	# p, tmp143
	movq	8(%rax), %rax	# p_31->length, _10
# memory.c:46: 		memory_management_struct.e820[i].length+=p->length;
	.loc 1 46 42
	leaq	(%rdx,%rax), %rcx	#, _11
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp144
	movl	-44(%rbp), %eax	# i, tmp146
	movslq	%eax, %rdx	# tmp146, tmp145
	movq	%rdx, %rax	# tmp145, tmp147
	salq	$2, %rax	#, tmp147
	addq	%rdx, %rax	# tmp145, tmp147
	salq	$2, %rax	#, tmp148
	addq	%rbx, %rax	# tmp82, tmp149
	addq	%rsi, %rax	# tmp144, tmp150
	addq	$8, %rax	#, tmp151
	movq	%rcx, (%rax)	# _11, memory_management_struct.e820[i_32].length
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 1 47 42
	movq	-40(%rbp), %rax	# p, tmp152
	movl	16(%rax), %ecx	# p_31->type, _12
# memory.c:47: 		memory_management_struct.e820[i].type=p->type;
	.loc 1 47 40
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp153
	movl	-44(%rbp), %eax	# i, tmp155
	movslq	%eax, %rdx	# tmp155, tmp154
	addq	%rbx, %rsi	# tmp82, tmp156
	movq	%rdx, %rax	# tmp154, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# tmp154, tmp157
	salq	$2, %rax	#, tmp158
	addq	%rsi, %rax	# tmp156, tmp159
	addq	$16, %rax	#, tmp160
	movl	%ecx, (%rax)	# _12, memory_management_struct.e820[i_32].type
# memory.c:48: 		memory_management_struct.e820_length =i;
	.loc 1 48 40
	movl	-44(%rbp), %eax	# i, tmp161
	cltq
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp162
	movq	%rax, 640(%rbx,%rdx)	# _13, memory_management_struct.e820_length
# memory.c:49: 		p++;
	.loc 1 49 4
	addq	$20, -40(%rbp)	#, p
# memory.c:50: 		if(p->type >4){
	.loc 1 50 7
	movq	-40(%rbp), %rax	# p, tmp163
	movl	16(%rax), %eax	# p_48->type, _14
# memory.c:50: 		if(p->type >4){
	.loc 1 50 5
	cmpl	$4, %eax	#, _14
	ja	.L12	#,
.LBE3:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 1 37 27 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L2:
# memory.c:37: 	for (int i = 0; i < 32; i++)
	.loc 1 37 20 discriminator 1
	cmpl	$31, -44(%rbp)	#, i
	jle	.L6	#,
	jmp	.L5	#
.L12:
.LBB4:
# memory.c:51: 			break;
	.loc 1 51 4
	nop	
.L5:
.LBE4:
.LBE2:
# memory.c:54: 	color_printk(ORANGE,BLACK,"OS Can Used Total RAM:%#018lx\n",TotalMem);
	.loc 1 54 2
	movq	-32(%rbp), %rax	# TotalMem, tmp164
	movq	%rax, %rcx	# tmp164,
	movabsq	$.LC2@GOTOFF, %rax	#, tmp166
	leaq	(%rbx,%rax), %rax	#, tmp165
	movq	%rax, %rdx	# tmp165,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r8	#, tmp167
	addq	%rbx, %r8	# tmp82, tmp167
	call	*%r8	# tmp167
.LVL2:
# memory.c:55: 	TotalMem=0;
	.loc 1 55 10
	movq	$0, -32(%rbp)	#, TotalMem
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 7
	movl	$0, -20(%rbp)	#, i
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 2
	jmp	.L7	#
.L11:
.LBB5:
# memory.c:59: 		if(memory_management_struct.e820[i].type!=1){
	.loc 1 59 38
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp168
	movl	-20(%rbp), %eax	# i, tmp170
	movslq	%eax, %rdx	# tmp170, tmp169
	addq	%rbx, %rcx	# tmp82, tmp171
	movq	%rdx, %rax	# tmp169, tmp172
	salq	$2, %rax	#, tmp172
	addq	%rdx, %rax	# tmp169, tmp172
	salq	$2, %rax	#, tmp173
	addq	%rcx, %rax	# tmp171, tmp174
	addq	$16, %rax	#, tmp175
	movl	(%rax), %eax	# memory_management_struct.e820[i_25].type, _15
# memory.c:59: 		if(memory_management_struct.e820[i].type!=1){
	.loc 1 59 5
	cmpl	$1, %eax	#, _15
	jne	.L13	#,
# memory.c:62: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 1 62 9
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp176
	movl	-20(%rbp), %eax	# i, tmp178
	movslq	%eax, %rdx	# tmp178, tmp177
	addq	%rbx, %rcx	# tmp82, tmp179
	movq	%rdx, %rax	# tmp177, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# tmp177, tmp181
	salq	$2, %rax	#, tmp182
	addq	%rcx, %rax	# tmp179, tmp183
	movq	(%rax), %rax	# memory_management_struct.e820[i_25].address, _16
	addq	$2097151, %rax	#, _17
# memory.c:62: 		start=PAGE_2M_ALIGN(memory_management_struct.e820[i].address);
	.loc 1 62 8
	andq	$-2097152, %rax	#, tmp184
	movq	%rax, -64(%rbp)	# tmp184, start
# memory.c:63: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 1 63 41
	movabsq	$memory_management_struct@GOTOFF, %rcx	#, tmp185
	movl	-20(%rbp), %eax	# i, tmp187
	movslq	%eax, %rdx	# tmp187, tmp186
	addq	%rbx, %rcx	# tmp82, tmp188
	movq	%rdx, %rax	# tmp186, tmp190
	salq	$2, %rax	#, tmp190
	addq	%rdx, %rax	# tmp186, tmp190
	salq	$2, %rax	#, tmp191
	addq	%rcx, %rax	# tmp188, tmp192
	movq	(%rax), %rcx	# memory_management_struct.e820[i_25].address, _18
# memory.c:63: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 1 63 82
	movabsq	$memory_management_struct@GOTOFF, %rsi	#, tmp193
	movl	-20(%rbp), %eax	# i, tmp195
	movslq	%eax, %rdx	# tmp195, tmp194
	movq	%rdx, %rax	# tmp194, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rdx, %rax	# tmp194, tmp196
	salq	$2, %rax	#, tmp197
	addq	%rbx, %rax	# tmp82, tmp198
	addq	%rsi, %rax	# tmp193, tmp199
	addq	$8, %rax	#, tmp200
	movq	(%rax), %rax	# memory_management_struct.e820[i_25].length, _19
# memory.c:63: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 1 63 49
	addq	%rcx, %rax	# _18, _20
# memory.c:63: 		end=((memory_management_struct.e820[i].address+memory_management_struct.e820[i].length)>>PAGE_2M_SHIFT)<<PAGE_2M_SHIFT;
	.loc 1 63 6
	andq	$-2097152, %rax	#, tmp201
	movq	%rax, -72(%rbp)	# tmp201, end
# memory.c:64: 		if(end<=start){
	.loc 1 64 5
	movq	-72(%rbp), %rax	# end, tmp202
	cmpq	%rax, -64(%rbp)	# tmp202, start
	jnb	.L14	#,
# memory.c:67: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 1 67 17
	movq	-72(%rbp), %rax	# end, tmp203
	subq	-64(%rbp), %rax	# start, _21
# memory.c:67: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 1 67 24
	shrq	$21, %rax	#, _22
# memory.c:67: 		TotalMem+=(end-start)>>PAGE_2M_SHIFT;
	.loc 1 67 11
	addq	%rax, -32(%rbp)	# _22, TotalMem
	jmp	.L9	#
.L13:
# memory.c:60: 			continue;
	.loc 1 60 4
	nop	
	jmp	.L9	#
.L14:
# memory.c:65: 			continue;
	.loc 1 65 4
	nop	
.L9:
.LBE5:
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 51 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L7:
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 11 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp204
	cltq
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 37 discriminator 1
	movabsq	$memory_management_struct@GOTOFF, %rdx	#, tmp205
	movq	640(%rbx,%rdx), %rdx	# memory_management_struct.e820_length, _24
# memory.c:57: 	for(i=0;i<=memory_management_struct.e820_length;i++){
	.loc 1 57 11 discriminator 1
	cmpq	%rax, %rdx	# _23, _24
	jnb	.L11	#,
# memory.c:69: 	color_printk(ORANGE,BLACK,"OS Can Used Total 2M PAGEs:%#010x=%010d\n",TotalMem,TotalMem);
	.loc 1 69 2
	movq	-32(%rbp), %rdx	# TotalMem, tmp206
	movq	-32(%rbp), %rax	# TotalMem, tmp207
	movq	%rdx, %r8	# tmp206,
	movq	%rax, %rcx	# tmp207,
	movabsq	$.LC3@GOTOFF, %rax	#, tmp209
	leaq	(%rbx,%rax), %rax	#, tmp208
	movq	%rax, %rdx	# tmp208,
	movl	$0, %esi	#,
	movl	$16744448, %edi	#,
	movq	%rbx, %r15	# tmp82,
	movl	$0, %eax	#,
	movabsq	$color_printk@PLTOFF, %r9	#, tmp210
	addq	%rbx, %r9	# tmp82, tmp210
	call	*%r9	# tmp210
.LVL3:
# memory.c:70: }
	.loc 1 70 1
	nop	
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	init_memory, .-init_memory
.Letext0:
	.file 2 "memory.h"
	.file 3 "font.h"
	.file 4 "printk.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x477
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.long	.LASF7
	.byte	0x14
	.byte	0x2
	.byte	0x56
	.long	0x69
	.uleb128 0x1
	.long	.LASF2
	.byte	0x2
	.byte	0x58
	.byte	0x13
	.long	0x69
	.byte	0
	.uleb128 0x1
	.long	.LASF3
	.byte	0x2
	.byte	0x59
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF4
	.byte	0x2
	.byte	0x5a
	.byte	0x12
	.long	0x2e
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x10
	.long	.LASF8
	.value	0x2f8
	.byte	0x2
	.byte	0x5d
	.byte	0x8
	.long	0x14f
	.uleb128 0x1
	.long	.LASF9
	.byte	0x2
	.byte	0x5f
	.byte	0xe
	.long	0x14f
	.byte	0
	.uleb128 0x2
	.long	.LASF10
	.byte	0x60
	.byte	0x10
	.long	0x69
	.value	0x280
	.uleb128 0x2
	.long	.LASF11
	.byte	0x62
	.byte	0x12
	.long	0x15f
	.value	0x288
	.uleb128 0x2
	.long	.LASF12
	.byte	0x63
	.byte	0x10
	.long	0x69
	.value	0x290
	.uleb128 0x2
	.long	.LASF13
	.byte	0x64
	.byte	0x10
	.long	0x69
	.value	0x298
	.uleb128 0x2
	.long	.LASF14
	.byte	0x66
	.byte	0x10
	.long	0x1b2
	.value	0x2a0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x67
	.byte	0x10
	.long	0x69
	.value	0x2a8
	.uleb128 0x2
	.long	.LASF16
	.byte	0x68
	.byte	0x10
	.long	0x69
	.value	0x2b0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x6a
	.byte	0x10
	.long	0x246
	.value	0x2b8
	.uleb128 0x2
	.long	.LASF18
	.byte	0x6b
	.byte	0x10
	.long	0x69
	.value	0x2c0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6c
	.byte	0x10
	.long	0x69
	.value	0x2c8
	.uleb128 0x2
	.long	.LASF20
	.byte	0x6e
	.byte	0x10
	.long	0x69
	.value	0x2d0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x6f
	.byte	0x10
	.long	0x69
	.value	0x2d8
	.uleb128 0x2
	.long	.LASF22
	.byte	0x70
	.byte	0x10
	.long	0x69
	.value	0x2e0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x71
	.byte	0x10
	.long	0x69
	.value	0x2e8
	.uleb128 0x2
	.long	.LASF24
	.byte	0x73
	.byte	0x10
	.long	0x69
	.value	0x2f0
	.byte	0
	.uleb128 0x8
	.long	0x35
	.long	0x15f
	.uleb128 0x9
	.long	0x69
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	0x69
	.uleb128 0x6
	.long	.LASF25
	.byte	0x28
	.byte	0x2
	.byte	0x8a
	.long	0x1b2
	.uleb128 0x1
	.long	.LASF26
	.byte	0x2
	.byte	0x8b
	.byte	0x12
	.long	0x246
	.byte	0
	.uleb128 0x1
	.long	.LASF27
	.byte	0x2
	.byte	0x8c
	.byte	0x13
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF28
	.byte	0x2
	.byte	0x8d
	.byte	0x13
	.long	0x69
	.byte	0x10
	.uleb128 0x1
	.long	.LASF29
	.byte	0x2
	.byte	0x8e
	.byte	0x13
	.long	0x69
	.byte	0x18
	.uleb128 0x11
	.string	"age"
	.byte	0x2
	.byte	0x8f
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	0x164
	.uleb128 0x6
	.long	.LASF30
	.byte	0x50
	.byte	0x2
	.byte	0xab
	.long	0x246
	.uleb128 0x1
	.long	.LASF31
	.byte	0x2
	.byte	0xac
	.byte	0x10
	.long	0x1b2
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.byte	0x2
	.byte	0xad
	.byte	0x10
	.long	0x69
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x2
	.byte	0xae
	.byte	0x10
	.long	0x69
	.byte	0x10
	.uleb128 0x1
	.long	.LASF33
	.byte	0x2
	.byte	0xaf
	.byte	0x10
	.long	0x69
	.byte	0x18
	.uleb128 0x1
	.long	.LASF34
	.byte	0x2
	.byte	0xb0
	.byte	0x10
	.long	0x69
	.byte	0x20
	.uleb128 0x1
	.long	.LASF28
	.byte	0x2
	.byte	0xb1
	.byte	0x10
	.long	0x69
	.byte	0x28
	.uleb128 0x1
	.long	.LASF35
	.byte	0x2
	.byte	0xb3
	.byte	0x24
	.long	0x24b
	.byte	0x30
	.uleb128 0x1
	.long	.LASF36
	.byte	0x2
	.byte	0xb4
	.byte	0x10
	.long	0x69
	.byte	0x38
	.uleb128 0x1
	.long	.LASF37
	.byte	0x2
	.byte	0xb5
	.byte	0x10
	.long	0x69
	.byte	0x40
	.uleb128 0x1
	.long	.LASF38
	.byte	0x2
	.byte	0xb7
	.byte	0x10
	.long	0x69
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.long	0x1b7
	.uleb128 0x3
	.long	0x70
	.uleb128 0xb
	.long	.LASF40
	.byte	0x2
	.byte	0xba
	.byte	0x21
	.long	0x70
	.uleb128 0x9
	.byte	0x3
	.quad	memory_management_struct
	.uleb128 0x8
	.long	0x27c
	.long	0x27c
	.uleb128 0x9
	.long	0x69
	.byte	0xff
	.uleb128 0x9
	.long	0x69
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF39
	.uleb128 0xb
	.long	.LASF41
	.byte	0x3
	.byte	0x6
	.byte	0xf
	.long	0x266
	.uleb128 0x9
	.byte	0x3
	.quad	font_ascii
	.uleb128 0x6
	.long	.LASF42
	.byte	0x28
	.byte	0x4
	.byte	0x20
	.long	0x30e
	.uleb128 0x1
	.long	.LASF43
	.byte	0x4
	.byte	0x22
	.byte	0x9
	.long	0x30e
	.byte	0
	.uleb128 0x1
	.long	.LASF44
	.byte	0x4
	.byte	0x23
	.byte	0x9
	.long	0x30e
	.byte	0x4
	.uleb128 0x1
	.long	.LASF45
	.byte	0x4
	.byte	0x24
	.byte	0x9
	.long	0x30e
	.byte	0x8
	.uleb128 0x1
	.long	.LASF46
	.byte	0x4
	.byte	0x25
	.byte	0x9
	.long	0x30e
	.byte	0xc
	.uleb128 0x1
	.long	.LASF47
	.byte	0x4
	.byte	0x26
	.byte	0x9
	.long	0x30e
	.byte	0x10
	.uleb128 0x1
	.long	.LASF48
	.byte	0x4
	.byte	0x27
	.byte	0x9
	.long	0x30e
	.byte	0x14
	.uleb128 0x1
	.long	.LASF49
	.byte	0x4
	.byte	0x28
	.byte	0x14
	.long	0x315
	.byte	0x18
	.uleb128 0x1
	.long	.LASF50
	.byte	0x4
	.byte	0x29
	.byte	0x13
	.long	0x69
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	0x2e
	.uleb128 0xc
	.string	"Pos"
	.byte	0x2a
	.byte	0x2
	.long	0x299
	.uleb128 0x9
	.byte	0x3
	.quad	Pos
	.uleb128 0x8
	.long	0x340
	.long	0x340
	.uleb128 0x13
	.long	0x69
	.value	0xfff
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF51
	.uleb128 0x14
	.long	0x340
	.uleb128 0xc
	.string	"buf"
	.byte	0x2e
	.byte	0x6
	.long	0x32f
	.uleb128 0x9
	.byte	0x3
	.quad	buf
	.uleb128 0x15
	.long	.LASF55
	.byte	0x4
	.byte	0x3b
	.byte	0x5
	.long	0x30e
	.long	0x382
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x382
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.long	0x347
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x475
	.uleb128 0x4
	.string	"i"
	.byte	0x1f
	.byte	0x6
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x1f
	.byte	0x8
	.long	0x30e
	.uleb128 0xd
	.long	.LASF52
	.byte	0x21
	.byte	0x10
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.string	"p"
	.byte	0x22
	.byte	0xf
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x419
	.uleb128 0x4
	.string	"i"
	.byte	0x25
	.byte	0xb
	.long	0x30e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.long	.LLRL0
	.uleb128 0x4
	.string	"tmp"
	.byte	0x29
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.quad	.LVL1
	.long	0x361
	.byte	0
	.byte	0
	.uleb128 0xe
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x44d
	.uleb128 0xd
	.long	.LASF53
	.byte	0x3a
	.byte	0x11
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.string	"end"
	.byte	0x3a
	.byte	0x17
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x7
	.quad	.LVL0
	.long	0x361
	.uleb128 0x7
	.quad	.LVL2
	.long	0x361
	.uleb128 0x7
	.quad	.LVL3
	.long	0x361
	.byte	0
	.uleb128 0x3
	.long	0x35
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"total_pages_link"
.LASF20:
	.string	"start_code"
.LASF43:
	.string	"XResolution"
.LASF48:
	.string	"YCharSize"
.LASF54:
	.string	"GNU C17 13.3.0 -mcmodel=large -m64 -mtune=generic -march=x86-64 -g -fno-builtin -fno-stack-protector -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection"
.LASF47:
	.string	"XCharSize"
.LASF34:
	.string	"zone_length"
.LASF9:
	.string	"e820"
.LASF17:
	.string	"zones_struct"
.LASF53:
	.string	"start"
.LASF18:
	.string	"zones_size"
.LASF16:
	.string	"pages_length"
.LASF25:
	.string	"Page"
.LASF7:
	.string	"E820"
.LASF10:
	.string	"e820_length"
.LASF37:
	.string	"page_free_count"
.LASF39:
	.string	"unsigned char"
.LASF41:
	.string	"font_ascii"
.LASF21:
	.string	"end_code"
.LASF24:
	.string	"end_of_struct"
.LASF6:
	.string	"long unsigned int"
.LASF49:
	.string	"FB_addr"
.LASF23:
	.string	"end_brk"
.LASF19:
	.string	"zones_length"
.LASF15:
	.string	"pages_size"
.LASF52:
	.string	"TotalMem"
.LASF42:
	.string	"position"
.LASF35:
	.string	"GMD_struct"
.LASF27:
	.string	"PHY_address"
.LASF5:
	.string	"unsigned int"
.LASF55:
	.string	"color_printk"
.LASF2:
	.string	"address"
.LASF51:
	.string	"char"
.LASF33:
	.string	"zone_end_address"
.LASF56:
	.string	"init_memory"
.LASF12:
	.string	"bits_size"
.LASF26:
	.string	"zone_struct"
.LASF28:
	.string	"attribute"
.LASF50:
	.string	"FB_length"
.LASF22:
	.string	"end_data"
.LASF46:
	.string	"YPosition"
.LASF29:
	.string	"reference_count"
.LASF36:
	.string	"page_using_count"
.LASF45:
	.string	"XPosition"
.LASF32:
	.string	"zone_start_address"
.LASF44:
	.string	"YResolution"
.LASF40:
	.string	"memory_management_struct"
.LASF4:
	.string	"type"
.LASF31:
	.string	"pages_group"
.LASF30:
	.string	"Zone"
.LASF13:
	.string	"bits_length"
.LASF8:
	.string	"Global_Memory_Descriptor"
.LASF3:
	.string	"length"
.LASF11:
	.string	"bits_map"
.LASF14:
	.string	"pages_struct"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/workspace/myos/kernel"
.LASF0:
	.string	"memory.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
