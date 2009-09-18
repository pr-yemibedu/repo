#ifndef _MESSAGE_H_
#define _MESSAGE_H_

// the main window class
class CMainWin : public CFrameWnd
{
public:
    CMainWin();
    afx_msg void OnChar(UINT ch, UINT count, UINT flags);
    DECLARE_MESSAGE_MAP()
};

class CApp : public CWinApp
{
    virtual BOOL InitInstance();
};

#endif