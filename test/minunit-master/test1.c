#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>  // 添加这个头文件
#include "minunit.h"

// 被测试的函数
int add(int a, int b) {
    return a + b;
}

int multiply(int a, int b) {
    return a * b;
}

char* to_uppercase(char* str) {
    if (str == NULL) return NULL;
    
    char* result = malloc(strlen(str) + 1);
    for (int i = 0; str[i]; i++) {
        result[i] = toupper(str[i]);  // 现在 toupper 已正确定义
    }
    result[strlen(str)] = '\0';
    return result;
}

// 测试用例
MU_TEST(test_add) {
    mu_assert_int_eq(5, add(2, 3));
    mu_assert_int_eq(0, add(-2, 2));
    mu_assert_int_eq(-5, add(-2, -3));
}

MU_TEST(test_multiply) {
    mu_assert_int_eq(6, multiply(2, 3));
    mu_assert_int_eq(0, multiply(0, 5));
    mu_assert_int_eq(-6, multiply(2, -3));
}

MU_TEST(test_string_operations) {
    char* upper_hello = to_uppercase("hello");
    char* upper_world = to_uppercase("WoRlD");
    
    mu_assert_string_eq("HELLO", upper_hello);
    mu_assert_string_eq("WORLD", upper_world);
    
    // 测试空指针 - 修正：使用 mu_check 或 mu_assert 并包含消息
    mu_check(NULL == to_uppercase(NULL));
    
    // 释放内存
    free(upper_hello);
    free(upper_world);
}

MU_TEST(test_null_string) {
    // 另一种测试空指针的方法
    mu_assert(NULL == to_uppercase(NULL), "NULL input should return NULL");
}

// 测试套件
MU_TEST_SUITE(test_suite) {
    MU_RUN_TEST(test_add);
    MU_RUN_TEST(test_multiply);
    MU_RUN_TEST(test_string_operations);
    MU_RUN_TEST(test_null_string);
}

// 可选的 setup 和 teardown 函数
void setup(void) {
    printf("=== 测试开始 ===\n");
}

void teardown(void) {
    printf("=== 测试结束 ===\n");
}

// 主函数
int main() {
    // 配置 setup 和 teardown（可选）
    MU_SUITE_CONFIGURE(setup, teardown);
    
    // 运行测试套件
    MU_RUN_SUITE(test_suite);
    
    // 生成测试报告
    MU_REPORT();
    
    // 返回失败测试的数量（0表示全部通过）
    return MU_EXIT_CODE;
}