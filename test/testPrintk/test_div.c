#include <stdio.h>

// 第一个宏 - 使用固定rcx寄存器
#define do_div(n, base) ({ \
    int __res; \
    __asm__("divq %%rcx" \
            : "=a"(n), "=d"(__res) \
            : "0"(n), "1"(0), "c"(base) \
            : "cc" \
    ); \
    __res; \
})

// 第二个宏 - 使用自动寄存器分配（修复版本）
#define do_div2(n, base) ({ \
    int __res; \
    __asm__("divq %[divisor]" \
            : "=a"(n), "=d"(__res) \
            : "0"(n), "1"(0), [divisor]"r"((unsigned long)base) \
            : "cc" \
    ); \
    __res; \
})

// 用于对比的标准除法函数
void standard_division(unsigned long n, int base, unsigned long *quotient, int *remainder) {
    *quotient = n / base;
    *remainder = n % base;
}

void test_basic_operations() {
    printf("=== 基础运算测试 ===\n");
    
    // 测试1: 普通除法
    unsigned long n1 = 100;
    int base1 = 3;
    int rem1 = do_div(n1, base1);
    printf("do_div: 100 / 3 = %lu 余 %d\n", n1, rem1);
    
    unsigned long n2 = 100;
    int base2 = 3;
    int rem2 = do_div2(n2, base2);
    printf("do_div2: 100 / 3 = %lu 余 %d\n", n2, rem2);
    
    // 标准除法对比
    unsigned long std_quot;
    int std_rem;
    standard_division(100, 3, &std_quot, &std_rem);
    printf("标准除法: 100 / 3 = %lu 余 %d\n", std_quot, std_rem);
}

void test_edge_cases() {
    printf("\n=== 边界情况测试 ===\n");
    
    // 测试2: 大数除法
    unsigned long big_num = 0xFFFFFFFFFFFFFFFF; // 64位最大值
    int divisor = 12345;
    
    unsigned long n3 = big_num;
    int rem3 = do_div(n3, divisor);
    printf("do_div: 大数 / 12345 = %lu 余 %d\n", n3, rem3);
    
    unsigned long n4 = big_num;
    int rem4 = do_div2(n4, divisor);
    printf("do_div2: 大数 / 12345 = %lu 余 %d\n", n4, rem4);
    
    // 测试3: 除数为1
    unsigned long n5 = 987654321;
    int rem5 = do_div(n5, 1);
    printf("do_div: 987654321 / 1 = %lu 余 %d\n", n5, rem5);
    
    // 测试4: 被除数小于除数
    unsigned long n6 = 5;
    int rem6 = do_div2(n6, 10);
    printf("do_div2: 5 / 10 = %lu 余 %d\n", n6, rem6);
}

void test_consistency() {
    printf("\n=== 一致性测试 ===\n");
    
    // 修复：使用unsigned long类型的测试用例
    unsigned long test_cases[][2] = {
        {100, 7},
        {0x12345678, 256},
        {999999, 333},
        {1, 2},
        {65536, 256}
    };
    
    int num_cases = sizeof(test_cases) / sizeof(test_cases[0]);
    int all_match = 1;
    
    for (int i = 0; i < num_cases; i++) {
        unsigned long n1 = test_cases[i][0];
        unsigned long n2 = test_cases[i][0];
        unsigned long base = test_cases[i][1];
        
        int rem1 = do_div(n1, base);
        int rem2 = do_div2(n2, base);
        
        printf("测试 %lu / %lu: do_div商=%lu余%d, do_div2商=%lu余%d - %s\n",
               test_cases[i][0], base, n1, rem1, n2, rem2,
               (n1 == n2 && rem1 == rem2) ? "匹配" : "不匹配");
        
        if (n1 != n2 || rem1 != rem2) {
            all_match = 0;
        }
    }
    
    printf("\n总体结果: %s\n", all_match ? "所有测试用例结果一致" : "存在不一致的结果");
}

void test_performance_sample() {
    printf("\n=== 性能样例测试 ===\n");
    
    // 简单性能对比（循环测试）
    unsigned long n = 1000000;
    int base = 17;
    int iterations = 1000000;
    
    // 测试do_div
    unsigned long n_temp = n;
    for (int i = 0; i < iterations; i++) {
        do_div(n_temp, base);
        n_temp = n; // 重置
    }
    printf("do_div 完成 %d 次迭代\n", iterations);
    
    // 测试do_div2
    n_temp = n;
    for (int i = 0; i < iterations; i++) {
        do_div2(n_temp, base);
        n_temp = n; // 重置
    }
    printf("do_div2 完成 %d 次迭代\n", iterations);
}

int main() {
    printf("内联汇编除法宏测试程序\n");
    printf("编译说明: 需要在64位系统上编译，使用gcc且支持内联汇编\n\n");
    
    test_basic_operations();
    test_edge_cases();
    test_consistency();
    test_performance_sample();
    
    printf("\n=== 测试完成 ===\n");
    return 0;
}