// propsip.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "propsip.h"
#include <commctrl.h>
#include <aygshell.h>
#include <sipapi.h>

#define MAX_LOADSTRING 100

// Global Variables:
HINSTANCE			hInst;					// The current instance
HWND				hwndCB;					// The command bar handle
WNDPROC YaoPPCPropSheetDlgProc;

static SHACTIVATEINFO s_sai;
HWND hwndMBProp = NULL;

// Forward declarations of functions included in this code module:
ATOM				MyRegisterClass	(HINSTANCE, LPTSTR);
BOOL				InitInstance	(HINSTANCE, int);
LRESULT CALLBACK	WndProc			(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK	About			(HWND, UINT, WPARAM, LPARAM);
HWND				CreateRpCommandBar(HWND);

BOOL CALLBACK PropPageProc1(HWND, UINT, WPARAM, LPARAM); 
BOOL CALLBACK PropPageProc2(HWND, UINT, WPARAM, LPARAM); 
BOOL CALLBACK PropPageProc3(HWND, UINT, WPARAM, LPARAM); 
BOOL CALLBACK PropPageProc4(HWND, UINT, WPARAM, LPARAM); 
BOOL CALLBACK PropPageProc5(HWND, UINT, WPARAM, LPARAM); 
int CALLBACK PropSheetProc(HWND, UINT, LPARAM );
VOID CALLBACK SetPropSheetSizes(HWND);

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

	hAccelTable = LoadAccelerators(hInstance, (LPCTSTR)IDC_PROPSIP);

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
    wc.hIcon			= LoadIcon(hInstance, MAKEINTRESOURCE(IDI_PROPSIP));
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
	LoadString(hInstance, IDC_PROPSIP, szWindowClass, MAX_LOADSTRING);
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
		case WM_COMMAND:
			wmId    = LOWORD(wParam); 
			wmEvent = HIWORD(wParam); 
			// Parse the menu selections:
			switch (wmId)
			{	
				case IDM_FORMAT_CELLS:
					PROPSHEETHEADER psh;
					PROPSHEETPAGE psp1 ,psp2, psp3, psp4, psp5;
					HPROPSHEETPAGE hpsp[5];
					
					memset(&psh, 0, sizeof(PROPSHEETHEADER));
					memset(&psp1, 0, sizeof(PROPSHEETPAGE));

					// Create five property sheet pages and their property sheet
					psp1.dwSize=sizeof(psp1);
					psp1.pszTitle = _T("Size");
					psp1.dwFlags=PSP_DEFAULT | PSP_USETITLE;
					psp1.hInstance=hInst;
					psp1.pszTemplate=MAKEINTRESOURCE(IDD_FORMAT_CELLS);
					psp1.pfnDlgProc=(DLGPROC)PropPageProc1;
					hpsp[0]=CreatePropertySheetPage(&psp1);

					psp2.dwSize=sizeof(psp1);
					psp2.pszTitle = _T("Number");
					psp2.dwFlags=PSP_DEFAULT | PSP_USETITLE;
					psp2.hInstance=hInst;
					psp2.pszTemplate=MAKEINTRESOURCE(IDD_NUMBER);
					psp2.pfnDlgProc=(DLGPROC)PropPageProc2;
					hpsp[1]=CreatePropertySheetPage(&psp2);

					psp3.dwSize=sizeof(psp1);
					psp3.pszTitle = _T("Align");
					psp3.dwFlags=PSP_DEFAULT | PSP_USETITLE;
					psp3.hInstance=hInst;
					psp3.pszTemplate=MAKEINTRESOURCE(IDD_ALIGN);
					psp3.pfnDlgProc=(DLGPROC)PropPageProc3;
					hpsp[2]=CreatePropertySheetPage(&psp3);

					psp4.dwSize=sizeof(psp1);
					psp4.pszTitle = _T("Font");
					psp4.dwFlags=PSP_DEFAULT | PSP_USETITLE;
					psp4.hInstance=hInst;
					psp4.pszTemplate=MAKEINTRESOURCE(IDD_FONT);
					psp4.pfnDlgProc=(DLGPROC)PropPageProc4;
					hpsp[3]=CreatePropertySheetPage(&psp4);

					psp5.dwSize=sizeof(psp1);
					psp5.pszTitle = _T("Borders");
					psp5.dwFlags=PSP_DEFAULT | PSP_USETITLE;
					psp5.hInstance=hInst;
					psp5.pszTemplate=MAKEINTRESOURCE(IDD_BORDERS);
					psp5.pfnDlgProc=(DLGPROC)PropPageProc5;
					hpsp[4]=CreatePropertySheetPage(&psp5);

        
					psh.dwSize=sizeof(psh);
					psh.dwFlags=PSH_USEICONID | PSH_USECALLBACK;
					psh.hwndParent=hWnd;
					psh.pfnCallback = PropSheetProc;
					psh.hInstance=hInst;
					psh.pszIcon=TEXT("IDI_PROP1");
					psh.pszCaption=TEXT("PROP1");
					psh.phpage=hpsp;
					psh.nPages=5;
					psh.nStartPage=0;
					PropertySheet(&psh);
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
		case WM_ACTIVATE:
            SHHandleWMActivate(hWnd, wParam, lParam, &s_sai, 0);
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

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void ShowSIP(BOOL bShow)
{
	SIPINFO si;
	memset(&si, 0, sizeof(SIPINFO));
	si.cbSize = sizeof(SIPINFO);

	// Fetch current value.
	SHSipInfo(SPI_GETSIPINFO, 0, &si, 0);

	if (bShow)
	{
		si.fdwFlags |= SIPF_ON;  // Display SIP
	}
	else
	{
		si.fdwFlags &= ~SIPF_ON;  // Hide SIP.
	}

	SHSipInfo(SPI_SETSIPINFO, 0, &si, 0);
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropPageProc1(HWND hwndDlg,  // handle to dialog box / property page
              UINT uMsg,     // message  
              WPARAM wParam, // first message parameter
              LPARAM lParam) // second message parameter
{
	switch(uMsg) {
		case WM_INITDIALOG:
		{
		    // Set focus on first editable element...
			HWND hwndCtl = GetDlgItem(hwndDlg, IDC_ROWHEIGHT);
			SetFocus(hwndCtl);

			// Display SIP since item is an edit control.
			ShowSIP(TRUE);
			return FALSE; 
		}

		case WM_COMMAND:
            switch(wParam) {
            case IDOK:
            case IDCANCEL:
                return TRUE;
            } //switch(wParam)
            break;
    } //switch(uMsg)
    return FALSE;
    
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropPageProc2(HWND hwndDlg,  // handle to dialog box / property page
              UINT uMsg,     // message  
              WPARAM wParam, // first message parameter
              LPARAM lParam) // second message parameter
{
	switch(uMsg) {
		case WM_INITDIALOG:
		{
			return FALSE; 
		}

		case WM_COMMAND:
            switch(wParam) {
            case IDOK:
            case IDCANCEL:
                return TRUE;
            } //switch(wParam)
            break;
    } //switch(uMsg)
    return FALSE;
    
}
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropPageProc3(HWND hwndDlg,  // handle to dialog box / property page
              UINT uMsg,     // message  
              WPARAM wParam, // first message parameter
              LPARAM lParam) // second message parameter
{
	switch(uMsg) {
		case WM_INITDIALOG:
		{
			return FALSE; 
		}

		case WM_COMMAND:
            switch(wParam) {
            case IDOK:
            case IDCANCEL:
                return TRUE;
            } //switch(wParam)
            break;
    } //switch(uMsg)
    return FALSE;
    
}
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropPageProc4(HWND hwndDlg,  // handle to dialog box / property page
              UINT uMsg,     // message  
              WPARAM wParam, // first message parameter
              LPARAM lParam) // second message parameter
{
	switch(uMsg) {
		case WM_INITDIALOG:
		{
			return FALSE; 
		}

		case WM_COMMAND:
            switch(wParam) {
            case IDOK:
            case IDCANCEL:
                return TRUE;
            } //switch(wParam)
            break;
    } //switch(uMsg)
    return FALSE;
    
}
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropPageProc5(HWND hwndDlg,  // handle to dialog box / property page
              UINT uMsg,     // message  
              WPARAM wParam, // first message parameter
              LPARAM lParam) // second message parameter
{
	switch(uMsg) {
		case WM_INITDIALOG:
		{
			return FALSE; 
		}

		case WM_COMMAND:
            switch(wParam) {
            case IDOK:
            case IDCANCEL:
                return TRUE;
            } //switch(wParam)
            break;
    } //switch(uMsg)
    return FALSE;
    
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
DLGTEMPLATE * CALLBACK 
YaoPropGetHeader(IN LPARAM lParam, 
				OUT LPTSTR * pMenu, 
				OUT LPTSTR * pClass, 
				OUT LPTSTR * pTitle, 
				OUT LPTSTR * pFontFace, 
				OUT WORD * pFontPoint,
				OUT DLGITEMTEMPLATE ** pFirstItem)
{
	DLGTEMPLATE * pdt = (DLGTEMPLATE *)lParam;
	WORD * pw = (WORD *)&pdt[1];
	WCHAR * pwch;
	int c;

	// Parse over menu info.
	switch(*pw)
	{
	    case 0:			// No menu info.
			*pMenu = NULL;
			*pw++;
			break;

		case 0xffff:	// Menu as resource id.
			*pMenu = pw;
			*pw++;
			*pw++;
			break;

		default:		// Menu as Unicode string.
			*pMenu = pw;
		    pwch = (WCHAR *)pw;
			c = _tcslen(pwch) + 1;
			pwch += c;
			pw = (WORD *)pwch;
			break;
	}

	// Parse over class info.
	switch(*pw)
	{
	    case 0:			// No menu info.
			*pClass = NULL;
			*pw++;
			break;

		case 0xffff:	// Menu as resource id.
			*pClass = pw;
			*pw++;
			*pw++;
			break;

		default:		// Menu as Unicode string.
			*pClass = pw;
		    pwch = (WCHAR *)pw;
			c = _tcslen(pwch) + 1;
			pwch += c;
			pw = (WORD *)pwch;
			break;
	}

	// Parse over title info.
	switch(*pw)
	{
	    case 0:			// No menu info.
			*pTitle = NULL;
			*pw++;
			break;

		default:		// Menu as Unicode string.
			*pTitle = pw;
		    pwch = (WCHAR *)pw;
			c = _tcslen(pwch) + 1;
			pwch += c;
			pw = (WORD *)pwch;
			break;
	}

	// If there is font info, parse it.
	if (pdt->style & DS_SETFONT)
	{
		*pFontPoint = *pw;
		pw++;
		*pFontFace = (LPTSTR)pw;
	}
	else
	{
		*pFontPoint = 0;
		*pFontFace = NULL;
	}

	// Set pointer to first DLGITEMTEMPLATE item in array.
	*pFirstItem = (DLGITEMTEMPLATE *)pw;

	return (pdt);
}

//-----------------------------------------------------------------------------
// Function Name: YaoPPCPropSheetPreCreate
// Written By: Paul Yao [paul@paulyao.com]
// Version:
//		o 1.0 [2000-Aug-04] First written. What a chore!
//
// Input:
//		o Parameters to PropSheetProc function for a PocketPC application.
//
// Uses:
//		o YaoPropGetHeader
//
// Output:
//		o PocketPC formatted property sheet with:
//			- Property sheet properly sized to fit available screen space.
//-----------------------------------------------------------------------------
void YaoPPCPropSheetPreCreate(HWND hwndDlg, UINT uMsg, LPARAM lParam)
{
	LPTSTR pMenu;
	LPTSTR pClass;
	LPTSTR pTitle;
	LPTSTR pFontFace;
	WORD pFontPoint;
	DLGITEMTEMPLATE * pFirstItem;
	DLGTEMPLATE * pdt = YaoPropGetHeader(lParam, &pMenu, &pClass, &pTitle, &pFontFace, &pFontPoint, &pFirstItem);

	// Only call from a PropSheetProc when uMsg == PSCB_PRECREATE.
	if (uMsg != PSCB_PRECREATE)
	{
	    LPTSTR pWho = _T("YaoPPCPreCreatePropSheet: ");
		LPTSTR pMsg = _T("uMsg != PSCB_PRECREATE. Sorry\n\r");
		OutputDebugString(pWho);
		OutputDebugString(pMsg);
		MessageBox(NULL, pMsg, pWho, MB_OK);
		return;
	}

	// Query size of known objects.
	HWND hwndTB = FindWindow(_T("HHTaskBar"), NULL);
	RECT rTB;
	GetWindowRect(hwndTB, &rTB);
	short cyScreen = GetSystemMetrics(SM_CYSCREEN);
	short cxScreen = GetSystemMetrics(SM_CXSCREEN);

	// Get conversion factors between pixels <-> dialog box units.
	LONG lDlgUnits = GetDialogBaseUnits();
	short cxDlgBase = LOWORD(lDlgUnits);
	short cyDlgBase = HIWORD(lDlgUnits);

	// Set location and style bits of dialog box.
	//pdt->x = 0;
	//pdt->y = (rTB.bottom * 8) / cyDlgBase;
	//pdt->cx = (cxScreen * 4) / cxDlgBase;
	//pdt->cy = (cyScreen * 8) / cyDlgBase - (pdt->y * 2);
	pdt->style = WS_POPUP | WS_VISIBLE; // | WS_CLIPSIBLINGS | WS_CLIPCHILDREN; // | 0x20C;

	// Set width and style of tab control.
	//pFirstItem->x = 0;
	//pFirstItem->y = pdt->y;
	//pFirstItem->cx = cxScreen;
	pFirstItem->style |= (TCS_BOTTOM  | WS_BORDER  | TCS_FLATBUTTONS);
}



//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
LRESULT CALLBACK 
YaoPPCPropSheetWndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
#define bSipVisible (s_sai.fSipUp)  // Macro to access s_sai
//static SHACTIVATEINFO s_sai;
    switch(message)
	{
		case WM_ACTIVATE:
            SHHandleWMActivate(hWnd, wParam, lParam, &s_sai, 0);
			SetPropSheetSizes(hWnd);
			goto DoDefault;
			break;

	    case WM_SETTINGCHANGE:
		{
		    TCHAR tch[96];
			wsprintf(tch, L"Granddaddy WM_SETTINGCHANGE, wParam = 0x%x, lParam = 0x%x\n\r", wParam, lParam);
			OutputDebugString(tch);

			// SIP is either being raised or lowered.
			if (wParam == SPI_SETSIPINFO)
			{
				SetPropSheetSizes(hWnd);
				SHHandleWMSettingChange(hWnd, wParam, lParam, &s_sai);
			}
		}
			goto DoDefault;
			break;

		case WM_DESTROY:
		    if (hwndMBProp)
			    DestroyWindow(hwndMBProp);
			goto DoDefault;
			break;

		case WM_PAINT:
		{
		    PAINTSTRUCT ps;
			HDC hdc = BeginPaint(hWnd, &ps);
			SetTextColor(hdc, RGB(0, 0, 255));
			ExtTextOut(hdc, 5, 5, 0, NULL, L"Format Cells", 12, 0);
			EndPaint(hWnd, &ps);
		}
			goto DoDefault;

		case WM_CREATE:
		    s_sai.cbSize = sizeof(SHACTIVATEINFO);
			goto DoDefault;

		default:
DoDefault:
		    CallWindowProc(YaoPPCPropSheetDlgProc, hWnd, message, wParam, lParam);
	}
	return 0L;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID CALLBACK
SetPropSheetSizes(HWND hwndProp)
{
	// 1) Query taskbar height.
	RECT rTB;
	HWND hwndTB = FindWindow(_T("HHTaskBar"), NULL);
	GetWindowRect(hwndTB, &rTB);
	int cyTBHeight = rTB.bottom - rTB.top;

	// 2) Query menu height.
	RECT rMenu;
	GetWindowRect(hwndMBProp, &rMenu);
	int cyMenu = rMenu.bottom - rMenu.top + 1;

	// 3) Query screen width and height info.
	short cxScreen = GetSystemMetrics(SM_CXSCREEN);
	short cyScreen = GetSystemMetrics(SM_CYSCREEN);

    // 4) Query state and size of SIP
	SIPINFO si;
	memset(&si, 0, sizeof(SIPINFO));
	si.cbSize = sizeof(SIPINFO);

	// Fetch current value.
	SHSipInfo(SPI_GETSIPINFO, 0, &si, 0);
	
	// SIP Is visible - shrink windows.
	int cySIP = 0;
	if (si.fdwFlags & SIPF_ON)
	{
	    cySIP = si.rcSipRect.bottom - si.rcSipRect.top;
	}

    // 5) Set granddaddy property sheet to fill available space.
	int xParent = 0;
	int yParent = cyTBHeight;
	int cxParent = cxScreen;
	int cyParent = cyScreen - (cyTBHeight + cyMenu + cySIP);
	MoveWindow(hwndProp, xParent, yParent, cxParent, cyParent, FALSE);	

	// 6) Resize dialogbox "daddy" window
	HWND hwndDaddy = GetDlgItem(hwndProp, 0);
	int cyDaddy = cyScreen - (cyMenu + cyTBHeight + cyTBHeight + cySIP + 19);
	MoveWindow(hwndDaddy, xParent, yParent, cxParent, cyDaddy, FALSE);	

	// 7) Get our hands on the tab control itself and resize.
	HWND hwndTab = GetDlgItem(hwndProp, 12320);
	int cxBorder = GetSystemMetrics(SM_CXBORDER);
	int cxTab = cxParent + (2 * cxBorder);
	int cyTab = cyScreen - (cyMenu + cyTBHeight + cyTBHeight + cySIP) + 4;
	MoveWindow(hwndTab, -cxBorder, cyTBHeight, cxTab, cyTab, FALSE);
}

//-----------------------------------------------------------------------------
// Function Name: YaoPPCPropSheetInit
// Written By: Paul Yao [paul@paulyao.com]
// Version:
//		o 1.0 [2000-Aug-04] First written. What a chore!
//
// Input:
//		o Parameters to PropSheetProc function for a PocketPC application.
//		o Title to be displayed.
//
// Uses:
//
// Output:
//		o PocketPC formatted property sheet with:
//			- Static control with name of property sheet.
//			- A dummy menu to hide application menu (like Pocket Excel's Format | Cells...)
//			- Size tweaked to fit available screen space.
//-----------------------------------------------------------------------------
void CALLBACK
YaoPPCPropSheetInit(HWND hwndDlg, UINT uMsg, LPARAM lParam)
{
	// Only call from a PropSheetProc when uMsg == PSCB_INITIALIZED.
	if (uMsg != PSCB_INITIALIZED)
	{
	    LPTSTR pWho = _T("YaoPPCPropSheetInit: ");
		LPTSTR pMsg = _T("uMsg != PSCB_INITIALIZED. Sorry\n\r");
		OutputDebugString(pWho);
		OutputDebugString(pMsg);
		MessageBox(NULL, pMsg, pWho, MB_OK);
		return;
	}

	// Create empty menu
	SHMENUBARINFO mbi;

	memset(&mbi, 0, sizeof(SHMENUBARINFO));
	mbi.cbSize     = sizeof(SHMENUBARINFO);
	mbi.hwndParent = hwndDlg;
	mbi.nToolBarId = 0;
	mbi.hInstRes   = NULL;
	mbi.nBmpId     = 0;
	mbi.cBmpImages = 0;
	mbi.dwFlags    = SHCMBF_EMPTYBAR;

	BOOL b = SHCreateMenuBar(&mbi);
	hwndMBProp = mbi.hwndMB;

	// Resize all objects.
	SetPropSheetSizes(hwndDlg);
	
	// Subclass property sheet main dialog box procedure
	// to fine-tune behaviors and appearance.
	YaoPPCPropSheetDlgProc = (WNDPROC)GetWindowLong(hwndDlg, GWL_WNDPROC);
	SetWindowLong(hwndDlg, GWL_WNDPROC, (DWORD)YaoPPCPropSheetWndProc);
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL CALLBACK 
PropSheetProc(HWND hwndDlg, UINT uMsg, LPARAM lParam )
{
	switch(uMsg) 
	{
	    case PSCB_PRECREATE:
		    YaoPPCPropSheetPreCreate(hwndDlg, uMsg, lParam);
		    break;

		case PSCB_INITIALIZED:
		    YaoPPCPropSheetInit(hwndDlg, uMsg, lParam);
		    break;
		   
		default:
			break;
	}
	return 0;
}

