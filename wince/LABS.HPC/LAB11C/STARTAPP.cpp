// STARTAPP.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "STARTAPP.h"

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;			// The current instance
HWND				hwndCB;			// The command bar handle

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int, LPTSTR);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);

void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags);
BOOL OnCopyData(HWND hwnd, HWND hwndFrom, PCOPYDATASTRUCT pcds);

#ifndef HANDLE_WM_COPYDATA
#define HANDLE_WM_COPYDATA(hwnd, wParam, lParam, fn) \
    ((fn)((hwnd), (HWND)(wParam), (PCOPYDATASTRUCT)lParam), 0L)
#endif


int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
	MSG msg;
	HACCEL hAccelTable;

	// Perform application initialization:
	if (!InitInstance (hInstance, nCmdShow, lpCmdLine)) 
	{
		return FALSE;
	}

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_STARTAPP);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_STARTAPP));
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
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow, LPTSTR lpCmdLine)
{
	HWND	hWnd = NULL;
	TCHAR	szTitle[MAX_LOADSTRING];			// The title bar text
	TCHAR	szWindowClass[MAX_LOADSTRING];		// The window class name
    BOOL    bAlreadyRunning = FALSE;

	hInst = hInstance;		// Store instance handle in our global variable
	// Initialize global strings
	LoadString(hInstance, IDC_STARTAPP, szWindowClass, MAX_LOADSTRING);
	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);

	//If it is already running, then focus on the window
	hWnd = FindWindow(szWindowClass, szTitle);	
	if (hWnd) 
	{
        SetForegroundWindow ((HWND) (((DWORD)hWnd) | 0x01));

		// Set return value to indicate that we
		// want to close down this process.
        bAlreadyRunning = TRUE;
	}
    else
    {
	    MyRegisterClass(hInstance, szWindowClass);
	    
	    RECT	rect;
	    GetClientRect(hWnd, &rect);
	    
	    hWnd = CreateWindow(szWindowClass, szTitle, WS_VISIBLE,
		    CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, NULL);
	    if (!hWnd)
	    {	
		    return FALSE;
	    }
    }

	// Data on the command line means we have a notication.
	// Send details to main window.
	if (_tcslen(lpCmdLine) > 0)
	{
		COPYDATASTRUCT cds;
		cds.cbData = (_tcslen(lpCmdLine)+1) * sizeof(TCHAR);
		cds.dwData = 0;
		cds.lpData = lpCmdLine;

		SendMessage(hWnd, WM_COPYDATA, (WPARAM)hWnd, (LPARAM)&cds);
	}

	if (bAlreadyRunning)
	    return FALSE;

	// If started by user, request notifications.
	if (_tcslen(lpCmdLine) == 0)
	{
	    TCHAR tchApp[MAX_PATH];
		GetModuleFileName(hInstance, tchApp, MAX_PATH);

		// First, clear out any previous requests.
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_NONE);

		// Now, let's register some more.z
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_DEVICE_CHANGE);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_RESTORE_END);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_RS232_DETECTED);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_SYNC_END);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_TIME_CHANGE);


#ifdef NOTIFICATION_EVENT_TZ_CHANGE
		// New for CE 3.0
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_TZ_CHANGE);
#endif
#ifdef NOTIFICATION_EVENT_WAKEUP
		// New for CE 3.0
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_WAKEUP);
#endif

		// Docs say these aren't supported. Are they?
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_ON_AC_POWER);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_OFF_AC_POWER);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_NET_CONNECT);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_NET_DISCONNECT);
		CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_IR_DISCOVERED);
	}

//

	ShowWindow(hWnd, nCmdShow);
	UpdateWindow(hWnd);
	if (hwndCB)
		CommandBar_Show(hwndCB, TRUE);

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
	HANDLE_MSG(hWnd, WM_COPYDATA, OnCopyData);
	HANDLE_MSG(hWnd, WM_LBUTTONDOWN, OnLButtonDown);
	case WM_COMMAND:
			wmId    = LOWORD(wParam); 
			wmEvent = HIWORD(wParam); 
			// Parse the menu selections:
			switch (wmId)
			{
				case IDM_HELP_ABOUT:
				   DialogBox(hInst, (LPCTSTR)IDD_ABOUTBOX, hWnd, (DLGPROC)About);
				   break;
				case IDM_FILE_EXIT:
				   DestroyWindow(hWnd);
				   break;
				default:
				   return DefWindowProc(hWnd, message, wParam, lParam);
			}
			break;
		case WM_CREATE:
			hwndCB = CommandBar_Create(hInst, hWnd, 1);			
			CommandBar_InsertMenubar(hwndCB, hInst, IDM_MENU, 0);
			CommandBar_AddAdornments(hwndCB, 0, 0);
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
		default:
			return DefWindowProc(hWnd, message, wParam, lParam);
   }
   return 0;
}

// Mesage handler for the About box.
LRESULT CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	RECT rt, rt1;
	int DlgWidth, DlgHeight;	// dialog width and height in pixel units
	int NewPosX, NewPosY;

	switch (message)
	{
		case WM_INITDIALOG:
			// trying to center the About dialog
			if (GetWindowRect(hDlg, &rt1)) {
				GetClientRect(GetParent(hDlg), &rt);
				DlgWidth	= rt1.right - rt1.left;
				DlgHeight	= rt1.bottom - rt1.top ;
				NewPosX		= (rt.right - rt.left - DlgWidth)/2;
				NewPosY		= (rt.bottom - rt.top - DlgHeight)/2;
				
				// if the About box is larger than the physical screen 
				if (NewPosX < 0) NewPosX = 0;
				if (NewPosY < 0) NewPosY = 0;
				SetWindowPos(hDlg, 0, NewPosX, NewPosY,
					0, 0, SWP_NOZORDER | SWP_NOSIZE);
			}
			return TRUE;

		case WM_COMMAND:
			if ((LOWORD(wParam) == IDOK) || (LOWORD(wParam) == IDCANCEL))
			{
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
BOOL OnCopyData(HWND hWnd, HWND hwndFrom, PCOPYDATASTRUCT pcds)
{
    if (pcds->cbData > 0)
    {
        MessageBox(hWnd, (LPTSTR)pcds->lpData, _T("Notification"), MB_OK);
    }

	return TRUE;
}




/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnLButtonDown(HWND hwnd, BOOL fDoubleClick, int x, int y, UINT keyFlags)
{
	TCHAR tchApp[MAX_PATH];
	GetModuleFileName(hInst, tchApp, MAX_PATH);

    // Clear out all notification requests.
	CeRunAppAtEvent(tchApp, NOTIFICATION_EVENT_NONE);
}
