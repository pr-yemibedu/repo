#if !defined(AFX_CALLSAMPLES_H__1F27E3DC_D760_463E_B7F9_9E765B53167F__INCLUDED_)
#define AFX_CALLSAMPLES_H__1F27E3DC_D760_463E_B7F9_9E765B53167F__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallSamples.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallSamples dialog

class CCallSamples : public CDialog
{
// Construction
public:
	CCallSamples(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallSamples)
	enum { IDD = IDD_CALL_SAMPLES };
	CListCtrl	m_ctlCallSamples;
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallDate;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA

	CString m_strCallSamples;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallSamples)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallSamples)
	afx_msg void OnAddSample();
	virtual BOOL OnInitDialog();
	afx_msg void OnDeleteSample();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnCallDate();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLSAMPLES_H__1F27E3DC_D760_463E_B7F9_9E765B53167F__INCLUDED_)
