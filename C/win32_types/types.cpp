#include <windows.h>
#include <stdio.h>
#include <tchar.h>

int _tmain() {
    BYTE bLow = 255, bHigh = 255;
    WORD w = MAKEWORD(bLow, bHigh);
    _tprintf("MAKEWORD(bLow=%d, bHigh=%d)=%d\n", bLow, bHigh, w);
    
    if (TRUE) {
        _tprintf("TRUE\n");
    }
    
    return 0;
}