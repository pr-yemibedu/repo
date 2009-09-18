#define _UNICODE
#define UNICODE

#define MULTIBYTE_TO_WIDECHAR(src, dest) MultiByteToWideChar(CP_ACP, \
                                                             MB_PRECOMPOSED, \
                                                             src, \
                                                             strlen(src)+1, \
                                                             dest, \
                                                             sizeof(dest));
#include <windows.h>
#include <tchar.h>
#include <rapi.h>

__declspec( dllexport ) LONG CeRegCreateKeyEx(HKEY hKey, LPCWSTR lpszSubKey, PHKEY phkResult, LPDWORD lpdwDisposition)
{
    return CeRegCreateKeyEx(hKey, // handle to key
                            lpszSubKey,
                            0,
                            NULL,
                            0,
                            0,
                            NULL,
                            phkResult,
                            lpdwDisposition);
}

__declspec( dllexport ) LONG CeRegSetValueEx(HKEY hKey, LPCWSTR lpValueName, DWORD dwType, LPCWSTR lpData)
{
    return CeRegSetValueEx(hKey,
                           lpValueName,
                           0,
                           REG_SZ,
                           (BYTE*)lpData,
                           _tcsclen(lpData) * sizeof(TCHAR));
}

/*
int main(int argc, char *argv[])
{
	HRESULT hRapiResult;
	HKEY hkResult;
	DWORD dwDisposition;
	
	TCHAR wszSubKey[MAX_PATH];
	TCHAR wszValue[MAX_PATH];
	TCHAR wszData[MAX_PATH];
    
    MULTIBYTE_TO_WIDECHAR(argv[1], wszSubKey);
    MULTIBYTE_TO_WIDECHAR(argv[2], wszValue);
    MULTIBYTE_TO_WIDECHAR(argv[3], wszData);
    
	hRapiResult = CeRapiInit();

    if (FAILED(hRapiResult))
	{
		_tprintf( _T("Failed\n"));
		return 1;
	}
	
	CeRegCreateKeyEx(HKEY_CURRENT_USER, wszSubKey, &hkResult, &dwDisposition);
	CeRegSetValueEx(hkResult, wszValue, REG_SZ, wszData);
	
	
    CeRegSetValueEx(hkResult,
                           wszValue,
                           0,
                           REG_SZ,
                           (BYTE*) wszData,
                           sizeof(wszData));

	
	CeRapiUninit();
	return 0;
}
*/