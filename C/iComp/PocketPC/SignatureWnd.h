#if !defined(AFX_SignatureWnd_H__9E5649E3_3705_11D4_BC9D_0001FA375ADA__INCLUDED_)
#define AFX_SignatureWnd_H__9E5649E3_3705_11D4_BC9D_0001FA375ADA__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// SignatureWnd.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CSignatureWnd window

class CSignatureWnd : public CWnd
{
// Construction
public:
	CSignatureWnd();

// Attributes
public:
	CPoint m_line[2], m_SaveLine[1000];
	int m_nPoint;
	CPen m_Pen;

// Operations
public:
	void Reset();
	BOOL Load(LPCTSTR lpszVectors);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSignatureWnd)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CSignatureWnd();

	// Generated message map functions
protected:
	//{{AFX_MSG(CSignatureWnd)
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnPaint();
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SignatureWnd_H__9E5649E3_3705_11D4_BC9D_0001FA375ADA__INCLUDED_)
