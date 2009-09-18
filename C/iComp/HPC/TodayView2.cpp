// TodayView2.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "TodayView2.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTodayView2 dialog


CTodayView2::CTodayView2(CWnd* pParent /*=NULL*/)
	: CDialog(CTodayView2::IDD, pParent)
{
	//{{AFX_DATA_INIT(CTodayView2)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CTodayView2::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CTodayView2)
	DDX_Control(pDX, IDC_CALL_DATE, m_ctlCallDate);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CTodayView2, CDialog)
	//{{AFX_MSG_MAP(CTodayView2)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTodayView2 message handlers

BOOL CTodayView2::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	CRect rect;
	GetClientRect(rect);

	m_ctlHtml.Create(DISPLAYCLASS, TEXT(""), WS_CHILD | WS_VISIBLE | WS_BORDER, rect, this, 109);

//	m_ctlHtml.SetWindowPos(&wndTop, 0, 0, rect.Width(), rect.Height(), SWP_SHOWWINDOW);
	CString str;

	str = TEXT("<html><head><title>Insight Companion</title></head><body>This is a big test</body></html>");
	
	m_ctlHtml.SetHtml((LPCTSTR)str);
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
