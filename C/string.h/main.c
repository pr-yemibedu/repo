#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <malloc.h>

typedef struct tagAppOption {
    int name;
    char *value;
} AppOption, *AppOptionPtr;

AppOptionPtr aoalloc() {
    return (AppOptionPtr)malloc(sizeof(AppOption));
}

AppOptionPtr add(AppOptionPtr options[], int index, int name, char *value) {
    options[index]->name = name;
    options[index]->value = value;
    return options[index];
}

void printOption(AppOptionPtr option) {
    fprintf(stdout, "{name=%c,value=%s}", option->name, option->value);
}

void printOptions(AppOptionPtr options[], int count) {
    int i;
    for (i = 0; i < count; i++) {
        printOption(options[i]);
    }
}

int main(int argc, char **argv) { 
    AppOptionPtr options[] = {aoalloc(), aoalloc(), aoalloc()};
    int c;
    while ((c = getopt(argc, argv, "abc:")) != -1) {
        switch (c) {
            case 'a' :
                add(options, 0, (int)c, optarg);
                break;
            case 'b' :
                add(options, 1, (int)c, optarg);
                break;
            case 'c' :
                add(options, 2, (int)c, optarg);
                break;
            case '?' :
                fprintf(stdout, "unknown option -%c.\n", optopt);
            default:
        }
    }
    printOptions(options, 3);
    return 0;
}