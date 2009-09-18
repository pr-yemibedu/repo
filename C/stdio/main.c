#include <stdio.h>

double adder() {
    double d, sum = 0;
    printf("Input numbers to be summed: ");
    while(scanf("%lf", &d) == 1) { // read double
        sum += d;
    }
    return sum;
}

int main(void) {
    char c = 'a'; int x = 10; double d = 1234567890.1234567890;
    float f1 = 12345.12345; float f2;
    char *str = "Hello World", *str2 = "abcde";
    
    /* printf */
    printf("char %c\n", c);
    printf("decimal integer %d\n", x);
    printf("floating-point in scientific notion %e\n", d);
    printf("floating-point %f\n", f1);
    printf("string %s\n", str); 
    
    printf("%.5f\n%.10f\n", 5.0, (float)10);  // set decimal precision
    printf("%10s\n", str2);  // string w/10 chars of padding
    
    /* scanf */
    printf("Enter an integer: ");
    scanf("%d", &x);
    printf("You entered the integer %d\n", x);
    
    printf("Enter 2 floating-point numbers: ");
    scanf("%f %f", &f1, &f2);
    printf("You entered the floating-point numbers %f and %f\n", f1, f2);
    
    printf("The sum of your numbers is %f", adder());
    return 0;
}
