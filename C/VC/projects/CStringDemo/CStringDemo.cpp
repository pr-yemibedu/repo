// CStringDemo.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "CStringDemo.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// The one and only application object

CWinApp theApp;

using namespace std;

int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	int nRetCode = 0;

	// initialize MFC and print and error on failure
	if (!AfxWinInit(::GetModuleHandle(NULL), NULL, ::GetCommandLine(), 0))
	{
		// TODO: change error code to suit your needs
		cerr << _T("Fatal Error: MFC initialization failed") << endl;
		nRetCode = 1;
	}
	else
	{
		CString strText = "Hello World";
		cout << strText.GetBuffer(0) << endl;

		//#ifdef _DEBUG
			afxDump << "strText: " << strText << "\n";
		//#endif

	}

	return nRetCode;
}


