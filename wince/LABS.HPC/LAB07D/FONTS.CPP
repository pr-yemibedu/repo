// FONTS.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "FONTS.h"
#include <commctrl.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;			// The current instance
HWND				hwndCB;			// The command bar handle

#ifndef MulDiv
#define MulDiv(a,b,c) YaoMulDiv(a,b,c)
int YaoMulDiv( int nNumber,int nNumerator, int nDenominator);
#endif

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_FONTS);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_FONTS));
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
	LoadString(hInstance, IDC_FONTS, szWindowClass, MAX_LOADSTRING);
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
	int wmId, wmEvent;
	PAINTSTRUCT ps;

	switch (message) 
	{
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
		{
			hdc = BeginPaint(hWnd, &ps);
			TCHAR * p1 = TEXT("12pt Times,");
			TCHAR * p2 = TEXT("14pt Arial,");
			TCHAR * p3 = TEXT("& 10pt Courier");

			int x = 10;
			int y = 50;
			int yActual;
			int cyLogicalInch;

			HFONT hf1;
			HFONT hf2;
			HFONT hf3;

			LOGFONT lf;
			SIZE size;
			TEXTMETRIC tm;

			memset(&lf, 0, sizeof(LOGFONT));
			cyLogicalInch = GetDeviceCaps(hdc, LOGPIXELSY);

			// Create font 1.
			lstrcpy (lf.lfFaceName, TEXT("Times New Roman"));
			lf.lfHeight = MulDiv(12, cyLogicalInch, 72);
			hf1 = CreateFontIndirect(&lf);

			// Create font 2.
			lstrcpy (lf.lfFaceName, TEXT("Arial"));
			lf.lfHeight = MulDiv(14, cyLogicalInch, 72);
			hf2 = CreateFontIndirect(&lf);

			// Create font 3.
			lstrcpy (lf.lfFaceName, TEXT("Courier New"));
			lf.lfHeight = MulDiv(10, cyLogicalInch, 72);
			hf3 = CreateFontIndirect(&lf);

			SelectObject(hdc, hf1);
			GetTextExtentPoint(hdc, p1, _tcslen(p1), &size);
			GetTextMetrics(hdc, &tm);
			yActual = y - (tm.tmInternalLeading + tm.tmAscent);
			ExtTextOut(hdc, x, yActual, 0, NULL, p1, _tcslen(p1), 0);
			x += size.cx;

			SelectObject(hdc, hf2);
			GetTextExtentPoint(hdc, p2, _tcslen(p2), &size);
			GetTextMetrics(hdc, &tm);
			yActual = y - (tm.tmInternalLeading + tm.tmAscent);
			ExtTextOut(hdc, x, yActual, 0, NULL, p2, _tcslen(p2), 0);
			x += size.cx;

			SelectObject(hdc, hf3);
			GetTextExtentPoint(hdc, p3, _tcslen(p3), &size);
			GetTextMetrics(hdc, &tm);
			yActual = y - (tm.tmInternalLeading + tm.tmAscent);
			ExtTextOut(hdc, x, yActual, 0, NULL, p3, _tcslen(p3), 0);
			x += size.cx;

			// Destroy all our fonts.
			SelectObject(hdc, GetStockObject(SYSTEM_FONT));
			DeleteObject(hf1);
			DeleteObject(hf2);
			DeleteObject(hf3);
			EndPaint(hWnd, &ps);
		}
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

int YaoMulDiv( int nNumber,int nNumerator, int nDenominator)
{
    int nFirst = nNumber * nNumerator;
    int nSecond = nFirst / nDenominator;
    if (nFirst % nDenominator > nDenominator / 2)
        nSecond++;

    return nSecond;
}
 
