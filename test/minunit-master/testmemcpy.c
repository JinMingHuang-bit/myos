#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "minunit.h"   // 提供的 minunit.h 头文件

// 被测试的函数：Cmemcpy
static inline void *Cmemcpy(void *To, void *From, long Num)
{
    char *to = (char *)To;
    char *from = (char *)From;
    long remaining = Num;
    
    // 复制8字节块（64位）
    while (remaining >= 8) {
        *((long *)to) = *((long *)from);
        to += 8;
        from += 8;
        remaining -= 8;
    }
    
    // 检查是否需要复制4字节块
    if (remaining & 4) {
        *((int *)to) = *((int *)from);
        to += 4;
        from += 4;
    }
    
    // 检查是否需要复制2字节块
    if (remaining & 2) {
        *((short *)to) = *((short *)from);
        to += 2;
        from += 2;
    }
    
    // 检查是否需要复制1字节
    if (remaining & 1) {
        *to = *from;
    }
    
    return To;
}

// 辅助宏：比较两块内存是否相等
#define MU_ASSERT_MEMORY_EQ(expected, actual, size) \
    mu_check(memcmp((expected), (actual), (size)) == 0)

// 辅助宏：检查返回值是否为期望指针
#define MU_ASSERT_RETURN_PTR(ptr, expected) \
    mu_check((ptr) == (expected))

// ------------------------------------------------------------
// 测试用例
// ------------------------------------------------------------

MU_TEST(test_cmemcpy_zero_bytes)
{
    char src[10] = "hello";
    char dst[10] = {0};
    void *ret = Cmemcpy(dst, src, 0);
    MU_ASSERT_RETURN_PTR(ret, dst);
    MU_ASSERT_MEMORY_EQ(dst, (char[10]){0}, 10);  // 目标应未被修改
}

MU_TEST(test_cmemcpy_one_byte)
{
    char src = 'A';
    char dst = 'B';
    void *ret = Cmemcpy(&dst, &src, 1);
    mu_assert_int_eq('A', dst);
    MU_ASSERT_RETURN_PTR(ret, &dst);
}

MU_TEST(test_cmemcpy_two_bytes)
{
    char src[2] = {0x12, 0x34};
    char dst[2] = {0};
    Cmemcpy(dst, src, 2);
    mu_assert_int_eq(0x12, dst[0]);
    mu_assert_int_eq(0x34, dst[1]);
}

MU_TEST(test_cmemcpy_three_bytes)
{
    char src[3] = {0xAA, 0xBB, 0xCC};
    char dst[3] = {0};
    Cmemcpy(dst, src, 3);
    MU_ASSERT_MEMORY_EQ(src, dst, 3);
}

MU_TEST(test_cmemcpy_four_bytes)
{
    int src = 0x12345678;
    int dst = 0;
    Cmemcpy(&dst, &src, 4);
    mu_assert_int_eq(0x12345678, dst);
}

MU_TEST(test_cmemcpy_five_bytes)
{
    char src[5] = {1,2,3,4,5};
    char dst[5] = {0};
    Cmemcpy(dst, src, 5);
    MU_ASSERT_MEMORY_EQ(src, dst, 5);
}

MU_TEST(test_cmemcpy_six_bytes)
{
    char src[6] = {10,20,30,40,50,60};
    char dst[6] = {0};
    Cmemcpy(dst, src, 6);
    MU_ASSERT_MEMORY_EQ(src, dst, 6);
}

MU_TEST(test_cmemcpy_seven_bytes)
{
    char src[7] = "abcdefg";
    char dst[7] = {0};
    Cmemcpy(dst, src, 7);
    MU_ASSERT_MEMORY_EQ(src, dst, 7);
}

MU_TEST(test_cmemcpy_eight_bytes)
{
    long src = 0x0123456789ABCDEF;
    long dst = 0;
    Cmemcpy(&dst, &src, 8);
    mu_assert_int_eq(src, dst);  // 对于 long 相等
}

MU_TEST(test_cmemcpy_nine_bytes)
{
    char src[9] = "123456789";
    char dst[9] = {0};
    Cmemcpy(dst, src, 9);
    MU_ASSERT_MEMORY_EQ(src, dst, 9);
}

MU_TEST(test_cmemcpy_sixteen_bytes)
{
    char src[16] = "0123456789ABCDEF";
    char dst[16] = {0};
    Cmemcpy(dst, src, 16);
    MU_ASSERT_MEMORY_EQ(src, dst, 16);
}

