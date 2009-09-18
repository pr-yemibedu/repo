/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | COMMENTS.C:  Edit comment block property page (called from PROPERTY.C).   |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include <commctrl.h>
#include "crackers.h"
#include "data.h"
#include "resource.h"
#include "notify.h"

/*---------------------------------------------------------------------------*\
 |                    Function Prototypes.                                   |
\*---------------------------------------------------------------------------*/
BOOL CommentInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);
void CopyCommentToEdit(HWND hwnd, HWND hwndCtl);
void CopyEditToComment(HWND hwnd, HWND hwndCtl);
LRESULT CommentNotify(HWND hwnd, int id, LPNMHDR pnmh);

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
extern char achAppName[];
extern LPCOMMENTBLOCK pcb;
extern char achScratch[];
extern HFONT hfontCourier;

/*---------------------------------------------------------------------------*\
 |         CommentDlgProc: Message Crackers Dialog Box.                      |
\*---------------------------------------------------------------------------*/
BOOL CALLBACK 
CommentDlgProc(HWND hwndDlg, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch(msg)
    {
        HANDLE_MSG(hwndDlg, WM_INITDIALOG, CommentInitDialog);
        HANDLE_MSG(hwndDlg, WM_NOTIFY, CommentNotify);
        default:
            return FALSE;
    }
}

/*---------------------------------------------------------------------------*\
 |      Handle WM_INITDIALOG message for CommentDlgProc.                     |
\*---------------------------------------------------------------------------*/
BOOL CommentInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    HWND hwndCtl = GetDlgItem(hwnd, IDC_COMMENT);

    // Set edit control font.
    SetWindowFont(hwndCtl, hfontCourier, FALSE);

    // Copy current comment text to edit control.
    CopyCommentToEdit(hwnd, hwndCtl);

    SetFocus (hwndCtl);

    return FALSE;
}

/*---------------------------------------------------------------------------*\
 |       Handle WM_NOTIFY message for CommentDlgProc.                        |
\*---------------------------------------------------------------------------*/
LRESULT CommentNotify(HWND hwnd, int id, LPNMHDR pnmh)
{
/*  // Help in seeing exactly what notifications get sent, and when...
    char achMessage[120];
    LPSTR pNotify;
    static int iCount = 0;

    DbgQueryNotifyText(pnmh->code , &pNotify);
    wsprintf (achMessage, "CommentNotify (%d): %s\n\r", iCount++, pNotify);
    OutputDebugString(achMessage);
*/

    switch (pnmh->code)
    {
        // User has clicked [Ok] -- save changes...
        case PSN_APPLY:
        {
            // Copy comment data to in-memory buffers.
            HWND hwndCtl = GetDlgItem(hwnd, IDC_COMMENT);
            CopyEditToComment(hwnd, hwndCtl);

            // Discard already-built code fragments.
            FlushMessageCache();

            // Write comment block out to disk.
            SaveCommentBlock(pcb);
            break;
        }
    }

    return 0;
}

/*---------------------------------------------------------------------------*\
 | CopyCommentToEdit: Copy comment data to edit control.                     |
\*---------------------------------------------------------------------------*/
void CopyCommentToEdit(HWND hwnd, HWND hwndCtl)
{
    int  i;

    ZeroMemory(achScratch, MAX_SCRATCH);

    for (i = 0; i < pcb->nCount; i++)
    {
        lstrcat (achScratch, pcb->pComment[i]);
        lstrcat (achScratch, "\r\n");
    }

    Edit_SetText(hwndCtl, achScratch);
}

/*---------------------------------------------------------------------------*\
 | CopyEditToComment: Copy comment data from edit control to data area.
\*---------------------------------------------------------------------------*/
void CopyEditToComment(HWND hwnd, HWND hwndCtl)
{
    // Free memory associated with comment block
    if (!CommentBlockFree(pcb))
    {
        MessageBox(hwnd, "Error freeing comment block", achAppName, MB_OK);
    }

    // Fetch edit control data.
    ZeroMemory(achScratch, MAX_SCRATCH);
    Edit_GetText(hwndCtl, achScratch, MAX_SCRATCH);

    // Rebuild comment block data.
    pcb = CommentBlockAlloc(achScratch);
}
