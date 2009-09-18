// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//
// Copyright (C) 1995  Microsoft Corporation.  All Rights Reserved.
//
//  MODULE: TapiInfo.c
//
//  PURPOSE: Handles all Pretty Printing functions for the sample. 
//
//  EXPORTED FUNCTIONS:  These functions are for use by other modules.
//
//      All of these pretty print to the debugging output.
//    OutputDebugLineCallback       - Calls FormatLineCallback.
//    OutputDebugLineError          - Calls OutputDebugLineErrorFileLine.
//    OutputDebugLastError          - Calls OutputDebugLineErrorFileLine.
//    OutputDebugPrintf             - Calls wsprintf
//    OutputDebugLineErrorFileLine  - Calls FormatLineError
//    OutputDebugLastErrorFileLine  - Calls FormatLastError
//
//      All of these functions pretty print to a string buffer.
//    FormatLineError               - Prints a LINEERR
//    FormatLastError               - Prints a GetLastError error.
//    FormatLineCallback            - Prints a lineCallbackFunc message.
//
//  INTERNAL FUNCTION:  These functions are for this module only.
//    strBinaryArrayAppend          - prints a binary flag array to a buffer.

#include <windows.h>
#include <tapi.h>
#include "TapiInfo.h"

// Maximum length of all internal string buffers.
#define MAXOUTPUTSTRINGLENGTH 4096

// define to make accessing arrays easy.
#define sizeofArray(pArray) (sizeof(pArray) / sizeof((pArray)[0]))


//*****************************************
// Internal prototypes.
//*****************************************

static long strBinaryArrayAppend(LPSTR pszOutputBuffer, DWORD dwFlags,
     LPSTR szStringArray[], DWORD dwSizeofStringArray);



//*****************************************
// Global arrays for interpreting TAPI constants.
//*****************************************

LPSTR pszLineError[] = 
{
"",
"LINEERR_ALLOCATED",
"LINEERR_BADDEVICEID",
"LINEERR_BEARERMODEUNAVAIL",
"LINEERR Unused constant, ERROR!!",
"LINEERR_CALLUNAVAIL",
"LINEERR_COMPLETIONOVERRUN",
"LINEERR_CONFERENCEFULL",
"LINEERR_DIALBILLING",
"LINEERR_DIALDIALTONE",
"LINEERR_DIALPROMPT",
"LINEERR_DIALQUIET",
"LINEERR_INCOMPATIBLEAPIVERSION",
"LINEERR_INCOMPATIBLEEXTVERSION",
"LINEERR_INIFILECORRUPT",
"LINEERR_INUSE",
"LINEERR_INVALADDRESS",
"LINEERR_INVALADDRESSID",
"LINEERR_INVALADDRESSMODE",
"LINEERR_INVALADDRESSSTATE",
"LINEERR_INVALAPPHANDLE",
"LINEERR_INVALAPPNAME",
"LINEERR_INVALBEARERMODE",
"LINEERR_INVALCALLCOMPLMODE",
"LINEERR_INVALCALLHANDLE",
"LINEERR_INVALCALLPARAMS",
"LINEERR_INVALCALLPRIVILEGE",
"LINEERR_INVALCALLSELECT",
"LINEERR_INVALCALLSTATE",
"LINEERR_INVALCALLSTATELIST",
"LINEERR_INVALCARD",
"LINEERR_INVALCOMPLETIONID",
"LINEERR_INVALCONFCALLHANDLE",
"LINEERR_INVALCONSULTCALLHANDLE",
"LINEERR_INVALCOUNTRYCODE",
"LINEERR_INVALDEVICECLASS",
"LINEERR_INVALDEVICEHANDLE",
"LINEERR_INVALDIALPARAMS",
"LINEERR_INVALDIGITLIST",
"LINEERR_INVALDIGITMODE",
"LINEERR_INVALDIGITS",
"LINEERR_INVALEXTVERSION",
"LINEERR_INVALGROUPID",
"LINEERR_INVALLINEHANDLE",
"LINEERR_INVALLINESTATE",
"LINEERR_INVALLOCATION",
"LINEERR_INVALMEDIALIST",
"LINEERR_INVALMEDIAMODE",
"LINEERR_INVALMESSAGEID",
"LINEERR Unused constant, ERROR!!",
"LINEERR_INVALPARAM",
"LINEERR_INVALPARKID",
"LINEERR_INVALPARKMODE",
"LINEERR_INVALPOINTER",
"LINEERR_INVALPRIVSELECT",
"LINEERR_INVALRATE",
"LINEERR_INVALREQUESTMODE",
"LINEERR_INVALTERMINALID",
"LINEERR_INVALTERMINALMODE",
"LINEERR_INVALTIMEOUT",
"LINEERR_INVALTONE",
"LINEERR_INVALTONELIST",
"LINEERR_INVALTONEMODE",
"LINEERR_INVALTRANSFERMODE",
"LINEERR_LINEMAPPERFAILED",
"LINEERR_NOCONFERENCE",
"LINEERR_NODEVICE",
"LINEERR_NODRIVER",
"LINEERR_NOMEM",
"LINEERR_NOREQUEST",
"LINEERR_NOTOWNER",
"LINEERR_NOTREGISTERED",
"LINEERR_OPERATIONFAILED",
"LINEERR_OPERATIONUNAVAIL",
"LINEERR_RATEUNAVAIL",
"LINEERR_RESOURCEUNAVAIL",
"LINEERR_REQUESTOVERRUN",
"LINEERR_STRUCTURETOOSMALL",
"LINEERR_TARGETNOTFOUND",
"LINEERR_TARGETSELF",
"LINEERR_UNINITIALIZED",
"LINEERR_USERUSERINFOTOOBIG",
"LINEERR_REINIT",
"LINEERR_ADDRESSBLOCKED",
"LINEERR_BILLINGREJECTED",
"LINEERR_INVALFEATURE",
"LINEERR_NOMULTIPLEINSTANCE"
};


