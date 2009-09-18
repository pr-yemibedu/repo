// HtmlWnd.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "HtmlWnd.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CHtmlWnd

CHtmlWnd::CHtmlWnd()
{
}

CHtmlWnd::~CHtmlWnd()
{
}


BEGIN_MESSAGE_MAP(CHtmlWnd, CWnd)
	//{{AFX_MSG_MAP(CHtmlWnd)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CHtmlWnd message handlers

BOOL CHtmlWnd::PreCreateWindow(CREATESTRUCT& cs) 
{
	return CWnd::PreCreateWindow(cs);
}

void CHtmlWnd::SetHtml(LPCTSTR lpszHtml)
{
	SetWindowText(TEXT(""));
    SendMessage(DTM_ADDTEXTW, FALSE, (LPARAM)lpszHtml);
    SendMessage(DTM_ENDOFSOURCE, 0, (LPARAM)NULL);
}
