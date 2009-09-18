// spltwndx.cpp : implementation file
//

#include "stdafx.h"
#include "spltwndx.h"

#ifndef __AFXPRIV_H__
#include <afxpriv.h>
#endif

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#pragma warning( disable:4100 )

static void DefaultDestroyPane( void* pVoid )
{
	CxSplitterWnd::PaneInfo* pInfo = (CxSplitterWnd::PaneInfo*)pVoid;

	if( pInfo->m_bWndCreated )
	{
		pInfo->m_pPaneWnd->DestroyWindow();
		pInfo->m_pPaneWnd = NULL;
		pInfo->m_bWndCreated = FALSE;
	}

	delete pInfo;
}

/////////////////////////////////////////////////////////////////////////////
// CxSplitterWnd

CxSplitterWnd::CxSplitterWnd()
{
	m_pfnDestroyPane = DefaultDestroyPane;
	m_bSetActiveAfterActivate = FALSE;
    m_bHidden = FALSE;
}

CxSplitterWnd::~CxSplitterWnd()
{
}

/*
int CxSplitterWnd::HitTest(CPoint pt) const
{
	return 0;
}
*/

void CxSplitterWnd::Hide(void)
{
    m_bHidden = TRUE;
    m_cxSplitterGap = m_cySplitterGap = 2;
}

void CxSplitterWnd::OnDrawSplitter( CDC* pDC, ESplitType nType, const CRect& rect )
{
    if (m_bHidden == TRUE && nType == splitBar)
    {
        if (pDC)
            pDC->FillSolidRect(&rect, RGB(192, 192, 192));
        return;
    }

    CSplitterWnd::OnDrawSplitter(pDC, nType, rect);
}

IMPLEMENT_DYNAMIC( CxSplitterWnd, CSplitterWnd )

BEGIN_MESSAGE_MAP(CxSplitterWnd, CSplitterWnd)
	//{{AFX_MSG_MAP(CxSplitterWnd)
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CxSplitterWnd::OnDestroy()
{
	int size = m_piArray.GetSize();
	for( int i = 0; i < size; i++ )
		m_pfnDestroyPane( (void*)m_piArray[i] );
	m_piArray.RemoveAll();

	CSplitterWnd::OnDestroy();
}

/////////////////////////////////////////////////////////////////////////////
// CxSplitterWnd Virtual Functions
BOOL CxSplitterWnd::CreateView
	( 
		int				 row, 
		int				 col, 
		CRuntimeClass  * pRuntimeClass, 
		SIZE			 sizeInit, 
		CCreateContext * pContext, 
		BOOL			 bAddToArray // = FALSE
	)
{
	//We will let CSplitterWnd create the view for us...
	// then we will grab the CWnd pointer and stick it in our
	// array of PaneInfo classes...
	BOOL bRet = CSplitterWnd::CreateView( row, col, pRuntimeClass, sizeInit, pContext );

	//Only add a new PaneInfo class if the view was successfully created...
	if( bRet && bAddToArray )
	{
		CWnd * pPaneWnd = GetPane( row, col );
		ASSERT_VALID( pPaneWnd );
		
		//Sanity Check
		ASSERT( pPaneWnd->GetDlgCtrlID() == IdFromRowCol( row, col ) );

		PaneInfo * pInfo = new PaneInfo( pPaneWnd, row, col );
		m_piArray.Add(pInfo);
	}

	return bRet;
}

CxSplitterWnd::PaneInfo* CxSplitterWnd::AddView
	( 
		int				 row, 
		int				 col, 
		CRuntimeClass  * pPaneWndClass, 
		CCreateContext * pContext 
	)
{
	PaneInfo * pInfo = new PaneInfo( pPaneWndClass, pContext, row, col );
	m_piArray.Add(pInfo);
	return pInfo;
}

CxSplitterWnd::PaneInfo* CxSplitterWnd::AddView
	( 
		int	   row, 
		int	   col, 
		CWnd * pPaneWnd
	)
{
	PaneInfo * pInfo = new PaneInfo( pPaneWnd, row, col );
	m_piArray.Add(pInfo);
	return pInfo;
}

BOOL CxSplitterWnd::ActivateView
	(
		int  iPaneInfoIndex,
		BOOL bRecalc // = TRUE
	)
{
	ASSERT( iPaneInfoIndex >= 0 && iPaneInfoIndex < m_piArray.GetSize() );

	if(iPaneInfoIndex >= 0 && iPaneInfoIndex < m_piArray.GetSize() )
	{
		return ActivateView( m_piArray[iPaneInfoIndex], bRecalc );
	}

	return FALSE;
}

