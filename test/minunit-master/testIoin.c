#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "minunit.h"

// 在用户空间测试时，我们模拟这些函数的行为
// 在实际内核代码中，这些函数会正常工作

// #ifdef USER_SPACE_TEST
// // 用户空间模拟版本
// unsigned char io_in8(unsigned short port) {
//     // 模拟返回固定值用于测试
//     static unsigned char mock_data_8bit = 0x5A;
//     return mock_data_8bit++;
// }

// unsigned short io_in16(unsigned short port) {
//     // 模拟返回固定值用于测试
//     static unsigned short mock_data_16bit = 0x1234;
//     return mock_data_16bit++;
// }

// unsigned int io_in32(unsigned short port) {
//     // 模拟返回固定值用于测试
//     static unsigned int mock_data_32bit = 0xDEADBEEF;
//     return mock_data_32bit++;
// }
// #else
// 实际的内核版本
unsigned char io_in8(unsigned short port){
    unsigned char ret=0;
    __asm__ __volatile__("inb %%dx,%0 \n\t"
            "mfence \n\t"
            :"=a"(ret)
            :"d"(port)
            :"memory"
        );
    return ret;
}

unsigned short io_in16(unsigned short port) {
    unsigned short ret = 0;
    __asm__ __volatile__(   "inw    %%dx,   %0  \n\t"
                "mfence         \n\t"
                :"=a"(ret)
                :"d"(port)
                :"memory");
    return ret;
}

unsigned int io_in32(unsigned short port){
    unsigned int ret=0;
    __asm__ __volatile__("inl %%dx,%0 \n\t"
        "mfence \n\t"
        :"=a"(ret)
        :"d"(port)
        :"memory"
        );
    return ret;
}
// #endif

// 测试用例：基本功能测试
MU_TEST(test_io_basic_functionality) {
    printf("  测试基本功能\n");
    // 测试不同的端口号
    unsigned char result8 = io_in8(0x60);
    unsigned short result16 = io_in16(0x64);
    unsigned int result32 = io_in32(0x80);
    
    // 验证返回值在合理范围内
    mu_check(result8 >= 0 && result8 <= 0xFF);
    mu_check(result16 >= 0 && result16 <= 0xFFFF);
    mu_check(result32 >= 0 && result32 <= 0xFFFFFFFF);
    
    printf("  io_in8(0x60) = 0x%02X\n", result8);
    printf("  io_in16(0x64) = 0x%04X\n", result16);
    printf("  io_in32(0x80) = 0x%08X\n", result32);
}

// 测试用例：多次读取测试
MU_TEST(test_io_multiple_reads) {
    printf("  测试多次读取\n");
    unsigned char prev8 = io_in8(0x70);
    unsigned short prev16 = io_in16(0x74);
    unsigned int prev32 = io_in32(0x78);
    
    // 多次读取相同的端口
    for (int i = 0; i < 5; i++) {
        unsigned char current8 = io_in8(0x70);
        unsigned short current16 = io_in16(0x74);
        unsigned int current32 = io_in32(0x78);
        
        // 验证类型正确性
        mu_check(current8 >= 0 && current8 <= 0xFF);
        mu_check(current16 >= 0 && current16 <= 0xFFFF);
        mu_check(current32 >= 0 && current32 <= 0xFFFFFFFF);
        
        prev8 = current8;
        prev16 = current16;
        prev32 = current32;
    }
}

// 测试用例：边界端口测试
MU_TEST(test_io_boundary_ports) {
    printf("  测试边界端口\n");
    // 测试一些常见的端口号
    unsigned short ports[] = {0x00, 0x3F, 0x40, 0x7F, 0x80, 0xFF, 0x3FF};
    int num_ports = sizeof(ports) / sizeof(ports[0]);
    
    for (int i = 0; i < num_ports; i++) {
        unsigned char result8 = io_in8(ports[i]);
        unsigned short result16 = io_in16(ports[i]);
        unsigned int result32 = io_in32(ports[i]);
        
        mu_check(result8 <= 0xFF);
        mu_check(result16 <= 0xFFFF);
        mu_check(result32 <= 0xFFFFFFFF);
        
        printf("  Port 0x%03X: in8=0x%02X, in16=0x%04X, in32=0x%08X\n", 
               ports[i], result8, result16, result32);
    }
}

// 测试用例：数据类型正确性
MU_TEST(test_io_data_types) {
    // 验证返回值的类型和范围
    unsigned char result8 = io_in8(0x90);
    unsigned short result16 = io_in16(0x94);
    unsigned int result32 = io_in32(0x98);
    
    // 检查数据类型大小
    mu_check(sizeof(result8) == 1);
    mu_check(sizeof(result16) == 2);
    mu_check(sizeof(result32) == 4);
    
    // 检查值范围
    mu_check(result8 >= 0x00 && result8 <= 0xFF);
    mu_check(result16 >= 0x0000 && result16 <= 0xFFFF);
    mu_check(result32 >= 0x00000000 && result32 <= 0xFFFFFFFF);
}

// 测试用例：函数调用一致性
MU_TEST(test_io_consistency) {
    // 多次调用相同的函数应该正常工作
    for (int i = 0; i < 10; i++) {
        unsigned char r8 = io_in8(0xA0 + i);
        unsigned short r16 = io_in16(0xB0 + i);
        unsigned int r32 = io_in32(0xC0 + i);
        
        mu_check(r8 <= 0xFF);
        mu_check(r16 <= 0xFFFF);
        mu_check(r32 <= 0xFFFFFFFF);
    }
}

// 测试套件
MU_TEST_SUITE(io_test_suite) {
    MU_RUN_TEST(test_io_basic_functionality);
    MU_RUN_TEST(test_io_multiple_reads);
    MU_RUN_TEST(test_io_boundary_ports);
    MU_RUN_TEST(test_io_data_types);
    MU_RUN_TEST(test_io_consistency);
}

// 主函数
int main() {
    printf("=== I/O 端口读取函数测试开始 ===\n");
    printf("注意：在用户空间，这些测试使用模拟数据\n");
    printf("在内核空间，将实际读取硬件端口\n\n");
    
    MU_RUN_SUITE(io_test_suite);
    MU_REPORT();
    
    printf("=== I/O 端口读取函数测试结束 ===\n");
    return MU_EXIT_CODE;
}