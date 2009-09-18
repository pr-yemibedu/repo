#if !defined(AFX_CUSTOMERINFORMATION_H__A95E854B_514A_48C3_9867_FAB7463C4667__INCLUDED_)
#define AFX_CUSTOMERINFORMATION_H__A95E854B_514A_48C3_9867_FAB7463C4667__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CustomerInformation.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCustomerInformation dialog

class CCustomerInformation : public CDialog
{
// Construction
public:
	CCustomerInformation(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCustomerInformation)
	enum { IDD = IDD_CUSTOMER };
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCustomerInformation)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCustomerInformation)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CUSTOMERINFORMATION_H__A95E854B_514A_48C3_9867_FAB7463C4667__INCLUDED_)
