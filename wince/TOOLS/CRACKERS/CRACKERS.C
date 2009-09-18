/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | CRACKERS.C -- A programmer tool for grabbing Windows message cracker      |
 |               declarations, definitions, and window procedure code.       |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include <commctrl.h>
#include <stdio.h>
#include <io.h>
#include "files.h"
#include "fonts.h"
#include "handlers.h"   // for FORWARD_WM_SETICON() macro
#include "dbgmem.h"
#include "resource.h"
#include "resrc1.h"
#include "crackers.h"
#include "data.h"
#include "comments.h"
#include "property.h"

/*---------------------------------------------------------------------------*\
 |                    Function Prototypes.                                   |
\*---------------------------------------------------------------------------*/
BOOL CALLBACK CrackersDlgProc(HWND, UINT, WPARAM, LPARAM);
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
BOOL RebuildMessageList(HWND hwnd, HWND hwndCtl);

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
char achAppName[] = "Message Cracker";

char achEXEDir[MAX_PATH];   // Location of EXE file.
char achIniFile[MAX_PATH];  // Profile file definition.
HFONT hfontCourier;         // 10-pt Courier New for edit control use.
HICON hiconApp;             // Icon for dialog boxes.
HINSTANCE g_hInst;          // Instance handle for general use.
int iCurListItem;           // Currently selected item in list.
LPMESSAGEBLOCK pmb;         // Message list definitions.
LPCOMMENTBLOCK pcb = NULL;  // Comment data definitions.

/*---------------------------------------------------------------------------*\
 |                 Main Function:  WinMain.                                  |
\*---------------------------------------------------------------------------*/
int PASCAL
WinMain (HINSTANCE hInstance,     // Who am I?
         HINSTANCE hPrevInstance, // Any older siblings?
         LPSTR     lpszCmdLine,   // Ptr to command line.
         int       cmdShow)       // How to open my window?
{
    g_hInst = hInstance;

    // Query current directory.
    GetModuleFileName( g_hInst, achEXEDir, MAX_PATH);
    SplitFileNameFromDirectoryName(achEXEDir, NULL);
    lstrcat (achEXEDir, "\\");

    // Build pointer to CRACKERS.INI
    lstrcpy (achIniFile, achEXEDir);
    lstrcat (achIniFile, "CRACKERS.INI");

    // Load [COMMENTLINES] data from CRACKERS.INI
    if (!LoadCommentBlock())
    {
        MessageBox(NULL, "Error reading CRACKERS.INI", achAppName, MB_OK);
        return 1;
    }

    // Create 10 point Courier New font for code display.
    hfontCourier = CreateStandardFont("Courier New", 10, NULL);

    // Fetch message data.
    pmb = BuildMessageBlock(NULL);
    if (pmb == NULL)
    {
        MessageBox(NULL, "                   Cannot Build Message List\n\n"
                         "When building this program you must copy the \n"
                         ".EXE file to the directory which contains the \n"
                         "CRACKERS.INI file and the various message (.MSG) files.\n",
                          achAppName, MB_OK);
        return 2;
    }

    DialogBox(hInstance, MAKEINTRESOURCE(IDD_MESSAGES), NULL, CrackersDlgProc);

    // Clean up code display font.
    DeleteObject(hfontCourier);

    // Clean up allocated message data.
    DestroyMessageBlock(pmb);

    // Clean up comment block data.
    CommentBlockFree(pcb);

#ifdef _DEBUG
    DbgDumpLeaksToDebugger();
#endif

    return 0;
}

/*---------------------------------------------------------------------------*\
 |        CrackersDlgProc: Message Crackers Dialog Box.                      |
\*---------------------------------------------------------------------------*/
BOOL CALLBACK 
CrackersDlgProc(HWND hwndDlg, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch(msg)
    {
        HANDLE_MSG(hwndDlg, WM_INITDIALOG, OnInitDialog);
        HANDLE_MSG(hwndDlg, WM_COMMAND, OnCommand);
        default:
            return FALSE;
    }
}

