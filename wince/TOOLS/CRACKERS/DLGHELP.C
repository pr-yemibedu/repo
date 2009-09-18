/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | DLGHELP.C -- Helper functions for working with dialog boxes and dialog    |
 |              box controls.                                                |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>

/*---------------------------------------------------------------------------*\
 |  SetDlgEnableState: Enable/disable control based on indicated flag.       |
\*---------------------------------------------------------------------------*/
BOOL SetDlgEnableState (HWND hwndDlg, int nControlId, BOOL bEnable)
{
    HWND hwndCtl = GetDlgItem (hwndDlg, nControlId);
    BOOL bWasEnabled = IsWindowEnabled (hwndCtl);
    EnableWindow(hwndCtl, bEnable);

    return bWasEnabled;
}
