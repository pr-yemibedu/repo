#if !defined(AFX_ADDCUSTOMERDLG_H__290162A5_CF60_4219_BD3A_3DDE1B45A05E__INCLUDED_)
#define AFX_ADDCUSTOMERDLG_H__290162A5_CF60_4219_BD3A_3DDE1B45A05E__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// AddCustomerDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CAddCustomerDlg dialog

class CAddCustomerDlg : public CDialog
{
// Construction
public:
	CAddCustomerDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CAddCustomerDlg)
	enum { IDD = IDD_ADD_CUSTOMER };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAddCustomerDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CAddCustomerDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ADDCUSTOMERDLG_H__290162A5_CF60_4219_BD3A_3DDE1B45A05E__INCLUDED_)
