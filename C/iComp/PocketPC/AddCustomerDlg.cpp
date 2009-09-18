// AddCustomerDlg.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "AddCustomerDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAddCustomerDlg dialog


CAddCustomerDlg::CAddCustomerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CAddCustomerDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CAddCustomerDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CAddCustomerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAddCustomerDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAddCustomerDlg, CDialog)
	//{{AFX_MSG_MAP(CAddCustomerDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAddCustomerDlg message handlers

BOOL CAddCustomerDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
