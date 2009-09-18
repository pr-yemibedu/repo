/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | WINSTYLE.C  Toy to figure out difference between different window styles. |
\*---------------------------------------------------------------------------*/
#include <windows.h>
#include <windowsx.h>
#include <tchar.h>

#include <commctrl.h>
#ifdef _WIN32
// #include <crtdbg.h>
#else
#include <memory.h>
#endif
#include "winstyle.h"
#include "resource.h"

#ifndef WS_EX_APPWINDOW // For BC 4.0 Support.
#define WS_EX_APPWINDOW 0x00040000L
#endif

/*---------------------------------------------------------------------------*\
 |                           Function Prototypes.                            |
\*---------------------------------------------------------------------------*/
LRESULT CALLBACK MinWndProc (HWND, UINT, WPARAM, LPARAM);
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify);
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct);
void OnDestroy(HWND hwnd);
void OnSize(HWND hwnd, UINT state, int cx, int cy);

/*---------------------------------------------------------------------------*\
 |                             Global Variables.                             |
\*---------------------------------------------------------------------------*/
TCHAR achWndClass[] = TEXT("WinStyle");
TCHAR achTheClass[] = TEXT("THEWINDOW");
TCHAR achAppName[]  = TEXT("WinStyle");
HWND hwndStyleList;
HWND hwndExtList;
HWND hwndTheWindow = NULL;
HWND hwndCB;
HINSTANCE g_hInst;

typedef struct tagSTYLELIST
{
    DWORD dwFlag;
    LPTSTR pText;
} STYLELIST;

STYLELIST Styles[] =      
    {
    0,                TEXT("------- Initial State -------"),
    WS_VISIBLE      , TEXT("WS_VISIBLE      "),
    WS_DISABLED     , TEXT("WS_DISABLED     "),
#ifndef UNDER_CE
    WS_MAXIMIZE     , TEXT("WS_MAXIMIZE     "),
    WS_MINIMIZE     , TEXT("WS_MINIMIZE     "),
#endif
    0,                TEXT("------- Components -------"),
    WS_BORDER       , TEXT("WS_BORDER       "),
    WS_CAPTION      , TEXT("WS_CAPTION      "),
    WS_DLGFRAME     , TEXT("WS_DLGFRAME     "),
    WS_HSCROLL      , TEXT("WS_HSCROLL      "),
#ifndef UNDER_CE
    WS_MAXIMIZEBOX  , TEXT("WS_MAXIMIZEBOX  "),
    WS_MINIMIZEBOX  , TEXT("WS_MINIMIZEBOX  "),
    WS_THICKFRAME   , TEXT("WS_THICKFRAME   "),
#endif
    WS_SYSMENU      , TEXT("WS_SYSMENU      "),
    WS_VSCROLL      , TEXT("WS_VSCROLL      "),
    0,                TEXT("------- Dialog Control -------"),
    WS_TABSTOP      , TEXT("WS_TABSTOP      "),
    WS_GROUP        , TEXT("WS_GROUP        "),
    0,                TEXT("------- Clipping -------"),
    WS_CLIPCHILDREN , TEXT("WS_CLIPCHILDREN "),
    WS_CLIPSIBLINGS , TEXT("WS_CLIPSIBLINGS ")
    };

int nStyleCount = sizeof(Styles) / sizeof(STYLELIST);

