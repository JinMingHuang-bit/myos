#ifndef _LINKAGE_H_
#define _LINKAGE_H_

// may change to 64
#define L1_CACHE_BYTES 32

#define __cacheline_aligned __attribute__((__aligned__(L1_CACHE_BYTES)))
// It takes a parameter X and directly expands it to be X itself.
#define SYMBOL_NAME(X) X
// It accepts a parameter X and converts it into a string constant.
#define SYMBOL_NAME_STR(X) #X
// It takes a parameter X and connects it with the colon : to form a new token.
#define SYMBOL_NAME_LABEL(X) X##:

#define ENTRY(name) \
    .globl SYMBOL_NAME(name); \
    SYMBOL_NAME_LABEL(name)

#endif
