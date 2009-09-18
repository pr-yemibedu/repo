#if !defined(AFX_FORMNUMBERDLG_H__BA3843A2_1076_42D9_B57E_4CB42DF318C8__INCLUDED_)
#define AFX_FORMNUMBERDLG_H__BA3843A2_1076_42D9_B57E_4CB42DF318C8__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// FormNumberDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CFormNumberDlg dialog

class CFormNumberDlg : public CDialog
{
// Construction
public:
	CFormNumberDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CFormNumberDlg)
	enum { IDD = IDD_FORM_NUMBER_DLG };
	CEdit	m_ctlFormNumber;
	CEdit	m_ctlConfirmFormNumber;
	CComboBox	m_ctlCallDate;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFormNumberDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CFormNumberDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FORMNUMBERDLG_H__BA3843A2_1076_42D9_B57E_4CB42DF318C8__INCLUDED_)
