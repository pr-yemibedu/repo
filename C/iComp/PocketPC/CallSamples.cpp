// CallSamples.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallSamples.h"
#include "AddSample.h"
#include "CallInformation.h"
#include "ProfileDlg.h"
#include "CallDate.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallSamples dialog


CCallSamples::CCallSamples(CWnd* pParent /*=NULL*/)
	: CDialog(CCallSamples::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallSamples)
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallDate = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCallSamples::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallSamples)
	DDX_Control(pDX, IDC_CALL_SAMPLE_LIST, m_ctlCallSamples);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_DATE, m_strCallDate);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP

	if (pDX->m_bSaveAndValidate)
	{
		samples.RemoveAll();
		CSample s;
		for (int nItem = 0; nItem < m_ctlCallSamples.GetItemCount(); nItem++)
		{
			s.m_strProductDesc = m_ctlCallSamples.GetItemText(nItem, 0);
			s.m_nQty = _wtoi(m_ctlCallSamples.GetItemText(nItem, 1));
			s.m_strLot = m_ctlCallSamples.GetItemText(nItem, 2);
			samples.Add(s);
		}
	}
}


BEGIN_MESSAGE_MAP(CCallSamples, CDialog)
	//{{AFX_MSG_MAP(CCallSamples)
	ON_BN_CLICKED(IDC_ADD_SAMPLE, OnAddSample)
	ON_BN_CLICKED(IDC_DELETE_SAMPLE, OnDeleteSample)
	ON_WM_LBUTTONDOWN()
	ON_BN_CLICKED(IDC_CALL_DATE, OnCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallSamples message handlers

void CCallSamples::OnAddSample() 
{
	CAddSample dlg;
	if (dlg.DoModal() == IDOK)
	{
		int nIndex = m_ctlCallSamples.InsertItem(m_ctlCallSamples.GetItemCount(), dlg.m_strSampleDesc, 0);
		m_ctlCallSamples.SetItemText(nIndex, 1, dlg.m_strSampleQty);
		m_ctlCallSamples.SetItemText(nIndex, 2, dlg.m_strSampleLot);
	}
}

BOOL CCallSamples::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	m_ctlCallSamples.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_FULLROWSELECT, LVS_EX_FULLROWSELECT);

	m_ctlCallSamples.InsertColumn(0, TEXT("Product"), LVCFMT_LEFT, 100);
	m_ctlCallSamples.InsertColumn(1, TEXT("Qty"), LVCFMT_LEFT, 40);
	m_ctlCallSamples.InsertColumn(2, TEXT("Lot Number"), LVCFMT_LEFT, 80);

	CString strQty;

	for (int i = 0; i < samples.GetSize(); i++)
	{
		strQty.Format(_T("%d"), samples.GetAt(i).m_nQty);
		int nIndex = m_ctlCallSamples.InsertItem(m_ctlCallSamples.GetItemCount(), samples.GetAt(i).m_strProductDesc, 0);
		m_ctlCallSamples.SetItemText(nIndex, 1, strQty);
		m_ctlCallSamples.SetItemText(nIndex, 2, samples.GetAt(i).m_strLot);
	}
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CCallSamples::OnDeleteSample() 
{
	UINT i, uSelectedCount = m_ctlCallSamples.GetSelectedCount();
	int  nItem = -1;

	if (uSelectedCount > 0)
	{
		for (i=0; i < uSelectedCount; i++)
		{
			nItem = m_ctlCallSamples.GetNextItem(nItem, LVNI_SELECTED);
			ASSERT(nItem != -1);
			m_ctlCallSamples.DeleteItem(nItem); 
		}
	}
}

void CCallSamples::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}

void CCallSamples::OnCallDate() 
{
	CCallDate dlg;
	dlg.DoModal();
}
