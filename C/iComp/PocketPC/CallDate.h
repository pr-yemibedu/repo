#if !defined(AFX_CALLDATE_H__21172B61_DE5D_430D_B5AD_C224D8C47E01__INCLUDED_)
#define AFX_CALLDATE_H__21172B61_DE5D_430D_B5AD_C224D8C47E01__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallDate.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallDate dialog

class CCallDate : public CDialog
{
// Construction
public:
	CCallDate(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallDate)
	enum { IDD = IDD_CALL_TIME };
	CComboBox	m_ctlCallTime;
	CComboBox	m_ctlCallDuration;
	CString	m_strCallDuration;
	CString	m_strCallTime;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallDate)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallDate)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLDATE_H__21172B61_DE5D_430D_B5AD_C224D8C47E01__INCLUDED_)
