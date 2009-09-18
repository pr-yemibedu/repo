#include <windows.h>
#include <stdio.h>
#include <tchar.h>

int _tmain() {
    HANDLE hEvent = OpenEvent(EVENT_ALL_ACCESS | SYNCHRONIZE, FALSE, _T("SharedEvent"));
    while(TRUE) {
        _tprintf(_T("mutal_process_a signaled!\n"));
        _tprintf(_T("mutual_process_b signaling mutual_process_a\n"));
        SetEvent(hEvent);
        Sleep(500);
        WaitForSingleObject(hEvent, INFINITE);
    }
    return 0;
}