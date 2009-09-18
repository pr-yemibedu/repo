// AddSample.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "AddSample.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CAddSample dialog


CAddSample::CAddSample(CWnd* pParent /*=NULL*/)
	: CDialog(CAddSample::IDD, pParent)
{
	//{{AFX_DATA_INIT(CAddSample)
	m_strSampleDesc = _T("");
	m_strSampleLot = _T("");
	m_strSampleQty = _T("");
	//}}AFX_DATA_INIT
}


void CAddSample::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAddSample)
	DDX_Control(pDX, IDC_SAMPLE_LOT, m_ctlSampleLot);
	DDX_Control(pDX, IDC_SAMPLE_QTY, m_ctlSampleQty);
	DDX_Control(pDX, IDC_SAMPLE_LIST, m_ctlSampleList);
	DDX_CBString(pDX, IDC_SAMPLE_LIST, m_strSampleDesc);
	DDX_CBString(pDX, IDC_SAMPLE_LOT, m_strSampleLot);
	DDX_CBString(pDX, IDC_SAMPLE_QTY, m_strSampleQty);
	DDV_MaxChars(pDX, m_strSampleQty, 3);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CAddSample, CDialog)
	//{{AFX_MSG_MAP(CAddSample)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CAddSample message handlers

BOOL CAddSample::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	LoadSamplesList();

	CString strText;

	for (int iQty = 1; iQty < 101; iQty++)
	{
		strText.Format(TEXT("%d"), iQty);
		m_ctlSampleQty.AddString(strText);
	}
	m_ctlSampleQty.SetCurSel(0);

	for (long lLot = 777488883; lLot < 777488889; lLot++)
	{
		strText.Format(TEXT("%ld"), lLot);
		m_ctlSampleLot.AddString(strText);
	}
	m_ctlSampleLot.SetCurSel(0);

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CAddSample::LoadSamplesList() 
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

	hDB = CeOpenDatabase(&ceoidDB, TEXT("Samples"), 0, CEDB_AUTOINCREMENT, NULL);

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_BEGINNING, 0, &dwIndex);

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		nIndex = m_ctlSampleList.AddString( Fields[PROP_SMPL_PROD_DESC].val.lpwstr);
		m_ctlSampleList.SetItemData(nIndex, Fields[PROP_SMPL_PROD_NMBR].val.lVal);
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	CloseHandle(hDB);
}
