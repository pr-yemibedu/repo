/*****************************************************************************


******************************************************************************/
#define UNICODE
#define _UNICODE

#include <windows.h>
#include <tchar.h>
#include <stdio.h>
#include <string.h>
#include <rapi.h>

STDAPI_( LONG ) RunPDAApp(char *AppPath)
{
    HRESULT hRapiResult;
    PROCESS_INFORMATION pi;
	WCHAR wszProgram[MAX_PATH];

#ifdef UNICODE
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            AppPath,
            strlen(AppPath)+1,
            wszProgram,
            sizeof(wszProgram));
#else
    _tcscpy( wszProgram, AppPath);
#endif

    _tprintf( TEXT("Connecting to Windows CE..."));
    
    hRapiResult = CeRapiInit();

    if (FAILED(hRapiResult))
    {
        _tprintf( TEXT("Failed\n"));
        return 1;
    }

    _tprintf( TEXT("Success\n"));

    if (!CeCreateProcess(
            wszProgram,
            NULL,
            NULL,
            NULL,
            FALSE,
            0,
            NULL,
            NULL,
            NULL,
            &pi))
    {
        _tprintf( TEXT("CreateProcess failed with Errorcode = %ld\n"), CeGetLastError());
    }
    else
    {
        CeCloseHandle( pi.hProcess);
        CeCloseHandle( pi.hThread);
    }
        
    _tprintf( TEXT("Closing connection ..."));
    CeRapiUninit();
    _tprintf( TEXT("Done\n"));

    return 0;
}


STDAPI_( LONG ) ReceiveFile(char *src, char *dest)
{

	TCHAR tszSrcFile[MAX_PATH];
	WCHAR wszDestFile[MAX_PATH];
	BYTE  Buffer[4096];


    HANDLE hSrc, hDest, hFind;
    WIN32_FIND_DATA wfd;
    HRESULT hRapiResult;
    DWORD dwAttr, dwNumRead, dwNumWritten;


#ifdef UNICODE
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            src,
            strlen(src)+1,
            tszSrcFile,
            sizeof(tszSrcFile));
#else
    _tcscpy( tszSrcFile, src);
#endif
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            dest,
            strlen(dest)+1,
            wszDestFile,
            sizeof(wszDestFile));

    hFind = FindFirstFile( tszSrcFile, &wfd);

    if (INVALID_HANDLE_VALUE == hFind)
    {
        _tprintf( TEXT("Source/host file does not exist\n"));
        return 1;
    }    
    FindClose( hFind);

    if (wfd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
    {
        _tprintf( TEXT("Source/host file specifies a directory\n"));
        return 1;
    }

    _tprintf( TEXT("Connecting to Windows CE..."));
    
    hRapiResult = CeRapiInit();

    if (FAILED(hRapiResult))
    {
        _tprintf( TEXT("Failed\n"));
        return 1;
    }

    _tprintf( TEXT("Success\n"));

    dwAttr = CeGetFileAttributes( wszDestFile);
    
    if (0xFFFFFFFF  != dwAttr)
    {
        if (dwAttr & FILE_ATTRIBUTE_DIRECTORY)
        {
            //Just a directory was specified so we will have to get the filename from the src spec.
            wcscat( wszDestFile, L"\\");
#ifdef UNICODE
            wcscpy( wszDestFile+wcslen(wszDestFile), wfd.cFileName);
#else
            MultiByteToWideChar(
                    CP_ACP,    
                    MB_PRECOMPOSED,
                    wfd.cFileName,
                    strlen(wfd.cFileName)+1,
                    wszDestFile+wcslen(wszDestFile),
                    sizeof(wszDestFile)-wcslen(wszDestFile));
#endif
        }
        else
        {
            _tprintf( TEXT("File already exists.  Do you want to overwrite ? (Y/N)"));
            if ( 'N' == toupper(getchar()))
            {
                _tprintf( TEXT("File not updateded\n"));
                goto CloseConnection;
            }
        }
    }

    hSrc = CreateFile(
                tszSrcFile,
                GENERIC_READ,
                FILE_SHARE_READ,
                NULL,
                OPEN_EXISTING,
                FILE_ATTRIBUTE_NORMAL,
                NULL);
    if (INVALID_HANDLE_VALUE == hSrc)
    {
        _tprintf( TEXT("Unable to open source/host file"));
        return 1;
    }

    hDest = CeCreateFile(
                wszDestFile,
                GENERIC_WRITE,
                FILE_SHARE_READ,
                NULL,
                CREATE_ALWAYS,
                FILE_ATTRIBUTE_NORMAL,
                NULL);

    if (INVALID_HANDLE_VALUE == hDest )
    {
        _tprintf( TEXT("Unable to open WinCE file"));
        return 1;
    }
#ifdef UNICODE
    wprintf( TEXT("Copying %s to WCE:%s\n"), tszSrcFile, wszDestFile);
#else
    printf( TEXT("Copying %s to WCE:%S\n"), tszSrcFile, wszDestFile);
#endif
    
    do
    {
        if (ReadFile(
                hSrc,
                &Buffer,
                sizeof(Buffer),
                &dwNumRead,
                NULL))
        {
            if (!CeWriteFile(
                    hDest,
                    &Buffer,
                    dwNumRead,
                    &dwNumWritten,
                    NULL))
            {
                _tprintf( TEXT("Error !!! Writing WinCE file"));
                goto FatalError;
            }
        }
        else
        {
            _tprintf( TEXT("Error !!! Reading source file"));
            goto FatalError;
        }
        _tprintf( TEXT("."));                                        
    } while (dwNumRead);
    _tprintf( TEXT("\n"));    
FatalError:
    CeCloseHandle( hDest);
    CloseHandle (hSrc);
CloseConnection:
    _tprintf( TEXT("Closing connection ..."));
    CeRapiUninit();
    _tprintf( TEXT("Done\n"));

    return 0;
}




        


