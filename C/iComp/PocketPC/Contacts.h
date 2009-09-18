// Contacts.h : main header file for the CONTACTS application
//

#if !defined(AFX_CONTACTS_H__6983D5BB_E442_47B2_920B_028C38C5B515__INCLUDED_)
#define AFX_CONTACTS_H__6983D5BB_E442_47B2_920B_028C38C5B515__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CContactsApp:
// See Contacts.cpp for the implementation of this class
//

class CContactsApp : public CWinApp
{
public:
	CContactsApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CContactsApp)
	public:
	virtual BOOL InitInstance();
	virtual int ExitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CContactsApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CONTACTS_H__6983D5BB_E442_47B2_920B_028C38C5B515__INCLUDED_)
