#if !defined(AFX_SAMPLESIGNATURE_H__182F6DBF_1A47_4910_B46A_3064668CBAE8__INCLUDED_)
#define AFX_SAMPLESIGNATURE_H__182F6DBF_1A47_4910_B46A_3064668CBAE8__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// SampleSignature.h : header file
//

#include "SignatureWnd.h"

/////////////////////////////////////////////////////////////////////////////
// CSampleSignature dialog

class CSampleSignature : public CDialog
{
// Construction
public:
	CSampleSignature(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSampleSignature)
	enum { IDD = IDD_SIGNATURE };
	CStatic	m_ctlClear;
	CListCtrl	m_ctlSamples;
	//}}AFX_DATA

	CSignatureWnd m_ctlSignature;


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSampleSignature)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSampleSignature)
	virtual BOOL OnInitDialog();
	afx_msg void OnClear();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SAMPLESIGNATURE_H__182F6DBF_1A47_4910_B46A_3064668CBAE8__INCLUDED_)
