#include <stdlib.h>
#include <stdio.h>

char *toString(char *arr, int size) {
    int index;
    char *str = calloc(size + 1, sizeof(char));
    for (index = 0; index < size; index++) {
        str[index] = arr[index];
        printf("%c\n", arr[index]);
    }
    str[++index] = '\0';
    return str;
}


int main(void) {
    int arraySize, index;
    char *arrPtr, c;
    printf("Enter array size followed by elements: ");
    scanf("%d", &arraySize);
    arrPtr = calloc(arraySize, sizeof(char));
    for (index = 0; index < arraySize; ++index) {
        scanf("%c", &c);
        *(arrPtr + index) = c;
    }
    printf("The characters you entered are: %s\n", arrPtr);
    free(arrPtr);
}
