/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | EDITMSGS.C:  Edit message details for message crackers.                   |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include <commctrl.h>
#include <crtdbg.h>
#include "crackers.h"
#include "data.h"
#include "resource.h"
#include "resrc1.h"
#include "notify.h"
#include "dlghelp.h"
#include "files.h"

/*---------------------------------------------------------------------------*\
 |                    Function Prototypes.                                   |
\*---------------------------------------------------------------------------*/
BOOL EditMsgsInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);
void EditMsgsCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
void CopyCommentToEdit(HWND hwnd, HWND hwndCtl);
void CopyEditToComment(HWND hwnd, HWND hwndCtl);
LRESULT EditMsgsNotify(HWND hwnd, int id, LPNMHDR pnmh);
int LoadMessageToControls(HWND hwndDlg, HWND hwndListBox);
BOOL AddMessage(HWND hwndDlg, HWND hwndList);
BOOL ChangeMessage(HWND hwndDlg, HWND hwndList);
BOOL GetNextMsgFileName(LPSTR pOut);
BOOL FreeTempMessageList(HWND hwnd, HWND hwndList);

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
extern char achAppName[];
extern LPCOMMENTBLOCK pcb;
extern char achScratch[];
extern HFONT hfontCourier;

// Message edit dialog data.
LPSTR pRetType[] = {"void", "BOOL", "INT", "UINT", "int", "DWORD", "HANDLE", 
                    "HWND", "HMENU", "HBRUSH", "HFONT"
                   };
int TYPE_COUNT = sizeof(pRetType) / sizeof(LPSTR);
char pCRLF[] = "\r\n";

// Flags for enabling dialog box buttons.
BOOL bEnableAdd;
BOOL bEnableChanged;
BOOL bEnableReset;
BOOL bEnableRemove;

LPMESSAGEBLOCK pmbTemp;
LPSTR pEmptyString = "";

extern char achTempIniFile[];
extern char achTempDir[];
extern char achFileInt[];
extern char achMessageCount[];
extern char achMessages[];
extern int iCurListItem;           // Currently selected item in list.

/*---------------------------------------------------------------------------*\
 |         EditMessagesProc: Message Crackers Dialog Box.                    |
\*---------------------------------------------------------------------------*/
BOOL CALLBACK 
EditMessagesProc(HWND hwndDlg, UINT msg, WPARAM wParam, LPARAM lParam)
{
    switch(msg)
    {
        HANDLE_MSG(hwndDlg, WM_INITDIALOG, EditMsgsInitDialog);
        HANDLE_MSG(hwndDlg, WM_COMMAND, EditMsgsCommand);
        HANDLE_MSG(hwndDlg, WM_NOTIFY, EditMsgsNotify);
        default:
            return FALSE;
    }
}

/*---------------------------------------------------------------------------*\
 |      Handle WM_INITDIALOG message for EditMessagesProc.                   |
\*---------------------------------------------------------------------------*/
BOOL EditMsgsInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    // ----- Load our own copy of listbox data -----
    {
        int i;
        int iListItem;
        HWND hwndCtl = GetDlgItem (hwnd, IDC_LIST1);

        // Set up temporary database.
        BuildTemporaryMessageData (hwnd, &pmbTemp);
   
        // Add messages to list box.
        for (i = 0; i < pmbTemp->cMessages; i++)
        {
            iListItem = ListBox_AddString(hwndCtl, pmbTemp->pMsgList[i].pName);
            ListBox_SetItemData(hwndCtl, iListItem, &pmbTemp->pMsgList[i]);
        }

        // Set selection to current listbox item & trigger 'selection changed'.
        ListBox_SetCurSel(hwndCtl, iCurListItem);
        FORWARD_WM_COMMAND(hwnd, IDC_LIST1, hwndCtl, LBN_SELCHANGE, 
                           SendMessage);
    }

    // ---------- Initialize controls ----------
    {
        HWND hwndCtl = GetDlgItem (hwnd, IDC_LIST1);
        int i;

        // Load message data to five edit controls
        LoadMessageToControls (hwnd, hwndCtl);

        // Add items to combo box control.
        hwndCtl = GetDlgItem (hwnd, IDC_RETTYPE);
        for (i=0; i < TYPE_COUNT; i++)
            ComboBox_AddString(hwndCtl, pRetType[i]);

        // Set code edit control font to 10 pt. Courier New.
        hwndCtl = GetDlgItem (hwnd, IDC_CODE);
        SetWindowFont(hwndCtl, hfontCourier, FALSE);

        // Set initial state for buttons.
        bEnableReset = TRUE;
        bEnableAdd = FALSE;
        bEnableChanged = FALSE;
        bEnableRemove = TRUE;
        SetDlgEnableState (hwnd, IDC_ADD, bEnableAdd);
        SetDlgEnableState (hwnd, IDC_CHANGE, bEnableChanged);
    }

    return FALSE;
}

