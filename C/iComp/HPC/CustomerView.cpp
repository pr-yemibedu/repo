// CustomerView.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CustomerView.h"
#include "cedb.h"

#include "Atlbase.h"

#include "cADOCE.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

CEOID	ceoidDB=0;
HANDLE hDB = NULL;
CEPROPVAL* Fields;

cADOCE ado;

/////////////////////////////////////////////////////////////////////////////
// CCustomerView

IMPLEMENT_DYNCREATE(CCustomerView, CFormView)

CCustomerView::CCustomerView()
	: CFormView(CCustomerView::IDD)
{
	//{{AFX_DATA_INIT(CCustomerView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}

CCustomerView::~CCustomerView()
{
}

void CCustomerView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCustomerView)
	DDX_Control(pDX, IDC_PROFILE_LIST, m_ctlProfileList);
	DDX_Control(pDX, IDC_FLAGS, m_ctlFlags);
	DDX_Control(pDX, IDC_FLAG_TYPE, m_ctlFlagType);
	DDX_Control(pDX, IDC_IDS, m_ctlIds);
	DDX_Control(pDX, IDC_TABS, m_ctlTabs);
	DDX_Control(pDX, IDC_CUST_LIST, m_ctlCustList);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCustomerView, CFormView)
	//{{AFX_MSG_MAP(CCustomerView)
	ON_BN_CLICKED(IDC_123, On123)
	ON_BN_CLICKED(IDC_ABC, OnAbc)
	ON_BN_CLICKED(IDC_DEF, OnDef)
	ON_BN_CLICKED(IDC_GHI, OnGhi)
	ON_BN_CLICKED(IDC_JKL, OnJkl)
	ON_BN_CLICKED(IDC_MNO, OnMno)
	ON_BN_CLICKED(IDC_PQRS, OnPqrs)
	ON_BN_CLICKED(IDC_TUV, OnTuv)
	ON_BN_CLICKED(IDC_WXYZ, OnWxyz)
	ON_NOTIFY(TCN_SELCHANGE, IDC_TABS, OnSelchangeTabs)
	ON_LBN_SELCHANGE(IDC_CUST_LIST, OnSelchangeCustList)
	ON_WM_DESTROY()
	ON_COMMAND(ID_VIEW_GRID, OnViewGrid)
	ON_UPDATE_COMMAND_UI(ID_VIEW_GRID, OnUpdateViewGrid)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCustomerView diagnostics

#ifdef _DEBUG
void CCustomerView::AssertValid() const
{
	CFormView::AssertValid();
}

void CCustomerView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CCustomerView message handlers

void CCustomerView::On123() 
{
	m_ctlCustList.SelectString(-1, TEXT("1"));
}

void CCustomerView::OnAbc() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("A")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("B")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("C"));
}

void CCustomerView::OnDef() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("D")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("E")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("F"));
}

void CCustomerView::OnGhi() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("G")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("H")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("I"));
}

void CCustomerView::OnJkl() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("J")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("K")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("L"));
}

void CCustomerView::OnMno() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("M")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("N")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("O"));
}

void CCustomerView::OnPqrs() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("P")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("Q")) == LB_ERR)
			if (m_ctlCustList.SelectString(-1, TEXT("R")) == LB_ERR)
				m_ctlCustList.SelectString(-1, TEXT("S"));
}

void CCustomerView::OnTuv() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("T")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("U")) == LB_ERR)
			m_ctlCustList.SelectString(-1, TEXT("V"));
}

void CCustomerView::OnWxyz() 
{
	if (m_ctlCustList.SelectString(-1, TEXT("W")) == LB_ERR)
		if (m_ctlCustList.SelectString(-1, TEXT("X")) == LB_ERR)
			if (m_ctlCustList.SelectString(-1, TEXT("Y")) == LB_ERR)
				m_ctlCustList.SelectString(-1, TEXT("Z"));
}



