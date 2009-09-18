// Noise.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include "noise.h"

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    return TRUE;
}

VOID __declspec(dllexport) CALLBACK  MakeNoise(int nCount)
{
	for (;nCount > 0 ; nCount--)
	{
		MessageBeep(0);
		MessageBox(NULL, _T("Beep!"), _T("MakeNoise"), MB_OK);
	}
}