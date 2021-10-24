#include<stdio.h>
#include<string.h>

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("Please provide shellcode\n");
        return 1;
    }

    char buffer[500];
    strcpy(buffer, argv[1]);

    printf("Buffer: [%s]\n", buffer);

    return 0;
}
