#if !defined(AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
#define AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// TodayView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CTodayView View

class CTodayView : public CView
{
// Construction
public:
	CTodayView();   // standard constructor
	DECLARE_DYNCREATE(CTodayView)

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
	virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);
	virtual void OnDraw(CDC* pDC);
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
	afx_msg void OnViewProfile();
	afx_msg void OnViewCustomer();
	//}}AFX_MSG
	afx_msg LRESULT OnAddImage(WPARAM wParam, LPARAM lParam);
	afx_msg LRESULT OnPlaySound(WPARAM wParam, LPARAM lParam);

	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TODAYVIEW_H__3818B66E_1A56_487A_A990_C92980CBC951__INCLUDED_)
