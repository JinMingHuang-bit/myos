#include <stdio.h>
#include <string.h>
int main() {
    char str[50];
    while (1) {
        printf("Please enter the string (q to quit): ");
        fgets(str, sizeof(str), stdin);
        // 去除换行符
        str[strcspn(str, "\n")] = '\0';
        if (strcmp(str, "q") == 0) {
            break;
        }
        printf("The string you entered is: %s\n", str);
        printf("The length is: %zu\n", strlen(str));
    }
    return 0;
}