#if !defined(AFX_ADDSAMPLE_H__6C612900_37EE_4FBF_A225_42872AC0CA71__INCLUDED_)
#define AFX_ADDSAMPLE_H__6C612900_37EE_4FBF_A225_42872AC0CA71__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// AddSample.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CAddSample dialog

class CAddSample : public CDialog
{
// Construction
public:
	CAddSample(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CAddSample)
	enum { IDD = IDD_ADD_SAMPLE };
	CComboBox	m_ctlSampleLot;
	CComboBox	m_ctlSampleQty;
	CComboBox	m_ctlSampleList;
	CString	m_strSampleDesc;
	CString	m_strSampleLot;
	CString	m_strSampleQty;
	//}}AFX_DATA

	void LoadSamplesList();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAddSample)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	// Generated message map functions
	//{{AFX_MSG(CAddSample)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ADDSAMPLE_H__6C612900_37EE_4FBF_A225_42872AC0CA71__INCLUDED_)
