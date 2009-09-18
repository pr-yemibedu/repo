/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | TEXT.C  Some text handling helper routines.                               |
\*---------------------------------------------------------------------------*/
#include <windows.h>
#include <windowsx.h>
#include <string.h>
#include "text.h"
// #include "dbgmem.h" -- Memory leak detection helpers.

/*---------------------------------------------------------------------------*\
 | ParseTextStream: Parse text stream and build array of pointers to lines.  |
 |                                                                           |
 |  LPTEXTBLOCK ParseTextStream(LPSTR pchIn,      Input buffer.              |
 |                              LONG cbBuffer,    Size of input buffer.      |
 |                              BOOL bTerminate); Whether to terminate lines.|
 |                                                                           |
 | Takes a char[] array and builds an array of (LPSTR, int) pairs for the    |
 | beginning (LPSTR) of each line and the line length (int).                 |
 |                                                                           |
 | Optionally can modify the text stream to terminate individual lines.      |
\*---------------------------------------------------------------------------*/
LPTEXTBLOCK ParseTextStream(LPSTR pchIn, LONG cbBuffer, BOOL bTerminate)
{
    int         iLine;     // Index of current line.
    int         ccTrim;    // Trim for possible <CR> <LF> at end.
    int         cLines;    // Count of lines in buffer.
    LPSTR       pchEnd;    // End of buffer.
    LPSTR       pchNext;   // Pointer to line of text.
    LPSTR       pchPrev;   // Points to previous text line.
    LPTEXTBLOCK ptb;       // Pointer to returned array.

    // Count lines in buffer.
    cLines = QueryTextLineCount(pchIn);

    // Allocate output array.
    ptb = (LPTEXTBLOCK)malloc(sizeof(TEXTBLOCK) + (sizeof(TEXTLINE) * cLines));
    if (ptb == NULL)
        return ptb;

    ptb->cLines = cLines;   // Set line count.
    ptb->cBytes = cbBuffer; // Store buffer size.

    // Insert start of buffer as first array element.
    iLine = 0;
    ptb->Line[iLine].pchLine = pchIn;
    ++iLine;

    // Loop until end-of-buffer.
    pchNext = pchIn;
    pchEnd = pchIn + cbBuffer - 1;
    while (pchNext < pchEnd)
    {
        // Search for next line.
        pchPrev = pchNext;
        pchNext = NextLine (pchNext, bTerminate);
        ptb->Line[iLine].pchLine = pchNext;

        // Update previous line length info.
        ptb->Line[iLine-1].ccLine = pchNext-pchPrev-2;

        iLine++;
    }    /* [while (pchLine < pchEnd)] */

    // Update line length info for last line.
    ccTrim = 0;
    if (*pchEnd == CHAR_CR || *pchEnd == CHAR_LF) ccTrim++;
    if (*(pchEnd-1) == CHAR_CR || *(pchEnd-1) == CHAR_LF) ccTrim++;

    ptb->Line[iLine-1].ccLine = pchEnd - pchNext - ccTrim;

    return ptb;
}

/*---------------------------------------------------------------------------*\
 |  NextLine: search for and return pointer to new line of data. Optionally, |
 |            terminate previous line (replace <CR> or <LF> with NULL.       |
 |                                                                           |
 |  LPSTR NextLine (LPSTR pData,      -- Ptr to buffer to start searching.   |
 |                  BOOL bEndPrevious)-- Whether to NULL out end of lines.   |
 |                                                                           |
 |  Returns:                                                                 |
 |      Pointer to next line, or NULL if end of memory encountered.          |
\*---------------------------------------------------------------------------*/
LPSTR NextLine (LPSTR pData, BOOL bEndPrevious)
{
    char achSearch[3];
    char chLineEnd;
    int  iPos;

    // Catch end-of-string condition.
    if (*pData == CHAR_NULL)
    {
        return NULL;
    }

    achSearch[0] = CHAR_CR;
    achSearch[1] = CHAR_LF;
    achSearch[2] = CHAR_NULL;

    // __try..._except block catches unterminated strings.
    __try
    {
        // Search for <CR> or <LF> character & skip to that location.
        iPos = strcspn(pData, achSearch);
        pData += iPos;

        // Store line-end character for possible later use.
        chLineEnd = *pData;

        // Handle end of buffer without <CR><LF> pair.
        if (chLineEnd == CHAR_NULL)
            __leave;

        // Terminate line if we've been asked to.
        if (bEndPrevious)
        {
            *pData = CHAR_NULL;
        }

        // Calculate start of "next line."
        pData++;

        // Catch <CR>+<LF> case and <LF>+<CR> case and skip if appropriate.
        chLineEnd ^= *pData;
        if (chLineEnd == (CHAR_CR ^ CHAR_LF))
        {
            pData++;
        }
    }
    __except (EXCEPTION_EXECUTE_HANDLER)
    {
        pData = NULL;
    }

    return pData;
}

/*---------------------------------------------------------------------------*\
 |  QueryTextLineCount: Parses text stream and returns number of lines.      |
 |                                                                           |
 |  int QueryTextLineCount(LPSTR pchIn) -- Ptr to text stream.               |
 |                                                                           |
 |  Returns:                                                                 |
 |      Count of lines in buffer.                                            |
\*---------------------------------------------------------------------------*/
int QueryTextLineCount(LPSTR pchIn)
{
    LPSTR pchNext;
    int   cLines;

    for (pchNext = pchIn, cLines = 0;
         pchNext != NULL && *pchNext != CHAR_NULL;
         cLines++)
    {
        pchNext = NextLine (pchNext, FALSE);
    }

    return cLines;
}
