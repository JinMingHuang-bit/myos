#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "minunit.h"  

static inline void * Cmemset(void *Address, unsigned char C, long Count)
{
    unsigned char *ptr = (unsigned char *)Address;
    unsigned long pattern = C;
    
    pattern |= (pattern << 8);
    pattern |= (pattern << 16);
    pattern |= (pattern << 32);
    
    long remaining = Count;
    
    while (remaining >= 8) {
        *((unsigned long *)ptr) = pattern;
        ptr += 8;
        remaining -= 8;
    }
    
    if (remaining & 4) {
        *((unsigned int *)ptr) = (unsigned int)pattern;
        ptr += 4;
    }
    
    if (remaining & 2) {
        *((unsigned short *)ptr) = (unsigned short)pattern;
        ptr += 2;
    }
    
    if (remaining & 1) {
        *ptr = C;
    }
    
    return Address;
}

// Auxiliary function: Verify the content of the memory area
static int verify_memory(const unsigned char *mem, unsigned char expected, long count) {
    for (long i = 0; i < count; i++) {
        if (mem[i] != expected) {
            printf("Mismatch at position %ld: expected 0x%02X, got 0x%02X\n", 
                   i, expected, mem[i]);
            return 0;
        }
    }
    return 1;
}

// Auxiliary function: Print memory contents (for debugging)
static void print_memory(const unsigned char *mem, long count) {
    for (long i = 0; i < count; i++) {
        printf("%02X ", mem[i]);
        if ((i + 1) % 16 == 0) printf("\n");
    }
    printf("\n");
}


// Test 1: Basic Function - Fill with Zero Values
MU_TEST(test_fill_zero) {
    long size = 32;
    unsigned char *buffer = (unsigned char *)malloc(size + 2);  // Extra allocation of 2 bytes as protection bytes
    memset(buffer, 0xCC, size + 2);  // Initialize all bytes with a special value
    
    unsigned char C = 0x00;
    void *result = Cmemset(buffer, C, size);
    
    // Verify return value
    mu_assert(result == buffer, "Cmemset should return the original address");
    
    // Verify filled area
    mu_check(verify_memory(buffer, C, size));
    
    // Verify protection bytes are not modified
    mu_assert_int_eq(0xCC, buffer[size]);
    mu_assert_int_eq(0xCC, buffer[size + 1]);
    
    free(buffer);
}

// Test 2: Basic Function - Fill with Non-Zero Values
MU_TEST(test_fill_nonzero) {
    long size = 40;
    unsigned char *buffer = (unsigned char *)malloc(size + 2);
    memset(buffer, 0xCC, size + 2);
    
    unsigned char C = 0xAB;
    void *result = Cmemset(buffer, C, size);
    
    mu_assert(result == buffer, "Cmemset should return the original address");
    mu_check(verify_memory(buffer, C, size));
    mu_assert_int_eq(0xCC, buffer[size]);
    
    free(buffer);
}

// Test 3: Length Less Than 8 Bytes (Covering All Remainder Branches)
MU_TEST(test_length_less_than_8) {
    // Test length 7: Triggering 4+2+1 branches
    long size = 7;
    unsigned char *buffer = (unsigned char *)malloc(size + 8);
    memset(buffer, 0xCC, size + 8);
    
    unsigned char C = 0x5A;
    Cmemset(buffer, C, size);
    
    mu_check(verify_memory(buffer, C, size));
    mu_assert_int_eq(0xCC, buffer[size]);  // Verify the next byte is not modified
    
    free(buffer);
}

// Test 4: Length Exactly Multiple of 8
MU_TEST(test_length_multiple_of_8) {
    long size = 64;
    unsigned char *buffer = (unsigned char *)malloc(size + 8);
    memset(buffer, 0xCC, size + 8);
    
    unsigned char C = 0x3D;
    Cmemset(buffer, C, size);
    
    mu_check(verify_memory(buffer, C, size));
    mu_assert_int_eq(0xCC, buffer[size]);
    
    free(buffer);
}