void CCustomerView::OnInitialUpdate() 
{
	CFormView::OnInitialUpdate();
	
	int		i;
	TC_ITEM tcItem;

	LPWSTR pszTabItems[] = {TEXT("General"), TEXT("IDs"), TEXT("Flags"), TEXT("Locations"), TEXT("Notes"), NULL};

	for (i=0; pszTabItems[i] != NULL; i++)
	{
		tcItem.mask = TCIF_TEXT;
		tcItem.pszText = pszTabItems[i];
		tcItem.cchTextMax = lstrlen(pszTabItems[i]);
		m_ctlTabs.InsertItem(i, &tcItem);
	}

	m_imageIds.Create( IDB_IDS, 16, 10, COLORREF(RGB(255,255,255)) );
	m_ctlIds.SetImageList( &m_imageIds, LVSIL_SMALL );
	m_ctlIds.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_FULLROWSELECT, LVS_EX_FULLROWSELECT);

	// Add the columns to the list control.
	m_ctlIds.InsertColumn(0, TEXT("ID Type"), LVCFMT_LEFT, 80);
	m_ctlIds.InsertColumn(1, TEXT("ID Number"), LVCFMT_LEFT, 100);

	m_ctlFlagType.SetCurSel(m_ctlFlagType.AddString(TEXT("Both")));
	m_ctlFlagType.AddString(TEXT("Headquarters"));
	m_ctlFlagType.AddString(TEXT("Personal"));

	m_imageGrid.Create( IDB_GRID, 16, 10, COLORREF(RGB(255,255,255)) );
	m_ctlProfileList.SetImageList( &m_imageGrid, LVSIL_SMALL );
	m_ctlProfileList.SendMessage(LVM_SETEXTENDEDLISTVIEWSTYLE, LVS_EX_FULLROWSELECT, LVS_EX_FULLROWSELECT);

	// Add the columns to the list control.
	m_ctlProfileList.InsertColumn(0, TEXT("Number"), LVCFMT_LEFT, 75);
	m_ctlProfileList.InsertColumn(1, TEXT("Address"), LVCFMT_LEFT, 150);
	m_ctlProfileList.InsertColumn(2, TEXT("City"), LVCFMT_LEFT, 125);
	m_ctlProfileList.InsertColumn(3, TEXT("State"), LVCFMT_LEFT, 45);
	m_ctlProfileList.InsertColumn(4, TEXT("Zip"), LVCFMT_LEFT, 55);


	ImportCustFile(TEXT("\\iComp\\cust_profile.txt"));
	ImportDetailsFile(TEXT("\\iComp\\details.txt"));
	ImportSamplesFile(TEXT("\\iComp\\samples.txt"));

	ceoidDB = 0;
	hDB = CeOpenDatabase(&ceoidDB, TEXT("Cust"), 0, CEDB_AUTOINCREMENT, NULL);

	LoadList(ceoidDB);

	m_ctlCustList.SetCurSel(0);
	OnSelchangeCustList();
	m_ctlTabs.SetCurSel(tabGeneral);
	SelectTab(tabGeneral);
}

/*
BOOL CCustomerView::LoadList(CEOID ceOIDDB)
{
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	CString strText;
	int nIndex;

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;

		strText.Format(TEXT("%s, %s"),
				 Fields[PROP_LAST_NM].val.lpwstr,
				 Fields[PROP_FIRST_NM].val.lpwstr);

		nIndex = m_ctlCustList.AddString(strText);
		m_ctlCustList.SetItemData(nIndex, ceOIDRecord);

		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	return TRUE;
}
*/

BOOL CCustomerView::LoadList(CEOID ceOIDDB)
{
	CString strText;
	strText.Format(TEXT("select cust_nmbr, inst_cust_ind, org_nm, last_nm, first_nm, dea, med_ed, state_lic,addr_1,addr_2,city,state_cd,zip_cd,tele_nmbr,fax_nmbr from cust_profile"));
	CComBSTR sql = strText;
	int nIndex;
	ado.Open(sql);
	
	while (!ado.isEOF())
	{
		strText.Format(TEXT("%s, %s"),
				 ado.GetValue(3).pbstrVal,
				 ado.GetValue(4).pbstrVal);

		nIndex = m_ctlCustList.AddString(strText);
		m_ctlCustList.SetItemData(nIndex, ado.GetValue(0).lVal);
		
		ado.MoveNext();
	}

	ado.Close();

	return TRUE;
}

void CCustomerView::OnSelchangeTabs(NMHDR* pNMHDR, LRESULT* pResult) 
{
	int nIndex = m_ctlTabs.GetCurSel();
	SelectTab(nIndex);
	*pResult = 0;
}

