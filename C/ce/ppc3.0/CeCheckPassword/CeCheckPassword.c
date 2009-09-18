/*****************************************************************************


******************************************************************************/
#define UNICODE
#define _UNICODE

#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <string.h>
#include <rapi.h>

STDAPI_( LONG ) CeCheckPassword(char *lpszPass)
{
	WCHAR wszPass[MAX_PATH];
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            lpszPass,
            strlen(lpszPass)+1,
            wszPass,
            sizeof(wszPass));
    return CeCheckPassword(wszPass);
}