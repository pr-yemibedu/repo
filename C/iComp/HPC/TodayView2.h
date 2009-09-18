#if !defined(AFX_TODAYVIEW2_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
#define AFX_TODAYVIEW2_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// TodayView2.h : header file
//

include "HtmlWnd.h"

/////////////////////////////////////////////////////////////////////////////
// CTodayView2 dialog

class CTodayView2 : public CDialog
{
// Construction
public:
	CTodayView2(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CTodayView2)
	enum { IDD = IDD_TODAY_VIEW };
	CDateTimeCtrl	m_ctlCallDate;
	//}}AFX_DATA

	CHtmlWnd m_ctlHtml;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTodayView2)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CTodayView2)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TODAYVIEW2_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