LPSTR psz_dwMsg[] = {
    "LINE_ADDRESSSTATE",
    "LINE_CALLINFO",
    "LINE_CALLSTATE",
    "LINE_CLOSE",
    "LINE_DEVSPECIFIC",
    "LINE_DEVSPECIFICFEATURE",
    "LINE_GATHERDIGITS",
    "LINE_GENERATE",
    "LINE_LINEDEVSTATE",
    "LINE_MONITORDIGITS",
    "LINE_MONITORMEDIA",
    "LINE_MONITORTONE",
    "LINE_REPLY",
    "LINE_REQUEST",
    "PHONE_BUTTON",
    "PHONE_CLOSE",
    "PHONE_DEVSPECIFIC",
    "PHONE_REPLY",
    "PHONE_STATE",
    "LINE_CREATE",
    "PHONE_CREATE"
};


LPSTR pszfLINEADDRESSSTATE[] = 
{
    "Unknown LINEADDRESSSTATE information",
    "LINEADDRESSSTATE_OTHER",
    "LINEADDRESSSTATE_DEVSPECIFIC",
    "LINEADDRESSSTATE_INUSEZERO",
    "LINEADDRESSSTATE_INUSEONE",
    "LINEADDRESSSTATE_INUSEMANY",
    "LINEADDRESSSTATE_NUMCALLS",
    "LINEADDRESSSTATE_FORWARD",
    "LINEADDRESSSTATE_TERMINALS",
    "LINEADDRESSSTATE_CAPSCHANGE"
};


LPSTR pszfLINECALLINFOSTATE[] = 
{
    "Unknown LINECALLINFOSTATE state",
    "LINECALLINFOSTATE_OTHER",
    "LINECALLINFOSTATE_DEVSPECIFIC",
    "LINECALLINFOSTATE_BEARERMODE",
    "LINECALLINFOSTATE_RATE",
    "LINECALLINFOSTATE_MEDIAMODE",
    "LINECALLINFOSTATE_APPSPECIFIC",
    "LINECALLINFOSTATE_CALLID",
    "LINECALLINFOSTATE_RELATEDCALLID",
    "LINECALLINFOSTATE_ORIGIN",
    "LINECALLINFOSTATE_REASON",
    "LINECALLINFOSTATE_COMPLETIONID",
    "LINECALLINFOSTATE_NUMOWNERINCR",
    "LINECALLINFOSTATE_NUMOWNERDECR",
    "LINECALLINFOSTATE_NUMMONITORS",
    "LINECALLINFOSTATE_TRUNK",
    "LINECALLINFOSTATE_CALLERID",
    "LINECALLINFOSTATE_CALLEDID",
    "LINECALLINFOSTATE_CONNECTEDID",
    "LINECALLINFOSTATE_REDIRECTIONID",
    "LINECALLINFOSTATE_REDIRECTINGID",
    "LINECALLINFOSTATE_DISPLAY",
    "LINECALLINFOSTATE_USERUSERINFO",
    "LINECALLINFOSTATE_HIGHLEVELCOMP",
    "LINECALLINFOSTATE_LOWLEVELCOMP",
    "LINECALLINFOSTATE_CHARGINGINFO",
    "LINECALLINFOSTATE_TERMINAL",
    "LINECALLINFOSTATE_DIALPARAMS",
    "LINECALLINFOSTATE_MONITORMODES"
};


