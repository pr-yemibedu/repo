/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | DATA.C  Data handling functions (read/write file-based data) for          |
 |         CRACKERS.EXE.                                                     |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include <malloc.h>
#include "files.h"
#include "text.h"
#include "dbgmem.h"
#include "crackers.h"
#include "data.h"

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
extern char achAppName[];
extern char achComments[];

char achEXEDir[];          // Location of EXE file.
extern char achIniFile[];  // Location of CRACKERS.INI

// Profile file definitions
char achMessages[] = "MESSAGES";
char achComments[] = "COMMENTBLOCK";
char achMessageCount[] = "MESSAGECOUNT";
char achIniCount[] = "Count";
char achFileInt[]  = "FileInt";

// Scratch buffers.
char achScratch[MAX_SCRATCH];
char achMessage[MAX_SCRATCH];
char achCode[MAX_SCRATCH];

// Message list definitions.
extern LPMESSAGEBLOCK pmb;

// Comment data definitions.
extern COMMENTBLOCK * pcb;

// Temporary message data profile file.
char achTempIniFile[MAX_PATH];
char achTempDir[MAX_PATH];

/*---------------------------------------------------------------------------*\
 | CopyMessageToEditControl: Load message data into edit control.            |
\*---------------------------------------------------------------------------*/
BOOL CopyMessageToEditControl(HWND hwnd, LPMESSAGE pMsg, HWND hwndEdit)
{
    BOOL bSuccess;
    MESSAGESTRINGS ms;

    // If we haven't done it already, build code chunk.
    if (pMsg->pCode == NULL)
    {
        // Fetch raw data from file.
        bSuccess = LoadMessageData(hwnd, pMsg, &ms);
        if (!bSuccess)
        {
            MessageBox(hwnd, "Error reading message data", achAppName, MB_OK);
            return FALSE;
        }

        // Take raw message data and expand to expected code.
        bSuccess = ExpandMessageData(hwnd, &ms, achScratch, MAX_SCRATCH, pMsg);
        if (!bSuccess)
        {
            MessageBox(hwnd, "Error expanding message", achAppName, MB_OK);
            return FALSE;
        }
    }

    // Set text into edit control.
    Edit_SetText(hwndEdit, pMsg->pCode);

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 |  LoadMessageData: Fetch strings to create message macro code.             |
\*---------------------------------------------------------------------------*/
BOOL LoadMessageData(HWND hwnd, LPMESSAGE pMsg, MESSAGESTRINGS * ms)
{
    DWORD   dwSize;
    LPVOID  pData;

    // Build path to message data file.
    lstrcpy (achScratch, achEXEDir);
    lstrcat (achScratch, pMsg->pFile);

    ZeroMemory(achMessage, MAX_SCRATCH);
    pData = CopyFileToBuffer(achScratch, &dwSize, achMessage, MAX_SCRATCH);

    // Fail if file is larger than temp buffer.
    if (pData == NULL)
    {
        MessageBox(hwnd, "Message data > buffer size", achAppName, MB_OK);
        return FALSE;
    }

    // Copy to our own buffer for manipulation.
    achMessage[dwSize+1] = '\0';
    pData = &achMessage[0];

    // Parse data for message strings.
    ms->pMessage = pData;
    pData = NextLine(pData, TRUE);
    ms->pRetType = pData;
    pData = NextLine(pData, TRUE);
    ms->pFunctionName = pData;
    pData = NextLine(pData, TRUE);
    ms->pParamList = pData;
    pData = NextLine(pData, TRUE);
    ms->pMessageCode = pData;

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 |  ExpandMessageData: Convert message data into full-blown code.            |
\*---------------------------------------------------------------------------*/
BOOL ExpandMessageData(HWND hwnd, MESSAGESTRINGS * ms, LPSTR pIn, DWORD cbIn,
                       LPMESSAGE pMsg)
{
    DWORD dwSize;
    int   i;

    // Make first byte NULL.
    achCode[0] = CHAR_NULL;

    //  Here's an example of the code block to create:
    /*  ----------------------------------------------
      1. void OnDestroy(HWND);
      2. 
      3. HANDLE_MSG(hwnd, WM_DESTROY, OnDestroy);
      4.  
      5. /*----------------------------------------------------------*\
      6.  |                                                          |
      7. \*----------------------------------------------------------@/
      8. void OnDestroy(HWND hwnd)
      9. {
     10.     ....Message specific code....
       .
       .
       .
       n }
    */
    //  ----------------------------------------------

    // Line 1:
    wsprintf (achScratch, "%s %s%s;\r\n\r\n",
              ms->pRetType,                    // "void"
              ms->pFunctionName,               // "OnDestroy"
              ms->pParamList);                 // (HWND)
    lstrcat (achCode, achScratch);

    // Line 3:
    wsprintf (achScratch, "HANDLE_MSG(hWnd, %s, %s);\r\n\r\n",
              ms->pMessage,                    // "WM_DESTROY"
              ms->pFunctionName);              // "OnDestroy"
    lstrcat (achCode, achScratch);

    // Line 5 thru 7 -- Comment block.
    for (i = 0; i < pcb->nCount; i++)
    {
        lstrcat (achCode, pcb->pComment[i]);
        lstrcat (achCode, "\r\n");
    }

    // Line 8 - 9:
    wsprintf(achScratch, "%s %s%s\r\n{\r\n",
             ms->pRetType,                     // "void"
             ms->pFunctionName,                // "OnDestroy"
             ms->pParamList);                  // (HWND)
    lstrcat (achCode, achScratch);

    // Line 10:
    lstrcat (achCode, ms->pMessageCode);          // Message-specific code.

    // Add final <CR> if one is needed.
    i = lstrlen(achCode) - 1;
    if (achCode[i] != CHAR_CR && achCode[i] != CHAR_LF)
        lstrcat (achCode, "\r\n");

    // Line n:
    lstrcat (achCode, "}\r\n");

    // Allocate space and copy data to buffer.
    dwSize = lstrlen(achCode);
    if (dwSize > MAX_SCRATCH)
    {
        MessageBox(hwnd, "Warning: Buffer Overflow in ExpandMessageData",
                   achAppName, MB_OK);
    }

    // Allocate block for message data.
    pMsg->pCode = malloc(dwSize + 1);
    if (pMsg->pCode)
    {
        lstrcpy(pMsg->pCode, achCode);
    }

    return (BOOL)pMsg->pCode;  
}

/*---------------------------------------------------------------------------*\
 |  BuildMessageList: Create list of message data.                           |
\*---------------------------------------------------------------------------*/
LPMESSAGEBLOCK BuildMessageBlock(HWND hwnd)
{
    DWORD    dwIniFileSize;
    HANDLE   hFile;
    int      cb;
    int      iMessage;
    int      nMessages;
    LPSTR    pParse;
    LPSTR    pEqualSign;
    LPMESSAGEBLOCK pMB;

    // Allocate message block data area.
    pMB = malloc(sizeof(MESSAGEBLOCK));
    if (pMB == NULL)
    {
        return NULL;
    }

    // Query size of CRACKERS.INI
    hFile = CreateStandardFile(achIniFile, 0, 0);
    if (hFile == (HANDLE)-1)
    {
        return NULL;
    }
    dwIniFileSize = GetFileSize(hFile, NULL);
    CloseHandle(hFile);

    // Allocate a buffer to hold ini file data.
    pMB->pIniData = malloc(dwIniFileSize);
    if (pMB->pIniData == NULL)
    {
        return NULL;
    }

    // Read message list from CRACKERS.INI
    GetPrivateProfileSection(achMessages, pMB->pIniData, dwIniFileSize, achIniFile);

    // Count number of messages in list.
    // Start count at 1 to handle last (missed) loop count.
    nMessages=1;     
    pParse=pMB->pIniData;
    while (1)
    {
        cb = lstrlen(pParse);
        pParse+=(cb+1);
        if (*pParse != '\0')
            nMessages++;
        else
            break;
    }

    // Allocate a buffer for message list pointers.
    pMB->pMsgList = malloc(nMessages * sizeof(MESSAGE));

    // Parse through list again, building pointer list as we go.
    pParse=pMB->pIniData;
    for (iMessage = 0; iMessage < nMessages; iMessage++)
    {
RestartParse:
        pMB->pMsgList[iMessage].pName=pParse;
        pMB->pMsgList[iMessage].pCode=NULL;

        // Search for '=' and replace with '\0
        pEqualSign = strchr(pParse, '=');
        if (pEqualSign==NULL)
        {
            MessageBox(hwnd, "Missing '=' in CRACKERS.INI", achAppName, MB_OK);
            pMB->pMsgList[iMessage].pFile=NULL;
        }
        else
        {
            *pEqualSign = CHAR_NULL;
            pParse = pEqualSign+1;

            pMB->pMsgList[iMessage].pFile=pParse;
        }

        // Search for next string.
        cb = lstrlen(pParse);

        // Skip empty message entries.
        if (cb == 0)
        {
            pParse++;
            nMessages--;
            if (iMessage < nMessages)
                goto RestartParse;
        }
        else
        {
            pParse+=(cb+1);
        }
    }

    // Remember number of messages encountered.
    pMB->cMessages = nMessages;

    return pMB;
}

/*---------------------------------------------------------------------------*\
 |  DestroyMessageList: Clean up elements in message list.                   |
\*---------------------------------------------------------------------------*/
void DestroyMessageBlock(LPMESSAGEBLOCK pMB)
{
    // Release all code fragments.
    FlushMessageCache();

    // Free all message block data.    
    free(pMB->pMsgList);
    free(pMB->pIniData);
    free(pMB);
}

/*---------------------------------------------------------------------------*\
 |  FlushMessageCache: Delete code fragments for updated comment block.      |
\*---------------------------------------------------------------------------*/
void FlushMessageCache()
{
    int i;

    for (i = 0; i < pmb->cMessages; i++)
    {
        if (pmb->pMsgList[i].pCode)
        {
            free (pmb->pMsgList[i].pCode);
            pmb->pMsgList[i].pCode = NULL;
        }
    }
}

/*---------------------------------------------------------------------------*\
 |  LoadCommentBlock: Load code comment block preferences.                   |
\*---------------------------------------------------------------------------*/
BOOL LoadCommentBlock()
{
    char  achKey[10];
    DWORD dwCopied;
    int   i;
    int   nLineCount;

    // Query count of comments lines.
    nLineCount = GetPrivateProfileInt(achComments, achIniCount, 0, achIniFile);
    if (nLineCount > 99)
    {
        MessageBox(NULL, "Too many lines in comment block", achAppName, MB_OK);
        return FALSE;
    }

    // Allocate comment block.
    pcb = malloc(sizeof(COMMENTBLOCK) + nLineCount * sizeof(LPSTR));

    // Store line count in comment data block.
    pcb->nCount = nLineCount;

    // Load individual comment lines.
    for (i = 0; i < nLineCount; i++)
    {
        // Fetch string for key = Comment[i]
        wsprintf(achKey, "Comment%d", (i+1));
        dwCopied = GetPrivateProfileString(achComments, achKey, "",
                                           achScratch, MAX_SCRATCH,
                                           achIniFile);

        // Allocate and save copy of string.
        pcb->pComment[i] = (LPSTR)malloc(dwCopied + 1);
        lstrcpy(pcb->pComment[i], achScratch);
    }

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 | SaveCommentBlock: Save new comment block template.                        |
\*---------------------------------------------------------------------------*/
void SaveCommentBlock(LPCOMMENTBLOCK pcb)
{
    int i;
    char  achKey[10];

    // Write out count of comment lines.
    wsprintf (achScratch, "%d", pcb->nCount);
    WritePrivateProfileString(achComments,  // [COMMENTS]
                              achIniCount,  // "Count="
                              achScratch,   // (data)
                              achIniFile);  // MESSAGES.INI

    // Write individual comment lines.
    for (i = 0; i < pcb->nCount; i++)
    {
        // Create key for Comment[n]
        wsprintf(achKey, "Comment%d", (i+1));

        // Embed key in quotes to save leading spaces
        wsprintf(achScratch, "\"%s\"", pcb->pComment[i]);

        // Output results.
        WritePrivateProfileString(achComments,    // [COMMENTS]
                                  achKey,         // "Comment1="
                                  achScratch,     // (data)
                                  achIniFile);    // MESSAGES.INI
    }
}

/*---------------------------------------------------------------------------*\
 | CommentBlockAlloc: Allocate memory for indicated comment block.           |
\*---------------------------------------------------------------------------*/
LPCOMMENTBLOCK CommentBlockAlloc(LPSTR lpIn)
{
    DWORD dwSize;
    int   nLineCount;
    int   i;
    LPCOMMENTBLOCK pcb;
    LPSTR pLine;
    LPSTR pPrevLine;

    // Count lines in input buffer.
    for (pLine = lpIn, nLineCount = 0; 
         pLine != NULL && *pLine != CHAR_NULL; 
         nLineCount++)
    {
        pLine = NextLine (pLine, FALSE);
    }

    // Allocate comment line data.
    pcb = malloc(sizeof(COMMENTBLOCK) + nLineCount * sizeof(LPSTR));

    if (pcb)
    {
        // Store line count in comment data block.
        pcb->nCount = nLineCount;

        // Load individual comment lines.
        pPrevLine = pLine = lpIn;
        for (i = 0; i < nLineCount; i++)
        {
            // Fetch next line of text (while terminating previous line).
            pLine = NextLine (pLine, TRUE);

            // Allocate and save copy of string.
            dwSize = lstrlen(pPrevLine);
            pcb->pComment[i] = (LPSTR)malloc(dwSize + 1);
            lstrcpy(pcb->pComment[i], pPrevLine);

            // Previous line becomes the next line.
            pPrevLine = pLine;
        }
    }

    return pcb;
}

/*---------------------------------------------------------------------------*\
 | CommentBlockFree: Free all data associated with comment block.            |
\*---------------------------------------------------------------------------*/
BOOL CommentBlockFree(LPCOMMENTBLOCK pcb)
{
    BOOL bSuccess = TRUE;
    int  i;

    if (IsBadWritePtr(pcb, sizeof(COMMENTBLOCK)))
    {
        bSuccess = FALSE;
    }
    else
    {
        // Free individual comment lines.
        for (i = 0; i < pcb->nCount; i++)
        {
            if (IsBadWritePtr(pcb->pComment[i], sizeof(TCHAR)))
            {
                bSuccess = FALSE;
            }
            else
            {
                free(pcb->pComment[i]);
            }
        }
    }

    free (pcb);

    return bSuccess;
}

/*---------------------------------------------------------------------------*\
 | BuildTemporaryMessageData: Create apparatus for storing temporary message |
 |                            changes (to allow undo in case of Cancel).     |
\*---------------------------------------------------------------------------*/
BOOL BuildTemporaryMessageData(HWND hwnd, LPMESSAGEBLOCK * pmbReturn)
{
   LPMESSAGEBLOCK pmb;

    // Create temporary message data list.
    pmb = BuildMessageBlock(hwnd);
    if (pmb == NULL)
    {
        *pmbReturn = NULL;
        MessageBox(NULL, "Cannot Build Message List", achAppName, MB_OK);
        return FALSE;
    }

    // Create temporary directory.
    GetTempFileName(".", "MSG", LOWORD(GetTickCount()), achTempDir);
    CreateDirectory(achTempDir, 0);

    // Copy message file to temporary directory.
    lstrcpy (achTempIniFile, achTempDir);
    lstrcat (achTempIniFile, &achIniFile[1]);
    CopyFile (achIniFile, achTempIniFile, FALSE);

    *pmbReturn = pmb;

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 | CommitTemporaryMessageData: Commit temporary data to permanent directory. |
\*---------------------------------------------------------------------------*/
BOOL CommitTemporaryMessageData()
{
    // Copy files from temporary directory to current directory.
    GetCurrentDirectory(MAX_PATH, achScratch);
    CopyDirectoryTree(achTempDir, achScratch);

    // Erase temporary subdirectory and all its files.
    DeleteDirectoryTree(achTempDir, FALSE);

    // Rebuild main message list.

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 | RevertTemporaryMessageData: Clean up temporary data.                      |
\*---------------------------------------------------------------------------*/
BOOL RevertTemporaryMessageData()
{
    // Erase temporary subdirectory and all its files.
    DeleteDirectoryTree(achTempDir, FALSE);

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 | AllocateTempMessageData: Allocate a single MESSAGE structure and fill     |
 |                          in with specified message name and file name.    |
\*---------------------------------------------------------------------------*/
LPMESSAGE AllocateTempMessageData(LPSTR pMessageName, LPSTR pFileName)
{
    int  cbSize;
    LPSTR pString;
    LPMESSAGE pMsg;

    // Allocate message data.
    pMsg = malloc(sizeof(MESSAGE));
    if (!pMsg)
    {
        return NULL;
    }

    // Allocate message data buffer.
    cbSize = lstrlen(pMessageName) + 1   // Message data (plus ending NULL).
           + lstrlen(pFileName)    + 1;  // File name (plus ending NULL).
    pString = malloc(cbSize);
    if (!pString)
    {
        free (pMsg);
        return NULL;
    }

    // Fill in message name (WM_CHAR).
    lstrcpy (pString, pMessageName);
    pMsg->pName = pString;

    // Skip pointer past message name
    pString += lstrlen(pString) + 1;    

    // Fill in file name (.\MSG1234.TMP\CRACK123.MSG)
    lstrcpy (pString, pFileName);
    pMsg->pFile = pString;

    // Start with no code (gets spun on demand).
    pMsg->pCode = NULL;

    return pMsg;
}

/*---------------------------------------------------------------------------*\
 | FreeTempMessageData: Free temporary message memory areas.                 |
\*---------------------------------------------------------------------------*/
BOOL FreeTempMessageData(LPMESSAGE pMsg)
{
    // Check for valid parameter.
    if (pMsg == NULL)
    {
        return FALSE;
    }

    // Free message data buffer.
    if (pMsg->pName != NULL)
    {
        free(pMsg->pName);
    }

    // Free code buffer.
    if (pMsg->pCode)
    {
        free(pMsg->pCode);
    }

    // Free message data block.
    free (pMsg);

    return TRUE;
}