STYLELIST ExtStyles[] =
    {
//    WS_EX_ABSPOSITION     ,   TEXT("WS_EX_ABSPOSITION     "),
    0,                        TEXT("------- Non-Client Area -------"),
#ifdef _WIN32    
    WS_EX_CLIENTEDGE      ,   TEXT("WS_EX_CLIENTEDGE      "),
    WS_EX_CONTEXTHELP     ,   TEXT("WS_EX_CONTEXTHELP     "),
#endif    
    WS_EX_DLGMODALFRAME   ,   TEXT("WS_EX_DLGMODALFRAME   "),
#ifdef _WIN32    
    WS_EX_OVERLAPPEDWINDOW,   TEXT("WS_EX_OVERLAPPEDWINDOW"),

#ifndef UNDER_CE
    WS_EX_PALETTEWINDOW   ,   TEXT("WS_EX_PALETTEWINDOW   "),
    WS_EX_TOOLWINDOW      ,   TEXT("WS_EX_TOOLWINDOW      "),
    WS_EX_ACCEPTFILES     ,   TEXT("WS_EX_ACCEPTFILES     "),
#endif
    WS_EX_STATICEDGE      ,   TEXT("WS_EX_STATICEDGE      "),
    WS_EX_WINDOWEDGE      ,   TEXT("WS_EX_WINDOWEDGE      "),
#endif    
    0,                        TEXT("------- Shell Interface -------"), 
#ifdef WIN32    
    WS_EX_APPWINDOW       ,   TEXT("WS_EX_APPWINDOW       "),
#endif    
    WS_EX_TOPMOST         ,   TEXT("WS_EX_TOPMOST         "),
#ifndef UNDER_CE
    WS_EX_TRANSPARENT     ,   TEXT("WS_EX_TRANSPARENT     "),
#endif
    0,                        TEXT("------- Child Window -------"),
#ifdef _WIN32    
#ifndef UNDER_CE
    WS_EX_CONTROLPARENT   ,   TEXT("WS_EX_CONTROLPARENT   "),
    WS_EX_MDICHILD        ,   TEXT("WS_EX_MDICHILD        "),
    WS_EX_NOPARENTNOTIFY  ,   TEXT("WS_EX_NOPARENTNOTIFY  "),
#endif
#endif    
#ifdef _WIN32    
    0,                        TEXT("------- Right-To-Left Language Support -------"),
#ifndef UNDER_CE
    WS_EX_LEFT            ,   TEXT("WS_EX_LEFT            "),
    WS_EX_LEFTSCROLLBAR   ,   TEXT("WS_EX_LEFTSCROLLBAR   "),
    WS_EX_LTRREADING      ,   TEXT("WS_EX_LTRREADING      "),
    WS_EX_RIGHT           ,   TEXT("WS_EX_RIGHT           "),
    WS_EX_RIGHTSCROLLBAR  ,   TEXT("WS_EX_RIGHTSCROLLBAR  "),
    WS_EX_RTLREADING      ,   TEXT("WS_EX_RTLREADING      ")
#endif
#endif    
    };

int nExtStyleCount = sizeof(ExtStyles) / sizeof(STYLELIST);


// Sizes for new window (reset during parent window's WM_SiZE handling).
int xNew  = 10;
int yNew  = 10;
int cxNew = 150; 
int cyNew = 50;
/*---------------------------------------------------------------------------*\
 |  WinMain: program entry point.                                            |
\*---------------------------------------------------------------------------*/
int PASCAL
WinMain (HINSTANCE hInstance,     // Who am I?
         HINSTANCE hPrevInstance, // Any older siblings?
         LPTSTR    lpszCmdLine,   // Ptr to command line.
         int       cmdShow)       // How to open my window?
{
    HWND     hwnd;
    MSG      msg;
    WNDCLASS wc;

    g_hInst = hInstance;

    memset (&wc, 0, sizeof(WNDCLASS));

    wc.lpszClassName = achWndClass;
    wc.hInstance     = hInstance;
    wc.lpfnWndProc   = MinWndProc;
    wc.hCursor       = NULL; // LoadCursor (hInstance, TEXT("hand"));
    wc.hIcon         = LoadIcon (hInstance, TEXT("snapshot"));
    wc.lpszMenuName  = NULL; // TEXT("MAIN");
    wc.hbrBackground = (HBRUSH)(COLOR_APPWORKSPACE+1);
    if (!RegisterClass( &wc))
    {
        TCHAR wch[120];
        wsprintf(wch, TEXT("Error: Can't register window class, File = %s, Line = %d, Err = %%x%X"), TEXT(__FILE__), __LINE__, GetLastError());
        MessageBox(NULL, wch , achAppName, MB_OK);
        return 2;
    }

    // Register "The Window" class.
    memset (&wc, 0, sizeof(WNDCLASS));
    wc.lpszClassName = achTheClass;
    wc.hInstance     = hInstance;
    wc.lpfnWndProc   = DefWindowProc;
#ifndef UNDER_CE
    wc.hCursor       = LoadCursor (NULL, IDC_ARROW);
    wc.hIcon         = LoadIcon (NULL, IDI_APPLICATION);
#else
    wc.hCursor       = NULL;
    wc.hIcon         = NULL;
#endif
    wc.lpszMenuName  = NULL;
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
    
    if (!RegisterClass( &wc))
    {
        TCHAR wch[120];
        wsprintf(wch, TEXT("Error: Can't register window class, File = %s, Line = %d, Err = %%x%X"), TEXT(__FILE__), __LINE__, GetLastError());
        MessageBox(NULL, wch , achAppName, MB_OK);
        return 2;
    }

    hwnd = CreateWindowEx(
#ifdef _WIN32    
                        WS_EX_OVERLAPPEDWINDOW, // Extra style.
#else
                        0,
#endif                        
                        achWndClass,              // Class name.
                        achAppName,               // Title.
#ifndef UNDER_CE
                        WS_OVERLAPPEDWINDOW,      // Style bits.
#else
                        WS_OVERLAPPED | WS_CAPTION | WS_VISIBLE | WS_SYSMENU,
#endif
                        CW_USEDEFAULT,            // x - default.
                        0,                        // y - default.
                        CW_USEDEFAULT,            // cx - default.
                        0,                        // cy - default.
                        NULL,                     // No parent.
                        NULL,                     // Class menu.
                        hInstance,                // Creator.
                        NULL);                    // Params.
    if (!hwnd)
    {
        TCHAR wch[120];
        wsprintf(wch, TEXT("Error: Can't create window, File = %s, Line = %d, Err = %%x%X"), TEXT(__FILE__), __LINE__, GetLastError());
        MessageBox(NULL, wch , achAppName, MB_OK);
        return 2;
    }

    // Load menu and connect to window.
#ifndef UNDER_CE
    HMENU hmenu = LoadMenu(hInstance, TEXT("MAIN"));
    SetMenu(hwnd, hmenu);
#else
    InitCommonControls();
#endif

    ShowWindow (hwnd, cmdShow);

    while (GetMessage(&msg, 0, 0, 0))
    {
        TranslateMessage(&msg); // Convert WM_KEYDOWN messages to WM_CHAR
        DispatchMessage(&msg);  // Transmit message to WndProc
    }
    return 0;
}