/*---------------------------------------------------------------------------*\
 |       Handle WM_COMMAND message for EditMessagesProc.                     |
\*---------------------------------------------------------------------------*/
void EditMsgsCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    HWND hwndList = GetDlgItem(hwnd, IDC_LIST1);

    switch(id)
    {   // ------------------- Edit Control Notifications ------------------- 
        case IDC_MESSAGE:
        {
            if (codeNotify == EN_CHANGE)
            {
                // Enable & disable buttons based on value in message field.
                int iFind;
                Edit_GetText(hwndCtl, achScratch, MAX_SCRATCH);
                iFind = ListBox_FindStringExact (hwndList, 0, achScratch);
                ListBox_SetCurSel(hwndList, iFind);

                // Set button states.
                bEnableAdd   = (iFind == LB_ERR) ? TRUE : FALSE;
                bEnableReset = !bEnableAdd;
                // bEnableRemove = bEnableReset;
                SetDlgEnableState (hwnd, IDC_ADD, bEnableAdd);
                SetDlgEnableState (hwnd, IDC_RESET, bEnableReset);
                // SetDlgEnableState (hwnd, IDC_REMOVE, bEnableRemove);
            }
            break;
        }

        // Enable "Change" button when user changes return type.
        case IDC_RETTYPE:
            if (codeNotify == CBN_EDITCHANGE)
            {
                bEnableChanged = TRUE;
                SetDlgEnableState (hwnd, IDC_CHANGE, bEnableChanged);
            }    
            break;

        // Enable "Change" button when user changes any edit control.
        case IDC_FNNAME:
        case IDC_PARAMETERS:
        case IDC_CODE:
            if (codeNotify == EN_CHANGE)
            {
                bEnableChanged = TRUE;
                SetDlgEnableState (hwnd, IDC_CHANGE, bEnableChanged);
            }    
            break;

        // ------------------- List Box Notifications ------------------- 
        case IDC_LIST1:
        {
            switch (codeNotify)
            {
                case LBN_SELCHANGE:  // When listbox item selection changes...
                {
                    // ...Load new data into controls...
                    int iCurItem = LoadMessageToControls (hwnd, hwndList);

                    bEnableAdd     = FALSE;
                    bEnableChanged = FALSE;
                    bEnableReset   = (iCurItem == LB_ERR) ? FALSE : TRUE;
                    bEnableRemove  = (iCurItem == LB_ERR) ? FALSE : TRUE;
                    SetDlgEnableState (hwnd, IDC_ADD, bEnableAdd);
                    SetDlgEnableState (hwnd, IDC_CHANGE, bEnableChanged);
                    SetDlgEnableState (hwnd, IDC_RESET, bEnableReset);
                    SetDlgEnableState (hwnd, IDC_REMOVE, bEnableRemove);
                    break;
                }
            }
            break;
        }

        // ------------------- Button Notifications ------------------- 
        case IDC_ADD:
        {
            if (!AddMessage(hwnd, hwndList))
            {
                MessageBox(hwnd, "Cannot add entry", achAppName, MB_OK);
                return;
            }
            /* break; ---- drop through to following case. */
        }

        case IDC_CHANGE:
        {
            if (!ChangeMessage(hwnd, hwndList))
            {
                MessageBox(hwnd, "Cannot change entry", achAppName, MB_OK);
                return;
            }
            break;
        }

        case IDC_REMOVE:
        {
            int iListItem = ListBox_GetCurSel(hwndList);
            LPMESSAGE pMsg;
            pMsg = (LPMESSAGE)ListBox_GetItemData(hwndList, iListItem);

            // Update temporary ini file with NULL message file name.
            WritePrivateProfileString(achMessages,      // [MESSAGES]
                                      pMsg->pName,      // "WM_CHAR"
                                      pEmptyString,     // ""
                                      achTempIniFile);  // .\tmp\MESSAGES.INI

            // Delete listbox entry.
            ListBox_DeleteString(hwndList, iListItem);

            // Clean up temporary memory if new or changed item.
            if (pMsg->pFile[0] == '.')
            {
                _ASSERT(FreeTempMessageData(pMsg));
            }

            /* break; ---- drop through to following case. */
        }

        case IDC_CLEAR:
        {
            HWND hwndCtl = GetDlgItem (hwnd, IDC_MESSAGE);
            Edit_SetText(hwndCtl, pEmptyString);
            ListBox_SetCurSel(hwndList, -1);
            /* break; ---- drop through to following case. */
        }

        case IDC_RESET:
        {
            FORWARD_WM_COMMAND(hwnd, IDC_LIST1, hwndList, 
                               LBN_SELCHANGE, SendMessage);
            break;
        }

    } /* switch(id) */
}

