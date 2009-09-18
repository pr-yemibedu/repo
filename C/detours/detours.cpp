// detours.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

DETOUR_TRAMPOLINE(VOID WINAPI SleepTrampoline(DWORD), Sleep);

VOID WINAPI SleepDetour(DWORD dw)
{
	printf("before SleepTrampoline(%d)\n", dw);
	SleepTrampoline(dw);
	printf("after SleepTrampoline(%d)\n", dw);
}

int _tmain(int argc, _TCHAR* argv[])
{
	DetourFunctionWithTrampoline((PBYTE)SleepTrampoline, (PBYTE)SleepDetour);
	Sleep(5000);
	getc(stdin);
	return 0;
}

