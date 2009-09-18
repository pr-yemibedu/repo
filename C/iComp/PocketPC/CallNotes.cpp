// CallNotes.cpp : implementation file
//
#include "stdafx.h"
#include "resource.h"
#include "CallNotes.h"
#include "ProfileDlg.h"
#include "CallDate.h"
#include <voicectl.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCallNotes dialog


CCallNotes::CCallNotes(CWnd* pParent /*=NULL*/)
	: CDialog(CCallNotes::IDD, pParent)
{
	//{{AFX_DATA_INIT(CCallNotes)
	m_strCallNotes = _T("");
	m_strCallAddress = _T("");
	m_strCallCSZ = _T("");
	m_strCallDate = _T("");
	m_strCallLicense = _T("");
	m_strCallName = _T("");
	//}}AFX_DATA_INIT
}


void CCallNotes::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CCallNotes)
	DDX_Text(pDX, IDC_CALL_NOTES, m_strCallNotes);
	DDV_MaxChars(pDX, m_strCallNotes, 1024);
	DDX_Text(pDX, IDC_CALL_ADDRESS, m_strCallAddress);
	DDX_Text(pDX, IDC_CALL_CSZ, m_strCallCSZ);
	DDX_Text(pDX, IDC_CALL_DATE, m_strCallDate);
	DDX_Text(pDX, IDC_CALL_LICENSE, m_strCallLicense);
	DDX_Text(pDX, IDC_CALL_NAME, m_strCallName);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CCallNotes, CDialog)
	//{{AFX_MSG_MAP(CCallNotes)
	ON_EN_KILLFOCUS(IDC_CALL_NOTES, OnKillfocusCallNotes)
	ON_EN_SETFOCUS(IDC_CALL_NOTES, OnSetfocusCallNotes)
	ON_WM_LBUTTONDOWN()
	ON_BN_CLICKED(IDC_VOICE, OnVoice)
	ON_BN_CLICKED(IDC_CALL_DATE, OnCallDate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCallNotes message handlers

void CCallNotes::OnKillfocusCallNotes() 
{
	SHSipPreference(GetSafeHwnd(), SIP_DOWN);
}

void CCallNotes::OnSetfocusCallNotes() 
{
	SHSipPreference(GetSafeHwnd(), SIP_UP);
}

void CCallNotes::OnLButtonDown(UINT nFlags, CPoint point) 
{
	CProfileDlg dlg;
	dlg.DoModal();
	
	CDialog::OnLButtonDown(nFlags, point);
}

BOOL CCallNotes::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult) 
{
    LPNMHDR pnmh = (LPNMHDR) lParam;

    switch (pnmh->code)
    {
        case VRN_ERROR:
            break;
        case VRN_RECORD_START:
            break;
        case VRN_RECORD_STOP:
            break;
        case VRN_PLAY_START:
            break;
        case VRN_PLAY_STOP:
            break;
        case VRN_CANCEL:
//            MessageBox(TEXT("Cancel…"), NULL, MB_OK);
            break;
        case VRN_OK:
//            MessageBox(TEXT("OK…"), NULL, MB_OK);
            break;
    }
	
	return CDialog::OnNotify(wParam, lParam, pResult);
}

BOOL CCallNotes::OnInitDialog() 
{
	CDialog::OnInitDialog();
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}


void CCallNotes::OnVoice() 
{
	// initialize the control’s data structure.
	CM_VOICE_RECORDER cmvr;
	memset( &cmvr, 0, sizeof(cmvr));
	cmvr.cb = sizeof(CM_VOICE_RECORDER);
	cmvr.dwStyle = VRS_NO_MOVE | VRS_MODAL;
	cmvr.xPos = -1;  // Use -1 to center the control relative to owner.
	cmvr.yPos = -1;
	cmvr.hwndParent = GetSafeHwnd();
	cmvr.lpszRecordFileName = TEXT("\\My Documents\\VoiceRec.wav");

	// Returns the handle to the control.
	m_hwndVoice = VoiceRecorder_Create(&cmvr);
}

void CCallNotes::OnCallDate() 
{
	CCallDate dlg;
	dlg.DoModal();
}
