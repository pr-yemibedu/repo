#include <windows.h>
#include <windowsx.h>
#include <malloc.h>
#include "dbgmem.h"

#define CHAR_NULL ('\0')

/*---------------------------------------------------------------------------*\
 |  CreateStandardFile: Simple wrapper around Win32 'CreateFile' function.   |
\*---------------------------------------------------------------------------*/
HANDLE CreateStandardFile(LPCTSTR pFileName, DWORD dwAccess, DWORD dwCreate)
{
    HANDLE hFile;

    // Set default access mode (read-only).
    if (dwAccess == 0) dwAccess = GENERIC_READ | GENERIC_WRITE;

    // Set default creation flag.
    if (dwCreate == 0) dwCreate = OPEN_EXISTING;

    // Open File.
    hFile = CreateFile (pFileName,             // File Name.
                        dwAccess,              // Access (read/write) mode.
                        0,                     // Share Mode (0=None).
                        0,                     // Security descriptor.
                        dwCreate,              // Creation flags.
                        FILE_ATTRIBUTE_NORMAL, // File attribute flags.
                        0);                    // File to emulate.

    return hFile;
}

/*---------------------------------------------------------------------------*\
 |  CopyFileToGlobalMemory: Copies entire contents of file to global heap.   |
\*---------------------------------------------------------------------------*/
LPTSTR CopyFileToGlobalMemory(LPCTSTR pFileName, DWORD * pdwSize)
{
    BOOL   bSuccess = FALSE;
    DWORD  dwFileSize;
    HANDLE hFile;
    LPTSTR pData = NULL;
    
    __try
    {
        // Open file.
        hFile = CreateStandardFile(pFileName, 0, 0);

        // Failure means NULL file pointer.
        if (hFile == (HANDLE)-1)
            __leave;

        // Allocate buffer the size of the file.
        dwFileSize = GetFileSize(hFile, NULL);
        pData = GlobalAllocPtr(GHND, dwFileSize + sizeof(TCHAR));
        if (!pData)
            __leave;

        // Copy file data to buffer.
        bSuccess = ReadFile(hFile, pData, dwFileSize, pdwSize, NULL);

        // Terminate memory with NULL byte.
        pData[dwFileSize] = CHAR_NULL;
    }
    __finally
    {
        // Close file.
        CloseHandle(hFile);

        if (bSuccess)
        {
            return pData;
        }
        else
        {
            *pdwSize = 0;
            GlobalFreePtr(pData);
            return NULL;
        }
    }
}

/*---------------------------------------------------------------------------*\
 |  CopyFileToHeap: Copies entire contents of file to malloc memory.         |
\*---------------------------------------------------------------------------*/
LPTSTR CopyFileToHeap(LPCTSTR pFileName, DWORD * pdwSize)
{
    BOOL   bSuccess = FALSE;
    DWORD  dwFileSize;
    HANDLE hFile;
    LPTSTR pData = NULL;

    __try
    {
        // Open file.
        hFile = CreateStandardFile(pFileName, 0, 0);

        // Failure means NULL file pointer.
        if (hFile == (HANDLE)-1)
            __leave;

        // Allocate buffer the size of the file.
        dwFileSize = GetFileSize(hFile, NULL);
        pData = malloc(dwFileSize + sizeof(TCHAR));
        if (!pData)
            __leave;

        // Copy file data to buffer.
        bSuccess = ReadFile(hFile, pData, dwFileSize, pdwSize, NULL);

        // Terminate memory with NULL byte.
        pData[dwFileSize] = CHAR_NULL;
    }
    __finally
    {
        // Close file.
        CloseHandle(hFile);

        if (bSuccess)
        {
            return pData;
        }
        else
        {
            *pdwSize = 0;
            free(pData);
            return NULL;
        }
    }
}

/*---------------------------------------------------------------------------*\
 |  CopyFileToBuffer: Copies entire contents of file to buffer.              |
\*---------------------------------------------------------------------------*/
LPTSTR CopyFileToBuffer(LPCTSTR pFileName, DWORD * pdwSize, 
                        LPTSTR pBuffer, DWORD dwSize)
{
    BOOL   bSuccess = FALSE;
    DWORD  dwFileSize;
    HANDLE hFile;

    __try
    {
        // Open file.
        hFile = CreateStandardFile(pFileName, 0, 0);

        // Failure means NULL file pointer.
        if (hFile == (HANDLE)-1)
            __leave;

        // Allocate buffer the size of the file.
        dwFileSize = GetFileSize(hFile, NULL);
        if ((dwFileSize + sizeof(TCHAR)) > dwSize)
            __leave;

        // Copy file data to buffer.
        bSuccess = ReadFile(hFile, pBuffer, dwFileSize, pdwSize, NULL);

        // Terminate memory with NULL byte.
        pBuffer[dwFileSize] = CHAR_NULL;
    }
    __finally
    {
        // Close file.
        CloseHandle(hFile);

        if (bSuccess)
        {
            return pBuffer;
        }
        else
        {
            *pdwSize = 0;
            return NULL;
        }
    }
}

