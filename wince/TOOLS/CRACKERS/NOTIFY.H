/*---------------------------------------------------------------------------*\
 * (c) Copyright 1995 By Paul L. Yao.  All rights reserved.                  *
\*---------------------------------------------------------------------------*/
typedef struct tagCONTROLNOTIFICATIONS
{
    UINT  nCode;
    LPSTR pName;
} CONTROLNOTIFICATIONS;

BOOL DbgQueryNotifyText(UINT nNotifyCode, LPSTR * pName);
