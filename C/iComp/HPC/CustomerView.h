#if !defined(AFX_CUSTOMERVIEW_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_)
#define AFX_CUSTOMERVIEW_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CustomerView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCustomerView form view

#ifndef __AFXEXT_H__
#include <afxext.h>
#endif

enum { tabGeneral, tabIDs, tabFlags, tabLocations, tabNotes };

class CCustomerView : public CFormView
{
protected:
	CCustomerView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CCustomerView)

// Form Data
public:
	//{{AFX_DATA(CCustomerView)
	enum { IDD = IDD_CUSTOMER_VIEW };
	CListCtrl	m_ctlProfileList;
	CListBox m_ctlFlags;
	CComboBox	m_ctlFlagType;
	CListCtrl	m_ctlIds;
	CTabCtrl	m_ctlTabs;
	CListBox	m_ctlCustList;
	//}}AFX_DATA

// Attributes
public:
	CImageList m_imageIds;
	CImageList m_imageGrid;

// Operations
public:
BOOL LoadList(CEOID ceOIDDB);
void DisableAll();
void EnableTab(int nIndex, BOOL bIndividual = TRUE);
void SelectTab(int nIndex);
void ImportCustFile(LPCTSTR lpszCustFile);
void ImportDetailsFile(LPCTSTR lpszDetailsFile);
void ImportSamplesFile(LPCTSTR lpszSamplesFile);


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCustomerView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CCustomerView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
	//{{AFX_MSG(CCustomerView)
	afx_msg void On123();
	afx_msg void OnAbc();
	afx_msg void OnDef();
	afx_msg void OnGhi();
	afx_msg void OnJkl();
	afx_msg void OnMno();
	afx_msg void OnPqrs();
	afx_msg void OnTuv();
	afx_msg void OnWxyz();
	afx_msg void OnSelchangeTabs(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnSelchangeCustList();
	afx_msg void OnDestroy();
	afx_msg void OnViewGrid();
	afx_msg void OnUpdateViewGrid(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CUSTOMERVIEW_H__08FAE5D1_04AB_4F90_B18D_487499B16AB6__INCLUDED_)
