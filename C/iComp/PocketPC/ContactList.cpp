// ContactList.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "ContactList.h"
#include "ContactsDoc.h"
#include "CallInformation.h"
#include "CustomerInformation.h"
#include "ProfileDlg.h"
#include "AddCustomerDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

CEOID	ceoidDB=0;
HANDLE hDB = NULL;
CEPROPVAL* Fields;

/////////////////////////////////////////////////////////////////////////////
// CContactList dialog


CContactList::CContactList(CWnd* pParent /*=NULL*/)
	: CDialog(CContactList::IDD, pParent)
{
	//{{AFX_DATA_INIT(CContactList)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CContactList::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CContactList)
	DDX_Control(pDX, IDC_CUST_LIST, m_ctlCustList);
	DDX_Control(pDX, IDC_FILTER, m_ctlFilter);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CContactList, CDialog)
	//{{AFX_MSG_MAP(CContactList)
	ON_EN_CHANGE(IDC_FILTER, OnChangeFilter)
	ON_LBN_DBLCLK(IDC_CUST_LIST, OnDblclkCustList)
	ON_EN_SETFOCUS(IDC_FILTER, OnSetfocusFilter)
	ON_EN_KILLFOCUS(IDC_FILTER, OnKillfocusFilter)
	ON_COMMAND(ID_NEW_CALL, OnNewCall)
	ON_COMMAND(ID_NEW_CUSTOMER, OnNewCustomer)
	ON_UPDATE_COMMAND_UI(ID_NEW_CALL, OnUpdateNewCall)
	ON_UPDATE_COMMAND_UI(ID_NEW_CUSTOMER, OnUpdateNewCustomer)
	ON_COMMAND(ID_VIEW_PROFILE, OnViewProfile)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CContactList message handlers

BOOL CContactList::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
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
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CContactList::OnChangeFilter() 
{
	CString strText;
	m_ctlFilter.GetWindowText(strText);
	LoadCustList(strText);
}

void CContactList::LoadCustList(const CString& strFilter) 
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

void CContactList::ImportCustFile(LPCTSTR lpszCustFile)
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

void CContactList::ImportTopicsFile(LPCTSTR lpszTopicsFile)
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

void CContactList::ImportDetailsFile(LPCTSTR lpszDetailsFile)
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

void CContactList::ImportSamplesFile(LPCTSTR lpszSamplesFile)
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


void CContactList::OnDblclkCustList() 
{

}

void CContactList::OnSetfocusFilter() 
{
	SHSipPreference(GetSafeHwnd(), SIP_UP);
}

void CContactList::OnKillfocusFilter() 
{
	SHSipPreference(GetSafeHwnd(), SIP_DOWN);
}

void CContactList::OnNewCall() 
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

void CContactList::OnNewCustomer() 
{
	CAddCustomerDlg dlg;
	dlg.DoModal();
}

void CContactList::OnUpdateNewCall(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
}

void CContactList::OnUpdateNewCustomer(CCmdUI* pCmdUI) 
{
	pCmdUI->Enable();
}

void CContactList::OnViewProfile() 
{
	CProfileDlg dlg;
	dlg.DoModal();
}
