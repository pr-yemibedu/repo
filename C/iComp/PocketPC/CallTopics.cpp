// CallTopics.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallTopics.h"
#include "CallInformation.h"
#include "ProfileDlg.h"
#include "CallDate.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallTopics dialog


CCallTopics::CCallTopics(CWnd* pParent /*=NULL*/)
	: CDialog(CCallTopics::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallTopics)
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallDate = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCallTopics::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);

	if (!pDX->m_bSaveAndValidate)
	{
	}

	//{{AFX_DATA_MAP(CCallTopics)
	DDX_Control(pDX, IDC_CALL_TOPICS, m_ctlCallTopics);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_DATE, m_strCallDate);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP

	if (pDX->m_bSaveAndValidate)
	{
		topics.RemoveAll();
		CTopic t;
		for (int nItem = 0; nItem < m_ctlCallTopics.GetItemCount(); nItem++)
		{
			if (m_ctlCallTopics.GetCheck(nItem))
			{
				t.m_strTopicDesc = m_ctlCallTopics.GetItemText(nItem, 0);
				topics.Add(t);
			}
		}
	}
}


BEGIN_MESSAGE_MAP(CCallTopics, CDialog)
	//{{AFX_MSG_MAP(CCallTopics)
	ON_WM_LBUTTONDOWN()
	ON_BN_CLICKED(IDC_CALL_DATE, OnCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallTopics message handlers

BOOL CCallTopics::OnInitDialog() 
{
	CDialog::OnInitDialog();
	m_ctlCallTopics.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_CHECKBOXES, LVS_EX_CHECKBOXES);
	CRect rect;
	GetClientRect(rect);
	m_ctlCallTopics.InsertColumn(0, TEXT("Topic"), LVCFMT_LEFT, rect.Width());

	LoadTopicsList();
	CString strText;

	for (int i = 0; i < topics.GetSize(); i++)
	{
		for (int nItem = 0; nItem < m_ctlCallTopics.GetItemCount(); nItem++)
		{
			strText = m_ctlCallTopics.GetItemText(nItem, 0);
			if (topics.GetAt(i).m_strTopicDesc == strText)
				m_ctlCallTopics.SetCheck(nItem);
		}
	}

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CCallTopics::LoadTopicsList() 
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

	hDB = CeOpenDatabase(&ceoidDB, TEXT("Topics"), 0, CEDB_AUTOINCREMENT, NULL);

	m_ctlCallTopics.DeleteAllItems();

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_BEGINNING, 0, &dwIndex);

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		nIndex = m_ctlCallTopics.InsertItem(m_ctlCallTopics.GetItemCount(), Fields[PROP_DTL_TOPIC_DESC].val.lpwstr, 0);
		m_ctlCallTopics.SetItemData(nIndex, Fields[PROP_DTL_TOPIC_NMBR].val.lVal);
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	CloseHandle(hDB);
}

void CCallTopics::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}

void CCallTopics::OnCallDate() 
{
	CCallDate dlg;
	dlg.DoModal();
}
