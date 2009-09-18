// MemoryManagementFunctions.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "MemoryManagementFunctions.h"
#include <string>
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
		// TODO: code your application's behavior here.
		CString strHello;
		strHello.LoadString(IDS_HELLO);
		cout << strHello.Find(TEXT("H")) << endl;
		cout << strHello.Compare(TEXT("Hello from MFC!")) << endl; 
		cout << (LPCTSTR)strHello << endl;
		cout << (LPTSTR)GetCommandLine() << endl;
		cout.put('G');
		cout.put('\n');
	}

	TCHAR tc;
	memset(&tc, 0, sizeof(TCHAR));

	string str = "";

	return nRetCode;
}


