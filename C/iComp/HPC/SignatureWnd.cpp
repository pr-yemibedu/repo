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

CPoint ptCenter;

#define TO_RADS(deg) (deg / 180.0) * 3.1415927

CPoint rotate(const CPoint& pt, const CPoint& ptCenter, double angle)
{
	CPoint ptNew;
	ptNew.x = (pt.x - ptCenter.x) * cos(TO_RADS(angle)) - (pt.y - ptCenter.y) * sin(TO_RADS(angle)) + ptCenter.x;
	ptNew.y = (pt.x - ptCenter.x) * sin(TO_RADS(angle)) + (pt.y - ptCenter.y) * cos(TO_RADS(angle)) + ptCenter.y;
	return ptNew;
}

/////////////////////////////////////////////////////////////////////////////
// CSignatureWnd

CSignatureWnd::CSignatureWnd()
{
	m_nPoint = 0;
	m_nState = 0;
	m_bUpsideDown = FALSE;
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
	if (m_Bitmap.GetSafeHandle())
		return;

	// Check that the LButton is down
	if (nFlags & MK_LBUTTON)
	{
		CDC* pDC = GetDC();
		CPen* p = pDC->SelectObject(&m_Pen);

		m_line[1] = point;
		if (m_line[0] != m_line[1])
		{
			pDC->Polyline(m_line, 2);
			if (m_bUpsideDown)
				m_SaveLine[m_nPoint] = rotate(point, ptCenter, 180.0);
			else
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
	if (m_Bitmap.GetSafeHandle())
	{
		m_Bitmap.DeleteObject();
		Invalidate();
		return;
	}

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
	if (m_Bitmap.GetSafeHandle())
		return;

	m_line[0] = point;
	if (m_bUpsideDown)
		m_SaveLine[m_nPoint] = rotate(point, ptCenter, 180.0);
	else
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
	ptCenter = rect.CenterPoint();
	
	CPaintDC dc(this); // device context for painting

	if (m_Bitmap.GetSafeHandle())
	{
		CDC dc2;
		dc2.CreateCompatibleDC(&dc);
		CBitmap* p;

		if (m_bUpsideDown)
			p = dc2.SelectObject(&m_BitmapFlip);
		else
			p = dc2.SelectObject(&m_Bitmap);

		BITMAP bm;
		m_Bitmap.GetBitmap(&bm);
		dc.BitBlt(0, 0, bm.bmWidth, bm.bmHeight, &dc2, 0, 0, SRCCOPY);
		dc2.SelectObject(p);
		return;
	}

	CPen* p = dc.SelectObject(&m_Pen);

	int nMargin = rect.Width() / 20;

	CPoint pt = ptCenter;
	int nWidth = 12;
	int nHeight = nWidth * 1.5;
	CRect rectX(0, 0, nWidth, nHeight);

	if (m_bUpsideDown)
	{
		pt.x = rect.Width() - rectX.Width() - nMargin;
		rectX.OffsetRect(pt.x, pt.y);
		pt = rectX.TopLeft();
		dc.MoveTo(pt);
		pt = rectX.BottomRight();
		dc.LineTo(pt);
		pt.x -= rectX.Width();
		dc.MoveTo(pt);
		pt = rectX.TopLeft();
		pt.x += rectX.Width();
		dc.LineTo(pt);
		pt = rectX.TopLeft();
		pt.Offset(-3, -3);
		dc.MoveTo(pt);
		pt.x = nMargin;
		dc.LineTo(pt);

		if (!m_nPoint)
			return;

		int i = 0;
		CPoint pZero(0,0);
		CPoint pt[1000];

		while (i < m_nPoint)
		{
			if (m_SaveLine[i] != pZero)
				pt[i] = rotate(m_SaveLine[i], ptCenter, 180.0);
			else
				pt[i] = m_SaveLine[i];
			i++;
		}
		i = 0;
		while (i < m_nPoint)
		{
			int k = 0, m = i;
			while (pt[i] != pZero && i < m_nPoint)
			{
				i++;
				k++;
			}
			i++;
			dc.Polyline(&(pt[m]), k);
		}
	}
	else
	{
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
	}

	dc.SelectObject(p);
}

BOOL CSignatureWnd::OnEraseBkgnd(CDC* pDC) 
{
	if (m_Bitmap.GetSafeHandle())
		return TRUE;

	CRect rect;
	GetClientRect(&rect);
	pDC->FillSolidRect(&rect, RGB(255, 255, 255));
	return TRUE;
}

HBITMAP CSignatureWnd::GetBitmap()
{
/*
	CDC* pDC = GetDC();
	CDC dc;
	dc.CreateCompatibleDC(pDC);
	CRect rect;
	GetClientRect(&rect);

//	while (rect.Width() % 4)
//		rect.right++;	

	bitmap.DeleteObject();
	bitmap.CreateCompatibleBitmap(&dc, rect.Width(), rect.Height());
	CBitmap* p = dc.SelectObject(&bitmap);

	OnEraseBkgnd(&dc);

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
	return (HBITMAP)bitmap;
*/
	return NULL;

}


/*
BOOL CSignatureWnd::Load(LPCTSTR lpszPoints)
{
	int x = wcslen(lpszPoints);


	wchar_t* buf = new wchar_t[wcslen(lpszPoints) + 1];
	wcscpy(buf, lpszPoints);
	
	wchar_t* lpszX = wcstok(buf, L",");
	wchar_t* lpszY = wcstok(NULL, L",");
	
	for (m_nPoint = 0; lpszX && lpszY && m_nPoint < 1000; m_nPoint++)
	{
		m_SaveLine[m_nPoint].x = _wtoi(lpszX);
		m_SaveLine[m_nPoint].y = _wtoi(lpszY);
		lpszX = wcstok(NULL, L",");
		lpszY = wcstok(NULL, L",");
	}

	delete buf;
	CRect rect;
	GetClientRect(&rect);
	InvalidateRect(rect);
	return TRUE;
}

CString CSignatureWnd::Save(void)
{
	CString strPoints;
	CString strPoint;

	for (int i = 0; i < m_nPoint; i++)
	{
		strPoint.Format(L"%d,%d", m_SaveLine[i].x, m_SaveLine[i].y);
		if (strPoints.GetLength() > 0)
			strPoints += L",";
		
		strPoints += strPoint;
	}

	return strPoints;
}
*/

void CSignatureWnd::SetBitmaps(UINT nIDResource, UINT nIDResourceFlip)
{
	m_Bitmap.LoadBitmap(nIDResource);
	m_BitmapFlip.LoadBitmap(nIDResourceFlip);
	InvalidateRect(NULL);
}