LPSTR pszfLINECALLSTATE[] = 
{
    "Unknown LINECALLSTATE state",
    "LINECALLSTATE_IDLE",
    "LINECALLSTATE_OFFERING",
    "LINECALLSTATE_ACCEPTED",
    "LINECALLSTATE_DIALTONE",
    "LINECALLSTATE_DIALING",
    "LINECALLSTATE_RINGBACK",
    "LINECALLSTATE_BUSY",
    "LINECALLSTATE_SPECIALINFO",
    "LINECALLSTATE_CONNECTED",
    "LINECALLSTATE_PROCEEDING",
    "LINECALLSTATE_ONHOLD",
    "LINECALLSTATE_CONFERENCED",
    "LINECALLSTATE_ONHOLDPENDCONF",
    "LINECALLSTATE_ONHOLDPENDTRANSFER",
    "LINECALLSTATE_DISCONNECTED",
    "LINECALLSTATE_UNKNOWN"
};


LPSTR pszfLINEDIALTONEMODE[] =
{
    "Unknown LINEDIALTONE information",
    "LINEDIALTONEMODE_NORMAL",
    "LINEDIALTONEMODE_SPECIAL",
    "LINEDIALTONEMODE_INTERNAL",
    "LINEDIALTONEMODE_EXTERNAL",
    "LINEDIALTONEMODE_UNKNOWN",
    "LINEDIALTONEMODE_UNAVAIL"
};


LPSTR pszfLINEBUSYMODE[] =
{
    "Unknown LINEBUSYMODE information",
    "LINEBUSYMODE_STATION",
    "LINEBUSYMODE_TRUNK",
    "LINEBUSYMODE_UNKNOWN",
    "LINEBUSYMODE_UNAVAIL"
};


LPSTR pszfLINESPECIALINFO[] =
{
    "Unknown LINESPECIALINFO information",
    "LINESPECIALINFO_NOCIRCUIT",
    "LINESPECIALINFO_CUSTIRREG",
    "LINESPECIALINFO_REORDER",
    "LINESPECIALINFO_UNKNOWN",
    "LINESPECIALINFO_UNAVAIL"
};


LPSTR pszfLINEDISCONNECTED[] =
{
    "Unknown LINEDISCONNECTED information",
    "LINEDISCONNECTMODE_NORMAL",
    "LINEDISCONNECTMODE_UNKNOWN",
    "LINEDISCONNECTMODE_REJECT",
    "LINEDISCONNECTMODE_PICKUP",
    "LINEDISCONNECTMODE_FORWARDED",
    "LINEDISCONNECTMODE_BUSY",
    "LINEDISCONNECTMODE_NOANSWER",
    "LINEDISCONNECTMODE_BADADDRESS",
    "LINEDISCONNECTMODE_UNREACHABLE",
    "LINEDISCONNECTMODE_CONGESTION",
    "LINEDISCONNECTMODE_INCOMPATIBLE",
    "LINEDISCONNECTMODE_UNAVAIL",
    "LINEDISCONNECTMODE_NODIALTONE"
};


LPSTR pszfLINECALLPRIVILEGE[] =
{
    "No change to LINECALLPRIVILEGE",
    "LINECALLPRIVILEGE_NONE",
    "LINECALLPRIVILEGE_MONITOR",
    "LINECALLPRIVILEGE_OWNER"
};


LPSTR pszfLINEGATHERTERM[] =
{
    "Unknown LINEGATHERTERM message",
    "LINEGATHERTERM_BUFFERFULL",
    "LINEGATHERTERM_TERMDIGIT",
    "LINEGATHERTERM_FIRSTTIMEOUT",
    "LINEGATHERTERM_INTERTIMEOUT",
    "LINEGATHERTERM_CANCEL"
};


