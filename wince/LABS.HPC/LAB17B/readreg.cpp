// readreg.cpp : Defines the entry point for the application.
//

#include "stdafx.h"

#define BUFFER_SIZE 256

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
 	// Open HKEY_LOCAL_MACHINE\Init.
	TCHAR tch[BUFFER_SIZE];
	TCHAR tchValue[BUFFER_SIZE];
	DWORD dwType = REG_SZ;
	DWORD dwCount = BUFFER_SIZE;
	HKEY hkey;
	LONG lRet = RegOpenKeyEx(HKEY_LOCAL_MACHINE,
								_T("init"),
								0, 0, &hkey);
	if (lRet == ERROR_SUCCESS)
	{
		lRet = RegQueryValueEx(hkey, _T("Launch10"),
								0, &dwType, (LPBYTE)tchValue, 
								&dwCount);
		wsprintf(tch, _T("HKEY_LOCAL_MACHINE\\\nInit\n")
					  _T("Launch10 = %s"), tchValue);
	}
	else
	{
		wsprintf(tch, _T("RegOpenKey failed. Error = 0x%x"), lRet);
	}
	
	MessageBox(NULL, tch, _T("ReadReg"), MB_OK);
	return 0;
}

