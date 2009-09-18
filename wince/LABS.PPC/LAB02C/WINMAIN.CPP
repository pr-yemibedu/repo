// winmain.cpp : Defines the entry point for the application.
//

#include "stdafx.h"

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
 	// TODO: Place code here.
	TCHAR tch[256];
	wsprintf(tch,   L"hInstance = %x\n"
					L"hPrevInstance = %x\n"
					L"lpCmdLine = %s\n"
					L"nCmdShow = 0x%x\n",
					hInstance,
					hPrevInstance,
					lpCmdLine,
					nCmdShow);

    MessageBox(NULL, tch, L"WinMain", MB_OK);

	return 0;
}

