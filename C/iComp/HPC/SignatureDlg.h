#if !defined(AFX_SIGNATUREDLG_H__FEE5AE5B_A7EF_4FDC_A3D0_394BE7900EFF__INCLUDED_)
#define AFX_SIGNATUREDLG_H__FEE5AE5B_A7EF_4FDC_A3D0_394BE7900EFF__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// SignatureDlg.h : header file
//

#include "SignatureWnd.h"

/////////////////////////////////////////////////////////////////////////////
// CSignatureDlg dialog

class CSignatureDlg : public CDialog
{
// Construction
public:
	CSignatureDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSignatureDlg)
	enum { IDD = IDD_SIGNATURE_DIALOG };
	CButton	m_ctlReceiptRequested;
	CStatic	m_ctlSampleInstructions;
	CButton	m_ctlFlip;
	CListBox	m_ctlSamples;
	CStatic	m_ctlLicense;
	CComboBox	m_ctlLocation;
	CStatic	m_ctlLogo;
	//}}AFX_DATA

	CSignatureWnd m_ctlSignature;
	CString m_strSave;
	CBitmap m_bmFlip;
	CBitmap m_bmFlipFlip;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSignatureDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSignatureDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSignature();
	afx_msg void OnSignatureClear();
	afx_msg void OnSignatureFlip();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnPaint();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SIGNATUREDLG_H__FEE5AE5B_A7EF_4FDC_A3D0_394BE7900EFF__INCLUDED_)
