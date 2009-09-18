// MyApp.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "MyApp.h"
#include <commctrl.h>
#include <aygshell.h>
#include <sipapi.h>
#include <windowsx.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;					// The current instance
HWND				hwndCB;					// The command bar handle
HWND				hwndEdit;

POINT				ptCurrentMouseLocation = {0, 0};
BOOL				DISPLAY_TEXT_SAMPLES = FALSE;
BOOL				DRAW_PIXELS = FALSE;

static SHACTIVATEINFO s_sai;

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
HWND				CreateRpCommandBar(HWND);

// Message Cracker Functions
void OnPaint(HWND hWnd);
void OnMouseMove(HWND hWnd, int x, int y, UINT keyFlags);
void OnLButtonDown(HWND hWnd, BOOL fDoubleClick, int x, int y, UINT keyFlags);
void OnLButtonUp(HWND hWnd, int x, int y, UINT keyFlags);
void OnChar(HWND hWnd, TCHAR ch, int cRepeat);
void OnCommand(HWND hWnd, int id, HWND hWndCtl, UINT codeNotify);

// helper functions
void ChangeFont(HDC& hdc, LPCTSTR fontFaceName, HFONT& hFont, HFONT& hOldFont);
void RestoreFont(HDC& hdc, HFONT& hCurrentFont, HFONT& hOldFont);
void DisplayRectangle(HDC, POINT ptTopLeft, POINT ptBottomRight);
void RefreshWindow(HWND &hWnd);
void GetLocaleTimeAsString(LPWSTR &ltmOut);
void DisplayTextSamples(HWND &hWnd);
HWND MyCreateEditor(HWND &hWnd, LPTSTR lpszCaption, long cx, long cy);
BOOL CALLBACK Options(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam);
void InitControls(HWND hDlg);
void HeapTest(void);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_MYAPP);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_MYAPP));
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
	LoadString(hInstance, IDC_MYAPP, szWindowClass, MAX_LOADSTRING);
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
	
	/* hWnd = CreateWindow(szWindowClass, szTitle, WS_VISIBLE,
		CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, NULL, NULL, hInstance, NULL);
	*/

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
	int wmId, wmEvent;

	switch (message) 
	{

		case WM_CREATE:
			s_sai.cbSize = sizeof(SHACTIVATEINFO);
			hwndCB = CreateRpCommandBar(hWnd);
			break;

		HANDLE_MSG(hWnd, WM_COMMAND, OnCommand);
		HANDLE_MSG(hWnd, WM_PAINT, OnPaint);
		HANDLE_MSG(hWnd, WM_MOUSEMOVE, OnMouseMove);
		HANDLE_MSG(hWnd, WM_LBUTTONDOWN, OnLButtonDown);
		HANDLE_MSG(hWnd, WM_LBUTTONUP, OnLButtonUp);
		HANDLE_MSG(hWnd, WM_CHAR, OnChar);

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

/* --- Message Cracker Functions Defined --- */
void OnCommand(HWND hWnd, int id, HWND hWndCtl, UINT codeNotify)
{
	// Parse the menu selections:
	switch (id)
	{	
		case IDM_HELP_ABOUT:
			DialogBox(hInst, (LPCTSTR)IDD_ABOUTBOX, hWnd, (DLGPROC)About);
			break;
		case IDM_NEW:
			MessageBox(hWnd, TEXT("New Selected"), TEXT("New"), NULL);
			break;
		case IDM_CLEAR:
			RefreshWindow(hWnd);
			break;
		case IDM_TIME:
			// create block so we can declare new variable(s)
			{
				// buffer to hold our time display
				LPWSTR time = TEXT("");

				// get the local time
				GetLocaleTimeAsString(time);

				// display the time in a message box
				MessageBox(hWnd, time, TEXT("Current Time"), 0);
			}
			break;
		case IDM_DISPLAY_TEXT:
			
			if (DISPLAY_TEXT_SAMPLES == TRUE)
			{
				DISPLAY_TEXT_SAMPLES = FALSE;
			}

			else
			{
				DISPLAY_TEXT_SAMPLES = TRUE;
			}
			break;

		case IDM_VIEW_DRAWPIXELS:

			if (DRAW_PIXELS == TRUE)
			{
				DRAW_PIXELS = FALSE;
			}

			else
			{
				DRAW_PIXELS = TRUE;
			}
			break;

		case IDM_CREATE_EDITOR:
			{
				static RECT rt;
				GetClientRect(hWnd, &rt);
				hwndEdit = MyCreateEditor(hWnd, TEXT("OK"), rt.right, rt.bottom);
			}
			break;

		case IDM_CUT:
            SendMessage (hwndEdit, WM_CUT, 0, 0L);
            break;
        case IDM_COPY:
            SendMessage (hwndEdit, WM_COPY, 0, 0L);
            break;
        case IDM_PASTE:
            SendMessage (hwndEdit, WM_PASTE, 0, 0L);
            break;
		case IDOK:
			SendMessage(hWnd, WM_ACTIVATE, MAKEWPARAM(WA_INACTIVE, 0), (LPARAM)hWnd);
			SendMessage (hWnd, WM_CLOSE, 0, 0);
			break;

		case ID_TOOLS_OPTIONS:
			{
				DialogBox(hInst, (LPCTSTR) IDD_DIALOG_OPTIONS, hWnd, (DLGPROC) Options);
			}
			break;

		case IDM_LOADSTRING:
			{
				const int SIZE = 80;
				TCHAR resourceString[SIZE];
				LoadString(hInst, IDS_NAME, resourceString, SIZE);
				MessageBox(hWnd, resourceString, resourceString, NULL);
			}

			break;

		case IDM_GETSETWINDOWLONG:
			{
				/* the follwoing demonstrates storing data and having it tied to a specific window */
				
				// hold our sample values
				static LONG lNewValue = 999999;
				static LONG lRetrievedValue;

				// tied a LONG value to a specific window
				SetWindowLong(hWnd, GWL_USERDATA, lNewValue);

				// retrieve LONG data from a particular window
				lRetrievedValue = GetWindowLong(hWnd, GWL_USERDATA);

				// display the data in a message box
				TCHAR longStringValue[80];
				wsprintf(longStringValue, TEXT("%d"), lRetrievedValue);
				MessageBox(hWnd, longStringValue, TEXT("Get/SetWindowLong Example"), NULL);
			}
			break;

		case IDM_HEAPTEST:
			{
				HeapTest();
			}
			break;
	}
}

void OnPaint(HWND hWnd)
{
	HDC hdc = GetDC(hWnd);

	if (DISPLAY_TEXT_SAMPLES == TRUE)
	{
		DisplayTextSamples(hWnd);
	}

	else if (DRAW_PIXELS == TRUE)
	{
		for (int i = 0; i < 100; i++)
		{
			SetPixel(hdc, i, i, RGB(255, 0, 0));
		}
	}

	else
	{
		DefWindowProc(hWnd, WM_PAINT, NULL, NULL);
	}
}

void OnMouseMove(HWND hWnd, int x, int y, UINT keyFlags)
{
	// *** BEGIN - show the mouse coordinates in the window caption

		// variable to hold mouse coordinates message
		TCHAR MouseCoordinates[80];

		// create and format our mouse coordinates message
		wsprintf(MouseCoordinates, TEXT("X: %d Y: %d"), x, y);

		// change the caption bar text
		SetWindowText(hWnd, MouseCoordinates);

		if (keyFlags == MK_LBUTTON)
		{
			POINT ptMoveLocation = {x, y};
			DisplayRectangle(GetDC(hWnd), ptCurrentMouseLocation, ptMoveLocation);
			SendMessage(hWnd, WM_PAINT, NULL, NULL);
		}

		#ifdef DEBUG

			// output the mouse coordinates to debug console
			OutputDebugString(MouseCoordinates);

			// add space formating characters
			OutputDebugString(TEXT("\n\n"));
		
	#endif

	// *** END - show the mouse coordinates in the window caption
}

void OnLButtonDown(HWND hWnd, BOOL fDoubleClick, int x, int y, UINT keyFlags)
{
	// get the mouse location and save it to our POINT structure
	if ((ptCurrentMouseLocation.x == 0) && (ptCurrentMouseLocation.y == 0))
	{
		ptCurrentMouseLocation.x = x;
		ptCurrentMouseLocation.y = y;
	}

	#ifdef DEBUG
	
		TCHAR debug[80];
		wsprintf(debug, TEXT("OnLButtonDown - Coordinates - X: %d Y:%d\n\n"), x, y);
		OutputDebugString(debug);

	#endif
}

void OnLButtonUp(HWND hWnd, int x, int y, UINT keyFlags)
{

	RefreshWindow(hWnd);

	// get out old mouse location point
	POINT ptOldMouseLocation = ptCurrentMouseLocation;

	// get the mouse location and save it to our POINT structure
	ptCurrentMouseLocation.x = x;
	ptCurrentMouseLocation.y = y;

	long lDeltaX = ptCurrentMouseLocation.x - ptOldMouseLocation.x;
	long lDeltaY = ptCurrentMouseLocation.y - ptOldMouseLocation.y;

	TCHAR deltaMessage[80];
	wsprintf(deltaMessage, TEXT("Delta X: %d  Delta Y: %d"), lDeltaX, lDeltaY);
	MessageBox(hWnd, deltaMessage, TEXT("Distance Calculation"), 0);

	// clear out the global mouse location coordinates
	ptCurrentMouseLocation.x = 0;
	ptCurrentMouseLocation.y = 0;

	#ifdef DEBUG
	
		TCHAR debug[80];
		wsprintf(debug, TEXT("OnLButtonUp - Coordinates - X: %d Y:%d\n\n"), x, y);
		OutputDebugString(debug);

	#endif
}

void OnChar(HWND hWnd, TCHAR ch, int cRepeat)
{
	/* local variable(s) */

	// create a TCHAR array with one TCHAR in it to represent our string
	TCHAR chCharStr[1];
	wsprintf(chCharStr, TEXT("%c"), ch);

	// handle to device context
	HDC hdc = GetDC(hWnd);

	// paint structure
	static PAINTSTRUCT ps;

	// information about a physical font
	static TEXTMETRIC tm;

	// SIZE Structure
	static SIZE sz;

	// RECT structure
	static RECT rt;

	// character/line height
	static long lLineHeight;

	// get the system text metrics and place it into the TEXTMETRICS struct
	GetTextMetrics(hdc, &tm);

	// set the line height based on system settings
	lLineHeight = tm.tmHeight + tm.tmExternalLeading;

	// get the RECT (rectangle) object that repesents the area we are working in
	GetClientRect(hWnd, &rt);

	static long xStartPos = 5;
	static long yStartPos = 5;

	static long xPos = xStartPos;
	static long yPos = yStartPos; 

	hdc = BeginPaint(hWnd, &ps);

	SetTextColor(ps.hdc, RGB(0, 0, 0));

	ExtTextOut(ps.hdc, xPos, yPos, 0, NULL, chCharStr, _tcslen(chCharStr), NULL);

	// get the size information about the "font2" string
	GetTextExtentPoint(hdc, chCharStr, _tcslen(chCharStr), &sz);
	
	xPos += sz.cx;

	if (xPos >= rt.right)
	{
		yPos += lLineHeight;
		xPos = xStartPos;
	}

	EndPaint(hWnd, &ps);

	#ifdef DEBUG
	
		TCHAR debug[80];
		wsprintf(debug, TEXT("OnChar - Char: %c\n\n"), ch);
		OutputDebugString(debug);

	#endif

}

/* --- Helper Functions --- */
void ChangeFont(HDC &hdc, LPCTSTR fontFaceName, HFONT &hFont, HFONT &hOldFont)
{
	// structure to hold font info
	LOGFONT lf;

	// set the LOGFONT structure to 0 to start with
	memset(&lf, 0, sizeof(LOGFONT));
	
	// set the face of the new font
	_tcscpy(lf.lfFaceName, TEXT("Times New Roman"));

	// set the height of the new font
	lf.lfHeight = 12;

	// create our new font
	hFont = CreateFontIndirect(&lf);

	// select out newly created font into the device context
	hOldFont = (HFONT) SelectObject(hdc, hFont);
}

void RestoreFont(HDC& hdc, HFONT& hCurrentFont, HFONT& hOldFont)
{
	// restore the previous font to the current context
	SelectObject(hdc, hOldFont);

	// delete the current font
	DeleteObject(hCurrentFont);
}

void DisplayRectangle(HDC hdc, POINT ptTopLeft, POINT ptBottomRight)
{
	HPEN hPen, hPenOld;
	POINT pt[2];

	pt[0] = ptTopLeft;
	pt[1] = ptBottomRight;

	hPen = CreatePen(PS_SOLID, 1, RGB(0, 0, 0));
	hPenOld = (HPEN) SelectObject(hdc, hPen);
	
	// Polyline(hdc, pt, sizeof(pt)/sizeof(POINT));
	Rectangle(hdc, ptTopLeft.x, ptTopLeft.y, ptBottomRight.x, ptBottomRight.y);

	SelectObject(hdc, hPenOld);
	DeleteObject(hPen);
}

void RefreshWindow(HWND &hWnd)
{
	RECT rt;

	GetClientRect(hWnd, &rt);
	InvalidateRect(hWnd, &rt, TRUE);
}

void GetLocaleTimeAsString(LPWSTR &ltmOut)
{
	SYSTEMTIME st;
	GetLocalTime(&st);

	wsprintf(ltmOut, TEXT("%d/%d/%d %d:%d:%d.%d"), st.wMonth, st.wDay, st.wYear, st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
}

void DisplayTextSamples(HWND &hWnd)
{
	/* local variable(s) */

	// handle to device context
	HDC hdc = GetDC(hWnd);

	// paint structure
	PAINTSTRUCT ps;

	// information about a physical font
	TEXTMETRIC tm;

	// declare the text coordinate variable(s)
	int x, y;

	// declare the line height variable
	int iLineHeight;

	// set intial text positioning cooridinates
	const int iStartX = 20;
	const int iStartY = 20;

	// variable(s) to hold the text to be displayed on each line
	LPCTSTR line1 = TEXT("one");
	LPCTSTR line2 = TEXT("two");
	LPCTSTR line3 = TEXT("three");
	
	// get the system text metrics and place it into the TEXTMETRICS struct
	GetTextMetrics(hdc, &tm);

	// ste out line height based on the system settings
	iLineHeight = tm.tmHeight + tm.tmExternalLeading;
	
	// set initial coordinates
	x = iStartX;
	y = iStartY;
	
	// prepares the specified window for painting and fills a PAINTSTRUCT structure with information about the painting.
	hdc = BeginPaint(hWnd, &ps);

	// *** BEGIN - set text and background colors
		
		// set the color of the displayed text
		SetTextColor(hdc, RGB(255, 255, 255));
		
		// set the background color of the displayed text
		SetBkColor(hdc, RGB(0, 0, 0));

	// *** END - set text and background colors

	// *** BEGIN - Display 3 lines ***

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line1, _tcslen(line1), NULL);
		
		// increase our y coordinate in order to display the next line of text.
		y += iLineHeight;

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line2, _tcslen(line2), NULL);

		// increase our y coordinate in order to display the next line of text.
		y += iLineHeight;

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line3, _tcslen(line3), NULL);

		// increase our y coordinate in order to display the next line of text.
		y += iLineHeight;
	
	// *** END - Display 3 lines ***

	// *** BEGIN - Append 3 words together ***
		
		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line1, _tcslen(line1), NULL);

		// holds the size of the string
		SIZE sz;

		// get the size information about the "line1" string
		GetTextExtentPoint(hdc, line1, _tcslen(line1), &sz);

		// adjust the x coordinate to allow for the appending of text
		x += sz.cx;

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line2, _tcslen(line2), NULL);

		// get the size information about the "line2" string
		GetTextExtentPoint(hdc, line2, _tcslen(line2), &sz);

		// adjust the x coordinate to allow for the appending of text
		x += sz.cx;

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, line3, _tcslen(line3), NULL);

		// increase our y coordinate in order to display the next line of text.
		y += iLineHeight;

	// *** END - Append 3 words together ***

	// *** BEGIN - Three words on same line using differing font heights
		
		// variable(s) to hold the font faces
		LPCTSTR timesNewRoman = TEXT("Times New Roman");
		LPCTSTR arial = TEXT("Arial");
		LPCTSTR courierNew = TEXT("Courier New");

		// variable(s) to hold the text to be displayed on each line
		LPCTSTR font1 = TEXT("Times New Roman (12 point)");
		LPCTSTR font2 = TEXT("Arial (14 point)");
		LPCTSTR font3 = TEXT("Courier New (10 point)");
		
		// reset our x coordinate back to the original starting x pos
		x = iStartX;
		
		// variable to hold the current font in the device context
		HFONT hFont;
		HFONT hOldFont;

		// change the device context's font to "Times New Roman"
		ChangeFont(hdc, timesNewRoman, hFont, hOldFont);

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, font1, _tcslen(font1), NULL);

		// restore the device context's font to the previous
		RestoreFont(hdc, hFont, hOldFont);

		// get the size information about the "line2" string
		GetTextExtentPoint(hdc, font1, _tcslen(font1), &sz);

		// adjust the x coordinate to allow for the appending of text
		x += sz.cx;

		// change the device context's font to "Times New Roman"
		ChangeFont(hdc, arial, hFont, hOldFont);

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, font2, _tcslen(font2), NULL);

		// restore the device context's font to the previous
		RestoreFont(hdc, hFont, hOldFont);

		// get the size information about the "font2" string
		GetTextExtentPoint(hdc, font2, _tcslen(font2), &sz);

		// adjust the x coordinate to allow for the appending of text
		x += sz.cx;

		// change the device context's font to "Times New Roman"
		ChangeFont(hdc, courierNew, hFont, hOldFont);

		// output the specified text to the screen
		ExtTextOut(ps.hdc, x, y, 0, NULL, font3, _tcslen(font3), NULL);

		// restore the device context's font to the previous
		RestoreFont(hdc, hFont, hOldFont);
		

		

	// *** END - Three words on same line using differing font heights

	// marks the end of painting in the specified window
	EndPaint(hWnd, &ps);

	#ifdef DEBUG
	
		TCHAR DebugOutput[80];
		wsprintf(DebugOutput, TEXT("Y-line height: %d\n\n"), iLineHeight);
		OutputDebugString(DebugOutput);

	#endif
}

