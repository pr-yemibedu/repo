// ContactsView.cpp : implementation of the CContactsView class
//

#include "stdafx.h"
#include "Contacts.h"

#include "ContactsDoc.h"
#include "ContactsView.h"
#include "CallInformation.h"
#include "CustomerInformation.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

CEOID	ceoidDB=0;
HANDLE hDB = NULL;
CEPROPVAL* Fields;

/////////////////////////////////////////////////////////////////////////////
// CContactsView

IMPLEMENT_DYNCREATE(CContactsView, CFormView)

BEGIN_MESSAGE_MAP(CContactsView, CFormView)
	//{{AFX_MSG_MAP(CContactsView)
	ON_EN_CHANGE(IDC_FILTER, OnChangeFilter)
	ON_LBN_DBLCLK(IDC_CUST_LIST, OnDblclkCustList)
	ON_EN_SETFOCUS(IDC_FILTER, OnSetfocusFilter)
	ON_EN_KILLFOCUS(IDC_FILTER, OnKillfocusFilter)
	ON_COMMAND(ID_NEW_CALL, OnNewCall)
	ON_COMMAND(ID_NEW_CUSTOMER, OnNewCustomer)
	//}}AFX_MSG_MAP

//	ON_MESSAGE(WM_CONTEXTMENU, OnContextMenu)

END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CContactsView construction/destruction

CContactsView::CContactsView()
	: CFormView(CContactsView::IDD)
{
	//{{AFX_DATA_INIT(CContactsView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// TODO: add construction code here

}

CContactsView::~CContactsView()
{
}

void CContactsView::DoDataExchange(CDataExchange* pDX)
{
	CFormView::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CContactsView)
	DDX_Control(pDX, IDC_FILTER, m_ctlFilter);
	DDX_Control(pDX, IDC_CUST_LIST, m_ctlCustList);
	//}}AFX_DATA_MAP
}

BOOL CContactsView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CFormView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CContactsView diagnostics

#ifdef _DEBUG
void CContactsView::AssertValid() const
{
	CFormView::AssertValid();
}

void CContactsView::Dump(CDumpContext& dc) const
{
	CFormView::Dump(dc);
}

CContactsDoc* CContactsView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CContactsDoc)));
	return (CContactsDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CContactsView message handlers

void CContactsView::OnChangeFilter() 
{
	CString strText;
	m_ctlFilter.GetWindowText(strText);
	LoadCustList(strText);
}


void CContactsView::LoadCustList(const CString& strFilter) 
{
	CEOID ceOIDRecord = NULL;
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	CString strText;
	int nIndex;
	DWORD dwIndex;
	m_ctlCustList.ResetContent();

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_BEGINNING, 0, &dwIndex);

	// Loop through each item in the database
	while ((ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize)))
	{
		Fields = (CEPROPVAL*)pBuf;
		if (Fields && Fields[PROP_INST_CUST_IND].val.lpwstr)
		{
			if (!wcscmp(Fields[PROP_INST_CUST_IND].val.lpwstr, TEXT("Y")))
			{
				strText.Format(TEXT("%s"), Fields[PROP_ORG_NM].val.lpwstr);
			}
			else
			{
				strText.Format(TEXT("%s, %s"),
						 Fields[PROP_LAST_NM].val.lpwstr,
						 Fields[PROP_FIRST_NM].val.lpwstr);
			}
			if (_wcsnicmp(strFilter, strText, strFilter.GetLength()))
				continue;

			nIndex = m_ctlCustList.AddString(strText);
			m_ctlCustList.SetItemData(nIndex, ceOIDRecord);
		}
		wNumProps = 0;
		dwBufSize = 0;
		pBuf = NULL;
	}

	return;
}

void CContactsView::OnInitialUpdate() 
{
	CFormView::OnInitialUpdate();
	
	CString str = TEXT("\\iComp\\cust_profile.txt");
	ImportCustFile(str);
	str = TEXT("\\iComp\\topics.txt");
	ImportTopicsFile(str);
	str = TEXT("\\iComp\\samples.txt");
	ImportSamplesFile(str);
	str = TEXT("\\iComp\\details.txt");
	ImportDetailsFile(str);

	ceoidDB = 0;

	hDB = CeOpenDatabase(&ceoidDB, TEXT("Cust"), 0, CEDB_AUTOINCREMENT, NULL);

	str = "";
	LoadCustList(str);
}

void CContactsView::ImportCustFile(LPCTSTR lpszCustFile)
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
	DeleteFile(lpszCustFile);

}