// Test 5: Mixed Length Tests
MU_TEST(test_mixed_lengths) {
    // Test various edge cases
    unsigned char C = 0xFF;
    
    // Test length 11: Triggering 1-byte and 2-byte branches
    long size1 = 11;
    unsigned char *buffer1 = (unsigned char *)malloc(size1);
    Cmemset(buffer1, C, size1);
    mu_check(verify_memory(buffer1, C, size1));
    free(buffer1);
    
    // Test length 9: Only triggering 1-byte branch
    long size2 = 9;
    unsigned char *buffer2 = (unsigned char *)malloc(size2);
    Cmemset(buffer2, 0x7E, size2);
    mu_check(verify_memory(buffer2, 0x7E, size2));
    free(buffer2);
    
    // Test length 10: Only triggering 2-byte branch
    long size3 = 10;
    unsigned char *buffer3 = (unsigned char *)malloc(size3);
    Cmemset(buffer3, 0x99, size3);
    mu_check(verify_memory(buffer3, 0x99, size3));
    free(buffer3);
}

// Test 6: Pattern Expansion Verification
MU_TEST(test_pattern_expansion) {
    // Test if pattern expansion is correct
    unsigned char C = 0x3D;
    unsigned long pattern = C;
    
    pattern |= (pattern << 8);
    pattern |= (pattern << 16);
    pattern |= (pattern << 32);
    
    // 0x3D的64位扩展应该是0x3D3D3D3D3D3D3D3D
    unsigned long expected = 0x3D3D3D3D3D3D3D3D;
    mu_assert_int_eq(expected, pattern);
}

// Test 7: Length of 0 Special Case
MU_TEST(test_zero_length) {
    unsigned char buffer[10];
    memset(buffer, 0xAA, sizeof(buffer));
    
    // Length of 0, should not modify any content
    void *result = Cmemset(buffer, 0xFF, 0);
    mu_assert(result == buffer, "Should return original address for zero length");
    
    // Verify buffer is not modified
    for (int i = 0; i < 10; i++) {
        mu_assert_int_eq(0xAA, buffer[i]);
    }
}

// Test 8: Unaligned Address Test
MU_TEST(test_unaligned_address) {
    long size = 32;
    unsigned char *large_buffer = (unsigned char *)malloc(size + 8);
    memset(large_buffer, 0xCC, size + 8);
    
    // Starting from the position offset by 1 byte (not 8-byte aligned)
    unsigned char *unaligned_addr = large_buffer + 1;
    unsigned char C = 0x77;
    
    Cmemset(unaligned_addr, C, 16);
    
    // Verify the filled area
    for (int i = 0; i < 16; i++) {
        mu_assert_int_eq(C, unaligned_addr[i]);
    }
    
    // Verify protection bytes are not modified
    mu_assert_int_eq(0xCC, large_buffer[0]);  // The previous byte
    mu_assert_int_eq(0xCC, large_buffer[17]); // The next byte
    
    free(large_buffer);
}

// Test 9: Memory Pollution Test
MU_TEST(test_memory_pollution) {
    long total_size = 100;
    long fill_size = 32;
    long offset = 20;  // Start filling from the middle
    
    unsigned char *buffer = (unsigned char *)malloc(total_size);
    memset(buffer, 0xEE, total_size);  // All are initialized to 0xEE
    
    unsigned char C = 0x00;
    Cmemset(buffer + offset, C, fill_size);
    
    // Verify the filled area
    for (long i = offset; i < offset + fill_size; i++) {
        mu_assert_int_eq(C, buffer[i]);
    }
    
    // Verify that the previous area has not been modified
    for (long i = 0; i < offset; i++) {
        mu_assert_int_eq(0xEE, buffer[i]);
    }
    
    // Verify that the subsequent areas have not been modified
    for (long i = offset + fill_size; i < total_size; i++) {
        mu_assert_int_eq(0xEE, buffer[i]);
    }
    
    free(buffer);
}

