// TipCalcDlg.cpp : implementation file
//

#include "stdafx.h"
#include "TipCalc.h"
#include "TipCalcDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTipCalcDlg dialog

CTipCalcDlg::CTipCalcDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CTipCalcDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CTipCalcDlg)
	m_fCost = 0.0f;
	m_strTip = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CTipCalcDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CTipCalcDlg)
	DDX_Text(pDX, IDC_COST, m_fCost);
	DDV_MinMaxFloat(pDX, m_fCost, 0.f, 1.e+007f);
	DDX_Text(pDX, IDC_TIP, m_strTip);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CTipCalcDlg, CDialog)
	//{{AFX_MSG_MAP(CTipCalcDlg)
	ON_WM_HELPINFO()
	ON_BN_CLICKED(IDC_CALC, OnCalc)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()
 
/////////////////////////////////////////////////////////////////////////////
// CTipCalcDlg message handlers

BOOL CTipCalcDlg::OnInitDialog()
{
	m_fCost = (float)AfxGetApp()->GetProfileInt(L"TipCalc", L"Cost", 0);
	
	
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	CenterWindow(GetDesktopWindow());	// center to the hpc screen

	// TODO: Add extra initialization here
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CTipCalcDlg::OnHelpInfo()
{
	// TODO: implement help here
	MessageBox(_T("Help"));
}


void CTipCalcDlg::OnCalc() 
{
	UpdateData(TRUE);
	float fTip = m_fCost * .15;
	m_strTip.Format(L"%f", fTip);
	UpdateData(FALSE);
	BOOL b = AfxGetApp()->WriteProfileString(L"TipCalc", L"Cost", m_strTip);
	
}
