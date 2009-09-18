// ContactsView.h : interface of the CContactsView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_CONTACTSVIEW_H__9FF096DC_FE49_49E7_8DEF_AE3338316983__INCLUDED_)
#define AFX_CONTACTSVIEW_H__9FF096DC_FE49_49E7_8DEF_AE3338316983__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "ContactsList.h"

class CContactsView : public CFormView
{
protected: // create from serialization only
	CContactsView();
	DECLARE_DYNCREATE(CContactsView)

public:
	//{{AFX_DATA(CContactsView)
	enum { IDD = IDD_CONTACTS_FORM };
	CEdit	m_ctlFilter;
	CContactsList	m_ctlCustList;
	//}}AFX_DATA

// Attributes
public:
	CContactsDoc* GetDocument();

// Operations
public:
	void LoadCustList(const CString& strFilter);
	void LoadCustTable(void);
	void ImportCustFile(LPCTSTR lpszCustFile);
	void ImportTopicsFile(LPCTSTR lpszCustFile);
	void ImportDetailsFile(LPCTSTR lpszCustFile);
	void ImportSamplesFile(LPCTSTR lpszCustFile);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CContactsView)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CContactsView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CContactsView)
	afx_msg void OnChangeFilter();
	afx_msg void OnDblclkCustList();
	afx_msg void OnSetfocusFilter();
	afx_msg void OnKillfocusFilter();
	afx_msg void OnNewCall();
	afx_msg void OnNewCustomer();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in ContactsView.cpp
inline CContactsDoc* CContactsView::GetDocument()
   { return (CContactsDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONTACTSVIEW_H__9FF096DC_FE49_49E7_8DEF_AE3338316983__INCLUDED_)
