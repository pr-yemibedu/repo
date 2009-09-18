#include <stdio.h>

int binary_search(int a[], int search, int left, int right, int size) {
    int mid = ((left + right) / 2);
    if (search > a[mid]) {
        return binary_search(a, search, left, (right + 1));
    } else if (search < a[mid]) {
        return binary_search(a, search, (left - 1), right);
    } else {
        return(mid);
    }
}

void main(void) {
    int a[] = {2,4,6,8,9,22,34,55,66};
    const int SIZE = 9;
    printf("%d\n", bsearch(a, 4, (SIZE/2), (SIZE/2))));
}