MU_TEST(test_cmemcpy_thirtytwo_bytes)
{
    char src[32];
    char dst[32];
    for (int i = 0; i < 32; i++) src[i] = (char)i;
    Cmemcpy(dst, src, 32);
    MU_ASSERT_MEMORY_EQ(src, dst, 32);
}

// 测试源地址对齐，目标地址不对齐（偏移1字节）
MU_TEST(test_cmemcpy_unaligned_dest)
{
    char src[20] = "abcdefghijklmnopqrst";
    char buffer[30];
    char *dst = buffer + 1;  // 不对齐
    Cmemcpy(dst, src, 19);
    MU_ASSERT_MEMORY_EQ(src, dst, 19);
}

// 测试源地址不对齐，目标地址对齐
MU_TEST(test_cmemcpy_unaligned_src)
{
    char buffer[30];
    char *src = buffer + 1;
    char dst[20];
    // 填充源数据
    for (int i = 0; i < 19; i++) src[i] = (char)('A' + i);
    Cmemcpy(dst, src, 19);
    MU_ASSERT_MEMORY_EQ(src, dst, 19);
}

// 测试源和目的都不对齐，且长度跨越多种块边界
MU_TEST(test_cmemcpy_both_unaligned)
{
    char src_buf[40];
    char dst_buf[40];
    char *src = src_buf + 3;
    char *dst = dst_buf + 2;
    for (int i = 0; i < 25; i++) src[i] = (char)(i * 3);
    Cmemcpy(dst, src, 25);
    MU_ASSERT_MEMORY_EQ(src, dst, 25);
}

// 测试大型复制（1000字节）
MU_TEST(test_cmemcpy_large)
{
    const size_t size = 1000;
    char *src = malloc(size);
    char *dst = malloc(size);
    for (size_t i = 0; i < size; i++) src[i] = (char)(i % 256);
    Cmemcpy(dst, src, size);
    MU_ASSERT_MEMORY_EQ(src, dst, size);
    free(src);
    free(dst);
}

// 测试结构体复制
typedef struct {
    int a;
    double b;
    char c[8];
} TestStruct;

MU_TEST(test_cmemcpy_struct)
{
    TestStruct src = {42, 3.14159, "hello"};
    TestStruct dst = {0};
    Cmemcpy(&dst, &src, sizeof(TestStruct));
    mu_assert_int_eq(src.a, dst.a);
    mu_assert_double_eq(src.b, dst.b);
    mu_assert_string_eq(src.c, dst.c);
}

// ------------------------------------------------------------
// 测试套件
// ------------------------------------------------------------
MU_TEST_SUITE(cmemcpy_suite)
{
    MU_RUN_TEST(test_cmemcpy_zero_bytes);
    MU_RUN_TEST(test_cmemcpy_one_byte);
    MU_RUN_TEST(test_cmemcpy_two_bytes);
    MU_RUN_TEST(test_cmemcpy_three_bytes);
    MU_RUN_TEST(test_cmemcpy_four_bytes);
    MU_RUN_TEST(test_cmemcpy_five_bytes);
    MU_RUN_TEST(test_cmemcpy_six_bytes);
    MU_RUN_TEST(test_cmemcpy_seven_bytes);
    MU_RUN_TEST(test_cmemcpy_eight_bytes);
    MU_RUN_TEST(test_cmemcpy_nine_bytes);
    MU_RUN_TEST(test_cmemcpy_sixteen_bytes);
    MU_RUN_TEST(test_cmemcpy_thirtytwo_bytes);
    MU_RUN_TEST(test_cmemcpy_unaligned_dest);
    MU_RUN_TEST(test_cmemcpy_unaligned_src);
    MU_RUN_TEST(test_cmemcpy_both_unaligned);
    MU_RUN_TEST(test_cmemcpy_large);
    MU_RUN_TEST(test_cmemcpy_struct);
}

// ------------------------------------------------------------
// 主函数
// ------------------------------------------------------------
int main(void)
{
    // 可选：检查 long 是否为 8 字节（否则可能失败）
    if (sizeof(long) != 8) {
        fprintf(stderr, "警告：当前环境下 sizeof(long) = %zu，但函数假设为 8 字节。测试可能失败。\n", sizeof(long));
    }
    MU_RUN_SUITE(cmemcpy_suite);
    MU_REPORT();
    printf("test memcpy finsh");
    return MU_EXIT_CODE;
}