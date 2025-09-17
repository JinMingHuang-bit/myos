#ifndef _LINKAGE_H_
#define _LINKAGE_H_

// may change to 64
#define L1_CACHE_BYTES 32

#define __cacheline_aligned __attribute__((__aligned__(L1_CACHE_BYTES)))
//它接受一个参数 X，并直接将其展开为 X 本身。
#define SYMBOL_NAME(X) X
//它接受一个参数 X，并将其转换成一个字符串常量。
#define SYMBOL_NAME_STR(X) #X
//它接受一个参数 X，并将其与冒号 : 连接起来，形成一个新的标记（Token）。
#define SYMBOL_NAME_LABEL(X) X##:

#define ENTRY(name) \
    .globl SYMBOL_NAME(name); \
    SYMBOL_NAME_LABEL(name)

#endif
