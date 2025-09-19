#include <stdio.h>
#include <string.h>

// 内联汇编实现的memcpy函数
inline void *memcpy(void *From, void *To, long Num) {
    int d0, d1, d2;
    __asm__ __volatile__ (
        "cld \n\t"
        "rep \n\t"
        "movsq \n\t"
        "testb $4, %b4 \n\t"
        "je 1f \n\t"
        "movsl \n\t"
        "1: \n\t"
        "testb $2, %b4 \n\t"
        "je 2f \n\t"
        "movsw \n\t"
        "2: \n\t"
        "testb $1, %b4 \n\t"
        "je 3f \n\t"
        "movsb \n\t"
        "3: \n\t"
        : "=&c" (d0), "=&D" (d1), "=&S" (d2)
        : "0" (Num / 8), "q" (Num), "1" (To), "2" (From)
        : "memory"
    );
    return To;
}

int main() {
    // 测试1: 复制字符串
    char src1[] = "Hello, World!";
    char dest1[20] = {0};
    
    memcpy(src1, dest1, strlen(src1) + 1); // 包括null终止符
    printf("Test 1 - String copy:\n");
    printf("Source: %s\n", src1);
    printf("Destination: %s\n\n", dest1);
    
    // 测试2: 复制整型数组
    int src2[] = {1, 2, 3, 4, 5};
    int dest2[5] = {0};
    long num_bytes = sizeof(src2);
    
    memcpy(src2, dest2, num_bytes);
    printf("Test 2 - Integer array copy:\n");
    printf("Source: ");
    for (int i = 0; i < 5; i++) printf("%d ", src2[i]);
    printf("\nDestination: ");
    for (int i = 0; i < 5; i++) printf("%d ", dest2[i]);
    printf("\n\n");
    
    // 测试3: 复制部分数据
    char src3[] = "ABCDEFGHIJKLMNOP";
    char dest3[10] = {0};
    
    memcpy(src3, dest3, 8); // 只复制前8个字节
    dest3[8] = '\0'; // 手动添加终止符
    printf("Test 3 - Partial copy:\n");
    printf("Source: %s\n", src3);
    printf("Destination: %s\n\n", dest3);
    
    // 测试4: 验证与标准memcpy的一致性
    char src4[] = "Test string";
    char dest4_asm[20] = {0};
    char dest4_std[20] = {0};
    
    memcpy(src4, dest4_asm, sizeof(src4));
    memcpy(src4, dest4_std, sizeof(src4)); // 使用标准库memcpy
    
    printf("Test 4 - Comparison with standard memcpy:\n");
    printf("Custom memcpy: %s\n", dest4_asm);
    printf("Standard memcpy: %s\n", dest4_std);
    printf("Results match: %s\n\n", 
           strcmp(dest4_asm, dest4_std) == 0 ? "Yes" : "No");
    
    // 测试5: 边界情况 - 零字节复制
    char src5[] = "Should not be copied";
    char dest5[20] = "Original text";
    
    memcpy(src5, dest5, 0);
    printf("Test 5 - Zero byte copy:\n");
    printf("Destination remains: %s\n", dest5);
    
    return 0;
}