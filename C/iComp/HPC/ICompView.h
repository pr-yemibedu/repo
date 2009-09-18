// ICompView.h : interface of the CICompView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ICOMPVIEW_H__3CF92E52_A1F0_408B_A7A6_5C3D252519C2__INCLUDED_)
#define AFX_ICOMPVIEW_H__3CF92E52_A1F0_408B_A7A6_5C3D252519C2__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

class CICompView : public CView
{
protected: // create from serialization only
	CICompView();
	DECLARE_DYNCREATE(CICompView)

// Attributes
public:
	CICompDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CICompView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CICompView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CICompView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in ICompView.cpp
inline CICompDoc* CICompView::GetDocument()
   { return (CICompDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ICOMPVIEW_H__3CF92E52_A1F0_408B_A7A6_5C3D252519C2__INCLUDED_)
