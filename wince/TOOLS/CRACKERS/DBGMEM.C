/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | DBGMEM.C -- Cover functions to track memory leaks.                        |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include <malloc.h>
#include <crtdbg.h>
#define HIDE_MALLOC
#include "dbgmem.h"

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
static HANDLE hHeap = NULL;
#ifdef _DEBUG
static LPBLOCKINFO pHead = NULL;
#endif

/*---------------------------------------------------------------------------*\
 |  DbgMalloc: Wrapper around malloc to build list of memory objects.        |
\*---------------------------------------------------------------------------*/
void * DbgMalloc(size_t size, LPSTR pFile, int nLine)
{
    // Allocate memory -- return failure if no memory left...
    void * pMem = malloc(size);
    if (pMem == NULL)
    {
        return pMem;
    }

    // Create a private heap to store our link list data.
    if (hHeap == NULL)
    {
        hHeap = HeapCreate(/* flOptions     = */ HEAP_NO_SERIALIZE, 
                           /* dwInitialSize = */ 1024,
                           /* dwMaximumSize = */ 100000);
        _ASSERT(hHeap);
    }

#ifdef _DEBUG
    // ------------- Allocate and initialize data block -------------
    {
        LPBLOCKINFO pNext;
        pNext = HeapAlloc(/* hHeap   = */ hHeap, 
                          /* dwFlags = */ HEAP_NO_SERIALIZE,
                          /* dwBytes = */ sizeof(BLOCKINFO));

        // Fail if we can't record allocated memory.
        if (pNext == NULL)
        {
            free (pMem);
            return (NULL);
        }

        // Fill in record with memory data.
        pNext->pMemory = pMem;
        pNext->pFile   = pFile;
        pNext->nLine   = nLine;
        pNext->cbSize  = size;
        pNext->pNext   = pHead;

        // New object becomes first in list.
        pHead = pNext;
    }
#endif

    // Return memory pointer to caller.
    return pMem;
}

/*---------------------------------------------------------------------------*\
 |  DbgFree: Wrapper around free() to remove link from list.                 |
\*---------------------------------------------------------------------------*/
void DbgFree(void * pMem)
{
    // Only search for non-NULL pointers.
#ifdef _DEBUG
    if (pMem != NULL)
    {
        // Search for memory in list.
        LPBLOCKINFO pFind = pHead;
        LPBLOCKINFO *ppPrev = &pHead;

        while (pFind != NULL)
        {
            if (pFind->pMemory == pMem)
            {
                break;
            }
            else
            {
                ppPrev = &pFind->pNext;
                pFind = pFind->pNext;
            }
        }

        // -----------------------------------------------------------------
        // ERROR: Item not on list. Make sure that block was allocated
        // using this allocator (vs. vanilla malloc()). In short, make
        // sure source (.cpp) files that allocate memory have the line:
        //
        //     #include "dbgmem.h"
        // -----------------------------------------------------------------
        if (pFind == NULL)
        {
            _ASSERT(FALSE);
            return;
        }

        // Remove item from list.
        *ppPrev = pFind->pNext;

        // Free record of allocated memory.
        HeapFree(/* hHeap   = */ hHeap, 
                 /* dwFlags = */ HEAP_NO_SERIALIZE,
                 /* lpMem   = */ pFind);
    }
#endif

    // Release actual memory.
    free(pMem);
}

/*---------------------------------------------------------------------------*\
 |  DbgDumpLeaksToDebugger: Send list of memory leaks to debugger's Output   |
 |                          window. (Not visible without debugger running.   |
\*---------------------------------------------------------------------------*/
void DbgDumpLeaksToDebugger()
{
#ifdef _DEBUG
    char achDump[256];

    LPBLOCKINFO pWalk;

    if (pHead == NULL)
        return;

    for (pWalk = pHead; pWalk != NULL; pWalk = pWalk->pNext)
    {
        wsprintf(achDump, "%s(%d) : Memory Leak of %d bytes.\r\n",
                 pWalk->pFile, pWalk->nLine, pWalk->cbSize);
        OutputDebugString(achDump);
    }
#endif
}
