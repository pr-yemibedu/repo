// sip.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "sip.h"
#include <commctrl.h>
#include <aygshell.h>
#include <sipapi.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;					// The current instance
HWND				hwndCB;					// The command bar handle


#define bSipVisible (s_sai.fSipUp)  // Macro to access s_sai
static SHACTIVATEINFO s_sai;

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
HWND				CreateRpCommandBar(HWND);
void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags);

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void DumpSHACTIVATEINFO(LPTSTR pMsg, SHACTIVATEINFO * psai)
{
	// Debugging helper - dump state of SHACTIVATEINFO
	TCHAR tch[256];
	wsprintf(tch, _T("%s cbSize = %d, ")
					_T("hwndLastFocus = %x, ")
					_T("fSipUp = %x,  ")
					_T("fSipOnDeactivation = %x, ")
					_T("fActive = %x, ")
					_T("fReserved = %x\n"), 
			pMsg,
			psai->cbSize,
			psai->hwndLastFocus,
			psai->fSipUp,
			psai->fSipOnDeactivation,
			psai->fActive,
			psai->fReserved);
	OutputDebugString(tch);
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
	MSG msg;
	HACCEL hAccelTable;

	// Perform application initialization:
	if (!InitInstance (hInstance, nCmdShow)) 
	{
		return FALSE;
	}

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_SIP);

	// Main message loop:
	while (GetMessage(&msg, NULL, 0, 0)) 
	{
		if (!TranslateAccelerator(msg.hwnd, hAccelTable, &msg)) 
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}

	return msg.wParam;
}

//
//  FUNCTION: MyRegisterClass()
//
//  PURPOSE: Registers the window class.
//
//  COMMENTS:
//
//    It is important to call this function so that the application 
//    will get 'well formed' small icons associated with it.
//
ATOM MyRegisterClass(HINSTANCE hInstance, LPTSTR szWindowClass)
{
	WNDCLASS	wc;

    wc.style			= CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc		= (WNDPROC) WndProc;
    wc.cbClsExtra		= 0;
    wc.cbWndExtra		= 0;
    wc.hInstance		= hInstance;
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_SIP));
    wc.hCursor			= 0;
    wc.hbrBackground	= (HBRUSH) GetStockObject(WHITE_BRUSH);
    wc.lpszMenuName		= 0;
    wc.lpszClassName	= szWindowClass;

	return RegisterClass(&wc);
}

//
//  FUNCTION: InitInstance(HANDLE, int)
//
//  PURPOSE: Saves instance handle and creates main window
//
//  COMMENTS:
//
//    In this function, we save the instance handle in a global variable and
//    create and display the main program window.
//
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow)
{
	HWND	hWnd = NULL;
	TCHAR	szTitle[MAX_LOADSTRING];			// The title bar text
	TCHAR	szWindowClass[MAX_LOADSTRING];		// The window class name

	hInst = hInstance;		// Store instance handle in our global variable
	// Initialize global strings
	LoadString(hInstance, IDC_SIP, szWindowClass, MAX_LOADSTRING);
	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);

	//If it is already running, then focus on the window
	hWnd = FindWindow(szWindowClass, szTitle);	
	if (hWnd) 
	{
		SetForegroundWindow ((HWND) (((DWORD)hWnd) | 0x01));    
		return 0;
	} 

	MyRegisterClass(hInstance, szWindowClass);
	
	RECT	rect;
	GetClientRect(hWnd, &rect);
	
    hWnd = CreateWindowEx(WS_EX_CAPTIONOKBTN, szWindowClass, szTitle, WS_VISIBLE,
	CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, NULL);
	if (!hWnd)
	{	
		return FALSE;
	}
	//When the main window is created using CW_USEDEFAULT the height of the menubar (if one
	// is created is not taken into account). So we resize the window after creating it
	// if a menubar is present
	{
		RECT rc;
		GetWindowRect(hWnd, &rc);
		rc.bottom -= MENU_HEIGHT;
		if (hwndCB)
			MoveWindow(hWnd, rc.left, rc.top, rc.right, rc.bottom, FALSE);
	}


	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);

	return TRUE;
}

