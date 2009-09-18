#if !defined(AFX_CALLSAMPLESIGNATURE_H__FD51AE4A_868F_4B5F_AF58_210689CB7B14__INCLUDED_)
#define AFX_CALLSAMPLESIGNATURE_H__FD51AE4A_868F_4B5F_AF58_210689CB7B14__INCLUDED_

#include "SampleSignature.h"

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallSampleSignature.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallSampleSignature dialog

class CCallSampleSignature : public CDialog
{
// Construction
public:
	CCallSampleSignature(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallSampleSignature)
	enum { IDD = IDD_CALL_SAMPLE_SIGNATURE };
	CStatic	m_ctlDone;
	CStatic	m_ctlClear;
	CListCtrl	m_ctlSampleList;
	CStatic	m_ctlSignatureBitmap;
	CString	m_strCallAddress;
	CString	m_strCallCSZ;
	CString	m_strCallLicense;
	CString	m_strCallName;
	//}}AFX_DATA

	enum { stateBitmap1, stateBitmap2, stateLegal, stateSignature };
	int m_nState;
	CSignatureWnd m_ctlSignature;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallSampleSignature)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallSampleSignature)
	afx_msg void OnSignatureBitmap();
	virtual BOOL OnInitDialog();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnDestroy();
	afx_msg void OnClear();
	afx_msg void OnDone();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLSAMPLESIGNATURE_H__FD51AE4A_868F_4B5F_AF58_210689CB7B14__INCLUDED_)
