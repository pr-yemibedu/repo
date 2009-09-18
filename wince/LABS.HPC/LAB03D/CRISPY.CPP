// CRISPY.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "CRISPY.h"
#include <commctrl.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;			// The current instance
HWND				hwndCB;			// The command bar handle

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct);
void OnPaint(HWND hwnd);
void OnDestroy(HWND hwnd);
void OnDlgCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_CRISPY);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_CRISPY));
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
	HWND	hWnd;
	TCHAR	szTitle[MAX_LOADSTRING];			// The title bar text
	TCHAR	szWindowClass[MAX_LOADSTRING];		// The window class name

	hInst = hInstance;		// Store instance handle in our global variable
	// Initialize global strings
	LoadString(hInstance, IDC_CRISPY, szWindowClass, MAX_LOADSTRING);
	MyRegisterClass(hInstance, szWindowClass);

	LoadString(hInstance, IDS_APP_TITLE, szTitle, MAX_LOADSTRING);
	hWnd = CreateWindow(szWindowClass, szTitle, WS_VISIBLE,
		CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, NULL);

	if (!hWnd)
	{	
		return FALSE;
	}

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
	switch (message) 
	{
		HANDLE_MSG(hWnd, WM_COMMAND, OnCommand);
		HANDLE_MSG(hWnd, WM_CREATE, OnCreate);
		HANDLE_MSG(hWnd, WM_PAINT, OnPaint);
		HANDLE_MSG(hWnd, WM_DESTROY, OnDestroy);
		default:
			return DefWindowProc(hWnd, message, wParam, lParam);
   }
   return 0;
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void OnCommand(HWND hWnd, int id, HWND hwndCtl, UINT codeNotify)
{
	switch (id)
	{
		case IDM_HELP_ABOUT:
		   DialogBox(hInst, (LPCTSTR)IDD_ABOUTBOX, hWnd, (DLGPROC)About);
		   break;
		case IDM_FILE_EXIT:
		   DestroyWindow(hWnd);
		   break;
	}
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL OnCreate(HWND hWnd, LPCREATESTRUCT lpCreateStruct)
{
	hwndCB = CommandBar_Create(hInst, hWnd, 1);			
	CommandBar_InsertMenubar(hwndCB, hInst, IDM_MENU, 0);
	CommandBar_AddAdornments(hwndCB, 0, 0);
    return TRUE;
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void OnPaint(HWND hWnd)
{
    HDC hdc;
    PAINTSTRUCT ps;
	RECT rt;
	TCHAR szHello[MAX_LOADSTRING];

    hdc = BeginPaint (hWnd, &ps);

    // ToDo: Add drawing code here...
	GetClientRect(hWnd, &rt);
	LoadString(hInst, IDS_HELLO, szHello, MAX_LOADSTRING);
	DrawText(hdc, szHello, _tcslen(szHello), &rt, 
		DT_SINGLELINE | DT_VCENTER | DT_CENTER);

    EndPaint (hWnd, &ps);
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void OnDestroy(HWND hWnd)
{
	CommandBar_Destroy(hwndCB);
	PostQuitMessage(0);
}

//-----------------------------------------------------------------------------
// Mesage handler for the About box.
//-----------------------------------------------------------------------------
LRESULT CALLBACK About(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	switch (message)
	{
		HANDLE_MSG(hDlg, WM_INITDIALOG, OnInitDialog);
		HANDLE_MSG(hDlg, WM_COMMAND, OnDlgCommand);
	}
    return FALSE;
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void OnDlgCommand(HWND hDlg, int id, HWND hwndCtl, UINT codeNotify)
{
	if ((id == IDOK) || (codeNotify == IDCANCEL))
	{
		EndDialog(hDlg, id);
		return;
	}
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL OnInitDialog(HWND hDlg, HWND hwndFocus, LPARAM lParam)
{
	RECT rt, rt1;
	int DlgWidth, DlgHeight;	// dialog width and height in pixel units
	int NewPosX, NewPosY;

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
}
