#include<stdio.h>
#include<string.h>

int main(int argc, char* argv[]) {
    char buffer[500];
    strcpy(buffer, argv[1]);

    printf("hell world %s", buffer);

    return 0;
}
