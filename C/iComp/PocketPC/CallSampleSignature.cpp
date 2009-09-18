// CallSampleSignature.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallSampleSignature.h"
#include "CallInformation.h"
#include "ProfileDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallSampleSignature dialog


CCallSampleSignature::CCallSampleSignature(CWnd* pParent /*=NULL*/)
	: CDialog(CCallSampleSignature::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallSampleSignature)
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCallSampleSignature::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallSampleSignature)
	DDX_Control(pDX, IDC_DONE, m_ctlDone);
	DDX_Control(pDX, IDC_CLEAR, m_ctlClear);
	DDX_Control(pDX, IDC_CALL_SAMPLE_LIST, m_ctlSampleList);
	DDX_Control(pDX, IDC_SIGNATURE_BITMAP, m_ctlSignatureBitmap);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCallSampleSignature, CDialog)
	//{{AFX_MSG_MAP(CCallSampleSignature)
	ON_BN_CLICKED(IDC_SIGNATURE_BITMAP, OnSignatureBitmap)
	ON_WM_TIMER()
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_CLEAR, OnClear)
	ON_BN_CLICKED(IDC_DONE, OnDone)
	ON_WM_LBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallSampleSignature message handlers

void CCallSampleSignature::OnSignatureBitmap() 
{
	if (m_nState < stateLegal)
	{
		KillTimer(1);
		HBITMAP hBitmap = LoadBitmap(AfxGetApp()->m_hInstance, MAKEINTRESOURCE(IDB_LEGAL));
		m_ctlSignatureBitmap.SetBitmap(hBitmap);
		m_nState = stateLegal;
	}
	else
	{
		m_ctlSignatureBitmap.EnableWindow(FALSE);
		m_ctlSignatureBitmap.ShowWindow(SW_HIDE);
		m_ctlSignature.ShowWindow(SW_SHOW);
		m_ctlSignature.EnableWindow(TRUE);
		m_ctlClear.ShowWindow(SW_SHOW);
		m_ctlClear.EnableWindow(TRUE);
		m_ctlDone.ShowWindow(SW_SHOW);
		m_ctlDone.EnableWindow(TRUE);
		m_nState = stateSignature;
	}
}

BOOL CCallSampleSignature::OnInitDialog() 
{
	CDialog::OnInitDialog();

	m_ctlSampleList.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_FULLROWSELECT, LVS_EX_FULLROWSELECT);

	m_ctlSampleList.InsertColumn(0, TEXT("Product"), LVCFMT_LEFT, 100);
	m_ctlSampleList.InsertColumn(1, TEXT("Qty"), LVCFMT_LEFT, 40);
	m_ctlSampleList.InsertColumn(2, TEXT("Lot Number"), LVCFMT_LEFT, 80);

	CString strQty;

	for (int i = 0; i < samples.GetSize(); i++)
	{
		strQty.Format(_T("%d"), samples.GetAt(i).m_nQty);
		int nIndex = m_ctlSampleList.InsertItem(m_ctlSampleList.GetItemCount(), samples.GetAt(i).m_strProductDesc, 0);
		m_ctlSampleList.SetItemText(nIndex, 1, strQty);
		m_ctlSampleList.SetItemText(nIndex, 2, samples.GetAt(i).m_strLot);
	}
	
	CRect rect;
	m_ctlSampleList.GetWindowRect(rect);
	ScreenToClient(rect);
	int nTop = rect.bottom;
	GetClientRect(rect);
	rect.top = nTop;
	rect.InflateRect(-8, -8);
//	rect.top += 2;
	m_nState = stateBitmap1;

	m_ctlSignatureBitmap.MoveWindow(rect);
	m_ctlSignature.Create(NULL, NULL, WS_CHILD | WS_BORDER, rect, this, IDC_SIGNATURE);
	m_ctlSignature.EnableWindow(FALSE);

	SetTimer(1, 1000, NULL);
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CCallSampleSignature::OnTimer(UINT nIDEvent) 
{
	if (nIDEvent == 1)
	{
		HBITMAP hBitmap;
		if (m_nState == stateBitmap1)
		{
			hBitmap = LoadBitmap(AfxGetApp()->m_hInstance, MAKEINTRESOURCE(IDB_VIOXX2));
			m_nState = stateBitmap2;
		}
		else
		{
			hBitmap = LoadBitmap(AfxGetApp()->m_hInstance, MAKEINTRESOURCE(IDB_VIOXX1));
			m_nState = stateBitmap1;
		}

		m_ctlSignatureBitmap.SetBitmap(hBitmap);
	}	
	
	CDialog::OnTimer(nIDEvent);
}

void CCallSampleSignature::OnDestroy() 
{
	CDialog::OnDestroy();
	KillTimer(1);
}

void CCallSampleSignature::OnClear() 
{
	m_ctlSignature.Reset();
}

void CCallSampleSignature::OnDone() 
{
	OnOK();
}

void CCallSampleSignature::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}
