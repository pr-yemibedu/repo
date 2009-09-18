#include <windows.h>

int main() {
    SYSTEM_INFO inf;
    const int dwSize = 10;
    LPVOID mem = NULL;
    GetSystemInfo(&inf);
    mem = VirtualAlloc(NULL,  // reserve memory
                       dwSize,
                       MEM_RESERVE,
                       PAGE_READWRITE);
    VirtualAlloc(mem, // commit the memory
                 inf.dwPageSize,
                 MEM_COMMIT,
                 PAGE_READWRITE);
    strcpy(mem, "Brian");
    printf("%s\n", mem);                 
    
}