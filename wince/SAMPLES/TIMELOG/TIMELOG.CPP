// 
// TIMELOG.cpp -- A sample Windows CE application.
//
//  Author: Paul Yao
// Company: The Paul Yao Company
//   Email: paul@paulyao.com
//   Voice: 425-747-1355
//     Fax: 425-746-4040
//     Web: http://www.paulyao.com
//

#include "stdafx.h"
#include "timelog.h"
#include "db.h"
//#include <commctrl.h>

//-----------------------------------------------------------------------------
// Global Variables:
//-----------------------------------------------------------------------------
int cxScreen;  // System metrics for screen width.
int cyScreen;  // System metrics for screen height.
int iRec = 0;  // Current record index.
int cRec = 0;  // Count of records in database.
TCHAR achAppName[] = TEXT("TimeLog");
TCHAR lpszZeroTime[] = TEXT("00:00");
TCHAR lpszAM[] = TEXT("am");
TCHAR lpszPM[] = TEXT("pm");
TCHAR lpszNULL[] = TEXT("");

SYSTEMTIME stStart;
SYSTEMTIME stStop;
extern CEOID oidDatabase;

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
LRESULT CALLBACK	LogDlgProc		(HWND, UINT, WPARAM, LPARAM);
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);
BOOL OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
VOID GoToRecord(HWND hwnd, int id);
VOID ButtonStart(HWND hwnd);
VOID ButtonDelete(HWND hwnd);
VOID ButtonClear(HWND hwnd);

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int WINAPI WinMain(	HINSTANCE hInstance, HINSTANCE hPrevInstance,
                    LPTSTR    lpCmdLine, int       nCmdShow)
{
    cxScreen = GetSystemMetrics(SM_CXSCREEN);
    cyScreen = GetSystemMetrics(SM_CYSCREEN);

    // Pick dialog template based on device resolution.
    if (cyScreen > cxScreen)
    {
        // Palm-Sized PC screen is taller than it is wide.
        DialogBox(hInstance, (LPCTSTR)IDD_TALL, HWND_DESKTOP, (DLGPROC)LogDlgProc);
    }
    else
    {
        // HPC and HPC Pro screens are wider than they are tall.
        DialogBox(hInstance, (LPCTSTR)IDD_WIDE, HWND_DESKTOP, (DLGPROC)LogDlgProc);
    }
    return 0L;
}


//-----------------------------------------------------------------------------
// Mesage handler for dialog box.
//-----------------------------------------------------------------------------
LRESULT CALLBACK 
LogDlgProc(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
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

    if (!dbInitDataBase())
    {
        MessageBox(hwnd, TEXT("Error Initializing Database"), achAppName, MB_OK);
    }

    // Limit size of text fields to avoid buffer overflows.
    Edit_LimitText(GetDlgItem(hwnd, IDC_PROJECT), MAX_PROJECT);
    Edit_LimitText(GetDlgItem(hwnd, IDC_TASK), MAX_TASK);
    Edit_LimitText(GetDlgItem(hwnd, IDC_NOTE), MAX_NOTE);

	// Initialize Controls
    if (!dbReadRecord(hwnd, 0))
    {
        SetDlgItemText(hwnd, IDC_START_TIME, lpszZeroTime);
        SetDlgItemText(hwnd, IDC_STOP_TIME, lpszZeroTime);
        SetDlgItemText(hwnd, IDC_ELAPSED_TIME, lpszZeroTime);
    }

    // Initialize current record / max record display field.
    dbUpdateRecordCount(hwnd, IDC_RECORD);

    TCHAR achT[80];
    GetWindowText(hwnd, achT, 80);
    MessageBox(hwnd, achT, achAppName, MB_OK);

    return TRUE;
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

        case IDC_START:
            ButtonStart(hwnd);
            break;

        case IDC_DELETE:
            ButtonDelete(hwnd);
            break;

        case IDC_CLEAR:
            ButtonClear(hwnd);
            break;

        case IDC_GO_FIRST:
        case IDC_GO_PREV:
        case IDC_GO_NEXT:
        case IDC_GO_LAST:
            GoToRecord(hwnd, id);
            break;
    }

	return TRUE;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID ButtonStart(HWND hwnd)
{
    TCHAR atch[96];

    GetDlgItemText(hwnd, IDC_START, atch, 20);
    if (_tcscmp(atch, TEXT("&Start")) == 0)
    {
        SetDlgItemText(hwnd, IDC_START, TEXT("&Stop"));

        // Disable navigation & deleting controls.
        EnableWindow(GetDlgItem(hwnd, IDC_DELETE), FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_CLEAR), FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_FIRST), FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_PREV), FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_NEXT), FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_LAST), FALSE);

        // Get current time and update starting time control.
        GetLocalTime(&stStart);
        dbFormatTimeString(atch, stStart.wHour, stStart.wMinute);
        SetDlgItemText(hwnd, IDC_START_TIME, atch);

        // Zero out stop and elapsed controls.
        SetDlgItemText(hwnd, IDC_STOP_TIME, lpszZeroTime);
        SetDlgItemText(hwnd, IDC_ELAPSED_TIME, lpszZeroTime);
    }
    else
    {
        SetDlgItemText(hwnd, IDC_START, TEXT("&Start"));

        // Disable navigation & deleting controls.
        EnableWindow(GetDlgItem(hwnd, IDC_DELETE), TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_CLEAR), TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_FIRST), TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_PREV), TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_NEXT), TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_GO_LAST), TRUE);

        // Get current time and update starting time control.
        GetLocalTime(&stStop);
        dbFormatTimeString(atch, stStop.wHour, stStop.wMinute);
        SetDlgItemText(hwnd, IDC_STOP_TIME, atch);

        // Calculate elapsed time.
        dbFormatDurationString(atch, stStart.wHour, stStart.wMinute, 
                               stStop.wHour, stStop.wMinute);

        SetDlgItemText(hwnd, IDC_ELAPSED_TIME, atch);

        // Write database record.
        dbCreateRecord(hwnd);

        // Reset task and notes (assume project stays the same).
        SetDlgItemText(hwnd, IDC_TASK, lpszNULL);
        SetDlgItemText(hwnd, IDC_NOTE, lpszNULL);
    }
}