void CCustomerView::SelectTab(int nIndex) 
{
	DisableAll();
//	BOOL bIndividual = lstrcmp(Fields[PROP_INST_CUST_IND].val.lpwstr, TEXT("Y")) == 0 ? FALSE : TRUE;
	BOOL bIndividual = TRUE;
	EnableTab(nIndex, bIndividual);
}

void CCustomerView::OnSelchangeCustList() 
{
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	LPBYTE pBuf = NULL;
	CString strText;
	int nIndex;
	DWORD dwIndex = 0;

	nIndex = m_ctlCustList.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	strText.Format(TEXT("select inst_cust_ind, org_nm, last_nm, first_nm, dea, med_ed, state_lic,addr_1,addr_2,city,state_cd,zip_cd,tele_nmbr,fax_nmbr from cust_profile where cust_nmbr = %d"), m_ctlCustList.GetItemData(nIndex));
	CComBSTR sql = strText;
	ado.Open(sql);
	
	if (ado.isEOF())
	{
		MessageBox(strText);
		ado.Close();
		return;
	}

	strText = CStr(ado.GetValue(0));
	MessageBox(strText);
	BOOL bIndividual = strText == TEXT("N") ? TRUE : FALSE;

	if (nIndex == tabGeneral && !m_ctlProfileList.IsWindowVisible())
		EnableTab(tabGeneral, bIndividual);

	if (!bIndividual)
	{
		strText.Format(TEXT("%s"), ado.GetValue(1).pbstrVal);
		GetDlgItem(IDC_ORG_NAME)->SetWindowText(strText);
	}
	else
	{
		strText.Format(TEXT("%s"), ado.GetValue(2).pbstrVal);
		MessageBox(strText);
		GetDlgItem(IDC_FIRST_NAME)->SetWindowText(strText);
		strText.Format(TEXT("%s"), ado.GetValue(3).pbstrVal);
		MessageBox(strText);
		GetDlgItem(IDC_LAST_NAME)->SetWindowText(strText);
	}

	m_ctlIds.DeleteAllItems();
	strText.Format(TEXT("%s"), ado.GetValue(4).pbstrVal);
	if (lstrlen(strText))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("DEA"), 0 );
		strText.Format(TEXT("%s"), ado.GetValue(4).pbstrVal);
		m_ctlIds.SetItemText( nIndex, 1, strText);
	}

	strText.Format(TEXT("%s"), ado.GetValue(5).pbstrVal);
	if (lstrlen(strText))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("MED-ED"), 0 );
		strText.Format(TEXT("%s"), ado.GetValue(5).pbstrVal);
		m_ctlIds.SetItemText( nIndex, 1, strText);
	}

	strText.Format(TEXT("%s"), ado.GetValue(6).pbstrVal);
	if (lstrlen(strText))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("LICENSE"), 0 );
		strText.Format(TEXT("%s"), ado.GetValue(6).pbstrVal);
		m_ctlIds.SetItemText( nIndex, 1, strText);
	}

	strText.Format(TEXT("%s"), ado.GetValue(7).pbstrVal);
	GetDlgItem(IDC_LOCATION_LINE1)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(8).pbstrVal);
	GetDlgItem(IDC_LOCATION_LINE2)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(9).pbstrVal);
	GetDlgItem(IDC_LOCATION_CITY)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(10).pbstrVal);
	GetDlgItem(IDC_LOCATION_STATE)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(11).pbstrVal);
	GetDlgItem(IDC_LOCATION_ZIP)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(12).pbstrVal);
	GetDlgItem(IDC_LOCATION_PHONE)->SetWindowText(strText);
	strText.Format(TEXT("%s"), ado.GetValue(13).pbstrVal);
	GetDlgItem(IDC_LOCATION_FAX)->SetWindowText(strText);

	m_ctlFlags.ResetContent();
	m_ctlFlags.AddString(TEXT("No Data"));
	
	
//	ado.Close();

