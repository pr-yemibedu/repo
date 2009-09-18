#if !defined(AFX_CALENDARVIEW_H__47B61E69_FC7D_4811_9441_644E6022DD8E__INCLUDED_)
#define AFX_CALENDARVIEW_H__47B61E69_FC7D_4811_9441_644E6022DD8E__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CalendarView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCalendarView view

class CCalendarView : public CView
{
protected:
	CCalendarView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CCalendarView)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCalendarView)
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CCalendarView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CCalendarView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALENDARVIEW_H__47B61E69_FC7D_4811_9441_644E6022DD8E__INCLUDED_)
