#include <stdio.h>

typedef union {int i; float r;} IR;

int main(int argc,char *argv[]) {
    IR ir;
    ir.i = 1;
    printf("ir.i=%d\n", ir.i);
    ir.r = 1.1;
    printf("ir.r=%f\n", ir.r);
    return(0);
}