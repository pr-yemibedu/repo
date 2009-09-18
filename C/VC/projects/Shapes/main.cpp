#include <iostream>
#include "shape.h"
#include "rectangle.h"
#include <cstring>
#include <valarray>

using namespace std;

int main()
{
	shape* s;
	s = new rectangle;
	cout << s -> toString();

	string a = "b";

	cout << a.begin();

	return 0;
}