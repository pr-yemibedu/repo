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

CString CStr(COleVariant v)
{
	switch (v.vt)
	{
		case VT_NULL:
			return "";

		case VT_BSTR:
			return (LPCSTR)V_BSTRREF(&v);
	}

	v.ChangeType(VT_BSTR);
	return V_BSTR(&v);
}

int CInt(COleVariant v)
{
	if (v.vt == VT_NULL)
		return 0;

	v.ChangeType(VT_I2);
	return V_I2(&v);
}

long CLng(COleVariant v)
{
	if (v.vt == VT_NULL)
		return 0;

	v.ChangeType(VT_I4);
	return V_I4(&v);
}

COleDateTime CDate(COleVariant v)
{
	v.ChangeType(VT_DATE);
	return V_DATE(&v);
}

short CSht( COleVariant vt, short nNull /*= 0*/ )
{
short nRet = 0;
    switch( V_VT(&vt) ) {
	case VT_NULL:
		nRet = nNull;
		break;
	default:
		vt.ChangeType( VT_I2 );
		nRet = V_I2( &vt );
	}
	return nRet;
}
