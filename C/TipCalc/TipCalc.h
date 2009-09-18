// TipCalc.h : main header file for the TIPCALC application
//

#if !defined(AFX_TIPCALC_H__A8776029_F15E_11D4_BBC7_005004CA19A5__INCLUDED_)
#define AFX_TIPCALC_H__A8776029_F15E_11D4_BBC7_005004CA19A5__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CTipCalcApp:
// See TipCalc.cpp for the implementation of this class
//

class CTipCalcApp : public CWinApp
{
public:
	CTipCalcApp(LPCTSTR lpszHelpName);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTipCalcApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CTipCalcApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft eMbedded Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TIPCALC_H__A8776029_F15E_11D4_BBC7_005004CA19A5__INCLUDED_)
