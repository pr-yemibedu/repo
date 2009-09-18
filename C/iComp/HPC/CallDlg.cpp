// CallDlg.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallDlg.h"
#include "SignatureDlg.h"
#include "FormNumberDlg.h"
#include "cedb.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallDlg dialog

enum { eGeneralTab, eSamplesTab, eDetailsTab, eTopicsTab, eReprintsTab, ePIRSTab, eNotesTab };
enum { eStrategyTab, eNextStrategyTab, eAccomplishmentsTab, ePersonalNotesTab, eHistoricalNotesTab };

CCallDlg::CCallDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CCallDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallDlg)
	//}}AFX_DATA_INIT
}


void CCallDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallDlg)
	DDX_Control(pDX, IDC_SELECTED_CALL_TOPICS, m_ctlSelectedCallTopics);
	DDX_Control(pDX, IDC_AVAILABLE_CALL_TOPICS2, m_ctlAvailableCallTopics);
	DDX_Control(pDX, IDC_CALL_DATE1, m_ctlCallDate);
	DDX_Control(pDX, IDC_CALL_LOCATION, m_ctlCallLocation);
	DDX_Control(pDX, IDC_CALL_START_TIME, m_ctlStartTime);
	DDX_Control(pDX, IDC_CALL_DEPT, m_ctlCallDept);
	DDX_Control(pDX, IDC_CALL_END_TIME, m_ctlCallEndTime);
	DDX_Control(pDX, IDC_CALL_COUNT, m_ctlCallCount);
	DDX_Control(pDX, IDC_CALL_CONTACT, m_ctlCallContact);
	DDX_Control(pDX, IDC_CALL_NOTE_TAB, m_ctlCallNoteTab);
	DDX_Control(pDX, IDC_NEXT_CALL_STRATEGY, m_ctlNextCallStrategy);
	DDX_Control(pDX, IDC_CALL_STRATEGY, m_ctlCallStrategy);
	DDX_Control(pDX, IDC_CALL_PERSONAL_NOTES, m_ctlCallPersonalNotes);
	DDX_Control(pDX, IDC_CALL_HISTORICAL_NOTES, m_ctlCallHistoricalNotes);
	DDX_Control(pDX, IDC_CALL_ACCOMPLISHMENTS, m_ctlCallAccomplishments);
	DDX_Control(pDX, IDC_DETAILED_PRODUCTS, m_ctlDetailedProducts);
	DDX_Control(pDX, IDC_AVAILABLE_DETAILS, m_ctlAvailableDetails);
	DDX_Control(pDX, IDC_SAMPLED_PRODUCTS, m_ctlSampledProducts);
	DDX_Control(pDX, IDC_AVAILABLE_SAMPLES, m_ctlAvailableSamples);
	DDX_Control(pDX, IDC_TABS, m_ctlTabs);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCallDlg, CDialog)
	//{{AFX_MSG_MAP(CCallDlg)
	ON_NOTIFY(TCN_SELCHANGE, IDC_TABS, OnSelchangeTabs)
	ON_BN_CLICKED(IDC_SAMPLE_REMOVE, OnSampleRemove)
	ON_BN_CLICKED(IDC_SAMPLE_REMOVE_ALL, OnSampleRemoveAll)
	ON_BN_CLICKED(IDC_SAMPLE_ADD, OnSampleAdd)
	ON_BN_CLICKED(IDC_SAMPLE_SIGNATURE, OnSampleSignature)
	ON_BN_CLICKED(IDC_SAMPLE_FORM_NUMBER, OnSampleFormNumber)
	ON_BN_CLICKED(IDC_DETAIL_REMOVE_ALL, OnDetailRemoveAll)
	ON_BN_CLICKED(IDC_DETAIL_REMOVE, OnDetailRemove)
	ON_BN_CLICKED(IDC_DETAIL_ADD, OnDetailAdd)
	ON_LBN_DBLCLK(IDC_SAMPLED_PRODUCTS, OnDblclkSampledProducts)
	ON_LBN_DBLCLK(IDC_AVAILABLE_DETAILS, OnDblclkAvailableDetails)
	ON_LBN_DBLCLK(IDC_AVAILABLE_SAMPLES, OnDblclkAvailableSamples)
	ON_LBN_DBLCLK(IDC_DETAILED_PRODUCTS, OnDblclkDetailedProducts)
	ON_NOTIFY(TCN_SELCHANGE, IDC_CALL_NOTE_TAB, OnSelchangeCallNoteTab)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallDlg message handlers

