// test_memset.c
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>  // 添加这个头文件以使用rand()
#include "minunit.h"

// 声明要测试的函数
void *my_memset(void *Address, unsigned char C, long Count){
        int d0,d1;
    //将单字节值复制到64位值的每个字节中
    unsigned long tmp=C*0x0101010101010101UL;
    __asm__ __volatile__ ("cld \n\t"
        "rep \n\t"
        "stosq \n\t"
        "testb $4,%b3 \n\t"
        "je 1f \n\t"
        "stosl \n\t"
        "1: \n\t"
        "testb $2,%b3 \n\t"
        "je 2f \n\t"
        "stosw \n\t"
        "2:"
        "testb $1,%b3 \n\t"
        "je 3f \n\t"
        "stosb \n\t"
        "3: \n\t"
        :"=&c"(d0),"=&D"(d1)
        :"a"(tmp),"q"(Count),"0"(Count/8),"1"(Address)
        :"memory"
    );
    return Address;
}
void *my_Cmemset(void *Address, unsigned char C, long Count){
    
    unsigned char *ptr = (unsigned char *)Address;
    unsigned long pattern = C;
    
    // 扩展单字节到8字节模式（0x0101010101010101乘法效果）
    //这样可以用64位写入代替逐字节写入
    //按位或运算符（|）
    /*
    0 | 0 = 0
    0 | 1 = 1
    1 | 0 = 1
    1 | 1 = 1
    */
    pattern |= (pattern << 8);
    pattern |= (pattern << 16);
    pattern |= (pattern << 32);
    
    long remaining = Count;
    
    // 先按8字节块填充（64位）
    while (remaining >= 8) {
        *((unsigned long *)ptr) = pattern;
        ptr += 8;
        remaining -= 8;
    }
    
    // 检查是否需要填充4字节
    if (remaining & 4) {
        *((unsigned int *)ptr) = (unsigned int)pattern;
        ptr += 4;
    }
    
    // 检查是否需要填充2字节
    if (remaining & 2) {
        *((unsigned short *)ptr) = (unsigned short)pattern;
        ptr += 2;
    }
    
    // 检查是否需要填充1字节
    if (remaining & 1) {
        *ptr = C;
    }
    
    return Address;
}


// ==================== 测试辅助函数 ====================

// 检查内存区域是否全为指定值
static int check_memory(const void *ptr, unsigned char expected, size_t size) {
    const unsigned char *p = (const unsigned char *)ptr;
    for (size_t i = 0; i < size; i++) {
        if (p[i] != expected) {
            return 0;
        }
    }
    return 1;
}

// 生成随机内存内容
static void fill_random(void *ptr, size_t size) {
    unsigned char *p = (unsigned char *)ptr;
    for (size_t i = 0; i < size; i++) {
        p[i] = rand() & 0xFF;
    }
}

// ==================== 通用测试宏 ====================

// 测试单个memset函数的宏
#define TEST_MEMSET_FUNC(func_name) \
    MU_TEST(test_##func_name##_basic) { \
        unsigned char buffer[100]; \
        fill_random(buffer, sizeof(buffer)); \
        void *result = func_name(buffer, 0xAB, 50); \
        mu_assert(result == buffer, "返回值应该等于输入地址"); \
        mu_assert(check_memory(buffer, 0xAB, 50), "前50字节应该被设置为0xAB"); \
        mu_assert(buffer[50] != 0xAB, "第51字节不应该被修改"); \
    } \
    \
    MU_TEST(test_##func_name##_zero_count) { \
        unsigned char buffer[100]; \
        unsigned char original[100]; \
        fill_random(buffer, sizeof(buffer)); \
        memcpy(original, buffer, sizeof(buffer)); \
        void *result = func_name(buffer, 0xFF, 0); \
        mu_assert(result == buffer, "零长度时返回值应该等于输入地址"); \
        mu_assert(memcmp(buffer, original, sizeof(buffer)) == 0, \
                 "零长度时内存不应该被修改"); \
    } \
    \
    MU_TEST(test_##func_name##_full_buffer) { \
        unsigned char buffer[256]; \
        fill_random(buffer, sizeof(buffer)); \
        void *result = func_name(buffer, 0, sizeof(buffer)); \
        mu_assert(result == buffer, "返回值应该等于输入地址"); \
        mu_assert(check_memory(buffer, 0, sizeof(buffer)), \
                 "整个缓冲区应该被设置为0"); \
    } \
    \
    MU_TEST(test_##func_name##_different_values) { \
        for (int c = 0; c <= 255; c += 17) { /* 测试几个不同的值 */ \
            unsigned char buffer[128]; \
            fill_random(buffer, sizeof(buffer)); \
            func_name(buffer, (unsigned char)c, sizeof(buffer)); \
            mu_assert(check_memory(buffer, (unsigned char)c, sizeof(buffer)), \
                     "整个缓冲区应该被设置为指定值"); \
        } \
    } \
    \
    MU_TEST(test_##func_name##_unaligned) { \
        /* 测试非对齐地址 */ \
        unsigned char big_buffer[200]; \
        fill_random(big_buffer, sizeof(big_buffer)); \
        \
        /* 从非8字节对齐的地址开始 */ \
        void *unaligned_ptr = big_buffer + 3; \
        size_t size = 100; \
        \
        void *result = func_name(unaligned_ptr, 0x55, size); \
        mu_assert(result == unaligned_ptr, "返回值应该等于输入地址"); \
        mu_assert(check_memory(unaligned_ptr, 0x55, size), \
                 "非对齐内存区域应该被正确设置"); \
        \
        /* 检查前后区域未被修改 */ \
        mu_assert(big_buffer[2] != 0x55, "前面的字节不应该被修改"); \
        mu_assert(big_buffer[3 + size] != 0x55, "后面的字节不应该被修改"); \
    } \
    \
    MU_TEST(test_##func_name##_small_sizes) { \
        /* 测试小尺寸（小于8字节的情况） */ \
        for (int size = 1; size <= 7; size++) { \
            unsigned char buffer[10]; \
            unsigned char expected[10]; \
            fill_random(buffer, sizeof(buffer)); \
            memcpy(expected, buffer, sizeof(buffer)); \
            \
            /* 使用标准memset生成期望结果 */ \
            memset(expected + 1, 0x77, size); \
            \
            void *result = func_name(buffer + 1, 0x77, size); \
            mu_assert(result == buffer + 1, "返回值应该等于输入地址"); \
            mu_assert(memcmp(buffer, expected, sizeof(buffer)) == 0, \
                     "小尺寸内存应该被正确设置"); \
        } \
    } \
    \
    MU_TEST(test_##func_name##_return_value) { \
        unsigned char buffer[64]; \
        void *ptr = buffer + 16; \
        void *result = func_name(ptr, 0xAA, 32); \
        mu_assert(result == ptr, "返回值应该等于输入地址"); \
    }

