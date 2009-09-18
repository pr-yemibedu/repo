// CallPIN.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallPIN.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallPIN dialog


CCallPIN::CCallPIN(CWnd* pParent /*=NULL*/)
	: CDialog(CCallPIN::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallPIN)
	m_strCallPIN = _T("");
	//}}AFX_DATA_INIT
}


void CCallPIN::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallPIN)
	DDX_Control(pDX, IDC_CALL_PIN, m_ctlCallPIN);
	DDX_Text(pDX, IDC_CALL_PIN, m_strCallPIN);
	DDV_MaxChars(pDX, m_strCallPIN, 4);
	//}}AFX_DATA_MAP

	if (pDX->m_bSaveAndValidate)
	{
		if (m_strCallPIN != TEXT("1234"))
		{
			m_ctlCallPIN.SetWindowText(TEXT(""));
			pDX->PrepareEditCtrl(IDC_CALL_PIN);
			pDX->Fail();
		}
	}
}


BEGIN_MESSAGE_MAP(CCallPIN, CDialog)
	//{{AFX_MSG_MAP(CCallPIN)
	ON_EN_KILLFOCUS(IDC_CALL_PIN, OnKillfocusCallPin)
	ON_EN_SETFOCUS(IDC_CALL_PIN, OnSetfocusCallPin)
	ON_BN_CLICKED(IDC_PIN_1, OnPin1)
	ON_BN_CLICKED(IDC_PIN_2, OnPin2)
	ON_BN_CLICKED(IDC_PIN_3, OnPin3)
	ON_BN_CLICKED(IDC_PIN_4, OnPin4)
	ON_BN_CLICKED(IDC_PIN_5, OnPin5)
	ON_BN_CLICKED(IDC_PIN_6, OnPin6)
	ON_BN_CLICKED(IDC_PIN_7, OnPin7)
	ON_BN_CLICKED(IDC_PIN_8, OnPin8)
	ON_BN_CLICKED(IDC_PIN_9, OnPin9)
	ON_BN_CLICKED(IDC_PIN_0, OnPin0)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallPIN message handlers


void CCallPIN::OnKillfocusCallPin() 
{
//	SHSipPreference(GetSafeHwnd(), SIP_DOWN);
}

void CCallPIN::OnSetfocusCallPin() 
{
//	SHSipPreference(GetSafeHwnd(), SIP_UP);
}

void CCallPIN::OnPin1() 
{
	OnPush(1);
}

void CCallPIN::OnPin2() 
{
	OnPush(2);
}

void CCallPIN::OnPin3() 
{
	OnPush(3);
}

void CCallPIN::OnPin4() 
{
	OnPush(4);
}

void CCallPIN::OnPin5() 
{
	OnPush(5);
}

void CCallPIN::OnPin6() 
{
	OnPush(6);
}

void CCallPIN::OnPin7() 
{
	OnPush(7);
}

void CCallPIN::OnPin8() 
{
	OnPush(8);
}

void CCallPIN::OnPin9() 
{
	OnPush(9);
}

void CCallPIN::OnPin0() 
{
	OnPush(0);
}

void CCallPIN::OnPush(int nDigit)
{
	CString strPIN;
	m_ctlCallPIN.GetWindowText(strPIN);
	CString strNewPIN;
	strNewPIN.Format(TEXT("%s%d"), strPIN, nDigit);
	m_ctlCallPIN.SetWindowText(strNewPIN);
	if (strNewPIN.GetLength() == 4)
		OnOK();
}
