// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "IComp.h"

#include "MainFrm.h"

#include "ICompDoc.h"
#include "ICompView.h"
#include "ViewBar.h"
#include "TodayView.h"
#include "CalendarView.h"
#include "CustomerView.h"
#include "ReportView.h"
#include "CallDlg.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

// Array tbSTDButton contains relevant buttons of bitmap IDB_STD_SMALL_COLOR
static TBBUTTON tbButtons[] = {
	{0, 0,				TBSTATE_ENABLED, TBSTYLE_SEP,    0, 0, 0,  0},  
	{0,	ID_GO_BACK,		TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{1, ID_GO_FORWARD,	TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{0, 0,				TBSTATE_ENABLED, TBSTYLE_SEP,    0, 0, 0,  0},
	{2, ID_GO_CUSTOMERS,TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{3, ID_CALL,		TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{4, ID_GO_CALENDAR,	TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{0, 0,				TBSTATE_ENABLED, TBSTYLE_SEP,    0, 0, 0,  0},
	{5, ID_VIEW_GRID,	TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{6, ID_APP_ABOUT,	TBSTATE_ENABLED, TBSTYLE_BUTTON, 0, 0, 0, -1},
	{0, 0,				TBSTATE_ENABLED, TBSTYLE_SEP,    0, 0, 0,  0}
};
const int nNumButtons = sizeof(tbButtons)/sizeof(TBBUTTON);
const int nNumImages = 7;
const DWORD dwAdornmentFlags = 0; // exit button

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_COMMAND(ID_CALL, OnCall)
	ON_UPDATE_COMMAND_UI(ID_CALL, OnUpdateCall)
	ON_COMMAND(ID_GO_BACK, OnGoBack)
	ON_UPDATE_COMMAND_UI(ID_GO_BACK, OnUpdateGoBack)
	ON_COMMAND(ID_GO_FORWARD, OnGoForward)
	ON_UPDATE_COMMAND_UI(ID_GO_FORWARD, OnUpdateGoForward)
	ON_WM_CLOSE()
	ON_COMMAND(ID_GO_CALENDAR, OnGoCalendar)
	ON_COMMAND(ID_GO_CUSTOMERS, OnGoCustomers)
	ON_UPDATE_COMMAND_UI(ID_GO_CALENDAR, OnUpdateGoCalendar)
	ON_UPDATE_COMMAND_UI(ID_GO_CUSTOMERS, OnUpdateGoCustomers)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	m_posCurrent = NULL;
	
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;

/*
	if (!InsertButtons(tbButtons, nNumButtons, IDR_MAINFRAME, nNumImages) ||
	    !AddAdornments(dwAdornmentFlags))
	{
		TRACE0("Failed to add toolbar buttons\n");
		return -1;
	}
*/
	
	if (!m_wndMenuBar.CreateEx(this) ||
	    !m_wndMenuBar.InsertMenuBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create menubar\n");
		return -1;      // fail to create
	}

	if (!m_wndToolBar.CreateEx(this) ||
	    !m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create toolbar\n");
		return -1;      // fail to create
	}

	if (!m_wndReBar.Create(this) ||
	    !m_wndReBar.AddBar(&m_wndMenuBar, NULL, NULL, RBBS_NOGRIPPER) ||
	    !m_wndReBar.AddBar(&m_wndToolBar) ||
//	    !m_wndReBar.AddBar(&m_wndDlgBar) ||
	    !m_wndReBar.AddAdornments(dwAdornmentFlags))
	{
		TRACE0("Failed to create rebar\n");
		return -1;      // fail to create
	}

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;

	return TRUE;
}

CMainFrame* GetMainFrame(void)
{
	return (CMainFrame*)AfxGetApp()->m_pMainWnd;
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

BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) 
{
	if(!m_wndSplitter1.CreateStatic(this, 1, 2))
		return FALSE;

	if (!m_wndSplitter1.CreateView(0, 0, RUNTIME_CLASS(CViewBar), CSize(80, 100), pContext))
		return FALSE;

	if (!m_wndSplitter1.AddView(0, 1, RUNTIME_CLASS(CTodayView), pContext) ||
		!m_wndSplitter1.AddView(0, 1, RUNTIME_CLASS(CCalendarView), pContext) ||
		!m_wndSplitter1.AddView(0, 1, RUNTIME_CLASS(CCustomerView), pContext) ||
		!m_wndSplitter1.AddView(0, 1, RUNTIME_CLASS(CReportView), pContext))
		return FALSE;

	m_wndSplitter1.EnableSetActiveAfterActivate(TRUE);

	ActivateView(vwToday);
	return TRUE;
}

void CMainFrame::ActivateView(int nPane)
{
	m_wndSplitter1.ActivateView(nPane);
	m_wndSplitter1.SetActivePane(0, 1);
	m_posCurrent = m_ViewList.AddTail(nPane);

	int nTab = 0;
	long lCustNmbr = 0;

	switch (nPane)
	{
		case vwCustomers:
		{
//			HideCalendarButtons();
//			HideHomeButton();
//			CCustomersView* pCustomerView = STATIC_DOWNCAST(CCustomersView, m_wndSplitter1.GetPaneInfo(nPane)->m_pPaneWnd);
//			nTab = pCustomerView->m_pCustPropSheet->GetActiveIndex();
			break;
		}

		case vwCalendar:
//			ShowCalendarButtons();
//			HideHomeButton();
			break;

		case vwToday:
		case vwReports:
//			HideCalendarButtons();
//			ShowHomeButton();
			break;
	}
}

void CMainFrame::OnCall() 
{
	CCallDlg dlg;	
	dlg.DoModal();
}

void CMainFrame::OnUpdateCall(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
}

void CMainFrame::OnGoBack() 
{
	CWaitCursor wait;

	if (ValidateView() == FALSE)
		return;

	m_ViewList.GetPrev(m_posCurrent);

	int nPane = m_ViewList.GetAt(m_posCurrent);
	m_wndSplitter1.ActivateView(nPane);
}

void CMainFrame::OnUpdateGoBack(CCmdUI* pCmdUI) 
{
	if (m_ViewList.IsEmpty() ||
		m_posCurrent == m_ViewList.GetHeadPosition())
		pCmdUI->Enable(FALSE);
	else
		pCmdUI->Enable();
}

void CMainFrame::OnGoForward() 
{
	CWaitCursor wait;

	if (ValidateView() == FALSE)
		return;

	m_ViewList.GetNext(m_posCurrent);
	int nPane = m_ViewList.GetAt(m_posCurrent);
	m_wndSplitter1.ActivateView(nPane);
}

void CMainFrame::OnUpdateGoForward(CCmdUI* pCmdUI) 
{
	if (m_ViewList.IsEmpty() ||
		m_posCurrent == m_ViewList.GetTailPosition())
		pCmdUI->Enable(FALSE);
	else
		pCmdUI->Enable();
}

BOOL CMainFrame::ValidateView()
{
	if (m_posCurrent == NULL)
		return TRUE;

	int nPane = m_ViewList.GetAt(m_posCurrent);
	CView* pView = STATIC_DOWNCAST(CView, m_wndSplitter1.GetPaneInfo(nPane)->m_pPaneWnd);

	if (pView->UpdateData(TRUE) == FALSE)
		return FALSE;

	return TRUE;
}

void CMainFrame::OnClose() 
{
	if (ValidateView() == FALSE)
		return;
	
	CFrameWnd::OnClose();
}

void CMainFrame::OnGoCustomers()
{
	CWaitCursor wait;

	if (ValidateView() == FALSE)
		return;

	ActivateView(vwCustomers);
}

void CMainFrame::OnGoCalendar()
{
	CWaitCursor wait;

	if (ValidateView() == FALSE)
		return;
 
	ActivateView(vwCalendar);
}

void CMainFrame::OnUpdateGoCalendar(CCmdUI* pCmdUI) 
{
	CView *pView = GetActiveView();
	if (pView != NULL && pView->IsKindOf (RUNTIME_CLASS(CCalendarView)))
		pCmdUI->SetCheck(1);
	else
		pCmdUI->SetCheck(0);	
}

void CMainFrame::OnUpdateGoCustomers(CCmdUI* pCmdUI) 
{
	CView *pView = GetActiveView();
	if (pView != NULL && pView->IsKindOf (RUNTIME_CLASS(CCustomerView)))
		pCmdUI->SetCheck(1);
	else
		pCmdUI->SetCheck(0);	
}