void DrawFilledRect(HDC hdc, RECT &rt, COLORREF &cr)
{
}

HWND MyCreateEditor(HWND &hWnd, LPTSTR lpszCaption, long cx, long cy)
{
	return CreateWindow (TEXT("edit"),    /* Class name.   */
                        0,                    /* Title.        */
                        WS_CHILD       |      /* Style bits.   */
                        WS_VISIBLE     |
                        WS_VSCROLL     |
                        WS_BORDER      |
                        ES_LEFT        |
                        ES_MULTILINE,
                        0,                    /* x.            */
                        0,                    /* y.            */
                        cx,                    /* cx.           */
                        cy,                    /* cy.           */
                        hWnd,                 /* Parent.       */
                        (HMENU)100,           /* Child Id.     */
                        hInst,                /* Creator.      */
                        NULL);                /* Params.       */

}

BOOL CALLBACK Options(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	SHINITDLGINFO shidi;

	switch (uMsg)
	{
		case WM_INITDIALOG:

			// Create a Done button and size it.  
			shidi.dwMask = SHIDIM_FLAGS;
			 shidi.dwFlags = SHIDIF_DONEBUTTON | SHIDIF_SIPDOWN | SHIDIF_SIZEDLGFULLSCREEN;
			shidi.hDlg = hwndDlg;
			SHInitDialog(&shidi);

			InitControls(hwndDlg);
			
			return TRUE;

		case WM_COMMAND:

			if (LOWORD(wParam) == IDOK)
			{
				EndDialog(hwndDlg, LOWORD(wParam));
				return TRUE;
			}

			break;

		default:
			return FALSE;
	}

	return TRUE;
}

// initialize the controls on the dialog box
void InitControls(HWND hDlg)
{
	// handle to control
	HWND hwndCtrl;

	int  iInitItem;

	// get handle to the combo box
	hwndCtrl = GetDlgItem(hDlg, IDC_COMBO_DRAW);

	for (int i = 0; i < 20; i++)
	{
		TCHAR item[80];
		wsprintf(item, TEXT("item %d"), i);

		// add an item to the combo box
		iInitItem = ComboBox_AddString(hwndCtrl, item);
		ComboBox_SetCurSel(hwndCtrl, iInitItem);
	}

}

void HeapTest()
{
	HANDLE hHeap;
	LPTSTR p;
	DWORD dwBytes;

	dwBytes = _tcslen(TEXT("brian")) * sizeof(TCHAR);

	hHeap = GetProcessHeap();
	p = (LPTSTR) HeapAlloc(hHeap, HEAP_ZERO_MEMORY, dwBytes);

	memcpy(p, TEXT("brian"), sizeof(TEXT("brian")));

	TCHAR debug[80];
	wsprintf(debug, TEXT("String: %s sizeof: %d\n\n"), p, sizeof(p));
	OutputDebugString(debug);
}






