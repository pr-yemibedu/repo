// DemoDialog.h : main header file for the DEMODIALOG application
//

#if !defined(AFX_DEMODIALOG_H__94A6DA95_C50F_4703_B20E_10425BF2ED8C__INCLUDED_)
#define AFX_DEMODIALOG_H__94A6DA95_C50F_4703_B20E_10425BF2ED8C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDemoDialogApp:
// See DemoDialog.cpp for the implementation of this class
//

class CDemoDialogApp : public CWinApp
{
public:
	CDemoDialogApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDemoDialogApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDemoDialogApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEMODIALOG_H__94A6DA95_C50F_4703_B20E_10425BF2ED8C__INCLUDED_)
