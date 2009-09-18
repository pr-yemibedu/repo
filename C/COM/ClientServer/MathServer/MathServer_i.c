/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 5.01.0164 */
/* at Tue Nov 12 16:41:27 2002
 */
/* Compiler settings for C:\Temp\MathServer\MathServer.idl:
    Oicf (OptLev=i2), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
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

const IID IID_IArithmetic = {0xB6AFF525,0x238E,0x4228,{0x8C,0x54,0x3D,0xF0,0x56,0x93,0xCC,0xB1}};


const IID LIBID_MATHSERVERLib = {0xDAA8E487,0x8D1F,0x4940,{0xB9,0xB6,0x3C,0x51,0x0E,0xAC,0xE0,0xF0}};


const CLSID CLSID_Arithmetic = {0x0B909253,0xE37F,0x438D,{0x88,0x71,0xA9,0x45,0x5B,0xF8,0x41,0x8C}};


#ifdef __cplusplus
}
#endif

