// DemoDialogDlg.h : header file
//

#if !defined(AFX_DEMODIALOGDLG_H__279811DC_0C89_4705_AEF5_34AB09A4A4F2__INCLUDED_)
#define AFX_DEMODIALOGDLG_H__279811DC_0C89_4705_AEF5_34AB09A4A4F2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDemoDialogDlg dialog

class CDemoDialogDlg : public CDialog
{
// Construction
public:
	CDemoDialogDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDemoDialogDlg)
	enum { IDD = IDD_DEMODIALOG_DIALOG };
	double	m_dblOperand1;
	double	m_dblOperand2;
	double	m_dblResult;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDemoDialogDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDemoDialogDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButtonCalculate();
	afx_msg void OnButtonAddMessage();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEMODIALOGDLG_H__279811DC_0C89_4705_AEF5_34AB09A4A4F2__INCLUDED_)