/*---------------------------------------------------------------------------*\
 |      Handle WM_INITDIALOG message for CrackersDlgProc.                    |
\*---------------------------------------------------------------------------*/
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    int i;
    int iListItem;
    HWND hwndCtl;

    // ------- Dialog Box Setup ------- 
    // Set dialog window caption.
    SetWindowText(hwnd, achAppName);

    // Set dialog window icon.
    hiconApp = LoadIcon (g_hInst, "SNAPSHOT");
    FORWARD_WM_SETICON(hwnd, TRUE, hiconApp, SendMessage);

    // ------- Listbox Data Setup ------------
    hwndCtl = GetDlgItem(hwnd, IDC_LIST1);

    // Add messages to list box.
    for (i = 0; i < pmb->cMessages; i++)
    {
        iListItem = ListBox_AddString(hwndCtl, pmb->pMsgList[i].pName);
        ListBox_SetItemData(hwndCtl, iListItem, &pmb->pMsgList[i]);
    }

    // Set focus to list box.
    SetFocus(hwndCtl);

    // Set selection to first listbox item & trigger 'selection changed'.
    ListBox_SetCurSel(hwndCtl, 0);
    FORWARD_WM_COMMAND(hwnd, IDC_LIST1, hwndCtl, LBN_SELCHANGE, 
                       SendMessage);

    // ------- Edit Control Setup ------------
    hwndCtl = GetDlgItem(hwnd, IDC_EDIT);

    // Set font to 10 pt. Courier New.
    SetWindowFont(hwndCtl, hfontCourier, FALSE);
    return FALSE;
}

/*---------------------------------------------------------------------------*\
 |       Handle WM_COMMAND message for CrackersDlgProc.                      |
\*---------------------------------------------------------------------------*/
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    switch(id)
    {
        case IDCANCEL:
            // Dismiss dialog when user clicks [Close] button
            // or hits [Cancel] key.
            EndDialog(hwnd, 0);
            break;
        case IDCOPY:
        {
            // Copy contents of edit control to Clipboard.
            HWND hwndEdit = GetDlgItem(hwnd, IDC_EDIT);
            Edit_SetSel(hwndEdit, 0, -1);
            SendMessage (hwndEdit, WM_COPY, 0, 0L);
            break;
        }
        case IDC_LIST1:
        {
            switch (codeNotify)
            {
                case LBN_DBLCLK:
                {
                    // ...is like clicking on [Copy] button.
                    FORWARD_WM_COMMAND(hwnd, IDCOPY, 
                                       hwndCtl, BN_CLICKED, SendMessage);
                    break;
                }

                case LBN_SELCHANGE:  // When listbox item selection changes...
                {
                    BOOL bSuccess;
                    HWND hwndEdit;
                    MESSAGE * pMsg;
                    int iCurItem = ListBox_GetCurSel(hwndCtl);
                    if (iCurItem == LB_ERR)
                        return;

                    // ...put code in edit control.
                    pMsg = (MESSAGE *)ListBox_GetItemData(hwndCtl, iCurItem);
                                     
                    hwndEdit = GetDlgItem(hwnd, IDC_EDIT);
                    bSuccess = CopyMessageToEditControl(hwnd, pMsg, hwndEdit);

                    // If failed, delete listbox entry.
                    if (!bSuccess)
                    {
                        ListBox_DeleteString(hwndCtl, iCurItem);
                        MessageBox(hwnd, "Deleted listbox entry", achAppName, 
                                   MB_OK);
                    }
                    break;
                }
            }
            break;
        }

        case IDPROPERTY:
        {
            BOOL bOk;
            HWND hwndCtl = GetDlgItem(hwnd, IDC_LIST1);
            iCurListItem = ListBox_GetCurSel(hwndCtl);
            bOk = CreatePropertySheet(hwnd);
            if (bOk)
            {
                RebuildMessageList(hwnd, hwndCtl);
            }
            break;
        }
                                       
        case IDABOUT:
            MessageBox(hwnd, 
                       "\tMessage Cracker Lookup Utility\n\n"
                       "Featured in 'Principles of Programming for Microsoft Windows' Workshop,"
                       "from The Paul Yao Company\n\n"
                       "(c) Copyright Paul Yao, 1995-1998. All rights reserved.\n\n"
                       "Visit our website at www.paulyao.com for details on our other "
                       "programming workshops",
                       achAppName, MB_OK);
            break;
    } /* [switch(id)] */
}

/*---------------------------------------------------------------------------*\
 |  RebuildMessageList: Delete current items in listbox and rebuild by       |
 |                      rereading from message database.                     |
\*---------------------------------------------------------------------------*/
BOOL RebuildMessageList(HWND hwnd, HWND hwndCtl)
{
    int i;
    int iListItem;

    // When user clicks Ok button, clean up listbox...
    ListBox_ResetContent(hwndCtl);

    //...rebuild list...
    DestroyMessageBlock(pmb);
    pmb = BuildMessageBlock(hwnd);

    // ...add messages to list box...
    for (i = 0; i < pmb->cMessages; i++)
    {
        iListItem = ListBox_AddString(hwndCtl, pmb->pMsgList[i].pName);
        ListBox_SetItemData(hwndCtl, iListItem, &pmb->pMsgList[i]);
    }

    // Select first listbox item & trigger 'selection changed'.
    ListBox_SetCurSel(hwndCtl, 0);
    FORWARD_WM_COMMAND(hwnd, IDC_LIST1, hwndCtl, LBN_SELCHANGE, 
                       SendMessage);

    return TRUE;
}
