#include <iostream.h>

struct PERSON
{
	int age;
	char name[25];
};

typedef PERSON* PERSONPTR;

void DisplayPerson(PERSONPTR);

int main(void)
{
	PERSON brother = {27, "Jason Pfeil"};
	
	DisplayPerson(&brother);
	
	return 0;
}

void DisplayPerson(PERSONPTR p)
{
	cout << "Age: " << p -> age << endl;
	cout << "Name: " << p -> name << endl;		
}