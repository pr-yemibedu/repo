#if !defined(AFX_CONTACTLIST_H__C694CC9B_851D_4925_A5F1_955E78BE3407__INCLUDED_)
#define AFX_CONTACTLIST_H__C694CC9B_851D_4925_A5F1_955E78BE3407__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// ContactList.h : header file
//

#include "ContactsList.h"

/////////////////////////////////////////////////////////////////////////////
// CContactList dialog

class CContactList : public CDialog
{
// Construction
public:
	CContactList(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CContactList)
	enum { IDD = IDD_CONTACTS };
	CContactsList	m_ctlCustList;
	CEdit	m_ctlFilter;
	//}}AFX_DATA


	void LoadCustList(const CString& strFilter);
	void LoadCustTable(void);
	void ImportCustFile(LPCTSTR lpszCustFile);
	void ImportTopicsFile(LPCTSTR lpszCustFile);
	void ImportDetailsFile(LPCTSTR lpszCustFile);
	void ImportSamplesFile(LPCTSTR lpszCustFile);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CContactList)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CContactList)
	virtual BOOL OnInitDialog();
	afx_msg void OnChangeFilter();
	afx_msg void OnDblclkCustList();
	afx_msg void OnSetfocusFilter();
	afx_msg void OnKillfocusFilter();
	afx_msg void OnNewCall();
	afx_msg void OnNewCustomer();
	afx_msg void OnUpdateNewCall(CCmdUI* pCmdUI);
	afx_msg void OnUpdateNewCustomer(CCmdUI* pCmdUI);
	afx_msg void OnViewProfile();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONTACTLIST_H__C694CC9B_851D_4925_A5F1_955E78BE3407__INCLUDED_)
