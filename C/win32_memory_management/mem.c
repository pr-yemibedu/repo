#include <windows.h>
#include <tchar.h>

#define MAX_BYTES (1024 * 1024 * 100) // 100MB

TCHAR *buf;
const int allocLimit = MAX_BYTES/sizeof(TCHAR);
int main(int argc, char *args[]) {
    // fill system info structure to find out what the page size is
    SYSTEM_INFO inf;
    GetSystemInfo(&inf);
    // reserve 100MB of virtual memory
    buf = (TCHAR*) VirtualAlloc(NULL, // region to reserve, NULL indicates that we want the OS to assign it
                                allocLimit, // max region to reserve
                                MEM_RESERVE, // reserving memory, this does not mean it is committed (actually in use)
                                PAGE_READWRITE); // rw access to memory
                                
    VirtualAlloc(buf, // 
                 inf.dwPageSize,
                 MEM_COMMIT,
                 PAGE_READWRITE);
}