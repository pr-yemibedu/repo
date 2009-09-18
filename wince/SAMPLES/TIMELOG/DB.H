// 
// DB.h -- Include file for database helper functions.
//
//  Author: Paul Yao
// Company: The Paul Yao Company
//   Email: paul@paulyao.com
//   Voice: 425-747-1355
//     Fax: 425-746-4040
//     Web: http://www.paulyao.com
//

//-----------------------------------------------------------------------------
// Buffer sizes.
//-----------------------------------------------------------------------------
#define MAX_PROJECT  32
#define MAX_TASK     32
#define MAX_NOTE   1024

#define PROPERTY_COUNT 5  // Five fields in the database.

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
BOOL dbInitDataBase(VOID);
BOOL dbCreateRecord(HWND hwnd);
VOID dbUpdateRecordCount(HWND hwnd, UINT ctrlID);
INT dbGetRecordCount();
BOOL dbReadRecord(HWND hwnd, DWORD iRecord);
BOOL dbDeleteDatabase();
VOID dbFormatTimeString(LPTSTR pBuffer, WORD wHour, WORD wMinute);
VOID dbFormatDurationString(LPTSTR pBuffer, WORD hourStart, WORD minStart, 
                                            WORD hourStop,  WORD minStop);
BOOL dbDeleteRecord(HWND hwnd);

//-----------------------------------------------------------------------------
// TIMELOG Database Layout
//
// FILETIME - START
// FILETIME - STOP
// LPWSTR - PROJECT
// LPWSTR - TASK
// LPWSTR - NOTES
//-----------------------------------------------------------------------------
#define DBID_START   MAKELONG(CEVT_FILETIME, 0);
#define DBID_STOP    MAKELONG(CEVT_FILETIME, 1);
#define DBID_PROJECT MAKELONG(CEVT_LPWSTR, 2);
#define DBID_TASK    MAKELONG(CEVT_LPWSTR, 3);
#define DBID_NOTES   MAKELONG(CEVT_LPWSTR, 4);

