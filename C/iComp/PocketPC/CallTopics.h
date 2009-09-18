#if !defined(AFX_CALLTOPICS_H__F4C820E3_0C7D_4EB8_946D_0997A4450D7A__INCLUDED_)
#define AFX_CALLTOPICS_H__F4C820E3_0C7D_4EB8_946D_0997A4450D7A__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallTopics.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallTopics dialog

class CCallTopics : public CDialog
{
// Construction
public:
	CCallTopics(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallTopics)
	enum { IDD = IDD_CALL_TOPICS };
	CListCtrl	m_ctlCallTopics;
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallDate;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA

	void LoadTopicsList();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallTopics)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallTopics)
	virtual BOOL OnInitDialog();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnCallDate();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLTOPICS_H__F4C820E3_0C7D_4EB8_946D_0997A4450D7A__INCLUDED_)
