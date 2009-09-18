#include <stdio.h>

void insertion_sort(long a[], long size) {
    long index, decreasing_index, key;
    for (index = 1; index < size; index++) {
        key = a[index];
        decreasing_index = index - 1; 
        while ((decreasing_index > -1) && (a[decreasing_index] > key)) {
            a[decreasing_index+1] = a[decreasing_index];
            decreasing_index-=1;
        }
        a[decreasing_index+1] = key;
    }
}

void display(long a[], long size) {
    int index;
    for (index = 0; index < size; index++) {
        printf("%d,", a[index]);
    }
    printf("\n");
}

void main(void) {
    long nums[] = {5,4,2,6,1,3};
    long size = 6;
    insertion_sort(nums, size);
    display(nums, size);
}