void CContactsView::ImportTopicsFile(LPCTSTR lpszTopicsFile)
{
    HANDLE hFile = CreateFile(lpszTopicsFile, GENERIC_READ ,FILE_SHARE_READ,NULL,OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,NULL);
    if (hFile == INVALID_HANDLE_VALUE)
	{
		// Open the database
		return;
	}

    TCHAR   szBuffer[4096];
    DWORD   dwNumberOfBytesRead;
	DWORD	dwChar;
	CEPROPVAL NewRecProps[PROP_DTL_TOPIC_DESC + 1];
    TCHAR * pChar = NULL;

	HANDLE hDataBase;          

	ceoidDB = CeCreateDatabase(TEXT("Topics"), 0, 0, NULL);
	if (ceoidDB != NULL)
		hDataBase = CeOpenDatabase(&ceoidDB, TEXT("Topics"),0, 0,NULL);
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
				 pChar && nFieldNo < PROP_DTL_TOPIC_DESC + 1;
				 pChar = Trim(wcstok(NULL, TEXT(","))), nFieldNo++)
			{
				NewRecProps[nFieldNo].wFlags = 0;
				NewRecProps[nFieldNo].wLenData = 0;

				switch (nFieldNo)
				{
					case PROP_DTL_TOPIC_NMBR: 
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
	DeleteFile(lpszTopicsFile);
}

void CContactsView::ImportDetailsFile(LPCTSTR lpszDetailsFile)
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
	DeleteFile(lpszDetailsFile);
}

void CContactsView::ImportSamplesFile(LPCTSTR lpszSamplesFile)
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
	DeleteFile(lpszSamplesFile);
}


void CContactsView::OnDblclkCustList() 
{

}

void CContactsView::OnSetfocusFilter() 
{
	SHSipPreference(GetSafeHwnd(), SIP_UP);
}

void CContactsView::OnKillfocusFilter() 
{
	SHSipPreference(GetSafeHwnd(), SIP_DOWN);
}

void CContactsView::OnNewCall() 
{
	int nIndex = m_ctlCustList.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CEOID ceOIDRecord = m_ctlCustList.GetItemData(nIndex);
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	DWORD dwIndex;

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_CEOID, ceOIDRecord, &dwIndex);
	ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize);
	Fields = (CEPROPVAL*)pBuf;

	CCallInformation dlg;
	dlg.m_strCallName.Format(TEXT("DR. %s %s"),
				  Fields[PROP_FIRST_NM].val.lpwstr,
				  Fields[PROP_LAST_NM].val.lpwstr);

	dlg.m_strCallAddress = Fields[PROP_ADDR_1].val.lpwstr;
	dlg.m_strCallCSZ.Format(TEXT("%s, %s %s"),
				  Fields[PROP_CITY].val.lpwstr,
				  Fields[PROP_STATE_CD].val.lpwstr,
				  Fields[PROP_ZIP_CD].val.lpwstr);

	dlg.m_strCallLicense = Fields[PROP_STATE_LIC_NMBR].val.lpwstr;
	dlg.m_strCallDate = COleDateTime::GetCurrentTime().Format(VAR_DATEVALUEONLY, 0);
	dlg.DoModal();
}

void CContactsView::OnNewCustomer() 
{
	int nIndex = m_ctlCustList.GetCurSel();
	if (nIndex == LB_ERR)
		return;

	CEOID ceOIDRecord = m_ctlCustList.GetItemData(nIndex);
	WORD wNumProps = 0;
	DWORD dwBufSize = 0;
	CEPROPVAL* Fields;
	LPBYTE pBuf = NULL;
	DWORD dwIndex;

	ceOIDRecord = CeSeekDatabase(hDB, CEDB_SEEK_CEOID, ceOIDRecord, &dwIndex);
	ceOIDRecord = CeReadRecordProps(hDB, CEDB_ALLOWREALLOC, &wNumProps, NULL, &pBuf, &dwBufSize);
	Fields = (CEPROPVAL*)pBuf;

	CCustomerInformation dlg;
	dlg.m_strCallName.Format(TEXT("DR. %s %s"),
				  Fields[PROP_FIRST_NM].val.lpwstr,
				  Fields[PROP_LAST_NM].val.lpwstr);

	dlg.m_strCallAddress = Fields[PROP_ADDR_1].val.lpwstr;
	dlg.m_strCallCSZ.Format(TEXT("%s, %s %s"),
				  Fields[PROP_CITY].val.lpwstr,
				  Fields[PROP_STATE_CD].val.lpwstr,
				  Fields[PROP_ZIP_CD].val.lpwstr);

	dlg.m_strCallLicense = Fields[PROP_STATE_LIC_NMBR].val.lpwstr;
	dlg.DoModal();
}
