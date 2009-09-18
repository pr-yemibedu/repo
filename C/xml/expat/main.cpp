#include <iostream.h>
#include <windows.h>

int main()
{
    HMODULE h = GetModuleHandle("xmlparse.dll");
    
    if (h == NULL)
    {
        cout << "Failed\n";
    }
    else
    {
        cout << "Succeeded\n";
    }
    
    return 0;
}