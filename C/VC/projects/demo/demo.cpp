//hello.cpp

#include <afxwin.h>

// Declare the application class
class CHelloApp : public CWinApp
{
public:		
  virtual BOOL InitInstance();
};

// Create an instance of the application class
CHelloApp HelloApp;

// Declare the main window class
class CHelloWindow : public CFrameWnd
{		
  CStatic* cs;
public:		
  CHelloWindow();
};

// The InitInstance function is called each
// time the application first executes.
BOOL CHelloApp::InitInstance()
{		
  m_pMainWnd = new CHelloWindow();		
  m_pMainWnd->ShowWindow(1);		
  m_pMainWnd->UpdateWindow();		
  return TRUE;
}

// The constructor for the window class
CHelloWindow::CHelloWindow()
{		
  // Create the window itself		
  Create(NULL,				
    "Hello World!",				
    WS_OVERLAPPEDWINDOW,				
    CRect(0,0,200,200));		
  // Create a static label		
  cs = new CStatic();		
  cs->Create("hello world",				
    WS_CHILD|WS_VISIBLE|SS_CENTER,				
    CRect(50,80,150,150),				
    this);
}

