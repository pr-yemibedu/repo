// IniManipulationDlg.h : header file
//

#if !defined(AFX_INIMANIPULATIONDLG_H__8F16491F_D3DA_4B77_8863_322738F29479__INCLUDED_)
#define AFX_INIMANIPULATIONDLG_H__8F16491F_D3DA_4B77_8863_322738F29479__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CIniManipulationDlg dialog

class CIniManipulationDlg : public CDialog
{
// Construction
public:
	CIniManipulationDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CIniManipulationDlg)
	enum { IDD = IDD_INIMANIPULATION_DIALOG };
	CString	m_strItem;
	CString	m_strSection;
	CString	m_strValue;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CIniManipulationDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CIniManipulationDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButtonUpdate();
	afx_msg void OnButtonLoad();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_INIMANIPULATIONDLG_H__8F16491F_D3DA_4B77_8863_322738F29479__INCLUDED_)