LPSTR pszfLINEGENERATETERM[] = 
{
    "Unknown LINEGENERATETERM message",
    "LINEGENERATETERM_DONE",
    "LINEGENERATETERM_CANCEL"
};


LPSTR pszfLINEDEVSTATE[] =
{    
    "Unknown LINEDEVESTATE state",
    "LINEDEVSTATE_OTHER",
    "LINEDEVSTATE_RINGING",
    "LINEDEVSTATE_CONNECTED",
    "LINEDEVSTATE_DISCONNECTED",
    "LINEDEVSTATE_MSGWAITON",
    "LINEDEVSTATE_MSGWAITOFF",
    "LINEDEVSTATE_INSERVICE",
    "LINEDEVSTATE_OUTOFSERVICE",
    "LINEDEVSTATE_MAINTENANCE",
    "LINEDEVSTATE_OPEN",
    "LINEDEVSTATE_CLOSE",
    "LINEDEVSTATE_NUMCALLS",
    "LINEDEVSTATE_NUMCOMPLETIONS",
    "LINEDEVSTATE_TERMINALS",
    "LINEDEVSTATE_ROAMMODE",
    "LINEDEVSTATE_BATTERY",
    "LINEDEVSTATE_SIGNAL",
    "LINEDEVSTATE_DEVSPECIFIC",
    "LINEDEVSTATE_REINIT",
    "LINEDEVSTATE_LOCK",
    "LINEDEVSTATE_CAPSCHANGE",
    "LINEDEVSTATE_CONFIGCHANGE",
    "LINEDEVSTATE_TRANSLATECHANGE",
    "LINEDEVSTATE_COMPLCANCEL",
    "LINEDEVSTATE_REMOVED"
};


LPSTR pszfLINEDIGITMODE[] =
{
    "Unknown LINEDIGITMODE mode",
    "LINEDIGITMODE_PULSE",
    "LINEDIGITMODE_DTMF",
    "LINEDIGITMODE_DTMFEND"
};
    

LPSTR pszfLINEMEDIAMODE[] =
{
    "Unknown LINEMEDIAMODE mode",
    "UnUsed LINEMEDIAMODE mode, ERROR!!",
    "LINEMEDIAMODE_UNKNOWN",
    "LINEMEDIAMODE_INTERACTIVEVOICE",
    "LINEMEDIAMODE_AUTOMATEDVOICE",
    "LINEMEDIAMODE_DATAMODEM",
    "LINEMEDIAMODE_G3FAX",
    "LINEMEDIAMODE_TDD",
    "LINEMEDIAMODE_G4FAX",
    "LINEMEDIAMODE_DIGITALDATA",
    "LINEMEDIAMODE_TELETEX",
    "LINEMEDIAMODE_VIDEOTEX",
    "LINEMEDIAMODE_TELEX",
    "LINEMEDIAMODE_MIXED",
    "LINEMEDIAMODE_ADSI",
    "LINEMEDIAMODE_VOICEVIEW"
};


LPSTR pszfLINEREQUESTMODE[] =
{
    "Unknown LINEREQUESTMODE message",
    "LINEREQUESTMODE_MAKECALL",
    "LINEREQUESTMODE_MEDIACALL",
    "LINEREQUESTMODE_DROP"
};


//
//  FUNCTION: FormatLineError(long, LPSTR, DWORD)
//
//  PURPOSE: Pretty print a line error to a string.
//
//  PARAMETERS:
//    lLineError           - Actual error code to decipher.
//    szOutputBuffer       - String buffer to pretty print to.
//    dwSizeofOutputBuffer - Size of String buffer.
//
//  RETURN VALUE:
//    Returns the buffer printed to.
//
//  COMMENTS:
//    lpszOutputBuffer *must* be big enough to hold the full output.
//    At the moment, no more than 64 characters are needed.
//
//

LPSTR FormatLineError(long lLineError, LPSTR lpszOutputBuffer)
{
   DWORD dwError;

   if (lpszOutputBuffer == NULL)
      return NULL;

   // Strip off the high bit to make the error code positive.
   dwError = (DWORD)lLineError & 0x7FFFFFFF;

   if ((lLineError > 0) || (dwError > sizeof(pszLineError)))
      wsprintf(lpszOutputBuffer, "Unknown LINEERR_ code: 0x%lx", lLineError);
   else
      strcpy(lpszOutputBuffer, pszLineError[dwError]);

   return lpszOutputBuffer;
}