BOOL CCallDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	int		i;
	TC_ITEM tcItem;

	LPWSTR pszTabItems[] = {TEXT("General"), TEXT("Samples"), TEXT("Details"), TEXT("Topics"), TEXT("Reprints"), TEXT("PIRS"), TEXT("Call Notes"), NULL};

	for (i=0; pszTabItems[i] != NULL; i++)
	{
		tcItem.mask = TCIF_TEXT;
		tcItem.pszText = pszTabItems[i];
		tcItem.cchTextMax = lstrlen(pszTabItems[i]);
		m_ctlTabs.InsertItem(i, &tcItem);
	}

	
	LPWSTR pszNoteTabItems[] = {TEXT("Strategy"), TEXT("Next Call Strategy"), TEXT("Accomplishments"), TEXT("Personal Notes"), TEXT("Historical Notes"), NULL};

	for (i=0; pszNoteTabItems[i] != NULL; i++)
	{
		tcItem.mask = TCIF_TEXT;
		tcItem.pszText = pszNoteTabItems[i];
		tcItem.cchTextMax = lstrlen(pszNoteTabItems[i]);
		m_ctlCallNoteTab.InsertItem(i, &tcItem);
	}

	m_ctlCallNoteTab.SetCurSel(eStrategyTab);
	EnableNoteTabControls(eStrategyTab);
	m_ctlTabs.SetCurSel(eSamplesTab);
	EnableTabControls(eSamplesTab);

	LoadSamples();
	LoadDetails();
	LoadTopics();

	m_ctlStartTime.SetCurSel(m_ctlStartTime.AddString(TEXT("07:30 AM")));
	m_ctlStartTime.AddString(TEXT("08:00 AM"));
	m_ctlStartTime.AddString(TEXT("08:30 AM"));
	m_ctlStartTime.AddString(TEXT("09:00 AM"));
	m_ctlStartTime.AddString(TEXT("09:30 AM"));

	m_ctlCallEndTime.SetCurSel(m_ctlCallEndTime.AddString(TEXT("08:30 AM")));
	m_ctlCallEndTime.AddString(TEXT("09:00 AM"));
	m_ctlCallEndTime.AddString(TEXT("10:00 AM"));
	m_ctlCallEndTime.AddString(TEXT("10:30 AM"));
	m_ctlCallEndTime.AddString(TEXT("11:00 AM"));

	m_ctlCallLocation.SetCurSel(m_ctlCallLocation.AddString(TEXT("80 EAST 11TH STREET, SUITE 211, NEW YORK, NY 10003 (Primary)")));
	m_ctlCallContact.SetCurSel(m_ctlCallContact.AddString(TEXT("<None>")));
	m_ctlCallDept.SetCurSel(m_ctlCallDept.AddString(TEXT("<None>")));

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

BOOL CCallDlg::LoadDetails()
{
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	int nIndex;
	CEOID ceoidDB = 0;

	HANDLE hDB = CeOpenDatabase(&ceoidDB, TEXT("Details"), 0, CEDB_AUTOINCREMENT, NULL);

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		nIndex = m_ctlAvailableDetails.AddString(Fields[PROP_DTL_GRP_DESC].val.lpwstr);
		m_ctlAvailableDetails.SetItemData(nIndex, Fields[PROP_PROD_DTL_GRP_NMBR].val.lVal);
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	if (hDB)
		CloseHandle(hDB);

	return TRUE;
}

