// OPEN.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "OPEN.h"
#include <commctrl.h>
#include <aygshell.h>
#include <sipapi.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;					// The current instance
HWND				hwndCB;					// The command bar handle

static SHACTIVATEINFO s_sai;

// #define FILE_BUFFER_SIZE 4096
// TCHAR tchData[FILE_BUFFER_SIZE] = TEXT("");

TCHAR * pData = NULL;
TCHAR achAppName[] = _T("HeapAlloc");

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
HWND				CreateRpCommandBar(HWND);
void OnPaint(HWND hwnd);


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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_OPEN);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_OPEN));
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
	LoadString(hInstance, IDC_OPEN, szWindowClass, MAX_LOADSTRING);
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
	int wmId, wmEvent;

	switch (message) 
	{
        HANDLE_MSG(hWnd, WM_PAINT, OnPaint);

		case WM_COMMAND:
			wmId    = LOWORD(wParam); 
			wmEvent = HIWORD(wParam); 
			// Parse the menu selections:
			switch (wmId)
			{	
				case IDM_OPEN:
				{
					TCHAR szPathName[_MAX_PATH];    // Maximum file name size is 260 characters.
					OPENFILENAME ofn;

					BOOL bReturn;
					DWORD dw;
					int cbSize = sizeof(OPENFILENAME);

					szPathName[0] = 0;

					memset(&ofn, 0, cbSize);
					ofn.lStructSize = cbSize;
					ofn.hwndOwner = hWnd;
					ofn.lpstrFilter = TEXT("Text files\0*.txt\0All files\0*.*\0");
					ofn.nFilterIndex = 1;
					ofn.lpstrFile = szPathName;
					ofn.nMaxFile = _MAX_PATH;
					ofn.Flags = OFN_FILEMUSTEXIST | OFN_HIDEREADONLY;
					ofn.lpstrDefExt = TEXT("txt");
					bReturn = GetOpenFileName(&ofn);
					if(bReturn)
					{
						MessageBox(hWnd,szPathName,_T("File Selected"),MB_OK);
						HANDLE hFile = CreateFile(szPathName, 
										   GENERIC_READ,
										   FILE_SHARE_READ,
										   NULL,
										   OPEN_EXISTING,
										   FILE_ATTRIBUTE_NORMAL,
										   NULL);
						if (hFile == (HANDLE)0xffffffff)
						{
							MessageBox(hWnd, TEXT("Call to CreateFile failed"), achAppName, MB_OK);
							return 0L;
						}
						// Free memory if we've allocated any before.
						HANDLE hHeap = GetProcessHeap();
						if (pData)
						{
        
							HeapFree(hHeap, 0, pData);
							pData = NULL;
						}
    
						// Determine file size first.
						DWORD dwFileSize = GetFileSize(hFile, NULL);
						pData = (TCHAR *)HeapAlloc(hHeap, 0, dwFileSize);

						DWORD dwRead;
						ReadFile(hFile, pData, dwFileSize, &dwRead, NULL);
						CloseHandle(hFile);

						InvalidateRect(hWnd, NULL, TRUE);
						return 0L;
					}
					else
					{
						dw = CommDlgExtendedError();
						if(dw==0)
							MessageBox(hWnd,_T("User clicked cancel"),_T("Open"),MB_OK);
						else
							MessageBox(hWnd,_T("Error"),_T("Open"),MB_OK);
					}
				}
				    break;
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
void OnPaint(HWND hwnd)
{
    HDC hdc;
    PAINTSTRUCT ps;
    RECT rClient;

    hdc = BeginPaint (hwnd, &ps);

    GetClientRect(hwnd, &rClient);
    DrawText(hdc, pData, -1, &rClient, DT_WORDBREAK);

    EndPaint (hwnd, &ps);
}

