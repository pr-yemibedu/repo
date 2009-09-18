// CallDate.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallDate.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallDate dialog


CCallDate::CCallDate(CWnd* pParent /*=NULL*/)
	: CDialog(CCallDate::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallDate)
	m_strCallDuration = _T("");
	m_strCallTime = _T("");
	//}}AFX_DATA_INIT
}


void CCallDate::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallDate)
	DDX_Control(pDX, IDC_CALL_TIME, m_ctlCallTime);
	DDX_Control(pDX, IDC_CALL_DURATION, m_ctlCallDuration);
	DDX_CBString(pDX, IDC_CALL_DURATION, m_strCallDuration);
	DDX_CBString(pDX, IDC_CALL_TIME, m_strCallTime);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCallDate, CDialog)
	//{{AFX_MSG_MAP(CCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallDate message handlers

BOOL CCallDate::OnInitDialog() 
{
	CDialog::OnInitDialog();
	COleDateTime tm = COleDateTime(2000,1,1,6,0,0);
	CString str;

	int i;
	BOOL bAM = FALSE;
	for (i = 0; i <= 12 * 4; i++)
	{
		bAM = tm.GetHour() < 12;
		str.Format(_T("%d:%.2d %s"), tm.GetHour() < 13 ? tm.GetHour() : tm.GetHour() - 12, tm.GetMinute(), bAM ? _T("am") : _T("pm"));
		m_ctlCallTime.AddString(str);
		tm += COleDateTimeSpan(0, 0, 15, 0);	
	}

	m_ctlCallDuration.AddString(_T("15 mins"));
	m_ctlCallDuration.AddString(_T("30 mins"));
	m_ctlCallDuration.AddString(_T("45 mins"));
	m_ctlCallDuration.AddString(_T("1 hour"));
	m_ctlCallDuration.SelectString(-1, _T("15 mins"));
	m_ctlCallTime.SelectString(-1, _T("8:30 am"));

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
