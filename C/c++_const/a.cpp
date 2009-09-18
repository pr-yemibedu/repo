#include <iostream>
using namespace std;

extern const int age;

int main() {
    cout << age << endl;
    int a = 5;
    const int* i = &a;
    a = 6;
}