/*

	ceOIDRecord = m_ctlCustList.GetItemData(nIndex);
	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_CEOID, ceOIDRecord, &dwIndex);
	if (!ceOIDRecord)
		return;

	CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize);
	pBuf[dwBufSize] = 0;
	Fields = (CEPROPVAL*)pBuf;
	BOOL bIndividual = lstrcmp(Fields[PROP_INST_CUST_IND].val.lpwstr, TEXT("Y")) == 0 ? FALSE : TRUE;

	nIndex = m_ctlTabs.GetCurSel();
	if (nIndex == tabGeneral && !m_ctlProfileList.IsWindowVisible())
		EnableTab(tabGeneral, bIndividual);

	if (!bIndividual)
	{
		GetDlgItem(IDC_ORG_NAME)->SetWindowText(Fields[PROP_ORG_NM].val.lpwstr);
	}
	else
	{
		GetDlgItem(IDC_FIRST_NAME)->SetWindowText(Fields[PROP_FIRST_NM].val.lpwstr);
		GetDlgItem(IDC_LAST_NAME)->SetWindowText(Fields[PROP_LAST_NM].val.lpwstr);
	}

	m_ctlIds.DeleteAllItems();
	if (lstrlen(Fields[PROP_DEA_NMBR].val.lpwstr))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("DEA"), 0 );
		m_ctlIds.SetItemText( nIndex, 1, Fields[PROP_DEA_NMBR].val.lpwstr);
	}

	if (lstrlen(Fields[PROP_MED_ED_NMBR].val.lpwstr))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("MED-ED"), 0 );
		m_ctlIds.SetItemText( nIndex, 1, Fields[PROP_MED_ED_NMBR].val.lpwstr);
	}

	if (lstrlen(Fields[PROP_STATE_LIC_NMBR].val.lpwstr))
	{
		nIndex = m_ctlIds.InsertItem( m_ctlIds.GetItemCount(), TEXT("LICENSE"), 0 );
		m_ctlIds.SetItemText( nIndex, 1, Fields[PROP_STATE_LIC_NMBR].val.lpwstr);
	}

	GetDlgItem(IDC_LOCATION_LINE1)->SetWindowText(Fields[PROP_ADDR_1].val.lpwstr);
	GetDlgItem(IDC_LOCATION_LINE2)->SetWindowText(Fields[PROP_ADDR_2].val.lpwstr);
	GetDlgItem(IDC_LOCATION_CITY)->SetWindowText(Fields[PROP_CITY].val.lpwstr);
	GetDlgItem(IDC_LOCATION_STATE)->SetWindowText(Fields[PROP_STATE_CD].val.lpwstr);
	GetDlgItem(IDC_LOCATION_ZIP)->SetWindowText(Fields[PROP_ZIP_CD].val.lpwstr);
	GetDlgItem(IDC_LOCATION_PHONE)->SetWindowText(Fields[PROP_TELE_NMBR].val.lpwstr);
	GetDlgItem(IDC_LOCATION_FAX)->SetWindowText(Fields[PROP_FAX_NMBR].val.lpwstr);

	m_ctlFlags.ResetContent();
	m_ctlFlags.AddString(TEXT("No Data"));
	GetDlgItem(IDC_NOTES)->SetWindowText(Fields[PROP_NOTES].val.lpwstr);

	m_ctlProfileList.DeleteAllItems();
	strText.Format(TEXT("%d"), Fields[PROP_CUST_NMBR].val.lVal);
	nIndex = m_ctlProfileList.InsertItem(m_ctlProfileList.GetItemCount(), strText, 0);
	m_ctlProfileList.SetItemText( nIndex, 1, Fields[PROP_ADDR_1].val.lpwstr);
	m_ctlProfileList.SetItemText( nIndex, 2, Fields[PROP_CITY].val.lpwstr);
	m_ctlProfileList.SetItemText( nIndex, 3, Fields[PROP_STATE_CD].val.lpwstr);
	m_ctlProfileList.SetItemText( nIndex, 4, Fields[PROP_ZIP_CD].val.lpwstr);
*/
}

void CCustomerView::OnDestroy() 
{
	CFormView::OnDestroy();

	if (hDB)
		CloseHandle(hDB);
}

void CCustomerView::DisableAll() 
{
// Profile
	GetDlgItem(IDC_FIRST_NAME_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FIRST_NAME)->EnableWindow(FALSE);
	GetDlgItem(IDC_FIRST_NAME)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LAST_NAME_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LAST_NAME)->EnableWindow(FALSE);
	GetDlgItem(IDC_LAST_NAME)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ORG_NAME_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ORG_NAME)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ORG_NAME)->EnableWindow(FALSE);

// IDs
	GetDlgItem(IDC_IDS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_IDS)->EnableWindow(FALSE);
	GetDlgItem(IDC_ID_NEW)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ID_NEW)->EnableWindow(FALSE);
	GetDlgItem(IDC_ID_DELETE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ID_DELETE)->EnableWindow(FALSE);
	GetDlgItem(IDC_ID_EDIT)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ID_EDIT)->EnableWindow(FALSE);