BOOL CxSplitterWnd::ActivateView
	(
		PaneInfo * pInfo,
		BOOL bRecalc // = TRUE
	)
{
	if( pInfo->m_bWndCreated == FALSE )
		CreatePane( pInfo );

	ASSERT( pInfo->m_bWndCreated == TRUE );

	CWnd * pOldWnd = GetDlgItem( IdFromRowCol( pInfo->m_row, pInfo->m_col ) );
	if( pOldWnd != NULL )
	{
		//No reason to hide the window then re-show it again...
		if( *pOldWnd == *(pInfo->m_pPaneWnd) )
			return TRUE;

		ASSERT( pOldWnd->GetDlgCtrlID() == IdFromRowCol( pInfo->m_row, pInfo->m_col ) );
		pOldWnd->ShowWindow( SW_HIDE );
		pOldWnd->EnableWindow(FALSE);
		pOldWnd->SetDlgCtrlID( (UINT)-1 );
	}

	ASSERT_VALID( pInfo->m_pPaneWnd );

	pInfo->m_pPaneWnd->ShowWindow(SW_SHOW);
	pInfo->m_pPaneWnd->EnableWindow(TRUE);
	pInfo->m_pPaneWnd->SetDlgCtrlID( IdFromRowCol( pInfo->m_row, pInfo->m_col ) );

	if( QueryActiveAfterActivate() )
		SetActivePane( pInfo->m_row, pInfo->m_col );

	if( bRecalc )
		RecalcLayout();

	return TRUE;
}

void CxSplitterWnd::CreatePane
	(
		PaneInfo *& pInfo
	)
{
	ASSERT( pInfo->m_bWndCreated == FALSE );

	CWnd* pWnd = (CWnd*)pInfo->m_pPaneWndClass->CreateObject();
	
	//Better be a CWnd
	ASSERT_KINDOF( CWnd, pWnd );

	//Better be NULL...I haven't created you yet...
	ASSERT( pWnd->m_hWnd == NULL );

	DWORD dwStyle = WS_CHILD;
	UINT  nID     = (UINT)-1;
	CRect rc(0,0,0,0);

	if( ! pWnd->Create( NULL, NULL, dwStyle, rc, this, nID, &pInfo->m_context ) )
	{
		TRACE(_T("Couldn't create the pane window...\n"));
		ASSERT(FALSE);
	}

	ASSERT_VALID( pWnd );
//	ASSERT( (UINT)pWnd->GetDlgCtrlID() == nID );

	if( pWnd->IsKindOf(RUNTIME_CLASS(CView)) )
		pWnd->SendMessage(WM_INITIALUPDATE);

	pInfo->m_pPaneWnd = pWnd;
	pInfo->m_bWndCreated = TRUE;
}

void CxSplitterWnd::SetDestroyPaneCallback( DESTROYPANE pfnDestroyPane )
{
	ASSERT( pfnDestroyPane != NULL );
	m_pfnDestroyPane = pfnDestroyPane;
}

DESTROYPANE CxSplitterWnd::GetDestroyPaneCallback() const
{
	return m_pfnDestroyPane;
}

int CxSplitterWnd::GetPaneCount() const
{
	return m_piArray.GetSize();
}

CxSplitterWnd::PaneInfo* CxSplitterWnd::GetPaneInfo
	(
		int iPaneInfoIndex
	)
{
	ASSERT( iPaneInfoIndex >= 0 && iPaneInfoIndex < m_piArray.GetSize() );

	if(iPaneInfoIndex >= 0 && iPaneInfoIndex < m_piArray.GetSize() )
	{
		return m_piArray[iPaneInfoIndex];
	}

	return NULL;
}

void CxSplitterWnd::EnableSetActiveAfterActivate( BOOL bEnable )
{
	m_bSetActiveAfterActivate = bEnable;
}

BOOL CxSplitterWnd::QueryActiveAfterActivate() const
{
	return m_bSetActiveAfterActivate;
}

/////////////////////////////////////////////////////////////////////////////
// CxSplitterWnd::PaneInfo
CxSplitterWnd::PaneInfo::PaneInfo
	( 
		const CRuntimeClass  * const pPaneWndClass,
		const CCreateContext * const pCreateContext,
		int							 row,
		int							 col
	)
{
	//Validate the runtime class...
	ASSERT( pPaneWndClass );
	ASSERT( AfxIsValidAddress( pPaneWndClass, sizeof(CRuntimeClass), FALSE ) );
	
	//Validate the Create context...
	ASSERT( pCreateContext );
	ASSERT( AfxIsValidAddress( pCreateContext, sizeof(CCreateContext), FALSE ) );

	ASSERT( row >= 0 );
	ASSERT( col >= 0 );

	m_row = row;
	m_col = col;
	
	m_context = *pCreateContext;
	
	m_bWndCreated = FALSE;
	m_pPaneWndClass = const_cast<CRuntimeClass*>(pPaneWndClass);
}

CxSplitterWnd::PaneInfo::PaneInfo
	( 
		const CWnd * const pWnd,
		int				   row,
		int				   col
	)
{
	ASSERT_VALID( pWnd );

	ASSERT( row >= 0 );
	ASSERT( col >= 0 );

	m_row = row;
	m_col = col;

	m_bWndCreated = TRUE;
	m_pPaneWnd = const_cast<CWnd*>(pWnd);
}