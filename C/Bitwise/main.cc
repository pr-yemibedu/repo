#include <iostream.h>
#include <iomanip.h>

void displayBits(unsigned int);

void main(void)
{
	unsigned int x;
	
	cout << "sizeof(unsigned int)" << sizeof(int) << endl; 
	cout << "sizeof(Point)" << sizeof(Point) << endl;
	
	do
	{
		cout << "Enter an unsigned integer: ";
		cin >> x;
		displayBits(x);
	}while(x != -1);
	

	return 0;
}

void displayBits(unsigned int value)
{
	char buf[16];
	unsigned int c, displayMask = 1 << 15;
	
	cout << setw(7) << value << " = ";
	
	// cout << "displayMask: " << displayMask << endl;
	
	for (c = 1; c <= 16; c++)
	{
		buf[c - 1] = ((value & displayMask) ? '1' : '0');
		//cout << c << ':' << value << endl;
		cout << ((value & displayMask) ? '1' : '0');
		value = value << 1;
		
		if ((c % 8) == 0)
		{
			cout << ' ';
		}
	}
	
	cout << endl;
	
}
