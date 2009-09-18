#if !defined(AFX_HTMLWND_H__5E28B396_B90A_435A_93C2_21244B3CF712__INCLUDED_)
#define AFX_HTMLWND_H__5E28B396_B90A_435A_93C2_21244B3CF712__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// HtmlWnd.h : header file
//

extern "C"
{
#include <htmlctrl.h>
}

/////////////////////////////////////////////////////////////////////////////
// CHtmlWnd window

class CHtmlWnd : public CWnd
{
// Construction
public:
	CHtmlWnd();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CHtmlWnd)
	protected:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CHtmlWnd();
	void SetHtml(LPCTSTR  lpszHtml);

	// Generated message map functions
protected:
	//{{AFX_MSG(CHtmlWnd)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_HTMLWND_H__5E28B396_B90A_435A_93C2_21244B3CF712__INCLUDED_)
