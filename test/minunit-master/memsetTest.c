#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "minunit.h"

// 被测试的函数声明
void * my_memset(void *Address, unsigned char C, long Count) {
    int d0, d1;
    // 将单字节值复制到64位值的每个字节中
    unsigned long tmp = C * 0x0101010101010101UL;
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

void * my_Cmemset(void *Address, unsigned char C, long Count)
{
    unsigned char *ptr = (unsigned char *)Address;
    unsigned long pattern = C;
    
    // 扩展单字节到8字节模式
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

// 辅助函数：检查内存区域是否全部为指定值
int check_memory(const void *addr, unsigned char expected, long count) {
    const unsigned char *ptr = (const unsigned char *)addr;
    for (long i = 0; i < count; i++) {
        if (ptr[i] != expected) {
            return 0; // 检查失败
        }
    }
    return 1; // 检查成功
}

// 测试用例：基本功能测试
MU_TEST(test_memset_basic) {
    char buffer1[100];
    char buffer2[100];
    
    // 测试填充 0
    my_memset(buffer1, 0, 100);
    my_Cmemset(buffer2, 0, 100);
    mu_assert(check_memory(buffer1, 0, 100), "my_memset failed to set to 0");
    mu_assert(check_memory(buffer2, 0, 100), "my_Cmemset failed to set to 0");
    
    // 测试填充特定值
    my_memset(buffer1, 0xAA, 100);
    my_Cmemset(buffer2, 0xAA, 100);
    mu_assert(check_memory(buffer1, 0xAA, 100), "my_memset failed to set to 0xAA");
    mu_assert(check_memory(buffer2, 0xAA, 100), "my_Cmemset failed to set to 0xAA");
    
    // 测试填充 0xFF
    my_memset(buffer1, 0xFF, 100);
    my_Cmemset(buffer2, 0xFF, 100);
    mu_assert(check_memory(buffer1, 0xFF, 100), "my_memset failed to set to 0xFF");
    mu_assert(check_memory(buffer2, 0xFF, 100), "my_Cmemset failed to set to 0xFF");
}

// 测试用例：边界情况测试
MU_TEST(test_memset_edge_cases) {
    char buffer1[20];
    char buffer2[20];
    
    // 测试零长度
    my_memset(buffer1, 0x11, 0);
    my_Cmemset(buffer2, 0x11, 0);
    // 应该没有改变任何内容
    
    // 测试单字节
    my_memset(buffer1, 0x55, 1);
    my_Cmemset(buffer2, 0x55, 1);
    mu_assert(buffer1[0] == 0x55, "my_memset single byte failed");
    mu_assert(buffer2[0] == 0x55, "my_Cmemset single byte failed");
    
    // 测试双字节
    my_memset(buffer1, 0x77, 2);
    my_Cmemset(buffer2, 0x77, 2);
    mu_assert(buffer1[0] == 0x77 && buffer1[1] == 0x77, "my_memset 2 bytes failed");
    mu_assert(buffer2[0] == 0x77 && buffer2[1] == 0x77, "my_Cmemset 2 bytes failed");
}

// 测试用例：不同长度测试
MU_TEST(test_memset_different_lengths) {
    char buffer1[64];
    char buffer2[64];
    
    // 测试各种长度，特别是边界情况
    int lengths[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 15, 16, 17, 31, 32, 33, 63, 64};
    int num_lengths = sizeof(lengths) / sizeof(lengths[0]);
    
    for (int i = 0; i < num_lengths; i++) {
        int len = lengths[i];
        my_memset(buffer1, 0x42, len);
        my_Cmemset(buffer2, 0x42, len);
        
        // 修复：将两个参数合并为一个字符串
        char message1[50];
        char message2[50];
        snprintf(message1, sizeof(message1), "my_memset failed for length %d", len);
        snprintf(message2, sizeof(message2), "my_Cmemset failed for length %d", len);
        
        mu_assert(check_memory(buffer1, 0x42, len), message1);
        mu_assert(check_memory(buffer2, 0x42, len), message2);
    }
}

// 测试用例：返回值测试
MU_TEST(test_memset_return_value) {
    char buffer[50];
    void *result1, *result2;
    
    // 测试返回值是否正确
    result1 = my_memset(buffer, 0x99, 50);
    result2 = my_Cmemset(buffer, 0x88, 50);
    
    mu_assert(result1 == buffer, "my_memset return value incorrect");
    mu_assert(result2 == buffer, "my_Cmemset return value incorrect");
}

// 测试用例：一致性测试
MU_TEST(test_memset_consistency) {
    char buffer1[100];
    char buffer2[100];
    
    // 用随机模式初始化缓冲区
    for (int i = 0; i < 100; i++) {
        buffer1[i] = rand() % 256;
        buffer2[i] = buffer1[i]; // 复制相同内容
    }
    
    // 测试各种填充值
    unsigned char test_values[] = {0x00, 0xFF, 0x55, 0xAA, 0x11, 0x77};
    int num_values = sizeof(test_values) / sizeof(test_values[0]);
    
    for (int i = 0; i < num_values; i++) {
        unsigned char value = test_values[i];
        
        my_memset(buffer1, value, 100);
        my_Cmemset(buffer2, value, 100);
        
        // 修复：将两个参数合并为一个字符串
        char message[60];
        snprintf(message, sizeof(message), 
                "my_memset and my_Cmemset inconsistent for value 0x%02X", value);
        
        // 检查两个实现结果是否一致
        mu_assert(memcmp(buffer1, buffer2, 100) == 0, message);
    }
}

// 测试用例：整数数组测试
MU_TEST(test_memset_int_arrays) {
    int array1[10];
    int array2[10];
    
    // 测试填充整数数组
    my_memset(array1, 0, sizeof(array1));
    my_Cmemset(array2, 0, sizeof(array2));
    
    for (int i = 0; i < 10; i++) {
        mu_assert(array1[i] == 0, "my_memset int array failed");
        mu_assert(array2[i] == 0, "my_Cmemset int array failed");
    }
    
    // 测试填充非零值
    my_memset(array1, 0x11, sizeof(array1));
    my_Cmemset(array2, 0x11, sizeof(array2));
    
    // 检查前几个字节（因为整数有多个字节）
    unsigned char *ptr1 = (unsigned char *)array1;
    unsigned char *ptr2 = (unsigned char *)array2;
    for (int i = 0; i < 8; i++) {
        mu_assert(ptr1[i] == 0x11, "my_memset int array pattern failed");
        mu_assert(ptr2[i] == 0x11, "my_Cmemset int array pattern failed");
    }
}

// 测试用例：与标准库比较
MU_TEST(test_memset_vs_standard) {
    char buffer1[50];
    char buffer2[50];
    char buffer3[50];
    
    // 用相同模式初始化
    for (int i = 0; i < 50; i++) {
        buffer1[i] = buffer2[i] = buffer3[i] = i;
    }
    
    // 分别用三种方式填充
    my_memset(buffer1, 0xCC, 50);
    my_Cmemset(buffer2, 0xCC, 50);
    memset(buffer3, 0xCC, 50);
    
    // 比较结果
    mu_assert(memcmp(buffer1, buffer3, 50) == 0, "my_memset differs from standard memset");
    mu_assert(memcmp(buffer2, buffer3, 50) == 0, "my_Cmemset differs from standard memset");
}

// 测试套件
MU_TEST_SUITE(memset_test_suite) {
    MU_RUN_TEST(test_memset_basic);
    MU_RUN_TEST(test_memset_edge_cases);
    MU_RUN_TEST(test_memset_different_lengths);
    MU_RUN_TEST(test_memset_return_value);
    MU_RUN_TEST(test_memset_consistency);
    MU_RUN_TEST(test_memset_int_arrays);
    MU_RUN_TEST(test_memset_vs_standard);
}

// 主函数
int main() {
    printf("=== memset 函数测试开始 ===\n");
    
    MU_RUN_SUITE(memset_test_suite);
    MU_REPORT();
    
    printf("=== memset 函数测试结束 ===\n");
    return MU_EXIT_CODE;
}