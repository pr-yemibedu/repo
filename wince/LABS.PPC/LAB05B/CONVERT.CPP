// CONVERT.cpp : Defines the entry point for the application.
//

#include "stdafx.h"

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
 	// TODO: Place code here.
	char * pAscii = "Used to be ASCII text";
    WCHAR wch[64];

	mbstowcs(wch, pAscii, strlen(pAscii));

	// First, we show that our string has been converted to Unicode.
	MessageBox(NULL, wch, L"Convert", MB_OK);

	// Next, see how this is not Unicode!
	MessageBox(NULL, (LPWSTR)pAscii, L"Convert", MB_OK);

	return 0;
}

