#if !defined(AFX_CALLDLG_H__CCB1A7E2_D463_4F8B_AF0F_F9D79CC74647__INCLUDED_)
#define AFX_CALLDLG_H__CCB1A7E2_D463_4F8B_AF0F_F9D79CC74647__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CallDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCallDlg dialog

class CCallDlg : public CDialog
{
// Construction
public:
	CCallDlg(CWnd* pParent = NULL);   // standard constructor
	void EnableTabControls(int nTab);
	BOOL LoadDetails();
	BOOL LoadSamples();
	BOOL LoadTopics();
	void EnableWindows();
	void EnableNoteTabControls(int nTab);


// Dialog Data
	//{{AFX_DATA(CCallDlg)
	enum { IDD = IDD_CALL_DIALOG };
	CListBox	m_ctlSelectedCallTopics;
	CListBox	m_ctlAvailableCallTopics;
	CDateTimeCtrl	m_ctlCallDate;
	CComboBox	m_ctlCallLocation;
	CComboBox	m_ctlStartTime;
	CComboBox	m_ctlCallDept;
	CComboBox	m_ctlCallEndTime;
	CEdit	m_ctlCallCount;
	CComboBox	m_ctlCallContact;
	CTabCtrl	m_ctlCallNoteTab;
	CEdit	m_ctlNextCallStrategy;
	CEdit	m_ctlCallStrategy;
	CEdit	m_ctlCallPersonalNotes;
	CEdit	m_ctlCallHistoricalNotes;
	CEdit	m_ctlCallAccomplishments;
	CListBox	m_ctlDetailedProducts;
	CListBox	m_ctlAvailableDetails;
	CListBox	m_ctlSampledProducts;
	CListBox	m_ctlAvailableSamples;
	CTabCtrl	m_ctlTabs;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCallDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSelchangeTabs(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnSampleRemove();
	afx_msg void OnSampleRemoveAll();
	afx_msg void OnSampleAdd();
	afx_msg void OnSampleSignature();
	afx_msg void OnSampleFormNumber();
	afx_msg void OnDetailRemoveAll();
	afx_msg void OnDetailRemove();
	afx_msg void OnDetailAdd();
	afx_msg void OnDblclkSampledProducts();
	afx_msg void OnDblclkAvailableDetails();
	afx_msg void OnDblclkAvailableSamples();
	afx_msg void OnDblclkDetailedProducts();
	afx_msg void OnSelchangeCallNoteTab(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLDLG_H__CCB1A7E2_D463_4F8B_AF0F_F9D79CC74647__INCLUDED_)
