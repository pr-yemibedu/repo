/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | TEXT.H  Include file for TEXT.C, text handling helper routines.           |
\*---------------------------------------------------------------------------*/
typedef struct tagTEXTLINE
{
    LPSTR pchLine;       // Pointer to a line of text.
    int   ccLine;        // Count of characters.
} TEXTLINE, * LPTEXTLINE;

typedef struct tagTEXTBLOCK
{
    int      cLines;           // Count of lines.
    int      cBytes;           // Bytes in buffer.
    TEXTLINE Line[1];          // Array of (char *, int) pairs for each line.
} TEXTBLOCK, * LPTEXTBLOCK;

LPSTR NextLine (LPSTR pData, BOOL bEndPrevious);
LPTEXTBLOCK ParseTextStream(LPSTR pchIn, LONG cbBuffer, BOOL bTerminate);
int QueryTextLineCount(LPSTR pchIn);

#define CHAR_LF   ('\n')
#define CHAR_CR   ('\r')
#define CHAR_NULL ('\0')
