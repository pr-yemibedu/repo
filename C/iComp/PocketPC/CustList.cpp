// CustList.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CustList.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCustList dialog


CCustList::CCustList(CWnd* pParent /*=NULL*/)
	: CDialog(CCustList::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCustList)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CCustList::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCustList)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCustList, CDialog)
	//{{AFX_MSG_MAP(CCustList)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCustList message handlers
