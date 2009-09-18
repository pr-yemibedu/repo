// TipCalcDlg.h : header file
//

#if !defined(AFX_TIPCALCDLG_H__A877602B_F15E_11D4_BBC7_005004CA19A5__INCLUDED_)
#define AFX_TIPCALCDLG_H__A877602B_F15E_11D4_BBC7_005004CA19A5__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

/////////////////////////////////////////////////////////////////////////////
// CTipCalcDlg dialog

class CTipCalcDlg : public CDialog
{
// Construction
public:
	CTipCalcDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CTipCalcDlg)
	enum { IDD = IDD_TIPCALC_DIALOG };
	float	m_fCost;
	CString	m_strTip;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTipCalcDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CTipCalcDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnHelpInfo();
	afx_msg void OnCalc();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TIPCALCDLG_H__A877602B_F15E_11D4_BBC7_005004CA19A5__INCLUDED_)
