// CARET.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "CARET.h"
#include <commctrl.h>
#include <aygshell.h>
#include <sipapi.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;					// The current instance
HWND				hwndCB;					// The command bar handle

static SHACTIVATEINFO s_sai;

int xCaret = 0;  // Caret location.
int yCaret = 0;
int cxIcon = 32; // Icon size.
int cyIcon = 32;
int cxWindow;    // Window size.
int cyWindow;

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
HWND				CreateRpCommandBar(HWND);

void OnKey(HWND hwnd, UINT vk, BOOL fDown, int cRepeat, UINT flags);
void OnKillFocus(HWND hwnd, HWND hwndNewFocus);
void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags);
void OnSetFocus(HWND hwnd, HWND hwndOldFocus);
void OnSize(HWND hwnd, UINT state, int cx, int cy);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_CARET);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_CARET));
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
	LoadString(hInstance, IDC_CARET, szWindowClass, MAX_LOADSTRING);
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
        HANDLE_MSG(hWnd, WM_KEYDOWN, OnKey);
        HANDLE_MSG(hWnd, WM_KILLFOCUS, OnKillFocus);
        HANDLE_MSG(hWnd, WM_LBUTTONDOWN, OnLButtonDown);
        HANDLE_MSG(hWnd, WM_SETFOCUS, OnSetFocus);
        HANDLE_MSG(hWnd, WM_SIZE, OnSize);
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
			s_sai.cbSize = sizeof(SHACTIVATEINFO);
			hwndCB = CreateRpCommandBar(hWnd);
			break;
		case WM_PAINT:
			RECT rt;
			hdc = BeginPaint(hWnd, &ps);
			GetClientRect(hWnd, &rt);
			LoadString(hInst, IDS_HELLO, szHello, MAX_LOADSTRING);
			DrawText(hdc, szHello, _tcslen(szHello), &rt, 
				DT_SINGLELINE | DT_VCENTER | DT_CENTER);
			EndPaint(hWnd, &ps);
			break; 
		case WM_DESTROY:
			CommandBar_Destroy(hwndCB);
			PostQuitMessage(0);
			break;
		case WM_SETTINGCHANGE:
			SHHandleWMSettingChange(hWnd, wParam, lParam, &s_sai);
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
void OnKey(HWND hwnd, UINT vk, BOOL fDown, int cRepeat, UINT flags)
{
    if (fDown)  // WM_KEYDOWN...
    {
        /*
         *  Move caret for arrow keys.
         */
        switch (vk)
        {
            case VK_RIGHT:
                if (xCaret < cxWindow - cxIcon)
                {
                    xCaret += cxIcon;
                    goto SetPos;
                }
                break;
            case VK_LEFT:
                if (xCaret >= cxIcon)
                {
                    xCaret -= cxIcon;
                    goto SetPos;
                }
                break;
            case VK_DOWN:
                if (yCaret < cyWindow - cyIcon)
                {
                    yCaret += cyIcon;
                    goto SetPos;
                }
                break;
            case VK_UP:
                if (yCaret >= cyIcon)
                {
                    yCaret -= cyIcon;
SetPos:
                    SetCaretPos(xCaret, yCaret);
                }
                break;
        }
    }
    else        // WM_KEYUP
    {
    }
}


/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnKillFocus(HWND hwnd, HWND hwndNewFocus)
{
    /*
     *  Eliminate caret when we lose keyboard.
     */
    HideCaret(hwnd);
    DestroyCaret();
}


/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags)
{
    xCaret = x;
    yCaret = y;
    SetCaretPos(xCaret, yCaret);
}


/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnSetFocus(HWND hwnd, HWND hwndOldFocus)
{
    /*
     *  Set up caret when we get keyboard.
     */
    CreateCaret(hwnd, NULL, cxIcon, cyIcon);
    SetCaretPos(xCaret, yCaret);
    ShowCaret(hwnd);
}


/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnSize(HWND hwnd, UINT state, int cx, int cy)
{
    cxWindow = cx;
    cyWindow = cy;
}