BOOL CCallDlg::LoadSamples()
{
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	int nIndex;
	CEOID ceoidDB = 0;

	HANDLE hDB = CeOpenDatabase(&ceoidDB, TEXT("Samples"), 0, CEDB_AUTOINCREMENT, NULL);

	DWORD dwError;
	if (hDB == INVALID_HANDLE_VALUE)
		dwError = GetLastError();

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		nIndex = m_ctlAvailableSamples.AddString(Fields[PROP_SMPL_PROD_DESC].val.lpwstr);
		m_ctlAvailableSamples.SetItemData(nIndex, Fields[PROP_SMPL_PROD_NMBR].val.lVal);
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	if (hDB)
		CloseHandle(hDB);
	return TRUE;
}


BOOL CCallDlg::LoadTopics()
{
	m_ctlAvailableCallTopics.AddString(TEXT("ACE - ACEI & Asymptomatic LV Disfun"));
	m_ctlAvailableCallTopics.AddString(TEXT("ACE - ACEI & CHF"));
	m_ctlAvailableCallTopics.AddString(TEXT("ACE - ACEI & Hypertension"));
	m_ctlAvailableCallTopics.AddString(TEXT("ACE - Clinical use of ACE Inhibitor"));
	m_ctlAvailableCallTopics.AddString(TEXT("ACE - Effects of ACE1 upon the RAA"));
	
	return TRUE;
}

void CCallDlg::OnSelchangeTabs(NMHDR* pNMHDR, LRESULT* pResult) 
{
	int nTab = m_ctlTabs.GetCurSel();	

	EnableTabControls(nTab);

	*pResult = 0;
}

void CCallDlg::OnSampleRemove() 
{
	int nIndex = m_ctlSampledProducts.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CString strText;
	DWORD dwData;
	m_ctlSampledProducts.GetText(nIndex, strText);
	dwData = m_ctlSampledProducts.GetItemData(nIndex);
	m_ctlSampledProducts.DeleteString(nIndex);
	nIndex = m_ctlAvailableSamples.AddString(strText);
	m_ctlAvailableSamples.SetItemData(nIndex, dwData);
	EnableWindows();
}

void CCallDlg::OnSampleRemoveAll() 
{
	int nIndex;
	CString strText;
	DWORD dwData;
	for (; m_ctlSampledProducts.GetCount(); )
	{
		m_ctlSampledProducts.GetText(0, strText);
		dwData = m_ctlSampledProducts.GetItemData(0);
		m_ctlSampledProducts.DeleteString(0);
		nIndex = m_ctlAvailableSamples.AddString(strText);
		m_ctlAvailableSamples.SetItemData(nIndex, dwData);
	}
	EnableWindows();
}

void CCallDlg::OnSampleAdd() 
{
	int nIndex = m_ctlAvailableSamples.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CString strText;
	DWORD dwData;
	m_ctlAvailableSamples.GetText(nIndex, strText);
	dwData = m_ctlAvailableSamples.GetItemData(nIndex);
	m_ctlAvailableSamples.DeleteString(nIndex);
	nIndex = m_ctlSampledProducts.AddString(strText);
	m_ctlSampledProducts.SetItemData(nIndex, dwData);
	EnableWindows();
}

void CCallDlg::EnableWindows() 
{
	return;
	if (m_ctlAvailableDetails.GetCurSel() == LB_ERR)
		GetDlgItem(IDC_DETAIL_ADD)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_DETAIL_ADD)->EnableWindow(TRUE);
	
	if (m_ctlDetailedProducts.GetCurSel() == LB_ERR)
		GetDlgItem(IDC_DETAIL_REMOVE)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_DETAIL_REMOVE)->EnableWindow(TRUE);

	if (!m_ctlDetailedProducts.GetCount())
		GetDlgItem(IDC_DETAIL_REMOVE_ALL)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_DETAIL_REMOVE_ALL)->EnableWindow(TRUE);
	
	if (m_ctlAvailableSamples.GetCurSel() == LB_ERR)
		GetDlgItem(IDC_SAMPLE_ADD)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_SAMPLE_ADD)->EnableWindow(TRUE);
	
	if (m_ctlSampledProducts.GetCurSel() == LB_ERR)
		GetDlgItem(IDC_SAMPLE_REMOVE)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_SAMPLE_REMOVE)->EnableWindow(TRUE);

	if (!m_ctlSampledProducts.GetCount())
		GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->EnableWindow(FALSE);
	else
		GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->EnableWindow(TRUE);
}


