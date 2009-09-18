// IComp.h : main header file for the ICOMP application
//

#if !defined(AFX_ICOMP_H__7C2926EA_BBFF_4E89_9752_ADB326C9A787__INCLUDED_)
#define AFX_ICOMP_H__7C2926EA_BBFF_4E89_9752_ADB326C9A787__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CICompApp:
// See IComp.cpp for the implementation of this class
//

class CICompApp : public CWinApp
{
public:
	CICompApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CICompApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CICompApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ICOMP_H__7C2926EA_BBFF_4E89_9752_ADB326C9A787__INCLUDED_)
