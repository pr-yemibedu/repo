// cedb.cpp : implementation file
//
#include "stdafx.h"
#include "cedb.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


TCHAR* Trim(TCHAR *pChar)
{
	if (!pChar)
		return pChar;

	if (*pChar == '"')
		pChar++;

	if (pChar[wcslen(pChar)-1] == '"')
		pChar[wcslen(pChar)-1] = 0;

	return pChar;
}

