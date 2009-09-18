#include <afxwin.h>
#include <string.h>
#include "message.h"

CMainWin::CMainWin()
{
    Create(NULL, _T("Processing WM_CHAR messages"));
}

BOOL CApp::InitInstance()
{
    m_pMainWnd = new CMainWin;
    m_pMainWnd -> ShowWindow(m_nCmdShow);
    m_pMainWnd -> UpdateWindow();
    return TRUE;
}

// apps message map
BEGIN_MESSAGE_MAP(CMainWin, CFrameWnd)
    ON_WM_CHAR()
END_MESSAGE_MAP()

afx_msg void CMainWin::OnChar(UINT ch, UINT count, UINT flags)
{
    char str[80];
    CClientDC dc(this);
    dc.TextOut(1, 1, "   ", 3);
    wsprintf(str, "%c", ch);
    dc.TextOut(1, 1, str, strlen(str));
}

// instantiate app
CApp App;