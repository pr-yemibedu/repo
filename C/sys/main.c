#include <sys/system.h>
#include <stdio.h>

int main(int args, char* argv[])
{
	int result;
	char string[80];
	
	fgets(string, 80, stdin);
	_shell_command("dir", "c:\\temp\\*.txt /b");
	fflush(stdout);
	
	printf("%s", string);
}