/*---------------------------------------------------------------------------*\
 |       Handle WM_NOTIFY message for EditMessagesProc.                      |
\*---------------------------------------------------------------------------*/
LRESULT EditMsgsNotify(HWND hwnd, int id, LPNMHDR pnmh)
{
/*  // Help in seeing exactly what notifications get sent, and when...
    char achMessage[120];
    LPSTR pNotify;
    static int iCount = 0;

    DbgQueryNotifyText(pnmh->code , &pNotify);
    wsprintf (achMessage, "EditMsgsNotify (%d): %s\n\r", iCount++, pNotify);
    OutputDebugString(achMessage);
*/

    switch (pnmh->code)
    {
        // User has clicked [Ok] -- save changes...
        case PSN_APPLY:
            CommitTemporaryMessageData();
            FreeTempMessageList(hwnd, GetDlgItem(hwnd, IDC_LIST1));

            // Clean up allocated message data.
            DestroyMessageBlock(pmbTemp);
            break;

        // User clicked [Cancel] -- forget changes.
        case PSN_RESET:
            RevertTemporaryMessageData();
            FreeTempMessageList(hwnd, GetDlgItem(hwnd, IDC_LIST1));

            // Clean up allocated message data.
            DestroyMessageBlock(pmbTemp);
            break;
    }

    return 0;
}