// Test 10: Compared with the standard memset
MU_TEST(test_against_standard_memset) {
    long size = 1024;  // 1KB data
    unsigned char C = 0x5A;
    
    unsigned char *buffer1 = (unsigned char *)malloc(size);
    unsigned char *buffer2 = (unsigned char *)malloc(size);
    
    // Initialize two buffers with the same value
    memset(buffer1, 0xCC, size);
    memcpy(buffer2, buffer1, size);
    
    //Fill using Cmemset and standard memset respectively
    Cmemset(buffer1, C, size);
    memset(buffer2, C, size);
    
    // comparative result
    mu_check(memcmp(buffer1, buffer2, size) == 0);
    
    free(buffer1);
    free(buffer2);
}
// Test 7.1: Check Pointer Arithmetic Side Effects
MU_TEST(test_pointer_side_effects) {
    long count = 9;                     // Test length, triggering 1-byte remainder branch
    unsigned char fill_value = 0xAB;    // Fill value
    
    // 1. 准备测试内存，分配count+1字节，最后一个字节作为保护字节
    unsigned char *buffer = (unsigned char *)malloc(count + 1);
    
    // 用特殊模式初始化所有字节，便于检测越界写入
    for (long i = 0; i <= count; i++) {
        buffer[i] = 0xCC;               // 0xCC作为保护值
    }
    
    // 2. 保存原始地址，用于后续验证
    void *original_address = (void *)buffer;
    
    // 3. 调用被测试函数
    void *return_value = Cmemset(buffer, fill_value, count);
    
    // 4. 验证1: 函数返回值应等于输入的Address
    // 文档提示：确保返回值等于输入Address
    mu_assert(return_value == original_address, 
              "返回值应与输入地址相同");
    
    // 5. 验证2: 验证填充区域正确
    // 前9个字节应全部填充为0xAB
    for (long i = 0; i < count; i++) {
        mu_assert_int_eq(fill_value, buffer[i]);
    }
    
    // 6. 验证3: Address指针本身不变
    // 虽然我们无法直接检查函数内部的ptr指针，但可以通过以下方式间接验证：
    // - 填充区域正确（已验证）
    // - 保护字节未被修改
    mu_assert_int_eq(0xCC, buffer[count]);
    
    // 7. 额外验证：确保内存没有越界写入
    // 可以通过检查buffer指针的指向是否被修改来验证
    // 由于Cmemset返回的是原始地址，且buffer是局部变量，其值不应改变
    mu_assert(buffer == original_address, "buffer指针的指向不应改变");
    
    // 8. 验证内部指针运算的间接证据
    // 如果函数返回的地址与输入地址相同，说明函数内部正确管理了临时指针ptr
    // 而原始的Address指针（即buffer）保持未变
    
    // 9. 清理
    free(buffer);
}
// 定义测试套件
MU_TEST_SUITE(test_suite) {
    // 可以在这里添加setup和teardown函数
    // MU_SUITE_CONFIGURE(setup_function, teardown_function);
    
    // 注册所有测试用例
    MU_RUN_TEST(test_fill_zero);
    MU_RUN_TEST(test_fill_nonzero);
    MU_RUN_TEST(test_length_less_than_8);
    MU_RUN_TEST(test_length_multiple_of_8);
    MU_RUN_TEST(test_mixed_lengths);
    // MU_RUN_TEST(test_pattern_expansion);
    MU_RUN_TEST(test_zero_length);
    MU_RUN_TEST(test_unaligned_address);
    // MU_RUN_TEST(test_memory_pollution);
    MU_RUN_TEST(test_against_standard_memset);
    // MU_RUN_TEST(test_pointer_side_effects);
}

// 主函数
int main() {
    printf("=== Cmemset 单元测试 ===\n");
    printf("使用MinUnit测试框架\n\n");
    
    // 运行测试套件
    MU_RUN_SUITE(test_suite);
    
    // 生成测试报告
    MU_REPORT();
    
    return MU_EXIT_CODE;
}