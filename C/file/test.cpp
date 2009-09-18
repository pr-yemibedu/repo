#include <stdio.h>
#include "file_utils.h"

int main(int argc, char *argv[]) {
    char *src = argv[1];
    char *dest = argv[2];
    //file_copy(src, dest, 1);
    file_copy_mid(src, 1328, file_size(src) + 1000, dest, 1);
    printf("file size %s is %d\nfile size %s is %d\n", "binary", file_size("binary"), dest, file_size(dest));
    return 0;
}