//
//  FUNCTION: FormatLastError(DWORD, LPSTR, DWORD)
//
//  PURPOSE: Pretty print a system error to a string.
//
//  PARAMETERS:
//    dwLastError          - Actual error code to decipher.
//    szOutputBuffer       - String buffer to pretty print to.
//    dwSizeofOutputBuffer - Size of String buffer.
//
//  RETURN VALUE:
//    Returns the buffer printed to.
//
//  COMMENTS:
//    szOutputBuffer *must* be big enough.  512 bytes is big enough.
//
//

LPSTR FormatLastError(DWORD dwLastError, LPSTR szOutputBuffer)
{
   char buf[512];

   if (szOutputBuffer == NULL)
      return NULL;

   // Make FormatMessage pretty print the system error.
   if (!FormatMessage(
      FORMAT_MESSAGE_FROM_SYSTEM, NULL, dwLastError,
      MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US),
      (LPTSTR) buf, sizeof(buf),
      NULL))
   {
      wsprintf(szOutputBuffer, "Unknown error: %lu", GetLastError());
   }

   strcpy(szOutputBuffer, buf);

   return szOutputBuffer;
}



//  FUNCTION: FormatLineCallback(...)
//
//  PURPOSE: Pretty prints into a buffer a lineCallbackFunc message.
//
//  PARAMETERS:
//    Standard lineCallbackFunc parameters.
//
//  RETURN VALUE:
//    The pointer to the buffer that has the resulting string.
//
//  COMMENTS:
//
//    This function takes all of the parameters passed into a
//    lineCallbackFunc callback function, and pretty prints the
//    meaning of the message.  It then returns the pointer to
//    the buffer containing this string.
//
//    szOutputBuffer *must* be big enough to hold it all.
//    512 bytes is probably big enough.
//

