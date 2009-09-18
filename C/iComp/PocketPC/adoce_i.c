/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 3.01.75 */
/* at Tue Apr 07 10:41:39 1998
 */
/* Compiler settings for ADOCE.idl:
    Oicf (OptLev=i2), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: none
*/
//@@MIDL_FILE_HEADING(  )
#ifdef __cplusplus
extern "C"{
#endif 


#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

const IID IID_IADOCECollection = {0x4BEB93DA,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


const IID IID_IADOCEField = {0x4BEB93D7,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


const IID IID_IADOCEFields = {0x4BEB93D6,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


const IID IID_IADOCERecordset = {0x4BEB93D5,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


const IID LIBID_ADOCELib = {0x4BEB93D1,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


const CLSID CLSID_ADOCERecordset = {0x4BEB93D3,0x28D8,0x11D1,{0x83,0x21,0x00,0xA0,0x24,0xA8,0x81,0x10}};


#ifdef __cplusplus
}
#endif


