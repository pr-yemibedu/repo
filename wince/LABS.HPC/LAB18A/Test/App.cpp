// App.cpp : Defines the entry point for the application.
//

#include "stdafx.h"
#include "..\noise.h"

int WINAPI WinMain(	HINSTANCE hInstance,
					HINSTANCE hPrevInstance,
					LPTSTR    lpCmdLine,
					int       nCmdShow)
{
 	// Dynamically link-to and execute function.
	HMODULE hmod = LoadLibrary(_T("NOISE.DLL"));
	if (hmod == NULL)
	{
		MessageBox(NULL, _T("Cannot Find Noise.dll"), _T("Test App"), MB_OK);
		return 0;
	}

	MAKENOISEPROC lpfnMakeNoise = (MAKENOISEPROC)GetProcAddress(hmod, _T("_MakeNoise@4"));
	if (lpfnMakeNoise)
	{
		lpfnMakeNoise(2);
		return 0;
	}
	else
	{
		MessageBox(NULL, _T("Cannot Find MakeNoise function"), _T("Test App"), MB_OK);
		return 0;
	}

	return 0;
}

