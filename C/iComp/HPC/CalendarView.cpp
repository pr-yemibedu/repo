// CalendarView.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CalendarView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCalendarView

IMPLEMENT_DYNCREATE(CCalendarView, CView)

CCalendarView::CCalendarView()
{
}

CCalendarView::~CCalendarView()
{
}


BEGIN_MESSAGE_MAP(CCalendarView, CView)
	//{{AFX_MSG_MAP(CCalendarView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCalendarView drawing

void CCalendarView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	CString strText = "Calendar View";
	CRect rect(20, 20 , 150, 150);
	pDC->DrawText(strText, rect, DT_SINGLELINE);
}

/////////////////////////////////////////////////////////////////////////////
// CCalendarView diagnostics

#ifdef _DEBUG
void CCalendarView::AssertValid() const
{
	CView::AssertValid();
}

void CCalendarView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CCalendarView message handlers
