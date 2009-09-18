/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*\
 | WM_PAINT.C  Demonstrates how the all-important WM_PAINT messages draws in |
 |             a conservative - and sometimes unexpected - way.              |
 |                                                                           |
 | Note: For this program to work properly, you need to turn off the full    |
 | drag support on Windows NT. To do this, summon the Display Properties     |
 | property sheet. Select the [Plus!] tab, and turn *off* the check box that |
 | is labeled "show window contents while dragging."                         |
\*---------------------------------------------------------------------------*/
#include <windows.h>
#include <windowsx.h>

/*---------------------------------------------------------------------------*\
 |                           Function Prototypes.                            |
\*---------------------------------------------------------------------------*/
LRESULT CALLBACK PaintWndProc (HWND, UINT, WPARAM, LPARAM);
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct);
void OnDestroy(HWND hwnd);
void OnPaint(HWND hwnd);
HBRUSH NextBrush();

/*---------------------------------------------------------------------------*\
 |                             Global Variables.                             |
\*---------------------------------------------------------------------------*/
TCHAR achWndClass[] = TEXT("PaintWindow");
TCHAR achAppName[]  = TEXT("WM_PAINT Quirk");

#define BRUSHCOUNT (7)
HBRUSH g_hbr[BRUSHCOUNT];
int    iBrush = 0;

/*---------------------------------------------------------------------------*\
 |  WinMain: program entry point.                                            |
\*---------------------------------------------------------------------------*/
int WINAPI
WinMain (HINSTANCE hInstance,     // Who am I?
           HINSTANCE hPrevInstance, // Any older siblings?
           LPTSTR     lpszCmdLine,   // Ptr to command line.
           int       cmdShow)       // How to open my window?
{
    DWORD    dwStyle;
    HWND     hwnd;
    MSG      msg;
    WNDCLASS wndclass;

    if (!hPrevInstance)
    {
        wndclass.lpszClassName = achWndClass;
        wndclass.hInstance     = hInstance;
        wndclass.lpfnWndProc   = PaintWndProc;
        wndclass.hCursor       = LoadCursor (hInstance, TEXT("hand"));
        wndclass.hIcon         = LoadIcon (hInstance, TEXT("snapshot"));
        wndclass.lpszMenuName  = NULL;
        wndclass.hbrBackground = (HBRUSH)(COLOR_WINDOW+1);
        wndclass.style         = 0;
        wndclass.cbClsExtra    = 0;
        wndclass.cbWndExtra    = 0;

        RegisterClass( &wndclass);
    }

#ifdef UNDER_CE
    dwStyle = WS_VISIBLE | WS_OVERLAPPED | WS_SYSMENU;
#else
    dwStyle = WS_OVERLAPPEDWINDOW;
#endif

    hwnd = CreateWindowEx(0L,                 // Extra style.
                        achWndClass,          // Class name.
                        achAppName,           // Title.
                        dwStyle,              // Style bits.
                        CW_USEDEFAULT,        // x - default.
                        0,                    // y - default.
                        CW_USEDEFAULT,        // cx - default.
                        0,                    // cy - default.
                        NULL,                 // No parent.
                        NULL,                 // Class menu.
                        hInstance,            // Creator.
                        NULL);                // Params.

    ShowWindow (hwnd, cmdShow);

    while (GetMessage(&msg, 0, 0, 0))
    {
        TranslateMessage(&msg); // Convert KEYDOWNs to CHARs
        DispatchMessage(&msg);  // Transmit message to WndProc
    }
    return 0;
}

/*---------------------------------------------------------------------------*\
 | PaintWndProc: window procedure for handling messages.                     |
\*---------------------------------------------------------------------------*/
LRESULT CALLBACK
PaintWndProc (HWND   hwnd,     // For whom is message sent?
              UINT   mMsg,     // What is exact message?
              WPARAM wParam,   // ...message details.
              LPARAM lParam)   // ...message details.
{
    switch (mMsg)
    {
        HANDLE_MSG(hwnd, WM_CREATE, OnCreate);
        HANDLE_MSG(hwnd, WM_DESTROY, OnDestroy);
        HANDLE_MSG(hwnd, WM_PAINT, OnPaint);
        default:
            return(DefWindowProc(hwnd,mMsg,wParam,lParam));
    }
    return 0L;
}

/*---------------------------------------------------------------------------*\
 |  OnCreate: handle WM_CREATE message.                                      |
\*---------------------------------------------------------------------------*/
BOOL OnCreate(HWND hwnd, LPCREATESTRUCT lpCreateStruct)
{
    g_hbr[0] = (HBRUSH)GetStockObject(BLACK_BRUSH);
    g_hbr[1] = CreateSolidBrush(RGB(255, 0, 0));
    g_hbr[2] = CreateSolidBrush(RGB(0, 255, 0));
    g_hbr[3] = CreateSolidBrush(RGB(0, 0, 255));
    g_hbr[4] = CreateSolidBrush(RGB(255, 255, 0));
    g_hbr[5] = CreateSolidBrush(RGB(0, 255, 255));
    g_hbr[6] = CreateSolidBrush(RGB(255, 255, 255));

    return TRUE;
}

/*---------------------------------------------------------------------------*\
 |  OnDestroy: handle WM_DESTROY message.                                    |
\*---------------------------------------------------------------------------*/
void OnDestroy(HWND hwnd)
{
    int i;
    for (i = 0; i < BRUSHCOUNT; i++)
        DeleteObject(g_hbr[i]);

    PostQuitMessage(0);  // Handle application shutdown.
}

/*---------------------------------------------------------------------------*\
 |  OnPaint: handle WM_PAINT message.                                        |
\*---------------------------------------------------------------------------*/
void OnPaint(HWND hwnd)
{
    HBRUSH hbr;
    HDC hdc;
    PAINTSTRUCT ps;
    RECT rClient;

    GetClientRect (hwnd, &rClient);

    hdc = BeginPaint(hwnd, &ps);

    // Select a new brush into DC.
    hbr = NextBrush();
    SelectObject (hdc, hbr);

    // Fill client area with brush color.
    PatBlt(hdc, 0, 0, rClient.right, rClient.bottom, PATCOPY);

    EndPaint(hwnd, &ps);
}

/*---------------------------------------------------------------------------*\
 |         NextBrush: Return next brush to display with.                     |
\*---------------------------------------------------------------------------*/
HBRUSH NextBrush()
{
    // Select brush to return.
    HBRUSH hbr = g_hbr[iBrush];

    // Increment & wrap index.
    iBrush++;
    if (iBrush == BRUSHCOUNT)
        iBrush = 0;

    return hbr;
}
