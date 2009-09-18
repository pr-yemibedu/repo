#include <windows.h>
#include <stdio.h>
#include <tchar.h>

#define THREAD_POOL_SIZE 100000

void WorkerFunct(void) {
    DWORD dwCurrentThreadId = GetCurrentThreadId();
    _tprintf("BEGIN WorkerFunct:ThreadId=%d\n", dwCurrentThreadId);
    long sum = 0;
    for (long i = 0; i < 100000; i++) {
        sum += i;
    }
    _tprintf("END WorkerFunct:ThreadId=%d\n", dwCurrentThreadId);
}   

DWORD WINAPI ThreadFunc(LPVOID obj) {
    WorkerFunct();
    return NO_ERROR;
}

int _tmain(void) {
    DWORD dwThreadId;
    HANDLE hThreads[THREAD_POOL_SIZE];
    for (int i = 0; i < THREAD_POOL_SIZE; i++) {
        hThreads[i] = CreateThread(NULL,
                                   0,
                                   ThreadFunc,
                                   NULL,
                                   0,
                                   &dwThreadId);
        if (!hThreads[i]) {
            _tprintf("FAILED to create thread\n");
        } 
    }
    WaitForMultipleObjects(THREAD_POOL_SIZE, hThreads, TRUE, INFINITE);
    return 0;
}
