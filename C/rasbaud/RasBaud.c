// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (C) 1995  Microsoft Corporation.  All Rights Reserved.
//
//  MODULE: RasBaud.c
//
//  PURPOSE: Obtains the baud rate of the RAS connection using TAPI APIs.
//
//  INTERNAL FUNCTION:  These functions are for this module only.
//    
//	  BOOL FindRasConnection - enumerates the handles of active RAS connections
//    BOOL GetRasBaudRate - obtains the TAPI device name from the RAS device name and then uses TAPI to obtain the Baud Rate
//



/*-----------------*\

This sample uses the fact that RAS is using TAPI and thus the 
RAS szDeviceName == the TAPI Line Device Name.  szDeviceName is
the only usefull information that RAS returns that could be
correlated to a TAPI line device.

Note that there is no error checking of LocalAlloc/LocalReAlloc.
There should be a memory allocation wrapper function.

RAS Assumptions:

Any errors on any RAS APIs abort the whole process.

This console app only checks the speed of the first RAS session.
Perfectly valid on Windows 95 which can only support one.
If you know your specific HRASCONN, use it.  It also pukes if there
are more than 10 ras sessions.  Easy to fix if you want.


TAPI Assumptions:

Any errors on any TAPI APIs abort checking of the specific line device.

The first TAPI device whos name matches the Ras device name and has a 
call in progress on it is a match.  This assumption should be ok 
because line device names should be (and so far, are) unique.

The speed of the first call on the above TAPI device is returned.
This assumption is ok because:
   If a modem is used, only one call per line is possible.
   If ISDN is used, all calls on the line are the same speed.
   Modem banks will be represented as one modem per line device


The above assumptions means that the returned baud rate is *very* likely
to be correct, but not guarenteed.  It would be better if RAS had a direct
way to get this info, but it doesn't.

Note that even if RAS did have a way to get the baud rate, its still not
guarenteed to be correct.  RAS relies on the TSP (Unimodem) to know what 
the correct speed is, and Unimodem relies on the modem giving it the 
correct information.  Some modems do not report the correct speed.  Some
modems report the speed that you *tried* to connect at; not the speed
that the modems auto-negotiated to.  The *only* way to get a valid number
is to do throughput testing.  This code would give a good estimate of a 
starting value, but don't rely on it for guarenteed information.
\*-----------------*/

// You need this version for some RAS devices.
#define TAPI_CURRENT_VERSION 0x00010003

#include <windows.h>
#include <tapi.h>
#include <ras.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tapiinfo.h"

BOOL FindRasConnection(LPHRASCONN lphRasConn);
BOOL GetRasBaudRate(HRASCONN hRasConn, LPDWORD lpdwBaud);

void CALLBACK lineCallbackFunc(
    DWORD dwDevice, DWORD dwMsg, DWORD dwCallbackInstance, 
    DWORD dwParam1, DWORD dwParam2, DWORD dwParam3)
{
   // Not doing anything in the callback.
}



int main (int argc, char * argv[], char * envp[])
{
   HRASCONN hRasConn;
   DWORD dwBaud;
   
   if (!FindRasConnection(&hRasConn))
      return printf("No RAS session in progress.\n");

   if (!GetRasBaudRate(hRasConn, &dwBaud))
      return printf("Error getting Baud Rate.\n");

   printf("RAS session is connected at %lu bps.\n", dwBaud);

   return 1;
}



BOOL FindRasConnection(LPHRASCONN lphRasConn)
{
   DWORD dwReturn;
   RASCONN aRasConn[10];  // Only supports 10 ras connections.
   DWORD dwBuffBytes = sizeof(aRasConn);
   DWORD dwNumConns;

   aRasConn[0].dwSize = sizeof(RASCONN);
   if (dwReturn = RasEnumConnections(aRasConn, &dwBuffBytes, &dwNumConns))
   {
      printf("RasEnumConnections failed; %lu\n",dwReturn);
      return FALSE;
   }

   if (dwNumConns == 0)
      return FALSE;

   if (dwNumConns > 1)
   {
      printf("More than one RAS session.  Only checking speed on first.\n");
   }

   *lphRasConn = aRasConn[0].hrasconn;
   return TRUE;
}



