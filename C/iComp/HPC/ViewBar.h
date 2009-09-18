#if !defined(AFX_VIEWBAR_H__D21685F5_3BCC_46F5_A83D_3AE5711CC825__INCLUDED_)
#define AFX_VIEWBAR_H__D21685F5_3BCC_46F5_A83D_3AE5711CC825__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// ViewBar.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CViewBar view

class CViewBar : public CListView
{
protected:
	CViewBar();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CViewBar)

// Attributes
public:
	CImageList m_imageViews;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CViewBar)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CViewBar();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CViewBar)
	afx_msg BOOL OnEraseBkgnd(CDC* pDC);
	afx_msg void OnItemchanged(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_VIEWBAR_H__D21685F5_3BCC_46F5_A83D_3AE5711CC825__INCLUDED_)
