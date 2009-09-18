#if !defined(AFX_CUSTLIST_H__B7A234D8_611E_4D7A_8F10_F5EB88DBA2F2__INCLUDED_)
#define AFX_CUSTLIST_H__B7A234D8_611E_4D7A_8F10_F5EB88DBA2F2__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000
// CustList.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CCustList dialog

class CCustList : public CDialog
{
// Construction
public:
	CCustList(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CCustList)
	enum { IDD = IDD_CONTACTS };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCustList)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CCustList)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CUSTLIST_H__B7A234D8_611E_4D7A_8F10_F5EB88DBA2F2__INCLUDED_)
