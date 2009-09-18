// ViewBar.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "ViewBar.h"
#include "MainFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CViewBar

IMPLEMENT_DYNCREATE(CViewBar, CListView)

CViewBar::CViewBar()
{
}

CViewBar::~CViewBar()
{
}


BEGIN_MESSAGE_MAP(CViewBar, CListView)
	//{{AFX_MSG_MAP(CViewBar)
	ON_WM_ERASEBKGND()
	ON_NOTIFY_REFLECT(LVN_ITEMCHANGED, OnItemchanged)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CViewBar drawing

void CViewBar::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CViewBar diagnostics

#ifdef _DEBUG
void CViewBar::AssertValid() const
{
	CListView::AssertValid();
}

void CViewBar::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CViewBar message handlers

void CViewBar::OnInitialUpdate() 
{
	CListView::OnInitialUpdate();
	m_imageViews.Create(IDB_VIEWS, 32, 4, COLORREF(RGB(0,0,0)));
	GetListCtrl().SetImageList(&m_imageViews, LVSIL_NORMAL);
	GetListCtrl().ModifyStyle(LVS_TYPEMASK, LVS_ICON); 

	GetListCtrl().InsertItem(0, TEXT("Today"), 0);
	GetListCtrl().InsertItem(1, TEXT("Calendar"), 1);
	GetListCtrl().InsertItem(2, TEXT("Customers"), 2);
	GetListCtrl().InsertItem(3, TEXT("Reports"), 3);
	GetListCtrl().SetTextColor(COLORREF(RGB(255,255,255)));
	GetListCtrl().SetTextBkColor(GetSysColor(COLOR_3DSHADOW));
}

void CViewBar::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	
}

BOOL CViewBar::OnEraseBkgnd(CDC* pDC) 
{
	CRect rect;
	GetClientRect(&rect);
	pDC->FillSolidRect(rect, GetSysColor(COLOR_3DSHADOW)); 
	return TRUE;
}

void CViewBar::OnItemchanged(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_LISTVIEW* pNMListView = (NM_LISTVIEW*)pNMHDR;

	*pResult = 0;
	
	if (GetListCtrl().GetSelectedCount() == 0)
		return;

	// only interested in new item selected events
	if (pNMListView->uNewState != 3)
		return;

	GetMainFrame()->ActivateView(pNMListView->iItem);
}

