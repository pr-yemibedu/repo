// ProtectedFileListing.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "ProtectedFileListing.h"
#include "C:\Program Files\Microsoft Platform SDK\Include\sfc.h"
#include <list>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// The one and only application object

CWinApp theApp;

using namespace std;

// helper functions
void DisplayArrayOfChars(WCHAR* chArray);
void DisplayFileList(list<CString> &l, TCHAR delimeter);

int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	int nRetCode = 0;
	list<CString> l;

	// initialize MFC and print and error on failure
	if (!AfxWinInit(::GetModuleHandle(NULL), NULL, ::GetCommandLine(), 0))
	{
		// TODO: change error code to suit your needs
		cerr << _T("Fatal Error: MFC initialization failed") << endl;
		nRetCode = 1;
	}
	else
	{

		PROTECTED_FILE_DATA pfd;
		memset(&pfd, 0, sizeof(PROTECTED_FILE_DATA));

		pfd.FileNumber = 0;

		CString strTemp;

		do
		{
			if ((SfcGetNextProtectedFile(NULL, &pfd)) != 0)
			{
				//DisplayArrayOfChars(pfd.FileName);
				strTemp = CString(pfd.FileName);
				l.push_back(strTemp);
			}

		}while (GetLastError() != ERROR_NO_MORE_FILES);
	}

	l.sort();
	DisplayFileList(l, '\n');

	return nRetCode;
}

void DisplayFileList(list<CString> &l, TCHAR delimeter)
{
	CString str;

	while (l.size() > 0)
	{
		str = l.front();
		cout << str.GetBuffer(0) << delimeter;
		l.pop_front();
	}
	GetObject(
}


