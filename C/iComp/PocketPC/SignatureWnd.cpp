// SignatureWnd.cpp : implementation file
//

#include "stdafx.h"
#include "SignatureWnd.h"
#include "resource.h"
#include "math.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSignatureWnd

CSignatureWnd::CSignatureWnd()
{
	m_nPoint = 0;
	m_Pen.CreatePen(PS_SOLID, 2, RGB(0,0,0));
}

CSignatureWnd::~CSignatureWnd()
{
}


BEGIN_MESSAGE_MAP(CSignatureWnd, CWnd)
	//{{AFX_MSG_MAP(CSignatureWnd)
	ON_WM_MOUSEMOVE()
	ON_WM_LBUTTONUP()
	ON_WM_LBUTTONDOWN()
	ON_WM_PAINT()
	ON_WM_ERASEBKGND()
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


void CSignatureWnd::Reset()
{
	m_nPoint = 0;

	CRect rect;
	GetClientRect(&rect);
	InvalidateRect(rect);
}

/////////////////////////////////////////////////////////////////////////////
// CSignatureWnd message handlers

void CSignatureWnd::OnMouseMove(UINT nFlags, CPoint point) 
{
	// Check that the LButton is down
	if (nFlags & MK_LBUTTON)
	{
		CDC* pDC = GetDC();
		CPen* p = pDC->SelectObject(&m_Pen);

		m_line[1] = point;
		if (m_line[0] != m_line[1])
		{
			pDC->Polyline(m_line, 2);
			m_SaveLine[m_nPoint] = point;

			m_nPoint++;
			if (m_nPoint >= 1000)
			{
				m_nPoint = 0;
			}
		}
		m_line[0] = m_line[1];
		pDC->SelectObject(p);
		ReleaseDC(pDC);
	}
	
	CWnd::OnMouseMove(nFlags, point);
}

void CSignatureWnd::OnLButtonUp(UINT nFlags, CPoint point) 
{
	CPoint pointTmp(0,0);

	m_SaveLine[m_nPoint] = pointTmp;
	m_nPoint++;
	if (m_nPoint >= 1000)
	{
		m_nPoint = 0;
	}
	
	CWnd::OnLButtonUp(nFlags, point);
}

void CSignatureWnd::OnLButtonDown(UINT nFlags, CPoint point) 
{
	m_line[0] = point;
	m_SaveLine[m_nPoint] = point;
	m_nPoint++;
	if (m_nPoint >= 1000)
	{
		m_nPoint = 0;
	}
	
	CWnd::OnLButtonDown(nFlags, point);
}

void CSignatureWnd::OnPaint() 
{
	CRect rect;
	GetClientRect(&rect);
	CPoint pt = rect.CenterPoint();
	
	CPaintDC dc(this); // device context for painting

	CPen* p = dc.SelectObject(&m_Pen);

	int nMargin = rect.Width() / 20;

	int nWidth = 12;
	int nHeight = nWidth * 1.5;
	CRect rectX(0, 0, nWidth, nHeight);

	pt.x = nMargin;
	rectX.OffsetRect(pt.x, pt.y - (nHeight / 1));
	pt = rectX.TopLeft();
	dc.MoveTo(pt);
	pt = rectX.BottomRight();
	dc.LineTo(pt);
	pt.x -= rectX.Width();
	dc.MoveTo(pt);
	pt = rectX.TopLeft();
	pt.x += rectX.Width();
	dc.LineTo(pt);
	pt = rectX.BottomRight();
	pt.Offset(3, 3);
	dc.MoveTo(pt);
	pt.x = rect.Width() - nMargin;
	dc.LineTo(pt);

	if (!m_nPoint)
		return;

	int i = 0;
	CPoint pZero(0,0);
	while (i < m_nPoint)
	{
		int k = 0, m = i;
		while (m_SaveLine[i] != pZero && i < m_nPoint)
		{
			i++;
			k++;
		}
		i++;
		dc.Polyline(&(m_SaveLine[m]), k);
	}

	dc.SelectObject(p);
}

BOOL CSignatureWnd::OnEraseBkgnd(CDC* pDC) 
{
	CRect rect;
	GetClientRect(&rect);
	pDC->FillSolidRect(&rect, RGB(255, 255, 255));
	return TRUE;
}


