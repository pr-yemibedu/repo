#if !defined(AFX_CALLPIN_H__03CFF196_93AB_456B_8C99_2E5707368463__INCLUDED_)
#define AFX_CALLPIN_H__03CFF196_93AB_456B_8C99_2E5707368463__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallPIN.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallPIN dialog

class CCallPIN : public CDialog
{
// Construction
public:
	CCallPIN(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallPIN)
	enum { IDD = IDD_CALL_PIN };
	CEdit	m_ctlCallPIN;
	CString	m_strCallPIN;
	//}}AFX_DATA

	void OnPush(int nDigit);


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallPIN)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallPIN)
	afx_msg void OnKillfocusCallPin();
	afx_msg void OnSetfocusCallPin();
	afx_msg void OnPin1();
	afx_msg void OnPin2();
	afx_msg void OnPin3();
	afx_msg void OnPin4();
	afx_msg void OnPin5();
	afx_msg void OnPin6();
	afx_msg void OnPin7();
	afx_msg void OnPin8();
	afx_msg void OnPin9();
	afx_msg void OnPin0();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLPIN_H__03CFF196_93AB_456B_8C99_2E5707368463__INCLUDED_)
