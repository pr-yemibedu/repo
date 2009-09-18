// SampleSignature.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "SampleSignature.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSampleSignature dialog


CSampleSignature::CSampleSignature(CWnd* pParent /*=NULL*/)
	: CDialog(CSampleSignature::IDD, pParent)
{
	//{{AFX_DATA_INIT(CSampleSignature)
	//}}AFX_DATA_INIT
}


void CSampleSignature::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CSampleSignature)
	DDX_Control(pDX, IDC_CLEAR, m_ctlClear);
	DDX_Control(pDX, IDC_SAMPLES, m_ctlSamples);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CSampleSignature, CDialog)
	//{{AFX_MSG_MAP(CSampleSignature)
	ON_BN_CLICKED(IDC_CLEAR, OnClear)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSampleSignature message handlers

BOOL CSampleSignature::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	CRect rect; 
	m_ctlClear.GetWindowRect(rect);
	ScreenToClient(rect);
	CSize sizeClear(rect.Width(), rect.Height());
	
	GetClientRect(rect);
	rect.top = rect.Height() * .67;
	m_ctlSignature.Create(NULL, NULL, WS_CHILD | WS_VISIBLE | WS_BORDER, rect, this, IDC_SIGNATURE);
	m_ctlSignature.SetBitmaps(IDB_VIOXX1, IDB_VIOXX2);

	m_ctlClear.MoveWindow(0, rect.top - sizeClear.cy, sizeClear.cx, sizeClear.cy);

	rect.bottom = rect.top -  sizeClear.cy;
	rect.top = 0;
	m_ctlSamples.MoveWindow(rect);

	m_ctlSamples.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_FULLROWSELECT, LVS_EX_FULLROWSELECT);

	// Add the columns to the list control.
	m_ctlSamples.InsertColumn(0, TEXT("Sampled Products"), LVCFMT_LEFT, 140);
	m_ctlSamples.InsertColumn(1, TEXT("Lot #"), LVCFMT_LEFT, 50);
	m_ctlSamples.InsertColumn(2, TEXT("Qty"), LVCFMT_LEFT, 50);

	int nIndex;
	m_ctlSamples.DeleteAllItems();
	nIndex = m_ctlSamples.InsertItem(m_ctlSamples.GetItemCount(), TEXT("COZARR 50MG 1X7 (6061)"), 0);
	m_ctlSamples.SetItemText(nIndex, 1, TEXT("10201"));
	m_ctlSamples.SetItemText(nIndex, 2, TEXT("10"));
	nIndex = m_ctlSamples.InsertItem(m_ctlSamples.GetItemCount(), TEXT("FOSAMAX 10MG 2X3 (5302)"), 0);
	m_ctlSamples.SetItemText(nIndex, 1, TEXT("10201"));
	m_ctlSamples.SetItemText(nIndex, 2, TEXT("20"));


	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CSampleSignature::OnClear() 
{
	m_ctlSignature.Reset();	
}
