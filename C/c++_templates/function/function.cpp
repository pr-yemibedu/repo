#include <iostream>

using namespace std;

template <class T>
T add(T x, T y) {
    return x + y;
}

void main() {
    int x = 1, y = 2;
    cout << add<int>(x, y) << endl;
    return;
}
