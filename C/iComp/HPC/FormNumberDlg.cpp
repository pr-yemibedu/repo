// FormNumberDlg.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "FormNumberDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFormNumberDlg dialog


CFormNumberDlg::CFormNumberDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFormNumberDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFormNumberDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CFormNumberDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFormNumberDlg)
	DDX_Control(pDX, IDC_FORM_NUMBER, m_ctlFormNumber);
	DDX_Control(pDX, IDC_CONFIRM_FORM_NUMBER, m_ctlConfirmFormNumber);
	DDX_Control(pDX, IDC_CALL_DATE, m_ctlCallDate);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CFormNumberDlg, CDialog)
	//{{AFX_MSG_MAP(CFormNumberDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFormNumberDlg message handlers

BOOL CFormNumberDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	m_ctlCallDate.SetCurSel(m_ctlCallDate.AddString(TEXT("July 1, 2000")));
	m_ctlFormNumber.SetWindowText(TEXT("6266288272"));
	m_ctlConfirmFormNumber.SetWindowText(TEXT("6266288272"));
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
