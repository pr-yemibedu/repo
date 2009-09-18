/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | PROPERTY.C  Property sheet support routines.                              |
\*---------------------------------------------------------------------------*/
#define STRICT
#include <windows.h>
#include <windowsx.h>
#include "property.h"
#include "comments.h"
#include "editmsgs.h"
#include "resource.h"
#include "resrc1.h"

/*---------------------------------------------------------------------------*\
 |                      Global Variables.                                    |
\*---------------------------------------------------------------------------*/
extern char achAppName[];
extern HINSTANCE g_hInst;
extern HICON hiconApp;

/*---------------------------------------------------------------------------*\
 | CommentPageProc: Sample property page callback proc.                      |
 |                                                                           |
 | Run program under editor to see strings (in Output window).               |
\*---------------------------------------------------------------------------*/
UINT CALLBACK 
CommentPageProc(HWND  hwnd, UINT uMsg, LPPROPSHEETPAGE ppsp)
{
    switch(uMsg)
    {
        case PSPCB_CREATE:
            OutputDebugString("CommentPageProc: PSPCB_CREATE\n\r");
            return TRUE;

        case PSPCB_RELEASE:
            OutputDebugString("CommentPageProc: PSPCB_RELEASE\n\r");
            break;
    }

    return 0;
}

/*---------------------------------------------------------------------------*\
 | EditPageProc: Sample property page callback proc.                         |
 |                                                                           |
 | Run program under editor to see strings (in Output window).               |
\*---------------------------------------------------------------------------*/
UINT CALLBACK 
EditPageProc(HWND  hwnd, UINT uMsg, LPPROPSHEETPAGE ppsp)
{
    switch(uMsg)
    {
        case PSPCB_CREATE:
            OutputDebugString("EditMsgsPageProc: PSPCB_CREATE\n\r");
            return TRUE;

        case PSPCB_RELEASE:
            OutputDebugString("EditMsgsPageProc: PSPCB_RELEASE\n\r");
            break;
    }

    return 0;
}

/*---------------------------------------------------------------------------*\
 | CreatePropertySheet: Create property sheet for message cracker utility.   |
 |                                                                           |
 | Allocates a PROPSHEETHEADER structure for property sheet attributes, and  |
 | an array of PROPSHEETPAGE structures with one element for each property   |
 | page. The property sheet itself is created with the call to PropertySheet.|
\*---------------------------------------------------------------------------*/
BOOL CreatePropertySheet(HWND hwndParent)
{
    PROPSHEETHEADER pshHead;
    PROPSHEETPAGE   pshPage[2];

    // Initialize property sheet HEADER data.
    ZeroMemory(&pshHead, sizeof(PROPSHEETHEADER));
    pshHead.dwSize  = sizeof(PROPSHEETHEADER);
    pshHead.dwFlags = PSH_PROPSHEETPAGE |  // Use PROPSHEETPAGE (vs HGLOBAL).
                      PSH_NOAPPLYNOW    |  // Remove [Apply] button.
                      PSH_PROPTITLE     |  // Add "Properties for" to caption.
                      PSH_USEHICON;        // Icon handle identifies icon.
    pshHead.hwndParent = hwndParent;
    pshHead.hInstance  = g_hInst;
    pshHead.hIcon      = hiconApp;
    pshHead.pszCaption = achAppName;
    pshHead.nPages     = 2;
    pshHead.ppsp       = pshPage;

    // Zero out property page data structure.
    ZeroMemory(&pshPage, 2 * sizeof(PROPSHEETPAGE));

    // Initialize property sheet PAGE data for comment dialog.
    pshPage[0].dwSize      = sizeof(PROPSHEETPAGE);
    pshPage[0].dwFlags     = PSP_USECALLBACK | // We have callback for page.
                             PSP_USETITLE;     // We support page title.
    pshPage[0].hInstance   = g_hInst;
    pshPage[0].pszTemplate = MAKEINTRESOURCE(IDD_COMMENTBLOCK);
    pshPage[0].pszTitle    = "Function Comment Block";
    pshPage[0].pfnDlgProc  = CommentDlgProc;
    pshPage[0].pfnCallback = CommentPageProc;

    // Initialize property sheet PAGE data for "Edit Messages" dialog.
    pshPage[1].dwSize      = sizeof(PROPSHEETPAGE);
    pshPage[1].dwFlags     = PSP_USECALLBACK | // We have callback for page.
                             PSP_USETITLE;     // We support page title.
    pshPage[1].hInstance   = g_hInst;
    pshPage[1].pszTemplate = MAKEINTRESOURCE(IDD_EDITMSGLIST);
    pshPage[1].pszTitle    = "Edit Message List";
    pshPage[1].pfnDlgProc  = EditMessagesProc;
    pshPage[1].pfnCallback = EditPageProc;

    // --------- Create & display property sheet --------- 

    return PropertySheet(&pshHead);;
}
