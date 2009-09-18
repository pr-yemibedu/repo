#if !defined(AFX_PROFILEDLG_H__9B3B6978_1801_45BF_8283_B332456BA1A5__INCLUDED_)
#define AFX_PROFILEDLG_H__9B3B6978_1801_45BF_8283_B332456BA1A5__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// ProfileDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CProfileDlg dialog

class CProfileDlg : public CDialog
{
// Construction
public:
	CProfileDlg(CWnd* pParent = NULL);   // standard constructor
	CHtmlWnd m_ctlHtml;
	void LoadBrowseFile(LPTSTR pszBrowsFile);


// Dialog Data
	//{{AFX_DATA(CProfileDlg)
	enum { IDD = IDD_PROFILE };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProfileDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CProfileDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	afx_msg LRESULT OnAddImage(WPARAM wParam, LPARAM lParam);
	afx_msg LRESULT OnPlaySound(WPARAM wParam, LPARAM lParam);
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROFILEDLG_H__9B3B6978_1801_45BF_8283_B332456BA1A5__INCLUDED_)
