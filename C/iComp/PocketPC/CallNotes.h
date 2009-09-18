#if !defined(AFX_CALLNOTES_H__3DFEC130_504F_457F_87B0_D549026EE2CC__INCLUDED_)
#define AFX_CALLNOTES_H__3DFEC130_504F_457F_87B0_D549026EE2CC__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallNotes.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallNotes dialog

class CCallNotes : public CDialog
{
// Construction
public:
	CCallNotes(CWnd* pParent = NULL);   // standard constructor
	HWND m_hwndVoice;

// Dialog Data
	//{{AFX_DATA(CCallNotes)
	enum { IDD = IDD_CALL_NOTES };
	CString	m_strCallNotes;
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallDate;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallNotes)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallNotes)
	afx_msg void OnKillfocusCallNotes();
	afx_msg void OnSetfocusCallNotes();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	virtual BOOL OnInitDialog();
	afx_msg void OnVoice();
	afx_msg void OnCallDate();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLNOTES_H__3DFEC130_504F_457F_87B0_D549026EE2CC__INCLUDED_)
