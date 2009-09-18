#if !defined(AFX_CONTACTSLIST_H__12170FEF_9AE5_4EDF_B20C_E95B8AB17794__INCLUDED_)
#define AFX_CONTACTSLIST_H__12170FEF_9AE5_4EDF_B20C_E95B8AB17794__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// ContactsList.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CContactsList window

class CContactsList : public CListBox
{
// Construction
public:
	CContactsList();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CContactsList)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CContactsList();

	// Generated message map functions
protected:
	//{{AFX_MSG(CContactsList)
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONTACTSLIST_H__12170FEF_9AE5_4EDF_B20C_E95B8AB17794__INCLUDED_)