// Flags
	GetDlgItem(IDC_FLAG_TYPE_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FLAG_TYPE)->EnableWindow(FALSE);
	GetDlgItem(IDC_FLAG_TYPE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FLAGS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FLAGS)->EnableWindow(FALSE);
	GetDlgItem(IDC_FLAG_NEW)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FLAG_NEW)->EnableWindow(FALSE);
	GetDlgItem(IDC_FLAG_DELETE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_FLAG_DELETE)->EnableWindow(FALSE);

// Localtion
	GetDlgItem(IDC_LOCATION_LINE1)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_LINE1)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_LINE2)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_LINE2)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_CITY)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_CITY)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_STATE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_STATE)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_ZIP)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_ZIP)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_PHONE_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_PHONE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_PHONE)->EnableWindow(FALSE);
	GetDlgItem(IDC_LOCATION_FAX_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_FAX)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_LOCATION_FAX)->EnableWindow(FALSE);

// Notes
	GetDlgItem(IDC_NOTES)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_NOTES)->EnableWindow(FALSE);

}

void CCustomerView::EnableTab(int nIndex, BOOL bIndividual) 
{
	switch(nIndex)
	{
		case tabGeneral:
			if (bIndividual)
			{
				GetDlgItem(IDC_FIRST_NAME_LABEL)->ShowWindow(SW_SHOW);
				GetDlgItem(IDC_FIRST_NAME)->EnableWindow(TRUE);
				GetDlgItem(IDC_FIRST_NAME)->ShowWindow(SW_SHOW);
				GetDlgItem(IDC_LAST_NAME_LABEL)->ShowWindow(SW_SHOW);
				GetDlgItem(IDC_LAST_NAME)->EnableWindow(TRUE);
				GetDlgItem(IDC_LAST_NAME)->ShowWindow(SW_SHOW);
			}
			else
			{
				GetDlgItem(IDC_ORG_NAME_LABEL)->ShowWindow(SW_SHOW);
				GetDlgItem(IDC_ORG_NAME)->ShowWindow(SW_SHOW);
				GetDlgItem(IDC_ORG_NAME)->EnableWindow(TRUE);
			}
			break;

		case tabIDs:
			GetDlgItem(IDC_IDS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_IDS)->EnableWindow(TRUE);
			GetDlgItem(IDC_ID_NEW)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ID_NEW)->EnableWindow(TRUE);
			GetDlgItem(IDC_ID_DELETE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ID_DELETE)->EnableWindow(TRUE);
			GetDlgItem(IDC_ID_EDIT)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ID_EDIT)->EnableWindow(TRUE);
			break;


		case tabFlags:
			GetDlgItem(IDC_FLAG_TYPE_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_FLAG_TYPE)->EnableWindow(TRUE);
			GetDlgItem(IDC_FLAG_TYPE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_FLAGS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_FLAGS)->EnableWindow(TRUE);
			GetDlgItem(IDC_FLAG_NEW)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_FLAG_NEW)->EnableWindow(TRUE);
			GetDlgItem(IDC_FLAG_DELETE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_FLAG_DELETE)->EnableWindow(TRUE);
			break;

		case tabLocations:
			GetDlgItem(IDC_LOCATION_LINE1)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_LINE1)->EnableWindow(TRUE);
			GetDlgItem(IDC_LOCATION_LINE2)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_LINE2)->EnableWindow(TRUE);
			GetDlgItem(IDC_LOCATION_CITY)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_CITY)->EnableWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_STATE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_STATE)->EnableWindow(TRUE);
			GetDlgItem(IDC_LOCATION_ZIP)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_ZIP)->EnableWindow(TRUE);
			GetDlgItem(IDC_LOCATION_PHONE_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_PHONE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_PHONE)->EnableWindow(TRUE);
			GetDlgItem(IDC_LOCATION_FAX_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_FAX)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_LOCATION_FAX)->EnableWindow(TRUE);
			break;

		case tabNotes:
			GetDlgItem(IDC_NOTES)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_NOTES)->EnableWindow(TRUE);
			break;
	}
}