/*---------------------------------------------------------------------------*\
 | MinWndProc: window procedure for handling messages.                       |
\*---------------------------------------------------------------------------*/
LRESULT CALLBACK
MinWndProc (HWND   hwnd,     // For whom is message sent?
            UINT   mMsg,     // What is exact message?
            WPARAM wParam,   // ...message details.
            LPARAM lParam)   // ...message details.
{
    switch (mMsg)
    {
        HANDLE_MSG(hwnd, WM_COMMAND, OnCommand);
        HANDLE_MSG(hwnd, WM_CREATE, OnCreate);
        HANDLE_MSG(hwnd, WM_DESTROY, OnDestroy);
        HANDLE_MSG(hwnd, WM_SIZE, OnSize);
        default:
            return(DefWindowProc(hwnd,mMsg,wParam,lParam));
    }
}

/*---------------------------------------------------------------------------*\
 |  OnCommand: handle WM_COMMAND message.                                    |
\*---------------------------------------------------------------------------*/
void OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    DWORD dwStyle = 0;
    DWORD dwExtStyle = 0;
    HWND hwndParent;
    int i;

    switch(id)
    {
        case IDM_CHILD:
            hwndParent = hwnd;
            dwStyle |= WS_CHILD;
            break;

        case IDM_POPUP:
            hwndParent = hwnd;
            dwStyle |= WS_POPUP;
            break;

        case IDM_OVERLAPPED:
            hwndParent = NULL;
            dwStyle |= WS_OVERLAPPED;
            break;

        case IDM_NOTYPE:
            hwndParent = NULL;
            break;

        case IDM_ABOUT:
            MessageBox(hwnd, 
                       TEXT("\tWindow Style Testbed\n\n")
                       TEXT("Copyright © 1995-1998, The Paul Yao Company. All rights reserved."),
                       achAppName, MB_OK);
            return;

        default:
            return;
    }

    // Fetch window styles.
    for (i = 0; i < nStyleCount; i++)
    {
        if (ListBox_GetSel (hwndStyleList, i) > 0)
        {
            dwStyle |= ListBox_GetItemData(hwndStyleList, i);
        }
    }

    // Fetch extended window styles.
    for (i = 0; i < nExtStyleCount; i++)
    {
        if (ListBox_GetSel (hwndExtList, i) > 0)
        {
            dwExtStyle |= ListBox_GetItemData(hwndExtList, i);
        }
    }

    // Destroy window if it exists.
    if (hwndTheWindow)
    {
        DestroyWindow(hwndTheWindow);
    }

    hwndTheWindow = CreateWindowEx(dwExtStyle,    // Extra style.
                        achTheClass,              // Class name.
                        TEXT("The Window Title"), // Title.
                        dwStyle,                  // Style bits.
                        xNew, yNew, cxNew, cyNew, // x, y, cx, cy
                        hwndParent,               // Parent window.
                        NULL,                     // Menu / Child ID.
                        g_hInst,                  // Creator.
                        NULL);                    // Params.
}