BOOL GetRasBaudRate(HRASCONN hRasConn, LPDWORD lpdwBaud)
{
   char szAppName[] = "RasBaud";
   HINSTANCE hInstance;
   HLINEAPP hLineApp;
   DWORD dwNumDevs;
   DWORD dwDeviceID;
   DWORD dwApiVersion;
   HLINE hLine;
   HCALL hCall = 0;
   LINEEXTENSIONID ExtensionID;

   LPLINECALLLIST lpCallList;
   HCALL *lpCalls;
   DWORD dwNumCalls;
   LPLINEDEVCAPS lpLineDevCaps;
   LINECALLINFO LineCallInfo;

   RASCONNSTATUS RasConnStatus;
   LPTSTR lpszRasDeviceName;
   LPSTR  lpszTapiDeviceName;

   long lReturn;
   DWORD dwReturn;
   TCHAR szBuff[1024];

   *lpdwBaud = 0;

   // Lets find the name of the line device in use by RAS.
   RasConnStatus.dwSize = sizeof(RasConnStatus);
   if (dwReturn = RasGetConnectStatus(hRasConn, &RasConnStatus))
   {
      // Failure on this hRasConn.  Bad news.
      printf("RasGetConnectStatus returned %lu\n",dwReturn);
      return FALSE;
   }

   lpszRasDeviceName = RasConnStatus.szDeviceName;

   hInstance = GetModuleHandle(NULL);

   if (lReturn = lineInitialize(&hLineApp, hInstance, lineCallbackFunc, 
      szAppName, &dwNumDevs))
   {
      printf("lineInitialize failed: %s.\n", FormatLineError(lReturn, szBuff));
      return FALSE;
   }

   lpCallList = LocalAlloc(LMEM_FIXED, sizeof(LINECALLLIST) + 128);
   lpCallList->dwTotalSize = LocalSize(lpCallList);

   lpLineDevCaps = LocalAlloc(LMEM_FIXED, sizeof(LINEDEVCAPS) + 1024);
   lpLineDevCaps->dwTotalSize = LocalSize(lpLineDevCaps);

   LineCallInfo.dwTotalSize = sizeof(LINECALLINFO);
   
   for(dwDeviceID = 0; dwDeviceID < dwNumDevs; dwDeviceID++)
   {
      if (lReturn = lineNegotiateAPIVersion (hLineApp, dwDeviceID,
               TAPI_CURRENT_VERSION, TAPI_CURRENT_VERSION, &dwApiVersion, &ExtensionID))
      {
         // This line device isn't useable by RAS anyway.
         continue;
      }

      // Get the name of this TAPI line device.
      while(TRUE)
      {
         if (lReturn = lineGetDevCaps(hLineApp, dwDeviceID, 
                     dwApiVersion, 0, lpLineDevCaps))
         {
            printf("lineGetDevCaps error: %s\n", FormatLineError(lReturn, szBuff));
            break;
         }

         if (lpLineDevCaps->dwNeededSize <= lpLineDevCaps->dwTotalSize)
            break;
         
         // Buffer wasn't big enough.  Reallocate.
         lpLineDevCaps = 
            LocalReAlloc(lpLineDevCaps, 
               lpLineDevCaps->dwNeededSize, LMEM_MOVEABLE);
         lpLineDevCaps->dwTotalSize = LocalSize(lpLineDevCaps);
      }
      if (lReturn)  // Failed to lineGetDevCaps
         continue;

      lpszTapiDeviceName = (LPTSTR) (LPSTR)
         ((LPBYTE) lpLineDevCaps + lpLineDevCaps->dwLineNameOffset);

      // Is this TAPI line device the one RAS is using?
      if (lstrcmp(lpszRasDeviceName, lpszTapiDeviceName) != 0)
         continue;

      // Have to open the line to get any possible call handles
      if (lReturn = lineOpen(hLineApp, dwDeviceID, &hLine,
               dwApiVersion, 0, 0, LINECALLPRIVILEGE_NONE, 0, 0))
      {
         // Failed to open.  RAS can't be using this line.
         printf("lineOpen returned: %s.\n", FormatLineError(lReturn, szBuff));
         continue;
      }

      // Now get all outstanding call handles
      while (TRUE)
      {
         if (lReturn = lineGetNewCalls(hLine, 0, LINECALLSELECT_LINE,
                  lpCallList))
         {
            // If this fails, something is seriously wrong, but RAS
            // is very unlikely to be using this line.
            printf("lineGetNewCalls failed; %s",  FormatLineError(lReturn, szBuff));
            break;
         }

         if (lpCallList->dwNeededSize <= lpCallList->dwTotalSize)
            break;

         // buffer wasn't big enough (not likely to happen, but could).
         // Reallocate and try again.

         lpCallList = 
            LocalReAlloc(lpCallList, lpCallList->dwNeededSize, LMEM_MOVEABLE);
         lpCallList->dwTotalSize = LocalSize(lpCallList);
      }

      if (lReturn)  // Failed to get the new call list.
         continue;

      dwNumCalls = lpCallList -> dwCallsNumEntries;
      lpCalls = (HCALL *) ((LPBYTE)lpCallList + lpCallList -> dwCallsOffset);

      // No calls on this line?  Try the next line.
      if (dwNumCalls == 0)
         continue;

      // Identify which call RAS is using.

      // ASSUMPTION:  The speed of the first call is good enough.
      // If a modem is used, only one call per line is possible.
      // If ISDN is used, all calls on the line are the same speed.
      // Modem banks will be represented as one modem per line.

      hCall = lpCalls[0];

      break;
   }

   if (hCall)
   {
      if (lReturn = lineGetCallInfo(hCall, &LineCallInfo))
      {
         printf("lineGetCallInfo returned: %s.\n", FormatLineError(lReturn, szBuff));
         hCall = 0;
      }
      else
      {
         *lpdwBaud = LineCallInfo.dwRate;
      }
   }

   LocalFree(lpCallList);
   LocalFree(lpLineDevCaps);
   lineShutdown(hLineApp);  // closing all calls and lines here also.

   if (hCall == 0)
      return FALSE;

   return TRUE;
}
