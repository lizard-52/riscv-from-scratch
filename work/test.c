//#include <stdio.h>

int strlen_simple(const char *str) {
    int i;
    for (i = 0;str[i] != '\0';i++);
    return i;
}
int main() {
    const char * test_string = "hello";
    int x = 1;
    if (x == 1) {
        x = strlen_simple(test_string);
    }
    //printf("%d\n", x);
    return 0;
}