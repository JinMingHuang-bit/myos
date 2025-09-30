#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "minunit.h"

// 被测试的函数声明
int memcmp(void* FirstPart,void* SecondPart,long Count){
    register int __res;
    __asm__ __volatile__ ("cld \n\t"      //clean direction
        "repe \n\t"     // 重复执行下条指令直到ecx=0或ZF=0
        "cmpsb \n\t"    // 比较[esi]和[edi]的字节，同时递增指针
        "je 1f \n\t"     // 如果全部相等，跳转到标签1
        "movl $1,%%eax \n\t" // 设置eax=1（FirstPart > SecondPart）
        "jl 1f \n\t"    // 如果小于，跳转到标签1（保持eax=1）
        "negl %%eax \n\t"   // 否则取反eax（eax=-1，FirstPart < SecondPart）
        "1: \n\t"
        :"=a"(__res)
        :"0"(0),            //0：内存块相等
        "D"(FirstPart),
        "S"(SecondPart),
        "c"(Count)
        :
    );
    return __res;
}
int Cmemcmp(void *FirstPart, void *SecondPart, long Count)
{
    unsigned char *p1 = (unsigned char *)FirstPart;
    unsigned char *p2 = (unsigned char *)SecondPart;
    
    // 逐字节比较
    while (Count-- > 0) {
        if (*p1 != *p2) {
            // 返回差值（符号表示大小关系）
            return (*p1 > *p2) ? 1 : -1;
        }
        p1++;
        p2++;
    }
    
    // 所有字节都相等
    return 0;
}


// 测试用例：相等的情况
MU_TEST(test_memcmp_equal) {
    char str1[] = "hello";
    char str2[] = "hello";
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {1, 2, 3, 4, 5};
    
    // 测试字符串相等
    mu_assert_int_eq(0, memcmp(str1, str2, 5));
    mu_assert_int_eq(0, Cmemcmp(str1, str2, 5));
    
    // 测试整数数组相等
    mu_assert_int_eq(0, memcmp(arr1, arr2, 5 * sizeof(int)));
    mu_assert_int_eq(0, Cmemcmp(arr1, arr2, 5 * sizeof(int)));
    
    // 测试零长度比较
    mu_assert_int_eq(0, memcmp(str1, str2, 0));
    mu_assert_int_eq(0, Cmemcmp(str1, str2, 0));
}

// 测试用例：第一个参数较大的情况
MU_TEST(test_memcmp_first_greater) {
    char str1[] = "hello";
    char str2[] = "helln";  // 'o' > 'n'
    char str3[] = "world";
    char str4[] = "word";   // 'l' > '\0' (在相同位置)
    
    // 测试字符串比较
    mu_assert_int_eq(1, memcmp(str1, str2, 5));
    mu_assert_int_eq(1, Cmemcmp(str1, str2, 5));
    
    // 测试部分比较
    mu_assert_int_eq(1, memcmp(str3, str4, 3));  // 只比较前3个字符 "wor"
    mu_assert_int_eq(1, Cmemcmp(str3, str4, 3));
}

// 测试用例：第一个参数较小的情况
MU_TEST(test_memcmp_first_smaller) {
    char str1[] = "apple";
    char str2[] = "apply";  // 'e' < 'y'
    char str3[] = "abc";
    char str4[] = "abd";    // 'c' < 'd'
    
    mu_assert_int_eq(-1, memcmp(str1, str2, 5));
    mu_assert_int_eq(-1, Cmemcmp(str1, str2, 5));
    
    mu_assert_int_eq(-1, memcmp(str3, str4, 3));
    mu_assert_int_eq(-1, Cmemcmp(str3, str4, 3));
}

