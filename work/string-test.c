#include <stdio.h>

int strlen_simple(const char *str) {
    int i;
    for (i = 0;str[i] != '\0';i++);
    return i;
}
int main() {
    const char * test_string = "long string with lots of letters";
    int x = 1;
    x = strlen_simple(test_string);

    x = x * x;
    char buffer[50];
    sprintf(buffer, "%d\n");

    for (int i = 0; i < strlen_simple(buffer); i++) { 
        uart_put_char(buffer[i]);
    }

    int c = 0;
    while(1 == 1) {
        c++;
    }
    return 0;
}