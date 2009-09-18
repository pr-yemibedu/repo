// ICompView.cpp : implementation of the CICompView class
//

#include "stdafx.h"
#include "IComp.h"

#include "ICompDoc.h"
#include "ICompView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CICompView

IMPLEMENT_DYNCREATE(CICompView, CView)

BEGIN_MESSAGE_MAP(CICompView, CView)
	//{{AFX_MSG_MAP(CICompView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CICompView construction/destruction

CICompView::CICompView()
{
	// TODO: add construction code here

}

CICompView::~CICompView()
{
}

BOOL CICompView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CICompView drawing

void CICompView::OnDraw(CDC* pDC)
{
	CICompDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);

	// TODO: add draw code for native data here
}

/////////////////////////////////////////////////////////////////////////////
// CICompView diagnostics

#ifdef _DEBUG
void CICompView::AssertValid() const
{
	CView::AssertValid();
}

void CICompView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CICompDoc* CICompView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CICompDoc)));
	return (CICompDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CICompView message handlers