/*---------------------------------------------------------------------------*\
 |  OnCreate: handle WM_CREATE message.                                      |
\*---------------------------------------------------------------------------*/
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct)
{
    int i;

#ifdef UNDER_CE
    // Create command bar
    hwndCB = CommandBar_Create( g_hInst, hwnd, 1 );
    if (!hwndCB)
        return FALSE;

    if ( !CommandBar_InsertMenubarEx( hwndCB , g_hInst, TEXT("MAIN"), 0 ) )
        return FALSE;
#endif

    hwndStyleList = CreateWindowEx(0L,        // Extra style.
                        TEXT("LISTBOX"),      // Class name.
                        NULL,                 // Title.
                        WS_CHILD   |          // Style bits.
                        WS_VISIBLE | 
                        WS_VSCROLL |
                        WS_BORDER  |
                        WS_CLIPSIBLINGS      |
                        LBS_NOINTEGRALHEIGHT |
                        LBS_MULTIPLESEL,
                        0, 0, 0, 0,           // x, y, cx, cy
                        hwnd,                 // No parent.
                        (HMENU)1,             // Child ID.
                        g_hInst,              // Creator.
                        NULL);                // Params.

    for (i = 0; i < nStyleCount; i++)
    {
        ListBox_AddString (hwndStyleList, Styles[i].pText);
        ListBox_SetItemData(hwndStyleList, i, Styles[i].dwFlag);
    }

    ListBox_SetSel (hwndStyleList, TRUE, 1);
    ListBox_SetTopIndex (hwndStyleList, 0);

    hwndExtList = CreateWindowEx(0L,          // Extra style.
                        TEXT("LISTBOX"),      // Class name.
                        NULL,                 // Title.
                        WS_CHILD   |          // Style bits.
                        WS_VISIBLE | 
                        WS_VSCROLL |
                        WS_BORDER  |
                        WS_CLIPSIBLINGS      |
                        LBS_NOINTEGRALHEIGHT |
                        LBS_MULTIPLESEL,
                        0, 0, 0, 0,           // x, y, cx, cy
                        hwnd,                 // No parent.
                        (HMENU)2,             // Child ID.
                        g_hInst,              // Creator.
                        NULL);                // Params.

    for (i = 0; i < nExtStyleCount; i++)
    {
        ListBox_AddString (hwndExtList, ExtStyles[i].pText);
        ListBox_SetItemData(hwndExtList, i, ExtStyles[i].dwFlag);
    }

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 |  OnDestroy: handle WM_DESTROY message.                                    |
\*---------------------------------------------------------------------------*/
void OnDestroy(HWND hwnd)
{
    PostQuitMessage(0);  // Handle application shutdown.
}


/*---------------------------------------------------------------------------*\
 |                                                                           |
\*---------------------------------------------------------------------------*/
void OnSize(HWND hwnd, UINT state, int cx, int cy)
{
    int x, y, cxList, cyList;
    int cxBorder = GetSystemMetrics(SM_CXBORDER);
    int cyBorder = GetSystemMetrics(SM_CYBORDER);

    x  = 0 - cxBorder;
    y  = (cy / 3) * 2;
    cxList = cx / 2;
    cyList = cy - y + cyBorder;
    
    // Put style window on left bottom third of parent.
    MoveWindow (hwndStyleList, x, y, cxList, cyList, TRUE);

    // Put extended style window on right bottom third of parent.
    x = cxList - (2 * cxBorder);
    cxList = (cx + (2 * cxBorder)) - (cxList - cxBorder);
    MoveWindow (hwndExtList, x, y, cxList, cyList, TRUE);

	// Set size for child window based on style window sizes.
	xNew  = 10;
	yNew  = 40;
	cxNew = cxList + cxList / 2;
	cyNew = cyList;
}