/*---------------------------------------------------------------------------*\
 |  DeleteDirectoryTree: Erase a directory and all contained files.          |
\*---------------------------------------------------------------------------*/
BOOL DeleteDirectoryTree(LPSTR pPath, BOOL bIncludeSubdirectories)
{
    BOOL   bRetVal = FALSE;
    char   achOldPath[MAX_PATH];
    HANDLE hFind;
    WIN32_FIND_DATA fd;

    // Avoid disaster...
    if (lstrcmp (pPath, "\\") == 0)
    {
        MessageBox(NULL, "Request to delete root denied.", 
                   "Warning!", MB_ICONSTOP);
        return FALSE;
    }

    // Query current directory.
    GetCurrentDirectory(MAX_PATH, achOldPath);

    // Point at target files to erase.
    if (!SetCurrentDirectory(pPath))
    {
        return FALSE;
    }

    __try
    {
        // Search for "." directory.
        hFind = FindFirstFile("*.*", &fd);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            __leave;
        }

        // Skip over ".." directory.
        FindNextFile (hFind, &fd);

        // Walk directory tree.
        while (FindNextFile (hFind, &fd))
        {
            // If a subdirectory...
            if (fd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
            {
                // ...recurse to delete if requested.
                if (bIncludeSubdirectories)
                {
                    DeleteDirectoryTree(fd.cFileName, bIncludeSubdirectories);
                }
            }
            else
            {
                DeleteFile(fd.cFileName);
            }
        }

        FindClose (hFind);
        bRetVal = TRUE;
    }
    __finally
    {
        SetCurrentDirectory(achOldPath);
        if (bRetVal)
        {
            RemoveDirectory(pPath);
        }

        return bRetVal;
    }
}

/*---------------------------------------------------------------------------*\
 |  CopyDirectoryTree: Copy files from source path to destination path.      |
\*---------------------------------------------------------------------------*/
BOOL CopyDirectoryTree(LPSTR pSrcPath, LPSTR pDestPath)
{
    BOOL   bRetVal = FALSE;
    char   achOldPath[MAX_PATH];
    char   achDestPath[MAX_PATH];
    HANDLE hFind;
    WIN32_FIND_DATA fd;

    // Query current directory.
    GetCurrentDirectory(MAX_PATH, achOldPath);

    // Point at source directory.
    if (!SetCurrentDirectory(pSrcPath))
    {
        return FALSE;
    }

    __try
    {
        // Search for "." directory.
        hFind = FindFirstFile("*.*", &fd);
        if (hFind == INVALID_HANDLE_VALUE)
        {
            __leave;
        }

        // Skip over ".." directory.
        FindNextFile (hFind, &fd);

        // Walk directory tree.
        while (FindNextFile (hFind, &fd))
        {
            lstrcpy (achDestPath, pDestPath);
            lstrcat (achDestPath, "\\");
            lstrcat (achDestPath, fd.cFileName);
            CopyFile(fd.cFileName, achDestPath, FALSE);
        }

        FindClose (hFind);
        bRetVal = TRUE;
    }
    __finally
    {
        SetCurrentDirectory(achOldPath);

        return bRetVal;
    }
}

/*---------------------------------------------------------------------------*\
 |  SplitFileNameFromDirectoryName: Parse path to separate file name from    |
 |                                  directory name.                          |
\*---------------------------------------------------------------------------*/
LPSTR SplitFileNameFromDirectoryName(LPSTR pchPath, LPSTR * ppchFileName)
{
    LPSTR pch;
    LPSTR pchFile;

    // Walk through entire string.    
    for (pch = pchFile = pchPath; *pch != CHAR_NULL; pch++)
    {
        // Store last directory referenced.
        if (*pch == '\\' || *pch == '/')
            pchFile = pch;
    }

    // NULL out last directory symbol and point to file name.
    if (pch != pchFile)
    {
        *pchFile = CHAR_NULL;
        pchFile++;
    }

    // If pointer for file name provided, return.
    if (ppchFileName != NULL)
    {
        *ppchFileName = pchFile;
    }

    return pchPath;
}