STDAPI_( LONG ) SendFile(char *src, char *dest)
{
    TCHAR tszSrcFile[MAX_PATH];
    WCHAR wszDestFile[MAX_PATH];
    BYTE  Buffer[4096];

    HANDLE hSrc, hDest, hFind;
    WIN32_FIND_DATA wfd;
    HRESULT hRapiResult;
    DWORD dwAttr, dwNumRead, dwNumWritten;


#ifdef UNICODE
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            src,
            strlen(src)+1,
            tszSrcFile,
            sizeof(tszSrcFile));
#else
    _tcscpy( tszSrcFile, src);
#endif
    MultiByteToWideChar(
            CP_ACP,    
            MB_PRECOMPOSED,
            dest,
            strlen(dest)+1,
            wszDestFile,
            sizeof(wszDestFile));

    hFind = FindFirstFile( tszSrcFile, &wfd);

    if (INVALID_HANDLE_VALUE == hFind)
    {
        _tprintf( TEXT("Source/host file does not exist\n"));
        return 1;
    }    
    FindClose( hFind);

    if (wfd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
    {
        _tprintf( TEXT("Source/host file specifies a directory\n"));
        return 1;
    }

    _tprintf( TEXT("Connecting to Windows CE..."));
    
    hRapiResult = CeRapiInit();

    if (FAILED(hRapiResult))
    {
        _tprintf( TEXT("Failed\n"));
        return 1;
    }

    _tprintf( TEXT("Success\n"));

    dwAttr = CeGetFileAttributes( wszDestFile);
    
    if (0xFFFFFFFF  != dwAttr)
    {
        if (dwAttr & FILE_ATTRIBUTE_DIRECTORY)
        {
            //Just a directory was specified so we will have to get the filename from the src spec.
            wcscat( wszDestFile, L"\\");
#ifdef UNICODE
            wcscpy( wszDestFile+wcslen(wszDestFile), wfd.cFileName);
#else
            MultiByteToWideChar(
                    CP_ACP,    
                    MB_PRECOMPOSED,
                    wfd.cFileName,
                    strlen(wfd.cFileName)+1,
                    wszDestFile+wcslen(wszDestFile),
                    sizeof(wszDestFile)-wcslen(wszDestFile));
#endif
        }
        else
        {
            _tprintf( TEXT("File already exists.  Do you want to overwrite ? (Y/N)"));
            if ( 'N' == toupper(getchar()))
            {
                _tprintf( TEXT("File not updateded\n"));
                goto CloseConnection;
            }
        }
    }

    hSrc = CreateFile(
                tszSrcFile,
                GENERIC_READ,
                FILE_SHARE_READ,
                NULL,
                OPEN_EXISTING,
                FILE_ATTRIBUTE_NORMAL,
                NULL);
    if (INVALID_HANDLE_VALUE == hSrc)
    {
        _tprintf( TEXT("Unable to open source/host file"));
        return 1;
    }

    hDest = CeCreateFile(
                wszDestFile,
                GENERIC_WRITE,
                FILE_SHARE_READ,
                NULL,
                CREATE_ALWAYS,
                FILE_ATTRIBUTE_NORMAL,
                NULL);

    if (INVALID_HANDLE_VALUE == hDest )
    {
        _tprintf( TEXT("Unable to open WinCE file"));
        return 1;
    }
#ifdef UNICODE
    wprintf( TEXT("Copying %s to WCE:%s\n"), tszSrcFile, wszDestFile);
#else
    printf( TEXT("Copying %s to WCE:%S\n"), tszSrcFile, wszDestFile);
#endif
    
    do
    {
        if (ReadFile(
                hSrc,
                &Buffer,
                sizeof(Buffer),
                &dwNumRead,
                NULL))
        {
            if (!CeWriteFile(
                    hDest,
                    &Buffer,
                    dwNumRead,
                    &dwNumWritten,
                    NULL))
            {
                _tprintf( TEXT("Error !!! Writing WinCE file"));
                goto FatalError;
            }
        }
        else
        {
            _tprintf( TEXT("Error !!! Reading source file"));
            goto FatalError;
        }
        _tprintf( TEXT("."));                                        
    } while (dwNumRead);
    _tprintf( TEXT("\n"));    
FatalError:
    CeCloseHandle( hDest);
    CloseHandle (hSrc);
CloseConnection:
    _tprintf( TEXT("Closing connection ..."));
    CeRapiUninit();
    _tprintf( TEXT("Done\n"));

    return 0;
}