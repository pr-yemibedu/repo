#include <sys/cygwin.h>
#include <iostream.h>

int main()
{
    char convertedPath[80];
    
    cygwin32_win32_to_posix_path_list("c:\\development\\c++", convertedPath);
    cout << convertedPath << endl;
    
    return 0;
}