// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "Contacts.h"

#include "MainFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define PSPC_TOOLBAR_HEIGHT 24

const DWORD dwAdornmentFlags = 0; // exit button

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_UPDATE_COMMAND_UI(ID_NEW_CALL, OnUpdateNewCall)
	ON_UPDATE_COMMAND_UI(ID_NEW_CUSTOMER, OnUpdateNewCustomer)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
	
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;

	m_wndCommandBar.m_bShowSharedNewButton = FALSE;
	m_ToolTipsTable[0] = MakeString(IDS_NEW);
	m_ToolTipsTable[1] = MakeString(IDS_FILE);
	m_ToolTipsTable[2] = MakeString(IDS_MHELP);
	m_ToolTipsTable[3] = MakeString(IDS_CUT);
	m_ToolTipsTable[4] = MakeString(IDS_COPY);
	m_ToolTipsTable[5] = MakeString(IDS_PASTE);
	m_ToolTipsTable[6] = MakeString(IDS_ABOUT);  

	if(!m_wndCommandBar.Create(this) ||
	   !m_wndCommandBar.InsertMenuBar(IDR_MAINFRAME) ||
	   !m_wndCommandBar.AddAdornments() ||
	   !m_wndCommandBar.LoadToolBar(IDR_MAINFRAME)  ||
		!m_wndCommandBar.SendMessage(TB_SETTOOLTIPS, (WPARAM)(7), (LPARAM)(m_ToolTipsTable)))
	{
		TRACE0("Failed to create CommandBar\n");
		return -1;      // fail to create
	}

	m_wndCommandBar.SetBarStyle(m_wndCommandBar.GetBarStyle() |
		CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_FIXED);

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs


	return TRUE;
}



LPTSTR CMainFrame::MakeString(UINT stringID)
{
	TCHAR buffer[255];
	TCHAR* theString;

	::LoadString(AfxGetInstanceHandle(), stringID, buffer, 255);
	theString = new TCHAR[lstrlen(buffer) + 1];
	lstrcpy(theString, buffer);
	return theString;
}   

 
/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers

void CMainFrame::OnUpdateNewCall(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
}

void CMainFrame::OnUpdateNewCustomer(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
}
