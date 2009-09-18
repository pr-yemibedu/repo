#include <iostream.h>
#include "Pair.h"
#define TWO g()

extern "C++"
{
    int g() { return 2; }
    int f(); // defined in "file1.cpp"
};

extern int x; // defined in "file1.cpp"

struct Point
{
    int x;
    int y;
    void (*print) ();
    int f() { return 1; }
};

void myPrint();

int main()
{
    cout << "f() = " << f() << endl;
    cout << "x = " << x << endl;
    cout << "TWO = " << TWO << endl;
    
    Pair p;
    p.setName("name");
    
    cout << "Name = " << p.getName() << endl;
    
    Point* pt = new Point;
    pt -> print = myPrint;
    pt -> print();
    cout << "Point.f() = " << pt -> f() << endl;
    
    return 0;
}

void myPrint()
{
    cout << "Point Print" << endl;
}