// 测试用例：在中间位置不同的情况
MU_TEST(test_memcmp_middle_diff) {
    char str1[] = "abcdef";
    char str2[] = "abcxef";  // 第4个字符不同 'd' < 'x'
    
    mu_assert_int_eq(-1, memcmp(str1, str2, 6));
    mu_assert_int_eq(-1, Cmemcmp(str1, str2, 6));
    
    // 只比较到不同位置之前
    mu_assert_int_eq(0, memcmp(str1, str2, 3));
    mu_assert_int_eq(0, Cmemcmp(str1, str2, 3));
}

// 测试用例：整数数组比较
MU_TEST(test_memcmp_int_arrays) {
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {1, 2, 3, 4, 6};  // 最后一个元素不同
    int arr3[] = {1, 2, 3, 4, 4};  // 最后一个元素较小
    
    mu_assert_int_eq(-1, memcmp(arr1, arr2, 5 * sizeof(int)));
    mu_assert_int_eq(-1, Cmemcmp(arr1, arr2, 5 * sizeof(int)));
    
    mu_assert_int_eq(1, memcmp(arr1, arr3, 5 * sizeof(int)));
    mu_assert_int_eq(1, Cmemcmp(arr1, arr3, 5 * sizeof(int)));
}

// 测试用例：边界情况
MU_TEST(test_memcmp_edge_cases) {
    // 测试空指针（应该避免，但测试函数行为）
    char* null_str = NULL;
    char non_null[] = "test";
    
    // 注意：传入 NULL 指针是未定义行为，这里主要测试正常情况
    // 在实际使用中应该避免传递 NULL 指针
    
    // 测试单字节比较
    char a = 'a';
    char b = 'b';
    mu_assert_int_eq(-1, memcmp(&a, &b, 1));
    mu_assert_int_eq(-1, Cmemcmp(&a, &b, 1));
    
    mu_assert_int_eq(1, memcmp(&b, &a, 1));
    mu_assert_int_eq(1, Cmemcmp(&b, &a, 1));
    
    mu_assert_int_eq(0, memcmp(&a, &a, 1));
    mu_assert_int_eq(0, Cmemcmp(&a, &a, 1));
}

// 测试用例：验证两个实现的一致性
MU_TEST(test_memcmp_consistency) {
    // 测试多种情况，确保两个实现结果一致
    struct test_case {
        char* str1;
        char* str2;
        long len;
    } test_cases[] = {
        {"hello", "hello", 5},
        {"hello", "helln", 5},
        {"apple", "apply", 5},
        {"abc", "abd", 3},
        {"", "", 0},
        {"a", "b", 1},
        {"test1", "test2", 4},  // 只比较前4个相同的字符
    };
    
    int num_cases = sizeof(test_cases) / sizeof(test_cases[0]);
    
    for (int i = 0; i < num_cases; i++) {
        int result1 = memcmp(test_cases[i].str1, test_cases[i].str2, test_cases[i].len);
        int result2 = Cmemcmp(test_cases[i].str1, test_cases[i].str2, test_cases[i].len);
        
        // 两个实现应该返回相同的结果
        mu_assert_int_eq(result1, result2);
        
        // 结果应该是 -1, 0, 或 1
        mu_check(result1 == -1 || result1 == 0 || result1 == 1);
        mu_check(result2 == -1 || result2 == 0 || result2 == 1);
    }
}

// 测试套件
MU_TEST_SUITE(memcmp_test_suite) {
    MU_RUN_TEST(test_memcmp_equal);
    MU_RUN_TEST(test_memcmp_first_greater);
    MU_RUN_TEST(test_memcmp_first_smaller);
    MU_RUN_TEST(test_memcmp_middle_diff);
    MU_RUN_TEST(test_memcmp_int_arrays);
    MU_RUN_TEST(test_memcmp_edge_cases);
    MU_RUN_TEST(test_memcmp_consistency);
}

// 主函数
int main() {
    printf("=== memcmp 函数测试开始 ===\n");
    
    MU_RUN_SUITE(memcmp_test_suite);
    MU_REPORT();
    
    printf("=== memcmp 函数测试结束 ===\n");
    return MU_EXIT_CODE;
}