//-----------------------------------------------------------------------------
// ButtonDelete - User has clicked on the [Delete] button.
//-----------------------------------------------------------------------------
VOID ButtonDelete(HWND hwnd)
{
    // [Ctrl] + [Shift] + <Click> on delete button deletes database.
    if ((GetAsyncKeyState(VK_SHIFT) < 0 ) && (GetAsyncKeyState(VK_CONTROL) < 0))
    {
        if (MessageBox(hwnd, TEXT("Ok to delete database?\n(Program also terminates.)"),
                       achAppName, MB_YESNO) == IDYES)
        {
            if (dbDeleteDatabase())
                ExitThread(0);
            else
                MessageBox(hwnd, TEXT("Error in deleting database"), achAppName, MB_OK);
        }
        return;
    }

    // Otherwise, delete current record.
    dbDeleteRecord(hwnd);
}

//-----------------------------------------------------------------------------
// GoToRecord -- User has clicked on one of the four naviation buttons.
//-----------------------------------------------------------------------------
VOID GoToRecord(HWND hwnd, int id)
{
    switch(id)
    {
    case IDC_GO_FIRST:
        iRec = 0;
        break;

    case IDC_GO_LAST:
        iRec = cRec;
        break;

    case IDC_GO_PREV:
        if (iRec != 0)
        {
            iRec--;
        }
        break;

    case IDC_GO_NEXT:
        if (iRec != cRec)
        {
            iRec++;
        }
        break;
    }

    dbReadRecord(hwnd, iRec);
    dbUpdateRecordCount(hwnd, IDC_RECORD);
}

//-----------------------------------------------------------------------------
// ButtonClear() -- User has clicked on the [Clear] button. Empty all fields.
//-----------------------------------------------------------------------------
VOID ButtonClear(HWND hwnd)
{
    // Empty three text controls.
    SetDlgItemText(hwnd, IDC_PROJECT, lpszNULL);
    SetDlgItemText(hwnd, IDC_TASK, lpszNULL);
    SetDlgItemText(hwnd, IDC_NOTE, lpszNULL);

    // Empty three time / duration controls.
    SetDlgItemText(hwnd, IDC_START_TIME, lpszZeroTime);
    SetDlgItemText(hwnd, IDC_STOP_TIME, lpszZeroTime);
    SetDlgItemText(hwnd, IDC_ELAPSED_TIME, lpszZeroTime);
}
