/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | DBGMEM.H -- Include file for memory leak detection cover functions.       |
\*---------------------------------------------------------------------------*/
#ifdef _DEBUG
#ifndef HIDE_MALLOC
#ifdef pchCalledFrom
#define malloc(size) DbgMalloc(size, pchCalledFrom, __LINE__)
#else
#define malloc(size) DbgMalloc(size, __FILE__, __LINE__)
#endif
#define free(ptr)    DbgFree(ptr);
#endif

// ---------------------------------------------------------------------------
// Use of the following lines in source (.C or .CPP) file can cut down on
// the space used for the __FILE__ static string. Note this must be placed
// before this include file is referenced.
//
// #ifdef _DEBUG
// static LPSTR pchCalledFrom = __FILE__;
// #endif
// ........ (prior to the line that says...)
// #include "dbgmem.h"
// ---------------------------------------------------------------------------

void * DbgMalloc(size_t size, LPSTR pchFile, int nLine);
void DbgFree(void * pMem);
void DbgDumpLeaksToDebugger(void);

typedef struct tagBLOCKINFO
{
    void * pMemory;
    LPSTR  pFile;
    int    nLine;
    size_t cbSize;
    struct tagBLOCKINFO * pNext;
} BLOCKINFO, * LPBLOCKINFO;

#endif // (_DEBUG)


/*-------------------------------------------------------------*\
 | CHECKHEAP -- Macro that raises assertions where heap check  |
 |              fails, displays message box, and drops out to  |
 |              debugger. Uses embedded assembler in Intel-    |
 |              specific manner.                               |
\*-------------------------------------------------------------*/
#ifdef _DEBUG
#define CHECKHEAP if (_heapchk() != _HEAPOK) { char ach[40]; wsprintf(ach, "Heap Error on line %d", __LINE__); \
                       MessageBox(NULL, ach, "Error", MB_OK); _asm {int 3} }
#else
#define CHECKHEAP
#endif
