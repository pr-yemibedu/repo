// CEFUN.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include <commctrl.h>
#include "CEFUN.h"
#include "resource.h"

//-----------------------------------------------------------------------------
// Global Variables:
//-----------------------------------------------------------------------------
int cxScreen;  // System metrics for screen width.
int cyScreen;  // System metrics for screen height.
HINSTANCE g_hInst;			// The current instance
int cLibs = -1;
TCHAR achAppName[] = TEXT("CE Functions Supported");
BOOL  bRun = FALSE;
int fShow = 0;

#define SHOW_BOTH 1
#define SHOW_YES  2
#define SHOW_NO   3

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
LRESULT CALLBACK DlgProc(HWND, UINT, WPARAM, LPARAM);
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);
BOOL OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
    g_hInst = hInstance;
    cxScreen = GetSystemMetrics(SM_CXSCREEN);
    cyScreen = GetSystemMetrics(SM_CYSCREEN);

    // Pick dialog template based on device resolution.
    if (cyScreen > cxScreen)
    {
        // Palm-Sized PC screen is taller than it is wide.
        DialogBox(hInstance, (LPCTSTR)IDD_TALL, HWND_DESKTOP, (DLGPROC)DlgProc);
    }
    else
    {
        // HPC and HPC Pro screens are wider than they are tall.
        DialogBox(hInstance, (LPCTSTR)IDD_WIDE, HWND_DESKTOP, (DLGPROC)DlgProc);
    }
    return 0L;
}


