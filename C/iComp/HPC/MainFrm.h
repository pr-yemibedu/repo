// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MAINFRM_H__94D7E585_93F0_461D_883F_AA96C47D3DE8__INCLUDED_)
#define AFX_MAINFRM_H__94D7E585_93F0_461D_883F_AA96C47D3DE8__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "spltwndx.h"

enum ViewType 
{
	vwToday,
	vwCalendar,
	vwCustomers,
	vwReports
};

class CMainFrame : public CFrameWnd
{
protected: // create from serialization only
	CMainFrame();
	DECLARE_DYNCREATE(CMainFrame)

// Attributes
public:
	CxSplitterWnd	m_wndSplitter1;	// Static splitter

// Operations
public:
	void ActivateView(int nPane);
	BOOL ValidateView();
	CList<int, int&> m_ViewList;
	POSITION	  m_posCurrent;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMainFrame)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:  // control bar embedded members
	CCeCommandBar		m_wndMenuBar;
	CToolBar		m_wndToolBar;
	CDialogBar		m_wndDlgBar;
	CReBar			m_wndReBar;

// Generated message map functions
protected:
	//{{AFX_MSG(CMainFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnCall();
	afx_msg void OnUpdateCall(CCmdUI* pCmdUI);
	afx_msg void OnGoBack();
	afx_msg void OnUpdateGoBack(CCmdUI* pCmdUI);
	afx_msg void OnGoForward();
	afx_msg void OnUpdateGoForward(CCmdUI* pCmdUI);
	afx_msg void OnClose();
	afx_msg void OnGoCalendar();
	afx_msg void OnGoCustomers();
	afx_msg void OnUpdateGoCalendar(CCmdUI* pCmdUI);
	afx_msg void OnUpdateGoCustomers(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CMainFrame* GetMainFrame(void);

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__94D7E585_93F0_461D_883F_AA96C47D3DE8__INCLUDED_)
