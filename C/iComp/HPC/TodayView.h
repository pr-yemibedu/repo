#if !defined(AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
#define AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// TodayView.h : header file
//

#include "HtmlWnd.h"

/////////////////////////////////////////////////////////////////////////////
// CTodayView View

class CTodayView : public CFormView
{
// Construction
public:
	CTodayView();   // standard constructor
	DECLARE_DYNCREATE(CTodayView)

// Form Data
public:
	//{{AFX_DATA(CTodayView)
	enum { IDD = IDD_TODAY_VIEW };
	CComboBox	m_ctlCallCustomer;
	CDateTimeCtrl	m_ctlCallDate;
	//}}AFX_DATA

	CHtmlWnd m_ctlHtml;
	void BuildPage(CString& strText);
	void LoadBrowseFile(LPTSTR pszBrowsFile);
	void LoadBrowseFile(LPTSTR pszBrowsFile, CString& strText);
	COleDateTime m_timeCur;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTodayView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
	//}}AFX_VIRTUAL

/// Implementation
protected:
	virtual ~CTodayView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
	//{{AFX_MSG(CTodayView)
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg void OnDatetimechangeCallDate(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnCallReport();
	//}}AFX_MSG
	afx_msg LRESULT OnAddImage(WPARAM wParam, LPARAM lParam);
	afx_msg LRESULT OnPlaySound(WPARAM wParam, LPARAM lParam);

	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