// ==================== 为每个函数生成测试 ====================

// 为汇编版本memset生成测试
TEST_MEMSET_FUNC(my_memset)

// 为C版本Cmemset生成测试
TEST_MEMSET_FUNC(my_Cmemset)

// ==================== 比较两个实现的测试 ====================

MU_TEST(test_both_implementations_match) {
    /* 验证两个实现产生相同的结果 */
    unsigned char buffer1[256];
    unsigned char buffer2[256];
    
    fill_random(buffer1, sizeof(buffer1));
    memcpy(buffer2, buffer1, sizeof(buffer1));
    
    for (int c = 0; c <= 255; c += 51) {  /* 测试几个不同的值 */
        for (int size = 0; size <= 100; size += 23) {  /* 测试几个不同的尺寸 */
            my_memset(buffer1, (unsigned char)c, size);
            my_Cmemset(buffer2, (unsigned char)c, size);
            
            mu_assert(memcmp(buffer1, buffer2, sizeof(buffer1)) == 0,
                     "should be equal");
            printf("in test_both:c: %d, size: %d\n", c, size);
            /* 重置缓冲区 */
            fill_random(buffer1, sizeof(buffer1));
            memcpy(buffer2, buffer1, sizeof(buffer1));
        }
    }
}

// ==================== 测试套件 ====================

MU_TEST_SUITE(memset_suite) {
    // 汇编版本测试 - 注意函数名要匹配宏生成的名称
    MU_RUN_TEST(test_my_memset_basic);           // 修改为 test_my_memset_basic
    MU_RUN_TEST(test_my_memset_zero_count);      // 修改为 test_my_memset_zero_count
    MU_RUN_TEST(test_my_memset_full_buffer);     // 修改为 test_my_memset_full_buffer
    MU_RUN_TEST(test_my_memset_different_values);// 修改为 test_my_memset_different_values
    MU_RUN_TEST(test_my_memset_unaligned);       // 修改为 test_my_memset_unaligned
    MU_RUN_TEST(test_my_memset_small_sizes);     // 修改为 test_my_memset_small_sizes
    MU_RUN_TEST(test_my_memset_return_value);    // 修改为 test_my_memset_return_value
    
    // C版本测试 - 注意函数名要匹配宏生成的名称
    MU_RUN_TEST(test_my_Cmemset_basic);          // 修改为 test_my_Cmemset_basic
    MU_RUN_TEST(test_my_Cmemset_zero_count);     // 修改为 test_my_Cmemset_zero_count
    MU_RUN_TEST(test_my_Cmemset_full_buffer);    // 修改为 test_my_Cmemset_full_buffer
    MU_RUN_TEST(test_my_Cmemset_different_values);// 修改为 test_my_Cmemset_different_values
    MU_RUN_TEST(test_my_Cmemset_unaligned);      // 修改为 test_my_Cmemset_unaligned
    MU_RUN_TEST(test_my_Cmemset_small_sizes);    // 修改为 test_my_Cmemset_small_sizes
    MU_RUN_TEST(test_my_Cmemset_return_value);   // 修改为 test_my_Cmemset_return_value
    
    // 比较测试
    MU_RUN_TEST(test_both_implementations_match);
}

// ==================== 主函数 ====================

int main() {
    printf("=== 开始测试 memset 函数 ===\n\n");
    
    // 运行测试套件
    MU_RUN_SUITE(memset_suite);
    
    // 输出报告
    MU_REPORT();
    
    return MU_EXIT_CODE;
}