void CCallDlg::OnSampleSignature() 
{
	CSignatureDlg dlg;
	dlg.DoModal();
}

void CCallDlg::OnSampleFormNumber() 
{
	CFormNumberDlg dlg;
	dlg.DoModal();
}

void CCallDlg::EnableTabControls(int nTab)
{
	GetDlgItem(IDC_CALL_DATE_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_DATE_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_DATE1)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_DATE1)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_START_TIME_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_START_TIME_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_START_TIME)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_START_TIME)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_END_TIME_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_END_TIME_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_END_TIME)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_END_TIME)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_LOCATION_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_LOCATION_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_LOCATION)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_LOCATION)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_CONTACT_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_CONTACT_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_CONTACT)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_CONTACT)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_DEPT_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_DEPT_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_DEPT)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_DEPT)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_COUNT_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_COUNT_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_COUNT)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_COUNT)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_COUNT_SPIN)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_COUNT_SPIN)->ShowWindow(SW_HIDE);
	
	GetDlgItem(IDC_AVAILABLE_SAMPLES_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_SAMPLES_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_AVAILABLE_SAMPLES)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_SAMPLES)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLE_SIGNATURE)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLE_SIGNATURE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLE_FORM_NUMBER)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLE_FORM_NUMBER)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLE_ADD)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLE_ADD)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLE_REMOVE)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLE_REMOVE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLED_PRODUCTS_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLED_PRODUCTS_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SAMPLED_PRODUCTS)->EnableWindow(FALSE);
	GetDlgItem(IDC_SAMPLED_PRODUCTS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_PAPER_RECEIPT_REQUESTED)->EnableWindow(FALSE);
	GetDlgItem(IDC_PAPER_RECEIPT_REQUESTED)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ERECEIPT_REQUESTED)->EnableWindow(FALSE);
	GetDlgItem(IDC_ERECEIPT_REQUESTED)->ShowWindow(SW_HIDE);
	
	GetDlgItem(IDC_AVAILABLE_DETAILS_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_DETAILS_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_AVAILABLE_DETAILS)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_DETAILS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAIL_ADD)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAIL_ADD)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAIL_REMOVE)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAIL_REMOVE)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAIL_REMOVE_ALL)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAIL_REMOVE_ALL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAILED_PRODUCTS_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAILED_PRODUCTS_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAILED_PRODUCTS)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAILED_PRODUCTS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_DETAIL_REQUESTED)->EnableWindow(FALSE);
	GetDlgItem(IDC_DETAIL_REQUESTED)->ShowWindow(SW_HIDE);

	GetDlgItem(IDC_AVAILABLE_CALL_TOPICS_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_CALL_TOPICS_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_AVAILABLE_CALL_TOPICS2)->EnableWindow(FALSE);
	GetDlgItem(IDC_AVAILABLE_CALL_TOPICS2)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SELECTED_CALL_TOPICS_LABEL)->EnableWindow(FALSE);
	GetDlgItem(IDC_SELECTED_CALL_TOPICS_LABEL)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_SELECTED_CALL_TOPICS)->EnableWindow(FALSE);
	GetDlgItem(IDC_SELECTED_CALL_TOPICS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ADD_CALL_TOPIC)->EnableWindow(FALSE);
	GetDlgItem(IDC_ADD_CALL_TOPIC)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_ADD_ALL_CALL_TOPIC)->EnableWindow(FALSE);
	GetDlgItem(IDC_ADD_ALL_CALL_TOPIC)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_REMOVE_CALL_TOPIC)->EnableWindow(FALSE);
	GetDlgItem(IDC_REMOVE_CALL_TOPIC)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_REMOVE_ALL_CALL_TOPIC)->EnableWindow(FALSE);
	GetDlgItem(IDC_REMOVE_ALL_CALL_TOPIC)->ShowWindow(SW_HIDE);

	GetDlgItem(IDC_CALL_NOTE_TAB)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_NOTE_TAB)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_STRATEGY)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_STRATEGY)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_NEXT_CALL_STRATEGY)->EnableWindow(FALSE);
	GetDlgItem(IDC_NEXT_CALL_STRATEGY)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_PERSONAL_NOTES)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_PERSONAL_NOTES)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->ShowWindow(SW_HIDE);

	switch (nTab)
	{
		case eGeneralTab:
			GetDlgItem(IDC_CALL_DATE_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_DATE_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_DATE1)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_DATE1)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_START_TIME_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_START_TIME_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_START_TIME)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_START_TIME)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_END_TIME_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_END_TIME_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_END_TIME)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_END_TIME)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_LOCATION_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_LOCATION_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_LOCATION)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_LOCATION)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_CONTACT_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_CONTACT_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_CONTACT)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_CONTACT)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_DEPT_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_DEPT_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_DEPT)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_DEPT)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_COUNT_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_COUNT_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_COUNT)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_COUNT)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_CALL_COUNT_SPIN)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_COUNT_SPIN)->ShowWindow(SW_SHOW);
		break;

		case eSamplesTab:
			GetDlgItem(IDC_AVAILABLE_SAMPLES_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_SAMPLES_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_AVAILABLE_SAMPLES)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_SAMPLES)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLE_SIGNATURE)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLE_SIGNATURE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLE_FORM_NUMBER)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLE_FORM_NUMBER)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLE_ADD)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLE_ADD)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLE_REMOVE)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLE_REMOVE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLE_REMOVE_ALL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLED_PRODUCTS_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLED_PRODUCTS_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SAMPLED_PRODUCTS)->EnableWindow(TRUE);
			GetDlgItem(IDC_SAMPLED_PRODUCTS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_PAPER_RECEIPT_REQUESTED)->EnableWindow(TRUE);
			GetDlgItem(IDC_PAPER_RECEIPT_REQUESTED)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ERECEIPT_REQUESTED)->EnableWindow(TRUE);
			GetDlgItem(IDC_ERECEIPT_REQUESTED)->ShowWindow(SW_SHOW);
			break;

		case eDetailsTab:
			GetDlgItem(IDC_AVAILABLE_DETAILS_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_DETAILS_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_AVAILABLE_DETAILS)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_DETAILS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAIL_ADD)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAIL_ADD)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAIL_REMOVE)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAIL_REMOVE)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAIL_REMOVE_ALL)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAIL_REMOVE_ALL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAILED_PRODUCTS_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAILED_PRODUCTS_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAILED_PRODUCTS)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAILED_PRODUCTS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_DETAIL_REQUESTED)->EnableWindow(TRUE);
			GetDlgItem(IDC_DETAIL_REQUESTED)->ShowWindow(SW_SHOW);
			break;

		case eTopicsTab:
			GetDlgItem(IDC_AVAILABLE_CALL_TOPICS_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_CALL_TOPICS_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_AVAILABLE_CALL_TOPICS2)->EnableWindow(TRUE);
			GetDlgItem(IDC_AVAILABLE_CALL_TOPICS2)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SELECTED_CALL_TOPICS_LABEL)->EnableWindow(TRUE);
			GetDlgItem(IDC_SELECTED_CALL_TOPICS_LABEL)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_SELECTED_CALL_TOPICS)->EnableWindow(TRUE);
			GetDlgItem(IDC_SELECTED_CALL_TOPICS)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ADD_CALL_TOPIC)->EnableWindow(TRUE);
			GetDlgItem(IDC_ADD_CALL_TOPIC)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_ADD_ALL_CALL_TOPIC)->EnableWindow(TRUE);
			GetDlgItem(IDC_ADD_ALL_CALL_TOPIC)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_REMOVE_CALL_TOPIC)->EnableWindow(TRUE);
			GetDlgItem(IDC_REMOVE_CALL_TOPIC)->ShowWindow(SW_SHOW);
			GetDlgItem(IDC_REMOVE_ALL_CALL_TOPIC)->EnableWindow(TRUE);
			GetDlgItem(IDC_REMOVE_ALL_CALL_TOPIC)->ShowWindow(SW_SHOW);
			break;

		case eNotesTab:
			GetDlgItem(IDC_CALL_NOTE_TAB)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_NOTE_TAB)->ShowWindow(SW_SHOW);
			EnableNoteTabControls(m_ctlCallNoteTab.GetCurSel());
			break;

		default:
			break;

	}

	EnableWindows();
}