/*---------------------------------------------------------------------------*\
 |  LoadMessageToControls: Lookup currently selected item from listbox, then |
 |  load data to edit into dialog controls.                                  |
\*---------------------------------------------------------------------------*/
int LoadMessageToControls(HWND hwndDlg, HWND hwndListBox)
{
    BOOL bSuccess;
    HWND hwndCtl;
    MESSAGESTRINGS ms;
    LPMESSAGE pMsg;

    // Fetch info about currently selected message.
    int iCurItem = ListBox_GetCurSel(hwndListBox);
    if (iCurItem == LB_ERR)
    {
        ms.pRetType      = pEmptyString;
        ms.pFunctionName = pEmptyString;
        ms.pParamList    = pEmptyString;
        ms.pMessageCode  = pEmptyString;
    }
    else
    {
        pMsg = (LPMESSAGE)ListBox_GetItemData(hwndListBox, iCurItem);

        // Set name of message (WM_CHAR...)
        hwndCtl = GetDlgItem (hwndDlg, IDC_MESSAGE);
        Edit_SetText(hwndCtl, pMsg->pName);

        // Fetch raw data from file.
        bSuccess = LoadMessageData(hwndDlg, pMsg, &ms);
        if (!bSuccess)
        {
            MessageBox(hwndDlg, "Error reading message data", achAppName, MB_OK);
            return FALSE;
        }
    }

    // Set return type.
    hwndCtl = GetDlgItem (hwndDlg, IDC_RETTYPE);
    ComboBox_SetText(hwndCtl, ms.pRetType);

    // Set function name.
    hwndCtl = GetDlgItem (hwndDlg, IDC_FNNAME);
    Edit_SetText(hwndCtl, ms.pFunctionName);

    // Set parameter list.
    hwndCtl = GetDlgItem (hwndDlg, IDC_PARAMETERS);
    Edit_SetText(hwndCtl, ms.pParamList);

    // Set boilerplate code.
    hwndCtl = GetDlgItem (hwndDlg, IDC_CODE);
    Edit_SetText(hwndCtl, ms.pMessageCode);

    return iCurItem;
}

