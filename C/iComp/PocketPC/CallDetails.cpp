// CallDetails.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallDetails.h"
#include "CallInformation.h"
#include "ProfileDlg.h"
#include "CallDate.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallDetails dialog


CCallDetails::CCallDetails(CWnd* pParent /*=NULL*/)
	: CDialog(CCallDetails::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallDetails)
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallDate = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCallDetails::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);

	if (!pDX->m_bSaveAndValidate)
	{
	}

	//{{AFX_DATA_MAP(CCallDetails)
	DDX_Control(pDX, IDC_CALL_DETAILS, m_ctlCallDetails);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_DATE, m_strCallDate);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP

	if (pDX->m_bSaveAndValidate)
	{
		details.RemoveAll();
		CDetail t;
		for (int nItem = 0; nItem < m_ctlCallDetails.GetItemCount(); nItem++)
		{
			if (m_ctlCallDetails.GetCheck(nItem))
			{
				t.m_strProductDesc = m_ctlCallDetails.GetItemText(nItem, 0);
				details.Add(t);
			}
		}
	}
}


BEGIN_MESSAGE_MAP(CCallDetails, CDialog)
	//{{AFX_MSG_MAP(CCallDetails)
	ON_WM_LBUTTONDOWN()
	ON_BN_CLICKED(IDC_CALL_DATE, OnCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallDetails message handlers
void CCallDetails::LoadDetailsList() 
{
	CEOID	ceoidDB=0;
	HANDLE hDB = NULL;
	CEPROPVAL* Fields;
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	LPBYTE pBuf = NULL;
	CString strText;
	int nIndex;
	DWORD dwIndex;
	ceoidDB = 0;

	hDB = CeOpenDatabase(&ceoidDB, TEXT("Details"), 0, CEDB_AUTOINCREMENT, NULL);

	m_ctlCallDetails.DeleteAllItems();

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_BEGINNING, 0, &dwIndex);

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		nIndex = m_ctlCallDetails.InsertItem(m_ctlCallDetails.GetItemCount(), Fields[PROP_DTL_GRP_DESC].val.lpwstr, 0);
		m_ctlCallDetails.SetItemData(nIndex, Fields[PROP_PROD_DTL_GRP_NMBR].val.lVal);
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	CloseHandle(hDB);
}

BOOL CCallDetails::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	m_ctlCallDetails.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_CHECKBOXES, LVS_EX_CHECKBOXES);
	CRect rect;
	GetClientRect(rect);
	m_ctlCallDetails.InsertColumn(0, TEXT("Details"), LVCFMT_LEFT, rect.Width());

	LoadDetailsList();
	CString strText;

	for (int i = 0; i < details.GetSize(); i++)
	{
		for (int nItem = 0; nItem < m_ctlCallDetails.GetItemCount(); nItem++)
		{
			strText = m_ctlCallDetails.GetItemText(nItem, 0);
			if (details.GetAt(i).m_strProductDesc == strText)
				m_ctlCallDetails.SetCheck(nItem);
		}
	}

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CCallDetails::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}

void CCallDetails::OnCallDate() 
{
	CCallDate dlg;
	dlg.DoModal();
}