void CCustomerView::ImportCustFile(LPCTSTR lpszCustFile)
{
    HANDLE hFile = CreateFile(lpszCustFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL);
    if (hFile == INVALID_HANDLE_VALUE)
	{
		// Open the database
		return;
	}

    TCHAR   szBuffer[4096];
    DWORD   dwNumberOfBytesRead;
	DWORD	dwChar;
	CEPROPVAL NewRecProps[PROP_NOTES + 1];
    TCHAR * pChar = NULL;

	// Delete the database
//	CeDeleteDatabase(ceoidDB); 

	HANDLE hDataBase;          

	ceoidDB = CeCreateDatabase(TEXT("Cust"), 0, 0, NULL);
	if (ceoidDB != NULL)
		hDataBase = CeOpenDatabase(&ceoidDB, TEXT("Cust"),0, 0,NULL);
	else
		return;		// Handle Open Failure

    memset(szBuffer, 0, sizeof(szBuffer));
	dwChar = 0;
    while (ReadFile(hFile,&szBuffer[dwChar],1,&dwNumberOfBytesRead,NULL) && dwNumberOfBytesRead)
    {
		if (szBuffer[dwChar] == '\r')
		{
			szBuffer[dwChar] = 0;
			// process line

			int nFieldNo = 0;
			for (pChar = wcstok(szBuffer, TEXT(","));
				 pChar && nFieldNo < PROP_NOTES + 1;
				 pChar = Trim(wcstok(NULL, TEXT(","))), nFieldNo++)
			{
				NewRecProps[nFieldNo].wFlags = 0;
				NewRecProps[nFieldNo].wLenData = 0;

				switch (nFieldNo)
				{
					case PROP_CUST_NMBR: 
					case PROP_FLD_ACTV_ACCT_NMBR: 
					case PROP_RT_ORG_NMBR: 
					case PROP_CUST_LOC_NMBR: 
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_I4, nFieldNo);
						NewRecProps[nFieldNo].val.lVal = _wtol(pChar);
						NewRecProps[nFieldNo].wLenData = sizeof(NewRecProps[nFieldNo].val.lVal);
						break;

					default:
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_LPWSTR, nFieldNo);
						NewRecProps[nFieldNo].val.lpwstr = pChar;
						NewRecProps[nFieldNo].wLenData = lstrlen(pChar);
						break;
				}
			}

			if (!CeWriteRecordProps(hDataBase, 0, nFieldNo, NewRecProps))
			{


			}

			// reset
			memset(szBuffer, 0, 4096);
			dwChar = 0;
		}
		else
			dwChar++;
    }

    if (GetLastError() != ERROR_SUCCESS)
    {
        ;///real error
    }

    CloseHandle(hFile);
	CloseHandle(hDataBase);
}

void CCustomerView::ImportDetailsFile(LPCTSTR lpszDetailsFile)
{
    HANDLE hFile = CreateFile(lpszDetailsFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL);
    if (hFile == INVALID_HANDLE_VALUE)
	{
		// Open the database
		return;
	}

    TCHAR   szBuffer[4096];
    DWORD   dwNumberOfBytesRead;
	DWORD	dwChar;
	CEPROPVAL NewRecProps[PROP_DTL_GRP_DESC + 1];
    TCHAR * pChar = NULL;

	HANDLE hDataBase;          

	ceoidDB = CeCreateDatabase(TEXT("Details"), 0, 0, NULL);
	if (ceoidDB != NULL)
		hDataBase = CeOpenDatabase(&ceoidDB, TEXT("Details"),0, 0,NULL);
	else
		return;		// Handle Open Failure

    memset(szBuffer, 0, sizeof(szBuffer));
	dwChar = 0;
    while (ReadFile(hFile,&szBuffer[dwChar],1,&dwNumberOfBytesRead,NULL) && dwNumberOfBytesRead)
    {
		if (szBuffer[dwChar] == '\r')
		{
			szBuffer[dwChar] = 0;
			// process line

			int nFieldNo = 0;
			for (pChar = wcstok(szBuffer, TEXT(","));
				 pChar && nFieldNo < PROP_DTL_GRP_DESC + 1;
				 pChar = Trim(wcstok(NULL, TEXT(","))), nFieldNo++)
			{
				NewRecProps[nFieldNo].wFlags = 0;
				NewRecProps[nFieldNo].wLenData = 0;

				switch (nFieldNo)
				{
					case PROP_PROD_DTL_GRP_NMBR: 
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_I4, nFieldNo);
						NewRecProps[nFieldNo].val.lVal = _wtol(pChar);
						NewRecProps[nFieldNo].wLenData = sizeof(NewRecProps[nFieldNo].val.lVal);
						break;

					default:
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_LPWSTR, nFieldNo);
						NewRecProps[nFieldNo].val.lpwstr = pChar;
						NewRecProps[nFieldNo].wLenData = lstrlen(pChar);
						break;
				}
			}

			if (!CeWriteRecordProps(hDataBase, 0, nFieldNo, NewRecProps))
			{


			}

			// reset
			memset(szBuffer, 0, 4096);
			dwChar = 0;
		}
		else
			dwChar++;
    }

    if (GetLastError() != ERROR_SUCCESS)
    {
        ;///real error
    }

    CloseHandle(hFile);
	CloseHandle(hDataBase);
}

