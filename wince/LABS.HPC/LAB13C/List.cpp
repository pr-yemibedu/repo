// List.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "List.h"

#define MAX_LOADSTRING 100
#define ID_LIST        101

// Global Variables:
HINSTANCE			hInst;			// The current instance
HWND				hwndCB;			// The command bar handle

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct);
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_LIST);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_LIST));
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
	LoadString(hInstance, IDC_LIST, szWindowClass, MAX_LOADSTRING);
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
	HDC hdc;
	PAINTSTRUCT ps;
	TCHAR szHello[MAX_LOADSTRING];

	switch (message) 
	{
        HANDLE_MSG(hWnd, WM_CREATE, OnCreate);
		HANDLE_MSG(hWnd, WM_COMMAND, OnCommand);
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
BOOL OnCreate(HWND hWnd, LPCREATESTRUCT lpCreateStruct)
{
#define COUNT 10
    TCHAR * tch[] = { TEXT("Japan"), TEXT("Denmark"), TEXT("Albania"),
                            TEXT("Saudi Arabia"), TEXT("Kiribati"),
                            TEXT("Taiwan"), TEXT("Cameroon"), TEXT("Uganda"),
                            TEXT("France"), TEXT("Canada")};
    HWND hwndList;

    HDC        hdc;
    int        i;
    int        x, y, cx, cy;
    TEXTMETRIC tm;

    hdc = GetDC (NULL);
    GetTextMetrics (hdc, &tm);
    ReleaseDC (NULL, hdc);

    x  = 25;
    y  = 25;
    cx = tm.tmAveCharWidth * 25;
    cy = tm.tmHeight * 5;

	hwndList =
	CreateWindowEx(0,                /* Ext-style. */
					TEXT("listbox"), /* Class name.*/
					0L,              /* Title.     */
					WS_BORDER       |/* Style bits.*/
					WS_CHILD        |
					WS_VISIBLE      |
					WS_CLIPSIBLINGS |
					WS_VSCROLL      |
					LBS_NOTIFY      |
					LBS_SORT,
					x,               /* x.         */
					y,               /* y.         */
					cx,              /* cx.        */
					cy,              /* cy.        */
					hWnd,            /* Parent.    */
					(HMENU)ID_LIST,  /* Child Id.  */
					hInst,           /* Creator.   */
					NULL);           /* Params.    */

    for (i=0;i<COUNT;i++)
    {
        SendMessage (hwndList, LB_ADDSTRING, 0,
                     (LONG)(LPTSTR)tch[i]);
    }

	hwndCB = CommandBar_Create(hInst, hWnd, 1);			
	CommandBar_InsertMenubar(hwndCB, hInst, IDM_MENU, 0);
	CommandBar_AddAdornments(hwndCB, 0, 0);

    return TRUE;
}




/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnCommand(HWND hWnd, int id, HWND hwndCtl, UINT codeNotify)
{
	// Parse the menu selections:
	switch (id)
	{	
		case IDM_HELP_ABOUT:
			DialogBox(hInst, (LPCTSTR)IDD_ABOUTBOX, hWnd, (DLGPROC)About);
			break;
		case IDOK:
			SendMessage(hWnd, WM_ACTIVATE, MAKEWPARAM(WA_INACTIVE, 0), (LPARAM)hWnd);
			SendMessage (hWnd, WM_CLOSE, 0, 0);
			break;
		case ID_LIST:
		{
		    LPTSTR pCode = _T("Unknown");
		    switch(codeNotify)
			{
				case LBN_SELCHANGE: pCode = _T("LBN_SELCHANGE"); break;
				case LBN_DBLCLK:    pCode = _T("LBN_DBLCLK"); break;
				case LBN_SELCANCEL: pCode = _T("LBN_SELCANCEL"); break;
				case LBN_SETFOCUS:  pCode = _T("LBN_SETFOCUS"); break;
				case LBN_KILLFOCUS: pCode = _T("LBN_KILLFOCUS"); break;
			}

			// To view this output, run program under debugger
			// and select View | Output command in IDE to open
			// output window.
			OutputDebugString(_T("LIST: "));
			OutputDebugString(pCode);
			OutputDebugString(_T("\n\r"));
		}
		    break;
	}
}