//-----------------------------------------------------------------------------
// Mesage handler for dialog box.
//-----------------------------------------------------------------------------
LRESULT CALLBACK 
DlgProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	switch (message)
	{
        HANDLE_MSG(hDlg, WM_INITDIALOG, OnInitDialog);
        HANDLE_MSG(hDlg, WM_COMMAND, OnCommand);
        default:
            return FALSE;
	}
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID SearchLibraryList(HWND hwnd)
{
    int iLib, iFunc;
    HMODULE hmod = NULL;

    ASSERT(cLibs != -1);

    for (iLib = 0; iLib < cLibs; iLib++)
    {
        // Skip phone entry for all libraries
        if (dlls[iLib].pfl == MAGIC_ALL)
            continue;

        hmod = LoadLibrary(dlls[iLib].pName);
        if (hmod != NULL)
        {
            FUNCLIST * pList = dlls[iLib].pfl;

            dlls[iLib].bPresent = TRUE;

            for (iFunc = 0; pList->pFunc != NULL; iFunc++, pList++)
            {
                FARPROC lpfn = (FARPROC)GetProcAddress(hmod, pList->pFunc);
                pList->bPresent = (lpfn == NULL) ? FALSE : TRUE;
            }

            //dlls[iLib].cFunc = iFunc;

            FreeLibrary(hmod);
            hmod = NULL;
        }
        else
        {
            dlls[iLib].bPresent = FALSE;
        }
    }

    bRun = TRUE;
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    RECT r;
    int cxScreenMid, cyScreenMid;
    int xNew, yNew;

	// Center dialog on screen
	GetWindowRect(hwnd, &r);
    cxScreenMid = cxScreen / 2;
    cyScreenMid = cyScreen / 2;

    xNew = cxScreenMid - ((r.right - r.left) / 2);
    yNew = cyScreenMid - ((r.bottom - r.top) / 2);
		
	// if dialog is larger than the physical screen 
	if (xNew < 0) xNew = 0;
	if (yNew < 0) yNew = 0;

    // Move it.
	SetWindowPos(hwnd, 0, xNew, yNew, 0, 0, SWP_NOZORDER | SWP_NOSIZE);

    // Initialize library listbox.
    HWND hwndCtrl = GetDlgItem(hwnd, IDC_LIBRARIES);
    int iItem;
    for (cLibs = 0; dlls[cLibs].pName != NULL; cLibs++)
    {
        iItem = ComboBox_AddString(hwndCtrl, dlls[cLibs].pName);
        ComboBox_SetItemData(hwndCtrl, iItem, cLibs);
    }

    // Check whether list of functions is supported.
    SearchLibraryList(hwnd);

    // Initialize Yes/No/Both subset selection combo box.
    hwndCtrl = GetDlgItem(hwnd, IDC_SHOW);
    int iStart = ComboBox_AddString(hwndCtrl, TEXT("All"));
    ComboBox_AddString(hwndCtrl, TEXT("'Yes' only"));
    ComboBox_AddString(hwndCtrl, TEXT("'No' only"));
    fShow = SHOW_BOTH;
    ComboBox_SetCurSel(hwndCtrl, iStart);

    SetWindowText(hwnd, achAppName);

    return TRUE;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID ChangeSelectedLibrary(HWND hwnd, HWND hwndCtl)
{
    int iItem = ComboBox_GetCurSel(hwndCtl);
    int iLib = ComboBox_GetItemData(hwndCtl, iItem);
    int iStart, iEnd, iCurrent;

    // Variables for counting totals.
    int cFunctions = 0;
    int cYes = 0;
    int cNo = 0;

    // Display wait cursor.
    HCURSOR hOldCursor = SetCursor(LoadCursor(NULL, IDC_WAIT));

    // Clear out existing function list.
    HWND hwndFunc = GetDlgItem(hwnd, IDC_FUNCTIONS);
    ListBox_ResetContent(hwndFunc);

    if (dlls[iLib].pfl == MAGIC_ALL)
    {
        iStart = 0;
        iEnd = (sizeof(dlls) / sizeof(LIBLIST)) - 1;
    }
    else
    {
        iStart = iLib;
        iEnd = iLib + 1;
    }

    for (iCurrent = iStart; iCurrent < iEnd; iCurrent++)
    {
        if (dlls[iCurrent].pfl == MAGIC_ALL)
            continue;

        if (dlls[iCurrent].bPresent)
        {
            // Add list of functions to listbox.
            TCHAR atchFunc[80];
            FUNCLIST * pfl = dlls[iCurrent].pfl;
            int i;
            int bShow;
            int cFunc = dlls[iCurrent].cFunc;
            for (i = 0; i < cFunc; i++, pfl++)
            {
                cFunctions++;
                bShow = FALSE;

                lstrcpy(atchFunc, pfl->pFunc);
                if(pfl->bPresent)
                {
                    cYes++;
                    lstrcat(atchFunc, TEXT(" - Yes"));
                    if (fShow == SHOW_BOTH || fShow == SHOW_YES)
                        bShow = TRUE;
                }
                else
                {
                    cNo++;
                    lstrcat(atchFunc, TEXT(" - No"));
                    if (fShow == SHOW_BOTH || fShow == SHOW_NO)
                        bShow = TRUE;
                }

                if (bShow)
                    ListBox_AddString(hwndFunc, atchFunc);
            }
        }
        else
        {
            // Library is not present - notify user.
            TCHAR atchMessage[80];
            wsprintf(atchMessage, TEXT("** Library %s not found in system."), dlls[iCurrent].pName);
            ListBox_AddString(hwndFunc, atchMessage);
        }
    }

    // Restore cursor.
    SetCursor(hOldCursor); //LoadCursor(NULL, IDC_ARROW));

    // Display summary dialog box.
    TCHAR tch[80];
    wsprintf(tch, TEXT("Total Functions = %d\n")
                  TEXT("Yes Functions = %d\n")
                  TEXT("No Functions = %d"),
                  cFunctions, cYes, cNo);
    MessageBox(hwnd, tch, achAppName, MB_OK);
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID WriteListToDisk(HWND hwnd)
{
    int iStart = 0;
    int iEnd = (sizeof(dlls) / sizeof(LIBLIST));
    int iCurrent;
    TCHAR atch[128];
    CHAR acch[128];
    DWORD dw;

    // Variables for counting totals.
    int cFunctions = 0;
    int cYes = 0;
    int cNo = 0;
    HANDLE hFile = CreateFile(TEXT("\\CeFunList.dat"), 
                              GENERIC_WRITE, 0,
                              NULL, CREATE_ALWAYS,
                              FILE_ATTRIBUTE_NORMAL,
                              NULL);
    if (hFile == (HANDLE)-1)
    {
        MessageBox(hwnd, TEXT("Cannot open file"), achAppName, MB_OK);
        return;
    }

    for (iCurrent = iStart; iCurrent < iEnd; iCurrent++)
    {
        if (dlls[iCurrent].pfl == MAGIC_ALL)
            continue;

        // Add list of functions to listbox.
        TCHAR * lpszFunction;
        TCHAR * lpszYesNo;
        TCHAR * lpszDll = dlls[iCurrent].pName;
        FUNCLIST * pfl = dlls[iCurrent].pfl;
        int i;
        int cFunc = dlls[iCurrent].cFunc;
        for (i = 0; i < cFunc; i++, pfl++)
        {
            cFunctions++;

            lpszFunction = pfl->pFunc;
            if(pfl->bPresent)
            {
                cYes++;
                lpszYesNo = TEXT("Yes");
            }
            else
            {
                cNo++;
                lpszYesNo = TEXT("No");
            }

            // Write records for each function as:
            // <DLL>, <Function>, <Yes/No>
            int cch = 
            wsprintf(atch, TEXT("\"%s\",\"%s\",\"%s\"\n"), 
                     lpszDll, lpszFunction, lpszYesNo);
            wcstombs(acch, atch, 127);
            WriteFile(hFile, acch, cch * sizeof(CHAR), &dw, NULL);
        }
    }


    // Display summary dialog box.
    TCHAR * pLine = TEXT("\n======================================\n");
    int cch = _tcslen(pLine);
    WriteFile(hFile, pLine, cch, &dw, NULL);
    cch = wsprintf(atch, TEXT("\n\nTotal Functions = %d, ")
                         TEXT("Yes Functions = %d, ")
                         TEXT("No Functions = %d"),
                         cFunctions, cYes, cNo);
    wcstombs(acch, atch, 127);
    WriteFile(hFile, acch, cch * sizeof(CHAR), &dw, NULL);

    CloseHandle(hFile);

    MessageBox(hwnd, TEXT("File \\CeFunList.dat successfully written!"),
               achAppName, MB_OK);
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID ChangeShowOption(HWND hwndCtl)
{
    TCHAR tch[10];

    ComboBox_GetText(hwndCtl, tch, 10);
    if (_tcscmp(tch, TEXT("Both")) == 0)
        fShow = SHOW_BOTH;
    else if (_tcscmp(tch, TEXT("'Yes' only")) == 0)
        fShow = SHOW_YES;
    else
        fShow = SHOW_NO;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    switch(id)
    {
        case IDOK:
        case IDCANCEL:
            EndDialog(hwnd, id);
            break;

        case IDC_LIBRARIES:
            if (codeNotify == CBN_SELCHANGE)
            {
                ChangeSelectedLibrary(hwnd, hwndCtl);
            }
            break;

        case IDC_SAVE:
            WriteListToDisk(hwnd);
            break;

        case IDC_SHOW:
            if (codeNotify == CBN_SELCHANGE)
            {
                ChangeShowOption(hwndCtl);
                ChangeSelectedLibrary(hwnd, GetDlgItem(hwnd, IDC_LIBRARIES));
            }
            break;

        case IDC_ABOUT:
            MessageBox(hwnd, TEXT("Supported Function Search\n\n")
                             TEXT("By: The Paul Yao Company\n")
                             TEXT("Creators of the Power Programming Workshops. ")
                             TEXT("Browse to http://www.paulyao.com"),
                             achAppName, MB_OK);
            break;
    }

	return TRUE;
}

