#include <iostream.h>
#include "Pair.h"

int main(int argc, char *argv[])
{
    Pair *p = new Pair;
    p -> setName("color");
    p -> setValue("blue");
    
    cout << "name = " << p -> getName() << " and color = " << p -> getValue() << endl;
    return 0; 
}