LPSTR FormatLineCallback(LPSTR szOutputBuffer,
    DWORD dwDevice, DWORD dwMsg, DWORD dwCallbackInstance, 
    DWORD dwParam1, DWORD dwParam2, DWORD dwParam3)
{
    long lBufferIndex = 0;

    if (szOutputBuffer == NULL)
      return NULL;

    // Is this a known message?
    if (dwMsg >= sizeofArray(psz_dwMsg))
    {
        wsprintf(szOutputBuffer, "Unknown dwMsg: '0x%lx', "
            "dwDevice: '0x%lx', dwCallbackInstance: '0x%lx', "
            "dwParam1: '0x%lx', dwParam2: '0x%lx', dwParam3: '0x%lx'", dwMsg, 
            dwDevice, dwCallbackInstance, dwParam1, dwParam2, dwParam3);
        return szOutputBuffer;
    }

    // Lets start pretty printing.
    lBufferIndex +=
        wsprintf(szOutputBuffer, "%s; ", psz_dwMsg[dwMsg]);

    // Which message was it?  And start decoding it!
    // How the message is decoded depends entirely on the message.
    // READ THE HELP FILES if you need more information on this.
    switch(dwMsg)
    {
        case LINE_ADDRESSSTATE:
        {
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "Address ID: 0x%lx, Address State: ", dwParam1);

            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam2,
                    pszfLINEADDRESSSTATE, sizeofArray(pszfLINEADDRESSSTATE));

            break;
        }

        case LINE_CALLINFO:
        {
            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINECALLINFOSTATE, sizeofArray(pszfLINECALLINFOSTATE));

            break;
        }

        case LINE_CALLSTATE:
        {
            if (dwParam3)
            {
               lBufferIndex +=
                   strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                       dwParam3,
                       pszfLINECALLPRIVILEGE, sizeofArray(pszfLINECALLPRIVILEGE));
               lBufferIndex +=
                   wsprintf(&(szOutputBuffer[lBufferIndex]),
                       "; ");
            }

            lBufferIndex += 
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINECALLSTATE, sizeofArray(pszfLINECALLSTATE));
    
            switch(dwParam1)
            {
                case LINECALLSTATE_DIALTONE:
                {
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": ");

                    lBufferIndex += 
                        strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                        dwParam2,
                        pszfLINEDIALTONEMODE, sizeofArray(pszfLINEDIALTONEMODE));

                    break;
                }

                case LINECALLSTATE_BUSY:
                {
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": ");

                    lBufferIndex += 
                        strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                        dwParam2,
                        pszfLINEBUSYMODE, sizeofArray(pszfLINEBUSYMODE));

                    break;
                }

                case LINECALLSTATE_SPECIALINFO:
                {
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": ");

                    lBufferIndex += 
                        strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                        dwParam2,
                        pszfLINESPECIALINFO, sizeofArray(pszfLINESPECIALINFO));

                    break;
                }

                case LINECALLSTATE_DISCONNECTED:
                {
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": ");

                    lBufferIndex += 
                        strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                        dwParam2,
                        pszfLINEDISCONNECTED, sizeofArray(pszfLINEDISCONNECTED));

                    break;
                }

                case LINECALLSTATE_CONFERENCED:
                {
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": Parent conference call handle: 0x%lx", dwParam2);

                    break;
                }
            }

            break;
        }

        case LINE_CLOSE:
            break;

        case LINE_DEVSPECIFIC:
            break;

        case LINE_DEVSPECIFICFEATURE:
            break;

        case LINE_GATHERDIGITS:
        {
            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINEGATHERTERM, sizeofArray(pszfLINEGATHERTERM));

            break;
        }

        case LINE_GENERATE:
        {
            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINEGENERATETERM, sizeofArray(pszfLINEGENERATETERM));

            break;
        }

        case LINE_LINEDEVSTATE:
        {
            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINEDEVSTATE, sizeofArray(pszfLINEDEVSTATE));

            switch(dwParam1)
            {
                case LINEDEVSTATE_RINGING:
                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            "; Ring Mode: 0x%lx, Ring Count: %lu"
                            ,dwParam2, dwParam3);
                    break;

                case LINEDEVSTATE_REINIT:
                {
                    switch(dwParam2)
                    {
                        case LINE_CREATE:
                            lBufferIndex +=
                                wsprintf(&(szOutputBuffer[lBufferIndex]),
                                    "; ReInit reason: LINE_CREATE, "
                                        "New Line Device ID '0x%lx'"
                                    , dwParam3);
                            break;
                            
                        case LINE_LINEDEVSTATE:
                            lBufferIndex +=
                                wsprintf(&(szOutputBuffer[lBufferIndex]),
                                    "; ReInit reason: LINE_LINEDEVSTATE, ");

                            lBufferIndex +=
                                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                                    dwParam3,
                                    pszfLINEDEVSTATE, sizeofArray(pszfLINEDEVSTATE));

                            break;
                        
                        case 0:
                            break;
                        default:
                            lBufferIndex +=
                                wsprintf(&(szOutputBuffer[lBufferIndex]),
                                    "; ReInit reason: %s, dwParam3: 0x%lx"
                                    ,psz_dwMsg[dwParam2], dwParam3);
                            break;

                    }

                    break;
                }

                default:
                    break;
            }

            break;
        }

        case LINE_MONITORDIGITS:
        {
            lBufferIndex += 
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                dwParam2,
                pszfLINEDIGITMODE, sizeofArray(pszfLINEDIGITMODE));

            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    ", Received: '%c'", LOBYTE(LOWORD(dwParam1)));
            
            break;
        }

        case LINE_MONITORMEDIA:
        {
            lBufferIndex +=
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                    dwParam1,
                    pszfLINEMEDIAMODE, sizeofArray(pszfLINEMEDIAMODE));

            break;
        }

        case LINE_MONITORTONE:
        {
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "AppSpecific tone '%lu'", dwParam1);
            break;
        }

        case LINE_REPLY:
        {
            if (dwParam2 == 0)
            {
                lBufferIndex +=
                    wsprintf(&(szOutputBuffer[lBufferIndex]),
                        "Request ID: 0x%lx; Successful reply!", dwParam1);
            }
            else
            {
                char szTmpBuff[64];

                FormatLineError((long) dwParam2, szTmpBuff);

                lBufferIndex +=
                    wsprintf(&(szOutputBuffer[lBufferIndex]),
                        "Request ID: 0x%lx; UnSuccessful reply; %s",
                        dwParam1, szTmpBuff);
            }

            break;
        }

        case LINE_REQUEST:
        {
            lBufferIndex += 
                strBinaryArrayAppend(&(szOutputBuffer[lBufferIndex]),
                dwParam1,
                pszfLINEREQUESTMODE, sizeofArray(pszfLINEREQUESTMODE));

            switch(dwParam1)
            {
                case LINEREQUESTMODE_DROP:
                {
                    char szHwndName[1024];

                    SendMessage((HWND) dwParam2, WM_GETTEXT, 1024, (long) szHwndName);

                    lBufferIndex +=
                        wsprintf(&(szOutputBuffer[lBufferIndex]),
                            ": hwnd dropping = 0x%lx, \"%s\"; wRequestID = %u",
                            dwParam2, szHwndName, LOWORD(dwParam3));
                    break;
                }
                default:
                    break;
            }

            break;
        }

        case LINE_CREATE:
        {
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "New Line Device ID '0x%lx'", dwParam1);
            break;
        }

        case PHONE_CREATE:
        {
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "New Phone Device ID '0x%lx'", dwParam1);
            break;
        }

        default:
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "dwParam1: 0x%lx , dwParam2: 0x%lx , dwParam3: 0x%lx",
                    dwParam1, dwParam2, dwParam3);
            break;

    } // End switch(dwMsg)

    // return that pointer!
    return szOutputBuffer;

}


