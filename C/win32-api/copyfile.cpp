#include <stdio.h>
#include <tchar.h>
#include <rapi.h>

void PrintDirectory (LPWSTR lpszPath, UINT Indent)
{
  DWORD dwFoundCount;
  LPCE_FIND_DATA findDataArray;
  WCHAR szSearchPath[MAX_PATH];

  wcscpy (szSearchPath, lpszPath);
  wcscat (szSearchPath, L"*");

  if(!CeFindAllFiles (szSearchPath,
                      FAF_ATTRIBUTES | FAF_NAME,
                      &dwFoundCount,
                      &findDataArray))
  {
    _tprintf (TEXT("*** CeFindAllFiles failed. ***\n"));
    return;
  }

  if (!dwFoundCount)
    return;

  for (UINT i = 0; i < dwFoundCount; i++)
  {
    for (UINT indCount = 0; indCount < Indent; indCount++)
      _tprintf( TEXT("  "));

    if (findDataArray[i].dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
    {
      wprintf ( L"[%s]\n", findDataArray[i].cFileName);

      WCHAR szNewPath[MAX_PATH];

      wcscpy (szNewPath, lpszPath);
      wcscat (szNewPath, findDataArray[i].cFileName);
      wcscat (szNewPath, L"\\");

      PrintDirectory (szNewPath, Indent + 1);
    }
    else
      wprintf (L"%s\n", findDataArray[i].cFileName);
  }

  if (findDataArray)
    RapiFreeBuffer (findDataArray);
}

void main()
{
  HRESULT hRapiResult;

  _tprintf (TEXT("Connecting to Windows CE..."));

  hRapiResult = CeRapiInit ();

  if (FAILED(hRapiResult))
  {
    _tprintf (TEXT("Failed\n"));
    return;
  }

  _tprintf (TEXT("Success\n"));

  PrintDirectory (L"\\", 0);

  CeRapiUninit ();
}