void CCallDlg::OnDetailRemoveAll() 
{
	int nIndex;
	CString strText;
	DWORD dwData;
	for (; m_ctlDetailedProducts.GetCount(); )
	{
		m_ctlDetailedProducts.GetText(0, strText);
		dwData = m_ctlDetailedProducts.GetItemData(0);
		m_ctlDetailedProducts.DeleteString(0);
		nIndex = m_ctlAvailableDetails.AddString(strText);
		m_ctlAvailableDetails.SetItemData(nIndex, dwData);
	}
	EnableWindows();
}

void CCallDlg::OnDetailRemove() 
{
	int nIndex = m_ctlDetailedProducts.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CString strText;
	DWORD dwData;
	m_ctlDetailedProducts.GetText(nIndex, strText);
	dwData = m_ctlDetailedProducts.GetItemData(nIndex);
	m_ctlDetailedProducts.DeleteString(nIndex);
	nIndex = m_ctlAvailableDetails.AddString(strText);
	m_ctlAvailableDetails.SetItemData(nIndex, dwData);
	EnableWindows();
}

void CCallDlg::OnDetailAdd() 
{
	int nIndex = m_ctlAvailableDetails.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CString strText;
	DWORD dwData;
	m_ctlAvailableDetails.GetText(nIndex, strText);
	dwData = m_ctlAvailableDetails.GetItemData(nIndex);
	m_ctlAvailableDetails.DeleteString(nIndex);
	nIndex = m_ctlDetailedProducts.AddString(strText);
	m_ctlDetailedProducts.SetItemData(nIndex, dwData);
	EnableWindows();
}