//
//  FUNCTION: strBinaryArrayAppend(LPSTR, DWORD, LPSTR *, DWORD)
//
//  PURPOSE: Takes a bitmapped DWORD, an array representing that
//    binary mapping, and pretty prints it to a buffer.
//
//  PARAMETERS:
//    szOutputBuffer      - Buffer to print to.
//    dwFlags             - Binary mapped flags to interpret.
//    szStringArray       - Array of strings.
//    dwSizeofStringArray - number of elements in szStringArray.

//
//  RETURN VALUE:
//    The number of characters printed into szOutputBuffer.
//
//  COMMENTS:
//
//    This function takes dwFlags and checks each bit.  If the
//    bit is set, the appropriate string (taken from szStringArray)
//    is printed to the szOutputBuffer string buffer.  If there were
//    more bits set in the string than elements in the array, and error
//    is also tagged on the end.
//
//    This function is intended to be used only within the TapiInfo module.
//

static long strBinaryArrayAppend(LPSTR szOutputBuffer, DWORD dwFlags,
     LPSTR szStringArray[], DWORD dwSizeofStringArray)
{
    DWORD dwIndex = 1, dwPower = 1;
    long lBufferIndex = 0;
    BOOL bFirst = TRUE;

    // The zeroth element in every bitmapped array is the "unknown" or
    // "unchanged" message.
    if (dwFlags == 0)
    {
        lBufferIndex =
            wsprintf(szOutputBuffer, "%s", szStringArray[0]);
        return lBufferIndex;
    }

    // iterate through the flags and check each one.
    while(dwIndex < dwSizeofStringArray)
    {
        // If we find one, print it.
        if (dwFlags & dwPower)
            // Seporate each printing with a ", " except the first one.
            if (bFirst)
            {
                lBufferIndex +=
                    wsprintf(&(szOutputBuffer[lBufferIndex]),
                        "%s", szStringArray[dwIndex]);
                bFirst = FALSE;
            }
            else
                lBufferIndex +=
                    wsprintf(&(szOutputBuffer[lBufferIndex]),
                        ", %s", szStringArray[dwIndex]);

        dwIndex ++;
        dwFlags &= ~dwPower;  // clear it so we know we checked it.
        dwPower *= 2;
    }

    // If there are any flags left, they were not in the array.
    if (dwFlags)
    {
        if (bFirst)
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    "Unknown flags '0x%lx'", dwFlags);
        else
            lBufferIndex +=
                wsprintf(&(szOutputBuffer[lBufferIndex]),
                    ", Unknown flags '0x%lx'", dwFlags);
    }

    // how many did we print into the buffer?
    return lBufferIndex;
}


LPSTR pszfCOMMERROR[] =
{
   "No Error",
   "CE_RXOVER",
   "CE_OVERRUN",
   "CE_RXPARITY",
   "CE_FRAME",
   "CE_BREAK",
   "Bad Flag",
   "Bad Flag",
   "Bad Flag",
   "CE_TXFULL",
   "CE_PTO",
   "CE_IOE",
   "CE_DNS",
   "CE_OOP",
   "Bad Flag",
   "Bad Flag",
   "CE_MODE"
};

LPSTR FormatCommError(DWORD dwCommError, LPSTR szOutputBuffer)
{
   szOutputBuffer[0] = '\0';
   strBinaryArrayAppend(szOutputBuffer, dwCommError, 
      pszfCOMMERROR, sizeof(pszfCOMMERROR));
   return szOutputBuffer;
}
