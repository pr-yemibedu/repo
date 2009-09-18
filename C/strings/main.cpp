#include <stdio.h>
#include <string.h>
#include <memory.h>

int main(int argc, char* argv[])
{
    const char* src = "abc 123";
    char* dest = new char[strlen(src)];
    
    // copy string
    strcpy(dest, src);
    fprintf(stdout, "src=%s and dest=%s\n", src, dest);
    
    // print out each char in string
    while(*src)
    {
        fprintf(stdout, "%c", *src);
        src++;
    }
    
    // print out each char in reversed string
    do
    {
        src--;
        fprintf(stdout, "%c", *src);
    }
    while(*src);
    
	return (0);
}