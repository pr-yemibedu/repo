// CallInformation.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallInformation.h"
#include "SampleSignature.h"
#include "CallDetails.h"
#include "CallTopics.h"
#include "CallSamples.h"
#include "CallNotes.h"
#include "CallSampleSignature.h"
#include "CallPIN.h"
#include "ProfileDlg.h"
#include "CallDate.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallInformation dialog

CSampleList samples;
CTopicList topics;
CDetailList details;
CReprintList reprints;
CPIRList PIRs;

CSample::CSample()
{
	m_strProductDesc = _T("");
	m_nQty = 0;
	m_strLot = _T("");
}

CTopic::CTopic()
{
	m_strTopicDesc = _T("");
}

CDetail::CDetail()
{
	m_strProductDesc = _T("");
}

CReprint::CReprint()
{
}

CPIR::CPIR()
{
}

CCallInformation::CCallInformation(CWnd* pParent /*=NULL*/)
	: CDialog(CCallInformation::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallInformation)
	m_strCallName = _T("");
	m_strCallCSZ = _T("");
	m_strCallAddress = _T("");
	m_strCallDate = _T("");
	m_strCallLicense = _T("");
	m_strCallNotes = _T("(tap here for call notes)");
	m_strCallDetails = _T("tap here for details...");
	m_strCallTopics = _T("tap here for topics...");
	m_strCallPIRS = _T("tap here for PIRS...");
	m_strCallReprints = _T("tap here for reprints...");
	m_strCallSamples = _T("tap here for samples...");
	//}}AFX_DATA_INIT
}


void CCallInformation::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallInformation)
	DDX_Control(pDX, IDC_CALL_SAMPLES, m_ctlCallSamples);
	DDX_Control(pDX, IDC_CALL_DETAILS, m_ctlCallDetails);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_DATE, m_strCallDate);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NOTES, m_strCallNotes);
	DDX_Text(pDX, IDC_CALL_DETAILS, m_strCallDetails);
	DDX_Text(pDX, IDC_CALL_TOPICS, m_strCallTopics);
	DDX_Text(pDX, IDC_CALL_PIR, m_strCallPIRS);
	DDX_Text(pDX, IDC_CALL_REPRINT, m_strCallReprints);
	DDX_Text(pDX, IDC_CALL_SAMPLES, m_strCallSamples);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCallInformation, CDialog)
	//{{AFX_MSG_MAP(CCallInformation)
	ON_BN_CLICKED(IDC_CALL_DETAILS, OnCallDetails)
	ON_BN_CLICKED(IDC_CALL_FORM, OnCallForm)
	ON_BN_CLICKED(IDC_CALL_NOTES, OnCallNotes)
	ON_BN_CLICKED(IDC_CALL_PIR, OnCallPir)
	ON_BN_CLICKED(IDC_CALL_REPRINT, OnCallReprint)
	ON_BN_CLICKED(IDC_CALL_SAMPLES, OnCallSamples)
	ON_BN_CLICKED(IDC_CALL_SIGNATURE, OnCallSignature)
	ON_BN_CLICKED(IDC_CALL_TOPICS, OnCallTopics)
	ON_WM_DESTROY()
	ON_WM_LBUTTONDOWN()
	ON_WM_DELETEITEM()
	ON_BN_CLICKED(IDC_CALL_DATE, OnCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallInformation message handlers

void CCallInformation::OnCallDetails() 
{
	CCallDetails dlg;
	dlg.m_strCallName = m_strCallName;
	dlg.m_strCallAddress = m_strCallAddress;
	dlg.m_strCallCSZ = m_strCallCSZ;
	dlg.m_strCallLicense = m_strCallLicense;
	dlg.m_strCallDate = m_strCallDate;

	if (dlg.DoModal() == IDOK)
	{
		m_strCallDetails = _T("");
		int nCount = min(details.GetSize(), 4);
		for (int i = 0; i < nCount; i++)
		{
			if (m_strCallDetails.GetLength()) m_strCallDetails += _T(",");
			m_strCallDetails += details.GetAt(i).m_strProductDesc;
		}

		UpdateData(FALSE);
	}
}

void CCallInformation::OnCallForm() 
{
	// TODO: Add your control notification handler code here
	
}

void CCallInformation::OnCallNotes() 
{
	CCallNotes dlg;
	dlg.m_strCallName = m_strCallName;
	dlg.m_strCallAddress = m_strCallAddress;
	dlg.m_strCallCSZ = m_strCallCSZ;
	dlg.m_strCallLicense = m_strCallLicense;
	dlg.m_strCallDate = m_strCallDate;
	if (m_strCallNotes.Left(4) != TEXT("(tap"))
		dlg.m_strCallNotes = m_strCallNotes;

	if (dlg.DoModal() == IDOK)
	{
		m_strCallNotes = dlg.m_strCallNotes;
		UpdateData(FALSE);
	}

}

void CCallInformation::OnCallPir() 
{
	// TODO: Add your control notification handler code here
	
}

void CCallInformation::OnCallReprint() 
{
	// TODO: Add your control notification handler code here
	
}

void CCallInformation::OnCallSamples() 
{
	CCallSamples dlg;
	dlg.m_strCallName = m_strCallName;
	dlg.m_strCallAddress = m_strCallAddress;
	dlg.m_strCallCSZ = m_strCallCSZ;
	dlg.m_strCallLicense = m_strCallLicense;
	dlg.m_strCallDate = m_strCallDate;

	if (dlg.DoModal() == IDOK)
	{
		m_strCallSamples = _T("");
		int nCount = min(samples.GetSize(), 4);
		for (int i = 0; i < nCount; i++)
		{
			if (m_strCallSamples.GetLength()) m_strCallSamples += _T(",");
			m_strCallSamples += samples.GetAt(i).m_strProductDesc;
		}

		UpdateData(FALSE);
	}
}

void CCallInformation::OnCallSignature() 
{
	CCallSampleSignature dlg;
	dlg.m_strCallName = m_strCallName;
	dlg.m_strCallAddress = m_strCallAddress;
	dlg.m_strCallCSZ = m_strCallCSZ;
	dlg.m_strCallLicense = m_strCallLicense;
	dlg.DoModal();

	CCallPIN dlgPIN;
	dlgPIN.DoModal();
}

void CCallInformation::OnCallTopics() 
{
	CCallTopics dlg;
	dlg.m_strCallName = m_strCallName;
	dlg.m_strCallAddress = m_strCallAddress;
	dlg.m_strCallCSZ = m_strCallCSZ;
	dlg.m_strCallLicense = m_strCallLicense;
	dlg.m_strCallDate = m_strCallDate;

	if (dlg.DoModal() == IDOK)
	{
	
		m_strCallTopics = _T("");
		int nCount = min(topics.GetSize(), 4);
		for (int i = 0; i < nCount; i++)
		{
			if (m_strCallTopics.GetLength()) m_strCallTopics += _T(",");
			m_strCallTopics += topics.GetAt(i).m_strTopicDesc;
		}

		UpdateData(FALSE);
	}
}

void CCallInformation::OnDestroy() 
{
	CDialog::OnDestroy();
	samples.RemoveAll();
	details.RemoveAll();
	topics.RemoveAll();
	reprints.RemoveAll();
	PIRs.RemoveAll();
}

void CCallInformation::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}

void CCallInformation::OnCallDate() 
{
	CCallDate dlg;
	dlg.DoModal();
}
