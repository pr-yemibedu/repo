#if !defined(AFX_CALLDETAILS_H__A9F3BCBE_3C10_45CF_BEA2_AFF4D0C769F6__INCLUDED_)
#define AFX_CALLDETAILS_H__A9F3BCBE_3C10_45CF_BEA2_AFF4D0C769F6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallDetails.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallDetails dialog

class CCallDetails : public CDialog
{
// Construction
public:
	CCallDetails(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallDetails)
	enum { IDD = IDD_CALL_DETAILS };
	CListCtrl	m_ctlCallDetails;
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallDate;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA

	void LoadDetailsList();


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallDetails)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallDetails)
	virtual BOOL OnInitDialog();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnCallDate();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLDETAILS_H__A9F3BCBE_3C10_45CF_BEA2_AFF4D0C769F6__INCLUDED_)