void CCallDlg::OnDblclkSampledProducts() 
{
	OnSampleRemove();	
}

void CCallDlg::OnDblclkAvailableDetails() 
{
	OnDetailAdd();	
}

void CCallDlg::OnDblclkAvailableSamples() 
{
	OnSampleAdd();	
}

void CCallDlg::OnDblclkDetailedProducts() 
{
	OnDetailRemove();	
}

void CCallDlg::OnSelchangeCallNoteTab(NMHDR* pNMHDR, LRESULT* pResult) 
{
	EnableNoteTabControls(m_ctlCallNoteTab.GetCurSel());
	*pResult = 0;
}


void CCallDlg::EnableNoteTabControls(int nTab)
{
	GetDlgItem(IDC_CALL_STRATEGY)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_STRATEGY)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_NEXT_CALL_STRATEGY)->EnableWindow(FALSE);
	GetDlgItem(IDC_NEXT_CALL_STRATEGY)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_PERSONAL_NOTES)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_PERSONAL_NOTES)->ShowWindow(SW_HIDE);
	GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->EnableWindow(FALSE);
	GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->ShowWindow(SW_HIDE);

	switch (nTab)
	{
		case eStrategyTab:
			GetDlgItem(IDC_CALL_STRATEGY)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_STRATEGY)->ShowWindow(SW_SHOW);
			break;

		case eNextStrategyTab:
			GetDlgItem(IDC_NEXT_CALL_STRATEGY)->EnableWindow(TRUE);
			GetDlgItem(IDC_NEXT_CALL_STRATEGY)->ShowWindow(SW_SHOW);
			break;

		case eAccomplishmentsTab:
			GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_ACCOMPLISHMENTS)->ShowWindow(SW_SHOW);
			break;

		case ePersonalNotesTab:
			GetDlgItem(IDC_CALL_PERSONAL_NOTES)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_PERSONAL_NOTES)->ShowWindow(SW_SHOW);
			break;

		case eHistoricalNotesTab:
			GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->EnableWindow(TRUE);
			GetDlgItem(IDC_CALL_HISTORICAL_NOTES)->ShowWindow(SW_SHOW);
			break;

		default:
			break;

	}

	EnableWindows();
}