void CCustomerView::ImportSamplesFile(LPCTSTR lpszSamplesFile)
{
    HANDLE hFile = CreateFile(lpszSamplesFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL);
    if (hFile == INVALID_HANDLE_VALUE)
	{
		// Open the database
		return;
	}

    TCHAR   szBuffer[4096];
    DWORD   dwNumberOfBytesRead;
	DWORD	dwChar;
	CEPROPVAL NewRecProps[PROP_SMPL_PROD_DESC + 1];
    TCHAR * pChar = NULL;

	HANDLE hDataBase;          

	ceoidDB = CeCreateDatabase(TEXT("Samples"), 0, 0, NULL);
	if (ceoidDB != NULL)
		hDataBase = CeOpenDatabase(&ceoidDB, TEXT("Samples"),0, 0,NULL);
	else
		return;		// Handle Open Failure

    memset(szBuffer, 0, sizeof(szBuffer));
	dwChar = 0;
    while (ReadFile(hFile,&szBuffer[dwChar],1,&dwNumberOfBytesRead,NULL) && dwNumberOfBytesRead)
    {
		if (szBuffer[dwChar] == '\r')
		{
			szBuffer[dwChar] = 0;
			// process line

			int nFieldNo = 0;
			for (pChar = wcstok(szBuffer, TEXT(","));
				 pChar && nFieldNo < PROP_SMPL_PROD_DESC + 1;
				 pChar = Trim(wcstok(NULL, TEXT(","))), nFieldNo++)
			{
				NewRecProps[nFieldNo].wFlags = 0;
				NewRecProps[nFieldNo].wLenData = 0;

				switch (nFieldNo)
				{
					case PROP_SMPL_PROD_NMBR: 
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_I4, nFieldNo);
						NewRecProps[nFieldNo].val.lVal = _wtol(pChar);
						NewRecProps[nFieldNo].wLenData = sizeof(NewRecProps[nFieldNo].val.lVal);
						break;

					default:
						NewRecProps[nFieldNo].propid = MAKELONG(CEVT_LPWSTR, nFieldNo);
						NewRecProps[nFieldNo].val.lpwstr = pChar;
						NewRecProps[nFieldNo].wLenData = lstrlen(pChar);
						break;
				}
			}

			if (!CeWriteRecordProps(hDataBase, 0, nFieldNo, NewRecProps))
			{


			}

			// reset
			memset(szBuffer, 0, 4096);
			dwChar = 0;
		}
		else
			dwChar++;
    }

    if (GetLastError() != ERROR_SUCCESS)
    {
        ;///real error
    }

    CloseHandle(hFile);
	CloseHandle(hDataBase);
}


void CCustomerView::OnViewGrid() 
{
	if (m_ctlProfileList.IsWindowVisible())
	{
		m_ctlProfileList.EnableWindow(FALSE);
		m_ctlProfileList.ShowWindow(SW_HIDE);
		SelectTab(m_ctlTabs.GetCurSel());
		m_ctlTabs.EnableWindow(TRUE);
		m_ctlTabs.ShowWindow(SW_SHOW);
	}
	else
	{
		m_ctlTabs.EnableWindow(FALSE);
		m_ctlTabs.ShowWindow(SW_HIDE);
		DisableAll();
		m_ctlProfileList.EnableWindow(TRUE);
		m_ctlProfileList.ShowWindow(SW_SHOW);
	}
}

void CCustomerView::OnUpdateViewGrid(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
	if (m_ctlProfileList.IsWindowVisible())
		pCmdUI->SetCheck(1);
	else
		pCmdUI->SetCheck(0);
}
