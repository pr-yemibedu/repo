// ReportView.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "ReportView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CReportView

IMPLEMENT_DYNCREATE(CReportView, CView)

CReportView::CReportView()
{
}

CReportView::~CReportView()
{
}


BEGIN_MESSAGE_MAP(CReportView, CView)
	//{{AFX_MSG_MAP(CReportView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CReportView drawing

void CReportView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	CString strText = "Report View";
	CRect rect(20, 20 , 150, 150);
	pDC->DrawText(strText, rect, DT_SINGLELINE);
}

/////////////////////////////////////////////////////////////////////////////
// CReportView diagnostics

#ifdef _DEBUG
void CReportView::AssertValid() const
{
	CView::AssertValid();
}

void CReportView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CReportView message handlers
