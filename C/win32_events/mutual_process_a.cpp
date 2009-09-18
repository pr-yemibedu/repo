#include <windows.h>
#include <stdio.h>
#include <tchar.h>

int _tmain() {
    HANDLE hEvent = CreateEvent(NULL, FALSE, FALSE, _T("SharedEvent"));
    while(TRUE) {
        WaitForSingleObject(hEvent, INFINITE);
        _tprintf(_T("mutal_process_a signaled!\n"));
        _tprintf(_T("mutual_process_a signaling mutual_process_b\n"));
        SetEvent(hEvent);
        Sleep(500);
    }
    
    return 0;
}