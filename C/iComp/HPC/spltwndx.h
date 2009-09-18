#if !defined(AFX_SPLTWNDX_H__601EBA86_5079_11D1_A895_0060977B4134__INCLUDED_)
#define AFX_SPLTWNDX_H__601EBA86_5079_11D1_A895_0060977B4134__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// spltwndx.h : header file
//

#if ! defined __AFXTEMPL_H__
#include <afxtempl.h>
#endif

/////////////////////////////////////////////////////////////////////////////
// CxSplitterWnd window
// --------------------
//  This class was born for one reason.  To make switching views a lot easier
//   on me.  This class has only been tested in the context that it is used here
//   You are welcome to use it in your own apps but it will not be supported by
//   Stingray Software.

typedef void (*DESTROYPANE)( void* );

class CxSplitterWnd : public CSplitterWnd
{
	DECLARE_DYNAMIC(CxSplitterWnd)
//Nested Class...stores the Pane Information...
public:
	class PaneInfo
	{
	public:
		PaneInfo( const CRuntimeClass* const, const CCreateContext* const, int row, int col );
		PaneInfo( const CWnd* const, int row, int col);

		int m_row;
		int m_col;
		CCreateContext m_context;
		BOOL m_bWndCreated;
		union
		{
			CRuntimeClass * m_pPaneWndClass;
			CWnd * m_pPaneWnd;
		};
	};

	typedef CArray<PaneInfo*,PaneInfo*> PaneInfoArray;

// Construction
public:
	CxSplitterWnd();
    BOOL m_bHidden;

// Attributes
protected:
	PaneInfoArray m_piArray;
	DESTROYPANE   m_pfnDestroyPane;
	BOOL		  m_bSetActiveAfterActivate;

// Operations
public:
	void SetDestroyPaneCallback( DESTROYPANE pfnDestroyPane );
	DESTROYPANE GetDestroyPaneCallback() const;

	int GetPaneCount() const;
	PaneInfo* GetPaneInfo( int iPaneInfoIndex );

	void EnableSetActiveAfterActivate( BOOL bEnable );
	BOOL QueryActiveAfterActivate() const;
    virtual void OnDrawSplitter( CDC* pDC, ESplitType nType, const CRect& rect );
    void Hide(void);

protected:
//   	virtual int HitTest(CPoint pt) const;

// Overrides
public:
	virtual PaneInfo* AddView( int row, int col, CRuntimeClass* pViewClass, CCreateContext* pContext );
	virtual PaneInfo* AddView( int row, int col, CWnd* pWnd );
	
	virtual BOOL ActivateView( int iPaneInfoIndex, BOOL bRecalc = TRUE );
	virtual BOOL ActivateView( PaneInfo * pPaneInfo, BOOL bRecalc = TRUE );

	virtual BOOL CreateView(int row, int col, CRuntimeClass* pViewClass, SIZE sizeInit, CCreateContext* pContext, BOOL bAddToArray = FALSE );

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CxSplitterWnd)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CxSplitterWnd();

protected:
	virtual void CreatePane( PaneInfo *& pInfo );

	// Generated message map functions
protected:
	//{{AFX_MSG(CxSplitterWnd)
	afx_msg void OnDestroy();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Developer Studio will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SPLTWNDX_H__601EBA86_5079_11D1_A895_0060977B4134__INCLUDED_)