/*---------------------------------------------------------------------------*\
 | AddMessage: add message entry to listbox.
\*---------------------------------------------------------------------------*/
BOOL AddMessage(HWND hwndDlg, HWND hwndList)
{
    char achMsg[80];
    char achFileName[MAX_PATH];
    int  iListItem;
    LPMESSAGE pMsg;
    HWND hwndCtl;

    // Query message name (WM_xxx).
    hwndCtl = GetDlgItem (hwndDlg, IDC_MESSAGE);
    Edit_GetText(hwndCtl, achMsg, 80);

    // Fetch unique file name.
    GetNextMsgFileName(achFileName);

    // Synthesize file name in temporary directory.
    lstrcpy (achScratch, achTempDir);
    lstrcat (achScratch, "\\");
    lstrcat (achScratch, achFileName);

    // Allocate message data structure.
    pMsg = AllocateTempMessageData(achMsg, achScratch);
    if (!pMsg)
    {
        return FALSE;
    }

    // Make entry in temporary CRACKERS.INI
    WritePrivateProfileString(achMessages,      // [MESSAGES]
                              pMsg->pName,      // "WM_CHAR"
                              achFileName,      // "CRACK123.MSG"
                              achTempIniFile);  // .\tmp\MESSAGES.INI

    // Create listbox item
    iListItem =  ListBox_AddString(hwndList, achMsg);
    ListBox_SetItemData(hwndList, iListItem, pMsg);
    ListBox_SetCurSel(hwndList, iListItem);

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 |  ChangeMessage: Copy changed data to temporary directory.                 |
\*---------------------------------------------------------------------------*/
BOOL ChangeMessage(HWND hwndDlg, HWND hwndList)
{
    DWORD  dwBytes;
    HANDLE hFile;
    HWND hwndCtl;
    int iListItem;
    LPMESSAGE pMsg;

    // Fetch ID of current listbox item.
    iListItem = ListBox_GetCurSel(hwndList);
    pMsg = (LPMESSAGE)ListBox_GetItemData(hwndList, iListItem);

    // If not a temporary directory file, create temp file name.
    if (pMsg->pFile[0] != '.')
    {
        lstrcpy (achScratch, achTempDir);
        lstrcat (achScratch, "\\");
        lstrcat (achScratch, pMsg->pFile);

        // Allocate message data structure.
        pMsg = AllocateTempMessageData(pMsg->pName, achScratch);
        if (!pMsg)
        {
            return FALSE;
        }

        // Connect temp message data to current list item.
        ListBox_SetItemData(hwndList, iListItem, pMsg);
    }

    // Open file.
    hFile = CreateStandardFile(pMsg->pFile, 0, CREATE_ALWAYS);

    // Write message name (WM_CHAR).
    WriteFile(hFile, pMsg->pName, lstrlen(pMsg->pName), &dwBytes, NULL);
    WriteFile(hFile, pCRLF, lstrlen(pCRLF), &dwBytes, NULL);

    // Write return type (void)
    hwndCtl = GetDlgItem (hwndDlg, IDC_RETTYPE);
    ComboBox_GetText(hwndCtl, achScratch, MAX_SCRATCH);
    WriteFile(hFile, achScratch, lstrlen(achScratch), &dwBytes, NULL);
    WriteFile(hFile, pCRLF, lstrlen(pCRLF), &dwBytes, NULL);

    // Write function name (OnChar)
    hwndCtl = GetDlgItem (hwndDlg, IDC_FNNAME);
    Edit_GetText(hwndCtl, achScratch, MAX_SCRATCH);
    WriteFile(hFile, achScratch, lstrlen(achScratch), &dwBytes, NULL);
    WriteFile(hFile, pCRLF, lstrlen(pCRLF), &dwBytes, NULL);

    // Write parameter list ((HWND hwnd))
    hwndCtl = GetDlgItem (hwndDlg, IDC_PARAMETERS);
    Edit_GetText(hwndCtl, achScratch, MAX_SCRATCH);
    WriteFile(hFile, achScratch, lstrlen(achScratch), &dwBytes, NULL);
    WriteFile(hFile, pCRLF, lstrlen(pCRLF), &dwBytes, NULL);

    // Write boilerplate code (PAINTSTRUCT ps; BeginPaint...)
    hwndCtl = GetDlgItem (hwndDlg, IDC_CODE);
    Edit_GetText(hwndCtl, achScratch, MAX_SCRATCH);
    WriteFile(hFile, achScratch, lstrlen(achScratch), &dwBytes, NULL);
    WriteFile(hFile, pCRLF, lstrlen(pCRLF), &dwBytes, NULL);

    // Close file
    CloseHandle(hFile);

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 | GetNextMsgFileName: Create new message file name based on sequence.       |
\*---------------------------------------------------------------------------*/
BOOL GetNextMsgFileName(LPSTR pOut)
{
    char achTemp[10];
    int  iNext;

    // Query next message file name sequence.
    iNext = GetPrivateProfileInt (achMessageCount,
                                  achFileInt,
                                  1,
                                  achTempIniFile);

    // Create message name of form CRACKxxx.MSG -- where xxx 
    // is next in sequence.
    lstrcpy (pOut, "CRACK");

    wsprintf (achTemp, "%3.3d", iNext);
    lstrcat (pOut, achTemp);

    lstrcat (pOut, ".MSG");

    // Set file number for next time.
    iNext++;
    wsprintf (achTemp, "%d", iNext);
    WritePrivateProfileString (achMessageCount,
                               achFileInt,
                               achTemp,
                               achTempIniFile);

    return TRUE;
}


/*---------------------------------------------------------------------------*\
 | FreeTempMessageList: Free memory allocated for new or changed messages.   |
\*---------------------------------------------------------------------------*/
BOOL FreeTempMessageList(HWND hwnd, HWND hwndList)
{
    BOOL bRet;
    int cListItems = ListBox_GetCount(hwndList);
    int iListItem;
    LPMESSAGE pMsg;

    for (iListItem = 0; iListItem < cListItems; iListItem++)
    {
        pMsg = (LPMESSAGE)ListBox_GetItemData(hwndList, iListItem);
        if (pMsg->pFile[0] == '.')
        {
            bRet = FreeTempMessageData(pMsg);
            _ASSERT(bRet);
        }

    }

    return TRUE;
}
