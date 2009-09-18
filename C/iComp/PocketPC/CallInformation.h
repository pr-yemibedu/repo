#if !defined(AFX_CALLINFORMATION_H__6839CE59_4637_4933_97D7_DA6D1FBC291A__INCLUDED_)
#define AFX_CALLINFORMATION_H__6839CE59_4637_4933_97D7_DA6D1FBC291A__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallInformation.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallInformation dialog

#include <Afxtempl.h>

class CSample
{
public:
	CString m_strProductDesc;
	int m_nQty;
	CString m_strLot;

CSample();

};

typedef CArray<CSample,CSample> CSampleList;

extern CSampleList samples;

class CDetail
{
public:
	CString m_strProductDesc;

CDetail();

};

typedef CArray<CDetail,CDetail> CDetailList;

extern CDetailList details;

class CTopic
{
public:
	CString m_strTopicDesc;

CTopic();

};

typedef CArray<CTopic,CTopic> CTopicList;

extern CTopicList topics;

class CReprint
{
public:
	CString m_strAuthor;
	CString m_strTitle;
	CString m_strReprintNo;

CReprint();

};

typedef CArray<CReprint,CReprint> CReprintList;

extern CReprintList reprints;


class CPIR
{
public:
	CString m_strTopicDesc;

CPIR();

};

typedef CArray<CPIR,CPIR> CPIRList;

extern CPIRList PIRs;


class CCallInformation : public CDialog
{
// Construction
public:
	CCallInformation(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCallInformation)
	enum { IDD = IDD_CALL };
	CStatic	m_ctlCallSamples;
	CStatic	m_ctlCallDetails;
	CString	m_strCallName;
	CString	m_strCallCSZ;
	CString	m_strCallAddress;
	CString	m_strCallDate;
	CString	m_strCallLicense;
	CString	m_strCallNotes;
	CString	m_strCallDetails;
	CString	m_strCallTopics;
	CString	m_strCallPIRS;
	CString	m_strCallReprints;
	CString	m_strCallSamples;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallInformation)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallInformation)
	afx_msg void OnCallDetails();
	afx_msg void OnCallForm();
	afx_msg void OnCallNotes();
	afx_msg void OnCallPir();
	afx_msg void OnCallReprint();
	afx_msg void OnCallSamples();
	afx_msg void OnCallSignature();
	afx_msg void OnCallTopics();
	afx_msg void OnDestroy();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnCallDate();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLINFORMATION_H__6839CE59_4637_4933_97D7_DA6D1FBC291A__INCLUDED_)