//
//  FUNCTION: WndProc(HWND, unsigned, WORD, LONG)
//
//  PURPOSE:  Processes messages for the main window.
//
//  WM_COMMAND	- process the application menu
//  WM_PAINT	- Paint the main window
//  WM_DESTROY	- post a quit message and return
//
//
LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	HDC hdc;
	int wmId, wmEvent;
	PAINTSTRUCT ps;
	TCHAR szHello[MAX_LOADSTRING];

	switch (message) 
	{
		HANDLE_MSG(hWnd, WM_LBUTTONDOWN, OnLButtonDown);

		case WM_ACTIVATE:
            SHHandleWMActivate(hWnd, wParam, lParam, &s_sai, 0);
			DumpSHACTIVATEINFO(_T("WM_ACTIVATE"), &s_sai);
		    break;

		case WM_COMMAND:
			wmId    = LOWORD(wParam); 
			wmEvent = HIWORD(wParam); 
			// Parse the menu selections:
			switch (wmId)
			{	
				case IDM_HELP_ABOUT:
					DialogBox(hInst, (LPCTSTR)IDD_ABOUTBOX, hWnd, (DLGPROC)About);
				    break;
				case IDOK:
					SendMessage(hWnd, WM_ACTIVATE, MAKEWPARAM(WA_INACTIVE, 0), (LPARAM)hWnd);
					SendMessage (hWnd, WM_CLOSE, 0, 0);
					break;
				default:
				   return DefWindowProc(hWnd, message, wParam, lParam);
			}
			break;
		case WM_CREATE:
			hwndCB = CreateRpCommandBar(hWnd);
			s_sai.cbSize = sizeof(SHACTIVATEINFO);
			break;
		case WM_PAINT:
			RECT rt;

			hdc = BeginPaint(hWnd, &ps);
			GetClientRect(hWnd, &rt);
			LoadString(hInst, IDS_HELLO, szHello, MAX_LOADSTRING);
			DrawText(hdc, szHello, _tcslen(szHello), &rt, 
				DT_SINGLELINE | DT_VCENTER | DT_CENTER);

            { // Query & display current SIPINFO data.
            SIPINFO si;
            TCHAR tch[256];
            int x = 10, y = 10;
            int cb;
            memset(&si, 0, sizeof(SIPINFO));
            si.cbSize = sizeof(SIPINFO);

            // Fetch current value.
            SHSipInfo(SPI_GETSIPINFO, 0, &si, 0);

            // Let user know what this is
            LPTSTR pMsg = _T("Result of call to SHSipInfo:");
            ExtTextOut(hdc, x, y, 0, NULL, pMsg, _tcslen(pMsg), NULL);
            y+=16;

            // Display flags.
            LPTSTR pSipfOn = (si.fdwFlags & SIPF_ON) ? _T("SIPF_ON") : _T("");
            LPTSTR pSipfDocked = (si.fdwFlags & SIPF_DOCKED) ? _T("SIPF_DOCKED") : _T("");
            LPTSTR pSipfLocked = (si.fdwFlags & SIPF_LOCKED) ? _T("SIPF_LOCKED") : _T("");
            cb = wsprintf(tch, _T("fdwFlags: %s %s %s"), pSipfOn, pSipfDocked, pSipfLocked);
            ExtTextOut(hdc, x, y, 0, NULL, tch, cb, NULL);
            y+=16;

            // Display size of visible desktop.
            cb = wsprintf(tch, _T("rcVisibleDesktop (%d,%d) - (%d,%d)"), 
                     si.rcVisibleDesktop.left, si.rcVisibleDesktop.top,
                     si.rcVisibleDesktop.right, si.rcVisibleDesktop.bottom);
            ExtTextOut(hdc, x, y, 0, NULL, tch, cb, NULL);
            y+=16;

 
            // Display size of SIP.
            cb = wsprintf(tch, _T("rcSipRect (%d,%d) - (%d,%d)"), 
                     si.rcSipRect.left, si.rcSipRect.top,
                     si.rcSipRect.right, si.rcSipRect.bottom);
            ExtTextOut(hdc, x, y, 0, NULL, tch, cb, NULL);
            }

			EndPaint(hWnd, &ps);
			break; 
		case WM_DESTROY:
			CommandBar_Destroy(hwndCB);
			PostQuitMessage(0);
			break;
		case WM_SETTINGCHANGE:
			SHHandleWMSettingChange(hWnd, wParam, lParam, &s_sai);
			DumpSHACTIVATEINFO(_T("WM_SETTINGCHANGE"), &s_sai);

            // Force redraw of SIP info.
            InvalidateRect(hWnd, NULL, TRUE);
     		break;
		default:
			return DefWindowProc(hWnd, message, wParam, lParam);
   }
   return 0;
}

HWND CreateRpCommandBar(HWND hwnd)
{
	SHMENUBARINFO mbi;

	memset(&mbi, 0, sizeof(SHMENUBARINFO));
	mbi.cbSize     = sizeof(SHMENUBARINFO);
	mbi.hwndParent = hwnd;
	mbi.nToolBarId = IDM_MENU;
	mbi.hInstRes   = hInst;
	mbi.nBmpId     = 0;
	mbi.cBmpImages = 0;

	if (!SHCreateMenuBar(&mbi)) 
		return NULL;

	return mbi.hwndMB;
}

// Mesage handler for the About box.
LRESULT CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	SHINITDLGINFO shidi;

	switch (message)
	{
		case WM_INITDIALOG:
			// Create a Done button and size it.  
			shidi.dwMask = SHIDIM_FLAGS;
			shidi.dwFlags = SHIDIF_DONEBUTTON | SHIDIF_SIPDOWN | SHIDIF_SIZEDLGFULLSCREEN;
			shidi.hDlg = hDlg;
			SHInitDialog(&shidi);
			return TRUE; 

		case WM_COMMAND:
			if (LOWORD(wParam) == IDOK) {
				EndDialog(hDlg, LOWORD(wParam));
				return TRUE;
			}
			break;
	}
    return FALSE;
}



/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags)
{
    if (fDoubleClick) // WM_LBUTTONDBLCLK
    {
    }
    else              // WM_LBUTTONDOWN
    {
	    SIPINFO si;
		memset(&si, 0, sizeof(SIPINFO));
		si.cbSize = sizeof(SIPINFO);

		// Fetch current value.
		SHSipInfo(SPI_GETSIPINFO, 0, &si, 0);

		if (si.fdwFlags & SIPF_ON)
		{
		    si.fdwFlags &= ~SIPF_ON;  // Hide SIP.
		}
		else
		{
		    si.fdwFlags |= SIPF_ON;  // Display SIP
		}

		SHSipInfo(SPI_SETSIPINFO, 0, &si, 0);
    }
}
