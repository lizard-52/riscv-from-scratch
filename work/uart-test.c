int strlen_simple(const char *str) {
    int i;
    for (i = 0;str[i] != '\0';i++);
    return i;
}

int main() {
    char* test_str = "Hello World! \n\r";

    while(1==1) {
        for (int i = 0; i < strlen_simple(test_str); i++) { 
            uart_put_char(test_str[i]);
        }
    }
}