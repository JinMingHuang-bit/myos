#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "minunit.h"

// 重命名函数以避免冲突
int my_memcmp(void* FirstPart, void* SecondPart, long Count) {
    if (Count == 0) return 0;
    
    register int __res;
    __asm__ __volatile__ (
        "cld \n\t"
        "repe \n\t"
        "cmpsb \n\t"
        "jne 1f \n\t"
        "xorl %%eax, %%eax \n\t"  // 相等
        "jmp 2f \n\t"
        "1: \n\t"
        "movzbl -1(%%rsi), %%edx \n\t"  // 第二个字符串的字符
        "movzbl -1(%%rdi), %%eax \n\t"  // 第一个字符串的字符  
        "subl %%edx, %%eax \n\t"        // 计算差值
        "2: \n\t"
        :"=a"(__res)
        :"D"(FirstPart),
         "S"(SecondPart),
         "c"(Count)
        : "edx", "cc", "memory"
    );
    return __res;
}

int my_Cmemcmp(void *FirstPart, void *SecondPart, long Count) {
    unsigned char *p1 = (unsigned char *)FirstPart;
    unsigned char *p2 = (unsigned char *)SecondPart;
    
    while (Count-- > 0) {
        if (*p1 != *p2) {
            return (*p1 > *p2) ? 1 : -1;
        }
        p1++;
        p2++;
    }
    return 0;
}

// 更新所有测试用例
MU_TEST(test_memcmp_equal) {
    char str1[] = "hello";
    char str2[] = "hello";
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {1, 2, 3, 4, 5};
    
    mu_assert_int_eq(0, my_memcmp(str1, str2, 5));
    mu_assert_int_eq(0, my_Cmemcmp(str1, str2, 5));
    mu_assert_int_eq(0, my_memcmp(arr1, arr2, 5 * sizeof(int)));
    mu_assert_int_eq(0, my_Cmemcmp(arr1, arr2, 5 * sizeof(int)));
    mu_assert_int_eq(0, my_memcmp(str1, str2, 0));
    mu_assert_int_eq(0, my_Cmemcmp(str1, str2, 0));
}

MU_TEST(test_memcmp_first_greater) {
    char str1[] = "hello";
    char str2[] = "helln";
    char str3[] = "world";
    char str4[] = "word";
    
    mu_assert_int_eq(1, my_memcmp(str1, str2, 5));
    mu_assert_int_eq(1, my_Cmemcmp(str1, str2, 5));
    mu_assert_int_eq(1, my_memcmp(str3, str4, 3));
    mu_assert_int_eq(1, my_Cmemcmp(str3, str4, 3));
}

MU_TEST(test_memcmp_first_smaller) {
    char str1[] = "apple";
    char str2[] = "apply";
    char str3[] = "abc";
    char str4[] = "abd";
    char a = 'a';
    char b = 'b';
    mu_assert_int_eq(-1, my_memcmp(str1, str2, 5));
    mu_assert_int_eq(-1, my_Cmemcmp(str1, str2, 5));
    mu_assert_int_eq(-1, my_memcmp(str3, str4, 3));
    mu_assert_int_eq(-1, my_Cmemcmp(str3, str4, 3));
    mu_assert_int_eq(0, my_memcmp(&a, &a, 1));
    mu_assert_int_eq(0, my_Cmemcmp(&a, &a, 1));
}
MU_TEST(test_memcmp_middle_diff) {
    char str1[] = "abcdef";
    char str2[] = "abcxef";  // 第4个字符不同 'd' < 'x'
    
    mu_assert_int_eq(-1, my_memcmp(str1, str2, 6));
    mu_assert_int_eq(-1, my_Cmemcmp(str1, str2, 6));
    
    // 只比较到不同位置之前
    mu_assert_int_eq(0, my_memcmp(str1, str2, 3));
    mu_assert_int_eq(0, my_Cmemcmp(str1, str2, 3));
}
// ... 其他测试用例也要相应修改
MU_TEST(test_memcmp_int_arrays) {
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {1, 2, 3, 4, 6};  // 最后一个元素不同
    int arr3[] = {1, 2, 3, 4, 4};  // 最后一个元素较小
    
    mu_assert_int_eq(-1, my_memcmp(arr1, arr2, 5 * sizeof(int)));
    mu_assert_int_eq(-1, my_Cmemcmp(arr1, arr2, 5 * sizeof(int)));
    
    mu_assert_int_eq(1, my_memcmp(arr1, arr3, 5 * sizeof(int)));
    mu_assert_int_eq(1, my_Cmemcmp(arr1, arr3, 5 * sizeof(int)));
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
    mu_assert_int_eq(-1, my_memcmp(&a, &b, 1));
    mu_assert_int_eq(-1, my_Cmemcmp(&a, &b, 1));
    
    mu_assert_int_eq(1, my_memcmp(&b, &a, 1));
    mu_assert_int_eq(1, my_Cmemcmp(&b, &a, 1));
    
    mu_assert_int_eq(0, my_memcmp(&a, &a, 1));
    mu_assert_int_eq(0, my_Cmemcmp(&a, &a, 1));
}
MU_TEST(test_memcmp_consistency) {
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
        {"test1", "test2", 4},
    };
    
    int num_cases = sizeof(test_cases) / sizeof(test_cases[0]);
    
    for (int i = 0; i < num_cases; i++) {
        int result1 = my_memcmp(test_cases[i].str1, test_cases[i].str2, test_cases[i].len);
        int result2 = my_Cmemcmp(test_cases[i].str1, test_cases[i].str2, test_cases[i].len);
        mu_assert_int_eq(result1, result2);
        mu_check(result1 == -1 || result1 == 0 || result1 == 1);
        mu_check(result2 == -1 || result2 == 0 || result2 == 1);
    }
}

MU_TEST_SUITE(memcmp_test_suite) {
    MU_RUN_TEST(test_memcmp_equal);
    MU_RUN_TEST(test_memcmp_first_greater);
    MU_RUN_TEST(test_memcmp_first_smaller);
    // ... 添加其他测试
    MU_RUN_TEST(test_memcmp_middle_diff);
    MU_RUN_TEST(test_memcmp_int_arrays);
    MU_RUN_TEST(test_memcmp_edge_cases);
    MU_RUN_TEST(test_memcmp_consistency);
}

int main() {
    printf("=== memcmp 函数测试开始 ===\n");
    MU_RUN_SUITE(memcmp_test_suite);
    MU_REPORT();
    printf("=== memcmp 函数测试结束 ===\n");
    return MU_EXIT_CODE;
}