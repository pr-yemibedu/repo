// IniManipulation.h : main header file for the INIMANIPULATION application
//

#if !defined(AFX_INIMANIPULATION_H__8A4ABFE1_3669_42EF_B639_E742CBD85359__INCLUDED_)
#define AFX_INIMANIPULATION_H__8A4ABFE1_3669_42EF_B639_E742CBD85359__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CIniManipulationApp:
// See IniManipulation.cpp for the implementation of this class
//

class CIniManipulationApp : public CWinApp
{
public:
	CIniManipulationApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CIniManipulationApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CIniManipulationApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_INIMANIPULATION_H__8A4ABFE1_3669_42EF_B639_E742CBD85359__INCLUDED_)
