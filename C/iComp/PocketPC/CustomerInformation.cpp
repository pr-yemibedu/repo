// CustomerInformation.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CustomerInformation.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCustomerInformation dialog


CCustomerInformation::CCustomerInformation(CWnd* pParent /*=NULL*/)
	: CDialog(CCustomerInformation::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCustomerInformation)
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCustomerInformation::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCustomerInformation)
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCustomerInformation, CDialog)
	//{{AFX_MSG_MAP(CCustomerInformation)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCustomerInformation message handlers
