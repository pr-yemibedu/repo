// 
// DB.cpp -- Database functions for TIMELOG sample Windows CE application.
//
//  Author: Paul Yao
// Company: The Paul Yao Company
//   Email: paul@paulyao.com
//   Voice: 425-747-1355
//     Fax: 425-746-4040
//     Web: http://www.paulyao.com
//

#include "stdafx.h"
#include "timelog.h"
#include "db.h"
//#include <commctrl.h>

//-----------------------------------------------------------------------------
// Global Variables:
//-----------------------------------------------------------------------------
HANDLE hDatabase = NULL;
LPTSTR lpszDBName = TEXT("YaoTimeLog");

TCHAR achAppName[];
TCHAR atchProject[MAX_PROJECT+2];
TCHAR atchTask[MAX_TASK+2];
TCHAR atchNote[MAX_NOTE+2];

int ctchProject;
int ctchTask;
int ctchNote;

extern SYSTEMTIME stStart;
extern SYSTEMTIME stStop;

extern int iRec;  // Current record index.
extern int cRec;  // Count of records in database.

CEOID oidDatabase;
CEOID oidCurrentRecord;
BOOL bDatabaseEmpty = FALSE;

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
VOID ButtonClear(HWND hwnd);

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL dbInitDataBase(VOID)
{
    // Create or open database as needed.
    SORTORDERSPEC sort;
    sort.propid = DBID_START;
    sort.dwFlags = CEDB_SORT_GENERICORDER;
    oidDatabase = CeCreateDatabase(lpszDBName, 0, 1, &sort);

    hDatabase = CeOpenDatabase(&oidDatabase, lpszDBName, NULL, 0, NULL);

    // Cannot create database for some reason.
    if (hDatabase == (HANDLE)-1)
        return FALSE;

    cRec = dbGetRecordCount();
    iRec = -1;

    return TRUE;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID dbUpdateRecordCount(HWND hwnd, UINT ctrlID)
{
    TCHAR tch[80];

    if (bDatabaseEmpty)
        _tcscpy(tch, TEXT("Record 0  of  0"));
    else
        wsprintf(tch, TEXT("Record %d  of  %d"), iRec+1, cRec+1);
    SetDlgItemText(hwnd, ctrlID, tch);
}
    
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL dbCreateRecord(HWND hwnd)
{
    // Convert date files from SYSTEMTIME to FILETIME;
    FILETIME ftStart, ftStop;
    SystemTimeToFileTime(&stStart, &ftStart);
    SystemTimeToFileTime(&stStop, &ftStop);

    // Fetch text field values.
    ctchProject = GetDlgItemText(hwnd, IDC_PROJECT, atchProject, MAX_PROJECT);
    ctchTask = GetDlgItemText(hwnd, IDC_TASK, atchTask, MAX_TASK);
    ctchNote = GetDlgItemText(hwnd, IDC_NOTE, atchNote, MAX_NOTE);

    // Set up record data structure.
    CEPROPVAL pv[PROPERTY_COUNT];
    memset((void*)pv, 0, sizeof(pv));
    pv[0].propid        = DBID_START  
    pv[0].val.filetime  = ftStart;
    pv[1].propid        = DBID_STOP   
    pv[1].val.filetime  = ftStop;
    pv[2].propid        = DBID_PROJECT
    pv[2].val.lpwstr    = atchProject;
    pv[3].propid        = DBID_TASK   
    pv[3].val.lpwstr    = atchTask;
    pv[4].propid        = DBID_NOTES  
    pv[4].val.lpwstr    = atchNote;

    oidCurrentRecord = CeWriteRecordProps(hDatabase, NULL, PROPERTY_COUNT, pv);
    bDatabaseEmpty = FALSE;

    cRec++;

    // Update record number.
    int iRecTemp;
    if (CeSeekDatabase(hDatabase, CEDB_SEEK_END, 0, (DWORD *)(&iRecTemp)))
    {
        iRec = iRecTemp;
    }

//    iRec++;
    dbUpdateRecordCount(hwnd, IDC_RECORD);

    return TRUE;
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
int dbGetRecordCount()
{
    int iLast, iFirst;
    if (CeSeekDatabase(hDatabase, CEDB_SEEK_END, 0, (LPDWORD)(&iLast)) != 0)
    {
        oidCurrentRecord = CeSeekDatabase(hDatabase, CEDB_SEEK_BEGINNING, 0, (LPDWORD)(&iFirst));
    }
    else
    {
        iLast = -1;
        oidCurrentRecord = 0;
    }
    return iLast;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL dbReadRecord(HWND hwnd, DWORD iRecord)
{
    BOOL bRet = FALSE;
    WORD wMonth, wDay, wYear;
    TCHAR atch[256];

    // Set pointer to requested record.
    int iRecTemp;
    if (CeSeekDatabase(hDatabase, CEDB_SEEK_BEGINNING, iRecord, (DWORD *)(&iRecTemp)))
    {
        iRec = iRecTemp;
    }

    // Read record data.
    WORD cProperties;
    PCEPROPVAL ppv = NULL;
    DWORD cbRead;
    CEOID oidRead = 
    CeReadRecordProps(hDatabase, CEDB_ALLOWREALLOC, &cProperties, 
                      NULL, (LPBYTE *)&ppv, &cbRead);
    if (oidRead == 0 || ppv == NULL)
    {
        // Fetch date for display in window caption.
        SYSTEMTIME stToday;
        GetLocalTime(&stToday);
        wMonth = stToday.wMonth;
        wDay = stToday.wDay;
        wYear = stToday.wYear;

        bDatabaseEmpty = TRUE;
        ButtonClear(hwnd);
    }
    else
    {
        oidCurrentRecord = oidRead;

        // Update text controls with database values.
        SetDlgItemText(hwnd, IDC_PROJECT, ppv[2].val.lpwstr);
        SetDlgItemText(hwnd, IDC_TASK, ppv[3].val.lpwstr);
        SetDlgItemText(hwnd, IDC_NOTE, ppv[4].val.lpwstr);

        // Update time controls with database values.
        SYSTEMTIME stStart, stStop;
        FileTimeToSystemTime(&ppv[0].val.filetime, &stStart);
        FileTimeToSystemTime(&ppv[1].val.filetime, &stStop);

        // Fetch date for display in window caption.
        wMonth = stStart.wMonth;
        wDay = stStart.wDay; 
        wYear = stStart.wYear;

        // Start time.
        dbFormatTimeString(atch, stStart.wHour, stStart.wMinute);
        SetDlgItemText(hwnd, IDC_START_TIME, atch);

        // Stop time.
        dbFormatTimeString(atch, stStop.wHour, stStop.wMinute);
        SetDlgItemText(hwnd, IDC_STOP_TIME, atch);

        // Duration.
        dbFormatDurationString(atch, stStart.wHour, stStart.wMinute, stStop.wHour, stStop.wMinute);
        SetDlgItemText(hwnd, IDC_ELAPSED_TIME, atch);

        // Free the buffer allocated by CeReadRecordProps w/CEDB_ALLOWREALLOC flag.
        LocalFree(ppv);
        bRet = TRUE;
    }

    // Display date in caption bar.
    wsprintf (atch, TEXT("%s - %d/%2.2d/%4.4d"), achAppName, wMonth, wDay, wYear);
    SetWindowText(hwnd, atch);

    return bRet;
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL dbDeleteDatabase()
{
    BOOL bRet;
    CloseHandle(hDatabase);
    bRet = CeDeleteDatabase(oidDatabase);
    oidDatabase = 0;
    return bRet;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID dbFormatTimeString(LPTSTR pBuffer, WORD wHour, WORD wMinute)
{
    LPTSTR pAMPM;
    static TCHAR lpszAM[] = TEXT("am");
    static TCHAR lpszPM[] = TEXT("pm");

    if (IsBadWritePtr(pBuffer, 10))
        return;

    pAMPM = (wHour >= 12) ? lpszPM : lpszAM;

    if (wHour > 12)
        wHour -= 12;

    wsprintf(pBuffer, TEXT("%d:%2.2d %s"), wHour, wMinute, pAMPM);
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
VOID dbFormatDurationString(LPTSTR pBuffer, WORD hourStart, WORD minStart, 
                                            WORD hourStop,  WORD minStop)
{
    int hourElapsed, minElapsed;
    if (minStop < minStart)
    {
        minStop += 60;
        hourStop --;
    }
    hourElapsed = hourStop - hourStart;
    minElapsed = minStop - minStart;

    // Write elapsed time into control.
    wsprintf(pBuffer, TEXT("%2.2d:%2.2d"), hourElapsed, minElapsed);
}


//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
BOOL dbDeleteRecord(HWND hwnd)
{
    BOOL bRet = TRUE;
    bDatabaseEmpty = FALSE;

    if (cRec == -1)
        bRet = FALSE;
    else
    {
        CeDeleteRecord(hDatabase, oidCurrentRecord);

        // Watch for out of range record index & record count values.
        cRec = max (cRec - 1, -1);
        iRec = max (iRec - 1, 0);
        if (cRec == -1) iRec = -1;

        dbUpdateRecordCount(hwnd, IDC_RECORD);

        dbReadRecord(hwnd, iRec);
    }

    return bRet;
}
