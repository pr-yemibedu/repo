#include <windows.h>
#include <stdio.h>
#include <tchar.h>

#define THREAD_POOL_SIZE 100

static CRITICAL_SECTION cs;
LONG lCounter = 0;

void IncCounter() {
    EnterCriticalSection(&cs);
    lCounter++;
    LeaveCriticalSection(&cs);
}

DWORD WINAPI threadFunc(LPVOID obj) {
    IncCounter();
    return NO_ERROR;
}

int _tmain(void) {
    HANDLE hThreads[THREAD_POOL_SIZE];
    DWORD dwThreadId;
    int i;
    InitializeCriticalSection(&cs);
    for (i = 0; i < THREAD_POOL_SIZE; i++) {
        hThreads[i] = CreateThread(NULL,
                                   0,
                                   threadFunc,
                                   NULL,
                                   0,
                                   &dwThreadId);
        if (!hThreads[i]) {
            _tprintf("FAILED to create thread\n");
        } 
    }
    WaitForMultipleObjects(THREAD_POOL_SIZE, hThreads, TRUE, INFINITE);
    DeleteCriticalSection(&cs);
    _tprintf("lCounter=%d\n", lCounter);
    return 0;
}