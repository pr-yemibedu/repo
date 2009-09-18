#include <stdio.h>
#include <memory.h>

int char_cmp(void *a, void *b) {
    if (*(char*)a < *(char*)b) {
        return -1;
    } else if (*(char*)a == *(char*)b) {
        return 0;
    } else {
        return 1;
    }
}

int main(int argc, char **args) {
    int (*fn)(void*,void*) = char_cmp;
    char *a, *b;
    a = (char*)malloc(sizeof(char));
    b = (char*)malloc(sizeof(char));
    *a = 'a';
    *b = 'b';
    printf("%d\n", fn(a, b));
    free(a);
    free(b);
    return 0;
}