/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 5.01.0164 */
/* at Fri Jun 29 16:04:00 2001
 */
/* Compiler settings for C:\DEVELOPMENT\C++\CODE\VC\PROJECTS\test\test.idl:
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

const IID IID_IFoo = {0x3070AFF7,0xD0A8,0x4504,{0x9F,0x1E,0x05,0x52,0xC9,0x4A,0x46,0x3D}};


const IID LIBID_TESTLib = {0x5DBC22E2,0x1D14,0x42EA,{0xB5,0xE0,0x11,0x70,0xA7,0xC7,0x71,0xAF}};


const CLSID CLSID_Foo = {0x8D5E63B4,0x0FBE,0x4F43,{0xB7,0xBB,0x32,0x5C,0xD2,0x8A,0xC8,0xBB}};


#ifdef __cplusplus
}
#endif

